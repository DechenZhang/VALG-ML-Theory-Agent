# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public restatement of Bun--Livni--Moran Theorem 17 in `latex_template/5_appendix.tex:100` is not a source-faithful, self-contained theorem statement. Its frequent-hypothesis premise uses `\alpha` at line 112 before `\alpha` is quantified at line 114. It also replaces the source's absolute `O(\cdot)` sample statement by one pure universal-constant inequality over all `\beta,\delta\in(0,1)`, although the integer-cost absorption supplied in the source justification is only established for the actual fixed application `\beta_0=1/8`. The accepted `step_001` application at `(\alpha_0,\beta_0,\varepsilon_0,\delta_C)` is supported, but the paper-facing theorem must either be specialized to the consumed regime or retain the source `O(\cdot)` form (or state and prove an adequate range/additive term).

2. The paper-facing learner-to-privacy object map is not well formed. Proposition `prop:step-002-exact-padding` uses `C` and `\varepsilon_0` without binding them in its statement. Proposition `prop:step-003-exact-privacy-schedule` first fixes arbitrary `q,L` and then says that the learner for every finite `C` is private "at precisely this parameter," without imposing `q=q(C)`, `L=\log|C|`, binding a nonempty finite `C`, or binding the same fixed `\varepsilon_0` used by the padded learner. The accepted step artifacts contain the correct specialization, so this is an assembly translation defect rather than a new proof obligation.

3. Several public theorem-style dependency statements are not self-contained and require the reader to infer hypotheses from surrounding prose or literal display numbers. In particular, `lem:step-004-iterated-log-subpower` says "Under the conditions above"; `prop:step-004-q-subpower` invokes `(A.57)` plus unnamed "size-divergence and counting conditions"; `prop:step-005-privacy-negligibility` imports its operative quantities only through `Section~\ref{sec:prelim}`; and `prop:step-006-sequence-learners` invokes `(A.57)` instead of stating the exact superpolynomial-separation quantifiers. These statements must bind their objects and state their local conditions or cite named, self-contained theorem-style results.

4. The appendix's equation dependency chain is not auditable through LaTeX labels. It contains 129 literal `\tag{A.n}` displays and pervasive prose references such as `(A.12)`, `(A.57)`, and `(A.111)--(A.115)`, but no equation `\label{...}`/`\eqref{...}` pairs. Compilation can render these literals, but it does not establish the required internal citation links. Every equation used as a dependency, especially those appearing in theorem statements or cross-block proofs, must receive a stable label and be referenced through `\eqref` (or be replaced by a named theorem-style dependency).

## Nonblocking Concerns

1. An independent verification compile succeeded but emitted a 4.2525 pt overfull `\hbox` near the display beginning at current appendix line 717. Thus `assembly_report.md:91` overstates compilation as occurring "without warnings"; this typesetting issue does not itself invalidate the citation chain.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: The sole external theorem used in the proof is Bun--Livni--Moran, Section 5.2, Theorem 17 (`thm:selection`). The source locator is correct, but the public restatement has the scope and quantitative-presentation defects in Blocking Issue 1.
- Source fidelity: The frozen arXiv v3 TeX (SHA-256 `4b4cf5c00ee876ed6abbc37e5fce08f63effbfa68c4ceb4f50f645872a555882`) and matching PDF (SHA-256 `86e6d819aa1bb4800161dedf3b03345c74b1bf3d5a6952d019a5e373ed57debb`) confirm Theorem 17, its randomized full-function output, symmetric one-record replacement privacy, and the exact two displayed dependence terms inside an absolute `O(\cdot)` bound.
- Instantiation and object mapping: Binary recoding and decoding preserve exact output equality, zero-one risk, iid sampling, and replacement adjacency. The accepted application `m=m_C`, `\eta=q^{-a}`, `\alpha=\alpha_0`, `\beta=\beta_0`, `\varepsilon=\varepsilon_0`, `\delta=e^{-T_a(q,L)}` is valid and distribution-free because the source construction depends on the fixed producer and public parameters, not on the realizable distribution or frequent witness. The malformed public mappings are localized in Blocking Issue 2.
- Quantitative regime fidelity: Both BLM terms, confidence factors, privacy dependence, and the full `\{-1,+1\}^X` output interface are retained by accepted `step_001` and its downstream algebra. The branch's fixed `\beta_0=1/8` specialization supports integer absorption; the unrestricted public constant statement does not establish that same absorption.
- Assumption discharge: `assump:polynomial-global-stability` supplies one class-fixed producer, sample cost, accurate witness, and atom mass for every realizable distribution; parameter ranges and the `q=1` boundary are discharged in accepted `step_001`. Later accepted steps use only named dependency results and elementary derivations. Some public theorem statements nevertheless omit their own assumption basis as listed in Blocking Issue 3.
- Main theorem internal references: `latex_template/3_main.tex` cites only the numbered primitive assumption and does not cite appendix-local results in the theorem statement. Its proof cites named public theorem-style results.
- Appendix cited-result traceability: The external BLM application and the accepted step-to-step theorem dependencies are substantively translated, but the equation-level chain is carried by hard-coded display numbers rather than stable internal references.
- External BibTeX entries: Both public citation commands use `bun2021equivalence`; `reference.bib` contains that key with the correct title, authors, arXiv identifier, year, and v3 date. No uncited external theorem source or missing public citation key was found.
- Internal label/ref pairs: The named assumption, theorem, lemma, proposition, and section references resolve without duplicate labels. Equation dependencies have no label/ref pairs, as detailed in Blocking Issue 4.
- Unsupported standard facts: The finite-class counting bound, logarithmic estimates, exponential-versus-polynomial bounds, prefix-padding privacy argument, DP monotonicity, and `o(L)` versus eventual `\Omega(L)` contradiction are either proved inline or reduced to elementary current-notation arguments. No additional external standard theorem is needed; the remaining defects are public statement and traceability defects.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
