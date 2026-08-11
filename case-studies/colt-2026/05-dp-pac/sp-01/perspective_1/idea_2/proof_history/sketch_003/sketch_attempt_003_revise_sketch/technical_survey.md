# Technical Survey

## Current Idea Branch

- Perspective: `perspective_1`, canonical Cartesian decomposition as a class-intrinsic direct-sum interface.
- Current idea: `idea_2`, factorwise Yan upper bound plus an unrestricted hidden-factor direct-sum lower bound.
- Setting / goal summary: For a finite canonical disjoint product (C=\prod_{i=1}^k C_i) of nonconstant VC-one, finite-Littlestone factors, prove the exact conditional two-sided theorem in `setting.md`: an arbitrary-(\delta) upper bound of order (M_{\oplus}(C)\varepsilon^{-1}\log^2(eM_{\oplus}(C)/(\varepsilon\delta))), and a candidate-wise unrestricted-improper lower bound (\Omega(M_{\oplus}(C))) under `assump:candidate-delta-budget`.

## Candidate Frameworks

### Framework 1: Factorwise Yan learning with an ALMM expected-risk direct sum

- Source papers: Chao Yan, *An \(\widetilde O\)ptimal Differentially Private PAC Learner for Concept Classes with VC Dimension 1*, arXiv:2505.06581v2, frozen source archive SHA-256 `ef2df94c47ad0ee4a0942348b72e8773aacedee0fe893ae1e7efc58b7738c43b`: `thm:learn vc` at source lines 233--237; the threshold-dimension comparison at 251--256; `thm:private median` at 304--307; `def: k-bounded` and `lem:choosing mechanism` at 310--325; quotient/tree/distance material at 329--471; `alg:improperlearner` at 479--525; and the order/deterministic/final-comparison lemmas at 534--583. Yan's `thm:privacy-OPTPrivateLearner` at 527--532, unlabeled block-good lemma at 554--563, and raw corollary/final theorem at 585--599 are known non-outputs for the repaired privacy, core marginal, and exact quota interfaces. Mark Bun, Kobbi Nissim, Uri Stemmer, and Salil Vadhan, *Differentially Private Release and Learning of Threshold Functions*, arXiv:1504.07553: bounded growth and `alg:choosing` at source lines 625--657, `lem:CMprivacy` and `lem:CMutility` at 659--676, their proofs at 1947--2053, and the resampling Lemma 5.9 cited by ALMM. Noga Alon, Roi Livni, Maryanthe Malliaris, and Shay Moran, *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949 / STOC 2019, especially `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, and `thm:ADPimpliesLD`.
- Applicability to current branch: Yan supplies the VC-one tree, finite depth, private median, and deterministic final comparison without ordering, properness, efficiency, or factor-cardinality assumptions. It does not, as printed, supply the theorem-facing arbitrary-input replacement privacy or improper-core marginal. Both admit same-procedure wrappers. First, quotient and root-totalize every block, and at a fixed released layer replace the raw score view by one candidate summary per block. The score is then a histogram: adding one summary increments one candidate, while replacement (u\to v) changes scores by (\mathbf1\{p=v\}-\mathbf1\{p=u\}). Repeating the proof of BNSV `lem:CMprivacy` on the at-most-(t) positive-support candidates proves replacement DP for this 1-bounded-growth histogram even when two coordinates change; the current-notation extension separately makes empty support a failure/root output and does not attribute an infinite-solution-set statement to BNSV. Second, the class of all nonempty-version-space core indicators plus zero has VC dimension at most one: comparable pairs cannot realize ((1,0)), and incomparable pairs cannot realize ((1,1)). The target and every realizable data-dependent core belong to this closure and are empirically consistent, so Yan `thm:learn vc` supplies the marginal needed before Hoeffding. The literal raw utility corollary still has the invalid ((t+2)\beta_{\rm raw}) fixed point, but median success plus one good opposite-side comparison block yields fixed-confidence concentration with no outer logarithm. ALMM's proof supplies the expected-risk interface needed for the unchanged lower direct sum.
- Proof roadmap:
  1. Prove the exact product identities; totalize the Yan factor map by quotient/root/pullback; factor its layer score through one summary per block and apply BNSV bounded-growth choosing; prove the core-closure VC bound; and then instantiate the fixed-confidence two-sided-median-vs-bad-count analysis at the displayed quota under `assump:canonical-product`, `assump:vc-one-factors`, and `assump:global-privacy-range`.
  2. Prove routed/padded two-block privacy and arbitrary-mass weighted utility, depending on item 1 and using no balance condition or union bound over factors.
  3. Derive the unrestricted ALMM worst-case expected-risk interface and its finite minimax hard priors, using `assump:vc-one-factors`, `assump:global-privacy-range`, and candidate-wise `assump:candidate-delta-budget`.
  4. Combine the nonprivate (\operatorname{VC}(C)=k) lower bound with a high-complexity-factor split, then run the one-use hidden-factor simulation under the mixture weights (\pi_i), depending on items 1 and 3.
  5. Use the factor-four overflow bound and weighted expected-risk identity to contradict the global PAC expectation when (n<cM_{\oplus}(C)), then assemble the exact conditional theorem.
- Key lemmas / ingredients: additive VC and Littlestone identities for disjoint full products; label-vector quotient, fixed reference (f_i), root sentinel, total version space, finite-positive-support layer selection, and measurable pullback; Yan's VC-one tree, private median, two-sided median mass, and final deterministic comparison; BNSV 1-bounded-growth replacement privacy and utility; the direct (\operatorname{VC}(\mathcal K_i)\le1) core-closure lemma; Hoeffding after marginal production; the (TD+1) envelope and explicit quota-prefix arithmetic; routed multiset composition; weighted shortage mass; ALMM's source-level expected-loss transition; finite minimax; binomial overflow; one-use replacement coupling; and the separate VC lower bound.
- Main transfer challenges: the source's raw core map is not total on inconsistent or empty-core inputs; the printed privacy proof overreads the raw score transition; the source VC theorem does not apply directly to an improper core; and the raw confidence substitution adds an unbounded outer logarithm. The repair must keep the exact score orientation (y_j\ge z), comparison orientation (y_j\le z), root branch, replacement budget, and all threshold/quota constants explicit. It must not turn finite positive support into a finite-domain assumption. On the lower side, the formal ALMM corollary is PAC-form, so the expected-risk interface remains a source-proof wrapper, and the low-(\log^*d_i) mass remains paid by the independent VC lower bound.
- Potential repair techniques and supporting references:
  - Technique: Totalize the transformed factor by quotienting label-identical points, hard-coding constant cells, adjoining a depth-zero root, sending inconsistent/empty cores to that root, and using a finite positive-support choosing implementation with deterministic enumeration and pullback.
  - Supporting reference: Yan v2 lines 329--525 for the transform/tree/algorithm and BNSV arXiv:1504.07553 `alg:choosing`, `lem:CMprivacy`, `lem:CMutility`, including proofs at source lines 1947--2053.
  - Why it may help: One block becomes one candidate summary, so replacement is exactly a histogram move (u\to v) with sensitivity one and one entering positive-support candidate per direction. A direct current-notation repetition of BNSV's replacement proof uses bounded-growth parameter (k=1) and only the finite positive supports, including when the ambient layer is infinite; an empty support returns the failure/root output and is handled by the low-(\mathrm{OPT}) privacy case. The root makes all arbitrary-input branches total without changing realizable nonempty-core behavior.
  - Technique: Define (\mathcal K_i) as all nonempty version-space core indicators plus zero, prove (\operatorname{VC}(\mathcal K_i)\le1), and apply Yan `thm:learn vc` to the empirically consistent target/core pair. Then fix (b=\beta_{\rm fac}/4), choose explicit (t_i=\lceil K_ts_i\log^2(s_i/(\varepsilon_{\rm fac}\beta_{\rm fac}\delta_{\rm fac}))/\varepsilon_{\rm fac}\rceil), and use the two median sides plus Hoeffding and one good comparison witness.
  - Supporting reference: Yan v2 `thm:learn vc` at lines 233--237, `lem: must comparable` at 416--421, the order/final-comparison lemmas at 534--583, and standard Hoeffding concentration. Yan's unlabeled lemma at 554--563 is a known non-output.
  - Why it may help: The closure proof supplies the missing marginal for the improper (h_{ij}=1_{B_{ij}}). Median success gives at least (t_i/6) score-side and comparison-side blocks; choosing slack at most (t_i/12) identifies the true-path point; fewer than (t_i/12) bad blocks leave a good comparison witness. The root branch is exact, and all confidence parameters are fixed before (t_i), so no (\log(t_i+2)) appears.
  - Technique: Derive expected-risk hardness by applying the resampling proof linearly and then use finite minimax on the finite threshold witness.
  - Supporting reference: ALMM arXiv:1806.00949, `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, `thm:ADPimpliesLD`; Bun et al. arXiv:1504.07553, Lemma 5.9 as cited by ALMM.
  - Why it may help: It yields one hard prior per factor against every unrestricted DP learner, which is necessary before independent product targets can be sampled.
- Disposition: `selected`
- Branch notes: This remains the parent-preserving framework named in `idea.md` and does not change the routed/padded learner. Attempt 2's review identified three genuine source-interface gaps. Attempt 3 resolves them by (i) a total quotient/root convention, (ii) a BNSV-sourced 1-bounded summary-histogram choosing wrapper under replacement adjacency, and (iii) a direct VC-one core-closure lemma. Yan's printed `thm:privacy-OPTPrivateLearner`, unlabeled block-good lemma, raw ((t+2)\beta) corollary, and `thm:improper sample complexity` remain non-outputs and must not be revived in proof steps. The repaired factor still handles every (d_i\ge1) with no finite-cardinality, properness, realizable-only privacy, or extra-logarithm restriction. The ALMM convention gap remains localized to its existing source-proof wrapper.

### Framework 2: Proper-product hardness amplification

- Source papers: Mark Bun, Kobbi Nissim, Uri Stemmer, and Salil Vadhan, *Differentially Private Release and Learning of Threshold Functions*, arXiv:1504.07553, Theorem `thm:lb-higher-general`.
- Applicability to current branch: The theorem gives a direct-product style lower amplification, but it requires proper output, conjunction structure on a Cartesian power, and a common always-one point. The current goal permits arbitrary improper output and uses disjoint-union block risk, so its conclusion does not match the consumed interface.
- Proof roadmap:
  1. Attempt to encode disjoint factors as conjunction coordinates.
  2. Check properness and common-anchor hypotheses.
  3. Reject the transfer when those hypotheses cannot be discharged from `setting.md`.
- Key lemmas / ingredients: Random hidden coordinate and one-record embedding.
- Main transfer challenges: Properness, conjunction semantics, and the common positive anchor are all absent; importing them would change the theorem contract.
- Potential repair techniques and supporting references:
  - Technique: Retain only the one-use hidden-coordinate coupling pattern, not the theorem conclusion.
  - Supporting reference: Bun et al., arXiv:1504.07553, proof of `thm:lb-higher-general`.
  - Why it may help: The privacy coupling is reusable, while the theorem's utility assumptions are not.
- Disposition: `rejected`
- Branch notes: Rejected as a proof framework because it would silently replace unrestricted improper learning by a proper learner. Its one-use coupling is used only as supporting precedent for a direct derivation.

### Framework 3: Pure-DP representation-dimension composition

- Source papers: Amos Beimel, Kobbi Nissim, and Uri Stemmer, *Characterizing the Sample Complexity of Private Learners*, arXiv:1402.2224.
- Applicability to current branch: Probabilistic representations characterize pure DP, but the target is approximate DP and the desired factor measure is (M_{\oplus}), not representation dimension. No source bridge identifies the two for arbitrary VC-one factors.
- Proof roadmap:
  1. Build factor representations.
  2. Compose them across the product.
  3. Compare their dimension with (M_{\oplus}).
- Key lemmas / ingredients: Probabilistic representations and private selection.
- Main transfer challenges: The privacy regime is wrong and the comparison to (s_i) is unsupported.
- Potential repair techniques and supporting references:
  - Technique: None under the unchanged theorem contract; use Yan directly instead.
  - Supporting reference: Yan, arXiv:2505.06581v2.
  - Why it may help: Yan supplies the required approximate-DP factor learner without importing a pure-DP measure.
- Disposition: `rejected`
- Branch notes: Rejected to preserve the approximate-DP source direction and avoid hidden factor-cardinality dependence.
