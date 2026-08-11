# Proof Sketch

## Formalized Setting

This is initial proof-sketch attempt 1 for `perspective_2/idea_10` in
target-spec mode. The binding idea and setting are unchanged and have the
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

- Sketch attempt: 1.
- Retry mode: initial sketch attempt.
- Branch: perspective_2/idea_10.
- Progress type: material_partial.
- Binding idea SHA-256:
  298e6b77cf8edd14ab27e3672ab9cd0ba12a43e6f97037e183f480266af8b013.
- Binding setting SHA-256:
  c901dbc848dbbdbc09856210be4928ef068fa14541cb719eff34cdffc12e3d19.
- Verified tracker SHA-256:
  9b1b921de3b94fa410f642cd77832ca9d6bbf3f3edfc6582396d53458f3d731f;
  it contains one untouched sketch-attempt-1 row and no proof-unit result.
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
rootwise ledger, whose traceable provenance is the two parent foundation
papers and perspective_2/idea_9/technical_survey.md as recorded in
perspective_2/idea_10/technical_survey.md. The forward graph has twenty
lemma-sized rows.

1. step_001 constructs the once-drawn realized event, exact target, Gram
   reserves, protocol-scale bounds, and deterministic leverage envelopes.
2. step_002 derives H/J/K, cyclic leakage, the static KJ source, both transfer
   norms, and \(q_{\rm res},q_{\rm row}\le1/4\).
3. step_003 constructs the conditional statewise Neumann envelope and the
   local zero-diagonal precommit \(z\)-profile without asserting its norm.
4. step_004 takes a legal prior-prefix record as a local conditional input,
   derives the residual reserve, solves the guarded triangular source-normal
   recurrence, and exports (Lev-normal) and the exact (Lev-split).
5. step_005 proves actual-protected-span proximity of each matched target mode
   and the first-order inequality in (Lev-raw) term by term.
6. step_006 proves the higher-order plus source-normal inequality, then
   derives (Lev-route) from the two observable screen clauses with all raw
   complement-branch terms retained.
7. step_007 proves that a genuine unresolved-atom certificate neighborhood
   passes both screen clauses with inverse-polynomial slack.
8. step_008 uses (Lev-route) in the ordered radial/current-dual landscape
   calculation. The unresolved weighted mass yields either one isolated
   unresolved atom or a same-target structural exchange tangent contradicting
   the observable angular-Hessian certificate.
9. step_009 converts the surviving singleton into unique label assignment,
   product-one signs, separation, (R-euc), (R-dir), the post-fit normal audit,
   and injection extension.
10. step_010 expands the actual accepted error and proves (R-tensor), the
    exact symmetric J charge/update, cyclic forms, and the honest isolated
    two-label audit.
11. step_011 derives the raw rootwise \(z\) bound and proves the
    per-captured-root diagonal factorization (Lev-Jdiag) before global
    summation.
12. step_012 factors all off-diagonal KJ/Neumann terms and proves the one-time
    (J-global), history, resolvent, and accepted-error budgets.
13. step_013 closes the protected-state induction from the empty prefix
    through at most \(r\) commits, consuming the conditional lemmas only after
    their prior-prefix hypotheses have been generated.
14. step_014 proves deterministic transaction dynamics, polynomial local
    work, the inverse-polynomial accepted-step floor, and exact rollback.
15. step_015 proves history-uniform fresh-Haar reachability of both (Cert) and
    (Lev) within \(H_{\rm tx}\).
16. step_016 amplifies the independent finite tape to all \(r\) distinct
    commits and produces the actual terminal tuple.
17. step_017 proves exact-target balanced Jacobian conditioning, a positive
    inverse-polynomial PL chart, quadratic growth, and compact-chart
    smoothness.
18. step_018 aligns the actual all-commit tuple with the exact target orbit
    and proves same-target full-state chart entry directly from (R-euc).
19. step_019 proves first-exit invariance and floor-free geometric Armijo
    refinement to the requested relative residual.
20. step_020 performs the public rank/runtime/probability/rate specialization
    and exact baseline-reduction check.

Every dependency in the table below points to an earlier row. The local
conditional prefix hypothesis in steps_003--006 and step_010 is not a theorem
assumption: step_013 discharges it by finite temporal induction, starting from
\(I=\varnothing,A=0,D=0\).

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
- Required bridge or simplification obligations: steps_001--002 derive every
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
  \Lambda_I^+,B_I^{(1)},B_I^{(\ge2)},H,J,K,S,A_I,\Theta_I,z,\Xi,
  \widetilde\Upsilon\), all displayed source-normal and activation controls,
  and prefix length \(s\le r\).
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
- Required bridge or simplification obligations: step_004 produces the raw
  \(P^{D_{\rm nor}-D_{\rm stat}}\) normal term; steps_005--006 prove the two
  defect classes separately and use the two exact screen inequalities to
  derive (Lev-route) on both branches. step_007 proves screen passage rather
  than assuming it. steps_010--012 retain
  \(h^4+eh+e^2\), \(\nu^2+r\nu^3+\sqrt r e\), and
  \(r\nu^3+r^2e\) until explicit domination. Every numerical term has one
  named source and one named sum.
- Baseline invariance obligations: \(H=e=0\) makes \(\eta_0\), all actual
  matched errors, \(z\), charges, and accumulated history vanish. The
  deterministic class envelope \(\bar\eta\) remains conservative, so an
  unresolved atom has \(\lambda_M=0\) and
  \(\Lambda_I^+=3(C_{\rm sp}\bar\eta)^2\); step_007 verifies the two screen
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
- Required bridge or simplification obligations: step_015 must reach the
  inverse-polynomial-slack neighborhood produced by step_007 and may not query
  its target label. step_016 proves the stopped tail and polynomial work,
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
- Required bridge or simplification obligations: step_017 derives the
  exact-target chart before entry is consumed; step_018 proves
  \[
  \operatorname{dist}(Q_{\rm fin},{\cal Z}_\star)
  \le C_{\rm ent}\tau_{\max}^{1/3}\sqrt{3r}\,\eta_0
  \le\theta_{\rm ent}\varrho_{\rm PL}
  \]
  directly from per-slot (R-euc), keeping the \(\sqrt r\) factor and not
  treating (R-acc) as factor distance. step_020 verifies the rank substitution,
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
  \(\Theta_I\) and defines the zero-diagonal precommit \(z\). The local lemma
  may condition on the already generated prefix record; step_013 later
  discharges this condition from the empty prefix by induction.
- The matching \(\pi_I\), prior (R-euc)/(R-dir) records, post-fit stationarity
  records, protected-span closeness, residual reserve, source-normal bound,
  (Lev-split), and both (Lev-raw) inequalities are derived outputs of
  steps_004--009 and step_013. None is a final-theorem premise.
- Screen passage for a genuine unresolved neighborhood is a derived output of
  step_007. It is consumed by the reachability proof in step_015 only after
  the prefix induction has supplied its legal inputs. The algorithm evaluates
  only the observable screen and never consumes the analysis label used to
  prove passage.
- Unresolved-mass dominance is derived in step_006 from exact residual
  decomposition plus the actual screen inequalities. The singleton or
  structural-exchange landscape alternative is derived in step_008 from that
  output. No exchange conclusion, unresolved support, target label, or
  leverage-pass condition appears as a theorem assumption.
- Unique label assignment, signs, separation, (R-euc), (R-dir), and injection
  extension are generated by step_009. The root-specific row of \(\Theta_I\)
  is consumed only after step_008 has produced the unresolved label.
- The exact tensor influence, J charge/update, local two-label audit, raw
  rootwise profile, per-root diagonal bound, all-commit charge, history
  budget, resolvent budget, and accepted-error budget are derived in
  steps_010--012. step_013 is their noncircular all-prefix producer.
- Transaction success, line-search termination, accepted-step lower bound,
  rollback, and all-commit tape event are derived in steps_014--016.
  assump:random-tape supplies only independence and the Haar law.
- PL radius, PL constant, compact-chart smoothness, chart membership,
  first-exit invariance, and convergence are derived in steps_017--019.
  assump:accuracy-range supplies only \(0<\epsilon<1\), not convergence.
- The public rank/runtime/probability statement and exact baseline
  specialization are derived in step_020; no technical appendix condition may
  be silently retained in the public theorem.

The only local conditional hypotheses are: a legal finite prefix with the
records explicitly listed in step_004, and a candidate satisfying the
observable certificate/screen in steps_006--009. They remain local lemma
hypotheses. The unconditional theorem obtains the former from step_013 and
the latter from steps_014--016.

## Mechanism-Source And Boundary Stress

### Static event and lifted small gain (steps_001--003)

- Step ID: steps_001--003.
- Claim class: event membership, exact representation, positive conditioning,
  Neumann convergence, and generated local profile.
- Theorem role: provides all static sources and the first legal producer for
  statewise history transfer.
- Mechanism source: Gaussian norm/Gram concentration and direct normalization
  from the six primitive source assumptions; Schur-product identities and
  columnwise Cauchy--Schwarz for H/K; the exact transfer map in setting.md;
  and a geometric Neumann series after the derived small-gain bounds.
- Source-to-claim adequacy: source and branch conventions use the same
  realized normalized factors, product weights, exact tensor \(T\), H/J/K
  definitions, array domain, zero diagonal, and Frobenius/rootwise norms.
  The parent papers in technical_survey.md are proof-pattern provenance only;
  no theorem-critical cited wrapper is used. Direct raw path:
  \[
  \|G_M-I\|_{\rm op}\le2\nu_\star
  \Rightarrow \max_j\|H_Me_j\|_2\le\nu
  \Rightarrow\|K_M\|_1\le\nu^2
  \Rightarrow q_{\rm res},q_{\rm row}\le1/4.
  \]
- Residual-to-target adequacy: the produced \(A,B,C,T,Q^\star\) are exactly
  the objects consumed downstream; H/J/K and \(\Theta\) are analysis
  coordinates for this same target, not transformed targets.
- Key positive/control term or structural source: nonzero norm reserve,
  pair/triple Gram eigenvalue reserve, and \(1-q\ge3/4\).
- Opposing defect terms: Gaussian norm/Gram deviations, eta padding, history
  forcing, and numerical padding. The first two are bounded before the event
  is exported; history and numerical terms remain explicit in \(\Theta_I\).
- Closure/dominance/absorption relation: finite tail allocation gives
  \(\mathbb P_{\rm inst}({\cal E}_{\rm inst})\ge1-r^{-10}\);
  \(2(\nu+\eta_0)(1+\sqrt r\,\nu)\) and fixed constants give both gaps; the
  inverse has norm at most \(1/(1-q)\).
- Accumulation behavior / scope compatibility: the event is once-drawn.
  The Neumann series is geometrically summable for each finite prefix; no
  trajectory claim is made by step_003.
- Obligation locality classification: step-local.
- Noncircular closure status: primitive assumptions -> step_001 -> step_002
  -> step_003. \(A_I\) is a local conditional input from prior accepted
  errors; step_013 supplies it temporally and the empty base has \(A=0\).
- Entry-state / first-update stress result: at \(I=\varnothing\),
  \(A_\varnothing=0\), \(\Theta_\varnothing\) contains only \(S\) and
  numerical padding, and \(z_{p,M,p}=0\). No conclusion assumes a prior
  commit.
- Baseline conclusion preserved: at \(H=e=0\), H/K/S, \(\Theta\), and \(z\)
  vanish and \(Q^\star\) represents \(T\) exactly.
- Producer-consumer provenance: step_001 feeds all later rows; step_002 feeds
  steps_003--013 and step_017; step_003 feeds steps_004,009--013.
- Null or boundary regime tested: empty history, \(q=0\), \(q=1/4\), minimum
  realized column norm, \(T=0\) early return, and exact \(H=e=0\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: without Gram reserve or \(1-q>0\), source labels and history may
  be nonidentifiable or amplified; this regime is excluded by derived event
  bounds from primitive assumptions.
- Repair route if source is unsupported: /proof-sketch for an interface
  derivation error; /subagent-idea-generator only if the primitive margin
  cannot produce the displayed small gain.

### Guarded prefix-normal and exact residual decomposition (step_004)

- Step ID: step_004.
- Claim class: generated residual reserve, source-normal boundedness, and
  same-target decomposition.
- Theorem role: produces the raw normal term and exact four-part residual
  split before any leverage or landscape consumer.
- Mechanism source: prior generated matching and (R-euc) records, prior
  accepted radial/angular stationarity, exact post-fit contraction identities,
  the pair-Khatri--Rao reserve from step_001, and finite triangular inversion.
- Source-to-claim adequacy: in mode \(A\), the source-normal components
  \(a_{t,A}=g_t^3P_{\star,A}^{\perp}u_{t,A}\) obey
  \[
  a_{t,A}+\sum_{q<t}
  \langle u_{q,B},u_{t,B}\rangle
  \langle u_{q,C},u_{t,C}\rangle a_{q,A}=-b_{t,A},
  \quad \|b_{t,A}\|\le e\Lambda_{\rm nor},
  \]
  cyclically. Distinct generated labels and prior (R-euc) give a coefficient
  row sum \(q_{\rm nor}\le1/4\). This directly yields
  \(\|D_I\|_F\le C_{\rm nor}|I|\|T\|_F
  P^{D_{\rm nor}-D_{\rm stat}}\). Exact rank-one expansion then gives
  (Lev-split) with no omitted source-normal term.
- Residual-to-target adequacy: \(D_I=(\operatorname{Id}-\Pi_\star)R_I\) is
  the exact difference between the actual residual and its full realized
  source-product projection. The consumed target is the same realized \(T\)
  under Frobenius and unit-product contraction norms; the exact equality
  (Lev-split), not a surrogate guarantee, is exported.
- Key positive/control term or structural source: unit diagonal of the
  temporal normal system, pair-Khatri--Rao gap, and unresolved target reserve
  \(\|T_{U_I}\|_F\ge\sqrt{15/16}\|\tau_{U_I}\|_2\).
- Opposing defect terms: numerical post-fit residual, off-diagonal distinct
  slot correlations, and the finite sum of prior accepted tensor errors.
- Closure/dominance/absorption relation: triangular inversion gives
  \((1-q_{\rm nor})^{-1}\le4/3\). Prior (R-euc) also gives
  \(\sum_{i\in I}\|E_i\|_F\le C|I|\tau_{\max}\eta_0\), whose explicit upper
  Gram/rank bound is at most half the unresolved target reserve. Reverse
  triangle therefore gives \(\|R_I\|_F\ge c_R\tau_{\min}\).
- Accumulation behavior / scope compatibility: finite temporal recurrence of
  length at most \(r\); forcing has unknown sign but is bounded in norm by
  \(|I|e\Lambda_{\rm nor}\). Failed probes add zero because rollback leaves
  the prefix unchanged.
- Obligation locality classification: step-local.
- Noncircular closure status: step_001 supplies source spans/gaps, step_002
  supplies row controls, and prior step_009 records are local conditional
  inputs. step_013 starts with the empty zero system and proves that those
  records exist before the next invocation; step_004 never assumes
  (Lev-normal), (Lev-split), or the residual reserve.
- Entry-state / first-update stress result: at the empty prefix
  \(D_\varnothing=0\) and the split is \(R_\varnothing=T\). At the first
  commit the triangular equation is \(a_{1,M}=-b_{1,M}\).
- Baseline conclusion preserved: \(H=e=0\) makes all \(b_{t,M}=0\), so
  \(D_I=0\) and the exact source tensor remains the target reference.
- Producer-consumer provenance: steps_001--003 plus prior step_009 records ->
  step_004 -> steps_005--008,010--013.
- Null or boundary regime tested: empty prefix, first commit, last unresolved
  label, \(\nu=0,e>0\), exact \(e=0\), and arbitrary commit order.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without the unit diagonal/pair gap, an outside-source component
  can persist and the raw leverage export would miss a residual class.
- Repair route if source is unsupported: /proof-sketch if a same-setting
  normal interface is missing; /subagent-idea-generator if the unchanged
  procedure cannot generate a source-normal bound.

### First-order protected-span leverage export (step_005)

- Step ID: step_005.
- Claim class: theorem-critical generated projection control and first-order
  residual-to-screen bridge.
- Theorem role: supplies the exact defect class controlled by the relative
  pair-leverage clause in (Lev).
- Mechanism source: the exact first-order part of each previously matched
  rank-one error, prior generated (R-euc), and the orthogonal projector onto
  the actual protected directions in each mode.
- Source-to-claim adequacy: for protected slot \(i\) matched to \(p\),
  \[
  \operatorname{dist}(m_{p,M},{\cal U}_{I,M})
  \le\|m_{p,M}-\sigma_{i,M}u_{i,M}\|
  \le C_{\rm led}\eta_0\le C_{\rm sp}\bar\eta.
  \]
  Hence for the scratch mode \(u_M\),
  \[
  |\langle m_{p,M},u_M\rangle|
  \le\|P_{I,M}u_M\|+C_{\rm sp}\bar\eta
  =\lambda_M+C_{\rm sp}\bar\eta.
  \]
  Every first-order radial term contains three matched target factors and
  every first-order directional term contains the two untouched matched
  target-mode factors. Termwise contraction and the realized weight bound
  therefore give
  \[
  |\langle E_I^{(1)},u\otimes v\otimes w\rangle|
  \le C_1|I|\tau_{\rm up}\bar\eta\,\Lambda_I^+.
  \]
  Source convention and algorithm convention coincide because \(P_{I,M}\)
  is the exact orthogonal projector computed from the same actual protected
  unit directions; stable QR/SVD is an implementation of this projector, not
  a different metric.
- Residual-to-target adequacy: the produced first-order tensor is exactly the
  first-order part of the protected-error expansion in (Lev-split), and the
  consumed interface is its contraction with the same actual scratch tensor
  in the Frobenius inner product. No source-span projection is substituted for
  the actual protected-span score.
- Key positive/control term or structural source: two actual protected-span
  leverage factors in every first-order contraction.
- Opposing defect terms: distance of each matched target mode to its actual
  protected span and the radial/directional error amplitude. Both are bounded
  by the same prior (R-euc) record and \(\bar\eta\).
- Closure/dominance/absorption relation: \(C_\eta^+\) and \(C_{\rm sp}\) are
  fixed so \(\eta_0\le c_{\rm sp}\bar\eta\); \(C_1\) covers the finite exact
  expansion. The later observable inequality
  \(B_1(I)\Lambda_I^+\le\gamma_{\rm lev}s_I\) is the only relative
  absorption and is not assumed here.
- Accumulation behavior / scope compatibility: one finite sum over the
  current protected prefix; no recurrence. Dependence on \(|I|\) is displayed
  once in \(B_1(I)\).
- Obligation locality classification: step-local.
- Noncircular closure status: prior step_009 records -> step_004 exact split
  -> step_005; step_013 produces the prior records before this local lemma is
  invoked. The leverage inequality is concluded, not used to prove matching.
- Entry-state / first-update stress result: for \(I=\varnothing\), both sides
  are zero. At the first nonempty prefix the relevant target factor lies
  within the error of its one actual protected representative.
- Baseline conclusion preserved: in the exact orthogonal/noiseless case,
  protected target factors lie exactly in their actual protected spans and
  unresolved atoms have zero projection onto those spans.
- Producer-consumer provenance: step_004 and prior step_009 -> step_005 ->
  steps_006--008,013,015.
- Null or boundary regime tested: empty prefix, rank-deficient protected
  direction list handled by the orthogonal projector onto its actual span,
  leverage zero, leverage one, and exact matching.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without two protected-mode factors, an arbitrary first-order
  tensor could have large contraction at small pair leverage. The exact CP
  first-order expansion supplies those factors.
- Repair route if source is unsupported: /proof-sketch for a missing
  term-class split; /subagent-idea-generator only if the exact expansion
  contains a first-order term with fewer than two controlled target factors.

### Higher-order raw control and residual-relative route (step_006)

- Step ID: step_006.
- Claim class: raw defect control, lower-bound-free dominance, and generated
  unresolved-mass support.
- Theorem role: converts the two observable screen clauses into the exact
  residual-mass interface consumed by the landscape theorem.
- Mechanism source: exact higher-order rank-one telescoping, the source-normal
  output of step_004, the first-order output of step_005, and the two clauses
  of the actual protocol screen.
- Source-to-claim adequacy: every term in \(E_I^{(\ge2)}\) contains at least
  two members of \(\{\delta_i,e_{i,A},e_{i,B},e_{i,C}\}\); (R-euc),
  weight balance, and finite expansion give
  \[
  |\langle E_I^{(\ge2)},\psi\rangle|
  \le C_2|I|\tau_{\rm up}\bar\eta^2.
  \]
  step_004 separately gives
  \[
  |\langle D_I,\psi\rangle|\le\|D_I\|_F
  \le C_{\rm nor}|I|\|T\|_F P^{D_{\rm nor}-D_{\rm stat}}.
  \]
  These are precisely the two addends of \(B_2(I)\). No choice of
  \(D_{\rm stat}\) is used to delete either one.
- Residual-to-target adequacy: (Lev-split) is an equality for the actual
  current residual. Writing \(s_I=s_U+s_M\), every term of \(s_M\) is covered
  by the two raw inequalities; \(s_U\) is the contraction of the exact
  unresolved part of the same realized target.
- Key positive/control term or structural source: the observed positive score
  \(s_I\) and its two screen reserves \(s_I/64\) and
  \(\gamma_{\rm lev}s_I\).
- Opposing defect terms: first-order protected error, higher-order protected
  error, and raw source-normal error. Their signs are unknown, so absolute
  values are taken separately.
- Closure/dominance/absorption relation: on screen passage,
  \[
  |s_M|\le B_1\Lambda_I^++B_2
  \le(\gamma_{\rm lev}+1/64)s_I.
  \]
  Therefore
  \[
  |s_U|\ge(1-\gamma_{\rm lev}-1/64)s_I,\qquad
  W_U\ge|s_U|
  \ge(1-2\gamma_{\rm lev}-1/32)s_I,
  \]
  where the last displayed constant preserves explicit slack for later score
  and Hessian transfer. The same termwise expansion, with one or two tangent
  slots replacing a score slot, gives the derivative interfaces used in
  step_008:
  \[
  |\Delta_{\rm tan}|+|\Delta_{\rm Hess}|
  \le C(B_1\Lambda_I^++B_2),
  \]
  with the Hessian term divided by the stated \(N_I(g)\) when it is compared
  to the normalized certificate. The radial certificate first supplies
  \(t=g^3\ge c\tau_{\min}P^{-D_{\rm cap}/2}\), so these normalized derivative
  defects are compared at the same declared score/curvature scale. These are
  raw transfers, not a new screen clause.
- Accumulation behavior / scope compatibility: one local current-state
  inequality per attempted commit. Failed screens roll back exactly and
  create no accumulated forcing; passed screens feed a finite at-most-\(r\)
  induction.
- Obligation locality classification: step-local.
- Noncircular closure status: steps_004--005 produce every residual class
  before step_006 consumes the observable screen. step_006 does not assume
  unresolved support or future matching. Its output flows forward to
  steps_008--009 and step_013.
- Entry-state / first-update stress result: at \(I=\varnothing\), \(B_1=B_2=0\)
  and \(s_I=s_U\). On \({\cal E}_{\rm lb}^c\) with \(\nu=0,e>0\), the
  structural part may vanish but the raw \(P^{D_{\rm nor}-D_{\rm stat}}\)
  and \(\bar\eta^2\) terms remain in \(B_2\) and are dominated by the score
  floor before the conclusion is consumed.
- Baseline conclusion preserved: \(H=e=0\) makes \(s_M=0\), so every passing
  score is exactly unresolved target score.
- Producer-consumer provenance: steps_004--005 plus the observable (Lev)
  predicate -> step_006 -> steps_008--009,013,015.
- Null or boundary regime tested: equality in either screen clause,
  \(\nu=0,e>0\), \(e=0,\nu>0\), \({\cal E}_{\rm lb}\),
  \({\cal E}_{\rm lb}^c\), last unresolved label, and \(s_I=0\) (which cannot
  pass Cert/Lev).
- Target conclusion false or theorem-critical obstruction present if source vanishes: without the observed score reserves, protected residual could
  dominate the score and unresolved support would be false. Such states are
  rejected by the unchanged screen rule.
- Repair route if source is unsupported: /proof-sketch if a raw defect class
  is missing; /subagent-idea-generator if the observable screen cannot
  dominate an allowed persistent residual class.

### Genuine unresolved-neighborhood screen passage (step_007)

- Step ID: step_007.
- Claim class: generated membership, positive slack, and transaction
  reachability interface.
- Theorem role: proves that the new screen does not reject the target
  neighborhood needed by the unchanged full-space discovery dynamics.
- Mechanism source: upper normalized-Gram margin, prior (R-euc) protected
  directions, exact unresolved-target separation, continuity of the current
  score and protected-span projection, and the exponent order with
  \(D_{\rm stat}>D_{\rm nor}\).
- Source-to-claim adequacy: for unresolved label \(j\) and an exact signed atom
  \(\psi_j=\phi_j\), distinct-label Gram rows and protected-direction errors
  first give
  \[
  \lambda_{\min}(U_{I,M}^{\top}U_{I,M})\ge\tfrac12,
  \qquad
  \|U_{I,M}^{\top}m_{j,M}\|_2
  \le C\sqrt{|I|}(\nu+\bar\eta),
  \]
  where \(U_{I,M}\) contains the actual protected unit directions. The exact
  projector formula (or its QR/SVD equivalent) then gives, for every mode,
  \[
  \lambda_M(\psi_j)
  \le C\sqrt{|I|}(\nu+\bar\eta),\qquad
  \Lambda_I^+(\psi_j)
  \le C|I|(\nu+\bar\eta)^2.
  \]
  The residual reserve and prior accepted-error budget give
  \(s_I(\psi_j)\ge c_{\rm pass}\tau_j\). Fixed constants and exponent choices
  then verify the explicit strict inequalities
  \[
  64B_2(I)\le\tfrac14c_{\rm pass}\tau_j,\qquad
  B_1(I)C|I|(\nu+\bar\eta)^2
  \le\tfrac12\gamma_{\rm lev}c_{\rm pass}\tau_j.
  \]
  Lipschitz continuity on the guarded product spheres leaves a radius
  \(P^{-D_{\rm pass}}\) neighborhood in which the two right-side reserves are
  at least \(c_{\rm pass}\tau_j/8\) and
  \(\gamma_{\rm lev}c_{\rm pass}\tau_j/4\), respectively.
- Residual-to-target adequacy: the produced neighborhood is centered on the
  exact unresolved realized atom and uses the actual residual score and actual
  protected projectors queried by the protocol. It is not a source-frame,
  population, projected, or whitened neighborhood.
- Key positive/control term or structural source: unresolved self-score
  \(\tau_j\), pair/triple Gram reserve, and strict unoccupied-label status.
- Opposing defect terms: cross-label source correlations, protected direction
  errors, higher-order protected errors, raw source-normal numerical error,
  and neighborhood perturbation.
- Closure/dominance/absorption relation: the two displayed inequalities plus
  a Lipschitz loss of at most half their slack prove both screen clauses.
  Every raw numerical term is made small relative to \(\tau_{\min}\) using
  its explicit polynomial factor and the fixed exponent order, not a lower
  bound on \(\nu\).
- Accumulation behavior / scope compatibility: one uniform neighborhood for
  each legal prefix and each unresolved label; constants are history-uniform
  because the prefix budgets are uniform for \(s\le r\).
- Obligation locality classification: step-local.
- Noncircular closure status: steps_001,004--006 and prior prefix records
  produce every input. step_007 proves passage before step_015 uses the
  neighborhood for probability. It never assumes that the random dynamics
  reach it.
- Entry-state / first-update stress result: at the empty prefix every
  \(\lambda_M=0\) and both budgets vanish. At the final nonterminal prefix
  there is one unresolved label and the same uniform slack applies.
- Baseline conclusion preserved: exact orthogonal unresolved atoms have
  \(\lambda_M=0\), padded
  \(\Lambda_I^+=3(C_{\rm sp}\bar\eta)^2\), and positive self-score; the two
  explicit polynomial inequalities above prove passage despite the
  conservative padding.
- Producer-consumer provenance: steps_001,004--006 -> step_007 ->
  steps_013,015.
- Null or boundary regime tested: empty prefix, one unresolved root,
  dense/block frames, \(\nu=0,e>0\), exact \(H=e=0\), and QR/SVD rank
  deficiency among protected directions.
- Target conclusion false or theorem-critical obstruction present if source vanishes: if unresolved self-score were below the raw score floor, the
  screen could destroy reachability. The pair/triple reserve and exponent
  inequalities exclude that regime.
- Repair route if source is unsupported: /proof-sketch for a missing explicit
  inequality; /subagent-idea-generator if an allowed unresolved atom cannot
  pass the fixed observable screen.

### Leverage-routed current-residual landscape (step_008)

- Step ID: step_008.
- Claim class: positive activation, structural support isolation, signed
  negative curvature, and same-target singleton alternative.
- Theorem role: it is the sole producer of the unresolved label antecedent
  consumed by matching; it receives (Lev-route) and performs no protected
  matched-mixture exchange.
- Mechanism source: observable capture and radial certificates, the
  screen-derived \(W_U\) lower bound, biorthogonal coordinates
  \(D_M=M_MG_M^{-1}\), exact current-residual product-sphere derivatives, the
  unresolved weighted threshold lemma, and the finite normalized single-label
  and two-label tangent families.
- Source-to-claim adequacy: first set \(t=g^3,s=s_I,R_0=\|R_I\|_F\).
  Exact square completion and the radial certificate, in this order, give
  \[
  s\ge\sqrt2R_0P^{-D_{\rm cap}/2},\quad
  R_0e\le s/16,\quad
  (1-4e)s\le t\le(1+4e)s.
  \]
  Only then are derivative errors divided by \(t\). For
  \(x_M=M_M^\top u_M\), \(\alpha_M=G_M^{-1}x_M\), exact dual selection gives
  the unresolved-label stationarity equations with history/error terms
  bounded by the root-free \(\Theta_{\rm act}(I)\). Since step_006 gives
  \(W_U\ge c_U s\), a weighted threshold at
  \(\beta=1/(8\sqrt r)\) is now legally restricted to \(U_I\): either one
  unresolved label has three-mode dominant coefficients, or two unresolved
  labels/one mode straddle support. In the latter cases, exact dual pair
  vectors
  \[
  z_M^{p,q}=\alpha_{q,M}d_{p,M}-\alpha_{p,M}d_{q,M}
  \]
  are tangent and select only \(p,q\). Maximizing over the finite product-one
  sign family yields a unit \(\xi\) with
  \[
  \langle H_{\rm ang}\xi,\xi\rangle
  \le-4N_I(g)P^{-D_{\rm gap}},
  \]
  after explicit static leakage, history, normal, and numerical errors are
  bounded by half the direct unresolved source. Write
  \({\cal Q}(\xi)=-\langle H_{\rm ang}\xi,\xi\rangle\) after the same radial
  normalization; this is the positive score-Hessian source used below. This
  contradicts (Cert).
- Residual-to-target adequacy: every derivative is for the actual \(R_I\) and
  exact objective. Dual coordinates are an invertible representation of the
  same realized source span; the exact selectors are translated back to unit
  ambient product-sphere tangents before the Hessian is consumed. The raw
  residual difference controlled in steps_005--006 is dominated at the exact
  certificate score/curvature scales.
- Key positive/control term or structural source: \(W_U\ge c_Us>0\), target
  weight lower bound, and the exact two-label unresolved tensor contribution,
  giving a structural scale \(\mu_{\rm act}=c_{\rm act}\tau_{\min}/r^2\).
- Opposing defect terms: static \(\nu^2\) leakage, accepted-history forcing,
  source-normal term, dual-Gram distortion, radial mismatch, angular
  stationarity error, and numerical \(e\). Each has an earlier producer and
  is required to satisfy
  \(12\varepsilon_{\rm act}+3B_2\le\mu_{\rm act}\) and
  \(g^3\mu_{\rm act}\ge8N_I(g)P^{-D_{\rm gap}}\).
- Closure/dominance/absorption relation: the finite case split is low score,
  common unresolved support, first unresolved support straddle, one remaining
  unresolved label, then unique singleton. Equality belongs to the active
  set. With \(\beta=1/(8\sqrt r)\), the normalized tangent calculation gives,
  up to the already named \(\varepsilon_{\rm act}\) defect,
  \[
  {\cal Q}_{\rm low}\ge c\tau_{\min}\beta,\qquad
  {\cal Q}_{\rm straddle}\ge c\tau_{\min}\beta^2,\qquad
  {\cal Q}_{\rm common}\ge c\tau_{\min}\beta^3.
  \]
  The chosen \(D_{\rm cap},D_{\rm gap},D_{\rm stat}\) make each exceed
  \(8\mu_{\rm act}\), so every non-singleton branch violates the Hessian
  certificate; the complement exports one unresolved singleton with positive
  product-one sign and quantitative score reserve.
- Accumulation behavior / scope compatibility: one finite calculation per
  passed certificate. Prior forcing is a bounded prefix input; no new
  recurrence or persistent signed term is introduced.
- Obligation locality classification: step-local.
- Noncircular closure status: steps_003--007 -> step_008 -> step_009.
  Unresolved support comes from step_006, not from future matching. A
  root-specific \(\Theta\)-row is not consumed until step_009 receives the
  selected label.
- Entry-state / first-update stress result: at the empty prefix, \(W_U\) is
  the full target mass and exact atoms enter the singleton branch. Low score,
  common support, straddling support, opposite signs, equality at threshold,
  one unresolved label, and the exact \(H=e=0\) branch are assigned.
- Baseline conclusion preserved: with orthogonal exact atoms, current and dual
  coordinates coincide, all defects vanish, and a certified unresolved atom
  is an exact singleton.
- Producer-consumer provenance: steps_003--007 -> step_008 -> step_009;
  structural exchange outputs terminate locally by contradicting Cert, and
  only the singleton flows downstream.
- Null or boundary regime tested: \(s=0\) (cannot pass), radial threshold
  equality, \(|U_I|=1\), two unresolved equal-weight labels, mixed signs,
  \({\cal E}_{\rm lb}^c\), and exact baseline.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without the positive \(W_U\) source, unresolved active sets can be
  empty and the singleton conclusion is false. The observable screen-derived
  route is active before support selection and excludes that state.
- Repair route if source is unsupported: /proof-sketch for a tangent or
  threshold interface defect; /subagent-idea-generator only if the exact
  unresolved-mass route cannot support the unchanged certificate theorem.

### Unique matching and calibration (step_009)

- Step ID: step_009.
- Claim class: generated membership, separation, Euclidean calibration, and
  injection extension.
- Theorem role: converts the sole surviving landscape singleton into the
  exact outputs consumed by the transition ledger, next prefix, and terminal
  chart.
- Mechanism source: step_008's isolated unresolved label, exact radial
  comparability, dual/primal Gram bounds, finite product-one sign orbit,
  separation test, and the selected root's already-produced \(\Theta_I\)-row.
- Source-to-claim adequacy: the singleton coordinate inequalities and
  \(x_M=G_M\alpha_M\) give, for one \(p\in U_I\),
  \[
  |\delta_i|+\max_M\|\sigma_{i,M}u_{i,M}-m_{p,M}\|
  \le C_{\rm led}\eta_0.
  \]
  Exact target-frame history contractions and the Neumann equation give
  (R-dir). Any second eligible label would violate the singleton inequalities
  or the \(1/4\) separation clause. Product-one signs preserve the represented
  rank-one tensor.
- Residual-to-target adequacy: the produced actual balanced slot is compared
  directly to the exact realized target slot under Euclidean direction/radius
  error. No projected atom is committed and no analysis sign is queried by
  the algorithm.
- Key positive/control term or structural source: isolated unresolved score,
  positive radial root, Gram reserve, and separation slack.
- Opposing defect terms: other unresolved source leakage, prior history,
  numerical stationarity, source-normal residual, and radial mismatch; all
  are bounded in steps_004,006,008.
- Closure/dominance/absorption relation: the landscape singleton margin and
  chosen exponents leave \(C_{\rm led}\eta_0<1/8\), so label uniqueness and
  separation are strict; the selected \(\Theta\)-row bounds every off-label
  directional correlation in (R-dir).
- Accumulation behavior / scope compatibility: one new distinct label per
  successful commit, at most \(r\). The injection grows monotonically.
- Obligation locality classification: step-local.
- Noncircular closure status: step_008 produces \(p\) before step_009 consumes
  its row. step_013 uses this output to build the next legal prefix; step_009
  does not assume prefix closure.
- Entry-state / first-update stress result: the first commit extends the empty
  injection; the last commit has one unresolved label; a candidate aligned
  with a protected label fails separation or cannot be the unresolved
  singleton from step_008.
- Baseline conclusion preserved: exact atoms produce \(\delta=e_{i,M}=0\),
  exact matching, and a bijection after \(r\) commits.
- Producer-consumer provenance: step_008 -> step_009 ->
  steps_004--005 on the next temporal prefix, steps_010--013,015--016,018.
- Null or boundary regime tested: separation equality \(1/4\), sign ties,
  repeated protected label, first/last commit, and exact atom.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without isolated score or Gram reserve, labels may be ambiguous.
  step_008 and step_001 provide these sources before matching.
- Repair route if source is unsupported: /proof-sketch for a calibration
  bridge defect; /subagent-idea-generator only if the unchanged separation
  and target geometry cannot yield unique matching.

### Exact J transition and honest two-label audit (step_010)

- Step ID: step_010.
- Claim class: exact signed multilinear update, positive charge, and
  boundary-valid local transition control.
- Theorem role: produces the one-step history increment that the rootwise and
  global ledgers sum.
- Mechanism source: the actual accepted tensor error from step_009, exact
  multilinear expansion in its radial/directional errors, the local
  zero-diagonal \(z\) produced by step_003, and the symmetric use of
  \(J_M(p,\ell)\) in both the positive product and exact-target baseline.
- Source-to-claim adequacy: the current setting convention gives
  \(J_M(p,p)=1,z_{p,M,p}=0\) and \(J_M(p,\ell)=H_M(p,\ell)\) for
  \(\ell\ne p\). Direct scalar expansion, with no cited wrapper, proves
  \[
  A_{I_t;j,M,\ell}-A_{I_{t-1};j,M,\ell}
  \le2\Gamma_\star\widetilde\Upsilon^M_{p_t;j,\ell}
  \]
  for every post-commit unresolved \(j\), every \(\ell\ne j\), including
  \(\ell=p_t\), and all cyclic modes. The same expansion proves (R-tensor).
- Residual-to-target adequacy: \(E_{i_t}\) is the exact difference between the
  committed rank-one tensor and its matched realized target atom. \(A_I\),
  (R-tensor), and the J baseline all contract this same error against the same
  realized target frame; no orthogonal surrogate or absolute-only target is
  substituted.
- Key positive/control term or structural source: for \(\ell=p\), the
  explicit diagonal
  \[
  \eta_0H_N(p,j)H_L(p,j)+(1+\eta_0)
  [H_N(p,j)z_{p,L,j}+H_L(p,j)z_{p,N,j}
  +z_{p,N,j}z_{p,L,j}],
  \]
  and for \(\ell\ne p\), the exact H/K/J baseline cancellation.
- Opposing defect terms: radial/directional errors, \(Hz\), \(zz\), eta
  padding, and the positive numerical off-diagonal padding in \(z\). Each
  appears explicitly in the charge rather than being discarded.
- Closure/dominance/absorption relation: on the isolated O.1 family
  \(H_B(p,j)=H_C(p,j)=h,H_A(p,j)=0,\nu=h\), exact expansion yields upper and
  matching positive lower controls
  \[
  c_-\bigl(h^4+eh+e^2\bigr)
  \le\widetilde\Upsilon^A_{p;j,p}
  \le c_+\bigl(h^4+eh+e^2\bigr).
  \]
  Fixed leading constants make the charge dominate the exact
  \(2h^4+O(h^6)\) increment, including \(h=e^2\). No lower bound comparing
  \(h\) and \(e\) is used. Embedded two-label blocks retain the global
  \(\nu^2h^2\) term rather than relabeling it \(h^4\).
- Accumulation behavior / scope compatibility: this row proves one nonnegative
  charge for one accepted transition. It does not sum roots, labels, or
  commits; steps_011--012 perform those sums once.
- Obligation locality classification: step-local.
- Noncircular closure status: step_003 defines local \(z\), step_009 produces
  the actual error, then step_010 proves the update before steps_011--013
  consume it. The quantitative \(z\) norm is not assumed to define or prove
  the exact update.
- Entry-state / first-update stress result: at the first commit \(A=0\).
  The cases \(h=0\), \(0<h\ll e\), \(h=e^2\), \(e=0\), captured-label
  diagonal, and off-diagonal \(\ell\ne p\) are all covered cyclically.
- Baseline conclusion preserved: \(H=e=0\) gives \(z=0\), zero charge, zero
  accepted error, and no history forcing.
- Producer-consumer provenance: steps_003,009 -> step_010 ->
  steps_011--013.
- Null or boundary regime tested: zero diagonal, \(h=e^2\), embedded local
  block with larger global \(\nu\), exact limit, and every cyclic mode.
- Target conclusion false or theorem-critical obstruction present if source vanishes: suppressing \(J(p,p)=1\) or positive numerical terms loses a real
  transition at small \(h\). The exact current-notation expansion supplies
  both before the update is consumed.
- Repair route if source is unsupported: /proof-sketch for a charge-interface
  mismatch; /subagent-idea-generator if the exact symmetric update fails in
  the approved two-label family.

### Raw rootwise profile and captured-root diagonal sum (step_011)

- Step ID: step_011.
- Claim class: generated boundedness, rootwise finite accumulation, and
  no-extra-multiplicity diagonal control.
- Theorem role: converts local \(z\) and diagonal charges into the exact
  per-captured-root interface needed by the global ledger.
- Mechanism source: rootwise transfer gap \(q_{\rm row}\le1/4\), static KJ
  source, prior generated history budget, zero diagonal, and Cauchy--Schwarz
  over the post-commit unresolved-root index.
- Source-to-claim adequacy: the exact rootwise Neumann recurrence on the array
  in setting.md gives, before specialization,
  \[
  \|z_p\|_{{\rm root},2}\le
  C_z(\nu^2+r\nu^3+\sqrt r\,e).
  \]
  This is the same block row and same zero diagonal consumed by (J-diag).
  Factor the sums \(\sum_j H_N(p,j)z_{p,L,j}\) by rowwise
  Cauchy--Schwarz, use \(\|H_Ne_p\|_2\le\nu\), and keep the numerical
  remainder explicit to obtain exactly
  \[
  \sum_{j\in U_{I_t}}\sum_M
  \widetilde\Upsilon^M_{p_t;j,p_t}
  \le C_{\rm Jdiag}
  [\eta_0\nu^2+\nu\|z_{p_t}\|_{{\rm root},2}
   +\|z_{p_t}\|_{{\rm root},2}^2+r e].
  \]
- Residual-to-target adequacy: the root \(p\) is the same generated target
  label used by the accepted error and J charge; the consumed norm includes
  precisely all mode/off-diagonal coordinates for that root. No maximum over
  unrelated roots is substituted after summation.
- Key positive/control term or structural source: \(q_{\rm row}<1\), column
  \(\ell_2\) Gram control, and zero diagonal.
- Opposing defect terms: static \(\nu^2\), history \(r\nu^3\), numerical
  \(\sqrt r e\), eta padding, and quadratic \(z^2\).
- Closure/dominance/absorption relation: \(r\nu=O(1/\log r)\), \(e\le1\),
  and the raw row inequality imply
  \[
  \eta_0\nu^2+\nu\|z_p\|+\|z_p\|^2+r e
  \le C(\nu^3+r e)
  \]
  on both event branches. The optional \(\|z_p\|\le C'_z\nu^2\) is exported
  only if \(\sqrt r e\le c\nu^2\) is separately verified, or at \(H=e=0\).
- Accumulation behavior / scope compatibility: rootwise contraction is
  geometric; the diagonal sum is finite over the current post-commit
  unresolved roots and three modes. Its output is already summed and cannot
  be multiplied by a tested-label count later.
- Obligation locality classification: step-local.
- Noncircular closure status: step_002 supplies the static gap, step_003 local
  \(z\), step_010 exact charges, and the prior prefix budget is a local
  conditional input. step_012 produces the next budget; step_013 starts the
  induction at zero and validates this order.
- Entry-state / first-update stress result: the empty prefix has no stored
  captured root; after the first commit the bound uses only static source and
  zero prior history. At \(\nu=0,e>0\), the raw row is
  \(O(\sqrt r e)\) and the diagonal sum is \(O(r e)\), not falsely zero.
- Baseline conclusion preserved: at \(H=e=0\), the row and diagonal charge
  vanish exactly.
- Producer-consumer provenance: steps_002--003,010 and prior step_012 budget
  -> step_011 -> steps_012--013.
- Null or boundary regime tested: empty row, one unresolved root, dense/block
  frames, \(\nu=0,e>0\), branch threshold equality, and exact baseline.
- Target conclusion false or theorem-critical obstruction present if source vanishes: entrywise summation can create an extra \(\sqrt r\) or \(r\).
  Rootwise Cauchy--Schwarz and zero diagonal are active before global use.
- Repair route if source is unsupported: /proof-sketch for a norm-interface
  defect; /subagent-idea-generator if the declared transfer cannot yield the
  required rootwise contraction.

### Off-diagonal factorization and one-time global ledger (step_012)

- Step ID: step_012.
- Claim class: finite-budget recurrence closure and accepted-error
  accumulation.
- Theorem role: exports all prefix-uniform history and tensor-influence
  budgets consumed by later landscapes and final induction.
- Mechanism source: step_010's exact one-step J update, step_011's already
  summed diagonal output, the off-diagonal identity \(J_M(p,\ell)=H_M(p,\ell)\),
  static \(K_MJ_M\), both Neumann small-gain gaps, rootwise
  \(\ell_2\)-to-\(\ell_1\) factorization, and exact baseline cancellation.
- Source-to-claim adequacy: split the global charge by \(\ell=p_t\) and
  \(\ell\ne p_t\). The first part is consumed exactly once from step_011.
  The second has an explicit KJ/Neumann factorization in the same
  root/mode/tested-label convention as \(A_I\). Summing the one-step relation
  \(\Delta A\le2\Gamma_\star\widetilde\Upsilon\) yields
  \[
  {\mathfrak U}_s\le C_J\Gamma_\star r\nu^3+C_Jr^2e,
  \]
  and then (R-hist-budget), (R-budget), and (R-acc) with the exact displayed
  constants and no additional label factor.
- Residual-to-target adequacy: all charges bound contractions of the actual
  accepted tensor errors against the exact target frame. (R-acc) remains a
  tensor-influence budget; it is not exported as factor distance.
- Key positive/control term or structural source: exact target-baseline
  subtraction, KJ's two-correlation source, rootwise contraction, and finite
  one-step charge.
- Opposing defect terms: diagonal structural and numerical terms,
  off-diagonal direct/transitive terms, longer Neumann paths, and accepted
  numerical padding. Their signs are handled by nonnegative charges; each is
  assigned once to \(r\nu^3\) or \(r^2e\).
- Closure/dominance/absorption relation: the diagonal sum is
  \(O(\nu^3+r e)\) per captured root and therefore
  \(O(r\nu^3+r^2e)\) globally. The off-diagonal KJ/Neumann sum is no larger.
  The history recurrence and resolvent inverse preserve the same budget.
  Finally, \(r\nu=O(1/\log r)\) and fixed \(D_{\rm stat}\) place (R-acc)
  below the static angular-isolation scale with an explicit inequality.
- Accumulation behavior / scope compatibility: finite-budgeted over exactly
  the tuples in \({\mathfrak U}_s\): each actual commit, post-commit
  unresolved root, allowed tested label, and mode once. The accumulated
  forcing is nonnegative, and the concrete budget is the displayed global
  sum. Failed probes contribute zero.
- Obligation locality classification: step-local.
- Noncircular closure status: step_010 -> step_011 -> step_012. A prior
  prefix budget is consumed locally; step_013 proves by induction that it
  holds before each next transition, beginning with zero.
- Entry-state / first-update stress result: \(s=0\) gives
  \({\mathfrak U}_0=A_\varnothing=0\). The first commit uses only static
  source. At \(s=r\), there are no unresolved roots and no new charge.
- Baseline conclusion preserved: all charges, history, and accepted errors
  vanish at \(H=e=0\).
- Producer-consumer provenance: steps_010--011 -> step_012 ->
  steps_013,015,020 and the next temporal steps_003--011.
- Null or boundary regime tested: every commit order, dense/block frame,
  isolated two-label diagonal, off-diagonal three-label chain,
  \(\nu=0,e>0\), and exact baseline.
- Target conclusion false or theorem-critical obstruction present if source vanishes: a crude global entrywise sum gives a forbidden multiplicity and
  may exceed the isolation margin. The rootwise/one-time relations are active
  before any downstream landscape call.
- Repair route if source is unsupported: /proof-sketch for a factorization or
  consumer-path defect; /subagent-idea-generator if no same-setting
  all-commit budget can meet the target scale.

### Noncircular protected-prefix closure (step_013)

- Step ID: step_013.
- Claim class: generated invariant, all-prefix recurrence closure, and exact
  rollback preservation.
- Theorem role: discharges every local conditional prefix hypothesis and
  produces the legal interface consumed by transaction reachability.
- Mechanism source: finite induction over successful commits; base
  \(I_0=\varnothing,\pi=\varnothing,A=0,D=0\); steps_003--012 for one legal
  successful transition; and exact rollback for every failed attempt.
- Source-to-claim adequacy: the induction statement lists, rather than
  assumes, matching/injection, prior stationarity records, residual reserve,
  (Lev-normal), (Lev-split), both raw leverage inequalities,
  unresolved-neighborhood passage, local \(\Theta/z\), raw rootwise bound,
  J transition, (Lev-Jdiag), (J-global), (R-hist-budget), (R-budget), and
  (R-acc). From a valid prefix, steps_004--009 certify one passed candidate
  and extend the injection; steps_010--012 create the next budgets. A failed
  candidate leaves every listed object unchanged.
- Residual-to-target adequacy: the induction follows the actual residual and
  actual protected factors after every commit/rollback. Analysis matchings and
  ledgers annotate those objects but do not alter them.
- Key positive/control term or structural source: finite distinct-label
  injection, exact rollback, raw score screen, and one-time J budget.
- Opposing defect terms: accepted tensor errors, source-normal numerical
  forcing, row/history propagation, and arbitrarily many failed probes before
  tape exhaustion.
- Closure/dominance/absorption relation: successful transitions are at most
  \(r\), and step_012 bounds their cumulative effect. Failures have exactly
  zero state change, so their count does not appear in the invariant budget.
  The induction stops after \(r\) distinct labels.
- Accumulation behavior / scope compatibility: finite induction with a
  monotone injection and explicit one-step charge; accumulated forcing is
  controlled by \({\mathfrak U}_s\), not by an unnamed bootstrap reserve.
- Obligation locality classification: step-local.
- Noncircular closure status: base state -> conditional steps_003--012 ->
  next prefix. The induction proves the prior-prefix hypotheses used in the
  next invocation; no step assumes the final all-prefix conclusion.
- Entry-state / first-update stress result: all generated arrays and normal
  errors are zero at the empty prefix. The first update has no prior history;
  the last update removes the last unresolved label; a failed first probe
  returns to the exact base.
- Baseline conclusion preserved: exact atoms extend the injection with zero
  error, failed probes vanish, and after \(r\) commits the exact balanced
  target is represented.
- Producer-consumer provenance: steps_001--012 -> step_013 ->
  steps_014--016,020 and temporal prefix inputs.
- Null or boundary regime tested: empty prefix, first and last commits, no
  successful probe, repeated failures, screen equality, \(\nu=0,e>0\), and
  exact baseline.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without exact rollback or a finite charge budget, local conditions
  need not persist. Both mechanisms precede the next-prefix consumer.
- Repair route if source is unsupported: /proof-sketch for an induction
  interface defect; /subagent-idea-generator if the unchanged transaction
  cannot preserve the theorem-facing prefix.

### Deterministic transaction and exact rollback (step_014)

- Step ID: step_014.
- Claim class: descent/escape dynamics, finite local work, and exact state
  preservation on failure.
- Theorem role: realizes the abstract prefix interface with the exact
  algorithmic transaction map.
- Mechanism source: exact radial derivative
  \(\partial_gf_I=-3g^2(s_I-g^3)\), safeguarded unique positive-root
  bracketing, product-sphere gradient and Hessian identities, compact radius
  guard, dyadic exact-loss Armijo backtracking, deterministic approximate
  minimum-eigenvector routine, and the explicit rollback map.
- Source-to-claim adequacy: every calculation uses the current residual and
  actual factors under the exact objective. Fixed guard smoothness and
  trust-region displacement imply an accepted-step lower bound
  \(P^{-D_{\rm ls}}\) whenever gradient or negative curvature exceeds the
  protocol tolerance. The two signs of a negative-curvature tangent are
  evaluated on exact loss. The screen is evaluated only after the unchanged
  certificate and never modifies the direction.
- Residual-to-target adequacy: a success produces the actual balanced scratch
  slot consumed by step_009/step_013; a failure maps that same scratch slot to
  exact joint zero, so represented tensor, residual, and loss equal the
  pretransaction objects.
- Key positive/control term or structural source: positive radial score,
  exact Armijo decrease, negative curvature when present, and compact-guard
  derivative bounds.
- Opposing defect terms: zero/negative score, missing or oversized radial
  root, stationarity ambiguity, line-search exhaustion, radius guard,
  certificate failure, and screen failure.
- Closure/dominance/absorption relation: each accepted nonstationary trial
  decreases exact loss by an inverse-polynomial amount determined by its
  gradient/curvature threshold and \(P^{-D_{\rm ls}}\); compact loss range
  bounds the number of trials by \(H_{\rm tx}=P^{O(1)}\). Every other outcome
  is classified as failure and invokes exact rollback.
- Accumulation behavior / scope compatibility: finite local transaction. A
  failed transaction has exactly zero persistent forcing; only a successful
  final state is supplied once to the prefix induction.
- Obligation locality classification: step-local.
- Noncircular closure status: step_013 supplies a legal prefix, step_014
  defines success/failure dynamics, and steps_015--016 add probability. No
  probability statement is used to prove deterministic rollback.
- Entry-state / first-update stress result: the scratch slot enters at radius
  \(\delta\); negative score triggers the prescribed one-mode sign flip; zero
  score fails; the first accepted trial follows the same Armijo rule.
- Baseline conclusion preserved: exact rollback leaves an exact target prefix
  unchanged, and an exact target state is stationary rather than forced to
  move.
- Producer-consumer provenance: step_013 -> step_014 -> steps_015--016.
- Null or boundary regime tested: zero score, root at guard boundary,
  eigenvalue threshold equality, failed screen, exhausted local work, and
  exact stationarity.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without an accepted-step floor local work may be nonpolynomial;
  without exact rollback failures would accumulate. Compact derivative bounds
  and the explicit reset are active before reachability is consumed.
- Repair route if source is unsupported: /proof-sketch for a dynamics/work
  interface defect; /subagent-idea-generator if the fixed protocol itself
  lacks rollback or polynomial guarded progress.

### History-uniform Haar reachability and finite tape (steps_015--016)

- Step ID: steps_015--016.
- Claim class: generated support event, conditional probability lower bound,
  finite-horizon amplification, and all-commit output.
- Theorem role: turns the deterministic landscape/prefix theorem into the
  separately randomized discovery theorem.
- Mechanism source: full-space Haar anti-concentration, radial activation,
  deterministic transaction flow from step_014, the inverse-polynomial-slack
  unresolved neighborhood from step_007, the unique-label output from
  step_009, exact rollback, and assump:random-tape.
- Source-to-claim adequacy: for every legal history with \(U_I\ne\varnothing\),
  the standard one-dimensional Haar small-ball bound in each independent mode
  gives, for a fixed unresolved \(j\),
  \[
  \mathbb P\!\left(
  |\langle\omega_M,m_{j,M}\rangle|\ge c/\sqrt n
  \text{ for all }M\right)\ge c_0,
  \]
  and the derived source/history bounds leave a sign-corrected radial score
  window at least \(\|T\|_FP^{-C_{\rm seed}}\) on an
  \((nr)^{-C_{\rm seed}}\)-probability subevent. The exact-loss safeguarded
  gradient/negative-curvature flow and the step floor then reach the
  certificate neighborhood within \(H_{\rm tx}\); step_007 proves both
  screen clauses there. This yields
  \[
  \mathbb P_{\rm tape}(\text{next commit}\mid T,\text{history})
  \ge p_{\rm tx}=(nr)^{-c_{\rm tx}}.
  \]
  The proof uses the unresolved label only to analyze the Haar event; the
  algorithm queries no target factor or label.
- Residual-to-target adequacy: a successful event ends at the actual
  certificate/screen state and actual committed factors. It is not merely
  close to an analysis trajectory. Failed seeds leave the exact prefix
  unchanged, so conditional seed trials remain valid.
- Key positive/control term or structural source: Haar activation mass,
  history-uniform attraction/escape window, and independent fresh tape
  entries.
- Opposing defect terms: unfavorable seed, score sign, ambiguous flow,
  certificate/screen miss, guard failure, and finite tape exhaustion.
- Closure/dominance/absorption relation: choose
  \[
  N_{\rm tx}=\left\lceil C_{\rm tape}r(nr)^{c_{\rm tx}}\log(2r)\right\rceil.
  \]
  A stopped geometric/negative-binomial tail plus a union allocation over at
  most \(r\) successes gives conditional all-commit probability at least
  \(1-r^{-10}\). Each trial costs polynomial work and the QR/SVD of at most
  \(r\) protected directions is polynomial.
- Accumulation behavior / scope compatibility: stopped finite tape. Failures
  have zero state forcing; successes monotonically extend the injection.
  The probability bound is conditional on each revealed history and therefore
  composes without assuming that generated histories are exchangeable.
- Obligation locality classification: step-local.
- Noncircular closure status: steps_007,009,013--014 -> step_015 ->
  step_016. The probability proof consumes the completed deterministic
  landscape and does not produce an input used upstream.
- Entry-state / first-update stress result: the empty prefix has \(r\)
  unresolved labels and the same history-uniform bound. After \(r-1\)
  successes the last label has the screen-passing neighborhood from step_007.
  Exact zero score and tape exhaustion are failures accounted for in the tail.
- Baseline conclusion preserved: orthogonal unresolved atoms have zero
  leverage and are not screened out; rollback preserves exact prior commits.
- Producer-consumer provenance: steps_007,009,013--015 -> step_016 ->
  step_018 and step_020.
- Null or boundary regime tested: empty/last prefix, repeated failures,
  history-dependent seed use, screen slack boundary, exhausted tape, and exact
  orthogonal target.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without a history-uniform positive window or screen passage, the
  tape may never complete. steps_007 and step_015 supply both sources before
  amplification.
- Repair route if source is unsupported: /proof-sketch for an activation or
  probability interface defect; /subagent-idea-generator if the unchanged
  finite-Haar procedure cannot attain inverse-polynomial success.

### Exact-target balanced PL geometry (step_017)

- Step ID: step_017.
- Claim class: positive coercivity, local basin, quadratic growth, and PL.
- Theorem role: produces terminal geometry independently before the discovered
  tuple is tested for membership.
- Mechanism source: exact balanced CP Jacobian at the realized generally
  nonorthogonal target, pair/triple Khatri--Rao reserves from step_001,
  removal of continuous scaling by balance, and direct current-notation
  Taylor bounds.
- Source-to-claim adequacy: after choosing a representative of the finite
  sign/permutation orbit, every balanced tangent \(\Delta\) satisfies
  \[
  c_Jg_{\min}^2\|\Delta\|_2
  \le\|D\Psi(Q^\star)\Delta\|_F
  \le C_Jg_{\max}^2\|\Delta\|_2.
  \]
  Multilinearity gives Jacobian and residual-Hessian variation bounded by
  \(Crg_{\max}\operatorname{dist}(Q,{\cal Z}_\star)\) times the correct
  weight powers. Choosing
  \(\varrho_{\rm PL}=c_{\rm chart}g_{\min}/r\) makes each variation at most
  one quarter of the exact-root floor and yields
  \[
  \|\operatorname{grad}_{\rm bal}F(Q)\|_F^2
  \ge2\mu_{\rm PL}F(Q),\quad
  \mu_{\rm PL}\ge c_\mu g_{\min}^4.
  \]
- Residual-to-target adequacy: the chart reference is the exact \(Q^\star\)
  orbit, the metric is full rank-\(k\) Euclidean factor distance, and the loss
  residual is \(T-\Psi(Q)\) in Frobenius norm. No orthogonalized,
  preconditioned, population, or projected target is used.
- Key positive/control term or structural source: exact-target Jacobian floor
  and pair/triple Gram reserve.
- Opposing defect terms: Gram off-diagonal terms, Jacobian variation,
  residual times second derivative, finite-orbit ambiguity, and guard
  boundary.
- Closure/dominance/absorption relation: fixed \(c_{\rm chart}\) makes all
  Taylor defects at most one quarter of the Jacobian/Hessian floors. Since
  \(g_{\min}\ge(2\kappa)^{-1}\) and \(P\ge r\), a fixed \(D_{\rm PL}\)
  gives \(\varrho_{\rm PL},\mu_{\rm PL}\ge P^{-D_{\rm PL}}\). Direct compact
  derivatives also give \(L_{\rm chart}=C_Lg_{\max}^4\).
- Accumulation behavior / scope compatibility: local deterministic geometry;
  no terminal trajectory is assumed.
- Obligation locality classification: step-local.
- Noncircular closure status: step_001 -> step_017; step_018 tests membership
  only after the radius exists, and step_019 starts descent afterward.
- Entry-state / first-update stress result: at \(Q^\star\), residual and
  gradient are zero while the Jacobian floor is active in every nonzero
  balanced tangent.
- Baseline conclusion preserved: at identity Grams, the exact block
  calculation gives a constant-relative radius
  \(c_{\rm orth}g_{\min}\) and the same zero-loss target.
- Producer-consumer provenance: step_001 -> step_017 -> steps_018--020.
- Null or boundary regime tested: exact target, minimum target weight,
  maximum allowed weight ratio, finite-orbit boundary, chart boundary, and
  exact orthogonal specialization.
- Target conclusion false or theorem-critical obstruction present if source vanishes: zero target weight or loss of pair/triple conditioning can destroy
  the Jacobian floor. Primitive conditions and step_001 exclude those cases.
- Repair route if source is unsupported: /proof-sketch for a local-geometry
  interface defect; /subagent-idea-generator if the approved source class
  cannot support a positive exact-target chart.

### Same-target chart entry (step_018)

- Step ID: step_018.
- Claim class: generated basin membership and discovery-to-terminal
  residual-to-target bridge.
- Theorem role: supplies the sole legal entry object for terminal descent.
- Mechanism source: step_016's actual all-commit tuple, the bijective injection
  and product-one signs from step_009/step_013, per-slot (R-euc), cube-root
  mean-value bound, product-weight balance, and step_017's radius.
- Source-to-claim adequacy: for slot \(i\) matched to \(p\),
  \(g_i=g_p^\star(1+\delta_i)^{1/3}\), and
  \[
  \|\sigma_{i,M}g_iu_{i,M}-g_p^\star m_{p,M}\|
  \le Cg_p^\star(|\delta_i|+\|e_{i,M}\|).
  \]
  Summing three modes and exactly \(r\) active slots gives
  \[
  \operatorname{dist}(Q_{\rm fin},{\cal Z}_\star)
  \le C_{\rm ent}g_{\max}\sqrt{3r}\,\eta_0.
  \]
  Dividing by \(c_{\rm chart}g_{\min}/r\) leaves
  \(C\chi_\tau r^{3/2}\eta_0\). The structural part is
  \(O(1/(\sqrt r\log^2 r))\), and the numerical part is
  \(r^{3/2}e\le r^{-1/2}\) after the fixed \(D_{\rm stat}\ge2\) choice.
  Fix \(r_0\) and the source margin so this is at most
  \(\theta_{\rm ent}\le1/2\).
- Residual-to-target adequacy: produced object is the actual generally
  nonorthogonal tuple; consumed object is the exact target orbit in the same
  full-state factor metric. The residual terms are exactly radial cube-root
  and signed direction errors from (R-euc). (R-acc) is explicitly not used as
  factor distance.
- Key positive/control term or structural source: weight-scaled PL radius and
  per-slot Euclidean calibration.
- Opposing defect terms: \(\sqrt r\) accumulation, structural
  \(\Gamma_\star\nu^2\), numerical \(e\), target-weight ratio, and finite
  permutation/sign alignment.
- Closure/dominance/absorption relation: the displayed raw comparison proves
  \(\operatorname{dist}(Q_{\rm fin},{\cal Z}_\star)
  \le\theta_{\rm ent}\varrho_{\rm PL}\), leaving a strict path reserve for
  step_019. Every term and threshold is explicit.
- Accumulation behavior / scope compatibility: one Cauchy--Schwarz sum over
  exactly \(r\) slots; no terminal iteration has occurred.
- Obligation locality classification: step-local.
- Noncircular closure status: steps_009,013,016 produce the actual tuple and
  signs; independently step_017 produces the radius; step_018 compares them
  before step_019 consumes membership.
- Entry-state / first-update stress result: at \(H=e=0\), the aligned tuple is
  exactly \(Q^\star\). At maximal allowed \(\nu\), the entry/radius ratio still
  tends to zero at the displayed rate.
- Baseline conclusion preserved: exact target entry has zero distance and uses
  the same target, not a positive-radius surrogate.
- Producer-consumer provenance: steps_009,013,016--017 -> step_018 ->
  steps_019--020.
- Null or boundary regime tested: exact tuple, independent two-label blocks,
  minimum weight, maximal weight ratio, strict entry reserve, and joint-zero
  unused slots.
- Target conclusion false or theorem-critical obstruction present if source vanishes: tensor-influence control alone does not imply factor entry. The
  direct (R-euc) bridge and weight-scaled radius are active before membership.
- Repair route if source is unsupported: /proof-sketch for a factor-distance
  bridge defect; /subagent-idea-generator if the unchanged all-commit accuracy
  cannot enter the exact-target chart.

### Terminal first-exit descent and public theorem (steps_019--020)

- Step ID: steps_019--020.
- Claim class: contraction, first-exit invariance, arbitrary-accuracy rate,
  probability/rank/runtime specialization, and baseline recovery.
- Theorem role: closes the exact material-partial theorem.
- Mechanism source: step_017's quadratic sandwich, PL and compact smoothness;
  step_018's strict entry reserve; exact-loss balanced trust-region Armijo
  decrease; and direct substitution of all exposed parameters.
- Source-to-claim adequacy: Armijo plus PL gives a geometric loss recurrence
  \(F_{t+1}\le(1-cP^{-D})F_t\). The same quadratic sandwich and accepted-step
  displacement give a total factor path at most
  \(C_{\rm path}\operatorname{dist}(Q_{\rm fin},{\cal Z}_\star)\), and
  \(\theta_{\rm ent}\) is fixed so this path stays inside the chart. The
  stopping condition therefore reaches
  \(\|T-\Psi(Q)\|_F\le\epsilon\|T\|_F\) in
  \(O({\rm poly}(P)\log(1/\epsilon))\) steps.
- Residual-to-target adequacy: every iterate, gradient, loss, and stopping
  rule refers to the exact realized \(T\) and the same Frobenius residual;
  there is no terminal surrogate or additive forcing.
- Key positive/control term or structural source: \(\mu_{\rm PL}>0\), strict
  chart-entry reserve, exact monotone loss decrease, and inverse-polynomial
  line-search scale.
- Opposing defect terms: Taylor/retraction error, line-search truncation,
  chart boundary, finite initialization error, technical proof exponents, and
  two separate failure probabilities.
- Closure/dominance/absorption relation: step_019 controls the finite
  contractive horizon with no additive term. step_020 verifies every technical
  exponent inequality, fixes all auxiliary constants/exponents in the order
  stated above, verifies every technical condition (both screen reserves,
  both Neumann gaps, the rootwise/global budgets, chart entry, and line-search
  guard), substitutes
  \(k=\lceil C_{\rm rank}r^{3/2}\log^2(2r)\rceil\),
  \(\kappa\le r^{c_0}\), and \(\rho^{-1}\le r^{c_\rho}\), and derives
  every dropped/absorbed term by the displayed inequality rather than prose.
  It converts the instance and conditional tape probabilities separately and
  states the final terminal rate and work:
  discovery independent of \(\epsilon\) plus terminal
  \({\rm poly}(n,r,\log(1/\epsilon))\). It reports
  \(\mathbb P_{\rm inst}\ge1-r^{-10}\) and, conditional on a good instance,
  \(\mathbb P_{\rm tape}\ge1-r^{-10}\) separately.
- Accumulation behavior / scope compatibility: contractive finite terminal
  horizon. The only initialization error is one-time and path-controlled;
  no repeated numerical forcing appears after discovery.
- Obligation locality classification: step-local.
- Noncircular closure status: step_017 -> step_018 -> step_019 -> step_020.
  Public specialization consumes only earlier produced bounds and introduces
  no new lemma.
- Entry-state / first-update stress result: the exact target is stationary and
  needs no update; any nonzero entry not already below tolerance has an active
  PL gradient. The limit \(\epsilon\downarrow0\) only lengthens the finite
  logarithmic horizon.
- Baseline conclusion preserved: at \(H=e=0\), unresolved atoms pass (Lev),
  commits equal exact target slots, rollback is exact, unused slots are zero,
  terminal loss is already zero, and the theorem gives arbitrary relative
  accuracy without a floor.
- Producer-consumer provenance: steps_001,012--013,016--019 -> step_020 ->
  final theorem.
- Null or boundary regime tested: exact target, zero loss, chart boundary,
  \(0<\epsilon<1\), \(\epsilon\downarrow0\), maximal rank formula, and the two
  separate event statements.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without PL or strict entry, arbitrary accuracy is unsupported;
  without exact rollback a floor may persist. Both sources are produced under
  the unchanged theorem contract.
- Repair route if source is unsupported: /proof-sketch for a specialization
  or first-exit interface defect; /subagent-idea-generator only if the exact
  target/no-floor conclusion requires changing the procedure or assumptions.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| \({\cal E}_{\rm inst}\), exact \(T,Q^\star\), norm/weight and pair/triple Gram reserves | step_001; direct Gaussian concentration, normalization, and exact CP algebra under the six source assumptions | Base column bounds, product balance, independent smoothing, dimension/smoothing margin | Gaussian norm and Gram deviations are tail-controlled; no trajectory or empirical defect is present | Produced \(T\) and \(Q^\star\) are exactly the consumed realized target and balanced representation in Euclidean/Frobenius metrics | Finite tail allocation gives probability \(1-r^{-10}\); restricted Schur Grams have eigenvalues in \([15/16,17/16]\) | Primitive margin slack and fixed tail allocation | steps_002,004--008,012--013,017,020 | None |
| H/J/K, cyclic leakage, \(S\), \(q_{\rm res},q_{\rm row}\le1/4\) | step_002; direct columnwise Cauchy--Schwarz and exact transfer | \(\nu\le2\nu_\star\), weight ratio, exact H/J/K definitions | Eta padding and J row sum are controlled; no absolute-Gram operator norm is asserted | Same root/mode/tested-label array convention and zero diagonal as \(\Theta,z\), and charges | \(2(\nu+\eta_0)(1+\sqrt r\,\nu)\) times fixed constants is at most \(1/4\) | Upper Gram margin and sufficiently large fixed \(C_\nu\) | steps_003,010--013 | None |
| Statewise \(\Theta_I\) and local zero-diagonal \(z\) | step_003 from step_002 and local conditional actual-history \(A_I\) | \(S,A_I,e\mathbf1\), both Neumann gaps | History and numerical entries remain explicit; step_003 exports no unsupported row bound | Analysis arrays use the exact target-frame contractions consumed by J update; no target transform | Geometric series norm at most \(1/(1-q)\); diagonal set to zero exactly after the inverse is evaluated | \(1-q_{\rm res},1-q_{\rm row}\ge3/4\) | steps_004,008--013 | None |
| Residual reserve, (Lev-normal), and exact (Lev-split) | step_004; triangular source-normal solve and exact rank-one expansion | Prior generated injection, (R-euc), post-fit stationarity; pair/triple gaps; local \(\Theta\) | Numerical normal forcing \(e\Lambda_{\rm nor}\), off-diagonal slot correlations, prior accepted error are separately controlled; none is dropped | Exact equality for actual \(R_I\); \(D_I=(Id-\Pi_\star)R_I\) is the full residual difference in Frobenius norm | \(q_{\rm nor}\le1/4\), \(\|D_I\|_F\le C|I|\|T\|_FP^{D_{\rm nor}-D_{\rm stat}}\), and reverse triangle \(\|R_I\|_F\ge c_R\tau_{\min}\) | Unit diagonal, Khatri--Rao gap, unresolved-target reserve | steps_005--008,010--013 | None |
| Protected-target-to-actual-span bridge and first (Lev-raw) inequality | step_005; exact first-order tensor expansion | Prior (R-euc), \(\eta_0\le C_{\rm sp}\bar\eta\), actual protected projectors | Target-to-protected-span residual \(C_{\rm sp}\bar\eta\) is controlled; pair leverage is observed; no source label is queried | First-order part is exactly the same-target protected error; contraction is against actual scratch tensor and actual orthogonal projector | Every first-order term has at least two target factors, so contraction is at most \(B_1\Lambda_I^+\) | Prior Euclidean matching and finite expansion constant \(C_1\) | steps_006--008,013,015 | None |
| Second (Lev-raw) inequality and (Lev-route) on both event branches | step_006 from steps_004--005 and the actual (Lev) predicate | Quadratic matched errors; raw \(P^{D_{\rm nor}-D_{\rm stat}}\) normal term; observed \(s_I,\Lambda_I^+\) | First-order, higher-order, and source-normal classes have separate sources; all signs unknown; no uncontrolled class remains | \(s_I=s_U+s_M\) is exact for the actual current residual and exact unresolved target | \(B_1\Lambda_I^+\le\gamma_{\rm lev}s_I\), \(B_2\le s_I/64\) imply \(|s_M|\le(\gamma_{\rm lev}+1/64)s_I\), \(W_U\ge(1-2\gamma_{\rm lev}-1/32)s_I\) | Two observable screen reserves; raw score floor on \({\cal E}_{\rm lb}^c\) | steps_008--009,013,015 | None |
| Inverse-polynomial-slack unresolved neighborhood passing (Lev) | step_007; direct Gram/protected-span geometry and continuity | Exact unresolved self-score; \(\lambda_M\le C\sqrt{|I|}(\nu+\bar\eta)\); raw \(B_2\); residual reserve | Cross correlations, protected errors, raw normal error, and neighborhood perturbation are explicitly bounded | Neighborhood is around exact unresolved realized atom and uses actual score/projectors in the theorem metric | \(64B_2\le c\tau_j/4\), \(B_1C|I|(\nu+\bar\eta)^2\le\gamma_{\rm lev}c\tau_j/2\); Lipschitz loss uses half slack | Self-score \(\tau_j\), pair/triple gap, exponent order | steps_013,015 | None |
| Unresolved singleton or certificate-violating structural exchange | step_008 from step_006, current-dual identities, and exact product-sphere Hessian | Positive \(W_U\), capture/radial scale, \(\Theta_{\rm act}\), static/history/normal/numerical budgets | All derivative defects have named sources and are dominated at \(\mu_{\rm act}\); protected matched mixture is absent from the producer | Dual selectors map back to unit ambient tangents; actual \(R_I\) and exact realized unresolved target share the consumed Hessian metric | Non-singleton gives \(\langle H_{\rm ang}\xi,\xi\rangle\le-4N_I(g)P^{-D_{\rm gap}}\), contradicting Cert; complement yields one singleton | \(W_U\ge c_Us\), \(\mu_{\rm act}=c\tau_{\min}/r^2\), Cert Hessian threshold | step_009; exchange branch terminates locally | None |
| Unique label, signs, (R-euc), (R-dir), injection extension | step_009 from step_008 and selected \(\Theta\)-row | Isolated singleton, radial root, Gram reserve, separation \(1/4\), history envelope | Other-label leakage, numerical and radial error are controlled; label ambiguity is excluded | Actual committed slot is compared directly with exact realized atom in Euclidean/radius metric | \(C_{\rm led}\eta_0<1/8\) plus singleton/separation slack gives uniqueness; selected row gives directional envelope | Positive isolated score, product-one sign orbit, Gram reserve | next temporal steps_004--005; steps_010--013,015--016,018 | None |
| (R-tensor), symmetric J charge/update, honest two-label audit | step_010; exact accepted-error expansion using local zero-diagonal \(z\) | Actual \(E_i\), (R-euc)/(R-dir), exact J/H identities, numerical padding | \(Hz,zz,\eta\), radial/directional, \(eh,e^2\) all retained; embedded block uses global \(\nu\) | Exact accepted error and exact target baseline use the same target-frame contractions | \(\Delta A\le2\Gamma_\star\widetilde\Upsilon\); isolated charge has upper and positive lower scale \(h^4+eh+e^2\) and dominates \(2h^4+O(h^6)\) at \(h=e^2\) | \(J(p,p)=1,z_{p,M,p}=0\); fixed positive padding/constants | steps_011--013 | None |
| Raw rootwise \(z\) and already-summed (Lev-Jdiag) | step_011; rootwise Neumann and Cauchy--Schwarz | \(q_{\rm row}\le1/4\), static KJ, prior budget, step_010 diagonal | Static \(\nu^2\), history \(r\nu^3\), numerical \(\sqrt r e\), quadratic terms retained | Same captured root and zero-diagonal row consumed by diagonal charge | Raw \(\|z_p\|\le C(\nu^2+r\nu^3+\sqrt r e)\); diagonal sum at most \(C(\nu^3+r e)\) on both branches | Rootwise gap, column \(\ell_2\) H bound, zero diagonal | steps_012--013 | None |
| (J-global), (R-hist-budget), (R-budget), (R-acc) | step_012; per-root diagonal plus off-diagonal KJ/Neumann factorization | step_010 one-step update; step_011 summed diagonal; static source/resolvent gaps | Every structural/numerical charge counted once; no uncontrolled repeated forcing; failures add zero | Actual accepted tensor errors and exact target frame; (R-acc) stays tensor-influence only | \({\mathfrak U}_s\le C_J\Gamma_\star r\nu^3+C_Jr^2e\), then exact resolvent/history recurrences; no extra \(r\) or \(\sqrt r\) | Exact baseline cancellation and one-time tuple index set | steps_013,015,020; next temporal prefix | None |
| All-prefix validity and all generated leverage/J interfaces | step_013; finite induction and rollback | Empty zero base; steps_003--012 for success; exact rollback for failure | Accepted forcing has finite global budget; arbitrary failed probes have exactly zero forcing | Tracks actual protected factors/residual throughout; analysis records do not change them | At most \(r\) injection extensions; step_012 controls cumulative effect; failure preserves equality | Monotone distinct-label injection and exact rollback | steps_014--016,020 | None |
| Deterministic transaction success/failure map and step floor | step_014; exact radial/angular dynamics and guarded Armijo | Legal prefix, exact derivatives, compact guard, trust radius | Zero score, guard, stationarity ambiguity, line-search and screen failure all route to rollback | Success is actual state; failure equals actual pretransaction state | Accepted step at least \(P^{-D_{\rm ls}}\); finite loss range gives \(H_{\rm tx}=P^{O(1)}\) work | Exact descent/negative curvature and compact smoothness | steps_015--016 | None |
| One-transaction event and all-commit tuple | steps_015--016; Haar activation and independent stopped tape | step_007 passing neighborhood, step_014 flow, history-uniform prefix, assump:random-tape | Unfavorable seeds/failures have zero state forcing; tape exhaustion controlled probabilistically | Event reaches actual Cert+Lev state; output is actual committed tuple | \(p_{\rm tx}\ge(nr)^{-c_{\rm tx}}\); chosen \(N_{\rm tx}\) gives conditional tape success \(1-r^{-10}\) and polynomial discovery work | Haar activation window and finite independent tape | steps_018,020 | None |
| Exact-target PL chart and chart entry | steps_017--018; target Jacobian/Taylor and per-slot (R-euc) | Pair/triple gaps, weights, exact target; all-commit injection/signs and calibration | Taylor defects, \(\sqrt r\eta_0\), weight ratio, numerical entry term explicit; (R-acc) not used as factor distance | Actual tuple to exact \(Q^\star\) orbit in full-state Euclidean metric; exact tensor residual in chart | \(\varrho_{\rm PL}=c g_{\min}/r,\mu_{\rm PL}\ge c g_{\min}^4\); \(C g_{\max}\sqrt r\eta_0\le\theta_{\rm ent}\varrho_{\rm PL}\) | Jacobian floor and strict entry reserve | steps_019--020 | None |
| Floor-free relative-error theorem and public rank/runtime/probability bridge | steps_019--020; PL/Armijo and direct substitution | Chart PL/smoothness, strict entry, rank and polynomial source bounds, separate events | Retraction/line-search/path defects absorbed by chart reserve; no additive forcing; no hidden probability merge | Same exact target and Frobenius residual through endpoint | Geometric loss decay in \(O({\rm poly}(P)\log(1/\epsilon))\); substitute \(k,\kappa,\rho\); report probabilities separately | Positive \(\mu_{\rm PL}\), path reserve, exact rollback and target | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| \({\cal E}_{\rm inst}\), exact \(T,Q^\star\), realized norms/weights/Grams and pair/triple reserves | step_001 from the six primitive source assumptions, in the exact normalized-factor/Frobenius convention | steps_002,004--008,012--013,017,020 | Once-drawn instance statement, exact target, every static and terminal margin | primitive assumptions -> step_001 -> all listed consumers | derived | None |
| \(\tau_{\rm up},\bar\eta\), protocol exponent feasibility | step_001 from event bounds and fixed protocol definitions | steps_004--007,013--016,020 | Observable screen is well-defined and polynomial with fixed constants | step_001 -> leverage bridge/transactions -> step_020 | derived | None |
| H/J/K, leakage, \(S,q_{\rm res},q_{\rm row}\) | step_002 by direct current-notation Gram/Schur calculations | steps_003--013 | Static source, Neumann convergence, J ledger and PL source conditioning | step_001 -> step_002 -> listed consumers | derived | None |
| Statewise \(\Theta_I\) and local zero-diagonal \(z\) | step_003 from step_002 and prior generated \(A_I\); exact target-frame convention | steps_004,008--013 | Direction envelope and exact J transition | step_002 + prior step_012/013 prefix -> step_003 -> consumers | derived | None |
| Residual reserve, (Lev-normal), (Lev-split) | step_004 from earlier step_009 records via step_013, plus source gaps | steps_005--008,010--013 | Legal raw residual decomposition at every generated prefix | empty base/step_013 -> local step_004 -> consumers -> next prefix | derived | None |
| Actual-protected-span target proximity and first (Lev-raw) control | step_005 from prior (R-euc) and exact first-order expansion | steps_006--008,013,015 | Observable relative-leverage domination | step_009 prior record -> step_005 -> step_006/007 -> landscape/reachability | derived | None |
| Higher-order/source-normal raw control and (Lev-route) | step_006 from steps_004--005 and actual screen predicates | steps_008--009,013,015 | Exclude protected-residual-dominated commits and supply unresolved mass | steps_004--005 -> step_006 -> step_008 -> step_009 | derived | None |
| Genuine unresolved-neighborhood screen passage | step_007 from exact unresolved atom, event gaps, actual projectors, and raw budgets | steps_013,015 | Preserve history-uniform transaction reachability after adding the screen | steps_001,004--006 -> step_007 -> step_015 | derived | None |
| Unresolved singleton antecedent; structural exchange contradiction | step_008 from (Lev-route), dual/current-frame identities and exact Hessian | step_009; non-singleton branch terminates against Cert | Unique current commit target without assumed exchange | step_003/004/006 -> step_008 -> step_009 | derived | None |
| Unique \(p\), signs, (R-euc), (R-dir), post-fit record and injection | step_009 | next temporal steps_004--005; steps_010--013,015--016,018 | Distinct commits, transition ledger, chart entry | step_008 -> step_009 -> transition/prefix/tape/entry consumers | derived | None |
| (R-tensor), J charge/update and two-label audit | step_010 from exact accepted error and step_003 local \(z\) | steps_011--013 | Honest one-step history control | steps_003,009 -> step_010 -> step_011/012 -> prefix | derived | None |
| Raw rootwise row and already-summed (Lev-Jdiag) | step_011 from rootwise gap, prior budget and exact diagonal | steps_012--013 | Prevent extra label/commit multiplicity | steps_002/003/010 + prior budget -> step_011 -> step_012 | derived | None |
| (J-global), (R-hist-budget), (R-budget), (R-acc) | step_012 from steps_010--011 and KJ/Neumann factorization | step_013, step_015, step_020 and next local prefix | Uniform finite accepted-error forcing below landscape scale | step_010 -> step_011 -> step_012 -> induction/later use | derived | None |
| Legal all-prefix invariant | step_013 from empty base, steps_003--012, exact rollback | steps_014--016,020 and next temporal prefix | Unconditional finite discovery theorem | step_001/002 -> empty base -> step_013 induction -> transactions | derived | None |
| Deterministic transaction map, step floor, exact rollback | step_014 from exact objective derivatives and protocol | steps_015--016 | Polynomial local work and zero forcing from failures | step_013 -> step_014 -> probability/tape | derived | None |
| One-seed success event \(p_{\rm tx}\) | step_015 from Haar law, step_007 neighborhood and step_014 flow | step_016 | History-uniform probability source | step_007/013/014 + assump:random-tape -> step_015 | derived | None |
| Actual all-commit tuple and conditional tape event | step_016 from step_015 and independent finite tape | steps_018,020 | \(r\) distinct recovered labels, polynomial discovery, separate \(1-r^{-10}\) tape probability | step_015 -> stopped amplification -> step_016 -> terminal | derived | None |
| Exact-target PL radius, PL constant, quadratic sandwich and \(L_{\rm chart}\) | step_017 from step_001 target geometry | steps_018--020 | Positive inverse-polynomial terminal basin and contraction | step_001 -> step_017 -> entry/descent | derived | None |
| Exact-target chart membership of actual tuple | step_018 from steps_009,013,016--017; direct (R-euc) same-target bridge | steps_019--020 | Legal terminal initialization | all-commit tuple + independently produced chart -> step_018 -> descent | derived | None |
| First-exit invariant and floor-free relative residual | step_019 from steps_017--018 and exact-loss Armijo | step_020 | Arbitrary \(0<\epsilon<1\) accuracy | step_017 -> step_018 -> step_019 -> specialization | derived | None |
| Public material-partial theorem, rank/runtime/probability/baseline specialization | step_020 from all earlier theorem-facing outputs | final theorem | Exact requested theorem and remaining-gap statement | steps_001,012--013,016--019 -> step_020 | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | Derive \({\cal E}_{\rm inst}\) with probability at least \(1-r^{-10}\), all realized nonvanishing/norm/weight/Gram bounds, pair/triple gaps, \(T\ne0\), exact balanced \(Q^\star\), radius guard, protocol-scale polynomial bounds, \(\tau_{\rm up}\), \(\bar\eta\), and a feasible fixed exponent order with \(D_{\rm nor}<D_{\rm stat}\). | None | assump:base-column-conditioning; assump:base-product-balance; assump:gaussian-smoothing; assump:dimension-regime; assump:smoothing-scale; assump:modewise-gram-margin; assump:rank-regime | Normalization, uniform finite tails, deterministic polynomial lower/upper scales, and simultaneous fixed-constant order | Gaussian concentration and matrix net bound; direct product algebra; no theorem wrapper | \({\cal E}_{\rm inst},T,Q^\star\), Gram reserves, screen envelopes and exponent feasibility | R1; all structural variables and \(1-r^{-10}\) instance probability explicit | PENDING |
| step_002 | Prove (R-src), cyclic leakage, \(\|S\|_1\le3r\nu^2(1+\sqrt r\nu)\), both exact transfer norm bounds, and \(q_{\rm res},q_{\rm row}\le1/4\). | step_001 | Derived \({\cal E}_{\rm inst}\); assump:base-product-balance; assump:modewise-gram-margin | Absolute values without an invalid operator bound; rootwise compatibility | Columnwise Cauchy--Schwarz, Schur products, exact block-map norm calculation | H/J/K/S, leakage, transfer gaps | R1/R2; retain \(r,\nu,\Gamma_\star,\eta_0\) | PENDING |
| step_003 | For every local conditional prior-prefix history \(A_I\), construct the convergent \(\Theta_I\) in both array norms and define \(z_{p,M,\ell}=\Theta_{I;p,M,\ell}+C_{\rm num}e\) for \(\ell\ne p\), \(z_{p,M,p}=0\), without asserting a row bound. | step_002 | Derived transfer gaps; local conditional actual-history \(A_I\) later discharged by step_013 | Simultaneous root indexing, zero diagonal, and separating definition from boundedness | Geometric nonnegative Neumann series in \(\ell_1\) and rootwise block \(\ell_2\) | \(\Theta_I\), local \(z\), empty-prefix values | R2; static/history/numerical entries remain raw | PENDING |
| step_004 | From a local conditional legal prefix, derive the unresolved residual reserve, guarded triangular normal system and \(q_{\rm nor}\le1/4\), prove (Lev-normal), and write exact (Lev-split). | step_001; step_002; step_003 | Derived source spans/gaps; prior generated matching, (R-euc), and post-fit records as local conditional hypotheses discharged by step_013 | Temporal normal recurrence, source/actual residual equality, and raw numerical forcing | Exact post-fit contractions, pair-Khatri--Rao row sums, triangular Neumann inversion, rank-one telescoping and reverse triangle | Residual reserve, \(D_I\), (Lev-normal), (Lev-split) | R2; explicit \(|I|\|T\|_FP^{D_{\rm nor}-D_{\rm stat}}\) | PENDING |
| step_005 | Prove \(\operatorname{dist}(m_{p,M},{\cal U}_{I,M})\le C_{\rm sp}\bar\eta\) from prior (R-euc), expand \(E_I^{(1)}\) termwise, and establish \(|\langle E_I^{(1)},\psi\rangle|\le B_I^{(1)}\Lambda_I^+\). | step_004 | Derived prior-prefix records; assump:base-product-balance | Actual protected span versus source span; ensuring two leverage factors in every first-order term | Orthogonal projection inequality and exact first-order CP expansion | First inequality in (Lev-raw), source-convention compatibility | R2; retain \(|I|,\tau_{\rm up},\bar\eta,\lambda_M\) | PENDING |
| step_006 | Bound \(E_I^{(\ge2)}\) and \(D_I\) by \(B_I^{(\ge2)}\), and from the two exact observable screen clauses prove (Lev-route) on \({\cal E}_{\rm lb}\) and \({\cal E}_{\rm lb}^c\), including \(\nu=0,e>0\). | step_004; step_005 | Derived split/normal/first-order outputs; local conditional candidate satisfies observable (Lev) | Raw complement branch, unknown signs, and exact score decomposition | Higher-order rank-one telescoping, Frobenius contraction, triangle inequality | Second (Lev-raw) inequality, \(|s_M|\) bound, \(W_U\) lower bound | R2; no lower-tail absorption; all \(B_2\) terms visible | PENDING |
| step_007 | For each legal prefix and unresolved label, construct a guarded inverse-polynomial neighborhood of the exact atom whose certificate candidates pass both clauses of (Lev) with displayed slack. | step_001; step_004; step_005; step_006 | Derived event/prefix bounds; assump:base-product-balance; assump:modewise-gram-margin | Uniform protected-span leverage, raw numerical score floor, and history-uniform radius | Gram row bound, prior (R-euc), residual reserve, Lipschitz continuity and explicit exponent comparison | Screen-passing unresolved neighborhood and \(D_{\rm pass}\) | R2/R3; explicit \(64B_2\) and \(B_1\Lambda\) inequalities | PENDING |
| step_008 | In ordered radial/current-dual coordinates, prove that a candidate satisfying Cert, Lev, and the legal prefix has either one isolated unresolved atom or a normalized same-target structural exchange direction whose angular Hessian violates Cert. | step_002; step_003; step_004; step_006 | Derived transfer/history/normal/route outputs; local conditional Cert+Lev; assump:base-product-balance | Support activation without matched mass, mixed signs, straddling, \(|U_I|=1\), and raw Hessian thresholds | Exact radial square completion, biorthogonal dual selectors, weighted unresolved-mass threshold, finite sign-safe product-sphere Hessian expansion | Unresolved singleton antecedent; all other cases locally rejected | R2; \(\mu_{\rm act}\), derivative defects, \(D_{\rm cap},D_{\rm gap}\) explicit | PENDING |
| step_009 | From the step_008 singleton prove unique unresolved-label assignment, product-one signs, separation, (R-euc), (R-dir), post-fit normal audit, and injection extension. | step_003; step_008 | Derived selected \(\Theta\)-row, event gaps, radial scale; local Cert+Lev | Root-specific row only after selection; sign/radius calibration and ambiguity | Direct current/dual coefficient comparison, Gram inversion, radial mean-value bound | \(p,\sigma,\delta_i,e_{i,M}\), (R-euc), (R-dir), new prefix record | R2; \(C_{\rm led}\eta_0\) and every numerical term explicit | PENDING |
| step_010 | Prove (R-tensor), exact cyclic (J-charge)/(J-update), captured-label (J-diag), off-diagonal \(J=H\), and the honest isolated two-label upper/lower \(h^4+eh+e^2\) audit through \(h=e^2\). | step_003; step_009 | Derived local \(z\), matching and calibration; assump:base-product-balance | Symmetric positive/baseline factors, zero diagonal, numerical padding, and embedded versus isolated scale | Exact multilinear/scalar expansion in current notation | One-step tensor influence and nonnegative J transition charge | R2; retain \(h,e,\nu\), cyclic modes and no lower bound on \(h\) | PENDING |
| step_011 | Prove raw \(\|z_p\|_{{\rm root},2}\le C(\nu^2+r\nu^3+\sqrt r e)\), optional branch-qualified \(C'\nu^2\), and (Lev-Jdiag) summed over unresolved roots/modes for one captured root. | step_002; step_003; step_010 | Derived transfer gap and local transition; prior prefix budget as a local conditional output discharged by step_013 | Rootwise versus entrywise norms and no tested-label multiplier | Rootwise Neumann contraction, column \(\ell_2\) H bound, Cauchy--Schwarz, zero diagonal | Raw J-row and per-root diagonal \(O(\nu^3+r e)\) | R2; valid on both event branches; optional simplification explicitly qualified | PENDING |
| step_012 | Factor off-diagonal KJ/Neumann charges and combine them with step_011 once to prove (J-global), (R-hist-budget), (R-budget), (R-acc), and the explicit comparison below static isolation scale. | step_002; step_010; step_011 | Derived static/transition/rootwise outputs; assump:base-product-balance | One-time global indexing, transitive paths, and numerical term counted once | Rootwise \(\ell_2\)-to-\(\ell_1\) factorization, exact baseline cancellation, finite recurrence and resolvent | \({\mathfrak U}_s\), history/resolvent/accepted budgets | R2; \(O(\Gamma_\star r\nu^3+r^2e)\), no extra \(r,\sqrt r\) | PENDING |
| step_013 | Close from \(I=\varnothing,A=0,D=0\) the exact protected-state induction through every success/failure and at most \(r\) commits, proving all local conditional prefix records from primitive conditions. | step_001; step_002; step_003; step_004; step_005; step_006; step_007; step_008; step_009; step_010; step_011; step_012 | All nine primitive assumptions where applicable; all earlier derived outputs; no generated invariant assumed theorem-facing | Temporal ordering, success transition, exact rollback, branch-uniform raw budgets | Finite induction with monotone injection and one-time charge budget | Unconditional legal-prefix invariant and all generated interfaces | R2; uniform \(s\le r\), raw on \({\cal E}_{\rm lb}^c\) | PENDING |
| step_014 | Prove deterministic safeguarded radial/angular/negative-curvature transaction behavior, accepted step at least \(P^{-D_{\rm ls}}\), \(H_{\rm tx}=P^{O(1)}\) work, polynomial QR/SVD/screen cost, and exact rollback for every failure. | step_013 | Derived legal prefix; fixed protocol/Armijo constants | Guarded globalization and exact reset including screen failure | Exact derivatives, compact smoothness, dyadic trust-region Armijo, deterministic eigenvector routine | Deterministic transaction success/failure map | R3; explicit \(D_{\rm ls},H_{\rm tx}\), work independent of \(\epsilon\) | PENDING |
| step_015 | Show one fresh full-space Haar seed reaches Cert+Lev and a valid new ledger entry within \(H_{\rm tx}\) with history-uniform conditional probability \(p_{\rm tx}\ge(nr)^{-c_{\rm tx}}\). | step_007; step_009; step_013; step_014 | assump:random-tape; derived legal prefix, passing neighborhood and dynamics | Full-dimensional activation, flow into the screen-passing neighborhood, and target-blind analysis | Haar anti-concentration plus deterministic attraction/escape path | One-transaction success event | R3; explicit \(p_{\rm tx},c_{\rm tx},H_{\rm tx}\) | PENDING |
| step_016 | Amplify the independent finite tape to all \(r\) distinct commits with conditional probability at least \(1-r^{-10}\) and polynomial discovery work independent of \(\epsilon\). | step_013; step_015 | assump:random-tape; derived injection and exact rollback | History-adaptive stopped trials and finite tape exhaustion | Conditional geometric/negative-binomial tail and union allocation | Actual all-commit tuple, separate tape event, discovery runtime | R3; exact \(N_{\rm tx}\), probability and polynomial work | PENDING |
| step_017 | Prove exact-target balanced Jacobian lower/upper bounds, \(\varrho_{\rm PL}=c_{\rm chart}g_{\min}/r\), quadratic sandwich, \(\mu_{\rm PL}\ge c_\mu g_{\min}^4\), \(L_{\rm chart}=C_Lg_{\max}^4\), and inverse-polynomial lower bounds. | step_001; step_002 | Derived target/Gram/weight reserves; assump:base-column-conditioning; assump:base-product-balance | Continuous gauge removal, finite orbit, Taylor remainder and weight scaling | Direct balanced Jacobian and current-notation Taylor calculation | Exact-target PL chart and smoothness | R4; explicit \(\kappa,r,P,g_{\min},g_{\max}\) | PENDING |
| step_018 | Align signs/permutation and prove the actual all-commit tuple satisfies \(\operatorname{dist}(Q_{\rm fin},{\cal Z}_\star)\le Cg_{\max}\sqrt{3r}\eta_0\le\theta_{\rm ent}\varrho_{\rm PL}\), without using (R-acc) as factor distance. | step_009; step_013; step_016; step_017 | Derived bijection/signs/(R-euc), all-commit tuple and chart; assump:base-product-balance | Same-target object compatibility, cube-root radial error, and \(\sqrt r\) accumulation | Mean-value bound, Cauchy--Schwarz and explicit \(r^{3/2}\eta_0\) comparison | Strict same-target chart-entry certificate | R4; full-state metric and every structural/numerical term explicit | PENDING |
| step_019 | Prove first-exit invariance, total-path reserve, geometric exact-loss decrease, and a finite iterate with residual at most \(\epsilon\|T\|_F\), with no additive floor. | step_017; step_018 | assump:accuracy-range; derived PL/smoothness and strict entry | Path length versus chart boundary and retraction/line-search errors | PL plus exact-loss trust-region Armijo and quadratic sandwich | Floor-free terminal trajectory and iteration count | R4; \(O({\rm poly}(P)\log(1/\epsilon))\), exact Frobenius norm | PENDING |
| step_020 | Verify every auxiliary exponent/constant inequality, substitute the exact rank/source polynomial regimes, state the separate instance/tape probabilities, derive total \({\rm poly}(n,r,\log(1/\epsilon))\) work, and prove exact orthogonal/noiseless baseline reduction with unchanged endpoint. | step_001; step_012; step_013; step_016; step_017; step_018; step_019 | All nine primitive assumptions; all named derived outputs | Public simplification without dropped terms, hidden probability conversion, weakened baseline, or changed open-gap scope | Direct Rate Specialization Bridge and baseline substitution | Final material-partial theorem | R1--R4; all exposed variables, hidden dependence, rank/runtime/probability/baseline | PENDING |

## Boundary And Example Stress Matrix

| Regime or entry state | Required trace | Producing steps | Result used downstream |
| --- | --- | --- | --- |
| Empty prefix \(I=\varnothing\) | \(A=D=E^{(1)}=E^{(\ge2)}=0\), \(B_1=B_2=0\), protected projectors zero, \(s_I=s_U\); local \(\Theta\) has only static/numerical source; first rollback returns exactly here | steps_003--007,013--014 | Noncircular induction base and first transaction |
| Exact orthogonal/noiseless \(H=e=0\) | Unresolved atom has \(\lambda_M=0\) and padded \(\Lambda_I^+=3(C_{\rm sp}\bar\eta)^2\); the explicit step_007 inequalities prove Lev passage. Actual matching errors, \(z\), J charges, histories and entry error vanish; exact target is stationary at zero loss | steps_001--020 | Full baseline invariance and no-floor endpoint |
| \({\cal E}_{\rm lb}^c\) with \(\nu=0,e>0\) | Keep \(\bar\eta^2\) and \(P^{D_{\rm nor}-D_{\rm stat}}\) in \(B_2\); score floor dominates them; raw \(z=O(\sqrt r e)\), per-root diagonal \(O(r e)\), global numerical budget \(O(r^2e)\) | steps_004,006--007,011--013 | Landscape, prefix closure and final raw-rate audit without lower-tail absorption |
| Equality in either Lev clause | Use non-strict inequalities to get \(|s_M|\le(\gamma_{\rm lev}+1/64)s_I\); retained slack in the \(W_U\) coefficient remains positive | step_006 | Support activation at screen boundary |
| Candidate dominated by actual protected spans | Pair leverage is order one while current protected residual score is small; candidate fails Lev, or the first-order contraction is at most \(\gamma_{\rm lev}s_I\); failure rolls back exactly | steps_005--006,014 | Explicit removal of protected matched-mixture producer |
| Genuine unresolved atom in dense/block frame | \(\lambda_M\le C\sqrt{|I|}(\nu+\bar\eta)\), \(\Lambda_I^+\le C|I|(\nu+\bar\eta)^2\), self-score dominates both budgets with polynomial slack | step_007 | History-uniform reachability |
| Unresolved support split across two labels/modes | Positive \(W_U\) makes unresolved active support nonempty; normalized dual pair tangent has negative angular curvature beyond the certificate threshold | step_008 | Non-singletons cannot commit |
| Last unresolved label \(|U_I|=1\) | Pair exchange is not required; score mass and stationarity force the singleton branch, then injection becomes bijective | steps_008--009,013,016 | Final discovery transition |
| Isolated O.1 two-label family, \(h=e^2\) | Captured-label diagonal contains positive \(eh+e^2\) and structural \(h^4\); charge dominates exact \(2h^4+O(h^6)\) with no lower bound on \(h/e\) | step_010 | Honest local J transition |
| Two-label block embedded in a larger frame | Keep exact local expansion but charge structural piece at global \(\nu^2h^2\), not falsely at local \(h^4\) | steps_010--012 | Source-compatible global ledger |
| Dense/block frame and arbitrary commit order | Rootwise Cauchy--Schwarz sums each captured-root diagonal once; KJ/Neumann handles off-diagonal paths; no post-sum \(r\) or \(\sqrt r\) | steps_011--013 | \(O(r\nu^3+r^2e)\) all-commit budget |
| Repeated transaction failures | Each scratch slot returns to joint zero; protected tensor, residual, loss, matching, and all ledger arrays are unchanged | steps_013--016 | Zero forcing and stopped tape amplification |
| Exact target terminal entry | Distance and loss are zero, gradient is zero, no update is required, and the theorem holds for every \(\epsilon\) | steps_017--020 | Stationary baseline and first-exit trace |
| Nonzero chart entry and \(\epsilon\downarrow0\) | PL source is active before descent; strict path reserve prevents exit; only logarithmic horizon grows and no additive term appears | steps_018--020 | Arbitrary relative accuracy |

## Dependency Notes

The explicit table order
\[
\text{static }(001\!:\!003)\to
\text{prefix raw bridges }(004\!:\!007)\to
\text{landscape/matching }(008\!:\!009)\to
\text{J transition/budget }(010\!:\!012)\to
\text{prefix closure }013
\]
\[
\to\text{ transaction/tape }(014\!:\!016)\to
\text{ terminal geometry/entry/descent/specialization }(017\!:\!020)
\]
is acyclic, and every dependency listed in Sketch Steps points to an earlier
Step ID.

The apparent temporal reuse of steps_004--012 is a standard conditional-lemma
plus finite-induction structure, not a graph cycle. Those steps prove one
transition conditional only on records from an earlier prefix. step_013 first
checks the empty zero-record base, applies the conditional lemmas, stores the
new records, and only then allows the next temporal invocation. No local lemma
assumes its own current-prefix conclusion, final matching, global budget, or
all-prefix validity.

The theorem-critical source/target paths are:

- actual prior slot -> (R-euc) -> actual protected-span proximity ->
  first-order pair-leverage contraction;
- actual residual -> exact (Lev-split) -> two raw defect bounds -> observable
  screen reserves -> unresolved mass in that same residual;
- unresolved mass -> current/dual source coordinates -> unit ambient tangent
  or exact unresolved singleton -> actual committed slot;
- actual accepted error -> exact J update -> rootwise diagonal and
  off-diagonal KJ factorization -> one-time finite prefix budget;
- actual all-commit tuple -> per-slot Euclidean calibration -> exact target
  orbit -> exact-target PL chart -> exact Frobenius endpoint.

Every produced transformed or analysis object is therefore returned to the
consumed target interface before use. The source-product projection appears
only inside the equality (Lev-split); the protected-span projectors are the
actual protocol projectors; dual coordinates are mapped back to ambient unit
tangents; the J arrays bound exact target-frame contractions; and (R-acc) is
never used as factor distance.

Repeated-scope controls have concrete finite mechanisms: the source-normal
system has unit diagonal and inverse \(1/(1-q_{\rm nor})\); Neumann transfers
have \(1/(1-q_{\rm res})\) and \(1/(1-q_{\rm row})\); the accepted-history
recurrence charges each transition once to \({\mathfrak U}_s\); failed
transactions have zero forcing; the injection allows at most \(r\)
  successes; the tape is stopped at \(N_{\rm tx}\); and terminal PL descent is
  contractive over a finite logarithmic horizon.

Assembly is therefore direct: step_013 makes the conditional landscape and
ledger outputs unconditional for every generated prefix; steps_014--016
produce all \(r\) actual commits with the separate tape probability;
steps_017--019 give exact-target arbitrary-accuracy refinement; and step_020
performs the sole public simplification while preserving every rank, runtime,
probability, norm, horizon, hidden-dependence, and baseline clause.

## Blockers

None.
