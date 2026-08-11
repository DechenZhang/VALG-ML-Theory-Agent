# Citation Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

None

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Citation Audit

- Cited theorem statements: The only external theorem used in the public proof is Sion (1958), Theorem 3.4, cited in `4_proof_sketch.tex` and identified again by theorem number with `\citep{Sion1958}` in `5_appendix.tex`. The appendix accurately states the compact-convex, upper-semicontinuous/quasi-concave maximizing-variable, lower-semicontinuous/quasi-convex minimizing-variable hypotheses and uses the theorem only for the minimax order equality. The positive lower bound, both simplex vertex identities, and attainment are proved separately.
- Source fidelity: The cited source's Theorem 3.4 gives the stated equality for a quasi-concave-convex, upper-semicontinuous/lower-semicontinuous real function on two compact convex spaces. The proof does not attribute a stronger conclusion to it, change the optimization orientation, or import source-specific notation without translation.
- Instantiation and object mapping: The appendix explicitly takes the maximizing space to be $M=\Delta_L$ with variable $w$, the minimizing space to be $N=\Delta_F$ with variable $p$, and $f(w,p)=p^{\mathsf T}Aw$. It checks that both simplices are nonempty, compact, and convex and that this bilinear payoff is continuous affine in each variable, hence has the required semicontinuity and quasi-concavity/quasi-convexity. It then derives exactly $\sup_w\inf_p f(w,p)=\inf_p\sup_w f(w,p)$.
- Quantitative regime fidelity: Sion's theorem supplies no explicit rate or hidden quantitative constant. Its use is restricted to nonempty finite $F$ and the nonempty catalog $L\geq 1$. The bound $\rho_\varepsilon=1-2\varepsilon$, its positivity under $0\leq\varepsilon<1/4$, the finite-game lower bound, and all endpoint identities come from the setting and proved local results rather than from the citation. The empty-$F$ case is handled by a separate lemma without assigning a value to an empty game.
- Assumption discharge: The three primitive assumptions are stated and labeled in `1_intro.tex`. Each downstream theorem-style statement names the governing assumptions and prior theorem-style results it uses. For Sion specifically, nonemptiness, compactness, convexity, continuity, affinity, optimization orientation, and the two endpoint translations are all discharged in current notation in the appendix. The subsequent global passage proves simplex compactness, constraint closedness, the finite-intersection property, and the arbitrary-index compact closed-set principle before applying them.
- Main theorem internal references: The main theorem is labeled `thm:main`, cites the three numbered primitive assumptions, and invokes the appendix proof by a stable internal reference. The public proof chain uses the exact accepted theorem-style interfaces: canonical validity and membership; attained low risk and exact correlation; finite-game lower bound, the two vertex identities, the finite separator, and the empty restriction; simplex compactness, closed constraints, finite intersections, compact FIP, and the global separator; then the coordinate map, exact signs, and dimension closure. No diagnostic global-proof artifact or reviewer decision is used as mathematical authority.
- Appendix cited-result traceability: Every accepted proof unit appears in `5_appendix.tex` as a lemma or proposition with a stable label and a proof. Cross-step uses name those earlier results with `\ref`; Sion is restated in current notation and backed by the external citation. The appendix contains no internal workflow paths, unit IDs, review section names, or uncited provenance claims.
- External BibTeX entries: The sole public citation key, `Sion1958`, has a matching `reference.bib` entry with Maurice Sion, *On General Minimax Theorems*, *Pacific Journal of Mathematics* 8(1), 171--176 (1958), DOI `10.2140/pjm.1958.8.171`. The compiled bibliography renders the author, year, title, journal, volume, and pages correctly; omission of the DOI from rendered output is the selected bibliography style's presentation behavior, not a source-fidelity defect.
- Internal label/ref pairs: The six assembled TeX files contain 93 labels, all unique, and 187 `\ref`/`\eqref` uses with no unresolved target. All three assumptions, the main theorem, and all 17 accepted appendix theorem-style units have stable labels. The final compile log contains no undefined citation/reference warning or TeX error.
- Unsupported standard facts: None. The finite scalar-range expectation argument, binary risk-correlation identity, simplex vertex identities, continuity and attainment claims, finite-dimensional simplex compactness via the explicitly stated Heine--Borel implication, closedness of pointwise constraints, and the compact finite-intersection principle are either derived in place or stated with all hypotheses and proved before use. No vague appeal to a nontrivial unnamed result carries a proof obligation.
