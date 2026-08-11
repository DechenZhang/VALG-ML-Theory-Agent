# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public appendix relies on nontrivial standard measure-theoretic results without proving them inline or giving current-notation, BibTeX-backed citations. The unsupported chain includes Tonelli's theorem and the Radon--Nikodym theorem in `latex_template/5_appendix.tex:390-396`; uniqueness from a countable generating pi-system in lines 398-406; the Lebesgue-point/differentiation and absolute-continuity-of-the-integral argument in lines 424-432; conditional-law uniqueness in lines 440-445; the pi--lambda theorem and monotone convergence in lines 618-633; regular-conditional-law and Radon--Nikodym uniqueness in lines 1108-1110 and 1166-1171; and product-measure nullity in lines 1198-1203. No public `\cite`, `\citep`, or `\citet` command supplies a source, and `latex_template/reference.bib` has no BibTeX entries. Source fidelity and public traceability for these acceptance-critical uses therefore fail the public-bundle citation contract.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: No external theorem citation command appears. All internal theorem-style dependencies exist as numbered public lemmas, propositions, a theorem, or a corollary, but the named standard results listed above have no public source.
- Source fidelity: The internal dependency statements preserve the accepted step claims. External source fidelity cannot be verified because the public bundle provides neither source names nor result locators for its nontrivial standard-theorem uses.
- Instantiation and object mapping: The inner pivot is `alpha_0` conditional on `alpha_{1:d-1}`; the two outer charts separately pivot `alpha_{d-1}` conditional on `alpha_{0:d-2}`; and degree one correctly identifies both labels with the sole unconditional kernel. No accepted dependency object is remapped to the wrong chart or conditioning sigma-field.
- Quantitative regime fidelity: The bundle preserves `d >= 1`, `R >= 1`, the mean cap quantities, `B_0(d,R)`, `B_infty(d,R)`, the exact chart maximum and class supremum, the fixed-eta polynomial specialization, the witness threshold, and all exposed rate dependencies. Mean cap assumptions are not strengthened into pointwise uniform caps.
- Assumption discharge: Internal applications cite numbered primitive assumptions or earlier named public results, including boundary and degree-one cases. The local hypotheses needed for the named measure-theoretic applications are substantially exposed in current notation, but their source-side assumptions remain publicly untraceable without citations.
- Main theorem internal references: The main theorem statement cites only numbered assumptions and uses no appendix-local result or constant. The later corollary's appendix bridge and the final theorem proof use named public results.
- Appendix cited-result traceability: All seven accepted proof steps and their accepted dependencies are translated into public lemma/proposition proofs without workflow paths, local-unit authority, or public `claim`, `hypothesis`, or `invariant` dependencies. The defect is confined to missing public traceability for standard external results.
- External BibTeX entries: `latex_template/reference.bib` contains string declarations and a placeholder comment but no entries. Static inspection of all six public TeX files finds no external citation command, `\bibliography`, `\bibliographystyle`, `\printbibliography`, or `\addbibresource`; `main.tex` ends after the appendix, so the current bundle cannot emit an empty References section. `arxiv.sty` loading `natbib` and the dormant `ims.bst` file do not invoke a bibliography.
- Internal label/ref pairs: The six public TeX files contain 50 unique labels and 143 reference occurrences over 41 targets, with no duplicate labels and no unresolved targets.
- Unsupported standard facts: Tonelli, Radon--Nikodym existence and uniqueness, finite-measure uniqueness from a countable generator, the Lebesgue differentiation/Lebesgue-point argument, absolute continuity of the integral, conditional-expectation or regular-conditional-law uniqueness, the pi--lambda theorem, monotone convergence, and the product-measure nullity step are used without inline proofs or BibTeX-backed citations.
