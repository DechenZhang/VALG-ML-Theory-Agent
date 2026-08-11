# Proof Sketch

## Formalized Setting

This is the target-spec setting in `perspective_2/idea_1/setting.md`.
The tensor is
\[
T=\sum_{j=1}^r \tau_j\widetilde a_j\otimes\widetilde b_j
  \otimes\widetilde c_j,
\]
and the exact optimized map is
\[
\Phi(\alpha,P,Q,S)=\sum_{i=1}^k\alpha_i p_i\otimes q_i\otimes s_i
\]
on
\(
\mathcal D=[-B_{\mathrm{box}},B_{\mathrm{box}}]^k
\times(\mathbb S^{n-1})^{3k}
\), with the simultaneous projected/Riemannian GD update and fixed step size
specified there.  The primitive setting assumptions are
`assump:base-conditioning`, `assump:base-kr-isometry`,
`assump:gaussian-smoothing`, `assump:dimension-regime`,
`assump:smoothing-scale`, `assump:perturbation-margin`,
`assump:rank-regime`, `assump:random-initialization`, and
`assump:accuracy-range`.  In particular,
\(k=\lceil C_{\mathrm{rank}}r^{3/2}(\log r)^2\rceil\).

## Formalized Goal

The formalized goal is the conjunction of:

1. a probability at least \(1-r^{-10}\) good-instance event, including the
   realized cyclic Khatri--Rao bound \(\Delta_{\mathrm{KR}}^{\mathrm{real}}
   \le 1/32\), nonemptiness of \(\mathcal Z_T\), a global quantitative
   gradient/negative-curvature/feasible-dormant-cubic certificate outside a
   coverage-conditioned neighborhood of \(\mathcal Z_T\), and a quantitative
   PL inequality inside that neighborhood; and
2. conditional on every such good instance, probability at least \(1-r^{-10}\)
   over the one initialization that the exact stated iterates derive channel
   winners, preserve the needed leakage and growth controls, enter the same PL
   neighborhood in an explicit polynomial number of iterations, and attain
   \(\|T-\Phi(\theta_t)\|_F\le\epsilon\|T\|_F\) after an additional explicit
   polynomial multiple of \(\log(1/\epsilon)\), without a restart.

The progress type remains `conditional`; the remaining gap to the source target
is removal of the static base Khatri--Rao and perturbation-margin restrictions.

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

No target-preserving proof roadmap is selected.  The focused framework audit in
`technical_survey.md` leaves the local-PL framework as a usable component, but
the required global landscape trichotomy fails an exact entry/boundary stress
test in the branch's signed-coefficient/unit-direction coordinates.

The obstruction occurs before lemma-sized step allocation.  It is independent
of the Gaussian concentration and rank calculations: on every realized full
column-rank instance with \(n>r\), the admissible parameter domain contains a
non-global interior critical point with positive-semidefinite Hessian, zero
cubic escape coefficient, and only a sixth-order descending smooth path.  The
formal target requires a cubic dormant-component alternative at precisely this
kind of flat critical configuration.  Repair requires changing the
parameterization, changing the algorithm by adding a dormant-direction refresh,
or weakening the landscape conclusion to permit a higher-order escape.  Each is
an idea/theorem-contract change, not a proof-roadmap repair under the unchanged
`setting.md`.

For diagnostic continuity, the target-preserving causal chain that would have
been needed after a theorem-contract repair is:

1. primitive-to-realized Khatri--Rao and norm control;
2. a triple-Gram and zero-residual representation bridge;
3. exact projected-gradient calculus and descent;
4. a current-coordinate global landscape classification;
5. balanced triple-product winner coverage and first-update activation;
6. a coupled channel-growth, off-span, coefficient, and competition potential;
7. entry into the exact regular coverage chart used by a local PL theorem; and
8. PL refinement plus explicit probability and rate specialization.

This diagnostic chain is not a set of accepted sketch steps.

## Rate Objectives

- Objective: quantitative landscape certificate.
  - Objective type: structural-parameter explicit, confidence-explicit, and
    regularity-explicit.
  - Exposed variables: \(n,r,k,\kappa,\rho\), the realized tensor norm through
    its primitive polynomial upper and lower bounds, and all landscape radii,
    gradient thresholds, curvature thresholds, and escape-decrease scales.
  - Hidden constants may depend on: the fixed exponents \(c_0,c_\rho\) and
    absolute numerical margins in `setting.md`.
  - Hidden constants may not depend on: \(n,r,k,\kappa,\rho,\epsilon\), the
    deterministic bases, the realized perturbations, or the initialization.
  - Fixed quantities: \(c_0,c_\rho,C_{\mathrm{dim}},C_{\mathrm{rank}}\) after
    a valid theorem fixes them.
  - Probability mode: deterministic conditional on the derived good-instance
    event, whose outer probability must be at least \(1-r^{-10}\).
  - Horizon mode: global static landscape statement.
  - Norm mode: projected/Riemannian gradient mapping, tangent Hessian curvature,
    feasible parameter-space escape, and Frobenius residual.
  - Required bridge or simplification obligations: every inverse-polynomial
    scale must be derived from primitive controls and transferred to the exact
    normalized parameter domain, including coefficient-boundary branches.
  - Baseline invariance obligations: preserve nonemptiness of the exact
    zero-residual set and exact/noiseless residual zero rather than a positive
    error floor.

- Objective: random-initialization entry and refinement.
  - Objective type: fixed-horizon entry, confidence-explicit,
    structural-parameter explicit, and numerical-error explicit.
  - Exposed variables: \(n,r,k,\kappa,\rho^{-1},\epsilon\), the fixed step size,
    winner and basin margins, and the separate instance and initialization
    confidence levels.
  - Hidden constants may depend on: only \(c_0,c_\rho\) and absolute numerical
    margins.
  - Hidden constants may not depend on: \(n,r,k,\kappa,\rho,\epsilon\), the
    bases, the instance, or the initialization.
  - Fixed quantities: the fixed exponents and numerical margins.
  - Probability mode: probability at least \(1-r^{-10}\) over the instance,
    followed by probability at least \(1-r^{-10}\) over the single
    initialization conditional on every good instance; these probabilities may
    not be merged into an unstated generic high-probability event.
  - Horizon mode: a fixed explicit polynomial entry horizon followed by a
    fixed explicit polynomial times \(\log(1/\epsilon)\) refinement horizon.
  - Norm mode: relative Frobenius residual.
  - Required bridge or simplification obligations: instantiate
    \(P_{\mathrm{entry}}\) and \(P_{\mathrm{refine}}\), verify every threshold,
    convert the two probability modes, and show polynomial work per iteration.
  - Baseline invariance obligations: for every \(0<\epsilon<1\), retain the
    arbitrary-relative-error conclusion and its exact \(\epsilon\downarrow0\)
    zero-residual limit.

The landscape objective cannot be met because the required positive cubic
escape scale is identically zero at the admissible critical configuration below.

## Assumption Provenance Objectives

The target would require all of the following as derived outputs rather than
theorem-facing assumptions:

- the realized norm, conditioning, pair-feature, triple-Gram, and
  \(\Delta_{\mathrm{KR}}^{\mathrm{real}}\le1/32\) event from
  `assump:base-conditioning`, `assump:base-kr-isometry`,
  `assump:gaussian-smoothing`, `assump:dimension-regime`, and
  `assump:perturbation-margin`;
- nonemptiness of \(\mathcal Z_T\) and an interior coefficient representation
  from the realized controls and `assump:rank-regime`;
- balanced per-channel winner coverage and first-update activation from
  `assump:random-initialization`, not from an assumed feature-span or alignment
  event;
- channel persistence, off-span reduction, coefficient control, competition
  control, and basin membership from the exact GD recurrence;
- a regular representation-to-PL bridge from the primitive instance event and
  those trajectory-produced controls; and
- all landscape thresholds from primitive or legally derived controls.

No bridge steps are allocated because the landscape conjunction already has an
idea/theorem-contract obstruction.  Moving any of these derived facts into an
admissibility package would violate the Assumption Provenance Contract.

## Mechanism-Source And Boundary Stress

### Blocked obligation L0: global landscape trichotomy

- Step ID: N/A -- blocked before step allocation.
- Claim class: global nonoptimal-critical-region classification with a
  projected-gradient, tangent-negative-curvature, or feasible dormant-component
  cubic-escape alternative.
- Theorem role: first conjunct of the formalized goal and the claimed global
  landscape source for the trajectory argument.
- Mechanism source: the idea proposes dormant-component geometry in the exact
  normalized map \(\alpha_i p_i\otimes q_i\otimes s_i\).  Direct differentiation
  in that convention shows that this source is absent at a legal dormant state.
- Source-to-claim adequacy: failed.  Let
  \(\mathcal U_A=\operatorname{col}(A)\), and define \(\mathcal U_B,\mathcal U_C\)
  cyclically.  On every good realized instance, the factor matrices have rank
  \(r\); `assump:dimension-regime` gives \(n>r\) asymptotically.  Choose, for
  each \(i\),
  \[
  p_i^\perp\in\mathcal U_A^\perp\cap\mathbb S^{n-1},\quad
  q_i^\perp\in\mathcal U_B^\perp\cap\mathbb S^{n-1},\quad
  s_i^\perp\in\mathcal U_C^\perp\cap\mathbb S^{n-1},
  \qquad \alpha_i=0.
  \]
  Write \(v_i^\perp=p_i^\perp\otimes q_i^\perp\otimes s_i^\perp\).
  Since \(T\in\mathcal U_A\otimes\mathcal U_B\otimes\mathcal U_C\),
  \[
  \nabla_{\alpha_i}F=-\langle T,v_i^\perp\rangle=0,
  \qquad
  \operatorname{grad}_{p_i}F=\operatorname{grad}_{q_i}F
  =\operatorname{grad}_{s_i}F=0.
  \]
  The coefficient is in the interior of its box, so the projected gradient
  mapping also vanishes.  If
  \(f_i(p,q,s)=\langle T,p\otimes q\otimes s\rangle\), then at the displayed
  directions \(f_i=Df_i=D^2f_i=0\): after at most two mode derivatives, one
  undifferentiated direction remains orthogonal to its true factor span.
  Therefore the Hessian of \(F\) is only the positive-semidefinite coefficient
  Gram form
  \[
  (\dot\alpha_i)_i\longmapsto
  \left\|\sum_i\dot\alpha_i v_i^\perp\right\|_F^2,
  \]
  with zero sphere-direction blocks and no negative eigenvalue.  Along a
  Hessian-null tangent, the third-order loss term is also zero: the data coupling
  needs one coefficient change and all three mode-direction changes.  Thus the
  required cubic escape coefficient is exactly zero.
- Residual-to-target adequacy: failed at the exact consumed target.  Here
  \(\Phi=0\), so the theorem-metric residual is exactly \(T\) and
  \(\|T-\Phi\|_F=\|T\|_F>0\).  The point has no active channel representative and
  is outside any coverage-conditioned PL neighborhood capable of implying
  relative error below one.  No surrogate-object transfer is involved.
- Key positive/control term or structural source: none in the current
  coordinates.  A cubic tensor injection exists for three unnormalized
  homogeneous factors at their joint zero, but that is a different
  parameterization.
- Opposing defect terms: the model norm contributes the nonnegative quadratic
  coefficient Gram, while the target coupling is too flat.  In the current
  chart it is proportional to \(\alpha\) times three direction rotations.
- Closure/dominance/absorption relation: unsupported.  There is no positive
  inverse-polynomial cubic scale to dominate because the cubic coefficient is
  zero.
- Accumulation behavior / scope compatibility: static global obstruction; no
  accumulation mechanism applies.
- Obligation locality classification: `idea/theorem-contract defect`.
- Noncircular closure status: direct counterexample, independent of any claimed
  closure or generated condition.
- Entry-state / first-update stress result: the exact projected/Riemannian GD
  update fixes this point, because every gradient block is zero while the
  theorem-facing conclusion is false.
- Baseline conclusion preserved: N/A for the obstruction itself; the point is
  non-global and has residual \(\|T\|_F\), while \(\mathcal Z_T\) is nonempty.
- Producer-consumer provenance: no legal producer exists for the trichotomy;
  the final landscape theorem and any escape-based trajectory use are blocked.
- Null or boundary regime tested: all components dormant at the interior
  coefficient value zero, with all three directions orthogonal to the three
  realized factor spans.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes.
- Repair route if source is unsupported: change the landscape alternative to a
  quantitatively controlled higher-order escape, change to an unnormalized
  homogeneous parameterization, or add a dormant-direction refresh/re-gauging
  operation.  These respectively change the theorem conclusion,
  parameterization, or algorithm, so the smallest controller-level route is
  `/subagent-idea-generator` rather than `/proof-sketch`.

The higher-order nature is explicit.  Choose unit
\((x,y,z)\in\mathcal U_A\times\mathcal U_B\times\mathcal U_C\) with
\(\lambda=\langle T,x\otimes y\otimes z\rangle>0\), which exists since
\(T\ne0\).  For one dormant component set
\[
p(t)=\frac{p^\perp+t x}{\sqrt{1+t^2}},\quad
q(t)=\frac{q^\perp+t y}{\sqrt{1+t^2}},\quad
s(t)=\frac{s^\perp+t z}{\sqrt{1+t^2}},\quad
\alpha(t)=\lambda t^3.
\]
Then
\[
\langle T,p(t)\otimes q(t)\otimes s(t)\rangle
=\lambda t^3+O(t^5)
\]
and hence
\[
F(\theta(t))-F(\theta(0))
=-\tfrac12\lambda^2t^6+O(t^8).
\]
Thus descent exists, but first appears at sixth order in the local parameter
distance, not through the required cubic alternative.

### Blocked obligation W0: individual winner and first-update activation

- Step ID: N/A -- secondary interface not allocated.
- Claim class: per-channel structural nondegeneracy and iterative activation.
- Theorem role: produce one winning representative for every target channel
  from a single initialization.
- Mechanism source: `assump:random-initialization` plus the exact coefficient
  and direction updates; the intended new source is balanced triple-product
  extreme order statistics across \(k\) seeds.
- Source-to-claim adequacy: not yet established.  A covariance or least-singular-
  value bound for the two-mode feature matrix proves collective span, not an
  individual seed with a quantitative three-mode winner gap.  Neither cited
  parent has a source-convention-compatible theorem for this GD update.
- Residual-to-target adequacy: the produced object would be an initial
  correlation gap, while the consumed target is a persistent representative in
  the later PL chart.  No accepted gap-to-persistence bridge exists.
- Key positive/control term or structural source: for residual
  \(R_t=T-\Phi_t\),
  \[
  \alpha_{i,t+1}=\Pi_{[-B_{\mathrm{box}},B_{\mathrm{box}}]}
  \bigl(\alpha_{i,t}+\eta\langle R_t,p_{i,t}\otimes q_{i,t}\otimes s_{i,t}\rangle\bigr),
  \]
  and the data part of the \(p_i\) update is
  \(\eta\alpha_i(I-p_ip_i^\top)A D_{BC}w_{BC,i}\), with cyclic analogues.
- Opposing defect terms: correlated competitor channels, the model-model
  residual, sphere retraction error, an extremely small initial coefficient,
  and lack of a balanced gap in all three modes.
- Closure/dominance/absorption relation: a required but unproved inequality is
  a per-target event giving a seed whose balanced triple product exceeds every
  competitor and all model/retraction defects by an explicit margin that
  remains positive through activation.
- Accumulation behavior / scope compatibility: unsupported until a gap
  amplification recurrence and a finite activation horizon are supplied.
- Obligation locality classification: `sketch/interface defect` if the fatal
  landscape contract is first repaired.
- Noncircular closure status: no noncircular producer currently connects the
  initial order statistic to persistent coverage.
- Entry-state / first-update stress result: the direction update is active at
  time zero only through \(\alpha_0\), while the coefficient update is driven by
  the triple contraction.  The two-mode feature-frame statement in `idea.md`
  does not by itself discharge this exact simultaneous-update trace.
- Baseline conclusion preserved: the proposed source would retain one
  initialization and exact relative-error recovery; no weaker restart target is
  substituted.
- Producer-consumer provenance: intended producer is a missing initialization
  bridge; consumers would be channel growth, persistence, basin entry, and PL
  refinement.
- Null or boundary regime tested: a seed with a well-conditioned collective
  feature frame but no individual balanced winner.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: channel coverage and the no-restart entry theorem remain unproved.
- Repair route if source is unsupported: a same-setting sketch could add a
  balanced triple-product order-statistic bridge, so this item alone would route
  to `/proof-sketch`.

### Blocked obligation P0: off-span and coefficient persistence

- Step ID: N/A -- secondary interface not allocated.
- Claim class: all-time recurrence, boundedness, and basin maintenance.
- Theorem role: preserve winner growth while reducing cyclic off-span leakage
  and preventing cross-component cancellation until basin entry.
- Mechanism source: exact residual algebra and a not-yet-constructed coupled
  potential.
- Source-to-claim adequacy: incomplete.  If
  \(y_{i,t}^{(A)}=R_t\times_2q_{i,t}\times_3s_{i,t}\), then
  \[
  P_{\mathcal U_A^\perp}y_{i,t}^{(A)}
  =-\sum_h\alpha_{h,t}\langle q_{h,t},q_{i,t}\rangle
       \langle s_{h,t},s_{i,t}\rangle
       P_{\mathcal U_A^\perp}p_{h,t}.
  \]
  Hence before retraction the exact leakage numerator contains
  \[
  \bigl(1-\eta\alpha_{i,t}\langle p_{i,t},y_{i,t}^{(A)}\rangle\bigr)
       P_{\mathcal U_A^\perp}p_{i,t}
  +\eta\alpha_{i,t}P_{\mathcal U_A^\perp}y_{i,t}^{(A)}.
  \]
  The data term has no additive off-span forcing, but the displayed
  model-model term does.  This exact forcing cannot be discarded.
- Residual-to-target adequacy: a max-leakage bound alone does not imply that
  the trajectory-produced split representation lies in the regular PL chart;
  coefficient mass and same-channel aggregation must also be transferred.
- Key positive/control term or structural source: the multiplicative data
  factor in the first displayed numerator, conditional on a signed channel
  margin.
- Opposing defect terms: cross-component off-span forcing, retraction remainder,
  possibly adversarial coefficient signs, duplicate-channel competition, and
  cancellation invisible to loss descent.
- Closure/dominance/absorption relation: no concrete potential-drop or
  one-step charge relation currently controls the cumulative cross-component
  forcing.  Projection bounds each coefficient but does not control cancelling
  coefficient mass.
- Accumulation behavior / scope compatibility: `unsupported`; the forcing can
  be persistent and of unknown sign without the missing coupled potential.
- Obligation locality classification: `sketch/interface defect` if the fatal
  landscape contract is first repaired.
- Noncircular closure status: failed; assuming coefficient balance or small
  cross-forcing would assume a generated trajectory property the theorem must
  prove.
- Entry-state / first-update stress result: Haar directions have off-span
  leakage near one when \(r\ll n\), so a small-leakage invariant is not true at
  entry.  It must be reached through a quantitative transition rather than
  assumed from time zero.
- Baseline conclusion preserved: a valid closure would have to hold through
  arbitrary requested accuracy and cannot stop at a positive residual floor.
- Producer-consumer provenance: intended producer is a missing coupled
  potential; consumers are channel persistence, basin entry, and PL refinement.
- Null or boundary regime tested: duplicated components with cancelling or
  misoriented coefficients and large initial off-span mass.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: noncircular basin entry is unavailable.
- Repair route if source is unsupported: add and verify a same-setting coupled
  potential interface in a revised sketch, or route to idea repair if such a
  potential requires regularization, refresh, or a new primitive condition.

### Blocked obligation B0: trajectory-produced representation to PL target

- Step ID: N/A -- secondary interface not allocated.
- Claim class: basin membership, local coercivity/PL, and same-target transfer.
- Theorem role: convert trajectory controls into geometric refinement and the
  final relative-Frobenius guarantee.
- Mechanism source: a direct current-notation Jacobian lower bound near a
  regular true representation, using realized cyclic Khatri--Rao conditioning.
- Source-to-claim adequacy: plausible only for a regular chart; no cited local
  ALS theorem proves the present normalized redundant GD interface.
- Residual-to-target adequacy: unresolved.  The produced trajectory object may
  split a target coefficient among many representatives or include dormant and
  cancelling components.  The consumed PL chart requires an explicit active
  representative margin and a bound from cluster aggregates to the same tensor
  target in Frobenius norm.
- Key positive/control term or structural source: the minimum singular value of
  the active CP Jacobian, expected to be inverse-polynomial from pair-feature
  near-isometry and factor conditioning.
- Opposing defect terms: quadratic chart remainder, permutation/sign ambiguity,
  redundant null directions, coefficient splitting, and unmatched residual
  components.
- Closure/dominance/absorption relation: the chart remainder must be smaller
  than a fixed fraction of the Jacobian margin, and the trajectory certificate
  must imply every chart condition with a positive representative coefficient
  threshold.  Neither relation has a producer.
- Accumulation behavior / scope compatibility: PL refinement would be
  contractive once entry is legal; entry itself is unsupported.
- Obligation locality classification: `sketch/interface defect` if the fatal
  landscape contract is first repaired.
- Noncircular closure status: failed; defining the coverage neighborhood by PL
  validity and then asserting trajectory entry into that neighborhood is
  circular without an independent chart certificate.
- Entry-state / first-update stress result: random initialization is not in the
  local chart, so the local theorem cannot be consumed before the missing entry
  bridge.
- Baseline conclusion preserved: any valid PL bridge must refine to exact zero
  residual as \(\epsilon\downarrow0\), not only to a fixed local remainder.
- Producer-consumer provenance: intended producer is a missing regular-chart
  bridge; consumers are PL contraction, rate specialization, and final
  relative-error assembly.
- Null or boundary regime tested: all coefficient mass for a channel split into
  pieces below the asserted representative threshold, or exact tensor
  cancellation among redundant components.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: local PL cannot be transferred to the actual trajectory.
- Repair route if source is unsupported: add a cluster-aggregate-to-regular-
  representative bridge in a revised sketch; if the dynamics cannot generate
  the required coefficient margin without a new procedure, route to idea
  repair.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Global gradient/negative-curvature/dormant-cubic certificate | None | Exact normalized objective, compact domain, primitive instance assumptions | All-dormant orthogonal-span critical point has zero gradient, PSD Hessian, and zero cubic target coupling; this defect is fixed by the parameterization and is not controlled by smoothing or rank | Exact target residual is \(T\), so there is no surrogate bridge to rescue the claim | No valid relation; first descent is sixth order | No positive cubic margin exists | Landscape theorem and any escape-based trajectory argument | `idea/theorem-contract defect`: current certificate is false |
| Balanced winner event and first-update activation | None | Haar/Rademacher initialization, \(k=r^{3/2}\operatorname{polylog}(r)\), realized pair-feature control, exact update formulas | Collective feature conditioning is potentially controlled; individual balanced gaps, model defect, and retraction error are uncontrolled | Initial correlation gap has no accepted bridge to a persistent representative | Missing gap-versus-defect and activation inequality | Intended source is triple-product extreme order statistics, not yet derived | Channel growth, persistence, basin entry | Missing individual producer and source-compatible first-update bridge |
| All-time leakage/coefficient persistence certificate | None | Exact residual decomposition, coefficient box, prospective winner margin | Data off-span forcing is multiplicative; model-model cross-forcing, cancellation, and cumulative sign are uncontrolled | Leakage alone does not transfer split coefficients into the regular target chart | Missing coupled potential and one-step charge relation | Intended source is channel margin plus realized KR slack; insufficient without the potential | Basin entry and PL refinement | Persistent cross-forcing has no finite-budget control |
| Regular-chart PL certificate consumed by the trajectory | None | Realized Khatri--Rao conditioning and prospective active representatives | Jacobian margin may be controlled; split/cancelling mass, quadratic remainder, and chart mismatch are uncontrolled | Missing same-target bridge from trajectory cluster aggregates to an active true-representation chart in Frobenius norm | Missing representative-mass threshold and remainder domination | Intended source is an active-Jacobian singular-value margin | PL refinement and final theorem | Produced and consumed representation objects are not connected |
| Explicit polynomial entry/refinement and probability bridge | None | Primitive polynomial parameter ranges and separate random sources | Every degree depends on the missing winner, persistence, landscape, and PL margins | Final consumed interface is relative Frobenius error for the same \(T\) | Cannot specialize absent valid technical thresholds | None | Public theorem | Quantitative producer chain is absent |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Realized good-instance controls | Candidate direct Gaussian derivation; no step allocated | landscape, initialization, PL, rates | outer \(1-r^{-10}\) instance claim | primitive instance assumptions -> unallocated bridge -> all later blocks | derived | Allocation is stopped by the fatal landscape defect; this output alone cannot repair it |
| Global landscape trichotomy | None | landscape theorem and possible escape analysis | first formalized-goal conjunct | no legal path | derived | Exact all-dormant counterexample |
| Per-channel winner/activation certificate | None | persistence and basin entry | initialization-success claim | `assump:random-initialization` -> missing balanced order-statistic/first-update bridge | derived | Collective feature span is not an individual producer |
| Coupled persistence invariant | None | basin entry and PL | no-restart trajectory conclusion | winner -> missing potential -> basin | derived | Cross-component forcing has no noncircular budget |
| PL-chart membership for the trajectory | None | PL contraction and rate bridge | relative-error refinement | persistence -> missing same-target chart bridge -> PL | derived | Produced split representation is not matched to consumed regular chart |
| Explicit public rates and probability conversion | None | final assembly | polynomial runtime and relative error | all preceding outputs -> missing specialization bridge | derived | Required upstream margins do not exist |

## Sketch Steps

None

## Dependency Notes

No dependency graph is allocated, so there is no accepted acyclic step chain.
The diagnostic causal order is instance controls before landscape and
initialization analysis; winner activation before persistence; persistence
before PL-chart entry; and PL entry before refinement and rate specialization.
The landscape obstruction is independent and already invalidates the
conjunctive target.  Allocating the remaining obligations as future proof steps
would incorrectly classify missing theorem-critical sources as step-local.

## Blockers

1. **Idea/theorem-contract defect -- the required global trichotomy is false in
   the exact parameterization.**  The all-dormant, three-mode-orthogonal state
   constructed in obligation L0 is a non-global interior critical point with
   positive-semidefinite Hessian and no cubic escape coefficient.  A smooth
   descending path exists only at sixth order.  Smoothing, Khatri--Rao
   near-isometry, and larger \(k\) do not exclude the state because the
   landscape statement quantifies over the full domain \(\mathcal D\).
2. **Smallest repair changes the approved theorem contract.**  Allowing a
   quantitatively controlled higher-order flat escape weakens the landscape
   conclusion; using unnormalized homogeneous factors changes the
   parameterization and iteration; and refreshing dormant directions changes
   the algorithm.  None is permitted in `/proof-sketch` under unchanged
   `setting.md`.
3. **Secondary sketch/interface defects remain if blocker 1 is repaired
   upstream.**  The current materials do not yet supply an individual balanced
   winner/first-update bridge, a finite-budget potential controlling
   model-model off-span forcing and coefficient cancellation, or a same-target
   transfer from the trajectory's redundant representation to a regular PL
   chart.  These cannot be hidden as generated assumptions.
4. **Explicit rates cannot be instantiated without those sources.**  Positive
   inverse-polynomial landscape, winner, persistence, basin, and PL margins are
   prerequisites for the separate instance/initialization probability
   conversion and the claimed polynomial entry/refinement horizons.

Accordingly this attempt has no viable target-preserving sketch.  The fatal
blocker's smallest route is `/subagent-idea-generator` with a parameterization,
algorithm, or landscape-certificate repair explicitly approved as a new idea.
