# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Robust-tube containment, fixed-gate path expansion, expected-risk transfer, and polynomial dimension counting | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Seven-step roadmap passed independent sketch review (score 9); all generated invariants, risk-transfer interfaces, and specializations are step-local |
| 1 | Robust-tube containment, fixed-gate path expansion, expected-risk transfer, and polynomial dimension counting | global | global | 1 | Accept | N/A | ACCEPTED | None | Independent global-proof review passed contract, scope/closure, interface, generated-flow, baseline, and boundary audits |
| 1 | Robust-tube containment, fixed-gate path expansion, expected-risk transfer, and polynomial dimension counting | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Static fixed-kappa gradient envelope and exact depth-one bound passed independent forward/backward recurrence review |
| 1 | Robust-tube containment, fixed-gate path expansion, expected-risk transfer, and polynomial dimension counting | step | step_002 | 1 | Accept | N/A | ACCEPTED | None | Noncircular all-history closed-tube induction passed independent review, including endpoints and adversarial outward updates |
| 1 | Robust-tube containment, fixed-gate path expansion, expected-risk transfer, and polynomial dimension counting | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | Continuity/IVT gate constancy and all-history transfer passed independent review; closed-ball endpoints, L=1, T=1, zero coordinates, and fixed-kappa cases covered |
| 1 | Robust-tube containment, fixed-gate path expansion, expected-risk transfer, and polynomial dimension counting | step | step_004 | 1 | Accept | N/A | ACCEPTED | None | Exact fixed-gate path expansion and latter-half aggregate coefficient passed independent review, including L=1, T=1, zero/canceling coefficients, zero-score tie equality, and all-history dependencies |
| 1 | Robust-tube containment, fixed-gate path expansion, expected-risk transfer, and polynomial dimension counting | step | step_005 | 1 | Accept | N/A | ACCEPTED | None | Exact pathwise risk identity and infimum-before-expectation comparison passed independent review, including nonattainment, zero-mass histories, tie cases, T=1, and L=1 |
| 1 | Robust-tube containment, fixed-gate path expansion, expected-risk transfer, and polynomial dimension counting | step | step_006 | 1 | Accept | N/A | ACCEPTED | None | Finite-support pushforward, unconditional event split, and exact epsilon+delta_0 witness closure passed independent review with correct law/target quantifier order and no optimizer or conditioning defect |
| 1 | Robust-tube containment, fixed-gate path expansion, expected-risk transfer, and polynomial dimension counting | step | step_007 | 1 | Accept | N/A | ACCEPTED | None | Factor-by-factor path-count bound and exact 2*epsilon threshold specialization passed independent review with same-law witness reuse and all boundary cases |
| 1 | Robust-tube containment, fixed-gate path expansion, expected-risk transfer, and polynomial dimension counting | assembly | assembly | 1 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Aggregate review found an omitted accepted finite-horizon Borel-update induction and four public theorem statements with inherited history/state or distribution/target scopes; accepted steps remain sound |
| 1 | Robust-tube containment, fixed-gate path expansion, expected-risk transfer, and polynomial dimension counting | assembly | assembly | 2 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Aggregate attempt-2 review found 102 manual equation tags cited by hard-coded numeric locators without stable equation labels/ref pairs; prior measurability and theorem-scope repairs passed |
| 1 | Robust-tube containment, fixed-gate path expansion, expected-risk transfer, and polynomial dimension counting | assembly | assembly | 3 | Accept | 9 | ACCEPTED | None | Fresh attempt-3 aggregate accepted after four PASS specialized reviews; 102 stable equation labels/ref pairs, exhaustive 16-unit appendix coverage, compile, provenance, rate, budget, and prior-repair content-neutrality gates passed |

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

- The assembly row is filled only after aggregated `proof_review.md` passes its artifact gate.
- `Score` is copied from aggregated `proof_review.md` `Score`.
- `Review outcome` is copied from aggregated `proof_review.md` `Failure Type`.
- `Retry target` is copied from aggregated `proof_review.md` `Suggested Next Action`.
- `Status = Accept` only when `Failure Type = ACCEPTED`; otherwise `Status = Fail`.
- Invalid specialized diagnostic reviews are rerun or handed off before aggregation and do not fill proof-tracker rows.
