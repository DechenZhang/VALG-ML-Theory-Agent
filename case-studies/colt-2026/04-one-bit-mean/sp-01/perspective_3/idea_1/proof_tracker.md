# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Viability 9; exact ring geometry, all-alias variance, tail bridge, public-coin conditioning, baseline, rate, and generated-flow gates passed |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | global | global | 1 | Accept | N/A | ACCEPTED | None | Global diagnostic and independent review passed geometry, coefficient, variance, conditioning, rate, source, baseline, and generated-flow gates |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | step | step_001 | 1 | Fail | N/A | REVISE_STEP | /proof-step step_001 | Ill-typed event conditions in units 002/003 and missing Borel measurability bridge for the recentered moment; substantive source and localization calculations passed |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | step | step_001 | 2 | Accept | N/A | ACCEPTED | None | Event typing and shifted-moment measurability were repaired; all four local units, source interface, rate contract, and target assembly passed fresh independent review |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | step | step_002 | 1 | Accept | N/A | ACCEPTED | None | All four ancestor, partition, color/amplitude, alias-inactivity, and joint Borel precommitment units passed independent review |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | All four dither, alias-projection, exact coefficient-ledger, conditioning, telescope, residual, and baseline units passed independent review |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | step | step_004 | 1 | Accept | N/A | ACCEPTED | None | Target/alias distance split, exact half-open endpoints, all-ring dyadic budget, explicit k-only constant, and zero-charge baselines passed independent review |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | step | step_005 | 1 | Accept | N/A | ACCEPTED | None | Exact level-zero and higher-level all-alias square ledgers, pointwise-before-expectation activation sum, conditional variance, and single-factor k=2 accounting passed independent review |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | step | step_006 | 1 | Accept | N/A | ACCEPTED | None | K-only scale choices, atom-safe tail bridge, exact dyadic rounding, all three normalizer/rate regimes, and A_k nondegeneracy passed independent review |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | step | step_007 | 1 | Fail | N/A | REVISE_STEP | /proof-step step_007 | Target header mistyped scalar c as an event member; median lemma statement omitted the accepted conditional-iid source required for Hoeffding; body and remaining units passed |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | step | step_007 | 2 | Accept | N/A | ACCEPTED | None | Event/scalar typing and the self-contained conditional-independence premise were repaired; all four units and exact confidence interface passed fresh review |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | step | step_008 | 1 | Accept | N/A | ACCEPTED | None | All six query-legality, one-bit accounting, unconditional PAC, technical-rate, public-rate, and exact-baseline units passed independent review |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | assembly | assembly | 1 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Public three-regime rate lacked the contract-required corollary interface stating auxiliary choices and citing the named Rate Specialization Bridge |
| 1 | coding localization; padded-ring telescope; activation ledger; three-regime variance, tail, confidence, and protocol closure | assembly | assembly | 2 | Accept | 9 | ACCEPTED | None | All four specialized reviews passed; the aggregate independently verified all 33 local units, 8 target assemblies, public rate bridge, exact baselines, provenance, budgets, references, and isolated compilation |

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
