# Proof Sketch

## Formalized Setting

This is sketch attempt 1 for `perspective_2/idea_12` (initial mode).  The
binding artifacts are

- `idea.md` SHA-256:
  `834398f2b088bd7f5e17a8ff89bebd34b4527227f74c977e91fb1500b4c3a20f`;
- `setting.md` SHA-256:
  `fd944f1dfe5123ca2794d5e39b16a12ff1e4b73dc1306ba6e58fec2e353b64eb`.

The source tensor is the realized asymmetric CP tensor

\[
 T=\sum_{j=1}^r\tau_j\phi_j,
 \qquad \phi_j=m_{j,A}\otimes m_{j,B}\otimes m_{j,C},
\]

obtained from the independently Gaussian-smoothed deterministic factors in
`setting.md`.  The objective, algorithmic rank, and target are exactly

\[
 F(Q)=\tfrac12\|T-\Psi(Q)\|_F^2,
 \quad k=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil,
 \quad Q^\star=\{(\tau_j^{1/3}m_{j,A},\tau_j^{1/3}m_{j,B},
 \tau_j^{1/3}m_{j,C})\}_{j\le r}+\text{joint-zero slots}.
\]

Discovery starts at joint-zero slots and uses the prescribed finite,
independent full-space Haar tape, safeguarded radial root solves,
unprojected product-sphere gradient steps, and two-sign negative-curvature
Armijo trials.  A failed, ambiguous, guard-violating, or screen-failing
probe is rolled back exactly; a passing probe is balanced and frozen.  The
terminal phase is joint balanced full-space Armijo descent on the same exact
loss.  The algorithm never queries a source label, target factor, protected
projection, or matched-mixture exchange.

For a legal prefix \(I\),
\(R_I=T-\sum_{i\in I}g_i^3u_i\otimes v_i\otimes w_i\), and a scratch
candidate \(q=(gu,gv,gw)\), use the setting's zero-safe quantities

\[
 D_I=\max\{\|R_I\|_F,\|T\|_FP^{-D_{\rm cap}}\},
 \qquad
 \mu_I(q)=\begin{cases}
 0,&s_I(q)\le0\ \text{or}\ \Delta F_I(q)\le0,\\
 \min\{1,s_I/D_I,\Delta F_I/D_I^2,g^3/D_I,
 \lambda_{\min}(\widehat H_{\rm ang})\},&\text{otherwise},
 \end{cases}
\]
\[
 e_I(q)=P^{-D_{\rm stat}}\mu_I(q),
 \qquad
 \eta_{I,q}=C_\eta(\Gamma_\star\nu_{\rm real}^2+e_I(q)).
\]

The candidate-relative nonnegative transfer majorant \(\mathcal T^+_{I,q}\),
its cyclic analogues, the gap bound, and the generated resolvent are exactly
those displayed in `setting.md`:

\[
 (\mathcal T^+_{I,q}Z)_{j,A,\ell}=
 \sum_{t\ne j}|J_A(t,\ell)|\bigl[(|H_C(j,t)|+\eta_{I,q})Z_{j,B,t}
 +( |H_B(j,t)|+\eta_{I,q})Z_{j,C,t}\bigr],
 \qquad Z_{j,M,j}=0,
\]

with the two cyclic mode definitions and
\[
 C_0\Gamma_\star\|\mathcal T^+_{I,q}\|_{1\to1}\le\tfrac14,
 \qquad
 C_0\Gamma_\star\|\mathcal T^+_{I,q}\|_{{\rm root},2\to{\rm root},2}
 \le\tfrac14
\]
for every passing candidate.  The raw numerical term is never replaced by a
fixed padding or absorbed into a structural \(\nu^2\) term.

\[
 \Theta_{I,q}=(\operatorname{Id}-C_0\Gamma_\star\mathcal T^+_{I,q})^{-1}
 C_0\Gamma_\star(S+A_I+e_I(q)\mathbf 1).
\]

After (and only after) certificate passage, the proof may construct an
analysis-only injection \(\pi_I\), signs, and one unresolved label \(p(q)\).
Writing \(z_{q,M,\ell}=\Theta_{I,q;p(q),M,\ell}\) for \(\ell\ne p(q)\), the
theorem-facing raw interface is

\[
 \|z_q\|_{{\rm root},2}
 \le C_z(\nu_{\rm real}^2+r\nu_{\rm real}^3+\sqrt r\,e_I(q))
 \tag{Raw-J-rel}
\]

with all \(e_I\)-terms retained.  The generated diagonal-aware charge and
capture telescope are the setting's `capture-charge-row` and
`capture-telescope` formulas; failed probes have zero charge.

The eleven and only primitive technical assumptions are:
`assump:base-column-conditioning`, `assump:base-product-balance`,
`assump:two-mode-orthogonality`, `assump:c-mode-gram-margin`,
`assump:gaussian-smoothing`, `assump:dimension-regime`,
`assump:smoothing-scale`, `assump:smoothing-bridge`, `assump:rank-regime`,
`assump:random-tape`, and `assump:accuracy-range`.  All realized reserves,
matching, certificates, prefix invariants, ledger bounds, reachability, and
PL membership below are derived outputs, not additional assumptions.

## Formalized Goal

On an instance event \(\mathcal E_{\rm inst}\), with
\(\Pr_{\rm inst}(\mathcal E_{\rm inst})\ge1-r^{-10}\), derive the displayed
norm, weight, pair/triple Gram, `R-src`, and two-mode reserves in
`setting.md`.  Conditional on a nonzero realized \(T\) and this event, prove
the four-block chain `(S)--(T)--(B)--(P)`:

1. `(S)` supplies two-mode contractions and the exact balanced target.
2. `(T)` gives a target-blind certificate dichotomy (rollback or one
   unresolved assignment) and `Raw-J-rel` from the candidate-relative
   resolvent.
3. `(B)` gives the diagonal-aware finite-prefix ledger, honest capture
   telescope, and all-commit error bounds without absorbing raw \(e_t\) into
   \(\nu_{\rm real}^2\).
4. `(P)` gives history-uniform tape recovery, same-target balanced PL entry,
   and terminal iterates with
   \(\|T-\Psi(Q)\|_F\le\epsilon\|T\|_F\), for every \(0<\epsilon<1\).

Discovery and ledger work are polynomial in
\((n,r,k,\kappa,\rho^{-1})\) and independent of \(\epsilon\); terminal work
is polynomial in these variables and \(\log(1/\epsilon)\).  Instance and
tape probabilities remain separate.  The exact \(T=0\) early return and the
\(H=e=0\) no-floor/stationary-target specialization are preserved.

## Sketch Identity

- Sketch attempt: `1`
- Retry mode: initial (fresh idea after the idea-11 fixed-pad contradiction)
- Progress type: `material_partial`
- Roadmap shape: ten stable steps, grouped as `(S)` = 1, `(T)` = 2--4,
  `(B)` = 5--7, and `(P)` = 8--10.

## Proof Roadmap

The roadmap uses direct current-notation multilinear algebra, Gaussian
concentration, nonnegative Neumann-series bounds, a finite capture potential,
Haar small-ball amplification, and the standard balanced-target Jacobian/PL
argument.  The exact objective and source conventions are unchanged from the
two parent foundations named by the idea (`Guarantees for Alternating Least
Squares in Overparameterized Tensor Decompositions` and `Orthogonalized ALS:
A Theoretically Principled Tensor Decomposition Algorithm for Practical Use`).
No external result is used as a theorem-facing black box: any cited standard
fact is restated in the local notation and its hypotheses are discharged from
the stable assumptions or an earlier step.

The key interface is deliberately local.  Step 2 defines a dimensionless,
zero-safe certificate margin; step 3 proves the certificate dichotomy and
analysis-only label assignment; step 4 is the sole producer of `Theta`, `z`,
and `Raw-J-rel`; step 5 exports a one-prefix transition; and step 6 is the
only induction/accumulation step.  Thus no downstream row consumes a future
producer or a hidden source-label query.

## Rate Objectives

### R1: once-drawn structural event

- Objective type: confidence-explicit, structural-parameter explicit, and
  horizon-uniform over all prefixes.
- Exposed variables: (n,r,k,\kappa,\rho,\Gamma_\star,P,
  \nu_{\rm real}); the bounds retain the displayed operator, Frobenius,
  \ell_1, and root-2 norms.
- Hidden constants may depend on the fixed source/proof constants listed in
  `setting.md` and Armijo constants only; they may not depend on
  (n,r,k,\rho,\epsilon), the realization, or the prefix.
- Probability mode: once-drawn smoothing event, probability at least
  (1-r^{-10}).
- Horizon mode: one event proves every prefix and every generated static
  array; no trajectory fact is inserted into the event.
- Required bridge: Gaussian norm/Gram concentration plus the two orthogonal
  source modes imply `R-src`, `two-mode`, and pair/triple conditioning.
- Baseline: exact representation is retained, including (T=0).

### R2: discovery, transaction, and ledger

- Objective type: numerical-error explicit, confidence-explicit, and
  finite-horizon/horizon-uniform over at most (r) commits.
- Exposed variables: (P^{-D_{\rm stat}}), adaptive (e_t=e_{I_t}(q_t)),
  (D_t), \(\eta_t\), \(\nu_{\rm real}^2+r\nu_{\rm real}^3\), and
  \(\chi_t=e_tD_t^2/\|T\|_F^2\).
- Required inequalities: \(e_tD_t^2\le P^{-D_{\rm stat}}
  \Delta F_{I_t}(q_t)\),
  \(\sum_t\Delta F_{I_t}\le F(\mathrm{empty})\), and
  \(\sum_t\chi_t\le P^{-D_{\rm stat}}\); all raw numerical terms remain
  explicit in the ledger.
- Probability mode: conditional on the fixed good instance; the independent
  tape success probability is handled separately in R3.
- Horizon/work: at most (r) accepted commits, (N_{\rm tx}) seeds, and
  (H_{\rm tx}) work per seed; discovery is polynomial and independent of
  \(\epsilon\).
- Norm mode: the setting's \(\ell_1\) and root-2 arrays and Frobenius
  objective decrease.
- Required bridge: one-step charge plus exact rollback; no `E_lb^c`
  absorption and no additive floor.

### R3: activation and tape probability

- Objective type: confidence-explicit, finite-horizon, and runtime-explicit.
- Exposed variables: (N_{\rm tx}=\lceil C_{\rm tape}r(nr)^{c_{\rm tx}}
  \log(2r)\rceil), (H_{\rm tx}=\lceil P^{d_{\rm tx}}\rceil), and the
  inverse-polynomial activation mass (p_{\rm tx}\ge(nr)^{-c_{\rm tx}}).
- Probability mode: conditional tape probability at least (1-r^{-10}),
  after the instance event; polynomial restart amplification is explicit.
- Required bridge: a target-blind seed window, guard/first-update trace,
  finite stopped flow, and Haar small-ball bound supplied by step 7.

### R4: terminal accuracy

- Objective type: accuracy-explicit and horizon-explicit.
- Exposed variables: (\epsilon\in(0,1)), exact Frobenius residual, and
  (O(\log(1/\epsilon))) Armijo horizon after chart entry.
- Probability mode: conditional on the all-commit event from R3; no
  probability is silently merged with R1.
- Norm mode: exact \(\|T-\Psi(Q)\|_F/\|T\|_F\).
- Required bridge: actual balanced tuple is compared directly to the exact
  target orbit; PL decrease is geometric and has no additive forcing in the
  \(H=e=0\) specialization.

## Assumption Provenance Objectives

- Step 1 proves the once-drawn event, realized nonvanishing, norm/weight and
  Gram reserves, `R-src`, and `two-mode` from all static assumptions among the
  eleven IDs.  The Gaussian covariance convention is exactly
  \(\mathcal N(0,\rho^2I_n/n)\), so source-convention compatibility is direct.
- Step 2 proves the certificate quantities from the actual residual and
  derivatives.  `Cert` is a local protocol predicate, not a primitive
  assumption; \(R_I=0\) and \(T=0\) are explicit zero branches.
- Steps 3--6 derive the analysis-only injection, unresolved assignment,
  history forcing, resolvent, row, transition, and finite ledger from earlier
  outputs.  No generated injection, matching, bounded prefix, or source label
  is placed in an assumption list.
- Step 7 derives the activation/reachability event and conditional tape
  success from the target-blind protocol, the step-6 legal-prefix invariant,
  and `assump:random-tape`.
- Step 8 derives actual tuple-to-target-orbit membership and the PL chart
  entry from the all-commit errors and step-1 pair/triple reserves.
- Steps 9--10 derive terminal convergence, probability/runtime specialization,
  and the exact/noiseless baseline.  Every derived fact is consumed only after
  its producer step.

## Mechanism-Source And Boundary Stress

### step_001 (S): static event and two-mode contraction

- Claim class / theorem role: concentration, conditioning, structural
  contraction, and exact target construction.
- Mechanism source and adequacy: Gaussian norm/Gram concentration under
  `assump:gaussian-smoothing`, `assump:dimension-regime`,
  `assump:smoothing-scale`, and `assump:smoothing-bridge`, combined with the
  deterministic orthogonality IDs.  The normalized-column and covariance
  conventions match `setting.md` exactly; direct Schur-product algebra gives
  `R-src` and `two-mode`.
- Residual-to-target adequacy: (Q^\star) represents the same realized
  (T) exactly in the stated Frobenius metric; no transformed or surrogate
  target is consumed.
- Controls/defects: smoothing deviations are controlled by the displayed
  \(\nu_\star\) reserve; no trajectory defect accumulates.
- Accumulation and closure: one-time event, finite union over labels/modes;
  noncircular producer is the concentration event itself (step 1 -> every
  later consumer).
- Obligation locality: `step-local`.
- Entry/boundary trace: (T=0) returns the exact zero tensor; (H_M=0)
  gives exact pair contractions and a stationary exact target.
- Baseline preserved: exact representation and no-floor endpoint remain
  available.

### step_002 (T): zero-safe certificate and transfer gap

- Claim class / theorem role: local validity, positive margin, and generated
  transfer interface.
- Mechanism source and adequacy: the observable quantities (s_I,\Delta F_I,
  g,D_I,\widehat H_{\rm ang}) and the explicit `Cert` thresholds; no lower
  bound is inferred from an upper bound.  Direct absolute-Gram algebra using
  step 1 proves the two operator-norm gaps for \(\mathcal T^+_{I,q}\) whenever
  `Cert` passes.
- Residual-to-target adequacy: all controls are computed from the actual
  (R_I); the output remains a conditional current-prefix interface, not a
  projected residual.
- Defects/closure: radial and angular errors are bounded by the same adaptive
  (e_I(q)); the gap is a one-step Neumann small-gain relation.
- Obligation locality: `step-local`.
- Entry/boundary trace: at the empty prefix, `Sep=0`; if (s_I\le0),
  \(\Delta F_I\le0\), or (R_I=0), \(\mu_I=0\) and the probe rolls back or
  discovery stops, so no division by a vanishing residual occurs.
- Baseline preserved: zero residual creates no numerical source.

### step_003 (T): two-mode isolation and analysis-only assignment

- Claim class / theorem role: support/isolation and one-unresolved-label
  dichotomy.
- Mechanism source and adequacy: the two exact orthogonal modes in
  `assump:two-mode-orthogonality`, the derived `two-mode` score identities,
  positive radial gain, separation test, and the two-sign Hessian trial.  The
  local proof gives a dichotomy: a candidate with singleton support yields a
  unique injection and product-one signs, while a mixed/tied candidate either
  exposes the prescribed active negative-curvature direction or is classified
  ambiguous and rolled back exactly.  The assignment is proof-only and never a
  source-label query.
- Residual-to-target adequacy: the resulting (E_i) is an actual tensor
  difference to \(\tau_{\pi_I(i)}\phi_{\pi_I(i)}\); its contractions are in
  the same target frame and are not a surrogate metric.
- Defects/closure: (e_I), angular error, and separation are retained as raw
  defects; singleton isolation is a local dichotomy, not an all-prefix claim.
- Obligation locality: `step-local`.
- Entry/boundary trace: empty prefix has no conflicting frozen slot; a zero
  score, (g\downarrow0), or a tied/mixed support follows the rollback branch.
- Baseline preserved: exact orthogonal atoms pass with zero directional error.

### step_004 (T): candidate-relative resolvent and `Raw-J-rel`

- Claim class / theorem role: generated lower-dimensional row interface and
  residual transfer.
- Mechanism source and adequacy: after step 3, form the displayed
  nonnegative \(\mathcal T^+_{I,q}\); step 2 supplies its gap, so the finite
  Neumann series is well-defined in both \(\ell_1\) and root-2 norms.
  The source convention is entrywise absolute normalized Gram, exactly as in
  `setting.md`.
- Residual-to-target adequacy: (S+A_I+e_I\mathbf1) is a decomposition of
  structural, accepted-history, and candidate numerical residuals in the
  same unresolved target coordinates.  The exported (z_q) is only used to
  bound the actual (E_i) contractions; the row bound is
  \(C_z(\nu^2+r\nu^3+\sqrt r e_I)\), with no hidden fixed pad.
- Defects/closure: all (e_I)-terms remain raw; transfer is contractive by
  the explicit \(1/4\) gap.  No `E_lb` absorption is used.
- Obligation locality: `step-local`.
- Entry/boundary trace: if (R_I=0), (e_I=0), \(\Theta=0\), and (z=0);
  at (H=e=0), the source and row vanish exactly.
- Baseline preserved: exact target receives no artificial numerical forcing.

### step_005 (B): one-prefix transition and capture charge

- Claim class / theorem role: recursive state transition, signed descent, and
  generated charge.
- Mechanism source and adequacy: direct multilinear expansion with
  (J_M(p,p)=1), zero-diagonal (z), balanced re-gauging, and the positive
  accepted decrease \(\Delta F_I(q)>0\). The producer/consumer path is
  step 3 -> step 4 -> step 5.
- Residual-to-target adequacy: the committed slot is compared directly to the
  exact unresolved atom; the charge uses the actual tensor increment and not a
  factor-distance surrogate.
- Accumulation: one accepted transition exports
  \(e_tD_t^2\le P^{-D_{\rm stat}}\Delta F_{I_t}(q_t)\), a new injection, and
  the exact `capture-charge-row`; failed probes return the prior state and
  charge zero.  This is the named local-prefix conditional transition used by
  step 6.
- Obligation locality: `step-local`.
- Entry/boundary trace: the empty prefix is the induction base; the first
  accepted root uses the same (J(p,p)=1) diagonal convention.
- Baseline preserved: exact (H=e=0) gives zero charge and exact rollback.

### step_006 (B): finite-prefix induction and raw ledger

- Claim class / theorem role: all-prefix invariant, boundedness, and
  accumulation closure.
- Mechanism source and adequacy: step 5's conditional transition plus the
  finite potential (F(I)).  The one-step decrease telescopes:
  \(\sum_{t\le s}\Delta F_{I_t}\le F(\mathrm{empty})\), hence
  \(\sum\chi_t\le P^{-D_{\rm stat}}\).  The multilinear charge expansion
  gives the setting's raw ledger with structural
  \(\nu^2+r\nu^3\) and separate \(\sum\chi_t\); no sign-unknown term is
  absorbed into \(\nu^2\).
- Residual-to-target adequacy: the induction state stores actual frozen slots,
  their injection, residual, and ledger in the target frame; each update is
  exact before bounding.
- Accumulation/closure: finite at most (r) commits, exact rollback on
  failures, nonnegative objective potential, and one charge per commit.  The
  closure path is empty base -> step 5 transition -> step 6 induction -> all
  consumers, so it is noncircular.
- Obligation locality: `step-local`.
- Entry/boundary trace: repeated failures preserve the base state; the last
  unresolved label and (R_I=0) terminate the induction.
- Baseline preserved: all structural and numerical charges vanish in the
  exact (H=e=0) branch.

### step_007 (B -> P): target-blind activation, rollback, and tape recovery

- Claim class / theorem role: reachability, conditional probability, and
  generated all-commit event.
- Mechanism source and adequacy: step 2's certificate thresholds, step 3's
  isolation dichotomy, and step 6's history-uniform legal-prefix invariant
  define an analysis-only seed window \(W_I\) with half-slack versions of
  \(\mu_I\ge P^{-D_\mu}\),
  \(\lambda_{\min}(\widehat H_{\rm ang})\ge P^{-D_{\rm gap}}\),
  \({\sf Sep}\le1/8\), the radial bracket, and the transfer gap.  Its radius
  is at most \(\delta\).
  For each unresolved source coordinate, the two-mode score identity from
  step 1 supplies the center of such a window; continuity and the displayed
  certificate slack give its inverse-polynomial Haar mass before any tape
  trial is sampled.
  The guarded radial/angular flow stays in \(W_I\)
  for at most \(H_{\rm tx}\) updates or rolls back; at the first update the
  fixed sign flip makes the score positive, radial re-bracketing preserves the
  root, and the displacement guard is \(\le\Delta_{\rm tr}\).  `assump:random-tape` and Haar small-ball volume give
  \(\Pr(q\in W_I)\ge p_{\rm tx}\ge(nr)^{-c_{\rm tx}}\), and the finite tape
  gives conditional success at least \(1-r^{-10}\).  \(W_I\) is an
  analysis-only union over unresolved labels; the protocol remains target-blind
  and never tests that union's labels.
- Residual-to-target adequacy: successful states are actual full-space factors;
  rollback states equal the preceding actual state.  No projection or source
  label is introduced.
- Accumulation/closure: stopped finite flow, independent seeds, and zero
  forcing on failures; dependency path is step 6 -> step 7 -> all-commit event.
- Obligation locality: `step-local`.
- Entry/boundary trace: empty prefix, negative/zero score, guard boundary,
  exact (R_I=0), tape exhaustion, and both signs are explicitly handled.
- Baseline preserved: in the exact branch the activation window contains the
  stationary atom or the protocol terminates at zero without a floor.

### step_008 (P): all-commit error and same-target PL entry

- Claim class / theorem role: residual-to-target bridge, basin membership,
  coercivity, and first-exit invariance.
- Mechanism source and adequacy: step 1 pair/triple Gram reserves and balanced
  target Jacobian, together with step 6 all-commit ledger and step 7 actual
  committed tuple.  Direct coordinate/sign/radius calibration yields the
  explicit bridge
  \[
    \operatorname{dist}(Q,\mathcal Z_\star)\le
    C_{\rm ent}\bigl(\Gamma_\star\nu_{\rm real}^2+r\nu_{\rm real}^3
      +\sqrt{\textstyle\sum_t\chi_t}+P^{-D_{\rm stat}/2}\bigr)\le\varrho;
  \]
  the Jacobian lower singular value then gives the same-target PL inequality
  in the stated balanced/Frobenius convention.
- Residual-to-target adequacy: the produced object is the actual tuple (Q),
  the consumed object is the exact padded target orbit \({\cal Z}_\star\),
  and the direct per-slot errors plus `Raw-J-rel` dominate the required chart
  radius.  No whitening, protected projection, or transformed reference is
  used.
- Accumulation/closure: first-exit argument uses PL decrease and the chart
  radius; once inside, the Armijo step is nonexpansive at the boundary.
  Noncircular path: step 1 -> step 6/7 -> step 8 -> step 9.
- Obligation locality: `step-local`.
- Entry/boundary trace: exact target is stationary; a zero residual after the
  final commit is already in the chart; a first attempted exit is rejected by
  the PL boundary decrease.
- Baseline preserved: exact (H=e=0) gives zero distance and exact stationarity.

### step_009 (P): terminal balanced Armijo convergence

- Claim class / theorem role: signed descent, convergence, and no-floor rate.
- Mechanism source and adequacy: the same-target PL inequality and standard
  Armijo sufficient-decrease calculation in the exact objective; the balanced
  chart's source/target conventions coincide with `setting.md`.
- Residual-to-target adequacy: (F(Q)=\tfrac12\|T-\Psi(Q)\|_F^2) is the
  theorem metric itself, so geometric decrease gives the exact residual bound.
- Accumulation/closure: each accepted step drops (F) by a fixed PL fraction;
  the finite terminal horizon is (O(\log(1/\epsilon))), with no persistent
  forcing term.
- Obligation locality: `step-local`.
- Entry/boundary trace: (Q^\star) has zero gradient; if (F=0), the
  algorithm stops; the exact/noiseless endpoint remains valid for every
  \(\epsilon\).
- Baseline preserved: no additive error floor is introduced.

### step_010 (P): probability, runtime, and baseline specialization bridge

- Claim class / theorem role: explicit-rate specialization and final theorem
  closure.
- Mechanism source and adequacy: substitute the displayed (k,P,N_{\rm tx},
  H_{\rm tx}), concentration tail, tape tail, and PL horizon from steps
  1, 7, and 9.  The two probability modes are multiplied/conditioned only
  after their separate statements are established.
- Residual-to-target adequacy: the final public quantity is exactly the
  Frobenius residual in step 9; simplification changes only notation, not the
  target.
- Accumulation/closure: finite discovery plus logarithmic terminal horizon;
  all hidden constants obey R1--R4.  Noncircular path is step 1, step 7,
  step 8, step 9 -> step 10 -> theorem.
- Obligation locality: `step-local`.
- Entry/boundary trace: (T=0) early return and (H=e=0) exact specialization
  are checked before dividing by \(\|T\|_F\); no-floor conclusion is retained.
- Baseline preserved: exact representation, stationary target, and arbitrary
  relative accuracy are explicitly restated.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls and defects | Residual-to-target adequacy | Dominance / margin source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- |
| `E_inst`, `R-src`, `two-mode`, pair/triple reserves, exact `Q*` | step 001; primitive smoothing IDs | Gaussian deviations controlled by `nu_star`; no trajectory defect | Exact realized CP equality in Frobenius norm | Concentration tails and two orthogonal source modes | steps 002--010 | None |
| zero-safe `mu_I`, `e_I`, `eta_{I,q}`, transfer-gap | step 002; actual residual/derivatives | radial/angular errors and positive certificate clauses; zero branches explicit | Current actual residual, no projection | `Cert` thresholds and explicit 1/4 gap | steps 003--007 | None |
| injection, signs, unresolved `p`, history `A_I` | step 003; proof-only analysis | separation, mixed-support negative-curvature branch, raw `e_I` | `E_i` is direct actual-atom tensor difference | two-mode/Hessian dichotomy | steps 004--005 | None |
| `Theta_{I,q}`, zero-diagonal `z`, `Raw-J-rel` | step 004; step 002 gap + step 003 assignment | structural `nu^2+r nu^3` and numerical `sqrt(r)e_I`; no fixed pad | Same target-frame contractions; row controls actual `E_i` | explicit 1/4 transfer gap | steps 005--008 | None |
| one-prefix transition, `capture-charge-row`, `Delta F` decrease | step 005; exact expansion and rollback | radial/directional/history/numerical terms separated | Actual committed slot and residual update | `J(p,p)=1`, positive `Delta F`, exact rollback | step 006 | None |
| legal-prefix invariant, raw ledger, `chi` budget | step 006; step 005 transition | accumulated forcing is structural plus `sum chi`; no `E_lb` absorption | Actual frozen tuple and target-frame ledger | one-step charge plus objective telescope | steps 007--008 | None |
| target-blind activation window and all-commit event | step 007; protocol + Haar tape | finite guard, first-update trace, stopped failures | Successful state is actual; failures equal prior state | Haar small-ball plus independent finite tape | step 008 and final theorem | None |
| chart entry and same-target PL constant | step 008; pair/triple reserves + all-commit errors | chart radius and first-exit defects | Actual `Q` to exact `Z_star` orbit | Jacobian lower singular value / conditioning | step 009 | None |
| terminal residual and public probability/runtime rate | steps 009--010 | PL decrease, separate instance/tape tails, explicit horizons | The theorem metric is the exact Frobenius residual | Armijo/PL and displayed substitutions | final assembly | None |

All direct derivations use the normalized inner-product, Frobenius, operator,
\ell_1, and root-(2) conventions fixed in `setting.md`; no source-convention
or object-target conversion is deferred to a later step.

## Generated Output Flow

| Generated output or control | Producer | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| once-drawn event and static reserves | step 001 | steps 002--010 | condition on good instance | primitive IDs -> step 001 -> all | derived | None |
| certificate controls and transfer gap | step 002 | steps 003--007 | legal transaction interface | step 001 -> step 002 -> 003--007 | derived | None |
| analysis-only injection and unresolved assignment | step 003 | step 004, step 005 | one-label capture proof | steps 001--003 | explicitly conditional | None |
| relative resolvent, `z`, and `Raw-J-rel` | step 004 | steps 005, 006, 008 | row/error control | steps 001--004 | derived | None |
| one-step transition and charge | step 005 | step 006 | prefix induction | steps 001--005 | explicitly conditional | None |
| finite-prefix ledger and `chi` budget | step 006 | steps 007, 008 | all-commit error bound | steps 001--006 | derived | None |
| activation/tape success event | step 007 | step 008, step 010 | conditional recovery probability | steps 001--007 + `assump:random-tape` | derived | None |
| actual chart entry and PL inequality | step 008 | step 009 | terminal descent | steps 001--008 | derived | None |
| terminal iterate/rate and baseline bridge | steps 009--010 | final theorem | public endpoint | steps 001--010 | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | `(S)`: with probability `>=1-r^-10`, derive the good instance event, `R-src`, two-mode contractions, pair/triple reserves, and exact balanced target. | None | `assump:base-column-conditioning`; `assump:base-product-balance`; `assump:two-mode-orthogonality`; `assump:c-mode-gram-margin`; `assump:gaussian-smoothing`; `assump:dimension-regime`; `assump:smoothing-scale`; `assump:smoothing-bridge` | Joint norm/Gram tails and Schur-product contraction. | Gaussian concentration, normalization, Schur-product/Cauchy--Schwarz algebra. | `E_inst`, `H/J/K/S`, exact `Q*`, static reserves. | R1 structural/confidence/horizon-uniform. | PENDING |
| `step_002` | `(T)`: for every legal prefix and candidate, establish the zero-safe `Cert` dichotomy, define `mu,e,eta`, and prove the candidate-relative transfer gaps, including `R_I=0` stop. | `step_001` | `assump:rank-regime`; derived `E_inst`; protocol definitions | Units and zero residual; conditional positive margin. | Direct derivative identities, observable certificate inequalities, Schur/absolute transfer bound. | `mu_I`, `e_I`, `eta_{I,q}`, `T^+`, legal gap. | R2 numerical-error explicit. | PENDING |
| `step_003` | `(T)`: prove singleton isolation or exact rollback for a passing probe; export one analysis-only injection, signs, unresolved `p`, and history source `A_I`. | `step_001`, `step_002` | derived `two-mode`; protocol `Sep`, Hessian gap; no source-label assumption | Mixed-support and sign/tie boundary; local active negative curvature. | Two-mode score identities, product-sphere Hessian selector, two-sign Armijo/rollback. | `pi_I`, `p(q)`, `E_i`, `A_I`, local transition precondition. | R2; raw `e_I` retained. | PENDING |
| `step_004` | `(T)`: form the candidate-relative Neumann resolvent after certificate passage and prove `Raw-J-rel` plus radial/directional transfer bounds. | `step_002`, `step_003` | derived `E_inst`, `two-mode`, `pi_I`; no new primitive | Nonnegative small gain and zero diagonal; no fixed-pad absorption. | Finite Neumann series in `ell_1` and root-(2), multilinear contraction. | `Theta`, `z`, `Raw-J-rel`. | R2 structural plus adaptive numerical terms. | PENDING |
| `step_005` | `(B)`: prove the local-prefix conditional transition: commit one new unresolved atom with exact rollback otherwise, export `capture-charge-row`, and charge `e_tD_t^2` by accepted loss decrease. | `step_003`, `step_004` | derived `Raw-J-rel`; protocol balancing/rollback | Diagonal-aware `J` update and residual-to-target calibration. | Exact tensor expansion, `J(p,p)=1`, balanced re-gauging, objective telescope. | next legal prefix, `Delta F_t`, charge, `chi_t`. | R2 finite-horizon. | PENDING |
| `step_006` | `(B)`: induct over legal prefixes and prove the raw finite ledger, `sum Delta F <= F(empty)`, `sum chi <= P^-Dstat`, and all-commit error bounds. | `step_001`, `step_005` | derived static event and local transition; `assump:rank-regime` | Scope accumulation with persistent structural terms and raw adaptive errors. | Monotone objective potential, one-step charge, finite `r`-commit induction. | history-uniform prefix invariant and ledger. | R2 horizon-uniform; no `E_lb` absorption. | PENDING |
| `step_007` | `(B)->(P)`: prove target-blind activation/rollback flow and finite-tape recovery with conditional probability `>=1-r^-10`. | `step_002`, `step_003`, `step_006` | `assump:random-tape`; derived legal-prefix invariant | Seed-window slack, first update, finite guards, Haar mass, independent stopped trials. | Guarded radial/angular flow, Haar small-ball, union bound/amplification. | activation window, all-commit event, discovery runtime. | R3 confidence/runtime explicit. | PENDING |
| `step_008` | `(P)`: transfer all-commit actual factors to the exact target orbit and prove same-target balanced PL chart entry and first-exit invariance. | `step_001`, `step_004`, `step_006`, `step_007` | derived pair/triple reserves and ledger | Direction/radius/sign calibration and coercive Jacobian. | Balanced target Jacobian, Gram conditioning, direct residual-to-target expansion. | `dist(Q,Z_star)<=varrho`, `PL` inequality. | R4 entry bridge. | PENDING |
| `step_009` | `(P)`: run terminal full-space balanced Armijo descent in the chart and reach exact relative residual at most epsilon times the Frobenius norm of T in `O(log(1/epsilon))` steps. | `step_008` | `assump:accuracy-range`; derived PL chart | First-exit and sufficient-decrease constants; exact zero limit. | PL inequality and standard Armijo decrease. | terminal `Q`, residual endpoint, no-floor branch. | R4 accuracy/horizon explicit. | PENDING |
| `step_010` | Complete the rate/probability specialization and baseline bridge, retaining separate instance/tape probabilities and polynomial discovery plus logarithmic terminal work. | `step_001`, `step_006`, `step_007`, `step_009` | `assump:rank-regime`; `assump:random-tape`; `assump:accuracy-range` | Substitute `k,P,N_tx,H_tx`, check hidden constants and zero branches. | Direct inequalities and conditional-probability composition. | final public theorem statement and exact `T=0`, `H=e=0` specialization. | R1--R4 specialization bridge. | PENDING |

## Dependency Notes

The graph is acyclic: `step_001` is the sole static producer; each later step
uses only earlier outputs.  Steps 2--4 form the transaction interface, with
the relative resolvent produced before any ledger consumer.  Step 5 is the
only local recursive transition and step 6 is the only accumulated induction,
so the all-prefix claim is not circular.  Step 7 consumes that invariant to
produce a conditional all-commit event; only then does step 8 consume actual
factor errors for same-target PL entry.  Steps 9--10 are terminal and
quantitative bridges.  Analysis-only \(\pi_I,p(q)\), signs, and static arrays
never enter the algorithm or the primitive assumption list.

## Blockers

None.  The sketch keeps the raw candidate-relative numerical terms, has no
`E_lb` absorption claim, and assigns every theorem-facing generated object a
producer, consumer, dependency path, boundary trace, and same-target bridge.
