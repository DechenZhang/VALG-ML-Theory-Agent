# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 2
- Binding setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Accepted sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Accepted dependency proof SHA-256 (step_004): 6b2073b568dc2f94ffa871256831a26a2f2b6772b980b1c2207fd679ddde7922
- Accepted dependency review SHA-256 (step_004): 287df7342183d926bcb1c665cd60878f162859396e0143e3e9fd3268869ee471
- Accepted coverage dependency proof SHA-256 (step_003): 2ec3af5229ee6717bb501939c614b65a7163694fb3f478395c8ff163df2ed551
- Accepted coverage dependency review SHA-256 (step_003): 046c8b2ef34d4e749556b11d1ce056457f3d84feffe4e63a9b9d528c3a2a2527
- Accepted geometry dependency proof SHA-256 (step_001): 467b0960c46a1487155b3ed5354d069fa7e6a477cf6a7efac6d779aefc801207
- Accepted geometry dependency review SHA-256 (step_001): da31328ff1cb174d8f36bbc82f910454291fa18ddb198f1427b8a94904231f7c

## Target Step Claim

The accepted sketch row is:

> For every certified slot, derive the raw right-sided signed same-state
> equation and the barred post-score equation, then emit the all-certified
> weighted threshold/tail ledger before labels or clustering.  The step
> depends on `step_004`, uses the derived `E_cert` and `E_sm`, and exports
> `E_cert_eq` and `E_cert_tail`.  The certificate residual is charged at
> explicit scale \(\sqrt r\tau_r\), and the construction is label-free.

The phrase “post-score” means the proof-only orientation by the sign of the
observable scalar score; it does not mean that the algorithm has already used
target labels or a clustering result.

Step-row metadata: Dependencies = step_004. Assumptions used = derived
E_cert and E_sm. Technical challenge = exact coefficient-vector expansion,
scalar cancellation, and finite residual conversion. Intended proof tools =
multilinearity, Cauchy--Schwarz, the retained coefficient floor, and a
weighted threshold/tail ledger. Output target = E_cert_eq and E_cert_tail.
Rate objective = expose the sqrt(r) tau_r certificate charge and preserve the
no-label scope.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- `assump:subquadratic-rank` supplies $r\ge3$, hence $L_{\rm burn}\ge1$,
  and the fixed finite proposal horizon.  No rank asymptotic is used in this
  step.

Derived invariants supplied by accepted dependencies:

- `E_sm`, supplied by the accepted geometry result
  Proposition~\ref{prop:step-001-realized-gram} and its accepted review:
  for every realized mode $G_M$, $H_M:=G_M^\top G_M$ has diagonal one,
  symmetric row and column off-diagonal mass at most
  $q:=q_{\rm real}\le q_*=1/4096$. Consequently
  $1-q\le\lambda_{\min}(H_M)\le\lambda_{\max}(H_M)\le1+q$.
- `E_cert`, supplied by the accepted
  Proposition~\ref{prop:step-004-certificate} and review: every stored slot
  is an old state $h_a=(p_{U,a},p_{V,a},p_{W,a})$ with all three nonzero
  contraction norms and $\zeta_M(h_a)\le\tau_r$; stored states occur after
  the first simultaneous update, so $p_{M,a}\in\operatorname{range}(G_M)$.
  On each coverage witness for target (j), the stored state also has the
  accepted ratio bounds
  $\sum_{\ell\ne j}|c_{M,\ell}/c_{M,j}|\le1/256$ and
  $\max_{\ell\ne j}|c_{M,\ell}/c_{M,j}|\le1/100$ in every mode.
- E_cov, consumed by the accepted step-004 certificate proposition, supplies
  at least one such stored coverage witness for every target. It is used only
  to lower-bound $\sigma_{\max}$; no target label is exposed to the procedure.
- The accepted dependency reviews certify that these are generated outputs,
  not primitive assumptions; no score, cluster, landing, or cyclic invariant
  is imported here.

Local conditional hypotheses: none.  All sign choices and threshold sets
below are proof-only annotations derived from a stored slot; only the score
pool is a procedure-observable filter.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under `E_cert` and `E_sm`, every certified slot has an exact raw right-sided signed equation.  The three certificate signs equal the sign of its scalar score; a score-preserving orientation removes those signs, preserves the represented rank-one term, and gives the barred equation and the common scalar normalization reserve. | Produces `E_cert_eq`, including the exact raw and barred same-state identities and the one-time scalar residual bound. |
| `unit_002` | proposition | Under the barred equation and `E_sm`, projection onto the realized target factors gives an exact coordinate defect identity.  Every nonnegative weighted selector obeys a Gram-leak plus \(\sqrt r\tau_r\) ledger.  In target-span coordinates the two first-order Gram leaks, their cross term, and the certificate residual are separately bounded. | Exposes all defect classes and the finite weighted tail interface without labels or clustering. |
| `unit_003` | proposition | Coverage witnesses give a universal positive score floor.  For the observable high-score pool and the proof-only latent-coordinate (1/8) threshold, the normalized weighted ledger, dominant-coordinate floor, and weighted score tails hold for every certified slot before clustering. | Produces `E_cert_tail`, with explicit threshold, retained floor, scalar conversion, and no-label scope. |

## Cited Result Applications

1. **Realized Gram interface (accepted step 001).**  In current notation,
   Proposition~\ref{prop:step-001-realized-gram} says that on `E_sm` each
   $H_M=G_M^\top G_M$ has unit diagonal and induced off-diagonal row and
   column masses at most $q_{\rm real}\le q_*$. Symmetry gives the same
   spectral bounds by the elementary Rayleigh estimate
   $1-q\le\lambda(H_M)\le1+q$. This is used only for the current realized
   factors.
2. **Stored-state interface (accepted step 004).**
   Proposition~\ref{prop:step-004-certificate} says that a covered slot stores
   the old state $h^t$, not its look-ahead image, with
   $\zeta_M(h^t)\le\tau_r$, and that the first update has already placed all
   modes in the corresponding realized target span.  Its chart bounds are
   used only for the coverage-witness score floor in unit 003.
3. **Elementary induced-norm and Cauchy--Schwarz facts.**  If a matrix has
   off-diagonal column mass at most $q$, then
   $\|(H-I)v\|_1\le q\|v\|_1$. Also
   $\|x\circ y\|_1\le\|x\|_2\|y\|_2$, and
   $\|G_M^\top z\|_2\le\sqrt{1+q}\|z\|_2$. These inequalities are
   proved or instantiated directly below, so no external theorem is needed.

## Local Derivation

Throughout, let $m_c:=|\mathcal I_{\rm cert}|$, index certified slots by
$a\in\mathcal I_{\rm cert}$, and put
$g_{U,j}=u_j,\ g_{V,j}=v_j,\ g_{W,j}=w_j$.  For a slot $a$, write
$p_{M,a}$ for its three unit vectors and define the raw correlation vector

\[
c_{M,a}:=G_M^\top p_{M,a},\qquad
k_{M,a}:=D_\lambda\bigl(c_{M',a}\circ c_{M'',a}\bigr),
\tag{1}
\]

where $M',M''$ are the two held modes.  The symbols in (1) are slot-local;
the setting's $K_M,D_M$ for selected representatives are recovered by
restricting the slot index set to the selected $r$ columns.

### unit_001: lemma

**Lemma (Signed certificate equation and score-preserving orientation;
\label{lem:step-005-signed-equation}).**  Under the derived interfaces `E_cert`
and `E_sm`, for every certified slot (a) and mode (M), let

\[
d_{M,a}:=\|G_Mk_{M,a}\|_2>0,
\]

and choose $\varepsilon_{M,a}\in\{\pm1\}$ attaining the certified
projective residual.  Then, with

\[
r_{M,a}:=d_{M,a}p_{M,a}-\varepsilon_{M,a}G_Mk_{M,a},
\]

\[
\|r_{M,a}\|_2\le d_{M,a}\tau_r,
\qquad
d_{M,a}p_{M,a}=\varepsilon_{M,a}G_Mk_{M,a}+r_{M,a}.
\tag{2}
\]

Writing $\theta_a:=\langle T,p_{U,a}\otimes p_{V,a}\otimes p_{W,a}\rangle$,
all three signs satisfy
\[
\varepsilon_{U,a}=\varepsilon_{V,a}=\varepsilon_{W,a}
=\operatorname{sgn}(\theta_a),
\qquad \theta_a\ne0,
\tag{3}
\]

and, with $s_a:=\operatorname{sgn}(\theta_a)$, the proof-only orientation

\[
\bar p_{U,a}:=s_ap_{U,a},\qquad
\bar p_{V,a}:=p_{V,a},\qquad
\bar p_{W,a}:=p_{W,a}
\tag{4}
\]

has
\[
|\theta_a|\bar p_{U,a}\otimes\bar p_{V,a}\otimes\bar p_{W,a}
=\theta_a p_{U,a}\otimes p_{V,a}\otimes p_{W,a}.
\]
Defining

\[
\bar c_{M,a}:=G_M^\top\bar p_{M,a},\quad
\bar k_{M,a}:=D_\lambda(\bar c_{M',a}\circ\bar c_{M'',a}),\quad
\bar r_{M,a}:=\eta_{M,a}r_{M,a},
\]

where $(\eta_{U,a},\eta_{V,a},\eta_{W,a})=(s_a,1,1)$, gives the
right-sided barred equation
\[
d_{M,a}\bar p_{M,a}=G_M\bar k_{M,a}+\bar r_{M,a},
\qquad \|\bar r_{M,a}\|_2\le d_{M,a}\tau_r.
\tag{5}
\]

Equivalently, if \(P_M^{\rm raw}\), \(K_M^{\rm raw}\), and \(R_M^{\rm raw}\)
stack the columns \(p_{M,a}\), \(k_{M,a}\), and \(r_{M,a}\), and if
\(D_M^{\rm cert}:=\operatorname{diag}(d_{M,a})\) and
\(\Sigma_M:=\operatorname{diag}(\varepsilon_{M,a})\), then
\[
P_M^{\rm raw}D_M^{\rm cert}
=G_MK_M^{\rm raw}\Sigma_M+R_M^{\rm raw},\qquad
\|R_M^{\rm raw}(:,a)\|_2\le d_{M,a}\tau_r.
\tag{5a}
\]
The barred stacks satisfy
\[
\bar P_MD_M^{\rm cert}=G_M\bar K_M+\bar R_M,\qquad
\|\bar R_M(:,a)\|_2\le d_{M,a}\tau_r.
\tag{5b}
\]

In particular, writing $\sigma_a:=|\theta_a|$,
\[
|d_{M,a}-\sigma_a|\le d_{M,a}\tau_r,
\qquad
\frac{\sigma_a}{d_{M,a}}\in[1-\tau_r,1+\tau_r].
\tag{6}
\]

**Proof / justification.**  The stored-state interface gives a nonzero
contraction and
\[
\left\|p_{M,a}-\varepsilon_{M,a}
\frac{G_Mk_{M,a}}{d_{M,a}}\right\|_2\le\tau_r.
\]
Multiplying by $d_{M,a}$ proves (2).  By multilinearity,

\[
p_{M,a}^{\top}G_Mk_{M,a}
=\sum_{j=1}^r\lambda_j
\langle g_{U,j},p_{U,a}\rangle
\langle g_{V,j},p_{V,a}\rangle
\langle g_{W,j},p_{W,a}\rangle
=\theta_a.
\]

Taking the inner product of (2) with $p_{M,a}$ therefore gives

\[
d_{M,a}-\varepsilon_{M,a}\theta_a
=p_{M,a}^{\top}r_{M,a},
\qquad
|d_{M,a}-\varepsilon_{M,a}\theta_a|\le d_{M,a}\tau_r.
\tag{7}
\]

Because $\tau_r=q_*^2/(10^4r)<1$, (7) implies
$\varepsilon_{M,a}\theta_a>0$, proving (3) simultaneously for all modes.
For the orientation (4), the held-mode sign products are

\[
\bar k_{U,a}=k_{U,a},qquad
\bar k_{V,a}=s_ak_{V,a},qquad
\bar k_{W,a}=s_ak_{W,a}.
\]

Multiplying the $U$ equation in (2) by $s_a$, and leaving the other two
equations unchanged, gives (5); the rank-one identity follows because the
product of the three orientation signs is $s_a$.  Finally,
\[
\bar p_{M,a}^{\top}\bar r_{M,a}
=d_{M,a}-\bar p_{M,a}^{\top}G_M\bar k_{M,a}
=d_{M,a}-\sigma_a,
\]
so (6) follows from the residual bound.  This common scalar identity is the
normalization cancellation: the three modes share one $\sigma_a$, and no
independent first-order scalar error is charged in (5).  $\square$

### unit_002: proposition

**Proposition (Projected Gram-leak and finite residual ledger;
\label{prop:step-005-projected-ledger}).**  Under the hypotheses of
Lemma~\ref{lem:step-005-signed-equation}, fix a barred certified slot $a$.
Put $H_M:=G_M^\top G_M$, $\bar c_M:=\bar c_{M,a}$,
$\bar k_M:=\bar k_{M,a}$, $d_M:=d_{M,a}$, and
$\bar r_M:=\bar r_{M,a}$.  For every selector
$w=(w_1,\ldots,w_r)\in[0,1]^r$,
\[
\sum_{j=1}^r w_j
\left|d_M\bar c_{M,j}-\bar k_{M,j}\right|
\le q\|\bar k_M\|_1+\sqrt{r(1+q)}\,d_M\tau_r,
\tag{8}
\]

and, in particular,
\[
\left|d_M\bar c_{M,j}-\lambda_j\bar c_{M',j}\bar c_{M'',j}\right|
\le q\lambda_{\max}+d_M\tau_r.
\tag{9}
\]

Every stored state is in $\operatorname{range}(G_M)$, so if
$\bar p_{M,a}=G_M\alpha_{M,a}$, then with
$\Delta_{M,a}:=(H_M-I)\alpha_{M,a}$ there is an exact decomposition
\[
d_M\alpha_{M,a}
=B_{M,a}+L_{M,a}+X_{M,a}+\varrho_{M,a},
\tag{10}
\]
where
\[
\begin{aligned}
B_{M,a}&:=D_\lambda(\alpha_{M',a}\circ\alpha_{M'',a}),\\
L_{M,a}&:=D_\lambda(\alpha_{M',a}\circ\Delta_{M'',a}
 +\Delta_{M',a}\circ\alpha_{M'',a}),\\
X_{M,a}&:=D_\lambda(\Delta_{M',a}\circ\Delta_{M'',a}),
\end{aligned}
\]

and
\[
\|L_{M,a}\|_1\le\frac{2\lambda_{\max}q}{1-q},qquad
\|X_{M,a}\|_1\le\frac{\lambda_{\max}q^2}{1-q},qquad
\|\varrho_{M,a}\|_1
\le\frac{\sqrt r\,d_{M,a}\tau_r}{\sqrt{1-q}}.
\tag{11}
\]

The first normalized identity is
\[
\alpha_{M,a}-\frac{B_{M,a}}{d_{M,a}}
=\frac{L_{M,a}+X_{M,a}+\varrho_{M,a}}{d_{M,a}},
\tag{12}
\]
so the scalar normalization term is not double-counted.  If $d_{M,a}$ is
replaced by $\sigma_a$, the exact identity is
\[
\alpha_{M,a}-\frac{B_{M,a}}{\sigma_a}
 =\frac{L_{M,a}+X_{M,a}+\varrho_{M,a}}{d_{M,a}}
  +\left(\frac1{d_{M,a}}-\frac1{\sigma_a}\right)B_{M,a}.
\tag{12a}
\]
The additional term therefore has $\ell_1$ norm at most
$\tau_r(1-\tau_r)^{-1}\|B_{M,a}\|_1/d_{M,a}$.

**Proof / justification.**  Projecting (5) by $G_M^\top$ gives the exact
coordinate identity
\[
d_M\bar c_M=H_M\bar k_M+G_M^\top\bar r_M,
\qquad
d_M\bar c_M-\bar k_M=(H_M-I)\bar k_M+G_M^\top\bar r_M.
\tag{13}
\]
The accepted E_sm row/column bounds imply
$\|(H_M-I)\bar k_M\|_1\le q\|\bar k_M\|_1$.  Also
$\|G_M^\top\bar r_M\|_1\le\sqrt r\|G_M^\top\bar r_M\|_2
\le\sqrt{r(1+q)}\,d_M\tau_r$, proving (8).  Since all correlations are inner
products of unit vectors, $|\bar c_{M,j}|\le1$, which proves (9).

For the coefficient form, write $\bar p_M=G_M\alpha_M$.  The Gram
eigenvalue bounds and $\bar p_M^\top\bar p_M=1$ give
\[
\|\alpha_M\|_2\le(1-q)^{-1/2},qquad
\|\Delta_M\|_2\le q(1-q)^{-1/2},qquad
\bar c_M=\alpha_M+\Delta_M.
\tag{14}
\]
Substitution of (14) into
$\bar k_M=D_\lambda(\bar c_{M'}\circ\bar c_{M''})$ gives $B+L+X$.
Because both sides of (5) are in $\operatorname{range}(G_M)$, the residual
is in that range and $\varrho_M:=G_M^\dagger\bar r_M$ satisfies
$\|\varrho_M\|_2\le d_M\tau_r/\sqrt{1-q}$.  The Cauchy--Schwarz
product inequality yields (11), and applying (G_M^\dagger) to (5) gives
(10)--(12).  The final scalar conversion follows from (6). $\square$

### unit_003: proposition

**Proposition (Observable score floor and threshold/tail ledger;
\label{prop:step-005-threshold-ledger}).**  Assume `E_cert` includes the
coverage witnesses supplied by step 004.  Define
\[
a_{\rm win}:=\sqrt{\frac{1-q_*}{1+1/65536}},qquad
u_{\rm win}:=\frac1{100\,256^2},qquad
s_{\rm win}:=a_{\rm win}^3(1-1.01u_{\rm win}).
\tag{15}
\]
Then $a_{\rm win}>99/100$ and $s_{\rm win}>9/10$.  For every coverage
witness for target $j$, $\sigma_a\ge s_{\rm win}\lambda_j$, hence
\[
\sigma_{\max}\ge s_{\rm win}\lambda_{\min}>\frac9{10}\lambda_{\min}.
\tag{16}
\]
Let
\[
\mathcal H:=\{a\in\mathcal I_{\rm cert}:\sigma_a\ge0.85\sigma_{\max}\}
\tag{17}
\]
be the observable retained pool.  For each $a\in\mathcal H$,
\[
\sigma_a>\frac34\lambda_{\min},qquad
d_{M,a}>\frac34\lambda_{\min},qquad
\frac{\lambda_{\max}}{d_{M,a}}<\frac75,qquad
\max_j|\bar c_{M,a,j}|>\frac34
\tag{18}
\]
for every mode $M$.  Put
\[
\eta_{\rm raw}(r):=\frac75(1+q_*)q_*+
\sqrt{r(1+q_*)}\,\tau_r,
\]
\[
\eta_{\rm score}(r):=\eta_{\rm raw}(r)+
\frac{\frac75(1+q_*)\tau_r}{1-\tau_r}.
\tag{19}
\]
Then $\eta_{\rm score}(r)<1/2000$ for every $r\ge3$.  For every
$a\in\mathcal H$, every mode $M$, and every selector $I\subseteq[r]$,
\[
\sum_{j\in I}\left|
\bar c_{M,a,j}-\frac{\lambda_j}{\sigma_a}
\bar c_{M',a,j}\bar c_{M'',a,j}
\right|\le\eta_{\rm score}(r).
\tag{20}
\]
Consequently, with the proof-only latent-coordinate $1/8$-threshold sets
\[
T_{M,a}:=\{j:|\bar c_{M,a,j}|\ge1/8\},
\tag{21}
\]
each $T_{M,a}$ is nonempty, and if $j_M$ maximizes
$|\bar c_{M,a,j}|$ in mode $M$, then
\[
\frac{\lambda_{j_M}}{\sigma_a}
|\bar c_{M',a,j_M}\bar c_{M'',a,j_M}|
>\frac34-\eta_{\rm score}(r),
\tag{22}
\]
and $j_M\in T_{M',a}\cap T_{M'',a}$.  Finally, for any mode $M$, any
$t\in[0,1]$, and $I_{M,a}(t):=\{j:|\bar c_{M,a,j}|<t\}$,
\[
\sum_{j\in I_{M,a}(t)}\lambda_j
|\bar c_{U,a,j}\bar c_{V,a,j}\bar c_{W,a,j}|
\le\lambda_{\max}(1+q_*)t.
\tag{23}
\]
In particular, the $1/8$ tail is at most
$\lambda_{\max}(1+q_*)/8$.  For a coverage witness $j$, the sharper
all-certified tail is
\[
\sum_{\ell\ne j}\lambda_\ell
|\bar c_{U,a,\ell}\bar c_{V,a,\ell}\bar c_{W,a,\ell}|
\le\lambda_{\max}|\bar c_{U,a,j}\bar c_{V,a,j}\bar c_{W,a,j}|u_{\rm win}.
\tag{24}
\]
Equations (8), (20), (21), (23), and (24), taken for every certified slot
and mode, define the finite event `E_cert_tail`; it is formed before any
target label, representative ordering, or clustering operation.

**Proof / justification.**  On a coverage witness, let
$\rho_{M,\ell}:=|\bar c_{M,a,\ell}/\bar c_{M,a,j}|$.  The accepted step-004
chart gives $\sum_{\ell\ne j}\rho_{M,\ell}\le1/256$ and
$\max_\ell\rho_{M,\ell}\le1/100$.  Since the stored state is in the
target span, (14) and the Gram floor give
$\|\bar c_M\|_2^2\ge1-q_*$.  Therefore
\[
|\bar c_{M,a,j}|
\ge\frac{\sqrt{1-q_*}}
{\sqrt{1+\sum_{\ell\ne j}\rho_{M,\ell}^2}}
\ge a_{\rm win}.
\tag{25}
\]
The off-target score sum is bounded by
\[
\sum_{\ell\ne j}\lambda_\ell
|\bar c_{U,a,\ell}\bar c_{V,a,\ell}\bar c_{W,a,\ell}|
\le\lambda_{\max}|\bar c_{U,a,j}\bar c_{V,a,j}\bar c_{W,a,j}|
\sum_{\ell\ne j}\rho_{U,\ell}\rho_{V,\ell}\rho_{W,\ell}
\le\lambda_{\max}|\bar c_{U,a,j}\bar c_{V,a,j}\bar c_{W,a,j}|u_{\rm win}.
\tag{26}
\]
The reverse triangle inequality applied to the target summand and the
off-target sum in (26) gives
$\sigma_a\ge |\bar c_{U,a,j}\bar c_{V,a,j}\bar c_{W,a,j}|
(\lambda_j-\lambda_{\max}u_{\rm win})
\ge a_{\rm win}^3\lambda_j(1-1.01u_{\rm win})$,
which is (16). The displayed numerical bounds on $a_{\rm win},s_{\rm win}$
follow by substituting $q_*=1/4096$.

For an arbitrary stored state, $\|\bar c_M\|_2\le\sqrt{1+q_*}$, and hence
\[
\sigma_a\le\lambda_{\max}(1+q_*)^{3/2},qquad
\sigma_a\le\lambda_{\max}(1+q_*)\max_j|\bar c_{M,a,j}|.
\tag{27}
\]
The first inequality, (16), and the score filter give the first two bounds in
(18).  The second inequality in (27), the same filter, and
the weight ratio $\lambda_{\max}/\lambda_{\min}\le1.01$ give
$\max_j|\bar c_{M,a,j}|>3/4$ for every mode. The $d$-bound and
$\lambda_{\max}/d<7/5$ follow from (6) and the numerical slack
$\tau_r<10^{-6}$.

Apply (8) with a selector and divide by $d_{M,a}$. The bound
$\|\bar k_M\|_1\le\lambda_{\max}(1+q_*)$ and (18) give
$\eta_{\rm raw}$. By (6),
$|1-d_{M,a}/\sigma_a|\le\tau_r/(1-\tau_r)$; the additional conversion
from $d^{-1}$ to $\sigma^{-1}$ is therefore at most the last term in (19),
proving (20). Taking a singleton selector gives (22). Since
$\lambda_j/\sigma_a\le\lambda_{\max}/\sigma_a<7/5$ on the retained pool,
(22) gives
$|\bar c_{M',a,j_M}\bar c_{M'',a,j_M}|>(3/4-1/2000)/(7/5)>1/3$.
Each held correlation is therefore larger than $1/3>1/8$, proving the
threshold intersection claim and nonemptiness.

For (23), on $I_{M,a}(t)$ use $|\bar c_{M,a,j}|<t$ and Cauchy--Schwarz:
\[
\sum_{j\in I_{M,a}(t)}\lambda_j|\bar c_{U,j}\bar c_{V,j}\bar c_{W,j}|
\le\lambda_{\max}t\|\bar c_{M'}\|_2\|\bar c_{M''}\|_2
\le\lambda_{\max}(1+q_*)t.
\]
Equation (24) is the same calculation with the witness ratios and
$\sum\rho_U\rho_V\rho_W\le u_{\rm win}$. All these inequalities are
slotwise finite deterministic statements on E_cert and E_sm; no label is
read by the procedure. $\square$

## Target-Step Assembly

Fix `E_sm` and the generated `E_cert` event.  For each certified slot,
Lemma~\ref{lem:step-005-signed-equation} starts from the exact old-state
Jacobi contraction and multiplies the observable projective residual by the
same contraction norm.  It proves the raw right-sided equation, shows that
the three certificate signs are one common score sign, and applies a
score-preserving proof-only orientation to obtain the barred equation.  The
orientation preserves the represented rank-one term, so the consumed target is
still the realized (G_U,G_V,G_W,D_\lambda) tensor.

Proposition~\ref{prop:step-005-projected-ledger} then projects that same
equation with the realized target Gram.  Its selector inequality separates
the Gram leakage, the two first-order coordinate leaks, their quadratic cross
term, and the certificate residual.  The residual is charged once as
(\sqrt{r(1+q)}\tau_r), rather than being silently multiplied by a future
selection or ALS horizon.  The exact (d)-normalized identity records the
scalar cancellation; conversion to the score (sigma_a) adds only the
explicit one-time term in (19).

Finally, Proposition~\ref{prop:step-005-threshold-ledger} uses only the
already generated coverage witnesses to lower-bound (sigma_{\max}).  It
then instantiates the selector inequality for every observable high-score
slot and every proof-only (1/8)-threshold/tail set, while retaining the unnormalized
ledger for low-score slots.  The resulting finite conjunction is precisely
`E_cert_eq` and `E_cert_tail`.  It is produced before the score-filter output
is used to form clusters, and all target indices in the witness argument are
proof annotations rather than algorithmic inputs.  Thus the exact sketch-row
claim is proved with no landing, selected representative, or cyclic
condition.

## Explicit Rate Audit

- Exposed variables: (r), (q_*=1/4096), (\tau_r=q_*^2/(10^4r)),
  (q_{\rm real}), (Gamma), (lambda_{\min}), (lambda_{\max}),
  (sigma_{\max}), and the explicit residual charges
  $\sqrt{r(1+q)}\tau_r$ and $\sqrt r\,d_M\tau_r$.
- Hidden constants may depend on: only the fixed numerical values
  (q_*,0.85,1/8,1/100,1/256) and the induced Gram factors displayed in
  the proof.
- Hidden constants may not depend on: (n,kappa_0,\rho,epsilon), either
  confidence parameter, a target or slot label, the number of future ALS
  sweeps, a generated comparator, tube, reserve, or condition number.
- Fixed quantities: the realized tensor conditional on `E_sm`, the finite
  certified-slot pool, and the fixed (q_*,\tau_r) definitions.
- Probability mode: deterministic conditional on the accepted `E_sm` and
  `E_cert` interfaces.  No new probability union or confidence conversion is
  introduced; `E_cert_tail` is a finite derived event on the same tape.
- Horizon mode: one stored state per certified slot; the ledger is not summed
  over proposal updates or later ALS sweeps.
- Norm mode: Euclidean certificate residuals, realized Gram induced row/column
  (\ell_1) norms, weighted (\ell_1) coordinate selectors, and the scalar
  score.
- Admissibility conditions and auxiliary tolerances: (r\ge3),
  (q\le q_*), (Gamma\le1.01), and the generated
  (\tau_r)-certificate.  The displayed numerical checks give
  (eta_{\rm score}<1/2000), (d>3\lambda_{\min}/4) on the retained pool,
  and the (1/8) threshold margin.
- Term absorption or simplification inequalities: all absorptions are the
  displayed bounds (8)--(9), (11), (18)--(20), and (25)--(27); in particular
  the Gram term and residual term are never merged without their explicit
  (q) and (sqrt r\tau_r) factors.
- Probability conversion: None beyond the already accepted conditional
  `E_cert` interface.
- Contribution to any Rate Specialization Bridge: exports the finite
  (sqrt r\tau_r) ledger and the score-threshold constants used by the
  downstream support bridge; it does not simplify the final theorem rate.
- Baseline-reduction check: when (q=0) and (\tau_r=0), an exact component
  has (\bar c_M=e_j), (d_M=sigma_a=lambda_j), all defects in
  (8)--(12) vanish, and the singleton tail in (24) is zero.  Thus the exact
  orthogonal stationary baseline is preserved rather than replaced by an
  (O(\omega)) surrogate.

## Blockers

None

## Notation And Assumption Notes

- (c_{M,a},k_{M,a},d_{M,a},r_{M,a}) are proof-local raw slot objects defined
  directly from the setting's realized factors and the stored Jacobi map.
  The matrices (P_M^{\rm raw},K_M^{\rm raw},D_M^{\rm cert}) obtained by
  stacking them are appendix-local; only the exact equation and its residual
  bounds are exported.
- Bars ((\bar p,\bar c,\bar k,\bar r)) are proof-local
  score-preserving sign orientations.  Their product sign is absorbed by
  (\sigma=|\theta|), so the represented tensor is unchanged.  They are not
  an algorithmic gauge or a new assumption.
- The scalar sign multipliers (\eta_{M,a})=(s_a,1,1) are proof-local
  orientation factors applied only to the raw residuals.  They are distinct
  from the target-span coefficient vectors (\alpha_{M,a}) introduced in
  (10), so no vector/scalar type is reused.
- (H_M,alpha_M,Delta_M,B_M,L_M,X_M,\varrho_M) are appendix-local
  target-span bookkeeping objects.  Their provenance is respectively the
  realized Gram, the unique span representation supplied by `E_cert`, the
  direct Gram difference, the multilinear expansion, and the pseudoinverse
  image of the proved residual.  The bounds in (11) prove every finite
  quantity before use.
- (a_{\rm win},u_{\rm win},s_{\rm win},\eta_{\rm raw},\eta_{\rm score}) are
  proof-local constants explicitly defined in (15) and (19).  Their numerical
  inequalities use only (q_*=1/4096), (Gamma\le1.01), (r\ge3), and the
  generated (\tau_r); no free condition number or comparator is hidden.
- The selector (w), threshold sets (T_{M,a}), high pool \(\mathcal H\),
  and witness index (j) are proof-local.  The high pool is
  observable score rule; the threshold sets are latent-coordinate proof
  annotations because they use target correlations $\bar c_{M,a}=G_M^\top
  \bar p_{M,a}$, and are not procedure inputs. Witness indices are used only
  in the coverage-floor proof and are not supplied to the procedure.
- Assumption provenance: `E_sm` and `E_cert` are accepted derived outputs;
  span membership, nonzero contraction norms, common score sign, scalar
  reserve, and every ledger inequality are proved in this step.  No generated
  condition is treated as primitive and no local conditional hypothesis is
  consumed by the target assembly.
- The paired accepted global diagnostic/review was read only for planning
  context.  It supplies no evidence, cited result, assumption, or authority
  for this proof, and it does not alter the exact step claim or dependencies.
