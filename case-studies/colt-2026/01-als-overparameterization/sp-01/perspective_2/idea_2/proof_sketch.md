# Proof Sketch

## Formalized Setting

This branch uses the exact homogeneous factor protocol in
`perspective_2/idea_2/setting.md`.  The tensor is
\[
T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j,
\qquad
\Phi(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,
\qquad
F=\tfrac12\|T-\Phi\|_F^2.
\]
Each nonzero component is balanced after a Euclidean gradient trial by the
tensor-preserving map \(\mathcal B\); a component with any zero factor is
mapped to the joint-zero triple.  The finite tape, probationary/protected
labels, epoch resets, one-at-a-time residual-score promotion, dyadic capped
Armijo search, final pruning, and protected-only refinement are all part of the
fixed algorithm, not proof choices.

The primitive assumptions are `assump:base-conditioning`,
`assump:base-kr-isometry`, `assump:gaussian-smoothing`,
`assump:dimension-regime`, `assump:smoothing-scale`,
`assump:perturbation-margin`, `assump:rank-regime`, `assump:random-tape`, and
`assump:accuracy-range`.  In particular,
\[
k=\left\lceil C_{\mathrm{rank}}r^{3/2}(\log r)^2\right\rceil,
\quad R_{\max}=8\kappa,
\quad P=16nrk\kappa\rho^{-1},
\quad H=\lceil P^{120}\rceil,
\quad S=\lceil P^{20}\rceil.
\]

## Formalized Goal

The target is the exact conditional refresh-reachable theorem in
`setting.md`: derive a once-drawn instance event with probability at least
\(1-r^{-10}\), then a conditional tape-success event with probability at least
\(1-r^{-10}\), such that the fixed finite protocol never line-searches to
failure, has inverse-polynomial accepted step sizes, constructs a reachable
tube and a same-target regular protected chart, promotes an injective
noncancelling representative system, and reaches arbitrary relative Frobenius
accuracy after protected-only refinement.  Every generated event, channel
assignment, Lyapunov decrease, cap-inactivity statement, chart membership, PL
inequality, and convergence statement must be derived rather than assumed.

The advertised rank is \(U(r)=O(r^{3/2}(\log r)^2)=o(r^2)\), with separate
instance/tape probabilities, finite burn-in independent of \(\epsilon\), and
an additional polynomial-times-\(\log(1/\epsilon)\) refinement horizon.

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

No target-preserving proof roadmap is selected.  Homogeneous coordinates do
repair the prior branch's dormant cubic mismatch, but the exact equality-based
probationary cap rule is incompatible with the required inverse-polynomial
lower bound on every accepted dyadic step.

The obstruction is local and protocol-level.  Whenever the burn-in mechanism
does what it is designed to do -- a residual-correlated probationary component
grows through \(g=\theta\) while its target correlation remains positive -- its
radius continues outward toward the cap \(2\theta\), because its tensor
contribution is only \(O(\|T\|_F P^{-80})\).  The common line-search step is then
bounded by the remaining cap gap.  The largest feasible dyadic step consumes a
constant fraction of that gap, so the gap and the accepted step shrink
geometrically.  The component generically never lands exactly at the cap, and
the protocol parks only at exact equality.  With \(H=P^{120}\), the resulting
accepted step is exponentially smaller than every fixed \(P^{-d_{\mathrm{step}}}\).

This is not repaired by the Armijo condition: Armijo can only make the accepted
step smaller.  Avoiding the obstruction would require parking when the cap
becomes active, projecting to the cap, adding a cap margin, or dropping the
inverse-polynomial step requirement.  Those are changes to the fixed algorithm
or theorem contract, so the smallest route is idea repair rather than a
same-setting decomposition repair.

For diagnostic continuity, a repaired proof would need the following causal
chain, in this order:

1. Gaussian smoothing to realized normalized pair/triple-Gram and norm bounds;
2. exact balanced zero-residual representation and cap membership;
3. homogeneous tape anti-concentration and first-update cubic activation;
4. a cap-aware line-search/globalization interface;
5. sequential residual diversity and injective channel promotion;
6. a reset-budgeted Lyapunov recurrence with protected persistence,
   noncancellation, and off-span control;
7. reachable-tube and same-target regular-chart entry;
8. protected-only PL refinement, pruning transfer, exact zero-floor closure,
   and explicit rate/probability aggregation.

No step in this diagnostic chain is accepted below because item 4 fails for the
fixed protocol.

## Rate Objectives

- Objective: realized instance and representation scales.
  - Objective type: structural-parameter explicit and confidence-explicit.
  - Exposed variables: \(n,r,k,\kappa,\rho\), \(P\), the realized \(\|T\|_F\),
    and the confidence parameter \(r^{-10}\).
  - Hidden constants may depend on: fixed exponents \(c_0,c_\rho\) and the
    numerical margins in `setting.md`.
  - Hidden constants may not depend on: \(n,r,k,\kappa,\rho,\epsilon\), the
    bases, the realized instance, or the tape.
  - Fixed quantities: \(c_0,c_\rho,C_{\mathrm{dim}},C_{\mathrm{rank}}\) and
    the protocol exponents 30, 59, 80, 120, and 20.
  - Probability mode: high probability over the once-drawn Gaussian instance.
  - Horizon mode: static finite event.
  - Norm mode: operator norms for Gram deviations and Frobenius norm for
    \(T\) and the residual.
  - Required bridge or simplification obligations: derive simultaneous
    normalized perturbation bounds, triple-Gram comparison, nonzero target, and
    \(\tau_j^{1/3}<R_{\max}\), with exact union-bound accounting.
  - Baseline invariance obligations: preserve the exact balanced representation
    and zero residual, not merely a positive approximation floor.

- Objective: tape activation, promotion, and burn-in.
  - Objective type: fixed-horizon, structural-parameter explicit,
    confidence-explicit, and numerical-error explicit.
  - Exposed variables: \(n,r,k,\kappa,\rho^{-1}\), \(P,H,S,M\), the tape block
    count, \(a_{\mathrm{seed}},a_{\mathrm{act}},\delta,\theta\), and separate
    tape confidence \(r^{-10}\).
  - Hidden constants may depend on: only fixed exponents and protocol margins.
  - Hidden constants may not depend on: \(n,r,k,\kappa,\rho,\epsilon\), the
    chosen bases, the realized tensor, or the tape.
  - Fixed quantities: all protocol exponents and numerical constants.
  - Probability mode: conditional high probability over the one finite tape for
    every instance in the derived instance event.
  - Horizon mode: fixed burn-in of at most \(SH\) inner iterations and at most
    \(S\) epoch boundaries.
  - Norm mode: residual score, balanced component radius, tensor Frobenius
    contribution, and the explicit reset budget.
  - Required bridge or simplification obligations: derive per-channel proposal
    anti-concentration, first-update growth, promotion diversity, line-search
    lower bounds, cap inactivity, persistence, and all accumulated refresh
    defects without treating them as tape-success assumptions.
  - Baseline invariance obligations: retain one finite tape, no external
    restart, and exact arbitrary-accuracy recovery after burn-in.

- Objective: protected chart and refinement.
  - Objective type: fixed-horizon, regularity-explicit,
    structural-parameter explicit, confidence-explicit, and numerical-error
    explicit.
  - Exposed variables: \(n,r,k,\kappa,\rho^{-1},\epsilon\), the chart radius,
    PL exponent \(d_{\mathrm{PL}}\), step exponent \(d_{\mathrm{step}}\), and
    the pruning/refresh scale \(P^{-59}\).
  - Hidden constants may depend on: fixed exponents and numerical margins only.
  - Hidden constants may not depend on: \(n,r,k,\kappa,\rho,\epsilon\), the
    instance, or the tape.
  - Fixed quantities: protocol constants and fixed exponents.
  - Probability mode: conditional on the derived instance and tape events.
  - Horizon mode: post-burn-in finite horizon
    \(Q_{\mathrm{ref}}\log(1/\epsilon)\).
  - Norm mode: protected Euclidean gradient and relative Frobenius residual.
  - Required bridge or simplification obligations: same-target chart entry,
    pruning residual domination by the chart radius, line-search lower bound,
    PL contraction, chart preservation, and exact probability/rate conversion.
  - Baseline invariance obligations: no positive residual floor as
    \(\epsilon\downarrow0\).

The line-search objective is infeasible under the fixed cap rule, so no positive
\(d_{\mathrm{step}}\) can be exported.

## Assumption Provenance Objectives

The intended proof would need to derive, in dependency order:

- the simultaneous realized norm, conditioning, pair-Gram, triple-Gram, and
  \(T\ne0\) event from the five static data assumptions;
- exact balanced zero-residual representation and cap membership;
- a fresh-tape anti-concentration event for every unresolved residual block;
- first-update cubic growth and a positive score recurrence for probationary
  components;
- existence and lower bound of every accepted dyadic line-search step, including
  near-cap states and protected cap inactivity;
- an injective channel assignment and residual diversity under promotion;
- a reset-budgeted Lyapunov decrease, protected persistence, noncancellation,
  coefficient/cap control, and off-span recurrence;
- reachable-tube membership and a same-target active chart;
- a protected Jacobian/PL inequality, pruning transfer, and no-floor refinement.

The line-search lower-bound bridge is not derivable from the fixed protocol at
the near-cap state below.  Consequently no generated invariant may be moved
into a theorem-facing admissibility package, and no step graph is allocated.

## Mechanism-Source And Boundary Stress

### Blocked obligation C0: inverse-polynomial line search versus equality-only cap parking

- Step ID: N/A -- blocked before step allocation.
- Claim class: fixed-step globalization, cap inactivity, and quantitative
  trajectory admissibility.
- Theorem role: required protocol property in the formalized goal and the
  quantitative source for all burn-in and refinement recurrences.
- Mechanism source: the protocol's dyadic backtracking and caps
  \(g_i\le2\theta\) for probationary components and \(g_i\le R_{\max}\) for
  protected components.
- Source-to-claim adequacy: failed for the probationary cap.  For a balanced
  component \((x,y,z)=g(u,v,w)\), write
  \[
  s=\langle R,u\otimes v\otimes w\rangle,
  \qquad
  \nabla_xF=-g^2(R\mathbin{\times_2}v\mathbin{\times_3}w),
  \]
  with cyclic formulas.  On a positive-growth path, the balanced radius after
  a sufficiently small raw trial satisfies
  \[
  g^+=g+\lambda g^2s+O(\lambda^2g^3L),
  \qquad s>0,
  \]
  where \(L\) is the explicit polynomial smoothness bound on the capped
  domain.  Near \(2\theta\), the leading radial speed
  \(b(g)=g^2s+O(\eta g^3L)\) is bounded below by a positive inverse
  polynomial whenever the component remains residual-correlated.
- Residual-to-target adequacy: the consumed target is the actual probationary
  radius cap, not a surrogate radius.  The protocol has no margin variable that
  transfers a near-cap state to the exact equality state at which parking is
  allowed.  Thus an accepted-step lower bound cannot be inferred from the
  tensor contribution scale alone.
- Key positive/control term or structural source: the homogeneous radial term
  \(\lambda g^2s\), which is exactly the term the cubic-growth and promotion
  obligations require to remain positive.
- Opposing defect terms: cap slack \(d=2\theta-g\), second-order retraction/
  balancing error, common-step coupling to other components, and the Armijo
  restriction.  Armijo can only reduce the feasible step further.
- Closure/dominance/absorption relation: when the cap is active and the
  Armijo condition is otherwise satisfied, feasibility gives
  \[
  \lambda\le d/b(g).
  \]
  The largest dyadic trial then obeys
  \[
  \frac{d}{2b(g)}<\lambda\le\frac{d}{b(g)}
  \quad\Longrightarrow\quad
  0<d^+\le\frac d2
  \]
  up to a fixed constant-factor perturbation from the quadratic remainder.
  The protocol parks only when \(d=0\), so generic trajectories with
  \(d>0\) repeat this geometric cap approach.  After \(m\) such accepted
  steps, \(\lambda_m\le C2^{-m}\lambda_0\), which is below every fixed
  \(P^{-d_{\mathrm{step}}}\) once \(m>O(d_{\mathrm{step}}\log P)\).
- Accumulation behavior / scope compatibility: unsupported under the declared
  \(H=P^{120}\) horizon.  The cap slack is a persistent one-sided state
  variable, and equality-only parking supplies no finite-budget relation.  The
  accepted step can become exponentially small while all updates remain
  formally feasible.
- Obligation locality classification: `idea/theorem-contract defect`.
- Noncircular closure status: direct protocol obstruction; it does not assume a
  tube, PL region, or convergence conclusion.
- Entry-state / first-update stress result: the burn-in is required to create
  precisely a positive-growth component.  In the scalar aligned diagnostic
  (and in an open near-aligned perturbation), while \(g^3\ll\|T\|_F\),
  \(s\) remains positive and the radius moves outward.  Once \(g\) reaches
  \(\theta\) with time left in the epoch, the same source remains active near
  \(2\theta\); the line search approaches the cap instead of parking.
- Baseline conclusion preserved: the exact balanced representation and
  arbitrary relative accuracy are not weakened; the obstruction prevents the
  required quantitative path to them.
- Producer-consumer provenance: no valid producer exports
  \(\lambda\ge P^{-d_{\mathrm{step}}}\).  All promotion, Lyapunov, tube, chart,
  and refinement blocks consume this missing interface.
- Null or boundary regime tested: a probationary component with
  \(\theta<g<2\theta\), positive residual score, and outward radial gradient;
  equality \(g=2\theta\) is not reached generically by a dyadic trial.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes.  Either the positive-growth/promotion mechanism is absent, or
  the accepted-step lower bound fails on the path it creates.
- Repair route if source is unsupported: park whenever the cap is the active
  constraint (for example when the maximal Armijo trial violates the cap),
  project to the cap and remove the component from the common search, introduce
  a fixed cap margin, or remove the universal inverse-polynomial step claim.
  Each changes the fixed algorithm or theorem contract; route to
  `/subagent-idea-generator`.

#### Explicit scalar stress calculation for C0

Take a modewise-orthogonal good-instance limit and one component aligned with a
target channel, so the residual score is \(s=\tau_j-g^3+o(1)>0\) for
\(g\le2\theta\).  The balanced update has
\[
g^+=g+\lambda g^2(\tau_j-g^3)+O(\lambda^2g^3L).
\]
The protocol parameters give polynomial bounds independent of \(\epsilon\):
\[
\|T\|_F\le C P^4,
\qquad
\|T\|_F\ge cP^{-3},
\qquad
\eta\ge cP^{-11},
\qquad
\delta=\|T\|_F^{1/3}P^{-40},
\qquad
\theta=\|T\|_F^{1/3}P^{-80/3}.
\]
For a qualifying score \(s\ge\|T\|_F P^{-30}\), the time needed by the
positive radial recurrence to move from \(\delta\) to \(\theta\) is at most
\(P^{85}) after enlarging an absolute constant, while the additional time
from \(\theta\) to \(2\theta\) is at most \(P^{72}).  Both are smaller than
\(H=P^{120}).  Thus the very cubic-growth source needed for promotion leaves
many cap-constrained iterations in the same epoch.  If the residual score turns
nonpositive before this transition, the claimed first-update growth/promotion
interface fails instead.  This is a source-level disjunction, not a future
proof-step choice.

For a generic continuous instance/tape, the equation that a dyadic trial lands
exactly at \(g=2\theta\) has probability zero.  On the open set where the
outward score remains positive, the remaining gap therefore halves (up to a
fixed factor) for \(\Omega(H)\) accepted steps.  The minimum accepted step is
at most \(2^{-\Omega(P^{120})}\), contradicting any fixed inverse-polynomial
lower bound.  A common step shared by all components does not help: one
near-cap probationary component imposes the same upper bound on the global
trial, and the Armijo test can only lower it.

### Blocked obligation J0: joint-zero and one-factor-zero activation

- Step ID: N/A -- secondary interface.
- Claim class: entry-state activation and generated-output flow.
- Theorem role: ensure the finite tape actually moves dormant probationary
  components and handles degenerate tentative triples.
- Mechanism source: the scheduled epoch reset and the homogeneous cubic identity
  \[
  F(\Phi+t^3u\otimes v\otimes w)-F(\Phi)
  =-t^3\langle R,u\otimes v\otimes w\rangle+\tfrac12t^6.
  \]
- Source-to-claim adequacy: plausible for a jointly zero probationary
  component after a reset, but not supplied for the exact balanced Euclidean
  update and common line search.
- Residual-to-target adequacy: a fresh tape triple is a proposal object; the
  consumed target is a protected representative assigned to an original channel.
  The score-to-assignment bridge is missing.
- Key positive/control term or structural source: cubic residual contraction at
  a joint-zero component and the independent next tape block.
- Opposing defect terms: a one-factor-zero tentative triple is mapped to zero
  and parked; negative score proposals can repeatedly reset; cap-induced small
  steps can prevent the intended activation horizon.
- Closure/dominance/absorption relation: no finite recurrence proves that a
  positive proposal reaches \(\theta\) before the epoch boundary while the cap
  interface remains quantitative.
- Accumulation behavior / scope compatibility: reset count is finite, but the
  number of near-cap tiny steps is not charged by the displayed refresh budget.
- Obligation locality classification: `sketch/interface defect` conditional on
  cap-protocol repair.
- Noncircular closure status: reset is a legal primitive protocol transition,
  but promotion success and persistence are not produced by it alone.
- Entry-state / first-update stress result: at joint zero all Euclidean
  gradients vanish between resets; at one-factor zero balancing returns joint
  zero.  Only the scheduled fresh tape can activate the probationary component.
- Baseline conclusion preserved: no external restart is introduced; the tape
  remains one finite random object.
- Producer-consumer provenance: reset producer -> fresh proposal -> missing
  growth/assignment producer -> promotion and persistence consumers.
- Null or boundary regime tested: joint zero, one-factor zero, negative score,
  and a reset immediately before an epoch boundary.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: no channel proposal reaches the protected chart within the claimed
  burn-in.
- Repair route if source is unsupported: cap-aware parking plus a proved
  activation recurrence; otherwise a new protocol/idea is required.

### Blocked obligation W0: tape anti-concentration and first-update growth

- Step ID: N/A -- secondary interface.
- Claim class: random structural nondegeneracy and cubic activation.
- Theorem role: produce a residual-correlated probationary component in each
  fresh epoch.
- Mechanism source: independent Haar triples in the next tape block and the
  degree-three residual score.
- Source-to-claim adequacy: a generic degree-three anti-concentration bound can
  give a positive score for a nonzero residual, but it does not by itself give a
  target-channel assignment or persistence under protected components.
- Residual-to-target adequacy: the score's produced rank-one direction may be a
  mixed residual direction; no explicit residual decomposition transfers it to
  an unresolved target channel.
- Key positive/control term or structural source: \(s_i=\langle R,u_i\otimes
  v_i\otimes w_i\rangle\) and the radial derivative \(g_i^2s_i\).
- Opposing defect terms: residual refresh error, protected approximation,
  competitor channels, angular drift, balancing remainder, and the tiny seed
  scale.
- Closure/dominance/absorption relation: missing inequality coupling score,
  angular correlation, radius growth, and the epoch horizon.
- Accumulation behavior / scope compatibility: finite tape blocks, but no
  proved per-epoch success probability conditional on the adaptively generated
  residual.
- Obligation locality classification: `sketch/interface defect` if C0 is
  repaired.
- Noncircular closure status: fresh-tape independence is noncircular, but the
  residual's unresolved-channel mass is a generated property without a producer.
- Entry-state / first-update stress result: at \(g=\delta\), the homogeneous
  radial signal is cubic in the contribution and is active only when the score
  is positive; at joint zero it is inactive until reset.
- Baseline conclusion preserved: one finite tape and no external restart must
  remain.
- Producer-consumer provenance: tape block -> score event -> growth -> promotion
  -> channel diversity.
- Null or boundary regime tested: residual with mixed channels, residual after
  a refresh defect, and a negative-score fresh triple.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: an epoch can make no promotion and no certified Lyapunov decrease.
- Repair route if source is unsupported: add an explicit unresolved-channel
  residual decomposition and a current-coordinate anti-concentration lemma.

### Blocked obligation D0: sequential residual diversity and injective promotion

- Step ID: N/A -- secondary interface.
- Claim class: structural channel assignment and noncancellation.
- Theorem role: ensure protected components cover distinct target channels.
- Mechanism source: largest residual score among probationary components after
  protected components have evolved for one epoch.
- Source-to-claim adequacy: not established.  A rank-one score maximizer can be
  a mixture or a duplicate of a protected channel; the cyclic KR bound controls
  aggregate target conditioning, not score-level injectivity.
- Residual-to-target adequacy: the promoted tensor is consumed as a protected
  representative of one true channel; the exact residual-score object is not
  shown to be within a target-channel chart at the required scale.
- Key positive/control term or structural source: residual subtraction after
  protected updates, if those updates can fit the promoted channel.
- Opposing defect terms: protected components are initially only radius
  \(\theta\), duplicate scores remain positive, reset perturbations, and mixed
  channel score ties/near-ties.
- Closure/dominance/absorption relation: no one-step inequality proves that a
  promoted component removes enough unresolved target mass before the next
  promotion.  The fixed score threshold is far below a channel-scale margin.
- Accumulation behavior / scope compatibility: promotion count is finite, but
  duplicate or mixed promotions consume the same budget and can leave channels
  unresolved.
- Obligation locality classification: `sketch/interface defect` conditional on
  C0 repair.
- Noncircular closure status: an injective assignment cannot be assumed as part
  of the reachable tube; it must be produced from the residual decomposition.
- Entry-state / first-update stress result: the first promotion contributes only
  \(O(\|T\|P^{-80})\), so residual diversity is not automatic at the next epoch.
- Baseline conclusion preserved: all \(r\) channels and exact recovery remain
  required; stopping after \(M>r\) labels is not a substitute.
- Producer-consumer provenance: protected residual reduction -> score assignment
  -> injective promotion -> persistence and PL chart.
- Null or boundary regime tested: duplicate protected directions, a mixed
  residual rank-one maximizer, score ties, and an unresolved weak channel.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: protected components can fail to span the true tensor target.
- Repair route if source is unsupported: add a target-aware score decomposition,
  explicit exclusion of protected channel cones, or change the promotion rule.

### Blocked obligation L1: reset-budgeted Lyapunov decrease

- Step ID: N/A -- secondary interface.
- Claim class: epochwise descent, finite-budget accumulation, and reachable-tube
  maintenance.
- Theorem role: certify that every no-promotion epoch decreases a nonnegative
  \(\mathcal L\) by \(\|T\|_F^2P^{-d_{\mathrm{dec}}}\) after refresh charging.
- Mechanism source: Armijo decrease on active coordinates plus the deterministic
  tensor path-length budget
  \(B_{\mathrm{refresh}}\le20\|T\|_FP^{-59}\).
- Source-to-claim adequacy: incomplete.  The refresh budget bounds tensor changes,
  but no explicit Lyapunov function and no lower bound on active gradient mass
  outside the chart are supplied.
- Residual-to-target adequacy: a loss decrease is a scalar objective control;
  the consumed output is an injective channel/tube certificate.  The coupling
  from loss to unresolved channel mass is missing.
- Key positive/control term or structural source: Armijo's
  \(-\lambda\|\nabla_{\mathcal U}F\|^2/4\) term when a valid \(\lambda\) exists.
- Opposing defect terms: reset loss increase, cap-induced tiny steps, parked
  components, flat residual directions, and mixed/cancelling factors.
- Closure/dominance/absorption relation: a prospective reserve could use
  \(\mathcal L=F+C\|T\|B_{\mathrm{remaining}}\), but the required epoch decrement
  and the relation from \(\mathcal L\) to unresolved target mass are not proved.
- Accumulation behavior / scope compatibility: refresh defects are finite and
  summable by the displayed budget, but line-search slack is persistent and is
  not included in that budget.
- Obligation locality classification: `sketch/interface defect` conditional on
  C0 repair.
- Noncircular closure status: no Lyapunov producer is defined; calling the tube
  a Lyapunov sublevel set would be circular.
- Entry-state / first-update stress result: an all-probationary fresh state has
  tiny objective contribution, so Armijo decrease can be arbitrarily small when
  scores cancel.
- Baseline conclusion preserved: a finite burn-in loss bound cannot replace
  exact post-burn-in arbitrary-accuracy refinement.
- Producer-consumer provenance: inner Armijo and refresh accounting -> epoch
  Lyapunov -> tube and promotion consumers.
- Null or boundary regime tested: all scores below threshold, one cap blocker,
  and a reset immediately after a loss decrease.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: no finite argument forces promotion or chart entry within S epochs.
- Repair route if source is unsupported: define and prove a target-coupled
  potential with a cap-aware step interface; otherwise revise the protocol.

### Blocked obligation P1: protected persistence, cap inactivity, and noncancellation

- Step ID: N/A -- secondary interface.
- Claim class: all-time invariant, boundedness, support, and recurrence closure.
- Theorem role: keep promoted components below \(R_{\max}\), preserve their
  channel identities, and control off-span leakage and coefficient signs.
- Mechanism source: residual-aligned protected gradients and realized cyclic
  KR slack.
- Source-to-claim adequacy: incomplete.  KR slack is a static feature
  conditioning source, not a direct bound on dynamic duplicate competition or
  cancellation.
- Residual-to-target adequacy: a protected tensor with small residual score is
  not necessarily a target-aligned factor triple; no same-target bridge is given.
- Key positive/control term or structural source: channel residual contraction
  and homogeneous radial sign when a protected representative is aligned.
- Opposing defect terms: cross-component forcing, angular leakage, duplicate
  protected components, coefficient sign changes, reset remnants, and cap
  boundary pressure.
- Closure/dominance/absorption relation: no concrete one-step potential drop or
  projection relation controls all these terms.  The protected cap cannot be
  parked, so an outward cap interaction is a protocol failure rather than a
  harmless probationary reset.
- Accumulation behavior / scope compatibility: unsupported all-time recurrence;
  persistent forcing is not shown summable or contractive.
- Obligation locality classification: `sketch/interface defect` conditional on
  C0 repair.
- Noncircular closure status: assuming protected correctness or cap inactivity
  would assume the generated invariant being proved.
- Entry-state / first-update stress result: the first promoted component has
  radius only \(\theta\), while its target channel is not yet fitted; cap
  inactivity must be proved through the whole transition.
- Baseline conclusion preserved: protected-only refinement must still reach zero
  residual, not a stopped or capped approximation.
- Producer-consumer provenance: promotion -> persistence invariant -> protected
  chart and PL consumers.
- Null or boundary regime tested: protected outward cap pressure, duplicate
  promotion, cancelling pair, and one-factor-zero protected tentative triple.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: line-search failure or loss of target channel coverage.
- Repair route if source is unsupported: change protected cap protocol or add a
  proved signed cluster potential; a new primitive separation assumption would
  be an idea-level change.

### Blocked obligation B1: reachable tube, same-target chart, PL, and pruning

- Step ID: N/A -- secondary interface.
- Claim class: basin membership, local coercivity/PL, pruning transfer, and
  exact/no-floor convergence.
- Theorem role: connect the protected trajectory to the exact balanced true
  representation and provide the final contraction.
- Mechanism source: a current-notation balanced CP Jacobian lower bound from
  realized triple-Gram conditioning, plus a produced signed cluster assignment.
- Source-to-claim adequacy: local geometry is plausible only after the cluster
  assignment and persistence outputs exist; no cited local ALS theorem matches
  this homogeneous GD map.
- Residual-to-target adequacy: final pruning changes the tensor by at most
  \(8k a_{\mathrm{act}}\), but the chart radius and protected target mismatch
  are unspecified.  The displayed \(P^{-59}\) refresh budget alone does not
  prove the pruned state remains in the consumed chart.
- Key positive/control term or structural source: active balanced Jacobian
  singular value and the exact true representation inside the cap.
- Opposing defect terms: split coefficient mass, permutation/sign symmetry,
  nonlinear chart remainder, pruning perturbation, residual refresh budget, and
  dormant frozen components.
- Closure/dominance/absorption relation: need an explicit chart radius larger
  than every pruning/refresh residual and a protected-step contraction preserving
  that radius.  No such inequality is supplied.
- Accumulation behavior / scope compatibility: PL contraction is geometric only
  after valid entry; before entry, chart exit and pruning defects are not
  controlled.
- Obligation locality classification: `sketch/interface defect` conditional on
  C0 and P1 repair.
- Noncircular closure status: defining \(\mathcal U_{\mathrm{reach}}\) as the
  PL chart and then asserting all generated states lie there is circular.
- Entry-state / first-update stress result: fresh tape states and joint-zero
  probationary states are outside the active chart; reset and promotion must
  produce entry explicitly.
- Baseline conclusion preserved: no-floor \(\epsilon\downarrow0\) refinement
  remains mandatory after pruning.
- Producer-consumer provenance: E0/W0/D0/L1/P1 -> chart membership -> PL ->
  pruning and final refinement.
- Null or boundary regime tested: exact zero frozen probationary components,
  pruning at the chart boundary, cancelling protected pairs, and \(\epsilon\)
  tending to zero.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: protected GD may converge to a non-target stationary or retain a
  fixed pruning residual.
- Repair route if source is unsupported: add a same-target cluster chart and
  explicit pruning absorption; otherwise revise the idea/protocol.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Realized instance event \(\mathcal E_{\mathrm{inst}}\) | Candidate Gaussian normalization bridge | Base conditioning, static KR slack, Gaussian perturbations, dimension and smoothing margin | Gaussian perturbation and normalization errors are controllable in principle; simultaneous tails and small-column branches are unallocated | Same realized factors are consumed; each normalization residual must be dominated by the \(1/64\) slack | Missing explicit perturbation inequalities and confidence union bound | Static \(1/64\) margin and \(\rho\kappa^6\) condition | Z0, W0, D0, B1, rates | No producer step under blocked roadmap |
| Exact balanced representation inside cap | Z0 direct linear-algebra bridge | E0, true normalized factors, triple-Gram comparison | Possible coefficient-to-\(\|T\|\) scaling error; no uncontrolled tensor residual once membership is proved | Exact equality to the same \(T\), with each radius \(\tau_j^{1/3}\le2\kappa<R_{\max}\) | Triple-Gram lower bound and norm comparison | B1 baseline, chart target | Coefficient-box inequality not allocated |
| Fresh-tape positive score and cubic growth | W0 tape anti-concentration plus homogeneous radial identity | Independent next tape block and current residual | Mixed-channel score, angular drift, model defect, and line-search cap slack | Score proposal is not yet a target-channel object | Missing score-to-growth recurrence and cap-aware step lower bound | Haar anti-concentration; threshold \(P^{-30}\) | D0, L1, C0 | C0 makes the required step export impossible under current rule |
| Injective promotion and sequential residual diversity | D0 residual decomposition | Protected residual, score ordering, one promotion per epoch | Duplicate/mixed score, tiny initial promoted mass, refresh defect | No same-target bridge from score maximizer to channel representative | Missing target-mass reduction inequality | No positive channel-assignment margin | P1, B1 | Missing producer and source-to-claim match |
| Reset-budgeted Lyapunov decrease | L1 Armijo plus refresh accounting | Objective decrease for valid trials and \(B_{\mathrm{refresh}}\) | Cap-induced tiny steps, flat scores, and unresolved-channel loss are uncontrolled | Scalar loss decrease does not export channel/tube control | Missing explicit \(\mathcal L\), decrement, and reserve relation | Displayed refresh budget controls only reset path length | D0, P1, B1, S-epoch rate | Persistent line-search slack is outside budget |
| Protected persistence and cap inactivity | P1 signed cluster potential | Promoted labels, residual algebra, KR slack, protected cap | Cross-component forcing, cancellation, angular leakage, outward cap pressure | Protected factor tensor may be a surrogate for the target channel | Missing all-time recurrence and target-side margin | No legal positive invariant source | B1 and protected-only refinement | Protected components cannot be parked if cap binds |
| Reachable regular chart and PL | B1 active Jacobian plus cluster bridge | Realized triple Gram and prospective protected representatives | Split/cancelled mass, chart remainder, pruning residual, frozen zeros | Required same-target Frobenius transfer is absent | Missing chart radius and pruning domination inequality | Active Jacobian margin not exported | C0 refinement, final theorem | Produced trajectory object differs from consumed chart |
| Inverse-polynomial accepted step | C0 dyadic cap/Armijo rule | Smoothness bound and finite caps | Near-cap slack can be arbitrarily small; generic equality has probability zero | Exact cap interface, no surrogate slack | Geometric slack recurrence yields exponentially small steps | No positive slack source | Every burn-in and refinement update | `idea/theorem-contract defect` |
| No-floor refinement and explicit rates | R0 downstream specialization | PL, chart preservation, step lower bound, separate probabilities | All upstream margins and polynomial degrees are missing | Final target is same \(T\) and relative Frobenius norm | Missing Rate Specialization Bridge and absorption inequalities | None | Public theorem and runtime claim | No complete producer DAG |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Realized norm/KR/triple-Gram event | Candidate direct Gaussian bridge | Z0, W0, D0, B1, rates | outer instance probability | primitive data -> E0 -> all downstream blocks | derived | E0 is not allocated under the blocked sketch |
| Exact balanced cap-admissible representation | Z0 | B1 baseline and chart | nonempty zero set and no-floor target | E0 -> Z0 | derived | coefficient-box bridge missing |
| Fresh score/cubic growth | W0 | D0, L1, C0 | tape success and burn-in | random tape + residual -> W0 | derived | cap lower-bound obstruction blocks export |
| Injective channel assignment | D0 | P1, B1 | protected representative system | W0 -> D0 | derived | score does not yet produce target assignment |
| Reset-budgeted Lyapunov state | L1 | D0, P1, B1 | finite burn-in and reachable tube | inner descent + refresh -> L1 | derived | no concrete target-coupled potential |
| Protected persistence/cap invariant | P1 | B1 | all-time chart entry | D0 + L1 -> P1 | derived | persistent forcing and protected cap lack source |
| Same-target active chart/PL certificate | B1 | R0 | refinement to arbitrary accuracy | E0 + D0 + P1 -> B1 | derived | chart membership and pruning transfer missing |
| Accepted-step lower bound | C0 | all repeated updates and R0 | polynomial runtime | protocol -> C0 | derived | equality-only parking makes output false |
| Rate/probability specialization | R0 | final theorem | runtime and relative error | E0,W0,D0,L1,P1,B1,C0 -> R0 | derived | incomplete DAG and no valid d_step |

## Sketch Steps

None

## Dependency Notes

No accepted acyclic step graph exists because the fixed protocol's cap/line-
search interface is false on the positive-growth boundary regime.  The intended
dependency order would be E0 -> Z0 -> W0 -> D0 -> L1 -> P1 -> B1 -> R0,
with C0 required before W0, D0, L1, P1, and B1.  C0 cannot be supplied by a
later proof step: its source is the exact algorithmic rule, and the rule itself
permits exponentially small accepted steps.  Treating cap inactivity or a
uniform step margin as a tube assumption would violate assumption provenance.

## Blockers

1. **Idea/theorem-contract defect (C0): equality-only probationary parking
   contradicts the claimed inverse-polynomial accepted-step bound.**  On an
   open positive-growth path, the balanced radius obeys
   \(g^+=g+\lambda g^2s+O(\lambda^2g^3L)\) with \(s>0\).  Cap feasibility
   bounds \(\lambda\) by the remaining gap \(2\theta-g\), and the largest
   dyadic trial halves that gap without reaching equality generically.  With
   \(H=P^{120}\), accepted steps become \(2^{-\Omega(P^{120})}\), not
   \(P^{-d_{\mathrm{step}}}\).  If the positive score does not persist long
   enough to create this path, the required cubic-growth/promotion conclusion
   fails instead.
2. **Required repair changes the fixed protocol or target.**  Near-cap parking,
   cap projection, a positive cap margin, a different common-step rule, or
   removal of the step lower-bound claim must be approved as a new idea.  No
   same-setting proof-step reorganization can create a missing slack source.
3. **Secondary interface defects remain after C0 repair.**  The current
   materials do not yet provide source-adequate tape-to-channel assignment,
   sequential residual diversity, a concrete reset-budgeted target-coupled
   Lyapunov relation, protected noncancellation/cap persistence, or a
   trajectory-to-same-target-chart bridge.
4. **Exact-rate and baseline chain is therefore unavailable.**  The displayed
   refresh budget controls tensor path length but not line-search slack, chart
   membership, pruning absorption, or no-floor PL refinement.  Polynomial
   placeholders cannot substitute for those generated outputs.

This attempt therefore has no viable target-preserving sketch.  The smallest
controller route is `/subagent-idea-generator` with an explicitly cap-aware
protocol or a revised quantitative step-size claim.
