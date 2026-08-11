# Assembly Report

Use this branch-local controller-private artifact at `perspective_M/idea_N/assembly_report.md`.

`assembly_report.md` records assembly completion status for controller and aggregate-review routing. It is not public proof content and must not be copied into accepted results.

## Status

Allowed values:

- `COMPLETE`
- `PARTIAL_BLOCKED`

## Attempted Claim

State the exact theorem-level claim attempted by the assembled `latex_template/` bundle. In exact-goal mode, this should match `setting.md`; in target-spec mode, this should be the concrete supported instantiation.

## Blockers

Write `None` only when `Status = COMPLETE`. Otherwise write numbered blockers that name the exact failed assembly item and the smallest repair target: `/proof-assembly`, `/proof-step <Step ID>`, or `/proof-sketch`.

## Notes

Record concise controller-private notes about assembly-source coverage, notation synchronization, or blocker provenance. Do not rely on these notes as public proof evidence.
