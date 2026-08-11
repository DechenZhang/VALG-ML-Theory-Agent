#!/usr/bin/env bash
set -euo pipefail

repo_root=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
cd "$repo_root"

while IFS= read -r run_root; do
  manifest="$run_root/MANIFEST.sha256"
  manifest_tmp="$run_root/.MANIFEST.sha256.tmp"

  (
    cd "$run_root"
    git ls-files --cached --others --exclude-standard -- . \
      | grep -Ev '^(MANIFEST\.sha256|\.MANIFEST\.sha256\.tmp)$' \
      | LC_ALL=C sort | while IFS= read -r artifact; do
        shasum -a 256 "./$artifact"
      done
  ) > "$manifest_tmp"

  mv "$manifest_tmp" "$manifest"
  printf 'updated %s\n' "$manifest"
done < <(find case-studies/colt-2026 -mindepth 2 -maxdepth 2 -type d -name 'sp-*' | sort)
