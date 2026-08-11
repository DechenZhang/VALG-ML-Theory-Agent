# Proof Sketch

## Formalized Setting

This is sketch attempt 5 for the exact homogeneous asymmetric third-order CP
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

- Sketch attempt: 5
- Retry mode: revise_sketch
- Triggering artifact:
  perspective_2/idea_3/proof_history/sketch_004/proof_sketch_review.md
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
7. P0 initializes Gamma and chi from W0's actual mild-gap output, contracts
   chi from \(O(r^{1/4})\) to \(P^{-24}\) during the \(P^{103}\) growth
   window, and preserves a positive signed lead.  D0 then transfers a
   filtered winner to Q without deleting its target error.
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
12. R0 uses the coordinate-to-relative-residual upper bound, the exact
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
  a local conditional interface; it is globally produced only after the
  transition in steps_006-step_008 is iterated by step_009.
- Step_006 derives a mild positive signed gap and score floor from a fresh
  block conditional on I_e.  Its stopped recursive event is nonanticipating
  and includes terminal U exhaustion; the deterministic global-winner filter
  is produced only after P0 amplification.
- Step_007 derives score persistence, queued maturation in \(P^{108}\), mature
  persistence, and the strict protected cap margin.  Project/reset events
  affect the objective reserve but do not directly jump protected coordinates.
- Step_008 derives actual target-mass transfer and I_{e+1}; no label alone
  removes a target term.
- Step_009 derives the global stopped tape event, uses the single scaled
  reserve in the Lyapunov, counts all epochs, and proves the protected
  polishing certificate \(\Psi_{\mathrm{pol}}\le\|T\|^2P^{-154}\).
- Step_010 derives balanced chart distance and relative residual after
  pruning from explicit Psi-to-factor and factor-to-tensor inequalities.
- Step_011 derives a current-Jacobian bound, chart-boundary energy lower bound,
  first-exit preservation, and defect-free PL.
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
- Source-to-claim adequacy: write \(m_0=1/(8\log(2r))\).  The fresh event
  \(\mathsf G_e^{\mathrm{fresh}}\) requires, for some actual \(j\in U_e\),
  \[
  z_{ij}=\tau_jq_{ij}\ge q_0,\qquad z_{ij}>0,\qquad
  z_{ij}\ge(1+m_0)\max_{\ell\in U_e\setminus\{j\}}|z_{i\ell}|,
  \]
  and the aggregate initial competitor ratio
  \[
  \chi_{i,0}:=
  \frac{\left(\sum_{\ell\ne j}z_{i\ell}^2\right)^{1/2}
        +|\eta_i|}{z_{ij}}
  \le C\sqrt r.
  \]
  This is a mild largest-coordinate gap, not l1-sum domination.  A direct
  product-normal order-statistic calculation gives
  \[
  p_{\mathrm{mild}}\ge\frac{c}{r\log(2r)},\qquad
  \Pr((\mathsf G_e^{\mathrm{fresh}})^c\mid\mathsf E_e,I_e)
  \le e^{-ck/(r\log(2r))}+P^{-40}\le r^{-24}.
  \]
  The \(P^{-40}\) term is only the score-floor small ball; no absolute
  competitor window is imposed.
- Residual-to-target adequacy: the positive lead is indexed by an actual j
  and \(z_{ij}\) is the signed target contribution.  Queued/error terms enter
  \(\eta_i\) and are normalized by the lead, rather than being required to
  be smaller than an absolute \(q_0\) scale.
- Key positive/control term or structural source: positive signed lead and
  mild largest-coordinate gap.
- Opposing defect terms: aggregate mixed coordinates, queued residual, E_e,
  angular drift, and self interaction; P0 contracts them dynamically.
- Closure/dominance/absorption relation: W0 exports only
  \(\Gamma_0:=z_{ij}/q_0\ge1\), \(z_{ij}>0\), and
  \(\chi_0\le C\sqrt r\).  P0's winner-filter lemma, not W0, proves that
  every candidate outside a target basin has boundary score at most half the
  filtered basin score.
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
- Repair route if unsupported: new-idea routing; no hidden absolute small-ball
  assumption is allowed.

### P0/D0: score persistence, queued growth, and physical transfer

- Step ID: step_007 and step_008.
- Claim class: dynamic positivity, target assignment, noncancellation, and
  cap margin.
- Theorem role: turn W0's relative winner into a mature true-channel
  representative before removing any target mass.
- Mechanism source: W0's relative cone, E0 Gram separation, and direct
  radial/angular recurrences.
- Source-to-claim adequacy: initialize
  \(\Gamma_t=s_j(t)/q_0\) and
  \[
  \chi_t=\frac{\left(\sum_{\ell\ne j}z_{\ell,t}^2\right)^{1/2}
  +|\eta_t|}{s_j(t)}.
  \]
  W0 supplies \(\Gamma_0\ge1\), a positive signed lead, and
  \(\chi_0\le C\sqrt r\).  The direct homogeneous recurrence, while
  \(g_t\le\theta\), is
  \[
  \Gamma_{t+1}\ge
  (1-c\lambda_tg_t^2\tau_j)\Gamma_t
  -C\lambda_tg_t^2\tau_j(P^{-32}+\chi_tP^{-24}),
  \]
  \[
  \chi_{t+1}\le
  (1-c\lambda_tg_t^2\tau_j)\chi_t
  +C\lambda_tg_t^2\tau_j(P^{-24}+\zeta_t),
  \qquad \zeta_t\le P^{-32}.
  \]
  Let \(A_t=\sum_{s<t}\lambda_sg_s^2\tau_j\).  The radial phase reaches
  target scale by \(P^{103}\); the remaining \(H-P^{103}\) guarded updates
  then give \(A_H\ge80\log P\) from the target-scale restoring coefficient,
  so summing the coupled
  inequalities yields
  \[
  \Gamma_t\ge\frac12,\qquad \chi_t\le P^{-24},\qquad
  s_j(t)\ge q_0/2
  \]
  after the amplification phase.  The score remains positive throughout.
  Then \(g_{t+1}\ge g_t+\lambda_tg_t^2q_0/4\), so queued growth takes at
  most \(P^{103}\) updates and the proof envelope is \(P^{108}\).
- Residual-to-target adequacy: after amplification, D0 uses
  \[
  s_i=z_{ij}+\eta_i,\qquad |\eta_i|\le P^{-24}z_{ij},
  \]
  at the boundary.  The deterministic winner-filter lemma shows that every
  candidate which did not enter a target basin has score at most
  \(s_i(1-P^{-32})\), so the global largest score is a basin candidate.
  Moving j to Q replaces \(\tau_j^2\) by the actual
  \(\|\tau_jv_j-Q_j\|^2\); it is not deleted until P0 maturation.
- Key positive/control term or structural source: the relative target lead,
  Gram diagonal dominance, and positive homogeneous radial term.
- Opposing defect terms: evolving mature residual, queued component, nuisance,
  angular drift, signs, and cap pressure.
- Closure/dominance/absorption relation: the two-dimensional
  \((\Gamma,\chi)\) recurrence is a small-gain system whose initial values
  are exactly the W0 outputs, not stronger premises.  Its integrated gain
  contracts \(C\sqrt r\) to \(P^{-24}\) while retaining
  \(\Gamma\ge1/2\).  P0 then yields mature radii at most \(4\kappa\),
  target-error decrease at least \(\|T\|^2P^{-16}\), and margin
  \(R_{\max}-g\ge R_{\max}/2\).
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
  \(\chi_0=C\sqrt r\), score lead at \(1/2\), first crossing \(2\theta\),
  and empty U.
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
  \sigma_{\min}(J(h))\ge P^{-3}/2,\qquad
  \|J(h)\|\le P^4,\qquad
  \|D(h)\|\le P^8\|h\|,\qquad
  \|N(h)\|\le P^8\|h\|^2,
  \]
  and \(\sigma_{\min}(J_\star)\ge P^{-3}\).  Therefore
  \[
  \|\nabla_{\mathrm{prot}}F\|
  =\|J(h)^*R(h)\|
  \ge\frac{P^{-3}}2
  \bigl(P^{-3}\|h\|-P^8\|h\|^2\bigr)
  \ge\frac14P^{-6}\|h\|.
  \]
  Also \(\|R(h)\|\le2P^4\|h\|\), so for large P
  \[
  \|\nabla_{\mathrm{prot}}F\|_F^2\ge2P^{-24}F.
  \]
  At the chart boundary,
  \[
  \|R(h)\|_F\ge\frac12P^{-3}P^{-36}
  =\frac12P^{-39},\qquad
  F_{\partial}\ge P^{-78}/8.
  \]
  B0 gives \(F_0\le\|T\|^2P^{-124}/2\le P^{-116}\), strictly below
  \(F_{\partial}\) for large P.
- Annular/discrete first-exit bridge: after pruning there are no projection or
  reset jumps.  C0's \(1/(4L_{\max})\) restriction gives, for every partial
  protected trial along the balanced segment,
  \(F(q_{\lambda'})\le F(q)-\lambda'\|\nabla F(q)\|^2/8\) for
  \(0\le\lambda'\le\lambda\).  If a discrete accepted step first exited
  \(\|h\|\le P^{-36}\), its continuous trial path would cross the boundary,
  where \(F\ge F_{\partial}\), while partial-step descent keeps
  \(F\le F_0<F_{\partial}\).  This annular bridge rules out discrete
  overshoot and closes first-exit preservation.
- Residual-to-target adequacy: R is exactly \(T-\Phi_{\mathrm{prot}}\);
  no historical event term remains.
- Key positive/control term or structural source: the residual algebra
  \(J(h)^*[-J_\star h-N(h)]\), uniform current-Jacobian closeness, and the
  boundary-energy gap.
- Opposing defect terms: only the quadratic state-dependent remainder.
- Closure/dominance/absorption relation: the \(N(h)\) remainder is at most
  half the \(J_\star h\) term on the chart; the partial-step annular
  inequality closes the discrete first-exit induction.
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
| Mild fresh-gap event | step_006 | fresh Haar block and I_e | aggregate competitors allowed at O(sqrt(r)); score-floor and sign controlled | target-indexed positive score | mild \(1/\log r\) gap, then deterministic winner filter | q0 floor and m0 gap | P0, tape prefixes | None |
| Score amplification/maturation | step_007 | W0 \(\Gamma_0\), \(\chi_0\), C0, E0 | evolving residual controlled by Gamma/chi recurrence | actual target tensor error | \(A_H\ge80\log P\), P^103 growth, P^-16 mass drop | positive lead and P^-24 final chi | D0, L1 | None |
| Physical assignment | step_008 | W0/P0 boundary outputs | no bookkeeping deletion | Q retains actual target error | M functional | score gap | L1 | None |
| Stopped tape and global Lyapunov | step_009 | recursive prefixes, same scaled reserve | event/nuisance scopes separated | F/M/Psi actual T units | N_dec<P^19 and polishing floor P^-154 | S=P^20 | B0 | None |
| Chart entry/residual | step_010 | Psi_pol and E0 cluster map | final nuisance zero; historical path used once | exact T | h<=P^-73 and R<=T P^-62 | chart P^-36/4 | B1, R0 | None |
| PL/first exit | step_011 | current J(h), residual algebra, entry energy, and partial-step Armijo | quadratic remainder only | exact protected residual | boundary \(F\ge P^{-78}/8\), entry \(F\le P^{-116}\), and annular path descent | chart radius | R0 | None |
| Public rate | step_012 | C0 and B1 | no post-pruning forcing | exact relative Frobenius | contraction exponent 66 and epsilon split | Q_ref | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| E0 and scales | step_001-step_002 | all later steps | instance event and exact reference | primitive assumptions -> E0 -> Z0 | derived | None |
| Raw step and scaled reserve | step_003 | steps_004-step_012 | no failure and event accounting | Z0 -> C0 | derived | None |
| Activation identity | step_004 | step_005-step_006 | first update | C0 -> J0 | derived | None |
| I0 and local I_e interface | step_005 (I0 direct; generic I_e conditional) | step_006-step_009 | induction base and transition hypothesis | E0/C0/J0 -> I0 | explicitly conditional | None |
| Mild fresh-gap \(\mathsf G_e^{\mathrm{fresh}}\) | step_006 | step_007-step_009 | stopped tape event | I_e + fresh block -> mild gap | explicitly conditional | None |
| Gamma/chi amplification and maturation | step_007 | step_008-step_009 | physical target reduction/cap | I_e + mild gap -> P0 and winner filter | explicitly conditional | None |
| I_{e+1} physical transition | step_008 | step_009 | global induction | W0/P0 -> D0 | explicitly conditional | None |
| Global tape/Lyapunov/polishing | step_009 | step_010 | burn-in theorem | I0 + transitions -> L1 | derived | None |
| Psi-to-factor/residual entry | step_010 | step_011-step_012 | same-target chart and large-epsilon stop | L1 + Z0 -> B0 | derived | None |
| Current Jacobian/PL/first exit | step_011 | step_012 | no-floor refinement | B0 + Z0 -> B1 | derived | None |
| Relative rate/work | step_012 | final assembly | public theorem | C0 + B1 -> R0 | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | E0 realized norms, pair/triple Grams, target norm, and T nonzero | None | assump:base-conditioning, assump:base-kr-isometry, assump:gaussian-smoothing, assump:dimension-regime, assump:smoothing-scale, assump:perturbation-margin | normalized concentration | direct Gaussian/Schur calculation | E0 | Instance and exact representation | PENDING |
| step_002 | Z0 exact balance, cap membership, and P ledger | step_001 | assump:rank-regime; step_001 | same-target algebra | tensor-preserving identity | Z0/scales | Instance and exact representation | PENDING |
| step_003 | C0 raw guarded trial, lambda >= P^-42, and scaled reserve | step_002 | step_001-step_002 | trial/projection semantics | direct Taylor and event loss | raw/retained interface | Guarded burn-in | PENDING |
| step_004 | J0 cubic activation and partial-zero handling | step_003 | assump:random-tape; step_003 | dormant state | exact expansion | activation | Guarded burn-in | PENDING |
| step_005 | I0 base and local A/Q/U residual certificate | step_004 | step_001-step_004 | physical target split | direct partition algebra | I0/I_e | Guarded burn-in | PENDING |
| step_006 | W0 mild positive signed gap, score floor, and recursive failure bound | step_005 | assump:random-tape; step_001, step_003-step_005 | scale-compatible mild order statistics | relative Gaussian/Haar lemma | fresh gap and stopped tape interface | Guarded burn-in | PENDING |
| step_007 | P0 initialize Gamma/chi from W0, amplify winner, mature in P^103, and preserve cap | step_005, step_006 | step_001, step_003, step_005-step_006 | evolving residual and signed lead | Gamma/chi small-gain recurrence plus deterministic winner filter | protected transition | Guarded burn-in | PENDING |
| step_008 | D0 all-candidate filtered assignment and I_{e+1} physical transfer | step_007 | step_005-step_007 | largest-score winner | filtered score gap and M functional | next I | Guarded burn-in | PENDING |
| step_009 | L1 stopped induction, one scaled reserve, finite count, and P^-154 polishing | step_008 | step_003, step_005-step_008 | scope accumulation | finite induction/Lyapunov | global burn-in | Guarded burn-in | PENDING |
| step_010 | B0 Psi-to-factor, chart entry, and P^-62 relative residual | step_009 | step_002, step_003, step_009 | target-side transfer | conditioned cluster map/Jacobian upper bound | chart/residual | Chart/refinement | PENDING |
| step_011 | B1 current Jacobian, boundary energy, first exit, and PL | step_010 | step_001-step_003, step_010 | basin closure | direct Jacobian/Taylor | PL chart | Chart/refinement | PENDING |
| step_012 | R0 coordinate-to-relative bridge, contraction, probability, and work | step_011 | assump:accuracy-range; step_003, step_009-step_011 | public rate | Armijo/PL recurrence | final theorem | Chart/refinement | PENDING |

## Dependency Notes

The graph is acyclic.  Step_005 proves the base I0 and defines generic I_e
only as a local conditional interface.  Step_006's mild fresh-gap event is
evaluated only on a successful prefix; it does not assert a boundary winner.
Steps_007 and step_008 deterministically amplify that gap, filter every
non-basin candidate, and prove the universal transition I_e to I_{e+1};
step_009 iterates that transition and requires terminal unresolved-set
exhaustion, so the tape event is nonvacuous.
The same step_009 uses one scaled reserve throughout and performs the final
polishing estimate.  Step_010 is the sole historical-event consumer.  Step_011
uses the exact post-pruning objective and a boundary-energy first-exit
argument.  Step_012 consumes only C0, B0, and B1.

## Blockers

None at sketch level.  The attempt-4 l1-dominant event is replaced by a
polynomial-probability mild signed gap; P0 starts from its actual
\(\Gamma_0,\chi_0\) values and proves winner amplification before D0.  B1's
gradient algebra and annular partial-step bridge are explicit, and all
interface/flow rows have named producers.  Any failure of the mild-gap
order-statistic lemma, Gamma/chi persistence, or the conditioned chart map is
a localized step obligation and must be surfaced by the corresponding
proof-step review, not hidden as an assumption.
