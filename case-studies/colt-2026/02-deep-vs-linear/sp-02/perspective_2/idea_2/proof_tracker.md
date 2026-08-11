# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Fixed-space compactness, exact-center correlation, finite minimax, arbitrary-domain exactification | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Contract-valid score-9 review accepts all six steps and the fixed response-space, compactness, exact-center correlation, Sion minimax, compact-FIP, exact-coordinate, rate, and boundary interfaces as step-local. |
| 1 | Fixed-space compactness, exact-center correlation, finite minimax, arbitrary-domain exactification | global | global | 1 | Accept | N/A | ACCEPTED | None | Contract-valid global review accepts the complete B1-B6 diagnostic, including complete-rule quantifiers, fixed-space compactness, exact-center correlation, source-verified Sion minimax, compact-FIP closure, exact coordinates, polynomial rank, and boundary baselines. |
| 1 | Fixed-space compactness, exact-center correlation, finite minimax, arbitrary-domain exactification | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies the complete public-history all-rule family, seed-average-before-span response rank, exact polynomial certificate, fixed pre-instance basis/map, and all empty, zero-rank, and zero-query branches. |
| 1 | Fixed-space compactness, exact-center correlation, finite minimax, arbitrary-domain exactification | step | step_002 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies evaluation-dual spanning, topology equivalence, current-notation Heine--Borel, compact convexity of the fixed body, continuous point evaluations, and the complete zero-rank and empty-domain branches. |
| 1 | Fixed-space compactness, exact-center correlation, finite minimax, arbitrary-domain exactification | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies exact-center complete-rule legality, bounded-Fubini correlation, the every-valid-rule quantifier, exact margin rho with zero tolerance residual, point-mass exclusion of zero rank, and all empty and zero-query boundaries. |
| 1 | Fixed-space compactness, exact-center correlation, finite minimax, arbitrary-domain exactification | step | step_004 | 1 | Fail | N/A | REVISE_STEP | /proof-step step_004 | Contract-valid review found a local source-fidelity error in the Sion Theorem 3.4 restatement (both spaces are compact in the cited statement) and two malformed bare `qquad` tokens; the existing hypotheses already discharge the corrected theorem, so no sketch or dependency change is needed. |
| 1 | Fixed-space compactness, exact-center correlation, finite minimax, arbitrary-domain exactification | step | step_004 | 2 | Accept | N/A | ACCEPTED | None | Accepted review verifies the source-faithful two-compact-space Sion Theorem 3.4 application, correct max-min orientation, all attainment claims, exact finite simultaneous margin, repaired LaTeX commands, and singleton, zero-rank, and zero-error boundaries. |
| 1 | Fixed-space compactness, exact-center correlation, finite minimax, arbitrary-domain exactification | step | step_005 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies relative closedness in the fixed compact body, the exact FIP including the empty subfamily, arbitrary-cardinality compactness, unchanged threshold rho, and empty-domain, empty-class, zero-rank, and noiseless boundaries. |
| 1 | Fixed-space compactness, exact-center correlation, finite minimax, arbitrary-domain exactification | step | step_006 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies exact fixed-basis score transfer, pre-instance map independence, strict signs, dimension admissibility, the primitive polynomial rank chain, conditional scope, and all empty, zero-rank, zero-query, noiseless, B=1, and k=1 boundaries. |
| 1 | Fixed-space compactness, exact-center correlation, finite minimax, arbitrary-domain exactification | assembly | assembly | 1 |  |  |  |  |  |
| 1 | Fixed-space compactness, exact-center correlation, finite minimax, arbitrary-domain exactification | assembly | assembly | 2 | Accept | 9 | ACCEPTED | None | Aggregate review accepts the conditional deterministic exact polynomial-dimension theorem after structural, rigor, citation, and adversarial passes; all six accepted steps, explicit rates, quantifiers, citations, and boundary cases are preserved in the paper-ready bundle. |

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
