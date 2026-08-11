# Proof Sketch

## Formalized Setting

This is sketch attempt 2 for the exact homogeneous asymmetric CP protocol in
perspective_2/idea_3/setting.md.  The tensor, model, residual, and objective are

\[
T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j,\qquad
\Phi(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,
\]
\[
R=T-\Phi(X,Y,Z),\qquad F=\frac12\|R\|_F^2.
\]

Every nonzero component is tensor-preservingly balanced to a common radius
\(g_i\), and a partial-zero component is mapped to the joint-zero triple.
Protected current radii are bounded by \(R_{\max}=8\kappa\), probationary
current radii by \(2\theta\), and their raw balanced trial guards are
\(2R_{\max}\) and \(4\theta\).  A probationary trial crossing \(2\theta\) is
projected once to radius \(2\theta\), parked, and removed from the remaining
common searches in that epoch.  All project, reset, and final-pruning tensor
path length is bounded by

\[
B_{\mathrm{disc}}\le 140\|T\|_F P^{-59}.
\]

The primitive conditions are assump:base-conditioning,
assump:base-kr-isometry, assump:gaussian-smoothing,
assump:dimension-regime, assump:smoothing-scale,
assump:perturbation-margin, assump:rank-regime,
assump:random-tape, and assump:accuracy-range.  Realized conditioning,
target-channel structure, tape coverage, epoch invariants, cap inactivity,
chart membership, PL geometry, and convergence are derived outputs.

## Formalized Goal

Prove the exact conditional guarded-cap reachable-landscape and trajectory
theorem in setting.md.  With probability at least \(1-r^{-10}\) over the
once-drawn Gaussian instance, derive the simultaneous realized norm,
pair-Gram, triple-Gram, target-norm, nonzero-target, and exact balanced
representation event.  Conditional on every such instance, derive a
one-tape success event of conditional probability at least \(1-r^{-10}\).
On these two events, the fixed guarded protocol never fails, every accepted
common step has a fixed inverse-polynomial lower bound, every discrete
transition is loss-accounted, and burn-in reaches a generated same-target
protected chart.

After burn-in and final pruning, the protected-only objective must have a
defect-free local PL inequality and reach

\[
\|T-\Phi(X,Y,Z)\|_F\le\epsilon\|T\|_F
\]

in polynomial burn-in time plus
\(\operatorname{poly}(n,r,k,\kappa,\rho^{-1})\log(1/\epsilon)\) accepted
steps.  The instance and tape probabilities remain separate, the rank remains
\(k=\lceil C_{\mathrm{rank}}r^{3/2}(\log r)^2\rceil=o(r^2)\), and the exact
zero-residual representation and arbitrary-\(\epsilon\) baseline are not
weakened.

## Sketch Identity

- Sketch attempt: 3
- Retry mode: revise_sketch
- Triggering artifact:
  perspective_2/idea_3/proof_history/sketch_002/proof_sketch_review.md
- Triggering review status: REVISE_SKETCH
- Progress type: conditional
- Selected framework: guarded homogeneous refresh-and-promotion with an
  event-loss ledger, an epoch-entry/transition induction, and a defect-free
  post-pruning chart.
- Framework provenance: Beyond Lazy Training for Over-parameterized Tensor
  Decomposition (arXiv:2010.11356) supplies only homogeneous
  activation/refresh patterns; current-protocol globalization, target-cone
  assignment, protected induction, and local PL are direct branch-local
  derivations.  The transfer boundaries are recorded in technical_survey.md.

## Proof Roadmap

Attempt 1 correctly repaired the equality-only cap obstruction but joined
interfaces in the wrong order.  Attempt 2 makes four structural repairs.

First, C0 is split internally into raw trial feasibility and retained-state
accounting.  The raw accepted step includes the missing smoothness restriction
\(1/(4L_{\max})\).  A post-Armijo projection is then paid by a loss-unit
reserve, rather than being treated as if it inherited the trial Armijo
inequality.

Second, the adaptive burn-in uses a base-plus-transition induction.  I0 defines
an epoch-entry certificate with mature, queued, and unresolved target sets and
proves it at epoch zero.  W0 and P0 are universal conditional lemmas under one
I0 certificate: W0 produces target-cone proposals, while P0 matures a queued
protected representative and preserves the mature representatives.  D0
combines those simultaneous outputs at the boundary, assigns at most one new
target, and keeps its full physical target-error term in a queue.  L1 then
iterates this transition.  Thus a target is not removed from physical
unresolved mass merely because a tiny component received a protected label.

Third, all repeated forcing is classified.  Project/reset/prune loss is
exactly paid by a finite reserve, and the \(P^{12}\) transfer from loss units
to the epoch potential is paid by a scaled remaining reserve.  Probationary
nuisance enters protected persistence multiplied by the same contraction
coefficient, so it has a small-gain steady-state bound rather than an
\(SH\)-fold sum.  It becomes exactly zero at final pruning.  Target assignment,
maturation, and the stopped tape event are measured by actual target residual
energy and a single nonanticipating query count.

Fourth, after the last queued target is mature, L1 reserves a protected-only
polishing window inside the remaining burn-in epochs.  A direct
target-to-balanced-coordinate transfer produces a quantitative \(P^{-36}\)
chart entry and a \(P^{-62}\) relative residual.  B0 uses historical discrete
path length only for this one-time entry statement.  B1 then starts from the
retained protected state and proves a local expansion for the exact fixed
objective \(F\), with no \(B_{\mathrm{disc}}\) term.  A first-exit energy
barrier and a coordinate-to-residual bridge complete R0's defect-free
geometric recurrence.

The stable steps are:

1. step_001 (E0): smoothed realized instance event.
2. step_002 (Z0): exact balanced reference and polynomial scale ledger.
3. step_003 (C0): guarded raw Armijo trial and loss-unit event reserve.
4. step_004 (J0): joint-zero activation and first-update identity.
5. step_005 (I0): epoch-entry certificate, residual split, and base case.
6. step_006 (W0): stopped conditional target-cone proposal event.
7. step_007 (P0): one-epoch queued maturation and mature-state persistence
   with supported \(P^{108}\) envelope.
8. step_008 (D0): boundary assignment with physical target-mass transfer.
9. step_009 (L1): stopped tape union, global induction, scaled reserve, and
   final protected polishing.
10. step_010 (B0): quantitative final-pruning chart and residual entry.
11. step_011 (B1): defect-free balanced-Jacobian PL and first-exit closure.
12. step_012 (R0): coordinate-to-relative residual refinement and explicit
   work.

## Rate Objectives

### Explicit polynomial ledger

All following exponents are fixed public choices for the sketch and must be
proved, or conservatively improved, in their assigned steps:

\[
d_{\mathrm{step}}=42,\quad d_{\mathrm{dec}}=18,\quad
d_{\mathrm{cone}}=32,\quad d_{\mathrm{entry}}=36,\quad
d_{\mathrm{loss}}=50,\quad d_{\mathrm{PL}}=24,\quad
d_{\mathrm{pol}}=160,\quad d_{\mathrm{res}}=62.
\]

On E0, the coarse scale ledger is

\[
P^{-3}\le\|T\|_F\le P^4,\qquad
P^{-41}\le\delta\le P^{-38},\qquad
P^{-28}\le\theta\le P^{-25},
\]
\[
\eta_{\max}\ge P^{-12},\qquad
\tau_{\min}^2\ge P^{-14}\|T\|_F^2.
\]

On the guarded individual-factor box, C0 targets

\[
G_{\max}\le P^8,\qquad L_{\max}\le P^{16},\qquad
\overline R\le P^5,
\]

and

\[
\lambda_0=
\min\left\{\eta_{\max},
\frac{R_{\max}}{4G_{\max}},
\frac{2\theta}{4G_{\max}},
\frac1{4L_{\max}}\right\},\qquad
\lambda_{\mathrm{acc}}\ge\frac{\lambda_0}{2}\ge P^{-42}.
\]

The loss-unit event reserve and the scaled epoch reserve are

\[
\mathfrak B(b)=\overline R b+\frac12b^2,\qquad
\mathfrak B(B_{\mathrm{disc}})
\le \|T\|_F^2P^{-50},\qquad
\widetilde{\mathfrak B}(b)=P^{12}\mathfrak B(b),\qquad
\widetilde{\mathfrak B}(B_{\mathrm{disc}})
\le \|T\|_F^2P^{-38}.
\]

The proposal threshold is \(q_0=\|T\|_FP^{-30}\).  The reciprocal-radius
bound from seed to activation is at most
\[
(\lambda_{\mathrm{acc}}q_0\delta)^{-1}\le P^{116}<H=P^{120},
\]
and queued protected maturation takes at most
\[
(\lambda_{\mathrm{acc}}q_0\theta)^{-1}\le P^{103},
\qquad P^{108}<H
\]
updates after a constant-factor envelope.  After the last queued target,
the remaining burn-in contains a protected polishing window producing
\(\Psi_{\mathrm{pol}}\le\|T\|_F^2P^{-160}\).  The post-pruning chart radius is
\(r_{\mathrm{ch}}=P^{-36}\), the PL target is
\[
\|\nabla_{\mathrm{prot}}F\|_F^2\ge2P^{-24}F,
\]
and the refinement polynomial is
\[
Q_{\mathrm{ref}}=8P^{66}.
\]

### Instance event and exact representation

- Objective type: structural-parameter explicit and confidence-explicit.
- Exposed variables: \(n,r,k,\kappa,\rho,P,\|T\|_F\), and confidence
  \(r^{-10}\).
- Hidden constants may depend on: \(c_0,c_\rho\), fixed numerical protocol
  constants, and fixed concentration margins.
- Hidden constants may not depend on: \(n,r,k,\kappa,\rho,\epsilon\), the
  deterministic bases, the realized instance, or the tape.
- Fixed quantities: \(c_0,c_\rho,C_{\mathrm{dim}},C_{\mathrm{rank}}\) and all
  displayed protocol exponents.
- Probability mode: high probability over the once-drawn Gaussian instance.
- Horizon mode: static finite event.
- Norm mode: operator norms for Gram controls and Frobenius norm for tensors.
- Required bridge or simplification obligations: derive the scale ledger,
  the \(1/32\) pair/triple-Gram bounds, target norm comparison, \(T\ne0\),
  and exact cap-admissible balancing with one explicit union bound.
- Baseline invariance obligations: preserve the exact tensor \(T\) and exact
  zero-residual balanced representation.

### Guarded burn-in and epoch induction

- Objective type: fixed-horizon, structural-parameter explicit,
  confidence-explicit, and numerical-error explicit.
- Exposed variables: \(n,r,k,\kappa,\rho^{-1},P,H,S,M,\delta,\theta\),
  \(B_{\mathrm{disc}}\), \(\mathfrak B\), and tape confidence \(r^{-10}\).
- Hidden constants may depend on: fixed exponents and numerical margins only.
- Hidden constants may not depend on: problem variables, bases, the instance,
  the tape, or \(\epsilon\).
- Fixed quantities: \(d_{\mathrm{step}}=42\),
  \(d_{\mathrm{dec}}=18\), \(d_{\mathrm{cone}}=32\),
  \(d_{\mathrm{loss}}=50\), \(d_{\mathrm{pol}}=160\), and
  \(d_{\mathrm{res}}=62\).
- Probability mode: conditional high probability over one finite tape after
  conditioning on E0.  Define a stopping time at the first epoch with no
  unresolved target or at the first failed proposal certificate.  The tape
  success event is the intersection of proposal certificates only before that
  stopping time.  On the event, every queried epoch promotes a new target, so
  there are at most \(r\) queried blocks and \(r^2\) target/block pairs; no
  union over the unused \(S\) blocks is taken.
- Horizon mode: at most \(SH=P^{140}\) accepted burn-in steps, \(S=P^{20}\)
  epoch boundaries, and \(kS\le P^{21}\) discrete transitions.
- Norm mode: actual residual Frobenius norm, physical target-channel error,
  balanced coordinate error, and loss-unit event reserve.
- Required bridge or simplification obligations: conditional target cones,
  queued maturation, physical assignment, the exact retained-state ledger,
  and
  \[
  N_{\mathrm{dec}}\|T\|_F^2P^{-18}
  \le\mathcal L_0+\widetilde{\mathfrak B}(B_{\mathrm{disc}})
  \le P\|T\|_F^2,
  \]
  hence \(N_{\mathrm{dec}}\le P^{19}<S\).  Promotions are at most
  \(r<M\), and the final queued-maturation epoch plus the polishing window
  are included in the \(S\) budget.
- Baseline invariance obligations: use one tape, no external restart, no
  theorem-facing assumed invariant, and no retained event floor.

### Post-pruning chart and refinement

- Objective type: fixed-horizon, regularity-explicit,
  structural-parameter explicit, confidence-explicit, and
  numerical-error explicit.
- Exposed variables: \(P,\epsilon,r_{\mathrm{ch}}=P^{-36}\),
  \(d_{\mathrm{PL}}=24\), \(d_{\mathrm{step}}=42\), and
  \(d_{\mathrm{res}}=62\).
- Hidden constants may depend on: fixed chart conventions and numerical
  margins only.
- Hidden constants may not depend on: problem variables, bases, instance,
  tape, or \(\epsilon\).
- Fixed quantities: \(d_{\mathrm{entry}}=36\),
  \(d_{\mathrm{PL}}=24\), \(d_{\mathrm{res}}=62\), and
  \(Q_{\mathrm{ref}}=8P^{66}\).
- Probability mode: deterministic conditional on the already derived instance
  and tape events.
- Horizon mode: finite protected-only refinement.  B0 exports
  \(\|R_0\|_F\le\|T\|_FP^{-62}\).  If
  \(\epsilon\ge P^{-62}\), the stopping test is immediate; otherwise
  \(\log P\le\frac1{62}\log(1/\epsilon)\), so the entry-scale logarithm is
  absorbed into \(Q_{\mathrm{ref}}\log(1/\epsilon)\).
- Norm mode: balanced chart distance, protected Euclidean gradient, and
  relative Frobenius residual.
- Required bridge or simplification obligations: one-time pruning entry using
  historical path length, followed by a defect-free same-target expansion,
  PL contraction, cap preservation, and exact stopping.
- Baseline invariance obligations: after pruning there is no refresh,
  projection, nuisance component, event reserve, or additive recurrence term;
  convergence is to the exact zero-residual reference.

## Assumption Provenance Objectives

- E0 is produced in step_001 from assump:base-conditioning,
  assump:base-kr-isometry, assump:gaussian-smoothing,
  assump:dimension-regime, assump:smoothing-scale, and
  assump:perturbation-margin.
- Z0 and the scale ledger are produced in step_002 from E0,
  assump:rank-regime, and the definitions in setting.md.
- Raw trial feasibility, \(\lambda_{\mathrm{acc}}\ge P^{-42}\), the guarded
  residual bound, and the loss-unit event reserve are produced in step_003.
  A strict protected cap margin is not a C0 premise; it is produced by the
  protected transition and global induction in steps_007 and step_009.
- Joint-zero activation is produced in step_004 from the exact objective and
  the scheduled resets in assump:random-tape.
- Step_005 defines the local epoch-entry hypothesis \(\mathsf I_e\), proves
  \(\mathsf I_0\), and derives its coarse residual decomposition.  Steps_006
  through step_008 prove the universal implication
  \(\mathsf I_e\Rightarrow\mathsf I_{e+1}\) or chart entry.  Step_009 is the
  unconditional bridge proving \(\mathsf I_e\) for every actually reached
  epoch by induction.
- Conditional target-cone coverage is produced in step_006 from one fresh
  tape block and the step_005 residual decomposition.  It is wrapped in the
  stopped event
  \(\mathcal E_{\mathrm{tape}}=\bigcap_{e<\sigma}\mathcal G_e\), where
  \(\sigma\) is the first epoch with \(U_e=\varnothing\) or the first failed
  proposal certificate.  It does not consume step_009 or a future persistence
  conclusion; outside this event no-proposal epochs are not asserted.
- Queued maturation and mature protected persistence are produced in
  step_007 from the current \(\mathsf I_e\), C0, and E0.  Their outputs are
  available before step_008 changes the target-set bookkeeping.
- Unique target assignment and actual mass transfer are produced in step_008
  from the simultaneous W0 and P0 outputs.  An assigned target remains in the
  queued physical error until its representative matures.
- Step_009 produces the global Lyapunov recurrence, stopped tape event, finite
  burn-in closure, strict protected cap margin, and a protected polishing
  certificate after the last queued target is mature.
- Step_010 produces post-pruning same-target chart membership and the relative
  residual bound \(\|R_0\|_F\le\|T\|_FP^{-62}\).  It is the last consumer of
  historical \(B_{\mathrm{disc}}\).
- Step_011 produces a defect-free local PL inequality and chart-preservation
  recurrence for the exact protected objective.
- Step_012 produces no-floor convergence, separate probability conversion,
  dyadic work, and the public runtime.

## Mechanism-Source And Boundary Stress

### E0 and Z0: realized source and exact baseline

- Step ID: step_001 and step_002.
- Claim class: concentration, conditioning, nondegeneracy, exact
  representation, and baseline invariance.
- Theorem role: supply the actual tensor, quantitative scales, and exact
  reference used by all later same-target comparisons.
- Mechanism source: direct normalized Gaussian concentration, the primitive
  \(1/64\) Khatri--Rao margin, Schur-product identities, and
  tensor-preserving balancing.
- Source-to-claim adequacy: the derivation uses the exact normalized-column
  and Frobenius conventions of setting.md.  Perturbation error at most
  \(1/64\) combines with the base margin to give \(1/32\); the triple Gram
  compares \(\|T\|_F^2\) to \(\|\tau\|_2^2\).
- Residual-to-target adequacy: Z0 reproduces the actual unnormalized T exactly,
  so the baseline residual is zero and no surrogate bridge is needed.
- Key positive/control term or structural source: the base Gram slack,
  Gaussian tail exponent, and exact multilinear identity.
- Opposing defect terms: normalized column perturbations and finite union
  failure; both are paid by assump:perturbation-margin and the instance
  confidence allocation.
- Closure/dominance/absorption relation: static perturbation inequalities and
  one finite union bound; no iterative forcing.
- Accumulation behavior / scope compatibility: static.
- Obligation locality classification: step-local.
- Noncircular closure status: primitive data -> step_001 -> step_002.
- Entry-state / first-update stress result: the \(k-r\) excess slots are joint
  zero; step_004, not Z0, supplies their legal activation.
- Baseline conclusion preserved: exact zero residual inside the protected cap.
- Producer-consumer provenance: E0/Z0 feed all later steps; B0/B1 consume the
  same exact reference.
- Null or boundary regime tested: smallest realized column, \(T=0\), and cap
  boundary; E0 excludes the first two degeneracies and gives strict cap slack.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes, the chart and target-cone separation lose nondegeneracy.
- Repair route if source is unsupported: record an instance-level blocker;
  no later success event may assume these controls.

### C0: raw Armijo and retained-state loss ledger

- Step ID: step_003.
- Claim class: lower-bounded globalization and finite discontinuity
  accounting.
- Theorem role: supplies every repeated update with a legal raw step and every
  retained state with a loss-unit event charge.
- Mechanism source: direct derivatives of the exact cubic map on the guarded
  individual-factor segment, fixed trial gaps, dyadic Armijo, and the finite
  path budget in setting.md.
- Source-to-claim adequacy: E0 gives the displayed \(G_{\max},L_{\max}\), and
  \(\overline R\) bounds.  The exact setting convention is trial first,
  Armijo test second, project-and-park third.  The accepted raw trial therefore
  uses
  \[
  \lambda_0\le\min\{\eta_{\max},R_{\max}/(4G_{\max}),
  2\theta/(4G_{\max}),1/(4L_{\max})\},
  \]
  and projection is not claimed to satisfy raw Armijo.
- Residual-to-target adequacy: if the retained tensor differs from the trial
  tensor by \(\Delta\), then for the actual residual
  \[
  F_{\mathrm{ret}}-F_{\mathrm{trial}}
  \le\overline R\|\Delta\|_F+\frac12\|\Delta\|_F^2.
  \]
  With remaining path reserve \(b^+=b-\|\Delta\|_F\),
  \[
  \mathfrak B(b)-\mathfrak B(b^+)
  \ge\overline R\|\Delta\|_F+\frac12\|\Delta\|_F^2.
  \]
- Key positive/control term or structural source: fixed guard slack and the
  decrease of the loss-unit reserve.
- Opposing defect terms: Taylor remainder, common-component coupling, and
  post-Armijo projection/reset/prune loss; they are respectively absorbed by
  \(1/(4L_{\max})\), the common gradient norm, and \(\mathfrak B\).
- Closure/dominance/absorption relation: every retained gradient iteration
  satisfies
  \[
  F^++\mathfrak B(b^+)
  \le F+\mathfrak B(b)
  -\frac{\lambda_{\mathrm{acc}}}{4}
       \|\nabla_{\mathcal U}F\|_F^2.
  \]
  Reset and pruning satisfy the same relation without the gradient term.
- Accumulation behavior / scope compatibility: event signs are adversarial,
  but their total tensor path is at most B_disc and each event reduces b by
  its exact path charge.  Hence no event term is summed outside the finite
  reserve.
- Obligation locality classification: step-local.
- Noncircular closure status: raw trial uses only E0/Z0 and current guards;
  the protected margin is supplied later by step_007/step_009.
- Entry-state / first-update stress result: at \(g=\delta\) the fixed guard is
  nonempty; near \(2\theta\) one crossing is projected and parked rather than
  iterating cap slack.
- Baseline conclusion preserved: the reserve disappears after the last event
  and does not enter local refinement.
- Producer-consumer provenance: step_003 feeds all dynamic and rate steps.
- Null or boundary regime tested: zero gradient, all indices parked, and a
  raw trial on the guard boundary.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: without \(1/(4L_{\max})\), Armijo is unsupported; without
  \(\mathfrak B\), retained-state descent is unsupported.
- Repair route if source is unsupported: this would be a protocol-level
  blocker; do not replace it by an assumed cap margin.

### J0: zero-state activation

- Step ID: step_004.
- Claim class: entry activation and exact signed cubic progress.
- Theorem role: supplies the legal first nonzero transition for refreshed
  components.
- Mechanism source: the direct exact identity
  \[
  \Delta F=-t^3\langle R,u\otimes v\otimes w\rangle+\frac12t^6.
  \]
- Source-to-claim adequacy: the identity uses the unnormalized objective,
  Haar directions, and joint-zero convention of setting.md.
- Residual-to-target adequacy: the score is against the actual current
  residual, not a population or whitened tensor.
- Key positive/control term or structural source: the cubic score term.
- Opposing defect terms: the sixth-order self term and nonpositive scores;
  the former is dominated at seed scale and the latter is handled by W0's
  conditional branch.
- Closure/dominance/absorption relation: for score at least q0 and
  \(t^3\le a_{\mathrm{act}}\), the signed cubic term dominates.
- Accumulation behavior / scope compatibility: at most one reset per component
  per epoch; reset loss is paid by C0.
- Obligation locality classification: step-local.
- Noncircular closure status: C0/J0 -> local W0 transition.
- Entry-state / first-update stress result: joint zero is stationary between
  resets; the scheduled fresh seed is the only activator.
- Baseline conclusion preserved: activation changes the iterate, not T.
- Producer-consumer provenance: step_004 feeds step_005 and step_006.
- Null or boundary regime tested: \(R=0\) and zero score yield no proposal and
  are not mislabeled as progress.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes, a dormant component cannot self-activate.
- Repair route if source is unsupported: idea repair of the initialization
  mechanism.

### I0: epoch-entry certificate and coarse residual source

- Step ID: step_005.
- Claim class: local conditional interface, generated residual decomposition,
  and induction base.
- Theorem role: supplies W0 and P0 with only information available before the
  fresh epoch block.
- Mechanism source: a partition
  \([r]=A_e\sqcup Q_e\sqcup U_e\), where A is mature, Q is queued with
  \(|Q_e|\le1\), and U is unassigned; an injective protected-cluster map; and
  the exact decomposition
  \[
  R_e=T_{U_e}+\sum_{j\in Q_e}(\tau_jv_j-Q_{j,e})+E_e.
  \]
- Source-to-claim adequacy: mature cluster errors, off-span leakage, and
  probationary tensors are all explicitly placed in E_e.  The certificate
  requires \(\|E_e\|_F\le\|T\|_FP^{-32}\), mature radii at most
  \(4\kappa=R_{\max}/2\), and a signed protected potential bound.  At e=0,
  \(A_0=Q_0=\varnothing\), \(U_0=[r]\), and
  \(\|E_0\|_F\le k a_{\mathrm{seed}}\le\|T\|_FP^{-118}\).
- Residual-to-target adequacy: every unresolved and queued term is an actual
  component of T.  No queued channel is removed from the physical residual.
- Key positive/control term or structural source: exact target partition and
  the seed-scale base bound.
- Opposing defect terms: mature approximation error, duplicates, off-span
  leakage, and probationary nuisance; each is named in E_e and must be
  preserved by P0/D0.
- Closure/dominance/absorption relation: step_005 proves only the base case and
  a universal conditional decomposition.  Steps_006-step_008 prove the
  transition; step_009 performs the finite induction.
- Accumulation behavior / scope compatibility: local one-epoch interface;
  no all-epoch validity is assumed here.
- Obligation locality classification: step-local.
- Noncircular closure status: I_0 is direct; the implication
  I_e -> I_{e+1} is proved before step_009 iterates it.
- Entry-state / first-update stress result: the all-seed state has no mature or
  queued labels and satisfies the residual split exactly.
- Baseline conclusion preserved: all target mass remains in U or Q until
  physically approximated.
- Producer-consumer provenance: local I_e is consumed by step_006-step_008;
  global I_e is produced by step_009 for final assembly.
- Null or boundary regime tested: \(U_e=\varnothing\), \(Q_e=\varnothing\),
  and \(\|E_e\|\) at its threshold.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: W0 would see an uncontrolled protected residual.
- Repair route if source is unsupported: route to the transition step that
  failed; never insert I_e into the tape event as an assumption.

### W0: conditional target-cone proposal

- Step ID: step_006.
- Claim class: adaptive anti-concentration, score separation, and local
  positive-growth source.
- Theorem role: supplies one genuine unassigned-channel candidate without
  consuming future persistence.
- Mechanism source: condition on a certified I_e state, represent each fresh
  Haar direction by a normalized Gaussian, and directly analyze the
  degree-three coordinates
  \[
  q_j(u,v,w)=
  \langle u,\widetilde a_j\rangle
  \langle v,\widetilde b_j\rangle
  \langle w,\widetilde c_j\rangle.
  \]
  The target-j cone requires the weighted lead and competitor inequalities
  \[
  \tau_jq_j\ge 8q_0,\qquad
  \left|\sum_{\ell\in U_e\setminus\{j\}}\tau_\ell q_\ell\right|
  +|\langle R_{Q_e},d\rangle|
  +|\langle E_e,d\rangle|
  +|g_i^3|\le2q_0,
  \]
  together with angular drift at most \(P^{-32}\tau_j\), where
  \(d=u\otimes v\otimes w\) and \(q_0=\|T\|_FP^{-30}\).  These are weighted
  inequalities, not merely pairwise coordinate ordering.
- Source-to-claim adequacy: E0 controls coordinate covariance, while I_e gives
  an earlier \(\|E_e\|\) bound.  A direct current-notation small-ball and
  order-statistic lemma gives
  \(p_\star\ge c/[r\log(2r)]\) per available candidate for each queried
  unassigned channel and
  \[
  \Pr(\mathcal G_e^c\mid\mathcal F_e,I_e)
  \le\exp[-c k/(r\log(2r))]\le r^{-30}.
  \]
  Here \(\mathcal G_e\) is the event that at least one candidate satisfies
  all displayed weighted, angular, and boundary-score inequalities.
- Stopped event and no-proposal accounting: let \(\sigma\) be the first epoch
  with \(U_e=\varnothing\) or \(\mathcal G_e\) failing, and define
  \[
  \mathcal E_{\mathrm{tape}}=\bigcap_{e<\sigma}\mathcal G_e.
  \]
  This is nonanticipating because \(\mathcal F_e\) contains only earlier
  tape blocks.  On \(\mathcal E_{\mathrm{tape}}\), every epoch with
  \(U_e\ne\varnothing\) promotes one new target, so \(\sigma\le r+1\) and
  \[
  \Pr(\mathcal E_{\mathrm{tape}}^c\mid\mathcal E_{\mathrm{inst}})
  \le r\,r^{-30}\le r^{-20}.
  \]
  A no-proposal block is outside the success event; no deterministic
  \(P^{-18}\) gradient certificate is claimed for an arbitrarily
  residual-orthogonal Haar block.
- Residual-to-target adequacy: the cone is indexed by an actual
  \(v_j=\widetilde a_j\otimes\widetilde b_j\otimes\widetilde c_j\);
  the weighted sum is the actual residual score
  \(s_i=\langle R_e,d_i\rangle\).  P0 suppresses the queued term before the
  boundary score, and I_e bounds E_e at the same q0 scale.
- Key positive/control term or structural source: the separated q_j coordinate
  and homogeneous radial speed \(g^2s\).
- Opposing defect terms: mixed target coordinates, queued-channel candidates,
  E_e, angular drift, and the sixth-order self term.  P0 suppresses queued
  residual before boundary scoring; W0 bounds the other terms locally.
- Closure/dominance/absorption relation: the weighted lead is at least
  \(8q_0\) and all competitors total at most \(2q_0\), so the proposal score
  is at least \(6q_0\).  The angular/radial recurrence preserves score at
  least \(4q_0\) until \(g_i\ge\theta\); the first crossing of \(2\theta\) is
  projected and parked.  Boundary competitors have score at most \(q_0\), so
  D0 has a unique U winner.
- Accumulation behavior / scope compatibility: one independent block per
  stopped queried epoch.  On the success event there are at most r queried
  epochs and at most \(r^2\) target/block pairs; unused blocks after sigma
  are irrelevant to the theorem event.
- Obligation locality classification: step-local.
- Noncircular closure status: I_e is a local hypothesis with a proved base and
  transition; W0 does not invoke L1 as a fallback.
- Entry-state / first-update stress result: from radius delta, the first
  positive-score step follows J0; at the probationary cap, C0 projects and
  parks exactly once.
- Baseline conclusion preserved: proposal directions are compared to the same
  T and do not alter the target.
- Producer-consumer provenance: step_006 feeds step_008 and the tape union in
  step_009.
- Null or boundary regime tested: empty U, a tied/mixed coordinate, a
  residual-orthogonal fresh block, and a queued-channel duplicate.  Empty U
  makes W0 vacuous; the last three are outside \(\mathcal G_e\) and therefore
  outside the conditional tape-success event.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: a mixed random score cannot support injective assignment.
- Repair route if source is unsupported: record an anti-concentration or
  rank-regime blocker; do not call a mixed score a target proposal.

### P0: one-epoch maturation and persistence transition

- Step ID: step_007.
- Claim class: signed growth, invariant preservation, physical target-error
  reduction, and cap separation.
- Theorem role: validates the protected state before D0 changes target
  bookkeeping.
- Mechanism source: E0 Gram separation, C0 lower-bounded Armijo, the signed
  cluster error \(\Psi\), and the explicit I_e residual split.
- Source-to-claim adequacy: a queued representative starts with positive
  orientation and radius \(2\theta\).  The persistent score recurrence
  \(s_t\ge q_0/2\), the angular drift bound, and
  \[
  g_{t+1}\ge g_t+\frac12\lambda_tg_t^2q_0
  \]
  give a conservative queued-growth time
  \[
  m_Q\le C(\lambda_{\mathrm{acc}}q_0\theta)^{-1}
  \le P^{103},
  \]
  which is enveloped by \(P^{108}<H\).  Mature clusters obey
  \[
  \Psi_{t+1}\le(1-\alpha_t/2)\Psi_t
  +C\alpha_t\zeta_{\mathrm{prob},t}^2,
  \qquad
  \alpha_t=\lambda_tP^{-24}\ge P^{-66},
  \]
  where \(\zeta_{\mathrm{prob},t}\le8k a_{\mathrm{act}}
  \le\|T\|_FP^{-78}\).  Project/reset events touch only probationary slots;
  their direct objective effect is charged by C0 and their indirect protected
  effect is included in the contraction-scaled nuisance term.
- Residual-to-target adequacy: each cluster error is measured against its
  assigned actual tensor \(\tau_jv_j\); no label is treated as approximation.
- Key positive/control term or structural source: positive signed target mass,
  target-scale radial restoring force, and the E0 diagonal Gram margin.
- Opposing defect terms: mature-cluster cross-talk, probationary nuisance,
  angular leakage, and event jumps.
- Closure/dominance/absorption relation: cross-talk is absorbed by the
  \(1/32\) Gram margin; probationary forcing is multiplied by alpha and hence
  has a small-gain steady-state bound, not an SH sum.  A matured queued
  channel reduces its actual squared target error by at least
  \(\|T\|_F^2P^{-16}\).  For the objective Lyapunov, define
  \(e_t=\overline R\|\Delta_t\|_F+\|\Delta_t\|_F^2/2\) and use the scaled
  reserve \(P^{12}\mathfrak B(b)\); its total charge is at most
  \(\|T\|_F^2P^{-38}\).  No amplified event term is inserted into the
  protected-coordinate recurrence.
- Accumulation behavior / scope compatibility: the recurrence is contractive;
  nuisance forcing is contraction-scaled and becomes exactly zero after
  pruning.  Objective event charges are finitely reserved in
  \(P^{12}\mathfrak B\), while protected factors themselves receive no direct
  project/reset jump.  It yields mature radii at most \(4\kappa\), a strict
  \(R_{\max}/2\) cap margin, and leaves a polishing window after the final
  queued target.
- Obligation locality classification: step-local.
- Noncircular closure status: P0 assumes only current I_e and produces the
  protected part of the next entry certificate before D0.
- Entry-state / first-update stress result: a newly queued component at
  \(2\theta\) has positive score; if Q is empty, P0 only preserves mature
  clusters.
- Baseline conclusion preserved: the restoring fixed point is the exact true
  cluster, and all forcing vanishes before refinement.
- Producer-consumer provenance: step_007 feeds step_008, step_009, and B0.
- Null or boundary regime tested: opposite sign, radius near Rmax, zero queued
  set, and exact mature cluster.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: without positive orientation/Gram separation, a protected label
  can cancel or cross the cap.
- Repair route if source is unsupported: report a protected-invariant blocker;
  do not let D0 remove the channel.

### D0: boundary assignment and physical mass transfer

- Step ID: step_008.
- Claim class: unique target assignment, duplicate suppression, and
  target-mass bookkeeping.
- Theorem role: converts W0 proposals into the next legal I certificate.
- Mechanism source: W0 target cones, P0's end-of-epoch suppression of queued
  residual, and one-at-a-time largest-score promotion.
- Source-to-claim adequacy: at the boundary, an unassigned-channel candidate
  has score at least \(2q_0\), while mixed, mature, queued-duplicate, and
  off-span candidates have score below q0.  Thus the promoted winner has a
  unique j in U_e and positive orientation.
- Residual-to-target adequacy: moving j from U_e to Q_{e+1} replaces
  \(\tau_j^2\) in the physical mass functional by
  \(\|\tau_jv_j-Q_{j,e+1}\|_F^2\); it does not delete that term.  When the old
  queued target matures, its remaining error is transferred into the mature
  cluster potential before it leaves Q.
- Key positive/control term or structural source: a q0 score gap and the
  actual decrease of \(\|\tau_jv_j-Q_j\|_F^2\).
- Opposing defect terms: score ties, mixed cones, duplicate promotion, and a
  tiny newly protected tensor.  Separation handles the first three; the last
  remains in Q and is not claimed resolved.
- Closure/dominance/absorption relation: the physical mass functional
  \[
  \mathcal M_e=\sum_{j\in U_e}\tau_j^2+
  \sum_{j\in Q_e}\|\tau_jv_j-Q_{j,e}\|_F^2+\Psi_e
  \]
  changes only by actual tensor-error changes.  A no-promotion epoch outside
  the chart has either queued maturation or restoring decrease at least
  \(\|T\|_F^2P^{-18}\).
- Accumulation behavior / scope compatibility: each target enters Q at most
  once, Q has size at most one, and promotions are at most r.
- Obligation locality classification: step-local.
- Noncircular closure status: W0 and P0 are simultaneous conditional outputs;
  D0 consumes both and produces the transition used later by L1.
- Entry-state / first-update stress result: the first promotion remains queued
  with nearly full target error; it is not removed until next-epoch P0.
- Baseline conclusion preserved: every bookkeeping transition preserves the
  actual target-error total.
- Producer-consumer provenance: step_008 feeds step_009.
- Null or boundary regime tested: exact tie, no U targets, and a newly promoted
  component of tensor mass \(8a_{\mathrm{act}}\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes, promotions could be duplicates and M could be exhausted.
- Repair route if source is unsupported: record a target-assignment blocker.

### L1: global epoch induction and finite burn-in

- Step ID: step_009.
- Claim class: repeated-scope induction, event-weighted Lyapunov closure,
  adaptive probability conversion, and cap invariance.
- Theorem role: turns local transition lemmas into the unconditional burn-in
  certificate.
- Mechanism source: base I_0, the I_e transition from W0/P0/D0, and
  \[
  \mathcal L_e=F_e+\frac18\mathcal M_e+
  \frac18\Psi_e+\mathfrak B(b_e).
  \]
- Source-to-claim adequacy: all terms use actual target or actual objective
  units.  Label transitions preserve physical error.  C0 pays every discrete
  loss, P0 pays protected forcing, and D0 supplies promotion or actual
  decrease.
- Residual-to-target adequacy: F, M, and Psi compare the current iterate to
  the same unnormalized T and its true channel tensors.
- Key positive/control term or structural source: one new target-cone
  promotion or a decrement \(\|T\|_F^2P^{-18}\).
- Opposing defect terms: event loss, nuisance forcing, adaptive tape failure,
  and label transfer.  They are respectively reserved, contractively
  absorbed, placed outside the success event, and physically conserved.
- Closure/dominance/absorption relation: before chart entry,
  \[
  \mathcal L_{e+1}\le\mathcal L_e-\|T\|_F^2P^{-18}
  \]
  unless one new U target is promoted.  Since
  \(\mathcal L_0+\mathfrak B(B_{\mathrm{disc}})
  \le P\|T\|_F^2\), no more than \(P^{19}<S\) decrease epochs occur;
  no more than r promotions occur.
- Accumulation behavior / scope compatibility: L is nonnegative, the event
  reserve decreases exactly, the nuisance recurrence is small-gain, and the
  declared finite epoch count dominates all decrease and promotion epochs.
- Obligation locality classification: step-local.
- Noncircular closure status: step_005 proves I_0; steps_006-step_008 prove the
  universal transition; step_009 iterates it.  No transition lemma consumes
  the global induction conclusion.
- Entry-state / first-update stress result: e=0 is explicit; after the final
  target leaves Q, the next state is entry-ready rather than forced through
  another proposal.
- Baseline conclusion preserved: all additive forcing is finite and ends at
  pruning.
- Producer-consumer provenance: step_009 produces global I_e, the tape event,
  cap safety, and the pre-pruning state for step_010.
- Null or boundary regime tested: zero U, zero Q, exhausted event reserve, and
  \(\mathcal L=0\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: without a physical decrement, S does not imply entry.
- Repair route if source is unsupported: revise the epoch transition, not the
  primitive theorem.

### B0: one-time post-pruning entry

- Step ID: step_010.
- Claim class: same-target object transfer and generated chart membership.
- Theorem role: separates historical burn-in defects from the exact local
  objective.
- Mechanism source: the entry-ready I_S certificate, P0/L1 protected
  coordinate bounds, Z0 exact reference, and final-pruning path charge.
- Source-to-claim adequacy: use the full historical path bound once to show
  \[
  \operatorname{dist}_{\mathrm{bal}}
  (q_{\mathrm{prot},S},\mathcal Z_T)
  \le\frac14P^{-36}.
  \]
  Pruning changes only probationary factors and sets them to zero, so the
  protected coordinate remains the same and its exact residual is recomputed
  against T.
- Residual-to-target adequacy: the post-pruning state is compared directly to
  the exact Z0 solution set \(\mathcal Z_T\).  Historical B_disc appears only
  in this entry inequality.
- Key positive/control term or structural source: Z0 exact reference and the
  entry-ready signed cluster certificate.
- Opposing defect terms: accumulated protected error, leakage, and the final
  probationary tensor; each is below \(P^{-36}/4\) after the explicit
  coordinate-to-tensor transfer.
- Closure/dominance/absorption relation: the three entry defects sum to at
  most \(3P^{-36}/4\), leaving a strict quarter-chart margin.
- Accumulation behavior / scope compatibility: one-time transfer; no
  historical defect is carried into step_011.
- Obligation locality classification: step-local.
- Noncircular closure status: step_009 -> step_010 -> local chart.
- Entry-state / first-update stress result: if the post-pruning residual
  already meets epsilon, R0 stops before any update.
- Baseline conclusion preserved: the chart is centered at the exact solution.
- Producer-consumer provenance: step_010 feeds step_011 and step_012.
- Null or boundary regime tested: exact solution and entry at the chart edge.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: local PL cannot prove trajectory entry.
- Repair route if source is unsupported: repair the burn-in-to-chart transfer;
  do not insert B_disc into the local PL remainder.

### B1: defect-free local PL

- Step ID: step_011.
- Claim class: local nondegeneracy, coercivity, contraction, and basin
  preservation.
- Theorem role: supplies exact protected-only refinement geometry.
- Mechanism source: a direct balanced-gauge Jacobian calculation at Z0 and
  E0 triple-Gram conditioning.
- Source-to-claim adequacy: in sign/permutation-fixed coordinates
  \(q=q^\star+h\),
  \[
  R(q)=-J_\star h-\mathcal N(h),\qquad
  \sigma_{\min}(J_\star)\ge P^{-8},\qquad
  \|\mathcal N(h)\|_F\le P^{12}\|h\|_2^2.
  \]
  For \(\|h\|\le P^{-36}\), the nonlinear term is at most half the linear
  term.  The result is a current-notation derivation; the local ALS paper is
  motivation only.
- Residual-to-target adequacy: R is exactly \(T-\Phi_{\mathrm{prot}}\).
  There is no nuisance tensor, event reserve, or B_disc term.
- Key positive/control term or structural source: the balanced Jacobian
  singular-value lower bound.
- Opposing defect terms: only the state-dependent quadratic Taylor remainder,
  which vanishes at h=0.
- Closure/dominance/absorption relation:
  \[
  \|\nabla_{\mathrm{prot}}F\|_F^2\ge2P^{-24}F
  \]
  and C0 Armijo gives a strict decrease that keeps h inside the chart by a
  first-exit argument.
- Accumulation behavior / scope compatibility: defect-free geometric
  contraction over the finite refinement stopping horizon.
- Obligation locality classification: step-local.
- Noncircular closure status: B0 supplies entry; the Jacobian supplies PL; PL
  plus Armijo supplies preservation.
- Entry-state / first-update stress result: at h=0 the residual and gradient
  vanish and the target is already met; otherwise the first update contracts.
- Baseline conclusion preserved: no additive floor at h=0.
- Producer-consumer provenance: step_011 feeds step_012.
- Null or boundary regime tested: h=0, chart boundary, and smallest Jacobian
  singular direction.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: gradient descent may be flat away from the exact solution.
- Repair route if source is unsupported: report a local-geometry blocker.

### R0: no-floor refinement and public rate

- Step ID: step_012.
- Claim class: quantitative contraction, probability conversion, and runtime.
- Theorem role: completes the exact relative-error theorem.
- Mechanism source: C0's \(\lambda\ge P^{-42}\), B1's defect-free PL
  inequality, and the finite one-tape burn-in certificate.
- Source-to-claim adequacy:
  \[
  F_{t+1}\le
  \left(1-\frac12P^{-66}\right)F_t.
  \]
  Hence \(8P^{66}\log(1/\epsilon)\) accepted steps suffice after applying the
  entry-scale split in the rate objective.
- Residual-to-target adequacy: \(2F=\|T-\Phi_{\mathrm{prot}}\|_F^2\), exactly
  the public Frobenius metric.
- Key positive/control term or structural source: defect-free PL coercivity.
- Opposing defect terms: none after pruning.
- Closure/dominance/absorption relation: geometric iteration to
  \(F\le\epsilon^2\|T\|_F^2/2\); instance failure and conditional tape failure
  are each at most \(r^{-10}\) and are not merged into one ambiguous mode.
- Accumulation behavior / scope compatibility: finite stopping horizon; no
  all-time claim.
- Obligation locality classification: step-local.
- Noncircular closure status: C0 + B0 + B1 -> R0.
- Entry-state / first-update stress result: immediate stop if the entry
  residual already meets epsilon.
- Baseline conclusion preserved: the recurrence has no additive term and
  remains valid as epsilon tends to zero.
- Producer-consumer provenance: step_012 exports the final theorem.
- Null or boundary regime tested: epsilon near one, epsilon tending to zero,
  and F=0.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: descent alone does not give a logarithmic exact rate.
- Repair route if source is unsupported: route to step_011 or step_003,
  whichever interface fails.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| E0 realized event | step_001 | primitive Gaussian law and base margins | normalization and Gram perturbations controlled by rho and union budget | actual T and actual normalized Grams | base 1/64 plus perturbation 1/64 gives 1/32 | perturbation margin | all later steps | None |
| Z0 exact reference and scales | step_002 | E0 norms and tensor identity | zero tensor defect; polynomial inequalities explicit | exact equality to T | direct balancing and scale ledger | \(2\kappa<R_{\max}\) | C0, I0, B0, B1, R0 | None |
| Raw accepted trial | step_003 | guarded individual-factor box, Gmax, Lmax | Taylor remainder controlled by \(1/(4L_{\max})\) | raw trial uses actual F | lambda0 and dyadic maximality | fixed guard gaps | all dynamic steps | None |
| Retained-state loss ledger | step_003 | Rbar and B_disc | adversarial event loss paid by decreasing \(\mathfrak B(b)\) | event tensor measured in actual Frobenius residual | exact event-loss/reserve inequality | finite remaining path b | L1, B0 | None |
| Cubic activation | step_004 | exact loss expansion and fresh seed | sixth-order term controlled at seed scale | score uses actual R | cubic term dominates above q0 | q0 and a_act | I0, W0 | None |
| Local epoch certificate I_e and base I_0 | step_005 | target partition, seed state, E0 | mature, queued, and nuisance terms explicitly separated | queued target remains physical | exact residual split and base bound | P^-32 coarse margin | W0, P0, D0, L1 | None |
| Target-cone proposal | step_006 | fresh conditional Haar block and I_e | ties/mixed coordinates excluded by cone margin | cone indexed by actual unassigned target | score 4q0 versus defect at most q0 | P^-32 cone gap | D0, L1 tape event | None |
| Protected maturation/persistence | step_007 | I_e, E0, C0 | contraction-scaled nuisance and event-reserved jumps; no persistent unknown forcing | clusters compared with actual target tensors | small-gain recurrence and target-scale decrease | Gram margin and positive orientation | D0, L1, B0 | None |
| Physical boundary assignment | step_008 | W0 cone and P0 end state | duplicates/mixed scores below q0; tiny new component retained in Q | U error is replaced by actual Q error, not deleted | physical mass functional conservation/decrease | q0 score separation | L1 | None |
| Global burn-in certificate | step_009 | I_0 and universal transition | event loss reserved, nuisance absorbed, tape failures allocated | L uses actual F and target mass | N_dec <= P^19 < S and promotions <= r | d_dec=18 | B0 and final probability | None |
| Post-pruning chart entry | step_010 | entry-ready state and historical path bound | historical defects used once; no local forcing exported | direct distance to exact Z0 solution | three entry defects below chart margin | r_ch=P^-36 | B1, R0 | None |
| Defect-free PL chart | step_011 | exact protected objective and balanced Jacobian | only quadratic state-dependent remainder | exact same-target residual | Jacobian lower bound dominates remainder | d_PL=24 and chart radius | R0 | None |
| Public convergence/work | step_012 | step lower bound, PL, burn-in event | no post-pruning additive defect | exact relative Frobenius error | geometric contraction and explicit case split | Q_ref=8P^66 | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| E0 and scale bounds | step_001-step_002 | all later steps | instance probability, exact baseline, exponents | primitive assumptions -> E0 -> Z0 | derived | None |
| Raw step and event-loss reserve | step_003 | steps_004-step_012 | no failure and finite event accounting | Z0 -> C0 -> dynamics | derived | None |
| Joint-zero activation | step_004 | step_005-step_006 | legal first update | C0 -> J0 -> W0 | derived | None |
| Local I_e interface and I_0 | step_005 (I_0 direct; generic I_e conditional) | step_006-step_009 | legal epoch induction state | E0/C0/J0 -> I_0, then transition lemmas -> I_{e+1} | explicitly conditional | None |
| Proposal transition output | step_006 | step_008-step_009 | one new target query | I_e + fresh tape -> W0 | explicitly conditional local lemma | None |
| Maturation/persistence output | step_007 | step_008-step_010 | physical target reduction and cap safety | I_e + C0/E0 -> P0 | explicitly conditional local lemma | None |
| Next-entry transition | step_008 | step_009 | injective assignment and I_{e+1} | W0 + P0 -> D0 | explicitly conditional local lemma | None |
| Global I_e, Lyapunov, tape event | step_009 | step_010 and final assembly | finite burn-in and conditional probability | I_0 + transition -> finite induction | derived | None |
| Post-pruning chart membership | step_010 | step_011-step_012 | local entry | burn-in output + Z0 -> B0 | derived | None |
| Exact PL and chart preservation | step_011 | step_012 | no-floor contraction source | B0 + exact Jacobian -> B1 | derived | None |
| Relative-error rate and runtime | step_012 | final assembly | public conclusion | C0 + L1 + B0 + B1 -> R0 | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | E0: realized norms, pair/triple Grams, target norm, and nonzero target | None | assump:base-conditioning, assump:base-kr-isometry, assump:gaussian-smoothing, assump:dimension-regime, assump:smoothing-scale, assump:perturbation-margin | normalized simultaneous concentration | direct Gaussian and Schur-product calculation | E0 event | Instance event and exact representation | PENDING |
| step_002 | Z0: exact balanced solution, cap membership, and explicit P-scale ledger | step_001 | assump:rank-regime; step_001 | exact same-target and conservative exponents | tensor-preserving algebra | exact reference and scales | Explicit polynomial ledger | PENDING |
| step_003 | C0: guarded raw Armijo trial, lambda >= P^-42, and retained-state loss ledger | step_002 | step_001-step_002 | trial-before-projection semantics and loss units | direct derivative/Taylor/event expansion | step and reserve interface | Guarded burn-in and epoch induction | PENDING |
| step_004 | J0: joint-zero/partial-zero activation and cubic first update | step_003 | assump:random-tape; step_003 | dormant coordinates | exact homogeneous expansion | activation interface | Guarded burn-in and epoch induction | PENDING |
| step_005 | I0: define I_e, derive coarse residual split, and prove I_0 | step_004 | step_001-step_004 | separating mature, queued, unresolved, and nuisance terms | direct target partition and seed bound | local epoch interface/base | Guarded burn-in and epoch induction | PENDING |
| step_006 | W0: under I_e, derive separated unassigned-target proposals and conditional probability | step_005 | assump:random-tape; step_001, step_003-step_005 | adaptive Haar order statistics and score transfer | direct normalized-Gaussian small-ball/order-statistic lemma | target-cone proposal | Guarded burn-in and epoch induction | PENDING |
| step_007 | P0: under I_e, mature queued target, preserve mature clusters, absorb forcing, and prove cap margin | step_005 | step_001, step_003, step_005 | simultaneous protected dynamics and repeated forcing | signed radial/angular potential and small-gain recurrence | protected transition output | Guarded burn-in and epoch induction | PENDING |
| step_008 | D0: combine W0/P0, assign one unique target, conserve physical target error, and output I_{e+1} | step_007 | step_005-step_007 | duplicate suppression and label-to-tensor transfer | score-gap and physical mass functional | next-entry transition | Guarded burn-in and epoch induction | PENDING |
| step_009 | L1: iterate the epoch transition, construct tape event/Lyapunov, prove N_dec < S and global cap safety | step_008 | step_003, step_005-step_008 | noncircular induction, adaptive union, finite exhaustion | finite induction and loss-reserve Lyapunov | burn-in certificate | Guarded burn-in and epoch induction | PENDING |
| step_010 | B0: use historical defects once to prove post-pruning same-target chart entry | step_009 | step_002-step_003, step_007, step_009 | coordinate/tensor entry transfer | signed cluster-to-balanced-chart map | chart entry | Post-pruning chart and refinement | PENDING |
| step_011 | B1: prove defect-free balanced Jacobian PL and chart preservation | step_010 | step_001-step_003, step_010 | quotient gauge and nonlinear remainder | direct balanced Jacobian/Taylor derivation | exact PL chart | Post-pruning chart and refinement | PENDING |
| step_012 | R0: prove geometric relative-error refinement, separate probabilities, and polynomial work | step_011 | assump:accuracy-range; step_003, step_009-step_011 | explicit case split and work accounting | Armijo plus PL recurrence | final theorem | Post-pruning chart and refinement | PENDING |

## Step Specifications

### step_001 (E0)

Derive the simultaneous realized column norm and normalized Gram event with
failure at most \(r^{-10}\).  Transfer the pair-Gram margin to the triple Gram,
compare \(\|T\|_F^2\) with \(\|\tau\|_2^2\), and derive T nonzero.  Every
normalization denominator and union count is explicit.

### step_002 (Z0)

Insert the r true normalized components at common radii
\(\tau_j^{1/3}\) and the remaining k-r joint zeros.  Prove exact equality to T,
strict protected-cap membership, and all coarse P bounds used in later
exponent arithmetic.

### step_003 (C0)

Bound every individual raw factor along a trial segment before balancing,
derive Gmax, Lmax, and Rbar, and prove Armijo at lambda0 including
\(1/(4L_{\max})\).  For each post-Armijo tensor event, use the exact
loss-difference identity and decrement the loss reserve.  Export the retained
state inequality, not a trial-only inequality.

### step_004 (J0)

Prove the exact joint-zero injection identity and the partial-zero-to-joint-zero
rule.  Trace the first positive-score update at radius delta and the null branch
at zero score.

### step_005 (I0)

Define mature A, queued Q, and unassigned U sets, their protected cluster map,
the signed potential, and the coarse residual decomposition.  Prove the all-seed
base case.  State I_e only as a local conditional hypothesis for the transition
lemmas.

### step_006 (W0)

Condition on the complete adaptive past and one certified I_e state.  Prove a
current-notation target-cone small-ball/order-statistic lemma for the next fresh
Haar block.  Derive radial and angular growth to a qualifying parked candidate
within H, with a unique actual U target and an explicit score gap.

### step_007 (P0)

During the same epoch, mature the old queued representative before the boundary
score, preserve all mature representatives, and bound cap distance.  Prove the
contractive recurrence with contraction-scaled probationary nuisance and
event-reserved jumps.  Export actual target-error reduction.

### step_008 (D0)

At the boundary, use P0's suppressed queued residual and W0's score gap to
identify the unique U target of the winner.  Move it to Q without deleting its
physical target error; transfer any matured old-Q error into the mature
potential.  Output I_{e+1} or a chart-entry/decrease certificate.

### step_009 (L1)

Apply the base and transition by finite induction.  Define the tape event
recursively along the successful transition path and union only the at most r
queried promotion blocks.  Sum the loss reserve and small-gain recurrence,
prove the decrement/promote alternative, \(N_{\mathrm{dec}}<S\), and strict
protected cap safety through all remaining burn-in epochs.

### step_010 (B0)

At burn-in end, charge final pruning and set all probationary components to
joint zero.  Use the entry-ready protected certificate and historical path
bound once to enter the exact Z0 chart with a strict margin.  Do not export the
historical bound as local forcing.

### step_011 (B1)

Fix sign/permutation and balanced gauges, compute the exact protected Jacobian,
and bound its smallest singular value using E0.  Dominate the quadratic
remainder on the P^-36 chart, prove PL, and close a first-exit chart-preservation
argument with no additive term.

### step_012 (R0)

Combine \(\lambda\ge P^{-42}\) and PL exponent 24 to obtain contraction exponent
66.  Apply the epsilon case split, count at most \(P^{140}\) burn-in steps,
\(44\log P\) dyadic trials per accepted step, \(P^{21}\) discrete events, and
\(8P^{66}\log(1/\epsilon)\) refinement steps.  Keep the outer instance and
conditional tape probabilities separate.

## Dependency Notes

The numbered graph is acyclic.  The only recursive-looking object is I_e, and
its logic is the standard base-plus-transition pattern: step_005 proves I_0 and
defines a local conditional interface; steps_006-step_008 prove the universal
one-epoch implication without using the global result; step_009 then iterates
that implication.  W0 never invokes L1 or future protected persistence.  D0
consumes P0 before changing target bookkeeping.  Historical event defects stop
at B0.  B1 and R0 consume only the exact post-pruning protected objective.

Assembly follows

\[
\mathrm{E0}\to\mathrm{Z0}\to\mathrm{C0}\to\mathrm{J0}
\to\mathrm{I0}\to(\mathrm{W0},\mathrm{P0})\to\mathrm{D0}
\to\mathrm{L1}\to\mathrm{B0}\to\mathrm{B1}\to\mathrm{R0}.
\]

## Blockers

None at sketch level.  The attempt-1 defects have been localized into
source-compatible steps: C0 has an explicit retained-state loss ledger, the
epoch induction has a legal base/transition/global order, assignment preserves
physical target error, all forcing is finite or contractively absorbed, and
historical B_disc is absent from defect-free local refinement.
