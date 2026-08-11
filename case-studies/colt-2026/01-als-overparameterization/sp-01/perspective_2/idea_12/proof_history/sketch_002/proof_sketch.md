# Proof Sketch

## Formalized Setting

This is sketch attempt 2 for perspective_2/idea_12 in revise_sketch mode.
The binding artifacts are unchanged:

- idea.md SHA-256:
  834398f2b088bd7f5e17a8ff89bebd34b4527227f74c977e91fb1500b4c3a20f
- setting.md SHA-256:
  fd944f1dfe5123ca2794d5e39b16a12ff1e4b73dc1306ba6e58fec2e353b64eb

The realized tensor, objective, rank, and exact balanced target are
\[
 T=\sum_{j=1}^r\tau_j\phi_j,\qquad
 F(Q)=\tfrac12\|T-\Psi(Q)\|_F^2,\qquad
 k=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil ,
\]
\[
 q_j^\star=(\tau_j^{1/3}m_{j,A},\tau_j^{1/3}m_{j,B},
 \tau_j^{1/3}m_{j,C}),\quad j\le r,
\]
with joint-zero padding. Discovery starts at joint-zero slots and uses the
unchanged finite independent Haar tape, safeguarded radial root updates,
unprojected product-sphere angular steps, two-sign negative-curvature trials,
exact rollback, and balanced freezing. The terminal phase is joint balanced
full-space Armijo descent on the same loss. The protocol never queries a
source label, target factor, protected projection, or matched-mixture exchange.

For a legal prefix I, let
\[
 R_I=T-\sum_{i\in I}g_i^3u_i\otimes v_i\otimes w_i,\qquad
 D_I=\max\{\|R_I\|_F,\|T\|_FP^{-D_{\rm cap}}\}.
\]
The observable zero-safe margin, solver scale, and transfer padding are those
of setting.md:
\[
 \mu_I(q)=
 \begin{cases}
 0,&s_I(q)\le0\ \text{or}\ \Delta F_I(q)\le0,\\
 \min\{1,s_I/D_I,\Delta F_I/D_I^2,g^3/D_I,
       \lambda_{\min}(\widehat H_{\rm ang})\},&\text{otherwise},
 \end{cases}
\]
\[
 e_I(q)=P^{-D_{\rm stat}}\mu_I(q),\qquad
 \eta_{I,q}=C_\eta(\Gamma_\star\nu_{\rm real}^2+e_I(q)).
\]
After certificate passage, the nonnegative transfer majorant and its cyclic
versions have the two 1/4 gaps in setting.md, and
\[
 \Theta_{I,q}=(\operatorname{Id}-C_0\Gamma_\star\mathcal T^+_{I,q})^{-1}
 C_0\Gamma_\star(S+A_I+e_I(q)\mathbf1).
\]
The numerical source is always the displayed candidate-relative e_I(q);
there is no fixed padding and no E_lb absorption.

### Local-prefix interface

The phrase legal prefix below means the following explicit derived record,
not an extra assumption. For s=|I_s|<r define
\[
 \mathsf{LP}_s=(I_s,\pi_s,\sigma_s,\mathcal U_s,Q_s,R_s,A_s,b_s,\chi_{<s}),
\]
where \(\pi_s:I_s\hookrightarrow[r]\) is an analysis-only injection,
\(\mathcal U_s=[r]\setminus\pi_s(I_s)\), Q_s is the actual frozen tuple,
R_s=R_{I_s}, A_s=A_{I_s} is the exact history array in setting.md, and
\[
 b_s\ge\|A_s\|_{{\rm root},2},\qquad
 \chi_{<s}=\sum_{t<s}{e_tD_t^2\over\|T\|_F^2},\qquad b_0=\chi_{<0}=0.
 \tag{LP}
\]
The record stores the exact residual, signs, unused joint-zero slots, and
the stop flag R_s=0. A local transition is the producer
\[
 \mathsf{LP}_s+\text{passing }q_s
 \longmapsto(\mathsf{LP}_{s+1},\beta_s,\chi_s),\qquad
 b_{s+1}\ge\|A_{s+1}\|_{{\rm root},2},
 \tag{LP-transition}
\]
where \(\beta_s=C_{\rm tr}\bigl(\sum_{j,\ell,M}
|\widetilde\Upsilon^M_{s;j,\ell}|+\chi_s\bigr)\) is charged once and is
zero on rollback.  The one-step expansion proves the following raw
recurrence before the finite induction:
\[
 \widetilde\Upsilon^M_{s;j,\ell}
 =(1+\eta_s)(J_M(p_s,\ell)+z_{s,M,\ell})
   \prod_{N\ne M}(H_N(p_s,j)+z_{s,N,j})
   -J_M(p_s,\ell)\prod_{N\ne M}H_N(p_s,j),
 \tag{capture-charge-row}
\]
for unresolved \(j\) and \(\ell\ne j\), with zero diagonal and zero rows on
rollback.  Here \(p_s\) is the unresolved label emitted by step 003.
\[
 b_{s+1}\le b_s+\beta_s,\qquad
 \chi_s={e_sD_s^2\over\|T\|_F^2},\qquad
 \beta_s\ge0. \tag{LP-recurrence}
\]
with the raw one-time budget
\[
 \sum_{t<s}\beta_t\le
 C_A\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3)
 +C_A\sum_{t<s}\chi_t,\qquad
 b_s\le\sum_{t<s}\beta_t. \tag{LP-budget}
\]
Every numerical \(\chi_t\) remains visible. Failed probes return the same
record and add zero. The empty record is the induction base, and step 005
proves the transition before step 006 iterates it. A transaction lemma may
therefore consume an already supplied LP_s (the base record or a prior
step-005 output) without using a future producer.

For every supplied LP_s, the uniformly exported raw-history row is
\[
 \|z_q\|_{{\rm root},2}\le
 C_z\bigl(\nu_{\rm real}^2+r\nu_{\rm real}^3+b_s+\sqrt r\,e_I(q)\bigr).
 \tag{Raw-J-rel}
\]
At the empty prefix b_0=0, this is exactly the advertised candidate-relative
row. No b_s or chi_t term is absorbed into nu_real^2; the final ledger keeps
raw history and numerical pieces separate.

If R_I=0, then s_I=Delta F_I=mu_I=e_I=0, no candidate can pass, and discovery
stops. In this branch Theta and z are not formed. The statement Theta=z=0
is reserved for a formed exact H=e=0 source.

The only primitive assumptions are the eleven stable IDs in setting.md:
assump:base-column-conditioning, assump:base-product-balance,
assump:two-mode-orthogonality, assump:c-mode-gram-margin,
assump:gaussian-smoothing, assump:dimension-regime,
assump:smoothing-scale, assump:smoothing-bridge, assump:rank-regime,
assump:random-tape, and assump:accuracy-range. The prefix record, certificate
passage, matching, ledger, activation event, and PL membership are derived.

## Formalized Goal

On a once-drawn instance event \(\mathcal E_{\rm inst}\), with
\(\Pr_{\rm inst}(\mathcal E_{\rm inst})\ge1-r^{-10}\), derive the norm,
weight, pair/triple Gram, R-src, and two-mode reserves in setting.md.
Conditional on nonzero T and this event, prove:

1. (S): static event, two-mode contractions, and exact balanced target.
2. (T): target-blind certificate dichotomy and uniform Raw-J-rel for every
   supplied LP record.
3. (B): local transition, finite raw ledger, honest capture telescope, and
   all-commit errors with every numerical term retained.
4. (P): history-uniform finite-tape recovery, same-target balanced PL entry,
   and \(\|T-\Psi(Q)\|_F\le\epsilon\|T\|_F\) for \(0<\epsilon<1\).

Discovery and ledger work are polynomial in
(n,r,k,kappa,rho^{-1}), independent of epsilon; terminal work is polynomial
in these variables and log(1/epsilon). Instance and tape probabilities remain
separate. The exact T=0 return and H=e=0 stationary/no-floor specialization
are preserved.

## Sketch Identity

- Sketch attempt: 2
- Retry mode: revise_sketch
- Progress type: material_partial
- Roadmap shape: ten stable rows, (S)=step_001, (T)=steps_002--004,
  (B)=steps_005--007, and (P)=steps_008--010.
- Repair scope: local-prefix producer, coefficient-level isolation units,
  quantified target-blind seed window, explicit target-orbit chart/rate, and
  the correct R_I=0 no-production branch. No setting or goal change.

## Proof Roadmap

Use direct current-notation multilinear algebra, Gaussian concentration,
nonnegative Neumann series, a one-time capture potential, a spherical
slab/small-ball calculation, and a direct balanced-target Jacobian/PL
calculation. Parent papers in technical_survey.md are proof-pattern
provenance only; no theorem-facing conclusion is imported without a local
statement and hypothesis check.

The compact dependency discipline is:

- step 003 has local units U3-coeff, U3-selector, and U3-branches;
- step 004 consumes an already supplied LP_s and is the sole row producer;
  step 005 emits the next LP record;
- step 006 applies LP-transition from the empty base through at most r
  commits and proves LP-budget;
- step 007 has local units U7-seed, U7-first-update, and U7-amplify;
- step 008 has local units U8-metric, U8-aggregate, and U8-first-exit.

Thus the controller still sees ten steps while each high-risk interface has
a lemma-sized producer and an acyclic producer-consumer path.

## Rate Objectives

### R1: once-drawn structural event

- Confidence-explicit and structural-parameter explicit, uniform over every
  finite prefix and every static array.
- Expose n,r,k,kappa,rho,Gamma_star,P,nu_real and the operator, Frobenius,
  l1, and rootwise-2 norms. Hidden constants are fixed source/proof constants.
- Probability is only over Gaussian smoothing and is at least 1-r^-10.
  The bridge is Gaussian norm/Gram concentration plus the two orthogonal
  source modes; exact representation and the T=0 baseline remain literal.
- Fixed quantities are one realized instance and the eleven primitive
  conditions; horizon mode is once-drawn and prefix-uniform.

### R2: transaction and raw finite-prefix ledger

- Finite-horizon and numerical-error explicit for s<=r.
- Expose e_t,D_t,eta_t,chi_t,b_s, and
  nu_real^2+r nu_real^3. The row is
  \(\|z_t\|_{\rm root,2}\le
  C_z(\nu_{\rm real}^2+r\nu_{\rm real}^3+b_t+\sqrt r e_t)\).
- Keep
  \(e_tD_t^2\le P^{-D_{\rm stat}}\Delta F_t\),
  \(\sum_t\Delta F_t\le F(\mathrm{empty})\), and
  \(\sum_t\chi_t\le P^{-D_{\rm stat}}\). No term is absorbed into
  \(\nu_{\rm real}^2\). Discovery is independent of epsilon.
- Probability is conditional on the instance, horizon is finite and uniform
  for s<=r, and norm mode is the displayed l1/rootwise-2 array plus
  Frobenius objective decrease. Hidden constants cannot depend on the prefix,
  commit order, or adaptive e_t.

### R3: target-blind activation and tape probability

Put \(a_n=\sqrt{L_{\rm ang}\log(2r)/n}\), \(b_n=4a_n\), with fixed
sufficiently large L_ang. For each unresolved j define the analysis-only
angular slab
\[
 \mathcal W^{\rm ang}_{s,j}=
 \{(u,v,w):a_n\le|\langle u_M,m_{j,M}\rangle|\le2a_n,\
 |\langle u_M,m_{\ell,M}\rangle|\le b_n\
 \text{for all }\ell\ne j,M\},
 \]
with the product sign chosen positive. Its angular belt width is
\(\Delta_{\rm ang}\asymp a_n\), not a tiny inverse-power cap. Define
\[
 \mathcal W^{\rm rad}_{s,j}=
 \{g:|g^3-s_s(u,v,w)|\le\tfrac18s_s(u,v,w),\
 \tfrac12(\tau_{\min}a_n^3)^{1/3}\le g\le
 2(8\tau_{\max}a_n^3)^{1/3}\}.
\]
Here \(s_s=s_{I_s}(q)\) and
\(g_{\min}=\tfrac12(\tau_{\min}a_n^3)^{1/3}\) in the guarded recurrence below.
Its radial width is at least
\(\Delta_{\rm rad}=c_{\rm rad}\tau_{\min}^{1/3}a_n\). Direct spherical
density and the two orthogonal modes give, uniformly in LP_s,
\[
 \Pr_{\rm Haar}(\mathcal W^{\rm ang}_{s,j})
 \ge c_{\rm ang}^3a_n^3(2r)^{-c_{\rm ang}}
 \ge(nr)^{-c_{\rm tx}}=:p_{\rm tx}.
\]
Concretely, integrate the Haar density
\(c_n(1-t^2)^{(n-3)/2}\) over each interval
\([a_n,2a_n]\) and use a union bound for the cross-label slabs; the
dimension regime makes the resulting constant positive. The score transfer
uses the separate, observable dominance check
\[
 C_{\rm seed}\{\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3+b_s)
 +\sqrt r\,e_I(q)\}
 \le\tfrac18\tau_{\min}a_n^3. \tag{seed-dominance}
\]
The protocol only evaluates observable certificate clauses; the union over j
is proof-only.

Choose the fixed hierarchy
\[
 D_{\rm stat}\ge D_\mu+D_{\rm gap}+12,\quad
 D_{\rm cap}\ge D_{\rm stat}+12,\quad
 d_{\rm tx}\ge24+D_{\rm stat}+D_{\rm gap},\quad
 c_{\rm tx}\ge c_{\rm ang}+6. \tag{P-hierarchy}
\]
Together with \(\sqrt r\nu_{\rm real}\le1/20\), this gives factor-two
half-slack for every certificate clause. The guarded flow uses
\[
 g_{h+1}=g_h+\operatorname{clip}_{[-\Delta_{\rm tr},\Delta_{\rm tr}]}
 {s_h-g_h^3\over3\max\{g_h^2,g_{\min}^2\}},\qquad
 u_{h+1}=\operatorname{Exp}_{u_h}(-\alpha_h\operatorname{grad}_{\cal S}f_h),
 \]
with factor displacement at most \(\Delta_{\rm tr}=P^{-20}\). On the slab,
a fixed sign flip gives \(s_0\ge\tfrac14\tau_{\min}a_n^3\), so the first
radial update has positive gain; the bracket, guard, and half-slack
inequalities remain invariant until Cert passes or rollback occurs. At most
\(H_{\rm tx}=\lceil P^{d_{\rm tx}}\rceil\) updates are needed, taking
\(\alpha_h\le\Delta_{\rm tr}/(2R_{\max})\) and
\(d_{\rm tx}\) large enough to dominate the guarded path length and the
polynomial derivative Lipschitz bound. With
\(N_{\rm tx}=\lceil C_{\rm tape}r(nr)^{c_{\rm tx}}\log(2r)\rceil\),
independent stopped trials give
\((1-p_{\rm tx})^{N_{\rm tx}}\le r^{-11}\) per unresolved label and
conditional failure at most r^-10 after the finite union.
- Probability mode is conditional tape probability after the separate
  instance event; horizon/work mode is N_tx seeds and H_tx updates, both
  independent of epsilon. Norm mode is Haar correlation, factor displacement,
  objective, and certificate scalars. Hidden constants are fixed protocol
  constants only.

### R4: exact-target balanced chart and terminal accuracy

Let \(g_-=\tau_{\min}^{1/3}\), \(g_+=\tau_{\max}^{1/3}\), and
\(\chi_\tau=g_+/g_-\le(2\Gamma_\star)^{1/3}\). For the finite
permutation/product-one-sign orbit \(\mathcal Z_\star\), define
\[
 d_{\rm bal}(Q,\mathcal Z_\star)^2
 =\min_{Z\in\mathcal Z_\star}\sum_{i=1}^k\sum_{M=A,B,C}
       \|q_i^M-z_i^M\|_2^2,
 \]
including joint-zero terms for unused slots. Set
\[
 \varrho_{\rm PL}={c_{\rm ch}g_-\over r(1+\chi_\tau)^2},\quad
 \sigma_\star=c_Jg_-^2,\quad
 L_{\rm ch}=C_Lg_+^4(1+\chi_\tau)^2,\quad
 \mu_{\rm PL}={c_J^2g_-^4\over8(1+\chi_\tau)^2}. \tag{PL-constants}
\]
The good event gives \(g_-\ge(2\kappa)^{-1}\), so all chart constants and
their inverse powers have explicit polynomial dependence on r,kappa,Gamma_star.

The actual all-commit tuple satisfies
\[
 d_{\rm bal}(Q,\mathcal Z_\star)\le
 {C_{\rm ent}\over g_-}\left[
 \sqrt r\,\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3)
 +\sqrt{\sum_t\chi_t}+\sqrt r\,P^{-D_{\rm stat}/2}\right]
 \le\tfrac14\varrho_{\rm PL}. \tag{Entry}
\]
The sqrt(r) aggregation is explicit. On this chart,
\[
 {\sigma_\star^2\over8}d_{\rm bal}^2\le F(Q)\le
 2L_{\rm ch}d_{\rm bal}^2,\qquad
 \|\operatorname{grad}_{\rm bal}F(Q)\|_F^2\ge2\mu_{\rm PL}F(Q). \tag{PL}
\]
Armijo gives
\[
 F_{h+1}\le(1-c_{\rm A}\mu_{\rm PL}/L_{\rm ch})F_h,\qquad
 \sum_h\|Q_{h+1}-Q_h\|_F\le C_{\rm path}d_{\rm bal}(Q_0,\mathcal Z_\star),
 \]
so the first-exit boundary is invariant. The terminal horizon is
\[
 H_{\rm term}\le
 \left\lceil {L_{\rm ch}\over c_{\rm A}\mu_{\rm PL}}
 \log {2F(Q_0)\over\epsilon^2\|T\|_F^2}\right\rceil
 =\operatorname{poly}(n,r,k,\kappa,\rho^{-1},\Gamma_\star)\log(1/\epsilon).
- Probability is conditional on the separate instance and tape events;
  horizon mode is the displayed finite terminal horizon. Norm mode is
  d_bal, balanced-manifold gradient, objective, and exact Frobenius residual.
  Hidden constants cannot depend on n,r,k,kappa,rho,epsilon, or labels.
 \]

## Assumption Provenance Objectives

- step 001 derives the once-drawn event, nonvanishing, norms, weights,
  Gram reserves, R-src, two-mode, and Q* from
  assump:base-column-conditioning, assump:base-product-balance,
  assump:two-mode-orthogonality, assump:c-mode-gram-margin,
  assump:gaussian-smoothing, assump:dimension-regime,
  assump:smoothing-scale, and assump:smoothing-bridge.
- step 002 derives certificate quantities and transfer gaps from the actual
  residual and derivatives; Cert is a protocol predicate and R_I=0 is a
  no-production branch.
- step 003 is conditional only on a supplied LP_s and derives the
  coefficient map, selector, injection, signs, and unresolved label.
- step 004 consumes that record and produces the resolvent row; all history
  terms are represented by b_s, with no future induction claim.
- step 005 derives LP-transition, exact rollback, charge, and chi_s.
  step 006 proves the empty-base/one-step-preservation induction and raw
  finite budget. No generated condition is promoted to an assumption.
- step 007 derives the seed event and tape probability from the invariant and
  assump:random-tape; step 008 derives actual-to-orbit entry; steps 009--010
  are terminal/rate bridges using assump:accuracy-range and assump:rank-regime.

## Mechanism-Source And Boundary Stress

### step_001 (S)

Gaussian norm/Gram concentration under the smoothing and dimension IDs,
combined with deterministic A/B orthogonality, directly supplies R-src,
two-mode, and pair/triple reserves in the exact realized target frame. The
event is one-time and noncircular (primitive IDs -> step 001 -> all
consumers). T=0 returns joint zero; H_M=0 gives exact contractions and a
stationary target. Locality: step-local; baseline preserved.

### step_002 (T)

Observable score, gain, radial/angular errors, and normalized Hessian are the
source for the zero-safe certificate. Direct absolute-Gram bounds give both
Neumann gaps and expose every defect. If score, gain, g, or a screen fails,
rollback is exact. If R_I=0, mu=e=0 and no Theta or z is produced; only a
formed H=e=0 source has Theta=z=0. Locality: step-local; actual residual and
target metric are unchanged.

### step_003 (T): coefficient-level local units

Set \(c_{j,M}=\langle u_M,m_{j,M}\rangle\),
\(a_j=\tau_j\prod_Mc_{j,M}\), and
\(\mathcal M_\theta=\{j:|a_j|\ge\theta_{\rm mix}\}\), where
\(\theta_{\rm mix}=P^{-D_\mu}\|T\|_Fa_n^3/16\). For a nonzero projected
difference use
\[
 v_{j\ell,M}={\operatorname{Proj}_{u_M^\perp}(m_{j,M}-m_{\ell,M})\over
 \|\operatorname{Proj}_{u_M^\perp}(m_{j,M}-m_{\ell,M})\|_2}.
\]
If two coefficients survive and some selector is nonzero, direct Hessian
calculus gives
\[
 \lambda_{\min}(\widehat H_{\rm ang})
 \le-c_{\rm mix}|a_ja_\ell|/\|T\|_F
 +C_{\rm def}\{\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3+b_s)
 +\sqrt r\,e_I(q)\}. \tag{U3-mix}
\]
The exported dominance check is the explicit inequality
\[
 C_{\rm def}\{\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3+b_s)
 +\sqrt r\,e_I(q)\}
 \le {c_{\rm mix}|a_ja_\ell|\over2\|T\|_F}. \tag{U3-dominance}
\]
The LP-budget and P-hierarchy make this check hold before the positive
Hessian certificate is consumed. If every selector is zero, two-mode
orthogonality and Sep imply singleton support; assign its unique
analysis-only label and product-one signs. Ties or mixed support roll back.
The g=0 and zero-score branches fail Cert. If one unresolved label remains,
assign it without a selector; if none remains, terminate. This covers
singleton, tie, zero-selector, last-label, and mixed branches. E_i is the
actual atom error, not a surrogate. Producer path is supplied LP_s plus
steps 001--002 -> step 003 -> steps 004--005; locality is step-local
conditional, and H=e=0 is exact.

### step_004 (T)

Step 002 supplies the two transfer gaps and step 003 supplies the
analysis-only assignment and exact A_s. The finite nonnegative Neumann series
therefore gives
\[
 \|z_q\|_{\rm root,2}\le
 C_z(\nu_{\rm real}^2+r\nu_{\rm real}^3+b_s+\sqrt r\,e_I(q)).
\]
At the empty prefix b_s=0, matching the advertised row. At R_I=0 no
resolvent is formed. All raw history and numerical terms remain explicit;
locality is step-local.

### step_005 (B)

Direct multilinear expansion with J_M(p,p)=1, zero-diagonal z, balancing,
and positive Delta F_s produces the next actual residual, injection, A_{s+1},
beta_s, and
\(e_sD_s^2\le P^{-D_{\rm stat}}\Delta F_s\). Failed trials return the
identical LP record and add zero. The empty record is the base; R_s=0 stops
before this step. Locality is step-local under Raw-J-rel; H=e=0 has zero
charge.

### step_006 (B)

Apply LP-transition from s=0. The nonnegative objective potential gives
\(\sum\Delta F_t\le F(\mathrm{empty})\) and
\(\sum\chi_t\le P^{-D_{\rm stat}}\), while the exact one-step expansion
gives LP-budget and the raw structural/history ledger. At most r commits
occur; rollback is identity and the last-label/R=0 branches terminate.
This is the noncircular producer of every all-prefix LP record. Locality:
step-local; no E_lb absorption.

### step_007 (B -> P)

For the explicit angular slab and radial window, the two-mode score identity
and LP-budget give
\[
 s_s\ge\tfrac14\tau_{\min}a_n^3,\qquad
 \Delta F_s\ge\tfrac1{16}\tau_{\min}^2a_n^6,\qquad
 \mu_s\ge2P^{-D_\mu},
\]
and factor-two slack for transfer, separation, Hessian, radial, and angular
clauses. Spherical density gives \(p_{\rm tx}\ge(nr)^{-c_{\rm tx}}\).
The fixed sign flip makes the first score positive; the clipped radial and
angular recurrences preserve the guard for H_tx updates or rollback. The
independent tape amplification gives conditional failure r^-10. The
analysis union over labels is not queried by the target-blind protocol.
Empty prefix, negative score, guard boundary, tape exhaustion, and R=0 all
rollback or stop. Locality: step-local.

The half-slack export used by the flow is explicit:
\[
 e_{\rm rad},e_{\rm ang}\le\tfrac12e_I,\quad
 \lambda_{\min}(\widehat H_{\rm ang})\ge2P^{-D_{\rm gap}},\quad
 {\sf Sep}\le\tfrac18,\quad
 C_0\Gamma_\star\|\mathcal T^+\|_{1\to1},
 C_0\Gamma_\star\|\mathcal T^+\|_{{\rm root},2\to{\rm root},2}\le\tfrac18.
 \tag{U7-half-slack}
\]

### step_008 (P)

Use the explicit balanced orbit metric, \(g_\pm\), and
\(\varrho_{\rm PL},\mu_{\rm PL},L_{\rm ch}\). The all-commit per-slot
errors aggregate with sqrt(r) and the raw chi budget to give Entry. A direct
balanced Jacobian/Taylor sandwich supplies PL in the same exact target
metric. Armijo smoothness and the path-length bound prevent first exit.
Exact target and zero residual are already in the chart. Locality: step-local.

### step_009 (P)

The same-target PL inequality and exact-loss Armijo decrease give geometric
Frobenius residual decay in O(log(1/epsilon)) iterations. The exact target
has zero gradient/loss; F=0 stops; no persistent forcing or floor appears.
Locality: step-local.

### step_010 (P)

Directly substitute rank, tape, exponents, chart constants, and separate
probability tails. Check T=0 before normalization, R_I=0 before forming
Theta, and H=e=0 for the exact baseline. The final object is the exact
Frobenius residual and the endpoint is floor-free. Locality: step-local.

### Compact gate-field audit

| Step | Mechanism/source adequacy and controls | Accumulation and noncircular producer | Entry/first-update and boundary stress | Locality, consumers, repair |
| --- | --- | --- | --- | --- |
| 001 | Gaussian concentration plus exact A/B source; static defects are bounded on one event. | One-time event; 001 -> all consumers. | T=0 early return; H=0 stationary exact target. | step-local; 001 -> 002--010; /proof-sketch. |
| 002 | Observable score/Hessian and absolute-Gram gap; zero-safe branches. | One transaction; 001 -> 002 -> 003/004. | Empty prefix, g=0, nonpositive score, R=0 no-production. | step-local; 003--007; /proof-sketch if gap fails. |
| 003 | Coefficient lower term and U3-mix dominate history, structural, and e defects. | Conditional LP input; 003 -> 004/005, no source-label query. | First selector, zero selector, singleton, tie, last label, g=0. | step-local conditional; /proof-sketch if dominance fails. |
| 004 | Neumann series maps S+A_s+e to the same target-frame row. | Geometric within-state closure; LP -> 003 -> 004 -> 005/006/008. | Empty b=0; R=0 means no Theta; H=e=0 formed source vanishes. | step-local; /proof-sketch if raw row fails. |
| 005 | J(p,p)=1 expansion supplies exact atom transition and charge. | One-step beta/chi charge; 005 -> 006. | Empty base, first accepted update, rollback, R=0 stop. | step-local; /proof-sketch if transition fails. |
| 006 | Objective potential and LP-recurrence control b_s and all raw terms. | Finite r-scope induction, base -> 005 -> 006; no circularity. | Repeated failures preserve state; last label/R=0 terminate. | step-local; 007/008; /proof-sketch if budget fails. |
| 007 | Spherical slab mass plus clipped radial/angular flow supplies activation. | Stopped finite tape; 006 -> 007 -> 008/010. | First sign flip/update, guard boundary, exhaustion, R=0. | step-local; /proof-sketch if mass/flow is not polynomial. |
| 008 | Balanced Jacobian/Taylor source matches actual tuple and exact orbit metric. | One-time entry then path-length first-exit; 006/007 -> 008 -> 009. | Exact target/F=0 valid; boundary displacement blocks exit. | step-local; /proof-sketch if aggregate bridge fails. |
| 009 | Same-target PL and Armijo give signed geometric decrease. | Contractive finite terminal horizon; 008 -> 009. | Zero gradient implies zero loss in chart; exact target stationary. | step-local; /proof-sketch if PL/no-floor fails. |
| 010 | Direct rate specialization preserves exposed variables and separate tails. | Final finite bridge; 001,006,007,009 -> 010. | T=0 before normalization; H=e=0 exact baseline. | step-local; final consumer; /proof-sketch if dependence drops. |

## Exported Interface Feasibility

| Exported interface | Producer | Raw controls and defects | Target compatibility | Margin/source | Consumers and path | Blocker |
| --- | --- | --- | --- | --- | --- | --- |
| E_inst, R-src, two-mode, Q* | step 001 | Gaussian deviations and static Gram reserves | Same realized tensor/Frobenius metric | Concentration and A/B orthogonality | 001 -> 002--010 | None |
| LP_s, A_s, b_s, unresolved set | initialization or prior step 005; step 006 closes all reachable records | Exact residual, b_0=0, raw chi | Actual frozen tuple and target-frame contractions | Empty base plus LP-transition | LP -> 003 -> 004/005; 006 -> 007/008 | None |
| mu_I,e_I,eta_I, transfer gap | step 002 | Observable score/gain/Hessian and zero branches | Current actual residual | Cert clauses and 1/4 gap | 002 -> 003/004/007 | None |
| coefficient selector and assignment | step 003 | a_j, nonzero tangent, U3-mix, branch map | E_i is actual atom error | Two-mode lower term | 003 -> 004/005/007 | None |
| Theta,z,Raw-J-rel | step 004 | S+A_s+e_I 1; b_s and sqrt(r)e_I raw | Same target-frame coordinates | Neumann gap | 004 -> 005/006/008 | None |
| next LP, beta, chi, rollback | step 005 | J diagonal, exact expansion, Delta F | Actual tensor increment versus exact atom | Objective decrease/rollback | 005 -> 006 | None |
| finite ledger and all-commit tuple | step 006 | Structural, history, and chi terms separate | Actual frozen factors | One-time potential | 006 -> 007/008 | None |
| seed window and tape event | step 007 | a_n,b_n, radial/angular radii, first update, H_tx | Actual full-space state | Spherical mass/amplification | 007 -> 008/010 | None |
| orbit metric, Entry, PL | step 008 | sqrt(r), g_-, g_+, varrho, mu, L | Actual tuple to exact padded orbit | Jacobian/Taylor | 008 -> 009 | None |
| terminal rate and baseline | steps 009--010 | Geometric decrease, separate tails, explicit horizons | Exact Frobenius residual | Armijo/PL | final theorem | None |

Every generated output has a producer before its consumer. LP_s is a
conditional state input from initialization or a prior transaction invocation;
step 006 proves that the finite execution supplies it from the empty base.
All rows use the normalized inner-product, realized-factor, balanced-slot,
Frobenius, operator, l1, and rootwise-2 conventions fixed in setting.md.
The produced tuple, consumed target orbit, and residual metric are the same
objects; no source-convention conversion, whitening, projection, or surrogate
residual is deferred to a later proof step.

## Generated Output Flow

| Generated output | Producer | Consumers | Final use | Dependency path | Provenance |
| --- | --- | --- | --- | --- | --- |
| Static event/reserves | primitive IDs -> step 001 | 002--010 | Good instance | 001 -> all | derived |
| LP_s local record | base/prior step 005; step 006 induction | 003--005, 007--008 | Current residual/history | base -> 005 -> 006 | conditional then derived |
| Certificate/transfer gap | step 002 | 003,004,005,007 | Transaction screen | 001 -> 002 | derived |
| Coefficient assignment | step 003 | 004,005,007 | One-label capture | LP -> 003 | analysis-only |
| Theta,z,Raw-J-rel | step 004 | 005,006,008 | Row/charge control | LP -> 003 -> 004 | derived |
| Transition/charge | step 005 | step 006 | Prefix preservation | 003/004 -> 005 | conditional |
| Raw ledger/all-commit | step 006 | 007,008 | Chart bridge | base -> 005 -> 006 | derived |
| Activation/tape event | step 007 | 008,010 | Recovery probability | 006 + random tape -> 007 | derived |
| Orbit entry/PL | step 008 | 009 | Terminal basin | 001,006,007 -> 008 | derived |
| Terminal rate/baseline | steps 009--010 | final assembly | Public endpoint | 008 -> 009 -> 010 | derived |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | Derive E_inst, R-src, two-mode, pair/triple reserves, and Q*. | None | assump:base-column-conditioning; assump:base-product-balance; assump:two-mode-orthogonality; assump:c-mode-gram-margin; assump:gaussian-smoothing; assump:dimension-regime; assump:smoothing-scale; assump:smoothing-bridge | Gaussian normalization and Schur products | Gaussian concentration and multilinear algebra | Static event and target | R1 | PENDING |
| step_002 | For supplied LP_s, prove zero-safe Cert and transfer gaps, with the R_I=0 stop. | step_001 + LP_s | assump:rank-regime; derived E_inst; protocol definitions | Positive margin/zero residual | Derivative identities and absolute-Gram transfer | mu,e,eta,T+ | R2 | PENDING |
| step_003 | Prove coefficient-level singleton/mixed alternative and all branch cases; emit assignment. | step_001, step_002 + LP_s | Derived two-mode; protocol Sep/Hessian | Selector and defect dominance | Product-sphere Hessian and score identities | pi,p,E,A local units | R2 | PENDING |
| step_004 | Form Theta and prove raw-history Raw-J-rel plus directional/radial bounds. | step_002, step_003 + LP_s | Derived event/assignment | Neumann small gain | Finite Neumann series | Theta,z,Raw-J-rel | R2 | PENDING |
| step_005 | Prove one accepted transition or exact rollback and emit LP-transition/charge. | step_003, step_004 | Derived LP_s/Raw-J-rel | J diagonal and atom calibration | Exact expansion and objective telescope | LP_next,beta,chi | R2 | PENDING |
| step_006 | Induct from empty through r commits and prove raw ledger/all-commit errors. | step_001, step_005 | Derived event/transition; assump:rank-regime | Noncircular accumulation | Monotone potential/one-step preservation | Uniform LP and ledger | R2 | PENDING |
| step_007 | Prove explicit seed window, first-update guard, Haar mass, and tape recovery. | step_002, step_003, step_006 | assump:random-tape; derived LP | Angular/radial slack | Spherical slab, clipped flow, amplification | W, tape event, runtime | R3 | PENDING |
| step_008 | Define orbit metric, aggregate errors, and prove PL entry/first-exit. | step_001, step_004, step_006, step_007 | Derived reserves; assump:base-product-balance | sqrt(r) aggregation/Jacobian | Balanced Jacobian/Taylor/Armijo path | Metric, Entry, PL constants | R4 | PENDING |
| step_009 | Run terminal balanced Armijo to relative epsilon with no floor. | step_008 | assump:accuracy-range; derived PL | Geometric decrease/first exit | PL and sufficient decrease | Terminal Q/residual | R4 | PENDING |
| step_010 | Specialize rank, exponents, probabilities, runtime, T=0 and H=e=0 baseline. | step_001, step_006, step_007, step_009 | assump:rank-regime; assump:random-tape; assump:accuracy-range | Hidden dependence/boundaries | Direct inequalities and probability composition | Public theorem | R1--R4 | PENDING |

## Dependency Notes

The graph is acyclic. LP_s is an explicit state parameter with an empty base
and a prior-transaction producer; it is not claimed to be produced by the
later induction before being consumed. Steps 003--004 are conditional local
lemmas, step 005 emits the next state, and step 006 proves every reachable
finite prefix satisfies the record and raw budget. Step 007 consumes that
invariant, step 008 consumes the actual all-commit tuple, and steps 009--010
are terminal/rate bridges. Analysis-only labels and signs never enter the
algorithm or primitive assumption list.

## Blockers

None at sketch level. The five prior interface defects are addressed by the
named LP-transition, coefficient-level selector inequality and branch map,
quantified slab/radial seed window with first-update recurrence and
P-hierarchy, explicit balanced-orbit metric/rate bridge, and honest R_I=0
no-production trace. Remaining work is lemma-level proof and review; no
primitive assumption, algorithm, target metric, probability mode, rank,
success criterion, or no-floor endpoint was changed.
