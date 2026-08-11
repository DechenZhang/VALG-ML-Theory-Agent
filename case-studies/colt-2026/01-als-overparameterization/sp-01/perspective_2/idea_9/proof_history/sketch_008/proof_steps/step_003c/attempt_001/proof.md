# Proof Step

## Step Identity

- Sketch attempt: 8
- Step ID: `step_003c`
- Unit attempt: 1
- Branch: `perspective_2/idea_9`
- Binding setting SHA-256: `27315acf705cd791f29d341efaa11aae66803d02b9c240fc613cce06cc57c4b2`
- Binding proof-sketch SHA-256: `40782b585d3292d25d1a921425470ade621f1dc6180a2f52bb05b94c96375fe8`
- Binding proof-sketch-review SHA-256: `2a5834040fccae1871b1346184eca7458d479d525f8cdcb8a2e4110baa20a4c7`
- Accepted dependency `step_001` proof/review: `7bac568976f9830625019e4e6b912a4b1779a742f61e37f92a8aeea360b6101a` / `f0b185f9f467dbf6d2e3cb6216427cc860005a7da1a90da60b288dc12f345d7b`
- Accepted dependency `step_002` proof/review: `d75c95f11da92e28502228b747005659dec9020ad14f40ca98d9fdabdab5846a` / `1ef20d82435ff0583b185471678dfcd4df77e83894e26d674f9d11dea5873a82`
- Accepted dependency `step_003` proof/review: `ffa107f07e2b2bebd3f638675500f62302dafda573b3faa0ad3ff720bfc8098c` / `c003ebb5b9d447632953c1761b33e5d51fb9c82bfc18c513da6bfda51858bf48`
- Accepted dependency `step_003b` proof/review: `2a1ca6e43f949e205f91a09de41b22bf49145bbc30b43a5f782b95ad71992d67` / `2293b39852325834c8b494a4f9ab09e53fbd328ad54640026a204c24c9f54b09`
- Accepted global diagnostic/review used only as planning context: `aa100a493bee364e4d4103acae7f0a456bc28d30e1dcb5231a619f4ea71f7c05` / `a4d07969e5e1ee0923cffae83b66a0e5fe848396d4615b4e06250c4e11714418`

## Target Step Claim

- Intended claim: First derive capture, radial comparability, positive `g^3`, and projected score; then use exact current correlations `x=M^T u` and dual coefficients `alpha=G^(-1)x` to prove `Dual-stat`, the exact-atom boundary, root-free `Theta_act`, every low/common/straddling/sign/mode/threshold/`|U|=1` case, and normalized dual-tangent margins.
- Dependencies: `step_001`, `step_002`, `step_003`, and `step_003b`.
- Assumptions used: the derived event, `(Res)`, `(SE-raw)`, the complete candidate-indexed `Theta_I`, the current prior-prefix raw budget, and the observable certificate. No target label or source-support condition is assumed.
- Technical challenge: radial ordering, exact nonorthogonal Gram convention, root-free preselection, adversarial signs, and one normalized common margin.
- Intended proof tool: biorthogonal current-frame identities, Gram-ellipsoid energy, exact dual selectors, and explicit product-sphere Hessian calculations.
- Output target: `(Act-rad)`, `Theta_act`, `eps_act`, `s_low`, `beta_act`, `delta_act`, `mu_act`, `Dual-stat`, `Dual-singleton`, and `Dual-exchange`.
- Rate interface: R2; raw history/numerical terms, exact Gram coupling, and all branch comparisons remain explicit.
- Sketch-row review status at producer dispatch: PENDING. The accepted sketch review is the acceptance gate.

## Step Proof Status

`PARTIAL_BLOCKED`

## Allowed Assumptions And Dependencies

### Primitive conditions

No new primitive condition is used. The setting assumptions are used only
through the accepted event and parameter interfaces:

- `assump:base-column-conditioning`;
- `assump:base-product-balance`;
- `assump:gaussian-smoothing`;
- `assump:dimension-regime`;
- `assump:smoothing-scale`;
- `assump:modewise-gram-margin`; and
- `assump:rank-regime`.

`assump:random-tape` and `assump:accuracy-range` are not needed in this
step.

### Derived invariants supplied by accepted dependencies

The accepted `step_001` proposition supplies the once-drawn structural event,
nonzero realized columns, positive product weights, the realized Gram
margin, the pair/triple reserve, and `(Res)`'s target-side static inputs.
The accepted `step_002` propositions supply the exact nonnegative transfer and
both scaled gaps. The accepted `step_003` proposition supplies, on its valid
event scope, the simultaneous candidate-indexed `Theta_I` and its exact
zero-diagonal `z` convention. The accepted `step_003b` proposition supplies
`R_I^parallel`, `(SE-raw)`, the exact target-frame contraction identity, and
the finite source-normal bound `B_perp`.

On `E_raw=E_str cap E_lb^c`, the accepted `step_003b` raw-interface lemma
supplies the same `S`, transfer, and gap conclusions directly from the
accepted structural component of `step_001`. This permits the raw envelope
construction in `prop:step-003c-raw-resolvent` below; it does not import an
`E_inst`-scoped `Theta_I` conclusion.

### Local conditional hypotheses

Fix one legal nonterminal protected prefix `I`, its generated injection, and
its prior accepted-record package as in
`hyp:p2-i9-s8-step003b-records`. The current prior-prefix raw budget is used
only as a local conditional input. In particular, the following quantities
are finite and have the setting's displayed raw bounds:

\[
 \|A_I\|_1\le C_A\Gamma_\star r\nu^3+C_A r^2e,
 \qquad
 \|A_I\|_{{\rm root},2}\le C_A\Gamma_\star r\nu^3+C_A r^2e,
 \tag{H-A}
\]

where `nu=nu_real` and `e=P^(-D_stat)`. This is a generated prefix
condition supplied later by the finite induction; it is not a primitive
assumption. No source-support or unresolved-label concentration condition is
included in this hypothesis.

The observable certificate is assumed exactly as in `(Cert)`, including its
positive score, radial and angular tolerances, angular Hessian test, and
separation test. The certificate contains no target label.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under `(Res)`, `(SE-raw)`, and `(Cert)`, capture implies a positive score lower bound, radial comparability, a positive `g^3` lower bound, and `s_parallel >= 3s/4`. | Establishes the ordered radial interface before any inverse `g^3` is used. |
| `unit_002` | proposition | Under the accepted transfer gaps and the local history budget `(H-A)`, the complete candidate array has a root-free maximum `Theta_act`; on `E_raw` the same interface is rederived by a direct Neumann series. | Supplies the preselection envelope and exposes all raw terms. |
| `unit_003` | lemma | In exact realized current/dual coordinates, `D=M G^{-1}`, `x=M^T u`, and `alpha=G^{-1}x`; projected stationarity gives the exact dual equation `(Dual-stat)` for every unresolved label, and the one-mode-correlated exact-atom stress has no first-order frame remainder. | Preserves exact Gram coupling and establishes the valid part of the activation equation. |
| `unit_004` | lemma | The normalized tangent vectors and the score-Hessian form `(Dual-Q)` have the exact selector identities stated in the sketch. | Provides the valid tangent algebra independently of the support case split. |
| `unit_005` | proposition | The sketch claims that dual energy makes every unresolved active set nonempty and that the low/common/straddling/cardinality-one alternatives exhaust all certificate states. | This unit is **not proved**: dual energy controls all source-span labels, while the active sets are defined only on `U_I`; a matched-label mass bridge or all-label exchange family is missing. |

## Cited Result Applications

### Dependency D1: accepted once-drawn instance interface

The accepted `step_001` proposition gives the realized normalized columns,
positive weights, and pair/triple Gram bounds on its event. These are exactly
the current `M_M`, `G_M`, `tau_j`, and `T`; no whitened or population object
is substituted.

### Dependency D2: accepted static transfer interface

The accepted `step_002` source lemma gives `S` and its l1/rootwise bounds. Its
transfer proposition gives the exact nonnegative root-preserving map `T`, and
its gap proposition gives
\[
 C_0\Gamma_\star\|{\cal T}\|_{1\to1}\le1/4,
 \qquad
 C_0\Gamma_\star\|{\cal T}\|_{{\rm root},2\to{\rm root},2}\le1/4.
 \tag{D-gap}
\]
These are derived static outputs, not trajectory assumptions.

### Dependency D3: accepted conditional envelope

The accepted `step_003` resolvent proposition gives, on its valid event,
\[
 \Theta_I=(\operatorname{Id}-C_0\Gamma_\star{\cal T})^{-1}
 C_0\Gamma_\star(S+A_I+e\mathbf 1),
 \tag{D-Theta}
\]
with convergence in the entrywise l1 and rootwise block-l2 norms, and with
the static/history/numerical source classes unsimplified. Its candidate rows
are available before any label is selected.

### Dependency D4: accepted source-normal and same-target bridge

The accepted `step_003b` proposition gives
\[
 R_I=R_I^\parallel+(I-\Pi_\star)R_I,
 \qquad
 \|(I-\Pi_\star)R_I\|_F\le B_\perp,
 \tag{D-proj}
\]
exact equality of every target-frame contraction, and `(SE-raw)` at score,
capture, and Hessian scales. On `E_hi` it also preserves the `A_I` and
`Theta_I` target-frame coordinates exactly. On `E_raw`, only the raw
transfer conclusions are available, so `D-Theta` is rederived locally.

### Direct current-notation identities

For `M_M=[m_{1,M},...,m_{r,M}]`, `G_M=M_M^T M_M`, and
`D_M=M_M G_M^{-1}`, direct multiplication gives
\[
 \langle D_Me_j,m_{\ell,M}\rangle=\delta_{j\ell}.
 \tag{D-dual}
\]
For `x_M=M_M^Tu_M` and `alpha_M=G_M^{-1}x_M`,
\[
 P_Mu_M=M_M\alpha_M,
 \qquad
 \|P_Mu_M\|_2^2=\alpha_M^TG_M\alpha_M=x_M^TG_M^{-1}x_M.
 \tag{D-energy}
\]
These identities are direct derivations, not cited paper results.

## Local Derivation

### unit_001: lemma

**Paper-ready result:** `lem:step-003c-radial-order` (Ordered capture and
radial scale).

**Statement.** Under the accepted `(Res)` and `(SE-raw)` interfaces and the
observable certificate `(Cert)`, if `t=g^3`, `s=s_I(u,v,w)`, and
`R_0=||R_I||_F`, then
\[
 s\ge\sqrt2R_0P^{-D_{\rm cap}/2},
 \quad R_0e\le s/16,
 \quad (1-4e)s\le t\le(1+4e)s,
 \tag{A-rad-1}
\]
and
\[
 t\ge\tfrac12c_R\tau_{\min}P^{-D_{\rm cap}/2},
 \qquad s^\parallel\ge\tfrac34s>0.
 \tag{A-rad-2}
\]

**Proof.** The exact capture identity is
\[
 \Delta F_I=g^3s-\tfrac12g^6=ts-\tfrac12t^2.
\]
For fixed positive `s`, the right side is at most `s^2/2`; the capture
certificate therefore gives `s^2/2 >= R_0^2P^{-D_cap}`, proving the first
inequality. The fixed exponent `D_stat` is selected so that
`eP^{D_cap/2}<=1/32`; hence `R_0e<=s/16` by the same capture bound.

The radial certificate gives
\[
 |t-s|\le e\max\{s,t,R_0e\}\le e\max\{s,t\}.
\]
For `e<=1/8`, solving the two scalar cases `t>=s` and `t<s` yields
`(1-4e)s<=t<=(1+4e)s`. Increasing the fixed exponent if necessary gives
`1-4e>=1/2`. Combining this with `(Res)` proves the lower bound on `t`.

Finally, `(SE-raw)` and the first capture inequality give
`B_perp<=s/4` after fixing the absolute comparison constant in `(SE-raw)`.
Since `|s-s^parallel|<=B_perp` by the accepted same-target bridge,
`s^parallel>=3s/4`. Every denominator involving `t` below is therefore
defined only after, and not before, the positive radial scale has been
proved. QED.

### unit_002: proposition

**Paper-ready result:** `prop:step-003c-root-free-envelope`.

**Statement.** Under `(H-A)`, the accepted `step_002` gaps, and the accepted
`step_003` envelope on `E_hi`, define
\[
 \Theta_{\rm act}(I)=
 \max_{j\in U_I,M}\|\Theta_{I;j,M,\boldsymbol\cdot}\|_2.
 \tag{A-theta}
\]
On `E_raw`, define the same expression using the local series
\[
 \Theta_I^{\rm raw}:=\sum_{q\ge0}(C_0\Gamma_\star{\cal T}_{\rm raw})^q
 C_0\Gamma_\star(S_{\rm raw}+A_I+e\mathbf1),
 \tag{A-theta-raw}
\]
where `T_raw`, `S_raw`, and their two gaps are the accepted `step_003b`
raw-interface outputs. Both arrays are simultaneous over all unresolved
labels before selection. Their rootwise bounds retain the terms
`nu^2`, `r nu^3`, and `r^2e` explicitly.

**Proof.** On `E_hi`, this is exactly the accepted `step_003` proposition.
On `E_raw`, the accepted raw-interface lemma supplies a nonnegative transfer
with scaled rootwise and l1 norms at most `1/4`; the same geometric-series
remainder calculation as in `prop:p2-i9-s8-step003-resolvent` proves absolute
convergence and uniqueness. The source bounds and `(H-A)` give, for a fixed
constant `C_theta`,
\[
 \max_{j,M}\|\Theta^{\rm raw}_{I;j,M,\cdot}\|_2
 \le C_\theta\bigl(\nu^2+r\nu^3+r^2e+\sqrt r e\bigr).
 \tag{A-theta-bound}
\]
No term is absorbed on `E_raw`; the `r^2e` term remains visible. The exact
zero-defect branch has `S=T=A_I=e=0`, hence `Theta_act=0`. QED.

Define, only after `lem:step-003c-radial-order`,
\[
 \begin{aligned}
 \epsilon_{\rm act}:={}&C_{\rm act}\tau_{\max}
 [\nu^2+r\nu^3+\sqrt r e+\Theta_{\rm act}(I)]\\
 &+C_{\rm act}[B_\perp+N_I(g)e/t],\\
 s_{\rm low}&=\tau_{\min}/(512\sqrt r),
 \quad \beta_{\rm act}=1/(8\sqrt r),\\
 \delta_{\rm act}&=C_\delta r^2\epsilon_{\rm act}/\tau_{\min},
 \quad \mu_{\rm act}=c_{\rm act}\tau_{\min}/r^2.
 \end{aligned}
 \tag{A-scales}
\]
The polynomial envelope for `N_I(g)e/t`, `(A-theta-bound)`, and `(SE-raw)`
permit fixed choices of the exponents and leading constants for the four
displayed inequalities in `(Act-margin)` whenever the support alternative
is available. This statement does not by itself create that alternative.

### unit_003: lemma

**Paper-ready result:** `lem:step-003c-dual-stationarity`.

**Statement.** Under `lem:step-003c-radial-order`, let
`R^parallel=Pi_star R_I`, `s^parallel=<R^parallel,u tensor v tensor w>`,
and for `{M,N,L}={A,B,C}` let
\[
 v_M=R^parallel\mathbin{\times_{N\ne M}}u_N^T,
 \qquad
 \zeta_M=v_M-s^parallel u_M.
\]
Then `zeta_M` is tangent to `u_M`,
`||zeta_M||_2 <= N_I(g)e/t`, and for every unresolved `j`,
\[
 \tau_jx_{j,N}x_{j,L}-s^parallel\alpha_{j,M}
 =h_{j,M}+\langle d_{j,M},\zeta_M\rangle,
 \tag{Dual-stat-step}
\]
where `d_{j,M}=D_Me_j`, `x_M=M_M^Tu_M`,
`alpha_M=G_M^{-1}x_M`, and `h_{j,M}` is the exact accepted-history
contraction in the current target frame. Its root-free history bound is
included in `epsilon_act` under the local raw-budget hypothesis.

**Proof.** Since `s^parallel=<v_M,u_M>`, `zeta_M` is orthogonal to `u_M`.
The angular gradient of `f_I` at fixed `g` is `-t` times the tangent part of
the score gradient. The certificate therefore gives the displayed zeta norm
after the positive `t` bound of `lem:step-003c-radial-order`.

For `j in U_I`, the target part of `R_I^parallel` is
`sum_{ell in U_I} tau_ell phi_ell`; pairing its mode-M factor with
`d_{j,M}` selects exactly `ell=j` by `(D-dual)`. The remaining accepted-error
contraction is, by definition, `-h_{j,M}`. Pairing
`v_M-s^parallel u_M=zeta_M` with `d_{j,M}` gives `(Dual-stat-step)`.
The current/dual identities `(D-energy)` are exact; no additive first-order
`O(nu)` frame defect is introduced. The quantitative history estimate is a
raw-budget consequence only after the support cases are separated, and is
not used to assert a matched-label exclusion. QED.

**Exact-atom boundary.** In the empty prefix, take modes B and C orthogonal,
mode A with one off-diagonal Gram entry, and `u_M=m_{1,M}`. Then
`x_A=G_Ae_1`, `alpha_A=e_1`, and the B,C coordinates equal `e_1`. For
`j=2`, both sides of `(Dual-stat-step)` are zero; for `j=1`, both sides are
`tau_1-s^parallel=0`. If all modes are correlated, an off-label term is a
product of two cross-correlations and is already part of the accepted
`K/J` source. Thus the former first-order atom obstruction is genuinely
removed.

### unit_004: lemma

**Paper-ready result:** `lem:step-003c-tangent-identities`.

**Statement.** For `d_{j,M}=D_Me_j`, define
\[
 z_{j,M}=P_{u_M^\perp}d_{j,M},
 \qquad
 z_M^{p,q}=\alpha_{q,M}d_{p,M}-\alpha_{p,M}d_{q,M}.
\]
Then `z_M^{p,q}` is tangent and
\[
 \langle m_{\ell,M},z_M^{p,q}\rangle
 =\alpha_{q,M}{\bf1}_{\ell=p}
 -\alpha_{p,M}{\bf1}_{\ell=q}.
 \tag{Dual-select-step}
\]
The score-Hessian form on a unit tangent triple is
\[
 {\cal Q}(\xi)=2\langle R_I^parallel,
 \xi_A\otimes\xi_B\otimes w+
 \xi_A\otimes v\otimes\xi_C+
 u\otimes\xi_B\otimes\xi_C\rangle
 -s^parallel\sum_M\|\xi_M\|_2^2.
 \tag{Dual-Q-step}
\]

**Proof.** The tangent identity follows from
`<u_M,d_{p,M}>=alpha_{p,M}` and cancellation of the two scalar products.
The selector formula is `(D-dual)`. Direct second differentiation of the
trilinear score on the three product spheres gives `(Dual-Q-step)`. For a
normalized two-mode tangent, the factor `-s^parallel` has unit coefficient;
for a synchronized three-mode tangent, the three pair terms have the usual
`2/3` normalization. These are exact current-frame identities. QED.

## Target-Step Assembly

`lem:step-003c-radial-order` proves `(Act-cap)`, `(Act-rad)`, and the
positive projected score in the required order. `prop:step-003c-root-free-envelope`
proves the simultaneous root-free envelope on `E_hi` and rederives the raw
conditional envelope on `E_raw`, preserving the numerical terms. The exact
current/dual equations and exact-atom boundary are established by
`lem:step-003c-dual-stationarity`, and the normalized tangent algebra is
established by `lem:step-003c-tangent-identities`.

These valid units do **not** imply the full target alternative. The remaining
assembly would need a proposition proving that either (i) an unresolved label
has the required active coefficient in every relevant mode, or (ii) a
normalized tangent using matched labels yields the exchange margin and is
then transferred through `(SE-raw)`. The accepted dependencies provide
neither proposition. Consequently the assembly cannot cite
`Dual-singleton` or `Dual-exchange`, and it cannot export the target
singleton-or-exchange interface to `step_004`.

## Explicit Rate Audit

- Exposed variables: `n,r,k,kappa,rho,Gamma_star,P,nu_real,eta_0,e`,
  `D_stat,D_gap,D_cap`, `tau_min,tau_max`, `g,t,s,s_parallel`,
  `N_I(g)`, `B_perp`, `Theta_act`, `epsilon_act`, `s_low`, `beta_act`,
  `delta_act`, and `mu_act`.
- Hidden constants may depend on: only the fixed class, proof, and protocol
  constants named in `setting.md` and the accepted dependencies.
- Hidden constants may not depend on: the realized instance, prefix, commit
  order, candidate label, `n,r,k,kappa,rho`, or `epsilon` except through
  quantities displayed explicitly.
- Fixed quantities: one realized branch and one legal finite prefix while
  the Neumann series and radial inequalities are evaluated.
- Probability mode: deterministic conditional on the accepted instance
  event and the stated local history. No new probability conversion is
  claimed.
- Horizon mode: one finite certificate state; no all-prefix activation claim
  is exported.
- Norm mode: Euclidean mode factors, Frobenius residual norm, product-sphere
  tangent norm, and the score-Hessian quadratic form.
- Admissibility conditions and auxiliary tolerances: `(Cert)`, `(Res)`,
  `(SE-raw)`, `e=P^(-D_stat)`, and the local raw budget `(H-A)`.
- Term absorption or simplification inequalities: the radial proof uses
  `eP^(D_cap/2)<=1/32`; no numerical term is absorbed into `nu^2` on
  `E_raw`. The proposed `12 epsilon_act<=mu_act` and related margins remain
  unproved because the support alternative is unproved.
- Probability conversion: none.
- Contribution to a Rate Specialization Bridge: the valid radial and dual
  interfaces are R2 planning inputs only; no public rate bridge is closed.
- Baseline reduction: in the exact `H=e=0` empty-prefix atom case, all
  history, transfer, and dual-frame defects vanish and the exact atom passes
  the singleton equations. This baseline check does not repair the
  matched-label mixed-support gap at a nonempty prefix.

## Blockers

1. **Failed local unit:** `unit_005`, the exhaustive support and normalized
   tangent alternative (`Dual-low`, `Dual-common`, `Dual-straddle`,
   `Dual-singleton`, and `Dual-exchange`).

2. **Exact missing implication:** the accepted sketch defines
   `L_M={j in U_I: |alpha_{j,M}|>=beta}` but then claims that
   `(Dual-energy)` and `(Dual-perp)` imply every `L_M` is nonempty. Those
   identities control the full realized source span, not the unresolved
   subset. The separation test only bounds each matched-label correlation by
   `1/4`; it does not bound the aggregate matched-label energy.

3. **Boundary witness for the failed implication:** take an orthogonal
   realized frame, at least `m=16` already matched labels, and a legal finite
   accepted-record residual with a small common radial mismatch. A scratch
   direction
   \[
     u=v=w=m^{-1/2}\sum_{p\in I}m_p
   \]
   has correlation `1/sqrt(m)<=1/4` with every matched slot and zero
   correlation with every unresolved label. Thus every unresolved active set
   `L_M` is empty while `||P_Mu_M||=1`; the exact implication used by the
   sketch is false. The same construction with unequal small signed radial
   mismatches gives the identical support issue. This is an obstruction to
   the prescribed unresolved-only case split even before deciding the
   Hessian sign of the matched-support point.

4. **Missing producer/consumer bridge:** to complete the theorem one must
   either prove a new matched-mass exclusion from the accepted certificate
   and prior error budget, or add an all-label normalized exchange family and
   show that any matched-support certificate fails the angular Hessian test.
   Neither bridge is present in `step_001`--`step_003b`; `A_I` and `Theta_I`
   are unresolved-root interfaces and do not supply it. Adding that bridge
   changes the binding activation sketch/interface, so the smallest legal
   retry is `/proof-sketch` with review status `REVISE_SKETCH` and retry mode
   `revise_sketch`.

5. **Routing:** this is a repeated activation/exchange blocker under the
   user's explicit policy. It must not route to idea generation. No
   `IDEA_FAIL` or `new_idea` recommendation is made.

## Notation And Assumption Notes

- `R^parallel`, `Pi_star`, `D_M`, `d_{j,M}`, `x_M`, `alpha_M`, `z_{j,M}`,
  and `z_M^{p,q}` are proof-local or appendix-local objects defined directly
  from the current setting. The public-facing outputs attempted here are
  `(Act-rad)`, `Theta_act`, `epsilon_act`, and the dual equations.
- `Theta_act` is a root-free maximum over all unresolved rows and is formed
  before any selected label. On `E_raw`, the local series is derived from the
  accepted `step_003b` raw transfer rather than imported from the
  `E_inst`-scoped `step_003` artifact.
- `s_low`, `beta_act`, `delta_act`, and `mu_act` are directly defined by the
  accepted sketch. The lower bound on `t` and the bound on `N_I(g)e/t` are
  proved in `lem:step-003c-radial-order`; no denominator is assumed.
- `B_perp` is an accepted derived source-normal output. `epsilon_act` is a
  proof-local envelope; its use in the unresolved support case is conditional
  on the missing unit and is not exported as a completed margin.
- The matched-label boundary witness uses only the allowed finite prefix,
  separation convention, and current-frame geometry. It is a diagnostic of
  the unresolved-only interface, not a claim that the full theorem is
  impossible.
- The accepted `global_proof.md`/`global_proof_review.md` pair was read only
  for planning guidance. It is not evidence, a cited theorem, an assumption
  source, or authority to alter the target claim.

