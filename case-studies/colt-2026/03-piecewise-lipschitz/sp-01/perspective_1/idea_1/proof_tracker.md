# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Midpoint intercept sweep, averaged conditional-density integration, and constructive witness verification | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Viability score 9/10; all sketch-review gates passed |
| 1 | Midpoint intercept sweep, averaged conditional-density integration, and constructive witness verification | global | global | 1 | Accept | N/A | ACCEPTED | None | Global diagnostic and review passed all theorem-level artifact gates |
| 1 | Midpoint intercept sweep, averaged conditional-density integration, and constructive witness verification | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Exact deterministic midpoint intercept-slab interface accepted; reviewed proof SHA-256 39939893fe0a36d394d3ee7fd66cc7a74355bc178585141a13a0b87913ca4bfa |
| 1 | Midpoint intercept sweep, averaged conditional-density integration, and constructive witness verification | step | step_002 | 1 | Accept | N/A | ACCEPTED | None | Exact averaged conditional-density integration, null-fiber handling, coefficient-one bound, and class-supremum closure accepted; reviewed proof SHA-256 f3f9aa19a82936c133877ad71896f58fd0cf71dd19af8fc60c1ce5437db84228 |
| 1 | Midpoint intercept sweep, averaged conditional-density integration, and constructive witness verification | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | Conditional-uniform kernel, measurable null-fiber fallback, cube support, reciprocal-width envelope, exact factor one-half, R1 instantiation, fixed-width clause, and d=1 specialization accepted; reviewed proof SHA-256 2302d712770cbe9f62efad7528b6823b2b2e020ea61231f974293769e16e78af |
| 1 | Midpoint intercept sweep, averaged conditional-density integration, and constructive witness verification | step | step_004 | 1 | Accept | N/A | ACCEPTED | None | Exact pushforward sheet support, cube and endpoint bounds, supported but probability-null collapsed fiber, latent recovery, inherited independence, measurable conditional-density version, and exact cap accepted; reviewed proof SHA-256 1185a072dbcfcc7d54534cb11631b38b4a0f7d937c65b0c963d2812739f9e65a |
| 1 | Midpoint intercept sweep, averaged conditional-density integration, and constructive witness verification | step | step_005 | 1 | Accept | N/A | ACCEPTED | None | Positive-mass essential-cap unboundedness, exact averaged cap 1/[R(1-q)], cutoff residual, null-fiber invariance, and singleton root-hitting bound accepted; reviewed proof SHA-256 3fe2b99d9f4a1c6082aefcae17d7d3fed9878854d8418ff05b6695cb0951fca2 |
| 1 | Midpoint intercept sweep, averaged conditional-density integration, and constructive witness verification | step | step_006 | 1 | Accept | N/A | ACCEPTED | None | Exact affine-hull dimension three, within-hull zero three-volume, fixed-monic source embedding, Gram-normalized affine pushforward interface, and exhaustive full-rank affine-latent nonmembership accepted; reviewed proof SHA-256 b8152474825779fa2d95fb9db30c4f107ff76ee777338c5065612c14e6136bea |
| 1 | Midpoint intercept sweep, averaged conditional-density integration, and constructive witness verification | step | step_007 | 1 | Accept | N/A | ACCEPTED | None | Exact dependency assembly, optional joint-density bridge, and monic baseline recovery accepted; proof SHA-256 8e6d9e147b589610f38618485c39a65c708bfcba49d6452d0d7d0c7ddbbf6e72; review SHA-256 d6e94222c39fce8096a5de1ed21880f8d7d8ec9ffe162699c56881a84adf7323 |
| 1 | Midpoint intercept sweep, averaged conditional-density integration, and constructive witness verification | assembly | assembly | 1 | Accept | 9 | ACCEPTED | None | Aggregate review accepted the complete paper-ready bundle with no critical issues and no retry |

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
