# Proof Step

## Step Identity

- Sketch attempt: 8
- Step ID: step_002
- Unit attempt: 1
- Branch: perspective_2/idea_9
- Binding setting SHA-256: 27315acf705cd791f29d341efaa11aae66803d02b9c240fc613cce06cc57c4b2
- Binding proof-sketch SHA-256: 40782b585d3292d25d1a921425470ade621f1dc6180a2f52bb05b94c96375fe8
- Binding proof-sketch-review SHA-256: 2a5834040fccae1871b1346184eca7458d479d525f8cdcb8a2e4110baa20a4c7
- Accepted dependency proof SHA-256: 7bac568976f9830625019e4e6b912a4b1779a742f61e37f92a8aeea360b6101a
- Accepted dependency review SHA-256: f0b185f9f467dbf6d2e3cb6216427cc860005a7da1a90da60b288dc12f345d7b
- Accepted global diagnostic/review used only as planning context:
  aa100a493bee364e4d4103acae7f0a456bc28d30e1dcb5231a619f4ea71f7c05 /
  a4d07969e5e1ee0923cffae83b66a0e5fe848396d4615b4e06250c4e11714418

## Target Step Claim

- Intended claim: Derive (R-src), the three static leakage bounds, the exact
  first-chain source \(S\) and its budget, and the entrywise-\(\ell_1\) and
  rootwise-block-\(\ell_2\) transfer gaps with
  \(q_{\rm res},q_{\rm row}\le 1/4\).
- Dependencies: accepted sketch-8 step_001, specifically
  Proposition~\ref{prop:p2-i9-s8-step001-instance} and its accepted
  normalization conclusions.
- Assumptions used: the derived event \({\cal E}_{\rm inst}\),
  Assumption~\ref{assump:modewise-gram-margin}, and
  Assumption~\ref{assump:base-product-balance}. Basic parameter-domain facts
  used in the deterministic small-gain check are already in the binding
  setting and in the accepted dependency's theorem domain.
- Technical challenge: pass from a signed operator-Gram bound to
  absolute-Gram column controls without asserting an operator bound on
  \(|G_M-I|\), and prove the fixed-root block-\(\ell_2\) estimate from the
  exact displayed transfer without a dimension loss.
- Intended proof tool: columnwise Cauchy--Schwarz, Schur products, exact
  row/column sums of the three-mode block map, and the nonnegative matrix
  inequality
  \(\|B\|_{2\to2}\le
  \sqrt{\|B\|_{1\to1}\|B\|_{\infty\to\infty}}\).
- Output target: the setting-defined \(H_M,J_M,K_M,S\), (R-src),
  (R-leak-A) and its cyclic forms, (R-S-budget), the exact transfer
  \({\cal T}\), (R-gap), and (J-row-gap), retaining explicit
  \(\nu_{\rm real},r,\Gamma_\star,\eta_0\), and
  \(P^{-D_{\rm stat}}\) dependence.
- Sketch-row review status at producer dispatch: PENDING.

Binding sketch row (copied): Step ID step_002; intended claim: derive
R-src, leakage, S budget, and l1/rootwise transfer gaps with
q_res,q_row<=1/4; dependencies: step_001; assumptions used: derived
E_inst, assump:modewise-gram-margin, assump:base-product-balance; technical
challenge: absolute-Gram rows and fixed-root block map; intended tools:
columnwise Cauchy--Schwarz, Schur products, and the three-mode block norm;
output target: H/J/K/S and Tcal; rate interface: R2 structural retaining
nu,r,Gamma_star; sketch review status: PENDING.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- assump:modewise-gram-margin fixes
  \(\nu_\star=(C_\nu r\log(2r))^{-1}\) and declares the realized
  absolute-Gram and transfer controls to be derived rather than primitive.
- assump:base-product-balance fixes the class constant
  \(\Gamma_\star\). The realized ratio
  \(\tau_{\max}/\tau_{\min}\le2\Gamma_\star\) is not assumed here; it is
  supplied by the accepted dependency.

No trajectory, history, resolvent, row-profile, or good-state condition is
used.

### Derived invariants supplied by accepted dependencies

The accepted sketch-8 proof and review for step_001, at the exact hashes in
the Step Identity, supply Proposition~\ref{prop:p2-i9-s8-step001-instance}.
On a single event \({\cal E}_{\rm inst}\) of instance probability at least
\(1-r^{-10}\), it supplies simultaneously

\[
  G_M=G_M^\top,\qquad (G_M)_{jj}=1,\qquad
  \nu_{\rm real}:=\max_M\|G_M-I_r\|_{\rm op}\le
  \nu_\star,
  \tag{D-Gram}
\]

and

\[
  {\tau_{\max}\over\tau_{\min}}\le2\Gamma_\star,\qquad
  k\ge r.
  \tag{D-weight-rank}
\]

It also supplies nonvanishing realized columns, so every normalized Gram and
every setting-defined \(H_M,J_M,K_M\) is well-defined. The dependency's
exact orthogonal/noiseless interface is retained separately.

### Local conditional hypotheses

None. We fix an arbitrary outcome in the already-derived event
\({\cal E}_{\rm inst}\) only to perform deterministic algebra. This event
membership is discharged by the accepted dependency and is not promoted to a
new theorem assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | **Absolute-Gram and Schur-Kernel Bounds**, lem:p2-i9-s8-step002-absolute: under Assumption~\ref{assump:modewise-gram-margin} and Proposition~\ref{prop:p2-i9-s8-step001-instance}, every realized \(H_M,J_M,K_M\) obeys (R-src), the \(J\) row/column bound, and the stated Schur-kernel bound. | Produces the exact static controls used by every later estimate without an absolute-Gram operator claim. |
| unit_002 | lemma | **Static Leakage and First-Chain Source**, lem:p2-i9-s8-step002-source: under Assumption~\ref{assump:base-product-balance}, Proposition~\ref{prop:p2-i9-s8-step001-instance}, and Lemma~\ref{lem:p2-i9-s8-step002-absolute}, the three leakage bounds and the exact \(S=KJ\) source obey (R-S-budget) and a rootwise bound. | Produces leakage and the direct/transitive source with exact rates. |
| unit_003 | proposition | **Exact Two-Norm Lifted Transfer Bound**, prop:p2-i9-s8-step002-transfer: under Proposition~\ref{prop:p2-i9-s8-step001-instance} and Lemma~\ref{lem:p2-i9-s8-step002-absolute}, the setting-defined transfer has both induced norms at most \(2(\nu_{\rm real}+\eta_0)(1+\sqrt r\,\nu_{\rm real})\). | Proves (R-gap)'s norm estimate and the rootwise (J-row-gap) estimate from exact fixed-root row and column sums. |
| unit_004 | proposition | **Compatible Static Small-Gain Selection**, prop:p2-i9-s8-step002-gap: under the two primitive row assumptions, Proposition~\ref{prop:p2-i9-s8-step001-instance}, and Proposition~\ref{prop:p2-i9-s8-step002-transfer}, the fixed constants and \(D_{\rm stat}\) can be selected by the displayed scalar inequalities so \(q_{\rm res},q_{\rm row}\le1/4\); in the exact \(H=e_{\rm num}=0\) branch they equal zero. | Closes both derived gaps, gives explicit constant provenance, and preserves the baseline. |

## Cited Result Applications

### Dependency D1: accepted once-drawn instance proposition

Source: Proposition~\ref{prop:p2-i9-s8-step001-instance} in the accepted
sketch-8 step_001 proof, certified by the accepted review at the hashes in
the Step Identity.

Restated in current notation: under
Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance},
\ref{assump:gaussian-smoothing},
\ref{assump:dimension-regime},
\ref{assump:smoothing-scale}, and
\ref{assump:modewise-gram-margin}, with
Assumption~\ref{assump:rank-regime} used for its rank-domain conclusions,
there is one event \({\cal E}_{\rm inst}\) of probability at least
\(1-r^{-10}\) on which (D-Gram), (D-weight-rank), and realized-column
nonvanishing hold. The proposition also gives the exact target and the
orthogonal/noiseless equality interface.

Object mapping: its normalized realized matrices and Grams are exactly the
\(A,B,C,G_A,G_B,G_C\) in the present setting. Its
\(\nu_{\rm real}\), \(\tau_j\), \(r,k,\Gamma_\star\), and \(P\) have the
same meanings here. No population, whitened, projected, or reference Gram is
substituted.

Assumption discharge: the dependency proof and its review already discharged
the listed primitive assumptions. This step consumes only the accepted
outputs (D-Gram), (D-weight-rank), and nonvanishing; it does not re-assume
them.

### Result N1: nonnegative row/column-to-spectral comparison

If \(B=(b_{ij})\) is a finite nonnegative matrix, then

\[
 \|B\|_{1\to1}=\max_j\sum_i b_{ij},\qquad
 \|B\|_{\infty\to\infty}=\max_i\sum_jb_{ij},\qquad
 \|B\|_{2\to2}\le
 \sqrt{\|B\|_{1\to1}\|B\|_{\infty\to\infty}}.
 \tag{N1}
\]

The last inequality is checked directly: for every real vector \(x\),
Cauchy--Schwarz with weights \(b_{ij}\) gives

\[
 \begin{aligned}
 \|Bx\|_2^2
 &\le\sum_i\left(\sum_jb_{ij}\right)
             \left(\sum_jb_{ij}x_j^2\right)\\
 &\le\|B\|_{\infty\to\infty}
       \sum_jx_j^2\sum_ib_{ij}\\
 &\le\|B\|_{\infty\to\infty}\|B\|_{1\to1}\|x\|_2^2.
 \end{aligned}
\]

There are no hypotheses beyond finiteness and nonnegativity. It will be
applied to the exact fixed-root coefficient matrices of \({\cal T}\), which
are nonnegative by construction.

### Internal result interfaces

- Lemma~\ref{lem:p2-i9-s8-step002-absolute} supplies individual
  \(H_M(j,t)\le\nu_{\rm real}\), \(J_M\) row/column sums at most
  \(1+\sqrt r\,\nu_{\rm real}\), and the \(K_M\) bounds used by the source
  and transfer units.
- Lemma~\ref{lem:p2-i9-s8-step002-source} supplies the exact static source
  and leakage interfaces exported in the target assembly.
- Proposition~\ref{prop:p2-i9-s8-step002-transfer} supplies both exact
  operator-norm bounds used by the small-gain proposition.
- Proposition~\ref{prop:p2-i9-s8-step002-gap} supplies the final derived
  \(1/4\) margins and exact-limit reduction.

Each interface is proved below from D1, Result N1 where indicated, and prior
local results only.

## Local Derivation

### unit_001: lemma - Absolute-Gram and Schur-Kernel Bounds

**Paper-ready result.**

Paper-ready label: lem:p2-i9-s8-step002-absolute.

Under Assumption~\ref{assump:modewise-gram-margin} and the accepted derived
event conclusion of Proposition~\ref{prop:p2-i9-s8-step001-instance}, let
\(\nu=\nu_{\rm real}\) and define, exactly as in the setting,

\[
 H_M=|G_M-I_r|,\qquad J_M=I_r+H_M,\qquad
 K_A=H_B\circ H_C
\]

with cyclic definitions of \(K_B,K_C\). Then, for every mode \(M\),

\[
 \max_j\|H_Me_j\|_2\le\nu,\qquad
 \|H_M\|_1=\|H_M\|_\infty\le\sqrt r\,\nu,\qquad
 \|J_M\|_1=\|J_M\|_\infty\le1+\sqrt r\,\nu,
 \tag{A1}
\]

and

\[
 \|K_M\|_1=\|K_M\|_\infty\le\nu^2.
 \tag{A2}
\]

In particular, (A1)--(A2) prove (R-src), and every entry satisfies
\(0\le H_M(j,t)\le\nu\).

**Proof.**

Fix a mode and put \(E_M=G_M-I_r\). By (D-Gram), \(E_M\) is symmetric,
has zero diagonal, and obeys \(\|E_M\|_{\rm op}\le\nu\). Entrywise absolute
value does not change the Euclidean norm of any column, so for every \(j\),

\[
 \|H_Me_j\|_2^2
 =\sum_{i=1}^r |E_M(i,j)|^2
 =\|E_Me_j\|_2^2
 \le\|E_M\|_{\rm op}^2
 \le\nu^2.
 \tag{A3}
\]

This is a columnwise statement; no operator-norm comparison between
\(H_M\) and \(E_M\) has been made. Cauchy--Schwarz and the zero diagonal give

\[
 \sum_iH_M(i,j)\le\sqrt{r-1}\,\|H_Me_j\|_2
 \le\sqrt r\,\nu.
 \tag{A4}
\]

Because \(H_M\) is symmetric, its maximum row and column sums agree. This
proves the two \(H_M\) norm statements in (A1); adding the identity proves
the \(J_M\) statements. The entrywise bound follows from (A3).

For example, for every column \(j\),

\[
 \begin{aligned}
 \sum_iK_A(i,j)
 &=\sum_iH_B(i,j)H_C(i,j)\\
 &\le
 \left(\sum_iH_B(i,j)^2\right)^{1/2}
 \left(\sum_iH_C(i,j)^2\right)^{1/2}
 \le\nu^2.
 \end{aligned}
 \tag{A5}
\]

The same computation applies to the other two cyclic kernels. Each \(K_M\)
is symmetric, hence the row bounds equal the column bounds. This proves
(A2).

### unit_002: lemma - Static Leakage and First-Chain Source

**Paper-ready result.**

Paper-ready label: lem:p2-i9-s8-step002-source.

Under Assumption~\ref{assump:base-product-balance}, the accepted conclusions
of Proposition~\ref{prop:p2-i9-s8-step001-instance}, and
Lemma~\ref{lem:p2-i9-s8-step002-absolute}, define \(L_{M,j}\) and the
zero-diagonal array \(S\) exactly as in the setting. Then, for every label
\(j\),

\[
 L_{A,j}\le\tau_{\max}\nu^2
 \le2\Gamma_\star\tau_j\nu^2,
 \tag{A6}
\]

with the same conclusion in modes \(B,C\). Moreover, for every root \(j\)
and mode \(M\),

\[
 \sum_{\ell\ne j}S_{j,M,\ell}\le
 \nu^2(1+\sqrt r\,\nu),
 \tag{A7}
\]

and therefore

\[
 \|S\|_1\le3r\nu^2(1+\sqrt r\,\nu),\qquad
 \|S\|_{{\rm root},2}\le
 \sqrt3\,\nu^2(1+\sqrt r\,\nu).
 \tag{A8}
\]

The first inequality in (A8) is exactly (R-S-budget).

**Proof.**

By the definition of leakage and (A2),

\[
 L_{A,j}=\sum_{\ell\ne j}\tau_\ell K_A(\ell,j)
 \le\tau_{\max}\sum_\ell K_A(\ell,j)
 \le\tau_{\max}\nu^2.
\]

The accepted weight-ratio conclusion (D-weight-rank) gives
\(\tau_{\max}\le2\Gamma_\star\tau_{\min}\le
2\Gamma_\star\tau_j\), proving (A6). The cyclic cases are identical.

For ordered \(j\ne\ell\), the setting defines
\(S_{j,A,\ell}=(K_AJ_A)_{j\ell}\) and sets \(S_{j,A,j}=0\). Since all
entries are nonnegative, (A2) and (A1) imply

\[
 \sum_{\ell\ne j}S_{j,A,\ell}
 \le\sum_\ell(K_AJ_A)_{j\ell}
 \le\|K_A\|_\infty\|J_A\|_\infty
 \le\nu^2(1+\sqrt r\,\nu).
 \tag{A9}
\]

The same proof applies in modes \(B,C\), giving (A7). Summing (A7) over
the \(3r\) root-mode pairs proves the array-\(\ell_1\) estimate in (A8).
For the rootwise estimate, nonnegativity gives, for each fixed root,

\[
 \begin{aligned}
 \left(\sum_M\sum_{\ell\ne j}S_{j,M,\ell}^2\right)^{1/2}
 &\le
 \left(\sum_M\left(\sum_{\ell\ne j}S_{j,M,\ell}\right)^2\right)^{1/2}\\
 &\le\sqrt3\,\nu^2(1+\sqrt r\,\nu).
 \end{aligned}
\]

Finally, the exact algebra retains the advertised paths. For \(j\ne\ell\),

\[
 \begin{aligned}
 S_{j,A,\ell}
 &=(K_A(I_r+H_A))_{j\ell}\\
 &=H_B(j,\ell)H_C(j,\ell)
   +\sum_tH_B(j,t)H_C(j,t)H_A(t,\ell).
 \end{aligned}
 \tag{A10}
\]

Thus the identity part of \(J_A\) keeps the direct path, while its \(H_A\)
part keeps every first transitive chain, including a chain whose direct
\(j\)-to-\(\ell\) correlations vanish. No term has been replaced by an
operator bound for an absolute Gram.

### unit_003: proposition - Exact Two-Norm Lifted Transfer Bound

**Paper-ready result.**

Paper-ready label: prop:p2-i9-s8-step002-transfer.

Under the accepted derived event conclusion of
Proposition~\ref{prop:p2-i9-s8-step001-instance} and
Lemma~\ref{lem:p2-i9-s8-step002-absolute}, let

\[
 \eta_0=C_\eta(\Gamma_\star\nu^2+P^{-D_{\rm stat}})\ge0
\]

and let \({\cal T}\) be the exact nonnegative transfer on the
setting-defined zero-diagonal array domain, namely

\[
 ({\cal T}Z)_{j,A,\ell}
 =\sum_{t\ne j}J_A(t,\ell)
 \left[(H_C(j,t)+\eta_0)Z_{j,B,t}
      +(H_B(j,t)+\eta_0)Z_{j,C,t}\right],
 \tag{R-transfer-A}
\]

with the cyclic definitions for output modes \(B,C\). Then

\[
 \|{\cal T}\|_{1\to1}\le
 2(\nu+\eta_0)(1+\sqrt r\,\nu)
 \tag{A11}
\]

and

\[
 \|{\cal T}\|_{{\rm root},2\to{\rm root},2}\le
 2(\nu+\eta_0)(1+\sqrt r\,\nu).
 \tag{A12}
\]

**Proof.**

The transfer never changes the root \(j\). For fixed \(j\), collect the
\(3(r-1)\) coordinates

\[
 Z_j=(Z_{j,M,t}:M\in\{A,B,C\},\ t\ne j)
\]

and let \(B_j\) be the nonnegative coefficient matrix satisfying
\(({\cal T}Z)_j=B_jZ_j\). We bound every row sum and every column sum of
this exact matrix.

Consider first an input coordinate \((B,t)\), where \(t\ne j\). By the
setting's displayed transfer and its cyclic definitions, it contributes only
to the \(A\)-output through the \(H_C+\eta_0\) multiplier and to the
\(C\)-output through the \(H_A+\eta_0\) multiplier. Hence its full column
sum in \(B_j\) is

\[
 \begin{aligned}
 & (H_C(j,t)+\eta_0)\sum_{\ell\ne j}J_A(t,\ell)
 +(H_A(j,t)+\eta_0)\sum_{\ell\ne j}J_C(t,\ell)\\
 &\qquad\le
 2(\nu+\eta_0)(1+\sqrt r\,\nu),
 \end{aligned}
 \tag{A13}
\]

where Lemma~\ref{lem:p2-i9-s8-step002-absolute} gives both
\(H_M(j,t)\le\nu\) and each \(J_M\) row sum bound. The two other input
modes obey the same estimate by cyclic permutation. Therefore

\[
 \|B_j\|_{1\to1}\le2(\nu+\eta_0)(1+\sqrt r\,\nu).
 \tag{A14}
\]

Now fix an output coordinate \((A,\ell)\), \(\ell\ne j\). Its row sum is
exactly

\[
 \sum_{t\ne j}J_A(t,\ell)
 \bigl[H_C(j,t)+\eta_0+H_B(j,t)+\eta_0\bigr].
 \tag{A15}
\]

Each bracket is at most \(2(\nu+\eta_0)\). Since \(J_A\) is symmetric,
Lemma~\ref{lem:p2-i9-s8-step002-absolute} also gives
\(\sum_tJ_A(t,\ell)\le1+\sqrt r\,\nu\). Dropping the restriction
\(t\ne j\) only increases the nonnegative sum, so (A15) is at most the
right side of (A13). The cyclic output modes are identical, and therefore

\[
 \|B_j\|_{\infty\to\infty}\le
 2(\nu+\eta_0)(1+\sqrt r\,\nu).
 \tag{A16}
\]

The global transfer is the direct sum of these root blocks. Its induced
entrywise-\(\ell_1\) norm is the largest column sum of any \(B_j\), so (A14)
proves (A11). Result N1 and (A14)--(A16) give

\[
 \|B_j\|_{2\to2}\le
 2(\nu+\eta_0)(1+\sqrt r\,\nu)
 \quad\text{for every }j.
 \tag{A17}
\]

Consequently, for every array \(Z\),

\[
 \begin{aligned}
 \|{\cal T}Z\|_{{\rm root},2}
 &=\max_j\|B_jZ_j\|_2\\
 &\le2(\nu+\eta_0)(1+\sqrt r\,\nu)\max_j\|Z_j\|_2,
 \end{aligned}
\]

which is (A12). This proof uses the exact root blocks. In particular, it
does not pass through a global array-\(\ell_1\) estimate and therefore does
not introduce an \(r\), \(\sqrt r\), or mode-count loss.

### unit_004: proposition - Compatible Static Small-Gain Selection

**Paper-ready result.**

Paper-ready label: prop:p2-i9-s8-step002-gap.

Under Assumptions~\ref{assump:modewise-gram-margin} and
\ref{assump:base-product-balance}, the accepted conclusions of
Proposition~\ref{prop:p2-i9-s8-step001-instance}, and
Proposition~\ref{prop:p2-i9-s8-step002-transfer}, fix the proof constants
\(C_0,C_\eta>0\). Choose \(C_\nu\ge1\) within the setting's declared
"sufficiently large" static margin and choose the integer
\(D_{\rm stat}\ge60\) so that

\[
 4C_0\Gamma_\star
 \left[
 {1\over2C_\nu\log4}
 +{C_\eta\Gamma_\star\over4C_\nu^2\log^2 4}
 \right]\le{1\over8},
 \tag{SG-struct}
\]

and

\[
 4C_0\Gamma_\star C_\eta\,128^{-D_{\rm stat}}\le{1\over8}.
 \tag{SG-num}
\]

Then, on \({\cal E}_{\rm inst}\),

\[
 q_{\rm res}:=C_0\Gamma_\star\|{\cal T}\|_{1\to1}\le{1\over4},
 \qquad
 q_{\rm row}:=C_0\Gamma_\star
 \|{\cal T}\|_{{\rm root},2\to{\rm root},2}\le{1\over4}.
 \tag{A18}
\]

Increasing \(D_{\rm stat}\) later to meet downstream exponent obligations
preserves (SG-num) and (A18). In the exact \(H_A=H_B=H_C=0\),
 exact numerical specialization \(e_{\rm num}=0\) baseline, \({\cal T}=0\)
 and both gaps equal zero.

**Proof.**

The accepted dependency and the setting's parameter domain give
\(n,r\ge2\), \(k\ge r\), \(\kappa\ge1\), and \(\rho^{-1}\ge1\). Hence

\[
 P=16nrk\kappa\rho^{-1}\ge32r^2,\qquad
 P^{-D_{\rm stat}}\le(32r^2)^{-D_{\rm stat}}.
 \tag{A19}
\]

Also, by (D-Gram),

\[
 \nu\le
 {1\over C_\nu r\log(2r)},\qquad
 1+\sqrt r\,\nu
 \le1+{1\over C_\nu\sqrt r\log(2r)}\le2.
 \tag{A20}
\]

Proposition~\ref{prop:p2-i9-s8-step002-transfer}, the definition of
\(\eta_0\), and (A19)--(A20) therefore give, for either
\(q=q_{\rm res}\) or \(q=q_{\rm row}\),

\[
 \begin{aligned}
 q
 &\le2C_0\Gamma_\star
   [\nu+C_\eta(\Gamma_\star\nu^2+P^{-D_{\rm stat}})]
   (1+\sqrt r\,\nu)\\
 &\le4C_0\Gamma_\star
 \left[
 {1\over C_\nu r\log(2r)}
 +{C_\eta\Gamma_\star\over C_\nu^2r^2\log^2(2r)}
 +C_\eta(32r^2)^{-D_{\rm stat}}
 \right].
 \end{aligned}
 \tag{A21}
\]

All three bracketed terms are nonincreasing for \(r\ge2\). The first two
terms, evaluated at \(r=2\), contribute at most \(1/8\) after multiplication
by \(4C_0\Gamma_\star\), by (SG-struct). The final term contributes at most
\(1/8\), by (SG-num), because \(32r^2\ge128\). Thus (A21) is at most
\(1/4\), proving (A18).

The choice is consistent: for fixed \(C_0,C_\eta,\Gamma_\star\), the left
side of (SG-struct) tends to zero as the fixed static-margin constant
\(C_\nu\) increases, and the left side of (SG-num) tends to zero as the
integer \(D_{\rm stat}\) increases. The global sketch chooses these constants
in that order. No realized lower bound on \(\nu\), including the derived
\({\cal E}_{\rm lb}\) lower tail, is used in (A19)--(A21).

For the exact baseline, \(H_A=H_B=H_C=0\) implies \(\nu=0\), \(K_M=0\),
and \(S=0\). With the exact numerical specialization \(e_{\rm num}=0\),
the displayed definition of \(\eta_0\) is evaluated with zero numerical
padding, so \(\eta_0=0\) and every coefficient in (R-transfer-A) is zero.
Hence \({\cal T}=0\) and
\(q_{\rm res}=q_{\rm row}=0\).

## Mechanism And Boundary Audit

- Claim class and theorem role: positive small-gain and resolvent support for
  every later finite history transfer.
- Mechanism source: the accepted realized signed-Gram bound from
  step_001, direct entrywise absolute-value and Schur-product algebra, and
  the exact three-mode transfer in the setting.
- Source-to-claim match: columnwise Cauchy--Schwarz controls each absolute
  row/column, while the fixed-root coefficient matrix is exactly the
  transfer consumed by step_003; no absolute-Gram operator inequality is
  substituted.
- Positive/control term and opposing defects: the column \(\ell_2\) scale
  \(\nu\) and the Schur scale \(\nu^2\) control the source; numerical padding
  \(\eta_0\) and the \(J\) spreading rows are retained explicitly in
  \(2(\nu+\eta_0)(1+\sqrt r\,\nu)\).
- Closure relation: (SG-struct) and (SG-num) give
  \(C_0\Gamma_\star\|{\cal T}\|\le1/4\) in both norms, so the later finite
  Neumann accumulation has a strict geometric margin.
- Boundary and null stress: dense rows, transitive chains, and the
  zero-diagonal domain are included in the row/column sums. If the source
  vanishes in the exact \(H=e_{\rm num}=0\) branch, then \(K=S={\cal T}=0\)
  and the target gap is exactly zero; no false positive lower source is
  asserted.
- Producer-consumer path: accepted step_001 event and target-frame Grams
  produce this step's static objects; step_002 exports them to step_003 and
  the later ledger steps. No history object is consumed here.

## Target-Step Assembly

On the accepted once-drawn event, Lemma~\ref{lem:p2-i9-s8-step002-absolute}
turns the signed operator-Gram conclusion into the exact column-\(\ell_2\),
row/column-\(\ell_1\), \(J\), and Schur-kernel bounds in (R-src), without
asserting \(\||G_M-I|\|_{\rm op}\le\nu_{\rm real}\).
Lemma~\ref{lem:p2-i9-s8-step002-source} combines these controls with the
accepted realized weight ratio to prove all three leakage estimates, the
exact direct/transitive identity (A10), and

\[
 \|S\|_1\le3r\nu_{\rm real}^2
          (1+\sqrt r\,\nu_{\rm real}).
\]

Proposition~\ref{prop:p2-i9-s8-step002-transfer} represents the exact
transfer as independent fixed-root blocks, bounds both the row and column
sums of every block by
\(2(\nu_{\rm real}+\eta_0)(1+\sqrt r\,\nu_{\rm real})\), and uses Result N1
to obtain both (R-gap)'s induced-\(\ell_1\) estimate and the required
rootwise (J-row-gap) estimate with no extra multiplicity factor.
Proposition~\ref{prop:p2-i9-s8-step002-gap} then verifies the explicit
static and numerical choices that make both scaled norms at most \(1/4\).

These four named results prove the exact sketch-8 step_002 row. The output is
static, uses no history or trajectory condition, and has the exact
root/mode/label domain and zero-diagonal convention consumed by
steps_003--009 and step_013. The inherited event probability is unchanged,
and the exact \(H=e_{\rm num}=0\) baseline gives zero leakage, source,
transfer, and small-gain parameters.

## Explicit Rate Audit

- Exposed variables: \(n,r,k,\kappa,\rho,\Gamma_\star,P\),
  \(\nu_{\rm real}\), \(P^{-D_{\rm stat}}\), \(\eta_0\), the realized
  \(H_M,J_M,K_M,S\), and fixed proof constants
  \(C_0,C_\eta,C_\nu,D_{\rm stat}\).
- Hidden constants may depend on: only the fixed class constants
  \(c_0,c_\rho,C_{\rm dim},C_{\rm sm},C_\nu,C_{\rm rank},
  \Gamma_\star\) and fixed protocol/proof constants. The displayed static
  estimates themselves have no hidden multiplicative constant.
- Hidden constants may not depend on: \(n,r,k,\kappa,\rho\), the realized
  instance, commit order, protected history, tape, or \(\epsilon\).
- Fixed quantities: the deterministic base triple and all fixed class/proof
  constants are held fixed; the algebra is uniform over every root, mode,
  and tested label on the one realized event.
- Probability mode: deterministic conditional on the accepted
  \({\cal E}_{\rm inst}\). No new random event or union bound is introduced,
  so the inherited instance probability remains at least \(1-r^{-10}\).
- Horizon mode: once-drawn static and history-free. The output is uniform for
  every later finite prefix because \({\cal T}\) depends only on the realized
  instance, not on a prefix.
- Norm mode: Euclidean column norms for \(H_Me_j\); induced matrix
  \(\ell_1\) and \(\ell_\infty\) norms for \(H,J,K\); entrywise array
  \(\ell_1\) for \(S\) and \({\cal T}\); and the exact setting-defined
  rootwise block-\(\ell_2\) norm for \({\cal T}\).
- Admissibility conditions and auxiliary tolerances: (SG-struct), (SG-num),
  \(C_\nu\ge1\), and \(D_{\rm stat}\ge60\). These are fixed proof-constant
  selections under the setting's declared margin and exponent freedom, not
  realized or trajectory conditions.
- Term absorption or simplification inequalities: none is hidden. Equations
  (A19)--(A21) display separately the structural
  \(\nu_{\rm real}\), padded structural
  \(\Gamma_\star\nu_{\rm real}^2\), and numerical
  \(P^{-D_{\rm stat}}\) terms before using (SG-struct)--(SG-num). The
  derived lower-tail event is not used to absorb the numerical term.
- Probability conversion: none; the accepted dependency event is consumed
  without further conditioning cost.
- Contribution to any Rate Specialization Bridge: this step supplies the raw
  static \(S\) budget and both exact \(1/4\) resolvent margins. It performs no
  later branch-qualified row/global simplification.
- Baseline-reduction check: setting \(H_A=H_B=H_C=0\) and the exact
  numerical specialization \(e_{\rm num}=0\) gives \(K=S={\cal T}=0\), all leakage terms zero,
  and \(q_{\rm res}=q_{\rm row}=0\), exactly preserving the inherited
  orthogonal/noiseless interface rather than leaving a conservative
  remainder.

## Blockers

None.

## Notation And Assumption Notes

- \(\nu\) is a proof-local abbreviation for the setting-defined
  \(\nu_{\rm real}\). It is never a new bound or assumption.
- \(E_M=G_M-I_r\) is proof-local and used only to compare signed Gram columns
  with their entrywise absolute values. The public-facing objects remain the
  setting-defined \(H_M,J_M,K_M\).
- The array \(S\), \({\cal T}\), \(q_{\rm res}\), and \(q_{\rm row}\) are
  public-facing setting objects. The source rootwise estimate in (A8) is an
  appendix-local strengthening used to expose the downstream norm interface;
  (R-S-budget) is the public source bound.
- \(Z_j\) and \(B_j\) are proof-local fixed-root vector and matrix
  representations of the setting-defined array and transfer. They introduce
  no transformed target and are eliminated from the exported interface.
- (SG-struct) and (SG-num) are appendix-local deterministic selection
  inequalities. Their constants come directly from setting quantities and
  the exact estimate (A21); they are not data-dependent admissibility events.
- \({\cal E}_{\rm inst}\), nonvanishing, (D-Gram), and (D-weight-rank) are
  generated outputs supplied by the accepted dependency. No generated event
  or bound is classified as primitive in this proof.
- There are no local conditional hypotheses, history invariants, stability
  assumptions, or unproved bounded quantities. Every constant, rate, and
  norm used by the target assembly is setting-defined, inherited from the
  accepted dependency, or proved in a named local unit.
- The accepted global_proof.md and paired accepted global_proof_review.md
  were read only for the planning observation that a fixed-root block has
  mode adjacency degree two. They were not used as evidence, a cited result,
  an assumption source, or authority to alter the sketch row. All row/column
  and small-gain calculations are independently proved above.
