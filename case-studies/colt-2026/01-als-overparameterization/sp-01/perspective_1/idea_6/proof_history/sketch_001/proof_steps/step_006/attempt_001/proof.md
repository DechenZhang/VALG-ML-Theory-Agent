# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1

## Target Step Claim

- Intended claim: From the selected-state equation, close the
  dual-coordinate column bootstrap by the explicit quadratic small-root
  inequality; derive per-entry projected residual `<=2 tau_r`, induced
  row/column residual masses `<=2r tau_r`, then close induced coefficient row
  and column l1 masses `O(q_*^2+r tau_r)`.
- Dependencies: `step_004`, `step_005` (and the accepted
  `E_cert_eq` interface from `step_004b`, consumed through `step_005`).
- Assumptions used: `E_sm`, `E_cert_tail`, `E_support_wt`, `E_cluster`, and
  `E_cert_eq` (all derived).
- Technical challenge: diagonal normalization, dual projection, small-root
  selection, per-entry residual conversion, and spatial row closure.
- Intended proof tool or cited result: exact dual-basis algebra, unit-norm
  identity, Hadamard l1 inequalities, and explicit root/absorption
  arithmetic.
- Output target: `E_col`, `E_row_residual`, and `E_row`.
- Rate objective: expose
  `omega=q_*^2+r tau_r`, `chi_-`, the per-entry `tau_r` scale, and the
  induced row/column bounds with no hidden `r^2 tau_r` charge.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - None beyond the setting definitions `r>=3`,
    `q_*=1/4096`, and `tau_r=q_*^2/(10^4 r)`. These are fixed numerical
    definitions, not generated trajectory conditions.
- Derived invariants supplied by accepted dependencies:
  - Accepted `step_004` proof/review (proof SHA-256
    `3c94965198445dfdeb99ea5e46539168f7f3f2f18f0b33a4c3a05d623672f24e`,
    review SHA-256
    `e06115cb6a90a29a481ea0a736ee07b054872a807e98436a2a64bac0efc47f95`)
    supplies `E_sm`, hence unit realized columns, symmetric realized Gram
    matrices `H_M` with both off-diagonal induced masses at most
    `q:=q_real<=q_*`, `Gamma<=1.01`, and the nonzero geometry used below.
    It also supplies `E_cert` and the same-state storage interface through
    its accepted certificate proposition.
  - Accepted `step_004b` proof/review (proof SHA-256
    `23224db02dc7379564f947f410d0b325ce086673567bdec489e87f32fde55339`,
    review SHA-256
    `07cdd936f91f243cbf983c3bf22b8081cf9e9d19569adfac97632ea93fea12c6`)
    supplies the exact same-state raw equation and its proof-only barred
    post-score form. For every stored certified column, its certificate
    residual has Euclidean norm at most `d_{M,j} tau_r`, and its dual
    decomposition has a perpendicular part of norm at most `tau_r`.
  - Accepted `step_005` proof/review (proof SHA-256
    `e6ed7fde93e2f31d0907174c9c1bca93260ba902da11681474dce0deb2e257e9`,
    review SHA-256
    `c1011300ce700063a58c2b8143e945f1fe9710183b650ffb7a22f4b4f2612ce5`)
    supplies the retained singleton pool, the proof-only target permutation,
    the oriented barred representatives, the exact barred same-state
    equation, the dual off-target column mass
    `chi_dual=a_cert+4q_*<1/256`, and
    `31/32 <= d_{M,j}/lambda_j <= 33/32` for every selected column.
    It also supplies `E_support_wt` and `E_cluster`, so this relabeling is
    a proof-only permutation of the selected columns and does not add an
    observable assumption.
- Local conditional hypotheses:
  - None. We condition pathwise on the derived event chain and on the
    finite selected pool. No basin, recurrence, row bound, or generated
    conditioning event is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under the accepted `E_sm`, `E_cert_eq`, `E_cluster`, and `E_gauge` outputs, after the proof-only target permutation the selected dual matrix `B_M` has a positive diagonal, an off-diagonal column mass `chi<1/256`, and the exact projected normal equation. Its unit-norm identity gives `|B_M(j,j)-1| <= 2(q+chi)chi+2 tau_r^2`, and the off-target columns of `H_MB_M` have l1 mass at most `q_*+2chi+2q_*^2`. | Supplies the normalized diagonal and factor-column controls used in the root inequality. |
| `unit_002` | lemma | Under the accepted certificate residual and realized Gram bounds, the normalized projected residual `Z_M=L_M^T\bar R_M diag(lambda)^{-1}` obeys `|Z_M(ell,j)|<=2 tau_r` for every entry, and both its induced row and column l1 masses are at most `2r tau_r`. | Supplies the exact residual-to-target transfer without an `r^2 tau_r` loss. |
| `unit_003` | proposition | The off-diagonal dual column mass `chi` satisfies `chi <= 4(q_*+2chi+2q_*^2)^2+4r tau_r`. The small-root branch selected by `chi<1/256` obeys `chi<=32 omega`, where `omega=q_*^2+r tau_r`. The full dual coefficient column error is at most `64 omega`. | Produces `E_col` by explicit quadratic root selection. |
| `unit_004` | proposition | If `eta_hat_row` is the maximum off-diagonal row mass of `B_M-I`, then `eta_hat_row <= 4(q_*+2chi+2q_*^2)(q_*+2eta_hat_row+2q_*^2)+4r tau_r`; the self coefficient is below `1/8`, so the full induced row error is at most `128 omega`. | Produces `E_row` by a noncircular spatial absorption after `E_col`. |
| `unit_005` | claim | The three outputs are finite selected-state derived interfaces, have the stated producer-consumer order, and preserve the exact orthogonal equal-weight stationary baseline (`B_M=I`, `Z_M=0`) rather than replacing it by a tolerance floor. | Closes scope, provenance, accumulation, and baseline obligations. |

Atomic step = no. Diagonal normalization, residual transfer, column root
selection, and row absorption are independent nontrivial claims.

## Cited Result Applications

### Accepted dependency: certified same-state equation and dual decomposition

- Source: accepted `step_004b` raw/barred equation and dual-decomposition
  lemmas, consumed through `E_cert_eq` and `E_gauge` in `step_005`.
- Restated statement in current notation: for a stored certified state,
  after the score-sign and product-preserving proof-only orientation,
  
  \[
  \bar P_M D_M
    =G_M\,\operatorname{diag}(\lambda)
      \bigl((G_{M'}^T\bar P_{M'})\circ
            (G_{M''}^T\bar P_{M''})\bigr)+\bar R_M,
  \tag{1}
  \]
  
  with `d_{M,j}>0` and
  `||\bar R_M(:,j)||_2<=d_{M,j}tau_r`. Writing
  `H_M=G_M^TG_M`, `L_M=G_MH_M^{-1}`, and
  `B_M=L_M^T\bar P_M`, the accepted dual decomposition also gives
  `\bar P_M=G_MB_M+N_M`, `G_M^TN_M=0`, and
  `||N_M(:,j)||_2<=tau_r`.
- Object mapping: `G_M` is the realized target matrix from `setting.md`,
  `\bar P_M` is the oriented selected representative matrix from `step_005`,
  and all columns in the pair coefficient are from that same selected state.
- Assumption discharge: the equation, residual budget, and perpendicular
  bound are generated by `E_cert` and the accepted `step_004b` proof; no
  certificate property is assumed locally.
- Conclusion used: (1), the exact same-state pairing, and the two residual
  norms are used in units 001--004.

### Accepted dependency: selected chart, permutation, and denominator

- Source: accepted `step_005` chart/denominator lemma, cluster proposition,
  and gauge lemma.
- Restated statement in current notation: the observable graph has exactly
  `r` components; a proof-only permutation makes selected column `j` belong
  to target `j`; after orientation, `B_M(j,j)>0`,
  `||B_M(:,j)-B_M(j,j)\mathbf e_j||_1<1/256`, and
  `31/32<=d_{M,j}/lambda_j<=33/32`. The barred equation (1) holds with
  the oriented matrices.
- Object mapping: the permutation and bars are not algorithmic operations;
  they only reorder and sign-copy the finite selected pool. The matrix
  `B_M` below is exactly `L_M^T` applied to those bars.
- Assumption discharge: `E_support_wt`, `E_cluster`, `E_gauge`, and the
  denominator margins are accepted generated outputs of `step_005`.
- Conclusion used: positivity of the diagonal, the initial small branch,
  and the denominator floor in the off-diagonal equation.

### Accepted dependency: realized Gram geometry

- Source: `E_sm` from accepted `step_004`.
- Restated statement: each `H_M` is symmetric with diagonal one and
  `||H_M-I||_1,||H_M-I||_\infty<=q<=q_*`; hence
  `H_M` is positive definite, `||H_M^{-1}||_2<=1/(1-q_*)`, and
  `||L_M(:,ell)||_2^2=(H_M^{-1})_{ell,ell}<=1/(1-q_*)`.
- Assumption discharge: these are generated conclusions of `E_sm`; the
  smoothing primitive assumptions were discharged in accepted `step_001`
  and are not reintroduced here.
- Conclusion used: inverse and row/column Gram bounds in all local units.

### Elementary current-notation inequalities

- For a symmetric matrix, `||A||_2<=sqrt(||A||_1||A||_infty)`; for the
  accepted `H_M-I`, this gives `||H_M-I||_2<=q`.
- If `e` has l1 norm at most `x`, then
  `||(H_M-I)e||_1<=q x`, and the off-diagonal row/column masses of `H_M`
  are at most `q`. These follow directly from induced norms.
- For finite nonnegative sequences,
  `sum_i |a_i b_i| <= (sum_i|a_i|)(sum_i|b_i|)`; this is the l1 Hadamard
  bound used in the column and row closures.

### Local result interfaces used later

- `Lemma~\ref{lem:step-006-normalized-column}` (unit_001) gives the
  positive diagonal, the diagonal defect bound, and the factor-column mass
  `t_col<=q_*+2chi+2q_*^2`.
- `Lemma~\ref{lem:step-006-residual-transfer}` (unit_002) gives the
  entrywise `2tau_r` residual and both `2r tau_r` induced masses.
- `Proposition~\ref{prop:step-006-column-root}` (unit_003) gives
  `chi<=32omega` and `||B_M-I||_col,1<=64omega`.
- `Proposition~\ref{prop:step-006-row-closure}` (unit_004) gives
  `||B_M-I||_row,1<=128omega`.

## Local Derivation

### unit_001: lemma

**Lemma (normalized selected-state column and factor control).**
\label{lem:step-006-normalized-column}

Under the accepted `E_sm`, `E_cert_eq`, `E_cluster`, and `E_gauge` outputs,
fix a selected representative and apply the proof-only target permutation,
so column `j` is paired with `lambda_j`. For each mode let

\[
H_M=G_M^TG_M,\qquad L_M=G_MH_M^{-1},\qquad
B_M=L_M^T\bar P_M=A_M+E_M,
\]

where `A_M=diag(B_M)` and `E_M` has zero diagonal. Put
`chi=max_M||E_M||_{col,1}`. Then `chi<1/256`, every diagonal entry
`a_{M,j}:=B_M(j,j)` is positive, and, with
`N_M=\bar P_M-G_MB_M`,

\[
G_M^TN_M=0,
\qquad
1= B_M(:,j)^TH_MB_M(:,j)+\|N_M(:,j)\|_2^2,
\tag{2}
\]

\[
|a_{M,j}-1|
 \le 2(q+\chi)\chi+2\tau_r^2\le q_*.
\tag{3}
\]

Consequently, if
\[
t_{\rm col}:=\max_{M,j}\sum_{ell\ne j}
  |(H_MB_M)_{ell,j}|,
\]
then
\[
t_{\rm col}\le q_*+2\chi+2q_*^2.
\tag{4}
\]

**Proof / justification.**

The proof-only permutation is a column permutation of the finite selected
pool. Since `L_M^TG_M=I`, `N_M` is orthogonal to the target span and the
accepted `step_004b` dual decomposition gives
`||N_M(:,j)||_2<=tau_r`. The accepted gauge lemma orients the target
coordinate positively, so `a_{M,j}>0`; it also gives
`||E_M(:,j)||_1<=chi_dual<1/256`, hence the displayed initial bound on
`chi`.

Write `B_M(:,j)=a\mathbf e_j+e`, where `e_j=0` and `||e||_1<=chi`.
The orthogonal decomposition in (2) follows from
`\bar p=G_ML_M^T\bar p+N_M`. Since `||L_M^T||_2<=1/sqrt(1-q)` and
`||\bar p||_2=1`, `a<=1/sqrt(1-q)`. Expanding (2), using
`||e||_2<=||e||_1<=chi`, `|e^TF_Me|<=(1+q)chi^2`, and
`|\mathbf e_j^TF_Me|<=qchi`, gives

\[
|a^2-1|\le 2a q\chi+(1+q)\chi^2+\tau_r^2.
\]

Dividing by `a+1>=1`, and using `2a/(a+1)<=2` and `1+q<2`, proves
`|a-1|<=2(q+chi)chi+2tau_r^2`. Since initially
`chi<1/256=16q_*`, `q<=q_*`, and
`2tau_r^2<q_*^2`, this is less than
`544q_*^2+q_*^2<q_*`; this also proves the last inequality in (3).

For (4), use `H_M=I+F_M` and `B_M(:,j)=a\mathbf e_j+e`:
\[
\sum_{ell\ne j}|(H_MB_M)_{ell,j}|
 \le |a|q+\|e\|_1+\|F_Me\|_1
 \le q+q|a-1|+(1+q)chi.
\]
The just-proved `|a-1|<=q_*`, `q<=q_*`, and `q<=1` imply the right side
is at most `q_*+2chi+2q_*^2` (in fact the displayed estimate is slightly
stronger). This proves the factor-column control without assuming any
row closure.

### unit_002: lemma

**Lemma (entrywise dual residual transfer).**
\label{lem:step-006-residual-transfer}

Under the accepted `E_sm` and `E_cert_eq` outputs and the denominator
interface from `E_gauge`, define
\[
Z_M:=L_M^T\bar R_M\,\operatorname{diag}(\lambda)^{-1}.
\tag{5}
\]
Then for every mode and every `ell,j`,
\[
 |Z_M(ell,j)|\le 2\tau_r,
 \qquad
 \|Z_M\|_{\rm col,1}\le 2r\tau_r,
 \qquad
 \|Z_M\|_{\rm row,1}\le 2r\tau_r.
\tag{6}
\]

**Proof / justification.**

The `j`th residual column has norm at most `d_{M,j}tau_r`, and the
accepted selected denominator gives `d_{M,j}/lambda_j<=33/32`. For the
`ell`th row of `L_M^T`,
\[
\|L_M(:,ell)\|_2^2=(H_M^{-1})_{ell,ell}
 \le \|H_M^{-1}\|_2\le(1-q_*)^{-1}.
\]
Therefore
\[
 |Z_M(ell,j)|
 \le \frac{\|L_M(:,ell)\|_2\,\|\bar R_M(:,j)\|_2}{\lambda_j}
 \le \frac{33}{32\sqrt{1-q_*}}\tau_r
 <2\tau_r.
\tag{7}
\]
Summing (7) over the `r` entries in one column gives the column bound in
(6); summing it over the `r` entries in one row gives the row bound. The
row estimate is a fresh sum of the per-entry source and is not obtained by
summing a column bound over columns, so there is no `r^2tau_r` loss.

### unit_003: proposition

**Proposition (small-root selected-state column bootstrap).**
\label{prop:step-006-column-root}

Under the accepted outputs and Lemmas~\ref{lem:step-006-normalized-column}
and~\ref{lem:step-006-residual-transfer}, set
\[
\omega:=q_*^2+r\tau_r,
\qquad
\chi:=\max_M\|E_M\|_{\rm col,1}.
\]
Then
\[
\chi\le4\bigl(q_*+2\chi+2q_*^2\bigr)^2+4r\tau_r,
\tag{8}
\]
and the small branch selected by `chi<1/256` satisfies
\[
\chi\le32\omega.
\tag{9}
\]
Moreover, if
\[
\delta:=\max_{M,j}|B_M(j,j)-1|,
\]
then `delta<=omega` and the full coefficient column error obeys
\[
E_{\rm col}:=max_M\|B_M-I\|_{\rm col,1}
 =\max_M\max_j\sum_ell|B_M(ell,j)-\mathbf1_{ell=j}|
 \le33\omega\le64\omega.
\tag{10}
\]

**Proof / justification.**

Apply `L_M^T` to the barred equation (1). Its `(ell,j)` entry, after
division by `lambda_j`, is
\[
B_M(ell,j)\frac{d_{M,j}}{\lambda_j}
 =\frac{\lambda_ell}{\lambda_j}
   (H_{M'}B_{M'})(ell,j)(H_{M''}B_{M''})(ell,j)+Z_M(ell,j).
\tag{11}
\]
For `ell!=j`, write `B_M(ell,j)=E_M(ell,j)`, sum, and use
`d_{M,j}/lambda_j>=31/32`, `lambda_ell/lambda_j<=Gamma<=1.01`,
the l1 Hadamard bound, (4), and (6):
\[
\chi\le\frac{32}{31}\left[
  1.01\,t_{\rm col}^2+2r\tau_r\right]
 \le4\bigl(q_*+2\chi+2q_*^2\bigr)^2+4r\tau_r.
\tag{12}
\]

It remains to select the correct root rather than assume one. Put
`q=q_*`, `c=q+2q^2`, and `v=r tau_r`. The inequality is equivalent to
`P(chi)>=0`, where
\[
P(x)=16x^2+(16c-1)x+4(c^2+v),
\tag{13}
\]
whose discriminant is
`Delta=1-32c-256v`. With `q=1/4096` and
`v=q^2/10000`, `Delta>0.99`, and its roots are
\[
x_\pm=\frac{1-16c\pm\sqrt{1-32c-256v}}{32}.
\tag{14}
\]
Moreover `16c<0.004`, so `x_+>1/32`. For
`X=32omega`, direct expansion gives
\[
P(X)=16384\omega^2+512c\omega-32\omega+4c^2+4v.
\tag{15}
\]
Here `omega<1.001q^2` and `c<1.001q`, so the first two positive terms
are respectively `<0.001q^2` and `<0.126q^2`. The remaining terms satisfy
\[
-32\omega+4c^2+4v
 =-28q^2-28v+16q^3+16q^4
 <-27.996q^2.
\]
Thus `P(X)<0`, and `0<X<1/256<x_+` implies `x_-<X`. Since the actual
`chi<1/256` and `P(chi)>=0`, it cannot lie between the two roots; hence
`chi<=x_-<32omega`, proving (9).

Finally `chi<=32omega<33q^2` and (3) give
\[
\delta\le2(q_*+33q_*^2)(33q_*^2)+2\tau_r^2<q_*^2\le\omega.
\tag{16}
\]
Adding the diagonal defect to the off-diagonal column mass yields
`E_col<=32omega+omega=33omega`, and the advertised `64omega` interface
follows.

### unit_004: proposition

**Proposition (spatial row closure).**
\label{prop:step-006-row-closure}

Under Proposition~\ref{prop:step-006-column-root}, define the off-diagonal
row mass
\[
\widehat\eta:=\max_M\max_ell\sum_{j\ne ell}|E_M(ell,j)|.
\]
Then
\[
\widehat\eta
 \le4(q_*+2\chi+2q_*^2)(q_*+2\widehat\eta+2q_*^2)+4r\tau_r,
\tag{17}
\]
and the full coefficient row error satisfies
\[
E_{\rm row}:=\max_M\|B_M-I\|_{\rm row,1}
 \le7\omega\le128\omega.
\tag{18}
\]

**Proof / justification.**

Set `a=q_*+2chi+2q_*^2`. By (9) and
`omega<1.001q_*^2`,
\[
a\le q_*+66.01q_*^2<\frac{33}{32}q_*.
\tag{19}
\]
For any row `ell`, the off-diagonal l1 mass of `H_MB_M` is at most
\[
\sum_{j\ne ell}|(H_MB_M)(ell,j)|
 \le(1+\delta)q_*+(1+q_*)\widehat\eta
 \le q_*+2\widehat\eta+2q_*^2,
\tag{20}
\]
where (3) gives `delta<=q_*`. Its largest off-diagonal entry is at most
\[
\max_{ell\ne j}|(H_MB_M)(ell,j)|
 \le(1+\delta)q_*+(1+q_*)\chi
 \le q_*+2\chi+2q_*^2=a.
\tag{21}
\]
The entry equation (11), summed over `j\ne ell`, and the row residual
bound in (6), now gives
\[
\widehat\eta
\le\frac{32}{31}\left[1.01,a
 (q_*+2\widehat\eta+2q_*^2) +2r\tau_r\right]
\]
if the product is bounded by a maximum alone; more precisely, applying
the l1 Hadamard bound to the two factors gives the product of (21) and
(20), and therefore
\[
\widehat\eta
\le\frac{32}{31}\left[1.01,a
 a(q_*+2\widehat\eta+2q_*^2) +2r\tau_r\right].
\]
The first displayed intermediate line is not used. Since `a<1` and
`(32/31)1.01<4`, the last display implies the claimed (17) after the
coarse but valid replacement of the linear factor by `4a` and the
residual by `4r\tau_r`.

Using (19) and `q_*+2q_*^2<33q_*/32`, the coefficient of
`\widehat\eta` in (17) is at most
`8(33/32)q_*=33/16384<1/8`. The constant part is at most
\[
4(33/32)^2q_*^2+4r\tau_r<5q_*^2.
\]
Consequently `\widehat\eta<40q_*^2/7<6q_*^2`. By (16), the diagonal
defect is at most `omega`, and hence
`E_row<=6q_*^2+omega<=7omega<=128omega`.

### unit_005: claim

**Claim (finite selected-state scope and baseline).**
\label{claim:step-006-scope}

`E_col`, `E_row_residual`, and `E_row` are finite-pool, same-state derived
outputs produced after `E_cluster`/`E_gauge` and before any active ALS or
quotient `Refresh_s` state. At the exact orthogonal equal-weight stationary
representative, `B_M=I`, `N_M=0`, `\bar R_M=0`, and all three exported
errors are exactly zero.

**Proof / justification.**

The selected pool has exactly `r` columns and is formed once by the finite
observable graph. Equations (1)--(11) use only the same stored directions
in the two held modes; no recurrence, later active solve, or quotient
register is consumed. The residual row and column sums are finite sums of
the per-entry source, so the certificate forcing is finite-budgeted and
sign-unknown rather than silently cancelled. The producer path is
\[
E_{\rm sm},E_{\rm cert\_eq},E_{\rm cert\_tail}
\longrightarrow E_{\rm support\_wt},E_{\rm cluster},E_{\rm gauge}
\longrightarrow E_{\rm col},E_{\rm row\_residual},E_{\rm row}.
\]
At `q_real=0`, an exact orthogonal equal-weight stationary component has
`H_M=I`, `\bar P_M=G_M`, `D_M=lambda_j`, and the exact certificate equation
has `\bar R_M=0`. Thus `B_M=I` and `Z_M=0`; the exact baseline is preserved,
while a finite nonstationary certificate transient is still charged by
`2r tau_r`.

## Target-Step Assembly

After the proof-only permutation from `E_cluster`, the barred equation from
`E_gauge` is exactly (1), and its pair coefficients are formed from the
same selected direction state. Lemma~\ref{lem:step-006-normalized-column}
uses the unit-norm decomposition and the accepted `chi_dual` chart to
produce a positive diagonal, a dimension-free factor-column mass, and the
diagonal normalization estimate without assuming any row bound.
Lemma~\ref{lem:step-006-residual-transfer} independently transfers each
certificate column through the true realized dual basis. It proves the
entrywise `2tau_r` interface first, then obtains both induced `2r tau_r`
norms by separate one-index sums.

Proposition~\ref{prop:step-006-column-root} inserts these two interfaces in
the exact off-diagonal dual equation. The explicit polynomial has a large
root above `1/32`; the accepted initial chart lies below that root, while
the displayed evaluation at `32omega` is negative. Therefore the actual
column mass is on the small branch and is at most `32omega`, yielding
`E_col<=64omega` after diagonal normalization.

Proposition~\ref{prop:step-006-row-closure} then bounds one factor in each
rowwise Hadamard product by its largest entry and the other by its row l1
mass. The resulting self coefficient is below `1/8`, so the row mass is
absorbed with a finite `r tau_r` reserve and `E_row<=128omega`. Claim
\ref{claim:step-006-scope} closes the finite-scope, generated-output, and
baseline obligations. Together these named results prove every field of
the exact `step_006` sketch row.

## Explicit Rate Audit

- Exposed variables: `r`, `q=q_real`, `q_*`, `Gamma`, `lambda_j`,
  `d_{M,j}`, `tau_r`, `chi`, `omega=q_*^2+r tau_r`, the per-entry residual,
  and the induced row/column l1 norms.
- Hidden constants may depend on: only the fixed numerical values `q_*`,
  the accepted universal chart/denominator margins `31/32,33/32`, and
  `Gamma<=1.01`.
- Hidden constants may not depend on: `n`, `r`, `k`, `kappa_0`, `rho`,
  the deterministic base triple, a target or slot, either confidence
  parameter, `epsilon`, a later ALS/quotient state, or an unlisted
  condition number.
- Fixed quantities: first condition on a realized tensor in `E_sm`, then
  on the finite certified/selected pool and its proof-only permutation.
  All conclusions are deterministic in that order.
- Probability mode: pathwise conditional on the accepted derived event
  chain. This step adds no probability loss or confidence conversion.
- Horizon mode: one finite selected-state equation and a finite sum over
  `r` coordinates; no all-time or asymptotic upgrade is claimed.
- Norm mode: Euclidean ambient residual columns, target-dual entrywise
  residuals, and induced matrix row/column l1 norms.
- Admissibility conditions and auxiliary tolerances: `r>=3`,
  `q_real<=q_*`, `Gamma<=1.01`, `tau_r=q_*^2/(10^4r)`, and the accepted
  selected denominator/chart margins. No generated basin or stability
  condition is added.
- Term absorption or simplification inequalities: (3)--(4) control
  diagonal and factor-column terms; (7) gives the per-entry residual;
  (12)--(16) give the root selection and column absorption; (17)--(21)
  give the row self-coefficient and absorption. The residual is summed once
  per row or column, never twice.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: exports
  `E_col<=64omega`, `E_row_residual<=2r tau_r`, and
  `E_row<=128omega`, with `omega=q_*^2+r tau_r=q_*^2(1+10^{-4})` under
  the setting definition of `tau_r`.
- Baseline-reduction check: at the exact orthogonal equal-weight stationary
  state, all coefficient and residual errors are zero, not merely bounded
  by `O(omega)`. A finite q-zero transient retains its `2r tau_r` budget.

## Blockers

None

## Notation And Assumption Notes

- `q=q_real` is a proof-local abbreviation supplied by `E_sm`; every
  numerical inequality replaces it only by the setting threshold `q_*`.
  `H_M`, `L_M`, and `B_M` are the realized target-dual objects used by
  downstream steps, so their exported interfaces are public-facing.
- `\bar P_M`, `\bar R_M`, and the proof-only target permutation are the
  oriented selected-state objects supplied by `E_cluster`/`E_gauge` and are
  public-facing only through the selected coefficient interfaces. The bars
  do not alter the literal ALS rank-one products.
- `A_M`, `E_M`, `N_M`, `Z_M`, `chi`, `delta`, `t_col`, and
  `\widehat\eta` are proof-local helpers. `E_col`, `E_row_residual`, and
  `E_row` are the minimal public-facing generated outputs; the intermediate
  off-diagonal row mass is appendix-local.
- `\mathbf e_j` is the standard coordinate vector and is proof-local; it
  is distinct from the quotient full-state register `e` in `setting.md`.
  `omega`, `c`, `v`, and the polynomial `P` are proof-local numerical
  helpers directly defined from `q_*` and `tau_r`.
- Constant provenance: `31/32` and `33/32` are inherited from the accepted
  selected denominator lemma; `2tau_r` is proved in unit_002; `32`, `64`,
  `7`, and `128` are proved by units 003--004; no finite or condition-number
  constant is freely selected.
- Assumption provenance: `E_sm`, `E_cert_eq`, `E_cert_tail`,
  `E_support_wt`, and `E_cluster` are generated outputs of accepted prior
  steps. The selected chart and denominator are supplied by `step_005`.
  The row/column bounds, residual transfer, and all diagonal/recurrence
  quantities used here are proved in this step; none is a primitive or an
  unproved local conditional hypothesis.
- The paired global diagnostic was not needed for this local proof. No
  statement from `global_proof.md` is used as evidence, an assumption,
  cited result, or authority to change the target claim.
