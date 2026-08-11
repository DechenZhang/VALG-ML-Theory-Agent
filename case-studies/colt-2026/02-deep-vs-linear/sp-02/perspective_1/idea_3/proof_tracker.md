# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Canonical valid-policy correlation, finite minimax, compact-simplex exactification, coordinate-map closure | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Sketch viability 9; retry_mode=none; review_sha256=c361b0ab9490ece4367691052d05a1e6340259818ae1e63f5e463bbe1c750172 |
| 1 | Canonical valid-policy correlation, finite minimax, compact-simplex exactification, coordinate-map closure | global | global | 1 | Accept | N/A | ACCEPTED | None | Contract-valid global review accepts the complete five-block diagnostic and all six interfaces, including selector-free scalar-loss extraction, source-aligned Sion minimax, fixed-simplex FIP, exact coordinate transfer, polynomial dependence, and boundary cases; review_sha256=9dd2c6c49ac476c03e9bf8339e892d0f50c936d0651f62eeec1c402ac69a6cac |
| 1 | Canonical valid-policy correlation, finite minimax, compact-simplex exactification, coordinate-map closure | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies pathwise reached-query legality, actual canonical execution, delayed exact catalog membership, canonical-only scope, exact rate surface, and all no-query, early-stop, tie, large-tolerance, duplicate, and arbitrary-tape boundaries; review_sha256=7f9222d12bff6e89ec48b2bf2a2782e06701a778fd72cbb776672dfbc833eff9 |
| 1 | Canonical valid-policy correlation, finite minimax, compact-simplex exactification, coordinate-map closure | step | step_002 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies selector-free finite scalar-range attainment, exact actual-output membership, same-function risk-to-correlation conversion, dependency provenance, and the nonatomic, zero-mass, duplicate, singleton, no-query, and zero-error boundaries; review_sha256=d4d87387e2c7b5e282e1cdc288a31798cafb88d0ad2ba288f5c0ae70ade88bb7 |
| 1 | Canonical valid-policy correlation, finite minimax, compact-simplex exactification, coordinate-map closure | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | Accepted review directly verifies Sion Theorem 3.4 and its maximizing-mixture/minimizing-distribution orientation, the finite-distribution lower bound, both simplex vertex identities, independent attainment, exact score transfer, and the empty/singleton/duplicate/zero-weight/noiseless boundaries; review_sha256=d5f5188885c68ca9607c37ed722ed4066e76755a6c0256b9cff977e9d885ad1e |
| 1 | Canonical valid-policy correlation, finite minimax, compact-simplex exactification, coordinate-map closure | step | step_004 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies one fixed nonempty compact simplex, relative closedness, exact finite-intersection provenance, the full arbitrary-family compact FIP proof, unchanged margin, and empty through uncountable domains, singleton simplex, duplicates, and noiseless boundaries; review_sha256=e8533b235f6be6ab8c356a01667d32fdcac457dd44fc365d6ef237dab6834c84 |
| 1 | Canonical valid-policy correlation, finite minimax, compact-simplex exactification, coordinate-map closure | step | step_005 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies the exact ordered coordinate map, pre-instance independence, target-only weights, strict pointwise signs, definition-level dimension closure, literal polynomial size bound, and all empty, zero-budget, noiseless, singleton, unit-constant, arbitrary-tolerance, infinite-domain, duplicate, and arbitrary-tape cases; review_sha256=07bdcecdd6d68b69ef9edfb62d955f326b5e1180441588066dd73e59f6652f5c |
| 1 | Canonical valid-policy correlation, finite minimax, compact-simplex exactification, coordinate-map closure | assembly | assembly | 1 | Accept | 10 | ACCEPTED | None | Aggregate review accepts the exact conditional polynomial dimension theorem; all four specialist reviews pass, the exhaustive 17-unit and five-target-assembly audit passes, the 18-page TeX bundle compiles cleanly, and provenance/budget gates pass; review_sha256=35ff7062dae657c536897cffe84a2fd748e96e1d5abe86e2a4aae07c160be163 |

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
