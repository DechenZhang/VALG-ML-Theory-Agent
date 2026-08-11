# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2, coefficient-side conditions for a uniform polynomial root-hitting bound.
- Current idea: Idea 1, two endpoint conditional-density charts with only mean random slice caps.
- Setting / goal summary: For every integer \(d\geq 1\), \(R\geq 1\), fixed finite \(\eta=(\bar\kappa_0,\bar\kappa_\infty)\), every law in the exactly defined class \(\mathcal D_{d,R,\eta}\), and every positive-length interval in the fixed compact source domain, prove the exact two-chart bound \(C_{\mathcal D_{d,R,\eta}}\leq M_\eta(d,R)\), the no-hidden-constant specialization \(M_\eta(d,R)\leq P_\eta(d,R)\), and the separate indexed nonemptiness clause when both caps are at least \(1/2\).

## Candidate Frameworks

### Framework 1: Two coefficient-pivot sweeps with conditional disintegration

- Source papers: *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014, especially Appendix Theorem 18 and its fixed-root coefficient-sweep proof architecture; *Invited Open Problem: Online Optimization of Piecewise-Lipschitz Functions with Applications to Data-Driven Algorithm Design*, https://proceedings.mlr.press/v336/balcan26a.html.
- Applicability to current branch: This is the closest framework because the polynomial is affine in either endpoint coefficient. The inner chart solves the root equation for \(\alpha_0\), while the two outer charts solve it for \(\alpha_{d-1}\) after division by \(\theta^{d-1}\). The current branch does not invoke Appendix Theorem 18 as a black box: it directly derives the two one-dimensional derivative and image-length estimates and replaces the source's ambient-density volume control with regular conditional kernels and their mean essential-supremum caps. This preserves the source convention for monicity, coefficient order, cube support, and interval root hitting.
- Proof roadmap:
  1. Derive the inner sweep derivative and image-length bound on every interval piece in \([-1,1]\), including \(d=1\) and singleton pieces.
  2. Derive the positive and negative outer sweep bounds separately, checking division, signs, open endpoints, and \(d=1\).
  3. Put regular conditional densities and their essential suprema on a measurable, version-independent interface, and verify Borel measurability of the root-hitting events.
  4. Apply the fiberwise density bound and tower property to obtain the mean-cap probability bounds for the three pieces.
  5. Use the exact domain partition and finite union bound to obtain the weighted estimate and the maximum \(M_\eta\), not the sum of chart constants.
  6. Take the law and interval suprema, audit the empty-class convention, and prove the uniform polynomial specialization with no hidden constant.
  7. Independently verify the \(d=1\), \(d=2\), and \(d\geq3\) witness laws and then apply the cap threshold only to the nonemptiness clause.
- Key lemmas / ingredients: The direct identities for \(s_0'\) and \(s_\infty'\); the fact that a continuous Lipschitz image of a real interval is an interval whose Lebesgue length is bounded by the Lipschitz constant times the domain length; measurable Radon--Nikodym densities for kernels on standard Borel spaces; the countable rational-interval characterization of a density's essential supremum, justified by Lebesgue differentiation; conditional disintegration; the tower property; finite subadditivity; and elementary polynomial inequalities valid for all \(d\geq1,R\geq1\).
- Main transfer challenges: The baseline sweep is ambient-dimensional, whereas this branch must expose an exact one-dimensional conditional interface. Density versions and null conditioning fibers must not create an unmeasurable random cap. The two outer components cannot be treated as one connected interval. The endpoint points \(\pm1\) must be assigned once, and the event union is not disjoint even though the parameter pieces are. Finally, the witness threshold must not be imported into the general probability bound.
- Potential repair techniques and supporting references:
  - Technique: Solve the root equation in an endpoint coefficient and bound the swept image directly, instead of bounding a full hyperplane-section volume.
  - Supporting reference: *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014, Appendix Theorem 18.
  - Why it may help: It supplies the parent fixed-root sweep mechanism, while the current direct derivative calculation makes the indexed \(d,R\) dependence explicit.
  - Technique: Use conditional disintegration at the coefficient pivot and a jointly measurable kernel-density representative; define the cap through a countable family of rational intervals before identifying it with the conditional \(L^\infty\) norm.
  - Supporting reference: *Kac-Rice Formulas and the Number of Solutions of Parametrized Systems of Polynomial Equations*, arXiv:2010.00804, for the broader disintegration-over-parameters framework; the actual kernel and Lebesgue-differentiation facts will be restated and checked in current notation rather than imported as a theorem-specific black box.
  - Why it may help: It removes any need for an almost-sure uniform cap and makes the tower-property conversion from random caps to their means mathematically well-defined.
- Disposition: selected
- Branch notes: This framework follows the parent lineage in the idea and does not switch foundation papers. Relative to arXiv:1904.09014, the claimed advance is the explicit indexed \(O_\eta(Rd^2)\) interface under two mean endpoint conditional caps, not a new root-sweep identity or new singular-law coverage. No prior same-perspective failure exists.

### Framework 2: Ambient joint-density hyperplane-section volume

- Source papers: *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014, Appendix Theorem 18; *Invited Open Problem: Online Optimization of Piecewise-Lipschitz Functions with Applications to Data-Driven Algorithm Design*, https://proceedings.mlr.press/v336/balcan26a.html.
- Applicability to current branch: The framework directly bounds interval root hitting, but it requires an ambient joint-density cap and yields the source baseline factor \((2R)^{d-1}\). It neither uses the branch's weaker mean conditional caps nor reaches a polynomial whose degree is uniform in \(d,R\).
- Proof roadmap:
  1. Bound fixed-root coefficient hyperplane sections of the cube.
  2. Sweep the section as the root moves through the interval.
  3. Multiply the swept volume by an ambient density cap.
- Key lemmas / ingredients: Cube slicing, Cauchy root control, and swept-volume bounds.
- Main transfer challenges: A law in the current class may be ambiently singular, and no joint-density cap follows from the two conditional endpoint caps. Adding such a cap would strengthen the setting.
- Potential repair techniques and supporting references:
  - Technique: Replace ambient volume by the selected one-dimensional pivot disintegration.
  - Supporting reference: *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014.
  - Why it may help: It retains the valid sweep idea while removing both the unsupported joint-density premise and the exponential cube-volume factor.
- Disposition: rejected
- Branch notes: This is the source-provided baseline, so selecting it would fail both goal alignment and materiality.

### Framework 3: Root intensity or Kac--Rice control

- Source papers: *On a General Kac-Rice Formula for the Measure of a Level Set*, arXiv:2304.07424; *Kac-Rice Formulas and the Number of Solutions of Parametrized Systems of Polynomial Equations*, arXiv:2010.00804.
- Applicability to current branch: A root-count or level-set formula could upper-bound hitting probability by expected root count, but the formula would introduce conditional value/derivative quantities that still need a uniform coefficient-side estimate. For this affine-in-coefficients model, the two direct sweeps already expose that estimate with fewer regularity and transversality obligations.
- Proof roadmap:
  1. Verify Kac--Rice hypotheses and obtain a local root intensity.
  2. Bound the intensity from coefficient-law structure.
  3. Integrate it over the interval and compare hitting probability with root count.
- Key lemmas / ingredients: Coarea/Kac--Rice, conditional derivative moments, and nondegeneracy or transversality.
- Main transfer challenges: Tangencies and multiple roots require additional hypothesis checks; an uncontrolled intensity would be circular under the research brief; and no located source gives the required no-hidden-constant \(d,R,\eta\) specialization.
- Potential repair techniques and supporting references:
  - Technique: Use the endpoint-coordinate sweeps to control the event fibers without introducing a root intensity.
  - Supporting reference: *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014.
  - Why it may help: The pivot equality remains valid at tangencies and multiple roots and needs no process-level transversality assumption.
- Disposition: rejected
- Branch notes: This framework is unnecessary for the exact formalized goal and would add theorem-critical source and regularity interfaces without improving the claimed rate or scope.
