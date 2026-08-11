# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 1

## Target Step Claim

On the generated invariant domain `T_parallel(rho_ALS)`, quotient active
factors by the positive product-one scaling action; define the canonical
equal-norm full state `e=(C_U,C_V,C_W,s)`, direction discrepancies `c_M`, and
`d_Q`; define solved-output maps `U_M^q`; define `R_s^M=Refresh_s^M` and the
exact chronology `e -> e_U -> e_V -> e_W`; prove every refreshed state is
quotient-equivalent to the corresponding literal ALS intermediate; prove the
sequential held-direction estimates; define `Psi^q(e)=e_W=(C_U^+,C_V^+,C_W^+,s_W^+)`; and establish

\[
 d_Q(\Psi^q(e),\Psi^q(\widetilde e))
 \le \ell d_Q(e,\widetilde e)<\tfrac1{16}d_Q(e,\widetilde e)
 <\tfrac14d_Q(e,\widetilde e),
 \qquad \ell=8q_*+32\rho_{\rm ALS}.
\]

The domain is the produced exact target-span tube, not the unrestricted
quotient ball.  No raw per-mode amplitude contraction and no intermediate
full-state contraction claim is made.  The dependencies are `step_001` and
`step_007b`; the assumptions used are `E_sm`, the derived
`E_parallel_entry`, and `assump:base-scale` only for the literal nonzero
scale convention.  The output targets are `E_basin_parallel`, the legal
chronological records `e_U,e_V,e_W`, and `\Psi^q`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions: `assump:base-scale`.  It supplies the finite,
  positive literal factor-scale convention in the procedure.  No condition
  on an arbitrary ALS trajectory is taken as primitive.
- Derived invariants supplied by accepted dependencies:
  - `E_sm` from `perspective_1/idea_6/proof_steps/step_001/proof.md`, frozen
    SHA-256 `d8a566c9d56d59699fc65dcc5cd79db0cea9ed2a73df7d703b2bc17aa25f407c`,
    with accepted review SHA-256
    `c4e9cd72ff31b4cbd021aa2f1674ccfa19dbf8cf070e6c46545558dd8ab50750`.
    In particular, the realized columns are unit, `q_real<=q_*`,
    `Gamma<=1.01`, and every target cyclic pair Gram has floor `1-q_*^2`.
  - `E_parallel_entry` from
    `perspective_1/idea_6/proof_steps/step_007b/proof.md`, frozen SHA-256
    `7c540efa61e1713c6260bbf7f66a1ab7b8d3b8038f7b81fd1baffa1995a8daf5`,
    with accepted review SHA-256
    `086c0e421f3526aa58142c5a7ebc3d82bb693a2d7ce1d682ff2fa10bb3750f2b`.
    Concretely, the dependency supplies the first-sweep state with
    `N_U=N_V=N_W=0`, `||e^1||_Q<=4096(omega+beta_perp)<rho_ALS/3`, and exact
    active/rank-`k` zero-padding equivalence.
- Local conditional hypotheses: a pair of canonical, oriented, nonzero
  active states in the exact target spans with `||e||_Q,||\widetilde e||_Q
  <=rho_ALS`.  This is used only inside the pairwise map estimate and is
  proved for the generated trajectory by the invariant unit below; it is not
  promoted to a theorem-facing assumption.

No archived attempt, prior idea branch, or unreviewed diagnostic statement is
used as proof evidence.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | In the fixed oriented chart, positive componentwise scalings with product one have a unique equal-norm representative, and the represented product `gamma_j` and direction coordinates are quotient invariants. | Defines the canonical full state and the legitimate gauge action. |
| `unit_002` | proposition | For any two held target-span direction matrices and any positive held scales, the exact ALS block solve has the displayed Khatri--Rao normal-equation form; after canonical balancing its direction and common-product output are independent of the incoming product register and of the replaced mode scale. | Defines `U_M^q` and proves exact scale equivariance/incoming-product cancellation. |
| `unit_003` | proposition | On the exact target-span tube, every held pair Gram has a `31/32` floor and the solved-output map is Lipschitz in the held direction fields with gain at most `11(q_*+2rho_ALS)`, which is below `ell`. | Supplies the sequential held-direction estimates, including coefficient, ambient-direction, and common-product coordinates. |
| `unit_004` | proposition | At the exact realized CP point, the differential kernel of the active synthesis map consists exactly of componentwise product-one scalings; hence the least-squares Hessian is nonsingular on the quotient. | Verifies the quotient-Hessian kernel requirement without using an external theorem. |
| `unit_005` | lemma | The literal U/V/W cyclic states and the refreshed canonical states are quotient-equivalent in chronological order; exact unfolding keeps every generated output in the target spans, and the intermediate states remain in the tube. | Proves `e -> e_U -> e_V -> e_W`, legality, and exact literal-orbit identity. |
| `unit_006` | claim | The completed map `Psi^q(e)=e_W` contracts by `ell<1/16<1/4`, preserves the generated domain, and packages `E_basin_parallel`; the orthogonal equal-weight stationary specialization is exactly fixed. | Closes the public step interface and baseline reduction. |

Atomic step = no.  The gauge identity, block normal equations, induced
resolvent estimate, quotient kernel, chronology/range invariant, and completed
map are independent nontrivial obligations.

## Cited Result Applications

### Accepted realized-geometry dependency

The accepted `step_001` result (Proposition~\ref{prop:step-001-smoothed-event})
is used in current notation as follows.  For `G_M` equal to the realized
`U,V,W` target matrices, each column is unit, every mode Gram
`H_M=G_M^T G_M` has off-diagonal row and column mass at most `q_*`,
`Gamma<=1.01`, and each direction-only target pair Gram
`J_{0,M}=H_{M'}\circ H_{M''}` has smallest eigenvalue at least
`1-q_*^2`.  These are generated conclusions of `E_sm`, not assumptions on a
generic point of the tube.

### Accepted first-sweep dependency

The accepted `step_007b` result (Claim~\ref{claim:step-007b-entry}) supplies
the actual selected representatives after the first literal cyclic sweep.
After the accepted permutation and orientation, all three perpendicular
fields vanish, the active rank-`k` update is exactly the active rank-`r`
update with frozen zero columns, and the canonical completed state `e^1`
satisfies
`||e^1||_Q<=4096(omega+beta_perp)<rho_ALS/3`.  The dependency also proves the
ordinary inverse branches needed for that entry.  We use this result only as
the produced entry interface, not as a premise for an arbitrary state.

### Elementary current-notation identities

For compatible matrices,

\[
 (A\odot B)^T(C\odot D)=(A^TC)\circ(B^TD),
 \qquad
 (A+E)^{-1}-A^{-1}=-A^{-1}E(A+E)^{-1},
\]

whenever the displayed inverses exist.  For a zero-padded design
`K_k=[K_a,0]`,

\[
 (K_k^T K_k)^\dagger
 =\operatorname{diag}((K_a^T K_a)^{-1},0)
\]

when the active Gram is nonsingular.  These identities are verified directly
in the derivation below.  No numerical or convergence conclusion is imported
from the Uschmajew citation mentioned in the sketch; the quotient and kernel
claims are proved here in the realized-factor notation.

## Local Derivation

### unit_001: lemma

**Lemma (canonical product-one quotient representative).**
\label{lem:step-008-canonical}

Under `assump:base-scale` and the accepted `E_sm` positivity conclusion, let
`X_M` be nonzero active columns in the fixed target-permutation/sign chart and
let
\[
 \gamma_j=\prod_{M\in\{U,V,W\}}\|X_M(:,j)\|_2>0.
\]
The positive componentwise action
`(D_U,D_V,D_W)` with `D_UD_VD_W=I` preserves every rank-one term.  Each
quotient orbit has the unique equal-norm representative
\[
 P_M\,\operatorname{diag}(\gamma_j^{1/3}),
 \qquad P_M(:,j)=X_M(:,j)/\|X_M(:,j)\|_2,
\]
with the fixed orientation.  On the generated target-span chart there are
unique matrices `C_M` such that `P_M=G_M(I+C_M)`, and the only represented
product coordinate is `s_j=\log(\gamma_j/\lambda_j)`.

**Proof / justification.**

For a positive scaling triple, the product of the three column scales is one,
so the rank-one tensor is unchanged and both the unit directions and
`gamma_j` are invariant.  Rescaling column `M` by
`gamma_j^{1/3}/||X_M(:,j)||_2` gives the displayed representative; the product
of the three rescaling factors is one.  If another representative has all
three norms equal, their common norm must have cube equal to `gamma_j`, so it
is the same representative.  The realized Gram floor from `E_sm` makes
`G_M` full column rank, hence `C_M=H_M^{-1}G_M^TP_M-I` is unique whenever the
column lies in the target span.  The logarithmic product coordinate is
therefore gauge invariant.  A pure product-one rescaling has zero change in
`(C_U,C_V,C_W,s)`.

### unit_002: proposition

**Proposition (exact scale-free normal-equation output).**
\label{prop:step-008-block-output}

Under `E_sm` and the canonical chart of Lemma~\ref{lem:step-008-canonical},
fix a solved mode `M` and held modes `A,B`.  Let
\[
 P_N=G_N(I+C_N),\quad
 A_N=G_N^TP_N,\quad B_N=P_N^TP_N,
\]
and define
\[
 Q=A_A\circ A_B,\qquad J=B_A\circ B_B.
\]
If `J` is nonsingular and the common held amplitude is
`R_s=\operatorname{diag}((\lambda_j e^{s_j})^{1/3})`, then the literal exact
mode-`M` solve is
\[
 X_M^+=G_M D_\lambda QJ^{-1}R_s^{-2},
 \qquad D_\lambda=\operatorname{diag}(\lambda_j).
\tag{2.1}
\]
Put
\[
 F=QJ^{-1},\quad Y=D_\lambda F D_\lambda^{-1},\quad
 \nu_j=\|G_MY(:,j)\|_2.
\]
After product-preserving canonical balancing, the solved direction and the
new common represented-product coordinate are
\[
 P_M^+=G_MY\operatorname{diag}(\nu_j^{-1}),
 \qquad s_{M,j}^+=\log\nu_j.
\tag{2.2}
\]
In particular, these outputs depend only on the two held directions; the
incoming `s` and all raw per-mode scales cancel.

We denote this direction/common-product output by
`{\cal U}_M^q(e)=(C_M^+,s_M^+)`, with the two held direction fields selected
according to the cyclic mode `M`.  It is a coordinate-output map, not a map
on raw factor amplitudes.

**Proof / justification.**

Write `K=(P_B\odot P_A)R_s^2`.  The Khatri--Rao identity gives
`K^TK=R_s^2JR_s^2`.  The exact tensor unfolding gives
\[
 T_{(M)}K=G_M D_\lambda Q R_s^2.
\]
Multiplying by `(K^TK)^{-1}=R_s^{-2}J^{-1}R_s^{-2}` proves (2.1).  The
represented product in column `j` after this solve is
\[
 \|G_MD_\lambda F(:,j)\|_2\,R_s(j,j)^2
 =\lambda_j\|G_MY(:,j)\|_2=\lambda_j\nu_j.
\]
Dividing the solved column by its norm gives (2.2), and balancing all three
columns to the cube root of this product uses a product-one scaling triple.
The same cancellation holds for arbitrary positive held amplitude diagonals,
so it is exact block-scale equivariance, not a perturbative scale estimate.

### unit_003: proposition

**Proposition (target-span held-input estimate).**
\label{prop:step-008-held-estimate}

Let `rho=rho_ALS=1/1024`, `q=q_*=1/4096`, and
`m=q+2rho=9/4096`.  Suppose two canonical target-span direction pairs
`(P_A,P_B)` and `(\widetilde P_A,\widetilde P_B)` have unit columns and
\[
 P_N=G_N(I+C_N),\quad
 \widetilde P_N=G_N(I+\widetilde C_N),\quad
 \|e\|_Q,\|\widetilde e\|_Q\le\rho.
\]
Set
\[
 D_h=\max\{c_A(P_A,\widetilde P_A),c_B(P_B,\widetilde P_B)\}.
\]
If the block inverses are formed on these states, their outputs from
Proposition~\ref{prop:step-008-block-output} obey
\[
 \max\left\{
 \|C_M^+-\widetilde C_M^+\|_{\rm row,1},
 \|C_M^+-\widetilde C_M^+\|_{\rm col,1},
 \max_j\|G_M(C_M^+-\widetilde C_M^+)(:,j)\|_2,
 \|s_M^+-\widetilde s_M^+\|_\infty
 \right\}
 \le 11mD_h
 <\ell D_h,
\tag{3.1}
\]
where `ell=8q+32rho=136/4096<1/16`.

**Proof / justification.**

Let `H_N=G_N^TG_N`, `h=1+q`, and for one held direction put
`A_N=G_N^TP_N`, `B_N=P_N^TP_N`, and `E_N=B_N-A_N`.
Because both `G_N(:,j)` and `P_N(:,j)` are unit and
`||G_NC_N(:,j)||_2<=rho`,
\[
 \max_{j\ne l}|(A_N)_{jl}|\le q+rho\le m,
 \quad
 \max_{j\ne l}|(B_N)_{jl}|
 \le q+2rho=m,
\tag{3.2}
\]
where the second inequality follows by writing
`<p_j,p_l>-<g_j,g_l>=<p_j-g_j,p_l>+<g_j,p_l-g_l>`.
Moreover,
\[
 \|E_N\|_{\rm rc}\le h(1+rho)rho,
 \quad |(E_N)_{jj}|=\tfrac12\|P_N(:,j)-G_N(:,j)\|_2^2\le\rho^2/2,
 \quad \max_{j\ne l}|(E_N)_{jl}|\le rho.
\tag{3.3}
\]
For two states, writing `Delta` for subtraction from the tilded state,
\[
 \|\Delta E_N\|_{\rm rc}\le h(1+2rho)D_h,
 \quad \max_j|\Delta E_{N,jj}|\le rho D_h,
 \quad
 \|\Delta B_N\|_{\rm rc}\le2h(1+rho)D_h,
 \quad (\Delta B_N)_{jj}=0.
\tag{3.4}
\]
These follow by expanding
`E_N=C_N^TH_N(I+C_N)` and
`B_N=(I+C_N)^TH_N(I+C_N)`; the ambient-column part of `c_N` gives the
displayed diagonal bounds without an extra rank factor.

The target direction pair Gram is `J_0=H_A\circ H_B`.  Since
`D_N:=B_N-H_N` has zero diagonal and `||D_N||_{rc}<3rho`, (3.2) and the
Hadamard row/column inequalities give
\[
 \|J-J_0\|_{\rm rc}\le6m\rho,
 \qquad \|J-I\|_{\rm rc}\le q^2+6m\rho<1/32.
\tag{3.5}
\]
The accepted target floor and symmetric spectral domination therefore imply
`lambda_min(J)>31/32`, while the induced Neumann series gives
`||J^{-1}||_{rc}<=32/31`.

The key cancellation is
\[
 K:=Q-J=-\{E_A\circ B_B+A_A\circ E_B\}.
\tag{3.6}
\]
Using (3.2)--(3.4), and treating the diagonal terms separately, gives
\[
 \|K\|_{\rm rc}<3m\rho,
 \qquad \|\Delta K\|_{\rm rc}\le5mD_h,
 \qquad \|\Delta J\|_{\rm rc}\le5mD_h.
\tag{3.7}
\]
For completeness, the two difference terms in (3.6) are bounded by
\[
 \begin{aligned}
 \|\Delta(E_A\circ B_B)\|_{\rm rc}
 &\le [h(1+2rho)+\rho/m+2h(1+rho)\rho/m],mD_h
 <\tfrac52mD_h,\\
 \|\Delta(A_A\circ E_B)\|_{\rm rc}
 &\le [h\rho/m+h(1+2rho)+\rho/m],mD_h
 <2mD_h.
 \end{aligned}
\tag{3.8}
\]
Here `rho/m=4/9`; the numerical inequalities use `q=1/4096` and
`rho=1/1024`.  The bound on `Delta J` uses
`Delta J=Delta B_A\circ B_B+\widetilde B_A\circ Delta B_B` and the
zero diagonals in (3.4).  The size bound in (3.7) follows similarly from
`h(1+rho)rho` and `rho^2/2`.

Since `F=I+KJ^{-1}`, the resolvent identity yields
\[
 \|\Delta F\|_{\rm rc}
 \le {32\over31}(5mD_h)
 + (3m\rho)\left({32\over31}\right)^2(5mD_h)
 <5.2mD_h.
\tag{3.9}
\]
Diagonal similarity by `D_lambda` costs at most `Gamma<=1.01`, so
\[
 \|\Delta Y\|_{\rm rc}<5.25mD_h,
 \qquad \|Y-I\|_{\rm rc}<4m\rho.
\tag{3.10}
\]
The latter bound also follows from `||K||_{rc}<3m\rho` and the same inverse
bound.  Put `theta=4m\rho<10^{-3}`.  Then every `nu_j` lies in
`[1-theta,1+theta]`, and
`|nu_j-\widetilde nu_j|<=||G_M(Y-\widetilde Y)(:,j)||_2`.
For `C_M^+=Y\operatorname{diag}(nu^{-1})-I`,
\[
 \|\Delta C_M^+\|_{\rm row,1}\vee
 \|\Delta C_M^+\|_{\rm col,1}
 \le {2\over(1-theta)^2}\|\Delta Y\|_{\rm rc}<11mD_h,
\tag{3.11}
\]
and the same columnwise calculation gives
`max_j||G_M\Delta C_M^+(:,j)||_2<11mD_h`.  Finally,
\[
 \|\Delta s_M^+\|_\infty
 \le {1\over1-theta}\max_j|nu_j-\widetilde nu_j|
 <11mD_h.
\tag{3.12}
\]
Since `11m=99/4096<136/4096=ell`, (3.1) follows.  This is a held-input
estimate only; it does not assert contraction of a raw mode amplitude or of
the full intermediate state.

### unit_004: proposition

**Proposition (kernel of the exact CP differential modulo scaling).**
\label{prop:step-008-quotient-kernel}

Under `E_sm`, at the exact balanced factors
`X_M^*=G_M\operatorname{diag}(\lambda_j^{1/3})`, the kernel of the
differential of
\[
 \Phi(X_U,X_V,X_W)=\sum_jX_U(:,j)\otimes X_V(:,j)\otimes X_W(:,j)
\]
is exactly
\[
 \delta X_M(:,j)=a_{M,j}X_M^*(:,j),
 \qquad a_{U,j}+a_{V,j}+a_{W,j}=0.
\tag{4.1}
\]
Consequently the Hessian of the exact least-squares loss is nonsingular on
the positive product-one quotient tangent space.

**Proof / justification.**

The matrices `G_M` have full column rank by the accepted Gram bound.  Let
`L_M=G_M(H_M)^{-1}`; then `L_M^TG_M=I`.  Contract a zero differential
`D\Phi[\delta X]` in modes `V,W` with `L_{V,j}` and `L_{W,j}`, and project
the remaining U vector orthogonally to `range(G_U)`.  Only the U perturbation
of component `j` survives, so its perpendicular part is zero.  Repeating
cyclically puts every perturbation in the corresponding target span.

Write the remaining perturbation as
`delta X_M(:,j)=lambda_j^(1/3)G_M a_M(:,j)`.  The tensor products generated
by the three modes are linearly independent because every `G_M` has full
column rank.  For `a\ne j`, the coefficient of
`g_{U,a}\otimes g_{V,j}\otimes g_{W,j}` is only
`lambda_j a_{U}(a,j)`, hence it vanishes; the analogous argument handles the
V and W off-diagonal coefficients.  The coefficient of
`g_{U,j}\otimes g_{V,j}\otimes g_{W,j}` is
`lambda_j(a_U(j,j)+a_V(j,j)+a_W(j,j))`, giving (4.1).  These are precisely
the infinitesimal positive product-one scalings.  At an exact fit the loss
Hessian is `D\Phi^*D\Phi`, so its kernel is the same; restricting to any
complement of (4.1) makes it nonsingular.

### unit_005: lemma

**Lemma (chronological refresh, exact span, and literal-orbit identity).**
\label{lem:step-008-chronology}

Define the generated domain
\[
 \mathcal T_{\parallel}(\rho):=\left\{
 e=(C_U,C_V,C_W,s):\ \|e\|_Q\le\rho,\quad
 P_M=G_M(I+C_M)\text{ has unit oriented columns, and }
 (I-G_MH_M^{-1}G_M^T)P_M=0\ \forall M
 \right\},
\tag{5.1}
\]
with `rho=rho_ALS`.  For `e\in\mathcal T_{\parallel}(rho)`, define
the refresh operators
\[
 \begin{aligned}
 {\rm Refresh}_s^U(e;C',s')&=(C',C_V,C_W,s'),\\
 {\rm Refresh}_s^V(e;C',s')&=(C_U,C',C_W,s'),\\
 {\rm Refresh}_s^W(e;C',s')&=(C_U,C_V,C',s').
 \end{aligned}
 \tag{5.1a}
\]
We write these operators as `R_s^U,R_s^V,R_s^W`, respectively.  They
replace one direction field and overwrite the single common product
register.  The full-state discrepancies are
\[
 c_M(e,\widetilde e)=\max\left\{
 \|C_M-\widetilde C_M\|_{\rm row,1},
 \|C_M-\widetilde C_M\|_{\rm col,1},
 \max_j\|G_M(C_M-\widetilde C_M)(:,j)\|_2\right\},
\]
\[
 d_Q(e,\widetilde e)=\max\{c_U(e,\widetilde e),c_V(e,\widetilde e),
 c_W(e,\widetilde e),\|s-\widetilde s\|_\infty\},
 \qquad \|e\|_Q=d_Q(e,0).
 \tag{5.1b}
\]
Here each `c_M` is the displayed maximum for mode `M`.
\[
 (C_U^+,s_U^+)={\cal U}_U^q(e),\quad
 e_U={\rm Refresh}_s^U(e;C_U^+,s_U^+)=(C_U^+,C_V,C_W,s_U^+),
\]
\[
 (C_V^+,s_V^+)={\cal U}_V^q(e_U),\quad
 e_V={\rm Refresh}_s^V(e_U;C_V^+,s_V^+)=(C_U^+,C_V^+,C_W,s_V^+),
\]
\[
 (C_W^+,s_W^+)={\cal U}_W^q(e_V),\quad
 e_W={\rm Refresh}_s^W(e_V;C_W^+,s_W^+)=(C_U^+,C_V^+,C_W^+,s_W^+).
\tag{5.2}
\]
Then all three solves and refreshes are legal, every refreshed state is the
canonical representative of the corresponding literal ALS intermediate,
and `e_U,e_V,e_W` belong to `\mathcal T_{\parallel}(rho)`.  For two domain
states, with `D=d_Q(e,\widetilde e)`, the solved-output estimates are
\[
 \max\{c_U^+,\|s_U^+-\widetilde s_U^+\|_\infty\}\le\ell D,
\]
\[
 \max\{c_V^+,\|s_V^+-\widetilde s_V^+\|_\infty\}\le\ell D,
 \qquad
 \max\{c_W^+,\|s_W^+-\widetilde s_W^+\|_\infty\}\le\ell^2D,
\tag{5.3}
\]
where each `c_M^+` denotes the three direction components of the indicated
new output difference, not a raw factor-amplitude difference.

**Proof / justification.**

For a state in (5.1), the held pair Gram satisfies (3.5), so each inverse
exists before its solve and the output has `nu_j>0`.  Formula (2.1) and the
exact unfolding
\[
 T_{(M)}=G_MD_\lambda(G_{M''}\odot G_{M'})^T
\tag{5.4}
\]
show that every newly solved active column lies in `range(G_M)`.  Unit
normalization therefore keeps it in the chart.  The zero-padded rank-`k`
design has block Gram `diag(K_a^TK_a,0)` and its Moore--Penrose update is
exactly the active update followed by zero columns, as in the accepted
`step_007b` interface.

It remains to verify the quotient chronology.  If the literal U solve has
new mode-column norms `a_U^+` and held norms `a_V,a_W`, its represented
product is `a_{U,j}^+a_{V,j}a_{W,j}=lambda_j e^{s_{U,j}^+}` by (2.2).  Scaling
the three columns to the common norm
`(lambda_j e^{s_{U,j}^+})^{1/3}` has scale product one, so `e_U` is exactly
the U-intermediate orbit.  The identical argument at V and W gives `e_V`
and `e_W`; the old `s_U^+` is overwritten by `s_V^+`, and then by `s_W^+`.
Thus no historical product coordinate is carried into the completed state.

For one state compared with the exact target, Proposition~\ref{prop:step-008-held-estimate}
gives a new output of size at most `ell rho` whenever the two held fields are
in the tube.  The two held fields remain at most `rho`, so after U the full
record has norm at most `rho`; the same argument applies at V and W.  Exact
range containment proves the span part of (5.1), so the domain is invariant.
For two states, U sees the old V,W fields and hence its output is at most
`ell D`.  V sees U's newly solved field and the old W field, so its output is
also at most `ell D`; W sees two newly solved fields and is at most
`ell^2D`.  This proves (5.3).  We make no assertion that `e_U` or `e_V` as
full states contracts by `ell`; only their legality and the indicated
held-input output bounds are used.

### unit_006: claim

**Claim (invariant quotient basin and completed full-sweep map).**
\label{claim:step-008-basin}

On `\mathcal T_{\parallel}(rho_ALS)`, define
\[
 \Psi^q(e):=e_W=(C_U^+,C_V^+,C_W^+,s_W^+).
\tag{6.1}
\]
Then
\[
 d_Q(\Psi^q(e),\Psi^q(\widetilde e))
 \le\ell d_Q(e,\widetilde e),
 \qquad
 \ell=8q_*+32rho_{\rm ALS}=17/512<1/16<1/4.
\tag{6.2}
\]
The map preserves `\mathcal T_{\parallel}(rho_ALS)`, its intermediate states
are the literal cyclic ALS quotient states, and the exact target is a fixed
point.  The accepted `E_parallel_entry` state belongs to this domain.

**Proof / justification.**

The completed state has U and V output discrepancies at most `ell D`, W and
the surviving common register at most `ell^2D` by Lemma~\ref{lem:step-008-chronology}.
Taking their maximum proves the first inequality in (6.2).  Numerically,
`q_*=1/4096` and `rho_ALS=1/1024` give
`ell=(8+128)/4096=17/512<1/16`; the weaker `<1/4` is the advertised public
contraction.  Applying (6.2) with the second argument equal to the exact
target gives
`||Psi^q(e)||_Q<=ell||e||_Q<=rho_ALS`, so the domain is invariant.  The
accepted first-sweep dependency gives exact target-span membership and
`||e^1||_Q<rho_ALS/3`, hence supplies the actual entry rather than an
unproved basin premise.  At `C_U=C_V=C_W=0,s=0`, one has `Q=J=J_0`,
`Y=I`, `nu_j=1`, and every refresh writes `s=0`; therefore the target is a
fixed point.  Proposition~\ref{prop:step-008-quotient-kernel} supplies the
nonsingular-Hessian-modulo-scaling part of the basin interface.

## Target-Step Assembly

Lemma~\ref{lem:step-008-canonical} establishes the positive product-one
quotient and the unique equal-norm full state with one gauge-invariant product
register.  Proposition~\ref{prop:step-008-block-output} derives the exact
normal equations from the literal ALS update, proves the represented-product
identity, and shows that the incoming common product and all replaced-mode
scales cancel.  Proposition~\ref{prop:step-008-held-estimate} uses only the
accepted realized Gram bounds and the exact target-span condition to prove the
three inverse branches, the normalized direction/common-product held-input
estimate, and the explicit `11m<ell` numerical margin.  Proposition~\ref{prop:step-008-quotient-kernel}
identifies the only differential kernel as product-one scaling, so the active
Hessian is nonsingular on the quotient.

Lemma~\ref{lem:step-008-chronology} then applies the output maps in literal
U/V/W order, overwriting the one common `s` register at each refresh.  Exact
unfolding gives target-span invariance and the accepted zero-padding identity;
the canonical states are therefore representatives of the actual literal
ALS orbit at every intermediate.  The U, V, and W held-input bounds compose
chronologically.  Claim~\ref{claim:step-008-basin} packages the legal
completed state `e_W` as `Psi^q`, proves the exact sketch-row contraction and
the generated invariant domain, and consumes the accepted first-sweep entry.
No statement is made about an unrestricted quotient tube, raw per-mode
amplitudes, or contraction of an intermediate full state.

## Explicit Rate Audit

- Exposed variables: `q_*`, `rho_ALS`, `Gamma`, the target Gram row/column
  masses, the quotient distance `d_Q`, and the one-sweep horizon.  The
  realized rank `r` appears only through the induced norms; no hidden rank
  factor is introduced.
- Hidden constants may depend on: universal numerical algebraic constants and
  the fixed values `q_*=1/4096`, `rho_ALS=1/1024` only.
- Hidden constants may not depend on: `n`, `k`, `kappa_0`, `rho`, the base
  triple, either confidence parameter, `epsilon`, a target label, or a
  generated condition number.
- Fixed quantities: `rho_ALS=1/1024` and the accepted target pair floor are
  inherited from `step_007b`; then `m=q_*+2rho_ALS=9/4096` and
  `ell=8q_*+32rho_ALS=17/512` are defined here.
- Probability mode: deterministic conditional on the accepted `E_sm` and
  `E_parallel_entry`; this step adds no probability loss or confidence union.
- Horizon mode: one cyclic U/V/W sweep for the map and a geometric recurrence
  for later sweeps; no additive forcing is accumulated after exact-span entry.
- Norm mode: induced row/column l1 norms for coefficient and Gram matrices,
  Euclidean target-direction column norms, infinity norm for the common
  represented-product register, and the setting quotient metric `d_Q`.
- Admissibility conditions and auxiliary tolerances: `r>=3`, `q_real<=q_*`,
  `Gamma<=1.01`, the setting `rho_ALS`, and the generated exact-span entry;
  the last item is proved by `step_007b`, not assumed.
- Term absorption/simplification: equations (3.5), (3.7)--(3.12) show the
  diagonal cancellation, `31/32` inverse margin, `Gamma` similarity cost,
  normalization cost, and `11m<ell` bridge explicitly.
- Probability conversion: none in this step.
- Contribution to a rate specialization bridge: supplies the invariant
  target-span quotient recurrence and the legal completed common-register
  state consumed by `step_009`; it does not alter the original Frobenius loss.
- Baseline reduction: for the deterministic orthogonal equal-weight
  stationary specialization, `H_M=I`, `J=I`, `Y=I`, `s_M^+=0`, and
  `Psi^q(0)=0`.  This is an algebraic stationary statement; it does not
  declare a finite nonstationary certificate transient exact.

## Blockers

None.

## Notation And Assumption Notes

- `H_M=G_M^TG_M`, `A_M`, `B_M`, `E_M`, `Q`, `J`, `K`, `F`, `Y`, and `nu` are
  `proof-local` or `appendix-local` current-branch objects defined above;
  none is a new theorem-facing assumption.  `D_lambda` and the canonical
  `R_s` are setting-derived expressions.
- `c_M` and `d_Q` are the setting-defined quotient discrepancies.  The
  domain `T_parallel(rho_ALS)` is a `public-facing` generated trajectory
  interface, while its projector equation is proved by exact range
  containment in Lemma~\ref{lem:step-008-chronology}; it is not primitive.
- `rho_ALS`, `m`, `ell`, `theta`, and all inverse floors are fixed or proved
  numerical quantities.  Their provenance is the setting definition,
  accepted `E_sm`, and Proposition~\ref{prop:step-008-held-estimate}; no free
  bounded constant is introduced.
- `U_M^q`, `Refresh_s^M`, `e_U,e_V,e_W`, and `Psi^q` are the minimal
  `public-facing` chronological interfaces requested by the sketch.  Raw
  per-mode factor amplitudes and historical `s_U^+,s_V^+` fields
  are `proof-local` and are never exported as simultaneous state coordinates.
- The local pairwise statements use domain membership as a conditional
  hypothesis.  Lemma~\ref{lem:step-008-chronology} proves membership for the
  generated trajectory, and Claim~\ref{claim:step-008-basin} discharges it in
  the target assembly.
- The accepted paired `global_proof.md`/`global_proof_review.md` was inspected
  only for planning.  Its step-relevant guidance was to retain the exact
  target-span domain, use one overwritten common product register, and avoid
  the old unrestricted-tube claim.  The diagnostic was not used as evidence,
  a cited result, an assumption source, or authority to change the sketch row.
