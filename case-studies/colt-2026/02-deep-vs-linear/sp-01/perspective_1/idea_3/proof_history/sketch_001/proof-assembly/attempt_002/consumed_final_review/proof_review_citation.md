# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public bundle cites internal equations through hard-coded prose locators rather than unique `\label{...}` and `\ref{...}` or `\eqref{...}` pairs. Examples include `(7)`, `(9)`, and `(11)--(12)` in `2_preliminary.tex`; `(18)` in `3_main.tex`; and `(22)`, `(32)`, `(84)`, `(92)`, and many other manually numbered dependencies in `5_appendix.tex`. The corresponding displays use `\tag{...}` without stable equation labels. This violates the public citation contract even though the current numbering happens to compile consistently. Add a unique equation label to every display cited elsewhere and replace every hard-coded equation locator in proof prose with a paper-ready reference command. This is an assembly-only traceability repair and must not alter the accepted equations or their mathematical use.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: The public proof uses no external theorem or paper as proof authority. Its mathematical dependency chain is internal, and each theorem-style dependency exists as an earlier public Lemma, Proposition, or Theorem with the conclusion used by its consumer. The attempt-2 assembly retains the accepted conversion of step-local units into permitted public theorem-style environments.
- Source fidelity: The seven accepted proof steps are translated without strengthening their conclusions. In particular, the repaired step-2 and step-3 statements preserve the full labeled-history domains and exact recursions; the repaired step-5 statement fixes `\mathcal D`, `h`, and the stable initialization before sampling; and the repaired step-7 statement quantifies `\mathcal D` and `h` explicitly.
- Instantiation and object mapping: Internal results are instantiated with the setting's original network parameters, selected derivative, coordinate sup norm, initialization event, labeled histories, gate pattern, path feature map, distribution, target, and tie rule. No cited-paper notation, changed normalization, or unexplained imported object appears.
- Quantitative regime fidelity: The bundle preserves the accepted finite-depth, finite-horizon, radius, step-size, initialization-probability, expected-error, path-dimension, and threshold regimes. No external rate theorem or hidden citation is used to change probability mode, horizon mode, norm, or parameter dependence.
- Assumption discharge: Governing numbered assumptions and local conditions are exposed before the relevant internal conclusions. Attempt 2 correctly fixes the previously identified quantifier-order issues. It also defines a Borel one-step update, propagates measurability through all generated states, and then establishes score, predictor, and loss measurability before the expectation and pushforward arguments.
- Main theorem internal references: The theorem statement cites only numbered assumptions in paper-ready form, and the theorem proof names the earlier public Proposition, Lemma, and Proposition it consumes. However, explanatory prose in `3_main.tex` separately cites equation `(18)` through a hard-coded locator, so the equation-reference portion of this audit fails.
- Appendix cited-result traceability: Every accepted step-level result needed by the final proof is restated or derived in public notation, with no dependence on internal artifact paths, worker status, review decisions, or local unit IDs. The appendix nevertheless makes repeated proof-critical references such as `(32)`, `(36)--(37)`, `(60)`, `(84)`, and `(92)` to manually tagged displays, so its equation dependencies are not represented by stable label/reference pairs.
- External BibTeX entries: No external citation command or prose-only external source appears. `reference.bib` therefore needs no entry, and the compiled public document exposes no empty References section.
- Internal label/ref pairs: Assumption and theorem-style labels are unique, resolved, and cited with named result types. Equation references fail the contract: displays are manually numbered with `\tag{...}`, while prose repeats numeric locators rather than using unique equation `\label{...}` and `\eqref{...}` pairs. The absence of an undefined-reference warning does not repair this traceability defect.
- Unsupported standard facts: None. The proof either derives or adequately restates the elementary differentiation, induction, continuity, finite path expansion, infimum, finite averaging, pushforward, tower, and integer-monotonicity facts it uses.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
