# Proof Sketch

## Formalized Setting

The branch uses the exact setting in `perspective_2/idea_5/setting.md`.  The
realized tensor is
\[
 T=\sum_{j=1}^r \tau_j\phi_j,
 \qquad \phi_j=\widetilde a_j\otimes\widetilde b_j\otimes\widetilde c_j,
\]
and the optimized objective is
\[
 F(Q)=\frac12\left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F^2,
 \qquad k=\left\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\right\rceil.
\]
Every nonzero slot is balanced as \(q_i=(g_i u_i,g_i v_i,g_i w_i)\), and
partial-zero slots are jointly zero.  During discovery, the protected slots
are frozen and one fresh Haar triple is updated transactionally in the three
protected complements.  The pre-scratch residual is \(R_I\), the scalar score
is \(s_I=\langle R_I,u\otimes v\otimes w\rangle\), and
\(d_I=s_I-g^3\).  The certificate is exactly
\({\sf Cert}_{\rm ang}(q;I)\) from `setting.md`: a radial sign bracket,
positive axial signs, small angular gradient and contraction residuals,
positive Hessian on \(u^\perp\times v^\perp\times w^\perp\), and a capture
lower bound.  In particular, no radial eigenvalue and no full unresolved
coefficient vector are part of the branch interface.

The proof will use the following analysis-only invariant for a protected state
with injection \(\pi_I:I\to[r]\).  Write \(U_I=[r]\setminus\pi_I(I)\).  For
fixed exponents chosen in the proof, let
\(\eta_{\rm dir}=P^{-D_{\rm dir}}\), and let \(\eta_{\rm res}\) be the
resulting residual-error budget.  The
invariant \({\sf Good}(I)\) consists of
\[
 R_I=\sum_{j\in U_I}\tau_j\phi_j+E_I,
 \quad \|E_I\|_F\le\eta_{\rm res}\min_{j\in U_I}\tau_j,
\]
an injection whose committed balanced slots are within
\(\eta_{\rm dir}\) of the signed true balanced slots, and the protected-span
projection bounds in `setting.md`.  This is not a setting assumption: it is
proved at the empty state and preserved by the commit bridge.

## Formalized Goal

Prove a material-partial theorem uniformly over the modewise-near-orthogonal
Gaussian-smoothed source class.  First derive a once-drawn event
\({\cal E}_{\rm inst}\) of probability at least \(1-r^{-10}\) with all
nonvanishing, norm, modewise Gram, pair Gram, triple Gram, target-norm, and
exact balanced-representation properties listed in `setting.md`.

Conditioned on every \(T\in{\cal E}_{\rm inst}\) and every reachable state
with fewer than \(r\) commits, prove that a fresh transaction reaches
\({\sf Cert}_{\rm ang}\) within \(H_{\rm tx}\) work with probability at least
\((nr)^{-c_{\rm ang}}).  Derive from each certificate a unique unresolved
label, signed direction and radius accuracy, probe-local response isolation,
duplicate exclusion, and protected-span transfer.  Prove exact rollback on
failure, the displayed accepted-step lower bound, polynomial discovery work,
and conditional finite-tape amplification to all \(r\) commits with failure
probability at most \(r^{-10}\).

After the \(r\) commits, prune all unused slots, remove discovery projections,
and prove entry into a same-target balanced chart with inverse-polynomial
radius and PL constant.  Prove chart invariance under unprojected
trust-region Armijo descent and reach relative Frobenius error
\(\epsilon\|T\|_F\) in polynomial work times \(\log(1/\epsilon)\), with no
additive floor.  The arbitrary-base and simultaneous-all-slot cases remain
outside this partial theorem.

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial sketch for the newly formalized idea.
- Selected framework: transactional angular strict-saddle discovery with
  radial bracketing, using the direct current-notation lemmas specified below;
  provenance and limitations are recorded in `technical_survey.md`.

## Proof Roadmap

The roadmap is a source-faithful sequential induction:

1. Derive the static smoothed-instance event and exact balanced baseline.
2. Establish the one-probe radial identities, exact rollback, and guarded
   trust-region step interface.
3. Prove a conditional residual-decomposition and angular strict-saddle
   isolation lemma.  An approximate positive angular local maximum with a
   positive capture score is close to exactly one unresolved atom; the proof
   starts with the orthogonal multilinear form and transfers through the
   realized Gram margin and the current protected residual error.
4. Prove that a certified commit preserves the protected invariant and
   consumes a new label.  This supplies the noncircular induction used by all
   later transactions.
5. Derive a polynomial Haar basin probability and a finite-time radial/angular
   reachability lemma for one transaction.  No certificate event is assumed;
   the basin, sign, bracket, negative-curvature, and stopping estimates are
   all generated here.
6. Amplify the conditional success probability over the finite tape, while
   using exact rollback to remove all failed-probe forcing from the state.
7. Match the \(r\) committed slots to the exact balanced orbit, prove chart
   entry and a balanced Jacobian lower bound, then close the no-floor PL
   recurrence and the explicit runtime/probability specialization.

The dependency graph is deliberately arranged so that the residual invariant
is a conditional interface in the isolation lemma and is first discharged by
the commit-preservation step.  The probability step consumes that already
proved induction; it does not feed assumptions back into it.

## Rate Objectives

### Static instance objective

- Objective type: structural-parameter explicit and confidence-explicit.
- Exposed variables: \(n,r,k,\rho^{-1},\kappa\), the fixed constants
  \(c_0,c_\rho,C_{\rm dim},C_{\rm sm},C_{\rm rank}\), and confidence
  \(r^{-10}\).
- Hidden constants may depend on: \(c_0,c_\rho\) and fixed absolute
  concentration/protocol constants only.
- Hidden constants may not depend on: \(n,r,k,\rho,\kappa,\epsilon\), the
  deterministic bases, the realized draw, or the tape.
- Fixed quantities: all numerical margins in `setting.md` and all proof
  exponents chosen before the draw.
- Probability mode: high probability over the once-drawn Gaussian instance.
- Horizon mode: static finite event.
- Norm mode: operator norm for Grams and Frobenius norm for \(T\) and weights.
- Required bridge or simplification obligations: normalize each perturbed
  column, union bound all modes and labels, transfer the base margin to
  \(\mu_{\rm real}\), \(\Delta_{\rm pair}^{\rm real}\), and
  \(\|G_\star-I\|_{\rm op}\), and derive the displayed target-norm bounds.
- Baseline invariance obligations: retain the exact balanced representation
  \(q_j^\star\) and zero residual inside the \(2R_{\max}\) box.

### Discovery objective

- Objective type: fixed-horizon, structural-parameter explicit,
  confidence-explicit, and numerical-error explicit.
- Exposed variables: \(n,r,k,\rho^{-1},\kappa,P,N_{\rm tx},H_{\rm tx}\),
  \(D_{\rm rad},D_{\rm ang},D_{\rm cap},c_{\rm ang},d_{\rm tx}\), and the
  tape confidence \(r^{-10}\).
- Hidden constants may depend on: \(c_0,c_\rho\), fixed rank and Armijo
  constants, and fixed proof exponents only.
- Hidden constants may not depend on: \(n,r,k,\rho,\kappa,\epsilon\), the
  instance, target labels, or tape entries.
- Fixed quantities: the exponents and numerical thresholds are selected once
  and do not vary with \(\epsilon\).
- Probability mode: conditional on each fixed \(T\in{\cal E}_{\rm inst}\),
  one-transaction success at least \((nr)^{-c_{\rm ang}}\), then finite-tape
  success at least \(1-r^{-10}\).
- Horizon mode: finite discovery horizon \(N_{\rm tx}H_{\rm tx}\), independent
  of \(\epsilon\).
- Norm mode: Frobenius residual/capture, Euclidean factor displacement,
  product-of-spheres angular norm, and operator-norm Gram deviations.
- Required bridge or simplification obligations: prove the polynomial Haar
  basin event, radial sign crossing, angular strict-saddle stopping time,
  response isolation, conditional probability conversion, and the displayed
  \(N_{\rm tx}\) amplification.  Every use of \(P^{-D}\) must retain its
  dependence on \(n,r,k,\rho^{-1},\kappa\).
- Baseline invariance obligations: exact rollback means no failed-probe term
  enters the later residual or terminal recurrence.

### Terminal objective

- Objective type: fixed-horizon, regularity-explicit,
  structural-parameter explicit, confidence-explicit, and numerical-error
  explicit.
- Exposed variables: \(n,r,k,\rho^{-1},\kappa,\epsilon\), the produced chart
  radius \(\varrho_{\rm PL}\), PL constant \(\mu_{\rm PL}\), accepted-step
  lower bound, and the finite discovery work.
- Hidden constants may depend on: \(c_0,c_\rho\) and fixed protocol/proof
  constants only.
- Hidden constants may not depend on: \(n,r,k,\rho,\kappa,\epsilon\), the
  realized instance, or the tape.
- Fixed quantities: the balanced gauge, sign/permutation orbit convention,
  and all proof exponents.
- Probability mode: conditional on the instance event and the all-commit tape
  event.
- Horizon mode: a finite discovery prefix plus a terminal horizon logarithmic
  in \(1/\epsilon\).
- Norm mode: balanced factor Euclidean distance, gradient Frobenius norm, and
  relative tensor Frobenius residual.
- Required bridge or simplification obligations: derive a same-target signed
  permutation, lower-bound the balanced Jacobian, dominate the Taylor
  remainder, prove chart invariance, and convert the PL recurrence to the
  public relative-error rate.
- Baseline invariance obligations: preserve the exact zero-residual endpoint
  and arbitrary \(0<\epsilon<1\); no finite-tape or rollback reserve may be
  added to the terminal residual recurrence.

## Assumption Provenance Objectives

- The realized nonvanishing, column-norm, modewise/pair/triple Gram,
  target-norm, and exact-representation facts are derived in step_001 from
  assump:base-column-conditioning, assump:modewise-near-orthogonality,
  assump:gaussian-smoothing, assump:dimension-regime,
  assump:smoothing-scale, and assump:smoothing-margin.
- The radial sign bracket, capture identity, and exact rollback are direct
  consequences of the fixed transaction convention and are proved in
  step_002; they are not stochastic events.
- Guarded smoothness, the accepted-step lower bound, and finite per-transaction
  work are derived in step_003 from the displayed local/global box bounds.
- step_004 gives a conditional algebraic residual interface for any protected
  state satisfying \({\sf Good}(I)\) and proves
  \({\sf Good}(\varnothing)\) directly. The invariant is not consumed
  unconditionally until step_006 proves its preservation after every commit.
- Certificate-to-label isolation, direction/radius accuracy, response
  isolation, and duplicate exclusion are generated by step_005 from the
  current certificate, the instance event, and the step_004 residual
  interface. No true label or purity property is placed in the success event.
- Protected-span transfer and the induction
  \({\sf Good}(I)\Rightarrow{\sf Good}(I\cup\{i\})\) are derived in
  step_006; this is the producer for every later projected transaction.
- The polynomial Haar basin and finite-time certificate-reachability event are
  derived in step_007 from assump:random-tape plus accepted deterministic
  interfaces. It is not a primitive tape condition.
- All-commit coverage and the conditional \(1-r^{-10}\) tape statement are
  generated in step_008 by a stopped Bernoulli domination argument. Exact
  rollback ensures failed entries do not modify the induction state.
- Same-target chart entry, PL constants, invariance, and the no-floor
  convergence recurrence are generated by step_009 and step_010; no local
  basin or PL inequality is promoted to a theorem assumption.

## Mechanism-Source And Boundary Stress

### step_001: realized geometry and exact baseline

- Step ID: step_001.
- Claim class: high-probability conditioning, nondegeneracy, and exact/noiseless
  baseline.
- Theorem role: supplies the fixed-instance geometry and exact target used by
  every dynamic step.
- Mechanism source: direct normalized-Gaussian concentration under the six
  static assumptions, followed by the exact Schur identities
  \(G_\star=G_A\circ G_B\circ G_C\). The source objects are the realized
  factors and exact tensor in setting.md; no population surrogate is used.
- Source-to-claim adequacy: column-norm concentration and the smoothing margin
  yield the realized modewise bound; pair/triple bounds follow by expanding
  Schur products around \(I_r\). Weight and target-norm bounds follow from the
  same \(G_\star\). These are direct current-notation calculations, not
  imported conclusions of a different algorithm.
- Residual-to-target adequacy: the produced atoms, weights, tensor, and exact
  balanced representation are the same objects consumed by the theorem.
- Key positive/control term or structural source: the base margin, explicit
  smoothing slack, and lower base-column norm \(\kappa^{-1}\).
- Opposing defect terms: Gaussian norm/direction errors and a finite union over
  the three modes and \(r\) labels.
- Closure/dominance/absorption relation: choose fixed concentration constants
  so base deviation plus normalization error is at most
  \(1/(50r\log(2r))\); the induced pair/triple errors are below \(1/32\).
- Accumulation behavior / scope compatibility: finite static union only.
- Obligation locality classification: step-local.
- Noncircular closure status: primitive assumptions -> concentration event ->
  all later consumers; no trajectory output is used.
- Entry-state / first-update stress result: at the exact orthogonal/equal-scale
  boundary, all Gram errors vanish and \(T=\sum_j\tau_j\phi_j\ne0\).
- Baseline conclusion preserved: the exact balanced \(r\)-slot representation
  lies strictly within the guard and has zero residual.
- Producer-consumer provenance: step_001 -> step_004--step_011.
- Null or boundary regime tested: \(T=0\) is excluded on the event by positive
  weights and invertible \(G_\star\); the algorithmic precheck handles an
  observed zero tensor before defining the seed.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes; without the Gram/norm margin neither isolation nor local
  Jacobian nondegeneracy is claimed.
- Repair route if source is unsupported: idea-level scope revision; no such
  repair is used in this sketch.

### step_002--step_003: radial activation, rollback, and globalization

- Step ID: step_002, step_003.
- Claim class: signed activation, exact state restoration, guarded boundedness,
  and a positive accepted-step lower bound.
- Theorem role: makes each probe finite and observable and prevents failed
  probes from creating an accumulated forcing term.
- Mechanism source: direct differentiation of
  \(f_I(g,u,v,w)=\frac12\|R_I-g^3u\otimes v\otimes w\|_F^2\), giving
  \[
   \partial_g f_I=-3g^2(s_I-g^3),\qquad
   \Delta F_I=g^3s_I-\tfrac12g^6.
  \]
  The local bounds \(G_{\rm loc},L_{\rm loc}\), measured displacement cap,
  and dyadic Armijo rule are exactly those in setting.md.
- Source-to-claim adequacy: for fixed directions and \(s_I>0\), \(d_I\) is
  strictly decreasing in \(g^3\) and has the unique positive root
  \(g=s_I^{1/3}\). The descent lemma makes every sufficiently small trial
  Armijo-acceptable, and the displacement cap gives the second trial ceiling.
  Resetting the only active scratch triple to joint zero while protected slots
  are frozen is literal equality of the full state.
- Residual-to-target adequacy: bracket and rollback concern the actual
  pre-scratch \(R_I\). Rollback returns exactly the \(R_I\) consumed by the
  next transaction.
- Key positive/control term or structural source: \(s_I-g^3>0\) for outward
  motion, local Lipschitz descent for Armijo, and the transactional boundary.
- Opposing defect terms: radial bisection error, Taylor remainder, guard exit,
  and finite iteration exhaustion.
- Closure/dominance/absorption relation: bisection shrinks the bracket
  geometrically; the trial cap dominates Taylor/displacement terms; any
  guard/exhaustion failure is stopped and erased rather than accumulated.
- Accumulation behavior / scope compatibility: failed-probe tensor forcing is
  identically zero after every transaction. Only work accumulates, by at most
  \(H_{\rm tx}\) operations per tape entry.
- Obligation locality classification: step-local.
- Noncircular closure status: box checks occur before trial acceptance; an
  eventual successful certificate is not assumed to establish the guard.
- Entry-state / first-update stress result: at
  \(g^3=\|T\|_FP^{-120}\), a basin score larger than twice this quantity makes
  the first radial motion outward. At \(s_I\le0\), no activation is claimed
  and rollback is legal.
- Baseline conclusion preserved: in the one-channel exact baseline the bracket
  is \(g^3=\tau_1\); a failed scratch leaves the exact solution unchanged.
- Producer-consumer provenance: step_002,step_003 -> step_005--step_011.
- Null or boundary regime tested: \(s_I=0\), a stationary gradient trial, and
  a guard hit are stopped outcomes, not successful certificates.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: a transaction may fail, but exact rollback plus the independently
  proved basin probability preserves the theorem path.
- Repair route if source is unsupported: REVISE_SKETCH; the direct identities
  themselves require no protocol change.

### step_004--step_006: angular isolation and protected-state induction

- Step ID: step_004, step_005, step_006.
- Claim class: structural support/nondegeneracy, unique target assignment,
  response isolation, duplicate exclusion, and invariant preservation.
- Theorem role: legal producer for every commit and for the residual seen by
  the next transaction.
- Mechanism source: a direct current-notation perturbation of the orthogonal
  multilinear score
  \[
   s_0(u,v,w)=\sum_{j\in U_I}\tau_jx_jy_jz_j.
  \]
  In the orthogonal baseline the stationarity equations align the three
  coordinate supports. If two channels carry nonnegligible response, a signed
  two-channel tangent rotation has positive second derivative for \(s_0\),
  hence negative curvature for
  \(f_I=\text{constant}-g^3s_0\). Positive capture excludes zero-score
  stationary sets. Realized Gram error, protected tensor error, radial error,
  and angular tolerance are explicit perturbations of this calculation.
- Source-to-claim adequacy: the direct lemma uses the same asymmetric atoms,
  product-sphere tangent, fixed-radius loss, signs, and Frobenius metric as the
  certificate. The COLT 2015 strict-saddle and ICML 2017 Orth-ALS sources are
  motivation only. The pure-channel angular gap is lower-bounded by
  \(\gamma_0\ge P^{-d_{\rm gap}}\) from the weight and capture bounds. Choose
  \(D_{\rm ang}>d_{\rm gap}+D_{\rm dir}+20\) and \(D_{\rm rad}\) large enough
  that all perturbations are below \(\gamma_0/20\).
- Residual-to-target adequacy: step_004 writes the actual residual as the same
  unresolved target tensor plus \(E_I\). Tensor Lipschitzness on the box gives
  \[
   \|E_I\|_F\le CrR_{\max}^2
   (\eta_{\rm dir}+P^{-D_{\rm rad}})
   =:\eta_{\rm res}\tau_{\min}.
  \]
  Exponents make this smaller than strict-saddle and span margins. No
  \(G^{-1}\Phi^*R_I\) coefficient vector is used.
- Key positive/control term or structural source: the pure-channel angular
  curvature gap, the capture lower bound
  \(s_I\gtrsim\|R_I\|_FP^{-D_{\rm cap}/2}\), and modewise Gram separation.
- Opposing defect terms: near-orthogonal cross-channel contractions,
  accumulated committed-slot error, angular stationarity tolerance, and
  radial bracket error.
- Closure/dominance/absorption relation: choose exponents in the order
  \(D_{\rm cap}\), \(d_{\rm gap}\), \(D_{\rm dir}\),
  \(D_{\rm ang}\), \(D_{\rm rad}\), so each defect is at most one twentieth
  of the pure-channel gap. The Gram-inverse projection estimate then preserves
  unresolved target norms and consumes a new label.
- Accumulation behavior / scope compatibility: at most \(r\) committed tensor
  errors are summed; the one-step charge is
  \(CR_{\max}^2P^{-D_{\rm dir}}\), and the exponent choice makes their total
  at most \(\eta_{\rm res}\tau_{\min}\). Cross-span leakage is controlled by
  the protected target Gram inverse and the operator-norm modewise margin,
  rather than by an uncontrolled \(r^2\) pairwise sum.
- Obligation locality classification: step-local.
- Noncircular closure status: \({\sf Good}(\varnothing)\) is exact;
  step_005 is conditional on \({\sf Good}(I)\); step_006 proves the next
  invariant before step_007 or step_008 consumes it.
- Entry-state / first-update stress result: at \(I=\varnothing\) and the
  orthogonal equal-weight boundary, pure channels have positive angular
  Hessian for \(f_I\), while every nontrivial two-channel stationary mixture
  exposes a negative angular direction. The prior radial-Hessian obstruction
  is absent because the radial direction is not tested.
- Baseline conclusion preserved: a pure target bracket produces
  \(g^3=\tau_j\) and the exact signed target slot; every perturbative commit is
  compared to that same target orbit.
- Producer-consumer provenance: step_001,step_004,step_005 ->
  step_006 -> step_007--step_011.
- Null or boundary regime tested: zero capture, tied weights, one unresolved
  channel, and an already protected channel. Zero capture fails the
  certificate; tied weights retain the saddle witness; one channel is pure;
  protected projection excludes duplicates.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes; without angular curvature or capture the certificate would
  not identify a unique channel. The setting includes both sources.
- Repair route if source is unsupported: failure of the current-notation
  two-channel/perturbation derivation would expose an
  idea/theorem-contract defect; it is the decisive lemma, not an assumption.

### step_007--step_008: certificate reachability and finite-tape amplification

- Step ID: step_007, step_008.
- Claim class: positive probability, finite-time strict-saddle escape,
  generated recurrence, and injective all-label coverage.
- Theorem role: produces all \(r\) commits from the one finite random tape.
- Mechanism source: conditional Haar isotropy in the protected complements,
  the span lower bound from step_006, and direct radial/angular dynamics.
  Define a basin event for one unresolved label \(j\) by requiring signed
  projected correlations at least \(n^{-c_b}\), a positive score at least
  \(\tau_{\min}(nr)^{-c_s}\), and bounded competing coordinate products.
  Haar small-ball and upper-tail estimates give this event probability at
  least \((nr)^{-c_{\rm ang}}\). Within the event, radial growth reaches a
  bracket and angular descent either lowers the exact loss by an
  inverse-polynomial amount, takes a negative-curvature decrease, or reaches
  the certificate.
- Source-to-claim adequacy: the random object is exactly the projected tape
  triple used by the algorithm. Conditional on the protected history, the
  next unused tape triple remains independent by assump:random-tape. The
  direct basin calculation requires only inverse-polynomial initial
  correlations, not constant-angle alignment, so its probability is
  polynomial rather than exponential in \(n\). The negative-curvature step is
  applied to the current angular Hessian and accepted by exact loss decrease;
  no stochastic-gradient theorem for another objective is imported.
- Residual-to-target adequacy: the basin is defined with projected realized
  target directions, and step_006 transfers them to the unprojected target
  with loss \(O(\zeta_{\rm ang}+\mu_{\rm real})\). step_005 maps the produced
  certificate back to the same unresolved label and target metric.
- Key positive/control term or structural source: projected target norm at
  least \(1-C_{\rm span}(\zeta_{\rm ang}+\mu_{\rm real})\), positive Haar
  small-ball probability, capture-scale score, and inverse-polynomial angular
  curvature/descent gaps.
- Opposing defect terms: small initial score, off-channel products, angular
  saddles, radial rebracketing error, and finite line-search reductions.
- Closure/dominance/absorption relation: select \(D_{\rm cap}\) so every basin
  root passes capture; choose \(d_{\rm tx}\) larger than the reciprocals of
  all gradient/curvature decrease gaps and the logarithmic radial/bisection
  counts. Since loss lies in a polynomially bounded interval, more than
  \(P^{d_{\rm tx}}\) noncertificate decreases are impossible.
- Accumulation behavior / scope compatibility: let \(S_t\) be the commit
  count after \(t\) transactions. While \(S_t<r\),
  \[
   \Pr(S_{t+1}=S_t+1\mid{\cal F}_t)\ge p_{\rm ang}.
  \]
  Failure has adversarial sign for work but zero state forcing by rollback.
  A stopped-binomial/Chernoff bound for
  \(N_{\rm tx}\ge8r p_{\rm ang}^{-1}\log(2r)\) gives fewer than \(r\)
  successes with probability at most \(r^{-10}\).
- Obligation locality classification: step-local.
- Noncircular closure status: step_006 produces the protected-state interface
  before each conditional probability is evaluated; step_007 produces
  \(p_{\rm ang}\); only then does step_008 amplify it. Independence is not
  inferred from eventual success.
- Entry-state / first-update stress result: at \(I=\varnothing\), each target
  has full projected norm and the Haar score has a polynomial small-ball
  event. At \(|I|=r-1\), the unique unresolved target is preserved by the
  span bound and supplies the same mechanism.
- Baseline conclusion preserved: in the orthogonal one-channel case the basin
  flow brackets the exact root and the all-commit event is a one-success
  specialization.
- Producer-consumer provenance: step_006 -> step_007 -> step_008 ->
  step_009--step_011.
- Null or boundary regime tested: a zero-score tape draw, an exact saddle, and
  a transaction exhausting its budget all roll back. Haar draws hit exact
  algebraic zero/saddle sets with probability zero, while the quantitative
  basin has the stated positive mass.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes; if the basin probability were exponentially small, the fixed
  tape would not suffice. The polynomial basin estimate is therefore an
  explicit theorem-critical step.
- Repair route if source is unsupported: failure of the declared Haar basin
  calculation under the unchanged protocol is an idea/theorem-contract
  defect, not a condition to insert into tape success.

### step_009--step_010: same-target chart, PL, and no-floor convergence

- Step ID: step_009, step_010.
- Claim class: generated basin membership, coercive local geometry, invariant
  preservation, contraction, and exact/noiseless convergence.
- Theorem role: converts completed discovery into arbitrary relative accuracy.
- Mechanism source: the signed injection after \(r\) commits, exact pruning of
  unused slots, and a direct balanced CP Jacobian calculation at the same
  target orbit \({\cal Z}_\star\). Pair/triple Gram conditioning and
  \(\tau_{\min}\ge(2\kappa)^{-3}\) give
  \(\sigma_{\min}(D\Psi(Q^\star)|_{\rm bal})\ge P^{-d_J}\).
  A chart Taylor bound then yields
  \(\|\operatorname{grad}_{\rm bal}F\|_F^2\ge2\mu_{\rm PL}F\).
- Source-to-claim adequacy: the local ALS references in technical_survey.md are
  motivation only. The proof uses the same balanced gauge, Euclidean metric,
  asymmetric atoms, exact objective, and sign/permutation orbit as setting.md.
  The scaling directions are absent because all three mode norms are tied;
  only the finite sign/permutation orbit remains.
- Residual-to-target adequacy: step_006 gives each produced committed factor a
  same-label balanced factor error, and step_008 gives a bijection after \(r\)
  commits. Summing these errors yields
  \[
   \operatorname{dist}(Q_{\rm commit},{\cal Z}_\star)
   \le \sqrt r\,P^{-D_{\rm dir}}=:\eta_{\rm ent}.
  \]
  Unused slots are exactly zero and therefore match the consumed chart
  convention. Choose
  \(P^{-D_{\rm PL}}\le\eta_{\rm ent}<\varrho_{\rm PL}/4\) by taking the fixed
  exponents in the required order.
- Key positive/control term or structural source: the balanced Jacobian
  singular-value lower bound and exact zero-residual target.
- Opposing defect terms: cross-component Jacobian blocks, nonlinear Taylor
  remainder, initial factor error, and possible first exit from the chart.
- Closure/dominance/absorption relation: choose
  \(\varrho_{\rm PL}\le c\sigma_{\min}(D\Psi)/L_{\Psi}\) so cross/Taylor
  defects are at most half the linear term. Armijo and the accepted-step
  lower bound give
  \[
   F_{t+1}\le
   (1-\tfrac12\lambda_{\min}\mu_{\rm PL})F_t,
  \]
  with no additive term. A boundary error bound plus the measured
  displacement cap gives a first-exit contradiction, proving invariance.
- Accumulation behavior / scope compatibility: the recurrence is contractive;
  the only repeated term is multiplied by
  \(1-\lambda_{\min}\mu_{\rm PL}/2<1\). No discovery, tape, rollback, or
  unused-slot forcing is present after entry.
- Obligation locality classification: step-local.
- Noncircular closure status: step_009 produces chart membership from the
  completed injection before step_010 uses PL. Invariance follows from the
  boundary relation and local descent, not from assuming all future iterates
  lie in the chart.
- Entry-state / first-update stress result: at \(Q=Q^\star\), the gradient and
  residual are zero and the iterate remains fixed. At a nonzero entry error
  below \(\varrho_{\rm PL}/4\), the first Armijo step decreases the actual
  residual and stays below the boundary slack.
- Baseline conclusion preserved: the exact balanced representation is the
  center of the chart, and the recurrence tends to zero rather than to a
  reserve floor.
- Producer-consumer provenance: step_006,step_008 -> step_009 -> step_010 ->
  step_011.
- Null or boundary regime tested: exact solution, equal weights, sign/permuted
  representations, zero unused slots, and a putative first chart exit.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes; a singular balanced Jacobian would invalidate PL. The
  realized pair/triple Gram and positive weight bounds exclude this within
  the declared special case.
- Repair route if source is unsupported: a missing current-notation
  Jacobian-to-PL bridge is a sketch/interface defect; a genuine singularity
  inside the stated class would be an idea/theorem-contract defect.

### step_011: public rate and probability specialization

- Step ID: step_011.
- Claim class: explicit-rate and confidence conversion.
- Theorem role: assembles the technical constants into the target rank,
  probability, work, and relative-error statement.
- Mechanism source: arithmetic substitution of
  \(k=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil\),
  \(N_{\rm tx}\), \(H_{\rm tx}\), the accepted-step lower bound, and the PL
  recurrence, plus a union bound only between the separate instance and
  conditional tape conclusions.
- Source-to-claim adequacy: every exponent is fixed before sampling and every
  displayed quantity is polynomial in \(n,r,\rho^{-1},\kappa\); the only
  \(\epsilon\)-dependence is the terminal logarithm.
- Residual-to-target adequacy: the stopping rule
  \(F\le\epsilon^2\|T\|_F^2/2\) is exactly equivalent to the consumed relative
  Frobenius residual bound.
- Key positive/control term or structural source: positive inverse-polynomial
  \(\lambda_{\min}\mu_{\rm PL}\) and finite \(N_{\rm tx}H_{\rm tx}\).
- Opposing defect terms: ceiling factors, initial terminal loss, and the two
  failure probabilities.
- Closure/dominance/absorption relation: verify the fixed rank inequalities
  \(r<k<r^2\) for \(r\ge r_0\), absorb finite ceilings by displayed factors,
  and use \(O((\lambda_{\min}\mu_{\rm PL})^{-1}\log(1/\epsilon))\) terminal
  iterations.
- Accumulation behavior / scope compatibility: finite union for probability
  and a finite geometric recurrence for accuracy.
- Obligation locality classification: step-local.
- Noncircular closure status: consumes only outputs of step_001--step_010.
- Entry-state / first-update stress result: for \(\epsilon\) already above the
  entry residual ratio, zero terminal steps are allowed; otherwise the first
  contraction is active.
- Baseline conclusion preserved: arbitrary \(0<\epsilon<1\), exact pruning,
  and no error floor remain explicit.
- Producer-consumer provenance: step_001--step_010 -> step_011 -> theorem.
- Null or boundary regime tested: large \(\epsilon\), exact entry, and the
  smallest admissible \(r_0\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes; all rate-bearing sources have earlier producers.
- Repair route if source is unsupported: REVISE_SKETCH for arithmetic or
  dependency omissions.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Realized good-instance event | step_001 | Six static assumptions, normalized Gaussian columns, base Gram margin | Gaussian norm/direction deviations are controlled by the smoothing margin; no trajectory term appears | Produced realized factors and tensor equal theorem objects | Base error plus perturbation error is below the displayed realized margins; \(G_\star\) then controls \(\lVert T\rVert_F\) | Explicit \(1/(100r\log(2r))\) slack and column lower bound | step_004--step_011 | None |
| Exact balanced zero-residual baseline | step_001 | Positive realized weights and normalized realized factors | No approximation defect; only sign/permutation equivalence | Exact equality with \(T\) in Frobenius norm | \(q_j^\star\) represents \(\tau_j\phi_j\) exactly and lies below \(2R_{\max}\) | Realized norm upper bound | step_009, step_010, step_011 | None |
| Radial bracket and capture | step_002 | Actual \(R_I\), score \(s_I\), sign of \(d_I\), dyadic scalar bracket | Finite radial tolerance controlled by \(D_{\rm rad}\); negative score is a stopped failure | Produced bracket uses the same pre-scratch residual consumed by certificate/isolation | Monotonicity of \(s_I-g^3\) gives unique root; capture equals \(g^3s_I-g^6/2\) | Positive score and certificate capture threshold | step_005, step_007 | None |
| Exact rollback state | step_002 | Frozen protected slots and one active scratch slot | Failed trajectory may be arbitrary inside guard but is erased exactly | Post-rollback factors, represented tensor, residual, and loss equal their pre-transaction values | Joint-zero reset removes the complete scratch tensor; no norm inequality is substituted for equality | Transaction boundary in the fixed protocol | step_007, step_008, step_010 | None |
| Accepted-step lower bound and guard | step_003 | \(G_{\rm loc},L_{\rm loc}\), global box bounds, measured displacement cap | Taylor remainder and displacement are controlled; stationary trials are excluded from the lower-bound claim | Same objective, factor path, and projected/unprojected gradient as consumed | Dyadic backtracking yields at least half the smaller valid ceiling, hence the displayed \(\lambda_{\rm acc}\) | Local smoothness and explicit \(\Delta_{\rm tr}\) | step_007, step_010, step_011 | None |
| Conditional residual decomposition | step_004 | Signed injection and factor-error part of \({\sf Good}(I)\), exact target expansion | Committed tensor errors are controlled by \(rR_{\max}^2\eta_{\rm dir}\); unresolved atoms are exact | \(R_I=\sum_{j\in U_I}\tau_j\phi_j+E_I\) compares actual residual to same target atoms in Frobenius norm | Exponent choice makes \(\lVert E_I\rVert_F\) smaller than angular gap and span margins | Exact empty-state decomposition and per-commit Lipschitz charge | step_005, step_007 | None; unconditional use waits for step_006 |
| Certificate -> unique label, direction/radius accuracy, and probe-local response isolation | step_005 | Angular gradient/Hessian, \(e_A,e_B,e_C\), radial bracket, capture, instance Gram, step_004 residual interface | Cross-channel Gram terms, \(E_I\), stationarity, and bracket defects have separate bounds; zero-capture states are excluded | Produced object is the actual probe response \(\chi_j(q;I)\); consumed target is one realized unresolved atom with same mode factors. Residual is bounded directly by \(C(\zeta_{\rm ang}+\mu_{\rm real})\lvert\chi_{j_\star}\rvert\) | Orthogonal two-channel negative curvature plus perturbation leaves only one response above the margin; local gradient/gap converts to factor accuracy | Pure-channel angular gap and capture lower bound | step_006--step_011 | None at sketch level; this is the principal hard lemma |
| Protected-span transfer and next-state invariant | step_006 | step_005 signed factor accuracy, modewise Gram margin, radial accuracy | One new span vector and one committed tensor error; cumulative errors are bounded over at most \(r\) commits | Produced projected target is transferred back to the same realized target direction; projection loss is explicit | Protected target Gram inverse controls the projector; exponent ledger controls total tensor error | Operator-norm near-orthogonality and \(P^{-D_{\rm dir}}\) slot accuracy | step_007, step_008, step_009 | None |
| One-transaction success probability | step_007 | Fresh conditional Haar triple, step_006 span lower bound, step_002/003 dynamics, step_005 landscape trichotomy | Small score/off-channel tails are probability defects; finite dynamics errors are controlled by exponents | Basin is defined around projected realized target and step_006 bridges to unprojected target | Haar small-ball gives \(p_{\rm ang}\); monotone loss decrease/negative-curvature decrease and bounded loss yield \(H_{\rm tx}\) | Projected target norm and inverse-polynomial score/gap | step_008 | None at sketch level; polynomial basin estimate is theorem-critical |
| All \(r\) commits and finite work | step_008 | Conditional \(p_{\rm ang}\), independent unused tape entries, exact rollback | Failed transactions consume work but create zero state error | Each success consumes one distinct realized label by step_006 | Stopped Bernoulli domination and \(N_{\rm tx}\ge8rp_{\rm ang}^{-1}\log(2r)\) | Conditional independence and injective commit count | step_009--step_011 | None |
| Same-target chart entry | step_009 | Complete injection, signed factor/radius accuracy, exact pruning | \(\sqrt r\,P^{-D_{\rm dir}}\) factor error; no unused-slot defect | Produced committed state is compared directly to \({\cal Z}_\star\) in the chart's Euclidean factor metric | Exponents give entry error \(<\varrho_{\rm PL}/4\) and \(\varrho_{\rm PL}\ge P^{-D_{\rm PL}}\) | Balanced target Jacobian and chart radius | step_010, step_011 | None |
| PL/invariant no-floor recurrence | step_010 | Same-target entry, Jacobian lower bound, Taylor/smoothness bounds, accepted-step lower bound | Cross-block/Taylor defects are locally dominated; no additive stochastic or rollback term exists | Gradient and residual are for the exact tensor \(T\) and active committed slots | PL plus Armijo gives a geometric recurrence; boundary slack gives first-exit contradiction | \(\sigma_{\min}(D\Psi\restriction_{\rm bal})\ge P^{-d_J}\) and exact zero target | step_011 | None |
| Public rank, probability, and runtime bridge | step_011 | All prior quantitative outputs | Ceiling/union-bound factors only | \(F\le\epsilon^2\lVert T\rVert_F^2/2\) is exactly the relative residual target | Explicit substitutions verify \(r<k<r^2\), separate failure modes, and polynomial-times-log work | Fixed exponents and \(r\ge r_0\) | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| \({\cal E}_{\rm inst}\) and exact target orbit | step_001 | step_004--step_011 | Once-drawn instance guarantee and exact baseline | primitive static assumptions -> step_001 -> all fixed-instance modules | derived | None |
| Radial/capture identities and exact rollback | step_002 | step_005, step_007, step_008 | Observable discovery and zero failed-probe forcing | protocol algebra -> step_002 -> transaction/induction | derived | None |
| Accepted-step lower bound | step_003 | step_007, step_010, step_011 | Polynomial discovery/refinement work | box bounds -> step_003 -> dynamics/rate | derived | None |
| \({\sf Good}(\varnothing)\) and conditional residual interface | step_004 | step_005, step_006 | Starts and defines the protected induction | exact expansion -> step_004 -> isolation/preservation | derived | None |
| Unique unresolved label and probe-local isolation | step_005 | step_006, step_009 | Legal target-specific commit and later matching | instance + Good(I) + certificate -> step_005 | derived | None |
| \({\sf Good}(I\cup\{i\})\), span transfer, and duplicate exclusion | step_006 | step_007, step_008, step_009 | Noncircular sequential discovery | step_005 -> step_006 -> next protected state | derived | None |
| Per-transaction \(p_{\rm ang}\) and finite stopping | step_007 | step_008 | Quantitative tape resource | fresh Haar + accepted invariant/dynamics -> step_007 | derived | None |
| All-commit tape event | step_008 | step_009--step_011 | Conditional \(1-r^{-10}\) discovery guarantee | step_006 + step_007 + random tape -> step_008 | derived | None |
| Same-target PL entry | step_009 | step_010 | Produced terminal basin | all commits + exact pruning -> step_009 | derived | None |
| Chart invariance and no-floor terminal iterate | step_010 | step_011 | Arbitrary relative accuracy | step_009 + local Jacobian + Armijo -> step_010 | derived | None |
| Specialized theorem rates | step_011 | Final theorem | \(k=\Theta(r^{3/2}\log^2r)\), separate probabilities, polynomial work | step_001--step_010 -> step_011 | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | Derive \({\cal E}_{\rm inst}\) with every displayed norm/Gram bound, \(T\ne0\), and the exact balanced representation in the guard | None | assump:base-column-conditioning; assump:modewise-near-orthogonality; assump:gaussian-smoothing; assump:dimension-regime; assump:smoothing-scale; assump:smoothing-margin | Uniform normalization and Schur-product error accounting | Direct Gaussian concentration and Gram perturbation; smoothed-analysis references only as support | Fixed-instance geometry and exact baseline | Static instance objective: probability \(1-r^{-10}\), all hidden dependence explicit | PENDING |
| step_002 | Prove radial derivative/root/capture formulas, bracket complexity, and exact rollback equality for every failed transaction | step_001 | Derived \({\cal E}_{\rm inst}\); fixed transaction protocol | Keep radial and angular conventions separate and show no state defect survives failure | Direct scalar calculus, dyadic bisection, exact state comparison | Radial bracket/capture and zero forcing | Discovery objective: \(O(\log P)\) bracket work and zero accumulated rollback error | PENDING |
| step_003 | Prove guarded gradient/Hessian bounds and \(\lambda_{\rm acc}\ge\min\{(16L_{\rm box}^\star)^{-1},\Delta_{\rm tr}/(4G_{\rm box}^\star)\}\) for every nonstationary gradient trial | step_001, step_002 | Derived \({\cal E}_{\rm inst}\); fixed Armijo/guard protocol | Balance retraction, projected/unprojected paths, and measured displacement | Direct CP Jacobian/Hessian bounds and descent lemma | Globalization interface and polynomial trial cost | Discovery/terminal objectives: explicit \(n,r,k,\rho^{-1},\kappa\) lower bound | PENDING |
| step_004 | Define \({\sf Good}(I)\), prove \({\sf Good}(\varnothing)\), and derive \(R_I=\sum_{j\in U_I}\tau_j\phi_j+E_I\) plus a quantitative \(E_I\) bound whenever the protected factor-error part holds | step_001 | Derived \({\cal E}_{\rm inst}\); local conditional \({\sf Good}(I)\) only | Same-target residual decomposition without full beta and with all \(r\)-commit accumulation exposed | Exact tensor subtraction and multilinear Lipschitz bound on the guard | Conditional residual interface and base induction | Discovery objective: choose \(D_{\rm dir},D_{\rm rad}\) so \(rR_{\max}^2\eta\ll\tau_{\min}\) | PENDING |
| step_005 | Prove certificate-to-isolation: every \({\sf Cert}_{\rm ang}\) under \({\sf Good}(I)\) has one \(j_\star\in U_I\), correct signs, inverse-polynomial direction/radius accuracy, the stated \(\chi\)-response bound, and duplicate exclusion | step_001, step_002, step_004 | Derived \({\cal E}_{\rm inst}\), radial bracket/capture, local conditional \({\sf Good}(I)\) | Classify approximate angular second-order points with unequal weights and perturbation; prove current-object response bridge | Direct orthogonal critical equations, two-channel tangent curvature, Hessian/Gram perturbation; arXiv:1503.02101 only as motivation | Legal commit certificate and target map | Discovery objective: explicit gap/tolerance exponent ledger and \(\zeta_{\rm ang}+\mu_{\rm real}\) response scale | PENDING |
| step_006 | Prove commit preservation: extend the injection, transfer all unresolved target directions through updated protected spans, bound committed tensor error, and establish \({\sf Good}(I\cup\{i\})\) | step_004, step_005 | Derived instance event and certificate isolation | Gram-inverse projector bound and accumulated error over adaptive spans | Direct near-orthogonal subspace perturbation and multilinear error sum; PMLR v70 as motivation only | Noncircular protected induction | Discovery objective: uniform over at most \(r\) commits | PENDING |
| step_007 | Conditional on every accepted \({\sf Good}(I)\), prove a fresh projected Haar transaction reaches the certificate within \(H_{\rm tx}\) with probability at least \((nr)^{-c_{\rm ang}}\) | step_002, step_003, step_005, step_006 | assump:random-tape; derived protected invariant | Polynomial basin mass from weak Haar correlations; finite radial/angular gradient and negative-curvature work | Haar small-ball/tail bounds, direct score dynamics, strict-saddle descent accounting | One-transaction success and finite work | Discovery objective: select fixed \(c_{\rm ang},d_{\rm tx},D_{\rm cap}\) and retain every \(P\) dependence | PENDING |
| step_008 | Amplify conditional transaction success over \(N_{\rm tx}\), prove at least \(r\) injective commits with conditional failure at most \(r^{-10}\), and total polynomial discovery work | step_002, step_006, step_007 | assump:random-tape; derived rollback/invariant/probability outputs | Adaptivity without losing unused-tape independence | Filtration, stopped Bernoulli domination, Chernoff/binomial tail | All-commit tape event | Discovery objective: \(N_{\rm tx}=O(r(nr)^{c_{\rm ang}}\log r)\), work \(N_{\rm tx}H_{\rm tx}\operatorname{poly}\) | PENDING |
| step_009 | After exact pruning, align commits with \({\cal Z}_\star\), prove chart entry, and produce \(\varrho_{\rm PL},\mu_{\rm PL}\ge P^{-D_{\rm PL}}\) from a balanced Jacobian lower bound | step_001, step_006, step_008 | Derived instance and all-commit events | Same-target factor matching and removal of CP scaling degeneracy | Direct balanced Jacobian Gram calculation and quantitative inverse-function/Taylor bound; DOI:10.1137/110843587 only as motivation | Same-target PL chart and entry | Terminal objective: inverse-polynomial radius/gap with explicit hidden dependence | PENDING |
| step_010 | Prove chart invariance and the floor-free PL/Armijo recurrence, then reach \(F\le\epsilon^2\lVert T\rVert_F^2/2\) | step_003, step_009 | assump:accuracy-range; derived chart and accepted-step outputs | First-exit closure and exact-zero specialization | Local error bound, descent lemma, geometric contraction | Arbitrary-relative-error terminal iterate | Terminal objective: \(\operatorname{poly}(n,r,\rho^{-1},\kappa)\log(1/\epsilon)\) | PENDING |
| step_011 | Assemble the separate instance/tape probabilities, rank specialization, discovery/refinement work, and explicit remaining-scope statement | step_001, step_008, step_010 | assump:rank-regime; assump:accuracy-range; all derived rate outputs | No hidden exponent, probability-mode, or baseline loss | Direct arithmetic and probability conditioning | Public material-partial theorem | All rate objectives and public specialization bridge | PENDING |

## Dependency Notes

The graph is acyclic and every dependency points to an earlier step. The only
conditional local object is \({\sf Good}(I)\): step_004 proves its empty-state
base and algebraic consequences, step_005 derives a commit output conditional
on it, and step_006 closes the induction before the probability step uses it.
Thus neither target isolation nor projected-span preservation is assumed in a
tape event. step_007 produces a quantitative one-transaction event, step_008
alone performs amplification, and no terminal result is used to justify
discovery.

The final assembly path is
\[
\text{primitive instance assumptions}
\to {\cal E}_{\rm inst}
\to \text{protected induction}
\to \text{one-transaction reachability}
\to \text{all commits}
\to \text{same-target chart}
\to \text{floor-free PL}
\to \text{public rate}.
\]
Exact rollback is an equality at every failed branch, so there is no reserve
term to propagate through this chain. The orthogonal/equal-weight and
one-channel baselines are contained in step_005's angular calculation; the
arbitrary-base and simultaneous-GD cases are not silently reintroduced.

## Blockers

None at sketch level. The two decisive new obligations are step_005
(current-notation angular strict-saddle isolation with probe-local response
transfer) and step_007 (polynomial Haar-basin reachability). They are exposed
as lemma-sized steps with mechanism witnesses, source/object matching,
entry/boundary stress, and quantitative dominance requirements. They are not
assumed events. A proof that either mechanism fails on an allowed
near-orthogonal instance would be an idea/theorem-contract obstruction and
must route upstream rather than being hidden as local admissibility.
