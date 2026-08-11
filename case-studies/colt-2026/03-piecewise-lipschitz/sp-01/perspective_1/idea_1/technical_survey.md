# Technical Survey

## Current Idea Branch

- Perspective: `perspective_1`, uniform root-hitting finiteness from coefficient-side structure.
- Current idea: `idea_1`, an averaged conditional intercept-density envelope with random-intercept witnesses.
- Setting / goal summary: For a degree-(d) monic polynomial with coefficients in ([-R,R]^d), prove the exact sufficient-only bound \(C_{\mathcal D}\leq \bar\kappa_{\mathcal D}L_{d,R,\Theta}\), verify general fixed-width and heteroscedastic random-intercept laws, and separate the explicit heteroscedastic law from the bounded-density affine-latent baseline. No necessity, converse, transversality, simplicity, or polynomial-in-((d,R)) conclusion is sought.

## Candidate Frameworks

### Framework 1: Midpoint intercept-slice disintegration

- Source papers: *Invited Open Problem: Online Optimization of Piecewise-Lipschitz Functions with Applications to Data-Driven Algorithm Design* (PMLR 336, 2026, https://proceedings.mlr.press/v336/balcan26a.html); *Semi-bandit Optimization in the Dispersed Setting* (Balcan--Dick--Pegden, arXiv:1904.09014, Appendix Theorem 18 and its opening affine-transformation generalization).
- Applicability to current branch: This framework preserves the parents' monic polynomial and all-interval root sweep but uses the intercept coordinate as the one-dimensional random direction. A root in an interval deterministically forces the intercept into a short interval after conditioning on all higher coefficients. The only probabilistic input is then the averaged conditional density cap, which is stated directly in coefficient-law terms and permits singular higher-coefficient marginals. The remaining adaptation burden is measure-theoretic bookkeeping for random, possibly unbounded slice caps and exact verification of the witness family.
- Proof roadmap:
  1. Bound the polynomial derivative on \([-R,R]^d\times\Theta\) and use a midpoint mean-value argument to localize any interval root to an intercept interval of length at most \(L_{d,R,\Theta}|I|\), independently of endpoint conventions and root multiplicity.
  2. Disintegrate over the higher coefficients, dominate each conditional intercept slice by \(K_\mu(\beta)L_{d,R,\Theta}|I|\), and use Tonelli/the tower property before taking the class supremum.
  3. Derive the conditional uniform density for random-intercept laws, verify fixed-width cases, and compute the heteroscedastic witness's support, cap, averaged cap, and root-hitting bound.
  4. Compare with the parent baselines: recover the ambient-volume scale under a bounded joint density, and use affine-hull dimension plus absolute continuity within the affine image to exclude the explicit curved witness from the affine-latent class.
- Key lemmas / ingredients: The deterministic mean-value theorem on the segment joining a root to the interval midpoint; regular conditional densities and Tonelli for a nonnegative jointly measurable integrand; the exact density of \(G(\beta)+\rho(\beta)U\) conditional on \(\beta\); elementary integration of (t^{-q}) for \(q\in(0,1)\); and affine-hull/Hausdorff-measure comparison for full-column-rank affine images of absolutely continuous latent laws.
- Main transfer challenges: The cap \(K_\mu(\beta)\) is not uniformly bounded in \(\beta\), so the proof must integrate it rather than take an essential supremum over slices. The heteroscedastic witness has a null degeneracy at (Z=0), which must be reconciled with almost-sure positivity and exact integrability. Curvature alone only rules out a two-dimensional affine image; excluding a three-dimensional affine latent representation also requires proving that the witness is lower-dimensional inside its three-dimensional affine hull.
- Potential repair techniques and supporting references:
  - Technique: Replace any attempted union over roots by the single midpoint evaluation slab, preserving tangencies and repeated roots.
  - Supporting reference: *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014, Appendix Theorem 18 proof architecture for sweeping fixed-root coefficient sections.
  - Why it may help: The parent sweep identifies coefficient sections as the right object; the monic intercept coordinate makes those sections one-dimensional and yields a direct Lipschitz localization without transversality.
  - Technique: Audit affine-image dimension using the full-rank condition implicit in the baseline proof's (det(A^TA)>0) change of volume.
  - Supporting reference: *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014, opening general theorem and proof in `dispersionToolAppendix.tex`.
  - Why it may help: It closes the latent-dimension-three loophole left by a curvature-only argument: an absolutely continuous latent law pushes forward to a law absolutely continuous in its affine image, whereas the witness sheet has zero three-dimensional measure in its affine hull.
- Disposition: `selected`
- Branch notes: This is the lowest-adaptation, parent-aligned route and directly proves the exact formalized sufficient theorem. It does not import the affine parent's bounded latent density as an assumption; that framework is used only for the required comparison. No prior branch failure needs repair because this is sketch attempt 1.

### Framework 2: Full affine-latent coefficient-section sweep

- Source papers: *Semi-bandit Optimization in the Dispersed Setting* (Balcan--Dick--Pegden, arXiv:1904.09014, Appendix Theorem 18 and the opening affine-transformation theorem).
- Applicability to current branch: The framework already handles dependent and ambiently singular laws when they are full-rank affine images of bounded-density latent vectors. It cannot certify the nonlinear heteroscedastic sheet: a two-dimensional affine image cannot contain its three-dimensional affine hull, while a three-dimensional bounded-density latent image cannot concentrate on its zero-volume sheet. Its map-dependent constant also does not expose the desired averaged intercept cap.
- Proof roadmap:
  1. Represent fixed-root coefficient vectors as hyperplane sections of the affine image.
  2. Bound section volume and sweep it over the root interval.
  3. Multiply by the latent density cap and translate back to coefficient probability.
- Key lemmas / ingredients: Full-column-rank affine change of volume, cube-section bounds, polynomial factorization at a root, and Cauchy's root bound.
- Main transfer challenges: There is no legal affine representation of the explicit witness with an absolutely continuous bounded-density latent law. Even for representable laws, the baseline constant depends opaquely on the affine map and is not the target coefficient-side averaged-cap interface.
- Potential repair techniques and supporting references:
  - Technique: Use this framework only as a baseline-reduction and strict-coverage comparison, not as the theorem's producer.
  - Supporting reference: arXiv:1904.09014, Appendix Theorem 18.
  - Why it may help: It prevents overstating novelty for generic ambiently singular laws while making the nonlinear witness separation precise.
- Disposition: `rejected`
- Branch notes: Rejected as the proof framework because adopting it would lose the branch's substantive nonlinear witness and replace the explicit intercept envelope by a stronger, differently parameterized latent-density assumption.

### Framework 3: Kac--Rice or root-intensity integration

- Source papers: *On a General Kac-Rice Formula for the Measure of a Level Set* (arXiv:2304.07424); *How Many Zeros of a Random Polynomial Are Real?* (Edelman--Kostlan, DOI:10.1090/S0273-0979-1995-00571-9).
- Applicability to current branch: A root-intensity formula could upper-bound hitting probability by expected root count, but it would add regularity and nondegeneracy obligations absent from the setting. It is also unnecessarily indirect here because the monic intercept enters additively and admits exact one-dimensional conditioning.
- Proof roadmap:
  1. Establish a level-set formula for the random polynomial.
  2. Bound the value/derivative joint density or conditional derivative moment from coefficient structure.
  3. Integrate the intensity over every interval and use Markov's inequality for root hitting.
- Key lemmas / ingredients: Kac--Rice, level-set rectifiability, and coefficient-side joint anti-concentration.
- Main transfer challenges: Tangencies and degenerate conditional laws require additional hypotheses, and an unverified intensity cap would be conclusion-adjacent under the research brief. The route does not naturally expose the exact \(\bar\kappa_{\mathcal D}L_{d,R,\Theta}\) constant.
- Potential repair techniques and supporting references:
  - Technique: Retain Kac--Rice only as a backup if additive intercept conditioning is removed in a later idea.
  - Supporting reference: arXiv:2304.07424.
  - Why it may help: Its weak non-Gaussian formulation could organize level-set calculations in a model without a distinguished random intercept.
- Disposition: `rejected`
- Branch notes: Rejected for this branch because it would introduce avoidable source-convention and transversality burdens and would not improve the exact coefficient-side route.
