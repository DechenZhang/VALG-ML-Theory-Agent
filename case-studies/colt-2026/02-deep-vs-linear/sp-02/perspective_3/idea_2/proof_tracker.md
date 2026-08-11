# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Catalog correlation, finite-simplex minimax, compactness, deterministic coordinate exactification | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Contract-valid score-10 review accepts all six steps and the selector-law, correlation, finite minimax, compact-FIP, exact-sign, rate, and boundary interfaces as step-local. |
| 1 | Catalog correlation, finite-simplex minimax, compactness, deterministic coordinate exactification | global | global | 1 | Accept | N/A | ACCEPTED | None | Contract-valid global review accepts the complete B1-B6 diagnostic, including selector measurability, arbitrary-policy correlation, finite minimax orientation and attainment, compact-FIP scope upgrade, exact sign bridge, polynomial budget, and boundary baselines. |
| 1 | Catalog correlation, finite-simplex minimax, compactness, deterministic coordinate exactification | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies center-policy nonemptiness, arbitrary-policy measurable selector pushforward, exact catalog loss/correlation mixtures, continuous adaptive replies, and all zero-query and finite-catalog boundaries. |
| 1 | Catalog correlation, finite-simplex minimax, compactness, deterministic coordinate exactification | step | step_002 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies exact every-policy catalog correlation, policy-free max-catalog correlation at margin rho, arbitrary-policy quantifiers, learner-tape expectation mode, and all zero-query, single-catalog, and zero-error boundaries. |
| 1 | Catalog correlation, finite-simplex minimax, compactness, deterministic coordinate exactification | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies the finite-support distribution bridge, zero-slack closest-point alternative, exact finite minimax orientation and attainment, exact margin rho, empty-set feasibility, and all finite-game boundaries. |
| 1 | Catalog correlation, finite-simplex minimax, compactness, deterministic coordinate exactification | step | step_004 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies compactness and closedness in the fixed finite simplex, the exact finite-intersection identity, arbitrary-family FIP without countability, extraction of one global weight, exact margin preservation, and empty-domain, singleton-catalog, and zero-error boundaries. |
| 1 | Catalog correlation, finite-simplex minimax, compactness, deterministic coordinate exactification | step | step_005 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies the fixed catalog-coordinate identity, common-map independence, strict binary sign conversion, exact quantifier order and margin, and the singleton-catalog, zero-error, empty-domain, and empty-class-extension boundaries. |
| 1 | Catalog correlation, finite-simplex minimax, compactness, deterministic coordinate exactification | step | step_006 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies exact definition unfolding, the primitive catalog-budget chain, all exposed dependence, deterministic fixed-horizon mode, and the m=0, finite-tau, L=1, B=1, and empty-domain boundary cases. |
| 1 | Catalog correlation, finite-simplex minimax, compactness, deterministic coordinate exactification | assembly | assembly | 1 |  |  |  |  |  |
| 1 | Catalog correlation, finite-simplex minimax, compactness, deterministic coordinate exactification | assembly | assembly | 2 |  |  |  |  |  |
| 1 | Catalog correlation, finite-simplex minimax, compactness, deterministic coordinate exactification | assembly | assembly | 3 |  |  |  |  |  |
| 1 | Catalog correlation, finite-simplex minimax, compactness, deterministic coordinate exactification | assembly | assembly | 4 | Accept | 10 | ACCEPTED | None | Aggregate review accepts the conditional deterministic exact polynomial catalog theorem after structural, rigor, citation, and adversarial passes; all six accepted steps, exact rates, quantifiers, topology citations, and boundary cases are preserved in the paper-ready bundle. |

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
