# Technical Survey

## Current Idea Branch

- Perspective: `perspective_1`, canonical Cartesian decomposition as a class-intrinsic direct-sum interface.
- Current idea: `idea_2`, factorwise Yan upper bound plus an unrestricted hidden-factor direct-sum lower bound.
- Setting / goal summary: For a finite canonical disjoint product (C=\prod_{i=1}^k C_i) of nonconstant VC-one, finite-Littlestone factors, prove the exact conditional two-sided theorem in `setting.md`: an arbitrary-(\delta) upper bound of order (M_{\oplus}(C)\varepsilon^{-1}\log^2(eM_{\oplus}(C)/(\varepsilon\delta))), and a candidate-wise unrestricted-improper lower bound (\Omega(M_{\oplus}(C))) under `assump:candidate-delta-budget`.

## Candidate Frameworks

### Framework 1: Factorwise Yan learning with an ALMM expected-risk direct sum

- Source papers: Chao Yan, *An \(\widetilde O\)ptimal Differentially Private PAC Learner for Concept Classes with VC Dimension 1*, arXiv:2505.06581v2, especially Algorithm `alg:improperlearner` and Theorem `thm:improper sample complexity`; Noga Alon, Roi Livni, Maryanthe Malliaris, and Shay Moran, *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949 / STOC 2019, especially `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, and `thm:ADPimpliesLD`; Mark Bun, Kobbi Nissim, Uri Stemmer, and Salil Vadhan, *Differentially Private Release and Learning of Threshold Functions*, arXiv:1504.07553, the resampling lemma cited by ALMM as Lemma 5.9.
- Applicability to current branch: Yan applies to every factor without an ordering, properness, efficiency, or finite-cardinality assumption. The source proof routes through threshold dimension plus private median, and its internal parameter (TD(C_i)+1) is bounded by (2^{d_i+1}+1); this supports the branch wrapper (s_i=1+\log^*(d_i+1)), including the printed theorem's ambiguous (d_i=1) boundary. ALMM applies to arbitrary, possibly improper outputs and finite Littlestone dimension. Its proof exposes an expected-empirical-loss threshold (1/8), which is the interface needed for weighted direct-sum averaging after a source-faithful expected-risk resampling wrapper. The remaining adaptation burden is the new product argument: routed fixed-length privacy, weighted occupancy, finite minimax, one-use factor embedding, overflow coupling, and constant-slack assembly.
- Proof roadmap:
  1. Prove the exact product identities and instantiate a permutation-symmetrized Yan mechanism at each displayed quota, using `assump:canonical-product`, `assump:vc-one-factors`, and `assump:global-privacy-range`.
  2. Prove routed/padded two-block privacy and arbitrary-mass weighted utility, depending on item 1 and using no balance condition or union bound over factors.
  3. Derive the unrestricted ALMM worst-case expected-risk interface and its finite minimax hard priors, using `assump:vc-one-factors`, `assump:global-privacy-range`, and candidate-wise `assump:candidate-delta-budget`.
  4. Combine the nonprivate (\operatorname{VC}(C)=k) lower bound with a high-complexity-factor split, then run the one-use hidden-factor simulation under the mixture weights (\pi_i), depending on items 1 and 3.
  5. Use the factor-four overflow bound and weighted expected-risk identity to contradict the global PAC expectation when (n<cM_{\oplus}(C)), then assemble the exact conditional theorem.
- Key lemmas / ingredients: additive VC and Littlestone identities for disjoint full products; Yan's labeled improper sample-complexity theorem; multiset symmetrization; basic composition on the at-most-two affected routed inputs; weighted shortage mass; PAC-to-expectation conversion; ALMM's source-level expected-loss transition; finite zero-sum minimax on the embedded finite threshold game; binomial overflow at (m=\max\{8,\lceil4n\pi_i\rceil\}); a one-use replacement coupling; and a separate VC lower bound to pay for low-complexity factors.
- Main transfer challenges: Yan's displayed theorem writes (\log^*d) although the (d=1) endpoint needs the proof's (TD+1) wrapper; routed sequences must be treated as multisets or symmetrized to make deletion/insertion one replacement; the formal ALMM corollary is stated for ((1/16,1/16))-PAC utility, so the expected-risk direct-sum interface must be derived from its proof rather than asserted as the corollary; and the low-(\log^*d_i) mass must be paid by the independent VC lower bound.
- Potential repair techniques and supporting references:
  - Technique: Replace the printed (\log^*d) endpoint by a current-notation (TD(C_i)+1\) wrapper and dominate it by (s_i).
  - Supporting reference: Yan, arXiv:2505.06581v2, Algorithm `alg:improperlearner`, Corollary `cor: threshold dimension and littlestone dimension`, and Theorem `thm:improper sample complexity`.
  - Why it may help: It supplies the exact mechanism and rate for (d_i=1) without adding a finite-domain or cardinality assumption.
  - Technique: Derive expected-risk hardness by applying the resampling proof linearly and then use finite minimax on the finite threshold witness.
  - Supporting reference: ALMM arXiv:1806.00949, `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, `thm:ADPimpliesLD`; Bun et al. arXiv:1504.07553, Lemma 5.9 as cited by ALMM.
  - Why it may help: It yields one hard prior per factor against every unrestricted DP learner, which is necessary before independent product targets can be sampled.
- Disposition: `selected`
- Branch notes: This is the parent-preserving framework named in `idea.md`. The source preflight found a valid route for both apparent convention gaps, so neither is deferred to a future proof step as an unsupported theorem source.

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
