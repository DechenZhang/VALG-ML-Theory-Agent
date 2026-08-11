# Changelog

## 0.1.0 - 2026-08-12

- Publish the 17-skill ML theory workflow under the conventional `skills/`
  directory.
- Reorganize five COLT 2026 open-problem papers, nine subproblem runs, and 22
  workflow-accepted candidate bundles under `case-studies/colt-2026/`.
- Add independent evaluation labels that distinguish full solutions from
  restricted, conditional, partial, and provisional results.
- Preserve full meaningful workflow traces while removing OS and LaTeX build
  residue and sanitizing machine-local paths.
- Add layered documentation, reproducibility metadata, checksum manifests,
  repository validation, citation metadata, and an MIT license.

### Path migration

| Previous path | Current path |
| --- | --- |
| `VALG/` | `skills/` |
| `VALG/assets/ml-theory-research-agent-workflow-polished.png` | `assets/workflow.png` |
| `Results/` | `case-studies/colt-2026/` |
| `subproblem_001/` | `sp-01/` |
| `.controller_tmp/` | `audit/controller-prompts/` |

The controller invocation and the artifact layout inside a subproblem run root
are unchanged.
