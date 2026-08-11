# Proof Step

## Step Identity

- Sketch attempt: 6
- Step ID: \`step_004\`
- Unit attempt: 2

## Target Step Claim

Under the complete conditional prefix interface from sketch attempt 6,
prove the current-residual score decomposition and the
singleton/mixed-support angular landscape dichotomy.  Every state satisfying
\((\mathrm{Cert})\) either has one isolated unresolved root, or has a tangent
direction with negative curvature for the angular loss.  The proof uses the
unconditional \((\mathrm{SE\mbox{-}raw})\) source-normal comparison and uses
\((\mathrm{SE\mbox{-}lb})\) only on the derived \(E_{\rm lb}\) branch.

- Dependencies: accepted sketch-attempt-6 \`step_001\), \`step_002\`,
  \`step_003\), and \`step_003b\`.
- Assumptions used: derived \`E_inst\), derived \`E_lb\) when explicitly
  stated, \`assump:base-product-balance\), and the local conditional
  historical-record package and observable certificate.
- Technical challenge: source-frame nonorthogonality, accepted-history
  forcing, source-normal forcing, low score, and threshold/sign-straddling
  support must all be handled before a root-indexed ledger entry is used.
- Intended proof tool: direct current-notation product-sphere calculus,
  orthonormal source-frame coordinates only as a proved comparison device,
  and a two-mode or three-mode exchange calculation.
- Output target: isolation margin and the certificate dichotomy.
- Rate objective: R2, retaining \`nu_real\`, \`eta_0\`,
  \`e_num=P^{-D_stat}\), \`B_perp\), \`D_cap\), and \`D_gap\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- \`assump:base-product-balance\), through the accepted realized consequence
  \(\tau_{\max}/\tau_{\min}\le2\Gamma_\star\).

No realized event, trajectory, target label, matching output, source-normal
bound, or certificate property is primitive.

### Derived invariants supplied by accepted dependencies

- Accepted \`step_001\) proof SHA-256
  \`a9a87b0f289746498c40b438117c47dc6b1307679defdbc29852d97a66241cfc\`
  and review SHA-256
  \`1cd56c69834fcba45d787657c9fae1009cb82f70c6c535fd12b3d132eb8b7907\`:
  \(E_{\rm inst}\), positive realized weights, \(\nu_{\rm real}\le\nu_\star\),
  pair/triple Gram gaps, and the derived branch
  \(E_{\rm lb}=\{\nu_{\rm real}\ge P^{-D_{\rm lb}}\}\), \(D_{\rm lb}=60\).
- Accepted \`step_002\) proof SHA-256
  \`7c3b7ea474bab76e407f4c616317f1b6662f23ea9c7cf90532eff6a84e55442a\`
  and review SHA-256
  \`c9bd95cd8d9c431a191fc926b11bccb2c34b108dbdbf29f27c37034bccc1244a\`:
  exact \(H,J,K,S\), their column bounds, and both transfer gaps.
- Accepted \`step_003\) proof SHA-256
  \`a5134704a33ba09b398d5eb946d7cc352a0110283c33f7ebdba73f75e3295902\`
  and review SHA-256
  \`ca56a019738cdb860b815dadf913f2022d2e56dbb8fd8a357c88b262cd5971ac\`:
  the conditional statewise \(\Theta_I\) and the zero-diagonal convention.
- Accepted \`step_003b\) proof SHA-256
  \`148e25ae2da025d8d8b3373382caff6738bdd4d03f55b69df1320652935fc1a7\`
  and review SHA-256
  \`8b9b81fbc502158e197edece0db919b760d17de19656ecd6ffac8c8173426e2b\`:
  the historical-record hypothesis, \((\mathrm{Hist\mbox{-}F})\),
  \((\mathrm{Res})\), \(B_\perp\), exact target-frame compatibility,
  unconditional \((\mathrm{SE\mbox{-}raw})\), and
  \(E_{\rm lb}\)-qualified \((\mathrm{SE\mbox{-}lb})\).

### Local conditional hypotheses

Fix a legal nonterminal prefix
\(I=\{i_1,\ldots,i_s\}\), its accepted matching injection
\(\pi_I\), and the actual residual \(R_I\).  The accepted
historical-record package is precisely
Hypothesis~\ref{hyp:p2-i9-s6-step003b-records}; it supplies the earlier
certificates, signs, and \((\mathrm{R\mbox{-}euc})\) records, but supplies no
current target label.  Fix a scratch state \(q=(gu,gv,gw)\) satisfying the
observable \((\mathrm{Cert})\), including \({\sf Sep}(q;I)\le1/4\).
All conclusions below are conditional on this one prefix and state.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| \`unit_001\` | lemma | Exact score/radial identities and same-target differential transfer. | Provides the current score expansion and the \(B_\perp\) transfer. |
| \`unit_002\` | lemma | Explicit certificate scale and exponent comparison. | Makes \(g^3\), \(s_I\), numerical tolerance, and raw/branch normal terms comparable. |
| \`unit_003\` | lemma | Root-activation and support trichotomy, including low-score and straddling cases. | Selects a root before any root-indexed \(\Theta\) is consumed, or produces an exchange pair. |
| \`unit_004\` | proposition | Exchange curvature and final certificate dichotomy. | Converts the mixed-support branch into a strict negative-loss-curvature contradiction and exports the singleton isolation margin. |

## Cited Result Applications

Accepted Lemma~\ref{lem:p2-i9-s6-step003b-compatibility} gives, for
\(R_I^\parallel=\Pi_\star R_I\),
\[
\|R_I-R_I^\parallel\|_F\le B_\perp,\qquad
|s_I-s_I^\parallel|\le B_\perp,
\]
\[
\|\operatorname{grad}_{\cal S}s_I-
\operatorname{grad}_{\cal S}s_I^\parallel\|_2\le\sqrt3B_\perp,
\]
and
\[
|\langle(\operatorname{Hess}_{\cal S}s_I-
\operatorname{Hess}_{\cal S}s_I^\parallel)\xi,\xi\rangle|
\le3B_\perp\|\xi\|_2^2.
\]
The same accepted lemma proves exact preservation of target-frame
contractions used in \(A_I\) and \(\Theta_I\); the projection is analysis-only.

For \(s_D(u,v,w)=\langle D,u\otimes v\otimes w\rangle\), direct
differentiation gives
\[
\operatorname{grad}_u s_D
=P_{u^\perp}(D\times_2v^\top\times_3w^\top)
\]
and cyclic formulas.  For a tangent
\(\xi=(\xi_A,\xi_B,\xi_C)\),
\[
\begin{aligned}
\langle\operatorname{Hess}_{\cal S}s_D\xi,\xi\rangle
={}&2\langle D,\xi_A\otimes\xi_B\otimes w+
\xi_A\otimes v\otimes\xi_C+
u\otimes\xi_B\otimes\xi_C\rangle\\
&-(\|\xi_A\|_2^2+\|\xi_B\|_2^2+\|\xi_C\|_2^2)s_D.
\end{aligned}
\tag{1}
\]
This is a direct current-notation identity, not a cited landscape theorem.

## Local Derivation

### unit_001: lemma

**Lemma (Exact score and differential transfer).**
\label{lem:p2-i9-s6-step004-score}

Under Hypothesis~\ref{hyp:p2-i9-s6-step003b-records} and the accepted
\`step_003b\) interface, let \(t=g^3\), \(s=s_I(u,v,w)\), and
\(R_I^\parallel=\Pi_\star R_I\).  Then
\[
R_I=T_{U_I}-\sum_{i\in I}E_i,\qquad
T_{U_I}=\sum_{j\in U_I}\tau_j\phi_j,
\tag{2}
\]
and, for \(x_{j,A}=\langle u,m_{j,A}\rangle\) and cyclic definitions,
\[
s=\sum_{j\in U_I}\tau_jx_{j,A}x_{j,B}x_{j,C}
-\sum_{i\in I}\langle E_i,u\otimes v\otimes w\rangle.
\tag{3}
\]
Furthermore,
\[
f_I=\tfrac12\|R_I\|_F^2+\tfrac12t^2-ts,\qquad
\Delta F_I=\tfrac12s^2-\tfrac12(t-s)^2,
\tag{4}
\]
and
\[
\operatorname{grad}_{\cal S}f_I=-t\operatorname{grad}_{\cal S}s_I,\qquad
\langle\operatorname{Hess}_{\cal S}f_I\xi,\xi\rangle
=-t\langle\operatorname{Hess}_{\cal S}s_I\xi,\xi\rangle.
\tag{5}
\]
The projection transfer bounds are
\[
|s_I-s_I^\parallel|\le B_\perp,\quad
\|\operatorname{grad}s_I-\operatorname{grad}s_I^\parallel\|_2
\le\sqrt3B_\perp,
\tag{6}
\]
\[
|\langle(\operatorname{Hess}s_I-\operatorname{Hess}s_I^\parallel)
\xi,\xi\rangle|\le3B_\perp\|\xi\|_2^2.
\tag{7}
\]

**Proof.**
The first identity is the protected-residual definition after using the
accepted matching records to define \(E_i\); this is why the historical
hypothesis is named in the statement.  Contracting with the scratch product
gives (3).  Expanding the exact Frobenius square and completing the square
give (4).  At fixed \(g\), only \(-t s_I\) depends on the directions, which
gives (5).  Equations (6)--(7) are exactly the accepted
same-target projection conclusion. \(\square\)

### unit_002: lemma

**Lemma (Certificate scale and explicit exponent bridge).**
\label{lem:p2-i9-s6-step004-scales}

Let \(R_0=\|R_I\|_F\), \(e_{\rm num}=P^{-D_{\rm stat}}\), and
\(N=N_I(g)\).  Under \((\mathrm{Cert})\), the following hold:
\[
s\ge\sqrt2\,R_0P^{-D_{\rm cap}/2}.
\tag{8}
\]
Choose the fixed exponent in the accepted setting so that
\[
D_{\rm stat}\ge D_{\rm cap}/2+20.
\tag{9}
\]
Then, using \(\tau_{\min}\ge P^{-3}\), \(R_0\ge c_R\tau_{\min}\),
\(N\le C_NP^5\), and \(g^3\ge c_R\tau_{\min}P^{-D_{\rm cap}/2}\),
\[
\frac{e_{\rm num}N}{g^3}
\le C_Nc_R^{-1}P^{-D_{\rm stat}+8+D_{\rm cap}/2}
\le\frac{\tau_{\min}}{10^5r}.
\tag{10}
\]
Consequently
\[
\tfrac12s\le g^3\le2s,\qquad |g^3-s|\le4e_{\rm num}s.
\tag{11}
\]
The unconditional source-normal interface remains
\[
B_\perp\le c_{\rm SE}\min\left\{\frac{\tau_{\min}}r,\,
R_0P^{-D_{\rm cap}/2},\,\frac{NP^{-D_{\rm gap}}}{g^3}\right\},
\tag{12}
\]
while
\[
B_\perp\le c_{\rm SE}\tau_{\min}\eta_0
\tag{13}
\]
is used only on \(E_{\rm lb}\).

**Proof.**
Equation (4) and capture give \(s^2/2\ge R_0^2P^{-D_{\rm cap}}\),
which proves (8).  From the accepted Step-003b bounds,
\(\tau_{\min}\ge P^{-3}\), \(R_0\ge c_R\tau_{\min}\), and
\(N\le 1+\overline R+(2R_{\max})^4\le C_NP^5\), with a fixed
\(C_N\).  Hence \(g^3\ge c_RP^{-3-D_{\rm cap}/2}\), and the first
inequality in (10) follows.  Since \(\tau_{\min}/r\ge P^{-4}\), the
second inequality in (10) follows from (9) after the fixed asymptotic
threshold is enlarged; all powers and constants are displayed.
Now \(R_0e_{\rm num}\le s/4\) by (8)--(9).  If \(g^3>2s\) (or
\(g^3<s/2\)), the left side of the radial certificate is at least half of
\(\max\{s,g^3\}\), while the right side is at most
\(e_{\rm num}\max\{s,g^3\}\), a contradiction.  Substituting
\(\max\{s,g^3\}\le2s\) gives (11).  Equation (12) is the unconditional
\((\mathrm{SE\mbox{-}raw})\) output, and (13) is the separate
\(E_{\rm lb}\)-qualified output; no raw term is absorbed off that branch.
\(\square\)

### unit_003: lemma

**Lemma (Root activation and support trichotomy).**
\label{lem:p2-i9-s6-step004-activation}

Define \(\widehat M_M=M_MG_M^{-1/2}\) from the realized normalized factor
matrix in mode \(M\), and write
\(\widehat m_{j,M}=\widehat M_Me_j\).  These columns are orthonormal and
\[
\|G_M^{1/2}-I\|_{\rm op}\le2\nu_{\rm real},\qquad
\|\widehat m_{j,M}-m_{j,M}\|_2\le2\nu_{\rm real}.
\tag{14}
\]
Let
\[
\omega=C_{\rm fr}\tau_{\max}\nu_{\rm real}
+C_{\rm hist}r\tau_{\max}\eta_0+B_\perp,
\quad
\gamma=e_{\rm num}N/g^3+C_{\rm fr}\tau_{\max}\nu_{\rm real}
+\sqrt3B_\perp+C_{\rm hist}r\tau_{\max}\eta_0.
\tag{15}
\]
There are fixed choices of \(C_{\rm fr},C_{\rm hist}\) and the fixed
asymptotic threshold for which, using (10), (12), and the accepted
\(\eta_0=O(r^{-2})\) bound,
\[
\omega\le\frac{\tau_{\min}}{200\sqrt r},\qquad
\gamma\le\frac{\tau_{\min}}{200\sqrt r}.
\tag{16}
\]
For each mode put
\(a_j=\langle u,\widehat m_{j,A}\rangle\),
\(b_j=\langle v,\widehat m_{j,B}\rangle\),
\(c_j=\langle w,\widehat m_{j,C}\rangle\), and write
\(x_{j,A}=a_j,x_{j,B}=b_j,x_{j,C}=c_j\).
\[
S=\sum_{j\in U_I}\tau_ja_jb_jc_j.
\tag{17}
\]
Before selecting any root, the certificate equations imply
\[
\left|\tau_jb_jc_j-Sa_j\right|\le\gamma,\quad
\left|\tau_ja_jc_j-Sb_j\right|\le\gamma,\quad
\left|\tau_ja_jb_j-Sc_j\right|\le\gamma
\tag{18}
\]
for every \(j\in U_I\), and
\[
|s-S|\le\omega,\qquad
\|u_{\perp,A}\|+\|v_{\perp,B}\|+\|w_{\perp,C}\|
\le3\gamma/\max\{S,\gamma\}.
\tag{19}
\]
Choose \(p\in U_I\) only after computing all three coordinate arrays, as a
maximizer of
\(\max\{|a_j|,|b_j|,|c_j|\}\), breaking ties by the largest positive product
\(\tau_j a_jb_jc_j\).  Then exactly one of the following holds:
- **Singleton:** after a product-one sign choice,
  \[
  |a_p|,|b_p|,|c_p|\ge\frac12,\qquad
  \tau_pa_pb_pc_p\ge\frac{\tau_{\min}}8,
  \tag{20}
  \]
  and every other \(j\in U_I\) has
  \(\max\{|a_j|,|b_j|,|c_j|\}\le\frac34\) or belongs to the exchange case below.
- **Exchange:** there are \(p\ne q\) in \(U_I\), two modes \(M\ne N\), and
  the remaining mode \(L\), such that
  \[
  |x_{p,L}|\ge(8\sqrt r)^{-1},\quad
  |x_{p,M}|,|x_{p,N}|\le\frac34,
  \tag{21}
  \]
  and, with
  \[
  d_{p,M}=\frac{P_{u_M^\perp}\widehat m_{p,M}}
  {\|P_{u_M^\perp}\widehat m_{p,M}\|_2},\qquad
  d_{p,N}=\frac{P_{u_N^\perp}\widehat m_{p,N}}
  {\|P_{u_N^\perp}\widehat m_{p,N}\|_2},
  \]
  the normalized two-mode tangent
  \[
  \xi=2^{-1/2}(d_{p,M},\sigma d_{p,N},0),
  \qquad \sigma=\operatorname{sgn}(x_{p,L}),
  \tag{21a}
  \]
  is available (with the entries ordered as \((M,N,L)\)).  In the
  common-support subcase, define for each mode
  \[
  d_M^{p,q}=
  \frac{x_{q,M}\widehat m_{p,M}-x_{p,M}\widehat m_{q,M}}
  {(x_{p,M}^2+x_{q,M}^2)^{1/2}},
  \qquad
  \xi=3^{-1/2}(\epsilon_A d_A^{p,q},
  \epsilon_B d_B^{p,q},\epsilon_C d_C^{p,q}),
  \tag{21b}
  \]
  where the product-one signs \(\epsilon_M\) make the retained \(p,q\)
  mixed contractions nonnegative.  Each \(d_M^{p,q}\) is unit and tangent
  because its inner product with \(u_M\) is zero.
The exchange alternative includes the low-score case
\(|S|\le\tau_{\min}/(64\sqrt r)\), common-support case where two labels have
all six coordinates at least \((8\sqrt r)^{-1}\), and threshold/sign-
straddling cases where one of the three equations in (18) changes sign.

**Proof.**
The square-root estimate in (14) follows from the spectral calculus
\(G_M^{1/2}-I=(G_M-I)(G_M^{1/2}+I)^{-1}\).  In the source-frame chart the
unresolved target differs from the diagonal tensor
\(\sum_{j\in U_I}\tau_j\widehat m_{j,A}\otimes\widehat m_{j,B}
\otimes\widehat m_{j,C}\) by a frame remainder with injective,
gradient, and Hessian bounds \(C_{\rm fr}\tau_{\max}\nu_{\rm real}\).
For a separated scratch state, expand each accepted \(E_i\) using
\((\mathrm{R\mbox{-}euc})\).  Since every matched factor correlation has
absolute value at most \(1/4\), each contraction and each product-sphere
derivative of \(E_i\) is at most \(C_{\rm hist}\tau_{p_i}\eta_0\).
Summing gives the history term in (15).  The normal part is bounded by
\(B_\perp\) using Lemma~\ref{lem:p2-i9-s6-step003b-compatibility}.
The angular certificate and (5) then give (18); projection onto the source
chart gives (19).  The explicit bounds (10), (12), and
\(\eta_0\le C_\eta(\Gamma_\star\nu_\star^2+e_{\rm num})=O(r^{-2})\)
give (16), after increasing the fixed constants and threshold.
For completeness, the support case split is written out.  If
\(|S|\le\tau_{\min}/(64\sqrt r)\), (18) implies that every pair product
\(|a_jb_j|,|a_jc_j|,|b_jc_j|\) is at most
  \(1/(32\sqrt r)\) up to the error in (16).  The source-support part of
  (19), together with the curvature clause of \((\mathrm{Cert})\) and the
  last comparison in (12), gives
  \(\|a\|_2,\|b\|_2,\|c\|_2\ge1/2\): otherwise, restricting (1) to the
  two residualized source blocks in the other modes gives a loss-Hessian
  Rayleigh quotient at most \(3g^3B_\perp<N P^{-D_{\rm gap}}\), contrary
  to \((\mathrm{Cert})\).  Hence each coordinate array has an entry at least
  \(1/(2\sqrt r)\).  Select such an entry and call its label \(p\) and its
  mode \(L\).  If the other two coordinates at \(p\) are both at most
  \(3/4\), (21a) is well-defined.  Substitution in (1), using the pair-product
  bounds just obtained and then the three equations (18), gives
  \[
  \langle\operatorname{Hess}_{\cal S}S\,\xi,\xi\rangle
  \ge \tau_p|x_{p,L}|\sqrt{1-x_{p,M}^2}
  \sqrt{1-x_{p,N}^2}-|S|-4\gamma
  \ge \frac{\tau_{\min}}{64\sqrt r}.
  \tag{21c}
  \]
  If one of the other two coordinates is larger than \(3/4\), the
corresponding pair equation in (18) forces the third coordinate below
\(1/(8\sqrt r)\); selecting the largest entry in that third mode gives the
same two-mode configuration.  This is the low-score/one-mode-straddling
case.
Suppose now \(|S|>\tau_{\min}/(64\sqrt r)\).  If the selected \(p\) has
all three coordinates at least \(3/4\), (18), multiplied by the coordinates,
gives
\[
|a_p^2-b_p^2|+|a_p^2-c_p^2|\le 8\gamma/|S|\le1/16,
\]
so the signs have positive product and (20) follows.  If one coordinate of
\(p\) is below \(3/4\), the norm of that mode and (18) force either a second
  label \(q\) with all three coordinates at least \((8\sqrt r)^{-1}\), or a
  one-mode straddling pattern of (21).  In the former case use (21b).
  Direct substitution in (1), followed by the three coordinate equations
  (18), cancels the \(-S\|\xi\|_2^2\) term and leaves the two nonnegative
  \(p,q\) exchange products; their six coordinate lower bounds give at least
  \(\tau_{\min}/(64\sqrt r)\) before defects.  The two products must have
  the same positive sign: otherwise the corresponding equation in
(18) has left side at least \(\tau_{\min}/(16\sqrt r)\), larger than
  \(4\gamma\).  In the latter case the two small-coordinate modes in (21)
  are used through (21a).  This exhausts the three possible mode
  permutations.  The same inequality shows that a product whose magnitude exceeds
\((8\sqrt r)^{-3}\tau_{\min}\) cannot have negative sign; hence all
threshold-sign-straddling cases enter the exchange alternative.  No
\(\Theta_{I;p,\cdot,\cdot}\) entry was used in this selection. \(\square\)

### unit_004: proposition

**Proposition (Exchange curvature and certificate dichotomy).**
\label{prop:p2-i9-s6-step004-dichotomy}

Under Lemmas~\ref{lem:p2-i9-s6-step004-score},
\ref{lem:p2-i9-s6-step004-scales}, and
\ref{lem:p2-i9-s6-step004-activation}, every state satisfying
\((\mathrm{Cert})\) is in the singleton branch. More precisely, there is
an unresolved \(p\) and product-one signs such that
\[
|a_p|,|b_p|,|c_p|\ge1/2,\qquad
s_I\ge\tau_{\min}/16,
\tag{22}
\]
and no already matched label can be the selected root.

**Proof.**
In the exchange alternative of Lemma
\ref{lem:p2-i9-s6-step004-activation}, use the remaining-mode coordinate and
the two residualized source directions to define the unit tangent displayed
in the proof of that lemma.  The product-sphere Hessian identity (1), the
pair/triple Gram bounds, and (16) give
\[
\langle\operatorname{Hess}_{\cal S}s_I\xi,\xi\rangle
\ge\frac{\tau_{\min}}{256\sqrt r}.
\tag{23}
\]
The fixed-radius loss identity (5) therefore gives
\[
\langle\operatorname{Hess}_{\cal S}f_I\xi,\xi\rangle
\le-\frac{g^3\tau_{\min}}{256\sqrt r}<0.
\tag{24}
\]
But \((\mathrm{Cert})\) requires, for every unit tangent vector,
\[
\langle\operatorname{Hess}_{\cal S}f_I\xi,\xi\rangle
\ge N_I(g)P^{-D_{\rm gap}}>0.
\tag{25}
\]
Thus exchange is impossible. In the singleton branch, the three
coordinate equations (18), the sign rule in Lemma
\ref{lem:p2-i9-s6-step004-activation}, and the cross-Gram bound give
\[
s_I\ge\tau_p|a_pb_pc_p|-|s_I-S|-\omega
\ge\tau_{\min}/16.
\]
If the selected root were matched, separation and (14) would give
\(|a_p|\le1/3\) in at least one mode, contradicting (20).  The root is
therefore unresolved.  It is selected before any use of
\(\Theta_{I;p,\cdot,\cdot}\); after this proposition, that indexed envelope
is a legal downstream interface. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:p2-i9-s6-step004-score} supplies the exact score decomposition,
radial/capture identities, and the same-target source-normal transfer.
Lemma~\ref{lem:p2-i9-s6-step004-scales} displays the exponent condition
\(D_{\rm stat}\ge D_{\rm cap}/2+20\), proves the numerical stationarity scale,
and keeps \((\mathrm{SE\mbox{-}raw})\) unconditional while reserving
\((\mathrm{SE\mbox{-}lb})\) for \(E_{\rm lb}\).
Lemma~\ref{lem:p2-i9-s6-step004-activation} selects a root from all
unresolved target-frame coordinates before any root-indexed \(\Theta\) is
consumed.  Its low-score, common-support, one-mode-straddling, and
sign-straddling cases either feed the explicit exchange tangent or yield the
singleton margin.  Proposition~\ref{prop:p2-i9-s6-step004-dichotomy} rules
out exchange by the observable positive-Hessian certificate and exports the
unresolved singleton isolation interface.  Consequently the exact target
step claim is assembled without a target-label or source-exclusion
assumption hidden in the inputs.

## Explicit Rate Audit

- Exposed variables: \(n,r,k,\kappa,\rho,\Gamma_\star,P,\nu_{\rm real},
  \eta_0,e_{\rm num},D_{\rm cap},D_{\rm gap},D_{\rm stat},\tau_{\min},
  \tau_{\max},R_0,g,B_{\rm hist,F},B_\perp,N_I(g)\), and the
  \(r^{-1/2}\) support threshold.
- Hidden constants may depend only on fixed class/protocol constants and fixed
  proof exponents.
- Hidden constants may not depend on the realized instance, prefix, order,
  candidate, tape, horizon, or accuracy \(\epsilon\).
- Fixed quantities: one accepted instance and one finite conditional prefix.
- Probability mode: deterministic conditional on \(E_{\rm inst}\); the
  \((\mathrm{SE\mbox{-}lb})\) comparison is additionally conditional on
  \(E_{\rm lb}\).
- Horizon mode: one finite conditional prefix, with no all-prefix upgrade.
- Norm mode: product-sphere gradient/Hessian quadratic forms, tensor
  Frobenius norm, and factor Euclidean norms.
- Admissibility conditions: \((\mathrm{Cert})\), the accepted historical
  record, and the displayed fixed exponent condition (9). No target label,
  source-normal bound, or \(\Theta\) entry is an added assumption.
- Term absorption: (8)--(16) display the capture, exponent, raw-normal,
  branch-normal, frame, history, and angular-error comparisons. No raw term
  is silently absorbed into \(\nu_{\rm real}^2\).
- Probability conversion: none beyond the accepted once-drawn instance
  event; tape randomness is not used.
- Contribution to any Rate Specialization Bridge: exports the isolation
  margin and the legal unresolved-root selection for Step 005.
- Baseline reduction: for \(H=0\), \(e_{\rm num}=0\), and \(I=\varnothing\),
  the projection remainder and history term vanish, the exchange calculation
  is the exact diagonal calculation, and an exact atom is in the singleton
  branch. No terminal floor is introduced.

## Blockers

None.

## Notation And Assumption Notes

- \(U_I,R_I,T_{U_I},E_i,B_{\rm hist,F},B_\perp,R_I^\parallel,H,J,K,S,
  \Theta_I\), and \(N_I(g)\) are setting-defined or accepted dependency
  objects; none is primitive.
- \(\widehat M_M,\widehat m_{j,M}\), the source-frame coordinates
  \(a_j,b_j,c_j\), \(S\), \(\omega,\gamma\), and all residualized exchange
  directions are proof-local objects. \(C_{\rm fr}\), \(C_{\rm hist}\), and
  \(C_N\) are fixed appendix-local constants with the displayed provenance.
- The accepted historical-record hypothesis is cited in the unit-001
  statement; \(E_i\) and \(U_I\) are therefore not hidden assumptions.
- Root \(p\) is selected by a finite maximum over all unresolved labels and
  modes before any \(\Theta_{I;p,\cdot,\cdot}\) is consumed. The
  \(\Theta\)-entry is not used to prove activation.
- \(B_\perp\) is always consumed through the raw interface (12); its
  \(\tau_{\min}\eta_0\) comparison (13) is branch-qualified by \(E_{\rm lb}\).
- The accepted global diagnostic and review were read only for planning; they
  supplied no proof evidence, assumption source, cited result, or authority
  to change the sketch claim.
- No stale sketch-4 artifact, prior idea branch, tracker, or worker log was
  used. This is a fresh sketch-attempt-6, unit-attempt-2 repair artifact.
