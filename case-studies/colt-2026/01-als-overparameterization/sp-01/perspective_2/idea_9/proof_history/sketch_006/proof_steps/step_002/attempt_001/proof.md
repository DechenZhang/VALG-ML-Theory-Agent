# Proof Step

## Step Identity

- Sketch attempt: 4
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Derive R-src, leakage, S budget, and l1/rootwise transfer
  gaps with `q_res,q_row<=1/4`.
- Dependencies: `step_001`.
- Assumptions used: derived `E_inst`;
  `assump:modewise-gram-margin`, `assump:base-product-balance`.
- Technical challenge: Absolute-Gram rows and the fixed-root block map.
- Intended proof tool or cited result: Columnwise Cauchy--Schwarz, Schur
  products, and a three-mode block norm calculation.
- Output target: `H/J/K/S` and `Tcal` in the exact setting conventions.
- Rate objective: R2 structural; retain `nu_real`, `r`, and `Gamma_star`.
- Sketch-row review status: `PENDING`. Sketch-level authority is the accepted
  `proof_sketch_review.md`, not this row-local field.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:modewise-gram-margin` defines
    `nu_star=(C_nu r log(2r))^(-1)` with a fixed sufficiently large
    `C_nu`; its realized consequence is supplied by the accepted dependency,
    not assumed here.
  - `assump:base-product-balance` fixes the absolute weight-ratio constant
    `Gamma_star`; its realized consequence is likewise supplied by the
    accepted dependency.
- Derived invariants supplied by accepted dependencies:
  - On the derived once-drawn event `E_inst`,
    Proposition~\ref{prop:step-001-instance-event} supplies nonzero realized
    columns, unit-diagonal normalized Grams, the signed bound
    `nu_real<=2 nu_star`, the realized ratio
    `tau_max/tau_min<=2 Gamma_star`, and
    `r nu_real,sqrt(r) nu_real<=1/20`.
  - The same proposition supplies `P>=16r`. The fixed exponent `D_stat` is
    chosen after `D_lb=64` in the declared proof-parameter order; no
    lower-tail absorption is needed in the present step.
- Local conditional hypotheses: None.
- Accepted dependency artifacts:
  - `perspective_2/idea_9/proof_steps/step_001/proof.md`, sketch attempt 4,
    unit attempt 2, `Step Proof Status = COMPLETE`.
  - `perspective_2/idea_9/proof_steps/step_001/review.md`, which reviews the
    preceding artifact at SHA-256
    `e4336b8a96153cf62fa116fddb8876bbf5184727e314a8788556bc263d4060af`
    and has `Step-Review Status = ACCEPTED`.

The event `E_inst` is therefore an accepted derived output, not a primitive
condition. Everything below is deterministic conditional on this one event.
No trajectory, history, matching, certificate, or row-profile condition is
used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:modewise-gram-margin} and the accepted `E_inst` conclusions of Proposition~\ref{prop:step-001-instance-event}, the exact setting-defined signed errors `G_M-I`, absolute kernels `H_M`, padded kernels `J_M`, and Schur kernels `K_M` obey R-src and `||J_M||_1=||J_M||_infty<=1+sqrt(r)nu_real`. | Derives every static absolute-Gram and Schur source without an operator-norm claim for `|G_M-I|`. |
| `unit_002` | proposition | Under Assumption~\ref{assump:base-product-balance}, Proposition~\ref{prop:step-001-instance-event}, and Lemma~\ref{lem:step-002-static-kernels}, the cyclic leakage bounds hold, `S_{j,M,ell}` has the exact direct-plus-first-chain expansion, and `||S||_1<=3r nu_real^2(1+sqrt(r)nu_real)`. | Produces R-leak and R-S-budget while retaining transitive three-label paths. |
| `unit_003` | lemma | Under Assumptions~\ref{assump:modewise-gram-margin} and \ref{assump:base-product-balance}, Proposition~\ref{prop:step-001-instance-event}, and Lemma~\ref{lem:step-002-static-kernels}, the exact transfer in (R-transfer) satisfies `||Tcal||_(1->1)<=2(nu_real+eta0)(1+sqrt(r)nu_real)`. | Proves the l1 transfer interface in the exact zero-diagonal array convention. |
| `unit_004` | lemma | Under Assumptions~\ref{assump:modewise-gram-margin} and \ref{assump:base-product-balance}, the accepted derived event conclusions of Proposition~\ref{prop:step-001-instance-event}, and Lemma~\ref{lem:step-002-static-kernels}, the fixed-root block map satisfies `||Tcal||_(root,2->root,2)<=2(nu_real+eta0)(1+sqrt(r)nu_real)`. | Proves the rootwise gap from the displayed transfer rather than inserting it as an invariant. |
| `unit_005` | proposition | Under Assumptions~\ref{assump:modewise-gram-margin} and \ref{assump:base-product-balance}, Proposition~\ref{prop:step-001-instance-event}, and Lemmas~\ref{lem:step-002-transfer-l1}--\ref{lem:step-002-transfer-root}, there is a compatible fixed choice of the declared `C_nu` and `D_stat` for which `q_res,q_row<=1/4` for every `r>=2`. | Converts both raw transfer estimates into the two required strict Neumann margins with explicit selection inequalities. |

## Cited Result Applications

No external paper theorem is used. The accepted dependency and the elementary
norm facts used in the proof are restated here in current notation.

1. **Accepted Step 001 static-event interface.** Conditional on the
   setting-defined event `E_inst`, the accepted
   Proposition~\ref{prop:step-001-instance-event} gives, for every realized
   mode `M`,
   \[
   G_M=G_M^\top,\qquad G_M(j,j)=1,\qquad
   \|G_M-I_r\|_{\rm op}\le\nu_{\rm real}
   \le {2\over C_\nu r\log(2r)},
   \tag{1}
   \]
   together with
   \[
   {\tau_{\max}\over\tau_{\min}}\le2\Gamma_\star,
   \qquad r\nu_{\rm real}\le {1\over20},\qquad
   \sqrt r\,\nu_{\rm real}\le {1\over20}.
   \tag{2}
   \]
   It also gives `P>=16r`. These are conclusions of a dependency whose
   current review is accepted; they are not hypotheses newly imposed on the
   realized instance.

2. **Columnwise Cauchy--Schwarz and induced norms.** For finite vectors
   `u,v`,
   \[
   \sum_t |u_tv_t|\le\|u\|_2\|v\|_2,
   \qquad
   \|u\|_1\le\sqrt{\#\operatorname{supp}(u)}\,\|u\|_2.
   \tag{3}
   \]
   For a matrix `R`, its induced l1 norm is its maximum absolute column sum,
   its induced infinity norm is its maximum absolute row sum, and
   \[
   \|R\|_{2\to2}\le
   \sqrt{\|R\|_{1\to1}\|R\|_{\infty\to\infty}}.
   \tag{4}
   \]
   Equations (3)--(4) are applied only to the exact entrywise kernels below.
   In particular, (4) is never used to identify
   `|| |G_M-I| ||_op` with `||G_M-I||_op`.

3. **Nonnegative column-sum rule.** If a linear map has a nonnegative matrix
   in a specified coordinate basis, then its induced l1 norm is the largest
   column sum. For an arbitrary signed input `Z`, the same conclusion follows
   from `|LZ|<=L|Z|` entrywise. The transfer map has nonnegative coefficients
   in the setting's `(j,M,ell)` coordinates, so this rule applies without an
   object or norm conversion.

4. **Three-mode comparison matrix.** The symmetric matrix
   \[
   A_3=\begin{pmatrix}0&1&1\\1&0&1\\1&1&0\end{pmatrix}
   \tag{5}
   \]
   has eigenvalues `2,-1,-1`, hence `||A_3||_(2->2)=2`. It is used only
   after each exact mode-to-mode transfer block has been bounded in the same
   Euclidean norm.

The named local results are used with the following exact interfaces.
Lemma~\ref{lem:step-002-static-kernels} supplies `H/J/K` and their column,
row, and Schur bounds to all later units.
Proposition~\ref{prop:step-002-source-budget} supplies the leakage and `S`
outputs directly to the target assembly.
Lemmas~\ref{lem:step-002-transfer-l1} and
\ref{lem:step-002-transfer-root} supply the two raw operator bounds to
Proposition~\ref{prop:step-002-small-gain}, which supplies the two small-gain
margins.

## Local Derivation

### unit_001: lemma

**Lemma (Absolute-Gram and Schur source bounds).**
\label{lem:step-002-static-kernels}

Under Assumption~\ref{assump:modewise-gram-margin} and the accepted derived
event conclusions of Proposition~\ref{prop:step-001-instance-event}, define
the signed normalized-Gram errors
\[
E_M:=G_M-I_r,\qquad M\in\{A,B,C\}.
\tag{6}
\]
Then the setting-defined objects `H_M=|E_M|`, `J_M=I_r+H_M`, and
`K_A=H_B circ H_C` (cyclically) are symmetric and nonnegative,
`H_M` and `K_M` have zero diagonal, and
\[
\max_j\|H_Me_j\|_2\le\nu_{\rm real},
\qquad
\|H_M\|_1=\|H_M\|_\infty\le\sqrt r\,\nu_{\rm real},
\tag{7}
\]
\[
\|J_M\|_1=\|J_M\|_\infty
\le1+\sqrt r\,\nu_{\rm real},
\tag{8}
\]
and
\[
\|K_M\|_1=\|K_M\|_\infty\le\nu_{\rm real}^2.
\tag{9}
\]
Thus (7) and (9) are exactly (R-src).

**Proof.** Since each `G_M` is a normalized Gram matrix, (1) shows that
`E_M` is symmetric with zero diagonal. Entrywise absolute value preserves
the Euclidean norm of each column, and hence
\[
\|H_Me_j\|_2=\|E_Me_j\|_2
\le\|E_M\|_{\rm op}\le\nu_{\rm real}.
\tag{10}
\]
There are at most `r-1` nonzero entries in this column. Equation (3) gives
\[
\sum_tH_M(t,j)\le\sqrt{r-1}\,\nu_{\rm real}
\le\sqrt r\,\nu_{\rm real}.
\tag{11}
\]
Symmetry makes the maximum row and column sums equal, proving (7). Adding
the identity adds exactly one to every row and column sum, proving (8).

For example, for every column `j`,
\[
\begin{split}
\sum_tK_A(t,j)
&=\sum_tH_B(t,j)H_C(t,j)\\
&\le\|H_Be_j\|_2\|H_Ce_j\|_2
\le\nu_{\rm real}^2.
\end{split}
\tag{12}
\]
The same calculation holds cyclically. Each `K_M` is symmetric and has zero
diagonal because each factor `H_N` does. Therefore its maximum row and
column sums coincide, and (12) proves (9). No operator norm of an
entrywise-absolute Gram error was used. QED.

### unit_002: proposition

**Proposition (Static leakage and first-chain source budget).**
\label{prop:step-002-source-budget}

Under Assumption~\ref{assump:base-product-balance}, the accepted derived
event conclusions of Proposition~\ref{prop:step-001-instance-event}, and
Lemma~\ref{lem:step-002-static-kernels}, the setting-defined cyclic leakage
terms satisfy
\[
L_{M,j}\le\tau_{\max}\nu_{\rm real}^2
\le2\Gamma_\star\tau_j\nu_{\rm real}^2
\quad(M\in\{A,B,C\},\ j\in[r]).
\tag{13}
\]
For every ordered pair `j!=ell`, the setting-defined source has the exact
expansion
\[
S_{j,A,\ell}
=H_B(j,\ell)H_C(j,\ell)
+\sum_{t=1}^rH_B(j,t)H_C(j,t)H_A(t,\ell),
\tag{14}
\]
with cyclic analogues and `S_{j,M,j}=0`. Moreover,
\[
\|S\|_1
\le3r\nu_{\rm real}^2
       (1+\sqrt r\,\nu_{\rm real}).
\tag{15}
\]

**Proof.** In mode `A`, the exact leakage is
\[
L_{A,j}=\sum_{\ell\ne j}\tau_\ell
H_B(\ell,j)H_C(\ell,j).
\]
By (12) and the accepted realized weight ratio (2),
\[
L_{A,j}\le\tau_{\max}\sum_\ell
H_B(\ell,j)H_C(\ell,j)
\le\tau_{\max}\nu_{\rm real}^2
\le2\Gamma_\star\tau_j\nu_{\rm real}^2.
\tag{16}
\]
The two other modes are identical after a cyclic relabeling, proving (13).

Because `J_A=I_r+H_A` and `K_A=H_B circ H_C`, direct multiplication gives,
for `j!=ell`,
\[
\begin{split}
(K_AJ_A)_{j\ell}
&=K_A(j,\ell)+\sum_tK_A(j,t)H_A(t,\ell)\\
&=H_B(j,\ell)H_C(j,\ell)
 +\sum_tH_B(j,t)H_C(j,t)H_A(t,\ell),
\end{split}
\tag{17}
\]
which is (14). Thus a direct `j`-to-`ell` factor may vanish while a
three-label path through some `t` remains. The convention
`S_{j,A,j}=0` removes only the output diagonal; it does not delete any
off-diagonal term in (17).

All factors are nonnegative. For a fixed root `j`, (8)--(9) give
\[
\begin{split}
\sum_{\ell=1}^r(K_AJ_A)_{j\ell}
&=\sum_tK_A(j,t)\sum_\ell J_A(t,\ell)\\
&\le(1+\sqrt r\,\nu_{\rm real})
     \sum_tK_A(j,t)\\
&\le\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real}).
\end{split}
\tag{18}
\]
Summing (18) over all `r` roots and the three modes, and observing that
discarding `S_{j,M,j}` only decreases the sum, proves (15). QED.

### unit_003: lemma

**Lemma (Entrywise-l1 norm of the exact transfer).**
\label{lem:step-002-transfer-l1}

Under Assumptions~\ref{assump:modewise-gram-margin} and
\ref{assump:base-product-balance}, the accepted derived event conclusions
of Proposition~\ref{prop:step-001-instance-event}, and
Lemma~\ref{lem:step-002-static-kernels}, let `eta_0` and the nonnegative map
`Tcal` be exactly those in (R-transfer). Then
\[
\|\mathcal T\|_{1\to1}
\le2(\nu_{\rm real}+\eta_0)
       (1+\sqrt r\,\nu_{\rm real}).
\tag{19}
\]

**Proof.** Fix a root `j`. The transfer never changes this root. Consider
one input coordinate `Z_{j,B,t}` with `t!=j`. In the mode-`A` output its
coefficient at tested label `ell!=j` is
\[
J_A(t,\ell)(H_C(j,t)+\eta_0).
\]
The sum of these coefficients over all allowed `ell` is bounded, using
(8) and (10), by
\[
(H_C(j,t)+\eta_0)
\sum_{\ell\ne j}J_A(t,\ell)
\le(\nu_{\rm real}+\eta_0)
   (1+\sqrt r\,\nu_{\rm real}).
\tag{20}
\]
The same input coordinate enters exactly one other output-mode block, namely
the cyclic mode-`C` block, whose column sum has the same bound with `H_A`
and `J_C`. It enters no mode-`B` output block. Thus the full column sum of
the transfer matrix corresponding to `Z_{j,B,t}` is at most twice the
right-hand side of (20). Inputs in modes `A` and `C` obey the identical
cyclic estimate.

The root blocks are disjoint, so the largest column sum of the full transfer
is the largest of these rootwise column sums. The map has nonnegative
coefficients, and for signed arrays `|Tcal Z|<=Tcal|Z|`. The nonnegative
column-sum rule therefore proves (19) in the setting's exact entrywise l1
norm. QED.

### unit_004: lemma

**Lemma (Fixed-root block-l2 norm of the exact transfer).**
\label{lem:step-002-transfer-root}

Under Assumptions~\ref{assump:modewise-gram-margin} and
\ref{assump:base-product-balance}, the accepted derived event conclusions
of Proposition~\ref{prop:step-001-instance-event}, and
Lemma~\ref{lem:step-002-static-kernels}, the exact transfer satisfies
\[
\|\mathcal T\|_{{\rm root},2\to{\rm root},2}
\le2(\nu_{\rm real}+\eta_0)
       (1+\sqrt r\,\nu_{\rm real}).
\tag{21}
\]

**Proof.** Fix `j` and put `L_j=[r]\setminus\{j\}`. For a mode `M`, let
`J_{M,j}` be the principal submatrix `(J_M(t,ell))_(t,ell in L_j)`, and let
\[
D_{M,j}=\operatorname{diag}
\bigl(H_M(j,t)+\eta_0:t\in L_j\bigr).
\tag{22}
\]
These are exact restrictions of setting-defined matrices, not new source
objects. By (8), restriction can only decrease maximum row and column sums;
therefore (4) gives
\[
\|J_{M,j}\|_{2\to2}
\le1+\sqrt r\,\nu_{\rm real}.
\tag{23}
\]
Equation (10) gives `H_M(j,t)<=nu_real`, so
\[
\|D_{M,j}\|_{2\to2}\le\nu_{\rm real}+\eta_0.
\tag{24}
\]

Write `z_M=(Z_{j,M,t})_(t in L_j)` and let `y_M` denote the corresponding
mode block of `Tcal Z` at root `j`. The displayed (R-transfer) equation is
exactly
\[
\begin{split}
y_A&=J_{A,j}^{\top}(D_{C,j}z_B+D_{B,j}z_C),\\
y_B&=J_{B,j}^{\top}(D_{C,j}z_A+D_{A,j}z_C),\\
y_C&=J_{C,j}^{\top}(D_{B,j}z_A+D_{A,j}z_B).
\end{split}
\tag{25}
\]
No diagonal array entry occurs because every vector is indexed by `L_j`.
Set
\[
\beta=(\nu_{\rm real}+\eta_0)
       (1+\sqrt r\,\nu_{\rm real}),
\qquad x_M=\|z_M\|_2.
\tag{26}
\]
Equations (23)--(25) imply the componentwise comparison
\[
\begin{pmatrix}\|y_A\|_2\\\|y_B\|_2\\\|y_C\|_2\end{pmatrix}
\le\beta A_3
\begin{pmatrix}x_A\\x_B\\x_C\end{pmatrix}.
\tag{27}
\]
The entries on both sides are nonnegative. Taking the Euclidean norm and
using `||A_3||_(2->2)=2` from (5) gives
\[
\left(\sum_M\|y_M\|_2^2\right)^{1/2}
\le2\beta\left(\sum_M\|z_M\|_2^2\right)^{1/2}.
\tag{28}
\]
This holds for every root, including `r=2`, where each block has one
coordinate. Taking the maximum over `j` proves (21). QED.

### unit_005: proposition

**Proposition (Compatible strict small-gain selection).**
\label{prop:step-002-small-gain}

Under Assumptions~\ref{assump:modewise-gram-margin} and
\ref{assump:base-product-balance}, the accepted derived event conclusions
of Proposition~\ref{prop:step-001-instance-event}, and
Lemmas~\ref{lem:step-002-transfer-l1}--\ref{lem:step-002-transfer-root},
the fixed constants and exponents declared in the setting can be selected
compatibly so that
\[
q_{\rm res}=C_0\Gamma_\star\|\mathcal T\|_{1\to1}\le{1\over4},
\qquad
q_{\rm row}=C_0\Gamma_\star
\|\mathcal T\|_{{\rm root},2\to{\rm root},2}\le{1\over4}.
\tag{29}
\]
One explicit sufficient selection, valid for all `r>=2`, is
\[
C_\nu\ge
\max\left\{2,{51\over2}C_0\Gamma_\star,
{\Gamma_\star\over2}\sqrt{101C_0C_\eta}\right\},
\tag{30}
\]
and, after the accepted `D_lb` ordering,
\[
D_{\rm stat}\ge2D_{\rm lb}+2,
\qquad
32^{D_{\rm stat}}\ge26C_0C_\eta\Gamma_\star.
\tag{31}
\]
These are fixed proof-parameter choices, not realized-instance or trajectory
conditions.

**Proof.** Put `nu=nu_real` and `e=P^(-D_stat)` only within this proof.
The accepted dependency gives
\[
\nu\le {2\over C_\nu r\log(2r)},
\qquad 1+\sqrt r\,\nu\le {21\over20},
\qquad e\le(16r)^{-D_{\rm stat}}.
\tag{32}
\]
The setting definition of `eta_0` and (32) yield
\[
\eta_0=C_\eta(\Gamma_\star\nu^2+e)
\le C_\eta\left(
{4\Gamma_\star\over C_\nu^2r^2\log^2(2r)}
+{1\over16^{D_{\rm stat}}r^{D_{\rm stat}}}\right).
\tag{33}
\]
Both transfer norms have the same upper bound by (19) and (21). Therefore
each quantity in (29) is at most
\[
\begin{split}
&{21\over10}C_0\Gamma_\star
\left[{2\over C_\nu r\log(2r)}
+C_\eta\left(
{4\Gamma_\star\over C_\nu^2r^2\log^2(2r)}
+{1\over16^{D_{\rm stat}}r^{D_{\rm stat}}}\right)\right]\\
&\quad\le
{21\over5}{C_0\Gamma_\star\over C_\nu r}
+{42\over5}{C_0C_\eta\Gamma_\star^2\over C_\nu^2r^2}
+{21\over10}{C_0C_\eta\Gamma_\star
\over16^{D_{\rm stat}}r^{D_{\rm stat}}}.
\end{split}
\tag{34}
\]
The first inequality keeps the numerical term explicit; the second uses only
`log(2r)>=1`.

For `r>=2`, (30) bounds the first term in the last line of (34) by
`21/255<1/12` and the second by `42/505<1/12`. Because
`16^(D_stat) r^(D_stat)>=32^(D_stat)`, (31) bounds the third by
`21/260<1/12`. Hence the sum is strictly below `1/4`, which proves (29).
The selection uses no `E_lb` numerical-to-structural absorption and hence
does not hide any positive numerical term. QED.

## Target-Step Assembly

The accepted Step 001 event supplies the signed normalized-Gram operator
control and the realized weight ratio before any lifted analysis object is
formed. Lemma~\ref{lem:step-002-static-kernels} takes entrywise absolute
values only after fixing a column, so columnwise Euclidean norms are
preserved exactly; Cauchy--Schwarz then proves R-src and the `J` row/column
bound without asserting an operator estimate for `|G_M-I_r|`.

Proposition~\ref{prop:step-002-source-budget} applies the same column source
to the exact realized weights. It proves all cyclic leakage bounds, expands
`K_MJ_M` into its direct and first-transitive pieces, and sums the
nonnegative rows once to obtain exactly
`3r nu_real^2(1+sqrt(r)nu_real)`. Thus neither a direct path nor a
three-label chain is lost.

For the exact zero-diagonal array domain, Lemma~\ref{lem:step-002-transfer-l1}
counts the two output-mode blocks reached by each input coordinate and proves
the first bound in (R-gap). Lemma~\ref{lem:step-002-transfer-root} writes the
same map as three restricted `J_M` blocks and exact diagonal multipliers at
each fixed root; the spectral norm `2` of the three-mode adjacency proves
the same constant in (J-row-gap). Proposition~\ref{prop:step-002-small-gain}
then gives an explicit compatible fixed selection for which both scaled
norms are at most `1/4`.

These named results establish the exact sketch-row claim and export only the
setting-defined `H,J,K,S,Tcal,q_res,q_row` interfaces. Their producer-consumer
path is
\[
\text{accepted }E_{\rm inst}
\longrightarrow (H,J,K,S,\mathcal T,q_{\rm res},q_{\rm row})
\longrightarrow \text{Steps 003--009 and 013}.
\]
The path is static and noncircular: it consumes no history or Neumann
envelope. At the empty history the same bounds already hold. In the exact
orthogonal/noiseless specialization `H=0` and `e_num=0`, one has `J=I`,
`K=S=Tcal=0`, both leakage terms are zero, and `q_res=q_row=0`.

## Explicit Rate Audit

- Exposed variables: `r`, `Gamma_star`, `nu_real`, `nu_star`, `P`,
  `D_stat`, `eta_0`, every entry of the setting-defined `H,J,K,S`, the
  leakage scalars, and both induced norms and scaled gaps of `Tcal`.
- Hidden constants may depend on: the fixed class/proof constants
  `C_nu,C_0,C_eta,Gamma_star` and universal numerical constants. The fixed
  exponent `D_stat` may depend on the previously selected fixed `D_lb`,
  `C_0`, `C_eta`, and `Gamma_star` through (31).
- Hidden constants may not depend on: `n,r,k,kappa,rho`, the realized
  instance, random tape, protected state, commit order, tested root or label,
  history length, or `epsilon`.
- Fixed quantities: one deterministic base triple, the fixed class and proof
  constants, and one realized instance on the accepted `E_inst` event.
- Probability mode: deterministic conditional on the once-drawn accepted
  event. This step adds no failure event, union bound, tape probability, or
  probability conversion, so all outputs inherit the Step 001 instance
  probability at least `1-r^(-10)`.
- Horizon mode: static and therefore uniform over every later finite prefix;
  no trajectory fact is used to prove the bounds.
- Norm mode: signed operator norm for `G_M-I_r`, column Euclidean norm and
  induced l1/infinity norms for `H,J,K`, entrywise l1 for arrays, and the
  setting's fixed-root block-l2 norm for arrays.
- Admissibility conditions and auxiliary tolerances: exactly the accepted
  `E_inst` output plus the two sketch-row primitive IDs. The fixed numerical
  tolerance is `e_num=P^(-D_stat)`, and (30)--(31) are proof-parameter
  selections, not data-dependent assumptions. No matching, history, event
  membership beyond `E_inst`, or row-profile premise is added.
- Term absorption or simplification inequalities: (10)--(12) prove R-src;
  (16)--(18) prove leakage and R-S-budget; (20) proves each l1 block column;
  (23)--(28) prove the rootwise block map; and (32)--(34), together with
  `21/255,42/505,21/260<1/12`, prove both small-gain margins. The numerical
  term in `eta_0` remains explicit and no `E_lb` absorption is used.
- Probability conversion: None. The instance and tape modes remain separate.
- Contribution to any Rate Specialization Bridge: this step supplies the R2
  static source and strict resolvent margins. It performs no public rate
  simplification and exports no history-dependent estimate.
- Baseline-reduction check: setting all signed cross-Gram errors and the
  exact numerical tolerance to zero gives `H=K=S=Tcal=0`, `J=I`, zero
  leakage, and `q_res=q_row=0`. This is equality, not a conservative
  remainder. With nonzero numerical tolerance but `H=0`, (19)--(21) retain
  the honest `eta_0` transfer rather than silently invoking the exact limit.

## Blockers

None.

## Notation And Assumption Notes

- `E_M=G_M-I_r` is a proof-local signed-Gram abbreviation directly defined
  from setting notation. It is used only to justify the columnwise identity
  `||H_M e_j||_2=||E_M e_j||_2`; it is not exported.
- `H_M,J_M,K_M,S`, the leakage `L_(M,j)`, `Tcal`, `eta_0`, `q_res`, and
  `q_row` are setting-defined, public-facing analysis interfaces. This step
  proves their required bounds but does not change their definitions or
  make them algorithm inputs.
- `L_j`, `J_(M,j)`, and `D_(M,j)` in
  Lemma~\ref{lem:step-002-transfer-root} are proof-local exact restrictions
  of setting-defined objects. Their bounds are proved in (23)--(24), and
  they are not exported.
- `A_3` and `beta` are proof-local helpers. `A_3` is the exact three-mode
  adjacency induced by (R-transfer), with its norm proved from its displayed
  eigenvalues; `beta` is directly defined in (26) and only packages the
  repeated product in the two transfer estimates.
- `C_0,C_eta,C_nu,D_stat,D_lb` are setting- or accepted-dependency-
  defined fixed proof parameters. Equations (30)--(31) give explicit
  compatible provenance for the only new boundedness requirement. No free
  radius, margin, event, or finite-tube quantity is introduced.
- `E_inst` is a public-facing derived event supplied by the accepted
  dependency. The realized Gram, weight, and upper-margin facts consumed
  here are accepted derived invariants on that event, not primitive
  conditions. No other generated object or invariant is assumed.
- The transfer bounds are public-facing derived static controls. Their later
  geometric Neumann accumulation is not assumed or proved here; Step 003 may
  consume the exported strict gaps to prove that separate conditional
  envelope.
- Boundary conventions are exact: `H_M(j,j)=0`, `J_M(j,j)=1`,
  `K_M(j,j)=0`, and arrays have `Z_(j,M,j)=0`. The fixed-root restriction in
  (25) uses precisely these coordinates. For `r=2` the restricted matrices
  are one-dimensional and all estimates remain valid. For a vanished direct
  `j`-to-`ell` path, (17) retains every allowed transitive path.
- The paired `global_proof.md` and `global_proof_review.md` were checked to be
  current, and the review status is `ACCEPTED`. The G2 diagnostic suggested
  the fixed-root block factorization used for planning. No global diagnostic
  statement is used as evidence, a cited result, an assumption source, or
  authority to change the target claim.
