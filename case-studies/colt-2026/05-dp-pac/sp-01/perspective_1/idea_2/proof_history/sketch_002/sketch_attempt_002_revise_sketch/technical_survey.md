# Technical Survey

## Current Idea Branch

- Perspective: `perspective_1`, canonical Cartesian decomposition as a class-intrinsic direct-sum interface.
- Current idea: `idea_2`, factorwise Yan upper bound plus an unrestricted hidden-factor direct-sum lower bound.
- Setting / goal summary: For a finite canonical disjoint product (C=\prod_{i=1}^k C_i) of nonconstant VC-one, finite-Littlestone factors, prove the exact conditional two-sided theorem in `setting.md`: an arbitrary-(\delta) upper bound of order (M_{\oplus}(C)\varepsilon^{-1}\log^2(eM_{\oplus}(C)/(\varepsilon\delta))), and a candidate-wise unrestricted-improper lower bound (\Omega(M_{\oplus}(C))) under `assump:candidate-delta-budget`.

## Candidate Frameworks

### Framework 1: Factorwise Yan learning with an ALMM expected-risk direct sum

- Source papers: Chao Yan, *An \(\widetilde O\)ptimal Differentially Private PAC Learner for Concept Classes with VC Dimension 1*, arXiv:2505.06581v2, especially `alg:improperlearner`, `thm:private median`, `lem:choosing mechanism`, `thm:privacy-OPTPrivateLearner`, `thm:learn vc`, `lem:order of y`, the proof of `lem:accuracy h good`, the displayed threshold-dimension comparison immediately before `cor: threshold dimension and littlestone dimension`, the raw ((t+2)\beta) corollary, and `thm:improper sample complexity`; Noga Alon, Roi Livni, Maryanthe Malliaris, and Shay Moran, *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949 / STOC 2019, especially `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, and `thm:ADPimpliesLD`; Mark Bun, Kobbi Nissim, Uri Stemmer, and Salil Vadhan, *Differentially Private Release and Learning of Threshold Functions*, arXiv:1504.07553, the resampling lemma cited by ALMM as Lemma 5.9.
- Applicability to current branch: Yan applies to every factor without an ordering, properness, efficiency, or finite-cardinality assumption. The source proof routes through threshold dimension plus private median, and its internal parameter (TD(C_i)+1) is bounded by (2^{d_i+1}+1); this supports the branch wrapper (s_i=1+\log^*(d_i+1)), including (d_i=1). The literal raw utility corollary has failure ((t+2)\beta_{\rm raw}); its requested-confidence substitution is circular because (t) depends on (\beta_{\rm raw}), and the resulting outer (\log(t+2)) cannot fit the setting's squared-log quota. The same source proof nevertheless exposes a sharper valid interface: median success gives linearly many score-side blocks to identify the selected true-path point and linearly many opposite-side comparison blocks; the last proof paragraph needs only one good comparison-side block. Independent blockwise VC failures can therefore be controlled by concentration at fixed raw confidence, avoiding the circular substitution without changing the source algorithm. ALMM applies to arbitrary, possibly improper outputs and finite Littlestone dimension. Its proof exposes an expected-empirical-loss threshold (1/8), which is the interface needed for weighted direct-sum averaging after a source-faithful expected-risk resampling wrapper. The remaining adaptation burden is the new product argument: routed fixed-length privacy, weighted occupancy, finite minimax, one-use factor embedding, overflow coupling, and constant-slack assembly.
- Proof roadmap:
  1. Prove the exact product identities and instantiate a permutation-symmetrized Yan mechanism at each displayed quota, using a fixed-raw-confidence two-sided-median-vs-bad-count analysis rather than the source's ((t+2)\beta) union bound, under `assump:canonical-product`, `assump:vc-one-factors`, and `assump:global-privacy-range`.
  2. Prove routed/padded two-block privacy and arbitrary-mass weighted utility, depending on item 1 and using no balance condition or union bound over factors.
  3. Derive the unrestricted ALMM worst-case expected-risk interface and its finite minimax hard priors, using `assump:vc-one-factors`, `assump:global-privacy-range`, and candidate-wise `assump:candidate-delta-budget`.
  4. Combine the nonprivate (\operatorname{VC}(C)=k) lower bound with a high-complexity-factor split, then run the one-use hidden-factor simulation under the mixture weights (\pi_i), depending on items 1 and 3.
  5. Use the factor-four overflow bound and weighted expected-risk identity to contradict the global PAC expectation when (n<cM_{\oplus}(C)), then assemble the exact conditional theorem.
- Key lemmas / ingredients: additive VC and Littlestone identities for disjoint full products; Yan's source algorithm, private-median and choosing guarantees, two-sided median mass, one-good-comparison-witness inference, (TD+1) envelope, and blockwise VC theorem; Hoeffding concentration for independent block failures; multiset symmetrization and quota-prefix coupling; basic composition on the at-most-two affected routed inputs; weighted shortage mass; PAC-to-expectation conversion; ALMM's source-level expected-loss transition; finite zero-sum minimax on the embedded finite threshold game; binomial overflow at (m=\max\{8,\lceil4n\pi_i\rceil\}); a one-use replacement coupling; and a separate VC lower bound to pay for low-complexity factors.
- Main transfer challenges: the raw Yan corollary's confidence calibration is circular and its straightforward closure adds an unbounded outer logarithm; the repair must preserve the orientation of the two median sides, use the score side only to identify the true-path point, use the opposite side for the one-good comparison witness, and fit private-median size, choosing slack, and concentration inside the unchanged quota. The (d=1) endpoint also needs the proof's (TD+1) wrapper; routed sequences must be treated as multisets or symmetrized to make deletion/insertion one replacement; the formal ALMM corollary is stated for ((1/16,1/16))-PAC utility, so the expected-risk direct-sum interface must be derived from its proof rather than asserted as the corollary; and the low-(\log^*d_i) mass must be paid by the independent VC lower bound.
- Potential repair techniques and supporting references:
  - Technique: Fix raw confidence (b=\beta_{\rm fac}/4), choose an explicit (t_i=\lceil K_ts_i\log^2(s_i/(\varepsilon_{\rm fac}\beta_{\rm fac}\delta_{\rm fac}))/\varepsilon_{\rm fac}\rceil), reserve half the requested failure budget for independent block-failure concentration, and use the score side to identify the unique true-path point plus the opposite median side for the final one-good comparison witness. Combine this with the current-notation (TD(C_i)+1) wrapper and a symmetrized quota prefix.
  - Supporting reference: Yan, arXiv:2505.06581v2, `alg:improperlearner`, `thm:private median`, `lem:choosing mechanism`, `thm:privacy-OPTPrivateLearner`, `thm:learn vc`, `lem:order of y`, proof of `lem:accuracy h good`, and the displayed (TD) comparison before `cor: threshold dimension and littlestone dimension`; standard Hoeffding concentration for independent Bernoulli variables.
  - Why it may help: Median success gives at least (t_i/6) score-side blocks and (t_i/6) comparison-side blocks. Choosing slack at most (t_i/12) makes the selected score positive, identifying the unique true-path point; fewer than (t_i/12) total bad blocks then leave a good comparison-side block, exactly the premise used in the final deterministic inclusion/risk comparison. All internal confidence parameters are fixed before (t_i) is defined, so no fixed point or outer (\log(t_i+2)) occurs, and (TD+1) keeps the endpoint positive.
  - Technique: Derive expected-risk hardness by applying the resampling proof linearly and then use finite minimax on the finite threshold witness.
  - Supporting reference: ALMM arXiv:1806.00949, `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, `thm:ADPimpliesLD`; Bun et al. arXiv:1504.07553, Lemma 5.9 as cited by ALMM.
  - Why it may help: It yields one hard prior per factor against every unrestricted DP learner, which is necessary before independent product targets can be sampled.
- Disposition: `selected`
- Branch notes: This is the parent-preserving framework named in `idea.md`. The triggering `step_002` review correctly rules out the previous use of the raw ((t+2)\beta) corollary: a universal constant cannot absorb (\log(t+2)). The selected repair uses only earlier exact source components and a new concentration analysis; neither the raw corollary nor `thm:improper sample complexity` is quantitative proof authority. A split route using the labeled theorem only for (d_i>1) and a different (d_i=1) learner was considered but is unnecessary and would require a new endpoint mechanism interface; the single repaired Yan algorithm handles all (d_i\ge1). The ALMM convention gap remains localized to its existing source-proof wrapper.

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
