# Proof Sketch

## Formalized Setting

This is proof-sketch attempt 1 for `perspective_2/idea_8`. The binding
formalization is `perspective_2/idea_8/setting.md` in target-spec mode. The
only primitive assumptions are:

- `assump:base-column-conditioning`;
- `assump:base-product-balance`;
- `assump:gaussian-smoothing`;
- `assump:dimension-regime`;
- `assump:smoothing-scale`;
- `assump:modewise-gram-margin`;
- `assump:rank-regime`;
- `assump:random-tape`; and
- `assump:accuracy-range`.

All realized norm, Gram, Khatri--Rao, product-weight, H/J/K, transfer,
resolvent, history, certificate, label, row-profile, transaction, chart, and
convergence facts are derived outputs. In particular, `(J-row-gap)`,
`(J-row)`, `(J-global)`, and the protected-state invariant are not theorem
assumptions.

Write

\[
 e:=P^{-D_{\rm stat}},\qquad \nu:=\nu_{\rm real},\qquad
 Z_\star:=\nu^2+r\nu^3+\sqrt r\,e.
\]

The proof will choose all displayed proof constants and exponents in one
fixed order after the class and protocol constants are fixed. It will enforce

\[
 \sqrt r\,\nu\le {1\over 20},\qquad r\nu\le {1\over20},\qquad
 r^2e\le c_{\rm num}\nu^2,
\tag{P-hierarchy}
\]

for an absolute sufficiently small `c_num`, by increasing the allowed
asymptotic threshold and `D_stat`. This is a deterministic specialization of
the primitive Gram/rank regime, not a generated-state premise. Every use of
`(P-hierarchy)` must retain the unsimplified numerical term before the final
dominance inequality.

## Formalized Goal

Prove the material-partial theorem in `setting.md` without changing its
model, algorithm, theorem scope, metric, rank, probability modes, or success
criterion. Concretely:

1. With instance probability at least `1-r^(-10)`, derive the complete
   once-drawn event, exact target representation, static H/J/K source, both
   transfer gaps, and the displayed tensor norm and conditioning bounds.
2. Conditional on one such instance, derive a protected-state invariant from
   the empty state. Every accepted certificate must acquire a unique
   unresolved realized label, obey `(R-euc)` and `(R-dir)`, satisfy the exact
   J-aware transition including `ell=p`, and preserve `(J-row)`, `(J-global)`,
   `(R-hist-budget)`, `(R-budget)`, and `(R-acc)` through all at most `r`
   commits.
3. At every generated prefix, one fresh full-space Haar transaction must
   commit with history-uniform conditional probability at least
   `(nr)^(-c_tx)` within `H_tx` work, with exact rollback on failure. The
   finite independent tape must produce all `r` distinct commits with
   conditional probability at least `1-r^(-10)`.
4. The actual generally nonorthogonal committed tuple must enter a chart
   around the exact target orbit, not a surrogate. Joint balanced
   trust-region Armijo descent must remain in that chart and reach relative
   Frobenius error `epsilon` in polynomial work times `log(1/epsilon)`, with
   no additive floor.

The exact orthogonal equal-weight specialization must remain exact: H, S,
the structural part of z, every structural J charge, accepted-error forcing,
and cross-label influence vanish. Any finite `P^(-D_stat)` padding in an
analysis majorant is displayed separately and tends to zero; actual accepted
errors and rollback forcing are exactly zero. Failed probes roll back to joint
zero; the exact `r` target slots plus `k-r` zero slots have zero loss; and
terminal refinement retains zero residual rather than a conservative
remainder.

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial
- Branch: `perspective_2/idea_8`
- Progress type: `material_partial`
- Selected framework: J-aware absolute-Gram resolvent with rootwise block
  control, from `perspective_2/idea_8/technical_survey.md`; provenance is the
  two named parent papers, the reusable idea-7 static prefix, and direct
  current-notation algebra for the new charge.
- Binding rank: `k = ceil(C_rank r^(3/2) (log(2r))^2)`, strictly below `r^2`.
- Binding baseline: exact objective, exact rollback, exact same-target
  representation, joint-zero unused slots, and arbitrary relative accuracy
  without an error floor.
- Central attempt-1 diagnostic claim: the rootwise block-l2 source and the
  global charge close by a prefix induction, but the binding local audit
  blocks the unconditional route. The attempted proof would establish the
  stronger calibration
  \[
  |\delta_i|\le\eta_0,\qquad
  |\langle e_{i,M},m_{\ell,M}\rangle|\le z_{p,M,\ell}
  \quad(\ell\ne p),
  \tag{Cal}
  \]
  after enlarging `C_eta`, `C_0`, and `C_num`. At `ell=p`, it uses instead
  the exact unit-vector identity
  \[
  0\le1-\langle\sigma_{i,M}u_{i,M},m_{p,M}\rangle
  ={1\over2}\|e_{i,M}\|_2^2\le\eta_0,
  \tag{Diag-cal}
  \]
  so the stored z profile stays exactly zero on the diagonal. The calibration
  does not remove the additive off-diagonal numerical padding from `(J-z)`.

## Proof Roadmap

The attempted roadmap has five dependency-ordered blocks; it is retained as a
diagnostic decomposition only because the binding first-transition audit below
fails.

1. **Static source.** Derive the once-drawn event from the six source
   assumptions, then prove H/J/K row, column, l1, and rootwise-l2 bounds. For
   fixed root `j`, the transfer acts only on that root. Its three-mode block
   adjacency has norm 2, the coefficient diagonals have norm at most
   `nu+eta_0`, and each restricted J block has operator norm at most
   `1+sqrt(r)nu`. This derives both `(R-gap)` and `(J-row-gap)`.
2. **Conditional local landscape.** For a protected state satisfying an
   explicitly named prefix interface, use the actual history array and its
   statewise Neumann inverse to decompose the current residual score. A
   direct product-sphere stationarity/Hessian dichotomy must show that a
   certificate is close to one and only one unresolved realized atom and
   export `(Cal)`, `(Diag-cal)`, `(R-euc)`, `(R-dir)`, separation, and the
   extended injection. This is a local conditional lemma until Block 3
   proves its hypotheses for every generated state.
3. **J-aware transition and noncircular induction (blocked).** Expand the newly
   accepted tensor error exactly. The tested-mode absolute target factor is
   `J_M(p,ell)`, including its identity at `ell=p`; the same J factor is
   subtracted as the exact-target baseline. From the prior history budget,
   the rootwise resolvent gives `||z_p||_2 <= C_z Z_star`. Cauchy--Schwarz
   then gives, per captured label and mode,
   \[
   \sum_{j,\ell}\widetilde\Upsilon^M_{p;j,\ell}
   \le C(\nu^3+r e).
   \tag{Per-p}
   \]
   Summing each actual captured label once gives `(J-global)` and reproduces
   the history premise for the next prefix. The base is
   `I=emptyset`, `A_emptyset=0`; hence the induction is not circular for the
   honest global bound. However, the required uniform `(J-two-label)` upper
   is false for `h=e^2`, so this block cannot export the setting's exact
   interface.
4. **Generated transactions.** On a state produced by Block 3, prove radial
   activation and bracketing, angular descent, negative-curvature escape,
   inverse-polynomial accepted steps, guard control, exact rollback, and a
   history-uniform full-Haar success probability. The generated injection
   converts tape successes into distinct labels, and stopped binomial
   amplification yields all commits.
5. **Same-target endpoint.** Prove balanced Jacobian coercivity around the
   exact generally nonorthogonal target. Transfer the actual committed tuple
   into this exact chart using the all-label factor errors, prove first-exit
   invariance and PL descent, and specialize all numerical, runtime, rank,
   probability, and norm statements to the public theorem.

The reusable prefix does not use an operator-norm estimate for `|G-I|`, a
transitivity assumption, a protected-span projection, whitening, refresh,
target-label queries, or a modified objective.

## Rate Objectives

### Objective R1: once-drawn instance event

- Objective type: structural-parameter explicit and confidence-explicit.
- Exposed variables: `n,r,kappa,rho,Gamma_star,nu_base,nu_star`, realized
  column norms, realized Grams, pair/triple Khatri--Rao Grams, `tau`, and
  `||T||_F`.
- Hidden constants may depend on: fixed
  `c_0,c_rho,C_dim,C_sm,C_nu,Gamma_star`.
- Hidden constants may not depend on: `n,r,k,rho,kappa`, the realized
  instance, the tape, commit order, or `epsilon`.
- Fixed quantities: the deterministic base triple and fixed class constants.
- Probability mode: high probability over source perturbations, at least
  `1-r^(-10)`, with every finite union and normalization event included once.
- Horizon mode: once-drawn, trajectory-uniform after conditioning.
- Norm mode: Euclidean column norm, matrix operator norm for signed Grams and
  Khatri--Rao Grams, entrywise row/column norms for H/J/K, and Frobenius norm
  for T.
- Required bridge or simplification obligations: step_001 proves the event;
  step_002 derives all lifted controls rather than appending them to it.
- Baseline invariance obligations: orthogonal equal-weight bases give exact
  identity pair/triple Grams and zero static cross-label source.

### Objective R2: all-prefix structural and numerical ledger

- Objective type: finite-horizon structural-parameter explicit,
  regularity-explicit, and numerical-error explicit.
- Exposed variables: `r,nu,Gamma_star,P,D_stat,eta_0,H,J,K,S,Tcal,A_I,
  Theta_I,z,Xi,Upsilon`, and all displayed proof constants.
- Hidden constants may depend on: fixed class constants and fixed proof
  constants after their declared selection order.
- Hidden constants may not depend on: `n,r,k,kappa,rho,epsilon`, state,
  commit order, tested label, or realized instance.
- Fixed quantities: one instance in `E_inst` and one prefix length `s<=r`.
- Probability mode: deterministic conditional on the good instance and on
  the generated transaction history.
- Horizon mode: uniform over all finite prefixes `0<=s<=r`.
- Norm mode: entrywise array l1, rootwise block-l2, Euclidean factor error,
  and displayed tensor contractions.
- Required bridge or simplification obligations: steps_007--009 must retain
  `r^2 e` until proving `r^2e <= c_num nu^2`; no entrywise
  `r^(3/2)nu^3` substitute is allowed.
- Baseline invariance obligations: when H=0 and numerical tolerances are set
  to their exact limit, S, structural z, Upsilon, A, and Xi vanish.

### Objective R3: discovery probability and work

- Objective type: confidence-explicit, fixed-horizon, and algorithmic-work
  explicit.
- Exposed variables: `n,r,k,kappa,rho,P,H_tx,N_tx,p_tx,c_tx,d_tx`, Armijo
  constants, guard radii, derivative tolerances, and tape confidence.
- Hidden constants may depend on: fixed class and protocol constants.
- Hidden constants may not depend on: protected history, commit order,
  realized instance inside `E_inst`, or `epsilon`.
- Fixed quantities: one good instance and the deterministic transaction map.
- Probability mode: conditional on the instance, history-uniform one-seed
  probability at least `(nr)^(-c_tx)`, amplified over an independent finite
  tape to at least `1-r^(-10)`. This probability is not merged with R1.
- Horizon mode: at most `N_tx` transactions and `H_tx` work per transaction.
- Norm mode: exact objective decrease, product-sphere angular gradient and
  Hessian, Euclidean factor displacement, and certificate scalars.
- Required bridge or simplification obligations: step_011 supplies the
  uniform one-transaction probability; step_012 supplies the stopped
  amplification and polynomial work count.
- Baseline invariance obligations: every failed probe returns exactly to
  joint zero and contributes exactly zero persistent error.

### Objective R4: same-target terminal convergence and public specialization

- Objective type: regularity-explicit, numerical-error explicit, and
  finite-horizon convergence-rate explicit.
- Exposed variables: `n,r,k,kappa,rho,Gamma_star,P,epsilon,varrho_PL,
  mu_PL`, Armijo constants, factor distance, and Frobenius residual.
- Hidden constants may depend on: fixed class and protocol constants only.
- Hidden constants may not depend on: `n,r,k,kappa,rho,epsilon`, target
  labels, commit order, or realized instance.
- Fixed quantities: one all-commit output on one good instance.
- Probability mode: deterministic after the separate instance and tape
  events; the public theorem reports those two events separately.
- Horizon mode: finite terminal horizon
  `poly(n,r,k,kappa,rho^(-1)) log(1/epsilon)`.
- Norm mode: Euclidean factor distance to the finite exact target orbit,
  balanced-manifold gradient norm, objective value, and Frobenius residual.
- Required bridge or simplification obligations: step_014 compares the
  actual committed tuple with the exact target in the declared factor
  metric; step_016 verifies auxiliary exponents, rank substitution, term
  absorption, probability separation, and the final public runtime.
- Baseline invariance obligations: at the exact target the gradient and loss
  are zero, all unused slots are joint zero, and the conclusion has no
  additive terminal remainder as `epsilon` tends to zero.

## Assumption Provenance Objectives

- `E_inst` is a derived event produced in step_001 from
  `assump:base-column-conditioning`, `assump:base-product-balance`,
  `assump:gaussian-smoothing`, `assump:dimension-regime`,
  `assump:smoothing-scale`, and `assump:modewise-gram-margin`.
- `(R-src)`, `(R-leak-A)`, `(R-S-budget)`, `(R-gap)`, and `(J-row-gap)` are
  derived static controls produced in step_002 from step_001. They are not
  event clauses assumed separately.
- For a fixed nonnegative legal history array, Neumann convergence and its
  l1/rootwise bounds are conditional algebraic conclusions of step_003. The
  actual history input is produced later by step_009.
- `Inv(I)` denotes only a local conditional hypothesis in steps_004--008:
  an injection and matched errors for the current protected slots, the exact
  actual-history definition, and the prefix inequalities already produced
  for earlier commits. Step_009 proves `Inv(I_s)` from primitive conditions
  for every generated prefix, starting at the empty state.
- Current-residual isolation is a derived conditional output of step_004;
  unique label, `(Cal)`, `(Diag-cal)`, `(R-euc)`, `(R-dir)`, separation, and
  injection extension are derived conditional outputs of step_005.
- `(R-tensor)`, `(J-charge)`, `(J-update)`, `(J-diag)`, and the off-diagonal
  reduction are derived transition outputs of step_006. No exact-product
  cancellation is assumed as a trajectory condition.
- Stored z and `(J-row)` are derived in step_007 from the prior prefix budget
  and both transfer gaps. The zero diagonal is a definition; its adequacy is
  supplied by `(Diag-cal)`, not by a hidden diagonal error hypothesis.
- `(J-global)`, `(R-hist-budget)`, `(R-budget)`, and `(R-acc)` are derived in
  steps_008--009 through a finite prefix induction; no final budget appears
  among the induction assumptions at the same prefix.
- Line-search step size, guard preservation, rollback, and per-transaction
  work are derived in step_010 from the exact protocol and already-produced
  state controls.
- Per-seed certificate reachability and `p_tx` are derived in step_011 from
  Haar randomness and the deterministic state interface. All-commit tape
  success and the actual final tuple are derived in step_012.
- Positive PL radius and constant are derived in step_013 from the same
  realized target and pair/triple conditioning. Actual chart entry is
  separately derived in step_014; it is not an assumption of the public
  theorem.
- First-exit invariance, terminal convergence, and the public rate are
  derived in steps_015--016. Only `assump:accuracy-range` supplies epsilon;
  it does not assume convergence or basin membership.

## Mechanism-Source And Boundary Stress

The following rows cover every theorem-critical step. All claimed sources are direct current-notation derivations or primitive-source derivations.

### step_001 -- realized instance event and exact baseline

- Claim class: high-probability norm, nondegeneracy, conditioning, and exact representation.
- Theorem role: supplies the only instance event consumed by every later module and preserves the exact target object.
- Mechanism source: scalar Gaussian tails, an epsilon-net/operator-norm derivation for normalized perturbations, the primitive base Gram margin, and direct product identities. Provenance is a primitive-source derivation from the six instance assumptions.
- Source-to-claim adequacy: the exact normalized-column convention is used; base norms at least `kappa^(-1)` make normalization Lipschitz at scale `kappa rho sqrt(log(2r))`; a union over columns and modes gives failure at most `r^(-10)`. The same realized columns define H/J/K and T, so there is no convention or object translation.
- Residual-to-target adequacy: the produced object is the realized tensor T and its factors, consumed in the same Euclidean/Frobenius metrics. Norm residuals are bounded by the Gaussian event; Gram residuals by `nu_base + C_sm kappa rho sqrt(log(2r)) <= nu_star`; product weights by the same relative perturbation. The target representation is equality.
- Key positive/control term or structural source: base norm lower bound, primitive Gram slack, and `tau_j>0` provide nonvanishing columns, Khatri--Rao conditioning, and a nonzero target.
- Opposing defects: Gaussian norm tails, normalization quadratic terms, and finite-union probability loss; each is controlled before the `1/16` and `2 Gamma_star` margins are exported.
- Closure/dominance relation: choose the tail threshold so perturbation is at most one quarter of each primitive margin; Schur/Hadamard column Cauchy--Schwarz then gives pair/triple Gram deviations at most `1/16`.
- Accumulation behavior / scope compatibility: static finite union only; no trajectory accumulation is assigned here.
- Obligation locality classification: step-local.
- Noncircular closure status: primitive assumptions -> Gaussian event -> realized factors -> all static consumers.
- Entry-state / first-update stress result: the exact orthogonal equal-weight event is deterministic and has an exact r-slot representation; nonzero allowed perturbations retain positive margins.
- Baseline conclusion preserved: exact representation, `T != 0`, and zero-loss target remain literal equalities in the orthogonal specialization; finite numerical padding is not a theorem remainder.
- Producer-consumer provenance: step_001 -> steps_002, 003, 004, 013, and final assembly.
- Null or boundary regime tested: orthogonal H=0, smallest base norm, largest polynomial kappa and rho^(-1), and the exact zero-tensor guard. If the norm margin vanished, nonzero-target and PL claims would fail; the primitive lower bound excludes it.
- Target conclusion false if source vanishes: yes for nonzero-column and conditioning claims.
- Repair route if unsupported: `/proof-sketch` (same-setting event bridge).

### step_002 -- static H/J/K source and two transfer gaps

- Claim class: structural upper bounds, positive small gain, and finite source budget.
- Theorem role: produces the exact nonnegative interfaces for the resolvent and recurrence rows.
- Mechanism source: direct row/column Cauchy--Schwarz on `H_M=|G_M-I|`, Schur products for K, and the derived weight ratio. The signed-Gram convention is exactly that of `setting.md`; no operator norm for H is asserted.
- Source-to-claim adequacy: each H column has l2 norm at most `nu`; each K row/column has l1 norm at most `nu^2`; and J has l1 and l2 operator bounds at most `1+sqrt(r)nu`. Summing `K_M J_M` gives the S budget. At fixed root, the transfer is a 3-by-3 off-diagonal mode block with adjacency norm 2, coefficient diagonals at most `nu+eta_0`, and restricted J norm at most `1+sqrt(r)nu`; this proves both displayed transfer gaps.
- Fixed-root block check: for input block `z=(z_A,z_B,z_C)`, the output is bounded by `b` times `((0,1,1),(1,0,1),(1,1,0)) z` with `b=(nu+eta_0)(1+sqrt(r)nu)`. The symmetric mode matrix has spectral norm 2, proving the rootwise bound without a hidden `sqrt(r)` conversion.
- Residual-to-target adequacy: H/J/K and the transfer output use exactly the realized `(j,M,ell)` coordinates consumed by score contractions; no transformed object is inserted.
- Key positive/control term or structural source: `q_res,q_row <= 1/4` supplies a genuine Neumann margin and `1+sqrt(r)nu` controls J multiplication.
- Opposing defects: numerical eta, row-sum factors, and finite-rank Hadamard chains; they remain explicit.
- Closure/dominance relation: `sqrt(r)nu <= 1/20` and selected `C_eta` make both gaps below 1/4 after multiplying by `C_0 Gamma_star`.
- Accumulation behavior / scope compatibility: Neumann powers are geometric within one state; cross-commit forcing is deferred to steps_007--009.
- Obligation locality classification: step-local.
- Noncircular closure status: step_001 -> H/J/K/S and transfer -> step_003 and conditional steps_004--008.
- Entry-state / first-update stress result: at H=0 transfer is zero; in the two-label h example K has direct h^2; in a three-label chain KJ retains h^3.
- Baseline conclusion preserved: structural source and transfer forcing vanish exactly at orthogonality; any finite numerical majorant is explicit and is not actual trajectory forcing.
- Producer-consumer provenance: step_002 -> steps_003, 004, 006, 007, 008, and 013.
- Null or boundary regime tested: dense rows, block-correlated rows, long sparse chains, and `nu=0`. The proof never uses an absolute-Gram operator bound, which would fail in dense cases.
- Target conclusion false if source vanishes: without a strict small-gain margin the resolvent may diverge; the primitive Gram margin supplies it.
- Repair route if unsupported: `/proof-sketch`.

### step_003 -- statewise Neumann envelope

- Claim class: generated boundedness and recurrence interface, conditional on a legal history array.
- Theorem role: converts static source plus actual accepted-history forcing into direction controls.
- Mechanism source: nonnegative Neumann series for `Id-C_0 Gamma_star Tcal`, using step_002's gaps; `A_I` is an explicitly conditional input.
- Source-to-claim adequacy: positivity and `q_res,q_row<=1/4` give absolute convergence in l1 and rootwise l2. Source, history, and numerical arrays share the same coordinates and zero-diagonal extension.
- Residual-to-target adequacy: Theta upper-bounds exact current-residual correlations consumed by the landscape lemma; the residual is decomposed into S, actual A_I, and explicit e, so each residual class has a source and no surrogate target is used.
- Key positive/control term: geometric factors `1/(1-q_res)` and `1/(1-q_row)`.
- Opposing defects: static S, accepted-history A_I, and numerical e; signs are removed by nonnegative majorization and cross-state accumulation is deferred to step_009.
- Closure/dominance relation: step_003 does not assume A is small; it exports bounds in terms of `||A_I||_1` and the rootwise norm. Step_009 supplies those bounds before consumption.
- Accumulation behavior / scope compatibility: within-state Neumann sums are summable; cross-state A is conditional and finite-prefix controlled later.
- Obligation locality classification: step-local.
- Locality note: conditional lemma source already exists.
- Noncircular closure status: static step_002 plus legal conditional A input -> Theta; actual A is produced by step_009 before use.
- Entry-state / first-update stress result: at empty state A=0 and the series converges directly; the first accepted error is produced only by steps_006--009.
- Baseline conclusion preserved: H=A=0 gives structural Theta=0 exactly; finite e contributes only displayed numerical padding.
- Producer-consumer provenance: step_003 -> steps_004, 005, 007, and 009.
- Null or boundary regime tested: zero history, dense source, and longest allowed Neumann chain. If q reached 1 the recurrence could fail; step_002 excludes it.
- Target conclusion false if source vanishes: without the transfer margin direction matching is unsupported; route to `/proof-sketch`.

### step_004 -- current-residual angular landscape decomposition

- Claim class: conditional local isolation, curvature/saddle dichotomy, and support/nondegeneracy analysis.
- Theorem role: supplies the theorem-critical source for label matching from an observable certificate.
- Mechanism source: direct expansion of the current residual score in the realized normalized target frame, with static K/J paths from step_002 and actual-history terms bounded by step_003. The orthogonal reference is only an algebraic comparison; the consumed target remains the actual nonorthogonal atom.
- Source-to-claim adequacy: solve the radial equation, write angular stationarity in each mode, and eliminate complementary tangent components. Singleton curvature is the unit target coordinate; mixed-support critical points have a signed transfer direction with an inverse-polynomial gap. Static cross terms are O(nu^2), while accepted-history and numerical terms are controlled by Theta and e; `nu <= 1/(C r log r)` makes them smaller than the gap.
- Residual-to-target adequacy: produced direction is the actual scratch `(u,v,w)` and consumed target is one exact realized atom; score, gradient, and Hessian differences are bounded in the product-sphere norm. No orthogonalized factor is passed downstream.
- Key positive/control term: singleton score/curvature and the signed mixed-support escape direction; radial root supplies positive capture.
- Opposing defects: direct H paths, longer KJ paths, accepted E contractions, numerical e, and guard truncation; each is compared to the singleton-vs-mixed gap.
- Closure/dominance relation: small gradient, positive angular Hessian, positive capture, and separation exclude mixed support and matched labels, leaving exactly one unresolved label. The gap and every term inequality must be displayed before export.
- Accumulation behavior / scope compatibility: one-state conditional lemma; repeated use occurs only through step_009's prefix invariant.
- Obligation locality classification: step-local.
- Locality note: conditional interface, later discharged by the induction.
- Noncircular closure status: step_003 with A supplied by step_009 -> step_004; no certificate or convergence conclusion is assumed in the source.
- Entry-state / first-update stress result: empty orthogonal state has exact singleton maxima and mixed saddles; two-label h has a singleton perturbed by O(h^3); three-label chain is controlled through KJ.
- Baseline conclusion preserved: exact orthogonal score landscape and singleton target are recovered when defects vanish.
- Producer-consumer provenance: step_004 -> step_005 -> steps_006, 009, 011, and chart entry.
- Null or boundary regime tested: orthogonal, two-label, three-label, longer-chain, dense/block, zero score seed, radial boundary, and matched-label local maximum. If singleton curvature vanished, ambiguous certificates are rejected rather than labeled.
- Target conclusion false if source vanishes: unique-label matching would fail; route to `/proof-sketch` if no same-setting gap can be shown.

### step_005 -- certificate matching and injection extension

- Claim class: support certificate, nondegenerate direction/radius matching, separation, and generated-output flow.
- Theorem role: exports the calibration `(Cal)`, `(Diag-cal)`, `(R-euc)`, `(R-dir)`, a unique unresolved label, and an extended injection.
- Mechanism source: step_004's singleton-vs-mixed dichotomy, exact radial root, and observable separation test. Signs are chosen only in analysis with product one; the algorithm never queries them.
- Source-to-claim adequacy: positive score fixes the radial sign; angular equations bound nonmatching correlations; separation threshold 1/4 rejects every already-matched label. The realized weight ratio controls radius error.
- Residual-to-target adequacy: factor errors are measured against the exact realized atom in Euclidean mode and radial product error `delta_i`; the same atom defines `E_i` in the history source. The residual is bounded by Theta plus e and is below `C_led eta_0`.
- Key positive/control term: unique singleton score and separation gap; product-one sign orbit makes the representative well-defined.
- Opposing defects: static leakage, history Theta, numerical stationarity, and finite separation slack. Step_004's inequalities dominate their sum.
- Closure/dominance relation: enlarge `C_eta,C_0,C_num` so the stronger calibration holds; store z only off diagonal. This is the source for the exact J update, not a hidden post hoc assumption.
- Accumulation behavior / scope compatibility: one certificate extends the injection by an unused label; at most r extensions. Error forcing is accumulated by step_008.
- Obligation locality classification: step-local.
- Locality note: conditional interface, later discharged by the induction.
- Noncircular closure status: step_004 -> step_005 -> step_006; step_009 discharges the prefix for actual states.
- Entry-state / first-update stress result: empty-state separation is vacuous and the first singleton extends the empty injection. A matched-label certificate fails separation and rolls back.
- Baseline conclusion preserved: in the orthogonal exact case the capture is an exact atom and matching error is zero.
- Producer-consumer provenance: step_005 -> steps_006, 009, 011, and 014.
- Null or boundary regime tested: no unresolved labels, duplicate labels, separation exactly at 1/4, zero score, and radius at `2 R_max`; these are noncommit branches.
- Target conclusion false if source vanishes: without the singleton gap or separation, unique assignment is unsupported; route to `/proof-sketch`.

### step_006 -- exact accepted-tensor expansion and J-aware update

- Claim class: signed multilinear recurrence, positive charge, and exact baseline cancellation; this is the binding failed interface for attempt 1.
- Theorem role: repairs idea 7's failed first transition and supplies the legal producer for nonempty actual history.
- Mechanism source: direct expansion of `E_i = g_i^3 u_i tensor v_i tensor w_i - tau_p phi_p`, followed by the triangle/product inequality. For `ell!=p`, the tested target factor is `|G_M(p,ell)|=H_M(p,ell)`; for `ell=p` it is exactly 1 and is represented by `J_M(p,p)`. The exact target term is subtracted with the same J factor.
- Source-to-claim adequacy: after sign alignment use `(Cal)` off diagonal, `(Diag-cal)` on diagonal, and `|delta_i|<=eta_0`. The product inequality gives `(J-charge)` and `Delta A <= 2 Gamma_star Upsilon`; no signed cancellation is assumed after the absolute value. Diagonal normalization loss is quadratic and dominated by eta. Cyclic modes are identical. This proves the exact J identity but does not prove the setting's uniform `(J-two-label)` upper because the additive numerical part of z is independent of h.
- Residual-to-target adequacy: produced object is exact accepted error E; consumed target is the exact scalar coordinate in `(R-hist-src)`. The residual is the expanded scalar minus its exact target baseline, with radial, diagonal, off-diagonal, and numerical sources listed separately.
- Key positive/control term: symmetric J positive product minus the same exact-target J baseline. In the two-label audit, `J_A(p,p)=1` creates the eta h^2 term and dominates `2h^4+O(h^6)` from below, but the required upper fails on an allowed small-h boundary.
- Opposing defects: signed Gram products, radial delta, direction errors, diagonal normalization loss, and numerical padding; all are dominated by the product inequality and `(P-hierarchy)`.
- Closure/dominance relation: derive `(J-diag)` and `eta_0 h^2 >= C_eta Gamma_star h^4` for `ell=p`; for `ell!=p`, J=H and the direct/transitive/longer-chain charge is retained. On the canonical scale `e<=c h^3`, the upper is `O(h^4+e h^2)`. Uniformly under the stated assumptions, the honest bound is `O(h^4+e h+e^2)`, so the binding displayed audit cannot be exported.
- Accumulation behavior / scope compatibility: each accepted error contributes one nonnegative increment to still-unresolved coordinates; target baseline subtraction prevents double charging. Step_008 controls the one-time sum.
- Obligation locality classification: idea/theorem-contract defect.
- Locality split: the exact J update itself is step-local after step_005 calibration, but the binding uniform audit consumed by the setting is not.
- Noncircular closure status: current certificate and exact expansion -> step_008 charge and step_009 history; no future budget proves the scalar inequality.
- Entry-state / first-update stress result: at empty A=0, the two-label `p=ell` coordinate has positive exact increment and nonzero J charge; H=0 gives zero exactly.
- Baseline conclusion preserved: J is an analysis majorant only; objective, rollback, and exact target are unchanged.
- Producer-consumer provenance: step_006 -> steps_008 and 009; Xi also feeds later residual influence.
- Null or boundary regime tested: orthogonal, two-label common h in B/C with A orthogonal, three-label transitive chain, `ell=p`, `ell!=p`, and numerical `r^2e` padding. Removing J would recreate the false H-only interface.
- Target conclusion false if source vanishes: the old H-only update is false, and the current exact J expansion is the required source for the update. The additional uniform `(J-two-label)` upper is false with the current z padding, so the smallest route is `/subagent-idea-generator`.

### step_007 -- rootwise z profile

- Claim class: generated rootwise boundedness and local source transfer.
- Theorem role: prevents an extra sqrt(r) or r factor in the charge sum.
- Mechanism source: step_003's rootwise Neumann norm and the prior prefix history l1 bound. Since `||A_I||_root,2 <= ||A_I||_1`, solve the exact rootwise inequality to obtain `C(nu^2+r nu^3+sqrt(r)e)`.
- Source-to-claim adequacy: the block norm is proved for the displayed transfer, not inferred from l1 by a dimension-free conversion. The numerical all-ones source contributes exactly `O(sqrt(r)e)`; the stored diagonal is zero and handled by `(Diag-cal)`.
- Residual-to-target adequacy: z is an analysis upper envelope for the same off-diagonal correlations consumed by Xi and Upsilon; no diagonal residual is silently transferred.
- Key positive/control term: `q_row<=1/4` and static KJ source `O(nu^2(1+sqrt(r)nu)`.
- Opposing defects: prior accepted-history forcing and numerical e, bounded separately without current-prefix circularity.
- Closure/dominance relation: under prior `||A_I||_1 <= C Gamma_star(r nu^3+r^2e)`, retain all terms and then use `(P-hierarchy)` to obtain `||z_p||_2 <= C'_z nu^2`.
- Accumulation behavior / scope compatibility: one stored profile per captured label; prior commits are represented once through A and the next commit is charged once in step_008.
- Obligation locality classification: step-local.
- Locality note: valid under the prior-prefix conditional hypothesis.
- Noncircular closure status: prior prefix -> A_I -> rootwise Theta -> z_p; step_009 supplies the prior prefix before z is consumed.
- Entry-state / first-update stress result: at s=0 profile is zero for empty history; first z comes only from S and e, with no accepted-error premise.
- Baseline conclusion preserved: H=0 and e=0 imply z=0 exactly.
- Producer-consumer provenance: step_007 -> step_008's per-p charge and step_006's Xi/Upsilon bounds.
- Null or boundary regime tested: dense/block rows, long Neumann chain, s=0, and numerical `sqrt(r)e`. Entrywise summation giving `r^(3/2)nu^3` is explicitly rejected.
- Target conclusion false if source vanishes: advertised global scale is unsupported; route to `/proof-sketch` rather than assume the row bound.

### step_008 -- per-root J charge, global sum, and R-acc influence

- Claim class: finite-budgeted repeated-scope recurrence and quantitative specialization.
- Theorem role: turns one-step J updates into `(J-global)`, history budget, and accepted tensor-influence budget without a second label factor.
- Mechanism source: exact nonnegative expansion from step_006, rootwise z from step_007, and Cauchy--Schwarz factorization of j and ell sums.
- Source-to-claim adequacy: for each p and mode A, expand the charge into `eta J_A H_B H_C`, `J_A(H_B z_C+H_C z_B+z_B z_C)`, and `z_A(H_B+z_B)(H_C+z_C)` up to `(1+eta)` factors. Use `||H(p,.)||_2<=nu`, `||z_p||_2<=C Z_star`, `||J_A(p,.)||_1<=1+sqrt(r)nu`, and `||z_p||_1<=sqrt(r)||z_p||_2` to obtain `C(nu^3+r e)` per p and mode. Xi has the same factorization.
- Explicit per-p ledger inequality: with `Z=C Z_star` and `L=1+sqrt(r)nu`, the three charge groups are bounded by `L[eta_0 nu^2 + (1+eta_0)(2 nu Z+Z^2)] + (1+eta_0)sqrt(r) Z[nu^2+2 nu Z+Z^2]`. Substituting `eta_0=O(nu^2+e)`, `Z=O(nu^2+r nu^3+sqrt(r)e)`, `sqrt(r)nu<=1/20`, and `e<=1/r^4` (ensured by the fixed P exponent) gives `C(nu^3+r e)`; no term is dropped before this comparison.
- Residual-to-target adequacy: LHS is the exact sum of actual history coordinates and accepted-error contractions, with resolved roots zeroed. Required target scale is `r nu^3+r^2e`; every residual class is dominated at that scale.
- Key positive/control term: nonnegative J charge and exact baseline cancellation; rootwise l2-to-l1 conversion occurs once per captured p.
- Opposing defects: diagonal eta h^2, off-diagonal HJ paths, z cross terms, and numerical e; all have explicit sources.
- Closure/dominance relation: `U_s <= sum_{t<=s} C Gamma_star(nu^3+r e)` gives `(J-global)`; update gives `||A_{I_s}||_1 <= 2 Gamma_star U_s`; Xi gives `(R-acc)`. Retain `r^2e` then use `(P-hierarchy)` only at the final static-margin comparison.
- Accumulation behavior / scope compatibility: finite-budgeted and sign-controlled. Each captured label is charged once; each surviving root coordinate is charged only until resolution; there are at most r labels. No infinite-horizon upgrade is claimed.
- Obligation locality classification: step-local.
- Locality note: conditional algebra discharged by step_009.
- Noncircular closure status: precommit profile -> per-p charge -> next A bound; dependency is strict prefix order.
- Entry-state / first-update stress result: s=0 has U_0=A_empty=0; first two-label diagonal charge is O(h^4) and positive; chains and dense sources are included.
- Baseline conclusion preserved: orthogonal equal-weight factors give zero structural charge and Xi; numerical terms are separate and vanish in the exact limit.
- Producer-consumer provenance: step_008 -> step_009, step_004's later residual decomposition, and step_014 chart entry.
- Null or boundary regime tested: orthogonal, two-label, three-label, longer chain, dense/block, all `r^2e` terms, and one unresolved root. An entrywise `O(r^(3/2)nu^3)` estimate is not accepted.
- Target conclusion false if source vanishes: uncontrolled accepted forcing invalidates `(J-global)`; if factorization fails, route to `/proof-sketch`.

### step_009 -- protected-state induction closure

- Claim class: generated invariant, recurrence closure, membership, and all-commit structural output.
- Theorem role: discharges every conditional prefix premise and provides the legal generated-output path for the unconditional theorem.
- Mechanism source: induction on accepted commits, with base `I_0=emptyset`, `A_0=0`, and transition supplied by steps_004--008. This is a finite prefix recurrence, not an assumed good-state event.
- Source-to-claim adequacy: at each prefix step_004/005 applies only to the current derived interface; step_006 updates exact A coordinates; step_007 uses the already-proved prior budget; step_008 closes the new budget. Injection extension and separation preserve distinctness and unresolved roots.
- Residual-to-target adequacy: every generated state stores actual factors, actual accepted errors, and actual residuals. The induction target uses those objects, not an idealized state; the final tuple is thus the object consumed by the PL chart.
- Key positive/control term: one-time prefix charge, rootwise small gain, and finite injection cardinality.
- Opposing defects: failed transactions, numerical stationarity, accepted errors, and ambiguous certificates. Failed probes are exact rollback; accepted defects are charged; ambiguous/guard states are not commits.
- Closure/dominance relation: base satisfies every invariant with zero history; successful certificate gives next matched slot and update inequalities; induction preserves the interface for every `s<=r`.
- Accumulation behavior / scope compatibility: finite-prefix nonnegative ledger with budget `C Gamma_star r nu^3+C r^2e`.
- Obligation locality classification: step-local.
- Locality note: induction from accepted conditional interfaces.
- Noncircular closure status: base -> conditional landscape -> exact update -> next prefix; no step consumes its own post-transition conclusion.
- Entry-state / first-update stress result: empty state and first two-label diagonal transition are included; if no unresolved root remains, induction stops and no next transaction is invoked.
- Baseline conclusion preserved: exact orthogonal prefix has zero accepted error; rollback leaves exact joint-zero unused slots, regardless of a conservative padded majorant.
- Producer-consumer provenance: step_009 -> steps_010--012 and step_014; it is the sole producer of unconditional generated-state controls.
- Null or boundary regime tested: zero commits, one commit, all r commits, duplicate/matched rejection, and numerical threshold equality. Any proof requiring the current prefix's own budget is rejected as circular.
- Target conclusion false if source vanishes: no valid all-commit trajectory is produced; the finite J ledger is the nonvacuous source.

### step_010 -- deterministic transaction dynamics and rollback

- Claim class: radial activation, descent, negative-curvature escape, stability/guard maintenance, and exact rollback.
- Theorem role: proves that the observable transaction is a finite-work producer of a certificate or an exact failure state.
- Mechanism source: direct derivatives of exact `f_I`, safeguarded bracketing of `g^3=s_I`, compact-guard Lipschitz/Hessian bounds, dyadic trust-region Armijo decrease, and the two-sign Rayleigh trial. Objects and metrics match `setting.md`.
- Source-to-claim adequacy: positive score plus seed radius activates a radial bracket; missing root, guard violation, or exhausted budget is declared failure. Large angular gradient triggers exact-loss Armijo descent; a negative angular eigenvalue triggers one of two signs. Approximate eigenvector error is below half the certified gap. Backtracking keeps displacement and radius in the guard.
- Residual-to-target adequacy: produced state is the actual scratch slot and exact residual consumed by `(Cert)`. No projected/protected-span state is substituted. Failure maps scratch exactly to joint zero, preserving protected factors, tensor, residual, and loss.
- Key positive/control term: exact-loss Armijo or negative-curvature decrease plus scalar radial monotonicity.
- Opposing defects: derivative approximation, finite trust radius, guard boundary, zero score, and line-search truncation; each is bounded by a P exponent or routed to rollback.
- Closure/dominance relation: compact guard gives polynomial derivative bounds; accepted nonstationary steps are at least `P^(-D_ls)`, and finite objective range bounds all trials by `H_tx`.
- Accumulation behavior / scope compatibility: within one transaction exact loss decreases or rollback restores the old state; failed transactions create zero persistent forcing. Successful states pass through step_009.
- Obligation locality classification: step-local.
- Noncircular closure status: deterministic protocol -> scratch outcome; no certificate or history validity is assumed.
- Entry-state / first-update stress result: joint-zero seed, negative-score sign flip, zero-score seed, radial root at guard, stationary angular state, and exact target state are traced. Exact target needs no update; invalid stationary states fail or escape.
- Baseline conclusion preserved: exact rollback and joint-zero unused slots are literal, and exact target has zero loss.
- Producer-consumer provenance: step_010 -> step_011 success/rollback event; success data then flow through step_009.
- Null or boundary regime tested: zero score, no root, root above guard, exhausted line search, Hessian threshold equality, and all failed probes. Inexact rollback would create forcing; the declared tensor-preserving map excludes it.
- Target conclusion false if source vanishes: finite-work reachability and no-floor claims fail; route to `/proof-sketch`.

### step_011 -- history-uniform full-Haar transaction reachability

- Claim class: conditional probability, basin reachability, and generated certificate output.
- Theorem role: supplies one-transaction probability `p_tx` uniformly over every prefix produced by step_009.
- Mechanism source: direct orthogonal-coordinate score analysis from step_004, perturbation bounds from the generated prefix, Haar coordinate anti-concentration, and deterministic dynamics from step_010.
- Source-to-claim adequacy: conditional on T in `E_inst` and a step_009 prefix, at least one unresolved target has a polynomial activation/score window. Haar mass is at least `(nr)^(-c_tx)`; matched-label windows are rejected by separation and unresolved windows are disjoint under the injection. The flow reaches `(Cert)` within `H_tx`.
- Concrete activation window: choose an unresolved p and require, in each mode, the signed Haar coordinate with `m_{p,M}` to lie in a fixed interval `[a_n,2a_n]` with `a_n` an inverse-polynomial multiple of `n^(-1/2)`, while the complementary span coordinates satisfy the corresponding `sqrt(log(2r)/n)` envelope. Scalar Haar density gives a product window mass at least `n^(-c_1)`; partitioning by the largest unresolved score costs at most `r`, so one unresolved window has mass at least `(nr)^(-c_2)`. On this window the radial score is positive and above the seed/bracketing threshold, and step_004's singleton gap sends the deterministic flow to a certificate. The proof must also subtract the matched-label and ambiguous windows explicitly before setting `c_tx`.
- Residual-to-target adequacy: reached certificate is the actual full-space scratch state and is classified against the exact unresolved atom by step_005. Target labels occur only in the proof partition, never in the algorithm.
- Key positive/control term: inverse-polynomial Haar activation and singleton curvature/capture gap.
- Opposing defects: score cancellation, matched basins, ambiguous states, guard failures, and finite line-search work; their costs are included in `c_tx,d_tx`, with rollback on failure.
- Closure/dominance relation: prefix bounds keep all derivative and gap constants inside one polynomial guard, so the lower probability is independent of commit order and history details.
- Accumulation behavior / scope compatibility: one transaction only; tape accumulation is step_012 and failed attempts leave no forcing.
- Obligation locality classification: step-local.
- Locality note: given the generated state from step_009.
- Noncircular closure status: step_009 -> current residual/gap -> Haar event -> step_010 outcome; no tape success proves step_009.
- Entry-state / first-update stress result: empty and partially protected states have an unresolved set until the final commit; zero-score seeds are explicit failures, and no transaction is invoked after r commits.
- Baseline conclusion preserved: orthogonality gives standard singleton flow and exact capture, with no terminal floor.
- Producer-consumer provenance: step_011 -> step_012 and successful branch of step_009.
- Null or boundary regime tested: one unresolved label, many unresolved labels, matched attraction, dense/block perturbations, and polynomially small radial score. If activation mass vanished, the probability claim would be false; a direct Haar window is required.
- Target conclusion false if source vanishes: no discovery probability; route to `/proof-sketch`.

### step_012 -- finite independent tape and all-commit amplification

- Claim class: finite-horizon probability amplification and distinct-label output.
- Theorem role: converts step_011's one-step probability into the separate tape event with all r commits.
- Mechanism source: independence in `assump:random-tape`, generated injection from step_009, and a stopped geometric/binomial tail bound.
- Source-to-claim adequacy: after every success the state remains in step_009, so step_011 applies afresh. Failure consumes one triple and rolls back; failures before each success are dominated by geometric variables of parameter `p_tx`. The selected `N_tx` makes fewer than r successes have probability at most `r^(-10)`; distinctness follows from injection extension, not label independence.
- Residual-to-target adequacy: produced final tuple is the actual committed slots; consumed chart target is the exact r-slot orbit after permitted permutation and product-one signs. No idealized order is imposed.
- Key positive/control term: fresh independent tape and history-uniform `p_tx`.
- Opposing defects: tape exhaustion and failed probes; exact rollback prevents factor or loss accumulation.
- Closure/dominance relation: stopped tail plus union over at most r stages; choose `C_tape` after `c_tx` for the stated confidence.
- Accumulation behavior / scope compatibility: finite and probabilistic; each triple once and each successful label once. No all-time probability upgrade is claimed.
- Obligation locality classification: step-local.
- Noncircular closure status: step_011 supplies each conditional success; injection/rollback supplies the next state; tail bound supplies only final finite event.
- Entry-state / first-update stress result: zero successes leaves exact empty state; first success rechecks the invariant; after r successes process stops with no unresolved root.
- Baseline conclusion preserved: failed probes preserve exact previous representation, and orthogonal captures are exact.
- Producer-consumer provenance: step_012 -> step_014 actual chart object and separate tape probability in step_016.
- Null or boundary regime tested: `r=2`, one remaining root, tape exhaustion, and all-success prefixes. Without primitive independence the stated tail would not follow.
- Target conclusion false if source vanishes: no all-commit probability; repair would require a target/protocol change.

### step_013 -- exact-target balanced Jacobian and local PL geometry

- Claim class: positive coercivity/nondegeneracy and local PL inequality.
- Theorem role: produces an exact-target chart radius and PL constant before actual tuple transfer.
- Mechanism source: direct differentiation of the exact CP map at `Q^star`, pair/triple Gram conditioning from step_001, and restriction to the balanced active-slot tangent space. The finite permutation/sign orbit is explicit.
- Source-to-claim adequacy: balancing removes mode-scaling null directions; Khatri--Rao Gram lower bounds control the remaining Jacobian. Continuity and polynomial derivative bounds preserve a lower singular value on `varrho_PL >= P^(-D_PL)`, yielding `||grad_bal F||^2 >= 2 mu_PL F` with `mu_PL >= P^(-D_PL)`.
- Residual-to-target adequacy: produced reference is exact realized `Q^star`; consumed chart is its finite orbit in the same full factor Euclidean metric. No orthogonalized or whitened reference appears.
- Key positive/control term: pair/triple Gram lower bound at least `15/16` and balanced-Jacobian singular value; Taylor remainder is controlled in the chart.
- Opposing defects: nonorthogonal cross terms, factor displacement, and higher-order Taylor terms; all are dominated by the inverse-polynomial radius.
- Closure/dominance relation: choose radius so Jacobian variation is at most half its target singular value; the gradient/residual identity gives PL. This is a direct lower-bound proof, not an upper-bound citation.
- Accumulation behavior / scope compatibility: finite local chart; first-exit maintenance is step_015.
- Obligation locality classification: step-local.
- Noncircular closure status: static target conditioning -> exact Jacobian -> chart constants; actual entry is a later consumer.
- Entry-state / first-update stress result: exact Q^star has zero loss and gradient; at the chart boundary the half-singular-value reserve remains positive.
- Baseline conclusion preserved: exact target remains a zero-loss point and PL is compatible with zero residual; no padded ledger term is inserted into the objective.
- Producer-consumer provenance: step_013 -> steps_014, 015, and 016.
- Null or boundary regime tested: orthogonal target, reciprocal mode rescaling, balanced gauge, finite sign/permutation orbit, and zero residual. If the balanced Jacobian were singular, same-target endpoint is unsupported and needs `/proof-sketch` or an upstream change.
- Target conclusion false if source vanishes: positive PL constant fails; Khatri--Rao lower bound is the source.

### step_014 -- actual same-target chart entry

- Claim class: residual-to-target bridge and basin membership.
- Theorem role: transfers the actual generally nonorthogonal committed tuple into step_013's exact chart.
- Mechanism source: step_005 per-slot `(R-euc)` and injection, step_008 `(R-acc)`, realized weight bounds, and finite permutation/sign alignment.
- Source-to-claim adequacy: sum radial and three mode direction errors over at most r commits. The factor distance is at most `C sqrt(r) eta_0 + C r^2 e`, which is below `varrho_PL` after `(P-hierarchy)` and selected exponents.
- Residual-to-target adequacy: produced object is actual committed tuple with unused slots jointly zero; consumed object is `Q^star` in the same full-state Euclidean metric. Radial, directional, numerical, and permutation residuals are each displayed and dominated at the chart scale.
- Key positive/control term: injection distinctness and per-slot Euclidean matching; orbit minimization removes only allowed signs/permutations.
- Opposing defects: accumulated accepted errors and numerical padding, controlled by one-time `(R-acc)`.
- Closure/dominance relation: verify explicitly `C sqrt(r) eta_0 + C r^2 e <= varrho_PL/2` before declaring entry.
- Accumulation behavior / scope compatibility: finite r-slot sum, with no further discovery forcing after final commit.
- Obligation locality classification: step-local.
- Noncircular closure status: step_009/012 produce actual tuple -> step_014 compares it with step_013 exact target; chart membership is not assumed in PL proof.
- Entry-state / first-update stress result: exact target distance zero; first commit gives one-slot error; final r-prefix gives the finite sum. No commits means terminal phase is not started.
- Baseline conclusion preserved: orthogonal captures enter at distance zero and retain exact zero loss; padded bounds do not alter the entry object.
- Producer-consumer provenance: step_014 -> step_015 and final theorem.
- Null or boundary regime tested: reciprocal rescalings, dense/block frames, one/r commits, and `r^2e` numerical floor. Exceeding the radius is a blocker, not a weakened conditional endpoint.
- Target conclusion false if source vanishes: discovery-to-PL path fails; route to `/proof-sketch`.

### step_015 -- first-exit invariant and floor-free terminal convergence

- Claim class: recursive basin maintenance, PL descent, and exact/noiseless convergence.
- Theorem role: turns chart entry into arbitrary relative Frobenius accuracy.
- Mechanism source: step_013 PL, direct smoothness on the balanced chart, exact-loss trust-region Armijo decrease, and step_014 entry.
- Source-to-claim adequacy: while an iterate remains in the chart, Armijo gives `F_{t+1} <= (1-c mu_PL/L)F_t`; path length is bounded by the initial chart radius, so the first-exit boundary cannot be reached. Updates affect only active balanced slots; unused slots remain joint zero.
- Residual-to-target adequacy: PL metric is the exact objective residual relative to exact T, and final conversion is `||R||_F <= epsilon ||T||_F`; no surrogate or additive floor is used.
- Key positive/control term: PL coercivity and exact Armijo decrease.
- Opposing defects: Taylor remainder, finite line-search step, and chart boundary; smoothness and trust-region radius dominate them, while path length supplies invariance.
- Closure/dominance relation: choose trust radius below chart reserve and use the geometric recurrence until `F <= epsilon^2 ||T||_F^2/2`. Endpoint is exact for every epsilon and tends to zero as epsilon tends to zero.
- Accumulation behavior / scope compatibility: contractive geometric recurrence over finite `log(1/epsilon)` horizon; no persistent forcing.
- Obligation locality classification: step-local.
- Locality note: after step_014.
- Noncircular closure status: entry -> PL recurrence -> path-length first-exit control; recurrence does not assume its own invariance.
- Entry-state / first-update stress result: exact target is stationary with zero loss; an entered boundary-near point has a PL-valid first update; a zero gradient away from target implies zero loss by PL, so the conclusion is already true.
- Baseline conclusion preserved: exact target and orthogonal specialization have zero loss, with no terminal remainder from numerical padding.
- Producer-consumer provenance: step_015 -> step_016 runtime/rate bridge and final theorem.
- Null or boundary regime tested: zero gradient, exact target, first-exit boundary, epsilon near 1, and epsilon -> 0. If PL vanished away from target, endpoint would fail; step_013 excludes it.
- Target conclusion false if source vanishes: no arbitrary-accuracy endpoint; route to `/proof-sketch`.

### step_016 -- quantitative specialization and baseline assembly

- Claim class: explicit-rate bridge, probability separation, runtime, and baseline specialization.
- Theorem role: assembles the technical ledger and terminal recurrence into the exact public target.
- Mechanism source: direct substitution of `k`, `P`, `nu_star`, fixed exponents, and the two already-proved probability statements.
- Source-to-claim adequacy: verify each auxiliary choice (`D_stat,D_gap,D_cap,D_ls,D_PL,c_tx,d_tx`), every polynomial condition, all term absorptions including `r^2e <= c_num nu^2`, separate union/tape conversion, epsilon-independent discovery work, and terminal work polynomial times `log(1/epsilon)`.
- Residual-to-target adequacy: public residual is exactly the Frobenius residual from step_015; the theorem does not replace it by a ledger surrogate. Exact-target baseline is checked by setting structural and numerical defects to zero.
- Key positive/control term: finite instance event, finite tape event, and exact PL recurrence.
- Opposing defects: hidden dependence, dropped numerical terms, merged probabilities, and accidental additive floor; each is prohibited without an explicit inequality and source.
- Closure/dominance relation: Rate Specialization Bridge order is auxiliary choice -> technical-condition verification -> term absorption -> probability conversion -> final rate. All exposed variables remain visible.
- Accumulation behavior / scope compatibility: finite discovery plus finite terminal horizon; no asymptotic or all-time upgrade.
- Obligation locality classification: step-local.
- Locality note: after steps_001--015 in a repaired branch.
- Noncircular closure status: public quantities trace to primitive assumptions and accepted earlier outputs; assembly introduces no invariant.
- Entry-state / first-update stress result: zero tensor branch returns joint zero before defining the seed; exact nonzero target follows event/tape path; epsilon=1- limit is covered.
- Baseline conclusion preserved: exact representation, rollback, joint-zero unused slots, and zero residual limit are unchanged; numerical padding is not an additive error.
- Producer-consumer provenance: step_016 consumes steps_001, 009, 012, 014, and 015 and is the final bridge.
- Null or boundary regime tested: orthogonal, exact target, zero tensor guard, largest allowed kappa/rho^(-1), separate confidence events, and all numerical `r^2 P^(-D_stat)` terms.
- Target conclusion false if source vanishes: dropped dependence or merged probability makes the public theorem invalid; route to `/proof-sketch`.

## Boundary And Example Stress Matrix

- Orthogonal equal-weight: `H=0`, `J=I`, `K=S=0`, `Tcal=0`, and the structural parts of `A,Theta,z,Upsilon,Xi` are zero. Finite e padding is only an analysis upper bound; actual accepted errors and forcing are zero. Singleton landscape, rollback, and terminal representation are exact.
- Two-label first transition: mode A is orthogonal and modes B,C have common correlation h. For `p=ell`, `(J-diag)` contains `eta_0 h^2` and dominates `2h^4+O(h^6)`; for `ell!=p`, `J=H` and no diagonal O(h^2) term appears. Numerical padding remains `O(r^2 P^(-D_stat))`.
- Three-label chain: direct p-to-ell correlations can vanish while KJ carries the first transitive h^3 path; Neumann powers carry longer chains without transitivity.
- Longer sparse chains: each transfer power is charged by `q_res^s` and summed geometrically before any label sum.
- Dense/block frames: row l2 <= nu and row l1 <= sqrt(r)nu are used; no operator norm of absolute Gram is invoked. Rootwise block-l2 is checked independently of l1.
- Numerical scale: every `e=P^(-D_stat)` term is displayed, rootwise as `sqrt(r)e`, globally as `r^2e`, and absorbed only after `(P-hierarchy)`.
- Entry-state/first-update: empty history, first certificate, first J diagonal increment, failed sign seed, and exact target stationary state are traced before repeated-scope claims.
- Generated flow: primitive assumptions -> E_inst -> H/J/K/S and transfer -> conditional Theta -> certificate/matching -> exact E/J update -> z/profile and global charge -> protected-state induction -> transaction/tape -> exact chart entry -> PL/Armijo -> public rate.
- Rates/probabilities: instance and tape probabilities remain separate; discovery is epsilon-independent; terminal horizon is logarithmic in epsilon; hidden constants have only stated class dependence.
- Baseline: exact target and zero-defect specialization retain exact representation and no-floor conclusion, rather than only vanishing defect terms.

## Binding Attempt-1 Blocker

The exact J transition is algebraically valid, but the additional uniform
two-label audit required by `setting.md` is not. Let

\[
 e=P^{-D_{\rm stat}},\qquad h=e^2,
\]

and choose base columns whose normalized two-label correlations are centered
at `H_A(1,2)=0` and `H_B(1,2)=H_C(1,2)=h`, with all other labels separated
and unit product weights. Choose the smoothing scale small enough to retain
the primitive margin. The Gaussian law has positive density on an open
realized neighborhood with `H_A(1,2)=O(h^2)` and
`H_B(1,2),H_C(1,2)=h(1+o(1))`; the exact equalities below are shorthand for
the corresponding limiting calculation, and continuity preserves the strict
orders. Thus `nu_real >= h` and every primitive assumption remains valid. The
empty state has a strict singleton certificate near label 1, so the first
accepted transition is allowed and has no failed-probe forcing.

At that transition, the stored definition `(J-z)` gives
`z_{1,B,2},z_{1,C,2} >= C_num e` even when the structural Neumann part is
`O(h^3)`. Therefore `(J-diag)` contains

\[
 (1+\eta_0)\{h z_{1,B,2}+h z_{1,C,2}}
 =\Omega(h e)=\Omega(e^3).
\]

The required setting display is
`O(h^4+e h^2)=O(e^8+e^5)`, which is asymptotically smaller for fixed hidden
constants. This is a direct first-transition contradiction, not a line-search,
probability, operator-norm, or repeated-scope issue. It survives exact radial
solving, exact angular stationarity, and exact rollback of all failed probes.

The static H/J/K and both transfer gaps remain viable. The one-time global
factorization also remains viable with the honest local estimate
`O(h^4+e h+e^2)`; its sum is still covered by the displayed global scale
`O(r nu_real^3+r^2 e)`. The weakest upstream repair is therefore to replace
the binding local `(J-two-label)` upper by that honest numerical split (or an
equivalent charge definition), then regenerate and re-formalize the idea.
Adding a primitive lower bound `h >= e^(1/3)` would instead narrow the source
class and is not selected as the repair.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_inst`, realized norms, Grams, weights, T bounds | step_001; primitive Gaussian and base assumptions | Base norm/Gram margins, Gaussian tails, dimension, smoothing scale | Tail and normalization errors are controlled by `rho,kappa,n`; deterministic base quantities are fixed | Produced realized factors and consumed T are identical objects in Euclidean/Frobenius metrics | Reserve each perturbation below one quarter of its primitive margin; Schur products give pair/triple bounds | `nu_star`, `1/16`, `2 Gamma_star` | steps_002, 003, 013, 016 | None |
| H/J/K row, column, leakage, and S source | step_002 from step_001 | H column l2 `<=nu`, Cauchy--Schwarz, derived weight ratio | Signed-Gram entries, Hadamard products, and row-sum `sqrt(r)nu`; no uncontrolled absolute-Gram operator term is used | Same realized Gram entries feed all score contractions | `||K||_1<=nu^2`, `||J||<=1+sqrt(r)nu`, then sum KJ | `nu` and `nu_star` | steps_003--008, 013 | None |
| l1 and rootwise transfer gaps | step_002 | Exact displayed Tcal, J restricted blocks, 3-mode adjacency norm 2 | eta and row-sum factors explicit; no trajectory term | Same array domain D and root block norm on both sides | `2(nu+eta)(1+sqrt(r)nu)`, then `C_0 Gamma_star` gives q <=1/4 | primitive Gram slack and fixed C_eta/C_0 | step_003, step_007 | None |
| Conditional `Theta_I` resolvent | step_003 | S, legal conditional A_I, numerical e, q gaps | Static, accepted-history, numerical classes are separated | Theta controls the exact current-residual correlation coordinates consumed by steps_004--007 | geometric Neumann sum; no A smallness hidden | `1-q_res`, `1-q_row` | steps_004, 005, 007 | None; A is explicitly conditional until step_009 |
| Current-residual isolation and certificate matching | steps_004--005 | Theta, static source, score/gradient/Hessian equations, capture and separation tests | H/K paths, actual history, e, guard, and mixed-support curvature defects | Actual scratch and exact realized atom share product-sphere and Euclidean metrics | singleton-vs-mixed gap dominates every listed defect; unmatched labels fail separation | inverse-polynomial angular gap, capture margin, separation `1/4` | steps_006, 009, 011, 014 | None |
| Calibration `(Cal)`, `(Diag-cal)`, `(R-euc)`, `(R-dir)`, injection | step_005 | Direction/radius stationarity, product-one signs, realized weight ratio | Off-diagonal Theta/e and diagonal quadratic normalization error | Exact accepted slot and exact target atom are the two objects in E and history | choose C_eta/C_0/C_num so off-diagonal error <=z and diagonal loss <=eta | eta_0 and `C_led` | steps_006--009, 014 | None |
| Exact `(R-tensor)`, `(J-charge)`, `(J-update)` and uniform `(J-two-label)` audit | step_006 | Accepted E expansion, calibration, weight ratio, exact target baseline | radial delta, signed products, direction errors, numerical padding; additive z padding creates `h e` on the allowed `h=e^2` boundary | Exact J update is target-compatible, but the required local audit target is not | product inequality proves honest `O(h^4+e h+e^2)`; it cannot imply the binding `O(h^4+e h^2)` uniformly | J identity and eta lower margin are valid; no source supplies the missing h lower bound | steps_008, 009 | **BLOCKER:** `/subagent-idea-generator` must revise the local audit/charge target |
| Stored z and `(J-row)` | step_007 | Prior prefix A budget, rootwise transfer, S, e | Prior accepted history and numerical all-ones source | Off-diagonal z controls exactly the correlations used in Xi/Upsilon; diagonal handled separately | rootwise Neumann bound and `P-hierarchy`; no entrywise r factor | `q_row<=1/4`, `r^2e<=c_num nu^2` | steps_008, 009 | None |
| `(J-global)`, `(R-hist-budget)`, `(R-budget)`, `(R-acc)` | steps_008--009 | Per-p factorized charge, rootwise z, prefix order, exact update | Nonnegative accepted forcing, diagonal eta term, HJ paths, Xi, e | Global LHS is still target-compatible under the honest `h e` local term | one-time p charge `C(nu^3+r e)` summed over at most r; retain then absorb numerical term | finite prefix `s<=r`, `q_res/q_row`, `(P-hierarchy)` | steps_004, 009, 014 | Blocked from unconditional theorem only because the binding local audit is a prerequisite |
| Transaction success or exact rollback | step_010 | Exact f, radial derivative, guard smoothness, Armijo and Hessian-vector calculations | zero score, no root, guard, line-search, and approximate-eigenvector errors | Scratch state is actual full-space state; rollback target is exact pretransaction joint-zero slot | accepted step >=P^(-D_ls), otherwise exact rollback | radius guard `2R_max`, `H_tx`, `Delta_tr` | step_011 and step_009 | None |
| History-uniform `p_tx` | step_011 | step_009 invariant, step_004 gap, Haar anti-concentration, step_010 dynamics | matched basins, ambiguous outcomes, score cancellation, finite work | Reached certificate is classified against exact unresolved atom; no target query | polynomial Haar window maps to certificate; union defects included in exponent | `(nr)^(-c_tx)`, `H_tx` | step_012 | None |
| All-commit tape event and actual final tuple | step_012 | Independent finite tape, p_tx, injection, rollback | tape exhaustion and failed probes only; no persistent failed forcing | Produced tuple is actual committed slots, consumed target is exact orbit | stopped geometric/binomial tail with `N_tx` | `C_tape`, target confidence `r^(-10)` | steps_014, 016 | None |
| Exact-target PL radius and constant | step_013 | Pair/triple Gram conditioning, balanced Jacobian, Taylor bounds | nonorthogonal cross terms and higher-order remainder | Reference and chart are the same exact target orbit and factor metric | Jacobian variation <= half singular-value reserve | `varrho_PL,mu_PL >=P^(-D_PL)` | steps_014, 015 | None |
| Actual chart entry | step_014 | All-commit `(R-euc)`, `(R-acc)`, realized weights, orbit alignment | finite accumulated direction/radius errors and r^2e | Explicit factor-distance decomposition compares actual tuple to exact Q-star | `C sqrt(r)eta_0+C r^2e <=varrho_PL/2` | chart radius from step_013 | step_015, 016 | None |
| Floor-free public relative-error rate | steps_015--016 | PL recurrence, Armijo smoothness, chart entry, epsilon range | Taylor/line-search terms and public simplification terms | Final metric is exact Frobenius residual against T | geometric loss contraction and explicit Rate Specialization Bridge | `mu_PL`, epsilon, separate probabilities | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| `E_inst` and exact realized target | step_001 from primitive assumptions | steps_002, 003, 013, 016 | instance probability and target representation | primitive assumptions -> step_001 -> all static/terminal modules | derived | None |
| H/J/K, leakage, S, and transfer gaps | step_002 | step_003, steps_004--008, step_013 | static source and small gain | step_001 -> step_002 -> resolvent/landscape/PL | derived | None |
| Conditional `Theta_I` | step_003 | steps_004, 005, 007 | current-residual direction bounds | step_002 -> step_003 -> conditional landscape/profile | derived | None |
| Conditional isolation certificate | steps_004--005 | steps_006, 009, 011, 014 | unique label and matched factor error | step_003 -> step_004 -> step_005 -> transition/induction/reachability | derived | None |
| Accepted error E and exact J update plus required uniform J-two-label audit | step_006 | steps_008, 009 | actual-history producer and first-transition audit | step_005 -> step_006 -> charge/induction | derived | Missing binding local target: `/subagent-idea-generator` |
| Rootwise z profile | step_007 | steps_006, 008, 009 | no-extra-multiplicity charge control | step_003 + prior prefix -> step_007 -> charge/induction | derived | None |
| J-global and history/accepted-error budgets | steps_008--009 | steps_004, 010--012, 014 | conditional/reusable invariant; unconditional export awaits audit repair | empty state -> prefix transition -> steps_008/009 -> later states | derived | The first-transition audit is a prerequisite under the current setting |
| Transaction success/rollback output | step_010 | step_011 and step_009 | valid next commit or unchanged state | invariant -> exact transaction -> success/rollback | derived | None |
| One-transaction p_tx | step_011 | step_012 | tape amplification | step_009 -> step_011 -> step_012 | derived | None |
| All-commit actual tuple | step_012 | step_014 | chart entry | step_009 -> step_011 -> step_012 -> step_014 | derived | No legal unconditional producer until the J-two-label target is repaired |
| Exact-target PL constants | step_013 | steps_014, 015 | local convergence mechanism | step_001 -> step_013 -> entry/descent | derived | None |
| Same-target chart entry | step_014 | steps_015, 016 | terminal endpoint | all-commit tuple + exact target -> step_014 -> PL descent/rate | derived | Discovery chain is blocked upstream by the binding audit |
| PL descent and residual rate | steps_015--016 | final theorem | arbitrary epsilon and runtime | step_014 -> step_015 -> step_016 | derived | None |

## Sketch Steps

None. The attempted end-to-end step graph is blocked by the binding
uniform `(J-two-label)` target at the first transition. The stable rows below
are retained only as diagnostic decomposition and reusable-prefix memory; they
are not offered as a viable theorem roadmap under the current setting.

## Attempted Diagnostic Step Decomposition

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | Construct `E_inst` with probability `1-r^(-10)`, all norm/Gram/weight/T bounds, and exact balanced target representation. | None | `assump:base-column-conditioning`, `assump:base-product-balance`, `assump:gaussian-smoothing`, `assump:dimension-regime`, `assump:smoothing-scale`, `assump:modewise-gram-margin` | Normalization, union tails, pair/triple conditioning, target guard. | Gaussian tail/epsilon-net derivation and direct product algebra. | `E_inst`, exact `Q^star`, T norm bounds. | R1; retain all exposed variables and confidence conversion. | PENDING |
| step_002 | Derive `R-src`, `R-leak-A`, `R-S-budget`, and both l1/rootwise transfer gaps with `q_res,q_row<=1/4`. | step_001 | `assump:modewise-gram-margin`, `assump:base-product-balance`; derived `E_inst`. | Absolute-Gram rows, Hadamard products, fixed-root block norm. | Cauchy--Schwarz, Schur products, 3-mode block operator bound. | H/J/K/S and `Tcal` interfaces. | R2 structural; expose `nu,r,Gamma_star,e`. | PENDING |
| step_003 | Prove convergent statewise Neumann envelope and conditional l1/rootwise bounds for any legal A, including empty A=0. | step_002 | Derived `E_inst`; conditional history array A. | Nonnegative resolvent and norm compatibility. | Geometric Neumann series in two induced norms. | `Theta_I`, `Theta_empty`. | R2; no hidden history assumption. | PENDING |
| step_004 | Under an explicitly conditional protected-prefix interface, prove current-residual score decomposition and singleton/mixed-support angular landscape dichotomy. | step_003 | Derived `E_inst`; local conditional `Inv(I)`; `assump:base-product-balance`. | Nonorthogonal residual, direct/transitive/longer paths, Hessian gap. | Direct product-sphere stationarity/Hessian calculation and perturbation inequalities. | Conditional isolation margin and certificate dichotomy. | R2; preserve static/history/numerical terms. | PENDING |
| step_005 | Turn `(Cert)` into one unique unresolved label, separation, `(Cal)`, `(Diag-cal)`, `(R-euc)`, `(R-dir)`, and injection extension. | step_004 | Local conditional interface; `assump:base-product-balance`. | Sign orbit, radial error, observable separation, target-object compatibility. | Radial root, angular equations, finite orbit matching. | Certificate-to-label producer and calibration. | R2; explicit eta/e dependence. | PENDING |
| step_006 | Expand accepted E, prove `(R-tensor)`, `(J-charge)`, `(J-update)` cyclically, `(J-diag)`, two-label dominance, and off-diagonal J=H reduction. | step_005 | Derived calibration; `assump:base-product-balance`. | Absolute scalar expansion and diagonal normalization. | Exact multilinear expansion and product majorization. | Exact transition charge and Xi. | R2; retain numerical e and weight ratio. | PENDING |
| step_007 | From a prior prefix history budget, derive rootwise z profile `(J-row)` with no extra multiplicity. | step_003 | Derived `E_inst`; conditional prior budget from prefix induction. | Rootwise versus entrywise norms and numerical all-ones term. | Fixed-root block-l2 Neumann estimate. | Stored zero-diagonal z and rowwise bound. | R2; expose `sqrt(r)e` before absorption. | PENDING |
| step_008 | Factor per-p J charges and Xi, sum every root/label/mode/commit once, and prove `(J-global)` plus one-step history/R-acc inequalities. | step_006, step_007 | Derived calibration; prior-prefix row bound; `assump:base-product-balance`. | Avoid `r` or `sqrt(r)` overcount and control diagonal charges. | Cauchy--Schwarz factorization and finite one-time ledger. | Per-p charge, global U, provisional budgets. | R2; target `O(r nu^3+r^2e)`. | PENDING |
| step_009 | Close the full protected-state induction from empty history through all r commits, deriving all budgets and generated injection. | step_002, step_003, step_004, step_005, step_006, step_007, step_008 | All primitive assumptions only; prior-prefix outputs as derived dependencies. | Noncircular base/transition ordering and unresolved-root bookkeeping. | Finite induction using steps_004--008. | Unconditional `Inv(I_s)`, J-global, R-hist-budget, R-budget, R-acc. | R2; uniform finite horizon `s<=r`. | PENDING |
| step_010 | Prove radial/angular/negative-curvature transaction dynamics, guard, inverse-polynomial accepted steps, and exact rollback. | step_009 | `assump:random-tape`; derived protected state; protocol constants. | Full-space unprojected dynamics and finite-work globalization. | Exact derivatives, safeguarded bisection, Armijo, approximate eigensolver. | Certificate or exact rollback outcome. | R3; discovery work independent of epsilon. | PENDING |
| step_011 | Prove history-uniform fresh Haar transaction reaches `(Cert)` with probability `p_tx` within `H_tx`. | step_004, step_005, step_009, step_010 | `assump:random-tape`; derived state and `E_inst`. | Activation window, matched-label rejection, basin flow, probability separation. | Direct orthogonal-coordinate anti-concentration plus step_010 flow. | Conditional one-transaction success event. | R3; expose `p_tx,H_tx,c_tx,d_tx`. | PENDING |
| step_012 | Amplify independent tape to all r distinct commits with conditional probability `1-r^(-10)` and polynomial discovery work. | step_009, step_011 | `assump:random-tape`; derived injection/rollback. | Stopped geometric tail and separate probability accounting. | Binomial/geometric tail and finite union. | Final actual committed tuple and tape event. | R3; `N_tx` and no epsilon dependence. | PENDING |
| step_013 | Prove exact-target balanced Jacobian nondegeneracy, chart radius, and PL constant. | step_001 | Derived pair/triple conditioning; `assump:base-product-balance`. | Gauge removal, nonorthogonal Jacobian, Taylor remainder. | Direct balanced CP Jacobian and continuity. | `varrho_PL,mu_PL >=P^(-D_PL)`, PL inequality. | R4; regularity-exponent explicit. | PENDING |
| step_014 | Transfer actual all-commit tuple into exact target chart with explicit factor-distance residual bound. | step_005, step_008, step_012, step_013 | Derived all-commit outputs; `assump:rank-regime`. | Same-target residual-to-target bridge and numerical absorption. | Orbit alignment, triangle/Cauchy--Schwarz, `(R-acc)`. | Chart-entry certificate. | R4; verify `C sqrt(r)eta_0+C r^2e <= varrho_PL/2`. | PENDING |
| step_015 | Prove first-exit invariance and exact-loss Armijo geometric convergence to relative epsilon error. | step_013, step_014 | `assump:accuracy-range`; derived chart entry. | Unprojected balanced updates, Taylor/Armijo, no floor. | PL + smoothness + path-length first-exit argument. | Terminal iterate and Frobenius residual. | R4; `poly(...) log(1/epsilon)`. | PENDING |
| step_016 | Verify public Rate Specialization Bridge, separate probabilities, rank/runtime substitutions, and baseline exact limit. | step_001, step_009, step_012, step_014, step_015 | All nine primitive assumptions; derived outputs. | Hidden dependence, term absorption, confidence conversion, baseline. | Direct substitution and explicit inequalities. | Final material-partial theorem statement. | R1--R4; all exposed variables retained. | PENDING |

## Dependency Notes

The attempted diagnostic graph is acyclic through the static prefix and the
conditional transition modules. Steps 001--003 remain reusable. Steps
004--008 expose the exact conditional interfaces that would be needed for a
repaired idea, and step 009 would be the first noncircular induction producer.
The path breaks before that producer can be consumed: the allowed first
certificate on the `h=e^2` two-label family violates the binding local
`(J-two-label)` export. Consequently steps 009--016 cannot be accepted as an
unconditional theorem path under the current setting, even though their
conditional algebra and downstream PL modules remain useful repair memory.

The blocked generated-output path is

`primitive assumptions -> E_inst -> static H/J/K and transfer -> conditional
Theta -> conditional certificate/matching -> exact J update -> [uniform
J-two-label audit FAILS] -> rootwise/global induction -> transaction/tape ->
exact-target PL chart -> public rate`.

## Blockers

1. **Binding uniform `(J-two-label)` target is false.** On the allowed family
   `H_A(1,2)=0`, `H_B(1,2)=H_C(1,2)=h=e^2`, the additive numerical part of
   `(J-z)` gives `z_{1,B,2},z_{1,C,2} >= C_num e`. The exact `(J-diag)` charge
   is therefore at least a constant multiple of `h e=e^3`, while the required
   upper is `O(h^4+e h^2)=O(e^8+e^5)`. This persists at the exact first
   accepted transition with exact radial/angular stationarity and no failed
   probe forcing. Locality: `idea/theorem-contract defect`.
2. **Unconditional generated-output flow is blocked at the first transition.**
   The exact J update and the broader global factorization can be proved, but
   the binding audit is a required exported interface. Moving it into a
   theorem assumption or deleting the branch would violate assumption
   provenance or target scope. Locality: `idea/theorem-contract defect`.
3. **Weakest upstream repair.** Regenerate/re-formalize the idea with the
   honest local numerical bound `O(h^4+e h+e^2)` (or an equivalent charge
   definition) while retaining the global `O(r nu^3+r^2 e)` budget. Do not add
   `h>=e^(1/3)` as a new primitive condition, since that narrows the approved
   source class. Retry target: `/subagent-idea-generator`.
