# Proof Sketch Review

## Reviewed Sketch Identity

- Sketch attempt: 4
- Reviewed artifact: `perspective_1/idea_6/proof_sketch.md`
- Reviewed SHA-256: `47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b`
- Binding setting: `perspective_1/idea_6/setting.md`
- Evidence scope: the current setting and current attempt-4 sketch only.  The
  attempt-3 review identified in the task is trigger context, not proof
  evidence; no `proof_history` artifact was consumed.

## Sketch Viability Score

9

## Sketch Review Status

ACCEPTED

## Smallest Retry Target

None

## Retry Mode

none

## Audit Summary

- Goal alignment: Pass.  The sketch remains in exact-goal mode and preserves
  the setting's nested smoothing and conditional-restart quantifiers,
  `U(r)=Theta(r^(5/3)(log r)^(5/2))`, original rank-`k` Frobenius success
  criterion, polynomial runtime claim, and exact orthogonal baseline.  It
  accurately labels the contribution `conditional` and does not present it as
  resolving the unrestricted source problem; the remaining source gap is the
  need for the stated base-scale, cumulative-Gram, weight-balance, smoothing,
  and dimension-margin primitives.
- Dependency audit: Pass.  All fourteen rows (`step_001`, `step_002`,
  `step_003`, `step_004`, `step_004b`, `step_005`, `step_006`, `step_007`,
  `step_007c`, `step_007b`, `step_008`, `step_009`, `step_010`, and
  `step_011`; fourteen stable IDs in total) have exact claims, earlier
  dependencies, assumption provenance, proof tools/challenges, outputs, rate
  objectives, and `PENDING` review status.  The nonlexical but explicit order
  `step_007c -> step_007b` is declared and acyclic.  Every generated output is
  produced before consumption.
- High-risk coverage: Pass.  The sketch localizes proposal activation,
  certificate support classification, row/column small gain, target-metric
  transfer, perpendicular-pair contamination, carried normalization,
  chronological target-span entry, quotient contraction, all-tape stopping,
  restart amplification, and baseline invariance.  Each has a concrete
  mechanism witness, boundary trace, defect split, and consumer path.
- Explicit-rate coverage: Pass.  The four rate objectives declare exposed
  variables, allowed and forbidden hidden dependence, fixed quantities,
  probability mode, horizon mode, norm mode, admissibility inequalities,
  stopping specialization, and baseline reduction.  In particular,
  `delta_sm` and `delta_init` remain separate, `k` has no confidence
  dependence, and `m_cap=1+ceil(log(8 kappa_0^2/epsilon)/log 4)` is explicit.
- Assumption and citation plausibility: Pass.  Primitive conditions are cited
  by stable `assump:*` IDs, while realized geometry, coverage, charts,
  clustering, basin membership, invariance, and convergence are derived.
  Uschmajew (DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, Theorems 3.3
  and 3.5) is used only for quotient/Gauss--Seidel interpretation; the branch
  proves entry, inverse margins, scale equivariance, literal-orbit identity,
  and numerical contraction directly in its own convention.  The remaining
  named tools are current-notation direct derivations or standard facts with
  raw-assumption paths fixed in the sketch.

## Early Obstruction Audit

- Limiting-case stress: Pass.  The sketch separately tests the exact
  orthogonal stationary point, finite `q_real=0` certificate transients,
  unequal weights, threshold-straddling certified states, zero scores and
  zero contractions, the coherent shared-perpendicular construction, the
  singular-pair boundary, and noncovered gate-passing tapes.  It neither
  erases finite transient defects nor extends target-span contraction to the
  false unrestricted tube.
- Theorem-critical bridge support: Pass.  The producer chain is
  `E_sm -> E_win/E_cov -> E_RS/E_chart/E_cert -> E_cert_eq/E_cert_tail ->
  E_support_wt/E_cluster/E_gauge -> E_col/E_row -> E_best/E_quotient ->
  E_perp_pair/E_carry_resolvent -> E_pair_entry/E_parallel_entry ->
  E_basin_parallel -> E_stop -> E_run_cap/E_restart`.  Every bridge uses
  primitive or earlier-derived controls and has a target-matched output.
- Exported-interface feasibility: Pass.  The attempt-4 repair explicitly
  exports, for each held record,
  `B_N=I+C_N+E_N`, `||C_N||_(row/col,1)<=48 omega`,
  `||E_N||_(row/col,1)<=epsilon_N`, the perpendicular scale `t_N`, and
  `h_M=sum epsilon_N`.  It then exports the *total* bounds
  `Delta_C<=96 omega+(2q_*+8rho_ALS)h_M` and
  `Delta_J<=192 omega+2beta_act,M+(4q_*+16rho_ALS)h_M`, not merely the
  static terms.  The same interface verifies `Delta_J<=1/64`, `d_M<1/8`,
  positive input/output scales, and `h_M<=2rho_ALS/3` before every solve.
- Theorem-critical mechanism witness gate: Pass.  For the repaired block,
  exact amplitude-conjugated least squares, the centered normalization
  identity, both induced diagonal-similarity orientations, and the Neumann
  resolvent give `kappa_res<17/16`, `S_0<=290 eta`, and
  `8 kappa_res S_0+4||alpha||_infty<=2977 eta<3072 eta`; the carried gain is
  `ell_0=8q_*+32rho_ALS=17/512<1/8`.  Static `alpha` is confined to the
  accepted `step_007` initial relative-amplitude field.  Later common scales
  are positive exponentials and cancel exactly in the product identity;
  they are controlled through `E_N/h_M`, not by reusing
  `||alpha||_infty<=128 omega`.
- Entry-state trace stress: Pass.  `step_007b` invokes the conditional
  producer chronologically with `h_U=0`, `h_V=epsilon_U`, and
  `h_W=epsilon_U+epsilon_V`.  The recurrence gives
  `epsilon_U<=3072 eta`, `epsilon_V<=3456 eta`, and
  `epsilon_W<=3888 eta<4096 eta`; the displayed numerical inequalities also
  give the required V/W `h_M`, inverse, direction, and positivity margins.
  Only after each exact unfolding update does that mode acquire zero
  perpendicular residual.
- Obligation locality classification: Pass.  Every row in the evidence table
  is `step-local`: the mechanism source and obstruction-level interface are
  already fixed, and local proof work only has to derive the stated claim.
  No theorem-critical property requires a new assumption, procedure, scope,
  metric, dependence, or weakened conclusion.
- Noncircular closure gate: Pass.  In particular, `step_007c` assumes raw
  held-input budgets but not target-span membership, `E_parallel_entry`, or a
  future range result.  `step_007b` proves U range, then constructs the V
  record, proves V range, then constructs the W record.  `step_008` consumes
  only the completed generated target-span entry.  Later invariance follows
  from exact unfolding range, not from convergence.
- Mechanism-source and boundary stress: Pass.  Positive Gram floors,
  contraction denominators, score margins, retained-coordinate floors,
  normalization radii, and restart counters are sourced independently of the
  conclusions they drive.  Where a source can vanish, the sketch either
  proves the conclusion already true (the exact fixed point), routes the run
  to observable failure/timeout, or explicitly excludes the branch through a
  primitive or earlier-derived margin.
- Generated-output flow: Pass.  The dedicated flow table identifies each
  output's producer, consumers, final theorem use, dependency path, and
  provenance.  The conditional `E_carry_resolvent` is consumed only after
  `step_007b` establishes its raw record; `E_stop` is consumed as a basin
  conclusion only on `E_cov`; `E_run_cap` supplies termination on all other
  tapes.
- Source-to-claim adequacy: Pass.  Gaussian concentration supplies upper
  perturbation controls; primitive norm/Gram/weight slack supplies positive
  margins; exact multilinearity supplies the certificate equation; exact
  dual-basis and unfolding identities supply row/column transfer and range;
  centered normalization plus resolvent identities supply the carried
  interface; and a finite counter supplies all-tape termination.  The source
  and branch conventions agree on normalized realized factors, Euclidean
  projectors, induced row/column norms, exact Moore--Penrose ALS, and the
  product-one quotient.
- Residual-to-target adequacy: Pass.  Certificate residuals are first kept as
  same-state ambient residuals, then transferred entrywise through the exact
  target dual basis at scale `2 tau_r`, yielding separate row and column
  masses `2r tau_r`.  The selected initialization is compared to the same
  realized CP tensor in the original Frobenius norm.  The first-sweep outputs
  are exact `G_M Z_M` ALS outputs, and the quotient states are exact
  representatives of the literal ALS orbit.  No population, whitened,
  transformed-target, or wrong-metric residual remains uncontrolled.
- Baseline invariance audit: Pass.  At the exact orthogonal equal-weight
  stationary state, `beta_act=0`, `A=0`, `nu=1`, `Z_M=D_lambda`, and every
  refreshed common register is exactly `s=0`; hence the represented tensor
  and original residual are exactly unchanged.  The positive envelope
  `beta_perp` is retained only for finite certified transients and is not
  substituted for this equality.  Thus arbitrary accuracy and the zero-error
  limit are preserved.
- Scope-accumulation compatibility: Pass.  Proposal defects live on a finite
  horizon; certificate and row/column defects have explicit finite budgets;
  first-sweep perpendicular forcing disappears mode by mode; later
  target-span forcing is exactly zero and
  `||e^(s+1)||_Q<=ell||e^s||_Q` gives geometric budget
  `<(16/15)||e^1||_Q`; noncovered trajectories are stopped at `m_cap`; and
  restart costs add over exactly `J` completed tapes while failure
  probabilities multiply conditionally.
- Scope and dependence consistency: Pass.  No pointwise-to-uniform,
  finite-to-all-time, conditional-to-unconditional, probability, horizon, or
  metric upgrade is hidden.  The deterministic baseline is explicitly a
  limiting algebraic specialization rather than a probability claim at
  `rho=0`.
- Generated-condition provenance: Pass.  All theorem-facing dynamic facts
  are derived outputs.  The raw held-input record of `step_007c` is a local
  conditional lemma interface discharged by `step_007b`, not a public or
  primitive admissibility condition.
- Citation and tool applicability: Pass.  The Uschmajew source is identified
  by DOI and exact labels, mapped only to quotient interpretation and
  block-Gauss--Seidel structure, with its non-output boundary made explicit.
  All quantitative and target-specific conclusions are direct
  current-notation derivations from the setting's exact ALS equations, so no
  external conclusion-interface gap remains.
- Same-setting repair plausibility: No repair is needed.  The current sketch
  already supplies the same-setting interface required by the trigger.
- Target-preserving bridge-repair gate: Pass.  The repair changes only the
  proof interface and dependency chronology; it does not change primitive
  assumptions, algorithm, rank, theorem modes, exposed dependence, success
  criterion, or baseline conclusion.
- High-risk obligation classes: All present classes pass: structural
  positivity and score separation, perturbation and certificate residuals,
  generated chart/invariant maintenance, finite-to-geometric scope handling,
  explicit rates, exported interfaces, residual transfer, generated-output
  flow, and exact baseline reduction.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | Static geometry, norm, weight, and pair-Gram floor | Gaussian normalization/concentration; Schur product; Gershgorin | Primitive `assump:base-scale`, `assump:cumulative-gram`, `assump:base-weight-balance`, `assump:gaussian-smoothing`, `assump:smoothing-margin` through `step_001` | Lower-norm and base-slack sources supply the required positive margins; perturbation tools control the opposing upper errors | Exact normalized realized-factor and Khatri--Rao conventions of the setting | Separate linear, quadratic, normalization inequalities imply `q_real<=q_*`, `Gamma<=1.01`, and floor `1-q_*^2` | Raw scales and both smoothing margins are explicit; finite union conversion is declared | Produced factors are exactly the factors consumed downstream | One finite static union; no trajectory accumulation | Primitive assumptions -> `step_001` -> `E_sm` | Producer `step_001`; consumers `step_002`-`step_004`, `step_007b`, `step_008` | Orthogonal `rho=0` algebra gives exact zero Gram; vanishing norm source is excluded by base/margin assumptions | `step-local` | None |
| `E_win`, `E_cov` | Proposal activation and all-target coverage | Independent Gaussian slots, regression/product tails, coupon union | `assump:random-initialization` plus `E_sm` through `step_002`-`step_003` | Target-window lower probability and competitor upper tails imply `p_win=Theta(r^(-5/3)(log r)^(-3/2))`; `kp_win>=8log r` gives `p_0>=1/2` | Same raw coordinates and target-relative ratios as the proposal map; labels are proof-only | Window inequalities -> slot success; independent-slot miss bound -> coverage | `k`, `a_*`, `b_*`, `t_r`, and universal comparison constants are explicit | Window coordinates are exactly those entering `R_0,S_0`; no surrogate event | Finite slots and finite target union; no cross-target independence assumed | `E_sm` -> `step_002` -> `step_003` | Producer `step_002`/`step_003`; consumers `step_004`, `step_005`, `step_010` | First raw state need not be aligned; the event supplies `R_0<=19/20` before updating | `step-local` | None |
| `E_RS`, `E_chart`, `E_cert` | Denominator invariant, chart maintenance, finite-horizon certification | Exact old-state Jacobi recurrence, explicit self-map, Banach contraction | Earlier-derived `E_sm,E_cov` through `step_004` | Target-product dominance supplies the signed denominator and contraction source | Simultaneous old-state convention matches the algorithm; ambient conversion uses the exact realized dual basis | Displayed `R,S` recurrences; `a_(t+1)<=2(Gamma S_t+q)/(1-Gamma qR_t)`; `J(C_j) subset C_j`; `L_chart<1/4`; `zeta_t<=3(1/4)^(t-t_b)` | `R_0,S_0`, denominator slack, `a_chart=1/512`, `chi_chart=1/128`, finite `L_burn,L_cert` all precede export | Chart and residual use the same realized targets and stored state | Persistent `q_real` forcing is bounded inside the invariant interval; certification horizon is finite | `E_sm,E_cov` -> recurrence -> chart -> `E_cert` | Producer `step_004`; consumers `step_004b`, `step_005` | First update has denominator `>=31/32`; at `q=0` it is exactly `(BC,AC,AB)` | `step-local` | None |
| `E_cert_eq`, `E_cert_tail` | Same-state certificate and global no-label support/tail producer | Exact multilinearity, projective residual definition, coefficient-vector Gram expansion, scalar cancellation | `E_cert,E_sm` through `step_004b` | Nonzero contraction supplies scale; exact equation supplies residual; retained-floor algebra supplies exhaustive LOW/singleton/multi-support branches | Raw right-sided `Sigma_M` and barred post-score conventions are explicit; no pre/post-state mismatch | `norm(R_M^raw(:,a))<=d_M tau_r`; `eta_G=2q_*+q_*^2`, `eta_N=5q_*^2`, `eta_C=2sqrt(r)tau_r`; profile `144eta_0`, singleton and multi-tail bounds | Every defect class, scalar factor, threshold, and denominator is explicit before classification | This row intentionally makes only a same-state claim; target-dual transfer is legally deferred to `step_006` | One residual per mode/slot; finite-support conversion is charged once | `E_cert` -> `step_004b` -> `E_cert_eq,E_cert_tail` before labels/clustering | Producer `step_004b`; consumers `step_005`, `step_006` | Zero contraction is an observable failed run; finite orthogonal transients retain residual; stationary state has zero residual | `step-local` | None |
| `E_support_wt`, `E_cluster`, `E_gauge` | Structural support, score separation, observable clustering, sign/product gauge | Weighted same-state equations and exact weighted stationary score | `E_cert_eq,E_cert_tail,E_sm` through `step_005` | Positive retained floor and explicit component/mixture score gap supply support and cluster claims, not generic smallness | `diag(lambda)` is retained; raw `theta`, barred `bar theta`, and product-one signs are mapped exactly | `s_mix*1.01<0.794<0.85s_-`; component ratio `>0.901`; graph within/cross inequalities; `abs(theta)>0.8lambda_min` | LOW, singleton, multi-support, straddle, negative, and zero-score branches are exhaustive | Euclidean correlations, graph metric, and later target chart use the same realized columns; sign absorption preserves the tensor | Finite certified pool and graph; strict margins precede tie-breaking | `step_004b` -> `step_005` -> classifier -> cluster/gauge | Producer `step_005`; consumers `step_006`, `step_007` | Unequal-weight two-support boundary is explicitly rejected; exact component fixed point passes | `step-local` | None |
| `E_col`, `E_row_residual`, `E_row` | Selected coefficient and residual row/column closure | Exact dual-basis equation and Hadamard small gain | `E_cert_eq,E_support_wt,E_cluster,E_sm` through `step_006` | Diagonal `31/32` source supports inversion; per-entry residual source supports both induced orientations | Exact target dual, realized Gram, and normalized-column convention | `chi<=4(q_*+2chi+2q_*^2)^2+4r tau_r`, `chi_-<=32omega`; per-entry `<=2tau_r`; row self coefficient `<1/8`, `eta_row<=128omega` | Raw coefficient, Gram, denominator, and certificate classes remain separate | Exact residual transfer gives row and column masses `2r tau_r`, never `r^2tau_r` | Finite sums; sign-unknown forcing has budget `r tau_r` and is absorbed once | Certificate/classifier -> column root -> per-entry transfer -> row absorption | Producer `step_006`; consumer `step_007` | Finite `q=0` transient retains `O(rtau_r)`; exact fixed point makes it zero | `step-local` | None |
| `E_best`, `E_quotient` | Target-metric selected initialization and orthogonal entry decomposition | Direct tensor expansion, unit-norm identity, product-one equal-norm gauge | `E_col,E_row,E_gauge,E_sm` through `step_007` | Relative amplitude and four residual classes yield target-basin scale; exact projector yields `B_M,N_M` | Same realized CP tensor and original Frobenius norm; quotient removes only legal scaling | Relative amplitude `<=128omega`; `C_best=512`; `512omega<rho_ALS/4`; `B_M-I` row/col `<=48omega`, `G_M^TN_M=0`, columns `N_M<=tau_r` | Direction, amplitude, pair, cubic, and perpendicular controls are explicit | Produced initialization and target are compared in original Frobenius metric; no hidden `kappa_0` in quotient radius | One finite expansion | `step_006` -> `step_007` -> entry outputs | Producer `step_007`; consumers `step_007c`, `step_007b` | Exact orthogonal CP state has `theta=lambda` and zero quotient error | `step-local` | None |
| `E_perp_pair` | Collective perpendicular pair-Gram ledger | Orthogonal projector identity and exact pair-Gram expansion | `E_quotient` through `step_007c` | Actual `F_N=N_N^TN_N` supplies both mixed and coherent defect classes | Exact Euclidean residual and held Khatri--Rao Gram; no rank-free surrogate | `beta_act,M<=b_perp(t',t'')`; at entry `beta_perp=2(1+q_*)(1+48omega)^2tau_r^2+r tau_r^4<10^(-8)omega` | `t_N`, target-span coefficient mass, two mixed terms, and coherent `r tau_r^4` are explicit | Ledger is the actual residual Gram of the consumed held columns | Finite first sweep; defects vanish mode by mode after exact range updates | `E_quotient` -> `step_007c` -> `E_perp_pair` without future range | Producer `step_007c`; consumer `step_007b` | Shared-perpendicular adversarial state is controlled only because actual `t_N<=tau_r`; stationary state has actual `beta_act=0` | `step-local` | None |
| `E_carry_resolvent` | Carried normalization/resolvent and common-product transfer | Exact amplitude-conjugated solve, centered normalization, diagonal similarity, Neumann resolvent | `E_sm,E_best,E_quotient` plus conditional raw held record through `step_007c` | Positive pair floor and centered first-order cancellation support row, column, ambient-column, and product-log outputs | Exact ALS, target dual, induced norms, and product-one common-register convention agree | `B_N=I+C_N+E_N`; total `Delta_C<=96omega+(2q_*+8rho_ALS)h_M`; total `Delta_J<=192omega+2beta_act+(4q_*+16rho_ALS)h_M`; `kappa_res<17/16`; output `<=3072eta+ell_0h_M` | `norm_rc(C_N)<=48omega`, `norm_rc(E_N)<=epsilon_N`, `t_N`, `h_M`; `Delta_J<=1/64`, `d_M<1/8`, positive scales, `h_M<=2rho_ALS/3`; `ell_0=17/512` | Exact scale/product cancellation transfers the literal solve to the same direction/product target; no carried use of initial `alpha` | Static defects are finite; carried defects are linearly charged by `h_M`; normalization remainder is explicitly absorbed | `step_007` -> `step_007c`; conditional records are discharged by `step_007b`, not assumed theorem-facing | Producer `step_007c`; consumer `step_007b` U/V/W calls | Stationary orthogonal equality is `beta_act=0,A=0,nu=1,s=0`; finite positive `beta_perp` is only an envelope | `step-local` | None |
| `E_pair_entry`, `E_parallel_entry` | Chronological inverse branch and one-sweep exact target-span entry | `E_perp_pair`, `E_carry_resolvent`, exact unfolding range, Moore--Penrose block identity | Earlier outputs through `step_007b` | Pair-floor/resolvent controls make each solve ordinary; exact unfolding makes each updated factor lie in its target span | Exact active setting factors with frozen zero padding; no projection changes the algorithm | `h_U=0`, `h_V=epsilon_U`, `h_W=epsilon_U+epsilon_V`; `epsilon_U<=3072eta`, `epsilon_V<=3456eta`, `epsilon_W<=3888eta<4096eta`; `N_U^+=N_V^+=N_W^+=0`; entry `<rho_ALS/3` | Every per-call `Delta_J`, `d_M`, `h_M`, positivity, cross/pair, and inverse margin is checked chronologically | Outputs are exact `G_MZ_M` ALS solves and exact quotient representatives of the same rank-`k` tensor | Unknown-sign perpendicular terms are finite and disappear after their own block; no repeated accumulation | Raw U record -> U range -> V record -> V range -> W record -> W range | Producer `step_007b`; consumers `step_008`, `step_009` | No span membership is assumed before its update; shared-perpendicular and singular boundaries are explicitly stressed | `step-local` | None |
| `E_basin_parallel`, `Psi^q` | Generated invariant target-span tube and full-sweep quotient contraction | Exact span invariance, scale equivariance, target-span resolvent, chronological refresh | `E_parallel_entry,E_sm` through `step_008`; Uschmajew only for interpretation | Pair positivity and held-direction estimates yield the contraction class; exact overwrite removes historical product fields | Canonical states are quotient-equivalent to literal post-U/V/W states; metric is setting's `d_Q` | Solved output `<=ell` times held discrepancy; `e->e_U->e_V->e_W`; `Psi^q(e)=e_W`; `d_Q(Psi^q(e),Psi^q(e'))<=ell d_Q(e,e')`, `ell<1/16<1/4` | Entry `<rho_ALS/3`, inverse floor `31/32`, exact zero perpendicular forcing, one common `s` register | Balanced quotient controls the original represented tensor; no raw-amplitude or surrogate-state claim | All-time forcing is exactly zero; geometric budget `<16/15` of entry; historical `s` values are overwritten | `step_007b` proves entry before `step_008` proves invariance/contraction | Producer `step_008`; consumer `step_009` | Actual generated entry activates all maps; exact target has `Psi^q(0)=0`; unrestricted tube is expressly excluded | `step-local` | None |
| `E_stop` | Original-residual stopping and numerical specialization | Quotient contraction plus balanced-chart Frobenius comparison | `E_parallel_entry,E_basin_parallel,assump:accuracy-confidence` through `step_009` | Geometric quotient error controls the exact residual at the declared scale | Original rank-`k` Frobenius norm and literal ALS orbit | `m_epsilon=1+ceil(log(8kappa_0^2/epsilon)/log4)` and `4^{-(m-1)}<=epsilon/(8kappa_0^2)` | Entry sweep, residual constant, accuracy, and inactive zeros are explicit | Consumed target is exactly the setting's residual test | Finite geometric horizon; no probability upgrade here | Entry/basin -> `step_009` -> `E_stop` | Producer `step_009`; consumer `step_010` and theorem | Exact baseline stops with zero residual for every `epsilon>0` | `step-local` | None |
| `E_run_cap`, `E_restart` | All-tape termination, runtime, and conditional confidence | Pre-registered finite counter, exact residual test, Moore--Penrose selection, independent completed tapes | Approved procedure clause and primitive accuracy/randomness through `step_010`; `E_stop` only on `E_cov` | Counter supplies termination without contraction; `p_0` supplies success probability; dense arithmetic supplies runtime | Observable setting procedure and original residual; no latent factor oracle | Hit or timeout within `m_cap`; dense `T_run` bound; on `E_cov` cap is nonbinding; `(1-p_0)^J<=delta_init`, `T_total<=JT_run` | `m_cap=m_epsilon`, finite proposal horizon, `p_0>=1/2`, `J=O(log(1/delta_init))` | Timeout makes no target claim; every successful candidate meets the original residual | Arbitrary persistent errors on `E_cov^c` are stopped; exactly `J` costs add and completed-tape failures multiply | Cap fixed before active phase; separate `E_cov->E_stop` and all-tape counter paths meet only at restart assembly | Producer `step_010`; consumer final theorem | Singular, noncovered, nonhitting first tape exits at cap; exact tape succeeds before cap | `step-local` | None |
| Exact orthogonal baseline (`step_011`) | Baseline invariance and zero-error specialization | Direct exact-map and CP normal-equation substitution | Deterministic limiting specialization of earlier derived identities through `step_011` | Exact diagonal coefficient supplies fixed point; no defect source is needed | Produced and consumed tensors are identical; `rho=0` is algebraic, not probabilistic | `(A^+,B^+,C^+)=(BC,AC,AB)`; at stationary entry `R=0`, `beta_act=0`, `A=0`, `nu=1`, every refresh has `s=0`, residual `0` | Exact orthogonality/equal weights and stationary representative are explicit | Equality in original tensor and residual metric; positive transient envelopes are not substituted | Stationary, so no accumulated defect | Direct substitution; independent of noisy closure | Producer `step_011`; consumer final baseline clause | Finite orthogonal transients retain certificate/perpendicular charges; only exact stationary state is zero | `step-local` | None |

## Blocking Issues

None

## Required Repair Bundle

None

## Review Rationale

Attempt 4 is ready for step-level proof work.  The prior same-setting defect
was an executable-interface gap: the carried V/W calls did not expose how
static and newly generated direction errors entered the cross/pair Grams and
normalization.  The current sketch fixes that gap without changing the
theorem contract.  It supplies the full `B_N=I+C_N+E_N` interface, total
cross/pair bounds, chronological `h_M` discharge, exact product-scale
cancellation, all numerical inverse and positivity margins, noncircular
range chronology, and exact baseline equality.  The remaining work is to
prove and review the localized steps under these fixed interfaces; no sketch
or idea revision is presently required.
