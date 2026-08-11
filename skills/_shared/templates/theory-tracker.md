# Theory Tracker

## Attempted Ideas

| Perspective | Idea attempt | Setting | Goal | Setting Signature | Goal Signature | Status | Best Score | Reasons |
|-------------|--------------|---------|------|-------------------|----------------|--------|------------|---------|

Allowed `Status` values:

- `In_progress`
- `Accept`
- `Fail`

When the controller appends a new approved idea row, it should write `Perspective`, `Idea attempt`, `Setting`, `Goal`, `Setting Signature`, and `Goal Signature`, initialize `Status = In_progress`, leave `Reasons` empty, and initialize `Best Score` as empty or `0` until the first proof review is recorded.

When `/subagent-idea-generator` returns `NO_VIABLE_IDEA`, append one failed row for the consumed `idea_N` slot even though no `idea.md` was finalized. Use `Setting = N/A`, `Goal = N/A`, `Setting Signature = N/A`, `Goal Signature = N/A`, `Status = Fail`, `Best Score` empty or `0`, and `Reasons = NO_VIABLE_IDEA: <compact gate-failure reasons>`.

When an approved `idea.md` fails the cross-perspective duplicate gate, append one failed row for the consumed `idea_N` slot. Fill `Setting`, `Goal`, `Setting Signature`, and `Goal Signature` from the generated `idea.md` using the same normalized summaries used for viable idea rows, set `Status = Fail`, set `Best Score` empty or `0`, and set `Reasons = DUPLICATE_IDEA: matches <perspective_M/idea_N>; <compact duplicate reason>`.

If a filled tracker row needs to record a failure reason, keep the controlled status label as `Fail` and record the reason in `Reasons` rather than inventing a new status value.

When `Status = Fail`, `Reasons` should store a one-line summary of the abandonment reason.

`Setting Signature` should store a normalized summary of the concrete setting, including model, data, algorithm, regime, and theorem-critical refinements.

`Goal Signature` should store a normalized summary of the theorem target, including theorem type, target metric, and claim shape.

The signature fields are controller-written fast filters for duplicate and branch-memory lookup; the corresponding branch-local `idea.md` artifacts remain the source of truth. Rows with `NO_VIABLE_IDEA` reasons and `N/A` signatures are budget and failure-memory rows only; do not treat their signatures as duplicate-detection keys. Rows with `DUPLICATE_IDEA` reasons keep real signatures and should be used as duplicate-avoidance memory while still counting as failed consumed slots.
