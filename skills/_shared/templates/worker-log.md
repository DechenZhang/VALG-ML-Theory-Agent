# worker_log.md

Use this controller-owned log for delegated worker provenance.

## Rules

- Append one row before every delegated stage runs.
- `Worker Handle` must be a real runtime-visible non-empty handle, nickname, or equivalent stable identifier.
- A provenance row is valid only if it was appended before the delegated stage it records.
- If a required row is missing, malformed, empty-handled, or not known to have been appended before the stage, do not invent provenance; rerun or hand off the stage with a real handle.
- `Branch Path` should identify the active branch such as `perspective_M/idea_N`. For run-scoped full-research stages before a branch exists, use the exact token `run`.
- `Event` uses only `spawn`, `resume`, or `handoff`.
- Use `Event = spawn` only for the first handle assigned to a role/scope. If a handle must be replaced for the same role/scope, use `Event = handoff`, not `spawn`.
- `Stage` must be one of the exact tokens listed below. Do not append a step id, role, or free-text suffix to `Stage`.

## Split-Mode Stages And Roles

For full research runs, before any perspective branch starts, the controller spawns distinct run-scoped handles:

- `/research-lit "$ARGUMENT"` -> `Stage = literature-survey`, `Worker Role = literature-worker`
- `/perspective-select "$ARGUMENT"` -> `Stage = perspective-selection`, `Worker Role = perspective-selector`

For these run-scoped rows, use `Branch Path = run` and put `scope=run` in `Notes`.

For each approved perspective, the controller spawns distinct perspective-scoped handles:

- `/subagent-idea-generator` -> `Stage = idea-generation`, `Worker Role = idea-worker`
- `/idea-formalizer` -> `Stage = formalization`, `Worker Role = formalizer`
- `/proof-sketch` -> `Stage = proof-sketch`, `Worker Role = sketch-worker`
- `/proof-sketch-review` -> `Stage = proof-sketch-review`, `Worker Role = sketch-reviewer`
- `/global-proof` -> `Stage = global-proof`, `Worker Role = global-proof-worker`
- `/global-proof-review` -> `Stage = global-proof-review`, `Worker Role = global-proof-reviewer`
- `/proof-assembly` -> `Stage = proof-assembly`, `Worker Role = assembler`
- `/proof-review-structural` -> `Stage = proof-review-structural`, `Worker Role = structural-reviewer`
- `/proof-review-rigor` -> `Stage = proof-review-rigor`, `Worker Role = rigor-reviewer`
- `/proof-review-citation` -> `Stage = proof-review-citation`, `Worker Role = citation-reviewer`
- `/proof-review-adversarial` -> `Stage = proof-review-adversarial`, `Worker Role = adversarial-reviewer`
- `/proof-review-aggregate` -> `Stage = proof-review-aggregate`, `Worker Role = review-aggregator`

For each sketch step, the controller spawns step-scoped distinct handles:

- `/proof-step <Step ID>` -> `Stage = proof-step`, `Worker Role = step-worker`, with `Notes` containing `step=<Step ID>`
- `/proof-step-review <Step ID>` -> `Stage = proof-step-review`, `Worker Role = step-reviewer`, with `Notes` containing `step=<Step ID>`

`proof-step` and `proof-step-review` never include the step id in `Stage`; the exact `Step ID` must appear in `Notes` as `step=<Step ID>`.

If an approved perspective has `k` sketch steps, the upgraded split proof run requires `12 + 2k` distinct per-perspective subagent handles: twelve perspective-scoped handles plus one step worker and one step reviewer for each step. Full research runs also require the two run-scoped early handles above. Those run-scoped handles must be real and non-empty, but they are not counted in the per-perspective `12 + 2k` distinctness gate.

## Distinctness Gates

- In full research runs, `literature-worker` and `perspective-selector` are run-scoped required handles and must be distinct from each other.
- The twelve perspective-scoped roles must be distinct for the approved perspective.
- For each `Step ID`, the `step-worker` and `step-reviewer` must be distinct from each other and from the twelve perspective-scoped roles.
- Step-scoped handles are tied to one `Step ID`; do not reuse a step worker or step reviewer for a different step in the same sketch.
- Reuse the same handle for reruns of the same role and step when available; otherwise append a `handoff` row.
- Before final acceptance, verify that all required split-mode stage rows exist with non-empty handles and satisfy the distinctness rules.

## Table

| Timestamp | Branch Path | Stage | Worker Handle | Worker Role | Event | Notes |
|-----------|-------------|-------|---------------|-------------|-------|-------|
