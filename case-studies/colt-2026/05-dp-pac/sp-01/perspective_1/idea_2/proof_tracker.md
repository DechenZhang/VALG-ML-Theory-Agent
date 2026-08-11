# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

Run budget overrides: `MAX_SKETCH_ATTEMPTS_PER_IDEA = 10`, `MAX_GLOBAL_PROOF_ATTEMPTS_PER_SKETCH = 100`, `MAX_STEP_ATTEMPTS_PER_STEP = 100`, and `MAX_ASSEMBLY_ATTEMPTS_PER_SKETCH = 100`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Factorwise Yan upper bound plus unrestricted hidden-factor direct-sum lower bound | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Fifteen-step roadmap passed independent source-interface, direct-sum, adjacency, generated-flow, quantitative, and boundary audits. |
| 1 | Factorwise Yan upper bound plus unrestricted hidden-factor direct-sum lower bound | global | global | 1 | Accept | N/A | ACCEPTED | None | Fifteen-step theorem diagnostic passed independent source, finite-prior, simulator, candidate-scope, quantitative, residual, and baseline audits. |
| 1 | Factorwise Yan upper bound plus unrestricted hidden-factor direct-sum lower bound | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Six-unit proof of exact product VC, Littlestone additivity, finite cardinality, and structural scale inequalities passed independent local review. |
| 1 | Factorwise Yan upper bound plus unrestricted hidden-factor direct-sum lower bound | step | step_008 | 1 | Fail | N/A | REVISE_STEP | /proof-step step_008 | Active ALMM v3 midpoint/privacy-constant checks and the all-input source-label preprocessing map require local repair. |
| 1 | Factorwise Yan upper bound plus unrestricted hidden-factor direct-sum lower bound | step | step_008 | 2 | Accept | N/A | ACCEPTED | None | Repaired five-unit ALMM expected-risk wrapper passed independent midpoint, privacy-constant, all-input adjacency, loss-map, rate, and boundary review. |
| 1 | Factorwise Yan upper bound plus unrestricted hidden-factor direct-sum lower bound | step | step_009 | 1 | Accept | N/A | ACCEPTED | None | Five-unit finite-task, exact all-input DP-kernel, strict compact-minimax, learner-independent prior, and inactive-factor completion proof passed independent local review. |
| 1 | Factorwise Yan upper bound plus unrestricted hidden-factor direct-sum lower bound | step | step_011 | 1 | Fail | N/A | REVISE_STEP | /proof-step step_011 | All five mathematical units and target assembly passed, but the controlled Step Proof Status was Markdown-backticked rather than a raw token. |
| 1 | Factorwise Yan upper bound plus unrestricted hidden-factor direct-sum lower bound | step | step_011 | 2 | Fail | N/A | REVISE_STEP | /proof-step step_011 | Raw status repair passed and all mathematics passed, but the binomial count reused setting-reserved X instead of sketch notation L, and one provenance sentence reversed the upper-bound direction. |
| 1 | Factorwise Yan upper bound plus unrestricted hidden-factor direct-sum lower bound | step | step_011 | 3 | Accept | N/A | ACCEPTED | None | Five-unit uniform binomial overflow certificate and exact numerical slack passed full mathematical, notation, rate, ceiling, boundary, and reviewer-contract audit. |
| 1 | Factorwise Yan upper bound plus unrestricted hidden-factor direct-sum lower bound | step | step_002 | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Yan's raw failure is `(t+2) beta_raw`, so requested confidence creates an unresolved self-referential `beta_raw=beta_fac/(t+2)` calibration and an unbounded omitted outer `log(t+2)` term; the accepted exact log-squared quota interface is not source-certified. |
| 2 | Preserve the unrestricted direct-sum lower branch while repairing the Yan confidence fixed point or finding a source-faithful exact-log-squared VC-one upper wrapper | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Fixed-confidence median/Hoeffding arithmetic plausibly preserves the exact log-squared quota, but Yan's printed interfaces do not establish a total arbitrary-input replacement-private choosing mechanism or the induced improper block core's marginal good-event bound; lower step_012 flow also omits step_010. |
| 3 | Preserve the fixed-confidence Yan route and unrestricted lower direct sum while repairing total replacement privacy, the improper-core good-event producer, exact quota constants, and the lower eligibility flow | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Attempt 3 validates the replacement-private BNSV extension, empty-support handling, core-closure VC bound, fixed-confidence squared-log quota, and repaired lower flow, but the arbitrary-space factor wrapper still lacks a measurable-kernel derivation; step dependencies/stable assumption ids and the strict private-median/ceiling endpoint also require target-preserving repair. |
| 4 | Preserve attempt-3 privacy, core-VC, quota, and lower-flow repairs while proving the total measurable factor kernel, normalizing dependencies and stable assumption ids, and closing strict median/ceiling endpoints | sketch | sketch | 1 | Fail | N/A | IDEA_FAIL | /subagent-idea-generator | The explicit countable-cocountable point-function class satisfies the one-factor VC/LD assumptions but makes the version-space/root selector the nonmeasurable diagonal; repairing the upper kernel or its one-factor baseline requires a primitive measurable-space assumption, a different procedure, or a weakened target. |

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
