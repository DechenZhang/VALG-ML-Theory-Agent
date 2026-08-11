# Tracker Lifecycle

## Theory Tracker

- The public controller initializes `theory_tracker.md`.
- One row corresponds to one consumed idea-generation slot under one perspective.
- Use only `In_progress`, `Accept`, and `Fail`.
- Append the normal viable-idea row after a new `idea_N` passes the idea checkpoint and duplicate gate.
- If `/subagent-idea-generator` returns `NO_VIABLE_IDEA`, append one `Fail` row for that consumed `idea_N` slot before moving to the next slot or ending the perspective. Use `N/A` for `Setting`, `Goal`, `Setting Signature`, and `Goal Signature`, and record `NO_VIABLE_IDEA: <compact gate-failure reasons>` in `Reasons`.
- If an approved `idea.md` fails the cross-perspective duplicate gate, append one `Fail` row for that consumed `idea_N` slot before moving to the next slot or ending the perspective. Fill `Setting`, `Goal`, `Setting Signature`, and `Goal Signature` from the generated `idea.md`, and record `DUPLICATE_IDEA: matches <perspective_M/idea_N>; <compact duplicate reason>` in `Reasons`.
- Every consumed idea slot must have exactly one theory-tracker row before dispatching the next `idea_N`. Enforce `MAX_IDEA_VARIANTS_PER_PERSPECTIVE` by counting all rows for the perspective with `Idea attempt = idea_N`, including `NO_VIABLE_IDEA` and `DUPLICATE_IDEA` rows.
- Update `Best Score` as aggregated final `proof_review.md` scores arrive.
- Mark an idea `Accept` only after final artifact gates and accepted-result copy verification pass.
- Mark an abandoned idea `Fail` before creating the next idea variant or ending the branch.

## Proof Tracker

- The public controller initializes `perspective_M/idea_N/proof_tracker.md` from `../templates/proof-tracker.md`.
- New split attempts use rows for reviewed units: `sketch`, `global`, `step`, and `assembly`.
- `MAX_*` budgets are total producer-attempt limits. Attempt `1` consumes the first slot; do not dispatch or accept attempt `MAX + 1`.
- `Sketch attempt` is the proof-roadmap and decomposition attempt counter. It starts at `1` for each idea and increments after sketch-review `REVISE_SKETCH`, global-proof-review `REVISE_SKETCH`, or final `PROOF_SKETCH_FLAW`, bounded by `MAX_SKETCH_ATTEMPTS_PER_IDEA = 6`.
- `Unit attempt` is `1` for sketch rows. For global, step, and assembly rows, it is the producer attempt counter under the current sketch attempt.
- The first `/global-proof` producer run under the current `Sketch attempt` uses `Unit attempt = 1`; `global-proof-review` `REVISE_GLOBAL` reruns `/global-proof` with an incremented global `Unit attempt`, bounded by `MAX_GLOBAL_PROOF_ATTEMPTS_PER_SKETCH = 3`.
- The first `/proof-step <Step ID>` producer run under the current `Sketch attempt` uses `Unit attempt = 1`; rerunning that same producer step increments only that `Step ID`, bounded by `MAX_STEP_ATTEMPTS_PER_STEP`.
- Rerunning a `/proof-step <Step ID>` producer opens a new step row with the incremented `Unit attempt`; the previous accepted same-step review is stale unless it matches the current proof artifact and producer attempt. The new step row cannot be accepted or consumed downstream until a fresh `/proof-step-review <Step ID>` for that repaired proof is valid and `ACCEPTED`.
- `BLOCKED_BY_DEPENDENCY` increments or reruns the blocking dependency step's producer attempt, not the downstream step that reported the block. Rerunning downstream step reviews without rerunning their producer proofs does not increment downstream producer attempts.
- The first `/proof-assembly` producer run under the current `Sketch attempt` uses `Unit attempt = 1`; rerunning assembly increments only `Unit id = assembly`, bounded by `MAX_ASSEMBLY_ATTEMPTS_PER_SKETCH`.
- Step and assembly `Unit attempt` counters reset after a sketch revision because the current `Sketch attempt` changed.
- Append a row before running `/proof-sketch`, `/global-proof`, `/proof-step`, or `/proof-assembly`, with `Unit attempt` filled at append time.
- Sketch rows always use `Unit type = sketch`, `Unit id = sketch`, `Unit attempt = 1`, and `Score = N/A`.
- Global rows always use `Unit type = global`, `Unit id = global`, and `Score = N/A`; `Unit attempt` is the global proof producer attempt under the current `Sketch attempt`.
- For global rows, fill the row only after `global_proof_review.md` passes its artifact gate. Set `Status = Accept` only for `Global-Proof Review Status = ACCEPTED`; set `Status = Fail` for `REVISE_GLOBAL`, `REVISE_SKETCH`, or `IDEA_FAIL`.
- Assembly rows remain open through specialized reviews and aggregation. Fill the assembly row from valid aggregated `proof_review.md`: `Score` from `Score`, `Review outcome` from `Failure Type`, `Retry target` from `Suggested Next Action`, `Status = Accept` only for `ACCEPTED`, and `Status = Fail` otherwise.
- Fill `Status`, `Score`, `Review outcome`, `Retry target`, and `Reasons` after the corresponding review artifact is valid.
- Use `Score = N/A` for sketch, global, and step review rows; only aggregated `proof_review.md` produces numeric scores.
- Accepted rows with producer attempts over budget are invalid: `Sketch attempt > MAX_SKETCH_ATTEMPTS_PER_IDEA`, global `Unit attempt > MAX_GLOBAL_PROOF_ATTEMPTS_PER_SKETCH`, step `Unit attempt > MAX_STEP_ATTEMPTS_PER_STEP`, or assembly `Unit attempt > MAX_ASSEMBLY_ATTEMPTS_PER_SKETCH`.
- `/global-proof-review` consumes no producer budget itself. `REVISE_GLOBAL` consumes the global proof attempt budget by rerunning `/global-proof` under the same accepted sketch and same `Sketch attempt`. If that budget is exhausted, escalate to sketch revision when possible. `REVISE_SKETCH` routes through the sketch retry budget. `IDEA_FAIL` routes through the idea-generation budget.
- Invalid specialized review artifacts are rerun or handed off as diagnostic-review process failures; they do not fill proof-tracker rows and do not consume sketch, step, assembly, or idea budgets.
- Final `/proof-review-aggregate` consumes no retry budget itself; its `Retry target` consumes the controller-supported repair target's budget.
- On budget exhaustion, escalate in this order: local step or assembly -> sketch revision -> new idea -> branch failure.

## Worker Provenance Log

- The public controller initializes `worker_log.md` from `../templates/worker-log.md`.
- Append one row before each delegated split-stage run.
- For full `ml-theory-research-agent` runs, the controller first uses two distinct run-scoped handles:
  - `literature-worker` with `Branch Path = run`, `Stage = literature-survey`, and `Notes` containing `scope=run`
  - `perspective-selector` with `Branch Path = run`, `Stage = perspective-selection`, and `Notes` containing `scope=run`
- For full `ml-theory-research-agent` runs, each approved perspective then uses twelve distinct perspective-scoped handles:
  - `idea-worker`
  - `formalizer`
  - `sketch-worker`
  - `sketch-reviewer`
  - `global-proof-worker`
  - `global-proof-reviewer`
  - `assembler`
  - `structural-reviewer`
  - `rigor-reviewer`
  - `citation-reviewer`
  - `adversarial-reviewer`
  - `review-aggregator`
- For each `Step ID`, spawn one distinct `step-worker` and one distinct `step-reviewer`.
- If the accepted sketch has `k` steps, full research mode requires the two run-scoped rows plus `12 + 2k` distinct per-perspective handles.
- Step-scoped handles may be reused for reruns of the same `Step ID`, but not for another step.
- If any required handle becomes unavailable, append a `handoff` row before rerunning the affected stage.
- Keep worker provenance in `worker_log.md`; do not overload `theory_tracker.md` or `proof_tracker.md` with worker-event rows.

## Dynamic Test Readiness

- Dynamic tests should use real or faithfully mocked non-empty worker handles for every delegated stage.
- Test harnesses should assert worker-log rows for run-scoped, perspective-scoped, and step-scoped stages; artifact gates before consumption; producer budget limits; and accepted-result copy exclusions.
