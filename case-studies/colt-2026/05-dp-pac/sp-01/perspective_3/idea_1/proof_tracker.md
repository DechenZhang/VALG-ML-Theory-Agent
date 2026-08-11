# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

Run budget overrides: `MAX_SKETCH_ATTEMPTS_PER_IDEA = 10`, `MAX_GLOBAL_PROOF_ATTEMPTS_PER_SKETCH = 100`, `MAX_STEP_ATTEMPTS_PER_STEP = 100`, and `MAX_ASSEMBLY_ATTEMPTS_PER_SKETCH = 100`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Sixteen-step roadmap passed independent source, minimax, overflow, adjacency, generated-flow, and boundary audits. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | global | global | 1 | Accept | N/A | ACCEPTED | None | Sixteen-step theorem diagnostic passed independent source, minimax, quantifier-order, simulator, privacy, residual, and boundary audits. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_002 | 1 | Accept | N/A | ACCEPTED | None | Four-unit ALMM v3 source wrapper, constant extraction, convention transport, and privacy monotonicity proof passed independent source and boundary review. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Seven-unit proof of exact cardinality, VC, one-tag Littlestone depth, and tagged-product additivity passed independent local review. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | Two-unit expectation-to-PAC contrapositive passed independent boundary, quantifier, privacy-endpoint, and scope review. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_004 | 1 | Accept | N/A | ACCEPTED | None | Five-unit exact all-event kernel, compact strict-value, separation minimax, finite-barycenter, and public-prior proof passed independent review. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_005 | 1 | Accept | N/A | ACCEPTED | None | Four-unit universal calibration, exact budget domination, privacy-cap preservation, and candidate-parameter certificate passed independent boundary, strictness, quantifier, and assumption-provenance review. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_006 | 1 | Accept | N/A | ACCEPTED | None | Two-unit fixed-vector realizability and pointwise PAC-to-expectation proof passed independent quantifier, dependency, improper-output, rate, and boundary review; two redundant-display transcription defects are nonblocking. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_007 | 1 | Accept | N/A | ACCEPTED | None | Two-unit arbitrary-output restriction and exact pathwise block-risk identity passed independent typing, improper-output, quantifier, endpoint, and degenerate-distribution review. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_008 | 1 | Accept | N/A | ACCEPTED | None | Five-unit proof of product-instance factorization, conditional i.i.d. sampling, selector independence through arbitrary asymmetric learners, exact product-risk decomposition, and selected-coordinate expectation identity passed independent review. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_009 | 1 | Accept | N/A | ACCEPTED | None | Six-unit exact binomial usage law, falling-factorial tail, floor-eight branch, monotone envelope, ceiling-controlled large-mean bound, and zero-overflow small-tag certificate passed independent review. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_010 | 1 | Accept | N/A | ACCEPTED | None | Four-unit executable simulator, hidden-blind preprocessing, exact size, total arbitrary-input kernel, improper restriction, and pathwise one-use proof passed independent dependency, randomness, claim-boundary, and edge-case review. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_011 | 1 | Accept | N/A | ACCEPTED | None | Five-unit common-randomness proof passed independent review: the accepted ideal law is unconditional, datasets and randomized outputs coincide pathwise exactly off overflow, and the sole one-sided residual is Pr(U>M), vanishing for k=2,3. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_012 | 1 | Accept | N/A | ACCEPTED | None | Four-unit exact simulator privacy proof passed independent review: pathwise one-row adjacency covers arbitrary labels and overflow, central DP is charged once with learner coins retained, common input-independent mixing and restriction preserve the exact parameters, and source-cap membership is total and exact. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_013 | 1 | Accept | N/A | ACCEPTED | None | Prior-averaged actual-to-ideal transfer passed independent quantifier, coupling-direction, strict-gap, one-overflow-charge, exchangeability, and exact product-risk review. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_014 | 1 | Accept | N/A | ACCEPTED | None | Finite-support extraction removed the analysis-side prior and the same fixed product instance passed the strict (2^{-9}>2^{-12}) pointwise PAC contradiction review. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_015 | 1 | Accept | N/A | ACCEPTED | None | Two-unit exact candidate closure passed independent dependency-activation, fixed-instance identity, quantifier-order, strict-negation, constant, boundary, explicit-rate, and public-R1 review. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | step | step_016 | 1 | Accept | N/A | ACCEPTED | None | Five-unit tower-diagonal specialization passed independent tower/log-star, exact floor, structural identity, fixed-threshold, r-independent constant, explicit-rate, privacy-scope, and remaining-gap review. |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | assembly | assembly | 1 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Aggregate review found four assembly-only defects: undefined or ambiguous source-local interfaces and repeated numeric tags; missing Step 6 finite-prior averaging and Step 16 tower/rate target assembly; missing public support for invoked tools and theorem-style dependencies; and an unsynchronized assembly report. proof_review_sha256=39cbb0a0fa7bbc3a3d35ec302651845e092b40e1f9c4722a41cf38e7306c4fd7 |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | assembly | assembly | 2 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Aggregate review found exactly two public-TeX transcription defects: bare `qquad` tokens in the universal-calibration and tower-recursion displays. All 16 accepted derivations, theorem interfaces, citations, rates, privacy arguments, and source-to-appendix coverage otherwise passed. proof_review_sha256=e7c6ce41a97aa82c8b9ae32b074774fe52436bf1ca31ca2c1b59e8434ff54535 |
| 1 | Unrestricted threshold minimax prior and hidden-coordinate tensorization | assembly | assembly | 3 | Accept | 9 | ACCEPTED | None | Aggregate review accepted the synchronized nine-file bundle after all four specialized reviews passed; the material-partial theorem proves Omega(k log* N) and its tower-diagonal Omega(VC log* LD) specialization while leaving the full open problem unresolved. proof_review_sha256=6f0d930b86042391413eb83fdd220b37c78990b2d6fbf8cd65d95a5bb2368274 |

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
