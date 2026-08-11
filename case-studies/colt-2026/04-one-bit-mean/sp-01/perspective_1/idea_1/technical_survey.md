# Technical Survey

## Current Idea Branch

- Perspective: `perspective_1`
- Current idea: `idea_1`, the decoder-selected stable-shift dyadic digit bank combined with an independent coding-localization block.
- Setting / goal summary: For fixed \(k>1\), known \(\lambda\geq\sigma>0\), \(0<\epsilon\leq c_k\sigma\), and \(\delta\in(0,1/2)\), prove the exact unconditional fully non-adaptive one-bit PAC theorem over the unrestricted class \(\mathcal D(k,\lambda,\sigma)\), with sample complexity \(C_k r_k(\lambda,\sigma,\epsilon,\delta)\) simultaneously in the regimes \(k>2\), \(k=2\), and \(1<k<2\).

## Candidate Frameworks

### Framework 1: Coding localization plus decoder-selected shifted dyadic digits

- Source papers: Lau and Scarlett, *Order-Optimal Sequential 1-Bit Mean Estimation in General Tail Regimes*, arXiv:2604.07796v2, Theorem 16 (`thm: alternative localization`) and its Appendix `appendix: two-stage`; Abdalla and Chen, *Robust Mean Estimation under Quantization*, arXiv:2601.07074; Lugosi and Mendelson, *Sub-Gaussian Mean Estimators*, DOI:10.1214/16-AOS1440.
- Applicability to current branch: D2 supplies a deterministic, precommitted arbitrary-query localization transcript under the weaker first-absolute-moment condition. Its source conclusion is an interval, so the current branch must use the explicit current-notation wrapper \(c=\operatorname{mid}(I)\). The D2 appendix proves \(|I|\leq100\sigma\), hence \(|c-\mu|\leq50\sigma\), and gives the required additive logarithmic sample cost. D4 supplies lineage for bounded uniform dithering, while the exact bounded-digit dither identities needed here are elementary current-notation derivations. Median-of-means supplies confidence amplification after a uniform conditional variance bound. The remaining adaptation burden is the novel pathwise digit-activation summation and its transfer through importance weighting.
- Proof roadmap:
  1. Goal: instantiate D2 Theorem 16, take the midpoint wrapper, and derive the localization event and recentered \(k\)-moment. Dependencies: none. Assumptions: `assump:parameter-domain`, `assump:moment-class`, `assump:iid-independent-randomness`.
  2. Goal: prove stable-shift geometry, bounded dithering, the exact telescope, digit inactivity, and fine/coarse pathwise activation sums. Dependencies: item 1 only for the recentered-moment interface, not for the deterministic identities. Assumptions: `assump:parameter-domain`.
  3. Goal: derive exact importance-weighted expectation and second moment, transfer the pathwise sums to the three conditional variance regimes, control the two residual biases, and apply median-of-means. Dependencies: items 1--2. Assumptions: all three primitive assumptions.
  4. Goal: assemble localization and refinement unconditionally and verify all ceilings and additive costs are absorbed into \(C_k r_k\). Dependencies: items 1--3. Assumptions: all three primitive assumptions.
- Key lemmas / ingredients: D2's balanced deterministic codebook and nearest-Hamming decoder; Lyapunov recentering; the four half-open quarter-shift arcs partitioning the unit circle; the exact formula \(\mathbb E_U[(3h(\mathbf 1\{f_x\geq U\}-\mathbf 1\{f_c\geq U\}))^2]=3h|F(x)-F(c)|\); deterministic dyadic telescoping; pathwise geometric activation sums; conditional Chebyshev plus binomial concentration for median-of-means.
- Main transfer challenges: The D2 source returns an interval rather than the scalar center consumed by refinement; the importance-weighted second moment contains \(p_j^{-1}\) and must be summed pathwise before taking the moment bound; and the telescope estimates \(\mu-c\) only after the fine and top residuals are shown to be \(O(\epsilon)\).
- Potential repair techniques and supporting references:
  - Technique: split the source theorem from its midpoint wrapper and expose the exact source-to-current-object map.
  - Supporting reference: arXiv:2604.07796v2, Theorem 16 and Appendix `appendix: two-stage`.
  - Why it may help: it prevents treating an interval-valued cited conclusion as a scalar localization output and gives the explicit universal constant \(L_k=50\).
  - Technique: sum activated digits geometrically at fixed \(x\) before integrating.
  - Supporting reference: the shifted-dyadic definitions in `perspective_1/idea_1/setting.md`; no external theorem is invoked.
  - Why it may help: it yields \(\sum_{\rm fine}|\Delta D_j|\lesssim\min\{|x-c|,\sigma\}\) and \(\sum_{\rm coarse}h_j^{k-1}|\Delta D_j|\lesssim_k|x-c|^k\), avoiding a false extra level-count factor.
  - Technique: use a fixed-block median-of-means bound conditional on the independent localization output.
  - Supporting reference: Lugosi and Mendelson, DOI:10.1214/16-AOS1440.
  - Why it may help: only a finite conditional variance is needed, and the resulting block count has exactly logarithmic confidence dependence.
- Disposition: `selected`
- Branch notes: The parent lineage is preserved. Source preflight used arXiv:2604.07796v2 dated May 25, 2026: the shared theorem counter makes `thm: alternative localization` Theorem 16. The source protocol is deterministic and fully non-adaptive, its queries are indicators of measurable unions of clipped bins, and its proof uses independent samples. The setting's public seed can therefore be degenerate. The source's known non-output boundary is that it returns an interval, not a scalar; the midpoint wrapper is mandatory. D4 is used only as technique lineage, not as authority for a theorem-critical current-notation conclusion.

### Framework 2: Use D2's location-dependent refinement unchanged

- Source papers: Lau and Scarlett, *Order-Optimal Sequential 1-Bit Mean Estimation in General Tail Regimes*, arXiv:2604.07796v2, Section 4.3 and the two-stage corollary following Theorem 16.
- Applicability to current branch: It has the correct three-regime rate after localization but chooses the refinement queries after the localization interval is decoded. It therefore violates the branch's zero-transition, all-queries-precommitted theorem contract.
- Proof roadmap:
  1. Run coding localization.
  2. Decode the interval.
  3. Select the source refinement queries using that interval.
- Key lemmas / ingredients: D2 localization and location-dependent randomized-threshold refinement.
- Main transfer challenges: The second-stage query sets depend on earlier messages, so no target-preserving wrapper can make this framework fully non-adaptive.
- Potential repair techniques and supporting references:
  - Technique: replace the adaptive second stage by the selected Framework 1 digit bank.
  - Supporting reference: `perspective_1/idea_1/idea.md`.
  - Why it may help: all offset pairs and levels are queried in advance and only selected at decoding time.
- Disposition: `rejected`
- Branch notes: Rejected because its failure is at the algorithm/theorem-contract level, not a missing local lemma.

### Framework 3: Single fixed-range uniform-dither refinement

- Source papers: Abdalla and Chen, *Robust Mean Estimation under Quantization*, arXiv:2601.07074, Theorem 3.1.
- Applicability to current branch: It is genuinely non-adaptive and supports arbitrary measurable one-bit sets, but its fixed range must cover localization uncertainty and heavy tails. Under the unrestricted moment class its variance or clipping bias retains polynomial dependence on the range and does not give \(r_k\).
- Proof roadmap:
  1. Choose one global range.
  2. Apply uniformly dithered bits.
  3. Balance clipping bias and variance.
- Key lemmas / ingredients: Uniform-dither expectation identity, clipping bias, Bernstein concentration.
- Main transfer challenges: No fixed range simultaneously gives logarithmic \(\lambda/\sigma\) localization dependence and the target refinement variance over all three \(k\)-regimes.
- Potential repair techniques and supporting references:
  - Technique: replace the fixed range by multiscale shifted digits.
  - Supporting reference: `perspective_1/idea_1/idea.md`.
  - Why it may help: localization uncertainty is handled by decoder selection and tail activity is charged to the \(k\)-moment scale by scale.
- Disposition: `rejected`
- Branch notes: Retained only as the provenance of the bounded-dither ingredient; it is not a viable complete roadmap for the exact goal.
