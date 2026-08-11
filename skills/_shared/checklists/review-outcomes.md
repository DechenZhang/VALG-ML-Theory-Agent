# Review Outcomes

## Aggregated Final Workflow Outcomes

Final `/proof-review-aggregate` writes `proof_review.md` and uses only:

- `PROOF_ASSEMBLY_FLAW`
- `PROOF_STEP_FLAW`
- `PROOF_SKETCH_FLAW`
- `IDEA_FAIL`
- `ACCEPTED`

Final review output must provide `Score`, `Failure Type`, `Critical Issues`, `Suggested Next Action`, and `Retry Mode`.

## Local Split-Stage Outcomes

`/proof-sketch-review` uses:

- `ACCEPTED`
- `REVISE_SKETCH`
- `IDEA_FAIL`

`/proof-step-review` uses:

- `ACCEPTED`
- `REVISE_STEP`
- `REVISE_SKETCH`
- `BLOCKED_BY_DEPENDENCY`

`/global-proof` uses:

- `COMPLETE_DRAFT`
- `PARTIAL_BLOCKED`
- `SKETCH_BLOCKED`

`/global-proof-review` uses:

- `ACCEPTED`
- `REVISE_GLOBAL`
- `REVISE_SKETCH`
- `IDEA_FAIL`

Specialized final diagnostic reviews use `Reviewer Verdict = PASS` or `BLOCKING`.

Missing or contract-invalid specialized review artifacts are rerun or handed off as diagnostic-review process failures before aggregation; they do not become split-mode proof failure types or `IDEA_FAIL` by themselves.

Local and diagnostic outcomes drive controller routing or aggregation inputs but do not replace the aggregate final review score or final failure type.
