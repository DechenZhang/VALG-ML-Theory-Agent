# Citation Proof Review

## Reviewer Verdict

Write exactly one raw token on the next nonempty line: PASS or BLOCKING. Do not use backticks, bullets, quotes, or prose.

## Blocking Issues

Write `None` only when `Reviewer Verdict = PASS`. Otherwise write a numbered list of acceptance-blocking citation or assumption-discharge issues.

## Nonblocking Concerns

Write `None` or a numbered list.

## Suggested Repair Depth

Write exactly one raw token on the next nonempty line: None, assembly, step, sketch, or idea. Do not use backticks, bullets, quotes, or prose.

## Smallest Candidate Repair Target

Write exactly one raw token on the next nonempty line: None, /proof-assembly, /proof-step <Step ID>, /proof-sketch, or /subagent-idea-generator. Do not use backticks, bullets, quotes, or prose.

## Citation Audit

- Cited theorem statements:
- Source fidelity:
- Instantiation and object mapping:
- Quantitative regime fidelity:
- Assumption discharge:
- Main theorem internal references:
- Appendix cited-result traceability:
- External BibTeX entries:
- Internal label/ref pairs:
- Unsupported standard facts:

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
