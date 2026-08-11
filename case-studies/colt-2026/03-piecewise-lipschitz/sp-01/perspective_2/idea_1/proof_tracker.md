# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Viability score 9/10; all sketch-review gates passed |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | global | global | 1 | Accept | N/A | ACCEPTED | None | Global diagnostic and review passed all theorem-level artifact gates |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Inner-chart derivative and image-length certificate accepted; reviewed proof SHA-256 0aa0e570fd177aaae9828a816336e96ed8fc73d344a9025408a98e0fbd6d0361 |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | Measurable endpoint-cap, Borel event-section, and matching-kernel disintegration interface accepted; reviewed proof SHA-256 826572f09a2165fa971ed4c47a7e2863744d42c8dea30b63fb2b5ee0db4791f8 |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | step | step_002 | 1 | Accept | N/A | ACCEPTED | None | Positive- and negative-outer pivot, derivative, and image-length certificates accepted; reviewed proof SHA-256 d7c01883f5e130aa33071b3363f803abbe0aba5c42d3a7a31a61cc0bf9d3d05a |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | step | step_007 | 1 | Accept | N/A | ACCEPTED | None | Degree-split witness membership, exact caps, support, singularity, dependence, and isolated threshold accepted; reviewed proof SHA-256 ca9e7d554fd1ad3a0c4c465d2528c86940040594d37a9cbe032ff1aa7e8eb868 |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | step | step_004 | 1 | Accept | N/A | ACCEPTED | None | Three matching-kernel chart probability controls accepted with finite-cap restriction, exact constants, zero-length handling, no outer factor two, and correct d=1 specialization; reviewed proof SHA-256 2ca180a73c0bb2d16d89e29b523e4104bf50526c2ea283ac91cfef0a8bc030b8 |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | step | step_005 | 1 | Accept | N/A | ACCEPTED | None | Exact three-piece event union, finite subadditivity for overlapping root events, endpoint and degenerate-piece handling, length additivity, and exact maximum-chart constant accepted; reviewed proof SHA-256 118738d2a5b881f45bddc5991bf94bfed33bdfad31cc7f84c1c66fda32f0075b |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | step | step_006 | 1 | Accept | N/A | ACCEPTED | None | Class-supremum closure, empty-index convention, exact maximum monotonicity, and fixed-eta degree-three polynomial specialization accepted; reviewed proof SHA-256 e28ce175e3a49c01e87e1e33b8c2bcdc271558364014c8c1b40d20965fa272ab |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | assembly | assembly | 1 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Aggregate review routed repair_assembly for malformed TeX control sequences, an unsupported external-baseline citation claim, and an unlabelled Section 2 locator; all accepted source-step derivations otherwise passed exhaustive coverage audit |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | assembly | assembly | 2 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Aggregate review found one orphaned word in public prose; all mathematical, coverage, citation, rate, and compilation gates otherwise passed |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | assembly | assembly | 3 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Aggregate review routed repair_assembly for missing BibTeX-backed citations and bibliography wiring for nontrivial standard measure-theoretic results; all seven steps, 23 local units, seven target assemblies, mathematical gates, and isolated compilation otherwise passed; aggregate SHA-256 3efd2e60a8c63229b89e67740506e5bda580329daacbd60d49c1d257a89a1556 |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | assembly | assembly | 4 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Aggregate review routed repair_assembly for one missing kernel-product measure premise, one false Folland locator, and three incorrect or incompletely discharged Kallenberg locators; all accepted mathematical units and compilation gates otherwise passed; aggregate SHA-256 a868e39503d926f7924e3f51d33814fcfca145c943532c1a9d44f9276f513d8d |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | assembly | assembly | 5 | Fail | 6 | PROOF_STEP_FLAW | /proof-step step_003 | Aggregate review found that the Step 003 appendix introduced unreviewed kernel-product, measure-uniqueness, integral-continuity, pi-lambda, monotone-convergence, and citation-discharge work; routed repair_step to step_003; aggregate SHA-256 5435842c204d0de2be41249c611e2d354b8ee3f326d2cea0a7aa7710f64ac07e |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | step | step_003 | 2 | Fail | N/A | REVISE_STEP | /proof-step step_003 | Mathematical and contract audit passed except for malformed LaTeX in the rational-interval cap definition: the opening set brace and supremum operator require escaping; reviewed proof SHA-256 b8cb5b9bb8c0184323bb733055e58cd0a77312e2d331210e8bc3cc5433142f81; review SHA-256 b229a3bc1687de0f9aabcd52f12cd1cf08e57da9c344483e0e3e042e0f7ca3cc |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | step | step_003 | 3 | Accept | N/A | ACCEPTED | None | Repaired rational-interval set and supremum LaTeX while preserving the complete measure-theoretic proof; reviewed proof SHA-256 ee49de9b8de6d218926e612450f7172e209465eb6bcda1a8c254f624fc93cebd; review SHA-256 8a20f6423c00d84663b723e74a2bee2d4d88e70d094b18fa08d32bf640009ef6 |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | step | step_004 | 2 | Fail | N/A | REVISE_STEP | /proof-step step_004 | Equations (17), (21), and (25) integrated conditioning-dependent image-length products without proving their measurability; local repair is to combine the pointwise cap and image-length bounds before integrating only the measurable cap times a constant; reviewed proof SHA-256 1bde51dda445420ec8a5075dcd2cbdc9af6d0eb9b7e5e52246b769379fe8ce14; review SHA-256 a9a1728c1c5d307e3110f8e9c2bd5c23ec98704d672c6654d27d634369faa548 |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | step | step_004 | 3 | Accept | N/A | ACCEPTED | None | Pointwise cap and image-length bounds are now combined before integration, so equations (17), (21), and (25) integrate only measurable cap-times-fixed-scalar majorants; reviewed proof SHA-256 c8619ac6aee61cbd10a6ffe6e02a56259b72039b497d845b17ee1423a5b1522c; review SHA-256 e81997a8993b828568329f84318faaa2506de810b2ed1fc870163b90b838202d |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | step | step_005 | 2 | Accept | N/A | ACCEPTED | None | Dependency identity refreshed to accepted step_004 attempt 3 while preserving the exact three-piece union and maximum-chart proof; reviewed proof SHA-256 648d8636744627fa0ce80997a499324d4eae25b6f88e330449833068628e9030; review SHA-256 acfe4fbfb458d3182922ef9c3cb20e5d80c435b7d916f2b17ca47d297ea94d3f |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | step | step_006 | 2 | Accept | N/A | ACCEPTED | None | Dependency identity refreshed to accepted step_005 attempt 2 while preserving class-supremum closure, empty-index handling, exact maximum monotonicity, and the fixed-eta polynomial specialization; reviewed proof SHA-256 335d3cfe52b3f4391cb49ec23ebe048e43169293bac86fcb1edc9bad13cb92c9; review SHA-256 449ef3955fd5b7d8e15246d0739462ce5d2e4a0b1cbf5858584cece7ec3d6a9e |
| 1 | Two coefficient charts, conditional disintegration, interval-piece union, and explicit polynomial specialization | assembly | assembly | 6 | Accept | 10 | ACCEPTED | None | Aggregate review ACCEPTED; all four specialized reviews passed; exhaustive 23-local-unit and seven-target-assembly audit plus isolated BibTeX-aware 23-page compilation passed; aggregate SHA-256 9cd64d1733b259d28c7a1d8fb184acba5fca6d053cbfd2c59216df89c9d2dc65 |

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
