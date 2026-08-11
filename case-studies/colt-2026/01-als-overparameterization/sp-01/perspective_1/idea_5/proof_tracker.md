# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Certified same-state Jacobi coverage, observable clustering, same-state coefficient bridge, and protected cyclic-ALS refinement | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Pre-cluster certificate producer, chart/sign margins, row/column small-gain, best-scalar, and numeric ALS interfaces need target-preserving bridge repairs. |
| 2 | Pre-cluster oriented certificate equation, explicit chart and score margins, closed row/column bootstrap, and quantified active ALS tube | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Orthogonal multi-support fixed points invalidate the support dichotomy; dual l1 chart, gauge, per-entry residual, and quotient-scale bridges remain repairable sketch interfaces. |
| 3 | General l2 support/score classification, uniform dual chart, consistent sign gauge, per-entry certificate residual, and corrected ALS scale bridge | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Weighted profile/direct score lemma drops diag(lambda); allowed unequal-weight two-support fixed point violates the stated constants, while remaining interfaces are repairable. |
| 4 | Weight-aware support/profile score gap, corrected cluster margins, and preserved same-state coefficient/ALS bridges | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Unequal-weight numerics pass, but weighted support lemma source/tail normalization, all-certified chart-l1 coverage, and raw/barred convention flow remain underspecified. |
| 5 | Explicit weighted support lemma and tail normalization, uniform all-certified chart-l1 bridge, and synchronized raw/barred certificate conventions | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | E_cert_tail still lacks a derived r-uniform l2-to-l1 tail charge, and the raw/barred convention conflicts with binding setting.md; both remain target-preserving repairs. |
| 6 | Derived r-uniform certificate-tail l1 charge and binding raw/barred representative convention | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Profile 16/32 eta_0 bounds fail the stated denominator arithmetic, and eta_G=q_* lacks the required two-factor Gram-leakage derivation; target-preserving repair remains localized. |
| 7 | Corrected denominator/profile constants and explicit two-factor Gram leakage source | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Matrix-Hadamard expansion does not source the actual transformed coefficient-vector eta_G/eta_N relation; downstream flow is conditional. |
| 8 | Vector-level Gram leakage/normalization expansion and corrected conditional downstream flow | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None |  |
| 8 | Same-state certificate, weighted cluster bridge, quotient basin, and no-floor refinement | global | global | 1 | Accept | N/A | ACCEPTED | None |  |
| 8 | Realized smoothing geometry, norm/Gram/weight/Khatri-Rao event | step | step_001 | 1 | Fail | N/A | REVISE_STEP | /proof-step step_001 | Undefined local symbols `\\bar f_{Mj}` and `E_M`, plus two displayed numerical absorptions; target-preserving repair. |
| 8 | Realized smoothing geometry, norm/Gram/weight/Khatri-Rao event with bound-symbol repairs | step | step_001 | 2 | Accept | N/A | ACCEPTED | None |  |
| 8 | Rare Gaussian window and correlated competitor tail | step | step_002 | 1 | Fail | N/A | REVISE_STEP | /proof-step step_002 | Undefined local factor-column alias `g_(M,ell)`; all mathematical and rate checks passed. |
| 8 | Rare Gaussian window and correlated competitor tail with bound factor alias | step | step_002 | 2 | Accept | N/A | ACCEPTED | None |  |
| 8 | All-target coverage and rank specialization | step | step_003 | 1 | Accept | N/A | ACCEPTED | None |  |
| 8 | Simultaneous Jacobi recurrence, chart, and certification | step | step_004 | 1 | Accept | N/A | ACCEPTED | None |  |
| 8 | Same-state certificate equation and all-certified ledger | step | step_004b | 1 | Accept | N/A | ACCEPTED | None |  |
| 8 | Weighted support classifier, clustering, and sign gauge | step | step_005 | 1 | Accept | N/A | ACCEPTED | None |  |
| 8 | Dual coefficient and row/column small-gain bridge | step | step_006 | 1 | Fail | N/A | REVISE_STEP | /proof-step step_006 | Local contract defects: unit_003 leaves p^perp and |a|<1+2q* unsupported; units 002-005 omit self-contained dependency/assumption bases. Archived under proof_history/sketch_008/proof_steps/step_006/attempt_001/. |
| 8 | Dual coefficient and row/column small-gain bridge, local statement-basis repair | step | step_006 | 2 | Fail | N/A | REVISE_STEP | /proof-step step_006 | Attempt-1 mathematical gaps fixed; unit_004 and unit_005 statements still omit explicit accepted-interface/local-condition bases. Archived under proof_history/sketch_008/proof_steps/step_006/attempt_002/. |
| 8 | Dual coefficient and row/column small-gain bridge, complete local statement bases | step | step_006 | 3 | Accept | N/A | ACCEPTED | None |  |
| 8 | Observable best-scalar target transfer and quotient norm | step | step_007 | 1 | Accept | N/A | ACCEPTED | None |  |
| 8 | Active quotient basin and cyclic ALS contraction | step | step_008 | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Shared-perpendicular Q-tube construction yields order-one first-sweep Khatri-Rao off-diagonal mass for r t^4 large; accepted per-mode tube lacks collective pair-Gram control. Archived under proof_history/sketch_008/proof_steps/step_008/attempt_001/. |
| 9 | Pair-Gram-controlled first ALS sweep, target-span entry, and invariant quotient contraction | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None |  |
| 9 | Pair-Gram-controlled first ALS sweep, target-span entry, and invariant quotient contraction | global | global | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | step_008 full-state one-block Phi_M contraction is false on held-block differences; coordinate-output map/seminorm and sequential recurrence/gauge assembly are missing. Archived under proof_history/sketch_009/. |
| 10 | Pair-Gram first-sweep entry plus coordinate-output Gauss-Seidel recurrence and full-sweep quotient contraction | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Exhausted sketch budget: quotient Gauss-Seidel maps omit the chronological Refresh_s assembly for a single shared product coordinate, leaving final Psi^q/d_Q undefined. New idea must add the explicit U/V/W Refresh_s sequence. Archived under proof_history/sketch_010/. |
| 8 | Arbitrary-accuracy stopping and residual conversion | step | step_009 | 1 |  | N/A |  |  |  |
| 8 | Restart confidence amplification and runtime | step | step_010 | 1 |  | N/A |  |  |  |
| 8 | Exact orthogonal equal-weight baseline bridge | step | step_011 | 1 |  | N/A |  |  |  |

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
