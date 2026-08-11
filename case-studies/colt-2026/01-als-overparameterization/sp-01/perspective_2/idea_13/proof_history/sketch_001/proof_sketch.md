# Proof Sketch

## Formalized Setting

This is the first sketch for `perspective_2/idea_13` in `material_partial`
mode.  The binding artifacts are:

- `idea.md` SHA-256: `57d7f265b8fae0e606cdaa46cd098fcbf766a37670ced28fc4f5f0d980ba9a18`
- `setting.md` SHA-256: `6a565a9ed7e0288ad4ea96439f04b0b37ec83fa831f698b91f84aea2a007dcca`
- triggering prior failure: `perspective_2/idea_12/proof_history/sketch_005/proof_sketch_review.md`, SHA-256 `59f2675c7dbd300b6563f188fb029bf557c93d5005dcf89f3179367c155d61ef`.

The source is the smoothed asymmetric CP tensor

\[
 T=\sum_{j=1}^r\tau_j m_{j,A}\otimes m_{j,B}\otimes m_{j,C},
 \qquad F(Q)=\tfrac12\|T-\Psi(Q)\|_F^2,
\]

with the exact balanced target
\(q_j^\star=(\tau_j^{1/3}m_{j,A},\tau_j^{1/3}m_{j,B},
\tau_j^{1/3}m_{j,C})\), padded by joint-zero slots, and
\(k=\lceil C_{\rm rank}r^{3/2}\log^2(2r)\rceil\).  Discovery starts from
joint-zero slots, uses one target-blind scratch slot and the independent
Haar pair tape from `setting.md`, and then runs balanced full-space Armijo
descent on the same exact objective.  A failed probe is rolled back exactly.

For a prefix (I), the residual is (R_I).  The observable contractions
\(C_A,C_B,C_C\) and the finite safeguarded block operators
\({\sf BA}_A,{\sf BA}_B,{\sf BA}_C) are exactly those in `setting.md`;
the displayed normalized contractions are analysis notation for the exact
slice gradients, not an oracle or a protected projection.  The candidate
certificate uses score, radial error, angular error, cycle residual,
separation, and normalized angular curvature.  The candidate-relative
numerical source is (e_I=P^{-D_{\rm stat}}\mu_I), only after a candidate
passes the certificate.  All label assignments, signs, history arrays,
resolvents, and power gaps are proof-generated.

The only primitive assumptions are the eleven stable IDs in `setting.md`:

1. `assump:base-column-conditioning`
2. `assump:base-product-balance`
3. `assump:two-mode-orthogonality`
4. `assump:c-mode-gram-margin`
5. `assump:gaussian-smoothing`
6. `assump:dimension-regime`
7. `assump:smoothing-scale`
8. `assump:smoothing-bridge`
9. `assump:rank-regime`
10. `assump:random-tape`
11. `assump:accuracy-range`

No matching, source-label query, whitening, protected span, simultaneous
diagonalization, fixed angular pad, or non-iterative recovery is admitted.

## Formalized Goal

For every deterministic source satisfying the eleven IDs, prove a once-drawn
event \(\mathcal E_{\rm inst}\), with probability at least (1-r^{-10}),
giving the nonvanishing, norm, product-weight, pair/triple Gram, `R-src`,
`two-mode`, and exact-target reserves stated in `setting.md`.  Conditional on
this event and (T\ne0), prove the four-block chain

\[
 (S)\ \longrightarrow\ (C)\ \longrightarrow\ (T)\ \longrightarrow\ (P).
\]

`S` derives the static coefficient identities and two-mode reserves.  `C`
derives a coefficient-level cyclic power recurrence, a fixed positive
\(\gamma_{\rm pow}\) gap from a polynomial-mass order-statistic event, and a
finite Armijo realization/tape event uniformly over every shrinking prefix.
`T` turns every passing observable certificate into one unresolved assignment,
the candidate-relative `Raw-J-rel` bridge, and a finite honest ledger.  `P`
recovers all unresolved labels on the conditional tape event, enters the
same-target balanced PL chart, and reaches

\[
 \|T-\Psi(Q)\|_F\le\epsilon\|T\|_F,
 \qquad 0<\epsilon<1,
\]

in polynomial discovery/ledger work independent of \(\epsilon\), and terminal
work polynomial in the displayed parameters and \(\log(1/\epsilon)\).  The
instance and tape probabilities remain separate.  The (T=0) early return,
the (R_I=0) no-production branch, and the exact (H_M=e_t=0) no-floor
baseline are part of the target.

## Sketch Identity

- Sketch attempt: `1`
- Retry mode: initial (new idea after the idea-12 theorem-contract failure)
- Progress type: `material_partial`
- Roadmap shape: seven stable rows, `(S)=1`, `(C)=2--3`, `(T)=4--5`,
  `(P)=6--7`.
- Concision choice: rows 004 and 005 expose separate local units but share one
  stable transaction interface; no proof obligation is removed.

## Proof Roadmap

The selected framework is an observable cyclic tensor-power bank followed by
the candidate-relative transfer resolvent and the balanced target-Jacobian
chart.  The source restrictions (G_{\bar A}=G_{\bar B}=I) make the first two
contractions diagonal at coefficient level.  The near-orthogonal (C) mode,
the realized Gram reserves, and the typed history ledger are treated as
relative perturbations of those diagonal coefficients.  A Haar pair is used
only to obtain a scalar order-statistic winner; the common (n^{-1/2})
projection scale is removed by normalization.  The proof must establish the
relative perturbation inequality before claiming a gap; the gap is not a
primitive assumption.

The seven rows are:

- `step_001 (S)`: derive the instance event, static kernels, exact target,
  two-mode coefficient identities, and all baseline/null traces.
- `step_002 (C-coeff)`: prove the ideal cyclic coefficient recurrence and
  transfer the polynomial-mass order-statistic event to a unique winner with
  a fixed \(\gamma_{\rm pow}\), including the near-(C) and prefix-error
  perturbation terms.
- `step_003 (C-flow)`: show that finite safeguarded Armijo block steps realize
  each normalized contraction to \(\zeta_{\rm pow}\), preserve the guard, and
  amplify the winner over (L_{\rm pow}=O(\log r)) cycles; amplify the
  independent tape over all prefixes.
- `step_004 (T-cert)`: use the observable certificate and a coefficient-level
  tangent selector to prove singleton/mixed-support dichotomy, signs,
  injection, one unresolved assignment, and matching errors.
- `step_005 (T-ledger)`: form the candidate-relative Neumann resolvent, export
  `Raw-J-rel`, and prove the typed shrinking-prefix transition, public raw-
  chi bridge, objective telescope, and all-commit ledger.
- `step_006 (P-entry)`: convert the actual committed balanced tuple to the
  exact permutation/sign orbit and prove same-target PL-chart entry and
  first-exit invariance.
- `step_007 (P-rate)`: run terminal Armijo descent, specialize the public
  relative rate and runtime, combine the separate probabilities, and verify
  (T=0), (R_I=0), and exact/noiseless baseline conclusions.

## Rate Objectives

### R1: once-drawn structural event

- Objective type: confidence-explicit and structural-parameter explicit,
  uniform over all prefixes.
- Exposed variables: (n,r,k,\kappa,\rho,\Gamma_\star,P,\nu_{\rm real}),
  all displayed operator/l1/rootwise-2/Frobenius norms, and fixed protocol
  constants.
- Hidden constants may depend on: fixed source, Gaussian-concentration,
  proof, and protocol constants only.
- Hidden constants may not depend on: (n,r,k,\kappa,\rho,\epsilon), the
  realized instance, or the prefix.
- Fixed quantities: the eleven primitive assumptions and (k,P,R_{\max})
  definitions in `setting.md`.
- Probability mode: once-drawn smoothing event, at least (1-r^{-10}).
- Horizon mode: one finite event valid for every (s\le r).
- Norm mode: the exact norms used by `R-src`, `two-mode`, and the target
  Frobenius metric.
- Required bridge or simplification obligations: derive realized columns,
  weights, Gram reserves, and target from the primitive smoothing bridge.
- Baseline invariance obligations: preserve exact representation and the
  (T=0), (H_M=0) specializations.

### R2: cyclic coefficient gap and tape

- Objective type: probability-, initialization-, and algorithm/horizon-
  explicit.
- Exposed variables: (n,r,L_{\rm pow},H_{\rm pow},\zeta_{\rm pow},
  C_{\rm pow},C_{\rm tape},P,\nu_{\rm real}), the order-statistic gap
  \(\Delta_{\rm ord}\), and the relative perturbation \(\xi_{\rm cyc}\).
- Hidden constants may depend on: fixed distribution and recurrence constants,
  not on (n) or (r).
- Probability mode: conditional on the instance, independent Haar pairs;
  per-prefix failure is amplified to at most (r^{-11}), then union-bounded
  over at most (r) unresolved commits.
- Horizon mode: (L_{\rm pow}=\lceil C_L\log(2r)\rceil), finite block budget
  (H_{\rm pow}=P^{d_{\rm pow}}), and (N_{\rm pow}=O(r^{C_{\rm pow}+2}\log r)).
- Norm mode: coefficient ratios, directional masses, sphere distance, and
  observable cycle residual.
- Required bridge or simplification obligations: prove a polynomial-mass
  order-statistic event whose (n^{-1/2}) scale cancels after normalization;
  prove (\xi_{\rm cyc}\le c\Delta_{\rm ord}) from the exact contraction and
  typed prefix source; derive fixed \(\gamma_{\rm pow}>0), not assume it.
- Baseline invariance obligations: zero contractions and (R_I=0) fail/stop
  without fabricating a gap; exact contractions have zero perturbation.

### R3: certificate and finite raw ledger

- Objective type: finite-horizon and numerical-error explicit.
- Exposed variables: (e_t,D_t,\eta_t,\chi_t,b_s,
  \nu_{\rm real}^2+r\nu_{\rm real}^3), raw `Raw-J-rel`, and every
  `capture-charge-row` term.
- Probability mode: conditional on the instance and the R2 tape event;
  rollback contributes zero forcing.
- Horizon/norm mode: (s\le r), rootwise-2 and l1 arrays plus objective
  decrease/Frobenius norms.
- Required bridge or simplification obligations: retain \(\sum\chi_t\) as a
  raw numerical term; prove (e_tD_t^2\le P^{-D_{\rm stat}}\Delta F_t) and
  \(\sum_t\Delta F_t\le F(\mathrm{empty})\); make the shrinking-domain
  restriction explicit in (A_{s+1}).
- Baseline invariance obligations: no fixed pad is introduced when
  \(\nu_{\rm real}=0) or (e_t=0).

### R4: same-target PL endpoint

- Objective type: regularity-explicit, horizon-uniform inside the terminal
  chart, and confidence-explicit.
- Exposed variables: (g_-,g_+,\Gamma_\star,\varrho_{\rm PL},
  L_{\rm ch},\mu_{\rm PL},\epsilon), and the actual-to-orbit ledger error.
- Probability mode: intersection of the once-drawn event and the separate
  conditional tape event; restart amplification is polynomial-cost.
- Horizon mode: finite terminal horizon (O((L_{\rm ch}/\mu_{\rm PL})
  \log(1/\epsilon))) with first-exit control.
- Norm mode: balanced slot orbit distance, balanced gradient, objective, and
  exact Frobenius residual.
- Required bridge or simplification obligations: prove actual committed slots,
  not a projected surrogate, enter the exact padded target orbit; specialize
  the geometric decrease to the public relative endpoint.
- Baseline invariance obligations: the exact target is stationary, (F=0)
  stops, and (H=e=0) has no additive floor.

## Assumption Provenance Objectives

- `step_001` derives the one-time instance event, nonvanishing, norm/weight
  bounds, pair/triple conditioning, `R-src`, `two-mode`, and (Q^\star) from
  `assump:base-column-conditioning`, `assump:base-product-balance`,
  `assump:two-mode-orthogonality`, `assump:c-mode-gram-margin`,
  `assump:gaussian-smoothing`, `assump:dimension-regime`,
  `assump:smoothing-scale`, and `assump:smoothing-bridge`.
- `step_002` uses the derived static event and a supplied prefix record only
  conditionally; it proves the coefficient recurrence and order-statistic gap
  from `assump:two-mode-orthogonality`, `assump:c-mode-gram-margin`,
  `assump:gaussian-smoothing`, and the prior typed record.  The gap is a
  generated output, never an assumption.
- `step_003` uses `assump:random-tape` and the finite protocol constants to
  derive Armijo approximation, guard preservation, and tape amplification.
- `step_004` derives the certificate, matching, and singleton assignment from
  steps 001--003; no generated label is treated as a primitive condition.
- `step_005` derives the resolvent, typed `LP_s` transition, public raw-chi
  substitution, and finite ledger from steps 001 and 004 plus
  `assump:rank-regime`.
- `step_006` derives the actual-to-target orbit bridge and PL entry from the
  accepted ledger and the static reserves, with
  `assump:base-product-balance` as the only source-weight condition.
- `step_007` uses `assump:rank-regime` and `assump:accuracy-range` for the
  public horizon and endpoint; all probabilities are inherited from steps 001
  and 003.  The only possible unproved generated invariant is the
  coefficient-relative cyclic defect in step 002; it is isolated there rather
  than hidden in a later assumption.

## Mechanism-Source And Boundary Stress

### step_001 (S): static event and two-mode source

- Claim class / theorem role: realized conditioning, contraction identities,
  and exact target; supplies every downstream source.
- Mechanism source: Gaussian norm/Gram concentration under the smoothing and
  dimension IDs, deterministic (A/B) orthogonality, and the displayed
  (C)-Gram margin.  These are direct current-notation derivations, not a
  black-box theorem wrapper.
- Source-to-claim adequacy: source columns, normalized Gram conventions, and
  target tensor all match `setting.md`; concentration gives the exact operator,
  l1, rootwise, and Frobenius interfaces used later.
- Residual-to-target adequacy: the produced (T), (m_{j,M}), and
  \(\tau_j\) are the same objects consumed by the objective and PL chart;
  no transformed target is introduced.
- Positive/control terms: diagonal coefficient (	au_j) and pair/triple
  Gram reserve.  Defects are (H_M), (K_M), and the stated smoothing error.
- Closure/accumulation: one-time event, no repeated forcing; finite-prefix
  validity follows because all later records are evaluated on this fixed event.
- Obligation locality: `step-local`.
- Noncircular closure: primitive source -> step 001 -> steps 002--007.
- Entry/first-update stress: (T=0) returns all-zero before normalization;
  (H_M=0) gives exact contractions and a stationary exact target.
- Baseline conclusion preserved: exact representation and no-floor branch.
- Producer-consumer provenance: static event produces (R\)-src, two-mode,
  target, and reserves consumed by every later row.
- Null/boundary test: zero columns are excluded by the derived event; exact
  zero tensor is handled before any candidate.
- Repair route: `/proof-sketch` if the concentration/interface constants fail.

### step_002 (C-coeff): cyclic recurrence and power gap

- Claim class / theorem role: positive directional mass, coefficient selection,
  and the theorem-critical activation source.
- Mechanism source: with two orthogonal modes, the exact contraction coefficients
  are (\tau_j\beta_{j,B}\beta_{j,C}), then cyclic analogues.  Define
  (h_j^\ell) as the absolute unresolved product mass and
  (\rho_j^\ell=h_j^\ell/h_p^\ell).  The ideal map obeys
  \[
    \rho_j^{\ell+1}\le C_\tau(\rho_j^\ell)^2,
  \]
  while the realized/prefix map must be shown to obey
  \[
    \rho_j^{\ell+1}\le C_\tau(\rho_j^\ell)^2+\xi_{\rm cyc},
    \qquad \xi_{\rm cyc}\le c_{\rm cyc}\Delta_{\rm ord}.
  \]
  A scalar order-statistic event for
  (Y_j=|\langle m_{j,B},v_0\rangle\langle m_{j,C},w_0\rangle|) gives
  (Y_{(1)}\ge(1+\Delta_{\rm ord})Y_{(2)}) and
  (Y_{(1)}\asymp n^{-1}) up to polylog factors with probability at least
  (r^{-C_{\rm pow}}).  After (L_{\rm pow}=O(\log r)) cycles this yields
  (h_p^L\ge\gamma_{\rm pow}) and a fixed gap for all other unresolved labels.
- Source-to-claim adequacy: the order-statistic calculation uses the joint Haar
  coordinate density in orthogonal frames; the (n^{-1/2}) scale appears in
  every (Y_j) and cancels in ratios.  The near-(C) Gram and history source
  must enter multiplicatively in the coefficient equations, not as an absolute
  (O(\nu^2\|T\|_F)) score bound.
- Residual-to-target adequacy: coefficient masses are defined in the realized
  target frame and the winner is mapped to the same target atom used by the
  ledger; no proxy atom is consumed downstream.
- Positive/control terms: diagonal (	au_pY_p), order gap
  \(\Delta_{\rm ord}\), and squaring recurrence.  Opposing terms are
  (C\nu_{\rm real}\), (C\nu_{\rm real}^2), typed history (b_s),
  candidate numerical (e_I), and block tolerance \(\zeta_{\rm pow}).
- Closure/accumulation: the relative defect is bounded at each cycle and is
  geometrically damped by the squared ratio; the finite (L_{\rm pow}) budget
  is enough to make the accumulated perturbation below half the order gap.
- Obligation locality: `step-local` for the recurrence; `sketch/interface defect`
  if only a coarse absolute two-mode bound is available.
- Noncircular closure: static step 001 -> coefficient equations -> gap output;
  no certificate or later ledger is used to assume the gap.  Prefix history is
  consumed only through an already-produced `LP_s`.
- Entry/first-update stress: at empty prefix, (u_0=e_1) may be orthogonal to
  the target span, but (c_A\ne0) on the order event and the first gradient
  update points toward it.  At (R_I=0), all coefficients vanish and no gap
  is claimed.
- Baseline conclusion preserved: exact orthogonal/noiseless contractions have
  \(\xi_{\rm cyc}=0\) and the same exact target.
- Producer-consumer provenance: step 002 produces \(\gamma_{\rm pow}\),
  winner mass, and relative defect bounds consumed by steps 003--005.
- Null/boundary test: tied order statistics, zero contractions, and a negative
  winner are handled by retry/flip; if the relative defect cannot be proved,
  the unrestricted-(n) theorem obstruction is exposed rather than absorbed.
- Repair route: strengthen only the coefficient-level estimate or route to
  `/subagent-idea-generator` if an additive defect is unavoidable.

### step_003 (C-flow): finite Armijo realization and tape

- Claim class / theorem role: algorithmic reachability and conditional
  polynomial probability.
- Mechanism source: exact slice derivatives, compact radius guard, Lipschitz
  gradient bounds on the guarded box, and Armijo sufficient decrease.  Since
  (g_0=\delta), the gradient may be tiny, but (P) contains (n) and the
  fixed exponent (d_{\rm pow}) is chosen to cover the inverse contraction
  norm and (\delta^{-3}) factors.
- Source-to-claim adequacy: `BA_M` uses only the current residual and factors;
  the retraction and radial scalar step use the exact displayed derivatives.
- Residual-to-target adequacy: the returned directions are the same directions
  in the cycle certificate; approximation error \(\zeta_{\rm pow}\) enters
  `xi_cyc` and is not treated as a new target.
- Positive/control terms: Armijo decrease and the cycle gap from step 002.
  Defects are finite backtracking tolerance, guard truncation, and zero
  contractions.
- Closure/accumulation: accepted updates remain in the guard; at most
  (H_{\rm pow}) updates per block and (3L_{\rm pow}) blocks are finite.
  A failed trial leaves the scratch slot exactly unchanged.
- Obligation locality: `step-local`.
- Noncircular closure: step 002 supplies the ideal target map and gap; direct
  derivative descent supplies the finite implementation; tape independence
  then amplifies the resulting event.
- Entry/first-update stress: fixed (u_0=e_1), (g_0=\delta>0), and a
  nonzero contraction give an accepted first step after backtracking; no
  update is required when the contraction is zero.
- Baseline conclusion preserved: exact maps are realized to zero tolerance in
  the limiting (H=e=0) analysis and no additive endpoint floor is added.
- Producer-consumer provenance: step 003 produces passing cycle candidates and
  the all-prefix tape event consumed by step 004 and step 006.
- Null/boundary test: radius exhaustion, Armijo exhaustion, negative score,
  and tape exhaustion all rollback; (R_I=0) stops before a probe.
- Repair route: `/proof-sketch` for a local guard/budget mismatch.

### step_004 (T-cert): certificate and singleton assignment

- Claim class / theorem role: target-blind matching and positive-curvature
  activation.
- Mechanism source: observable score/radial/angular/cycle/separation tests and
  a coefficient-level tangent selector.  If two unresolved coefficients
  (a_j,a_\ell) survive, a tangent direction gives
  \[
   \lambda_{\min}(\widehat H_{\rm ang})
   \le -c_{\rm mix}|a_ja_\ell|/\|T\|_F+C_{\rm def}\Xi_I(q),
  \]
  and step 002 supplies a positive power gap making the first term dominate.
  Singleton, tie, zero-score, sign-flip, and last-label branches are explicit.
- Source-to-claim adequacy: the Hessian is the product-sphere Hessian of the
  exact current slice; no source label is queried.  The curvature threshold
  is an observable consequence, not a premise about the label.
- Residual-to-target adequacy: the proof-generated label (p(q)), signs, and
  errors (E_i) compare the actual balanced candidate to the exact realized
  atom (\tau_p\phi_p) in the ledger metric.
- Positive/control terms: \(\gamma_{\rm pow}\) mass and positive angular
  curvature; defects are Gram/history/numerical terms in \(\Xi_I(q)).
- Closure/accumulation: one candidate is either accepted with one unresolved
  label removed or rolled back with zero charge; no repeated label assignment.
- Obligation locality: `step-local`, conditional on steps 001--003.
- Noncircular closure: power gap -> selector -> proof-generated injection;
  certificate does not assume the injection.
- Entry/first-update stress: a positive radial root and nonzero score are
  required; a zero residual or zero-radius scratch cannot pass.
- Baseline conclusion preserved: exact target candidates pass with zero error;
  mixed-support obstruction is absent only in the exact singleton branch.
- Producer-consumer provenance: step 004 produces (p,\pi_I,\sigma_I,E_q,
  e_I), and a conditional `LP_s` input for step 005.
- Null/boundary test: (s\le0), \(\Delta F\le0), failed curvature,
  separation, or radial guard causes exact rollback.
- Repair route: `/proof-sketch` if the selector cannot dominate its explicitly
  listed defects.

### step_005 (T-ledger): relative resolvent and typed prefix ledger

- Claim class / theorem role: generated history closure, transfer to the public
  `Raw-J-rel` interface, and finite all-commit error control.
- Mechanism source: nonnegative Neumann series for the candidate-relative
  transfer majorant and exact multilinear expansion with the tested-mode
  diagonal (J_M(p,p)=1).  The local record is
  \[
   \mathsf{LP}_s=(I_s,\pi_s,\sigma_s,\mathcal U_s,Q_s,R_s,A_s,b_s,\chi_{<s}),
  \quad b_s\ge\|A_s\|_{\rm root,2},
  \]
  with (A_s) restricted to \(\mathcal U_s=[r]\setminus\pi_s(I_s)).  A
  commit emits
  \[
   A_{s+1}=\operatorname{restrict}_{\mathcal U_{s+1}}(A_s+\Delta A_s),
   \quad \chi_{<s+1}=\chi_{<s}+\chi_s,
   \quad b_{s+1}=b_s+\beta_s\ge\|A_{s+1}\|.
  \]
  The public bridge is
  \[
   \|z_q\|_{\rm root,2}\le C_z(\nu^2+r\nu^3+b_s+\sqrt r e_I)
   \le C_z[(1+C_A\Gamma_\star)(\nu^2+r\nu^3)+C_A\chi_{<s}+\sqrt r e_I].
  \]
- Source-to-claim adequacy: the transfer arrays, (J,H,K,S), and (A_s)
  use the same realized target frame as the consumed error (E_i); the
  1/4 small-gain bounds are derived from step 001 and the candidate (e_I).
- Residual-to-target adequacy: the resolvent controls cross-inner-products of
  actual candidate errors relative to exact target atoms; the raw numerical
  (\chi) term remains explicit, so no surrogate is silently substituted.
- Positive/control terms: Neumann small-gain and the diagonal (J) identity.
  Opposing terms are (S), history (A_s), and (e_I\mathbf1), all charged
  separately.
- Closure/accumulation: (\beta_s\ge0) is the one-step charge, and
  \(\sum\chi_s\le P^{-D_{\rm stat}}) follows from objective decrease;
  at most (r) commits gives a finite budget.  Rollback preserves LP exactly.
- Obligation locality: `step-local` for the typed transition; `sketch/interface
  defect` if the public row cannot be obtained without absorbing \(\chi\).
- Noncircular closure: LP_0 is the empty record; step 004 -> step 005 emits
  LP_{s+1}; only then may the next prefix call step 004/005.
- Entry/first-update stress: at (s=0), (A_0=b_0=\chi_{<0}=0); on the
  first commit the (J)-diagonal supplies the nonzero charge.  If (R_I=0),
  no resolvent is formed.
- Baseline conclusion preserved: (H=e=0) makes (S,A_s,z,\chi) vanish and
  leaves the exact target unchanged.
- Producer-consumer provenance: step 005 produces `Raw-J-rel`, (b_s),
  (chi_{<s}), all-commit ledger bounds, and actual candidate-error bounds;
  steps 006--007 consume them.
- Null/boundary test: last unresolved label, empty prefix, rollback, and exact
  residual-zero branches are all typed; no diagonal is accidentally charged as
  an off-diagonal term.
- Repair route: `/proof-sketch` for a domain-map or Neumann-interface defect;
  route to idea revision only if a raw numerical term must be absorbed.

### step_006 (P-entry): actual tuple to exact PL orbit

- Claim class / theorem role: same-target chart entry, local coercivity, and
  first-exit invariance.
- Mechanism source: direct balanced target-Jacobian lower bound, pair/triple
  Gram reserves, and the finite ledger from step 005.  Define the exact
  permutation/product-one-sign orbit and use the balanced orbit metric from
  `setting.md`.
- Source-to-claim adequacy: the Jacobian acts on the actual full-space factors
  and the exact target factors, with balancing removing the scale gauge.
- Residual-to-target adequacy: the entry inequality explicitly bounds the
  actual committed tuple, not a projected or whitened surrogate, by the exact
  orbit radius; each structural, history, and numerical term is separately
  dominated at the chart scale.
- Positive/control terms: (g_-^4) Jacobian reserve and target product
  balance.  Defects are (\sqrt r\Gamma_\star(\nu^2+r\nu^3)),
  \(\sqrt{\sum\chi_t}\), and the retained numerical remainder.
- Closure/accumulation: objective ledger is already finite; terminal path
  length is charged against the chart radius, preventing first exit.
- Obligation locality: `step-local`, conditional on step 005.
- Noncircular closure: step 005 -> entry inequality -> direct PL sandwich;
  no terminal convergence is used to prove entry.
- Entry/first-update stress: exact target and zero residual are stationary;
  the first terminal Armijo step is accepted inside the open chart, and the
  path-length bound prevents crossing its boundary.
- Baseline conclusion preserved: exact target orbit has (F=0), and exact
  source factors remain in the chart with no floor.
- Producer-consumer provenance: step 006 produces orbit entry, \(\sigma_\star,
  L_{\rm ch},\mu_{\rm PL}\), and first-exit control for step 007.
- Null/boundary test: unused joint-zero slots and finite permutation/sign orbit
  are included in the metric; (T=0) is handled before this step.
- Repair route: `/proof-sketch` if the actual-to-target residual comparison is
  not at the required chart scale.

### step_007 (P-rate): terminal endpoint and baseline

- Claim class / theorem role: public accuracy, runtime, probability, and exact
  specialization.
- Mechanism source: PL inequality and Armijo decrease from step 006, with
  (F_{h+1}\le(1-c_A\mu_{\rm PL}/L_{\rm ch})F_h).  The terminal horizon is
  (O((L_{\rm ch}/\mu_{\rm PL})\log(1/\epsilon))).
- Source-to-claim adequacy: the loss, gradient, balancing, and Frobenius norm
  are exactly those in the formalized setting; no alternate endpoint metric is
  introduced.
- Residual-to-target adequacy: geometric objective decrease implies the exact
  public residual bound, with no additive (e)- or (\nu)-floor after entry.
- Positive/control terms: PL constant and Armijo decrease.  Defects are only
  the finite entry radius already discharged in step 006.
- Closure/accumulation: contractive terminal recurrence and finite stopping
  horizon; no persistent forcing remains after discovery.
- Obligation locality: `step-local` conditional on step 006.
- Noncircular closure: instance event + tape event -> commits -> entry -> PL
  decrease -> endpoint; probability conversion is a final union bound only.
- Entry/first-update stress: (F=0) stops; (0<\epsilon<1) gives a finite
  horizon; (T=0) returns all-zero before division.
- Baseline conclusion preserved: (H_M=e_t=0) yields exact stationary target
  and arbitrary relative accuracy with no floor.
- Producer-consumer provenance: final theorem consumes endpoint, runtime,
  probability, and baseline outputs from steps 001, 003, 006, and 007.
- Null/boundary test: (R_I=0), (F=0), and (T=0) are explicit branches.
- Repair route: `/proof-sketch` for a rate-specialization mismatch.

### Honest power-gap boundary

The prior idea-12 failure was an unrestricted-(n) Haar-mass obstruction for a
seed window whose width had to dominate an additive structural defect.  Idea 13
does not assume that obstruction away.  Its only proposed escape is the
coefficient-relative estimate in step 002: the exact two-mode contraction makes
the (n^{-1/2}) projections part of the signal, while near-(C), smoothing,
and prefix errors must multiply the same coefficient scale.  If the proof can
only establish the coarse bound (O(\nu_{\rm real}^2\|T\|_F)), then for allowed
families with (n\gg r^2) that term dominates the (O(\|T\|_F/n)) scalar
signal, the polynomial tape cannot yield a fixed gap, and the branch has an
`idea/theorem-contract defect`.  This is recorded as a go/no-go obligation,
not hidden as a desired conclusion.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Instance event, `R-src`, `two-mode`, target | step 001 | Gaussian concentration, deterministic A/B orthogonality, C margin | (H_M,K_M), smoothing tails; all controlled on one event | Same realized (T,m,\tau) objects | Pair/triple reserves and Frobenius sandwich | Fixed (1/16) reserves and nonvanishing margins | steps 002--007 | None at sketch level |
| Coefficient winner and \(\gamma_{\rm pow}\) | step 002 | Haar coordinate order statistics, exact contraction coefficients | Near-C, history, and numerical terms must be coefficient-relative; coarse additive term uncontrolled | Winner label is an exact target-frame atom | Squared ratio recurrence absorbs finite perturbation | \(\Delta_{\rm ord}\), (L_{\rm pow}=O(\log r)), derived \(\gamma_{\rm pow}\) | steps 003--005 | Relative-defect derivation is the explicit go/no-go obligation |
| Finite cyclic flow and tape event | step 003 | Slice derivatives, compact guard, Armijo backtracking, independent tape | Guard/tolerance/zero-contraction failures; rollback controls forcing | Returned (q) is the actual scratch slot | (H_{\rm pow}) covers inverse gradient scale; ((1-p)^{N_{\rm pow}}) | `assump:random-tape`, (p\ge r^{-C_{\rm pow}}) | steps 004, 006 | None conditional on step 002 |
| Certificate, assignment, matching errors | step 004 | Observable score, curvature, separation, radial/angular tests | Mixed support and ledger defects | (E_q) compares actual candidate to exact atom (p) | Positive curvature dominates mixed coefficient term | \(\gamma_{\rm pow}/4\), \(e_I\), separation (1/4) | step 005 | None conditional on power gap |
| `Raw-J-rel` and typed `LP_s` | step 005 | (H,J,K,S), candidate (e_I), prior (A_s,b_s,\chi_{<s}) | Structural, history, numerical terms kept separate | Same target-frame rootwise norm; raw chi is public | Neumann norm <= 1/4; (b_{s+1}=b_s+\beta_s) | (C_z(\nu^2+r\nu^3+b_s+\sqrt r e)) | steps 006--007 and next prefix | None if shrinking restriction is proved |
| All-commit actual-to-orbit entry | step 006 | Ledger telescope, balanced target Jacobian, Gram reserves | Structural/history/numerical entry error | Actual tuple -> exact orbit in balanced slot metric | Entry error <= \(\varrho_{\rm PL}/4\) | (g_-,g_+,\varrho_{\rm PL}) | step 007 | None conditional on ledger |
| PL endpoint and public rate | step 007 | Direct PL/Armijo chart, rank and accuracy IDs | No persistent post-entry forcing | Exact objective -> exact Frobenius residual | Geometric decrease and log horizon | \(\mu_{\rm PL},L_{\rm ch},\epsilon\) | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| \(\mathcal E_{\rm inst}), Gram and two-mode reserves | step 001 | steps 002--007 | Once-drawn success event and all source bounds | primitive IDs -> 001 -> all rows | derived | None |
| Coefficient recurrence, order event, \(\Delta_{\rm ord}\), \(\gamma_{\rm pow}\) | step 002 | steps 003--005 | Polynomial activation and singleton selector | 001 -> 002 -> 003/004/005 | derived | Relative-defect source must be discharged in 002 |
| Armijo approximation, cycle residual, tape event | step 003 | steps 004, 006, 007 | Actual target-blind discovery probability/runtime | 002 -> 003 -> 004 -> 006 -> 007 | derived | None conditional on 002 |
| Certificate assignment (p,\pi,\sigma), (E_q,e_I) | step 004 | step 005 and next prefix | One target atom per commit | 001 -> 002 -> 003 -> 004 -> 005 | derived | None |
| `Raw-J-rel`, (A_s,b_s,\chi_{<s}), charge rows | step 005 | steps 006--007 and later prefixes | Finite history/error control | 004 -> 005 -> 006/007 | derived | None if domain restriction and raw chi remain explicit |
| All-commit ledger and orbit entry | step 006 | step 007 | Same-target PL initialization | 005 -> 006 -> 007 | derived | None |
| PL decrease, endpoint, runtime, baseline | step 007 | final assembly/controller | Public theorem | 001,003,005,006 -> 007 | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | On one smoothing event derive nonvanishing columns, norm/product-weight bounds, pair/triple Gram reserves, `R-src`, `two-mode`, exact padded balanced target, and (T=0/H=e=0) traces. | None | All eight source/statistical IDs: `assump:base-column-conditioning`, `assump:base-product-balance`, `assump:two-mode-orthogonality`, `assump:c-mode-gram-margin`, `assump:gaussian-smoothing`, `assump:dimension-regime`, `assump:smoothing-scale`, `assump:smoothing-bridge`. | Uniform concentration and convention matching. | Direct Gaussian concentration and multilinear Gram expansion in current notation. | \(\mathcal E_{\rm inst},R\)-src, two-mode, (Q^\star). | R1; probability (1-r^{-10}), explicit (n,r,\kappa,\rho,\Gamma_\star,P). | PENDING |
| `step_002` | For each legal prefix prove coefficient-level cyclic ratio recurrence, transfer Haar order-statistic winner event, and derive fixed \(\gamma_{\rm pow}>0\) after (O(\log r)) cycles; do not assume the gap. | `step_001` | `assump:two-mode-orthogonality`, `assump:c-mode-gram-margin`, `assump:gaussian-smoothing`; prior `LP_s` only as a conditional generated input. | Prove relative, not absolute, perturbation; handle signs, ties, and shrinking unresolved support. | Orthogonal tensor-power/order-statistics argument; direct current-notation perturbation and ratio induction. | \(\Delta_{\rm ord},\xi_{\rm cyc},\gamma_{\rm pow}\), winner mass and separated nonwinners. | R2; polynomial per-pair mass independent of (n) after normalization. | PENDING |
| `step_003` | Show finite `BA_M` and radial Armijo steps approximate normalized contractions, preserve guards, and amplify the step-002 event over the independent tape uniformly over all prefixes. | `step_002` | `assump:random-tape`, `assump:rank-regime`; protocol constants from `setting.md`. | Tiny (g_0=\delta) gradients, finite backtracking, zero contractions, and polynomial work. | Exact slice derivatives, compact-box Lipschitz/Armijo descent, stopped independent-trial amplification. | Cycle certificate candidates, (p\ge r^{-C_{\rm pow}}), (N_{\rm pow}) all-prefix event. | R2; (H_{\rm pow}=P^{d_{\rm pow}}), (N_{\rm pow}=O(r^{C_{\rm pow}+2}\log r)). | PENDING |
| `step_004` | Every passing observable certificate has one proof-generated unresolved label, valid signs/injection, singleton-vs-mixed curvature dichotomy, and matching/radial/angular error bounds. | `step_001`, `step_002`, `step_003` | Derived static event and cycle output; `assump:base-product-balance` for weights. | Tangent selector, coefficient-level Hessian, zero/tie/last-label branches. | Direct product-sphere Hessian and two-mode coefficient selector. | (p,\pi_I,\sigma_I,E_q,e_I), legal certificate dichotomy. | R3 local certificate terms exposed at (D_I,e_I,\gamma_{\rm pow}). | PENDING |
| `step_005` | Form candidate-relative Neumann resolvent and prove `Raw-J-rel`; close typed shrinking-prefix transition, public raw-chi bridge, objective telescope, and finite J-aware ledger. | `step_004` | Derived outputs of steps 001/004; `assump:rank-regime`. | Same-target transfer, tested-mode diagonal charge, noncircular LP induction, and raw numerical terms. | Nonnegative Neumann series, exact multilinear expansion, finite potential/telescope. | \(\Theta,z,A_s,b_s,\chi_s,\beta_s\), raw-ledger and all-prefix LP records. | R3; explicit (e_t,D_t,\eta_t,\chi_t), no absorption into \(\nu^2\). | PENDING |
| `step_006` | Convert all committed actual balanced slots to the exact permutation/sign orbit, prove chart entry, balanced PL sandwich, and first-exit invariance. | `step_005` | `assump:base-product-balance` plus derived Gram/ledger outputs. | Actual-vs-target residual bridge and unused-slot metric. | Direct balanced target Jacobian/Taylor expansion and path-length first-exit argument. | (d_{\rm bal}\), \(\varrho_{\rm PL},L_{\rm ch},\mu_{\rm PL}), chart membership. | R4 entry portion; explicit structural/history/numerical entry scale. | PENDING |
| `step_007` | Run terminal full-space balanced Armijo descent, specialize relative \(\epsilon) endpoint and runtime, combine probabilities, and prove exact/noiseless/T=0/R=0 baseline branches. | `step_003`, `step_006` | `assump:rank-regime`, `assump:accuracy-range`; prior probability outputs. | Public rate simplification and no-floor endpoint. | PL geometric decrease, direct residual/objective conversion, finite union/restart amplification. | \(\|T-\Psi(Q)\|_F\le\epsilon\|T\|_F\), runtime and separate probabilities. | R4; (O(\log(1/\epsilon))) terminal horizon. | PENDING |

## Dependency Notes

The graph is acyclic: static quantities are produced first; coefficient
recurrence and finite flow then produce the only activation source; certificate
and ledger rows consume those outputs and emit the next typed prefix; PL entry
and terminal rate consume the finite ledger and tape event.  A failed probe
never enters the graph as a theorem-facing state because exact rollback maps it
to the preceding `LP_s`.  The only generated quantity whose existence is not
automatic from a coarse bound is the coefficient-relative defect in step 002;
it is named, tested against the allowed large-(n) boundary, and not smuggled
into an assumption.

## Blockers

No unconditional blocker is declared before the coefficient-level recurrence is
attempted.  The following is an explicit go/no-go condition for this sketch:

1. The proof must establish a coefficient-relative cyclic perturbation bound
   (\xi_{\rm cyc}\le c\Delta_{\rm ord}) for every legal prefix, including
   candidate history and numerical errors.  The setting's coarse `two-mode`
   inequality alone is insufficient when (n\) is much larger than (r^2),
   because its (O(\nu_{\rm real}^2\|T\|_F)) remainder can exceed the typical
   (O(\|T\|_F/n)) scalar coefficient.  If exact contraction algebra plus the
   typed ledger cannot supply the relative bound, this is an
   `idea/theorem-contract defect` and the controller should route to idea
   revision rather than claim a polynomial tape theorem.

2. If the finite Armijo budget cannot cover the inverse (g_0^3) and
   contraction scales with a fixed exponent in (P), that is a local
   `sketch/interface defect`; it should be repaired by an explicit exponent
   choice, not by assuming an ideal normalized map.

Subject to these tests, all other interfaces have named producers and
target-compatible metrics.  No target, probability, rank, runtime, or baseline
condition is weakened in this sketch.
