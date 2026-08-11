# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | VC counting plus target-independent confident-map amplification and exact block concatenation | sketch | sketch | 1 | Accept | N/A | ACCEPTED | None | Five-step roadmap passed independent sketch review (score 9); all hard obligations are step-local |
| 1 | VC counting plus target-independent confident-map amplification and exact block concatenation | global | global | 1 | Accept | N/A | ACCEPTED | None | Global diagnostic passed independent review; all five theorem blocks and boundary cases remain step-local |
| 1 | VC counting plus target-independent confident-map amplification and exact block concatenation | step | step_001 | 1 | Accept | N/A | ACCEPTED | None | Null branches, tie-resolved R^0 closure, and S>=n including L=1 passed independent review |
| 1 | VC counting plus target-independent confident-map amplification and exact block concatenation | step | step_002 | 1 | Accept | N/A | ACCEPTED | None | Sampled-label measurability, unseen-bit conditioning, finite-horizon avoidance, fixed-target extraction, and VC<2T passed independent review |
| 1 | VC counting plus target-independent confident-map amplification and exact block concatenation | step | step_003 | 1 | Accept | N/A | ACCEPTED | None | Self-contained Sauer--Shelah, binomial, logarithm, ceiling, and constant-7 derivation passed independent review |
| 1 | VC counting plus target-independent confident-map amplification and exact block concatenation | step | step_004 | 1 | Accept | N/A | ACCEPTED | None | Common-law iid amplification and finite-union fixation passed independent review with exact quantifier and tie preservation |
| 1 | VC counting plus target-independent confident-map amplification and exact block concatenation | step | step_005 | 1 | Accept | N/A | ACCEPTED | None | Exact boundary routing, common direct-sum map, dimension arithmetic, and conditional polynomial bridge passed independent review |
| 1 | VC counting plus target-independent confident-map amplification and exact block concatenation | assembly | assembly | 1 | Fail | 6 | PROOF_ASSEMBLY_FLAW | /proof-assembly | Aggregate review found the exact learner update transcription `eta` instead of backslash-eta at latex_template/5_appendix.tex:168; all four specialized reviews agree on assembly-only repair |
| 1 | VC counting plus target-independent confident-map amplification and exact block concatenation | assembly | assembly | 2 | Accept | 9 | ACCEPTED | None | Fresh attempt-2 aggregate accepted after four PASS specialized reviews; exact \\eta update, exhaustive 17-unit appendix coverage, compile, rate, provenance, and budget gates passed |

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
