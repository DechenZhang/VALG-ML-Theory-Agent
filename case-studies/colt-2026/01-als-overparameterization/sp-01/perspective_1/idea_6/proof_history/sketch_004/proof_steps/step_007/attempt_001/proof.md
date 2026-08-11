# Proof Step

## Step Identity

- Sketch attempt: 4
- Binding setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Binding proof-sketch SHA-256: `47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b`
- Binding proof-sketch-review SHA-256: `eda7c6672f755411db44e1ee214cf23ca1151429749140d0e3deffd4d5e40aa9`
- Step ID: `step_007`
- Unit attempt: 1
- Triggering review SHA-256: none (fresh sketch-4 dispatch)

## Target Step Claim

- Intended claim: Prove the observable best-scalar initialization is within
  C_best=512 times omega=q_*^2+r tau_r in the explicitly defined
  relative-amplitude quotient norm, give the four-class residual
  decomposition and target norm lower bound, and show the kappa factor
  cancels.
- Dependencies: step_005, step_006.
- Assumptions used: E_sm, E_col, E_row, and E_gauge (derived);
  assump:base-weight-balance (primitive).
- Technical challenge: amplitude/sign synchronization and target-metric
  transfer.
- Intended proof tool or cited result: tensor expansion, product-one
  balanced gauge, relative cube-root map, and Khatri--Rao norm comparison.
- Output target: E_best and E_quotient.
- Rate objective: basin-entry objective with 512 omega < rho_ALS/4,
  independent of kappa_0.

The proof below additionally exposes the exact target-projector
decomposition, the single represented-product register, the
scalar/linear/quadratic/cubic residual classes, and the original
relative-Frobenius metric, as required by the accepted sketch row.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive condition used: Assumption~\ref{assump:base-weight-balance}, only
  through the realized consequence Gamma<=1.01 produced by E_sm. The
  setting definitions r>=3, q_*=1/4096, and
  tau_r=q_*^2/(10^4 r) are numerical definitions, not extra hypotheses.
- The accepted step_005 and step_006 interfaces carry the derived E_sm
  geometry used here: unit realized columns, Gram row/column off-diagonal
  mass at most q_*, Gamma<=1.01, and positive realized weights. No direct
  artifact outside the two declared dependencies is consumed.
- Accepted E_gauge from Lemma~\ref{lem:step-005-gauge} supplies the proof-only
  target permutation, oriented unit direction matrices \(\bar P_M\), and
  \(\bar\theta_j=|\theta_j|>0\), while preserving every setting
  initialization term. Current accepted step-005 proof/review hashes:
  `1bcaae8bdc1b62985fec70e940eeb40892c69b8dca196524405d2787682a36fe`
  and `2cc5bbbe506272591deb96c2a1388514653fb7fab33c176c3937f4d4974a6cb2`.
- Accepted Propositions~\ref{prop:step-006-column-root} and
  \ref{prop:step-006-row-closure} give their proved stronger conclusions
  \[
    \|B_M-I\|_{\rm col,1}\le33\omega,\qquad
    \|B_M-I\|_{\rm row,1}\le7\omega,\qquad
    \max_j|B_M(j,j)-1|\le\omega.                       \tag{1}
  \]
  The same accepted dependency gives
  \(\bar P_M=G_MB_M+N_M\), \(G_M^TN_M=0\), and
  \(\max_j\|N_M(:,j)\|_2\le\tau_r\). Current accepted step-006
  proof/review hashes:
  `6b185ea37dadccbd09edd6a57539862ee9887ddbaacbdd30cd86f29896b2b5cc`
  and `421f630c69a3ca651973eec55acb1b07c48a4cca66f5e91c7fa1b2c59ff064f3`.

No local conditional hypothesis or later ALS/basin output is used. No
statement from global_proof.md is used as evidence.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution |
| --- | --- | --- | --- |
| unit_001 | lemma | Under E_sm, E_gauge, and the accepted step-006 conclusions, the selected directions admit the exact orthogonal target-projector decomposition with coefficient row/column error at most 48 omega and perpendicular columns at most tau_r. | Produces the E_quotient direction interface. |
| unit_002 | proposition | Under E_sm and Lemma~\ref{lem:step-007-projector}, the oriented score obeys \(|\bar\theta_j/\lambda_j-1|\le64\omega\), and \(\|T\|_F^2\) obeys the stated lower/upper bounds. | Supplies the observable best scalar and target scale. |
| unit_003 | lemma | The positive product-one balance gives relative cube-root error and common log-product error at most 128 omega, normalizes the exact target-span proxy onto the legal unit-direction chart, and defines the quotient norm with no kappa_0 factor. | Produces the relative-amplitude quotient interface. |
| unit_004 | proposition | The literal initialization has an exact four-class scalar/linear/quadratic/cubic residual decomposition and relative Frobenius error at most 512 omega. | Produces E_best in the original metric. |
| unit_005 | claim | The outputs are finite same-initialization objects and preserve the exact orthogonal equal-weight stationary baseline. | Closes scope and baseline obligations. |

Atomic step = no. The projector, scalar, quotient, tensor-residual, and
baseline claims are independent nontrivial units.

## Cited Result Applications

### Accepted gauge dependency

Lemma~\ref{lem:step-005-gauge}, with its accepted review, states in current
notation that the proof-only oriented columns satisfy
\[
 \bar P_MD_M=G_M\bar K_M+\bar R_M,\qquad
 \bar\theta_j=|\theta_j|>0.                              \tag{2}
\]
Moreover
\[
 \theta_jp_{Uj}\otimes p_{Vj}\otimes p_{Wj}
 =
 \bar\theta_j\bar p_{Uj}\otimes\bar p_{Vj}\otimes\bar p_{Wj}. \tag{3}
\]
Thus the bars and target permutation preserve the initialized tensor, and
positivity in every logarithm and cube root below is an accepted generated
fact rather than an added assumption.

### Accepted coefficient dependency

The accepted step-005 and step-006 artifacts explicitly carry E_sm in their
allowed derived interfaces: the realized factor columns are unit, each
realized Gram has symmetric off-diagonal row/column mass at most q_*, the
realized weights are positive, and Gamma<=1.01. The accepted step-006
propositions additionally state (1) for
\[
 H_M=G_M^TG_M,\qquad L_M=G_MH_M^{-1},\qquad
 B_M=L_M^T\bar P_M,                                      \tag{4}
\]
and give the exact orthogonal decomposition and tau_r column budget recorded
above. These are same-state conclusions of the certificate equation, not
conditions on an arbitrary future quotient state.

### Elementary current-notation tools

For a realized Gram with unit diagonal and off-diagonal row mass at most q_*,
Gershgorin and symmetry give
\[
 \|G_M\|_2\le\sqrt{1+q_*},\qquad
 \|G_{M'}\odot G_{M''}\|_2\le\sqrt{1+q_*^2}.             \tag{5}
\]
The second relation follows because the Khatri--Rao Gram is
\(H_{M'}\circ H_{M''}\), whose off-diagonal row mass is at most q_*^2.
We also use \(\|AB\|_F\le\|A\|_F\|B\|_2\) and the induced row/column
norm bound for a Hadamard product. These are direct finite-dimensional
linear-algebra identities, not external cited results.

## Local Derivation

### unit_001: lemma

**Lemma (selected target-projector decomposition).**
\label{lem:step-007-projector}

Under the accepted E_sm, E_gauge, and step-006 conclusions, define (4) and
\[
 C_M:=B_M-I,\qquad N_M:=\bar P_M-G_MB_M.
\]
Then
\[
 \bar P_M=G_M(I+C_M)+N_M,\qquad G_M^TN_M=0,              \tag{6}
\]
\[
 \|C_M\|_{\rm col,1}\le33\omega,\quad
 \|C_M\|_{\rm row,1}\le7\omega,\quad
 \max_j\|N_M(:,j)\|_2\le\tau_r.                         \tag{7}
\]
In particular,
\[
 \max\{\|C_M\|_{\rm col,1},\|C_M\|_{\rm row,1}\}
 \le48\omega,\qquad
 \max_j\|\bar p_{M,j}-g_{M,j}\|_2<35\omega.             \tag{8}
\]

**Proof.**
Since \(L_M^TG_M=I\), (6) is the ordinary Euclidean orthogonal projection
onto \(\operatorname{range}(G_M)\), so \(G_M^TN_M=0\). Equation (7) is the
accepted stronger content of (1) and the accepted perpendicular conclusion.
For a column j,
\[
 \bar p_{M,j}-g_{M,j}=G_MC_M(:,j)+N_M(:,j).
\]
By (5), (7), and
\[
 \tau_r={q_*^2\over10^4r}<10^{-4}\omega,                \tag{9}
\]
the two terms have norms at most \(34\omega\) and
\(10^{-4}\omega\), respectively. This proves (8). Both induced coefficient
bounds are separately supplied by step 006; no row estimate is inferred by
summing a column estimate.

### unit_002: proposition

**Proposition (best scalar and realized-target norm).**
\label{prop:step-007-scalar-norm}

Under E_sm and Lemma~\ref{lem:step-007-projector}, put
\[
 Q_M:=G_M^T\bar P_M=H_MB_M.
\]
For every selected column j,
\[
 |Q_M(j,j)-1|\le2\omega,\quad
 \sum_{\ell\ne j}|Q_M(\ell,j)|\le2q_*,\quad
 \max_{\ell\ne j}|Q_M(\ell,j)|\le2q_*.                  \tag{10}
\]
Consequently,
\[
 \left|{\bar\theta_j\over\lambda_j}-1\right|\le64\omega. \tag{11}
\]
Furthermore, with \(\lambda_{\min}=\min_j\lambda_j\) and
\(\lambda_{\max}=\max_j\lambda_j\),
\[
 r\lambda_{\min}^2(1-q_*^2)\le\|T\|_F^2
 \le r\lambda_{\max}^2(1+q_*^2).                        \tag{12}
\]

**Proof.**
Write \(F_M=H_M-I\). Since \(F_M(j,j)=0\), (1) gives
\[
 |Q_M(j,j)-1|
 =|C_M(j,j)+(F_MC_M)(j,j)|
 \le\omega+33q_*\omega<2\omega.
\]
Likewise
\[
 \sum_{\ell\ne j}|Q_M(\ell,j)|
 \le q_*(1+\omega)+(1+q_*)33\omega<2q_*,
\]
and the maximum entry is no larger. This proves (10).

The exact realized-basis score expansion is
\[
 {\bar\theta_j\over\lambda_j}
 =\prod_M Q_M(j,j)+
   \sum_{\ell\ne j}{\lambda_\ell\over\lambda_j}
      \prod_MQ_M(\ell,j).                               \tag{13}
\]
The first product differs from one by at most
\((1+2\omega)^3-1<7\omega\). Using one maximum and two l1 sums in the
second term gives
\[
 \left|\sum_{\ell\ne j}{\lambda_\ell\over\lambda_j}
      \prod_MQ_M(\ell,j)\right|
 \le\Gamma(2q_*)(2q_*)^2=8\Gamma q_*^3<\omega.          \tag{14}
\]
Here q_*=1/4096, Gamma<=1.01, and omega>=q_*^2. Thus the stronger
\(8\omega\) scalar estimate holds, proving (11).

For (12), let \(K_3=H_U\circ H_V\circ H_W\). Its diagonal is one and
\[
 \sum_{\ell\ne j}|(K_3)_{j\ell}|
 \le q_*^2\sum_{\ell\ne j}|(H_W)_{j\ell}|
 \le q_*^3\le q_*^2.                                   \tag{15}
\]
Gershgorin bounds its eigenvalues between \(1-q_*^2\) and \(1+q_*^2\).
Since \(\|T\|_F^2=\lambda^TK_3\lambda\), (12) follows.

### unit_003: lemma

**Lemma (balanced quotient coordinates and kappa cancellation).**
\label{lem:step-007-quotient}

Under E_sm, E_gauge, Lemma~\ref{lem:step-007-projector}, and
Proposition~\ref{prop:step-007-scalar-norm}, define
\[
 \rho_j={\bar\theta_j\over\lambda_j},\qquad
 \alpha_j=\rho_j^{1/3}-1,\qquad
 \alpha_{M,j}:=\alpha_j\ (M=U,V,W),\qquad
 s_j=\log \rho_j.                                       \tag{16}
\]
Then
\[
 |\alpha_j|\le128\omega,\qquad |s_j|\le128\omega.       \tag{17}
\]
The canonical equal-norm initialized columns have norm
\(\lambda_j^{1/3}(1+\alpha_j)\), and s_j is their one common
represented-product register. To place the target-span part on the exact
unit-direction chart, define
\[
 \nu_{M,j}:=\|G_MB_M(:,j)\|_2,\quad
 R_M:=\operatorname{diag}(\nu_{M,j}^{-1}),\quad
 \widetilde B_M:=B_MR_M,\quad
 \widetilde C_M:=\widetilde B_M-I.                       \tag{18a}
\]
Then every column of \(G_M\widetilde B_M\) is unit and lies in
\(\operatorname{range}(G_M)\). With
\[
 e_\parallel=(\widetilde C_U,\widetilde C_V,
               \widetilde C_W,s),
\]
define
\[
 \|e_\parallel\|_Q:=
 \max\left\{
 \max_M\left(\|\widetilde C_M\|_{\rm row,1}
 \vee\|\widetilde C_M\|_{\rm col,1}
 \vee\max_j\|G_M\widetilde C_M(:,j)\|_2\right),
 \|s\|_\infty\right\}.                                   \tag{18b}
\]
Then
\[
 \|e_\parallel\|_Q\le128\omega,\qquad
 \|e_{\rm init}\|_{Q,\rm ext}:=
 \max\left\{\|e_\parallel\|_Q,
 \max_M(\|C_M\|_{\rm row,1}\vee\|C_M\|_{\rm col,1}),
 \max_{M,j}\|\bar p_{M,j}-g_{M,j}\|_2,
 \max_{M,j}\|N_M(:,j)\|_2\right\}
 \le128\omega<512\omega.                                 \tag{19}
\]

**Proof.**
By (11), \(|\rho_j-1|\le64\omega<1/2\). The elementary inequalities
\[
 |(1+x)^{1/3}-1|\le2|x|,\qquad |\log(1+x)|\le2|x|
 \quad (|x|\le1/2)
\]
give (17). By (3), the balanced initialized term has represented product
\(\gamma_j=\bar\theta_j\). Positive equal-norm balancing is a product-one
scaling and leaves the literal tensor term unchanged, so
\(s_j=\log(\gamma_j/\lambda_j)\) is the setting's single gauge-invariant
product register; there are no three per-mode amplitude registers.

Because the columns of \(\bar P_M\) are unit and the two terms in (6) are
orthogonal,
\[
 \nu_{M,j}^2=1-\|N_M(:,j)\|_2^2.
\]
Since \(\tau_r<1\), every \(\nu_{M,j}\) is positive. Thus
\(|\nu_{M,j}^{-1}-1|\le2\tau_r^2\), and
\[
 \widetilde C_M=C_MR_M+(R_M-I).
\]
Equations (7)--(9) therefore give
\[
 \|\widetilde C_M\|_{\rm col,1}<34\omega,\quad
 \|\widetilde C_M\|_{\rm row,1}<8\omega,\quad
 \max_j\|G_M\widetilde C_M(:,j)\|_2<35\omega.
\]
Together with (17), these inequalities prove (19). The norm in (18b) is now
literally the setting d_Q norm on a legal unit-column target-span state.
The proof-local extension in (19) retains the actual raw coefficient and
perpendicular fields for step_007c and step_007b; it does not project the algorithmic
initialization or assert that an arbitrary unrestricted tube contracts.
Every bound is relative to lambda_j, so no absolute base scale or kappa_0
enters.

### unit_004: proposition

**Proposition (four-class tensor residual decomposition).**
\label{prop:step-007-four-class}

Under E_sm, E_gauge, Lemma~\ref{lem:step-007-projector},
Proposition~\ref{prop:step-007-scalar-norm}, and
Lemma~\ref{lem:step-007-quotient}, let
\[
 \widehat T=\sum_{j=1}^r\bar\theta_j
   \bar p_{U,j}\otimes\bar p_{V,j}\otimes\bar p_{W,j}.   \tag{20}
\]
This is exactly the setting initialization after the tensor-preserving bars.
Put \(d_{M,j}:=\bar p_{M,j}-g_{M,j}\) and
\(\beta_j:=\rho_j-1\). Then
\[
 \widehat T-T=\mathcal E_0+\mathcal E_1+\mathcal E_2+\mathcal E_3, \tag{21}
\]
where
\[
\begin{aligned}
\mathcal E_0
 &=\sum_j\lambda_j\beta_j\,
      g_{Uj}\otimes g_{Vj}\otimes g_{Wj},\\
\mathcal E_1
 &=\sum_j\lambda_j\rho_j\bigl(
      d_{Uj}\otimes g_{Vj}\otimes g_{Wj}
     +g_{Uj}\otimes d_{Vj}\otimes g_{Wj}
     +g_{Uj}\otimes g_{Vj}\otimes d_{Wj}\bigr),\\
\mathcal E_2
 &=\sum_j\lambda_j\rho_j\bigl(
      d_{Uj}\otimes d_{Vj}\otimes g_{Wj}
     +d_{Uj}\otimes g_{Vj}\otimes d_{Wj}
     +g_{Uj}\otimes d_{Vj}\otimes d_{Wj}\bigr),\\
\mathcal E_3
 &=\sum_j\lambda_j\rho_j\,
      d_{Uj}\otimes d_{Vj}\otimes d_{Wj}.
\end{aligned}                                             \tag{22}
\]
With \(L:=\lambda_{\max}\sqrt{r(1+q_*^2)}\), the classes satisfy
\[
 \|\mathcal E_0\|_F\le64\omega L,\quad
 \|\mathcal E_1\|_F\le128\omega L,\quad
 \|\mathcal E_2\|_F\le16\omega L,\quad
 \|\mathcal E_3\|_F\le16\omega L.                        \tag{23}
\]
Consequently,
\[
 {\|\widehat T-T\|_F\over\|T\|_F}\le512\omega.           \tag{24}
\]

**Proof.**
Equation (21)--(22) is the multilinear binomial expansion of
\(\bar p_{Mj}=g_{Mj}+d_{Mj}\) and
\(\bar\theta_j=\lambda_j(1+\beta_j)\). By (11),
\[
 |\beta_j|\le64\omega,\qquad |\rho_j|\le1+64\omega.      \tag{25}
\]

We expose the perpendicular fields rather than hide them in a generic column
radius. Write
\[
 D_M^\parallel:=G_MC_M,\qquad D_M^\perp:=N_M,\qquad
 D_M=[d_{M,j}]=D_M^\parallel+D_M^\perp.                 \tag{26}
\]
From (7)--(9),
\[
 \max_j\|D_M^\parallel(:,j)\|_2<34\omega,\qquad
 \max_j\|D_M^\perp(:,j)\|_2\le t:=\tau_r.               \tag{27}
\]
For a matrix A with column norms at most h,
\[
 \|A\operatorname{diag}(\lambda \rho)\|_F
 \le(1+64\omega)h\lambda_{\max}\sqrt r.                 \tag{28}
\]
Also
\[
 \|A\odot G_M\|_2\le h\sqrt{1+q_*},                    \tag{29}
\]
because the Gram row sum is at most \(h^2(1+q_*)\).
Equations (5), (27)--(29), and mode unfolding give
\[
 \|\mathcal E_1\|_F
 \le3(1+64\omega)(34\omega+t)L<128\omega L,             \tag{30}
\]
and
\[
 \|\mathcal E_2\|_F
 \le3(1+64\omega)(34\omega+t)^2
       \sqrt{{1+q_*\over1+q_*^2}}\,L
 <16\omega L.                                           \tag{31}
\]
The last inequality uses
\(\omega=q_*^2(1+10^{-4})<6.0\cdot10^{-8}\).

For the cubic class the accepted row/column coefficient controls prevent an
uncontrolled rank factor. If \(A_M=C_M^TH_MC_M\), then
\[
 \|A_M\|_1,\|A_M\|_\infty
 \le(1+q_*)\|C_M\|_{\rm row,1}\|C_M\|_{\rm col,1}
 \le(1+q_*)(48\omega)^2.                                \tag{32}
\]
The possible Khatri--Rao designs in (26) obey
\[
\begin{array}{c|c}
\text{two factors}&\text{operator bound}\\ \hline
D^\parallel\odot D^\parallel&(1+q_*)(48\omega)^2\\
D^\parallel\odot D^\perp&\sqrt{1+q_*}\,(48\omega)t\\
D^\perp\odot D^\perp&t^2\sqrt r .
\end{array}                                              \tag{33}
\]
The middle line follows by multiplying the induced bounds in (32) with
the entrywise \(t^2\) perpendicular Gram bound. The last line charges its
explicit row mass \(rt^4\). Unfolding \(\mathcal E_3\), choosing the
remaining factor as the left matrix, and summing the eight choices gives
\[
 \|\mathcal E_3\|_F
 \le4(1+q_*)^{3/2}(48\omega)^3L
     +12(1+q_*)(48\omega)^2tL
     +12\sqrt{1+q_*}(48\omega)t^2L
     +2\lambda_{\max}rt^3
 <16\omega L.                                           \tag{34}
\]
Here \(t=q_*^2/(10^4r)<10^{-4}\omega\), \(r\ge3\), and
\(\omega<6.0\cdot10^{-8}\). Thus the coherent all-perpendicular term
\(rt^3\) is explicit rather than hidden in a rank-free assertion.

Finally, (5) and (25) give
\[
 \|\mathcal E_0\|_F\le64\omega L.                       \tag{35}
\]
This proves (23). These bounds are stronger than the sketch's coarse
per-class budgets \(128,192,192,64\), while retaining exactly the same four
classes. Their sum is \(224\omega L\). By (12),
\[
 {\|\widehat T-T\|_F\over\|T\|_F}
 \le224\omega\Gamma\sqrt{{1+q_*^2\over1-q_*^2}}
 <512\omega.                                            \tag{36}
\]
The numerator and denominator carry the same absolute weight scale, leaving
only Gamma<=1.01; kappa_0 cancels.

### unit_005: claim

**Claim (finite same-initialization scope and exact baseline).**
\label{claim:step-007-scope}

Under E_sm, E_gauge, Lemmas~\ref{lem:step-007-projector} and
\ref{lem:step-007-quotient}, and
Proposition~\ref{prop:step-007-four-class}, the fields E_best and
E_quotient produced above are finite,
same-initialization derived outputs. They use the original realized tensor,
the literal initialized rank-one terms, and the exact realized target
projector. At the deterministic orthogonal equal-weight stationary
specialization,
\[
 B_M=I,\qquad N_M=0,\qquad s=0,\qquad \widehat T=T.      \tag{37}
\]

**Proof.**
Every object above is evaluated once on the r selected representatives.
The target permutation, bars, and positive product-one balance preserve
the tensor term by (3). The exact \(N_M\) fields are retained for the first
ALS sweep rather than silently projected away. There is no later ALS state,
generic basin label, or transformed tensor in the producer chain.

At the orthogonal equal-weight stationary state, \(H_M=I\), the selected
directions equal the target columns, the certificate residual is zero, and
\(\bar\theta_j=\lambda_j\). Definitions (4), (6), and (16) give (37).
Thus the stationary baseline has zero residual, while a finite nonstationary
certificate transient remains charged by tau_r.

## Target-Step Assembly

Lemma~\ref{lem:step-007-projector} applies the accepted coefficient bridge to
the actual selected representatives and produces
\[
 \bar P_M=G_MB_M+N_M,\quad G_M^TN_M=0,\quad
 \|B_M-I\|_{\rm row,1},\|B_M-I\|_{\rm col,1}\le48\omega,
 \quad \max_j\|N_M(:,j)\|_2\le\tau_r.                   \tag{38}
\]
Proposition~\ref{prop:step-007-scalar-norm} proves both the observable
best-scalar relation and the target norm lower bound.
Lemma~\ref{lem:step-007-quotient} installs the one common represented-product
register and proves
\[
 \max_{M,j}|\alpha_{M,j}|\le128\omega,\qquad
 \|s\|_\infty\le128\omega,\qquad
 \|e_{\rm init}\|_{Q,\rm ext}\le128\omega<512\omega.    \tag{39}
\]
Proposition~\ref{prop:step-007-four-class} controls the original initialized
tensor in the original Frobenius metric:
\[
 {\|T-\widehat T\|_F\over\|T\|_F}\le512\omega.           \tag{40}
\]
Claim~\ref{claim:step-007-scope} closes finite scope and exact baseline
reduction. Thus (38)--(40) are exactly E_quotient and E_best.

Numerically,
\[
 \omega=q_*^2(1+10^{-4})<6.0\cdot10^{-8},\qquad
 512\omega<3.1\cdot10^{-5}<{\rho_{\rm ALS}\over4},
 \quad \rho_{\rm ALS}=1/1024.                           \tag{41}
\]
The target claim, including the 48 omega interface consumed first by
step_007c and then by step_007b, is complete.

## Explicit Rate Audit

- Exposed variables: r, lambda_min, lambda_max, Gamma, q_*, tau_r, omega,
  the selected r-column pool, induced row/column coefficient norms, the
  common log-product register, and the original Frobenius residual.
- Hidden constants depend only on fixed numerical values. They do not depend
  on n, k, kappa_0, rho, epsilon, either confidence level, the deterministic
  base triple, a target label, or a later ALS state.
- Probability mode: pathwise conditional on accepted E_sm, E_gauge, E_col,
  and E_row. This step adds no probability loss.
- Fixed quantities: first fix the realized tensor on E_sm, then fix the
  finite certified/selected pool and its proof-only permutation. All
  conclusions are deterministic in that order.
- Horizon mode: one finite selected initialization and one finite tensor
  expansion; no recurrence or all-time upgrade is claimed.
- Norm mode: Euclidean perpendicular columns, exact target-dual induced
  row/column l1 norms, one common relative log-product coordinate, and the
  original Frobenius tensor norm.
- Term absorption: (9), (14), (23), and (30)--(36) display every use of
  tau_r, q_*, Gamma, and omega. The coherent perpendicular cubic term is
  explicitly \(rt^3\).
- Admissibility and auxiliary tolerances: only r>=3, q_real<=q_*,
  Gamma<=1.01, tau_r=q_*^2/(10^4r), and
  omega=q_*^2+r tau_r are used. There is no generated tube or stability
  condition.
- Probability conversion: none.
- Scale cancellation: (36) replaces the common absolute weight scale by
  Gamma<=1.01. No kappa_0 factor remains in C_best.
- Baseline reduction: the exact orthogonal equal-weight stationary state
  gives B_M=I, N_M=0, s=0, and zero residual.

## Blockers

None.

## Notation And Assumption Notes

- \(H_M,L_M,B_M,C_M,N_M,Q_M\) are exact realized target-projector objects.
  The minimal public-facing interface is (38); \(F_M,D_M^\parallel,
  D_M^\perp,\rho_j,\alpha_j,\beta_j\) are proof-local. The symbol
  \(a_j\) retains its setting meaning as the realized mode-A column.
- \(C_M=B_M-I\) is the setting-aligned quotient coordinate, including the
  diagonal normalization correction. It is not the zero-diagonal
  off-target matrix denoted \(E_M\) inside the accepted step-006 proof.
- \(s_j\) is the setting-defined gauge-invariant represented-product
  coordinate. No raw per-mode amplitude is exported.
- \(\rho_{\rm ALS}=1/1024\) is the explicit downstream tube constant fixed
  by the accepted sketch; it is used only in the numerical comparison (41),
  not as an assumption in any local derivation.
- The extended norm in (19) is proof-local: it is the exact d_Q direction
  and product norm plus the separately exposed \(N_M\) column budget. It
  does not change the later target-span definition of d_Q.
- Constants 33 and 7 are inherited from accepted named step-006 results;
  35, 48, 64, 128, 224, and 512 are proved by the displayed local
  inequalities. No free bounded quantity is introduced.
- Every generated object is supplied by an accepted dependency or proved in
  a named local unit. There is no generated basin or stability assumption.
- The paired global diagnostic was not needed and was not read for this
  fresh proof. No statement from `global_proof.md` or
  `global_proof_review.md` is used as evidence, an assumption, a cited
  result, or authority to change this step claim.
