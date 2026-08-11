# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Depth-two ReLU antisymmetrization, tie-aware error transfer, finite Gordan-Caratheodory obstruction, and identity exactification | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Seven-step roadmap passed independent sketch review (score 9); all hard obligations are step-local |
| 1 | Depth-two ReLU antisymmetrization, tie-aware error transfer, finite Gordan-Caratheodory obstruction, and identity exactification | global | global | 1 | Accept | N/A | ACCEPTED | None | Global diagnostic passed independent review; tie, expectation, convex-certificate, support, and exactification interfaces remain step-local |
| 1 | Depth-two ReLU antisymmetrization, tie-aware error transfer, finite Gordan-Caratheodory obstruction, and identity exactification | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Exact pathwise ReLU antisymmetrization and latter-half indexing passed independent step review, including kink, zero, and T=1 boundaries |
| 1 | Depth-two ReLU antisymmetrization, tie-aware error transfer, finite Gordan-Caratheodory obstruction, and identity exactification | step | step_002 | 1 | Accept | N/A | ACCEPTED | None | Exhaustive tie-aware pair-error comparison and exact antipodal factor-two risk transfer passed independent review |
| 1 | Depth-two ReLU antisymmetrization, tie-aware error transfer, finite Gordan-Caratheodory obstruction, and identity exactification | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | Legal symmetrized-law invocation, exact factor-two expectation transfer, and finite deterministic extraction passed independent review |
| 1 | Depth-two ReLU antisymmetrization, tie-aware error transfer, finite Gordan-Caratheodory obstruction, and identity exactification | step | step_004 | 1 | Accept | N/A | ACCEPTED | None | Antipodal representative partition and exact tie-resolved strict-system equivalence passed independent review, including both tie labels, zero scores, w=0, and n=1 |
| 1 | Depth-two ReLU antisymmetrization, tie-aware error transfer, finite Gordan-Caratheodory obstruction, and identity exactification | step | step_005 | 1 | Accept | N/A | ACCEPTED | None | Closest-point zero certificate, positive support pruning to n+1, signed cancellation, and tie-aware uniform-risk obstruction passed independent review |
| 1 | Depth-two ReLU antisymmetrization, tie-aware error transfer, finite Gordan-Caratheodory obstruction, and identity exactification | step | step_006 | 1 | Accept | N/A | ACCEPTED | None | Exact same-witness strict-gap contradiction and identity-separator extraction passed independent review, including tie, support-endpoint, zero-error, null-vector, empty-class, and quantifier cases |
| 1 | Depth-two ReLU antisymmetrization, tie-aware error transfer, finite Gordan-Caratheodory obstruction, and identity exactification | step | step_007 | 1 | Accept | N/A | ACCEPTED | None | Common identity map, Dirac-law probability-one witness, deterministic-to-confident comparison, and n<=S<=TS arithmetic passed independent review with empty-class and boundary cases |
| 1 | Depth-two ReLU antisymmetrization, tie-aware error transfer, finite Gordan-Caratheodory obstruction, and identity exactification | assembly | assembly | 1 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Aggregate review found malformed bare qquad fragments, hidden step-005/006 assumptions and target interfaces, omitted finite-recursion measurability discharge, and proof-local Q_h exported in preliminaries; accepted steps remain sound |
| 1 | Depth-two ReLU antisymmetrization, tie-aware error transfer, finite Gordan-Caratheodory obstruction, and identity exactification | assembly | assembly | 2 | Accept | 9 | ACCEPTED | None | Fresh attempt-2 aggregate accepted after four PASS specialized reviews; all 19 source units, repaired measurability/interfaces/LaTeX, compile, provenance, and budget gates passed |

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
