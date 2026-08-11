# Proof Step

## Step Identity

- Sketch attempt: 6
- Step ID: \`step_004\`
- Unit attempt: 1

## Target Step Claim

Under the complete conditional prefix interface from sketch attempt 6
(including the source-normal bridge of \`step_003b\)), prove the exact
current-residual score decomposition and the singleton/mixed-support angular
landscape dichotomy. The proof must retain unconditional \`(SE-raw)\) terms
and use \`(SE-lb)\) only on the derived \`E_lb\) branch.

- Dependencies: accepted sketch-attempt-6 \`step_001\`, \`step_002\`,
  \`step_003\), and \`step_003b\`.
- Assumptions used: derived \`E_inst\), derived \`E_lb\) when stated,
  \`assump:base-product-balance\`, and a local conditional certificate/prefix.
- Technical challenge: exact score/gradient/Hessian transfer and
  noncircular root activation.
- Intended proof tool: direct product-sphere calculus, the \`step_003b\)
  projection bridge, and a two-label exchange calculation.
- Output target: score decomposition, capture/radial scale, exchange
  curvature, and the singleton/mixed-support dichotomy.
- Rate objective: R2, retaining \`nu_real\`, \`eta_0\`,
  \`e_num=P^{-D_stat}\`, \`B_perp\`, \`D_cap\`, and \`D_gap\`.

## Step Proof Status

PARTIAL_BLOCKED

## Allowed Assumptions And Dependencies

### Primitive conditions

- \`assump:base-product-balance\`, through the accepted realized consequence
  \(\tau_{\max}/\tau_{\min}\le2\Gamma_\star\).

No realized event, prefix, target label, matching record, source-normal
bound, or certificate property is primitive.

### Derived invariants supplied by accepted dependencies

- Accepted \`step_001\) proof SHA-256
  \`a9a87b0f289746498c40b438117c47dc6b1307679defdbc29852d97a66241cfc\`
  and review SHA-256
  \`1cd56c69834fcba45d787657c9fae1009cb82f70c6c535fd12b3d132eb8b7907\`:
  \(E_{\rm inst}\), nonzero columns, \(\nu_{\rm real}\le\nu_\star\),
  pair/triple gaps, positive weights, and derived
  \(E_{\rm lb}=\{\nu_{\rm real}\ge P^{-D_{\rm lb}}\}\), \(D_{\rm lb}=60\).
- Accepted \`step_002\) proof SHA-256
  \`7c3b7ea474bab76e407f4c616317f1b6662f23ea9c7cf90532eff6a84e55442a\`
  and review SHA-256
  \`c9bd95cd8d9c431a191fc926b11bccb2c34b108dbdbf29f27c37034bccc1244a\`:
  \(H,J,K,S\), their source bounds, and both transfer gaps.
- Accepted \`step_003\) proof SHA-256
  \`a5134704a33ba09b398d5eb946d7cc352a0110283c33f7ebdba73f75e3295902\`
  and review SHA-256
  \`ca56a019738cdb860b815dadf913f2022d2e56dbb8fd8a357c88b262cd5971ac\`:
  conditional \(\Theta_I\) and zero-diagonal local profile.
- Accepted \`step_003b\) proof SHA-256
  \`148e25ae2da025d8d8b3373382caff6738bdd4d03f55b69df1320652935fc1a7\`
  and review SHA-256
  \`8b9b81fbc502158e197edece0db919b760d17de19656ecd6ffac8c8173426e2b\`:
  \((\mathrm{Hist\mbox{-}F})\), \((\mathrm{Res})\), \(B_\perp\), exact
  target-frame compatibility, unconditional \((\mathrm{SE\mbox{-}raw})\),
  and \(E_{\rm lb}\)-qualified \((\mathrm{SE\mbox{-}lb})\).

### Local conditional hypotheses

Fix one legal nonterminal prefix \(I\), actual residual \(R_I\), and a
scratch state \(q=(gu,gv,gw)\) satisfying \((\mathrm{Cert})\), including
\({\sf Sep}(q;I)\le1/4\). Prior accepted records are local conditional
inputs only; no unresolved label or matching output is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| \`unit_001\` | lemma | Exact score, radial identity, and product-sphere differential transfer. | Score decomposition and \(B_\perp\) transfer. |
| \`unit_002\` | lemma | Capture/radial scale and raw versus \(E_{\rm lb}\)-qualified source-normal audit. | Keeps all source-normal and numerical terms explicit. |
| \`unit_003\` | lemma | Two-label exchange curvature under an explicit common-support hypothesis. | Rules out the mixed branch once its hypothesis is available. |
| \`unit_004\` | claim | Root-activation coverage: every certificate is singleton or satisfies unit_003's common-support hypothesis. | Missing producer; causes the blocked status. |

## Cited Result Applications

Accepted \`step_003b\) compatibility gives
\[
\|R_I-\Pi_\star R_I\|_F\le B_\perp,\quad
|s_I-s_I^\parallel|\le B_\perp,\quad
\|\operatorname{grad}s_I-\operatorname{grad}s_I^\parallel\|_2
\le\sqrt3B_\perp,
\]
and
\[
|\langle(\operatorname{Hess}s_I-\operatorname{Hess}s_I^\parallel)
\xi,\xi\rangle|\le3B_\perp\|\xi\|_2^2.
\]
It also proves exact preservation of all target-frame contractions used in
\(A_I\) and \(\Theta_I\); the projection is analysis-only.

For \(s_D(u,v,w)=\langle D,u\otimes v\otimes w\rangle\), direct
differentiation gives
\[
\operatorname{grad}_u s_D
=P_{u^\perp}(D\times_2v^\top\times_3w^\top)
\]
and cyclic formulas, and for tangent \(\xi\),
\[
\begin{aligned}
\langle\operatorname{Hess}_{\cal S}s_D\xi,\xi\rangle
={}&2\langle D,\xi_A\otimes\xi_B\otimes w+
\xi_A\otimes v\otimes\xi_C+
u\otimes\xi_B\otimes\xi_C\rangle\\
&-(\|\xi_A\|^2+\|\xi_B\|^2+\|\xi_C\|^2)s_D(u,v,w).
\end{aligned}
\]
These are current-notation identities, not external theorem wrappers.

## Local Derivation

### unit_001: lemma

**Lemma (Exact score and differential transfer).**
\label{lem:p2-i9-s6-step004-score}

Under the accepted \`step_003b\) interface, set \(t=g^3\),
\(s=s_I(u,v,w)\), and \(R_I^\parallel=\Pi_\star R_I\). Then
\[
R_I=T_U-\sum_{i\in I}E_i,\qquad
T_U=\sum_{j\in U_I}\tau_j\phi_j,
\tag{1}
\]
and, with \(a_{j,A}=\langle u,m_{j,A}\rangle\) and cyclic definitions,
\[
s=\sum_{j\in U_I}\tau_j a_{j,A}a_{j,B}a_{j,C}
-\sum_{i\in I}\langle E_i,u\otimes v\otimes w\rangle.
\tag{2}
\]
Moreover
\[
f_I=\tfrac12\|R_I\|_F^2+\tfrac12t^2-ts,\qquad
\Delta F_I=\tfrac12s^2-\tfrac12(t-s)^2,
\tag{3}
\]
and
\[
\operatorname{grad}_{\cal S}f_I=-t\operatorname{grad}_{\cal S}s_I,\qquad
\langle\operatorname{Hess}_{\cal S}f_I\xi,\xi\rangle
=-t\langle\operatorname{Hess}_{\cal S}s_I\xi,\xi\rangle.
\tag{4}
\]
The projection transfer bounds are
\[
|s_I-s_I^\parallel|\le B_\perp,\quad
\|\operatorname{grad}s_I-\operatorname{grad}s_I^\parallel\|_2
\le\sqrt3B_\perp,
\tag{5}
\]
\[
|\langle(\operatorname{Hess}s_I-\operatorname{Hess}s_I^\parallel)
\xi,\xi\rangle|\le3B_\perp\|\xi\|^2.
\tag{6}
\]

**Proof.**
The first two displays follow by substituting the definition of the
protected residual and contracting with \(u\otimes v\otimes w\). Expanding
the square in \(f_I\), subtracting \(f_I(0)\), and completing the square
give (3). At fixed \(g\), the directional dependence is \(-t s_I\), which
gives (4). Equations (5)--(6) are the accepted same-target projection
conclusion of \`step_003b\). \(\square\)

### unit_002: lemma

**Lemma (Certificate scale and branch audit).**
\label{lem:p2-i9-s6-step004-scales}

Under \((\mathrm{Cert})\), with \(R_0=\|R_I\|_F\) and
\(e_{\rm num}=P^{-D_{\rm stat}}\), a fixed enlargement of \(D_{\rm stat}\)
gives
\[
s_I\ge\sqrt2R_0P^{-D_{\rm cap}/2},\qquad
\tfrac12s_I\le g^3\le2s_I,\qquad
|g^3-s_I|\le4e_{\rm num}s_I.
\tag{7}
\]
The unconditional bridge remains
\[
B_\perp\le c_{\rm SE}\min\{\tau_{\min}/r,\,
R_0P^{-D_{\rm cap}/2},\,N_I(g)P^{-D_{\rm gap}}/g^3\},
\tag{8}
\]
whereas
\[
B_\perp\le c_{\rm SE}\tau_{\min}\eta_0
\tag{9}
\]
is asserted only on \(E_{\rm lb}\).

**Proof.**
The identity in (3) and the capture test give
\(s_I^2/2\ge R_0^2P^{-D_{\rm cap}}\). Since
\(R_0e_{\rm num}\le s_I/4\) after the fixed threshold is enlarged, the
radial certificate cannot have \(g^3>2s_I\) or \(g^3<s_I/2\); substituting
the resulting maximum into the radial inequality gives the last bound in
(7). Equation (8) is the accepted \((\mathrm{SE\mbox{-}raw})\) interface,
and (9) is its separate \(E_{\rm lb}\) conclusion. No raw term is absorbed
on the complement of \(E_{\rm lb}\). \(\square\)

### unit_003: lemma

**Lemma (Two-label exchange curvature).**
\label{lem:p2-i9-s6-step004-exchange}

Let \(p\ne q\) be unresolved labels, and write \(\lambda_j:=\tau_j\) in the
orthonormalized chart. In an orthonormalized source-frame
chart, suppose
\[
|\langle u_M,\widehat m_{p,M}\rangle|,
|\langle u_M,\widehat m_{q,M}\rangle|
\ge(8\sqrt r)^{-1}\quad(M=A,B,C),
\tag{10}
\]
and the two triple products have the same positive sign. If
\[
\omega_{\rm lan}:=C_{\rm fr}\tau_{\max}\nu_{\rm real}
+B_{\rm hist,F}+B_\perp\le\tau_{\min}/(10^3\sqrt r)
\tag{11}
\]
and the transferred angular-gradient error is at most
\(\tau_{\min}/(10^3\sqrt r)\), then a unit tangent vector \(\xi\) satisfies
\[
\langle\operatorname{Hess}_{\cal S}s_I\xi,\xi\rangle
\ge\tau_{\min}/(128\sqrt r),\quad
\langle\operatorname{Hess}_{\cal S}f_I\xi,\xi\rangle
\le-g^3\tau_{\min}/(256\sqrt r)<0.
\tag{12}
\]

**Proof / justification.**
Put \(\widehat M_M=M_MG_M^{-1/2}\). Its columns are orthonormal and
\(\|G_M^{1/2}-I\|_{\rm op}\le2\nu_{\rm real}\). The unresolved target in
this chart is the diagonal tensor plus a frame remainder with injective and
Hessian norms at most \(C_{\rm fr}\tau_{\max}\nu_{\rm real}\). The
accepted-history and source-normal remainders are bounded by
\(B_{\rm hist,F}\) and \(B_\perp\).

Write \(a_j,b_j,c_j\) for the chart coordinates and
\(L_A=(a_p^2+a_q^2)^{1/2}\), cyclically. Define
\[
\xi_A=\epsilon_A(-a_qe_p+a_pe_q)/L_A,\quad
\xi_B=\epsilon_B(-b_qe_p+b_pe_q)/L_B,\quad
\xi_C=\epsilon_C(-c_qe_p+c_pe_q)/L_C.
\tag{13}
\]
The signs \(\epsilon_M\) can be chosen so all three pair terms are positive;
the consistency condition is exactly equality of the two triple-product
signs. Each block is tangent, and divide their concatenation by
\(\sqrt3\). Substitution in the displayed Hessian identity yields
\[
\langle\operatorname{Hess}s_{\rm diag}\xi,\xi\rangle
=2\sum_{M<N}\frac{
\lambda_p|x_{q,M}x_{q,N}x_{p,L}|+
\lambda_q|x_{p,M}x_{p,N}x_{q,L}|}{3L_ML_N}
-s_{\rm diag}.
\tag{14}
\]
The small angular-gradient assumption gives the coordinate equations
\(\lambda_jx_{j,N}x_{j,L}=s_{\rm diag}x_{j,M}+r_{j,M}\),
\(\|r_{\cdot,M}\|_2\le\tau_{\min}/(10^3\sqrt r)\). Multiplying by the
coordinates in (10), using \(L_M\ge1/(4\sqrt r)\), and summing the three
pair terms gives the diagonal lower bound
\(\tau_{\min}/(64\sqrt r)\). Subtracting the three remainder bounds in
(11) gives (12). This calculation is conditional on (10), and makes no
claim that (10) follows from the certificate. \(\square\)

### unit_004: claim

**Claim (Root-activation coverage).**
\label{claim:p2-i9-s6-step004-activation}

The missing implication needed for the sketch row is
\[
\text{\((\mathrm{Cert})\) and \({\sf Sep}\le1/4\)}
\Longrightarrow
\begin{cases}
\text{one unresolved singleton root has the isolation margin,}\\
\text{or two unresolved roots satisfy (10).}
\end{cases}
\tag{15}
\]

The angular equations have the form
\[
\tau_\ell\!\!\prod_{N\ne M}\langle u_N,m_{\ell,N}\rangle
-s_I\langle u_M,m_{\ell,M}\rangle
=\text{cross-Gram}+\text{accepted-history}
+\text{normal/numerical terms}.
\tag{16}
\]
Cross-Gram terms are controlled by the accepted \(H\)-column estimates and
normal terms by (8). Once a root \(p\) is selected, subtracting its equations
yields the exact \(\mathcal T\)-inequality and the
\(\Theta_{I;p,M,\ell}\) envelope. But \(\Theta_I\) is indexed by \(p\) and
is only an upper envelope; the accepted interfaces contain no producer that
selects \(p\) or supplies a lower-support/mass relation before that
root-indexed inequality is used. The capture lower bound in (7) may be below
the target-frame history scale as \(P\) grows, while (8) controls only the
source-normal part. The low-score and straddling-support alternatives are
therefore not discharged without assuming the desired root or adding a new
bridge.

This is a genuine dependency/provenance gap, not a notation choice:
consuming \(\Theta_{I;p,\cdot,\cdot}\) before proving \(p\) would be circular,
and promoting root activity to a theorem assumption would violate the
Assumption Provenance and Generated Output Flow contracts.

## Target-Step Assembly

Lemmas~\ref{lem:p2-i9-s6-step004-score} and
\ref{lem:p2-i9-s6-step004-scales} prove the exact score/radial/capture
identities and preserve the raw and \(E_{\rm lb}\)-qualified source-normal
interfaces. Conditional on the common-support hypothesis, Lemma
\ref{lem:p2-i9-s6-step004-exchange} constructs an explicit tangent direction
with negative angular-loss curvature, contradicting the certificate.

The exact singleton/mixed-support dichotomy cannot be assembled because
Claim~\ref{claim:p2-i9-s6-step004-activation} lacks a noncircular producer.
Consequently the isolation margin and singleton/mixed-support dichotomy
remain unproved.

## Explicit Rate Audit

- Exposed variables: \(n,r,k,\kappa,\rho,\Gamma_\star,P,\nu_{\rm real},
  \eta_0,e_{\rm num},D_{\rm cap},D_{\rm gap},D_{\rm stat},\tau_{\min},
  \tau_{\max},R_0,g,B_{\rm hist,F},B_\perp,N_I(g)\), and the two-label
  threshold \((8\sqrt r)^{-1}\).
- Hidden constants may depend only on fixed class/protocol constants and
  fixed proof exponents.
- Hidden constants may not depend on the realized instance, prefix, order,
  candidate, tape, horizon, or accuracy \(\epsilon\).
- Fixed quantities: one accepted instance and one finite conditional prefix.
- Probability mode: deterministic conditional on \(E_{\rm inst}\); (9) is
  additionally conditional on \(E_{\rm lb}\).
- Horizon mode: one finite conditional prefix; no all-prefix upgrade.
- Norm mode: product-sphere Hessian quadratic form, tensor Frobenius norm,
  and factor Euclidean inner products.
- Admissibility conditions: the observable certificate and the explicitly
  conditional two-label hypothesis (10); (10) is not exported as a theorem
  assumption.
- Term absorption: (7)--(9) display all raw and branch-qualified
  comparisons; no raw numerical term is silently absorbed into \(\nu^2\).
- Probability conversion: none beyond the accepted once-drawn event.
- Contribution to a Rate Specialization Bridge: none, because activation is
  unresolved.
- Baseline check: at \(H=e_{\rm num}=0\) and \(I=\varnothing\), the score is
  the exact unresolved target score and \(B_\perp=0\). This partial artifact
  does not claim the nonempty-prefix dichotomy.

## Blockers

1. **Root-activation/mixed-support coverage is unproved.** The accepted
   \(\Theta_I\) interface is indexed by a selected unresolved root and is
   only an upper envelope. No accepted dependency proves that every
   certified scratch state either activates one root or has two common
   unresolved labels at the mass scale needed by Lemma
   \ref{lem:p2-i9-s6-step004-exchange}; low-score and straddling-support
   cases remain open.
2. **Assembly gap.** Without that coverage, the isolation margin and
   singleton/mixed-support dichotomy are not established. Smallest repair:
   \`/proof-step step_004\` if a direct activation lemma exists under the
   unchanged interfaces; otherwise \`/proof-sketch\` for a new producer
   bridge.

## Notation And Assumption Notes

- \(U_I,R_I,T_U,E_i,B_{\rm hist,F},B_\perp,R_I^\parallel,H,J,K,S,\Theta_I\),
  and \(N_I(g)\) are setting-defined or accepted dependency objects, not
  primitive assumptions.
- \(t=g^3,s_I\), target-frame coordinates, orthonormalized columns, and the
  exchange tangent are proof-local objects defined above.
- \(C_{\rm fr}\) is appendix-local and comes from the displayed
  Gram-square-root bound; it depends only on fixed class constants.
- The two-label condition (10) is local and conditional; it is not consumed
  by the target assembly as if derived.
- The accepted global diagnostic and review were read only for planning; they
  supplied no proof evidence or authority to change the claim.
- No stale sketch-4 artifact, prior idea branch, tracker, or worker log was
  used. This is a fresh sketch-attempt-6, unit-attempt-1 artifact.
