#!/usr/bin/env bash
set -euo pipefail

repo_root=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
cd "$repo_root"

die() {
  printf 'validation error: %s\n' "$*" >&2
  exit 1
}

assert_count() {
  expected=$1
  actual=$2
  label=$3
  test "$actual" -eq "$expected" || die "$label: expected $expected, found $actual"
}

skill_count=$(find skills -mindepth 2 -maxdepth 2 -name SKILL.md | wc -l | tr -d ' ')
assert_count 17 "$skill_count" "skill directories"

for skill_file in skills/*/SKILL.md; do
  skill_dir=$(basename "$(dirname "$skill_file")")
  metadata_name=$(awk -F': *' '$1 == "name" {print $2; exit}' "$skill_file")
  test "$metadata_name" = "$skill_dir" || die "$skill_file declares name '$metadata_name'"

  while IFS= read -r shared_ref; do
    clean_ref=${shared_ref%\.}
    test -e "$(dirname "$skill_file")/$clean_ref" || die "$skill_file has missing reference $clean_ref"
  done < <(grep -Eo '\.\./_shared/[A-Za-z0-9_./-]+' "$skill_file" | sort -u || true)
done

problem_count=$(find case-studies/colt-2026 -mindepth 1 -maxdepth 1 -type d -name '0*' | wc -l | tr -d ' ')
subproblem_count=$(find case-studies/colt-2026 -mindepth 2 -maxdepth 2 -type d -name 'sp-*' | wc -l | tr -d ' ')
accepted_count=$(find case-studies/colt-2026 -type d -path '*/results/perspective_*/idea_*/theory' | wc -l | tr -d ' ')
assert_count 5 "$problem_count" "COLT problem directories"
assert_count 9 "$subproblem_count" "COLT subproblem directories"
assert_count 22 "$accepted_count" "accepted candidate bundles"

while IFS= read -r problem_dir; do
  test -f "$problem_dir/README.md" || die "missing $problem_dir/README.md"
  test -f "$problem_dir/source.pdf" || die "missing $problem_dir/source.pdf"
done < <(find case-studies/colt-2026 -mindepth 1 -maxdepth 1 -type d -name '0*' | sort)

while IFS= read -r run_root; do
  test -f "$run_root/README.md" || die "missing $run_root/README.md"
  test -f "$run_root/run-metadata.yaml" || die "missing $run_root/run-metadata.yaml"
  test -f "$run_root/MANIFEST.sha256" || die "missing $run_root/MANIFEST.sha256"

  expected_inventory=$(
    cd "$run_root"
    git ls-files --cached --others --exclude-standard -- . \
      | grep -Ev '^(MANIFEST\.sha256|\.MANIFEST\.sha256\.tmp)$' \
      | LC_ALL=C sort | sed 's#^#./#'
  )
  recorded_inventory=$(sed -E 's/^[[:xdigit:]]{64}[[:space:]]+//' "$run_root/MANIFEST.sha256" | LC_ALL=C sort)
  test "$recorded_inventory" = "$expected_inventory" || die "manifest inventory mismatch in $run_root"
  (cd "$run_root" && shasum -a 256 -c MANIFEST.sha256 >/dev/null) || die "checksum failure in $run_root"
done < <(find case-studies/colt-2026 -mindepth 2 -maxdepth 2 -type d -name 'sp-*' | sort)

while IFS= read -r theory_dir; do
  for required in \
    setting.md proof_review.md \
    latex_template/main.tex latex_template/arxiv.sty latex_template/ims.bst \
    latex_template/reference.bib latex_template/1_intro.tex \
    latex_template/2_preliminary.tex latex_template/3_main.tex \
    latex_template/4_proof_sketch.tex latex_template/5_appendix.tex; do
    test -f "$theory_dir/$required" || die "missing $theory_dir/$required"
  done
  test -f "${theory_dir%/theory}/paper.pdf" || die "missing candidate PDF beside $theory_dir"
done < <(find case-studies/colt-2026 -type d -path '*/results/perspective_*/idea_*/theory' | sort)

if git ls-files | grep -Eq \
  '(^|/)(\.DS_Store|\.controller_tmp|Thumbs\.db)(/|$)|\.(aux|bbl|blg|brf|fdb_latexmk|fls|log|out|swp|swo|synctex\.gz|xdv)$|~$'; then
  die "tracked OS, controller scratch, or LaTeX build residue found"
fi

test ! -e VALG || die "legacy VALG/ directory still exists"
test ! -e Results || die "legacy Results/ directory still exists"

if grep -RIlE '(/Users/|/home/|/private/tmp/|/tmp/|/opt/homebrew/)' \
  --exclude-dir=.git --exclude=validate-repository.sh . | grep -q .; then
  die "unsanitized machine-local path found"
fi

credential_assignment_pattern="[\"']?(api[_ -]?key|secret|password)[\"']?[[:space:]]*[:=][[:space:]]*[\"']?[^[:space:]<>]{8,}"
authorization_pattern="[\"']?authorization[\"']?[[:space:]]*[:=][[:space:]]*[\"']?bearer[[:space:]]+[A-Za-z0-9._~+/=-]{8,}"
token_pattern='(^|[^A-Za-z0-9])(AKIA[0-9A-Z]{16}|gh[pousr]_[A-Za-z0-9]{20,}|sk-[A-Za-z0-9_-]{20,})'
private_key_pattern='-----BEGIN ''(RSA |EC |OPENSSH )?''PRIVATE KEY-----'

if grep -RIEil "$credential_assignment_pattern" --exclude-dir=.git . | grep -q . \
  || grep -RIEil "$authorization_pattern" --exclude-dir=.git . | grep -q . \
  || grep -RIEil "$token_pattern" --exclude-dir=.git . | grep -q . \
  || grep -RIEil --exclude-dir=.git -- "$private_key_pattern" . | grep -q .; then
  die "possible credential assignment found"
fi

max_path_length=$(find . -not -path './.git*' -print | awk '{if (length > max) max=length} END {print max+0}')
test "$max_path_length" -le 240 || die "maximum path length is $max_path_length (limit 240)"

if grep -nHE '[[:blank:]]+$' \
  README.md CONTRIBUTING.md CHANGELOG.md THIRD_PARTY_NOTICES.md \
  docs/*.md examples/minimal/*.md \
  case-studies/colt-2026/README.md \
  case-studies/colt-2026/*/README.md \
  case-studies/colt-2026/*/sp-*/README.md \
  case-studies/colt-2026/evaluation/*.md \
  case-studies/colt-2026/evaluation/audits/*.md \
  scripts/*.sh .github/workflows/*.yml >/dev/null; then
  die "trailing whitespace found in maintained documentation or scripts"
fi

git diff --check
printf 'repository validation passed: 17 skills, 5 problems, 9 subproblems, 22 candidate bundles\n'
