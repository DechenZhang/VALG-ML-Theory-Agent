# Adversarial Proof Review

## Reviewer Verdict

Write exactly one raw token on the next nonempty line: PASS or BLOCKING. Do not use backticks, bullets, quotes, or prose.

## Blocking Issues

Write `None` only when `Reviewer Verdict = PASS`. Otherwise write a numbered list of acceptance-blocking issues found by adversarial stress testing.

## Nonblocking Concerns

Write `None` or a numbered list.

## Suggested Repair Depth

Write exactly one raw token on the next nonempty line: None, assembly, step, sketch, or idea. Do not use backticks, bullets, quotes, or prose.

## Smallest Candidate Repair Target

Write exactly one raw token on the next nonempty line: None, /proof-assembly, /proof-step <Step ID>, /proof-sketch, or /subagent-idea-generator. Do not use backticks, bullets, quotes, or prose.

## Adversarial Audit

- Weakest theorem-level claim:
- Standalone theorem attack:
- Weakest step-level claim:
- Candidate counterexamples or stress cases:
- Explicit-rate stress cases:
- Appendix self-contained attack surface:
- Scope or mode upgrade attacks:
- Remaining risk:

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
