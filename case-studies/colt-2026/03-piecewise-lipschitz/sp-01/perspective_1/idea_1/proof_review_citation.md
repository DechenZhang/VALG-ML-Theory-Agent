# Citation Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The sole BibTeX entry identifies the cited source unambiguously and has the correct authors, title, year, PMLR volume, and arXiv identifier, but it uses `@article` with `journal = {Proceedings of Machine Learning Research}`. The official PMLR record uses `@InProceedings`, names the 36th Conference on Uncertainty in Artificial Intelligence (UAI), and gives pages 909--918. This is a bibliography-completeness and presentation issue, not a source-identity or theorem-traceability failure.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Citation Audit

- Cited theorem statements: All seven current step proofs are `COMPLETE`, all seven paired reviews are `ACCEPTED`, and their reviewed hashes match. The 25 accepted local derivation units are represented by 25 public lemma/proposition units: derivative localization and root-event measurability; averaged disintegration and slice control; random-intercept kernels and bounds; witness support and conditional law; cap blowup, exact averaging, and singleton root hitting; affine geometry and nonmembership; and final assembly plus the bounded-joint-density bridge. Each downstream use names the exact public theorem-style result and uses no stable unit ID as mathematical evidence.
- Source fidelity: The only external mathematical source is Balcan, Dick, and Pegden, *Semi-bandit Optimization in the Dispersed Setting*, Appendix Theorem 18. The audited cached source has SHA-256 `abd2e9340e00ad71fa2657bfbc0fb86b6f480b698eaaf39fee3dd3b6b6fad65d`. Its statement and proof support the bounded-density latent input, affine coefficient map, affine-image Gram determinant, image-dimension, and induced-density conventions used in the comparison. The source statement's lower-vector coordinate-count typo is not propagated: the proof and public appendix use the unambiguous full descending vector from the source proof. The source's no-forced-root premise and root-hitting conclusion are explicitly identified as nonoutputs.
- Instantiation and object mapping: The branch vector `(a_0,\ldots,a_{d-1})` is mapped to the source order by the stated affine isometry `\iota_d(a_0,\ldots,a_{d-1})=(1,a_{d-1},\ldots,a_0)`. The public proof checks preservation of support, affine dimension, Hausdorff nullity, full column rank, and `\det(A^\top A)`. The latent radius is renamed `R_{\mathrm{lat}}`, avoiding collision with the coefficient-cube radius. The comparison is expressly limited to full-column-rank affine maps of bounded-support latent laws with bounded Lebesgue density; rank-deficient maps and singular latent laws remain unclaimed.
- Quantitative regime fidelity: No root-hitting rate or opaque constant from the external theorem is imported. Its only quantitative interface, the induced-density normalization `\kappa/\sqrt{\det(A^\top A)}`, is restated and derived in current notation. Internal rates retain coefficient one in R1, factor `1/2` in the random-intercept clauses, the exact witness factor `1/[R(1-q)]`, and the optional baseline factor `\kappa_{\mathrm{joint}}(2R)^{d-1}[d+Rd(d-1)/2]` at `B=1`, including `d=1`. All structural variables, measures, probability modes, and the static horizon mode are exposed; no hidden constant, asymptotic specialization, term absorption, or probability conversion appears.
- Assumption discharge: Assumption `assump:averaged-intercept-density` is used only for the general theorem. Assumption `assump:random-intercept-witness` separately derives that interface for the random-intercept class. The explicit witness uses primitive `d\geq3`, `R>0`, and `q\in(0,1)` data, with support, conditional density, cap, integrability, and geometry supplied by named prior results rather than assumed. The joint-density cap is isolated as a local premise of the optional baseline bridge. Full rank and latent density are conditions defining the comparison class, not assumptions imposed on `\mu_q`. Every accepted dependency and public local result is invoked only after its stated hypotheses are available.
- Main theorem internal references: The statement of Theorem `thm:main` cites only the two numbered assumptions and contains no appendix, proof-step, local-unit, or workflow reference. Its appendix proof names the exact earlier lemmas and propositions that establish each clause. The public corollary states its extra joint-density premise explicitly and refers to Theorem `thm:main` only for already declared norm and horizon conventions.
- Appendix cited-result traceability: Every accepted dependency application is translated into a named public lemma or proposition with a self-contained statement and proof. The appendix contains no dependency on `proof_steps/...`, reviewer acceptance, diagnostic artifacts, assembly status, or internal citation-audit prose. The external affine convention is cited with `\citet{balcan2020semibandit}` before the current-notation pushforward proposition derives the exact measure statement used later.
- External BibTeX entries: The three public citation commands all use `balcan2020semibandit`, and `reference.bib` contains exactly one matching entry. The authors, title, PMLR volume 124, year 2020, and arXiv identifier match the cached source and official PMLR record. The entry-type, proceedings-title, and page-range incompleteness is recorded above as nonblocking because source identity and the Appendix Theorem 18 locator remain unambiguous.
- Internal label/ref pairs: Static comparison finds each label unique and every `\ref` target defined. Internal proof dependencies use result-type prefixes such as `Lemma`, `Proposition`, `Theorem`, `Corollary`, and `Assumption`; there are no bare proof-step IDs or public `claim`, `hypothesis`, or `invariant` references. A clean temporary Tectonic/BibTeX build resolves all citations and references without undefined or multiply defined labels.
- Unsupported standard facts: The mean-value inequality, compact minimum argument, conditional disintegration, Tonelli/Fubini, product-law identity, affine substitution, conditional-kernel criterion, pushforward integration, monotone convergence, Lipschitz control of Hausdorff measure, and affine Gram-determinant scaling are each restated with their hypotheses and instantiated objects or proved inline. The affine scaling used in the external comparison is additionally source-backed and then independently derived. No vague appeal to a standard theorem carries an unstated assumption or conclusion.

Verdict alignment: `PASS` is paired with `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`.
