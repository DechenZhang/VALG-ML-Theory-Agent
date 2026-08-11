# Proof Sketch

## Formalized Setting

This is sketch attempt 4 for perspective_2/idea_12 in revise_sketch mode.
The binding artifacts are unchanged:

- idea.md SHA-256:
  834398f2b088bd7f5e17a8ff89bebd34b4527227f74c977e91fb1500b4c3a20f
- setting.md SHA-256:
  fd944f1dfe5123ca2794d5e39b16a12ff1e4b73dc1306ba6e58fec2e353b64eb

The realized asymmetric CP tensor, exact objective, rank, and balanced target
are
\[
 T=\sum_{j=1}^r\tau_j\phi_j,\qquad
 F(Q)=\tfrac12\|T-\Psi(Q)\|_F^2,\qquad
 k=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil ,
\]
\[
 q_j^\star=(\tau_j^{1/3}m_{j,A},\tau_j^{1/3}m_{j,B},
 \tau_j^{1/3}m_{j,C}),\qquad j\le r,
\]
with joint-zero padding. Discovery starts at joint-zero slots and uses the
unchanged finite independent Haar tape, safeguarded radial root solves,
unprojected product-sphere angular steps, two-sign negative-curvature trials,
exact rollback, and balanced freezing. The terminal procedure is joint
balanced full-space Armijo descent on the same exact loss. The algorithm
never queries a source label, target factor, protected projection, or
matched-mixture exchange.

For a current prefix I, set
\[
 R_I=T-\sum_{i\in I}g_i^3u_i\otimes v_i\otimes w_i,\qquad
 D_I=\max\{\|R_I\|_F,\|T\|_FP^{-D_{\rm cap}}\},
\]
\[
 \mu_I(q)=
 \begin{cases}
 0,&s_I(q)\le0\ \text{or}\ \Delta F_I(q)\le0,\\
 \min\{1,s_I/D_I,\Delta F_I/D_I^2,g^3/D_I,
 \lambda_{\min}(\widehat H_{\rm ang})\},&\text{otherwise},
 \end{cases}
\quad e_I(q)=P^{-D_{\rm stat}}\mu_I(q),
\]
\[
 \eta_{I,q}=C_\eta(\Gamma_\star\nu_{\rm real}^2+e_I(q)).
\]
After certificate passage, use the nonnegative transfer majorant and cyclic
versions from setting.md. Their two induced norms obey the stated 1/4 gaps,
and
\[
 \Theta_{I,q}=(\operatorname{Id}-C_0\Gamma_\star\mathcal T^+_{I,q})^{-1}
 C_0\Gamma_\star(S+A_I+e_I(q)\mathbf1).
 \tag{relative-resolvent}
\]
The static producer also exports, for j not equal to ell,
\[
 |\langle m_{j,A},m_{\ell,A}\rangle
   \langle m_{j,B},m_{\ell,B}\rangle|
 \le C_{\rm 2mode}\nu_{\rm real}^2,\qquad
 \|{\cal T}^+_{I,q}\|_{1\to1},
 \|{\cal T}^+_{I,q}\|_{{\rm root},2\to{\rm root},2}
 \le2(\nu_{\rm real}+\eta_{I,q})(1+\sqrt r\,\nu_{\rm real}).
 \tag{static-transfer}
\]
For example, its A-row is
\[
 (\mathcal T^+_{I,q}Z)_{j,A,\ell}
 =\sum_{t\ne j}|J_A(t,\ell)|
 \bigl[(|H_C(j,t)|+\eta_{I,q})Z_{j,B,t}
 +( |H_B(j,t)|+\eta_{I,q})Z_{j,C,t}\bigr],
 \tag{transfer-majorant}
\]
with the two cyclic rows and zero diagonal.
The fixed constants and the instance reserve make
\(C_0\Gamma_\star\|{\cal T}^+\|\le1/4\) in both norms.
The only numerical source is the candidate-relative e_I(q); no fixed pad or
E_lb absorption is used.

### Local-prefix interface

The transaction-local lemmas consume the following explicitly named derived
record, not a new assumption. For s=|I_s|<r,
\[
 \mathsf{LP}_s=(I_s,\pi_s,\sigma_s,\mathcal U_s,Q_s,R_s,A_s,b_s,\chi_{<s}),
\]
where \(\pi_s:I_s\hookrightarrow[r]\) is an analysis-only injection,
\(\mathcal U_s=[r]\setminus\pi_s(I_s)\), Q_s is the actual frozen tuple,
R_s=R_{I_s}, and
\[
 (A_s)_{j,A,\ell}={1\over\tau_j}\sum_{i\in I_s}
 \left|\left\langle E_i,
 m_{\ell,A}\otimes m_{j,B}\otimes m_{j,C}\right\rangle\right|
 \quad(j,\ell\in\mathcal U_s,\ j\ne\ell),
 \tag{history-source}
\]
with cyclic entries and zero diagonal as in setting.md. Let
\[
 b_s\ge\|A_s\|_{{\rm root},2},\qquad
 \chi_{<s}=\sum_{t<s}{e_tD_t^2\over\|T\|_F^2},\qquad
 b_0=\chi_{<0}=0.
 \tag{LP}
\]
The record also stores signs, unused joint-zero slots, and the stop flag
R_s=0. A passing transaction emits
\[
 \mathsf{LP}_s\longmapsto
 (\mathsf{LP}_{s+1},\beta_s,\chi_s),\qquad
 \chi_s={e_sD_s^2\over\|T\|_F^2},\qquad
 b_{s+1}\ge\|A_{s+1}\|_{{\rm root},2},\qquad
 b_{s+1}\le b_s+\beta_s,
 \tag{LP-transition}
\]
where the exact multilinear expansion writes
\(A_{s+1}=A_s+\Delta A_s\) and proves
\[
 \|\Delta A_s\|_{{\rm root},2}\le\beta_s,\qquad
 \|A_{s+1}\|_{{\rm root},2}\le b_s+\beta_s,\qquad
 b_{s+1}:=b_s+\beta_s\ge\|A_{s+1}\|_{{\rm root},2}.
 \tag{typed-LP}
\]
Thus the lower type is proved by the exact expansion and the emitted envelope,
while the upper recurrence holds with equality. The charge terms are
\[
 \widetilde\Upsilon^M_{s;j,\ell}
 =(1+\eta_s)(J_M(p_s,\ell)+z_{s,M,\ell})
 \prod_{N\ne M}(H_N(p_s,j)+z_{s,N,j})
 -J_M(p_s,\ell)\prod_{N\ne M}H_N(p_s,j),
\]
\[
 \beta_s=C_{\rm tr}\left(\sum_{j,\ell,M}
 |\widetilde\Upsilon^M_{s;j,\ell}|+\chi_s\right)\ge0.
\tag{capture-charge-row}
\]
On rollback \(A_{s+1}=A_s,\ b_{s+1}=b_s,\ \beta_s=\chi_s=0\), so the
typed lower and upper relations are preserved identically. The finite induction
proves, from the empty base,
\[
 b_s\le\sum_{t<s}\beta_t\le
 C_A\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3)
 +C_A\sum_{t<s}\chi_t,\qquad
 \sum_{t<s}\chi_t\le P^{-D_{\rm stat}}. \tag{LP-budget}
\]
Every numerical term remains raw. For every supplied LP_s, the uniform row
exported by the transaction-local step is
\[
 \|z_q\|_{{\rm root},2}\le
 C_z\bigl(\nu_{\rm real}^2+r\nu_{\rm real}^3+b_s+\sqrt r\,e_I(q)\bigr).
\tag{Raw-J-rel}
\]
At s=0 this is the advertised empty-prefix row; at nonempty prefixes b_s is
an already-produced raw history source, not a future assumption.
The U4 induction immediately substitutes its public budget:
\[
 \|z_q\|_{{\rm root},2}\le
 C_z\!\left[(1+C_A\Gamma_\star)
 (\nu_{\rm real}^2+r\nu_{\rm real}^3)
 +C_A\sum_{t<s}\chi_t+\sqrt r\,e_I(q)\right].
 \tag{Raw-J-rel-public}
\]
The \(\sum\chi_t\) term is exported separately to the raw ledger and is never
absorbed into \(\nu_{\rm real}^2\). On an empty or freshly initialized prefix
this reduces to the public setting/idea row up to a fixed constant.

If R_I=0, then s_I=Delta F_I=mu_I=e_I=0, no candidate passes, and discovery
stops. Theta and z are not formed in this branch. Theta=z=0 is asserted only
for a formed exact H=e=0 source.

The only primitive assumptions are the eleven stable IDs in setting.md:
assump:base-column-conditioning, assump:base-product-balance,
assump:two-mode-orthogonality, assump:c-mode-gram-margin,
assump:gaussian-smoothing, assump:dimension-regime,
assump:smoothing-scale, assump:smoothing-bridge, assump:rank-regime,
assump:random-tape, and assump:accuracy-range. Prefix legality, matching,
certificates, ledger bounds, activation, and PL membership are derived.

## Formalized Goal

On a once-drawn instance event \(\mathcal E_{\rm inst}\), with
\(\Pr_{\rm inst}(\mathcal E_{\rm inst})\ge1-r^{-10}\), derive all norm, weight,
pair/triple Gram, R-src, and two-mode reserves in setting.md. Conditional on
nonzero T and this event, prove:

1. (S): static event, two-mode contractions, and exact balanced target.
2. (T): the zero-safe certificate dichotomy, coefficient-level singleton
   capture, and candidate-relative Raw-J-rel for every supplied LP_s.
3. (B): accepted transition, finite raw ledger, capture telescope, and
   all-commit error bounds with every e_t term retained.
4. (P): target-blind finite-tape recovery, same-target balanced PL entry, and
   terminal Q with \(\|T-\Psi(Q)\|_F\le\epsilon\|T\|_F\), \(0<\epsilon<1\).

Discovery and ledger work are polynomial in (n,r,k,kappa,rho^{-1}) and
independent of epsilon; terminal work is polynomial in these variables and
log(1/epsilon). Instance and tape probabilities are separate. The exact
T=0 return and H=e=0 stationary/no-floor baseline are preserved.

## Sketch Identity

- Sketch attempt: 4
- Retry mode: revise_sketch
- Progress type: material_partial
- Roadmap shape: seven stable rows, (S)=1, (T)=2--3, (B)=4,
  (P)=5--7.
- Reduced-step rationale: old rows 003--004 are one transaction-local lemma
  with explicit coefficient and resolvent units; old rows 005--006 are one
  transition/induction producer; old rows 009--010 are one terminal-rate
  bridge. No hard obligation is removed or hidden.

## Proof Roadmap

Use direct current-notation multilinear algebra, Gaussian concentration,
nonnegative Neumann series, a one-time capture potential, spherical
slab/small-ball density, and a direct balanced-target Jacobian/PL calculation.
Parent papers in technical_survey.md supply proof-pattern provenance only.

The seven rows retain explicit local units:

- step 003: U3-coeff, U3-selector, U3-branches, U3-resolvent;
- step 004: U4-transition and U4-induction;
- step 005: U5-seed, U5-first-update, U5-amplify;
- step 006: U6-metric, U6-aggregate, U6-first-exit;
- step 007: U7-Armijo, U7-rate, U7-baseline.

LP_s is a conditional input to step 003 from initialization or a prior
accepted transaction. Step 004 emits the all-prefix records before step 005
consumes them, so the reduced graph remains acyclic.

## Rate Objectives

### R1: once-drawn structural event

Confidence- and structural-parameter explicit, once-drawn, and uniform over
all finite prefixes. Expose n,r,k,kappa,rho,Gamma_star,P,nu_real and the
displayed Frobenius, operator, l1, and rootwise-2 norms. Probability is only
over smoothing and is at least 1-r^-10; hidden constants are fixed
source/proof constants. Exact representation and T=0 are baseline clauses.

### R2: transaction and raw ledger

Finite-horizon and numerical-error explicit for s<=r. Expose e_t,D_t,eta_t,
chi_t,b_s, and nu_real^2+r nu_real^3, with
\[
 \|z_t\|_{\rm root,2}\le
 C_z(\nu_{\rm real}^2+r\nu_{\rm real}^3+b_t+\sqrt r\,e_t),
 \quad e_tD_t^2\le P^{-D_{\rm stat}}\Delta F_t,
\]
\[
 \sum_t\Delta F_t\le F(\mathrm{empty}),\qquad
 \sum_t\chi_t\le P^{-D_{\rm stat}}.
\]
Probability is conditional on the instance; horizon is finite and prefix
uniform; norm mode is l1/rootwise-2 arrays plus Frobenius objective decrease.
The U4 public interface is
\[
 \|z_q\|_{\rm root,2}\le C_z[(1+C_A\Gamma_\star)
 (\nu_{\rm real}^2+r\nu_{\rm real}^3)
 +C_A\sum_{t<s}\chi_t+\sqrt r\,e_I(q)],
\]
with the raw \(\sum\chi_t\) term carried into the ledger; no numerical or
history term is absorbed into nu_real^2.

### R3: activation and tape probability

Let \(a_n=\sqrt{L_{\rm ang}\log(2r)/n}\), \(b_n=4a_n\). For each unresolved
j, define the analysis-only angular slab
\[
 \mathcal W^{\rm ang}_{s,j}=
 \{(u,v,w):a_n\le|\langle u_M,m_{j,M}\rangle|\le2a_n,\
 |\langle u_M,m_{\ell,M}\rangle|\le b_n
 \ \forall\ell\ne j,M\},
\]
with product sign positive, and the radial window
\[
 \mathcal W^{\rm rad}_{s,j}=
 \{g:|g^3-s_s(u,v,w)|\le\tfrac18s_s(u,v,w),\
 \tfrac12(\tau_{\min}a_n^3)^{1/3}\le g\le
 2(8\tau_{\max}a_n^3)^{1/3}\}.
\]
Here \(s_s=s_{I_s}\), \(D_s=D_{I_s}\),
\(g_{\min}=\tfrac12(\tau_{\min}a_n^3)^{1/3}\),
\(\Delta_{\rm ang}\asymp a_n\), and
\(\Delta_{\rm rad}\ge c_{\rm rad}\tau_{\min}^{1/3}a_n\). Spherical density
\(c_n(1-t^2)^{(n-3)/2}\), cross-slab union bounds, and the dimension regime
give
\[
 \Pr_{\rm Haar}(\mathcal W^{\rm ang}_{s,j})
 \ge c_{\rm ang}^3a_n^3(2r)^{-c_{\rm ang}}
 \ge(nr)^{-c_{\rm tx}}=:p_{\rm tx}.
\]
The target-blind protocol only checks observable certificates. Let d_L be a
fixed exponent for the derivative-Lipschitz bound on the guarded box. Choose
\[
 D_{\rm stat}\ge2D_\mu+D_{\rm gap}+12,\quad
 D_{\rm cap}\ge D_{\rm stat}+12,\quad
 d_{\rm tx}\ge\max\{24+D_{\rm stat}+D_{\rm gap},\,20+d_L+3\},\quad
 c_{\rm tx}\ge c_{\rm ang}+6. \tag{P-hierarchy}
\]
On the slab require the explicit seed dominance
\[
 C_{\rm seed}\{\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3+b_s)
 +\sqrt r\,e_I(q)\}\le\tfrac18\tau_{\min}a_n^3. \tag{seed-dominance}
\]
Together with the explicit reserve \(\sqrt r\,\nu_{\rm real}\le1/20\), this
gives the certificate-scale lower bounds
\[
 s_s\ge\tfrac14\tau_{\min}a_n^3,\qquad
 \Delta F_s\ge\tfrac1{16}\tau_{\min}^2a_n^6,\qquad
 {s_s\over D_s},{\Delta F_s\over D_s^2},{g^3\over D_s}
 \ge4P^{-D_\mu},\qquad
 \mu_s\ge2P^{-D_\mu}. \tag{seed-margins}
\]
The clipped recurrence
\[
 g_{h+1}=g_h+\operatorname{clip}_{[-\Delta_{\rm tr},\Delta_{\rm tr}]}
 {s_h-g_h^3\over3\max\{g_h^2,g_{\min}^2\}},\qquad
 u_{h+1}=\operatorname{Exp}_{u_h}(-\alpha_h\operatorname{grad}_{\cal S}f_h)
\]
uses \(\alpha_h\le\Delta_{\rm tr}/(2R_{\max})\),
\(\Delta_{\rm tr}=P^{-20}\), and at most \(H_{\rm tx}=\lceil P^{d_{\rm tx}}\rceil\)
updates. On the guarded box the derivative Lipschitz constant obeys
\(L_{\rm tx}\le P^{d_L}\), and the path budget is explicit:
\[
 H_{\rm tx}\Delta_{\rm tr}\ge
 4R_{\max}+2\Delta_{\rm ang},\qquad
 H_{\rm tx}\ge C_{\rm tx}L_{\rm tx}\Delta_{\rm tr}^{-1}\log P,\qquad
 \alpha_hL_{\rm tx}\le\tfrac14. \tag{guard-path}
\]
The first sign flip makes \(s_0>0\); the radial bracket, guard, and
half-slack clauses persist until certificate passage or rollback:
\[
 e_{\rm rad},e_{\rm ang}\le\tfrac12e_I,\quad
 s_s/D_s,\Delta F_s/D_s^2,g^3/D_s\ge4P^{-D_\mu},\quad
 \mu_s\ge2P^{-D_\mu},\quad
 \lambda_{\min}(\widehat H_{\rm ang})\ge2P^{-D_{\rm gap}},\quad
 {\sf Sep}\le\tfrac18,\quad
 C_0\Gamma_\star\|\mathcal T^+\|_{1\to1},
 C_0\Gamma_\star\|\mathcal T^+\|_{{\rm root},2\to{\rm root},2}\le\tfrac18.
 \tag{half-slack}
\]
With \(N_{\rm tx}=\lceil C_{\rm tape}r(nr)^{c_{\rm tx}}\log(2r)\rceil\),
\((1-p_{\rm tx})^{N_{\rm tx}}\le r^{-11}\) per unresolved label and the
finite union gives conditional failure at most r^-10. Work is polynomial and
independent of epsilon. The seed margins include
\(s_s\ge\tfrac14\tau_{\min}a_n^3\),
\(\Delta F_s\ge\tfrac1{16}\tau_{\min}^2a_n^6\),
\(\mu_s\ge2P^{-D_\mu}\), and \(\sqrt r\nu_{\rm real}\le1/20\);
\(L_{\rm tx}\le P^{d_L}\), \(H_{\rm tx}\Delta_{\rm tr}\ge
4R_{\max}+2\Delta_{\rm ang}\), and
\(H_{\rm tx}\ge C_{\rm tx}L_{\rm tx}\Delta_{\rm tr}^{-1}\log P\)
make the guarded reach polynomial.

### R4: exact-target chart and terminal rate

Let \(g_-=\tau_{\min}^{1/3}\), \(g_+=\tau_{\max}^{1/3}\), and
\(\chi_\tau=g_+/g_-\le(2\Gamma_\star)^{1/3}\). Define the exact finite
permutation/product-one-sign orbit metric
\[
 d_{\rm bal}(Q,\mathcal Z_\star)^2
 =\min_{Z\in\mathcal Z_\star}\sum_{i=1}^k\sum_{M=A,B,C}
       \|q_i^M-z_i^M\|_2^2,
\]
including joint-zero terms, and set
\[
 \varrho_{\rm PL}={c_{\rm ch}g_-\over r(1+\chi_\tau)^2},\quad
 \sigma_\star=c_Jg_-^2,\quad
 L_{\rm ch}=C_Lg_+^4(1+\chi_\tau)^2,\quad
 \mu_{\rm PL}={c_J^2g_-^4\over8(1+\chi_\tau)^2}. \tag{PL-constants}
\]
The good event gives \(g_-\ge(2\kappa)^{-1}\). The all-commit actual tuple
satisfies
\[
 d_{\rm bal}(Q,\mathcal Z_\star)\le
 {C_{\rm ent}\over g_-}\left[
 \sqrt r\,\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3)
 +\sqrt{\sum_t\chi_t}+\sqrt r\,P^{-D_{\rm stat}/2}\right]
 \le\tfrac14\varrho_{\rm PL}. \tag{Entry}
\]
On this same-target chart,
\[
 {\sigma_\star^2\over8}d_{\rm bal}^2\le F(Q)\le2L_{\rm ch}d_{\rm bal}^2,\qquad
 \|\operatorname{grad}_{\rm bal}F(Q)\|_F^2\ge2\mu_{\rm PL}F(Q). \tag{PL}
\]
Armijo has
\[
 F_{h+1}\le(1-c_{\rm A}\mu_{\rm PL}/L_{\rm ch})F_h,\qquad
 \sum_h\|Q_{h+1}-Q_h\|_F\le C_{\rm path}d_{\rm bal}(Q_0,\mathcal Z_\star),
\]
and the entry radius is chosen so the first-exit boundary cannot be reached.
The terminal horizon is
\[
 H_{\rm term}\le
 \left\lceil {L_{\rm ch}\over c_{\rm A}\mu_{\rm PL}}
 \log {2F(Q_0)\over\epsilon^2\|T\|_F^2}\right\rceil
 =\operatorname{poly}(n,r,k,\kappa,\rho^{-1},\Gamma_\star)\log(1/\epsilon).
\]
Probability is conditional on the separate instance/tape events; norm mode
is d_bal, balanced gradient, objective, and exact Frobenius residual. The
exact target is stationary, F=0 stops, T=0 is returned before normalization,
R_I=0 is handled before forming Theta, and H=e=0 has no additive floor.

## Assumption Provenance Objectives

- Step 001 derives the once-drawn event, nonvanishing, norms, weights,
  Gram reserves, R-src, two-mode, and Q* from
  assump:base-column-conditioning, assump:base-product-balance,
  assump:two-mode-orthogonality, assump:c-mode-gram-margin,
  assump:gaussian-smoothing, assump:dimension-regime,
  assump:smoothing-scale, and assump:smoothing-bridge.
- Step 002 derives the zero-safe certificate and transfer gaps from the
  actual residual and derivatives; R_I=0 is a no-production branch.
- Step 003 is conditional on supplied LP_s and derives the coefficient map,
  selector, injection, signs, unresolved label, Theta, z, and Raw-J-rel.
- Step 004 derives LP-transition, capture charge, exact rollback, and the
  empty-base/one-step-preservation induction; it is the sole all-prefix
  producer and uses no generated fact as a primitive assumption.
- Step 005 derives the target-blind seed event and separate tape probability
  from the step-004 invariant and assump:random-tape.
- Step 006 derives the actual-to-orbit bridge and PL constants from the
  pair/triple reserves and assump:base-product-balance.
- Step 007 derives terminal convergence, probability/runtime specialization,
  and baseline using assump:rank-regime, assump:accuracy-range, and the
  earlier accepted outputs. All eleven IDs are listed above and no others.

## Mechanism-Source And Boundary Stress

### step_001 (S): static event and target

Gaussian norm/Gram concentration under the smoothing/dimension IDs plus
deterministic A/B orthogonality supplies R-src, two-mode, pair/triple
conditioning, and the exact realized target in the same Frobenius metric.
The one-time event is noncircular: primitive IDs -> step 001 -> all later
consumers. T=0 returns joint zero; H_M=0 gives exact contractions and a
stationary target. Obligation locality classification: step-local. Producer-
consumer path is 001 -> 002--007; repair route /proof-sketch if the event
bridge fails.

### step_002 (T): zero-safe certificate and transfer

Observable score, gain, radial/angular errors, normalized Hessian, and the
explicit certificate are the mechanism source. Direct absolute-Gram bounds
give both 1/4 Neumann gaps and preserve every defect. Nonpositive score,
nonpositive gain, g=0, or a failed screen rolls back. At R_I=0,
mu=e=0, no candidate passes, and Theta,z are not produced. Obligation
locality: step-local; path 001 -> 002 -> 003. Exact H=e=0 has zero source.

### step_003 (T): coefficient selector and candidate-relative resolvent

Local unit U3-coeff sets
\(c_{j,M}=\langle u_M,m_{j,M}\rangle\),
\(a_j=\tau_j\prod_Mc_{j,M}\), and
\(\mathcal M_\theta=\{j:|a_j|\ge P^{-D_\mu}\|T\|_Fa_n^3/16\}\).
For a nonzero projected difference use
\[
 v_{j\ell,M}={\operatorname{Proj}_{u_M^\perp}(m_{j,M}-m_{\ell,M})\over
 \|\operatorname{Proj}_{u_M^\perp}(m_{j,M}-m_{\ell,M})\|_2}.
\]
Local unit U3-selector proves
\[
 \lambda_{\min}(\widehat H_{\rm ang})
 \le-c_{\rm mix}|a_ja_\ell|/\|T\|_F
 +C_{\rm def}\{\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3+b_s)
 +\sqrt r\,e_I(q)\},
\]
and checks
\[
 C_{\rm def}\{\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3+b_s)
 +\sqrt r\,e_I(q)\}
 \le {c_{\rm mix}|a_ja_\ell|\over2\|T\|_F}. \tag{U3-dominance}
\]
For a passing candidate with two surviving coefficients, the certificate
threshold and the two-mode score transfer give
\[
 m_{\rm mix}:={|a_ja_\ell|\over\|T\|_F}
 \ge {P^{-2D_\mu}\|T\|_F a_n^6\over256}.
\]
The LP budget substitutes
\(b_s\le C_A\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3)
 +C_A\sum_{t<s}\chi_t\), and the fixed hierarchy
\[
 \sqrt r\,\nu_{\rm real}\le\tfrac1{20},\qquad
 D_{\rm stat}\ge2D_\mu+D_{\rm gap}+12,\qquad
 D_{\rm cap}\ge D_{\rm stat}+12
 \tag{U3-hierarchy}
\]
implies the displayed U3-dominance inequality (with the finite raw
\(\sum\chi_t\) term retained). Thus the negative mixed term dominates every
structural, history, and numerical defect before positive-Hessian acceptance.
Thus a passing positive-Hessian candidate cannot have mixed support with a
nonzero selector. U3-branches handles zero selectors (singleton by two-mode
orthogonality and Sep), ties/mixed rollback, g=0, zero score, the last
unresolved label, and the empty unresolved set. Signs and labels are
analysis-only; E_i is an actual atom error.

After this coefficient dichotomy, U3-resolvent forms the finite Neumann
series from S+A_s+e_I 1 and exports
\[
 \|z_q\|_{\rm root,2}\le
 C_z(\nu_{\rm real}^2+r\nu_{\rm real}^3+b_s+\sqrt r e_I(q))
 \tag{Raw-J-rel}
\]
with the same target-frame conventions. The supplied LP_s is the legal
conditional input; the producer path is LP initialization/prior transaction
-> step 003 -> step 004. At the empty prefix b=0; at R_I=0 no resolvent is
formed; at formed H=e=0 it vanishes. Obligation locality classification:
step-local conditional; repair route /proof-sketch if selector, dominance,
or row feasibility fails.

### step_004 (B): transition, ledger, and all-prefix induction

U4-transition uses the exact multilinear expansion, J_M(p,p)=1,
zero-diagonal z, balancing, and positive Delta F_s to emit a typed next
record. It writes \(A_{s+1}=A_s+\Delta A_s\), proves
\[
 \|\Delta A_s\|_{\rm root,2}\le\beta_s,\qquad
 \|A_{s+1}\|_{\rm root,2}\le b_s+\beta_s,\qquad
 b_{s+1}:=b_s+\beta_s\ge\|A_{s+1}\|_{\rm root,2},
 \qquad b_{s+1}\le b_s+\beta_s,
 \tag{U4-typed}
\]
and \(e_sD_s^2\le P^{-D_{\rm stat}}\Delta F_s\). Rollback is identity:
\(A_{s+1}=A_s,b_{s+1}=b_s,\beta_s=\chi_s=0\). U4-induction starts at
LP_0 and applies the transition for at most r commits, proving LP-budget,
\(\sum\Delta F_s\le F(\mathrm{empty})\), \(\sum\chi_s\le P^{-D_{\rm stat}}\),
the raw structural/history ledger, and the public substitution
\[
 \|z_q\|_{\rm root,2}\le C_z[(1+C_A\Gamma_\star)
 (\nu_{\rm real}^2+r\nu_{\rm real}^3)
 +C_A\sum_{t<s}\chi_t+\sqrt r\,e_I(q)].
 \tag{U4-public-row}
\]
The controlled quantity is b_s; the accumulated forcing is the explicit
structural term plus \(\sum\chi_s\), with nonnegative one-time charge beta_s.
This is finite-budgeted and noncircular: empty base -> U4-transition ->
U4-induction -> steps 005--006. Repeated failure, last label, and R=0
terminate honestly. Obligation locality classification: step-local; no
E_lb absorption.

### step_005 (P): quantified seed window and tape recovery

U5-seed uses the displayed angular/radial windows. Haar density and the
dimension regime yield \(p_{\rm tx}\ge(nr)^{-c_{\rm tx}}\) after the explicit
seed-dominance inequality. It also exports
\[
 s_s\ge\tfrac14\tau_{\min}a_n^3,\quad
 \Delta F_s\ge\tfrac1{16}\tau_{\min}^2a_n^6,\quad
 \mu_s\ge2P^{-D_\mu},\quad
 \sqrt r\,\nu_{\rm real}\le\tfrac1{20}.
 \tag{U5-margins}
\]
U5-first-update uses the fixed sign flip and clipped radial/angular
recurrences with factor displacement at most \(\Delta_{\rm tr}\); the
derivative bound \(L_{\rm tx}\le P^{d_L}\), the guard-path inequalities
\(H_{\rm tx}\Delta_{\rm tr}\ge4R_{\max}+2\Delta_{\rm ang}\) and
\(H_{\rm tx}\ge C_{\rm tx}L_{\rm tx}\Delta_{\rm tr}^{-1}\log P\) make the
polynomial path reach the certificate. The first score is positive and the
half-slack export
\[
 e_{\rm rad},e_{\rm ang}\le\tfrac12e_I,\quad
 s_s/D_s,\Delta F_s/D_s^2,g^3/D_s\ge4P^{-D_\mu},\quad
 \mu_s\ge2P^{-D_\mu},\quad
 \lambda_{\min}(\widehat H_{\rm ang})\ge2P^{-D_{\rm gap}},\quad
 {\sf Sep}\le\tfrac18,\quad
 C_0\Gamma_\star\|\mathcal T^+\|_{1\to1},
 C_0\Gamma_\star\|\mathcal T^+\|_{{\rm root},2\to{\rm root},2}\le\tfrac18
\]
is invariant for H_tx updates or rollback. U5-amplify gives
\((1-p_{\rm tx})^{N_{\rm tx}}\le r^{-11}\) per unresolved label and
conditional failure at most r^-10. The analysis union over labels is never
queried by the protocol. Entry states empty prefix, negative score, guard
boundary, tape exhaustion, and R=0 all stop or rollback. Obligation locality:
step-local; path U4 -> U5 -> U6/U7.

### step_006 (P): exact orbit metric, entry, PL, first exit

U6-metric uses the explicit d_bal orbit, \(g_-\), \(g_+\), and
\(\varrho_{\rm PL},\mu_{\rm PL},L_{\rm ch}\). U6-aggregate sums actual
per-slot errors with the sqrt(r) factor and raw chi budget:
\[
 d_{\rm bal}(Q,\mathcal Z_\star)\le
 {C_{\rm ent}\over g_-}\left[
 \sqrt r\,\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3)
 +\sqrt{\sum_t\chi_t}+\sqrt rP^{-D_{\rm stat}/2}\right]
 \le\tfrac14\varrho_{\rm PL}.
\]
The produced tuple and consumed target are the same actual full-space
objects. U6-first-exit uses the balanced Jacobian lower bound, Taylor
quadratic sandwich, L_ch smoothness, Armijo displacement, and path-length
control to keep the trajectory in the chart. Exact target/F=0 is already
valid. Obligation locality: step-local; path U4/U5 -> U6 -> U7.

### step_007 (P): terminal Armijo, rate, and baseline

U7-Armijo applies
\[
 F_{h+1}\le(1-c_{\rm A}\mu_{\rm PL}/L_{\rm ch})F_h
\]
to reach the exact relative Frobenius target in
\(\operatorname{poly}(n,r,k,\kappa,\rho^{-1},\Gamma_\star)\log(1/\epsilon)\)
iterations. U7-rate substitutes rank, chart constants, tape/instance tails,
and the hierarchy without dropping exposed dependence. U7-baseline checks
T=0 before normalization, R_I=0 before forming Theta, and H=e=0 for exact
stationarity, zero charge, exact rollback, and no terminal floor. The exact
target has zero gradient/loss; F=0 stops. Obligation locality:
step-local; final path U6 -> U7 -> theorem.

### Compact gate-field audit

| Step | Source/control and target match | Accumulation/noncircular producer | Entry/boundary stress | Locality and consumers |
| --- | --- | --- | --- | --- |
| 001 | Gaussian event and exact target-frame static bounds | One-time 001 -> all | T=0, H=0 | step-local -> 002 |
| 002 | Observable zero-safe certificate and Neumann gap | One transaction 001 -> 002 -> 003 | g=0, nonpositive score, R=0 no output | step-local -> 003 |
| 003 | U3-mix threshold/P-hierarchy/LP-budget dominance plus same-target resolvent row | LP input -> selector -> row; no future source | selectors, ties, singleton, last label | conditional step-local -> 004 |
| 004 | Typed J-diagonal transition, \(b_{s+1}\ge\|A_{s+1}\|\), public row substitution, and raw ledger | Empty base -> typed transition -> finite induction | rollback, repeated failure, last label, R=0 | step-local -> 005/006 |
| 005 | Haar slab, explicit score/gain/mu margins, derivative path, and guarded flow | U4 -> stopped tape amplification | first sign/update, guard, exhaustion | step-local -> 006/007 |
| 006 | Exact orbit/Jacobian and residual bridge | U4/U5 -> entry -> first-exit | exact target/F=0 and chart boundary | step-local -> 007 |
| 007 | PL/Armijo, explicit rates, baseline | finite terminal recurrence; no forcing | T=0, R=0, H=e=0 | step-local -> theorem |

Null-source audit: if the Gaussian/static source vanished, the nonvanishing,
two-mode, and transfer claims in step 001 would fail; if the certificate
margin vanished, step 002 could not export a resolvent; if the selector,
one-time charge, Haar mass, Jacobian lower bound, or PL source vanished, the
corresponding capture, recovery, entry, or arbitrary-accuracy conclusion
would be false or unsupported. Each such failure is routed to
/proof-sketch, and the exact H=e=0 and T=0 branches are handled before the
affected mechanism is consumed.

## Exported Interface Feasibility

| Exported interface | Producer | Raw controls and defects | Target compatibility | Margin/source | Consumers and path | Blocker |
| --- | --- | --- | --- | --- | --- | --- |
| E_inst, R-src, two-mode, Q* | step 001 | Gaussian deviations and static Gram reserves | Same realized tensor/Frobenius metric | Concentration/A-B source | 001 -> 002--007 | None |
| LP_s, A_s, b_s, unresolved set | initialization/prior transaction; step 004 closes all reachable records | Exact residual, b_0=0, typed \(b_{s+1}\ge\|A_{s+1}\|\) and \(b_{s+1}\le b_s+\beta_s\), raw chi | Actual frozen tuple/target contractions | Empty base plus exact expansion/LP-transition | LP -> 003 -> 004; 004 -> 005/006 | None |
| mu_I,e_I,eta_I, transfer gap | step 002 | Observable score/gain/Hessian and zero branches | Current actual residual | Cert and 1/4 gap | 002 -> 003/005 | None |
| selector, injection, p(q), Theta,z,Raw-J-rel | step 003 local units | a_j, threshold/P-hierarchy/LP-budget dominance, S+A_s+e | Same target-frame coordinates; E_i actual | U3-mix and Neumann gap | 003 -> 004 | None |
| next LP, beta, chi, rollback | step 004 | J diagonal, exact expansion, typed lower/upper b, Delta F | Actual increment versus exact atom | Objective decrease/rollback | 004 -> 005 | None |
| raw/public ledger and all-commit tuple | step 004 induction | Structural/history/chi terms separate; b substitution exposes sum chi | Actual frozen factors | One-time potential | 004 -> 005/006 | None |
| seed window/tape event | step 005 | a_n,b_n, score/gain/mu margins, sqrt(r) slack, guard-path, H_tx | Actual full-space state | Haar mass/amplification | 005 -> 006/007 | None |
| orbit metric/Entry/PL | step 006 | sqrt(r), g_-, g_+, varrho, mu, L | Actual tuple to exact padded orbit | Jacobian/Taylor | 006 -> 007 | None |
| terminal rate/baseline | step 007 | Geometric decrease, separate tails, explicit horizons | Exact Frobenius residual | Armijo/PL | final theorem | None |

All rows use the normalized inner-product, realized-factor, balanced-slot,
Frobenius, operator, l1, and rootwise-2 conventions of setting.md. No
projection, whitening, surrogate residual, or source-convention conversion is
deferred. Every output has a producer before its consumer; LP_s is explicitly
conditional on initialization or a prior transaction invocation.

## Generated Output Flow

| Generated output | Producer | Consumers | Final use | Dependency path | Provenance |
| --- | --- | --- | --- | --- | --- |
| Static event/reserves | primitive IDs -> step 001 | 002--007 | Good instance | 001 -> all | derived |
| LP_s local record | initialization/prior step 004; typed step 004 induction | 003--004, 005--006 | Current residual/history and lower/upper type | base -> 003 -> 004 | conditional then derived |
| Certificate/transfer gap | step 002 | 003,005 | Transaction screen | 001 -> 002 | derived |
| Selector/resolvent row and public substitution | step 003 plus step 004 budget | step 004 | Capture controls with raw sum chi | LP -> 003 -> 004 | derived/analysis-only |
| Typed transition/charge/ledger | step 004 | 005,006 | All-commit output and b type | 003 -> 004 | derived |
| Activation/tape event with margins/path | step 005 | 006,007 | Recovery probability | 004 + random tape -> 005 | derived |
| Orbit entry/PL | step 006 | 007 | Terminal basin | 001,004,005 -> 006 | derived |
| Terminal rate/baseline | step 007 | final assembly | Public endpoint | 006 -> 007 | derived |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | Derive E_inst, R-src, two-mode, pair/triple reserves, and exact Q*. | None | assump:base-column-conditioning; assump:base-product-balance; assump:two-mode-orthogonality; assump:c-mode-gram-margin; assump:gaussian-smoothing; assump:dimension-regime; assump:smoothing-scale; assump:smoothing-bridge | Gaussian normalization/Schur products | Gaussian concentration and multilinear algebra | Static event and target | R1 | PENDING |
| step_002 | For supplied LP_s, prove zero-safe certificate and transfer gaps, including R_I=0 stop. | step_001 + LP_s | assump:rank-regime; derived E_inst; protocol definitions | Positive margin and zero residual | Derivative identities and absolute-Gram transfer | mu,e,eta,T+ | R2 | PENDING |
| step_003 | Prove coefficient singleton/mixed branches, use the certificate threshold plus U3-hierarchy and LP-budget to dominate structural/history/numerical defects, and form Theta,z,Raw-J-rel as one transaction-local lemma. | step_002 + LP_s | Derived two-mode; protocol Sep/Hessian | Selector threshold/dominance and Neumann row | Hessian selector, score identities, Neumann series | assignment, public/raw Theta,z,Raw-J-rel | R2 | PENDING |
| step_004 | Prove accepted transition/rollback, typed LP-transition with \(b_{s+1}\ge\|A_{s+1}\|_{\rm root,2}\) and \(b_{s+1}\le b_s+\beta_s\), raw/public row substitution, ledger, and all-prefix induction/all-commit errors. | step_003 | Derived LP_s/Raw-J-rel; assump:rank-regime | J diagonal, lower type preservation, and noncircular finite accumulation | Exact expansion, objective potential, induction | typed next LP, public/raw row, beta, chi, ledger | R2 | PENDING |
| step_005 | Prove quantified seed window with \(s_s\ge\tfrac14\tau_{\min}a_n^3\), \(\Delta F_s\ge\tfrac1{16}\tau_{\min}^2a_n^6\), \(\mu_s\ge2P^{-D_\mu}\), \(\sqrt r\nu_{\rm real}\le1/20\), guarded first update/path, Haar mass, and tape amplification. | step_002, step_004 | assump:random-tape; derived invariant | Certificate-scale margins, derivative Lipschitz, and polynomial H_tx path | Spherical density, clipped flow, stopped trials | window, seed margins, tape event, discovery runtime | R3 | PENDING |
| step_006 | Define exact orbit metric and prove sqrt(r) entry, PL, and first-exit invariance. | step_001, step_004, step_005 | assump:base-product-balance; derived reserves | Jacobian/Taylor and target bridge | Balanced Jacobian, sandwich, Armijo path | d_bal, Entry, PL constants | R4 | PENDING |
| step_007 | Run Armijo, specialize epsilon/rate/probability/runtime, and preserve T=0/R=0/H=e=0 baselines. | step_005, step_006 | assump:rank-regime; assump:accuracy-range; derived tape/PL | Explicit dependence and boundary order | PL decrease and direct substitutions | public theorem endpoint | R1--R4 | PENDING |

## Dependency Notes

The reduced graph is acyclic:
step_001 -> step_002 -> step_003 -> step_004 -> step_005 -> step_006 ->
step_007. LP_s is a conditional state input in step_003, supplied by
initialization or a prior accepted step_004 invocation; step_004 proves that
all reachable prefixes satisfy LP-budget before step_005 consumes them.
Combining old rows changed bookkeeping boundaries only, not theorem-critical
interfaces. Analysis-only labels and signs never enter the algorithm or
primitive assumption list.

## Blockers

None at sketch level. The reduced roadmap retains the local-prefix producer,
coefficient-level selector/dominance, candidate-relative resolvent, raw
transition/induction ledger, quantified activation flow, exact orbit/rate
bridge, all boundary traces, and separate probability/runtime modes. Remaining
work is lemma-level proof and review; no setting, algorithm, target metric,
rank, progress type, success criterion, or no-floor endpoint changed.
