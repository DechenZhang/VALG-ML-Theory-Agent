# Proof Review

## Formalized Setting

## Formalized Goal

## Reviewed Roadmap

## Attempted Claim

## Review Mode

Write `split`.

## Review Verdict

- Score:
- Failure Type:

## Audit Summary

- Goal coverage:
- Roadmap or step coverage:
- Proof-details audit:
- Adversarial stress test:
- LaTeX export structure/provenance gate:
- Main theorem self-containedness:
- Assumption provenance gate:
- Redundant public prose gate:
- Proof-step notation surface gate:
- Theorem readability and notation economy:
- Explicit-rate contract:
- Rate Specialization Bridge:
- Baseline-reduction check:
- LaTeX appendix full-derivation gate:
- LaTeX export citation/reference gate:
- LaTeX export synchronization:

## Critical Issues

Write `None` only when the proof is `ACCEPTED`; otherwise write a numbered list of acceptance-blocking issues.

## Failure-Type Rationale

For `IDEA_FAIL`, explain why `PROOF_SKETCH_FLAW` is insufficient under the current setting and goal and identify the required theorem-contract change: changed primitive assumptions, changed algorithm/model/procedure, changed theorem scope/mode/metric, changed exposed dependence, changed success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion.

## Suggested Next Action

Use the smallest retry target selected by `/proof-review-aggregate`: `None`, `/proof-step <Step ID>`, `/proof-assembly`, `/proof-sketch`, or `/subagent-idea-generator`.

## Retry Mode

Allowed values:

- `none`
- `repair_assembly`
- `repair_step`
- `revise_sketch`
- `new_idea`

Mode alignment:

- accepted -> `none`
- split-mode `PROOF_ASSEMBLY_FLAW` -> `repair_assembly`
- split-mode `PROOF_STEP_FLAW` -> `repair_step`
- split-mode `PROOF_SKETCH_FLAW` -> `revise_sketch`
- `IDEA_FAIL` -> `new_idea`
