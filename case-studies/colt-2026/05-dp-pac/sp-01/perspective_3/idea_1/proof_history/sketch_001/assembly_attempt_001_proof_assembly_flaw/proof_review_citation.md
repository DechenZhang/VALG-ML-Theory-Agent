# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The paper-ready appendix does not preserve the accepted citation and evidence interfaces needed by the hard-prior chain. In `latex_template/5_appendix.tex`, Lemma `lem:step-004-payoff-value` and Proposition `prop:step-004-finite-hard-prior` invoke `(H)` at lines 748 and 1061, while the proposition invokes `(HP)` at line 1070 and its proof claims to establish `(HP)` at line 1162, but neither expression is defined anywhere in the public bundle. The accepted `step_004/proof.md` does define `(H)` as $M<b_*\log_2^*N$ and `(HP)` as the finite-prior expected one-block loss bound $>\eta=2^{-8}$, so their omission makes the public hard-prior proposition non-self-contained and leaves its downstream applications without a publicly stated assumption and conclusion. The same translation invokes finite-dimensional strong separation at line 944 without an inline theorem restatement/proof or a BibTeX-backed citation, even though the accepted Step 4 artifact contains the exact statement and object mapping. Likewise, the Step 8 translation invokes an elementary finite conditional-expectation identity allegedly "restated above" at lines 2000 and 2016, but the public bundle contains no such restatement; the accepted Step 8 artifact does. These are assembly omissions, not defects in the accepted step applications.
2. The appendix does not provide contract-valid internal traceability for all mathematical dependencies. It contains 221 manually tagged displays, but only 20 tag lines also contain a label, and theorem-critical arguments repeatedly rely on prose-only locators such as "Equations (8), (15), and (26)" at line 1113 and "Equations (8), (27), and (30)" at line 3613 instead of unique `\label`/`\ref` pairs. Step 11 also points to `Section~\ref{app:step-008}` at lines 2996 and 3231 for ideal-experiment content rather than citing only the available named theorem-style results. Existing resolved references do not repair these uncitable or disallowed dependencies. The accepted step artifacts already contain the corresponding exact local results, so the smallest repair is to translate and reference them correctly during assembly.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: The ALMM threshold lower bound is accurately wrapped, but the public hard-prior proposition is not self-contained because `(H)` and `(HP)` are absent.
- Source fidelity: Direct inspection of ALMM arXiv:1806.00949v3 supports the unrestricted randomized/improper threshold theorem and the stated fixed-sample, population-risk, replacement-adjacency conventions; the inspected source has SHA-256 `5eaeb54287aa8aa89a00ad4b05f9158b56e01450a18e635afeecc4ed4e97128f`.
- Instantiation and object mapping: The ALMM order, label, hypothesis-space, sample-size, risk, and privacy mappings are valid, and the accepted dependency applications use the same branch objects. The public Step 4 and Step 8 translations omit required statement material rather than changing those mappings.
- Quantitative regime fidelity: The source constants, $\varepsilon=0.1$, $(1/16,1/16)$ accuracy parameters, $d_*/(M^2\log M)$ privacy cap, exact fixed sample sizes, and tower-diagonal specialization are preserved.
- Assumption discharge: The accepted steps discharge the cited-result hypotheses, but the public Step 4 statements fail to expose the hard-regime condition `(H)` and the hard-prior conclusion `(HP)`.
- Main theorem internal references: No forbidden appendix-local theorem, proposition, lemma, subsection, or proof-step reference appears in the main theorem statement.
- Appendix cited-result traceability: Blocking; the hard-prior, conditional-averaging, equation-dependency, and subsection-reference defects above prevent a self-contained public citation chain.
- External BibTeX entries: All three public uses of `AlonLivniMalliarisMoran2019` resolve to the single matching entry in `reference.bib`; no other external citation key is used.
- Internal label/ref pairs: Existing labels are unique and all existing `\ref` targets resolve, but numerous mathematical dependencies use unlabelled manual equation locators, and Step 11 uses a subsection as a proof authority.
- Unsupported standard facts: Finite-dimensional strong separation and the finite conditional-expectation identity require public restatement/proof or valid external citation. The Caratheodory application is proved inline and is not a blocker.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
