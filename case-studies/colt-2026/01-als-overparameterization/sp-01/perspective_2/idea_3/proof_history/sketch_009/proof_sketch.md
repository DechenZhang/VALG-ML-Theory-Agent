# Proof Sketch

## Formalized Setting

This is sketch attempt 8 for the exact homogeneous asymmetric third-order CP
least-squares protocol in perspective_2/idea_3/setting.md:

\[
T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j,\qquad
\Phi(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,\qquad
F=\frac12\|T-\Phi(X,Y,Z)\|_F^2.
\]

Every nonzero component is re-gauged by the tensor-preserving balanced map,
with common radius \(g_i\); a partial-zero component is mapped to joint zero.
Protected current radii are bounded by \(R_{\max}=8\kappa\), unparked
probationary radii by \(2\theta\), and raw trial guards are \(2R_{\max}\) and
\(4\theta\).  A probationary trial crossing \(2\theta\) is projected once to
that radius, parked, and removed from subsequent common searches in its
epoch.  The total project/reset/prune tensor path is

\[
B_{\mathrm{disc}}\le140\|T\|_F P^{-59}.
\]

The primitive assumptions are assump:base-conditioning,
assump:base-kr-isometry, assump:gaussian-smoothing,
assump:dimension-regime, assump:smoothing-scale,
assump:perturbation-margin, assump:rank-regime,
assump:random-tape, and assump:accuracy-range.  All realized geometry,
target assignment, persistence, cap margin, chart entry, and convergence
claims are generated outputs.

## Formalized Goal

Derive an instance event of probability at least \(1-r^{-10}\) over the
once-drawn Gaussian perturbations with realized norm and cyclic Gram controls,
target norm control, \(T\ne0\), and an exact balanced representation strictly
inside the protected cap.  Conditional on every such instance, derive a
success event of probability at least \(1-r^{-10}\) over the one finite Haar
tape.  On the joint event, the fixed protocol never fails, every accepted
common step is at least \(P^{-42}\), every discrete event is paid by the
retained-state loss ledger, and the burn-in state enters a generated
same-target protected chart.

After final pruning, protected-only balanced Armijo refinement must return

\[
\|T-\Phi(X,Y,Z)\|_F\le\epsilon\|T\|_F
\]

for every \(0<\epsilon<1\), in polynomial burn-in time plus
\(\operatorname{poly}(n,r,k,\kappa,\rho^{-1})\log(1/\epsilon)\) accepted
steps.  The rank is
\(k=\lceil C_{\mathrm{rank}}r^{3/2}(\log r)^2\rceil=o(r^2)\), the instance
and tape probability modes remain separate, and the exact zero-residual
baseline is preserved.

## Sketch Identity

- Sketch attempt: 8
- Retry mode: revise_sketch
- Triggering artifact:
  perspective_2/idea_3/proof_history/sketch_007/proof_sketch_review.md
- Triggering review status: REVISE_SKETCH
- Progress type: conditional
- Selected framework: guarded homogeneous refresh-and-promotion with a
  recursively stopped mild-gap event, deterministic winner amplification,
  one consistently scaled loss reserve, queued-target induction, and
  defect-free post-pruning PL.
- Framework provenance: Beyond Lazy Training for Over-parameterized Tensor
  Decomposition (arXiv:2010.11356) is qualitative motivation only.
  Smoothed-analysis and local-ALS papers in technical_survey.md are likewise
  supporting patterns, not theorem wrappers for this protocol.

## Proof Roadmap

The roadmap is a base-plus-transition induction with explicit scale bridges.

1. E0 and Z0 derive the realized instance event, exact reference, and coarse
   polynomial scales.
2. C0 proves raw guarded Armijo feasibility and a retained-state inequality
   using one scaled reserve
   \(\widetilde{\mathfrak B}(b)=P^{12}
   (\overline Rb+b^2/2)\).
3. J0 supplies the exact cubic first-update identity.
4. I0 defines mature, queued, and unresolved target sets and proves the
   all-seed base residual split.
5. W0 proves a mild positive signed largest-coordinate gap for a fresh block.
   The gap is only \(1/\log r\), with an \(O(r^{1/4})\) aggregate competitor
   ratio, so it has polynomial probability in the orthogonal equal-weight
   case.  A deterministic winner-filter lemma handles all candidates at the
   boundary.
6. The tape event is defined by successful prefixes: at each epoch with
   unresolved targets, inspect one fresh block only after all previous prefixes
   succeeded; success requires the complete W0 event and the resulting D0
   winner.  The event terminates successfully when \(U_e=\varnothing\), so
   its conditional union has at most r queries and is not a tautological
   intersection before a first failure.
7. P0 first runs a probationary, pre-parking angular phase.  With
   \(b_t=\lambda_tg_t\ell_t\), its signed-lead recurrence has a positive
   self-alignment term rather than multiplicative damping, while the
   competitor recurrence contracts.  The integrated gain up to the first
   \(2\theta\) crossing preserves the lead and produces a deterministic
   all-candidate winner filter.  Only after that boundary decision does the
   separate queued phase use the target coefficient and the \(P^{103}\)
   maturation envelope.  D0 transfers the filtered winner to Q without
   deleting its target error.
8. L1 iterates the transition with the same scaled reserve in every formula,
   counts the final queued epoch, and runs a protected polishing recurrence
   during the remaining burn-in while probationary nuisance is present.
   The nuisance floor is \(P^{-156}\) in squared target units, so the exported
   polishing target is \(P^{-154}\), not an unattainable \(P^{-160}\).
9. B0 gives an explicit conditioned cluster-to-balanced map and derives
   \(\operatorname{dist}_{\mathrm{bal}}\le P^{-36}/4\) and
   \(\|R\|_F\le\|T\|_FP^{-62}\) after pruning.
10. B1 derives PL from the residual algebra
    \(R=-J_\star h-N(h)\) and \(J(h)^*R\), and uses an annular
    intermediate-descent bridge, with a current-Jacobian bound and a boundary
    energy comparison, to rule out discrete first exit.
11. R0 uses the coordinate-to-relative-residual upper bound, the exact
    Frobenius objective, and the \(P^{-62}\) entry split to obtain the
    \(8P^{66}\log(1/\epsilon)\) refinement bound.

## Rate Objectives

### Public exponent ledger

The following are fixed proposed proof exponents, not assumptions:

\[
d_{\mathrm{step}}=42,\quad d_{\mathrm{dec}}=18,\quad
d_{\mathrm{cone}}=32,\quad d_{\mathrm{loss}}=50,\quad
d_{\mathrm{entry}}=36,\quad d_{\mathrm{PL}}=24,
\]
\[
d_{\mathrm{pol}}=154,\qquad d_{\mathrm{res}}=62,\qquad
Q_{\mathrm{ref}}=8P^{66}.
\]

On E0 use the conservative ledger

\[
P^{-3}\le\|T\|_F\le P^4,\qquad
P^{-41}\le\delta\le P^{-38},\qquad
P^{-28}\le\theta\le P^{-25},
\]
\[
\eta_{\max}\ge P^{-12},\qquad
\tau_{\min}^2\ge P^{-14}\|T\|_F^2.
\]

For every nonempty unresolved set, the largest target weight obeys the
derived E0 comparison
\[
\tau_{\max}(U)\ge P^{-10}\|T\|_F,\qquad
\frac{q_0}{\tau_{\max}(U)}\le P^{-20}.
\]
The definition of \(\eta_{\max}\), together with the guarded chart bounds,
also gives the local displacement scale
The local reverse-Armijo calculation in B1 gives the generated upper bound
\[
\lambda_{\mathrm{acc}}P^8\le P^{-20}
\]
for every accepted protected trial in the chart.  This is a line-search
output, not an additional step-size assumption, and is used only for the
annular displacement argument.

On the guarded individual-factor box, C0 derives

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
\lambda_{\mathrm{acc}}\ge\lambda_0/2\ge P^{-42}.
\]

The raw and scaled event reserves are

\[
\mathfrak B(b)=\overline Rb+\frac12b^2,\qquad
\widetilde{\mathfrak B}(b)=P^{12}\mathfrak B(b),
\]
\[
\mathfrak B(B_{\mathrm{disc}})\le\|T\|_F^2P^{-50},
\qquad
\widetilde{\mathfrak B}(B_{\mathrm{disc}})
\le\|T\|_F^2P^{-38}.
\]

The proposal threshold is \(q_0=\|T\|_FP^{-30}\).  Seed-to-threshold
growth is bounded by \(P^{116}<H\).  A queued target with persistent score
at least \(q_0/2\) takes at most

\[
(\lambda_{\mathrm{acc}}q_0\theta)^{-1}\le P^{103}
\]

updates to reach target scale; use \(P^{108}<H\) as the proof envelope.
The protected polishing recurrence exports
\(\Psi_{\mathrm{pol}}\le\|T\|_F^2P^{-154}\).  The chart radius is
\(r_{\mathrm{ch}}=P^{-36}\), and the final relative residual is bounded by
\(\|T\|_FP^{-62}\).

### Instance and exact representation

- Objective type: structural-parameter explicit and confidence-explicit.
- Exposed variables: \(n,r,k,\kappa,\rho,P,\|T\|_F\), and confidence
  \(r^{-10}\).
- Hidden constants may depend on: \(c_0,c_\rho\), fixed protocol constants,
  and fixed concentration margins.
- Hidden constants may not depend on: \(n,r,k,\kappa,\rho,\epsilon\), bases,
  the realized instance, or the tape.
- Fixed quantities: \(c_0,c_\rho,C_{\mathrm{dim}},C_{\mathrm{rank}}\) and
  all displayed exponents.
- Probability mode: high probability over the once-drawn Gaussian instance.
- Horizon mode: static finite event.
- Norm mode: operator norm for Gram estimates and Frobenius norm for tensors.
- Required bridge or simplification obligations: simultaneous normalized
  Gaussian tails, pair/triple Gram transfer, target norm comparison, \(T\ne0\),
  exact balancing, and all scale inequalities.
- Baseline invariance obligations: preserve the exact target and exact
  zero-residual balanced representation.

### Guarded burn-in, stopped tape, and induction

- Objective type: fixed-horizon, structural-parameter explicit,
  confidence-explicit, and numerical-error explicit.
- Exposed variables: \(n,r,k,\kappa,\rho^{-1},P,H,S,M,\delta,\theta\),
  \(B_{\mathrm{disc}}\), \(\mathfrak B\), \(\widetilde{\mathfrak B}\), and
  conditional confidence \(r^{-10}\).
- Hidden constants may depend on: fixed exponents and numerical margins only.
- Hidden constants may not depend on: problem variables, bases, instance, tape,
  or \(\epsilon\).
- Fixed quantities: \(d_{\mathrm{step}}=42\),
  \(d_{\mathrm{dec}}=18\), \(d_{\mathrm{cone}}=32\), and
  \(d_{\mathrm{loss}}=50\).
- Probability mode: conditional high probability over the one finite tape.
  Let \(\mathsf G_e^{\mathrm{fresh}}\) be the mild positive signed
  largest-coordinate event for the fresh block at epoch e.  P0/D0
  deterministically turn it into a boundary winner, and successful prefixes
  are defined recursively:
  \[
  \mathsf E_0=\Omega,\qquad
  \mathsf E_{e+1}=\mathsf E_e\cap
  \bigl(\{U_e=\varnothing\}\cup\mathsf G_e^{\mathrm{fresh}}\bigr),
  \]
  where \(\mathsf G_e^{\mathrm{fresh}}\) is evaluated only on \(\mathsf E_e\) and
  \(U_e\ne\varnothing\).  Set
  \[
  \mathcal E_{\mathrm{tape}}
  =\bigcup_{m=0}^{r}
  \left(\mathsf E_m\cap\{U_m=\varnothing\}
  \cap\bigcap_{e<m}\{U_e\ne\varnothing\}\right).
  \]
  The terminal exhaustion condition is included, so this event is not true
  by excluding the first failed block.  Conditional W0 bounds give
  \(\Pr((\mathsf G_e^{\mathrm{fresh}})^c\mid\mathsf E_e)\le r^{-24}\), hence
  \(\Pr(\mathcal E_{\mathrm{tape}}^c)\le r^{-20}\) after at most r queries.
- Horizon mode: at most \(SH=P^{140}\) accepted burn-in steps,
  \(S=P^{20}\) epochs, and \(kS\le P^{21}\) discrete events.  After
  \(U=\varnothing\), no proposal event is queried; the fixed protocol still
  runs, but P0's deterministic nuisance/polishing recurrence is used.
- Norm mode: actual residual Frobenius norm, physical target-channel error,
  balanced coordinate error, and the consistently scaled loss reserve.
- Required bridge or simplification obligations: weighted relative winner
  inequalities, score persistence, the physical Q/U transfer, one
  epochwise Lyapunov recurrence, final-Q and polishing counts, and
  \[
  N_{\mathrm{dec}}\|T\|_F^2P^{-18}
  \le\mathcal L_0+\widetilde{\mathfrak B}(B_{\mathrm{disc}})
  \le P\|T\|_F^2,
  \]
  so \(N_{\mathrm{dec}}\le P^{19}<S\).  Promotions are at most
  \(r<M\), and the final-Q epoch plus polishing fit the same S budget.
- Baseline invariance obligations: one tape, no restart, all events finite,
  and no event or nuisance term survives into protected-only refinement.

### Post-pruning chart and refinement

- Objective type: fixed-horizon, regularity-explicit,
  structural-parameter explicit, confidence-explicit, and
  numerical-error explicit.
- Exposed variables: \(P,\epsilon,r_{\mathrm{ch}}=P^{-36}\),
  \(d_{\mathrm{PL}}=24,d_{\mathrm{step}}=42,d_{\mathrm{res}}=62\).
- Hidden constants may depend on: fixed chart conventions and margins only.
- Hidden constants may not depend on: problem variables, bases, instance, tape,
  or \(\epsilon\).
- Fixed quantities: \(d_{\mathrm{entry}}=36\), \(d_{\mathrm{PL}}=24\),
  \(d_{\mathrm{res}}=62\), and \(Q_{\mathrm{ref}}=8P^{66}\).
- Probability mode: deterministic conditional on the instance and stopped tape
  events.
- Horizon mode: B0 exports relative residual at most \(P^{-62}\).  If
  \(\epsilon\ge P^{-62}\), stop immediately.  Otherwise
  \(\log P\le(1/62)\log(1/\epsilon)\), so the entry logarithm is absorbed
  into \(Q_{\mathrm{ref}}\log(1/\epsilon)\).
- Norm mode: balanced chart distance, protected gradient norm, and relative
  Frobenius residual.
- Required bridge or simplification obligations: Psi-to-factor transfer,
  factor-to-residual upper and lower bounds, chart-boundary energy barrier,
  first-exit preservation, and exact PL contraction.
- Baseline invariance obligations: no refresh, projection, nuisance, reserve,
  or additive forcing after pruning; convergence is to zero residual.

## Assumption Provenance Objectives

- Step_001 derives E0 from assump:base-conditioning,
  assump:base-kr-isometry, assump:gaussian-smoothing,
  assump:dimension-regime, assump:smoothing-scale, and
  assump:perturbation-margin.
- Step_002 derives Z0, cap membership, and all coarse P-scale inequalities
  from E0 and assump:rank-regime.
- Step_003 derives the individual-factor box, \(G_{\max},L_{\max},\overline R\),
  \(\lambda_{\mathrm{acc}}\ge P^{-42}\), and the retained-state inequality
  with the same scaled reserve later used by L1.
- Step_004 derives the joint-zero cubic activation and partial-zero rule from
  the exact objective and assump:random-tape.
- Step_005 defines the local I_e certificate and proves I_0.  Generic I_e is
  a local conditional interface; when Q is nonempty it also schedules the
  deterministic queued-clear prefix before any fresh score query.  It is
  globally produced only after the transition in steps_006-step_008 is
  iterated by step_009.
- Step_006 executes that scheduled clear, derives the weighted mild positive
  signed gap and score floor from a coupled fresh block conditional on I_e,
  and includes terminal U exhaustion in the stopped event.
  The deterministic global-winner filter is produced only after P0
  amplification.
- Step_007 derives the two-sided pre-parking radial time, score persistence,
  \(\chi\le P^{-4}\), the all-candidate barrier, queued maturation in
  \(P^{108}\), mature persistence, and the strict protected cap margin.
  Project/reset events affect the objective reserve but do not directly jump
  protected coordinates.
- Step_008 derives actual target-mass transfer and I_{e+1}; no label alone
  removes a target term.
- Step_009 derives the global stopped tape event, uses the single scaled
  reserve in the Lyapunov, counts all epochs, and proves the protected
  polishing certificate \(\Psi_{\mathrm{pol}}\le\|T\|^2P^{-154}\).
- Step_010 derives balanced chart distance and relative residual after
  pruning from explicit Psi-to-factor and factor-to-tensor inequalities.
- Step_011 derives the adjoint expansion, current-Jacobian bounds,
  chart-boundary energy lower bound, the generated accepted-step cap,
  annular first-exit preservation, and defect-free PL.
- Step_012 derives the coordinate-to-relative residual bridge, probability
  conversion, and polynomial work.

## Mechanism-Source And Boundary Stress

### E0/Z0: realized event and exact baseline

- Step ID: step_001 and step_002.
- Claim class: concentration, conditioning, exact representation, and baseline.
- Theorem role: source for every same-target comparison.
- Mechanism source: direct normalized Gaussian concentration, the primitive
  \(1/64\) Khatri--Rao margin, Schur products, and tensor-preserving balance.
- Source-to-claim adequacy: perturbation plus base error is at most \(1/32\)
  in the exact normalized-column/operator-norm convention of setting.md.
- Residual-to-target adequacy: Z0 reproduces the actual unnormalized T exactly.
- Key positive/control term or structural source: static Gram slack and exact
  multilinearity.
- Opposing defect terms: normalization tails and finite union failure, paid by
  the smoothing margin and instance probability.
- Closure/dominance/absorption relation: static inequalities; no accumulation.
- Accumulation behavior / scope compatibility: static.
- Obligation locality classification: step-local.
- Noncircular closure status: primitive data -> step_001 -> step_002.
- Entry-state / first-update stress result: excess slots are joint zero and are
  activated only by J0.
- Baseline conclusion preserved: exact zero residual inside the cap.
- Producer-consumer provenance: E0/Z0 feed all later steps.
- Null or boundary regime tested: small column, \(T=0\), and cap edge.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes.
- Repair route if source is unsupported: instance-level blocker.

### C0: raw trial and one scaled retained-state reserve

- Step ID: step_003.
- Claim class: step lower bound and discontinuous-event closure.
- Theorem role: common globalization interface.
- Mechanism source: direct cubic derivatives on the guarded individual-factor
  segment, dyadic Armijo, and the finite path budget.
- Source-to-claim adequacy: include \(1/(4L_{\max})\) in lambda0.  If a
  retained tensor jump has size d, then
  \[
  F_{\mathrm{ret}}-F_{\mathrm{trial}}
  \le\overline Rd+d^2/2,
  \]
  while
  \[
  \widetilde{\mathfrak B}(b)-\widetilde{\mathfrak B}(b-d)
  \ge P^{12}(\overline Rd+d^2/2).
  \]
- Residual-to-target adequacy: d is measured in the actual tensor Frobenius
  norm and \(\overline R\) bounds the actual guarded residual.
- Key positive/control term or structural source: fixed guard gaps and reserve
  decrease.
- Opposing defect terms: Taylor remainder and post-Armijo events, controlled
  by Lmax and the same scaled reserve.
- Closure/dominance/absorption relation:
  \[
  F^++\widetilde{\mathfrak B}(b^+)
  \le F+\widetilde{\mathfrak B}(b)
  -\lambda_{\mathrm{acc}}\|\nabla_{\mathcal U}F\|_F^2/4.
  \]
- Accumulation behavior / scope compatibility: one telescoping scaled reserve
  for the entire finite event path.
- Obligation locality classification: step-local.
- Noncircular closure status: uses only E0/Z0 and current guards.
- Entry-state / first-update stress result: initial seed has nonempty guard;
  first cap crossing is projected once.
- Baseline conclusion preserved: the reserve is exhausted before local
  refinement and creates no floor.
- Producer-consumer provenance: step_003 feeds all dynamic steps.
- Null or boundary regime tested: zero gradient, parked set, guard boundary.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: retained-state descent is unaccounted.
- Repair route if unsupported: protocol-level blocker.

### J0/I0: activation and epoch-entry source

- Step ID: step_004 and step_005.
- Claim class: entry-state activation and conditional residual decomposition.
- Theorem role: legal source for W0/P0.
- Mechanism source: exact cubic injection identity and A/Q/U target partition.
- Source-to-claim adequacy: at e=0, \(A=Q=\varnothing,U=[r]\) and the seed
  tensor is bounded by \(\|T\|P^{-118}\); a generic I_e exposes
  \[
  R_e=T_{U_e}+\sum_{j\in Q_e}(\tau_jv_j-Q_{j,e})+E_e,
  \qquad \|E_e\|\le\|T\|P^{-32}.
  \]
- Residual-to-target adequacy: queued terms remain actual target errors.
- Key positive/control term or structural source: cubic score and exact target
  partition.
- Opposing defect terms: seed nuisance and mature leakage, explicitly in E_e.
- Closure/dominance/absorption relation: base direct; generic certificate is
  consumed only conditionally by the one-epoch transition.
- Accumulation behavior / scope compatibility: local one-epoch interface.
- Obligation locality classification: step-local.
- Noncircular closure status: I0 base precedes all transition lemmas.
- Entry-state / first-update stress result: joint zero is stationary until
  scheduled refresh.
- Baseline conclusion preserved: no target mass is deleted.
- Producer-consumer provenance: J0/I0 feed W0, P0, D0, and L1.
- Null or boundary regime tested: empty U/Q and threshold E.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: W0 has no target residual source.
- Repair route if unsupported: transition-interface blocker.

### W0: mild relative gap and fresh-block event

- Step ID: step_006.
- Claim class: adaptive anti-concentration, positive signed lead, and mild
  largest-coordinate separation.
- Theorem role: sole random source for an initial target basin; winner
  exclusion is a deterministic P0/D0 output rather than a random premise.
- Mechanism source: fresh Haar directions represented by normalized Gaussians,
  weighted coordinates \(z_{ij}=\tau_jq_j\), and a direct order-statistic
  lemma.
- Source-to-claim adequacy: write \(m_0=1/(8\log(2r))\), and let
  \(j_\star(e)\) be a largest-\(\tau_j\) index in \(U_e\).  If \(Q_e\ne
  \varnothing\), the step_005 entry certificate schedules and step_006
  executes the deterministic queued-clear prefix of
  length
  \[
  T_Q\le 4(\lambda_{\mathrm{acc}}q_0\theta)^{-1}\le P^{103}.
  \]
  The physical Q-error functional and the queued recurrence give, at the
  query boundary,
  \[
  \|R_{Q,e}\|_F\le \|T\|_FP^{-40},\qquad
  \|E_e\|_F\le \|T\|_FP^{-32}.
  \]
  During this prefix every fresh probationary contribution is below
  \(P^{-20}q_0\) and its direction changes by at most \(P^{-20}\).  A
  deferred-decision coupling therefore replaces its boundary direction by
  the independent Haar seed at total variation cost \(P^{-40}\); this is
  the only adaptive cost in W0.  Thus the fresh event is evaluated after
  queued clearing, rather than conditioning a product-normal variable on a
  potentially larger Q-error.
  For \(q_{ij}=\langle d_i,v_j\rangle\), set \(z_{ij}=\tau_jq_{ij}\) and
  require
  \[
  z_{ij_\star}\ge q_0,\qquad z_{ij_\star}>0,\qquad
  z_{ij_\star}\ge(1+m_0)\max_{\ell\in U_e\setminus\{j_\star\}}|z_{i\ell}|.
  \]
  Since \(j_\star\) is a largest-weight unresolved target,
  \(\tau_{j_\star}\ge(\sum_{\ell\in U_e}\tau_\ell^2)^{1/2}/\sqrt r\),
  and E0 gives \(q_0/\tau_{j_\star}\le P^{-20}\).  Conditioning on two
  modes and integrating the one-dimensional product-normal density gives
  the heteroscedastic order-statistic bound
  \[
  \Pr\!\left(z_{ij_\star}\ge q_0,\ z_{ij_\star}>0,\
    z_{ij_\star}\ge(1+m_0)\max_{\ell\ne j_\star}|z_{i\ell}|\right)
  \ge {c\over r\log(2r)}(1-CP^{-20}),
  \]
  uniformly for \(\tau_{\max}/\tau_{\min}\le P^6\).  At the cleared
  boundary, \(|\langle R_{Q,e}+E_e,d_i\rangle|\le P^{-10}z_{ij_\star}\)
  whenever the score-floor event holds, so no symmetry assertion about a
  large queued projection is used.  The same density calculation gives the
  score-floor failure \(P^{-40}\), and the \(P^{-20}\) direction-coupling
  error is absorbed in it.  With
  \(k\ge C_{\mathrm{rank}}r^{3/2}(\log r)^2\),
  \[
  \Pr((\mathsf G_e^{\mathrm{fresh}})^c\mid\mathsf E_e,I_e)
  \le \exp\!\left[-{ck\over r\log(2r)}\right]+P^{-40}
  \le r^{-24}.
  \]
  This is a weighted mild gap, not l1-sum domination, and it exports the
  actual \((j_\star,\ell_0,\chi_0)\) values consumed by P0.
- Residual-to-target adequacy: the positive lead is indexed by the actual
  largest-weight target \(j_\star\), and the cleared residual bound gives
  \[
  s_{i,0}=z_{ij_\star}+\eta_i\ge(1-P^{-10})z_{ij_\star}\ge3q_0/4.
  \]
  The weighted competitor ratio is normalized by this lead, so unequal
  target weights and the queued error are transferred to the same target
  score rather than compared to an unrelated absolute scale.
- Key positive/control term or structural source: positive signed lead and
  mild largest-coordinate gap.
- Opposing defect terms: aggregate mixed coordinates, queued residual, E_e,
  angular drift, and self interaction; P0 contracts them dynamically.
- Closure/dominance/absorption relation: W0 exports only
  \(\Gamma_0:=z_{ij_\star}/q_0\ge1\), \(z_{ij_\star}>0\), and
  \(\chi_0\le C\sqrt r\), after the cleared-Q coupling.  P0's
  score-barrier lemma, not W0, proves
  \(\max_{i\notin{\cal B}_e}s_i\le3q_0/8\) while the basin candidate has
  \(s_i\ge q_0\).
- Accumulation behavior / scope compatibility: successful prefixes query at
  most r blocks; terminal U exhaustion is required, so no first-failure
  omission and no S-fold union.
- Obligation locality classification: step-local.
- Noncircular closure status: W0 consumes only I_e and the current fresh
  block; L1 later iterates the transition.
- Entry-state / first-update stress result: at seed radius J0 supplies the
  positive cubic sign.  An orthogonal or nonpositive block is a failed
  \(\mathsf G_e^{\mathrm{fresh}}\), not a claimed deterministic progress
  branch.
- Baseline conclusion preserved: candidates are compared with the actual T.
- Producer-consumer provenance: W0 produces the fresh event and
  \((\Gamma_0,\chi_0)\) for P0.  P0/D0 later produce the global-winner
  consequence.
- Null or boundary regime tested: equal-weight orthogonal targets, a tied
  largest coordinate, a negative signed lead, and score-floor small ball.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: the largest-score rule can select a mixed duplicate.
- Repair route if unsupported: weighted order-statistic or transition-interface
  blocker; no hidden absolute small-ball assumption is allowed.

### P0/D0: score persistence, queued growth, and physical transfer

- Step ID: step_007 and step_008.
- Claim class: dynamic positivity, target assignment, noncancellation, and
  cap margin.
- Theorem role: turn W0's relative winner into a mature true-channel
  representative before removing any target mass.
- Mechanism source: W0's relative cone, E0 Gram separation, and direct
  radial/angular recurrences.
- Source-to-claim adequacy: split the dynamics at the queued-clear time and
  the first probationary parking time.  After the optional Q-clear prefix,
  define the signed lead \(\ell_t=s_{j_\star}(t)\), the aggregate ratio
  \[
  \chi_t=\frac{\left(\sum_{\ell\ne j_\star}z_{\ell,t}^2\right)^{1/2}
  +|\eta_t|}{\ell_t},
  \qquad b_t=\lambda_tg_t\ell_t.
  \]
  W0 supplies \(\ell_0\ge3q_0/4\), \(\chi_0\le C\sqrt r\), and the weighted
  gap.  Direct balanced differentiation, with the E0 Gram margin and the
  C0 guard, gives for \(g_t<2\theta\), \(b_t\le P^{-20}\),
  \[
  \ell_{t+1}\ge\ell_t\left[1+\frac18b_t
     -Cb_t\bigl(P^{-24}+P^{-4}\chi_t\bigr)\right],
  \qquad
  \ell_{t+1}\le\ell_t(1+2b_t)+Cb_tP^{-32}q_0,
  \tag{P0-lead}
  \]
  \[
  \chi_{t+1}\le(1-b_t)\chi_t+
     Cb_t\bigl(P^{-12}+P^{-24}\chi_t\bigr).
  \tag{P0-chi}
  \]
  The \(b_t/8\) term is the positive self-alignment of the selected
  weighted coordinate; it is present before any target-scale queue update.
  The radial calculation has matching two-sided bounds
  \[
  g_t(1+\tfrac12b_t)\le g_{t+1}\le g_t(1+2b_t),
  \tag{P0-radial}
  \]
  where the omitted Taylor term is at most
  \(Cb_t(P^{-24}+P^{-4}\chi_t)\) and is absorbed in the displayed
  constants.  Hence
  \[
  \frac12\log\frac{g_T}{g_0}
  \le \sum_{t<T}b_t
  \le4\log\frac{g_T}{g_0}+1.
  \tag{P0-time}
  \]
  At the first crossing \(g_T\in[2\theta,2\theta(1+P^{-20})]\), while
  \(g_0=\delta\), and the exact definitions give
  \[
  \log(2\theta/\delta)=\frac{40}{3}\log P+\log2.
  \]
  Therefore
  \[
  B_{\mathrm{park}}:=\sum_{t<T}b_t
  \ge {1\over2}\log(2\theta/\delta)
  \ge {20\over3}\log P.
  \]
  The lower radial increment
  \(g_{t+1}-g_t\ge\lambda_{\mathrm{acc}}g_t^2q_0/4\) also gives
  \[
  T\le {8\over\lambda_{\mathrm{acc}}q_0\delta}\le P^{116}<H,
  \]
  so the pre-parking phase is available inside one fixed epoch.  Iterating
  (P0-chi) and using \(r\le P\) yields
  \[
  \chi_T\le e^{-B_{\mathrm{park}}}\chi_0+CP^{-12}
  \le P^{-4},
  \]
  for the declared large-\(P\) regime.  Iterating (P0-lead), the total
  relative loss is at most \(CP^{-20}B_{\mathrm{park}}\), while the
  self-alignment contributes \(B_{\mathrm{park}}/8\); hence
  \(\ell_T\ge q_0\) and the sign is preserved.  This is the pre-D0
  amplification.  The first crossing is then project-and-parked by the
  fixed protocol.
  Separately, after D0 promotes \(j_\star\) into Q, the queued recurrence
  uses the target coefficient \(\tau_{j_\star}\):
  \[
  g_{t+1}^Q\ge g_t^Q+\lambda_t(g_t^Q)^2q_0/4,\qquad
  (\lambda_{\mathrm{acc}}q_0\theta)^{-1}\le P^{103}.
  \]
  This later phase supplies physical target-error reduction and is not used
  to justify the preceding promotion.
- Residual-to-target adequacy: at the boundary define the deterministic basin
  set
  \[
  {\cal B}_e=\{i:\ \exists j\in U_e,\ z_{ij}>0,\ 
    z_{ij}\ge(1+m_0)\max_{\ell\ne j}|z_{i\ell}|,\ 
    \chi_i\le P^{-4},\ s_i\ge q_0\}.
  \]
  For every candidate outside \({\cal B}_e\), let \(j_i\) be its largest
  positive weighted coordinate and
  \(\mu_i=(\sum_{\ell\ne j_i}|z_{i\ell}|+|\eta_i|)/z_{ij_i}\).
  The same balanced differentiation gives the score-barrier recurrence
  \[
  \Delta_{i,t+1}\le(1-\tfrac14b_{i,t})\Delta_{i,t}
       +Cb_{i,t}P^{-32}q_0,\qquad
  \Delta_{i,t}:=(s_i(t)-q_0/4)_+
       +4q_0(\mu_i(t)-m_0/2)_+.
  \tag{P0-filter}
  \]
  At a first time with \(g_i\ge\theta\), (P0-filter) implies either
  \(i\in{\cal B}_e\) or \(s_i\le3q_0/8\).  Thus this is a deterministic
  all-candidate exclusion, including tied or mixed coordinates, rather than
  an additional random premise.  The W0 candidate has
  \(s_i\ge\ell_T\ge q_0\), so
  \[
  \max_{i\notin{\cal B}_e}s_i\le3q_0/8
  <q_0\le\max_{i\in{\cal B}_e}s_i.
  \]
  The protocol's largest-score rule therefore promotes a basin candidate.
  Moving its target j to Q replaces \(\tau_j^2\) by the actual
  \(\|\tau_jv_j-Q_j\|^2\); no target mass is deleted until P0 maturation.
- Key positive/control term or structural source: the relative target lead,
  Gram diagonal dominance, and positive homogeneous radial term.
- Opposing defect terms: evolving mature residual, queued component, nuisance,
  angular drift, signs, and cap pressure.
- Closure/dominance/absorption relation: (P0-radial) and (P0-time) give a
  finite pre-parking angular budget with both lower and upper sides.  The
  \(P^{-24}\) lead defect and the \(P^{-12}\) chi floor are summable over
  \(B_{\mathrm{park}}\le 4\log(2\theta/\delta)+1\); the self-alignment
  term pays for the initial \(3q_0/4\) score.  The output is
  \(\ell_T\ge q_0,\chi_T\le P^{-4}\) and the filter (P0-filter) for every
  candidate.  The separate queued recurrence then yields mature radii at
  most \(4\kappa\), target-error decrease at least
  \(\|T\|^2P^{-16}\), and margin \(R_{\max}-g\ge R_{\max}/2\).
- Accumulation behavior / scope compatibility: Q has size at most one; each
  target is queued once; nuisance is contraction-scaled; event loss is in
  the single scaled reserve.
- Obligation locality classification: step-local conditional on W0.
- Noncircular closure status: W0/P0 are universal I_e transition lemmas;
  D0 consumes both, and L1 iterates them.
- Entry-state / first-update stress result: the first promoted component stays
  queued with its full target error; the last Q target gets a counted
  maturation epoch before U is declared empty.
- Baseline conclusion preserved: all physical target error is retained until
  actual maturation.
- Producer-consumer provenance: P0/D0 produce the next I certificate and
  feed L1.
- Null or boundary regime tested: negative W0 sign (rejected), initial
  \(\chi_0=C\sqrt r\), score lead \(3q_0/4\), mixed/tied candidate at the
  filter barrier, first crossing \(2\theta\), and empty U.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: duplicate promotion or protected cap crossing.
- Repair route if unsupported: target-assignment/persistence blocker.

### L1: one scaled reserve, stopped induction, and polishing

- Step ID: step_009.
- Claim class: repeated-scope Lyapunov closure, probability, and chart entry.
- Theorem role: global producer of all burn-in invariants.
- Mechanism source: I0 base, W0/P0/D0 transition, and
  \[
  \mathcal L_e=F_e+\frac18\mathcal M_e+\frac18\Psi_e+
  \widetilde{\mathfrak B}(b_e)
  \]
  with the same \(\widetilde{\mathfrak B}=P^{12}\mathfrak B\) in every
  recurrence and initial bound.
- Source-to-claim adequacy: on the recursively defined successful-prefix
  event, every epoch with U nonempty promotes one target.  A final-Q
  maturation or any deterministic restoring branch decreases L by
  \(\|T\|^2P^{-18}\).  The scaled reserve pays all \(P^{12}e_t\) charges
  exactly, so charges cannot concentrate into an unaccounted epoch.
- Residual-to-target adequacy: F and M use actual T and target tensors;
  Psi is a squared protected cluster tensor error.
- Key positive/control term or structural source: physical target-error
  reduction and the W0 stopped event.
- Opposing defect terms: event loss, nuisance, and final pruning.  They are
  respectively reserved, contraction-scaled, and included before B0.
- Closure/dominance/absorption relation:
  \[
  \mathcal L_{e+1}\le\mathcal L_e-\|T\|_F^2P^{-18}
  \]
  unless a new U target is promoted.  Since
  \(\mathcal L_0+\widetilde{\mathfrak B}(B_{\mathrm{disc}})
  \le P\|T\|^2\), \(N_{\mathrm{dec}}\le P^{19}<S\).  After the last Q
  matures, the remaining burn-in includes a protected polishing window with
  \[
  \Psi_{t+1}\le(1-P^{-66}/2)\Psi_t+
  CP^{-66}\|T\|^2P^{-156},
  \]
  hence \(\Psi_{\mathrm{pol}}\le\|T\|^2P^{-154}\).
- Accumulation behavior / scope compatibility: one reserve, one finite event
  ledger, contraction-scaled nuisance, and a declared final-Q plus polishing
  count all fit S=P^20.
- Obligation locality classification: step-local conditional on the transition.
- Noncircular closure status: successful prefixes are constructed recursively;
  terminal U exhaustion is required, not inferred from a tautological event.
- Entry-state / first-update stress result: I0 is explicit; after the last Q
  epoch, no proposal query is needed and polishing begins under P0.
- Baseline conclusion preserved: all forcing ends at pruning and no floor is
  exported to B1.
- Producer-consumer provenance: L1 produces the global burn-in state,
  \(\mathcal E_{\mathrm{tape}}\), cap margin, and \(\Psi_{\mathrm{pol}}\).
- Null or boundary regime tested: U/Q empty, reserve exhausted, and exact
  zero error.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: S would not imply chart entry.
- Repair route if unsupported: epoch-induction blocker.

### B0: quantitative Psi-to-factor and residual entry

- Step ID: step_010.
- Claim class: same-target chart entry and public residual bridge.
- Theorem role: last consumer of historical events and first producer of the
  exact local chart.
- Mechanism source: L1 polishing, E0-conditioned balanced cluster map, Z0,
  and final pruning.
- Source-to-claim adequacy: E0 and the signed cluster map give
  \[
  \|h_{\mathrm{prot}}\|_2
  \le P^4\frac{\sqrt{\Psi_{\mathrm{pol}}}}{\|T\|_F}
  \le P^4P^{-77}=P^{-73}.
  \]
  Pruning changes only probationary slots and their tensor is set to zero.
  The protected Jacobian upper bound \(\|J_\star\|\le P^4\) and nonlinear
  remainder \(P^8\|h\|^2\) therefore give
  \[
  \|R_{\mathrm{prot}}\|_F
  \le P^4\|h_{\mathrm{prot}}\|+P^8\|h_{\mathrm{prot}}\|^2
  \le\|T\|_FP^{-62}.
  \]
- Residual-to-target adequacy: both inequalities compare directly with the
  exact T and use no transformed target.
- Key positive/control term or structural source: the explicit
  \(\Psi_{\mathrm{pol}}\) bound and conditioned cluster-to-coordinate map.
- Opposing defect terms: final nuisance tensor, leakage, and historical
  event path; nuisance is zero after pruning, while leakage/path are already
  included in Psi and L1.
- Closure/dominance/absorption relation:
  \(\|h_{\mathrm{prot}}\|\le P^{-73}<P^{-36}/4\), leaving a strict chart
  margin; the residual inequality is the public stopping bridge.
- Accumulation behavior / scope compatibility: one-time transfer; no
  historical reserve appears after export.
- Obligation locality classification: step-local.
- Noncircular closure status: L1 -> B0; B0 does not invoke PL.
- Entry-state / first-update stress result: if the P^-62 residual meets epsilon,
  R0 stops before updating.
- Baseline conclusion preserved: B0 is centered on the exact Z0 solution.
- Producer-consumer provenance: B0 feeds B1 and R0.
- Null or boundary regime tested: h=0 and h at quarter chart radius.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: no quantitative chart entry.
- Repair route if unsupported: same-target transfer blocker.

### B1: Jacobian, boundary energy, and first exit

- Step ID: step_011.
- Claim class: local nondegeneracy, PL, and basin preservation.
- Theorem role: exact protected-only refinement interface.
- Mechanism source: direct balanced Jacobian calculation at Z0 and E0 Grams.
- Source-to-claim adequacy: on the full chart \(\|h\|\le P^{-36}\), direct
  balanced-coordinate differentiation gives
  \[
  R(h)=-J_\star h-N(h),\quad J(h)=J_\star+D(h),
  \]
  \[
  \sigma_{\min}(J_\star)\ge P^{-3},\qquad
  \|J_\star\|\le P^4,\quad \|J(h)\|\le P^4,\quad
  \|D(h)\|\le P^8\|h\|,\quad \|N(h)\|\le P^8\|h\|^2.
  \]
  Expand the actual adjoint residual, rather than applying a singular-value
  bound to an arbitrary ambient residual:
  \[
  J(h)^*R(h)
  =-J_\star^*J_\star h
    -D(h)^*J_\star h
    -J(h)^*N(h).
  \tag{B1-adjoint}
  \]
  The leading term has
  \(\|J_\star^*J_\star h\|\ge P^{-6}\|h\|\), while
  \[
  \|D(h)^*J_\star h\|\le P^{12}\|h\|^2,\qquad
  \|J(h)^*N(h)\|\le P^{12}\|h\|^2.
  \]
  On the \(P^{-36}\) chart these two errors are at most
  \(2P^{-24}\|h\|\), so
  \[
  \|\nabla_{\mathrm{prot}}F\|=\|J(h)^*R(h)\|
  \ge\tfrac12P^{-6}\|h\|.
  \]
  Since \(\|R(h)\|\le2P^4\|h\|\), this implies the ledger-strength
  \[
  \|\nabla_{\mathrm{prot}}F\|_F^2\ge2P^{-24}F
  \]
  for large P.  At the chart boundary,
  \[
  \|R(h)\|_F\ge\tfrac12P^{-3}P^{-36}= \tfrac12P^{-39},
  \qquad F_{\partial}\ge P^{-78}/8.
  \]
  B0 gives \(F_0\le\|T\|^2P^{-124}/2\le P^{-116}\), strictly below
  \(F_{\partial}/2\) for large P.
- Annular/discrete first-exit bridge: after pruning there are no projection or
  reset jumps.  On the protected chart, the direct reverse-Taylor expansion
  of the balanced CP cubic (using the E0 Gram lower bound and the \(P^8\)
  remainder) gives the line-search lemma: for every dyadic
  \(\lambda>P^{-28}\), either a protected radius guard fails or
  \[
  F(q-\lambda\nabla F)>F(q)-{\lambda\over4}\|\nabla F\|^2.
  \tag{B1-reverse}
  \]
  Such a trial cannot satisfy the Armijo test, so largest-dyadic maximality generates
  \[
  \lambda_{\mathrm{acc}}P^8\le P^{-20},\qquad
  \|h^+-h\|\le\lambda_{\mathrm{acc}}\|J(h)^*R(h)\|
  \le P^{-20}\|h\|.
  \tag{B1-step-cap}
  \]
  The same displacement estimate holds for every accepted protected step.
  Thus an endpoint that first crosses \(r_{\mathrm{ch}}=P^{-36}\) lies in
  \(\|h\|\le(1+P^{-20})r_{\mathrm{ch}}\), where the residual expansion gives
  \(F\ge F_{\partial}/2\).  The accepted Armijo inequality gives
  \(F^+\le F\le F_0<F_{\partial}/2\), a contradiction.  This quantified
  annular displacement argument supplies first-exit preservation without
  assuming descent for an unproved larger partial path; C0's
  \(1/(4L_{\max})\) restriction is used for feasibility and the accepted-step
  lower bound.
- Residual-to-target adequacy: R is exactly \(T-\Phi_{\mathrm{prot}}\);
  no historical event term remains.
- Key positive/control term or structural source: the residual algebra
  \(J(h)^*[-J_\star h-N(h)]\), uniform current-Jacobian closeness, and the
  boundary-energy gap.
- Opposing defect terms: only the quadratic state-dependent remainder.
- Closure/dominance/absorption relation: the \(N(h)\) and D(h) remainders are
  at most half the \(J_\star^*J_\star h\) term on the chart; the generated
  accepted-step cap places any first exiting endpoint in the annulus where
  the boundary energy contradiction closes the discrete induction.
- Accumulation behavior / scope compatibility: defect-free geometric
  recurrence over the finite refinement horizon.
- Obligation locality classification: step-local.
- Noncircular closure status: B0 entry -> current Jacobian -> PL and first exit.
- Entry-state / first-update stress result: h=0 is stationary and any nonzero
  entry has a positive first PL decrease.
- Baseline conclusion preserved: no additive floor.
- Producer-consumer provenance: B1 feeds R0.
- Null or boundary regime tested: h=0, chart boundary, and least singular
  Jacobian direction.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: first exit and exact convergence fail.
- Repair route if unsupported: local geometry blocker.

### R0: coordinate-to-relative residual and no-floor rate

- Step ID: step_012.
- Claim class: public metric conversion, geometric contraction, and runtime.
- Theorem role: final theorem bridge.
- Mechanism source: C0 step lower bound and B1 PL.
- Source-to-claim adequacy: throughout the chart,
  \[
  \|R(h)\|_F\le P^4\|h\|+P^8\|h\|^2
  \le2P^4\|h\|.
  \]
  Thus \(\|h\|\le\epsilon\|T\|/(2P^4)\) implies the relative residual
  criterion.  More directly,
  \[
  F_{t+1}\le(1-\tfrac12P^{-66})F_t.
  \]
- Residual-to-target adequacy: \(2F=\|T-\Phi_{\mathrm{prot}}\|_F^2\)
  is the exact public metric.
- Key positive/control term or structural source: defect-free PL coercivity.
- Opposing defect terms: none after pruning.
- Closure/dominance/absorption relation: B0 stops immediately for
  \(\epsilon\ge P^{-62}\); otherwise \(\log P\) is absorbed into
  \(\log(1/\epsilon)\), and \(Q_{\mathrm{ref}}=8P^{66}\) suffices.
- Accumulation behavior / scope compatibility: finite geometric stopping
  horizon only.
- Obligation locality classification: step-local.
- Noncircular closure status: C0 + B0 + B1 -> R0.
- Entry-state / first-update stress result: immediate stop at a sufficiently
  accurate B0 state; otherwise first update decreases F.
- Baseline conclusion preserved: no additive term as epsilon tends to zero.
- Producer-consumer provenance: R0 exports convergence and runtime.
- Null or boundary regime tested: epsilon near one, epsilon below P^-62,
  epsilon tending to zero, and F=0.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: no relative-rate bridge.
- Repair route if unsupported: B1/R0 rate blocker.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| E0 event | step_001 | Gaussian law and base margins | normalized perturbations controlled by smoothing margin | actual T and Grams | 1/64 plus 1/64 gives 1/32 | instance confidence | all steps | None |
| Z0 reference/scales | step_002 | E0 norms and exact balance | no tensor defect | exact T | direct identity and P ledger | strict cap slack | C0, I0, B0, B1 | None |
| Raw guarded step | step_003 | Gmax, Lmax, guards | Taylor remainder controlled | actual F | lambda0 and dyadic maximality | fixed guard gaps | dynamic steps | None |
| Single scaled loss reserve | step_003 | Rbar and Bdisc | all event jumps charged in \(P^{12}\mathfrak B\) | actual loss units | exact reserve decrement | remaining path b | L1, B0 | None |
| J0 activation | step_004 | cubic identity and seed | sixth term controlled | actual residual score | cubic dominance | q0 | I0, W0 | None |
| I_e base/conditional split | step_005 | A/Q/U partition and seed | E_e explicit | actual target channels | base plus conditional transition | P^-32 coarse bound | W0, P0, D0 | None |
| Queued-clear/coupling certificate | step_005-step_006 | Q-error functional, \(P^{103}\) clear time, and seed drift bound | large queued projection removed; coupling error \(P^{-40}\) | same residual target after clear | physical Q recurrence plus deferred decisions | \(\|R_Q\|\le\|T\|P^{-40}\) | W0 | None |
| Mild fresh-gap event | step_006 | cleared Q residual, fresh Haar block, and I_e | weighted competitors, score floor, and coupling error controlled | target-indexed positive score | heteroscedastic \(1/\log r\) gap plus P0-filter | q0 floor, m0 gap, P^-40 coupling | P0, tape prefixes | None |
| Score amplification/maturation | step_007 | W0 \(\Gamma_0\), \(\chi_0\), C0, E0 | two-sided radial time, lead/chi recurrence, all-candidate barrier | actual target tensor error | \(B_{\mathrm{park}}\ge(20/3)\log P\), queued P^103 growth, P^-16 mass drop | positive lead, P^-4 chi, P0-filter | D0, L1 | None |
| Physical assignment | step_008 | W0/P0 boundary outputs | no bookkeeping deletion | Q retains actual target error | M functional | score gap | L1 | None |
| Stopped tape and global Lyapunov | step_009 | recursive prefixes, same scaled reserve | event/nuisance scopes separated | F/M/Psi actual T units | N_dec<P^19 and polishing floor P^-154 | S=P^20 | B0 | None |
| Chart entry/residual | step_010 | Psi_pol and E0 cluster map | final nuisance zero; historical path used once | exact T | h<=P^-73 and R<=T P^-62 | chart P^-36/4 | B1, R0 | None |
| PL/first exit | step_011 | current J(h), residual algebra, entry energy, and accepted-step cap | quadratic remainder only | exact protected residual | boundary \(F\ge P^{-78}/8\), entry \(F\le P^{-116}\), and annular displacement under (B1-step-cap) | chart radius | R0 | None |
| Public rate | step_012 | C0 and B1 | no post-pruning forcing | exact relative Frobenius | contraction exponent 66 and epsilon split | Q_ref | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| E0 and scales | step_001-step_002 | all later steps | instance event and exact reference | primitive assumptions -> E0 -> Z0 | derived | None |
| Raw step and scaled reserve | step_003 | steps_004-step_012 | no failure and event accounting | Z0 -> C0 | derived | None |
| Activation identity | step_004 | step_005-step_006 | first update | C0 -> J0 | derived | None |
| I0 and local I_e interface | step_005 (I0 direct; generic I_e conditional) | step_006-step_009 | induction base and transition hypothesis | E0/C0/J0 -> I0 | explicitly conditional | None |
| Queued-clear/coupling certificate | step_005 schedule, step_006 execution | step_006 | remove large Q projection before W0 | I_e -> cleared Q residual and Haar coupling | explicitly conditional | None |
| Mild fresh-gap \(\mathsf G_e^{\mathrm{fresh}}\) | step_006 | step_007-step_009 | stopped tape event | cleared Q + fresh block -> weighted mild gap | explicitly conditional, with deferred-decision coupling | None |
| Gamma/chi amplification and maturation | step_007 | step_008-step_009 | physical target reduction/cap | W0 + two-sided radial time -> P0-filter and queued maturation | explicitly conditional | None |
| I_{e+1} physical transition | step_008 | step_009 | global induction | W0/P0 -> D0 | explicitly conditional | None |
| Global tape/Lyapunov/polishing | step_009 | step_010 | burn-in theorem | I0 + transitions -> L1 | derived | None |
| Psi-to-factor/residual entry | step_010 | step_011-step_012 | same-target chart and large-epsilon stop | L1 + Z0 -> B0 | derived | None |
| Current Jacobian/PL/first exit | step_011 | step_012 | no-floor refinement | B0 + Z0 -> adjoint PL and annular displacement | derived | None |
| Relative rate/work | step_012 | final assembly | public theorem | C0 + B1 -> R0 | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | E0 realized norms, pair/triple Grams, target norm, and T nonzero | None | assump:base-conditioning, assump:base-kr-isometry, assump:gaussian-smoothing, assump:dimension-regime, assump:smoothing-scale, assump:perturbation-margin | normalized concentration | direct Gaussian/Schur calculation | E0 | Instance and exact representation | PENDING |
| step_002 | Z0 exact balance, cap membership, and P ledger | step_001 | assump:rank-regime; step_001 | same-target algebra | tensor-preserving identity | Z0/scales | Instance and exact representation | PENDING |
| step_003 | C0 raw guarded trial, lambda >= P^-42, and scaled reserve | step_002 | step_001-step_002 | trial/projection semantics | direct Taylor and event loss | raw/retained interface | Guarded burn-in | PENDING |
| step_004 | J0 cubic activation and partial-zero handling | step_003 | assump:random-tape; step_003 | dormant state | exact expansion | activation | Guarded burn-in | PENDING |
| step_005 | I0 base, local A/Q/U residual certificate, and queued-clear schedule | step_004 | step_001-step_004 | physical target split and Q transient | direct partition algebra plus queued-error budget | I0/I_e/clear schedule | Guarded burn-in | PENDING |
| step_006 | W0 weighted mild signed gap after queued clearing, score floor, and recursive failure bound | step_005 | assump:random-tape; step_001, step_003-step_005 | heteroscedastic product-normal coupling | direct weighted order statistics and deferred decisions | fresh gap and stopped tape interface | Guarded burn-in | PENDING |
| step_007 | P0 two-sided pre-parking gain, lead/chi persistence, all-candidate filter, queued P^103 maturation, and cap margin | step_005, step_006 | step_001, step_003, step_005-step_006 | evolving residual and signed lead | radial/angle recurrence, score barrier, and physical queue lemma | protected transition | Guarded burn-in | PENDING |
| step_008 | D0 all-candidate filtered assignment and I_{e+1} physical transfer | step_007 | step_005-step_007 | largest-score winner | filtered score gap and M functional | next I | Guarded burn-in | PENDING |
| step_009 | L1 stopped induction, one scaled reserve, finite count, and P^-154 polishing | step_008 | step_003, step_005-step_008 | scope accumulation | finite induction/Lyapunov | global burn-in | Guarded burn-in | PENDING |
| step_010 | B0 Psi-to-factor, chart entry, and P^-62 relative residual | step_009 | step_002, step_003, step_009 | target-side transfer | conditioned cluster map/Jacobian upper bound | chart/residual | Chart/refinement | PENDING |
| step_011 | B1 adjoint PL, accepted-step cap, boundary energy, and annular first exit | step_010 | step_001-step_003, step_010 | basin closure and ambient-adjoint control | residual expansion and annular displacement | PL chart | Chart/refinement | PENDING |
| step_012 | R0 coordinate-to-relative bridge, contraction, probability, and work | step_011 | assump:accuracy-range; step_003, step_009-step_011 | public rate | Armijo/PL recurrence | final theorem | Chart/refinement | PENDING |

## Dependency Notes

The graph is acyclic.  Step_005 proves the base I0 and defines generic I_e
only as a local conditional interface.  Step_006 clears any queued residual
before applying the weighted fresh-gap coupling; its event is evaluated only
on a successful prefix and does not assert a boundary winner.  Steps_007 and
step_008 use the two-sided radial time, the lead/chi recurrence, and the
score-barrier filter to prove the universal transition I_e to I_{e+1};
step_009 iterates that transition and requires terminal unresolved-set
exhaustion, so the tape event is nonvacuous.  The same step_009 uses one
scaled reserve throughout and performs the final polishing estimate.
Step_010 is the sole historical-event consumer.  Step_011 uses the exact
post-pruning objective, the adjoint expansion, and the accepted-step annular
displacement bound.  Step_012 consumes only C0, B0, and B1.

## Blockers

None at sketch level.  Attempt 8 replaces the earlier l1-dominant event by
a weighted mild signed gap after a queued-clear coupling, supplies matching
radial bounds and a finite pre-parking horizon, and gives an explicit
all-candidate score barrier before D0.  The B1 witness expands the actual
adjoint residual and uses a generated accepted-step cap plus annular energy
barrier.  Any failure of these direct order-statistic, recurrence, or chart
calculations is a localized step obligation and must be surfaced by the
corresponding proof-step review, not hidden as an assumption.
