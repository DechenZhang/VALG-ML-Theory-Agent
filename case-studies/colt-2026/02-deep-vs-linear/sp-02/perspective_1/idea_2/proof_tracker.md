# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Grid rounding to canonical valid oracle, padded response-tree map, basis-coordinate loss bridge | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Contract-valid review accepts all four constructive steps; exact grid validity, replay, tie-loss, pushforward, and dimension interfaces are step-local. |
| 1 | Grid rounding to canonical valid oracle, padded response-tree map, basis-coordinate loss bridge | global | global | 1 | Fail | N/A | REVISE_GLOBAL | /global-proof | Review found a diagnostic-only pre-instance/per-instance narration conflict and malformed replay recurrence; the accepted sketch and theorem interfaces remain viable. |
| 1 | Grid rounding to canonical valid oracle, padded response-tree map, basis-coordinate loss bridge | global | global | 2 | Accept | N/A | ACCEPTED | None | Attempt-2 review confirms both diagnostic repairs and accepts all theorem interfaces, quantifiers, certificate rows, generated-output flows, and boundary cases. |
| 1 | Grid rounding to canonical valid oracle, padded response-tree map, basis-coordinate loss bridge | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Review accepts the three local units: exact grid rounding, adaptive canonical-policy validity, and unique padded transcript construction, including all boundary regimes. |
| 1 | Grid rounding to canonical valid oracle, padded response-tree map, basis-coordinate loss bridge | step | step_002 | 1 | Fail | N/A | REVISE_STEP | /proof-step step_002 | Units 1-3 pass; unit_004 must define a downstream-compatible function-space sigma algebra and prove measurability of the tape-to-feature-map map before forming the pushforward law. |
| 1 | Grid rounding to canonical valid oracle, padded response-tree map, basis-coordinate loss bridge | step | step_002 | 2 | Accept | N/A | ACCEPTED | None | Fresh review accepts all four units, including the final sigma algebra, measurable pushforward, finite tie-pattern reduction, and canonical selected-basis downstream interfaces. |
| 1 | Grid rounding to canonical valid oracle, padded response-tree map, basis-coordinate loss bridge | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies exact adaptive prefix synchronization, unread padding, terminal replay, one-hot binary score equality, tape-side measurable tie-loss transfer, and duplicate-fiber handling against both current dependency pairs. |
| 1 | Grid rounding to canonical valid oracle, padded response-tree map, basis-coordinate loss bridge | step | step_004 | 1 | Accept | N/A | ACCEPTED | None | Accepted review verifies the pointwise infimum witness, measurable pushforward comparison, universal valid-oracle risk bound, exact tie-loss transfer, common pre-instance law, exact dimension count, and all boundary regimes. |
| 1 | Grid rounding to canonical valid oracle, padded response-tree map, basis-coordinate loss bridge | assembly | assembly | 1 | Fail | 2 | IDEA_FAIL | /subagent-idea-generator | Aggregate review validates the structural, rigor, and citation passes but accepts the adversarial counterexample: the setting does not ensure joint measurability of outputs on tolerance-invalid synthetic transcripts, so the feature-law risk can be undefined and the primitive theorem contract needs idea-level revision. |

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
