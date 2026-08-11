# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under `assump:source-regime`, `assump:universal-sgd-success`, and the
separately explicit conditional premise `assump:tie-resolved-confident-map`,
every setup satisfies
\[
\operatorname{dc}(\mathcal H)\le 7TSd.
\]
The constant \(7\) is numerical and independent of
\(n,\mathcal H,L,(n_i)_{i=0}^L,S,\eta,T,\varepsilon,d\), and
\(\mathcal P\).  If a separate result supplies a fully explicit polynomial
bound \(d\le p(S,T)\) with no hidden \(n\)- or \(\eta\)-dependence, the same
result specializes to
\[
\operatorname{dc}(\mathcal H)\le 7TSp(S,T).
\]
The bundle does not assert that universal SGD success implies the confident-map
premise or the additional polynomial bound.

## Blockers

None

## Notes

All five required proofs and their matching reviews are current for sketch
attempt 1 and unit attempt 1, and every review has status `ACCEPTED`.  The
appendix was regenerated from the current proof-step sources, not from the
interrupted handoff: its five dependency-ordered subsections contain all 17
source local results with one-to-one stable labels, their full substantive
derivations, the invoked elementary-result applications, every target-step
composition, the null and boundary cases, and a final proof of the main
theorem.  A source-order comparison found no omitted equation, inequality,
case split, constant, quantifier conversion, assumption discharge, or target
bridge.

The public bundle contains all five content files and all four support files.
There are no external citation commands, so `reference.bib` and `ims.bst` are
retained while a visible empty bibliography is suppressed.  Tectonic compiled
`main.tex` successfully after removing unused conflicting legacy packages from
the local `arxiv.sty` template instantiation.  The final log had no unresolved
references or citations, duplicate labels, LaTeX errors, or overfull boxes;
only one nonblocking underfull-box warning remained.
