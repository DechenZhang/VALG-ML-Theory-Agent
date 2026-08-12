# Contributing

Contributions should preserve the separation between reusable workflow skills,
run-local evidence, and independently evaluated case-study claims.

## Skill changes

- Keep one `SKILL.md` per directory under `skills/`.
- Keep the YAML `name` equal to the directory name.
- Resolve shared templates and contracts through `../_shared/`.
- Put mathematical rubrics in the producing or reviewing skill that owns them;
  keep controller routing in `skills/ml-theory-research-agent/SKILL.md`.
- Update `docs/skills.md`, `docs/workflow.md`, and relevant validation rules when
  a public artifact or stage changes.

## Case-study changes

- Treat each `sp-*` directory as a complete workflow run root.
- Preserve `proof_history/` as non-binding archival evidence.
- Keep accepted copies under `results/perspective_M/idea_N/theory/`.
- Describe internal acceptance as workflow acceptance. Reserve "verified full
  solution" for an independent evaluation that checks the original source
  contract and public proof.
- Remove machine-local paths, credentials, OS metadata, and compiler residue
  before publishing traces. Describe intentional sanitization in the relevant
  case-study documentation or pull request.
- Do not add inferred run controls or publication-only checksum manifests to
  preserved historical run roots.

## Validation

Run the repository checks before opening a pull request:

```bash
bash scripts/validate-repository.sh
```

When a TeX installation is available, also compile every accepted
`latex_template/main.tex` in a temporary directory. Do not commit the resulting
compiler intermediates.
