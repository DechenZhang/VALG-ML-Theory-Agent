# Proof Sketch

## Formalized Setting

This is sketch attempt 9 for the exact homogeneous asymmetric third-order CP
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

- Sketch attempt: 9
- Retry mode: revise_sketch
- Triggering artifact:
  perspective_2/idea_3/proof_history/sketch_009/proof_sketch_review.md
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
5. W0 first handles any queued epoch as a clear-only epoch: the
   seed-to-\(\theta\) time exceeds the \(P^{103}\) queue-clear time, so no
   probationary candidate can qualify during that epoch.  At the following
   reset, W0 uses the full residual score, including every unresolved
   channel, and a joint signed-purity event for all candidates.
6. The tape event is defined by successful prefixes: at each epoch with
   unresolved targets, inspect one fresh block only after all previous prefixes
   succeeded; success requires the complete W0 event and the resulting D0
   winner.  The event terminates successfully when \(U_e=\varnothing\), so
   its conditional union has at most r queries and is not a tautological
   intersection before a first failure.
7. P0 runs the pre-parking angular phase with a gap-sensitive purity
   potential.  Its contraction rate is proportional to the actual relative
   gap \(m_0\), and the internal target is \(m_0/4\), not an unsupported
   polynomial purity.  The joint W0 event supplies an initial potential
   budget and a positive full-score margin for every candidate that can win.
   P0 preserves that margin and gives the deterministic all-candidate
   comparison before D0.  Only after that boundary decision does the separate
   queued phase use the target coefficient and the \(P^{103}\) maturation
   envelope.  D0 transfers the filtered winner to Q without deleting its
   target error.
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
    \(\eta_{\max}\)-based endpoint displacement and a boundary-energy
    comparison to rule out discrete first exit.
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
gives the generated local displacement scale
\[
2\eta_{\max}P^8\le\frac18.
\]
This is used with \(\lambda_{\mathrm{acc}}\le\eta_{\max}\) in B1; it is a
consequence of the defined protocol ceiling, not an additional step-size
assumption.

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
  A Q-nonempty epoch is a deterministic clear-only prefix and is not queried.
  At the following reset let \(\mathsf G_e^{\mathrm{full}}\) be the joint
  full residual-score/cancellation event (W0-full and W0-budget).  P0/D0
  deterministically turn it into a boundary winner, and successful prefixes
  are defined recursively:
  \[
  \mathsf E_0=\Omega,\qquad
  \mathsf E_{e+1}=\mathsf E_e\cap
  \bigl(\{U_e=\varnothing\}\cup\{\mathsf{clear}_e\}\cup
  \mathsf G_e^{\mathrm{full}}\bigr),
  \]
  where \(\mathsf G_e^{\mathrm{full}}\) is evaluated only after the clear-only
  reset on \(\mathsf E_e\) and \(U_e\ne\varnothing\).  Set
  \[
  \mathcal E_{\mathrm{tape}}
  =\bigcup_{m=0}^{r}
  \left(\mathsf E_m\cap\{U_m=\varnothing\}
  \cap\bigcap_{e<m}\{U_e\ne\varnothing\}\right).
  \]
  The terminal exhaustion condition is included, so this event is not true
  by excluding the first failed block.  Conditional W0 bounds give
  \(\Pr((\mathsf G_e^{\mathrm{full}})^c\mid\mathsf E_e)\le r^{-24}\), hence
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
  a local conditional interface; when Q is nonempty it marks the epoch
  clear-only and supplies the seed-to-\(\theta\) versus queue-time separation.
  It is globally produced only after the transition in steps_006-step_008 is
  iterated by step_009.
- Step_006 applies the reset after a clear-only epoch, derives the full
  residual-score event and initial potential budget from an independent
  block, and includes terminal U exhaustion in the stopped event.  The
  deterministic global-winner filter is produced only after P0 amplification.
- Step_007 derives the two-sided pre-parking radial time, full-score
  persistence, the \(m_0/4\) purity potential, the all-candidate barrier,
  queued maturation in \(P^{108}\), mature persistence, and the strict
  protected cap margin.
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
  chart-boundary energy lower bound, the \(\eta_{\max}\)-based accepted-step
  cap, annular first-exit preservation, and defect-free PL.
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
- Source-to-claim adequacy: the clear-only part of step_005/step_006 is
  separated from the query epoch.  At a D0 boundary every non-Q probationary
  component is reset to radius \(\delta\).  If \(Q_e\ne\varnothing\), the
  seed-to-\(\theta\) upper-radius time is at least \(P^{114}\), whereas the
  queued target-error time is at most \(P^{103}\).  Hence every reset
  probationary radius is below \(\theta\) during the clear epoch, the fixed
  promotion test cannot qualify a component, and the next epoch reset uses
  genuinely fresh tape directions with \(Q=\varnothing\).  This avoids
  asserting freshness after simultaneous updates.
  At a query epoch let
  \[
  R_e^0=T_{U_e}+E_e,\qquad
  S_{i,0}:=\langle R_e^0,d_{i,e}\rangle
  =\sum_{j\in U_e}z_{ij}+\eta_i,\qquad
  \eta_i=\langle E_e,d_{i,e}\rangle .
  \]
  The identity includes every unresolved-channel coordinate; no term is
  dropped.  For \(j_\star\) a largest-weight unresolved target, define
  \(\zeta_i=\sum_{\ell\ne j_\star}z_{i\ell}+\eta_i\) and require the joint
  full-score event
  \[
  z_{ij_\star}\ge(1+m_0)q_0,\qquad
  z_{ij_\star}\ge(1+m_0)\max_{\ell\ne j_\star}|z_{i\ell}|,\qquad
  |\zeta_i|\le {m_0\over8}z_{ij_\star}.
  \tag{W0-full}
  \]
  Then \(S_{i,0}\ge q_0(1+7m_0/8)\), so the protocol score has a
  positive margin rather than merely a positive coordinate.  A direct
  leave-one-block product-chaos calculation, conditioning on the two modes
  not used for \(j_\star\), gives
  \[
  p_{\mathrm{full}}\ge {c\over r^{3/2}\log(2r)}
  \]
  uniformly for \(\tau_{\max}/\tau_{\min}\le P^6\).  The factor \(r^{-1/2}\)
  is the signed cancellation window for the scalar \(\zeta_i\); this is why
  the rank uses \(r^{3/2}\), and it does not claim l1 domination.  The same
  For the all-candidate part, let \(j_i\) maximize \(z_{ij}^+\) for each
  block and set
  \(\zeta_i^{\mathrm{all}}=\sum_{\ell\ne j_i}z_{i\ell}+\eta_i\).
  The same calculation, with the exact full score \(S_{i,0}\), gives the
  all-candidate dichotomy
  \[
  \text{either (W0-full) holds, or }\quad
  {\cal P}_{i,0}\le {m_0q_0\over16},
  \tag{W0-budget}
  \]
  where
  \[
  {\cal P}_{i,0}:=(S_{i,0}-q_0(1+m_0/4))_+
   +8q_0\left({|\zeta_i^{\mathrm{all}}|\over z_{ij_i}}-{m_0\over4}\right)_+
   +4q_0\left(m_0-
     {z_{ij_i}-\max_{\ell\ne j_i}|z_{i\ell}|\over z_{ij_i}}\right)_+ .
  \]
  A union over the \(k\) blocks and the \(P^{-32}\) E-error gives
  \[
  \Pr((\mathsf G_e^{\mathrm{full}})^c\mid\mathsf E_e,I_e)
  \le \exp\!\left[-{ck\over r^{3/2}\log(2r)}\right]+P^{-40}
  \le r^{-24}
  \]
  after choosing the fixed \(C_{\mathrm{rank}}\) in the setting.
  This is a full residual-score law at the actual reset, not a
  post-update freshness assertion.
- Residual-to-target adequacy: (W0-full) compares the actual protocol score
  with the same target-indexed \(z_{ij_\star}\) and the complete unresolved
  sum \(\zeta_i\).  It exports
  \(S_{i,0}\ge q_0(1+7m_0/8)\), a signed target index, and the initial
  purity/gap potential consumed by P0; the target tensor remains \(T\), with
  no surrogate residual.
- Key positive/control term or structural source: the full signed score
  margin, the scalar unresolved-sum cancellation window, and the weighted
  largest-coordinate gap.
- Opposing defect terms: only the \(P^{-32}\) I_e error at the query epoch;
  all unresolved coordinates are explicitly included in \(\zeta_i\).
- Closure/dominance/absorption relation: W0 exports the full-score margin,
  the initial potential budget (W0-budget), and a gap \(m_0\).  P0 consumes
  those quantities and proves the boundary comparison; W0 does not assert
  a global winner by itself.
- Accumulation behavior / scope compatibility: successful prefixes query at
  most r blocks; terminal U exhaustion is required, so no first-failure
  omission and no S-fold union.
- Obligation locality classification: step-local.
- Noncircular closure status: clear-only epochs are discharged before the
  query epoch; W0 then consumes only the I_e residual and an independent
  reset block, and L1 later iterates the transition.
- Entry-state / first-update stress result: at seed radius J0 supplies the
  full-score event input.  A tied, mixed, or nonpositive block falls into
  (W0-budget) and is controlled by P0's gap-sensitive barrier, not silently
  treated as a target basin.
- Baseline conclusion preserved: candidates are compared with the actual T.
- Producer-consumer provenance: W0 produces
  \(\mathsf G_e^{\mathrm{full}}\), the full score, and (W0-budget) for P0.
  P0/D0 later produce the global-winner consequence.
- Null or boundary regime tested: equal-weight orthogonal targets, a tied
  largest coordinate, a cancellation window at zero full score, a negative
  signed lead, and score-floor small ball.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: the largest-score rule can select a mixed duplicate.
- Repair route if unsupported: full-score product-chaos step-local blocker; no
  coordinate-only small-ball assumption is allowed.

### P0/D0: score persistence, queued growth, and physical transfer

- Step ID: step_007 and step_008.
- Claim class: dynamic positivity, target assignment, noncancellation, and
  cap margin.
- Theorem role: turn W0's relative winner into a mature true-channel
  representative before removing any target mass.
- Mechanism source: W0's full-score event and initial potential, E0 Gram
  separation, and direct simultaneous-update radial/angular recurrences.
- Source-to-claim adequacy: after a query-epoch reset, for each candidate
  choose \(j_i\) as its largest positive weighted coordinate and write
  \[
  S_{i,t}=z_{ij_i,t}+\zeta_{i,t},\qquad
  \pi_{i,t}={|\zeta_{i,t}|\over z_{ij_i,t}},\qquad
  \gamma_{i,t}={z_{ij_i,t}-\max_{\ell\ne j_i}|z_{i\ell,t}|\over z_{ij_i,t}}.
  \]
  W0-full gives the selected candidate
  \(S_{i,0}\ge q_0(1+7m_0/8)\), \(\pi_{i,0}\le m_0/8\), and
  \(\gamma_{i,0}\ge m_0\).  Direct balanced differentiation, including all
  simultaneously updated unresolved channels, gives for \(g_t<2\theta\),
  \(b_{i,t}=\lambda_tg_{i,t}z_{ij_i,t}\le P^{-20}\),
  \[
  \pi_{i,t+1}\le
  (1-cm_0b_{i,t})\pi_{i,t}
  +Cb_{i,t}\bigl(P^{-32}+P^{-24}\pi_{i,t}\bigr),
  \qquad
  \gamma_{i,t+1}\ge\gamma_{i,t}(1-Cb_{i,t}P^{-24})
  -Cb_{i,t}P^{-32},
  \tag{P0-purity}
  \]
  \[
  S_{i,t+1}\ge S_{i,t}
  +{m_0\over16}b_{i,t}z_{ij_i,t}
  -Cb_{i,t}P^{-32}q_0.
  \tag{P0-score}
  \]
  The contraction coefficient is explicitly gap-sensitive; it vanishes at
  an exact tie.  The supported internal target is \(\pi\le m_0/4\), not an
  unsupported polynomial purity.  The radial calculation has matching
  two-sided bounds
  \[
  g_{i,t}(1+\tfrac12b_{i,t})\le g_{i,t+1}
  \le g_{i,t}(1+2b_{i,t}),
  \tag{P0-radial}
  \]
  where the omitted Taylor term is at most
  \(Cb_{i,t}(P^{-24}+\pi_{i,t})\) and is absorbed in the displayed constants.
  Hence
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
  (P0-purity) and using \(m_0B_{\mathrm{park}}=O(\log P/\log r)\) gives
  \[
  \pi_{i,T}\le {m_0\over8}e^{-cm_0B_{\mathrm{park}}}
       +CP^{-32}/m_0\le m_0/4,\qquad
  \gamma_{i,T}\ge m_0/2.
  \]
  Iterating (P0-score) preserves the full-score margin
  \(S_{i,T}\ge q_0(1+3m_0/4)\).  This is the supported pre-D0
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
- Residual-to-target adequacy: for every candidate let \(j_i\) maximize its
  positive weighted coordinate and define the gap-sensitive initial potential
  \[
  {\cal P}_{i,0}:=(S_{i,0}-q_0(1+m_0/4))_+
   +8q_0\left(\pi_{i,0}-{m_0\over4}\right)_+
   +4q_0\left({m_0\over2}-\gamma_{i,0}\right)_+.
  \]
  W0-budget gives \({\cal P}_{i,0}\le m_0q_0/16\) for every candidate that
  is not a W0-full basin candidate.  Direct simultaneous-update
  differentiation gives, while the candidate remains outside that basin,
  \[
  {\cal P}_{i,t+1}\le
   (1-cm_0b_{i,t}){\cal P}_{i,t}
   +Cb_{i,t}P^{-32}q_0.
  \tag{P0-filter}
  \]
  Since \(B_{\mathrm{park}}\le4\log(2\theta/\delta)+1\), this yields at the
  first eligibility boundary
  \[
  S_{i,T}\le q_0(1+m_0/2)
  \quad\text{for every non-basin }i,
  \]
  whereas W0-full and (P0-score) give
  \[
  S_{i^\star,T}\ge q_0(1+3m_0/4)>q_0(1+m_0/2).
  \]
  Thus the protocol's largest-score rule promotes a W0-full basin
  candidate, including in the tied or mixed branch; the comparison is
  gap-sensitive and uses a stated initial potential rather than an
  unsupported contraction of a positive score.  Moving its target j to Q
  replaces \(\tau_j^2\) by the actual
  \(\|\tau_jv_j-Q_j\|^2\); no target mass is deleted until P0 maturation.
- Key positive/control term or structural source: the full-score margin,
  gap-sensitive purity potential, Gram diagonal dominance, and positive
  homogeneous radial term.
- Opposing defect terms: evolving mature residual, nuisance, angular drift,
  signs, and cap pressure; all unresolved-channel terms are included in the
  full-score potential rather than hidden in eta.
- Closure/dominance/absorption relation: (P0-radial) and (P0-time) give a
  finite pre-parking angular budget with both lower and upper sides.  The
  \(m_0\)-weighted contraction in (P0-filter), the initial W0-budget, and
  the \(P^{-32}\) forcing close the purity and score comparison over that
  finite budget.  The output is a W0-full winner with a strict
  \(m_0/4\) score margin.  The separate queued recurrence then yields mature
  radii at most \(4\kappa\), target-error decrease at least
  \(\|T\|^2P^{-16}\), and margin \(R_{\max}-g\ge R_{\max}/2\).
- Accumulation behavior / scope compatibility: Q has size at most one; each
  target is queued once; nuisance is contraction-scaled; event loss is in
  the single scaled reserve.
- Obligation locality classification: step-local conditional on W0-full.
- Noncircular closure status: clear-only epoch -> full-score W0 -> gap-sensitive
  P0 potential -> D0; L1 iterates this noncircular transition.
- Entry-state / first-update stress result: the first promoted component stays
  queued with its full target error; the last Q target gets a counted
  maturation epoch before U is declared empty.
- Baseline conclusion preserved: all physical target error is retained until
  actual maturation.
- Producer-consumer provenance: P0/D0 produce the next I certificate and
  feed L1 after consuming the full-score event and potential budget.
- Null or boundary regime tested: negative W0 sign (rejected), exact tie
  \(m_0=0\), initial potential \(m_0q_0/16\), mixed/tied candidate at the
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
  reset jumps, and every accepted dyadic trial satisfies
  \(\lambda_{\mathrm{acc}}\le\eta_{\max}\) by the protocol definition.  The
  direct upper Jacobian and residual bounds on the doubled chart give
  \[
  \|J(h)^*R(h)\|\le2P^8\|h\|,\qquad
  \|h^+-h\|\le2\eta_{\max}P^8\|h\|
  \le\tfrac18\|h\|.
  \tag{B1-step-cap}
  \]
  The last inequality is the explicit scale consequence of the defined
  \(\eta_{\max}\), recorded in the rate ledger; it is not a new algorithmic
  restriction.  If an accepted endpoint first exits
  \(r_{\mathrm{ch}}=P^{-36}\), then
  \(\|h^+\|\le(9/8)r_{\mathrm{ch}}\).  The residual expansion on this actual
  annulus gives
  \[
  F(h^+)\ge {1\over16}P^{-6}r_{\mathrm{ch}}^2
  \ge F_{\partial}/2.
  \]
  Endpoint Armijo descent gives \(F(h^+)\le F(h)\le F_0<F_{\partial}/2\),
  a contradiction.  This uses the defined eta ceiling and an actual annular
  endpoint bound; no reverse-Armijo assertion or unproved partial-path
  descent is used.
- Residual-to-target adequacy: R is exactly \(T-\Phi_{\mathrm{prot}}\);
  no historical event term remains.
- Key positive/control term or structural source: the residual algebra
  \(J(h)^*[-J_\star h-N(h)]\), uniform current-Jacobian closeness, and the
  boundary-energy gap.
- Opposing defect terms: only the quadratic state-dependent remainder.
- Closure/dominance/absorption relation: the \(N(h)\) and D(h) remainders are
  at most half the \(J_\star^*J_\star h\) term on the chart; the defined
  \(\eta_{\max}\) ceiling places any first exiting endpoint in the actual
  \(9/8\)-annulus where the boundary energy contradiction closes the
  discrete induction.
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
| Clear-only/query reset certificate | step_005-step_006 | queue-time versus seed-to-\(\theta\) separation and fresh reset | no promotion during Q-clear epoch; no adaptive freshness claim | actual query residual \(T_U+E\) | clear-only stop then independent reset | \(T_Q\le P^{103}<P^{114}\) | W0 | step-local clear-time proof obligation |
| Full residual-score W0 event | step_006 | all unresolved coordinates, signed cancellation window, and fresh reset law | full-score chaos tails and E-error | exact protocol score \(S=\sum_Uz+\eta\) | joint W0-full and W0-budget dichotomy | \(p_{\mathrm{full}}\ge c/(r^{3/2}\log r)\) | P0, tape prefixes | step-local full-score law obligation |
| Gap-sensitive score/purity transition | step_007 | W0-full margin and initial potential | simultaneous-update competitors and \(m_0\)-scale forcing | actual target tensor error | \(m_0\)-weighted P0-filter and two-sided radial time | \(S_{\mathrm{good}}>S_{\mathrm{non}}\), queued P^103 growth | D0, L1 | step-local purity/filter obligation |
| Physical assignment | step_008 | W0/P0 boundary outputs | no bookkeeping deletion | Q retains actual target error | M functional | score gap | L1 | None |
| Stopped tape and global Lyapunov | step_009 | recursive prefixes, same scaled reserve | event/nuisance scopes separated | F/M/Psi actual T units | N_dec<P^19 and polishing floor P^-154 | S=P^20 | B0 | None |
| Chart entry/residual | step_010 | Psi_pol and E0 cluster map | final nuisance zero; historical path used once | exact T | h<=P^-73 and R<=T P^-62 | chart P^-36/4 | B1, R0 | None |
| PL/first exit | step_011 | current J(h), residual algebra, entry energy, and defined \(\eta_{\max}\) | quadratic remainder only | exact protected residual | \(2\eta_{\max}P^8\le1/8\) and actual \(9/8\)-annulus | chart radius | R0 | step-local eta-displacement obligation |
| Public rate | step_012 | C0 and B1 | no post-pruning forcing | exact relative Frobenius | contraction exponent 66 and epsilon split | Q_ref | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| E0 and scales | step_001-step_002 | all later steps | instance event and exact reference | primitive assumptions -> E0 -> Z0 | derived | None |
| Raw step and scaled reserve | step_003 | steps_004-step_012 | no failure and event accounting | Z0 -> C0 | derived | None |
| Activation identity | step_004 | step_005-step_006 | first update | C0 -> J0 | derived | None |
| I0 and local I_e interface | step_005 (I0 direct; generic I_e conditional) | step_006-step_009 | induction base and transition hypothesis | E0/C0/J0 -> I0 | explicitly conditional | None |
| Clear-only/query reset certificate | step_005 schedule, step_006 reset | step_006 | prevent promotion during Q-clear and restore independent reset law | I_e -> query epoch with \(Q=\varnothing\) | explicitly conditional | step-local clear-time obligation |
| Full residual-score \(\mathsf G_e^{\mathrm{full}}\) | step_006 | step_007-step_009 | stopped tape event | full residual reset score -> W0-full/W0-budget | explicitly conditional | step-local full-score chaos obligation |
| Gap-sensitive score/purity transition | step_007 | step_008-step_009 | physical target reduction/cap | W0-full + potential -> P0-filter and queued maturation | explicitly conditional | step-local purity/filter obligation |
| I_{e+1} physical transition | step_008 | step_009 | global induction | W0/P0 -> D0 | explicitly conditional | blocked until filter obligation closes |
| Global tape/Lyapunov/polishing | step_009 | step_010 | burn-in theorem | I0 + transitions -> L1 | derived | None |
| Psi-to-factor/residual entry | step_010 | step_011-step_012 | same-target chart and large-epsilon stop | L1 + Z0 -> B0 | derived | None |
| Current Jacobian/PL/first exit | step_011 | step_012 | no-floor refinement | B0 + Z0 -> adjoint PL and eta-based annular displacement | derived | step-local eta-displacement obligation |
| Relative rate/work | step_012 | final assembly | public theorem | C0 + B1 -> R0 | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | E0 realized norms, pair/triple Grams, target norm, and T nonzero | None | assump:base-conditioning, assump:base-kr-isometry, assump:gaussian-smoothing, assump:dimension-regime, assump:smoothing-scale, assump:perturbation-margin | normalized concentration | direct Gaussian/Schur calculation | E0 | Instance and exact representation | PENDING |
| step_002 | Z0 exact balance, cap membership, and P ledger | step_001 | assump:rank-regime; step_001 | same-target algebra | tensor-preserving identity | Z0/scales | Instance and exact representation | PENDING |
| step_003 | C0 raw guarded trial, lambda >= P^-42, and scaled reserve | step_002 | step_001-step_002 | trial/projection semantics | direct Taylor and event loss | raw/retained interface | Guarded burn-in | PENDING |
| step_004 | J0 cubic activation and partial-zero handling | step_003 | assump:random-tape; step_003 | dormant state | exact expansion | activation | Guarded burn-in | PENDING |
| step_005 | I0 base, local A/Q/U residual certificate, and clear-only epoch schedule | step_004 | step_001-step_004 | physical target split and Q transient | direct partition algebra plus seed-to-\(\theta\)/queue-time comparison | I0/clear schedule | Guarded burn-in | PENDING |
| step_006 | W0 full residual-score event, signed cancellation/purity budget, and recursive failure bound | step_005 | assump:random-tape; step_001, step_003-step_005 | simultaneous full-score law and all-candidate dichotomy | product-chaos order statistics at independent reset | W0-full/W0-budget | Guarded burn-in | PENDING |
| step_007 | P0 two-sided pre-parking gain, gap-sensitive purity/score potential, filtered assignment, queued P^103 maturation, and cap margin | step_005, step_006 | step_001, step_003, step_005-step_006 | simultaneous-update competitor control | gap-sensitive recurrence, score potential, and physical queue lemma | protected transition | Guarded burn-in | PENDING |
| step_008 | D0 all-candidate filtered assignment and I_{e+1} physical transfer | step_007 | step_005-step_007 | largest-score winner | filtered score gap and M functional | next I | Guarded burn-in | PENDING |
| step_009 | L1 stopped induction, one scaled reserve, finite count, and P^-154 polishing | step_008 | step_003, step_005-step_008 | scope accumulation | finite induction/Lyapunov | global burn-in | Guarded burn-in | PENDING |
| step_010 | B0 Psi-to-factor, chart entry, and P^-62 relative residual | step_009 | step_002, step_003, step_009 | target-side transfer | conditioned cluster map/Jacobian upper bound | chart/residual | Chart/refinement | PENDING |
| step_011 | B1 adjoint PL, defined-\(\eta_{\max}\) endpoint displacement, boundary energy, and annular first exit | step_010 | step_001-step_003, step_010 | basin closure and ambient-adjoint control | residual expansion and eta-based annular displacement | PL chart | Chart/refinement | PENDING |
| step_012 | R0 coordinate-to-relative bridge, contraction, probability, and work | step_011 | assump:accuracy-range; step_003, step_009-step_011 | public rate | Armijo/PL recurrence | final theorem | Chart/refinement | PENDING |

## Dependency Notes

The graph is acyclic.  Step_005 proves the base I0 and marks a Q-nonempty
epoch clear-only; the seed-to-\(\theta\) versus queue-time comparison proves
that no promotion test can qualify before the next reset.  Step_006 evaluates
the full residual-score event at that independent reset, including all
unresolved channels, and does not assert freshness after simultaneous updates.
Steps_007 and step_008 use the two-sided radial time, the gap-sensitive
potential, and the full-score comparison to prove the universal transition
I_e to I_{e+1};
step_009 iterates that transition and requires terminal unresolved-set
exhaustion, so the tape event is nonvacuous.  The same step_009 uses one
scaled reserve throughout and performs the final polishing estimate.
Step_010 is the sole historical-event consumer.  Step_011 uses the exact
post-pruning objective, the adjoint expansion, and the defined
\(\eta_{\max}\) endpoint displacement bound.  Step_012 consumes only C0, B0,
and B1.

## Blockers

Localized sketch obligations remain: the full-score product-chaos estimate
and W0-budget dichotomy, the simultaneous-update gap-sensitive potential,
and the explicit \(2\eta_{\max}P^8\le1/8\) scale check.  These are recorded
as step-local blockers in the interface tables; no new assumption or protocol
change is being hidden.  The exact-target, rank, one-tape, reserve, adjoint
PL, and baseline bridges are otherwise synchronized for downstream
proof-step review.
