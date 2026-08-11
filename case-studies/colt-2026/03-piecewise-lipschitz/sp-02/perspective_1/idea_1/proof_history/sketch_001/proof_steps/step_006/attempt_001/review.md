# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_006
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_006/proof.md
- Reviewed proof SHA-256: 1e5b411f11a795a4bf42f383c748f4f2c9bb9164efef4786d1385d119bdc6488

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma states exactly the finite-level regularity
  interface needed by the accepted sketch. It uses the five allocated primitive
  conditions, the accepted
  Proposition~\ref{prop:step-001-coordinate-envelope}, and only fixed
  proof-local choices of $I,j,m$. It asserts no margin uniform in $m$.
- Proof validity: The unit first derives
  $\lvert F_i\rvert\leq B_Q$ and
  $\lvert F_i'\rvert\leq D_*/h$, then defines finite $B_H,L_H$ from setting
  quantities and the accepted dependency. For arbitrary
  $\theta,s\in E_{j,m}$, including points in different connected components,
  the quotient identity gives
  \[
  \lvert T_j(\theta,\beta)-T_j(s,\zeta)\rvert
  \leq (mL_H+m^2B_HL_F)\lvert\theta-s\rvert
       +mB_Q\lVert\beta-\zeta\rVert_1.
  \]
  This is a global quotient estimate on the whole measurable domain, not a
  componentwise argument. Finite-dimensional norm equivalence turns the
  displayed estimate into Euclidean Lipschitz regularity, and coordinate
  insertion preserves it for $\Psi_j$.
- Cited-result and assumption audit: The value envelope follows directly from
  Assumptions~\ref{assump:balcan-common-chain} and
  \ref{assump:anchored-unit-range}; the derivative envelope is exactly the
  accepted step_001 conclusion with the coordinate factor $h^{-1}$.
  Compactness and $F_0\in C^1(\Theta)$ justify the two finite sup norms. No
  generated margin, event, or independence premise is introduced.
- Rigor checklist: On the open nonzero-pivot locus the quotient is $C^1$.
  At almost every density point of a measurable restriction, its approximate
  derivative agrees with this ambient derivative, while null domain pieces
  remain null under the Lipschitz map. Ambient endpoints are null slices.
  The proof also correctly treats empty chart sets and the zero-dimensional
  beta convention for $N=1$.
- Local adversarial test: Opposite-sign pivot components separated by zeros do
  not break Lipschitzness because the estimate uses both endpoint denominators
  and the global Lipschitz bound on $F_j$. Pivots may approach zero as
  $m\to\infty$; only finite-level legality is claimed. If $D_*=0$ or a chart
  set is null, the same estimate remains valid.
- Contribution to target step: This unit supplies precisely the measurable,
  finite-level Lipschitz map needed by the equal-dimensional area formula on
  every $D_{j,m}$.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: The lemma retains the coefficient-cube restriction
  $\lvert T_j\rvert\leq R$, states both directions of the coefficient-object
  mapping, and gives the exact determinant and tangency relation under the
  preceding finite-chart interface.
- Proof validity: Substitution of the inserted coordinate gives
  $F_0+\langle\Psi_j,F\rangle=H_j+T_jF_j=0$. Conversely, a root with
  $F_j\neq0$ uniquely solves to
  $\alpha_j=T_j(\theta,\alpha_{-j})$; the original cube membership gives the
  full domain condition. After a coordinate permutation, the derivative
  matrix is block triangular with diagonal
  $(\partial_\theta T_j,I_{N-1})$, so its absolute determinant is exactly
  $\lvert\partial_\theta T_j\rvert$.
- Cited-result and assumption audit: The unit uses only
  Lemma~\ref{lem:step-006-finite-chart-legality} and direct algebra on the
  setting-defined chart. It does not invoke Balcan--Dick--Pegden Theorem 18 or
  assume a theorem about roots.
- Rigor checklist: Measurability of $D_{j,m}$ follows from measurable
  $E_{j,m}$ and the continuous quotient on the nonzero-pivot locus. The
  determinant statement holds at the density points relevant to the area
  formula. The $0\times0$ determinant convention gives the same formula for
  $N=1$. Differentiating with beta fixed yields
  \[
  \frac d{d\theta}(F_0+\langle\alpha,F\rangle)
  =-F_j\partial_\theta T_j,
  \]
  with the correct sign.
- Local adversarial test: At a tangent root the scalar derivative vanishes and,
  because the pivot is nonzero, the chart determinant vanishes. Several roots
  of one coefficient merely produce several preimages. Points with
  $\lvert T_j\rvert=R$ remain in the cube and cause no open-domain assumption.
- Contribution to target step: The exact root identity, cube membership, and
  Jacobian identify the area-formula image with the intended coefficient
  event and preserve the coefficient-cube indicator.
- Verdict: PASS
- Repair direction: None

### unit_003: lemma

- Statement fidelity: The lemma isolates exactly the endpoint and persistent
  affine-identically-zero degeneracies requested by the target, under the
  anchor, density-law, and affine-data assumptions.
- Proof validity: Since $F_1(\theta_0)=1$, every fixed-point root set is a
  proper affine hyperplane, explicitly a graph in $\alpha_1$. Tonelli gives
  zero $N$-dimensional Lebesgue measure, hence zero probability under every
  admissible absolutely continuous law. The persistent set is an intersection
  of these hyperplanes; if nonempty it is an affine subspace contained in any
  one proper hyperplane and is therefore proper and null.
- Cited-result and assumption audit: The lower source for properness is the
  literal anchor in Assumption~\ref{assump:anchored-unit-range}, not an upper
  regularity bound. Assumption~\ref{assump:cube-density-laws} supplies only
  absolute continuity; no coordinatewise density or independence is used.
- Rigor checklist: An interval has at most two included endpoints, so all
  endpoint root images lie in a finite union of null hyperplanes. For $N=1$
  the graph is a singleton. A singleton interval gives the same fixed-point
  hyperplane, while the empty interval is handled separately by the later
  propositions.
- Local adversarial test: If $F_0$ is constant and $N=1$, there may be one
  coefficient for which the affine combination vanishes everywhere, but that
  singleton is still null. The anchor rules out the only dangerous case in
  which the fixed-point normal could vanish.
- Contribution to target step: Endpoint and identically-zero coefficient
  classes are certified null without deleting them from chart coverage or
  assuming simple interior roots.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: The proposition proves the exact finite-level
  indicator-weighted chart bound, followed by the permitted domination that
  removes the indicator. It retains arbitrary multiplicity, the full joint
  density cap, and finite-level finiteness.
- Proof validity: For each measurable $D_{j,m}$, the preceding global
  Lipschitz result permits the equal-dimensional area formula. Decomposing a
  Lebesgue-measurable domain into a Borel part and a null part makes its image
  an analytic measurable image plus a null Lipschitz image. Thus
  \[
  \operatorname{Leb}^N(\Psi_j(D_{j,m}))
  \leq\int_{D_{j,m}}\lvert\det D\Psi_j\rvert
  \]
  is legitimate and becomes exactly the displayed beta integral with
  $\mathbf 1_{\{\lvert T_j\rvert\leq R\}}$.
- Cited-result and assumption audit: The standard area formula is restated in
  current notation with domain, map, approximate derivative, multiplicity,
  and conclusion. The measurable-image facts are also stated with their
  Polish/Borel hypotheses. Probability domination uses
  $f_\mu\leq\kappa$ on the full joint coefficient space exactly once; no
  product-law theorem is invoked. Balcan--Dick--Pegden is lineage only.
- Rigor checklist: Image volume is bounded by the full preimage-counting
  integral, so noninjectivity and distinct multiple roots only enlarge the
  right side. The zero-Jacobian critical image, including tangent roots, is
  null by the same area formula. Endpoint slices and the persistent affine
  class are null. The finite derivative bound and finite product-domain volume
  make every finite-level integral finite. The one-dimensional area formula
  and beta-cube measure one cover $N=1$.
- Local adversarial test: A coefficient with infinitely many represented roots
  may have infinite multiplicity, but the area formula is nonnegative and
  extended-valued, while the identically-zero coefficient class is null.
  Overlap between charts is harmless because finite subadditivity is in the
  upper-bound direction. Arbitrary correlation cannot invalidate
  $\mu(B)\leq\kappa\operatorname{Leb}^N(B)$.
- Contribution to target step: This proposition is the finite-level bridge
  from exact chart geometry to coefficient-event probability with literal
  factor $\kappa$.
- Verdict: PASS
- Repair direction: None

### unit_005: lemma

- Statement fidelity: The lemma states the exact increasing-event and full
  coverage identities needed to remove the finite pivot threshold. It does
  not discard endpoint, tangent, multiple, or identically-zero roots.
- Proof validity: Since $E_{j,m}\subseteq E_{j,m+1}$ and the same chart map is
  used at every level, both the chart domains and their image unions increase.
  Conversely, the disjoint pivot partition assigns each witnessing root a
  unique owner $j$. Its pivot is nonzero, so an integer
  $m\geq1/\lvert F_j(\theta)\rvert$ places that root in a finite chart, and
  the converse mapping from
  Lemma~\ref{lem:step-006-chart-jacobian} recovers the original coefficient.
- Cited-result and assumption audit: Ownership comes from the primitive
  measurable partition in Assumption~\ref{assump:affine-chart-data}; no
  generated uniform margin is assumed. If one views all algebraically eligible
  pivots before applying that partition, choosing the least eligible index is
  a valid finite tie-break, while the proof's unique partition owner already
  provides deterministic ownership and is sufficient for the union bound.
- Rigor checklist: Each finite image is measurable in the completed sense from
  the preceding proposition. The full event is the projection of a Borel zero
  set under a continuous equation and is analytic, hence universally
  measurable. Therefore the inclusions form a measurably increasing sequence
  to which continuity from below applies. Empty and singleton intervals cause
  no exception.
- Local adversarial test: Pivots may converge to zero along a sequence of
  roots, causing the required levels to diverge from root to root; pointwise
  finite entry still proves countable exhaustion and never yields a uniform
  margin. Multiple chart representations or multiple roots only duplicate
  image membership and do not spoil monotonicity or equality.
- Contribution to target step: The lemma proves that the finite-level event
  bound loses no root coefficient when $m\to\infty$.
- Verdict: PASS
- Repair direction: None

### unit_006: proposition

- Statement fidelity: The proposition states the exact accepted affine chart
  inequality for every admissible law and every interval, first with the cube
  indicator and then in the target form, explicitly in $[0,+\infty]$.
- Proof validity: Continuity from below gives
  $\mu(\mathcal R_I)=\lim_m\mu(\mathcal R_m)$. For each chart, the functions
  \[
  \mathbf 1_{E_{j,m}}(\theta)
  \mathbf 1_{\{\lvert T_j\rvert\leq R\}}
  \lvert\partial_\theta T_j\rvert
  \]
  increase pointwise to the corresponding full-$E_j$ integrand. Monotone
  convergence, followed by the finite chart sum, therefore gives the sharper
  indicator-weighted inequality. Dropping the indicator is the explicit
  nonnegative domination required for the target.
- Cited-result and assumption audit: The limiting step consumes only
  Proposition~\ref{prop:step-006-finite-level-area},
  Lemma~\ref{lem:step-006-exhaustive-coverage}, and the standard measure
  theorems restated earlier. All five primitive assumption IDs and the accepted
  step_001 regularity interface remain unchanged.
- Rigor checklist: Monotone convergence is used in the extended-real space, so
  a divergent limiting chart integral is legal. The support equality connects
  $\mathcal R_I$ to the original random event. Empty, degenerate, open,
  closed, and half-open interval conventions are covered by the Borel interval
  argument and null endpoint slices. The finite sum commutes with the limit,
  and the $N=1$ convention remains valid.
- Local adversarial test: An infinite right side makes the ordered inequality
  true rather than inducing an illicit subtraction. A zero chart derivative
  gives a null image except for already null degeneracies. No conditional
  density is formed, so maximally correlated admissible laws remain covered.
- Contribution to target step: This is the sole exported public-facing result
  and exactly proves R3 with literal coefficient $\kappa$ and no hidden
  constant.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found. The global finite-level quotient
estimate is proved in Lemma~\ref{lem:step-006-finite-chart-legality}; exact
coefficient mapping, determinant, and tangency are in
Lemma~\ref{lem:step-006-chart-jacobian}; endpoint and persistent degeneracies
are in Lemma~\ref{lem:step-006-null-affine-sets}; measurable images,
multiplicity, and density domination are assembled in
Proposition~\ref{prop:step-006-finite-level-area}; event monotonicity and
pointwise finite-level entry are in
Lemma~\ref{lem:step-006-exhaustive-coverage}; and the extended-real limit is in
Proposition~\ref{prop:step-006-affine-bound}. The standard area formula,
measurable-image facts, Tonelli, continuity from below, and monotone convergence
are restated before use. Local unit IDs are audit handles only; mathematical
authority in the derivation and assembly uses theorem-style names and labels.

## Target Claim Audit

The proof establishes the exact accepted step_006 claim under the primitive
Assumptions~\ref{assump:parameter-regime},
\ref{assump:balcan-common-chain},
\ref{assump:anchored-unit-range},
\ref{assump:cube-density-laws}, and
\ref{assump:affine-chart-data}, plus only the current accepted step_001
regularity conclusion. The affine offset remains deterministic and outside the
$N$-dimensional random vector. The result is uniform over every admissible
possibly correlated full joint density and every interval, preserves the exact
chart Jacobian and coefficient-cube indicator through the area-formula and
limit stages, and then derives the target integral by displayed domination.
It assumes neither transversality, root simplicity, an interior-root
restriction, nor a pivot margin uniform over roots or exhaustion levels.
Tangent and multiple roots, endpoint roots, affine-identically-zero
combinations, empty and degenerate intervals, divergent integrals, and $N=1$
are all covered. The output is therefore faithful to the branch's unconditional
`full` progress type and remains suitable for the exact affine-monic consumer.

## Explicit Rate Audit

This is the rate-bearing R3 interface. It exposes $N,R,\kappa$, the fixed
deterministic $F_0,F$, the interval $I$, the measurable partition $(E_j)_j$,
and the exact integrals of $\lvert\partial_\theta T_j\rvert$. The literal
probability coefficient is $\kappa$; there is no hidden constant and no hidden
dependence on $q,M,\Delta,B_P,B_Q,h$, the law, a pivot margin, root
multiplicity, or correlation. The probability mode is ordinary probability
for each full joint law, the horizon mode is every full interval after
exhaustion, and the norm/measure modes are scalar absolute determinant and
Lebesgue coefficient volume. The threshold $1/m$ is proof-local and disappears
by monotone convergence. The only simplification is the displayed inequality
$\mathbf 1_{\{\lvert T_j\rvert\leq R\}}\lvert\partial_\theta T_j\rvert
\leq\lvert\partial_\theta T_j\rvert$. No probability conversion, term
absorption, finite-integral condition, or baseline loss is hidden. The
deterministic affine offset and original random-vector dimension are preserved
for the later exact monic specialization.

## Notation Surface Audit

The public-facing objects $T_j$, $\partial_\theta T_j$, the beta cube, and the
final chart integrals are setting-defined and are exactly the minimal exported
interface. The exhaustion sets, chart domains, insertion maps, and cube
indicator are appropriately appendix-local. The numerator, finite-level norm
bounds, deleted-coordinate notation, and event/image sets are proof-local and
have explicit provenance. The inherited $D_*$ is used only to prove finite
chart legality and is not smuggled into the public affine rate. All boundedness,
measurability, and coverage properties are proved rather than assumed, and no
unnecessary helper dictionary reaches the target conclusion.

## Target-Step Assembly Audit

The assembly cites the exact named results needed in dependency order.
Lemma~\ref{lem:step-006-finite-chart-legality} supplies legal finite maps;
Lemma~\ref{lem:step-006-chart-jacobian} supplies coefficient identity, cube
membership, and determinant; Lemma~\ref{lem:step-006-null-affine-sets} handles
the null degeneracies; Proposition~\ref{prop:step-006-finite-level-area}
applies area and density domination; Lemma~\ref{lem:step-006-exhaustive-coverage}
proves increasing full coverage; and
Proposition~\ref{prop:step-006-affine-bound} performs the extended-real limit.
Together with the accepted step_001 regularity proposition, these results
jointly imply exactly the boxed target inequality. The assembly introduces no
new lemma, assumption, cited conclusion, or notation-dependent authority.

## Review Rationale

Acceptance is warranted because all six non-atomic local units are
self-contained, correctly labeled, and valid line by line; the possibly
disconnected finite domains receive a genuine global Lipschitz estimate; the
area formula is applied to measurable coefficient-cube charts with the exact
Jacobian and favorable multiplicity direction; and measurable monotone
exhaustion closes the complete affine root event in $[0,+\infty]$. The proof
preserves every target quantifier, primitive-assumption source, dependency,
degenerate case, parameter dependence, and downstream affine interface. Its
recorded SHA matches the controller-bound artifact. The source proof also
passes ASCII/control-byte, TeX brace and delimiter, Markdown table-arity,
six-unit correspondence, and required-heading checks. No producer,
dependency, or sketch repair is needed, so None is the smallest retry target.
