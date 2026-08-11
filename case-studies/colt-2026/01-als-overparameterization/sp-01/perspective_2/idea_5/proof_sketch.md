# Proof Sketch

## Formalized Setting

This is sketch attempt 2 for the unchanged setting in
perspective_2/idea_5/setting.md. The realized tensor and exact objective are
\[
 T=\sum_{j=1}^r\tau_j
 (\widetilde a_j\otimes\widetilde b_j\otimes\widetilde c_j),
 \qquad
 F(Q)=\frac12\left\|T-\sum_{i=1}^k
 x_i\otimes y_i\otimes z_i\right\|_F^2,
\]
with
\[
 k=\left\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\right\rceil.
\]
The branch remains restricted to the modewise-near-orthogonal smoothed class.
It keeps one protected set, one transactional scratch slot, exact rollback,
the scalar radial sign bracket, the angular-only certificate, the finite Haar
tape, and the same-target terminal chart. No full-residual beta vector or
radial Hessian test is reintroduced.

The fixed discovery rule says that every discovery update is projected onto
the three protected complements. The only invariant-preserving interpretation
of the angular and negative-curvature clauses is therefore
\[
 {\cal S}_I=
 \bigl(\mathbb S^{n-1}\cap S_A(I)^\perp\bigr)
 \times
 \bigl(\mathbb S^{n-1}\cap S_B(I)^\perp\bigr)
 \times
 \bigl(\mathbb S^{n-1}\cap S_C(I)^\perp\bigr),
\]
with every trial projected onto the corresponding complement and normalized
before its radial bracket is re-solved. Consequently, committed normalized
directions are exactly orthonormal within each mode. Allowing an angular trial
to leave these complements would change the fixed discovery protocol and
remove the stated protected-span/duplicate-exclusion mechanism.

## Formalized Goal

The unchanged target is a material-partial end-to-end theorem with:

- a once-drawn good-instance event of probability at least \(1-r^{-10}\);
- conditional per-transaction angular-certificate probability at least
  \((nr)^{-c_{\rm ang}}\);
- \(r\) injective commits from the finite tape in polynomial work;
- the displayed accepted-step lower bound and exact rollback;
- immediate entry of the pruned committed state into a same-target balanced
  chart \({\cal C}_{\rm PL}(\varrho_{\rm PL})\) with
  \(\varrho_{\rm PL},\mu_{\rm PL}\ge P^{-D_{\rm PL}}\); and
- floor-free unprojected Armijo refinement to
  \(\|T-\Psi(Q)\|_F\le\epsilon\|T\|_F\) for every \(0<\epsilon<1\).

The theorem is uniform over every fixed \(c_0,c_\rho>0\) allowed by the
technical assumptions, with constants permitted to depend on those fixed
exponents but not on \(r,n,\rho,\kappa,\epsilon\).

## Sketch Identity

- Sketch attempt: 2
- Retry mode: revise_sketch
- Triggering review:
  perspective_2/idea_5/proof_history/sketch_002/proof_sketch_review.md
- Triggering status: REVISE_SKETCH
- Prior repairs preserved: probe-local responses replace full-residual beta
  purity; the Hessian certificate remains angular-only; radial activation is
  handled by the exact sign bracket; failed transactions roll back exactly.

## Proof Roadmap

No target-faithful step graph exists under the unchanged setting and goal.
The attempt-1 review requested a weight-aware angular gap, an invariant at the
actual \(O(\zeta_{\rm ang}+\mu_{\rm real})\) scale, an operator-norm protected
span ledger, and an explicit projected angular trajectory. Making the
projection rule explicit exposes a stronger obstruction:

1. Projected/retracted discovery makes the committed directions exactly
   orthonormal in each mode.
2. The allowed source class contains targets with two large components whose
   normalized directions have inner product
   \(\nu=\Theta((r\log r)^{-1})\), together with a component of balanced radius
   \(\Theta(\kappa^{-1})\).
3. Any modewise-orthonormal committed representation is at Euclidean factor
   distance \(\Omega(\kappa\nu)\) from the signed/permuted true orbit.
4. The same objective has a nonoptimal stationary point with the weak slot at
   joint zero and all other slots locally adjusted, at distance
   \(O(\kappa^{-1})\) from the true orbit. Thus a positive-PL chart centered at
   the true orbit must have radius \(O(\kappa^{-1})\).
5. The assumptions allow \(\kappa^2\nu\to\infty\), for example
   \(c_0=1\), \(\kappa=r\), and
   \(\nu=(400r\log(2r))^{-1}\). Hence the committed state cannot enter any
   chart on which the required PL inequality holds.

This contradiction survives small Gaussian smoothing and does not depend on a
failed Haar-basin estimate. It also explains why replacing the unsupported
\(P^{-D_{\rm dir}}\) ledger by the certificate scale cannot close the
terminal bridge. The weighted angular perturbation has an independent missing
margin:
\[
 \frac{\tau_{\max}\mu_{\rm real}^2}{\tau_{\min}}
 \lesssim \kappa^6\mu_{\rm real}^2,
\]
which is unbounded over the declared polynomial-\(\kappa\) range. A
weight-scale split can expose a largest unresolved label, but it cannot repair
the projected-state-to-same-target chart contradiction.

The smallest valid route is upstream idea revision. Viable changes would
require at least one theorem-contract change: a weight-dependent incoherence
condition, a restricted \(c_0\) range, a nonorthogonal oblique deflation
instead of protected orthogonal projection, joint polishing before chart
entry with a separate global-entry proof, or a different terminal metric.

## Rate Objectives

### Weighted angular-isolation objective

- Objective type: structural-parameter explicit and regularity-explicit.
- Exposed variables: \(r,\kappa,\mu_{\rm real},\zeta_{\rm ang}\), all
  unresolved weights, protected residual errors, and the angular/radial
  thresholds.
- Hidden constants may depend on: fixed \(c_0,c_\rho\) and absolute protocol
  constants.
- Hidden constants may not depend on: \(r,n,\kappa,\rho\), an unresolved
  label, or its weight rank.
- Fixed quantities: the certificate and projection protocol in setting.md.
- Probability mode: deterministic conditional on the realized good instance.
- Horizon mode: one certificate and then at most \(r\) accumulated commits.
- Norm mode: angular Euclidean norm, probe-response \(\ell_2\) norm, projected
  contraction norm, and balanced factor Euclidean distance.
- Required bridge or simplification obligations: a valid proof would need to
  dominate every \(\tau_\ell\mu_{\rm real}^2\), protected-error, radial, and
  stationarity term by the selected channel gap, then propagate the actual
  direction scale through all commits.
- Baseline invariance obligations: the exact orthogonal/equal-weight model
  must remain valid.
- Feasibility result: unsupported uniformly. The allowed ratio
  \(\kappa^6\mu_{\rm real}^2\) is not bounded by a fixed small constant.

### Protected-state and chart-entry objective

- Objective type: repeated-scope invariant, same-target basin membership, and
  regularity-explicit.
- Exposed variables: \(|I|,r,\kappa,\mu_{\rm real},\zeta_{\rm ang}\), the
  realized weights, and the Euclidean chart radius.
- Hidden constants may depend on: fixed \(c_0,c_\rho\) only.
- Hidden constants may not depend on: \(r,\kappa\), the commit ordering, or the
  tape.
- Fixed quantities: projected discovery, frozen protected slots, exact
  pruning, and the orbit \({\cal Z}_\star\).
- Probability mode: deterministic on any all-commit path.
- Horizon mode: all \(r\) commits followed immediately by chart entry.
- Norm mode: operator norm for span geometry and unweighted Euclidean factor
  distance for \({\cal C}_{\rm PL}\).
- Required bridge or simplification obligations: reconcile exact
  modewise-orthogonality of committed directions with the nonorthogonal true
  orbit and keep the entry error below the closest dormant nonoptimal
  stationary state.
- Baseline invariance obligations: the zero weak-slot stationary boundary must
  be excluded from any positive-PL chart.
- Feasibility result: false on the allowed family below whenever
  \(\kappa^2\nu\) exceeds a fixed constant.

### Probability, work, and terminal-accuracy objective

- Objective type: confidence-explicit, fixed-horizon, and numerical-error
  explicit.
- Exposed variables: \(N_{\rm tx},H_{\rm tx},c_{\rm ang},D_{\rm PL}\),
  \(n,r,\rho^{-1},\kappa,\epsilon\).
- Hidden constants may depend on: fixed \(c_0,c_\rho\) and protocol constants.
- Hidden constants may not depend on: instance/tape realizations or
  \(\epsilon\).
- Fixed quantities: separate instance and tape randomness and the exact
  relative Frobenius target.
- Probability mode: once-drawn instance probability followed by conditional
  finite-tape probability.
- Horizon mode: finite discovery plus logarithmic terminal refinement.
- Norm mode: relative Frobenius residual.
- Required bridge or simplification obligations: a legal all-commit producer,
  same-target chart entry, positive PL constant, and a floor-free contraction.
- Baseline invariance obligations: exact representation and arbitrary
  \(0<\epsilon<1\).
- Feasibility result: downstream arithmetic remains conditionally valid, but
  the deterministic chart-entry producer is false under the current scope.

## Assumption Provenance Objectives

- The static realized norm/Gram event, exact balanced representation, radial
  identities, rollback equality, and guarded Armijo bound remain plausible
  derived outputs of the primitive assumptions. They do not repair the
  obstruction.
- The attempt-1 quantity \(\eta_{\rm dir}=P^{-D_{\rm dir}}\) has no producer.
  The setting exports only
  \[
   \delta_{\rm cert}:=
   C_{\rm iso}(\zeta_{\rm ang}+\mu_{\rm real})
  \]
  as its target-direction scale. Increasing \(D_{\rm ang}\) cannot remove the
  deterministic displacement of a nonorthogonal angular stationary point.
- A valid protected invariant would need a matrix-level object. If
  \(U_I^M\) contains committed directions and
  \(\widetilde M_I\) contains their matched target directions, a per-column
  bound gives only
  \[
   \|U_I^M-\widetilde M_I S_I\|_{\rm op}
   \le\sqrt{|I|}\,\delta_{\rm cert}
  \]
  without an additional coherent-error source. Exact retraction gives
  \((U_I^M)^\top U_I^M=I\), but this orthogonality is itself incompatible
  with arbitrarily ill-scaled nonorthogonal target factors at the terminal
  Euclidean-chart interface.
- The weighted certificate-to-isolation output, protected invariant,
  one-transaction basin, all-commit event, chart entry, and terminal PL
  recurrence are derived facts in the formalized goal. None may be inserted
  as a primitive condition. Since the deterministic chart-entry claim fails,
  there is no legal later producer for these downstream outputs.

## Mechanism-Source And Boundary Stress

### Blocker A: weighted angular gap has no uniform primitive margin

- Step ID: N/A -- blocked before step allocation.
- Claim class: positive angular curvature, unique target support, and
  probe-local response isolation.
- Theorem role: first legal target assignment and every subsequent commit.
- Mechanism source: direct contraction of the actual unresolved tensor. At a
  true unresolved direction \(j\), the mode-\(A\) contraction contains
  \[
   h_A=
   \tau_j\widetilde a_j+
   \sum_{\ell\ne j}\tau_\ell
   \langle\widetilde b_\ell,\widetilde b_j\rangle
   \langle\widetilde c_\ell,\widetilde c_j\rangle
   \widetilde a_\ell
   +h_A(E_I).
  \]
  The corresponding transverse leakage can be as large as a fixed multiple
  of \(\tau_{\max}\nu^2\) on the family below, while the pure-channel angular
  gap is proportional to the selected \(\tau_j\) after normalization by the
  fixed branch scale.
- Source-to-claim adequacy: failed uniformly. The exact orthogonal calculation
  supplies a two-channel negative-curvature witness, but perturbation requires
  \[
   \tau_{\max}\nu^2+\|h_A(E_I)\|+
   {\rm err}_{\rm rad}+{\rm err}_{\rm stat}
   \le c_{\rm gap}\tau_j.
   \tag{A.1}
  \]
  The primitive assumptions impose no weight-aware version of (A.1).
  For a weakest label, the raw ratio is of order
  \(\kappa^6\nu^2\), which diverges for allowed fixed \(c_0\).
- Residual-to-target adequacy: the produced contraction is the actual
  probe-dependent object, but its transfer to one true atom leaves the
  displayed weighted cross-channel term. Neither
  \(\zeta_{\rm ang}\) nor \(P^{-D_{\rm ang}}\) controls a term independent of
  those stopping tolerances.
- Key positive/control term or structural source: the selected channel's
  angular curvature, of scale \(\tau_j\) relative to the contraction.
- Opposing defect terms: \(\tau_\ell\nu^2\) from stronger unresolved labels,
  structured protected-residual contractions, radial error, and angular
  stationarity error.
- Closure/dominance/absorption relation: absent over the full class. Selecting
  a maximal unresolved weight makes (A.1) plausible for that one transition,
  but the theorem needs an all-label induction and a terminal same-target
  state. No current primitive forces every later protected residual to satisfy
  the same maximal-weight relation.
- Accumulation behavior / scope compatibility: accepted approximation errors
  persist because protected slots are frozen. Rollback removes failed probes
  only. A weight-scale induction would need a projected contraction potential,
  a one-step recurrence, and a terminal factor-metric transfer; the latter is
  contradicted by Blocker B.
- Obligation locality classification: idea/theorem-contract defect.
- Noncircular closure status: failed. A weighted exposure condition would be
  a generated fact, but no noncircular producer exists under the current
  assumptions and frozen projected protocol.
- Entry-state / first-update stress result: at the empty state, a largest
  channel can have a valid gap; a weak channel in the presence of a strong
  channel can have leakage-to-gap ratio
  \(\Theta(\kappa^6\nu^2)\). Thus one transition does not imply uniform
  all-label reachability.
- Baseline conclusion preserved: the exact orthogonal/equal-weight case has
  \(\nu=0\) and passes. The obstruction is a permitted nonzero
  near-orthogonal and unequal-weight specialization.
- Producer-consumer provenance: the proposed certificate would produce label
  assignment for span update, tape amplification, chart entry, and terminal
  PL. Inequality (A.1) is missing before the first weak-scale consumer.
- Null or boundary regime tested: one unresolved label, tied weights, a
  weakest label with a stronger unresolved label, and the limit
  \(\kappa^6\nu^2\to\infty\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes; unique-label and response-ratio outputs are not uniformly
  supported.
- Repair route if source is unsupported: add a weight-dependent incoherence
  condition, restrict \(c_0\), or change the sequential extraction mechanism;
  each is an idea/theorem-contract change.

### Blocker B: protected orthogonality prevents same-target PL entry

- Step ID: N/A -- blocked before step allocation.
- Claim class: generated factor-basin membership, positive PL geometry, and
  exact/noiseless terminal convergence.
- Theorem role: required bridge from all commits to the terminal recurrence.
- Mechanism source: an explicit allowed family and exact geometry of the
  fixed projected/retracted discovery rule.
- Source-to-claim adequacy: the obstruction uses the same normalized factors,
  balance convention, protected projectors, factor Euclidean metric, and
  orbit \({\cal Z}_\star\) as setting.md. It does not invoke a surrogate
  objective or a different tangent convention.
- Residual-to-target adequacy: the produced state is the actual committed
  factor tuple. The consumed target is the exact signed/permuted balanced
  orbit in the setting's Euclidean metric. Their separation is bounded below
  directly, while a nonoptimal dormant stationary state is closer to the same
  orbit.
- Key positive/control term or structural source: exact orthogonality of every
  pair of committed normalized directions in each mode.
- Opposing defect terms: a permitted true inner product \(\nu>0\), multiplied
  by the large balanced radius \(\kappa\), and the small radius
  \(\kappa^{-1}\) of a weak component.
- Closure/dominance/absorption relation: impossible when
  \(\kappa^2\nu\) exceeds a fixed constant. Projection cannot reduce this
  mismatch because projection is its source; additional tape entries do not
  change frozen committed directions.
- Accumulation behavior / scope compatibility: source-excluded at the final
  commit. The mismatch is deterministic and persistent, not a summable or
  rollback defect.
- Obligation locality classification: idea/theorem-contract defect.
- Noncircular closure status: failed. No all-commit induction can export
  same-target chart entry because every all-commit output obeys the
  orthogonality constraint.
- Entry-state / first-update stress result: the first commit is legal. The
  second committed direction is retracted into the first complement, so the
  pair is exactly orthogonal even when the two matched target directions have
  inner product \(\nu\). This mismatch is active before terminal chart entry.
- Baseline conclusion preserved: when \(\nu=0\), the obstruction vanishes and
  the exact orthogonal baseline remains possible. The theorem, however,
  quantifies over nonzero \(\nu\) inside the allowed class.
- Producer-consumer provenance: projected angular dynamics -> orthogonal
  commits -> attempted orbit matching -> chart entry -> PL. The middle
  transfer is false on the family below.
- Null or boundary regime tested: exact orthogonality, nonzero
  near-orthogonality, equal strong weights, one tiny weak weight, and the
  dormant weak-slot boundary.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes; either chart entry fails or the chart includes a nonoptimal
  stationary point and cannot satisfy positive PL.
- Repair route if source is unsupported: use nonorthogonal/oblique deflation,
  allow joint pre-chart polishing with a new global-entry theorem, restrict
  the weight/incoherence range, or change the terminal metric. All change the
  current idea or theorem contract.

#### Explicit allowed-family stress calculation

Fix \(c_0=1\), \(c_\rho=3\), \(\kappa=r\), and
\[
 \nu=\frac{1}{400r\log(2r)},\qquad \rho=r^{-3}.
\]
In each mode choose normalized base directions
\[
 \bar m_1=e_1,\qquad
 \bar m_2=\nu e_1+\sqrt{1-\nu^2}\,e_2,\qquad
 \bar m_3=e_3,
\]
and complete labels \(4,\ldots,r\) by orthonormal vectors. Give labels 1 and
2 column norm \(\kappa\), and give label 3 (and, if desired, the remaining
labels) norm \(\kappa^{-1}\). Then
\[
 \mu_{\rm base}=\nu\le\frac{1}{200r\log(2r)},\quad
 \tau_1=\tau_2=\kappa^3,\quad \tau_3=\kappa^{-3}.
\]
The smoothing margin holds for all large \(r\). Since the noise norm is
\(O(r^{-3})\), while the strong column norm is \(r\) and the weak norm is
\(r^{-1}\), standard Gaussian concentration gives an event of probability
\(1-r^{-20}\) on which:

- the realized strong-direction inner product in every mode is at least
  \(\nu/2\);
- the weak label remains \(o(\nu)\)-coherent with the strong labels;
- strong balanced radii lie in \([\kappa/2,2\kappa]\) and the weak radius lies
  in \([1/(2\kappa),2/\kappa]\); and
- all displayed good-instance Gram/norm requirements remain valid.

Any event of instance probability at least \(1-r^{-10}\) intersects this
persistence event with positive probability, so a uniform theorem cannot
discard the family.

Let \(u_1,u_2\) be the two committed mode-\(A\) directions matched to the
strong labels, after signs are chosen. Projected retraction gives
\(\langle u_1,u_2\rangle=0\). If
\(\alpha_j=\|\widetilde a_j-u_j\|_2\), then
\[
 \frac{\nu}{2}
 \le |\langle\widetilde a_1,\widetilde a_2\rangle|
 \le \alpha_1+\alpha_2.
 \tag{B.1}
\]
The same estimate holds in modes \(B,C\). For arbitrary committed radii, either
a strong radius differs from its target by at least \(\kappa/4\), or the
directional part of balanced Euclidean distance and (B.1) give
\[
 \operatorname{dist}(Q_{\rm commit},{\cal Z}_\star)
 \ge c_{\rm orth}\kappa\nu.
 \tag{B.2}
\]

For the opposite chart boundary, set the weak slot to joint zero and optimize
the other \(r-1\) balanced slots locally. At zero smoothing and exact
orthogonality of label 3, the other exact slots form a nondegenerate local
minimum of this restricted problem, while the missing weak tensor leaves
positive loss. Near-orthogonal Gram conditioning and the implicit-function
theorem preserve a restricted critical point under the displayed smoothing.
The omitted joint-zero slot has zero factor gradient by cubic homogeneity.
Equivalently, using a radius \(t\downarrow0\) gives restricted critical points
whose gradient-to-loss ratio tends to zero. These states satisfy
\[
 \operatorname{dist}(Q_{\rm dorm},{\cal Z}_\star)
 \le \frac{C_{\rm dorm}}{\kappa},\qquad
 F(Q_{\rm dorm})>0,\qquad
 \operatorname{grad}_{\rm bal}F(Q_{\rm dorm})=0
 \tag{B.3}
\]
in the zero-radius limit. Therefore a chart on which
\(\|\operatorname{grad}_{\rm bal}F\|_F^2\ge2\mu_{\rm PL}F\) with
\(\mu_{\rm PL}>0\) must have
\[
 \varrho_{\rm PL}<\frac{C_{\rm dorm}}{\kappa}.
 \tag{B.4}
\]
But
\[
 \frac{c_{\rm orth}\kappa\nu}{C_{\rm dorm}/\kappa}
 =\frac{c_{\rm orth}}{400C_{\rm dorm}}
   \frac{r}{\log(2r)}
 \longrightarrow\infty.
\]
Equations (B.2)--(B.4) contradict immediate same-target chart entry for all
sufficiently large \(r\).

### Blocker C: projected angular reachability cannot bypass the obstruction

- Step ID: N/A -- downstream of Blockers A and B.
- Claim class: positive conditional Haar probability, signed radial
  activation, finite angular stopping, and generated all-commit coverage.
- Theorem role: requested producer for \(p_{\rm ang}\) and the finite-tape
  theorem.
- Mechanism source: the strongest same-setting candidate event can be stated
  using \(d_M=n-\dim S_M(I)\), normalized projected target directions
  \(\widehat m_{M,j}\), and
  \[
   Z_j=\tau_j\prod_M
   \langle \omega_M,\widehat m_{M,j}\rangle.
  \]
  A quantitative basin would require one \(j_\star\) such that
  \[
   Z_{j_\star}\ge \frac{\tau_{\max}}{8(d_Ad_Bd_C)^{1/2}}>0,\qquad
   Z_{j_\star}\ge4\max_{\ell\ne j_\star}|Z_\ell|,
   \tag{C.1}
  \]
  together with the weighted curvature margin (A.1). Haar coordinate
  small-ball and order-statistic estimates could give polynomial mass to the
  correlation/gap part of (C.1) when its deterministic curvature clause is
  valid.
- Source-to-claim adequacy: partial only. The Haar law is correct conditional
  on history, but it cannot supply (A.1), alter exact committed
  orthogonality, or create terminal chart entry.
- Residual-to-target adequacy: projected target directions differ from the
  true targets by the protected-span interface. Even a perfect bridge leaves
  the deterministic factor-orbit separation (B.2).
- Key positive/control term or structural source: positive initial score and
  a weighted angular strict-saddle gap.
- Opposing defect terms: weighted cross-channel leakage, a near-flat angular
  state, loss of full-Hessian negative curvature under projection, and the
  terminal factor mismatch.
- Closure/dominance/absorption relation: for fixed directions,
  \(d_I=s_I-g^3\) is exactly monotone and the seed reaches the unique root
  when \(s_I>\|T\|_FP^{-120}\). At a radial root, an accepted fixed-\(g\)
  angular decrease satisfies
  \[
   f_I(g,u^+,v^+,w^+)<f_I(g,u,v,w)
   \quad\Longrightarrow\quad
   s_I(u^+,v^+,w^+)>s_I(u,v,w)>0,
  \]
  and rebracketing decreases the loss further. Thus positive score can be
  preserved. A gradient branch with normalized gradient at least
  \(P^{-D_{\rm ang}}\) and a legal projected negative-curvature branch with
  curvature at most \(-P^{-D_{\rm ang}}\) would each yield a
  \(P^{-C}\) decrease and hence at most \(P^C\) moves. The missing weighted
  trichotomy leaves a small-gradient/near-flat noncertificate branch that
  legally rolls back, so no uniform \(p_{\rm ang}\) is produced.
- Accumulation behavior / scope compatibility: exact rollback makes failed
  state forcing zero, but successful orthogonal commits create the persistent
  defect in Blocker B.
- Obligation locality classification: idea/theorem-contract defect after
  Blocker B; the scalar radial subclaim alone remains step-local.
- Noncircular closure status: failed. A polynomial correlation event cannot
  be converted to certificate success without the missing deterministic
  weighted trichotomy, and certificate success cannot be converted to the
  terminal target.
- Entry-state / first-update stress result: (C.1) activates the first radial
  step; after the second success, exact retraction already creates the
  strong-pair mismatch used in (B.1).
- Baseline conclusion preserved: in the exact orthogonal/equal-weight case,
  (A.1) and the projected/full angular tangents coincide.
- Producer-consumer provenance: Haar event -> radial/angular transaction ->
  certificate -> orthogonal commit -> attempted chart. The last transfer is
  false even if all earlier arrows are granted.
- Null or boundary regime tested: zero score, exact saddle, near-flat positive
  Hessian, last unresolved label, and an ideal all-success tape.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes; more tape cannot repair a deterministic target mismatch.
- Repair route if source is unsupported: upstream idea revision.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Realized good-instance geometry | Gaussian concentration and the six static assumptions | Base norm/Gram margin, smoothing margin, dimension lower bound | Static normalization errors are controlled; no dynamic defect | Realized factors and \(T\) are the theorem objects | Finite union and Schur-product transfer | Explicit static margins | Every proposed dynamic module | None locally |
| Radial sign bracket and capture | Direct scalar calculus | Actual \(R_I,s_I,g\) and dyadic bracket | Radial tolerance is controlled by \(D_{\rm rad}\); nonpositive score is stopped | Same pre-scratch residual is consumed by the certificate | \(d_I=s_I-g^3\) is monotone for fixed directions and has root \(g^3=s_I\) | Positive score | Proposed certificate trajectory | None locally |
| Exact rollback | Fixed transactional boundary | Frozen protected slots and one scratch slot | Failed path may be arbitrary inside guard but is erased exactly | Post-rollback state equals pre-transaction state | Joint-zero reset gives equality, not a reserve bound | Protocol definition | Repeated transactions | None locally |
| Weighted certificate-to-label interface | Proposed orthogonal angular witness plus perturbation | Gradient, \(e_M\), angular Hessian, capture, radial bracket, Gram margin | \(\tau_{\max}\nu^2\), protected error, radial error, and stationarity error; the first two are not uniformly dominated | Actual probe response must transfer to one true unresolved atom | Requires (A.1), which fails to follow from the primitive range | No weight-aware margin in setting.md | Label map, duplicate exclusion, all commits | Unbounded \(\kappa^6\nu^2\) |
| Certificate-scale protected invariant | Proposed matrix span ledger | Per-certificate \(O(\zeta_{\rm ang}+\mu_{\rm real})\) direction error and exact retraction | Coherent \(\sqrt{\lvert I\rvert}\) error and weight-scaled tensor error persist after accepted commits | Produced orthogonalized factors must transfer to nonorthogonal true factors | Operator span control cannot imply individual same-target factor control; (B.1) gives a lower bound | None beyond modewise near-orthogonality | Next transaction and chart entry | Orthogonalized-factor mismatch |
| Legal projected angular/negative-curvature trajectory | Retraction on \({\cal S}_I\) | Projected gradient/Hessian-vector products, Armijo, radial rebracket | Full-tangent negative curvature can be lost on projection; weighted near-flat branch is uncontrolled | Projected basin must transfer to true target and then terminal orbit | Positive score is monotone after accepted angular moves, but no full weighted trichotomy exists | Candidate Haar event (C.1) | One-transaction \(p_{\rm ang}\) | Missing deterministic gap and terminal bridge |
| All-commit finite-tape event | Stopped Bernoulli amplification | Fresh tape independence and a hypothetical uniform \(p_{\rm ang}\) | Failed state forcing is zero; successful orthogonal mismatch is persistent | Each success would need a distinct true label and valid final orbit match | Amplification can multiply probability, not alter produced factor geometry | Hypothetical \(p_{\rm ang}\) | Chart entry | First dynamic producer and target transfer missing |
| Same-target chart entry | Intended all-commit output | Exact pruning and committed factors | Deterministic distance at least \(c\kappa\nu\) | Consumed chart is centered on the exact nonorthogonal orbit in Euclidean factor distance | Any positive-PL chart has radius below \(C/\kappa\), but \(\kappa\nu>C/\kappa\) on the allowed family | Dormant weak-slot boundary | Terminal PL | Equations (B.2)--(B.4) contradict export |
| Floor-free PL and public rate | Conditional local balanced Jacobian and Armijo arithmetic | Exact target, accepted-step lower bound, hypothetical chart entry | No additive rollback term; entry is absent | Relative residual target is exact once a valid iterate exists | Conditional contraction is irrelevant without legal entry | Positive local Jacobian only inside a valid chart | Final theorem | Deterministic entry blocker |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Realized static event and exact orbit | Primitive assumptions plus concentration | All later modules | Once-drawn instance statement | assumptions -> static event | derived | None locally |
| Radial bracket, capture, and rollback | Direct protocol calculus | Probe analysis and tape recurrence | Observable activation and zero failed forcing | transaction state -> scalar bracket/rollback | derived | None locally |
| Unique unresolved label and response isolation | No legal uniform producer | Protected span and tape success | Injective commits | certificate -/-> weighted isolation | derived | Missing (A.1) |
| Protected all-commit invariant | No legal same-target producer | Haar basin and chart matching | Sequential coverage | isolation -/-> orthogonal protected state -/-> true orbit | derived | Exact projection causes (B.1) |
| One-transaction \(p_{\rm ang}\) | Candidate event (C.1), but no deterministic trichotomy | Finite-tape amplifier | Conditional tape probability | Haar correlations -/-> certificate | derived | Weighted near-flat branch |
| All \(r\) commits | Conditional amplifier only | Chart entry | Complete discovery | hypothetical \(p_{\rm ang}\) -> orthogonal commits | derived | Does not repair target mismatch |
| Same-target PL entry | No legal producer | Terminal recurrence | No-floor relative accuracy | orthogonal commits -/-> \({\cal C}_{\rm PL}\) | derived | (B.2)--(B.4) |
| Arbitrary-\(\epsilon\) iterate | Conditional local PL only | Final theorem | Required output | chart entry -/-> PL contraction | derived | Missing chart entry |

## Sketch Steps

None.

## Dependency Notes

The previously intended chain was
\[
 \text{instance event}
 \to\text{weighted certificate}
 \to\text{protected invariant}
 \to p_{\rm ang}
 \to\text{all commits}
 \to\text{same-target chart}
 \to\text{PL}.
\]
Attempt 2 makes the projection/retraction interface explicit. This does not
repair the chain: it proves that every all-commit output lies in the
modewise-orthogonal factor class, while the consumed target orbit need not.
Equations (B.1)--(B.4) break the generated-output path even under an ideal
tape that certifies every transaction. Adding detailed Haar or line-search
steps downstream would therefore misclassify an idea-level contradiction as
local proof work.

The static geometry, scalar radial bracket, exact rollback, and local Armijo
calculation remain reusable modules for a successor idea. The full-residual
beta and radial-Hessian failures from idea 4 remain removed; neither is the
reason for the present failure.

## Blockers

1. **Projected commits cannot enter the required same-target Euclidean PL
   chart.** The fixed projected/retracted protocol makes committed directions
   orthogonal. The allowed family has two strong target directions with
   inner product \(\nu=\Theta((r\log r)^{-1})\), forcing committed factor
   distance \(\Omega(\kappa\nu)\). A dormant weak-slot critical sequence lies
   within \(O(\kappa^{-1})\) of the true orbit, so a positive-PL chart must
   have radius \(O(\kappa^{-1})\). The allowed range permits
   \(\kappa^2\nu\to\infty\). Repair requires a protocol, scope, or terminal
   metric change.
2. **The weighted angular perturbation lacks a uniform margin.** The raw
   transverse leakage-to-weak-gap ratio can scale as
   \(\kappa^6\mu_{\rm real}^2\), which is unbounded under the current
   assumptions. A maximal-weight branch may repair one transition but does
   not supply the all-label frozen-protected induction or the terminal factor
   bridge.
3. **The certificate scale cannot be replaced by an arbitrary \(P^{-D}\)
   factor-error ledger.** The deterministic nonorthogonal displacement and
   exact orthogonalization error remain at the Gram scale. An operator-norm
   span estimate does not transfer this subspace control to individual
   factors in the chart's metric.
4. **A quantitative Haar event cannot repair a deterministic output
   mismatch.** The radial score monotonicity and candidate event (C.1) expose
   a plausible orthogonal-baseline transaction, but the weighted near-flat
   branch lacks a source and even ideal all-success commits violate chart
   entry.

The smallest retry target is /subagent-idea-generator. A successor must alter
the projected extraction/terminal-entry interface or impose a weight-aware
incoherence restriction; another proof-sketch decomposition under the same
setting cannot remove (B.1)--(B.4).
