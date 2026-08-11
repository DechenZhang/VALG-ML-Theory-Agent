# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Independent score-9 review verified all six theorem-critical evidence rows as step-local. |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | global | global | 1 | Accept | N/A | ACCEPTED | None | Independent review verified the exact BLM v3 interface, constant extraction, ceiling/padding, bounded-q asymptotics, every-fixed-rho privacy decay, privacy monotonicity, and Item 3 contradiction; all six obligations are step-local. |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Independent review passed all four local units and verified the exact source wrapper, binary recoding, distribution-independent learner kernel, decoding, and frozen proof hash. |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | step | step_002 | 1 | Accept | N/A | ACCEPTED | None | Independent review passed both local units, including term-by-term source-bound domination, universal constant dependence, all boundary cases, exact iid prefix padding, and both replacement-DP directions. |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | Independent review passed all three units, including exact logarithm identities, the inherited learner/privacy interface, every boundary domain, and bounded-q activation without assuming q tends to infinity. |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | step | step_004 | 1 | Accept | N/A | ACCEPTED | None | Independent review passed all four units, including exact SP quantifiers, finite-class and log-star boundaries, bounded-q handling, every-exponent propagation, ceiling absorption, and N_a=o(L). |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | step | step_005 | 1 | Accept | N/A | ACCEPTED | None | Independent review passed all five units, including the uniform exponential-polynomial factorization, every-rho tail, bounded and oscillating q behavior, ceiling control, and the exact rho=3 source-allowance bridge. |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | step | step_006 | 1 | Accept | N/A | ACCEPTED | None | Independent review passed all four units, including exact dependency interfaces, learner sequence construction, DP monotonicity direction, standard allowance, bounded-q scope, and arbitrary-constant Item 3 contradiction. |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | assembly | assembly | 1 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Aggregate review localized all blockers to public theorem scoping, source-faithful BLM restatement, stable equation references, the exact-schedule tail-index definition, and compile-report synchronization; all six accepted steps remain valid. |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | assembly | assembly | 2 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Aggregate review passed all six steps and 22 non-atomic source units but found the public theorem's `X_kappa` free because its sequence quantifier omits `C_kappa subset {0,1}^{X_kappa}`; repair is assembly-only. |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | assembly | assembly | 3 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Aggregate review passed all six steps and 22 source units but found that appendix Proposition `prop:step-006-sequence-learners` uses `X_kappa` without quantifying the domain sequence; repair is assembly-only. |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | assembly | assembly | 4 | Fail | 6 | PROOF_STEP_FLAW | /proof-step step_005 | Aggregate review found that Step 5 exported privacy negligibility under size divergence alone while its ceiling lemma depended on the SP-scoped Step 4 proposition; retry mode repair_step. |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | step | step_005 | 2 | Accept | N/A | ACCEPTED | None | Independent review accepted all five repaired units and verified that the exact ceiling and fixed K_a provenance come directly from pointwise (PS), with no SP-scoped step_004 conclusion used for the size-divergence-only (PN) claim. |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | step | step_006 | 2 | Accept | N/A | ACCEPTED | None | Fresh independent review accepted all four unchanged units and verified that the repaired Step 5 supplies (PN) and the source allowance directly from pointwise (PS) and size divergence, without importing Step 4's (SP)-scoped conclusions. |
| 1 | BLM stable-selection conversion plus cardinality-aware privacy and sequence asymptotics | assembly | assembly | 5 | Accept | 9 | ACCEPTED | None | Aggregate review verified all four specialized PASS contracts, all six accepted proof steps and 22 non-atomic source units, the repaired Step 5 scope chain, refreshed Step 6 provenance, exact conditional-goal alignment, worker and budget gates, and the complete paper-ready public bundle. |

Controlled values:

- `Sketch attempt`: starts at `1` for an idea and increments after sketch-review `REVISE_SKETCH`, global-proof-review `REVISE_SKETCH`, or final `PROOF_SKETCH_FLAW`; attempts over `MAX_SKETCH_ATTEMPTS_PER_IDEA` are invalid
- `Roadmap summary`: short description of the current proof roadmap for this sketch attempt
- `Unit type`: `sketch`, `global`, `step`, or `assembly`
- `Unit id`: `sketch`, `global`, `assembly`, or a stable `Step ID`
- `Unit attempt`: `1` for `sketch`; for `global`, the global proof attempt under the current `Sketch attempt`; for `step`, the per-`Step ID` attempt under the current `Sketch attempt`; for `assembly`, the assembly attempt under the current `Sketch attempt`
- Accepted rows with a producer attempt over the controller budget are invalid: `Sketch attempt > MAX_SKETCH_ATTEMPTS_PER_IDEA`, global `Unit attempt > MAX_GLOBAL_PROOF_ATTEMPTS_PER_SKETCH`, step `Unit attempt > MAX_STEP_ATTEMPTS_PER_STEP`, or assembly `Unit attempt > MAX_ASSEMBLY_ATTEMPTS_PER_SKETCH`
- `Status (Accept / Fail)`: empty while running, then `Accept` or `Fail`
- `Score`: numeric `1-10` only when filled from aggregated `proof_review.md`; use `N/A` for sketch, global, and step reviews
- `Review outcome`: local statuses for sketch, global, and step reviews or final outcomes from `/proof-review-aggregate`
- `Retry target`: `None`, `/global-proof`, `/proof-sketch`, `/proof-step <Step ID>`, `/proof-assembly`, or `/subagent-idea-generator`

Append a row before the producing stage starts. Fill `Status`, `Score`, `Review outcome`, `Retry target`, and `Reasons` only after the corresponding review artifact passes its contract gate.

Global row status mapping:

- Fill the global row only after `global_proof_review.md` passes its artifact gate.
- `ACCEPTED` -> `Status = Accept`, `Score = N/A`
- `REVISE_GLOBAL`, `REVISE_SKETCH`, or `IDEA_FAIL` -> `Status = Fail`, `Score = N/A`
- `Review outcome` is copied from `global_proof_review.md` `## Global-Proof Review Status`
- `Retry target` is copied from `global_proof_review.md` `## Smallest Retry Target`
- Do not copy a global proof diagnostic score into this row; global rows always use `Score = N/A`.
- `REVISE_GLOBAL` opens a new global row with the next global `Unit attempt` when the global proof attempt budget remains.

Assembly row final-review mapping:

- The assembly row is filled only after aggregated `proof_review.md` passes its contract gate.
- `Score` is copied from aggregated `proof_review.md` `Score`.
- `Review outcome` is copied from aggregated `proof_review.md` `Failure Type`.
- `Retry target` is copied from aggregated `proof_review.md` `Suggested Next Action`.
- `Status = Accept` only when `Failure Type = ACCEPTED`; otherwise `Status = Fail`.
- Invalid specialized diagnostic reviews are rerun or handed off before aggregation and do not fill proof-tracker rows.
