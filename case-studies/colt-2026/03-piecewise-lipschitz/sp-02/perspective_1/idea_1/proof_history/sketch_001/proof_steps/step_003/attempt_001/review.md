# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_003
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_003/proof.md
- Reviewed proof SHA-256: 721b5a3fbbab80ff7c552a925be233a0b3757c9abaa95f860a40708c3d06e56e
- Accepted dependency proof: perspective_1/idea_1/proof_steps/step_002/proof.md, SHA-256 49765e6c5b90d32376cd6d897ee38978833783a445f579e55569b01369f4db1a
- Accepted dependency review: perspective_1/idea_1/proof_steps/step_002/review.md, status ACCEPTED, SHA-256 77b678ece545313b11204c39471dfc90511c167150b440fa457d550e849c8568

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-incidence-jacobians} states the
  exact local geometry required by the accepted step witness. It fixes the open
  interval and coefficient cube, defines the actual incidence hypersurface and
  the two maps, and states both tangential Jacobians and their exact product
  before the proof. Its assumptions are exactly
  Assumption~\ref{assump:parameter-regime} and accepted
  Proposition~\ref{prop:step-002-projective-speed}.
- Proof validity: For
  \(g(\theta,a)=\langle a,\gamma_F(\theta)\rangle\), the proof computes
  \[
  \nabla g=(u,\gamma_F),\qquad
  u=\langle a,\gamma_F'(\theta)\rangle,
  \qquad \|\nabla g\|_2^2=1+u^2.
  \]
  Thus regularity comes from
  \(\nabla_a g=\gamma_F\), whose norm is one, and does not depend on
  transversality or on \(u\neq0\). The normal
  \(n=(u,\gamma_F)/\sqrt{1+u^2}\) is therefore correct.
- Proof validity: For an orthonormal tangent basis, the Gram matrix of
  coefficient projection is \(I_N-ss^{\mathsf T}\). The determinant lemma and
  the orthogonal decomposition of the parameter vector \(e_0\) give
  \[
  J_{\mathcal S_J}\pi
  =|\langle e_0,n\rangle|
  =\frac{|u|}{\sqrt{1+u^2}}.
  \]
  Projecting \(e_0\) onto the tangent space independently gives
  \[
  J_{\mathcal S_J}\tau
  =\sqrt{1-\langle e_0,n\rangle^2}
  =\frac1{\sqrt{1+u^2}}.
  \]
  Hence
  \(J_{\mathcal S_J}\pi=|u|J_{\mathcal S_J}\tau\) exactly. There is no
  missing factor or reciprocal.
- Cited-result and assumption audit: The regular level-set theorem is restated
  in current Euclidean notation with its nonzero-gradient hypothesis and
  tangent/normal conclusions. Accepted
  Proposition~\ref{prop:step-002-projective-speed} supplies the same
  \(C^1\) unit curve used in the target, so every hypothesis is discharged
  before the theorem is invoked.
- Rigor checklist: The incidence set has dimension \(N\) in
  \(\mathbb R^{N+1}\), the coefficient projection has an \(N\)-dimensional
  tangential Jacobian, and the scalar coordinate map has a one-dimensional
  tangential Jacobian. The calculation is pointwise for finite \(a\) and
  continuous \(\gamma_F'\). It remains valid when \(u=0\), with
  \(J\pi=0\) and \(J\tau=1\), and never divides by \(u\).
- Local adversarial test: At a tangent root, at \(a=0\), or on a stationary
  normalized piece, \(u=0\); the incidence is still regular because the
  coefficient-gradient has norm one, while coefficient projection has zero
  Jacobian. For \(N=1\), the same formulas give a one-dimensional incidence
  curve and zero coefficient-projection Jacobian under the anchor. All tests
  agree with the statement.
- Contribution to target step: This lemma supplies the exact area/coarea
  product used by the target proposition, including all tangent incidences.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-null-degeneracies} separately
  states root-event invariance under normalization, interval-endpoint nullity,
  properness and nullity of identically-zero coefficient combinations,
  stationary-piece behavior, and the complete \(N=1\) reduction. These are
  exactly the boundary and degeneracy classes assigned to this step.
- Proof validity: Since
  \(F=\|F\|_2\gamma_F\) with \(\|F\|_2>0\), the central \(F\)-root and
  \(\gamma_F\)-root events are identical pointwise. Each included endpoint
  contributes the proper hyperplane \(\gamma_F(t)^\perp\), and an interval
  has at most two such points. The orthogonal-coordinate and Fubini argument
  correctly proves their \(N\)-dimensional Lebesgue nullity.
- Proof validity: For nonempty \(I\), the identically-zero set
  \(\mathcal Z_I\) is a linear subspace contained in
  \(\ker\langle\cdot,F(t_0)\rangle\) for any \(t_0\in I\). The anchor gives
  \(F_1(t_0)=1\), so this containing hyperplane is proper. This handles the zero
  coefficient and every other identically-zero combination without assuming
  finite fibers.
- Proof validity: Coordinatewise application of the mean-value theorem shows
  that \(\gamma_F'=0\) on the interior of a nondegenerate interval forces
  \(\gamma_F\) to be constant there; continuity handles included endpoints.
  The swept set is then one fixed proper hyperplane and the sweep integrand is
  zero. For \(N=1\), the anchor gives \(F=\gamma_F=(1)\), the root set is
  \(\{0\}\), and the section is \(\{0\}\) with
  \(\mathcal H^0(\{0\})=1\), but the integrand remains zero.
- Cited-result and assumption audit: The only standard input is the
  one-variable zero-derivative consequence of the mean-value theorem, which is
  restated and applied coordinatewise after \(C^1\) regularity is supplied by
  the accepted dependency. Properness uses the primitive anchor rather than an
  assumed genericity condition.
- Rigor checklist: Empty, singleton, open, closed, and half-open intervals are
  covered because \(I\setminus\operatorname{int}(I)\) has at most two points.
  The claims use \(N\)-dimensional Lebesgue nullity for coefficient sets and
  the correct \((N-1)\)-dimensional section measure. Absolute continuity is
  mentioned only as a later consequence and is not used to prove this
  deterministic step.
- Local adversarial test: Endpoint-only roots, the zero coefficient, a
  positive-dimensional identically-zero subspace, an entire stationary
  subinterval, and \(N=1\) all give null coefficient volume. None requires a
  simple-root, transversality, or nonstationarity premise.
- Contribution to target step: The lemma justifies the exact removal and
  restoration of interval endpoints and disposes of all stationary and
  identically-zero residual classes used in the assembly.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-003-central-volume} states
  the accepted witness inequality for every interval \(I\subseteq\Theta\),
  with the same \(F\), normalized curve, coefficient cube, Euclidean measures,
  and quantifiers as the sketch row. It explicitly permits tangent, multiple,
  higher-order, and infinite root fibers.
- Proof validity: The empty and singleton cases are discharged first. For
  nonempty interior \(J\), compact intervals \(J_m\uparrow J\) make each
  restricted incidence zero set in \(J_m\times[-R,R]^N\) compact. Its
  coefficient projection is compact, so the interior root image is an
  \(F_\sigma\) set. Adding the finitely many endpoint hyperplanes proves the
  full root image is Borel measurable.
- Proof validity: Removing \(\partial[-R,R]^N\) changes coefficient volume by
  zero, and removing interval endpoints changes it only by the null
  hyperplanes from the preceding lemma. Thus the closed-cube root set has the
  same \(N\)-volume as the projection of the open incidence hypersurface.
- Proof validity: The incidence hypersurface is countably \(N\)-rectifiable
  and the ambient coefficient projection is \(1\)-Lipschitz. The rectifiable
  area formula therefore applies. Its multiplicity
  \(\mathcal N_J(a)\) counts root locations with values in
  \(\{0,1,2,\ldots,+\infty\}\), and
  \(\mathbf 1_{\{\mathcal N_J\geq1\}}\leq\mathcal N_J\) is valid for finite
  and infinite fibers. All integrals are correctly interpreted in the
  extended nonnegative sense.
- Proof validity: Substituting the exact Jacobian product from
  Lemma~\ref{lem:step-003-incidence-jacobians} into the area integral and
  applying rectifiable coarea to \(\tau(\theta,a)=\theta\) gives
  \[
  \int_J\int_{\gamma_F(\theta)^\perp\cap(-R,R)^N}
  |\langle\gamma_F'(\theta),a\rangle|
  \,d\mathcal H^{N-1}(a)\,d\theta.
  \]
  The fiber map \(a\mapsto(\theta,a)\) is an isometry, so no fiber Jacobian or
  orientation factor is missing.
- Proof validity: A central hyperplane cannot contain a noncentral cube face
  when \(R>0\) and \(\|\gamma_F\|_2=1\). Its intersection with each face
  consequently has affine dimension at most \(N-2\), hence zero
  \(\mathcal H^{N-1}\)-measure. This proves the exact open-to-closed section
  transfer. Replacing \(J\) by \(I\) changes the outer integral only on at most
  two Lebesgue-null points.
- Proof validity: On the tangent locus, \(J_{\mathcal S_J}\pi=0\). Applying
  the area formula to that measurable locus proves its coefficient image is
  \(N\)-dimensional Lebesgue-null. At a root,
  \[
  \frac d{d\theta}\langle a,F(\theta)\rangle
  =\|F(\theta)\|_2\langle a,\gamma_F'(\theta)\rangle,
  \]
  so ordinary multiple and higher-order roots are included in this tangent
  locus. Distinct root locations only increase projection multiplicity.
  Identically-zero combinations may have infinite multiplicity, but only on
  the proper null subspace already proved in the preceding lemma.
- Cited-result and assumption audit: The area and coarea formulas are both
  restated with rectifiability, Lipschitz, measurability, Jacobian, fiber
  measure, and extended-value conventions. The local incidence lemma
  discharges their geometric hypotheses. Edelman--Kostlan supplies no
  conclusion and is used only as a convention/integrand cross-check.
  Ball's theorem and all density or probability conversion are absent, as the
  accepted step boundary requires.
- Rigor checklist: The proof uses \(\mathcal H^N\) on the incidence
  hypersurface, \(\mathcal H^{N-1}\) on its parameter fibers, and
  \(\operatorname{Leb}^N\) in coefficient space. Quantifiers are uniform over
  every interval and include all endpoint conventions. No interchange uses a
  signed integrand, and no finiteness, discreteness, or root-order bound is
  assumed.
- Local adversarial test: Tangent roots, repeated or higher-order roots,
  several distinct roots, an infinite fiber, a stationary normalized piece,
  coefficients on the cube boundary, interval endpoints, and \(N=1\) all
  follow the stated nullity or multiplicity mechanism. In particular, the
  zero-Jacobian tangent image is null rather than silently discarded.
- Contribution to target step: The proposition proves the sole public-facing
  coefficient-volume interface consumed by step_004, with no extra constant,
  probability mode, or section estimate.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found.

The potentially independent measure-theoretic points are all made explicit
inside Proposition~\ref{prop:step-003-central-volume}: existence of a compact
exhaustion of the bounded open interval; compactness of each restricted root
image; Borel measurability of the full root image; nullity of the coefficient
cube boundary; applicability of rectifiable area and coarea; the exact fiber
isometry; the face-intersection dimension used for the open-to-closed section
transfer; and the area-formula proof that the tangent image is null.

The multiplicity function is the projection counting function in the restated
area formula, so finite, countably infinite, and continuum root fibers require
no separate finiteness lemma. The derivative identity connecting tangent
incidences to multiple roots is displayed and derived from
\(F=\|F\|_2\gamma_F\). Stationary pieces and identically-zero combinations are
handled by Lemma~\ref{lem:step-003-null-degeneracies}, not by genericity prose.
The derivation and assembly cite theorem-style labels; local unit IDs are used
only as audit handles.

## Target Claim Audit

The proof establishes exactly
\[
\operatorname{Leb}^N
\{a\in[-R,R]^N:\exists\theta\in I,\ \langle a,F(\theta)\rangle=0\}
\leq
\int_I\int_{\gamma_F(\theta)^\perp\cap[-R,R]^N}
\lvert\langle\gamma_F'(\theta),a\rangle\rvert
\,d\mathcal H^{N-1}(a)\,d\theta
\]
for every interval \(I\subseteq\Theta\). The source and target use the same
coefficient vector, cube, interval, feature curve, Euclidean normalization,
and measure conventions. The proof includes empty and singleton intervals,
so it in particular covers every positive-length interval required by the
formalized central theorem.

The assumption interface is exact. Assumptions~\ref{assump:parameter-regime}
and \ref{assump:anchored-unit-range} are primitive conditions. The
nonvanishing and \(C^1\) unit normalized curve are accepted derived outputs of
Proposition~\ref{prop:step-002-projective-speed}. There is no hidden event,
root regularity, transversality, section bound, density condition, or
independence premise.

## Explicit Rate Audit

This is the deterministic quantitative interface assigned to rate objective
R2. Its exposed variables are \(N\), \(R\), \(I\), and the exact local motion
\(\langle\gamma_F'(\theta),a\rangle\). There is no hidden constant. The
feature presentation and cube are fixed while the statement ranges over every
interval. The mode is deterministic coefficient volume, not probability; the
horizon mode is per interval, including endpoint and degenerate conventions;
and the norm and measure modes are Euclidean,
\(\operatorname{Leb}^N\), and \(\mathcal H^{N-1}\).

No term is absorbed. The only inequality is
\(\mathbf1_{\{\mathcal N_J\geq1\}}\leq\mathcal N_J\), and the Jacobian
conversion is exact. No confidence parameter, auxiliary tolerance, probability
conversion, Ball section factor, or hidden orientation dependence appears.
The \(N=1\) and stationary specializations reduce exactly to zero on both
sides.

## Notation Surface Audit

The sole public-facing output is the displayed coefficient-volume inequality.
The setting-defined \(F,\gamma_F,\Theta,N,R\) are unchanged. The abbreviations
\(\gamma,K,K^\circ,J\), the compact exhaustion \(J_m\), the incidence objects
\(g,\mathcal S_J,\pi,\tau,u,n\), the tangent-basis variables, the multiplicity
\(\mathcal N_J\), the tangent locus \(\mathcal C_J\), and the null subspace
\(\mathcal Z_I\) are all proof-local and are either defined directly from
setting quantities or proved to have the property for which they are used.
None is exported downstream. There is no helper constant, radius, threshold,
margin, event, or notation cascade hiding a boundedness or finiteness
obligation.

## Target-Step Assembly Audit

The assembly uses accepted
Proposition~\ref{prop:step-002-projective-speed} for the exact same-target
\(C^1\) unit curve and nonvanishing,
Lemma~\ref{lem:step-003-incidence-jacobians} for incidence regularity and the
exact Jacobian product,
Lemma~\ref{lem:step-003-null-degeneracies} for endpoint and degenerate
classes, and Proposition~\ref{prop:step-003-central-volume} for the
area/coarea and multiplicity argument. These named results jointly imply the
exact sketch-row output without a new bridge.

The dependency proof and review hashes match the accepted artifacts. The
assembly uses no conclusion from global_proof.md, which remains diagnostic,
and no conclusion from Edelman--Kostlan. It invokes neither Ball's theorem nor
any density-to-probability conversion. Thus the output is precisely the
central incidence interface expected by step_004.

## Review Rationale

ACCEPTED is the smallest sound decision. All three non-atomic local units are
self-contained and valid line by line; the regularity source, both tangential
Jacobians, their exact product, the rectifiable area/coarea applications,
measurability and compact exhaustion, finite and infinite multiplicity,
tangent and multiple roots, all boundary regimes, and the final interface are
fully discharged under the unchanged accepted sketch and dependency. There is
no local proof flaw, dependency flaw, or sketch-interface defect, so no
producer retry is required.
