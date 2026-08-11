# Proof Step

## Step Identity

- Sketch attempt: 8
- Step ID: step_007
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove that the observable best-scalar initialization is
  within \(C_{\rm best}=512\) times
  \(\omega=q_*^2+r\tau_r\) in an explicitly defined relative-amplitude
  quotient norm, give the four-class residual decomposition and target norm
  lower bound, and show that the \(\kappa_0\) factor cancels.
- Depends on: accepted step_005 and step_006 proofs and reviews.
- Assumptions used: the derived \(E_{\rm sm},E_{\rm col},E_{\rm row}\), and
  \(E_{\rm gauge}\) interfaces and primitive
  Assumption~\ref{assump:base-weight-balance}, through the accepted realized
  weight-ratio conclusion.
- Technical challenge: synchronize the observable scalar and proof-only
  signs, pass from dual coefficient error to ambient direction error, define
  the CP scaling quotient without absolute amplitudes, and control the
  original Frobenius residual without an \(r\)-dependent loss.
- Intended proof tool: exact best-scalar projection, product-one equal-norm
  balancing, the relative cube-root map, tensor expansion, Khatri--Rao norm
  comparison, and induced row/column estimates.
- Output target: \(E_{\rm best}\) and \(E_{\rm quotient}\).
- Rate objective: \(512\omega<\rho_{\rm ALS}/4\), where
  \(\rho_{\rm ALS}=1/1024\), with a constant independent of \(\kappa_0\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:base-weight-balance} is used only through the
    accepted \(E_{\rm sm}\) conclusion
    \(\Gamma=\lambda_{\max}/\lambda_{\min}\le1.01\).
  - The setting definitions of the realized unit factor matrices
    \(G_U=U,G_V=V,G_W=W\), positive weights \(\lambda_j\), observable scores
    \(\theta_j\), active initialization, \(q_*=1/4096\), and
    \(\tau_r=q_*^2/(10^4r)\) are primitive definitions.
- Derived invariants supplied by accepted dependencies:
  - Accepted step_005 and its ACCEPTED review supply \(E_{\rm gauge}\):
    after the proof-only target permutation and product-preserving signs,
    the selected directions \(\bar p_{M,j}\) have positive target
    correlations,
    \[
      \bar\theta_j
      =\langle T,\bar p_{U,j}\otimes\bar p_{V,j}\otimes
        \bar p_{W,j}\rangle
      =|\theta_j|>0,
    \]
    and the barred factor triple represents exactly the setting's initialized
    rank-one tensor.
  - Accepted step_006 and its ACCEPTED review supply \(E_{\rm sm}\) and the
    selected dual-coordinate conclusions.  With
    \[
      H_M=G_M^\top G_M,\quad L_M=G_MH_M^{-1},\quad
      B_M=L_M^\top\bar P_M,\quad C_M=B_M-I,
    \]
    and \(q=q_{\rm real}\le q_*\), its proved small-root estimates give
    \[
      \chi:=\max_{M,j}\sum_{\ell\ne j}|C_M(\ell,j)|\le32\omega,\quad
      \delta:=\max_{M,j}|C_M(j,j)|\le16\omega,
    \]
    \[
      \eta:=\max_{M,\ell}\sum_{j\ne\ell}|C_M(\ell,j)|\le32\omega.
    \]
    Consequently
    \[
      \max_M\{\|C_M\|_{\rm col,1},\|C_M\|_{\rm row,1}\}
      \le48\omega.                                      \tag{7.1}
    \]
    The same accepted proof defines
    \(p^\perp_{M,j}:=\bar p_{M,j}-G_MB_M(:,j)\), proves
    \(p^\perp_{M,j}\perp{\rm range}(G_M)\), and gives
    \(\|p^\perp_{M,j}\|_2\le\tau_r\).
  - The accepted \(E_{\rm sm}\) interface also gives unit columns,
    \(H_M=I+F_M\) with zero diagonal in \(F_M\), induced absolute row and
    column mass at most \(q\), and
    \((1-q)I\preceq H_M\preceq(1+q)I\).
- Local conditional hypotheses:
  - Fix one realized instance on \(E_{\rm sm}\) and one selected run on the
    accepted \(E_{\rm gauge},E_{\rm col},E_{\rm row}\) interfaces.  All
    conclusions below are deterministic and simultaneous over its \(r\)
    active columns.  No basin or future ALS trajectory condition is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | proposition | Under accepted \(E_{\rm gauge}\), the observable score is the exact least-squares scalar for its selected unit rank-one direction, the initialized term has a product-one equal-norm representative, and the relative-amplitude quotient norm is well-defined. | Produces the gauge and metric part of \(E_{\rm quotient}\). |
| unit_002 | lemma | Under Assumption~\ref{assump:base-weight-balance} through accepted \(E_{\rm sm}\), and accepted \(E_{\rm col},E_{\rm row},E_{\rm gauge}\), every selected direction is within \(49\omega\) of its realized target, \(|\bar\theta_j/\lambda_j-1|\le64\omega\), and every relative amplitude is at most \(128\omega\). | Transfers the observable scalar and proves \(\kappa_0\)-free quotient entry. |
| unit_003 | lemma | Under accepted \(E_{\rm sm}\), the realized target satisfies \(r\lambda_{\min}^2(1-q_*^2)\le\|T\|_F^2\le r\lambda_{\max}^2(1+q_*^2)\), and the needed Khatri--Rao operator comparisons hold. | Supplies the same-target Frobenius denominator. |
| unit_004 | proposition | Under the preceding quotient, direction, scalar, and norm results, the exact initialized-tensor residual splits into scalar, one-direction, two-direction, and cubic classes bounded by \(64,192,192,64\) times \(\omega\lambda_{\max}\sqrt{r(1+q_*^2)}\). | Proves the original-metric \(512\omega\) transfer. |
| unit_005 | proposition | The preceding results assemble \(E_{\rm best}\) and \(E_{\rm quotient}\), prove \(C_{\rm best}=512\), and verify \(512\omega<\rho_{\rm ALS}/4\) independently of \(\kappa_0\). | Closes the exact sketch-row target and rate bridge. |

Atomic step = no.  Gauge construction, scalar/direction transfer, target norm
comparison, and the four tensor-defect classes are independent nontrivial
obligations.

## Cited Result Applications

### Accepted dependency: observable sign and gauge

- Source: accepted Proposition~\(\ref{prop:step-005-gauge}\) and its
  ACCEPTED step_005 review.
- Restated statement in current notation: every selected score is nonzero;
  product-preserving proof-only signs turn the three selected unit directions
  into \(\bar p_{M,j}\) with positive target correlations and positive
  scalar \(\bar\theta_j=|\theta_j|\), while preserving the setting's
  initialized rank-one tensor.
- Assumption discharge: accepted step_005 derives this statement from its
  score gap and certificate equation.  It is consumed here only after that
  accepted derivation.
- Conclusion used: the raw setting initialization and the barred equal-norm
  representative are the same CP quotient point.

### Accepted dependency: selected dual small root

- Source: accepted Propositions~\(\ref{prop:step-006-column-root}\) and
  \(\ref{prop:step-006-row-closure}\), Lemma
  \(\ref{lem:step-006-envelope}\), and their ACCEPTED step_006 review.
- Restated statement in current notation: on the proof-only target
  permutation, the dual errors \(C_M=L_M^\top\bar P_M-I\) satisfy
  \(\chi\le32\omega,\delta\le16\omega,\eta\le32\omega\), hence (7.1);
  moreover
  \(\bar P_M-G_MB_M=[p^\perp_{M,j}]_j\) has perpendicular columns of norm
  at most \(\tau_r\).
- Assumption discharge: step_006 derives these claims from its accepted
  same-state equation, certificate residual, and small-root argument.  No
  quotient-basin fact is among its hypotheses.
- Conclusion used: ambient direction, scalar, matrix-operator, and
  Frobenius estimates below.

### Elementary tensor and scalar facts

- For a unit tensor direction \(d\), the unique minimizer of
  \(\|T-ad\|_F^2/2\) over \(a\in\mathbb R\) is
  \(a=\langle T,d\rangle\).  This follows by expanding the quadratic and is
  proved in Proposition~\ref{prop:step-007-quotient}.
- For \(A=[a_j]\) and \(B=[b_j]\),
  \[
    \|A\odot B\|_2
    \le\min\{\|A\|_2\max_j\|b_j\|_2,\,
             \|B\|_2\max_j\|a_j\|_2\}.                     \tag{7.2}
  \]
  Lemma~\ref{lem:step-007-target-norm} proves (7.2) by an explicit
  factorization and checks every use below.
- No external paper theorem is used in this step.

## Local Derivation

Write
\[
  \lambda_{\min}=\min_j\lambda_j,\qquad
  \lambda_{\max}=\max_j\lambda_j,\qquad
  \omega=q_*^2+r\tau_r=(1+10^{-4})q_*^2<6.0\cdot10^{-8}.   \tag{7.3}
\]
Reindex the selected representatives by the proof-only permutation supplied
by \(E_{\rm cluster}\), so selected column \(j\) is paired with realized
target \(j\); this does not alter the algorithmic ordering.  All mode labels
below range over \(M\in\{U,V,W\}\), with
\(g_{U,j}=u_j\), \(g_{V,j}=v_j\), and \(g_{W,j}=w_j\).

### unit_001: proposition

**Proposition (observable best scalar and equal-norm quotient chart).**
\label{prop:step-007-quotient}

Under the accepted \(E_{\rm gauge}\) interface, for every selected component
\(j\), \(\bar\theta_j\) is the unique best scalar for the unit tensor
\[
  \bar d_j=\bar p_{U,j}\otimes\bar p_{V,j}\otimes\bar p_{W,j}.
\]
The setting initialization has the product-one sign-equivalent
representative
\[
  \bar x^0_{M,j}=\bar\theta_j^{1/3}\bar p_{M,j},             \tag{7.4}
\]
whose three mode norms are equal.

More generally, for a nonzero active triple in the positive target chart,
quotient by componentwise scalings
\((s_{U,j},s_{V,j},s_{W,j})\) with
\(s_{U,j}s_{V,j}s_{W,j}=1\).  Its equal-norm representative has common norm
\[
  a_j=\bigl(\|x_{U,j}\|_2\|x_{V,j}\|_2\|x_{W,j}\|_2\bigr)^{1/3},
\]
oriented unit directions \(p_{M,j}\), and relative amplitude
\[
  \alpha_{M,j}:={a_j\over\lambda_j^{1/3}}-1
  \quad\text{for every }M.                                 \tag{7.5}
\]
With \(L_M=G_MH_M^{-1}\), define on this chart
\[
\begin{split}
 \|e\|_Q:=\max\{&
   \max_{M,j}\|p_{M,j}-g_{M,j}\|_2,\,
   \max_M\|L_M^\top P_M-I\|_{\rm col,1},\\
  &\max_M\|L_M^\top P_M-I\|_{\rm row,1},\,
   \max_{M,j}|\alpha_{M,j}|\}.
                                                               \tag{7.6}
\end{split}
\]
This is invariant under the removed product-one scalings and defines the
relative-amplitude interface \(E_{\rm quotient}\) used downstream.

**Proof.**
Because every \(\bar p_{M,j}\) is unit, \(\|\bar d_j\|_F=1\).  For
\(a\in\mathbb R\),
\[
 {1\over2}\|T-a\bar d_j\|_F^2
 ={1\over2}\|T\|_F^2-a\langle T,\bar d_j\rangle+{a^2\over2}.
\]
The unique minimizer is
\(\langle T,\bar d_j\rangle=\bar\theta_j>0\).  Accepted
\(E_{\rm gauge}\) says that its product-preserving signs leave the raw
initialized rank-one tensor unchanged, proving (7.4).

For a general nonzero triple, multiplying mode \(M\) by
\(a_j/\|x_{M,j}\|_2\) equalizes its three norms, and the product of these
three multipliers is one.  Product-one signs orient the directions in the
positive target chart without changing the rank-one tensor.  Thus (7.5) and
(7.6) depend only on the quotient class.  At (7.4),
\(a_j=\bar\theta_j^{1/3}\), so no absolute factor norm is inserted into the
chart. \(\qed\)

### unit_002: lemma

**Lemma (dual-to-direction transfer and relative cube-root amplitude).**
\label{lem:step-007-transfer}

Under Assumption~\ref{assump:base-weight-balance} through the accepted
\(E_{\rm sm}\) weight conclusion, and under the accepted
\(E_{\rm col},E_{\rm row},E_{\rm gauge}\) interfaces, simultaneously for
all \(M,j\),
\[
 \|\bar p_{M,j}-g_{M,j}\|_2<49\omega<64\omega,               \tag{7.7}
\]
\[
 \left|{\bar\theta_j\over\lambda_j}-1\right|\le64\omega,     \tag{7.8}
\]
and the initialization (7.4) satisfies
\[
 |\alpha_{M,j}|
 =\left|\left({\bar\theta_j\over\lambda_j}\right)^{1/3}-1\right|
 \le128\omega.                                               \tag{7.9}
\]
Moreover, for
\(\Delta_M=\bar P_M-G_M\),
\[
 \max_j\|\Delta_M(:,j)\|_2<49\omega,\qquad
 \|\Delta_M\|_F<49\omega\sqrt r,\qquad
 \|\Delta_M\|_2<49\omega.                                   \tag{7.10}
\]
Consequently the initialized quotient error obeys
\[
 \|e_{\rm best}\|_Q\le128\omega.                             \tag{7.11}
\]
All constants in (7.7)--(7.11) are independent of \(\kappa_0\).

**Proof.**
Let \(P_M^\perp=[p^\perp_{M,j}]_j\).  The accepted projection identity and
(7.1) give
\[
 \Delta_M=G_MC_M+P_M^\perp,\qquad
 \|C_M\|_2\le
 \sqrt{\|C_M\|_{\rm row,1}\|C_M\|_{\rm col,1}}\le48\omega.  \tag{7.12}
\]
For one column,
\[
 \|\Delta_M(:,j)\|_2
 \le\sqrt{1+q}\,\|C_M(:,j)\|_2+\tau_r
 \le48\sqrt{1+q_*}\,\omega+\tau_r<49\omega.                 \tag{7.13}
\]
Here
\[
 {\tau_r\over\omega}
 ={1\over10^4r(1+10^{-4})}\le {1\over30000},
\]
since \(r\ge3\).  The Frobenius estimate in (7.10) follows columnwise.
Also
\[
 \|P_M^\perp\|_2\le\|P_M^\perp\|_F\le\sqrt r\,\tau_r,
 \qquad
 {\sqrt r\,\tau_r\over\omega}
 ={1\over10^4\sqrt r(1+10^{-4})},
\]
so (7.12) gives the operator estimate in (7.10).

It remains to transfer the observable scalar.  Put
\[
  Y_M=G_M^\top\bar P_M=H_MB_M=(I+F_M)(I+C_M).
\]
The diagonal estimate from (7.1) is
\[
 |Y_M(j,j)-1|
 \le\delta+q\chi
 \le(16+32q_*)\omega<17\omega.                              \tag{7.14}
\]
The accepted step_006 pointwise envelope and a direct column sum give
\[
 \max_{\ell\ne j}|Y_M(\ell,j)|
 \le q_*+64\omega+2q_*^2<1.017q_*,
\tag{7.15}
\]
\[
 \sum_{\ell\ne j}|Y_M(\ell,j)|
 \le q_*+32\omega+48q_*\omega<1.008q_*.                    \tag{7.16}
\]
Indeed, the last term in (7.16) follows from
\(\|F_MC_M(:,j)\|_1\le q\|C_M(:,j)\|_1\).

Using the exact realized tensor and the same barred directions,
\[
 {\bar\theta_j\over\lambda_j}
 =\sum_{\ell=1}^r{\lambda_\ell\over\lambda_j}
   Y_U(\ell,j)Y_V(\ell,j)Y_W(\ell,j).                       \tag{7.17}
\]
For the diagonal summand, (7.14) yields
\[
 \left|\prod_M Y_M(j,j)-1\right|
 \le3(17\omega)+3(17\omega)^2+(17\omega)^3<51.001\omega.
\tag{7.18}
\]
For the off-diagonal sum, use two pointwise factors, one column-sum factor,
and \(\Gamma\le1.01\):
\[
\begin{split}
 \sum_{\ell\ne j}{\lambda_\ell\over\lambda_j}
   \prod_M|Y_M(\ell,j)|
 &\le1.01(1.017q_*)^2(1.008q_*)\\
 &<1.055q_*^3<0.001\omega.                                 \tag{7.19}
\end{split}
\]
Equations (7.17)--(7.19) prove the stronger bound
\(51.002\omega<64\omega\), hence (7.8).

Because \(64\omega<1/2\), the elementary identity
\[
 |(1+x)^{1/3}-1|
 ={|x|\over(1+x)^{2/3}+(1+x)^{1/3}+1}\le2|x|
\]
for \(|x|\le1/2\) proves (7.9).  Finally, (7.1), (7.7), and (7.9) in the
definition (7.6) give (7.11).

The only amplitudes used were
\(\bar\theta_j/\lambda_j\) and
\(\bar\theta_j^{1/3}/\lambda_j^{1/3}\).  Thus any absolute scale inherited
from the base column norms cancels algebraically; \(\kappa_0\) appears
nowhere in (7.7)--(7.11). \(\qed\)

### unit_003: lemma

**Lemma (same-target Frobenius and Khatri--Rao comparison).**
\label{lem:step-007-target-norm}

Under the accepted \(E_{\rm sm}\) interface,
\[
 r\lambda_{\min}^2(1-q_*^2)
 \le\|T\|_F^2
 \le r\lambda_{\max}^2(1+q_*^2).                            \tag{7.20}
\]
For every two distinct modes \(M',M''\),
\[
 \|G_{M'}\odot G_{M''}\|_2\le\sqrt{1+q_*^2},                \tag{7.21}
\]
and for arbitrary column matrices \(A=[a_j]\), \(B=[b_j]\), inequality
(7.2) holds.

**Proof.**
The Gram matrix of \(G_{M'}\odot G_{M''}\) is
\(H_{M'}\circ H_{M''}\).  Its diagonal is one, and for every row \(i\),
\[
 \sum_{j\ne i}|H_{M'}(i,j)H_{M''}(i,j)|
 \le\max_{j\ne i}|H_{M'}(i,j)|
      \sum_{j\ne i}|H_{M''}(i,j)|
 \le q^2.
\]
Gershgorin therefore proves (7.21), including the corresponding lower
eigenvalue \(1-q^2\).

The rank-one target dictionary has columns
\(g_{U,j}\otimes g_{V,j}\otimes g_{W,j}\) and Gram matrix
\(H_U\circ H_V\circ H_W\).  Its off-diagonal row mass is at most \(q^3\) by
the same argument.  Therefore
\[
 (1-q^3)\|\lambda\|_2^2
 \le\|T\|_F^2
 \le(1+q^3)\|\lambda\|_2^2.
\]
Since \(q^3\le q_*^2\) and
\(r\lambda_{\min}^2\le\|\lambda\|_2^2\le r\lambda_{\max}^2\), this proves
(7.20).

For (7.2), let \(D_Bx=(x_1b_1,\ldots,x_rb_r)\) in the direct sum of \(r\)
copies of the row space of \(B\).  Up to a fixed coordinate permutation,
\[
  (A\odot B)x=(A\otimes I)D_Bx.
\]
Thus
\(\|A\odot B\|_2\le\|A\|_2\|D_B\|_2
=\|A\|_2\max_j\|b_j\|_2\).  Interchanging \(A,B\) gives the other half of
(7.2). \(\qed\)

### unit_004: proposition

**Proposition (four-class initialized-tensor residual).**
\label{prop:step-007-four-class}

Under Proposition~\ref{prop:step-007-quotient} and
Lemmas~\ref{lem:step-007-transfer} and
\ref{lem:step-007-target-norm}, let
\[
 T_{\rm init}
 =\sum_{j=1}^r\bar\theta_j\,
   \bar p_{U,j}\otimes\bar p_{V,j}\otimes\bar p_{W,j},
\qquad
 \Lambda:=\lambda_{\max}\sqrt{r(1+q_*^2)}.
\]
Then the exact decomposition
\[
 T_{\rm init}-T={\cal D}_0+{\cal D}_1+{\cal D}_2+{\cal D}_3              \tag{7.22}
\]
into scalar, one-direction, two-direction, and cubic classes obeys
\[
 \|{\cal D}_0\|_F\le64\omega\Lambda,\quad
 \|{\cal D}_1\|_F\le192\omega\Lambda,\quad
 \|{\cal D}_2\|_F\le192\omega\Lambda,\quad
 \|{\cal D}_3\|_F\le64\omega\Lambda.                         \tag{7.23}
\]
Consequently
\[
 {\|T-T_{\rm init}\|_F\over\|T\|_F}\le512\omega.             \tag{7.24}
\]

**Proof.**
Write \(\Delta_{M,j}=\bar p_{M,j}-g_{M,j}\).  Expanding each selected
rank-one term gives (7.22), where
\[
 {\cal D}_0=\sum_j(\bar\theta_j-\lambda_j)
       g_{U,j}\otimes g_{V,j}\otimes g_{W,j},
\]
\[
 {\cal D}_1=\sum_j\bar\theta_j
 \bigl(\Delta_{U,j}\otimes g_{V,j}\otimes g_{W,j}
+\,g_{U,j}\otimes\Delta_{V,j}\otimes g_{W,j}
+\,g_{U,j}\otimes g_{V,j}\otimes\Delta_{W,j}\bigr),
\]
\[
 {\cal D}_2=\sum_j\bar\theta_j
 \bigl(\Delta_{U,j}\otimes\Delta_{V,j}\otimes g_{W,j}
+\Delta_{U,j}\otimes g_{V,j}\otimes\Delta_{W,j}
+g_{U,j}\otimes\Delta_{V,j}\otimes\Delta_{W,j}\bigr),
\]
\[
 {\cal D}_3=\sum_j\bar\theta_j
       \Delta_{U,j}\otimes\Delta_{V,j}\otimes\Delta_{W,j}.
\]

For the scalar class, the target dictionary bound in
Lemma~\ref{lem:step-007-target-norm} and (7.8) give
\[
 \|{\cal D}_0\|_F
 \le\sqrt{1+q_*^2}
      \biggl(\sum_j|\bar\theta_j-\lambda_j|^2\biggr)^{1/2}
 \le64\omega\Lambda.                                       \tag{7.25}
\]

Next, \(\bar\theta_j\le(1+64\omega)\lambda_{\max}\).  For one summand class
in \({\cal D}_1\), mode unfolding, (7.10), and (7.21) give
\[
\begin{split}
 \|\Delta_M{\rm diag}(\bar\theta)
       (G_{M''}\odot G_{M'})^\top\|_F
 &\le\|\Delta_M{\rm diag}(\bar\theta)\|_F
      \|G_{M''}\odot G_{M'}\|_2\\
 &<49(1+64\omega)\omega\Lambda<64\omega\Lambda.
\end{split}
\]
Each displayed mode choice is in fact less than \(50\omega\Lambda\);
therefore their sum is less than \(150\omega\Lambda\), and in particular
the advertised \(192\omega\Lambda\) bound in (7.23) holds.

For one two-direction class, (7.2) and (7.10) give
\[
 \|G_{M''}\odot\Delta_{M'}\|_2
 \le\|G_{M''}\|_2\max_j\|\Delta_{M'}(:,j)\|_2
 <49\sqrt{1+q_*}\,\omega.
\]
Therefore the sum of all three two-direction classes is at most
\[
 3\cdot49^2(1+64\omega)\sqrt{1+q_*}\,
       \omega^2\lambda_{\max}\sqrt r
 <\omega\Lambda<192\omega\Lambda,                           \tag{7.26}
\]
where the last inequality follows from
\(\omega<6.0\cdot10^{-8}\) and \(q_*=1/4096\).

Finally, (7.2) and (7.10) imply
\[
 \|\Delta_W\odot\Delta_V\|_2
 \le\|\Delta_V\|_2\max_j\|\Delta_W(:,j)\|_2
 <49^2\omega^2.
\]
Hence
\[
 \|{\cal D}_3\|_F
 <49^3(1+64\omega)\omega^3\lambda_{\max}\sqrt r
 <\omega\Lambda<64\omega\Lambda.                            \tag{7.27}
\]
This proves (7.23).  Summing its four displayed bounds gives
\[
 \|T-T_{\rm init}\|_F
 <216\omega\Lambda
 \quad(64+150+1+1=216).                                     \tag{7.28}
\]
By (7.20),
\[
 {\Lambda\over\|T\|_F}
 \le{\lambda_{\max}\over\lambda_{\min}}
    \sqrt{{1+q_*^2\over1-q_*^2}}
 <1.011.                                                     \tag{7.29}
\]
Thus \(\|T-T_{\rm init}\|_F/\|T\|_F<216(1.011)\omega
<219\omega<512\omega\), proving (7.24) without absorbing the weight ratio
into an unspecified constant. \(\qed\)

### unit_005: proposition

**Proposition (assembled best-scalar quotient entry).**
\label{prop:step-007-assembly}

Under Assumption~\ref{assump:base-weight-balance} through accepted
\(E_{\rm sm}\), accepted \(E_{\rm gauge},E_{\rm col},E_{\rm row}\), and
Proposition~\ref{prop:step-007-quotient},
Lemmas~\ref{lem:step-007-transfer}, \ref{lem:step-007-target-norm}, and
Proposition~\ref{prop:step-007-four-class}, the selected observable
initialization satisfies
\[
 E_{\rm quotient}:\quad \|e_{\rm best}\|_Q\le128\omega\le512\omega,
\]
\[
 E_{\rm best}:\quad
 {\|T-T_{\rm init}\|_F\over\|T\|_F}\le512\omega,
 \qquad
 512\omega<{\rho_{\rm ALS}\over4},\quad
 \rho_{\rm ALS}={1\over1024}.                               \tag{7.31}
\]
The constant \(C_{\rm best}=512\) is independent of \(\kappa_0\).

**Proof.**
The quotient chart and exact raw-to-barred identity are supplied by
Proposition~\ref{prop:step-007-quotient}.  Lemma
\ref{lem:step-007-transfer} proves the direction, dual row/column, and
relative-amplitude fields in (7.6), giving the first line of (7.29).
Lemma~\ref{lem:step-007-target-norm} and Proposition
\ref{prop:step-007-four-class} give the original-Frobenius statement.

Finally, using (7.3),
 \[
 512\omega={512(1+10^{-4})\over4096^2}
 <{1\over4096}={\rho_{\rm ALS}\over4},                      \tag{7.32}
\]
because \(512(1+10^{-4})<4096\).  Every amplitude was divided by
\(\lambda_j^{1/3}\), and the Frobenius comparison used only
\(\lambda_{\max}/\lambda_{\min}\le1.01\).  Thus neither (7.29) nor (7.30)
contains \(\kappa_0\). \(\qed\)

## Target-Step Assembly

Accepted \(E_{\rm gauge}\) first identifies the setting's signed
initialization with a positive, product-one equal-norm representative.
Proposition~\ref{prop:step-007-quotient} proves that its observable score is
the exact best scalar and defines the quotient chart before any numerical
comparison.  The accepted step_006 small root, not a basin assumption, then
feeds Lemma~\ref{lem:step-007-transfer}; its projection decomposition proves
ambient direction error, its exact score expansion proves relative scalar
error, and the cube-root map produces a relative amplitude with no
\(\kappa_0\) factor.  Lemma~\ref{lem:step-007-target-norm} supplies a lower
bound for the same realized tensor.  Proposition
\ref{prop:step-007-four-class} expands the actual initialized tensor in the
actual target basis and bounds all scalar, one-direction, two-direction, and
cubic classes without an \(r\)-loss.  Proposition
\ref{prop:step-007-assembly} combines these statements into exactly
\(E_{\rm best}\), \(E_{\rm quotient}\), and the required basin-entry rate.

## Explicit Rate Audit

- Exposed variables: \(r,q_{\rm real},q_*,\tau_r,\omega,\lambda_{\min},
  \lambda_{\max},\Gamma,\rho_{\rm ALS}\), selected direction errors, dual
  induced row/column masses, relative amplitudes, and original relative
  Frobenius error.
- Hidden constants may depend on: only the displayed universal numerical
  constants and the fixed \(q_*=1/4096\).
- Hidden constants may not depend on: \(n,k,\kappa_0,\rho,\epsilon\),
  confidence parameters, the deterministic base triple, selected labels, or
  an unlisted condition number.
- Fixed quantities: the realized \(E_{\rm sm}\) instance, one finite selected
  run, the product-one equal-norm chart, and
  \(\rho_{\rm ALS}=1/1024\).
- Probability mode: deterministic conditional on the accepted good-instance
  and selected-run interfaces; no new probability conversion.
- Horizon mode: one finite initialization transfer; no recursive or
  all-sweep claim.
- Norm mode: ambient Euclidean direction error, dual induced row/column
  \(\ell_1\) error, relative amplitude, quotient maximum norm, and the
  original relative Frobenius norm.
- Admissibility conditions and auxiliary tolerances:
  \(r\ge3\), \(q\le q_*\), \(\Gamma\le1.01\), and the setting value of
  \(\tau_r\); no new tolerance is introduced.
- Term absorption or simplification inequalities: (7.13),
  (7.18)--(7.19), (7.23), (7.26)--(7.28), and (7.30) display every
  absorption.  In particular, the four residual classes are finite and no
  rank factor is hidden.
- Probability conversion: none.
- Contribution to the Rate Specialization Bridge:
  \(512(q_*^2+r\tau_r)<\rho_{\rm ALS}/4\), explicitly and independently of
  \(\kappa_0\).
- Baseline-reduction check: at the exact orthogonal equal-weight stationary
  representative, \(B_M=I\), \(P_M^\perp=0\),
  \(\bar p_{M,j}=g_{M,j}\), and \(\bar\theta_j=\lambda_j\).  Hence all
  quotient coordinates and all four residual classes vanish.  A finite
  orthogonal transient retains its accepted \(\tau_r\) charge and is not
  silently declared exact.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing objects are only \(E_{\rm best}\), \(E_{\rm quotient}\), the
  norm \(\|\cdot\|_Q\), and \(C_{\rm best}=512\).
- Appendix-local objects are the equal-norm representative, relative
  amplitudes \(\alpha_{M,j}\), \(B_M,C_M,Y_M,\Delta_M,P_M^\perp\), and
  \(\Lambda\).  They are defined from setting objects or accepted dependency
  objects and expose no additional theorem assumption.
- Proof-local objects are \({\cal D}_0,\ldots,{\cal D}_3\), \(F_M\), and the
  intermediate constants in (7.14)--(7.19).  The constants
  \(17,49,64,128,192,512\) are proved numerical envelopes, not free
  bounded quantities.
- The generated \(E_{\rm gauge},E_{\rm col},E_{\rm row}\), and \(E_{\rm sm}\)
  conditions are supplied by accepted dependencies.  The fixed-instance and
  fixed-run clause is the only local conditional hypothesis and is not
  promoted to a primitive assumption.
- Raw setting symbols \(P,Q,S,\theta,x^0,y^0,z^0\) are not rebound.  Bars
  denote only the accepted proof-side product-preserving copies, and
  \(T_{\rm init}\) is exactly the tensor represented by the raw active
  initialization.
- The paired global proof diagnostic and global proof review were read only
  after verifying that the review status is ACCEPTED.  Their step-relevant
  planning prompt was to expose the quotient gauge, target norm, and four
  defect classes.  Neither document is used as proof evidence, a cited
  result, an assumption source, or authority to change the target claim.
