# Proof Sketch

## Formalized Setting

The binding branch is `perspective_2/idea_7` in target-spec mode. It uses the
exact asymmetric CP least-squares objective and the full-space sequential
transaction protocol in `setting.md`. Its nine primitive conditions are

- `assump:base-column-conditioning`,
- `assump:base-product-balance`,
- `assump:gaussian-smoothing`,
- `assump:dimension-regime`,
- `assump:smoothing-scale`,
- `assump:modewise-gram-margin`,
- `assump:rank-regime`,
- `assump:random-tape`, and
- `assump:accuracy-range`.

All realized norm/Gram facts, the absolute-Gram kernels, the transfer gap,
the certificate label, the injection, the accepted-history array, the
Neumann envelope, the all-commit budget, transaction success, same-target
chart entry, and terminal invariance are derived outputs. In particular,
neither `(R-ledger)` nor `(R-acc)` may be inserted into a good-state
assumption.

## Formalized Goal

The requested material-partial theorem must, uniformly over the primitive
source class,

1. produce the once-drawn event with instance probability at least
   \(1-r^{-10}\) and derive `(R-src)`, static weighted leakage, the static
   source budget, the transfer norm, and `(R-gap)`;
2. derive at every protected state a unique unresolved-label certificate,
   `(R-euc)`, `(R-dir)`, the actual-history source, the exact tensor/history
   updates, and the all-commit bounds `(R-hist-budget)`--`(R-acc)`;
3. prove history-uniform one-transaction success probability
   \((nr)^{-c_{\rm tx}}\), amplify it on the finite independent tape to all
   \(r\) distinct commits with conditional tape probability at least
   \(1-r^{-10}\), and preserve exact rollback; and
4. enter a same-target balanced PL chart and return an iterate with relative
   Frobenius residual at most \(\epsilon\), in polynomial discovery work and
   \(\operatorname{poly}(n,r,k,\kappa,\rho^{-1})\log(1/\epsilon)\) terminal
   work, without an additive floor.

The displayed `(R-update)` is part of the binding goal, not optional
bookkeeping. It must hold for every unresolved root \(j\), every tested label
\(\ell\ne j\), and each cyclic mode after a commit matched to \(p\).

## Sketch Identity

- Branch: `perspective_2/idea_7`.
- Sketch attempt: 1.
- Retry mode: initial sketch.
- Progress type: `material_partial`.
- Binding artifacts: final `setting.md`, `proof_tracker.md`, and `idea.md`.
- Diagnostic memory: `perspective_2/idea_6/proof_sketch_review.md`.
- Technical-survey disposition: no selected end-to-end framework; the static
  Gram/resolvent and conditional terminal-chart modules are backups.

## Proof Roadmap

The proposed roadmap was audited in the following order.

1. **Static realized geometry.** Normalized Gaussian concentration and the
   primitive Gram margin plausibly produce the once-drawn event. Columnwise
   Cauchy--Schwarz, rather than an operator inequality for
   \(|G_M-I|\), gives `(R-src)`, `(R-leak-A)`, and the cyclic bounds.
2. **Lifted static source and Neumann closure.** The identity part of
   \(J_M=I+H_M\) preserves direct degree-two terms; its \(H_M\) part
   preserves the first three-label \(h^3\) chain. Powers of the nonnegative
   transfer preserve longer rooted chains. A direct column-sum calculation
   supports the displayed `l1` transfer norm and hence the formal Neumann
   inverse for sufficiently large fixed \(C_\nu\).
3. **Certificate and accepted-history induction.** Angular stationarity was
   intended to export `(R-euc)` and `(R-dir)`, after which exact expansion of
   every accepted \(E_i\) was intended to prove `(R-tensor)`, `(R-update)`,
   and the all-root/all-commit budget with no second factor \(r\).
4. **Reachability, amplification, and terminal refinement.** The generated
   protected-state interface was intended to feed full-space angular
   reachability, exact rollback, finite-tape amplification, same-target chart
   entry, and a floor-free PL recurrence.

The roadmap stops at item 3. The formal history source allows the tested
label \(\ell\) to equal the newly captured label \(p\), because it requires
only \(\ell\ne j\). The scalar contraction then contains the diagonal factor
\(\langle u_{p,M},m_{p,M}\rangle\simeq1\). The binding `(R-charge)` replaces
that factor by \(H_M(p,p)+z_{p,M,p}\), but \(H_M(p,p)=0\) and the lifted
arrays have zero diagonal (or at most the separately added numerical
padding). Thus `(R-update)` has no structural source for a generally nonzero
accepted-history term.

This is not the absolute-Gram operator-norm problem and not idea 6's missing
\(h^3\) endpoint. The new Neumann source repairs those two issues. It is a
distinct identity-channel omission in the exact history update.

### Exact two-label entry-state obstruction

Embed the following two labels into any allowed larger rank by making all
remaining labels modewise orthogonal. Take equal product weights and unit
norms. In mode \(A\), let \(m_{1,A}\perp m_{2,A}\). In modes \(B,C\), let

\[
\langle m_{1,B},m_{2,B}\rangle
=\langle m_{1,C},m_{2,C}\rangle=h,
\qquad 0<h<\nu_\star/4.
\tag{O.1}
\]

This has modewise Gram deviation \(h\) and balanced weights. Choose the
primitive smoothing slack so that the base margin holds. As the allowed
ambient dimension increases, the realized normalized Gram data concentrate
around a small perturbation of `(O.1)`, while \(P^{-D_{\rm stat}}\) tends to
zero. Strict critical points and the calculation below persist on this open
Gram neighborhood.

For the limiting two-label score, write

\[
m_{2,B}=h m_{1,B}+\sqrt{1-h^2}\,b_\perp,
\qquad
m_{2,C}=h m_{1,C}+\sqrt{1-h^2}\,c_\perp.
\]

By the symmetry between modes \(B,C\), the strict score maximum near label 1
has equal angular parameter \(\theta\) in these two modes. Put

\[
\alpha=\cos\theta,
\qquad
\beta=h\cos\theta+\sqrt{1-h^2}\sin\theta.
\]

After optimizing the mode-\(A\) direction, the squared score is

\[
\Phi(\theta)=\alpha^4+\beta^4.
\tag{O.2}
\]

At \(\theta=0\),

\[
\Phi'(0)=4h^3\sqrt{1-h^2},
\qquad
\Phi''(0)=-4+12h^2-16h^4<0
\]

for small \(h\). The implicit-function theorem at the pure label-1 maximum
therefore gives a strict local maximum

\[
\theta_h=h^3+O(h^5).
\tag{O.3}
\]

Let \(v_h,w_h\) be its mode-\(B,C\) directions and set

\[
\lambda_h=(\alpha_h^4+\beta_h^4)^{1/2},
\qquad
u_h={\alpha_h^2m_{1,A}+\beta_h^2m_{2,A}\over\lambda_h},
\qquad
g_h^3=\lambda_h.
\tag{O.4}
\]

At the empty protected state this is an exact radial/angular stationary
point. Its radial error and angular-gradient error are zero, its normalized
angular Hessian has a positive constant-order gap for small \(h\), capture
is positive constant order, separation is vacuous, and its radius is inside
the guard. Hence it satisfies `(Cert)` for all sufficiently large \(P\).

Match the certificate to \(p=1\), leave root \(j=2\) unresolved, and test
\(\ell=1=p\) in mode \(A\). For

\[
E_1=g_h^3u_h\otimes v_h\otimes w_h
-m_{1,A}\otimes m_{1,B}\otimes m_{1,C},
\]

the exact history increment is

\[
\begin{aligned}
\left\langle E_1,
m_{1,A}\otimes m_{2,B}\otimes m_{2,C}\right\rangle
&=\lambda_h\langle u_h,m_{1,A}\rangle\beta_h^2-h^2\\
&=\alpha_h^2\beta_h^2-h^2\\
&=2h^4+O(h^6).
\end{aligned}
\tag{O.5}
\]

Consequently

\[
A_{\{1\};2,A,1}-A_{\varnothing;2,A,1}
=2h^4+O(h^6)>0.
\tag{O.6}
\]

The binding charge instead has

\[
H_A(1,1)=0,
\qquad
H_A(1,1)H_B(1,2)H_C(1,2)=0.
\tag{O.7}
\]

Under the declared zero-diagonal lifted convention,
\(z_{1,A,1}=0\), so \(\Upsilon^A_{1;2,1}=0\). Even if the later
\(C_{\rm num}P^{-D_{\rm stat}}\) padding is interpreted as applying on the
diagonal, the empty-state Neumann calculation gives

\[
z_{1,B,2}+z_{1,C,2}=O(h^3+P^{-D_{\rm stat}}),
\]

and hence

\[
\Upsilon^A_{1;2,1}
=O(P^{-D_{\rm stat}}h^2+P^{-2D_{\rm stat}}).
\tag{O.8}
\]

There is no upper bound on \(n\). With all structural parameters fixed at an
allowed rank, increasing \(n\) makes `(O.8)` smaller than `(O.6)`. The
realized Gram data converge to the displayed open strict-critical-point
regime, so the failure occurs with probability tending to one, rather than
on an event that may be discarded within the \(r^{-10}\) budget.

The correct raw absolute majorant for the tested-mode factor is
\(J_A(p,\ell)+z_{p,A,\ell}\), not
\(H_A(p,\ell)+z_{p,A,\ell}\). Replacing \(H_A\) by \(J_A\) in
`(R-charge)` and propagating the new diagonal charges through the cyclic
history and global budget would change a binding theorem-facing generated
output. It is therefore an upstream formalization/idea repair, not a legal
same-setting proof-sketch repair.

The issue cannot be removed by reading the phrase "tested label" as imposing
three-way distinctness. The formal `(R-hist-src)` domain requires only
\(\ell\ne j\), so after capturing \(p\), the coordinate \(\ell=p\) is part
of \(A_I\). The direction certificate `(R-dir)` also tests every
\(\ell\ne j\), including captured labels. Excluding this coordinate would
therefore be a target-changing deletion rather than a proof convention.

## Rate Objectives

### Once-drawn geometry and lifted-kernel rate

- Objective type: structural-parameter explicit and confidence-explicit.
- Exposed variables: \(n,r,\kappa,\rho,\Gamma_\star,\nu_{\rm base},
  \nu_{\rm real},\nu_\star,P\), all displayed fixed proof exponents, and the
  `l1` norms of \(S,\mathcal T,\Theta_I,A_I\).
- Hidden constants may depend on: fixed class constants
  \(c_0,c_\rho,C_{\rm dim},C_{\rm sm},C_\nu,C_{\rm rank},\Gamma_\star\)
  and fixed protocol constants.
- Hidden constants may not depend on: \(n,r,k,\kappa,\rho\), the realized
  instance, the protected history, or commit order.
- Fixed quantities: the deterministic base triple and all fixed class and
  protocol constants while instance randomness is sampled.
- Probability mode: high probability over the instance only, at least
  \(1-r^{-10}\), uniformly over the deterministic base class.
- Horizon mode: once-drawn, trajectory-uniform finite discovery horizon.
- Norm mode: modewise operator norm for signed Grams; row/column `l2` and
  entrywise `l1` for absolute-Gram kernels and lifted arrays. No
  \(\||G_M-I|\|_{\rm op}\) interface is allowed.
- Required bridge or simplification obligations: derive `(R-src)`,
  `(R-S-budget)`, `(R-gap)`, and every numerical absorption from the nine
  primitive assumptions. The history bridge is blocked by `(O.6)`--`(O.8)`.
- Baseline invariance obligations: on exactly orthogonal equal-weight data,
  all structural off-diagonal ledger quantities vanish, leaving only the
  declared numerical tolerance.

### Transaction and all-commit rate

- Objective type: fixed-horizon, history-uniform conditional probability,
  and algorithmic-complexity explicit.
- Exposed variables: \(n,r,k,\kappa,\rho,P,H_{\rm tx},N_{\rm tx},
  c_{\rm tx},d_{\rm tx},D_{\rm stat},D_{\rm gap},D_{\rm cap},D_{\rm ls}\).
- Hidden constants may depend on: fixed class, trust-region, Armijo, and tape
  constants only.
- Hidden constants may not depend on: protected history, unresolved label,
  commit order, instance within its event, or \(\epsilon\).
- Fixed quantities: a fixed realized good instance and the protected history
  before drawing the next unused tape entry.
- Probability mode: conditional on the instance and every already-generated
  protected history, one-step probability at least
  \((nr)^{-c_{\rm tx}}\); separately, all commits with tape probability at
  least \(1-r^{-10}\).
- Horizon mode: at most \(H_{\rm tx}\) work per transaction and finite
  \(N_{\rm tx}\) tape; discovery work independent of \(\epsilon\).
- Norm mode: exact objective decrease, normalized radial/angular errors,
  factor displacement, and Euclidean direction/radius matching.
- Required bridge or simplification obligations: a valid deterministic
  certificate-to-protected-state export must precede tape amplification.
  `(O.6)`--`(O.8)` remove that producer.
- Baseline invariance obligations: failed transactions reset exactly to
  joint zero and create no forcing.

### Strictly subquadratic rank specialization

- Objective type: structural-parameter explicit public specialization.
- Exposed variables: \(r,k=C_{\rm rank}r^{3/2}(\log(2r))^2\), \(n,\kappa,
  \rho\), and fixed class constants.
- Hidden constants may depend on: fixed class constants and polynomial
  degrees only.
- Hidden constants may not depend on: \(n,r,k,\kappa,\rho\), instance, or
  tape.
- Fixed quantities: fixed class constants as \(r\) grows.
- Probability mode: the two separate \(1-r^{-10}\) statements; they may be
  combined only by an explicit union bound if a public joint statement is
  made.
- Horizon mode: finite discovery.
- Norm mode: algorithmic rank and arithmetic-operation complexity.
- Required bridge or simplification obligations: verify \(r<k<r^2\),
  substitute polynomial bounds on \(\kappa,\rho^{-1}\), and prove that the
  global ledger already sums all roots/labels/modes rather than multiplying
  by \(r\) again. The binding one-step history charge is false before this
  accumulation argument can start.
- Baseline invariance obligations: preserve the exact source objective and
  rank-\(r\) exact representation inside the rank-\(k\) state.

### Terminal arbitrary-accuracy rate

- Objective type: numerical-error explicit finite-horizon convergence.
- Exposed variables: \(n,r,k,\kappa,\rho,P,\epsilon,\varrho_{\rm PL},
  \mu_{\rm PL},D_{\rm PL}\) and Armijo constants.
- Hidden constants may depend on: fixed class and line-search constants only.
- Hidden constants may not depend on: \(\epsilon\), realized instance,
  commit order, or terminal iteration index.
- Fixed quantities: the good instance and final matched active set during
  the terminal run.
- Probability mode: deterministic conditional on the successful finite
  discovery event.
- Horizon mode: finite
  \(\operatorname{poly}(n,r,k,\kappa,\rho^{-1})\log(1/\epsilon)\).
- Norm mode: Euclidean factor distance to the exact sign/permutation orbit,
  balanced-gradient Frobenius norm, and relative tensor Frobenius residual.
- Required bridge or simplification obligations: all-commit matching must
  produce same-target chart entry; local PL plus exact-loss Armijo must give
  first-exit invariance and a geometric recurrence with no additive term.
  The entry producer is unavailable under the current history target.
- Baseline invariance obligations: the exact balanced target is a zero-loss
  stationary state; unused slots are exactly zero; \(\epsilon\downarrow0\)
  introduces no floor.

## Assumption Provenance Objectives

| Needed output or invariant | Provenance required | Primitive source or intended producer | Downstream consumers | Status under final setting |
| --- | --- | --- | --- | --- |
| Once-drawn realized norm/Gram/weight event | derived | `assump:base-column-conditioning`, `assump:base-product-balance`, `assump:gaussian-smoothing`, `assump:dimension-regime`, `assump:smoothing-scale`, `assump:modewise-gram-margin` plus direct concentration | every dynamic module | plausible static prefix |
| `(R-src)`, weighted leakage, and `S` budget | derived | realized event plus columnwise Cauchy--Schwarz | resolvent and angular landscape | supported at obstruction level |
| Transfer gap and existence of `Theta_I` | derived | static prefix, fixed constants, direct nonnegative `l1` column sums | direction certificate and history induction | supported pointwise once `A_I` exists |
| Unique label, `(R-euc)`, `(R-dir)` | derived | intended current-residual stationarity/Hessian theorem using `S+A_I` and `Theta_I` | history update, injection, next state, chart entry | not independently contradicted by the two-label test, but no complete roadmap is allocated |
| Exact accepted-history update `(R-update)` | derived | intended exact expansion of the newly accepted `E_i` | `(R-hist-budget)`, `(R-budget)`, `(R-acc)`, every later landscape | false at first commit by `(O.6)`--`(O.8)` |
| All-state history and influence budget | derived invariant | intended nonnegative one-step charge plus one-time global `l1` summation | history-uniform transaction theorem and all commits | no legal producer because its required charge is false |
| Per-state transaction success and rollback | derived | generated protected-state invariant, `assump:random-tape`, direct radial/angular and exact-reset analysis | tape amplifier | rollback locally exact; valid-success output has no protected-state producer |
| All `r` distinct commits | derived invariant | per-state success, fresh tape, and injection | terminal chart | blocked upstream |
| Same-target chart and PL invariance | derived invariant | all-commit factor matching plus direct balanced Jacobian/Taylor/Armijo proof | arbitrary-accuracy iterate | conditionally plausible but entry producer absent |
| Public polynomial rate and no-floor endpoint | derived specialization | all preceding outputs plus `assump:rank-regime`, `assump:accuracy-range` | final theorem | no end-to-end dependency path |

No generated condition in this table may be moved into the theorem
assumptions. Doing so would change an unconditional target into a conditional
one.

## Mechanism-Source And Boundary Stress

### Static absolute-Gram and transfer prefix

- Step ID: N/A; the roadmap is blocked before stable Step IDs are allocated.
- Claim class: static kernel bounds, positive small-gain margin, and formal
  Neumann existence.
- Theorem role: proposed producer of the structured direction envelope.
- Mechanism source: direct current-notation algebra on the realized normalized
  signed Grams. The convention is exactly `setting.md`: \(H_M=|G_M-I|\),
  \(J_M=I+H_M\), entrywise `l1` arrays, and no absolute-Gram operator norm.
- Source-to-claim adequacy: each column of \(H_M\) has `l2` norm at most
  \(\nu_{\rm real}\), so Cauchy--Schwarz gives each \(K_M\) column sum at
  most \(\nu_{\rm real}^2\). For a fixed input coordinate
  \((j,B,t)\), its output-column sum is bounded by
  \((H_C(j,t)+\eta_0)\sum_{\ell\ne j}J_A(t,\ell)\) plus the cyclic output,
  yielding the displayed
  \(2(\nu_{\rm real}+\eta_0)(1+\sqrt r\nu_{\rm real})\) bound.
- Residual-to-target adequacy: produced and consumed objects are the same
  realized normalized factors and the same lifted array norm; there is no
  whitening or surrogate transfer.
- Key positive/control term or structural source: the identity in \(J_M\)
  and \(1-q_{\rm res}\ge3/4\).
- Opposing defect terms: \(\sqrt r\nu_{\rm real}\), \(\eta_0\), and the
  numerical all-ones source of `l1` size \(3r(r-1)P^{-D_{\rm stat}}\).
- Closure/dominance/absorption relation: choose the already-declared fixed
  \(C_\nu\) and then \(D_{\rm stat}\) so
  \(C_0\Gamma_\star\|\mathcal T\|_{1\to1}\le1/4\) and
  \(r^2P^{-D_{\rm stat}}\) is subordinate at the displayed public scale.
- Accumulation behavior / scope compatibility: Neumann paths are
  geometrically summable, with the `s`th transfer charged by
  \(q_{\rm res}^s\); this is pointwise in a fixed protected state and does
  not itself control changes of \(A_I\) across commits.
- Obligation locality classification: `step-local` for the static prefix.
- Noncircular closure status: the event precedes the trajectory and the
  transfer is fixed by the realized target; `A_I` must still be produced by
  accepted-history algebra before each statewise inverse is consumed.
- Entry-state / first-update stress result: at \(I=\varnothing\),
  \(A_I=0\) exactly and the Neumann envelope exists. This does not validate
  its first update.
- Baseline conclusion preserved: at exact orthogonality, \(H=K=S=0\) and
  only the explicit numerical source remains.
- Producer-consumer provenance: primitive assumptions -> realized event ->
  kernel/transfer bounds -> intended certificate theorem.
- Null or boundary regime tested: orthogonal factors, zero off-diagonal
  kernels, dense signed Grams with large \(\||G-I|\|_{\rm op}\), and the
  first empty state.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: the formal Neumann inverse remains valid at zero source; the
  history update obstruction below is independent.
- Repair route if source is unsupported: none needed for this prefix.

### Transitive and longer direction chains

- Step ID: N/A; no stable steps are allocated.
- Claim class: support adequacy of the lifted direction source.
- Theorem role: intended repair of idea 6's false pair-local certificate
  ledger.
- Mechanism source: direct expansion of
  \(S_{j,A,\ell}=(K_AJ_A)_{j\ell}\) and powers of the nonnegative transfer.
- Source-to-claim adequacy: the identity part of \(J_A\) supplies the direct
  \(H_BH_C\) term, while the \(H_A\) part supplies
  \(\sum_tH_B(j,t)H_C(j,t)H_A(t,\ell)\), including the exact \(h^3\)
  endpoint from idea 6. Each additional transfer power attaches another
  rooted two-mode error propagation and is bounded by \(q_{\rm res}^s\).
- Residual-to-target adequacy: the entries test the actual certificate error
  against the same realized label \(m_{\ell,M}\); no reference-target
  mismatch is introduced.
- Key positive/control term or structural source: nonnegativity and the
  diagonal identity in \(J_M\).
- Opposing defect terms: quadratic products of local direction errors and
  finite stationarity tolerance.
- Closure/dominance/absorption relation: `(R-euc)` would make each quadratic
  product at most a fixed multiple of \(\eta_0\) times a linear error,
  placing it in `R-transfer`; numerical residual enters the all-ones source.
- Accumulation behavior / scope compatibility: longer within-certificate
  chains are geometrically summable. Cross-commit history is a separate
  scope and is not controlled by this relation.
- Obligation locality classification: `step-local` for support/source shape,
  conditional on a valid actual-history input; no full certificate theorem is
  asserted here.
- Noncircular closure status: static `S` and the fixed transfer precede the
  certificate, while actual history must precede the state certificate.
- Entry-state / first-update stress result: at the empty state the two-label
  example produces \(z_{1,A,2}=\Theta(h^2)\) and transfer-produced
  \(z_{1,B,2},z_{1,C,2}=O(h^3)\), so the earlier transitive direction error
  is not omitted.
- Baseline conclusion preserved: all structural chains vanish when every
  target Gram is the identity.
- Producer-consumer provenance: event -> `S` and transfer -> `Theta_I` ->
  intended `(R-dir)`.
- Null or boundary regime tested: the idea-6 zero-direct-pair three-label
  family and longer sparse chains.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes for idea 6, but the current `S` does not vanish there.
- Repair route if source is unsupported: none identified at this source
  level; the separate history interface fails below.

### Exact first accepted-history update

- Step ID: N/A; this obstruction prevents a step graph.
- Claim class: generated recurrence, structural support, and all-commit
  invariant seed.
- Theorem role: sole legal producer of the first nonzero \(A_I\) and hence of
  every later protected-state envelope.
- Mechanism source: binding `(R-charge)` and exact accepted-error expansion.
  The source convention is the current realized tensor, normalized target
  factors, actual accepted \(E_i\), and the absolute scalar in
  `(R-hist-src)`.
- Source-to-claim adequacy: failed. The actual tested-mode factor is
  \(|\langle u_{p,A},m_{\ell,A}\rangle|\), which is bounded by
  \(J_A(p,\ell)+|\langle e_{p,A},m_{\ell,A}\rangle|\). The binding charge
  uses \(H_A\) instead of \(J_A\), so it loses the identity contribution at
  \(\ell=p\).
- Residual-to-target adequacy: the produced object is the actual scalar
  increment in \(A_{I;j,A,\ell}\); the consumed target is the right side of
  `(R-update)` in the same scalar norm. Equations `(O.6)`--`(O.8)` leave a
  structural \(2h^4+O(h^6)\) residual against a zero or
  \(O(P^{-D_{\rm stat}}h^2)\) allowance. The residual is not dominated.
- Key positive/control term or structural source: none in the binding charge
  for the tested-mode diagonal.
- Opposing defect terms: a persistent, nonnegative accepted-history
  contribution. Absolute values prevent cancellation, and exact rollback
  applies only to failed probes.
- Closure/dominance/absorption relation: unsupported. Increasing \(n\) makes
  the only possible numerical allowance smaller while preserving the strict
  certificate and structural increment.
- Accumulation behavior / scope compatibility: failure is pointwise at the
  first commit. Repeated-scope language cannot repair it.
- Obligation locality classification: `idea/theorem-contract defect` because
  the exact binding generated-output target must change from \(H_M\) to a
  diagonal-aware \(J_M\) charge and all cyclic/history consumers must be
  re-audited.
- Noncircular closure status: failed. Empty history -> first certificate does
  not imply the declared first nonempty history bound, so no later state may
  consume `(R-hist-budget)` or `(R-acc)`.
- Entry-state / first-update stress result: `(O.1)`--`(O.8)` starts at
  \(I=\varnothing\), where history is exactly zero, and traces the first
  accepted certificate. The mechanism is already inactive when the first
  nonzero history output is required.
- Baseline conclusion preserved: exact orthogonality \(h=0\) hides the
  defect, but every sufficiently small nonzero allowed \(h\) exposes it.
- Producer-consumer provenance: empty history + first certificate -/->
  `(R-update)` -> intended history budget -> next certificate, tape, chart.
- Null or boundary regime tested: \(\ell=p\), zero diagonal of every
  normalized Gram deviation, exact stationarity, exact radial root, vacuous
  first separation, and arbitrarily small numerical tolerance.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes; the history increment remains positive while its declared
  charge vanishes.
- Repair route if source is unsupported: upstream formalization/idea repair
  replacing the tested-mode \(H_M\) factor by \(J_M\), followed by a new
  all-root/all-commit accumulation audit. Do not patch it inside this sketch.

### All-root/all-commit history and influence budget

- Step ID: N/A; its one-step producer is blocked.
- Claim class: repeated-scope generated invariant and quantitative
  specialization.
- Theorem role: keep all accepted-error forcing below the static
  \(\nu_{\rm real}^2\) angular-isolation scale without an extra factor \(r\).
- Mechanism source: intended exact `(R-update)`, nonnegative Neumann
  small gain, and a single global `l1` sum over roots, tested labels, and
  modes.
- Source-to-claim adequacy: the no-extra-\(r\) bookkeeping is plausible
  because `(R-S-budget)` already sums all array coordinates. It is not an
  adequate source for omitted diagonal history increments.
- Residual-to-target adequacy: the target is actual \(\|A_I\|_1\) plus the
  produced off-diagonal influence profiles. The missing \(\ell=p\) charge is
  an actual coordinate of \(A_I\), not a surrogate residual that can be
  discarded.
- Key positive/control term or structural source: intended
  \(r\nu_{\rm real}^3\ll\nu_{\rm real}^2\) and geometric
  \((1-q_{\rm res})^{-1}\).
- Opposing defect terms: nonnegative one-step history increments, numerical
  padding over \(O(r^2)\) coordinates, and quadratic direction-error terms.
- Closure/dominance/absorption relation: absent for the diagonal increment.
  The formal `(R-update)` is the required one-step charge and is false.
- Accumulation behavior / scope compatibility: unsupported before repeated
  scope. A corrected \(J\)-charge might still sum at
  \(O(r\nu_{\rm real}^3)\), but that inequality is not a current output.
- Obligation locality classification: `idea/theorem-contract defect` through
  dependence on the false binding update.
- Noncircular closure status: no. Assuming `(R-hist-budget)` at each state
  would assume the generated invariant whose transition is missing.
- Entry-state / first-update stress result: the first transition already
  fails; there is no opportunity for a later global budget to compensate.
- Baseline conclusion preserved: the budget is zero in the orthogonal exact
  case, but the formal theorem covers nonzero allowed correlations.
- Producer-consumer provenance: intended history update -> global `l1`
  budget -> protected landscape -> all commits. The first edge is invalid.
- Null or boundary regime tested: one captured label, one unresolved root,
  and tested label equal to the captured label.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: the displayed all-state proof path is absent even if a coarser
  budget might ultimately be true.
- Repair route if source is unsupported: upstream charge and consumer
  redesign, then recheck that no new label sum introduces another factor
  \(r\).

### Certificate reachability, tape amplification, and generated labels

- Step ID: N/A; downstream of the failed history transition.
- Claim class: nondegenerate reachability, conditional probability upgrade,
  injection maintenance, and finite-horizon recurrence.
- Theorem role: produce all \(r\) distinct committed labels.
- Mechanism source: intended current-residual angular landscape, exact radial
  bracketing, negative-curvature two-sign trials, a polynomial Haar basin,
  separation, exact rollback, and fresh tape independence.
- Source-to-claim adequacy: radial bracketing and rollback are direct exact
  current-notation algebra. The strict-saddle papers named in `idea.md` use
  different objectives/procedures and are motivation only; the present
  angular trichotomy and polynomial basin would require direct proofs. Even
  ideal reachability cannot export a valid protected state because the
  deterministic history update is false.
- Residual-to-target adequacy: certificates are compared directly to
  unresolved realized atoms. The intended output additionally includes the
  actual-history invariant, which fails independently of reachability error.
- Key positive/control term or structural source: positive score gives a
  unique radial root; negative angular Hessian gives a descent trial; fresh
  Haar mass would supply activation; separation plus unique labels would
  extend the injection.
- Opposing defect terms: ambiguous saddles, guard exits, finite stationarity
  tolerance, small Haar basin, and the missing accepted-history output.
- Closure/dominance/absorption relation: exact rollback makes failed-probe
  forcing identically zero. Tape amplification can control repeated failure
  probability only after each success exports a valid new protected state;
  that deterministic interface is absent.
- Accumulation behavior / scope compatibility: stopped finite-tape
  amplification is compatible with history-uniform success, but cannot
  amplify validity of a false output.
- Obligation locality classification: `idea/theorem-contract defect` for the
  end-to-end valid-transaction claim; local radial/rollback identities remain
  `step-local` reusable material.
- Noncircular closure status: invalid protected-state producer prevents the
  conditional probability theorem from being iterated.
- Entry-state / first-update stress result: the exact strict first
  certificate in `(O.4)` is already a commit-time success and already breaks
  the required output. Ideal seeds and exact oracles do not help.
- Baseline conclusion preserved: failed probes still roll back exactly, but
  accepted errors remain and are not removed by rollback.
- Producer-consumer provenance: valid protected state -> fresh transaction ->
  valid extended state -> tape amplification. The second arrow fails.
- Null or boundary regime tested: zero score, exact radial root, exact
  stationary certificate, first empty state, and ideal tape.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: all-commit validity lacks a producer even if all attempts reach
  certificates.
- Repair route if source is unsupported: repair the history interface before
  spending proof attempts on the angular basin or amplifier.

### Same-target PL entry and no-floor terminal convergence

- Step ID: N/A; conditional downstream module only.
- Claim class: basin membership, coercivity, first-exit invariance,
  contraction, and exact-limit recovery.
- Theorem role: convert finite discovery error to arbitrary relative
  Frobenius accuracy.
- Mechanism source: intended direct balanced CP Jacobian lower bound from
  pair/triple Gram conditioning, Taylor remainder control, and exact-loss
  trust-region Armijo decrease around the exact nonorthogonal target orbit.
- Source-to-claim adequacy: plausibly adequate only after the actual committed
  tuple is produced inside the same target chart. The cited ALS literature
  does not provide that entry for this GD protocol.
- Residual-to-target adequacy: the proposed chart uses the actual exact
  balanced target, not an orthogonalized surrogate. The missing residual is
  the discovery-to-chart factor distance because all-commit matching has no
  legal producer.
- Key positive/control term or structural source: smallest singular value of
  the balanced CP Jacobian and exact zero loss at \(Q^\star\).
- Opposing defect terms: Taylor remainder, chart-boundary distance,
  line-search displacement, and missing entry.
- Closure/dominance/absorption relation: conditionally, Jacobian coercivity
  can dominate the quadratic remainder and Armijo can yield a geometric
  recurrence with no additive term. It cannot prove its own entry.
- Accumulation behavior / scope compatibility: terminal error would be
  contractive, with discovery error used only as initialization. This scope
  is unavailable end to end.
- Obligation locality classification: local PL geometry is conditionally
  `step-local`; theorem-facing entry and convergence are
  `idea/theorem-contract defect` through the missing discovery producer.
- Noncircular closure status: a first-exit proof is noncircular only after a
  valid entry bound; using PL to create entry would be circular.
- Entry-state / first-update stress result: at the exact target, the
  conclusion is already true and gradient is zero. At a valid interior entry,
  the first Armijo update would decrease exact loss. No current proof path
  produces such an entry from the algorithm.
- Baseline conclusion preserved: exact representation, joint-zero unused
  slots, exact rollback, and arbitrary \(\epsilon\downarrow0\) are retained
  as requirements, not weakened to a floor or conditional surrogate.
- Producer-consumer provenance: intended all-commit matching -> chart entry
  -> PL/first exit -> public \(\epsilon\)-iterate. The first edge is absent.
- Null or boundary regime tested: exact target, chart boundary, zero
  residual, and \(\epsilon\downarrow0\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: without entry, local coercivity does not imply an algorithmic
  trajectory theorem.
- Repair route if source is unsupported: preserve this conditional module
  only after upstream history and discovery repair.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Once-drawn realized event | Primitive assumptions plus normalized Gaussian concentration | Base column bounds, product balance, dimension, smoothing, signed-Gram slack | Gaussian norm/Gram errors are controlled; no trajectory objects are included | Produced and consumed tensor/factors are the same realized objects | Finite-union perturbation must fit inside the declared half-margin | Positive base norms and `assump:modewise-gram-margin` | all later modules | None at obstruction level |
| `(R-src)` and static leakage | Realized event plus direct Cauchy--Schwarz | Signed-Gram column `l2` norm and realized weight ratio | Row/column absolute sums controlled; absolute-Gram operator norm deliberately uncontrolled | Same realized label contractions | \(\sum_tH_N(j,t)H_L(j,t)\le\nu_{\rm real}^2\) | positive \(\tau_j\), product balance | `S`, transfer, angular landscape | None |
| `S`, transfer norm, and statewise Neumann inverse | Static kernels plus direct nonnegative column sums | `R-src`, \(\eta_0\), fixed constants, and actual `A_I` when produced | Within-state paths controlled geometrically; cross-commit history not controlled here | Same lifted coordinates and realized labels | \(q_{\rm res}\le1/4\) gives \((I-C_0\Gamma_\star\mathcal T)^{-1}\) | primitive Gram slack and fixed \(C_\nu\) | intended certificate theorem | Requires a legally produced `A_I`, but no absolute-Gram op-norm blocker |
| `h^3` and longer-path direction support | `S` and Neumann powers | Identity in `J`, off-diagonal `H`, nonnegative transfer | Direct, first-transitive, and longer paths controlled; local quadratic errors need `(R-euc)` | Tests actual errors against actual realized labels | each additional path is charged by one transfer and summed by \(q_{\rm res}^s\) | diagonal identity and Neumann gap | intended `(R-dir)` | None at support-shape level |
| Exact first history update `(R-update)` | No legal producer under binding `(R-charge)` | Actual accepted `E_p`, `(R-dir)`, radial error, target Grams | Off-diagonal products and numerical errors have sources; tested-mode diagonal identity is uncontrolled | Actual increment `(O.6)` versus declared charge `(O.8)` in the same scalar metric; residual \(2h^4+O(h^6)\) is undominated | Required inequality is false for \(p=\ell\ne j\) | no structural margin in `H_M(p,p)` | history budget, next landscape, all commits | diagonal `H`-versus-`J` source mismatch |
| `(R-hist-budget)`, `(R-budget)`, `(R-acc)` without extra `r` | Intended exact update plus one-time global `l1` sum | Static `S`, Neumann gap, proposed `Xi/Upsilon` charges | Global off-diagonal sums may be finite; omitted nonnegative diagonal-tested history coordinates persist | LHS contains the actual missing coordinate of `A_I` | no-extra-`r` summation cannot compensate for a false one-step majorant | intended \(r\nu^3\ll\nu^2\) slack | all later protected states | false transition; corrected charge needs new accumulation audit |
| Unique label and extended injection | Intended angular certificate theorem | Static kernels, legally produced history, stationarity, Hessian, capture, separation | angular perturbation and numerical errors require direct proof; current history input unavailable after first commit | certificate and target are same realized factors | intended isolation margin must dominate static plus accepted forcing | weighted target amplitude and angular gap | next transaction and chart | no valid nonempty protected-state producer |
| History-uniform transaction success | Intended Haar basin and deterministic globalization | fresh tape, exact residual, radial identity, angular derivatives, protected invariant | basin and line-search defects unproved; rollback defect exactly zero; valid success output false | reached certificate must export the same invariant consumed next | probability cannot dominate a deterministic false history output | candidate curvature and Haar mass | tape amplifier | protected-state export missing |
| All `r` commits | Intended stopped amplification | fresh independence and hypothetical per-state valid success | repeated failures controlled probabilistically; accepted-history validity uncontrolled | actual commits must match all distinct realized targets | binomial tail applies only to valid one-step successes | \(p_{\rm tx}\) | chart entry | no valid per-state success event |
| Same-target PL entry | Intended all-label `(R-euc)` matching | exact target Gram conditioning and hypothetical valid commits | finite factor errors could be summed; all-commit producer absent | actual tuple is compared directly to exact orbit in Euclidean factor distance | required entry distance must be below \(P^{-D_{\rm PL}}\) | balanced Jacobian chart radius | terminal PL | broken discovery-to-entry path |
| Public arbitrary-accuracy rate | Intended PL/Armijo specialization | exact target, valid entry, local smoothness and coercivity | terminal Taylor/line-search defects plausibly controlled; missing entry is not | exact target and relative Frobenius endpoint coincide with theorem target | geometric contraction plus explicit iteration count, with no additive term | positive \(\mu_{\rm PL}\) and exact zero loss | final theorem | no end-to-end producer path |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Realized good-instance event | primitive assumptions plus direct concentration | every dynamic block | instance probability and deterministic conditioning | primitive assumptions -> event -> static/dynamic analysis | derived | None locally |
| Absolute-Gram row/column bounds and weighted leakage | realized event plus direct Cauchy--Schwarz | static source, transfer, angular analysis | structural error scale | event -> kernel algebra -> landscape | derived | None |
| Static `S` and transfer gap | kernel bounds plus fixed-constant arithmetic | statewise `Theta_I` | transitive/long-chain certificate support | event -> `S,T` -> Neumann inverse | derived | None once actual history exists |
| Empty history and envelope | exact empty protected state plus static source | first certificate | starts discovery induction | empty state -> `A_empty=0` -> `Theta_empty` | derived | None |
| First certificate direction profile | intended direct angular stationarity proof using `Theta_empty` | accepted-error expansion | first label and error profile | empty envelope -> certificate -> `(R-dir)` | derived | plausible source shape, but not fully allocated because next interface is false |
| First nonempty actual history satisfying `(R-update)` | no legal producer; contradicted by `(O.6)`--`(O.8)` | history budget, second landscape, every later transaction | recurrence and all-commit validity | first accepted `E_1` -/-> binding charge | derived | tested-mode diagonal identity omitted |
| Statewise all-commit ledger | intended update plus global `l1` budget | all later landscapes and transaction theorem | uniform accepted-error control | valid update -> history induction -> `(R-acc)` | derived | predecessor update false |
| Exact rollback | direct joint-zero reset | repeated attempts and no-floor endpoint | failed probes create no forcing | failure -> reset -> identical protected state | derived | None locally; does not remove accepted errors |
| History-uniform valid transaction | intended protected landscape plus fresh Haar tape | finite-tape amplifier | one new label per stage | valid state -> transaction -> valid extended state | derived | extended state lacks history producer |
| All `r` distinct commits | intended stopped conditional amplification and injection | chart entry | complete discovery | per-state valid success -> all commits | derived | per-state valid event unavailable |
| Same-target chart entry | intended all-label Euclidean matching | PL and first-exit proof | starts terminal phase | all commits -> factor-distance bridge -> chart | derived | all-commit producer absent |
| PL constants and invariant terminal chart | intended direct balanced Jacobian/Taylor proof | terminal recurrence | floor-free refinement | entry -> PL -> invariant updates | derived | entry unavailable |
| Arbitrary-`epsilon` iterate and public polynomial rate | intended terminal recurrence and specialization | final theorem | relative Frobenius guarantee | all preceding outputs -> rate bridge | derived | no primitive-to-final DAG |

## Sketch Steps

None

## Dependency Notes

No acyclic target-preserving Step-ID graph exists under the final
`setting.md`. The reusable legal prefix is

\[
\text{nine primitive assumptions}
\longrightarrow {\cal E}_{\rm inst}
\longrightarrow \{(R\text{-src}),\ S,\ \mathcal T,\ q_{\rm res}\}
\longrightarrow \Theta_\varnothing.
\]

The new lifted source correctly retains the idea-6 \(h^3\) obstruction and
longer Neumann paths. The required first dynamic recurrence edge is instead

\[
\text{first accepted certificate}
\longrightarrow \text{exact `(R-update)`}
\longrightarrow \text{valid nonempty }A_I.
\]

Equations `(O.6)`--`(O.8)` make the first arrow false for the allowed branch
\(p=\ell\ne j\). Every all-root/all-commit budget, later certificate,
conditional transaction probability, tape amplifier, same-target entry, and
terminal rate consumes the missing nonempty-history output. Allocating those
as later proof steps would hide a false generated recurrence and violate
assumption provenance, noncircular closure, entry-state activation, scope
accumulation, exported-interface feasibility, and generated-output flow.

The smallest mathematical correction is diagonal-aware history charging,
for example replacing the tested-mode \(H_M\) factor in `(R-charge)` by
\(J_M=I+H_M\) and propagating this change through every cyclic and global
budget consumer. That changes a binding formalized generated-output target.
It must be approved upstream and then receive a new all-commit `l1` audit;
it cannot be silently adopted in sketch attempt 1.

## Blockers

1. **The binding `(R-update)` is false on the tested-label diagonal.** For
   the allowed two-label family `(O.1)`, an exact strict certificate matched
   to \(p=1\) produces
   \(A_{\{1\};2,A,1}-A_{\varnothing;2,A,1}
   =2h^4+O(h^6)>0\). The declared charge uses
   \(H_A(1,1)=0\) and is zero under the lifted diagonal convention, or only
   \(O(P^{-D_{\rm stat}}h^2)\) under the most generous numerical-padding
   interpretation. This is an `idea/theorem-contract defect` in the exact
   formalized generated-output target. Smallest retry target:
   `/subagent-idea-generator` after an upstream diagonal-aware
   formalization/idea revision.
2. **The all-commit budget has no legal first-transition source.** The
   global array norm may avoid an extra factor \(r\), but it cannot bound a
   coordinate omitted by its one-step majorant. Absolute values make the
   missing accepted-history forcing persistent, while exact rollback removes
   only failed probes. Thus `(R-hist-budget)`, `(R-budget)`, and `(R-acc)`
   have no noncircular producer path.
3. **Certificate-to-label reachability and tape amplification cannot bypass
   deterministic invalidity.** Even the exact strict first certificate,
   ideal angular/radial oracles, and an ideal tape fail to export the required
   protected state. Probability amplification begins only after a valid
   one-step state transition exists.
4. **The terminal same-target and no-floor modules are downstream-only.** A
   direct balanced PL calculation may be locally viable and the exact target
   baseline remains correct, but no current all-commit output places the
   algorithm's actual tuple in that chart. Replacing the theorem by a
   conditional PL statement would weaken the formalized goal.
5. **A same-sketch repair is not authorized.** The diagonal-aware correction
   \(H_M(p,\ell)\mapsto J_M(p,\ell)\) must change `(R-charge)`, its cyclic
   forms, and the history/influence accumulation interfaces in final
   `setting.md`. After that upstream change, a new sketch must recheck the
   \(r\nu_{\rm real}^3\) budget and ensure the added diagonal charges do not
   introduce another label factor. The valid static resolvent prefix can be
   reused. Smallest retry target: `/subagent-idea-generator` (not a
   same-setting `/proof-sketch` repair).
