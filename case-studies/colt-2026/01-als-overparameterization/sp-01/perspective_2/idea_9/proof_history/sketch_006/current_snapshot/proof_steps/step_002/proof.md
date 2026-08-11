# Proof Step

## Step Identity

- Sketch attempt: 6
- Step ID: step_002
- Unit attempt: 1

## Target Step Claim

Intended claim: derive (R-src), the cyclic leakage estimates, the static
source budget, and the entrywise-l1 and rootwise-block-l2 transfer gaps with
`q_res,q_row <= 1/4`.

- Dependencies: accepted sketch-attempt-6 `step_001` proof and review.
- Assumptions used: the derived event `E_inst`,
  `assump:modewise-gram-margin`, and `assump:base-product-balance`.
- Technical challenge: control the entrywise absolute-Gram rows and the
  fixed-root block transfer without asserting an operator-norm estimate for
  `|G_M-I_r|`.
- Intended proof tool: columnwise Cauchy--Schwarz, Schur products, direct
  column-sum accounting, and a three-mode fixed-root block-norm argument.
- Output target: the setting-defined arrays `H,J,K,S`, the leakage bounds,
  `(R-S-budget)`, the exact transfer `mathcal T`, `(R-gap)`, and
  `(J-row-gap)`.
- Rate objective: R2 structural, retaining explicit dependence on
  `nu_real`, `r`, `Gamma_star`, `P`, `D_stat`, and `eta_0`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- `assump:base-product-balance`: the deterministic source product weights
  have ratio at most `Gamma_star`. Its realized factor-two consequence is
  supplied by the accepted dependency.
- `assump:modewise-gram-margin`: the normalized source Gram margin is at most
  `nu_star=1/(C_nu r log(2r))`. Its realized consequence is supplied by the
  accepted dependency.

Derived invariants supplied by accepted dependencies:

- The accepted `step_001` proof, SHA-256
  `a9a87b0f289746498c40b438117c47dc6b1307679defdbc29852d97a66241cfc`,
  and accepted review, SHA-256
  `1cd56c69834fcba45d787657c9fae1009cb82f70c6c535fd12b3d132eb8b7907`,
  produce the once-drawn event `E_inst`. On that event every normalized
  realized column exists,
  `nu_real <= nu_star`, and `tau_max/tau_min <= 2 Gamma_star`.
- The dependency proves `P_inst(E_inst) >= 1-r^(-10)`. This step is
  deterministic after conditioning on that event and does not spend any
  additional failure probability.

Local conditional hypotheses: None. The lower-tail part `E_lb` of the
dependency is not needed for the transfer gaps: the numerical padding is
made absolutely small using `P >= 16r`, a fixed choice `D_stat >= 2`, and an
enlarged fixed asymptotic threshold.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | Absolute-Gram and Schur-Kernel Bounds, label `lem:p2-i9-s6-step002-source`: under Assumptions~\ref{assump:base-product-balance}, \ref{assump:modewise-gram-margin}, and the accepted `step_001` event, the setting-defined `H_M,J_M,K_M` satisfy every estimate in `(R-src)`. | Supplies the valid sign-free source bounds without an absolute-Gram operator claim. |
| unit_002 | lemma | Static Leakage and First-Chain Budget, label `lem:p2-i9-s6-step002-static`: under the same assumptions and dependency, the cyclic leakage estimates, the direct/transitive expansion of `S`, and `(R-S-budget)` hold. | Exports the static forcing used by the ledger. |
| unit_003 | lemma | Entrywise Transfer Contraction, label `lem:p2-i9-s6-step002-l1-transfer`: under the same assumptions and dependency, the exact transfer obeys `||mathcal T||_(1->1) <= 2(nu_real+eta_0)(1+sqrt(r)nu_real)`. | Supplies the l1 resolvent norm. |
| unit_004 | lemma | Fixed-Root Block Transfer Contraction, label `lem:p2-i9-s6-step002-root-transfer`: under the same assumptions and dependency, the exact transfer obeys the identical rootwise block-l2 bound. | Supplies the nontrivial row-profile norm without assuming `||H_M||_op`. |
| unit_005 | proposition | Simultaneous Small-Gain Selection, label `prop:p2-i9-s6-step002-gaps`: under the same assumptions and dependency, fixed `D_stat >= 2`, sufficiently large fixed Gram-margin constant, and a fixed enlarged asymptotic threshold can be selected so both `q_res` and `q_row` are at most `1/4`. | Completes `(R-gap)` and `(J-row-gap)` and proves resolvent viability. |

## Cited Result Applications

### Accepted dependency: Once-Drawn Instance Assembly

The accepted Proposition~\ref{prop:p2-i9-s6-step001-instance}, together with
its accepted Normalized-Column and Gram Transfer lemma, has the following
portion used here. Under
Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance}, \ref{assump:gaussian-smoothing},
\ref{assump:dimension-regime}, \ref{assump:smoothing-scale}, and
\ref{assump:modewise-gram-margin}, all discharged in the accepted dependency,
there is a once-drawn event `E_inst` of probability at least `1-r^(-10)` on
which all realized normalized columns are defined and

\[
 \nu_{\rm real}=\max_M\|G_M-I_r\|_{\rm op}\le \nu_\star
 ={1\over C_\nu r\log(2r)},
 \qquad {\tau_{\max}\over\tau_{\min}}\le2\Gamma_\star.
\]

The instantiated objects are exactly the setting's realized matrices
`A,B,C`, normalized Grams `G_M`, and product weights `tau_j`. The event,
probability, normalization convention, and bounds are established by the
accepted proof/review hashes listed above. This step uses only these exported
conclusions; it does not re-use a proof-local event or notation from the
dependency. Of the dependency's primitive provenance, this sketch row names
Assumptions~\ref{assump:base-product-balance} and
\ref{assump:modewise-gram-margin}; the other four IDs are recorded here only
to discharge the accepted cited result and are not invoked afresh.

### Finite-dimensional norm facts

For a matrix `B`, direct triangle summation gives
`||B||_(1->1)=max_j sum_i |B_ij|`. Also

\[
 \|B\|_{2\to2}\le\sqrt{\|B\|_1\|B\|_\infty}.
\]

The latter follows by applying Cauchy--Schwarz row by row:

\[
 \|Bx\|_2^2
 \le \sum_i\Big(\sum_j|B_{ij}|\Big)
               \Big(\sum_j|B_{ij}|x_j^2\Big)
 \le \|B\|_\infty\|B\|_1\|x\|_2^2.
\]

These facts are applied only to the setting-defined nonnegative matrices and
the explicit fixed-root blocks constructed in
Lemma~\ref{lem:p2-i9-s6-step002-root-transfer}; all dimensions and objects
are displayed there.

### Local-result application map

- Lemma~\ref{lem:p2-i9-s6-step002-source} supplies the column, row, and
  Schur-kernel bounds used by every later local result.
- Lemma~\ref{lem:p2-i9-s6-step002-static} consumes those bounds and the
  dependency's realized weight ratio.
- Lemmas~\ref{lem:p2-i9-s6-step002-l1-transfer} and
  \ref{lem:p2-i9-s6-step002-root-transfer} separately bound the same exact
  transfer in the two required norms.
- Proposition~\ref{prop:p2-i9-s6-step002-gaps} combines the two transfer
  bounds with the accepted realized Gram margin and an explicit parameter
  selection.

## Local Derivation

### unit_001: lemma - Absolute-Gram and Schur-Kernel Bounds

Paper-ready label: `lem:p2-i9-s6-step002-source`.

Paper-ready title: Absolute-Gram and Schur-Kernel Bounds.

Statement:

Under Assumptions~\ref{assump:base-product-balance} and
\ref{assump:modewise-gram-margin}, and on the accepted once-drawn event of
Proposition~\ref{prop:p2-i9-s6-step001-instance}, let `H_M,J_M,K_M` be the
setting-defined kernels and put `nu=nu_real`. Then, for every mode
`M in {A,B,C}`,

\[
 \max_j\|H_Me_j\|_2\le\nu,
 \qquad \|H_M\|_1=\|H_M\|_\infty\le\sqrt r\,\nu,
\]

and, for the cyclic Schur kernels,

\[
 \|K_M\|_1=\|K_M\|_\infty\le\nu^2.
\]

Thus every estimate in `(R-src)` holds, with no claim about
`||H_M||_(2->2)`.

Proof / justification:

Fix a mode `M` and write `E_M=G_M-I_r`. Because `G_M` is a normalized Gram
matrix, `E_M` is symmetric and has zero diagonal. Entrywise absolute value
does not change the Euclidean norm of a column, so the accepted dependency's
operator-Gram bound gives, for every `j`,

\[
 \|H_Me_j\|_2=\||E_M|e_j\|_2=\|E_Me_j\|_2
 \le\|E_M\|_{\rm op}=\nu_M\le\nu.
\]

The same identity applies to rows by symmetry. Cauchy--Schwarz and the zero
diagonal then give

\[
 \sum_iH_M(i,j)\le\sqrt{r-1}\,\|H_Me_j\|_2
 \le\sqrt r\,\nu.
\]

Taking the maximum column sum proves the `l1` bound; symmetry gives the
identical `l-infinity` bound.

For example, `K_A=H_B circ H_C` is symmetric and nonnegative. For every
column `j`, another columnwise Cauchy--Schwarz calculation yields

\[
 \sum_iK_A(i,j)
 =\sum_iH_B(i,j)H_C(i,j)
 \le\|H_Be_j\|_2\|H_Ce_j\|_2\le\nu^2.
\]

This proves both induced bounds for `K_A`; the two cyclic cases are
identical. Notice that the proof used the operator bound only for the signed
Gram difference `E_M`, then took absolute values inside individual column
Euclidean norms. It never inferred an operator bound for `H_M=|E_M|`.

### unit_002: lemma - Static Leakage and First-Chain Budget

Paper-ready label: `lem:p2-i9-s6-step002-static`.

Paper-ready title: Static Leakage and First-Chain Budget.

Statement:

Under Assumptions~\ref{assump:base-product-balance} and
\ref{assump:modewise-gram-margin}, on the accepted event of
Proposition~\ref{prop:p2-i9-s6-step001-instance}, and using
Lemma~\ref{lem:p2-i9-s6-step002-source}, every root `j` satisfies

\[
 L_{A,j}\le\tau_{\max}\nu_{\rm real}^2
 \le2\Gamma_\star\tau_j\nu_{\rm real}^2,
\]

with cyclic analogues. Moreover the setting-defined nonnegative,
zero-diagonal source `S` has, for `j != ell`,

\[
 S_{j,A,\ell}=H_B(j,\ell)H_C(j,\ell)
 +\sum_tH_B(j,t)H_C(j,t)H_A(t,\ell),
\]

with cyclic analogues, and

\[
 \|S\|_1\le3r\nu_{\rm real}^2
       (1+\sqrt r\,\nu_{\rm real}).
 \tag{R-S-budget}
\]

Proof / justification:

For the `A`-mode leakage, nonnegativity and
Lemma~\ref{lem:p2-i9-s6-step002-source} give

\[
 L_{A,j}=\sum_{\ell\ne j}\tau_\ell K_A(\ell,j)
 \le\tau_{\max}\sum_\ell K_A(\ell,j)
 \le\tau_{\max}\nu^2.
\]

The accepted dependency supplies
`tau_max/tau_j <= 2 Gamma_star`, proving `(R-leak-A)`. Relabeling the
modes proves the other two inequalities.

For distinct `j,ell`, expand `J_A=I_r+H_A` in the exact setting definition:

\[
 (K_AJ_A)_{j\ell}
 =K_A(j,\ell)+\sum_tK_A(j,t)H_A(t,\ell),
\]

which is precisely the claimed direct term plus every first transitive term.
Terms with `t=j` vanish because `K_A(j,j)=0`, and the formula is valid
without deleting any nonzero chain. The setting separately defines
`S_{j,A,j}=0`.

Finally, for each root `j`,

\[
 \begin{aligned}
 \sum_{\ell\ne j}S_{j,A,\ell}
 &\le\sum_\ell(K_AJ_A)_{j\ell}\\
 &=\sum_tK_A(j,t)\sum_\ell J_A(t,\ell)\\
 &\le\nu^2(1+\sqrt r\,\nu),
 \end{aligned}
\]

where Lemma~\ref{lem:p2-i9-s6-step002-source} gives the `K_A` row sum and
`sum_ell J_A(t,ell)=1+sum_ell H_A(t,ell) <= 1+sqrt(r)nu`. Summing over the
`r` roots and the three modes proves `(R-S-budget)` in the setting's array
`l1` norm.

### unit_003: lemma - Entrywise Transfer Contraction

Paper-ready label: `lem:p2-i9-s6-step002-l1-transfer`.

Paper-ready title: Entrywise Transfer Contraction.

Statement:

Under Assumptions~\ref{assump:base-product-balance} and
\ref{assump:modewise-gram-margin}, on the accepted event of
Proposition~\ref{prop:p2-i9-s6-step001-instance}, and using
Lemma~\ref{lem:p2-i9-s6-step002-source}, the exact setting-defined transfer
`mathcal T` satisfies

\[
 \|\mathcal T\|_{1\to1}
 \le2(\nu_{\rm real}+\eta_0)
       (1+\sqrt r\,\nu_{\rm real}).
\]

Proof / justification:

The map does not mix roots. Fix an input coordinate `(j,A,t)` with `t != j`.
By the exact cyclic versions of `(R-transfer)`, this coordinate contributes
only to output modes `B` and `C`. Its total nonnegative column sum is

\[
 \begin{aligned}
 &(H_C(j,t)+\eta_0)\sum_{\ell\ne j}J_B(t,\ell)
 +(H_B(j,t)+\eta_0)\sum_{\ell\ne j}J_C(t,\ell)\\
 &\quad\le
 2(\nu+\eta_0)(1+\sqrt r\,\nu).
 \end{aligned}
\]

Indeed, every entry `H_M(j,t)` is at most the Euclidean norm of its row,
which is at most `nu` by
Lemma~\ref{lem:p2-i9-s6-step002-source}; deleting the `ell=j` term only
decreases a `J` row sum, and every full `J` row sum is at most
`1+sqrt(r)nu`. The same calculation holds for input modes `B` and `C`.

For an arbitrary signed array `Z`, triangle summation against these
nonnegative coefficients therefore gives

\[
 \|\mathcal TZ\|_1
 \le2(\nu+\eta_0)(1+\sqrt r\,\nu)\|Z\|_1.
\]

Taking the supremum proves the asserted induced norm bound. In particular,
the bound applies to the setting's nonnegative cone `mathcal Z_+`.

### unit_004: lemma - Fixed-Root Block Transfer Contraction

Paper-ready label: `lem:p2-i9-s6-step002-root-transfer`.

Paper-ready title: Fixed-Root Block Transfer Contraction.

Statement:

Under Assumptions~\ref{assump:base-product-balance} and
\ref{assump:modewise-gram-margin}, on the accepted event of
Proposition~\ref{prop:p2-i9-s6-step001-instance}, and using
Lemma~\ref{lem:p2-i9-s6-step002-source}, the exact setting-defined transfer
obeys

\[
 \|\mathcal T\|_{{\rm root},2\to{\rm root},2}
 \le2(\nu_{\rm real}+\eta_0)
       (1+\sqrt r\,\nu_{\rm real}).
\]

Proof / justification:

Fix a root `j` and delete coordinate `j` from each label vector. Write
`z_A,z_B,z_C in R^(r-1)` for the three input mode blocks. Let

\[
 J_M^{(j)}=(J_M)_{[r]\setminus\{j\},[r]\setminus\{j\}},
 \qquad
 h_M^{(j)}=(H_M(j,t)+\eta_0)_{t\ne j}.
\]

These are proof-local restrictions of setting-defined objects. Symmetry and
the finite-dimensional norm inequality give

\[
 \|J_M^{(j)}\|_{2\to2}
 \le\|J_M\|_{2\to2}
 \le\sqrt{\|J_M\|_1\|J_M\|_\infty}
 \le1+\sqrt r\,\nu,
\]

while Lemma~\ref{lem:p2-i9-s6-step002-source} gives
`||h_M^(j)||_infinity <= nu+eta_0`. Consequently each matrix block
`J_M^(j) diag(h_N^(j))` has Euclidean operator norm at most

\[
 b:=(\nu+\eta_0)(1+\sqrt r\,\nu).
\]

The exact transfer formula, using symmetry
`J_M(t,ell)=J_M(ell,t)`, becomes

\[
 \begin{aligned}
 y_A&=J_A^{(j)}\operatorname{diag}(h_C^{(j)})z_B
     +J_A^{(j)}\operatorname{diag}(h_B^{(j)})z_C,\\
 y_B&=J_B^{(j)}\operatorname{diag}(h_C^{(j)})z_A
     +J_B^{(j)}\operatorname{diag}(h_A^{(j)})z_C,\\
 y_C&=J_C^{(j)}\operatorname{diag}(h_B^{(j)})z_A
     +J_C^{(j)}\operatorname{diag}(h_A^{(j)})z_B.
 \end{aligned}
\]

Set `x=(||z_A||_2,||z_B||_2,||z_C||_2)^T`. The preceding block bounds
imply componentwise

\[
 \begin{pmatrix}\|y_A\|_2\\\|y_B\|_2\\\|y_C\|_2\end{pmatrix}
 \le b
 \begin{pmatrix}0&1&1\\1&0&1\\1&1&0\end{pmatrix}x.
\]

The displayed scalar matrix has Euclidean operator norm `2`, so

\[
 \bigl(\|y_A\|_2^2+\|y_B\|_2^2+\|y_C\|_2^2\bigr)^{1/2}
 \le2b\bigl(\|z_A\|_2^2+\|z_B\|_2^2+\|z_C\|_2^2\bigr)^{1/2}.
\]

Because roots are not mixed, taking the maximum over `j` is exactly the
induced rootwise block norm. This proves the claim directly from the
displayed transfer; no trajectory bound and no operator estimate for
`H_M` was inserted.

### unit_005: proposition - Simultaneous Small-Gain Selection

Paper-ready label: `prop:p2-i9-s6-step002-gaps`.

Paper-ready title: Simultaneous Small-Gain Selection.

Statement:

Under Assumptions~\ref{assump:base-product-balance} and
\ref{assump:modewise-gram-margin}, on the accepted event of
Proposition~\ref{prop:p2-i9-s6-step001-instance}, and using
Lemmas~\ref{lem:p2-i9-s6-step002-l1-transfer} and
\ref{lem:p2-i9-s6-step002-root-transfer}, fix the setting's absolute proof
constants `C_0,C_eta` and the fixed class constant `Gamma_star`. One may
choose a fixed `D_stat >= 2` and enlarge the fixed asymptotic threshold and
the setting's sufficiently-large Gram-margin constant so that

\[
 q_{\rm res}=C_0\Gamma_\star\|\mathcal T\|_{1\to1}\le{1\over4},
 \qquad
 q_{\rm row}=C_0\Gamma_\star
 \|\mathcal T\|_{{\rm root},2\to{\rm root},2}\le{1\over4}.
\]

Proof / justification:

Put

\[
 a={1\over C_\nu r\log(2r)}=\nu_\star,
 \qquad e=P^{-D_{\rm stat}}.
\]

These are proof-local abbreviations for setting-defined quantities. The
accepted dependency gives `nu<=a`. Since `n,r>=2`, `k>=1`, `kappa>=1`, and
`rho^(-1)>=1`, the setting-defined scale obeys `P>=16r`. Choose any fixed
lower requirement `D_stat>=2`; later proof steps may increase the final fixed
choice, which only decreases `e`. After enlarging the fixed
rank/asymptotic threshold if needed,

\[
 e\le(16r)^{-2}\le a,
 \qquad \Gamma_\star a\le1,
 \qquad \sqrt r\,a\le1,
 \tag{SG-1}
\]

where the first inequality is equivalent to
`C_nu log(2r) <= 256r` and therefore holds beyond a fixed threshold for the
fixed `C_nu`. Hence

\[
 \eta_0=C_\eta(\Gamma_\star\nu^2+e)
 \le2C_\eta a,
 \qquad
 \nu+\eta_0\le(1+2C_\eta)a,
 \qquad
 1+\sqrt r\,\nu\le2.
 \tag{SG-2}
\]

Both transfer lemmas consequently give the common explicit bound

\[
 \max\left\{\|\mathcal T\|_{1\to1},
 \|\mathcal T\|_{{\rm root},2\to{\rm root},2}\right\}
 \le4(1+2C_\eta)a.
\]

Finally choose the fixed constants/threshold consistently so that

\[
 C_\nu r\log(2r)
 \ge16C_0\Gamma_\star(1+2C_\eta).
 \tag{SG-3}
\]

This is exactly the allowed sufficiently-large fixed Gram-margin/asymptotic
selection. Multiplication by `C_0 Gamma_star` now proves each small-gain
quantity is at most `1/4`. The construction uses only upper bounds on `nu`
and `e`; it does not invoke `E_lb` or impose a lower bound on a realized
correlation.

## Target-Step Assembly

Lemma~\ref{lem:p2-i9-s6-step002-source} derives `(R-src)` directly from the
accepted signed operator-Gram estimate by columnwise Euclidean calculations
and derives each Schur-kernel row/column bound by Cauchy--Schwarz.
Lemma~\ref{lem:p2-i9-s6-step002-static} combines that interface with the
accepted realized product-weight ratio to prove every cyclic leakage bound,
the exact direct/transitive expansion of `S`, and `(R-S-budget)`.

For the exact setting-defined transfer, Lemma~\ref{lem:p2-i9-s6-step002-l1-transfer}
bounds every input column sum, while
Lemma~\ref{lem:p2-i9-s6-step002-root-transfer} factors every fixed-root map
into six restricted-`J` diagonal blocks and the three-mode off-diagonal
coupling matrix. These two independent derivations establish the exact
common norm bound requested by the sketch row. Proposition~\ref{prop:p2-i9-s6-step002-gaps}
then gives explicit fixed choices and thresholds that turn both bounds into
`q_res,q_row <= 1/4`. Together the five named results prove the full target
step claim and export exactly `H,J,K,S,mathcal T`, leakage, the source budget,
and both transfer gaps.

## Explicit Rate Audit

- Exposed variables: `r`, `nu_real`, `Gamma_star`, `P`, `D_stat`, `eta_0`,
  `C_0`, `C_eta`, `C_nu`, and the setting-defined `H,J,K,S,mathcal T`.
- Hidden constants may depend on: fixed class/proof constants, including
  `Gamma_star,C_0,C_eta,C_nu`.
- Hidden constants may not depend on: `n,r,k,kappa,rho`, the realized
  instance, protected state, commit order, tape, or `epsilon`.
- Fixed quantities: the accepted once-drawn instance, fixed class/proof
  constants, and the selected fixed exponent `D_stat>=2`.
- Probability mode: deterministic conditional on `E_inst`; the accepted
  dependency has instance probability at least `1-r^(-10)`, and this step
  introduces no new random event or union bound.
- Horizon mode: static once-drawn estimates, uniform for every later finite
  prefix because the transfer does not depend on history.
- Norm mode: Euclidean column norm, matrix `l1/l-infinity` norms,
  setting-array entrywise `l1`, and setting-array rootwise block `l2`.
- Admissibility conditions and auxiliary tolerances: `D_stat>=2`,
  `P>=16r`, and the explicit fixed-threshold inequalities `(SG-1)--(SG-3)`.
- Term absorption or simplification inequalities: all are displayed in
  `(SG-1)--(SG-3)`; in particular
  `eta_0 <= 2C_eta nu_star` is an absolute upper-scale comparison and does
  not use the lower-tail event.
- Probability conversion: None beyond the accepted `step_001` event.
- Contribution to any Rate Specialization Bridge: supplies the two
  `1/4` small-gain margins and the raw `3r nu_real^2(1+sqrt(r)nu_real)`
  source budget; no later history or numerical term is simplified here.
- Baseline-reduction check: in the exact orthogonal and exact-numerical
  specialization `H_M=0` and `e=0`, one has `K_M=S=mathcal T=0`, every
  leakage term is zero, and `q_res=q_row=0` by equality. The identity part
  of `J_M` remains but is multiplied by zero transfer coefficients.

## Blockers

None.

## Notation And Assumption Notes

- `nu=nu_real`, `e=P^(-D_stat)`, `eta=eta_0`, and
  `a=nu_star` are proof-local aliases for setting-defined expressions. Only
  the original setting symbols are exported.
- `E_inst` is a public-facing derived event supplied by the accepted
  dependency. No generated history, state, trajectory, certificate, or
  boundedness condition is assumed in this step.
- `H_M,J_M,K_M,S,mathcal T,q_res,q_row` and the leakage quantities are
  public-facing setting-defined objects. Their bounds are proved here rather
  than introduced as admissibility conditions.
- `J_M^(j)`, `h_M^(j)`, the deleted-coordinate mode blocks, the scalar
  three-by-three coupling matrix, and `b` are proof-local objects defined
  directly from the setting's transfer. They are used only inside
  Lemma~\ref{lem:p2-i9-s6-step002-root-transfer}.
- The constants `C_0,C_eta,C_nu,Gamma_star` are fixed setting/proof-class
  constants. `D_stat>=2` is a permanent lower requirement on the eventually
  selected fixed proof exponent; increasing it later preserves every bound
  here. `(SG-1)--(SG-3)` prove the required threshold provenance. No free
  bounded quantity or trajectory-dependent constant is introduced.
- The small-gain conclusion is proved on the raw structural upper-scale
  interface and therefore does not consume the dependency's lower-tail
  event `E_lb`. The exact `H=e=0` baseline is handled separately by equality.
- No `global_proof.md`, prior same-step proof, sketch-4 artifact, or
  `proof_history` artifact was read or used as evidence, a cited result, an
  assumption source, or authority to alter the target claim. This is a fresh
  sketch-attempt-6, unit-attempt-1 proof.
