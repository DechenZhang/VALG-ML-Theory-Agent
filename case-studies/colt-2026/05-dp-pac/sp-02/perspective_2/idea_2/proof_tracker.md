# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Independent score-9 review verified all 12 theorem-critical evidence rows as step-local. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | global | global | 1 | Fail | N/A | REVISE_GLOBAL | /global-proof | G7's diagnostic wording consumes a suffix after reserving the external prefix and therefore does not prove the accepted first-R off-overflow record identity; the accepted sketch already contains the correct indexed coupling. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | global | global | 2 | Accept | N/A | ACCEPTED | None | Independent review accepted the repaired indexed-pool G7 coupling, including exact first-R sample identity, no counter advance for the external prefix, overflow-only residual, and all 12 gate-evidence rows. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Independent review passed all four local units, including arbitrary-output restriction, corrected with-replacement privacy with repeated indices, exact empirical-risk identity, and threshold-convention equivalence. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | step | step_002 | 1 | Accept | N/A | ACCEPTED | None | Independent review passed all seven units, including source instantiation, parity and endpoint gaps, complete rank coverage, sparse successors, pullback rise sign, finite coloring, and universal Ramsey/delta constants. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | Independent review passed all four units, including source mapping, fixed-extremes indexing, endpoint ranks, exact one-record adjacency, unchanged privacy, pullback sign, and margin eta=a_0/M. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | step | step_004 | 1 | Accept | N/A | ACCEPTED | None | Independent review passed all eight units, including product-DP direction, additive-delta budget, disjoint leaves, finite Ramsey comparison, strict log-star inversion, and universal threshold constants. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | step | step_005 | 1 | Accept | N/A | ACCEPTED | None | Independent review passed all four local units: the full eventwise-DP kernel polytope, exact arbitrary-output risk-vector restriction, correctly oriented attained minimax, and the learner-independent hard prior at value 1/20. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | step | step_006 | 1 | Accept | N/A | ACCEPTED | None | Independent review passed all five local units: iid latent completion, measurable arbitrary-output kernel, exhaustive equal-or-one-replacement transcript locality, exact two-sided privacy after common-law averaging, and the k=1 no-overflow baseline. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | step | step_007 | 1 | Accept | N/A | ACCEPTED | None | Independent review passed all six local units: exact iid grand pools, minor realizability, no-reuse recordwise coupling, diagonal arbitrary-output transfer, the uniform Bernstein exponent 27/2, and the k=1 boundary certificate. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | step | step_008 | 1 | Fail | N/A | REVISE_STEP | /proof-step step_008 | Independent review passed all six mathematical units and localized the sole defect to the malformed target-display token `\\!left[` at proof line 64. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | step | step_008 | 2 | Accept | N/A | ACCEPTED | None | Fresh independent review accepted all six units after the exact target delimiter repair, including ancillarity, EX, PAC expectation, overflow transfer, strict UT, the conditional 7/8 certificate, and k=1 recovery. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | step | step_009 | 1 | Fail | N/A | REVISE_STEP | /proof-step step_009 | Independent review found three local-interface defects: missing `N>=N_0` and explicit HP conditions in unit_003, wrong `B_Pi` producer attribution, and hidden/mis-scoped HP/DP/UT dependencies in units 004--005. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | step | step_009 | 2 | Accept | N/A | ACCEPTED | None | Fresh independent review accepted all five repaired local interfaces, including explicit HP conditions, correct kernel-producer/privacy-certificate provenance, named HP/DP/UT dependencies, unconditional utility versus conditional auxiliary scope, unchanged `delta_m`, and exact `k=1` recovery. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | assembly | assembly | 1 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Contract-valid aggregate localized all blockers to public assembly transcription: three iterate-to-power substitutions, experiment-law provenance/object drift, malformed public identifiers and command fragments, and missing public support for the countable-product construction. |
| 1 | Finite minimax threshold hard prior followed by iid hidden-arm direct-sum reduction | assembly | assembly | 2 | Accept | 9 | ACCEPTED | None | Aggregate review passed all four specialized diagnostics, all nine accepted step identities, the exhaustive 49-unit appendix comparison, provenance and budget gates, and a fresh clean 60-page build; no blocking issue remains. |

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
