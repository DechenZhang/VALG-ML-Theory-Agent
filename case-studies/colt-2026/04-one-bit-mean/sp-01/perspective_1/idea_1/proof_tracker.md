# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Viability 9; all theorem-critical obligations are step-local and all interface, residual, rate, confidence, baseline, and generated-flow gates passed |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | global | global | 1 | Accept | N/A | ACCEPTED | None | Global diagnostic and independent review passed all theorem-contract, interface, source, rate, baseline, and generated-flow gates |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Exact localization source, interval-to-center bridge, additive cost, assumption provenance, and all four local units passed independent review |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_002 | 1 | Accept | N/A | ACCEPTED | None | Pathwise actual-center recentering, accepted dependency provenance, explicit k-only constant, baseline reduction, and target assembly passed independent review |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | All five scale-design, group-law, normalizer-regime, empty-group, endpoint-calibration, and rate-interface units passed independent review |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_004 | 1 | Accept | N/A | ACCEPTED | None | Four-arc uniqueness, Borel selection, exact asymmetric margins, closed-cell stability, seam, and all candidate-grid boundary cases passed independent review |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_005 | 1 | Accept | N/A | ACCEPTED | None | Strict digit range, joint Borel precommitment, conditional uniform-dither law, exact first/square identities, and pathwise zero baseline passed independent review |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_006 | 1 | Accept | N/A | ACCEPTED | None | Exact finite telescope, strict floor-remainder range, two-residual displacement interface, integrability bridge, and zero-displacement baseline passed independent review |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_007 | 1 | Accept | N/A | ACCEPTED | None | Inclusive digit inactivity, strict magnitude and activation cutoff, top support, and count-free fine/coarse geometric ledgers passed independent review |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_008 | 1 | Accept | N/A | ACCEPTED | None | Exact conditional product kernel, normalized importance law, factor-48 raw square, signed telescope residual, and zero baseline passed independent review |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_009 | 1 | Accept | N/A | ACCEPTED | None | Exact fine probability substitution, count-free ledger, universal 3072-sigma-squared bound, and valid raw-square-to-variance interface passed independent review |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_010 | 1 | Accept | N/A | ACCEPTED | None | Exact coarse raw square, count-free activity closure, three fixed-k regimes, single critical logarithm, and variance interface passed independent review |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_011 | 1 | Accept | N/A | ACCEPTED | None | Exact top support and floor geometry yield separate epsilon/8 top and bottom residual bounds; the same-target bias bridge passed all four local-unit audits |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_012 | 1 | Accept | N/A | ACCEPTED | None | Full-transcript conditional iid, exact empty-group-safe variance certificate, Chebyshev block bound, odd-median amplification, and single-use bias transfer passed review |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_013 | 1 | Fail | N/A | REVISE_STEP | /proof-step step_013 | Mathematical tower and unconditional PAC conversion passed, but one estimator display omitted the backslash in the first block mean and failed exact-notation fidelity |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_013 | 2 | Accept | N/A | ACCEPTED | None | The exact-estimator notation was minimally repaired; all three tower, localized-failure, and unconditional uniform-PAC units passed fresh independent review |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | step | step_014 | 1 | Accept | N/A | ACCEPTED | None | All six precommitment, one-bit/fixed-horizon, variance-specialization, ceiling-absorption, public-rate/PAC, and exact-baseline units passed independent review |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | assembly | assembly | 1 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Appendix proposition `prop:step-008-target-interface` misstated the provenance of its first-moment premise; accepted step mathematics and the proof body are valid, so the aggregate routed an assembly-only repair (`repair_assembly`) |
| 1 | Shifted-dyadic telescope with localization, variance and tail bridges, and unconditional PAC assembly | assembly | assembly | 2 | Accept | 10 | ACCEPTED | None | Fresh structural, rigor, citation, and adversarial reviews all passed; the aggregate independently verified all 56 local units, 14 target assemblies, TeX, provenance, and budgets |

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
