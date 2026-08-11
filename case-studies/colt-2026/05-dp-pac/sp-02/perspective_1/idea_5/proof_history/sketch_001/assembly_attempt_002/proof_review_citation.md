# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public main theorem does not bind the per-index domains `X_kappa`. In `latex_template/3_main.tex:7-8`, the theorem quantifies only a sequence of nonempty finite binary concept classes. It never states that there are domains `X_kappa` with `C_kappa subset {0,1}^{X_kappa}`, but it then uses `X_kappa` in the constant-dependence clause (`:20`) and in the learner signature `M_kappa: Z_{X_kappa}^{N_kappa} -> H_{X_kappa}` (`:25-27`). Thus the input and output objects of the claimed learner contain a free, undefined symbol, and the cited/derived per-class learner cannot be mapped to the theorem's public object without making the reader infer the domain map. The authoritative setting and the appendix sequence proposition bind these objects explicitly; the defect is introduced at final assembly and is repaired by adding the domain quantification and inclusion inline in the main theorem (and synchronizing the introductory goal prose).

## Nonblocking Concerns

1. `latex_template/1_intro.tex:91-94` likewise describes the sequence without explicitly recording `C_kappa subset {0,1}^{X_kappa}`. That paragraph does not yet use `X_kappa`, so this is a consistency/documentation concern rather than a second independent blocker, but it should be synchronized with the main-theorem repair.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: The sole external theorem used by the proof is Bun--Livni--Moran, Section 5.2, Theorem 17 (source label `thm:selection`), restated as `thm:step-001-blm-selection` in `latex_template/5_appendix.tex:101-161`. The restatement binds its current-notation objects and specializes to the consumed regime `alpha_0=beta_0=1/8`, `epsilon_0 in (0,1)`, and `delta <= e^-2`. All downstream theorem-style dependencies are named lemmas/propositions with local conditions stated before their conclusions; the main theorem's domain omission is the one self-containedness failure.
- Source fidelity: The checked arXiv v3 source (`<TEMP_ROOT>/blm-v3-source/privatelittlestone.tex`, SHA-256 `4b4cf5c00ee876ed6abbc37e5fce08f63effbfa68c4ceb4f50f645872a555882`; matching PDF SHA-256 `86e6d819aa1bb4800161dedf3b03345c74b1bf3d5a6952d019a5e373ed57debb`) contains Theorem 17 in Section 5.2 with the same two-term absolute `O(...)` dependence, full-function output, and symmetric one-record replacement privacy convention. The repaired appendix keeps both terms and explains the fixed-regime universal-constant specialization; no independent source-fidelity defect was found.
- Instantiation and object mapping: Binary label recoding and decoding are proved as exact measurable bijections preserving realizability, zero-one risk, iid laws, atom probabilities, output events, and replacement adjacency. The accepted `step_001` application maps `m=m_C`, `eta=q^{-a}`, `alpha=alpha_0`, `beta=beta_0`, `epsilon=epsilon_0`, and `delta=e^{-T_a(q,L)}`, with one producer independent of the realizable distribution. The appendix maps these objects to each `C_kappa` correctly; only the public `3_main.tex` statement leaves `X_kappa` unbound.
- Quantitative regime fidelity: The BLM rate retains both producer/atom/confidence/privacy terms, and the fixed-regime constant absorption is justified in the appendix. The exact sample ceiling, privacy logarithm, cardinality correction, every-fixed-`rho` limit, standard privacy allowance, probability mode, and hidden dependence of `K_a` are all exposed and derived. No dropped quantitative dependency or unsupported specialization was found.
- Assumption discharge: `assump:polynomial-global-stability` supplies the class-fixed producer, `m_C <= q(C)^a`, accurate witness, and atom mass for every realizable distribution. The recoding lemma and `lem:step-001-blm-admissibility` discharge the BLM hypotheses, including `q=1` and `delta <= e^-2`; later accepted steps discharge the algebraic and sequence conditions. The free `X_kappa` in the public theorem prevents a fully formal object-level discharge despite the valid appendix instantiation.
- Main theorem internal references: `thm:main` cites the numbered primitive assumption and uses the public quantities `L_kappa,d_kappa,q_kappa,N_kappa,delta_kappa` defined in the preceding setup, but it introduces no appendix-local citation in its statement. Its only internal-reference defect is the missing domain binding for the `X_kappa`-indexed spaces.
- Appendix cited-result traceability: The external BLM application is restated before use and cited with the BibTeX key `bun2021equivalence`. The repaired appendix uses named theorem-style references and stable equation labels for the dependency chain; there are no literal `(A.n)` dependencies, proof-step paths, reviewer artifacts, or workflow provenance in public proof text.
- External BibTeX entries: Every external citation command uses `bun2021equivalence`, and `latex_template/reference.bib` contains the matching Bun--Livni--Moran arXiv entry (version 3, 2021). No external source is invoked without a corresponding citation key.
- Internal label/ref pairs: The current bundle has 166 unique labels and 73 distinct referenced targets; no duplicate labels or unresolved internal references were found. The appendix has no manual `A.*` tags or literal appendix-number dependencies.
- Unsupported standard facts: No acceptance-blocking unsupported standard fact was found. Counting, logarithmic, exponential-versus-polynomial, ceiling, privacy-monotonicity, and `o(L)` versus eventual `Omega(L)` facts are proved inline or reduced to elementary inequalities. An independent Tectonic/BibTeX compilation succeeds (22-page PDF) with no unresolved references/citations or duplicate-label warnings; only nonfatal `wasy` font-substitution diagnostics remain.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
