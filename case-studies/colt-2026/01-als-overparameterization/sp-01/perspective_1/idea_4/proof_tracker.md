# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Scale-aware smoothing, windowed rare coverage, simultaneous Jacobi R/S contraction, observable filtering and clustering, local-basin transfer, active CP-ALS refinement, and explicit rate aggregation | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Simultaneous recurrence survives baseline stress, but score/cluster, row-column residual, explicit ALS basin, and rate-specialization interfaces remain schematic. |
| 2 | Quantified rare-entry and coverage bounds, score-gap clustering, two-sided coefficient bridge, explicit quotient ALS basin, and rate specialization | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Row-column transient initialization/indexing, residual arithmetic, full-ball ALS control, scale conjugation, and q=0 endpoint remain under-specified. |
| 3 | Post-first-update row-column transient control, corrected same-target residual, scale-normalized ALS conjugacy and full-ball basin, exact baseline endpoint, and propagated rate specialization | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Selected-member certificate inheritance and dimension-free full-ball Gram/Lipschitz control remain unsupported; m10 arithmetic and pairwise gauge Lipschitz also need repair. |
| 4 | Selected-member inheritance, row-column-controlled reachable tube, corrected transient constants, and pairwise scale-normalized ALS contraction | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Selected-member score transfer does not yield global incoming row/column mass; residual scale and norm_T are undefined, and exported flow rows retain stale full-ball constants. |
| 5 | Joint selected-member/global incoming-mass transfer, explicit tube norm and residual entry, synchronized tube constants, and complete rate flow | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | S3-S5 still assert a dimension-free global row-mass source without hypotheses; m_i/E_M/F_M mapping, eta-to-norm_T residual export, gauge uniqueness, and the norm_T ALS wrapper remain incomplete. |
| 6 | Explicit global row-source lemma, defined coefficient matrices and tube norm, selected residual export, gauge-fixed pairwise ALS wrapper, and synchronized flow | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Conditional sign/Rademacher source is unsupported under correlated Gaussian selection; row-l1 tail and raw/unit scaling exports remain incomplete, with stale flow provenance. |
| 7 | Source-adequate global row control without unsupported signs, explicit raw/unit scaling and norm_T interfaces, synchronized step/flow provenance | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Q_M/J1 residual identity, F-to-E column bridge, deterministic Q_M row budget, raw/unit norm typing, A1-A2 definitions, and E_row producer flow remain incomplete. |
| 8 | Fully defined Q_M/J1 residual algebra, direct F-to-E bridge and row budget, typed raw/unit norm_T tube, and forward E_row provenance | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | J0/J1 Q_M identities and row budget, F-to-E source, raw/unit typing, norm_T/A1-A2, and E_row flow remain unsupported. |
| 9 | Fully derived Q_M/J1/J2 algebra, direct row/column source and typed scale-normalized tube, with forward E_row flow | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | F_M definition forces Q_M=0, J1 changes its controlled matrix, J0b drops scaling/dual control, S1a and raw/unit scales are inconsistent, ALS coefficient is miscomputed, and E_row flow is malformed. |
| 10 | Consistent coefficient/residual definitions, induced-l1 row source, corrected S1/raw-unit tube and ALS coefficient, and valid forward flow | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Final pre/post-update coefficient mismatch leaves nonzero Q at q=0, q_amp has no source, G2/tube constants conflict, A1-A2 composition is asserted, and E_row flow remains malformed. |

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
