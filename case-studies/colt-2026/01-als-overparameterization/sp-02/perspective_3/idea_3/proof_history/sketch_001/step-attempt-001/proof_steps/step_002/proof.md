# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Conditional on `step_001`, derive the balanced spherical
  representation, prove all three normalized pair Grams have every eigenvalue
  in \([r^{-20},r^{20}]\), prove
  \(\mathbb P(\mathcal E_{\rm size}^c\mid\mathcal E_{\rm cond})\le r^{-20}\),
  and prove \(G_{\rm raw}=(r/n)^2G_{\rm norm}\) for every mode pair.
- Depends on: `step_001`.
- Assumptions used: `assump:dimension`, `assump:rank_window`, and
  `assump:independent_initialization`, together with the accepted derived
  conditioning output of `step_001`.
- Technical challenge: the normalized Khatri--Rao columns are rank-one
  products of two Gaussian angular images and share the balancing radius within
  each component.
- Intended proof tool or cited result: Gaussian radius--direction
  decomposition, chi-square concentration, the exact conditional covariance,
  and a two-stage clipped matrix-Bernstein argument for a Gaussian
  Khatri--Rao matrix.
- Output target: \(\mathcal E_{\rm gram}^{\rm norm}\),
  \(\mathcal E_{\rm size}\), the exact raw/normalized Gram bridge, and the
  raw/normalized tangent-span equality consumed by `step_003`.
- Rate objective: obtain a constant natural normalized spectral window first,
  weaken it to the public polynomial window, allocate failure at most
  \(r^{-20}\) separately to the normalized-Gram and initial-size outputs, and
  retain the exact \((r/n)^2\) raw scale for arbitrarily large allowed \(n\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:dimension`: \(q\ge4\) is fixed, \(r\) is sufficiently large, and
    \(n\ge C(\kappa,q)r^4\log r\), with no upper restriction on \(n\).
  - `assump:rank_window`: \(r<k\le\lfloor r^{5/4}\rfloor\).
  - `assump:independent_initialization`: before balancing, all initialization
    entries are iid \(\mathcal N(0,1/n)\), independently across components and
    modes and independently of the smoothing.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\(\ref{prop:step-001-realized-conditioning}\) from the accepted
    `step_001` proof: on \(\mathcal E_{\rm cond}\), each
    \(M\in\{A,B,C\}\) has full column rank and
    \[
      \kappa_1^{-1}\le\sigma_{\min}(M)\le\|M\|_{\rm op}\le\kappa_1,
      \qquad \|M^\dagger\|_{\rm op}\le\kappa_1,
      \qquad \kappa_1=2\kappa^2.
    \]
- Local conditional hypotheses:
  - In the conditional initialization calculation only, fix a realized triple
    \((A,B,C)\in\mathcal E_{\rm cond}\). This is not a theorem-facing
    assumption: `step_001` proves the event, and initialization is independent
    of the smoothing. Every bound below is uniform over the fixed realized
    triple, so it integrates over `step_001` by the tower property.

No Gram, radial, size, or nonzero-coordinate event is assumed. All such events
are proved below from the primitive initialization law.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\(\ref{assump:independent_initialization}\) and Proposition~\(\ref{prop:step-001-realized-conditioning}\), conditional on any fixed realized triple in \(\mathcal E_{\rm cond}\), every balanced component has the exact common-radius spherical representation, an exact SVD Gaussian representation in coefficient coordinates, and the displayed single-mode and pair-mode conditional covariance formulas. | Identifies the natural normalized scale and separates the bounded factor anisotropy from a standard Gaussian Khatri--Rao matrix. |
| `unit_002` | lemma | Under Assumptions~\(\ref{assump:dimension}\), \(\ref{assump:rank_window}\), and \(\ref{assump:independent_initialization}\), a simultaneous radial event for all \(3k\) raw columns has failure at most \(r^{-25}\) for sufficiently large \(r\); on this event all balanced initial columns have norm below \(2\), and all coefficient scalar multipliers used in a pair lie in \([1/3,3]\). | Proves \(\mathcal E_{\rm size}\) and supplies an internal, proved radial control for the Gram transfer. |
| `unit_003` | lemma | Under Assumption~\(\ref{assump:rank_window}\), if \(Z,Y\in\mathbb R^{r\times k}\) are independent standard Gaussian matrices and \(V=[z_i\otimes y_i]_{i=1}^k/r\), then for all sufficiently large \(r\), \(\lambda(V^{\mathsf T}V)\subset[1/4,2]\) with failure at most \(r^{-25}\). | Gives a uniform constant-window Khatri--Rao concentration theorem at the natural ambient dimension \(r^2\). |
| `unit_004` | proposition | Under Assumptions~\(\ref{assump:dimension}\), \(\ref{assump:rank_window}\), and \(\ref{assump:independent_initialization}\), and Proposition~\(\ref{prop:step-001-realized-conditioning}\), conditional on any realized triple in \(\mathcal E_{\rm cond}\), all three normalized pair Grams simultaneously lie in the constant window \([1/(36\kappa_1^4),18\kappa_1^4]\), hence in \([r^{-20},r^{20}]\), with failure at most \(r^{-20}\). | Proves the exact generated event \(\mathcal E_{\rm gram}^{\rm norm}\) uniformly over conditioned realized factors. |
| `unit_005` | proposition | Under the definitions in `setting.md`, for every realization and every mode pair, \(K_{\rm raw}=(r/n)K_{\rm norm}\), \(G_{\rm raw}=(r/n)^2G_{\rm norm}\), and \(\mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}\). | Supplies the exact no-dilution bridge while preserving the raw target, raw initial core, and raw residual metric. |

Atomic step = no. The spherical law, radial control, Gaussian Khatri--Rao
near-isometry, anisotropic transfer, and exact raw scaling are independent
nontrivial obligations.

## Cited Result Applications

### Accepted dependency: realized conditioning and transfer

- Source or name: Proposition~\(\ref{prop:step-001-realized-conditioning}\)
  and Proposition~\(\ref{prop:step-001-transfer}\) in the accepted
  `step_001` proof and review.
- Restated statement in current notation: on \(\mathcal E_{\rm cond}\), every
  realized factor \(M=U_M\Sigma_MV_M^{\mathsf T}\) has full column rank,
  \(\sigma(\Sigma_M)\subset[\kappa_1^{-1},\kappa_1]\), and
  \(M^\dagger=V_M\Sigma_M^{-1}U_M^{\mathsf T}\), where both
  \(V_M\Sigma_M^{-1}\) and its inverse have operator norm at most
  \(\kappa_1\). Consequently the singular values of a two-mode Kronecker
  product of these coefficient maps lie in
  \([\kappa_1^{-2},\kappa_1^2]\).
- Instantiated objects: \(M=A,B,C\), their compact SVDs, and the coefficient
  vectors \(M^\dagger m_{i,0}\).
- Assumption discharge: the dependency review is `ACCEPTED`; its event is the
  exact \(\mathcal E_{\rm cond}\) fixed locally here.
- Conclusion used: the SVD Gaussianization and the two-mode singular-value
  comparison in Proposition~\(\ref{prop:step-002-normalized-grams}\).

### Gaussian radius--direction decomposition

- Source or name: orthogonal invariance of a standard Gaussian vector.
- Restated statement: if \(h\sim\mathcal N(0,I_n)\), then
  \(R=\|h\|_2/\sqrt n\) is independent of
  \(u=h/\|h\|_2\), and \(u\) is uniform on \(\mathbb S^{n-1}\); the event
  \(h=0\) has probability zero. For a deterministic orthonormal
  \(U\in\mathbb R^{n\times r}\), \(U^{\mathsf T}h\sim\mathcal N(0,I_r)\).
- Instantiated objects: every raw initialization column
  \(m_{i,0}^{\rm raw}=h_i^m/\sqrt n\) and each realized left singular-vector
  matrix \(U_M\).
- Assumption discharge: iid Gaussian columns and independence across all modes
  and components are exactly Assumption~\(\ref{assump:independent_initialization}\).
- Conclusion used: Lemma~\(\ref{lem:step-002-balanced-gaussianization}\).

### Chi-square multiplicative tail

- Source or name: standard chi-square concentration.
- Restated statement: if \(X\sim\chi_d^2\) and \(0<\delta<1\), then
  \[
    \mathbb P\left(\left|\frac Xd-1\right|\ge\delta\right)
    \le2\exp\left(-\frac{d\delta^2}{8}\right).
  \]
- Instantiated objects: \(X=n(R_i^m)^2\) with \(\delta=1/2\), and the
  column norms of the auxiliary \(r\)-dimensional Gaussian matrix in
  Lemma~\(\ref{lem:step-002-gaussian-kr}\) with \(\delta=1/4\).
- Assumption discharge: both objects are squared norms of standard Gaussian
  vectors by Assumption~\(\ref{assump:independent_initialization}\) and the
  Gaussian matrices explicitly introduced in the local lemma.
- Conclusion used: the radial failure budget and the diagonal part of the
  auxiliary Gram.

### Rectangular Gaussian operator-norm tail

- Source or name: rectangular Gaussian operator-norm inequality.
- Restated statement: for an \(r\times k\) iid standard Gaussian matrix \(Z\)
  and every \(t\ge0\),
  \[
    \mathbb P\bigl(\|Z\|_{\rm op}>\sqrt r+\sqrt k+t\bigr)
    \le e^{-t^2/2}.
  \]
- Instantiated objects: the first Gaussian mode \(Z\) in
  Lemma~\(\ref{lem:step-002-gaussian-kr}\), with
  \(t=\sqrt{80\log r}\).
- Assumption discharge: the lemma explicitly takes iid standard Gaussian
  entries.
- Conclusion used: \(\|Z^{\mathsf T}Z\|_{\rm op}\le9k\) on its good event.

### Self-adjoint matrix Bernstein inequality

- Source or name: finite-dimensional self-adjoint matrix Bernstein inequality.
- Restated statement: if independent mean-zero self-adjoint
  \(k\times k\) matrices \(X_1,\ldots,X_r\) satisfy
  \(\|X_b\|_{\rm op}\le R\) almost surely and
  \(\sigma^2=\|\sum_b\mathbb E X_b^2\|_{\rm op}\), then for every \(t\ge0\),
  \[
    \mathbb P\left(\left\|\sum_{b=1}^rX_b\right\|_{\rm op}\ge t\right)
    \le2k\exp\left(-\frac{t^2}{2\sigma^2+2Rt/3}\right).
  \]
- Instantiated objects: clipped row contributions
  \(r^{-2}(D_{\widetilde y_b}S D_{\widetilde y_b}
  -\mu_r\operatorname{diag}S)\) conditional on the first Gaussian mode.
- Assumption discharge: clipping makes the summands uniformly bounded; rows of
  the second Gaussian mode remain independent; coordinate symmetry and
  independence give the displayed conditional mean; the variance proxy is
  bounded by \(rR^2\).
- Conclusion used: the centered Khatri--Rao Gram differs from its diagonal
  conditional mean by at most \(1/4\).

### Local-result application map

- Lemma~\(\ref{lem:step-002-balanced-gaussianization}\) supplies the exact
  representation and covariance consumed by
  Proposition~\(\ref{prop:step-002-normalized-grams}\).
- Lemma~\(\ref{lem:step-002-radial-size}\) supplies both
  \(\mathcal E_{\rm size}\) and the scalar interval used in the same
  proposition.
- Lemma~\(\ref{lem:step-002-gaussian-kr}\) supplies the constant-window
  standard Gaussian Khatri--Rao matrix used for each of the three pairs.
- Proposition~\(\ref{prop:step-002-normalized-grams}\) and
  Proposition~\(\ref{prop:step-002-exact-scale}\) are the two outputs used in
  the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (balanced spherical law and exact coefficient Gaussianization).**
\(\label{lem:step-002-balanced-gaussianization}\)
Under Assumption~\(\ref{assump:independent_initialization}\) and
Proposition~\(\ref{prop:step-001-realized-conditioning}\), conditional on any
fixed realized triple \((A,B,C)\in\mathcal E_{\rm cond}\), there are mutually
independent standard Gaussian vectors \(h_i^m\in\mathbb R^n\), with
\(m\in\{x,y,z\}\) and \(i\in[k]\), such that, almost surely,
\[
  m_{i,0}^{\rm raw}=\frac{h_i^m}{\sqrt n}
  =R_i^m u_i^m,
  \qquad R_i^m=\frac{\|h_i^m\|_2}{\sqrt n},
  \qquad u_i^m=\frac{h_i^m}{\|h_i^m\|_2},
\tag{1}
\]
where all radii are independent of all directions and the directions are
independent uniform vectors on \(\mathbb S^{n-1}\). Writing
\[
  g_i=(R_i^xR_i^yR_i^z)^{1/3},
\tag{2}
\]
the balanced columns satisfy exactly
\[
  (x_{i,0},y_{i,0},z_{i,0})
  =g_i(u_i^x,u_i^y,u_i^z).
\tag{3}
\]

For a mode factor \(M\in\{A,B,C\}\), let
\(M=U_M\Sigma_MV_M^{\mathsf T}\) be its compact SVD and define
\[
  H_M:=V_M\Sigma_M^{-1},
  \qquad z_i^M:=U_M^{\mathsf T}h_i^m,
  \qquad s_i^m:=\frac{g_i}{R_i^m},
\tag{4}
\]
with \(m=x,y,z\) matched to \(M=A,B,C\). Then the \(z_i^M\)'s are mutually
independent \(\mathcal N(0,I_r)\) vectors across components and modes, and
the normalized coefficient vector is exactly
\[
  \bar\zeta_{i,0}^M
  :=\sqrt{n/r}\,M^\dagger m_{i,0}
  =\frac{s_i^m}{\sqrt r}H_Mz_i^M.
\tag{5}
\]
Here \(\bar\zeta^A=\bar\alpha\),
\(\bar\zeta^B=\bar\beta\), and
\(\bar\zeta^C=\bar\gamma\). Moreover, conditional on \(g_i\) and \(M\),
\[
  \mathbb E\!\left[
    \bar\zeta_{i,0}^M(\bar\zeta_{i,0}^M)^{\mathsf T}
    \mid g_i,M\right]
  =\frac{g_i^2}{r}(M^{\mathsf T}M)^{-1}.
\tag{6}
\]
For two distinct modes \(M,N\), conditional on \(g_i,M,N\), their directions
are independent and hence
\[
\begin{aligned}
 &\mathbb E\!\left[
 (\bar\zeta_{i,0}^M\otimes\bar\zeta_{i,0}^N)
 (\bar\zeta_{i,0}^M\otimes\bar\zeta_{i,0}^N)^{\mathsf T}
 \mid g_i,M,N\right] \\
 &\hspace{2cm}=\frac{g_i^4}{r^2}
 (M^{\mathsf T}M)^{-1}\otimes(N^{\mathsf T}N)^{-1}.
\end{aligned}
\tag{7}
\]

**Proof / justification.** Assumption~\(\ref{assump:independent_initialization}\)
gives (1). Gaussian radius--direction independence gives the asserted joint
law, and the zero-radius branch of the balancing map has probability zero.
The product-preserving balancing definition applies its nonzero branch and
immediately gives (2)--(3).

For (5), compact-SVD algebra gives
\[
  M^\dagger u_i^m
  =V_M\Sigma_M^{-1}U_M^{\mathsf T}
    \frac{h_i^m}{\sqrt n R_i^m}
  =\frac{H_Mz_i^M}{\sqrt n R_i^m}.
\]
Multiplication by \(\sqrt{n/r}\,g_i\) yields (5). Conditional on the realized
factor, \(U_M\) is deterministic with orthonormal columns, so orthogonal
Gaussian invariance makes each \(z_i^M\) standard Gaussian. The primitive
mode/component independence gives their mutual independence.

Alternatively using the spherical representation directly,
\(\mathbb E[u_i^m(u_i^m)^{\mathsf T}]=I_n/n\). Since \(g_i\) is a function
only of the radii and all directions are independent of all radii,
\[
\begin{aligned}
 \mathbb E[\bar\zeta_{i,0}^M(\bar\zeta_{i,0}^M)^{\mathsf T}\mid g_i,M]
 &=\frac nr g_i^2M^\dagger\frac{I_n}{n}(M^\dagger)^{\mathsf T}\\
 &=\frac{g_i^2}{r}(M^{\mathsf T}M)^{-1},
\end{aligned}
\]
because \(M\) has full column rank. Independence of the two mode directions
then factors the pair covariance and proves (7). \(\square\)

### unit_002: lemma

**Lemma (simultaneous radial control and the initial-size event).**
\(\label{lem:step-002-radial-size}\)
Under Assumptions~\(\ref{assump:dimension}\),
\(\ref{assump:rank_window}\), and
\(\ref{assump:independent_initialization}\), define the proof-local event
\[
  \mathcal R_0=
  \left\{\frac12\le (R_i^m)^2\le\frac32
  \text{ for every }i\in[k],\ m\in\{x,y,z\}\right\}.
\tag{8}
\]
There is a numerical \(r_{\rm rad}\) such that, uniformly over all allowed
\(n,k\) and conditional on every realized factor triple,
\[
  \mathbb P(\mathcal R_0^c\mid A,B,C)
  \le6k e^{-n/32}\le r^{-25}
  \qquad(r\ge r_{\rm rad}).
\tag{9}
\]
On \(\mathcal R_0\),
\[
  \frac1{\sqrt2}\le g_i\le\sqrt{\frac32}<2,
  \qquad
  \frac1{\sqrt3}\le s_i^m\le\sqrt3,
\tag{10}
\]
so \(\mathcal R_0\subseteq\mathcal E_{\rm size}\). In particular,
\[
  \mathbb P(\mathcal E_{\rm size}^c\mid\mathcal E_{\rm cond})
  \le r^{-25}\le r^{-20}.
\tag{11}
\]

**Proof / justification.** For every \(i,m\),
\(n(R_i^m)^2\sim\chi_n^2\). The chi-square tail with \(\delta=1/2\) gives
\[
  \mathbb P\left((R_i^m)^2\notin[1/2,3/2]\right)
  \le2e^{-n/32}.
\]
A union bound over \(3k\) columns proves the first inequality in (9). Since
\(n\ge C(\kappa,q)r^4\log r\), after harmlessly taking
\(C(\kappa,q)\ge1\), and \(k\le r^{5/4}\),
\[
  6k e^{-n/32}
  \le6r^{5/4}\exp(-r^4\log r/32)\le r^{-25}
\tag{12}
\]
for all \(r\ge r_{\rm rad}\). This bound is independent of the realized
factors, so it remains valid under either conditioning in (9) and (11).

The geometric mean of three numbers in
\([1/\sqrt2,\sqrt{3/2}]\) lies in the same interval, proving the bound on
\(g_i\). Dividing that interval by itself gives
\(s_i^m=g_i/R_i^m\in[1/\sqrt3,\sqrt3]\). By (3), all three balanced columns
in component \(i\) have norm exactly \(g_i<2\), proving
\(\mathcal R_0\subseteq\mathcal E_{\rm size}\). \(\square\)

### unit_003: lemma

**Lemma (constant-window Gaussian Khatri--Rao concentration).**
\(\label{lem:step-002-gaussian-kr}\)
Under Assumption~\(\ref{assump:rank_window}\), let
\(Z=[z_1\ \cdots\ z_k]\) and \(Y=[y_1\ \cdots\ y_k]\) be independent
\(r\times k\) matrices with iid \(\mathcal N(0,1)\) entries, and define
\[
  V=\frac1r[z_1\otimes y_1\ \cdots\ z_k\otimes y_k]
  \in\mathbb R^{r^2\times k}.
\tag{13}
\]
There is a numerical \(r_{\rm KR}\) such that, uniformly for
\(r<k\le r^{5/4}\),
\[
  \mathbb P\left(\frac14 I_k\preceq V^{\mathsf T}V\preceq2I_k\right)
  \ge1-r^{-25}
  \qquad(r\ge r_{\rm KR}).
\tag{14}
\]

**Proof / justification.** Put \(S=Z^{\mathsf T}Z\), let
\(y_b^{\mathsf T}\in\mathbb R^k\) be row \(b\) of \(Y\), and write
\(D_v=\operatorname{diag}(v)\). Entrywise expansion gives the exact row-sum
identity
\[
  V^{\mathsf T}V
  =\frac1{r^2}\sum_{b=1}^rD_{y_b}S D_{y_b}.
\tag{15}
\]

First expose a good event for \(Z\):
\[
  \mathcal Z=\left\{
  \frac34r\le S_{ii}\le\frac54r\ (i\in[k]),
  \quad \|S\|_{\rm op}\le9k\right\}.
\tag{16}
\]
The chi-square tail with \(\delta=1/4\), followed by a union bound, gives
\[
  \mathbb P\left(\exists i:S_{ii}\notin[3r/4,5r/4]\right)
  \le2k e^{-r/128}.
\tag{17}
\]
Let \(L_r=\sqrt{80\log r}\). For sufficiently large \(r\),
\(L_r\le\sqrt k\), and the rectangular Gaussian operator-norm tail gives
\[
  \mathbb P(\|Z\|_{\rm op}>3\sqrt k)
  \le\mathbb P(\|Z\|_{\rm op}>\sqrt r+\sqrt k+L_r)
  \le r^{-40}.
\tag{18}
\]
Thus, after enlarging \(r_{\rm KR}\), (17)--(18) give
\[
  \mathbb P(\mathcal Z^c)\le2r^{-30}.
\tag{19}
\]

Conditional on any \(Z\in\mathcal Z\), clip only for the concentration proof:
\[
  \widetilde y_{bi}=y_{bi}\mathbf1_{\{|y_{bi}|\le L_r\}},
  \qquad
  \mu_r=\mathbb E[\widetilde y_{bi}^2].
\tag{20}
\]
The clipped coordinates remain mutually independent and centered. Also, by
Cauchy--Schwarz, \(\mathbb E y_{bi}^4=3\), and the Gaussian scalar tail,
\[
  1-\mu_r
  =\mathbb E[y_{bi}^2\mathbf1_{\{|y_{bi}|>L_r\}}]
  \le\sqrt{6}\,e^{-L_r^2/4}
  =\sqrt6\,r^{-20},
\tag{21}
\]
so \(3/4\le\mu_r\le1\) for sufficiently large \(r\).

Define the clipped Gram and its centered row summands by
\[
  \widetilde G=\frac1{r^2}\sum_{b=1}^r
  D_{\widetilde y_b}S D_{\widetilde y_b},
  \qquad
  X_b=\frac1{r^2}\left(
  D_{\widetilde y_b}S D_{\widetilde y_b}
  -\mu_r\operatorname{diag}S\right).
\tag{22}
\]
Coordinate independence and centering imply
\[
  \mathbb E[D_{\widetilde y_b}S D_{\widetilde y_b}\mid Z]
  =\mu_r\operatorname{diag}S,
  \qquad
  \mathbb E[\widetilde G\mid Z]
  =\frac{\mu_r}{r}\operatorname{diag}S.
\tag{23}
\]
For \(Z\in\mathcal Z\), \(L_r\ge1\), and every \(b\),
\[
\begin{aligned}
  \|X_b\|_{\rm op}
  &\le\frac1{r^2}\left(
    L_r^2\|S\|_{\rm op}+\mu_r\|\operatorname{diag}S\|_{\rm op}
  \right)\\
  &\le \frac{18L_r^2k}{r^2}
  \le R_r:=\frac{1440\log r}{r^{3/4}},
\end{aligned}
\tag{24}
\]
where the last inequality uses \(k\le r^{5/4}\). The variance proxy obeys
\[
  \left\|\sum_{b=1}^r\mathbb E[X_b^2\mid Z]\right\|_{\rm op}
  \le rR_r^2.
\tag{25}
\]
Self-adjoint matrix Bernstein with \(t=1/4\) therefore yields
\[
  \mathbb P\left(
  \left\|\widetilde G-\frac{\mu_r}{r}\operatorname{diag}S\right\|_{\rm op}
  >\frac14\ \middle|\ Z\right)
  \le2k\exp\left(
  -\frac1{32rR_r^2+(8/3)R_r}\right).
\tag{26}
\]
Because
\[
  rR_r^2=1440^2\frac{(\log r)^2}{\sqrt r}\longrightarrow0,
  \qquad R_r\longrightarrow0,
\]
there is a finite numerical \(r_{\rm KR}\) such that, simultaneously with
(17)--(21),
\[
  2r^{5/4}\exp\left(
  -\frac1{32rR_r^2+(8/3)R_r}\right)\le r^{-30}.
\tag{27}
\]
This displayed inequality is the exact admissibility definition of the
matrix-Bernstein part of \(r_{\rm KR}\); no dependence on \(n,k,\kappa\), or
the realized factors is hidden.

On \(\mathcal Z\), the diagonal matrix in (23) has eigenvalues in
\([9/16,5/4]\). Hence, on the event complementary to (26),
\[
  \frac{5}{16}I_k\preceq\widetilde G\preceq\frac32I_k,
\tag{28}
\]
which is stronger than \([I_k/4,2I_k]\).

Finally, the clipped and original Grams agree whenever every entry of \(Y\)
has magnitude at most \(L_r\). A scalar Gaussian union bound gives
\[
  \mathbb P\left(\max_{b,i}|y_{bi}|>L_r\right)
  \le2rk e^{-L_r^2/2}
  \le2r^{9/4}r^{-40}\le r^{-30}
\tag{29}
\]
for large \(r\). Combining (19), (26)--(29), and enlarging
\(r_{\rm KR}\) once more gives total failure at most
\(4r^{-30}\le r^{-25}\), proving (14). \(\square\)

### unit_004: proposition

**Proposition (uniform normalized pair-Gram windows).**
\(\label{prop:step-002-normalized-grams}\)
Under Assumptions~\(\ref{assump:dimension}\),
\(\ref{assump:rank_window}\), and
\(\ref{assump:independent_initialization}\), and
Proposition~\(\ref{prop:step-001-realized-conditioning}\), there is
\(r_{\rm gram}(\kappa)\) such that, conditional on every fixed
\((A,B,C)\in\mathcal E_{\rm cond}\), with probability at least
\(1-r^{-20}\), all three normalized pair matrices have Gram spectra in
\[
  \left[\frac1{36\kappa_1^4},18\kappa_1^4\right]
  \subseteq[r^{-20},r^{20}].
\tag{30}
\]
Consequently \(\mathcal E_{\rm gram}^{\rm norm}\) holds with conditional
failure at most \(r^{-20}\), uniformly over the realized triple.

**Proof / justification.** Fix a mode pair \((M,N)\), for example
\((B,C)\). Lemma~\(\ref{lem:step-002-balanced-gaussianization}\) gives
\[
  \bar\zeta_{i,0}^M\otimes\bar\zeta_{i,0}^N
  =d_i^{MN}(H_M\otimes H_N)\frac{z_i^M\otimes z_i^N}{r},
  \qquad d_i^{MN}=s_i^m s_i^n.
\tag{31}
\]
Thus, with \(D_{MN}=\operatorname{diag}(d_i^{MN})\) and the standard
Gaussian Khatri--Rao matrix \(V_{MN}\) from (13),
\[
  \bar K_0^{MN}=(H_M\otimes H_N)V_{MN}D_{MN}.
\tag{32}
\]
On \(\mathcal R_0\), Lemma~\(\ref{lem:step-002-radial-size}\) gives
\[
  \frac13I_k\preceq D_{MN}\preceq3I_k.
\tag{33}
\]
The accepted conditioning dependency gives
\[
  \sigma_{\min}(H_M\otimes H_N)\ge\kappa_1^{-2},
  \qquad
  \|H_M\otimes H_N\|_{\rm op}\le\kappa_1^2.
\tag{34}
\]
On the Khatri--Rao event (14), (32)--(34) imply, for every \(c\in\mathbb R^k\),
\[
  \frac1{6\kappa_1^2}\|c\|_2
  \le\|\bar K_0^{MN}c\|_2
  \le3\sqrt2\,\kappa_1^2\|c\|_2.
\tag{35}
\]
Squaring proves the constant interval in (30) for this pair.

The three pairwise Gaussian Khatri--Rao events need not be independent.
Lemma~\(\ref{lem:step-002-gaussian-kr}\), a union bound over the three pairs,
and Lemma~\(\ref{lem:step-002-radial-size}\) give
\[
\begin{aligned}
 &\mathbb P\left(
 \exists\,MN:
 \lambda\bigl((\bar K_0^{MN})^{\mathsf T}\bar K_0^{MN}\bigr)
 \not\subset
 \left[\frac1{36\kappa_1^4},18\kappa_1^4\right]
 \ \middle|\ A,B,C\right)
 \\
 &\le \mathbb P(\mathcal R_0^c)
 +\sum_{MN}\mathbb P\left(
   \lambda(V_{MN}^{\mathsf T}V_{MN})\not\subset[1/4,2]
 \right)\\
 &\le4r^{-25}\le r^{-20}
\end{aligned}
\tag{36}
\]
for sufficiently large \(r\). This remains valid despite the dependence of
the radii and projected Gaussian coordinates, because only a union bound was
used. Finally, if
\[
  r^{20}\ge36\kappa_1^4,
\tag{37}
\]
then \(1/(36\kappa_1^4)\ge r^{-20}\) and
\(18\kappa_1^4\le r^{20}\), so the constant window is contained in the exact
public window. Taking \(r_{\rm gram}(\kappa)\) to enforce (37) and the finite
thresholds in the preceding lemmas proves the proposition. \(\square\)

### unit_005: proposition

**Proposition (exact raw/normalized Gram and tangent-span transfer).**
\(\label{prop:step-002-exact-scale}\)
Under the definitions of `setting.md`, without any probabilistic event, each
mode pair satisfies
\[
  K_{0,\rm raw}^{MN}=\frac rn\bar K_{0,\rm norm}^{MN},
  \qquad
  G_{\rm raw}^{MN}=\left(\frac rn\right)^2G_{\rm norm}^{MN},
\tag{38}
\]
and
\[
  \mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}=\mathscr S_0.
\tag{39}
\]
Therefore the exact raw-coordinate image of
\([r^{-20},r^{20}]\) is
\((r/n)^2[r^{-20},r^{20}]\), with no fixed raw threshold.

**Proof / justification.** By definition,
\[
  \alpha_{i,0}=\sqrt{r/n}\,\bar\alpha_{i,0},
  \qquad
  \beta_{i,0}=\sqrt{r/n}\,\bar\beta_{i,0},
  \qquad
  \gamma_{i,0}=\sqrt{r/n}\,\bar\gamma_{i,0}.
\tag{40}
\]
Every raw pair column is therefore exactly \(r/n\) times its normalized pair
column, proving the first identity in (38); taking Gram matrices proves the
second. Likewise, each normalized tangent generator is the same nonzero
scalar multiple \(n/r\) of its raw counterpart, so the spans in (39) are
identical. These identities rescale only the certificate matrix. They do not
rescale \(D_r\), \(\widehat D_0\), the coefficient residual, or the physical
loss. \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-002-balanced-gaussianization}\) proves the exact balanced
spherical representation, the SVD Gaussianization, and both requested
conditional covariance formulas. Lemma~\(\ref{lem:step-002-radial-size}\)
proves the actual balanced initial-size event with conditional failure at most
\(r^{-20}\), while exporting only an internal proved radial control to the
Gram argument. Lemma~\(\ref{lem:step-002-gaussian-kr}\) proves a
constant-window near-isometry for the standard Gaussian Khatri--Rao matrix by
conditioning on one mode and applying matrix Bernstein to the independent
clipped rows of the other mode. Proposition~\(\ref{prop:step-002-normalized-grams}\)
combines this result with the accepted realized-factor singular-value bounds
and the proved balancing scalars, obtaining all three normalized pair-Gram
windows with conditional failure at most \(r^{-20}\). Finally,
Proposition~\(\ref{prop:step-002-exact-scale}\) proves the exact
\((r/n)^2\) raw Gram factor and tangent-span equality. These named results
jointly establish every clause of the exact `step_002` sketch row.

## Explicit Rate Audit

- Exposed variables: \(\kappa\ge1\), fixed \(q\ge4\), \(r,n,k\), the
  confidence powers \(20\) and \(25\), and
  \(\kappa_1=2\kappa^2\).
- Hidden constants may depend on: the final lower threshold may depend on
  \(\kappa,q\) through the setting threshold and the accepted dependency.
  The local Khatri--Rao threshold \(r_{\rm KR}\) and radial threshold
  \(r_{\rm rad}\) are numerical; the constant normalized window depends only
  on \(\kappa\) through \(\kappa_1\).
- Hidden constants may not depend on: \(n,r,k\), the deterministic base triple,
  the realized smoothing inside \(\mathcal E_{\rm cond}\), or the GD horizon.
- Fixed quantities: \(\kappa,q\) while \(r\) grows; the realized factor triple
  while taking conditional initialization probabilities.
- Probability mode: high probability under initialization, conditional
  uniformly on every realized \((A,B,C)\in\mathcal E_{\rm cond}\). Independence
  of smoothing and initialization then gives the same conditional-on-event
  statements needed by `step_004`.
- Horizon mode: initialization only, before the first GD update.
- Norm mode: Euclidean vector norm, induced matrix operator norm, and the
  eigenvalues of the \(k\times k\) pair Gram matrices.
- Admissibility conditions and auxiliary tolerances:
  \(r<k\le r^{5/4}\), \(n\ge C(\kappa,q)r^4\log r\),
  \(L_r=\sqrt{80\log r}\), the proved radial interval
  \((R_i^m)^2\in[1/2,3/2]\), and a lower threshold enforcing
  (12), (17)--(21), (27), (29), (36), and (37).
- Term absorption or simplification inequalities:
  \[
    6k e^{-n/32}\le r^{-25},
    \qquad
    4r^{-30}\le r^{-25},
    \qquad
    4r^{-25}\le r^{-20},
  \]
  \[
    \frac14I_k\preceq V^{\mathsf T}V\preceq2I_k
    \Longrightarrow
    \frac1{36\kappa_1^4}I_k
    \preceq G_{\rm norm}^{MN}
    \preceq18\kappa_1^4I_k,
  \]
  and \(r^{20}\ge36\kappa_1^4\) embeds the constant window in the public
  polynomial window.
- Probability conversion: one union over \(3k\) raw radii, one union over the
  three mode pairs, and the displayed conditional estimates. No independence
  between the radial event and the projected Gaussian Khatri--Rao events is
  used. The normalized-Gram and size outputs each separately have conditional
  failure at most \(r^{-20}\).
- Contribution to any Rate Specialization Bridge: this step supplies two of
  the four \(r^{-20}\) initialization budgets used by `step_004`.
- Baseline-reduction check: for arbitrarily large \(n\), the normalized
  coefficient representation retains constant covariance scale, while the raw
  Gram is exactly \((r/n)^2\) times the normalized Gram. Thus the certificate
  does not assert an \(n\)-independent raw lower threshold. The raw target
  \(D_r\), raw initial core \(\widehat D_0\), tangent span, coefficient
  residual, and physical loss remain unchanged.

## Blockers

None.

## Notation And Assumption Notes

- \(R_i^m,u_i^m,g_i\) are `appendix-local` objects defined directly from the
  raw initialization and balancing map. The balanced spherical representation
  is proved in Lemma~\(\ref{lem:step-002-balanced-gaussianization}\).
- \(U_M,\Sigma_M,V_M,H_M,z_i^M,s_i^m\) are `proof-local` SVD/Gaussianization
  objects. Their existence and bounds come from the accepted dependency, and
  their exact coefficient relation is proved in
  Lemma~\(\ref{lem:step-002-balanced-gaussianization}\).
- The conditional covariances (6)--(7) are `appendix-local` proved identities,
  not assumptions. Their eigenvalues on the radial event lie at the natural
  orders \(1/r\) and \(1/r^2\), with constants depending only on
  \(\kappa\).
- \(\mathcal R_0\) is a `proof-local` generated event. It is proved with
  failure at most \(r^{-25}\) and is not exported as a theorem assumption.
  The public generated size event \(\mathcal E_{\rm size}\) is derived from it.
- \(Z,Y,V,S,L_r,\widetilde y,\mu_r,R_r\) are `proof-local` objects inside
  Lemma~\(\ref{lem:step-002-gaussian-kr}\). The only exported interface from
  that lemma is its constant spectral window and failure budget.
- For a generic mode pair \(MN\), \(\bar K_0^{MN}\) is an `appendix-local`
  abbreviation for the corresponding normalized pair matrix already defined
  in `setting.md`; \(d_i^{MN}\) and \(D_{MN}\) are `proof-local` scalar and
  diagonal factors derived in (31)--(33). They are not exported downstream.
- \(\mathcal E_{\rm gram}^{\rm norm}\), \(\mathcal E_{\rm size}\), the exact
  raw Gram identity, and the tangent-span equality are `public-facing` outputs
  already defined in `setting.md`; no additional public helper dictionary is
  exported.
- Constant provenance: \(1/4,2,1/(36\kappa_1^4),18\kappa_1^4\) are proved by
  the named Khatri--Rao and transfer results; \(L_r\) and \(R_r\) are explicit
  proof-local expressions; every lower threshold is the finite threshold
  enforcing displayed inequalities, not an extra assumption.
- Assumption provenance: realized conditioning is supplied by accepted
  `step_001`; the radial, size, Gaussian Khatri--Rao, normalized-Gram, and
  scaling facts are proved in this step; the fixed-factor conditioning is only
  a local conditional calculation integrated using initialization/smoothing
  independence.
- Boundary cases: raw Gaussian columns and projected coefficient Gaussians are
  nonzero almost surely, so the zero-factor balancing branch and zero
  coefficient directions are null events. Equality at the radial endpoints is
  included. The maximal rank \(k=r^{5/4}\) is covered explicitly in (24)--(27).
  Increasing \(n\) strengthens the radial tail and changes the raw Gram only
  through the exact \((r/n)^2\) factor. Dependence among the three pair events
  and between radii and projected coordinates is allowed because only union
  bounds are used.
- The paired `global_proof.md` and `global_proof_review.md` were read only after
  confirming that the global review status is `ACCEPTED`. The G2 diagnostic
  suggested the radius/Gaussianization organization and the need for a
  constant-window Khatri--Rao lemma. Every statement here is independently
  proved from the setting, accepted dependency, and restated standard tools;
  the diagnostic is not used as evidence, a cited result, an assumption source,
  or authority to alter the sketch-row claim.
