# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_003
- Unit attempt: 2
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_003/proof.md
- Reviewed proof SHA-256: 637b6b01d6041dc9b797a04e4a387713dff823f5ee51bd1e872801a5ee119312

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-measurable-domains} states the exact event-measurability,
  completed-domain measurability, integrand-measurability, and monotone-exhaustion interfaces needed by the
  accepted step. Its statement fixes an arbitrary admissible law, every positive-length interval with its actual
  endpoint convention, and every Lebesgue-measurable legal pivot partition under the four primitive assumptions
  and the accepted anchor conclusion.
- Proof validity: The setting gives continuous \(F_i\) and hence a continuous incidence function
  \(h(\theta,a)\). Every bounded real interval, whether open, closed, or half-open, admits an increasing compact
  exhaustion that retains each included endpoint. The compact zero-incidence sets have compact coefficient
  projections, so their countable union is exactly the root event and is \(F_\sigma\), not merely analytic.
  Intersecting a completed-measurable cell with the closed pivot threshold gives \(E_{j,n}\); on the open
  nonzero-pivot set, \(T_j\) and its displayed quotient derivative are continuous, so \(D_{j,n}\) and the
  indicator-Jacobian integrand are completed measurable. The decreasing thresholds \(1/n\) give
  \(E_{j,n}\uparrow E_j\) pointwise.
- Cited-result and assumption audit: Feature \(C^1\) regularity comes from the primitive common-chain and closure
  interfaces. The anchor is used only through the accepted Anchor Nonvanishing
  Lemma~\ref{lem:step-001-anchor}. Completion of the law is legitimate because the full joint law is absolutely
  continuous. Compact projection and elementary measurability facts are restated before use; no independence,
  transversality, or generated pivot margin is assumed.
- Rigor checklist: The compact-exhaustion argument covers all interval endpoint conventions. The root event is
  Borel even when the pivot cells are only completed measurable. Products, threshold preimages, quotient
  derivatives, and nonnegative integrands have the required measurability. The \(N=1\) convention
  \([-R,R]^0=\{()\}\), \(\lambda_0(\{()\})=1\), is stated and is consistent with all formulas.
- Local adversarial test: Open, closed, and half-open \(I\); a non-Borel Lebesgue-measurable cell; a pivot tending
  to zero without reaching zero on its cell; an empty cell; and \(N=1\) all preserve the proof. Included endpoints
  enter the compact exhaustion, while excluded endpoints never enter the event.
- Contribution to target step: This lemma supplies the exact measurable domains and increasing exhaustion used
  by the area formula, continuity from below, and monotone convergence.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-finite-chart} states finite-level Lipschitz regularity on the full
  compact pivot set, explicitly including disconnected restrictions, and the exact full \(N\times N\)
  determinant required by the accepted area-formula interface.
- Proof validity: Compact \(C^1\) data give finite \(M_i\) and \(L_i\). The quotient difference is bounded using
  only the two endpoint inequalities \(\lvert F_j\rvert\geq1/n\):
  \[
  \left\lvert\frac{F_i(\theta)}{F_j(\theta)}
  -\frac{F_i(\vartheta)}{F_j(\vartheta)}\right\rvert
  \leq(nL_i+n^2M_iL_j)\lvert\theta-\vartheta\rvert.
  \]
  Because \(\Theta\) is an interval, the derivative bounds justify the numerator differences, while no segment is
  required to stay in the possibly disconnected finite-pivot set. The displayed \(\theta\)- and beta-Lipschitz
  constants then control \(T_j\) globally on that set. After ordering nonpivot coordinates, the derivative matrix
  has first row \((\partial_\theta T_j,\partial_\beta T_j)\) and an identity lower block, so its determinant is
  exactly \(\partial_\theta T_j\) up to the row-permutation sign.
- Cited-result and assumption audit: Only primitive compact \(C^1\) regularity and the measurable-domain result
  are used. Every bound is explicitly derived from \(n,R,M_i,L_i\); no uniform theorem-facing pivot margin,
  connectedness of a pivot cell, or hidden Lipschitz constant is assumed.
- Rigor checklist: The estimate remains valid when \(F_j\) changes sign between distinct components, since the
  algebra uses endpoint denominators and the global derivative bound. The Euclidean product metric, beta
  dimension, row order, and absolute determinant are explicit. Derivative locality on a measurable restriction
  is used only almost everywhere, as required by the area formula.
- Local adversarial test: Two finite-pivot components separated by a zero of \(F_j\), opposite endpoint signs,
  empty or singleton components, and \(N=1\) all pass. For \(N=1\), the matrix is the literal \(1\times1\)
  derivative and both nonpivot sums vanish.
- Contribution to target step: The lemma supplies a genuine same-dimension Lipschitz chart and the exact
  Jacobian, with no chart-count or determinant constant.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-003-finite-area} states completed measurability, nesting,
  coefficient-cube containment, and the exact finite-level probability inequality. It explicitly covers zero
  Jacobians, tangent and multiple roots, finite and infinite fibers, interval endpoints, closed-cube faces, and
  \(N=1\).
- Proof validity: The measurable-domain equal-dimensional Euclidean area formula is restated in current notation
  with domain and target both of dimension \(N=1+(N-1)\). A Borel representative of a completed-measurable
  domain has analytic, hence Lebesgue-measurable, image; the null remainder has null image under the finite-level
  Lipschitz map. At density points, the derivative of a Lipschitz extension agrees almost everywhere with the
  ambient \(C^1\) chart derivative, so the exact determinant from unit_002 is the correct area integrand. The
  multiplicity identity permits values in \(\{0,1,\ldots,\infty\}\), and
  \(\mathbf 1_{\Psi_j(D_{j,n})}\leq N(\Psi_j,D_{j,n},\cdot)\) gives the image-volume direction without
  injectivity or finite fibers.
- Cited-result and assumption audit: The standard area formula is fully restated with its measurable-domain,
  multiplicity, derivative-locality, and completed-measurability conclusions, and units_001--002 discharge every
  hypothesis on the actual chart. The density conversion uses the single full joint density
  \(f_\mu\leq\kappa\), never a marginal or conditional density. Balcan--Dick--Pegden is correctly kept as lineage
  only.
- Rigor checklist: Differentiating the chart identity yields
  \(F_0'+\langle\Psi_j,F'\rangle+F_j\partial_\theta T_j=0\). Since \(F_j\neq0\) on the finite domain, tangent and
  multiple fixed-coefficient roots are critical preimages; the zero-Jacobian subset has null image by the same
  area formula. Included parameter endpoints and every beta or pivot face of the closed cube are literal domain
  slices and remain included; their null-domain slices have null Lipschitz images. Finite subadditivity over the
  \(N\) charts leaves the target sum intact, so it introduces no extra chart-count constant.
- Local adversarial test: An identically zero chart Jacobian, several or infinitely many preimages of one
  coefficient, a tangent double root, a root at an included endpoint, a coefficient with one or several
  coordinates equal to \(\pm R\), and \(N=1\) all satisfy the stated inequality. Infinite multiplicity can only
  increase the right side of the multiplicity comparison.
- Contribution to target step: This proposition supplies the exact finite-level coefficient-volume and
  arbitrary-correlation probability estimate consumed by the exhaustion limit.
- Verdict: PASS
- Repair direction: None

### unit_004: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-root-coverage} states the required inclusion of the full root event
  in the persistent locus plus the increasing chart images and records exact law-nullity of the persistent class.
  Its statement includes endpoint, boundary, tangent, multiple, finite-root, infinite-root, and identically-zero
  cases.
- Proof validity: For any nonpersistent coefficient with a root, the disjoint exhaustive partition selects one
  legal pivot. Taking beta to be the original nonpivot coordinates and solving the actual affine equation gives
  \(a_j=T_j(\theta,\beta)\). Cube support gives the indicator condition, and nonzero \(F_j(\theta)\) gives a
  finite integer \(n\) with \(\theta\in E_{j,n}\). Thus the original coefficient, with no transformed or added
  coordinate, lies in \(A_{j,n}\). The proof never differentiates the root and needs neither root isolation nor
  finiteness.
- Cited-result and assumption audit: The accepted Anchor Nonvanishing Lemma supplies legal pivot coverage, while
  the accepted Persistent-Root Nullity Proposition~\ref{prop:step-002-law-null} supplies Borel and probability
  nullity for the exact \(Z_\infty(I)\) under the same law and interval. The dependency is used exactly, not
  strengthened and not replaced by the global diagnostic.
- Rigor checklist: A nonpersistent coefficient with infinitely many roots is covered after selecting one root.
  Weak cube inequalities retain boundary coefficients and included endpoints. Persistent and identically-zero
  combinations contribute exactly zero probability, with no exclusion assumption or probability remainder.
  The \(N=1\) root equation reduces to \(a_1=T_1(\theta)\).
- Local adversarial test: A coefficient with a continuum or infinite set of roots, a root of arbitrary
  multiplicity, a sole endpoint root, a cube-corner coefficient, a pivot arbitrarily close to zero, and a
  nonempty persistent locus all pass. Each selected nonzero pivot activates some finite level before the event is
  consumed.
- Contribution to target step: This lemma proves complete event coverage and supplies the only exceptional-set
  removal used by the limiting probability argument.
- Verdict: PASS
- Repair direction: None

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-003-pivot-sweep} states exactly the indicator and
  indicator-dropped inequalities for every admissible law, positive-length interval, and measurable legal pivot
  partition, with literal coefficient \(\kappa\), extended-nonnegative-real scope, and all required boundary
  regimes.
- Proof validity: Root coverage and persistent nullity give
  \(\mu(\mathcal R_I)\leq\mu(\bigcup_n A_n)\). Since \(A_n\uparrow\), continuity from below gives the exact limit
  of their probabilities. The finite-level bound applies at every \(n\). For each fixed chart,
  \(\mathbf 1_{E_{j,n}}\mathbf 1_{\{|T_j|\leq R\}}|\partial_\theta T_j|\) increases pointwise to the corresponding
  \(E_j\) integrand, so monotone convergence applies without an integrability assumption. The number of charts is
  the fixed finite \(N\), hence the limit commutes with the displayed sum without a factor. Finally,
  \(\mathbf 1_{\{|T_j|\leq R\}}|\partial_\theta T_j|\leq|\partial_\theta T_j|\) proves exactly the second
  inequality and drops no other term.
- Cited-result and assumption audit: Continuity from below, monotone convergence, and finite addition are
  restated and correctly instantiated. Proposition~\ref{prop:step-003-finite-area} and
  Lemma~\ref{lem:step-003-root-coverage} supply all generated inputs. The full joint-density conversion has
  already occurred before the limit and remains valid under arbitrary correlation.
- Rigor checklist: Both sides may be infinite; all integrands are nonnegative and measurable. Empty cells, zero
  Jacobians, pivots approaching zero, closed boundaries, persistent roots, and \(N=1\) are handled exactly. The
  logical limit argument is correct, and both displayed limit integrals use the proper differential factors
  \(\lvert\partial_\theta T_j\rvert\,d\beta\,d\theta\).
- Local adversarial test: If the chart mass diverges near a vanishing pivot, monotone convergence still yields a
  valid extended-real inequality. If a chart is empty or has zero Jacobian, its contribution is zero. For
  \(N=1\), the beta integral has mass one. Repeated coverage across charts is charged only through the already
  displayed sum and creates no hidden \(N\) multiplier.
- Contribution to target step: This proposition and its named inputs establish the exact common affine
  pivot-sweep theorem with no loss.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial mathematical subclaim is missing from the five-unit map. The possible hidden
obligations are all exposed and discharged: root-event Borel measurability and completed pivot domains in
Lemma~\ref{lem:step-003-measurable-domains}; disconnected-set Lipschitz control and the full determinant in
Lemma~\ref{lem:step-003-finite-chart}; Borel representatives, analytic images, null-remainder images,
multiplicity, critical images, endpoint and cube-boundary slices, and the joint-density cap in
Proposition~\ref{prop:step-003-finite-area}; finite-level activation for every root and persistent-root nullity in
Lemma~\ref{lem:step-003-root-coverage}; and continuity from below, monotone convergence, finite chart summation,
and indicator dropping in Proposition~\ref{prop:step-003-pivot-sweep}. Compact projection, Tonelli, and the
measurable-domain area formula are separately restated before use. No hidden lemma or notation defect remains.

## Target Claim Audit

The proof establishes the exact accepted step_003 claim. The quantifiers range over every admissible full joint
law, every positive-length interval with any endpoint
convention, and every measurable legal pivot partition. The random object remains the original
\(N\)-dimensional coefficient vector; \(F_0\) stays deterministic. The proof imposes no uniform pivot margin,
simple-root, transversality, finite-root, independence, open-cube, or Borel-cell condition. Tangent, multiple,
endpoint, persistent, finite-fiber, infinite-fiber, and \(N=1\) cases are all covered. The two accepted
dependencies are used only for their frozen anchor and persistent-nullity conclusions. Sketch attempt 1, unit
attempt 2, the reviewed path, and the reviewed proof hash match the frozen review identity.

## Explicit Rate Audit

The step is rate-bearing because it exports the exact R2/R4 chart interface. Its exposed coefficient is literally
\(\kappa\); there is no hidden constant, confidence parameter, chart-count multiplier, conditional-density
factor, or dependence on an exhaustion level. The fixed feature presentation and cube parameters precede the
arbitrary choices of law, interval, and partition. The probability mode is ordinary probability for each full
joint law, the interval mode is pairwise for every positive-length interval, and the norm/measure mode is
ordinary Euclidean \(N\)-dimensional Lebesgue area with \(\lambda_0([-R,R]^0)=1\). The only relaxation is the
displayed pointwise indicator domination with coefficient one. Keeping \(F_0\) outside the random vector and the
beta cube in dimension \(N-1\) preserves the exact later monic factor \((2R)^{d-1}\). Both repaired differential
separators preserve the same rate, constant, probability conversion, mode, and baseline interface.

## Notation Surface Audit

The exported public-facing surface consists only of the two pivot-sweep inequalities and the target-defined
\(E_j,T_j,\Psi_j\). The finite domains \(D_{j,n}\) are correctly appendix-local; \(\mathcal R_I,K_{j,n},A_{j,n},
A_n,C_{j,n},M_i,L_i,C_{\theta,j,n},C_{\beta,j,n}\) are correctly proof-local and have explicit provenance.
\(Z_\infty(I)\) is inherited from the accepted dependency. No helper dictionary leaks into the target
conclusion, no symbol changes meaning, and the repaired unit_005 differential notation is paper-ready.

## Target-Step Assembly Audit

The assembly cites each proof authority by its theorem-style name and stable label rather than by a local unit ID.
Lemma~\ref{lem:step-003-measurable-domains} supplies measurability and exhaustion;
Lemma~\ref{lem:step-003-finite-chart} supplies Lipschitz regularity and the exact determinant;
Proposition~\ref{prop:step-003-finite-area} supplies multiplicity-safe area and density control;
Lemma~\ref{lem:step-003-root-coverage} and the accepted persistent-nullity proposition supply complete coverage;
and Proposition~\ref{prop:step-003-pivot-sweep} performs the exact limit and indicator domination. These results
jointly imply both target inequalities with the required quantifiers and no hidden constant. The global proof is
used only as a diagnostic and Balcan--Dick--Pegden only as lineage. No additional assembly bridge is needed.

## Review Rationale

All five non-atomic local units are valid line by line and jointly prove the exact accepted chart theorem. The
proof is dependency-faithful and discharges measurable interval and pivot cells, arbitrary correlation through
the full joint density, finite-level Lipschitz regularity, exact area-formula multiplicity, endpoint and persistent
roots, \(N=1\), monotone exhaustion, literal constants, the monic baseline interface, helper provenance, and
target-step assembly. The attempt-2 repair corrects both differential separators without changing any
mathematical interface, and the complete independent audit finds no remaining local, dependency, or sketch
defect. Therefore `ACCEPTED` is the controlled status and `None` is the smallest retry target.
