# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Conditional on `step_001`--`step_002`, prove
  \[
    \left\|J^*J-\operatorname{diag}(J_i^*J_i)\right\|_{\rm op}
    \le C_\kappa\left(\sqrt{\frac{k}{r^2}}
      +\sqrt{\frac{\log r}{r}}\right)\le\frac12
    \tag{TF}
  \]
  on the gauge quotient, prove
  \[
    \|J^*D_r\|_2^2
    \le C_\kappa\left(\frac{k}{r}+\log r\right),
    \tag{TC}
  \]
  construct a unit tensor \(W_0\perp\mathscr S_0\), and establish
  \(\mathcal E_{\rm deficit}\) with conditional failure at most \(r^{-20}\).
- Depends on: `step_001`, `step_002`.
- Assumptions used: `assump:rank_window` and
  `assump:independent_initialization`, together with the accepted realized
  conditioning, angular representation, and tangent-span identity.
- Technical challenge: the exact two-dimensional CP gauge must be removed,
  and the off-component Terracini Gram contains dependent structured
  cross-mode rank-one blocks. The operator calculation must retain variance
  \(k/r^2\), rather than the \(k/r\) scale obtained by taking scalar block
  norms before exploiting the random input and output directions.
- Intended proof tool or cited result: direct gauge-fixed Terracini algebra;
  conditioned angular-Gaussian moments; leave-one-component-out decoupling
  and matrix concentration for (TF); scalar Bernstein for (TC); and the
  finite-dimensional projection formula.
- Output target: the exact raw-target tangent deficit with
  \(\delta_0=1/8\), without normalizing \(D_r\), \(\widehat D_0\), or the
  coefficient residual.
- Rate objective: use \(k/r^2\le r^{-3/4}\), preserve conditional failure at
  most \(r^{-20}\) uniformly over every realized triple in
  \(\mathcal E_{\rm cond}\), and keep constants independent of \(n,k,r\) and
  the realized conditioned factors.

## Step Proof Status

PARTIAL_BLOCKED

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:rank_window`: \(r<k\le\lfloor r^{5/4}\rfloor\).
  - `assump:independent_initialization`: the three mode/component arrays are
    independent Gaussian before balancing.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\(\ref{prop:step-001-realized-conditioning}\): on
    \(\mathcal E_{\rm cond}\), every \(M\in\{A,B,C\}\) has
    \[
      \kappa_1^{-1}\le \sigma_{\min}(M)
      \le \|M\|_{\rm op}\le\kappa_1,\qquad \kappa_1=2\kappa^2.
    \]
  - Lemma~\(\ref{lem:step-002-balanced-gaussianization}\): conditional on a
    fixed realized triple in \(\mathcal E_{\rm cond}\), normalized coefficient
    vectors have the exact form
    \[
      \bar\zeta_i^M=\frac{s_i^m}{\sqrt r}H_Mz_i^M,\qquad
      H_M=V_M\Sigma_M^{-1},\qquad z_i^M\sim N(0,I_r),
    \]
    with independence across components and modes.
  - Proposition~\(\ref{prop:step-002-exact-scale}\):
    \(\mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}=\mathscr S_0\), while
    \(D_r\), \(\widehat D_0\), and the residual remain in raw coefficient
    coordinates.
- Local conditional hypotheses:
  - The angular calculations fix an arbitrary realized
    \((A,B,C)\in\mathcal E_{\rm cond}\). All proved bounds are uniform over
    that fixed triple.
  - Proposition~\(\ref{prop:step-003-deficit-from-frame}\) assumes the local
    event (TF) only to expose the exact downstream implication. Because
    `unit_005` does not prove (TF), this conditional proposition is not used
    as an unconditional step conclusion.

No normalized-Gram event, radial event, deficit event, trajectory event, or
final-loss conclusion is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\(\ref{assump:independent_initialization}\) and accepted Proposition~\(\ref{prop:step-001-realized-conditioning}\) and Lemma~\(\ref{lem:step-002-balanced-gaussianization}\), conditional on a fixed realized triple in \(\mathcal E_{\rm cond}\), the coefficient directions are independent elliptic angular Gaussian vectors and satisfy uniform centered linear-form moments depending only on \(\kappa\). | Supplies the anisotropic angular law and coordinate moments used by the quotient, (TC), and the (TF) stress test. |
| `unit_002` | proposition | Under the direction definitions of `unit_001`, the kernel of each unprojected Terracini map is exactly the two-dimensional CP gauge, its quotient Gram spectrum lies in \([1,3]\), its range is the raw tangent space, and every off-component block has the displayed exact form. | Proves the quotient geometry and the nonvacuous within-component lower source. |
| `unit_003` | lemma | Under Assumption~\(\ref{assump:rank_window}\), the accepted dependencies, and Lemma~\(\ref{lem:step-003-angular-moments}\), (TC) holds with conditional failure at most \(r^{-25}\) for sufficiently large \(r\). | Completely proves target correlation at scale \(k/r+\log r\). |
| `unit_004` | proposition | Under the same inputs, the same-mode off-component blocks are exactly three pair-direction Gram deviations tensored with \(I_r\), with block-row quadratic variance \(O_\kappa(k/r^2)\); the cross-mode blocks are six explicit rank-one operator chaoses. | Preserves the intended variance source and identifies the cross-mode obstruction. |
| `unit_005` | lemma | Required but unresolved: a current-notation decoupled Terracini-chaos inequality must bound the quotient projection of the cross-mode arrays, jointly with the same-mode deviations, by \(C_\kappa(\sqrt{k}/r+\sqrt{t/r})\) with tail \(Ce^{-t}\). | This is the exact missing interface for (TF). |
| `unit_006` | proposition | Under the accepted dependencies, Proposition~\(\ref{prop:step-003-quotient}\), Lemma~\(\ref{lem:step-003-target-correlation}\), and local hypothesis (TF), the projection formula constructs unit \(W_0\perp\mathscr S_0\) and proves raw deficit at least \(\sqrt{r/2}\). | Shows that no gap remains after (TF). |

Atomic step = no. Angular moments, quotient geometry, target correlation,
off-block concentration, and projection-to-deficit assembly are independent
nontrivial obligations.

## Cited Result Applications

### Accepted dependency: realized conditioning

- Source or name: Proposition~\(\ref{prop:step-001-realized-conditioning}\)
  in the accepted `step_001` proof and review.
- Restated statement in current notation: on \(\mathcal E_{\rm cond}\), every
  compact SVD \(M=U_M\Sigma_MV_M^{\mathsf T}\) has
  \(\sigma(\Sigma_M)\subset[\kappa_1^{-1},\kappa_1]\). Thus
  \(H_M=V_M\Sigma_M^{-1}\) has singular values in the same interval.
- Instantiated objects: \(M=A,B,C\) and the three coefficient-direction laws.
- Assumption discharge: the dependency proof/review is current and accepted;
  this step fixes only a realization in its proved event.
- Conclusion used: angular moment constants depending only on \(\kappa\).

### Accepted dependency: coefficient Gaussianization and span transfer

- Source or name: Lemma~\(\ref{lem:step-002-balanced-gaussianization}\) and
  Proposition~\(\ref{prop:step-002-exact-scale}\) in the accepted
  `step_002` proof and review.
- Restated statement in current notation: after removing its nonzero scalar,
  every coefficient direction has law
  \[
    p_i^M=\frac{H_Mz_i^M}{\|H_Mz_i^M\|_2},
  \]
  where all \(z_i^M\) are independent standard Gaussian vectors across
  components and modes. Rescaling these vectors does not change the raw
  tangent span \(\mathscr S_0\).
- Assumption discharge: Assumption~\(\ref{assump:independent_initialization}\)
  supplies the primitive randomness; the accepted dependency proves the exact
  representation. Gaussian images are nonzero almost surely.
- Conclusion used: all local units below and the exact raw-span assembly.

### Spherical coordinate moments

- Source or name: orthogonal invariance of a standard Gaussian vector.
- Restated statement: if \(z\sim N(0,I_r)\), \(s=z/\|z\|_2\), \(v\) is a
  deterministic unit vector, and \(m\ge1\), then
  \[
    \mathbb E|\langle v,s\rangle|^{2m}
    =\frac{(2m-1)!!}{r(r+2)\cdots(r+2m-2)}
    \le\left(\frac{2m}{r}\right)^m.
  \]
- Instantiated objects: \(z_i^M/\|z_i^M\|_2\), after rotating the numerator
  \(H_M^{\mathsf T}u\).
- Assumption discharge: the accepted Gaussianization supplies the standard
  Gaussian vectors.
- Conclusion used: Lemma~\(\ref{lem:step-003-angular-moments}\).

### Scalar Bernstein inequality

- Source or name: Bernstein's inequality for bounded independent variables.
- Restated statement: if independent \(0\le X_i\le1\) satisfy
  \(\mu=\sum_i\mathbb EX_i\), then for every \(u>0\),
  \[
    \mathbb P\left(\sum_iX_i>
      \mu+\sqrt{2\mu u}+\frac u3\right)\le e^{-u}.
  \]
- Instantiated objects: the \(k\) independent Hadamard-product energies for
  each of the three mode pairs.
- Assumption discharge: component independence follows from the primitive
  initialization law; boundedness follows from unit norms; the mean follows
  from Lemma~\(\ref{lem:step-003-angular-moments}\).
- Conclusion used: (TC).

### Projection through a full-column-rank frame

- Source or name: finite-dimensional least-squares projection formula.
- Restated statement: if \(J:H\to\mathcal V\) is injective, then
  \(P_{\operatorname{range}J}=J(J^*J)^{-1}J^*\), and
  \[
    \|P_{\operatorname{range}J}v\|^2
    =\langle J^*v,(J^*J)^{-1}J^*v\rangle.
  \]
- Instantiated objects: the quotient Terracini frame on
  \(\bigoplus_i\mathcal H_i\), conditionally on (TF).
- Assumption discharge: Proposition~\(\ref{prop:step-003-quotient}\) gives
  block-diagonal lower eigenvalue one; (TF) would leave lower eigenvalue
  \(1/2\), hence injectivity.
- Conclusion used: Proposition~\(\ref{prop:step-003-deficit-from-frame}\).

### Unresolved result application

No cited theorem or accepted dependency supplies `unit_005`. Ordinary
matrix Bernstein after replacing a cross-mode block by its operator norm sees
\(\mathbb E|\langle p_i^c,p_j^c\rangle|^2=O_\kappa(1/r)\), not the extra
\(1/r\) supplied by the random input and output directions. That calculation
therefore has variance \(k/r\), not \(k/r^2\), and cannot prove (TF).

## Local Derivation

### unit_001: lemma

**Lemma (uniform moments for conditioned elliptic angular laws).**
\(\label{lem:step-003-angular-moments}\)
Under Assumption~\(\ref{assump:independent_initialization}\), accepted
Proposition~\(\ref{prop:step-001-realized-conditioning}\), and accepted
Lemma~\(\ref{lem:step-002-balanced-gaussianization}\), conditional on every
fixed realized triple in \(\mathcal E_{\rm cond}\), define
\[
  p_i^a=\frac{\bar\alpha_{i,0}}{\|\bar\alpha_{i,0}\|_2},\quad
  p_i^b=\frac{\bar\beta_{i,0}}{\|\bar\beta_{i,0}\|_2},\quad
  p_i^c=\frac{\bar\gamma_{i,0}}{\|\bar\gamma_{i,0}\|_2}.
\tag{1}
\]
These vectors are defined almost surely and independent across components and
modes. For \(M=A,B,C\), the corresponding direction has exact law
\[
  p=\frac{H_Mz}{\|H_Mz\|_2},\qquad z\sim N(0,I_r),
\tag{2}
\]
is centrally symmetric, and for every deterministic unit \(u\) and integer
\(m\ge1\),
\[
  \mathbb E|\langle u,p\rangle|^{2m}
  \le \kappa_1^{4m}
     \frac{(2m-1)!!}{r(r+2)\cdots(r+2m-2)}
  \le\left(\frac{2\kappa_1^4m}{r}\right)^m.
\tag{3}
\]
In particular,
\[
  \mathbb Ep=0,\qquad
  \|\mathbb E(pp^{\mathsf T})\|_{\rm op}\le\frac{\kappa_1^4}{r},\qquad
  \mathbb Ep_\ell^2\le\frac{\kappa_1^4}{r}.
\tag{4}
\]

**Proof / justification.** Equation (2) follows from the accepted exact
Gaussianization because its scalar multiplier disappears on normalization.
Independence is inherited from the independent \(z_i^M\). The map in (2) is
odd, so central symmetry gives \(\mathbb Ep=0\).

For unit \(u\), put
\(v=H_M^{\mathsf T}u/\|H_M^{\mathsf T}u\|_2\). The accepted singular-value
interval gives
\[
  |\langle u,p\rangle|
  =\frac{|\langle H_M^{\mathsf T}u,z\rangle|}{\|H_Mz\|_2}
  \le\kappa_1^2\frac{|\langle v,z\rangle|}{\|z\|_2}.
\tag{5}
\]
The spherical moment identity proves (3). Taking \(m=1\) and the supremum over
unit \(u\) proves (4). \(\square\)

### unit_002: proposition

**Proposition (exact gauge quotient and Terracini blocks).**
\(\label{prop:step-003-quotient}\)
Under (1), define on \(\mathcal V_i=(\mathbb R^r)^3\)
\[
  \widetilde J_i(h^a,h^b,h^c)
  =h^a\otimes p_i^b\otimes p_i^c
   +p_i^a\otimes h^b\otimes p_i^c
   +p_i^a\otimes p_i^b\otimes h^c,
\tag{6}
\]
\[
  \mathcal K_i=\{(s p_i^a,t p_i^b,u p_i^c):s+t+u=0\},\qquad
  \mathcal H_i=\mathcal K_i^\perp,
\tag{7}
\]
and \(J_i=\widetilde J_i|_{\mathcal H_i}\). Then
\[
  \ker\widetilde J_i=\mathcal K_i,\qquad
  I_{\mathcal H_i}\preceq J_i^*J_i\preceq3I_{\mathcal H_i}.
\tag{8}
\]
For \(J=\bigoplus_iJ_i\),
\[
  \operatorname{range}J=\mathscr S_0.
\tag{9}
\]
For \(i\ne j\), writing
\(a_{ij}=\langle p_i^a,p_j^a\rangle\), and analogously \(b_{ij},c_{ij}\),
\[
\widetilde J_i^*\widetilde J_j=
\begin{pmatrix}
b_{ij}c_{ij}I_r & c_{ij}p_j^a(p_i^b)^{\mathsf T}
  & b_{ij}p_j^a(p_i^c)^{\mathsf T}\\
c_{ij}p_j^b(p_i^a)^{\mathsf T} & a_{ij}c_{ij}I_r
  & a_{ij}p_j^b(p_i^c)^{\mathsf T}\\
b_{ij}p_j^c(p_i^a)^{\mathsf T}
  & a_{ij}p_j^c(p_i^b)^{\mathsf T} & a_{ij}b_{ij}I_r
\end{pmatrix}.
\tag{10}
\]
If \(\Pi_i\) projects orthogonally onto \(\mathcal H_i\), the quotient block is
\(\Pi_i\widetilde J_i^*\widetilde J_j\Pi_j\).

**Proof / justification.** Write
\(h^a=s_ap_i^a+h_\perp^a\), and similarly in the other modes. The four tensor
terms formed by the common core and the three perpendicular variations are
mutually orthogonal, so
\[
  \|\widetilde J_ih\|_F^2
  =\|h_\perp^a\|_2^2+\|h_\perp^b\|_2^2+\|h_\perp^c\|_2^2
   +(s_a+s_b+s_c)^2.
\tag{11}
\]
This proves the kernel. Orthogonality to the gauge plane forces
\(s_a=s_b=s_c=s\) on \(\mathcal H_i\), where
\[
  \|h\|_2^2=\sum_m\|h_\perp^m\|_2^2+3s^2,\qquad
  \|J_ih\|_F^2=\sum_m\|h_\perp^m\|_2^2+9s^2.
\]
This proves (8). Quotienting the kernel preserves the component tangent range;
nonzero direction rescaling and accepted
Proposition~\(\ref{prop:step-002-exact-scale}\) identify the sum of these
ranges with the raw \(\mathscr S_0\), proving (9). Taking the nine tensor inner
products in (6) gives (10). \(\square\)

### unit_003: lemma

**Lemma (raw diagonal-core target correlation).**
\(\label{lem:step-003-target-correlation}\)
Under Assumption~\(\ref{assump:rank_window}\), the accepted dependencies, and
Lemma~\(\ref{lem:step-003-angular-moments}\), there are
\(C_{\rm TC}(\kappa)\) and \(r_{\rm TC}(\kappa)\) such that, uniformly
conditional on every fixed realized triple in \(\mathcal E_{\rm cond}\),
\[
  \mathbb P\left(
    \|J^*D_r\|_2^2>
    C_{\rm TC}(\kappa)\left(\frac{k}{r}+\log r\right)
    \,\middle|\,A,B,C\right)\le r^{-25}.
\tag{12}
\]

**Proof / justification.** Direct contraction with
\(D_r=\sum_{\ell=1}^re_\ell^{\otimes3}\) gives
\[
  \widetilde J_i^*D_r=
  (p_i^b\odot p_i^c,\ p_i^a\odot p_i^c,\ p_i^a\odot p_i^b).
\tag{13}
\]
Quotient projection only decreases this norm. For one pair set
\[
  X_i^{bc}=\|p_i^b\odot p_i^c\|_2^2
  =\sum_{\ell=1}^r(p_{i,\ell}^b)^2(p_{i,\ell}^c)^2.
\tag{14}
\]
Mode independence and (4) give
\[
  \mathbb EX_i^{bc}\le
  r\left(\frac{\kappa_1^4}{r}\right)^2
  =\frac{\kappa_1^8}{r}.
\tag{15}
\]
Also \(0\le X_i^{bc}\le1\), and these variables are independent over \(i\).
Apply scalar Bernstein with \(u=30\log r\). Since
\(\sqrt{2\mu u}\le\mu+u/2\), with failure at most \(r^{-30}\),
\[
  \sum_{i=1}^kX_i^{bc}
  \le2\kappa_1^8\frac{k}{r}+25\log r.
\tag{16}
\]
The same holds for \(ac\) and \(ab\). A union bound costs at most
\(3r^{-30}\le r^{-25}\). Summing the three estimates and using (13) proves
(12), for example with \(C_{\rm TC}(\kappa)=6\kappa_1^8+75\).
\(\square\)

### unit_004: proposition

**Proposition (off-component split and the \(k/r^2\) variance source).**
\(\label{prop:step-003-offblock-split}\)
Under the accepted dependencies and
Lemma~\(\ref{lem:step-003-angular-moments}\), let
\[
  \widetilde E=\widetilde J^*\widetilde J
   -\operatorname{diag}(\widetilde J_i^*\widetilde J_i).
\tag{17}
\]
Before quotient projection, the three same-mode blocks are
\[
  E^{aa}=
  \left((B_p^{\mathsf T}B_p)\circ(C_p^{\mathsf T}C_p)-I_k\right)
  \otimes I_r,
\tag{18}
\]
and its \(bb\) and \(cc\) analogues, where
\(B_p=[p_1^b\ \cdots\ p_k^b]\), and similarly in the other modes. For every
fixed component \(i\),
\[
  \sum_{j\ne i}
  \mathbb E[(b_{ij}c_{ij})^2\mid p_i^b,p_i^c,A,B,C]
  \le\kappa_1^8\frac{k-1}{r^2}.
\tag{19}
\]
The six cross-mode arrays include
\[
  (E^{ab})_{ij}=c_{ij}p_j^a(p_i^b)^{\mathsf T},\qquad
  (E^{ba})_{ij}=c_{ij}p_j^b(p_i^a)^{\mathsf T},
  \qquad i\ne j,
\tag{20}
\]
and the four analogous \(ac,ca,bc,cb\) arrays from (10).

**Proof / justification.** Formula (18) is the \(aa\) entry of (10), assembled
over components. Conditional on \(p_i^b,p_i^c\), component and mode
independence plus (4) give
\[
  \mathbb E[(b_{ij}c_{ij})^2\mid p_i^b,p_i^c,A,B,C]
  \le\frac{\kappa_1^4}{r}\frac{\kappa_1^4}{r},
\]
which proves (19). Formula (20) is the \(ab\) and \(ba\) part of (10).
Crucially,
\(\|(E^{ab})_{ij}\|_{\rm op}=|c_{ij}|\), whose squared mean is only
\(O_\kappa(1/r)\). The additional \(1/r\) needed by (TF) can arise only when
the random output vector \(p_j^a\) and input functional
\((p_i^b)^{\mathsf T}\) remain inside the operator-chaos calculation.
\(\square\)

### unit_005: lemma

**Lemma (required quotient Terracini-chaos concentration).**
\(\label{lem:step-003-terracini-chaos}\)
The target step requires a constant \(C_{\rm TF}(\kappa)\) such that, for every
\(t\ge1\) and \(r<k\le r^{5/4}\),
\[
\begin{aligned}
 &\mathbb P\left(
 \left\|\left(\bigoplus_i\Pi_i\right)\widetilde E
       \left(\bigoplus_i\Pi_i\right)\right\|_{\rm op}
 >C_{\rm TF}(\kappa)\left(\frac{\sqrt k}{r}+\sqrt{\frac tr}\right)
 \,\middle|\,A,B,C\right)\\
 &\hspace{8cm}\le Ce^{-t}.
\end{aligned}
\tag{21}
\]
Here \(\widetilde E\) is exactly (17), including (18) and all six arrays (20).

**Proof / justification.** Unresolved. Proposition~
\(\ref{prop:step-003-offblock-split}\) proves the exact algebra and the
same-mode \(k/r^2\) quadratic variance source, but not the operator norm. The
missing argument must be a leave-one-component-out decoupling or an equivalent
matrix-chaos estimate that preserves the random input and output directions in
(20). Neither accepted dependency contains such a theorem, and no cited
result has been restated with the exact anisotropic angular laws, quotient
projection, variance scale, and tail in (21).

Taking \(t=30\log r\) in (21) would give
\[
  C_{\rm TF}(\kappa)
  \left(r^{-3/8}+\sqrt{30\log r/r}\right)\le\frac12
\tag{22}
\]
for sufficiently large \(r\), by \(k\le r^{5/4}\). Because (21) is unproved,
(22) cannot be used. \(\square\)

### unit_006: proposition

**Proposition (raw tangent deficit conditional on the frame estimate).**
\(\label{prop:step-003-deficit-from-frame}\)
Under Assumption~\(\ref{assump:rank_window}\), accepted
Proposition~\(\ref{prop:step-002-exact-scale}\),
Proposition~\(\ref{prop:step-003-quotient}\), and
Lemma~\(\ref{lem:step-003-target-correlation}\), if (TF) holds, then for all
sufficiently large \(r\),
\[
  \|P_{\mathscr S_0}D_r\|_F^2\le\frac r2,\qquad
  \|P_{\mathscr S_0^\perp}D_r\|_F\ge\sqrt{\frac r2}.
\tag{23}
\]
Consequently
\[
  W_0=\frac{P_{\mathscr S_0^\perp}D_r}
  {\|P_{\mathscr S_0^\perp}D_r\|_F}
\tag{24}
\]
is a unit tensor orthogonal to \(\mathscr S_0\), and
\[
  \langle D_r-\widehat D_0,W_0\rangle
  \ge\sqrt{\frac r2}\ge\delta_0\|D_r\|_F,\qquad \delta_0=\frac18.
\tag{25}
\]

**Proof / justification.** Proposition~\(\ref{prop:step-003-quotient}\) gives
the block-diagonal lower bound \(I\). On (TF), Weyl's inequality gives
\(J^*J\succeq I/2\), hence \(\|(J^*J)^{-1}\|_{\rm op}\le2\). The projection
formula and (TC) imply
\[
\begin{aligned}
  \|P_{\mathscr S_0}D_r\|_F^2
  &=\langle J^*D_r,(J^*J)^{-1}J^*D_r\rangle\\
  &\le2C_{\rm TC}(\kappa)\left(\frac{k}{r}+\log r\right)\\
  &\le2C_{\rm TC}(\kappa)(r^{1/4}+\log r)\le\frac r2
\end{aligned}
\tag{26}
\]
after a finite threshold. Since \(\|D_r\|_F^2=r\), Pythagoras gives (23).
Also \(\widehat D_0\in\mathscr S_0\): each of its summands is a first-mode
tangent generator with \(u=\alpha_{i,0}\). Thus (24)--(25) follow. The exact
raw \(D_r\) and \(\widehat D_0\) are never normalized. \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-003-angular-moments}\) proves the exact independent
anisotropic angular laws and moments. Proposition~
\(\ref{prop:step-003-quotient}\) removes exactly the gauge kernel, proves the
within-block Gram interval \([1,3]\), identifies the raw tangent range, and
derives all off-component blocks. Lemma~
\(\ref{lem:step-003-target-correlation}\) completely proves (TC), including
the raw \(D_r\), scale \(k/r+\log r\), and failure \(r^{-25}\). Proposition~
\(\ref{prop:step-003-offblock-split}\) proves the same-mode structure and
\(k/r^2\) variance source and isolates the cross-mode operator chaoses.

The exact step does not close because Lemma~
\(\ref{lem:step-003-terracini-chaos}\) is unproved. If it were proved, (22)
would establish (TF), and Proposition~
\(\ref{prop:step-003-deficit-from-frame}\) would construct \(W_0\) and prove
\(\mathcal E_{\rm deficit}\). Failure \(r^{-25}\) for (21) plus the proved
\(r^{-25}\) for (TC) would give \(2r^{-25}\le r^{-20}\). Without the first
budget, neither (TF) nor the unconditional deficit event is claimed.

## Explicit Rate Audit

- Exposed variables: \(\kappa,r,k\), \(r<k\le r^{5/4}\), confidence powers
  \(20,25,30\), the (TF) scale
  \(\sqrt{k}/r+\sqrt{\log r/r}\), the (TC) scale \(k/r+\log r\), and
  \(\delta_0=1/8\).
- Hidden constants may depend on: only \(\kappa\), through
  \(\kappa_1=2\kappa^2\) and the conditioned angular moments.
- Hidden constants may not depend on: \(n,r,k\), the deterministic base triple,
  the realized triple in \(\mathcal E_{\rm cond}\), balancing radii, the
  normalized-Gram realization, or the GD horizon.
- Fixed quantities: \(\kappa\) and the setting's fixed \(q\) while
  \(r\to\infty\); the realized factors while taking conditional initialization
  probability.
- Probability mode: initialization-high-probability, uniformly conditional on
  every realized triple in \(\mathcal E_{\rm cond}\). (TC) has failure at most
  \(r^{-25}\); the desired (TF) budget is unresolved.
- Horizon mode: initialization only.
- Norm mode: Euclidean quotient-domain norms, Terracini-Gram operator norm,
  and tensor Frobenius norm.
- Admissibility conditions and auxiliary tolerances:
  \(r<k\le r^{5/4}\), \(u=30\log r\) in scalar Bernstein, and finite thresholds
  enforcing \(3r^{-30}\le r^{-25}\), (22), and (26).
- Term absorption or simplification inequalities:
  \[
    \sqrt{2\mu u}\le\mu+u/2,\qquad k/r\le r^{1/4},
  \]
  \[
    C_\kappa(\sqrt{k}/r+\sqrt{30\log r/r})\le1/2
  \]
  is valid for large \(r\) only after the unproved (21), while
  \[
    2C_{\rm TC}(\kappa)(r^{1/4}+\log r)\le r/2
  \]
  is the proved projection-energy absorption once (TF) is available.
- Probability conversion: the three (TC) pairs cost
  \(3r^{-30}\le r^{-25}\). A valid (TF) proof with cost \(r^{-25}\) would
  combine by a union bound to \(2r^{-25}\le r^{-20}\); no independence from
  (TC) or the normalized-Gram event is needed.
- Contribution to any Rate Specialization Bridge: this step is intended to
  supply the fourth initialization constituent used by `step_004`; that
  export is blocked only by (21).
- Baseline-reduction check: direction normalization changes only generator
  scales, so the tangent span remains exactly raw. Both (TC) and the deficit
  assembly use unscaled \(D_r\) and \(\widehat D_0\), preserving the
  arbitrary-large-\(n\) baseline.

## Blockers

1. **Failed local unit:** Lemma~
   \(\ref{lem:step-003-terracini-chaos}\) (`unit_005`) is unresolved. The
   exact missing interface is a uniform conditional
   leave-one-component-out decoupling/matrix-chaos inequality for
   \[
     (E^{ab})_{ij}=c_{ij}p_j^a(p_i^b)^{\mathsf T}
   \]
   and the other five cross-mode arrays, jointly with the same-mode
   pair-Gram deviations after quotient projection. It must prove (21),
   preserve variance \(k/r^2\), and avoid an extra
   \(\sqrt{\log r}\) multiplying \(\sqrt{k}/r\).
2. **Why current inputs do not discharge it:** `step_001` supplies
   conditioned singular values and `step_002` supplies the angular law and
   span identity, but neither supplies a Terracini operator-chaos theorem.
   Scalar block-norm Bernstein loses one angular factor and sees variance
   \(k/r\), which is insufficient at \(k=r^{5/4}\). No checked cited result
   with the exact anisotropic law and quotient interface has been supplied.
3. **Failed target assembly:** without (21), (TF) and the lower bound on
   \(J^*J\) are unavailable. Proposition~
   \(\ref{prop:step-003-deficit-from-frame}\) remains conditional, so \(W_0\)
   and \(\mathcal E_{\rm deficit}\) cannot be exported with failure
   \(r^{-20}\).

## Notation And Assumption Notes

- \(p_i^a,p_i^b,p_i^c\) are `appendix-local` objects defined from setting
  coefficient vectors. Their ACG representation and moments are proved in
  Lemma~\(\ref{lem:step-003-angular-moments}\); no generated Gram or radial
  event is conditioned upon.
- \(H_M,z_i^M\) are `proof-local` dependency objects translated from
  accepted Lemma~\(\ref{lem:step-002-balanced-gaussianization}\).
- \(\mathcal K_i,\mathcal H_i,\Pi_i,J_i,J\) are `appendix-local`
  quotient-frame objects. Their kernel, spectrum, range, and block formulas
  are proved in Proposition~\(\ref{prop:step-003-quotient}\).
- \(a_{ij},b_{ij},c_{ij}\), \(\widetilde E\), and its mode blocks are
  `proof-local` abbreviations for (10) and (17)--(20).
- \(C_{\rm TC}(\kappa)=6\kappa_1^8+75\) is an `appendix-local` proved
  constant. \(C_{\rm TF}(\kappa)\) occurs only inside the explicitly unresolved
  statement (21); it is not used as an established bounded quantity.
- \(W_0\) is the intended `public-facing` generated output. Here it is
  constructed only in a conditional proposition and is not exported because
  (TF) is missing.
- Assumption provenance: conditioning and Gaussianization are accepted derived
  outputs; angular moments, quotient geometry, (TC), and the off-block split
  are proved here; (TF) remains the named blocker and is not promoted to an
  assumption.
- Boundary cases: Gaussian coefficient images are nonzero almost surely. The
  quotient removes exactly two gauge directions. At \(k=r^{5/4}\), the
  intended (TF) scale is
  \(r^{-3/8}+\sqrt{\log r/r}=o(1)\), while the proved (TC) scale is
  \(r^{1/4}+\log r=o(r)\). The conditional normal margin
  \(\sqrt{r/2}\) is stronger than \(\delta_0\sqrt r\).
- The paired `global_proof.md` and `global_proof_review.md` were read only
  after confirming review status `ACCEPTED`. The diagnostic supplied
  planning context for the quotient and decoupling route only. It was not used
  as evidence, a cited result, an assumption source, or authority to change
  the target claim.
