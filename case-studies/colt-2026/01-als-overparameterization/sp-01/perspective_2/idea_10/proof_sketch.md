# Proof Sketch

## Formalized Setting

This is proof-sketch attempt 2 for `perspective_2/idea_10` in
`revise_sketch` mode after the archived attempt-1 review. The binding idea and setting are unchanged and have the
controller-pinned SHA-256 identities

- `idea.md`: `298e6b77cf8edd14ab27e3672ab9cd0ba12a43e6f97037e183f480266af8b013`;
- `setting.md`: `c901dbc848dbbdbc09856210be4928ef068fa14541cb719eff34cdffc12e3d19`.

The only primitive assumptions are:

- `assump:base-column-conditioning`;
- `assump:base-product-balance`;
- `assump:gaussian-smoothing`;
- `assump:dimension-regime`;
- `assump:smoothing-scale`;
- `assump:modewise-gram-margin`;
- `assump:rank-regime`;
- `assump:random-tape`; and
- `assump:accuracy-range`.

All realized norm, Gram, Khatri--Rao, absolute-Gram, source-normal,
protected-span, matching, leverage, history, row-profile, transaction, chart,
and convergence properties are derived. In particular, `(Lev-normal)`,
`(Lev-raw)`, `(Lev-route)`, unresolved-neighborhood screen passage,
`(J-row)`, `(Lev-Jdiag)`, `(J-global)`, and protected-prefix validity
are not theorem assumptions or certificate clauses.

The objective and target are exactly

\[
F(X,Y,Z)=\frac12\left\|T-\sum_{i=1}^k
x_i\otimes y_i\otimes z_i\right\|_F^2,
\qquad
k=\left\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\right\rceil,
\]

with \(r<k<r^2\). Nonzero slots are tensor-preservingly balanced and unused
slots are joint zero. Discovery starts from all joint-zero slots, uses the
finite independent full-space Haar tape, unprojected radial, angular-gradient,
and two-sign negative-curvature trials, and commits only when both `(Cert)`
and the observable `(Lev)` screen pass. The QR/SVD projectors are queried
only by the screen and never modify a factor. Every failure, including screen
failure, rolls the scratch slot back exactly. After \(r\) distinct commits,
unused slots are pruned and the committed slots undergo joint unprojected
balanced exact-loss Armijo gradient descent in the exact-target chart.
The unchanged seed, trust, and tape scales are
\[
a_{\rm seed}=\|T\|_FP^{-120},\qquad
\delta=a_{\rm seed}^{1/3},\qquad
\Delta_{\rm tr}=P^{-20},
\]
\[
H_{\rm tx}=\lceil P^{d_{\rm tx}}\rceil,\qquad
N_{\rm tx}=\left\lceil C_{\rm tape}r(nr)^{c_{\rm tx}}\log(2r)\right\rceil.
\]
A negative seed score is corrected by the prescribed one-mode sign flip and
a zero score fails. Every angular trial is followed by radial re-bracketing,
both signs of an approximate negative-curvature vector are tested, and every
trial uses the exact loss and the displacement cap \(\Delta_{\rm tr}\).

For proof bookkeeping abbreviate

\[
e=P^{-D_{\rm stat}},\qquad \nu=\nu_{\rm real},\qquad
\eta_0=C_\eta(\Gamma_\star\nu^2+e),
\]
\[
\bar\eta=C_\eta^+
\left(\Gamma_\star(2\nu_\star)^2+e\right),\qquad
\tau_{\rm up}=4\Gamma_\star\|T\|_F.
\]
\[
g_{\min}=\tau_{\min}^{1/3},\qquad
g_{\max}=\tau_{\max}^{1/3},\qquad
\chi_\tau=g_{\max}/g_{\min}\le(2\Gamma_\star)^{1/3}.
\]

On the once-drawn event, choose \(C_\eta^+\) so
\(\eta_0\le c_{\rm sp}\bar\eta\) with a fixed
\(c_{\rm sp}<C_{\rm sp}\). For a protected prefix \(I\), write

\[
B_1(I)=C_1|I|\tau_{\rm up}\bar\eta,
\qquad
B_2(I)=C_2|I|\tau_{\rm up}\bar\eta^2+
C_{\rm nor}|I|\|T\|_F P^{D_{\rm nor}-D_{\rm stat}}.
\]

These are exactly the protocol quantities \(B_I^{(1)}\) and
\(B_I^{(\ge2)}\), not analysis-only replacements. Constants and exponents are
selected in the forward order

\[
\text{class/source constants},\ C_{\rm sp},C_\eta^+,C_1,C_2,C_{\rm nor},
\gamma_{\rm lev},\ D_{\rm nor},\ D_{\rm cap},D_{\rm gap},D_{\rm lb},
D_{\rm pass},\ \text{polynomial guard degrees},\quad
D_{\rm stat},D_{\rm ls},D_{\rm PL},
\]

where \(0<\gamma_{\rm lev}<1/64\) and \(D_{\rm stat}\) is chosen after
\(D_{\rm nor}\) with enough fixed polynomial slack for every displayed raw
normal, neighborhood-passage, line-search, and chart-entry comparison. This
order makes \(P^{D_{\rm nor}-D_{\rm stat}}\) an explicit small term; it never
becomes an assumption.

The event partition

\[
{\cal E}_{\rm lb}=\{\nu\ge P^{-D_{\rm lb}}\},\qquad
{\cal E}_{\rm lb}^c=\{\nu<P^{-D_{\rm lb}}\}
\]

is analysis-only. Unlike the exhausted idea-9 route, the instance theorem
does not condition on a positive lower bound for \(\nu\). On
\({\cal E}_{\rm lb}^c\), including \(\nu=0,e>0\), every
\(\bar\eta^2\) and \(P^{D_{\rm nor}-D_{\rm stat}}\) term remains raw and is
dominated only by the observable score floor in `(Lev)`. On
\({\cal E}_{\rm lb}\), optional comparisons of numerical terms with structural
scales may be used only after their explicit inequalities are proved. The raw
rootwise and global J budgets are valid on both branches.

The central same-target identity is the exact generated decomposition

\[
R_I=T_{U_I}+E_I^{(1)}+E_I^{(\ge2)}+D_I,
\qquad D_I=(\operatorname{Id}-\Pi_\star)R_I.
\]

For every unit scratch tensor \(\psi=u\otimes v\otimes w\), the roadmap
derives

\[
|\langle E_I^{(1)},\psi\rangle|
\le B_1(I)\Lambda_I^+,
\qquad
|\langle E_I^{(\ge2)},\psi\rangle|+|\langle D_I,\psi\rangle|
\le B_2(I).
\tag{Sketch-Lev-raw}
\]

Thus `(Lev)` implies, without a source lower tail,

\[
|s_M|\le(\gamma_{\rm lev}+1/64)s_I,
\qquad
W_U\ge(1-2\gamma_{\rm lev}-1/32)s_I.
\tag{Sketch-Lev-route}
\]

This is the sole mass-routing interface. No exchange property is assumed and
no protected-label matched-mixture conclusion is consumed. The
landscape module receives only the exact unresolved mass \(T_{U_I}\), the raw
residual comparison above, the current state, and the already-produced
history envelope.

For the J module, every local \(z\)-profile is defined with zero diagonal.
The unconditional row output remains

\[
\|z_p\|_{{\rm root},2}\le
C_z(\nu^2+r\nu^3+\sqrt r\,e).
\tag{Sketch-J-row-raw}
\]

The optional \(C'_z\nu^2\) simplification is used only on a branch where
\(\sqrt r\,e\le c\nu^2\) has been proved, or in the exact \(H=e=0\) limit.
The raw bound itself gives, using \(r\nu=O(1/\log r)\),

\[
\eta_0\nu^2+\nu\|z_p\|_{{\rm root},2}
+\|z_p\|_{{\rm root},2}^2+r e
\le C(\nu^3+r e),
\]

so `(Lev-Jdiag)` and the off-diagonal KJ/Neumann factorization yield the
uniform all-commit budget

\[
{\mathfrak U}_s\le C_J\Gamma_\star r\nu^3+C_Jr^2e,
\qquad s\le r,
\]

with no later tested-label, unresolved-root, or commit multiplier.

## Repaired Landscape And Margin Interfaces

The following objects are proof-only current-state interfaces. They are
defined before any support or label is selected and are never queried by the
algorithm.  Write \(e=P^{-D_{\rm stat}}\), \(R_I^\parallel=\Pi_\star R_I\),
\(s^\parallel=\langle R_I^\parallel,u\otimes v\otimes w\rangle\), and
\(t=g^3\).  For \(M\in\{A,B,C\}\), let \(M_M=[m_{1,M},\ldots,m_{r,M}]\),
\(D_M=M_MG_M^{-1}\), \(x_M=M_M^\top u_M\),
\(\alpha_M=G_M^{-1}x_M\), and \(d_{j,M}=D_Me_j\).  The exact current-frame
identities are

\[
 \langle d_{j,M},m_{\ell,M}\rangle=\mathbf 1_{j=\ell},
 \qquad P_{\star,M}u_M=M_M\alpha_M,
 \qquad \|P_{\star,M}u_M\|_2^2=x_M^\top G_M^{-1}x_M.
\tag{Act-dual}
\]

For every legal prefix, define the root-free (preselection) envelope

\[
 \Theta_{\rm act}(I):=
 \max_{j\in U_I}\max_{M\in\{A,B,C\}}
 \left(\|\Theta_{I;j,M,\boldsymbol\cdot}\|_2+e\right),
\tag{Theta-act}
\]

with value \(e\) when \(U_I=\varnothing\).  The complete current array,
including the \(A_I\) history source and numerical \(e\mathbf1\), is used in
this maximum; no root-specific row is selected yet.  The producer bound is

\[
 \Theta_{\rm act}(I)\le C_\Theta\bigl(
 \nu^2+r\nu^3+r^2e+\sqrt r\,e\bigr).
\tag{Theta-act-bound}
\]

To make the source-normal interface explicit, set

\[
 q_{\rm nor}(I):=C_{\rm nor,0}\max_{M,t}
 \sum_{q<t}|\langle u_{q,N},u_{t,N}\rangle
                   \langle u_{q,L},u_{t,L}\rangle|,
 \qquad\{M,N,L\}=\{A,B,C\},
\tag{q-nor}
\]

and

\[
 \Lambda_{\rm nor}(I):=C_{\rm nor,0}\left(
 \|T\|_F+\|R_I\|_F+\tau_{\max}|I|\eta_0\right).
\tag{Lambda-nor}
\]

Prior (R-euc), the realized pair-Gram reserve, and the finite prefix bound
give \(q_{\rm nor}(I)\le1/4\).  The post-fit normal forcing is therefore
defined and exported as \(\|b_{t,M}\|_2\le e\Lambda_{\rm nor}(I)\), and

\[
 \|D_I\|_F\le {C_{\rm nor}|I|\|T\|_F e\over1-q_{\rm nor}(I)}
 \le C_{\rm nor}|I|\|T\|_F P^{D_{\rm nor}-D_{\rm stat}}.
\tag{nor-export}
\]

The radial and angular certificate supplies the positive denominator before
any division: \(s_I\ge\sqrt2\|R_I\|_FP^{-D_{\rm cap}/2}\),
\(t\ge c_R\tau_{\min}P^{-D_{\rm cap}/2}/2\), and, with

\[
 \zeta_M=\bigl(R_I^\parallel\mathbin{\times_{N\ne M}}u_N^\top\bigr)
          -s^\parallel u_M,
 \qquad \|\zeta_M\|_2\le N_I(g)e/t,
\tag{Act-zeta}
\]

the exact projected-stationarity equations, for every unresolved \(j\), are

\[
 \tau_jx_{j,N}x_{j,L}-s^\parallel\alpha_{j,M}
 =h_{j,M}+\langle d_{j,M},\zeta_M\rangle,
 \qquad |h_{j,M}|\le C_h\tau_{\max}\bigl(\Theta_{\rm act}+e\bigr).
\tag{Act-stat}
\]

Define the finite normalized tangent families

\[
 z_{j,M}=P_{u_M^\perp}d_{j,M},\qquad
 \xi_M^{p,q}=\alpha_{q,M}d_{p,M}-\alpha_{p,M}d_{q,M},
 \qquad
 \widehat\xi=\xi/\|\xi\|_{\rm prod},
\tag{Act-tangent}
\]

including one-mode, two-mode, and synchronized three-mode choices, with zero
components in modes not listed.  Each \(\xi^{p,q}\) is tangent because the two
scalar products cancel.  For a unit tangent triple put

\[
 \mathcal Q_I(\xi):=-{\langle H_{\rm ang}\xi,\xi\rangle\over N_I(g)}.
\tag{Act-Q}
\]

Direct differentiation of the exact product-sphere score gives

\[
 -N_I(g)\mathcal Q_I(\xi)=
 2\langle R_I^\parallel,\xi_A\otimes\xi_B\otimes w+
 \xi_A\otimes v\otimes\xi_C+u\otimes\xi_B\otimes\xi_C\rangle
 -s^\parallel\sum_M\|\xi_M\|_2^2+\Delta_{\rm raw}(\xi),
\tag{Act-Hess}
\]

where the exact residual/history/source-normal/radial/angular/numerical
defects obey

\[
 |\Delta_{\rm raw}(\xi)|\le\epsilon_{\rm act}(I,g):=
 C_{\rm act}\tau_{\max}\!\left[\nu^2+r\nu^3+\sqrt r\,e+
 \Theta_{\rm act}(I)\right]
 +C_{\rm act}\!\left[B_I^{(\ge2)}+{N_I(g)e\over t}\right].
\tag{epsilon-act}
\]

The unresolved support calculation uses the fixed scales
\(\beta_\tau=1/(8\sqrt r)\) and
\(\mu_{\rm act}=c_{\rm act}\tau_{\min}/r^2\).  Its exported, raw inequalities
are

\[
 12\epsilon_{\rm act}+3B_I^{(\ge2)}\le\mu_{\rm act},
 \qquad
 g^3\mu_{\rm act}\ge 8N_I(g)P^{-D_{\rm gap}},
\tag{Act-margin}
\]

and every non-singleton unresolved support pattern has a member of
\(\{\widehat\xi,z_{j,M}\}\) with
\(\mathcal Q_I(\xi)\ge4P^{-D_{\rm gap}}\), contradicting the observable
Hessian certificate.  A root-specific row is consumed only after step_005
selects \(p\); all preselection quantities above are root-free.

### Three-branch numerical ledger

Let \(B_{\rm str}(s)=C_J\Gamma_\star s\nu^3\) and
\(B_{\rm num}(s)=C_Js^2e\).  On the derived branch

\[
 \mathcal E_{\rm lb}=\{\nu\ge P^{-D_{\rm lb}}\},
\]

the fixed forward choice of \(D_{\rm stat}\) gives

\[
 \sqrt r\,e\le c_{\rm lb}\nu^2,
 \quad r^2e\le c_{\rm lb}\nu^2,
 \quad B_{\rm str}(r)+B_{\rm num}(r)\le c_{\rm iso}\nu^2.
\tag{LB-margin}
\]

Only on this branch may the raw row and ledger be written as
\(\|z_p\|_{{\rm root},2}\le C'_z\nu^2\) and
\({\mathfrak U}_s\le c_{\rm iso}\nu^2\).  On
\(\mathcal E_{\rm lb}^c\), including \(\nu=0,e>0\), no term is absorbed into
\(\nu^2\).  Instead, for every passing certificate, the observable scales

\[
 \mathfrak m_{\rm obs}(q;I):=\min\left\{
 s_I,\ {\Delta F_I(q)\over\|R_I\|_F^2},\ {g^3\over N_I(g)},\
 P^{-D_{\rm gap}}\right\}
\]

and the fixed exponent order give the separate raw comparison

\[
 C_{\rm raw}\bigl[\nu^2+r\nu^3+\sqrt r\,e+r^2e+
 \Theta_{\rm act}(I)\bigr]
 \le {1\over32}\mathfrak m_{\rm obs}(q;I),
\tag{RAW-margin}
\]

while the two screen clauses separately give \(B_I^{(\ge2)}\le s_I/64\) and
\(B_I^{(1)}\Lambda_I^+\le\gamma_{\rm lev}s_I\).  Thus the complement branch
uses score/capture/Hessian margins, not a lower-tail absorption.  In the exact
\(H=e=0\) limit every actual error, \(z\), charge, and ledger term is exactly
zero, so both branch displays reduce to equality.  This explicitly reconciles
the setting's chained J-row notation: its terminal \(C'_z\nu^2\) is a
branch-qualified specialization (or the exact zero-limit identity); the raw
first inequality is the theorem-facing output on \(\mathcal E_{\rm lb}^c\).
No public target, procedure, probability, or baseline clause is changed.

## Formalized Goal

Prove the exact `material_partial` theorem in `setting.md`, without
changing its objective, procedure, probability modes, rank, runtime, endpoint,
or baseline:

1. From the six source assumptions, construct one once-drawn event
   \({\cal E}_{\rm inst}\) of instance probability at least \(1-r^{-10}\)
   that gives nonzero realized columns and
   \[
   (2\kappa)^{-1}\le\|a_j\|,\|b_j\|,\|c_j\|\le2\kappa,\qquad
   \tau_{\max}/\tau_{\min}\le2\Gamma_\star,\qquad
   \nu\le2\nu_\star,
   \]
   pair/triple Gram gaps at \(1/16\), \(T\ne0\), and the exact balanced
   target, `(R-src)`, cyclic leakage, \(S\), both transfer gaps, and all
   deterministic quantities entering the observable leverage screen.
2. Starting from \(I=\varnothing,A_\varnothing=0\), close a finite
   generated-prefix induction. At every prefix derive `(Lev-split)`, the raw
   guarded source-normal recurrence, both inequalities in `(Lev-raw)`,
   genuine unresolved-neighborhood passage through `(Lev)`, and
   `(Lev-route)` on both \({\cal E}_{\rm lb}\) and its complement. Every
   state passing `(Cert)` and `(Lev)` must be a unique
   product-one-signed \(O(\eta_0)\) perturbation of one unresolved realized
   atom and must export `(R-euc)`, `(R-dir)`, and the extended injection.
   Screen failure causes exact rollback.
3. For every commit, prove `(R-tensor)`, the symmetric positive/baseline
   `(J-charge)` and `(J-update)` in all modes, including the
   captured-label diagonal. On the isolated O.1 family retain the honest
   \(O(h^4+eh+e^2)\) scale and a matching positive lower control through the
   boundary \(h=e^2\). Prove the raw rootwise profile, `(Lev-Jdiag)`, the
   off-diagonal KJ factorization, `(J-global)`, `(R-hist-budget)`,
   `(R-budget)`, and `(R-acc)`, counting every contribution once.
4. Prove a history-uniform one-transaction success probability
   \(p_{\rm tx}\ge(nr)^{-c_{\rm tx}}\), an inverse-polynomial accepted-step
   floor, exact rollback for all failures, and finite-tape recovery of all
   \(r\) distinct labels with conditional tape probability at least
   \(1-r^{-10}\). Discovery work, including every QR/SVD and screen query, is
   polynomial in \(n,r,k,\kappa,\rho^{-1}\) and independent of \(\epsilon\).
5. Prove same-target PL entry, first-exit invariance, and, for every
   \(0<\epsilon<1\), a rank-\(k\) output satisfying
   \(\|T-\Psi(Q)\|_F\le\epsilon\|T\|_F\). Terminal work is
   \({\rm poly}(n,r,k,\kappa,\rho^{-1})\log(1/\epsilon)\); after the rank,
   conditioning, and smoothing substitutions, total work is
   \({\rm poly}(n,r,\log(1/\epsilon))\). Instance and tape probabilities stay
   separate.

In the exact orthogonal/noiseless baseline, unresolved atoms have zero
protected-span leverage and pass the screen, all structural and numerical
ledger terms vanish, rollback is exact, the balanced target representation is
the same terminal reference, and arbitrary relative accuracy has no additive
floor. Arbitrary bases, unbalanced product weights, and simultaneous all-slot
gradient descent remain open exactly as stated in the setting.

## Sketch Identity

- Sketch attempt: 2.
- Retry mode: `revise_sketch`.
- Triggering artifact: `proof_history/sketch_001/proof_sketch_review.md`.
- Branch: perspective_2/idea_10.
- Progress type: material_partial.
- Binding idea SHA-256:
  298e6b77cf8edd14ab27e3672ab9cd0ba12a43e6f97037e183f480266af8b013.
- Binding setting SHA-256:
  c901dbc848dbbdbc09856210be4928ef068fa14541cb719eff34cdffc12e3d19.
- The attempt-1 sketch and review remain archived under
  `proof_history/sketch_001/`; no tracker or worker-log file is edited by
  this worker.
- Selected framework: residual-relative protected-span screening with a
  J-aware rootwise ledger, from perspective_2/idea_10/technical_survey.md.
- Negative roadmap memory: perspective_2/idea_9/proof_sketch_review.md
  identifies an unsupported protected matched-mixture exchange producer. This
  sketch deletes that producer path: screen-derived unresolved mass is the
  only input to support selection.
- Binding algorithm delta from idea 9: the observable commit-time (Lev) test
  only. No direction, update, objective, source class, rank, probability mode,
  target metric, runtime claim, or baseline conclusion changes.

## Proof Roadmap

Selected framework: residual-relative protected-span screening with a J-aware
rootwise ledger, using the traceable parent and same-perspective frameworks
listed in technical_survey.md.  The stable controller graph has twelve
merged steps; the former 20 labels remain internal lemma names in the
mechanism evidence below and are not additional controller checkpoints.

1. step_001 (static): derive the once-drawn event, exact target, Gram
   reserves, H/J/K/S, both transfer gaps, and protocol envelopes.
2. step_002 (prefix): construct \(\Theta_I,z,\Theta_{\rm act}\), the exact
   dual/tangent interface, \(q_{\rm nor},\Lambda_{\rm nor}\), and
   (Lev-normal)/(Lev-split) from a legal prior prefix.
3. step_003 (leverage): prove both raw (Lev-raw) inequalities and
   (Lev-route), retaining all \({\cal E}_{\rm lb}^c\) terms.
4. step_004 (certificate reachability interface): produce
   \({\cal N}^{\rm Cert+Lev}_{I,j}\) with all Cert/Lev margins and its
   target-blind deterministic activation-window output.
5. step_005 (landscape/matching): use (Lev-route), \(\Theta_{\rm act}\),
   \(\epsilon_{\rm act}\), and normalized \({\cal Q}_I\) tangents to obtain
   singleton-or-negative-curvature, then matching, signs, separation,
   (R-euc), and (R-dir).
6. step_006 (J transition): prove (R-tensor), exact J charge/update,
   captured-label diagonal and honest \(h^4+eh+e^2\) audit, raw rootwise
   \(z\), and (Lev-Jdiag).
7. step_007 (ledger/induction): factor off-diagonal KJ paths, close
   (J-global)/(R-hist-budget)/(R-budget)/(R-acc), apply the
   (LB-margin)/(RAW-margin)/exact-limit trichotomy, and discharge the
   all-prefix invariant from the empty state.
8. step_008 (transaction): prove deterministic guarded dynamics, accepted
   step floor, polynomial work, exact rollback, and the flow into the
   step_004 neighborhood.
9. step_009 (tape): combine the step_004/008 outputs with
   assump:random-tape for history-uniform \(p_{\rm tx}\) and finite-tape
   recovery of all \(r\) labels.
10. step_010 (terminal geometry): prove exact-target balanced Jacobian,
    PL radius/constant, quadratic sandwich, and chart smoothness.
11. step_011 (entry): compare the actual all-commit tuple to the exact
    target orbit via per-slot (R-euc), with no use of (R-acc) as factor
    distance.
12. step_012 (public terminal): prove first-exit/floor-free descent,
    rate/runtime/probability specialization, branch-qualified \(C'_z\nu^2\)
    wording, and exact orthogonal/noiseless baseline.

Dependencies are acyclic in this order.  The conditional prefix input to
steps_002--006 is supplied as a local one-transition hypothesis and discharged
by the closure wrapper in step_007; this temporal invocation is not a graph
self-dependency.  The target-blind flow in steps_004/008 precedes the
probability step.

## Rate Objectives

### Objective R1: once-drawn instance and static source interfaces

- Objective type: structural-parameter explicit and confidence-explicit.
- Exposed variables: \(n,r,k,\kappa,\rho,\Gamma_\star,\nu_{\rm base},
  \nu_\star,\nu_{\rm real},P\), realized norms/weights/Grams, and
  \(\|T\|_F\).
- Hidden constants may depend on: fixed
  \(c_0,c_\rho,C_{\rm dim},C_{\rm sm},C_\nu,C_{\rm rank},\Gamma_\star\)
  and fixed protocol/Armijo constants.
- Hidden constants may not depend on: \(n,r,k,\kappa,\rho,\epsilon\), the
  realized instance, tape, protected history, or commit order.
- Fixed quantities: the deterministic base triple and all fixed class/protocol
  constants.
- Probability mode: one Gaussian instance event with probability at least
  \(1-r^{-10}\). The partition \({\cal E}_{\rm lb}\cup{\cal E}_{\rm lb}^c\)
  is exhaustive inside that event and is not an extra conditioning event.
- Horizon mode: once-drawn, then uniform over the finite generated trajectory.
- Norm mode: Euclidean column norm, operator normalized-Gram norm, entrywise
  H/J/K controls, induced array norms, and tensor Frobenius norm.
- Required bridge or simplification obligations: step_001 derives every
  static and lifted quantity, including \(\tau_{\rm up},\bar\eta\),
  \(q_{\rm res},q_{\rm row}\), and the exact balanced representation. No
  realized condition is moved into theorem assumptions.
- Baseline invariance obligations: identity normalized Grams give zero H/K/S,
  the exact balanced CP tensor, and zero structural transfer.

### Objective R2: finite-prefix leverage and J ledger

- Objective type: finite-horizon, structural-parameter explicit,
  regularity-explicit, and numerical-error explicit.
- Exposed variables: \(r,\nu,\Gamma_\star,P,D_{\rm nor},D_{\rm stat},
  D_{\rm gap},D_{\rm cap},D_{\rm lb},D_{\rm pass},e,h,\eta_0,\bar\eta,\lambda_M,
  \Lambda_I^+,B_I^{(1)},B_I^{(\ge2)},H,J,K,S,A_I,\Theta_I,
  \Theta_{\rm act},\Lambda_{\rm nor},q_{\rm nor},\epsilon_{\rm act},z,\Xi,
  \widetilde\Upsilon\), all displayed source-normal, certificate, and
  activation controls, and prefix length \(s\le r\).
- Hidden constants may depend on: fixed class/protocol/proof constants only.
- Hidden constants may not depend on: the state, prefix, order, tested label,
  \(n,r,k,\kappa,\rho,\epsilon\), or realized instance.
- Fixed quantities: one realized instance in \({\cal E}_{\rm inst}\) and one
  legal finite prefix.
- Probability mode: deterministic conditional on that instance and on the
  already revealed tape history.
- Horizon mode: uniform over all \(s\le r\), with one finite local landscape
  calculation and one finite transition per successful commit.
- Norm mode: protected-span Euclidean projection, tensor Frobenius and product
  contractions, array \(\ell_1\), rootwise block \(\ell_2\), product-sphere
  gradient/Hessian, and Euclidean factor error.
- Required bridge or simplification obligations: step_002 produces the
  root-free \(\Theta_{\rm act}\), exact tangent/Hessian interface, and
  \(q_{\rm nor},\Lambda_{\rm nor}\); step_002 produces the raw
  \(P^{D_{\rm nor}-D_{\rm stat}}\) normal term; step_003 proves the two
  defect classes separately and use the exact screen inequalities to derive
  (Lev-route) on both branches. step_004 produces the full Cert+Lev
  neighborhood. steps_006--007 retain \(h^4+eh+e^2\),
  \(\nu^2+r\nu^3+\sqrt r e\), and \(r\nu^3+r^2e\) until explicit
  branch-specific domination: (LB-margin) on \({\cal E}_{\rm lb}\),
  (RAW-margin) on \({\cal E}_{\rm lb}^c\), and equality at \(H=e=0\).
  Every numerical term has one named source and one named sum.
- Baseline invariance obligations: \(H=e=0\) makes \(\eta_0\), all actual
  matched errors, \(z\), charges, and accumulated history vanish. The
  deterministic class envelope \(\bar\eta\) remains conservative, so an
  unresolved atom has \(\lambda_M=0\) and
  \(\Lambda_I^+=3(C_{\rm sp}\bar\eta)^2\); step_004 verifies the two screen
  inequalities with this padding rather than declaring it zero.

### Objective R3: discovery probability and work

- Objective type: confidence-explicit, fixed-horizon, and algorithmic-work
  explicit.
- Exposed variables: \(n,r,k,\kappa,\rho,P,H_{\rm tx},N_{\rm tx},
  p_{\rm tx},c_{\rm tx},d_{\rm tx}\), trust-region/Armijo constants,
  screen/guard tolerances, and stable QR/SVD cost.
- Hidden constants may depend on: fixed class and protocol constants only.
- Hidden constants may not depend on: protected history, commit order,
  instance inside \({\cal E}_{\rm inst}\), or \(\epsilon\).
- Fixed quantities: one good instance and the deterministic transaction map
  given one tape seed.
- Probability mode: conditional one-transaction probability at least
  \((nr)^{-c_{\rm tx}}\), separately amplified over the independent tape to
  conditional probability at least \(1-r^{-10}\).
- Horizon mode: at most \(N_{\rm tx}\) transactions and \(H_{\rm tx}\)
  computational work per transaction.
- Norm mode: exact loss, full product-sphere gradient/Hessian, factor
  displacement, protected-span projection norm, and certificate scalars.
- Required bridge or simplification obligations: step_009 must reach the
  inverse-polynomial-slack neighborhood produced by step_004 and may not query
  its target label. step_009 proves the stopped tail and polynomial work,
  including every screen evaluation.
- Baseline invariance obligations: a failed probe returns exactly to joint
  zero and contributes no forcing, including screen failure.

### Objective R4: same-target terminal convergence and public specialization

- Objective type: regularity-explicit, finite-horizon convergence-rate
  explicit, confidence-explicit, and numerical-error explicit.
- Exposed variables: \(n,r,k,\kappa,\rho,\Gamma_\star,P,\epsilon,
  \tau_{\min},\tau_{\max},g_{\min},g_{\max},\eta_0,\varrho_{\rm PL},
  \mu_{\rm PL},L_{\rm chart}\), full-state orbit distance, loss, and
  Frobenius residual.
- Hidden constants may depend on: the fixed class/protocol constants only.
- Hidden constants may not depend on: dimensions, instance, tape, commit
  order, target labeling, or \(\epsilon\).
- Fixed quantities: one all-commit output on one good instance and successful
  tape event.
- Probability mode: deterministic after the separately stated instance and
  tape events; no multiplication or merger of the two \(1-r^{-10}\) claims is
  hidden.
- Horizon mode: finite discovery followed by
  \(O({\rm poly}(P)\log(1/\epsilon))\) terminal iterations.
- Norm mode: full rank-\(k\) Euclidean factor distance modulo the finite
  target orbit, balanced-gradient norm, exact loss, and tensor Frobenius norm.
- Required bridge or simplification obligations: step_010 derives the
  exact-target chart before entry is consumed; step_011 proves
  \[
  \operatorname{dist}(Q_{\rm fin},{\cal Z}_\star)
  \le C_{\rm ent}\tau_{\max}^{1/3}\sqrt{3r}\,\eta_0
  \le\theta_{\rm ent}\varrho_{\rm PL}
  \]
  directly from per-slot (R-euc), keeping the \(\sqrt r\) factor and not
  treating (R-acc) as factor distance. step_012 verifies the rank substitution,
  every exponent condition, the two probability statements, the final
  hidden-constant dependence, and the
  \({\rm poly}(n,r,\log(1/\epsilon))\) public runtime.
- Baseline invariance obligations: the exact balanced target is stationary at
  zero loss; in the \(H=e=0\) specialization the committed tuple equals that
  target after sign/permutation alignment and the terminal theorem has no
  additive remainder for any \(0<\epsilon<1\).

## Assumption Provenance Objectives

- The realized event \({\cal E}_{\rm inst}\), nonzero columns, norm and
  product-weight bounds, \(\nu\le2\nu_\star\), pair/triple conditioning,
  \(T\ne0\), the exact balanced representation, radius guard, and deterministic
  leverage envelopes are derived in step_001 from
  assump:base-column-conditioning, assump:base-product-balance,
  assump:gaussian-smoothing, assump:dimension-regime,
  assump:smoothing-scale, and assump:modewise-gram-margin.
- H/J/K, cyclic leakage, \(S\), both transfer norm bounds, and the positive
  small-gain margins are derived in step_002 from step_001. No absolute-Gram
  operator bound is assumed.
- For a local conditional prefix, \(A_I\) is formed only from previously
  accepted actual errors. step_003 derives the convergent statewise
  \(\Theta_I\), the root-free \(\Theta_{\rm act}\), the exact current/dual
  stationarity and normalized tangent/Hessian objects, and defines the
  zero-diagonal precommit \(z\). It also defines and bounds
  \(q_{\rm nor}\) and \(\Lambda_{\rm nor}\). The local lemma may condition on
  the already generated prefix record; step_007 later discharges this
  condition from the empty prefix by induction.
- The matching \(\pi_I\), prior (R-euc)/(R-dir) records, post-fit stationarity
  records, protected-span closeness, residual reserve, source-normal bound,
  (Lev-split), and both (Lev-raw) inequalities are derived outputs of
  steps_003--005 and step_007. None is a final-theorem premise.
- Screen passage for a genuine unresolved neighborhood and the full
  \({\cal N}^{\rm Cert+Lev}_{I,j}\) certificate-plus-screen neighborhood are
  derived outputs of step_004. Step_008 supplies the target-blind flow into
  that neighborhood, and step_009 consumes both only after the prefix
  induction has supplied its legal inputs. The algorithm evaluates only the
  observable screen and never consumes the analysis label used to prove
  passage.
- Unresolved-mass dominance is derived in step_003 from exact residual
  decomposition plus the actual screen inequalities. The singleton or
  structural-exchange landscape alternative is derived in step_005 from that
  output. No exchange conclusion, unresolved support, target label, or
  leverage-pass condition appears as a theorem assumption.
- Unique label assignment, signs, separation, (R-euc), (R-dir), and injection
  extension are generated by step_005. The root-specific row of \(\Theta_I\)
  is consumed only after step_005 has produced the unresolved label.
- The exact tensor influence, J charge/update, local two-label audit, raw
  rootwise profile, per-root diagonal bound, all-commit charge, history
  budget, resolvent budget, and accepted-error budget are derived in
  steps_006--007. The branch-specific (LB-margin), (RAW-margin), and exact
  zero-limit relations are part of step_007; step_007 is their noncircular
  all-prefix producer.
- Transaction success, line-search termination, accepted-step lower bound,
  rollback, and all-commit tape event are derived in steps_008--009.
  assump:random-tape supplies only independence and the Haar law.
- PL radius, PL constant, compact-chart smoothness, chart membership,
  first-exit invariance, and convergence are derived in steps_010--012.
  assump:accuracy-range supplies only \(0<\epsilon<1\), not convergence.
- The public rank/runtime/probability statement and exact baseline
  specialization are derived in step_012; no technical appendix condition may
  be silently retained in the public theorem.

The only local conditional hypotheses are: a legal finite prefix with the
records explicitly listed in step_002, and a candidate satisfying the
observable certificate/screen in steps_003--005. They remain local lemma
hypotheses. The unconditional theorem obtains the former from step_007 and
the latter from steps_008--009.

## Mechanism-Source And Boundary Stress

The stable graph has twelve steps. Every hard obligation below is step-local;
the detailed attempt-1 labels are subsumed by these merged producers.

### step_001: static event and lifted source

- Role/source: derive the once-drawn realized event, exact balanced target,
  H/J/K/S, leakage, and both Neumann gaps from the seven static primitive IDs
  by Gaussian concentration, normalization, Schur products, and columnwise
  Cauchy--Schwarz.
- Export feasibility: the raw path is
  \(\|G_M-I\|_{\rm op}\le2\nu_\star\Rightarrow
  \max_j\|H_Me_j\|_2\le\nu\Rightarrow\|K_M\|_1\le\nu^2\), followed by
  \(q_{\rm res},q_{\rm row}\le1/4\). No operator bound for \(|G_M-I|\) is used.
- Object/target match: produced \(A,B,C,T,Q^\star\) are the exact downstream
  objects in Euclidean/Frobenius metrics.
- Boundary/entry: empty state and exact \(H=0\) are valid; \(T=0\) uses the
  stated early return. At \(H=0\), structural transfer vanishes.
- Scope/flow: once-drawn event -> steps_002--012; no trajectory input is used.
  Noncircular closure status: primitive assumptions -> step_001.

### step_002: prefix, root-free activation, and source-normal split

- Role/source: from a legal prior prefix construct \(\Theta_I,z\),
  \(\Theta_{\rm act}\), \(q_{\rm nor},\Lambda_{\rm nor}\), exact dual
  stationarity, normalized tangent family and \(\mathcal Q_I\), then
  (Lev-normal)/(Lev-split).
- Root-free producer:
  \[
  \Theta_{\rm act}(I)=\max_{j\in U_I,M}
  (\|\Theta_{I;j,M,\cdot}\|_2+e)
  \le C(\nu^2+r\nu^3+r^2e+\sqrt r e).
  \]
  It is formed from the complete current array before any label is selected.
- Normal producer: the actual triangular coefficient norm
  \(q_{\rm nor}(I)\le1/4\), the explicit
  \(\Lambda_{\rm nor}(I)\), and \(\|b_{t,M}\|\le e\Lambda_{\rm nor}\) give
  \(\|D_I\|_F\le C|I|\|T\|_FP^{D_{\rm nor}-D_{\rm stat}}\).
- Hessian interface: capture/radial order proves \(t=g^3>0\) before division;
  (Act-stat), (Act-tangent), and (Act-Hess) retain static, history, normal,
  radial, angular, and numerical defects in \(\epsilon_{\rm act}\).
- Residual adequacy: \(R_I^\parallel=\Pi_\star R_I\) is used only inside the
  exact split; \(D_I=(I-\Pi_\star)R_I\) remains in the actual-residual defect.
- Boundary/flow: empty prefix has \(A=D=0,q_{\rm nor}=0\); at \(H=e=0\),
  \(\Theta_{\rm act}=\epsilon_{\rm act}=0\). step_001 -> step_002 ->
  steps_003--007. The prior record is discharged by step_007, not assumed.

### step_003: leverage routing

- Role/source: exact first-order protected-error expansion plus actual
  protected-span projectors gives
  \(|\langle E_I^{(1)},\psi\rangle|\le B_1\Lambda_I^+\); higher-order and
  source-normal terms give
  \(|\langle E_I^{(\ge2)},\psi\rangle|+|\langle D_I,\psi\rangle|\le B_2\).
- Export feasibility: the two observable clauses imply
  \[
  |s_M|\le(\gamma_{\rm lev}+1/64)s_I,\qquad
  W_U\ge(1-2\gamma_{\rm lev}-1/32)s_I.
  \]
  No protected matched-mixture premise is used.
- Branch/boundary: on \({\cal E}_{\rm lb}^c\), including \(\nu=0,e>0\),
  \(\bar\eta^2\) and \(P^{D_{\rm nor}-D_{\rm stat}}\) stay inside \(B_2\);
  equality in either screen clause preserves positive unresolved slack.
- Scope/flow: one current-state inequality; failed screens roll back and add
  zero forcing. step_002 -> step_003 -> steps_004--007.

### step_004: full Cert+Lev neighborhood

- Role/source: for each unresolved \(j\), direct radial-root and
  product-sphere flow construct \(\bar q_{I,j}\) and
  \({\cal N}^{\rm Cert+Lev}_{I,j}\).
- Exported interface: throughout the neighborhood,
  \(0<g\le2R_{\max},s_I>0\), both stationarity errors meet
  \(P^{-D_{\rm stat}}\), normalized Hessian has margin
  \(P^{-D_{\rm gap}}\), capture meets \(P^{-D_{\rm cap}}\), separation is
  at most \(1/4\), and both Lev inequalities hold with half-slack.
- Mechanism/dominance: unresolved self-score \(\tau_j\), pair/triple Gram
  reserve, (Act-margin), and (LB-margin)/(RAW-margin) dominate cross-label,
  history, normal, and numerical defects. The output uses the actual residual,
  Hessian, projectors, and theorem metric.
- Activation trace: a target-blind seed window (label used only for analysis)
  is mapped by the deterministic guarded flow into the neighborhood within
  \(H_{\rm tx}\). Negative score is sign-corrected; zero score fails; guards
  and failed screens roll back exactly.
- Boundary/flow: empty and last-unresolved prefixes, dense/block frames,
  \(\nu=0,e>0\), and exact \(H=e=0\) retain slack. step_003 -> step_004 ->
  steps_008--009.

### step_005: unresolved landscape and matching

- Role/source: (Lev-route) activates unresolved mass before support selection;
  exact dual coordinates and the finite normalized tangent family yield
  singleton-or-negative-curvature.
- Raw margin:
  \[
  12\epsilon_{\rm act}+3B_I^{(\ge2)}\le\mu_{\rm act},\qquad
  g^3\mu_{\rm act}\ge8N_I(g)P^{-D_{\rm gap}}.
  \]
  Every non-singleton pattern has
  \(\mathcal Q_I(\xi)\ge4P^{-D_{\rm gap}}\), contradicting Cert.
- Export: the surviving singleton gives unique unresolved label, product-one
  signs, separation, (R-euc), (R-dir), and injection extension. A
  root-specific \(\Theta_I\) row is consumed only after this selection.
- Adequacy/boundary: dual selectors return to unit ambient tangents and the
  actual Hessian. Low/common/straddling support, mixed signs, threshold
  equality, \(|U_I|=1\), and exact baseline are assigned.
- Flow: steps_002--004 -> step_005 -> steps_006--011; no matching output is
  used to create unresolved support.

### step_006: J transition and rootwise diagonal

- Role/source: exact accepted-error expansion gives (R-tensor), symmetric
  (J-charge)/(J-update), and cyclic forms with \(J(p,p)=1\) and
  \(z_{p,M,p}=0\).
- Local audit: on the isolated O.1 family,
  \[
  c_-(h^4+eh+e^2)\le\widetilde\Upsilon_{p;j,p}
  \le c_+(h^4+eh+e^2),
  \]
  including \(h=e^2\); embedded blocks retain the global \(\nu^2h^2\) term.
- Rootwise export:
  \[
  \|z_p\|_{{\rm root},2}\le C(\nu^2+r\nu^3+\sqrt r e),\quad
  \sum_{j,M}\widetilde\Upsilon^M_{p;j,p}\le C(\nu^3+r e).
  \]
  The sum is already over unresolved roots/modes and is not multiplied again.
- Boundary/flow: at \(\nu=0,e>0\) the raw terms are nonzero and retained; at
  \(H=e=0\) they vanish. step_002 + step_005 -> step_006 -> step_007.

### step_007: global ledger and all-prefix induction

- Role/source: combine step_006's diagonal with off-diagonal KJ/Neumann
  factorization and exact baseline cancellation, then close the finite prefix
  induction from \(I=A=D=0\).
- Raw export:
  \[
  \mathfrak U_s,\|A_I\|_1,\text{ accepted influence}
  \le C(\Gamma_\star r\nu^3+r^2e),\qquad s\le r.
  \]
  Every commit/root/tested-label/mode is counted once; failures add zero.
- Three-branch margin:
  \[
  {\cal E}_{\rm lb}: \sqrt r e,r^2e\le c\nu^2;\qquad
  {\cal E}_{\rm lb}^c:
  C_{\rm raw}(\nu^2+r\nu^3+\sqrt r e+r^2e+\Theta_{\rm act})
  \le\mathfrak m_{\rm obs}/32;
  \]
  at \(H=e=0\), \(A=\Theta=z=\mathfrak U=0\).
  Thus \(C'_z\nu^2\) is used only on \({\cal E}_{\rm lb}\) or by exact
  equality, never to absorb a positive complement-branch numerical term.
- Assumption IDs: assump:base-column-conditioning,
  assump:base-product-balance, assump:gaussian-smoothing,
  assump:dimension-regime, assump:smoothing-scale,
  assump:modewise-gram-margin, assump:rank-regime,
  assump:random-tape, assump:accuracy-range.
- Closure/flow: finite monotone injection and one-time nonnegative charge;
  exact rollback preserves every record. steps_001--006 -> step_007 ->
  steps_008--012. Noncircular closure begins at the empty prefix.

### step_008: deterministic transaction

- Role/source: exact radial derivative, compact guarded smoothness, Armijo
  backtracking, two-sign negative-curvature trials, stable QR/SVD, and reset.
- Export: accepted step at least \(P^{-D_{\rm ls}}\), at most
  \(H_{\rm tx}=P^{O(1)}\) work, target-blind flow from the step_004 activation
  window into \({\cal N}^{\rm Cert+Lev}_{I,j}\), or exact rollback.
- Scope/boundary: zero score, guard equality, line-search exhaustion,
  certificate/screen failure, and exact stationarity are explicit outcomes.
  Failed transactions have exactly zero persistent forcing.
- Flow: step_004 + step_007 -> step_008 -> step_009.

### step_009: Haar tape and all commits

- Role/source: assump:random-tape supplies only independent full-space Haar
  seeds. Haar small-ball plus step_008's deterministic flow gives
  \(p_{\rm tx}\ge(nr)^{-c_{\rm tx}}\) uniformly over revealed histories.
- Export: the stopped finite tape with
  \(N_{\rm tx}=O(r(nr)^{c_{\rm tx}}\log r)\) recovers all \(r\) distinct
  labels with conditional tape probability at least \(1-r^{-10}\).
- Adequacy/scope: a success is the actual Cert+Lev committed tuple; failures
  equal the pretransaction state. Adaptive histories compose because each
  lower bound is conditional and the tape entries are fresh.
- Boundary/flow: empty/last prefix, repeated failures, and tape exhaustion are
  covered. steps_004,005,007,008 -> step_009 -> step_011.

### step_010: exact-target PL geometry

- Role/source: direct balanced CP Jacobian at \(Q^\star\), pair/triple Gram
  reserves, gauge removal, and current-notation Taylor bounds.
- Export:
  \[
  \varrho_{\rm PL}=c_{\rm chart}g_{\min}/r,\quad
  \mu_{\rm PL}\ge c_\mu g_{\min}^4,\quad
  L_{\rm chart}\le C_Lg_{\max}^4.
  \]
- Adequacy/boundary: reference is the exact generally nonorthogonal target
  orbit in full-state Euclidean metric and exact Frobenius loss. At \(Q^\star\)
  the gradient is zero while the Jacobian floor is active.
- Flow: step_001 -> step_010 -> steps_011--012.

### step_011: same-target chart entry

- Role/source: align step_009's actual tuple using step_005's signs/injection
  and per-slot (R-euc), then compare to step_010's independently produced
  radius.
- Export:
  \[
  \operatorname{dist}(Q_{\rm fin},{\cal Z}_\star)
  \le Cg_{\max}\sqrt{3r}\eta_0
  \le\theta_{\rm ent}\varrho_{\rm PL}.
  \]
- Residual adequacy: this is a direct actual-tuple-to-exact-target comparison;
  (R-acc) is not treated as factor distance.
- Boundary/flow: exact \(H=e=0\) gives equality with \(Q^\star\); the
  \(\sqrt r\), weight-ratio, structural, and numerical terms remain explicit.
  steps_005,007,009,010 -> step_011 -> step_012.

### step_012: terminal descent and public specialization

- Role/source: exact-loss PL/Armijo from strict chart entry gives first-exit
  invariance and geometric loss decay with no additive forcing.
- Export: for every \(0<\epsilon<1\), residual at most
  \(\epsilon\|T\|_F\) in \(O({\rm poly}(P)\log(1/\epsilon))\) terminal work;
  total public work is \({\rm poly}(n,r,\log(1/\epsilon))\).
- Assumption IDs: assump:base-column-conditioning,
  assump:base-product-balance, assump:gaussian-smoothing,
  assump:dimension-regime, assump:smoothing-scale,
  assump:modewise-gram-margin, assump:rank-regime,
  assump:random-tape, assump:accuracy-range.
- Probability/baseline: instance and conditional tape probabilities are stated
  separately. At \(H=e=0\), commits equal exact target slots, rollback is
  exact, and arbitrary relative accuracy has zero floor.
- Noncircular flow: steps_007,010,011 -> step_012 -> final theorem. The
  branch-qualified J-row reading and all raw complement terms are reported
  rather than hidden in public simplification.

## Exported Interface Feasibility

Compact stable-interface audit (the legacy rows below are supporting detail):

| Output | Stable producer | Consumers | Feasibility / branch control | Status |
| --- | --- | --- | --- | --- |
| E_inst, T, Qstar, H/J/K/S, transfer gaps | step_001 | steps_002--012 | Primitive IDs -> Gaussian/Schur/direct bounds; exact target convention. | derived |
| Theta_act, q_nor, Lambda_nor, epsilon_act, tangent/Hessian Q | step_002 | steps_003--005, step_007 | Complete current array, positive t before division, raw defects explicit. | derived |
| Lev-raw and Lev-route | step_003 | steps_004--007 | B1 Lambda <= gamma s and B2 <= s/64; no lower-tail absorption. | derived |
| Cert+Lev neighborhood and activation window | step_004 | steps_008--009 | All Cert clauses plus both Lev clauses with half-slack; target-blind flow. | derived |
| Matching, J transition, rootwise and global ledger | steps_005--007 | steps_008--012 | One-time charge; LB-margin / RAW-margin / exact-limit trichotomy. | derived |
| Legal prefix, transaction/tape, PL/entry, terminal output | steps_007--012 | final theorem | Exact rollback, separate probabilities, same-target metric, no floor. | derived |

## Generated Output Flow

Compact stable producer-consumer flow:

| Generated output | Producer | Consumers / final use | Dependency path |
| --- | --- | --- | --- |
| Static event and lifted source | step_001 | step_002 and all later steps | primitives -> step_001 -> terminal |
| Root-free activation and residual interfaces | step_002 | steps_003--005, step_007 | step_001 -> step_002 -> landscape/ledger |
| Lev raw/route | step_003 | step_004, step_005, step_007 | step_002 -> step_003 -> Cert/landscape |
| Cert+Lev neighborhood and target-blind flow | step_004 + step_008 | step_009 | step_003 -> step_004 -> step_008 -> step_009 |
| Matching and J/ledger outputs | steps_005--007 | steps_008--012 | step_004 -> step_005 -> step_006 -> step_007 |
| All-commit tuple, PL entry, and final residual | steps_009--012 | final theorem | step_007 -> step_009 -> step_010 -> step_011 -> step_012 |

## Sketch Steps

The following twelve rows are the only stable controller steps.  The detailed
legacy rows immediately below are internal lemma evidence grouped into these
merged steps; they do not create additional checkpoints or dependencies.

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | Once-drawn event, exact target, H/J/K/S, transfer gaps, protocol envelopes, and exponent order. | None | assump:base-column-conditioning; assump:base-product-balance; assump:gaussian-smoothing; assump:dimension-regime; assump:smoothing-scale; assump:modewise-gram-margin; assump:rank-regime | Uniform normalization and absolute-Gram small gain. | Gaussian concentration, Schur products, direct block norms. | E_inst, T, Qstar, static source and gaps. | R1. | PENDING |
| step_002 | Conditional prefix resolvent, zero-diagonal z, root-free Theta_act, q_nor/Lambda_nor, exact dual/tangent/Hessian interface, Lev-normal, and Lev-split. | step_001 | Derived static outputs and local prior-prefix records; no new primitive condition. | Producer-before-consumer ordering and positive radial denominator. | Neumann series, triangular inversion, direct current-frame differentiation. | Theta_act, z, q_nor, Lambda_nor, epsilon_act, Q_I, residual split. | R2. | PENDING |
| step_003 | First/higher-order raw leverage bounds and unresolved-mass Lev-route on both event branches. | step_002 | Derived prefix outputs and observable Lev predicate. | Separate first-order leverage from raw normal/numerical defects. | Exact rank-one expansion, projector inequality, triangle bounds. | Lev-raw and Lev-route. | R2. | PENDING |
| step_004 | Full target-blind Cert+Lev neighborhood and deterministic activation-window output. | step_001; step_002; step_003 | assump:base-product-balance; assump:modewise-gram-margin; derived margins. | Radial, angular, Hessian, capture, separation, and screen slack. | Guarded root, product-sphere flow, continuity, branch margins. | N^{Cert+Lev}_{I,j}, Cert-pass, activation window. | R2/R3. | PENDING |
| step_005 | Unresolved singleton-or-negative-curvature landscape, then unique matching, signs, separation, R-euc/R-dir, and injection extension. | step_003; step_004 | Derived route and current/dual interface; assump:base-product-balance. | Mixed support, signs, last label, raw Hessian defects. | Biorthogonal selectors and normalized tangent Hessian. | Selected label and accepted calibrated slot. | R2. | PENDING |
| step_006 | Exact J transition, honest two-label audit, raw rootwise z, and Lev-Jdiag. | step_002; step_005 | Derived accepted error and local z; assump:base-product-balance. | Diagonal J(p,p)=1, zero diagonal z, no extra multiplicity. | Multilinear expansion and rootwise Cauchy--Schwarz. | J-update, R-tensor, rootwise diagonal charge. | R2. | PENDING |
| step_007 | Off-diagonal ledger, branch margins, and finite all-prefix induction from the empty state. | step_001; step_002; step_005; step_006 | assump:base-column-conditioning; assump:base-product-balance; assump:gaussian-smoothing; assump:dimension-regime; assump:smoothing-scale; assump:modewise-gram-margin; assump:rank-regime; assump:random-tape; assump:accuracy-range. | One-time accumulation, raw complement branch, exact rollback. | KJ/Neumann factorization and finite induction. | J-global, R-hist-budget, R-budget, R-acc, legal-prefix invariant. | R2. | PENDING |
| step_008 | Deterministic guarded transaction, accepted-step floor, polynomial work, exact rollback, and flow into step_004 neighborhood. | step_007; step_004 | Derived legal prefix and fixed protocol constants. | Cert/Lev preservation under finite dynamics. | Exact derivatives, Armijo, negative-curvature escape. | Transaction map and activation flow. | R3. | PENDING |
| step_009 | History-uniform Haar success and finite-tape recovery of all r labels. | step_004; step_005; step_007; step_008 | assump:random-tape. | Adaptive stopped trials and separate tape probability. | Haar small-ball and negative-binomial tail. | p_tx and all-commit tuple. | R3. | PENDING |
| step_010 | Exact-target balanced Jacobian, PL radius/constant, quadratic sandwich, and smooth chart. | step_001 | assump:base-column-conditioning; assump:base-product-balance; assump:modewise-gram-margin. | Gauge removal and nonorthogonal target conditioning. | Direct Jacobian/Taylor calculation. | PL chart and mu_PL. | R4. | PENDING |
| step_011 | Same-target chart entry from actual all-commit tuple via per-slot R-euc. | step_005; step_007; step_009; step_010 | Derived outputs; assump:base-product-balance. | Object-target compatibility and sqrt(r) accumulation. | Orbit alignment and cube-root mean-value bound. | Strict chart-entry certificate. | R4. | PENDING |
| step_012 | First-exit floor-free descent, public rate/runtime/probability specialization, branch-qualified J-row wording, and exact baseline. | step_007; step_010; step_011 | assump:base-column-conditioning; assump:base-product-balance; assump:gaussian-smoothing; assump:dimension-regime; assump:smoothing-scale; assump:modewise-gram-margin; assump:rank-regime; assump:random-tape; assump:accuracy-range. | No dropped raw terms or additive floor. | PL/Armijo and direct rate specialization. | Final material_partial theorem. | R1--R4. | PENDING |

## Grouped Internal Provenance

The former attempt-1 rows are retained only as grouped provenance:
static event/transfer -> step_001; prefix resolvent/normal split -> step_002;
first/higher-order leverage -> step_003; Cert and Lev passage -> step_004;
landscape/matching -> step_005; J transition/rootwise diagonal -> step_006;
off-diagonal ledger and all-prefix induction -> step_007; transaction/rollback
-> step_008; Haar/tape amplification -> step_009; PL geometry -> step_010;
same-target entry -> step_011; and terminal/public specialization -> step_012.
Each group has a producer, consumer path, branch/boundary audit, and
Review status = PENDING in the compact table above. No legacy row is a
controller-facing step or an additional dependency.

## Boundary And Example Stress Matrix

| Regime / entry state | Required trace | Stable producer | Downstream use |
| --- | --- | --- | --- |
| Empty prefix | \(A=D=0\), zero projectors, \(B_1=B_2=0\), static \(\Theta_{\rm act}\), exact rollback | steps_001--004,007--008 | Induction base and first transaction |
| Exact \(H=e=0\) | \(\lambda_M=0\), padded Lev passes, \(\Theta=z=A=\mathfrak U=0\), exact target stationary | steps_001--012 | Baseline/no-floor endpoint |
| \({\cal E}_{\rm lb}^c,\nu=0,e>0\) | Keep \(\bar\eta^2,P^{D_{\rm nor}-D_{\rm stat}},\sqrt r e,r^2e\) raw; compare with \(\mathfrak m_{\rm obs}\) | steps_002,003,006,007 | Raw landscape/ledger branch |
| Lev boundary equality | Non-strict screen inequalities preserve positive \(W_U\) slack | step_003 | Support activation |
| Protected-span mixture | Pair leverage fails Lev or is bounded by the relative score clause; rollback is exact | steps_003,008 | No matched-mixture exchange premise |
| Cert+Lev neighborhood | Radial/angular/Hessian/capture/separation and both screens have half-slack | step_004 | Haar reachability |
| Mixed unresolved support | Normalized \(\mathcal Q_I\ge4P^{-D_{\rm gap}}\) contradicts Cert | step_005 | Singleton selection |
| O.1 \(h=e^2\) audit | Charge \(h^4+eh+e^2\) dominates exact increment; no \(h\)-lower-tail assumption | step_006 | J transition |
| Repeated failures / finite tape | Exact rollback gives zero forcing; stopped tail handles exhaustion | steps_008--009 | All-commit probability |
| Exact target / \(\epsilon\downarrow0\) | PL source active or zero-loss stationary; geometric horizon has no additive floor | steps_010--012 | Arbitrary relative accuracy |

## Dependency Notes

The compact graph is acyclic:
\[
001\to002\to003\to004\to005\to006\to007\to008\to009,
\qquad
001\to010\to011\to012,
\]
with \(005,007,009,010\to011\) and \(007,010,011\to012\). Every stable
dependency points backward. The only conditional input is a legal finite
prefix; step_007 proves it by induction from \(I=\varnothing,A=D=0\), and
step_004/008 produce the Cert+Lev neighborhood/flow before step_009 uses
probability.

The theorem-critical paths are:
actual prior slot -> R-euc -> protected-span proximity -> Lev raw control;
actual residual -> Lev-split -> screen -> unresolved mass;
unresolved mass -> current/dual tangent -> singleton -> matching;
accepted error -> J update -> rootwise/off-diagonal charge -> finite ledger;
all-commit tuple -> exact target orbit -> PL chart -> exact Frobenius endpoint.

All transformed analysis objects return to the consumed actual target metric.
Repeated scope is controlled by geometric Neumann inverses, one-time
nonnegative charges over at most \(r\) commits, exact rollback, a stopped tape,
and a finite contractive terminal horizon.

## Blockers

None at sketch level after the attempt-2 interface repair. The unconditional
theorem-facing J-row output on \({\cal E}_{\rm lb}^c\) is the raw bound; the
terminal \(C'_z\nu^2\) expression is consumed only on
\({\cal E}_{\rm lb}\) or as the exact \(H=e=0\) identity.
