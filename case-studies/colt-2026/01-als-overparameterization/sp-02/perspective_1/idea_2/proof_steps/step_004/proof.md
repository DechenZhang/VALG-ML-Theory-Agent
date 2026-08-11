# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove each displayed cALS pseudoinverse update is the exact minimum-Frobenius-norm block minimizer, the three sequential block objectives are nonincreasing within each sweep, and \(F_{\mathrm{cALS}}(t)\) has a finite limit.
- Depends on: None.
- Assumptions used: None beyond the formal cALS algorithm and finite-dimensional real matrix setting in setting.md.
- Technical challenge: Cover singular Khatri--Rao Gram matrices without assuming conditioning, and distinguish the displayed sequential sweep from a simultaneous Jacobi update.
- Intended proof tool or cited result: Direct Moore--Penrose matrix least squares, orthogonal \(Q\)-splitting, and monotone convergence of real sequences.
- Output target: cALS scalar-limit certificate for step_007.
- Rate objective: Objective B, namely deterministic all-time cALS monotonicity and asymptotic scalar limit, with no convergence-rate or conditioning claim.
- Row-local review status in the accepted sketch: PENDING.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - None of the theorem-level assumptions are needed. The proof uses only the finite-dimensional cALS definitions in setting.md: the displayed mode matricizations, the fixed standard Khatri--Rao ordering, the orthonormal basis \(Q_{\mathrm{cALS}}\) used by the constrained \(X\)-block, and the three displayed pseudoinverse updates.
  - The local algebra is stated for finite real matrices. The Gaussian initialization and smoothed tensor in setting.md take values in finite-dimensional Euclidean spaces, so the update proof is deterministic for each finite realization.
- Derived invariants supplied by accepted dependencies: None. In particular, no fixed-span or full-rank conclusion from another proof step is imported; feasibility of the current cALS \(X\)-iterate is reproved directly from the initialization and update formulas below.
- Local conditional hypotheses:
  - A local block lemma assumes finite matrices \(A,K\) and, for the constrained block, an orthonormal \(Q\). These conditions are discharged inductively for the cALS trajectory in Proposition~\ref{prop:step-004-sequential-descent}.
  - The statements concern the displayed cALS trajectory on its formal \(k\)-column orthonormal-basis domain. No rank, conditioning, boundedness, or parameter-convergence condition is imposed on a Khatri--Rao matrix or factor.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under the finite CP definitions and fixed standard Khatri--Rao ordering, \(S_{(1)}=X(Z\odot Y)^{\mathsf T}\), \(S_{(2)}=Y(Z\odot X)^{\mathsf T}\), and \(S_{(3)}=Z(Y\odot X)^{\mathsf T}\), so each matricized block objective is exactly the tensor objective. | Identifies every matrix least-squares problem with the actual \(F\), without a surrogate residual. |
| unit_002 | lemma | For finite \(A\in\mathbb R^{p\times m}\) and \(K\in\mathbb R^{m\times k}\), \(U_\star=AK(K^{\mathsf T}K)^\dagger\) is the minimum-Frobenius-norm minimizer of \(\frac12\|A-UK^{\mathsf T}\|_F^2\), including rank-deficient and zero \(K\). | Supplies the exact Moore--Penrose block solution and singular-design boundary handling. |
| unit_003 | lemma | For finite \(A,K\) and \(Q^{\mathsf T}Q=I_k\), minimizing over \(\operatorname{col}(X)\subseteq\operatorname{range}(Q)\) gives the minimum-norm solution \(X_\star=Q(Q^{\mathsf T}AK)(K^{\mathsf T}K)^\dagger\). | Proves the constrained cALS \(X\)-formula by orthogonal splitting. |
| unit_004 | proposition | At every finite feasible cALS state, all three displayed updates are finite minimum-Frobenius-norm minimizers of their current block problems, even when a Khatri--Rao Gram matrix is singular; each update gives its one-block objective inequality. | Establishes exact block descent before the sweep-level argument. |
| unit_005 | proposition | Starting from cALS initialization, every sweep is defined and preserves \(X_t\in\operatorname{range}(Q_{\mathrm{cALS}})\); in the displayed sequential order the three block inequalities imply \(F_{\mathrm{cALS}}(t+1)\le F_{\mathrm{cALS}}(t)\). | Gives all-time deterministic monotonicity in the correct \(X,Y,Z\) order. |
| unit_006 | lemma | A finite nonnegative sequence with \(F_{t+1}\le F_t\) converges to \(\inf_tF_t\), and its nonnegative sweep drops telescope with \(\sum_{t=0}^{N-1}(F_t-F_{t+1})=F_0-F_N\le F_0\). | Converts cALS descent into the required finite scalar limit. |

Atomic step = no. The matricization bridge, singular-design least squares, constrained split, trajectory feasibility and well-definedness, sequential descent, and scalar convergence are separate proof obligations.

## Cited Result Applications

No paper result and no accepted dependency-step result is used. The following elementary tools are restated and checked in the current notation.

1. **Compact singular value decomposition and Moore--Penrose inverse.** Every finite \(K\in\mathbb R^{m\times k}\) has a compact SVD \(K=U_K\Sigma V_K^{\mathsf T}\), where \(s=\operatorname{rank}(K)\), \(U_K^{\mathsf T}U_K=V_K^{\mathsf T}V_K=I_s\), and \(\Sigma\) has positive diagonal entries. Its Gram pseudoinverse is \((K^{\mathsf T}K)^\dagger=V_K\Sigma^{-2}V_K^{\mathsf T}\) for \(s>0\), and is zero for \(s=0\). Lemma~\ref{lem:step-004-pseudoinverse-ls} proves the exact least-squares consequence rather than using this as a conditioning assumption.
2. **Orthogonal Frobenius decomposition.** If \(Q^{\mathsf T}Q=I_k\), \(P=QQ^{\mathsf T}\), and the matrices have compatible dimensions, then
   \[
   A-QCK^{\mathsf T}=(I-P)A+Q(Q^{\mathsf T}A-CK^{\mathsf T}),
   \]
   the two terms are Frobenius-orthogonal, and \(\|QB\|_F=\|B\|_F\). Lemma~\ref{lem:step-004-constrained-block} verifies and applies this identity.
3. **Monotone convergence for real sequences.** If \(0\le F_{t+1}\le F_t<\infty\), then \(F_t\) decreases to the finite infimum \(\inf_tF_t\). Lemma~\ref{lem:step-004-scalar-limit} gives the epsilon proof and telescoping identity.
4. **CP mode-matricization identities.** Under the fixed ordering, the mode-\(m\) unfolding of a rank-one term is the corresponding factor column times the transpose of the ordered Kronecker product of the other two columns. Lemma~\ref{lem:step-004-cp-matricization} proves the three formulas directly.

The local-result dependency order is
\[
\text{Lemma~\ref{lem:step-004-pseudoinverse-ls}}
\longrightarrow
\text{Lemma~\ref{lem:step-004-constrained-block}},
\qquad
\bigl(
\text{Lemma~\ref{lem:step-004-cp-matricization}},
\text{ Lemma~\ref{lem:step-004-pseudoinverse-ls}},
\text{ Lemma~\ref{lem:step-004-constrained-block}}
\bigr)
\longrightarrow
\text{Proposition~\ref{prop:step-004-block-updates}}
\longrightarrow
\text{Proposition~\ref{prop:step-004-sequential-descent}}
\longrightarrow
\text{Lemma~\ref{lem:step-004-scalar-limit}}.
\]

## Local Derivation

### unit_001: lemma

**Lemma (Exact CP mode-matricization identities).** \label{lem:step-004-cp-matricization}

Under the finite-dimensional CP definitions in setting.md and the fixed standard Khatri--Rao ordering, for every finite \(X,Y,Z\in\mathbb R^{n\times k}\),
\[
S(X,Y,Z)_{(1)}=X(Z\odot Y)^{\mathsf T},\qquad
S(X,Y,Z)_{(2)}=Y(Z\odot X)^{\mathsf T},\qquad
S(X,Y,Z)_{(3)}=Z(Y\odot X)^{\mathsf T}.
\]
Consequently, with \(T_{(m)}\) the corresponding matricization, each block objective is exactly
\[
F(X,Y,Z)=\tfrac12\|T_{(1)}-X(Z\odot Y)^{\mathsf T}\|_F^2
\]
when \(X\) is the variable, and analogously in modes 2 and 3 when \(Y\) or \(Z\) is the variable.

**Proof / justification.** The \(i\)-th column of \(Z\odot Y\) is \(z_i\otimes y_i\). The mode-1 matricization of \(x_i\otimes y_i\otimes z_i\) is \(x_i(z_i\otimes y_i)^{\mathsf T}\). Summing over \(i\) gives
\[
\sum_{i=1}^k x_i(z_i\otimes y_i)^{\mathsf T}
=X(Z\odot Y)^{\mathsf T}.
\]
The mode-2 and mode-3 identities follow from the same coordinate calculation with ordered columns \(z_i\otimes x_i\) and \(y_i\otimes x_i\). Matricization permutes tensor entries and therefore preserves the Frobenius norm. Hence these matrix residuals are exactly the residual defining \(F\). \(\square\)

### unit_002: lemma

**Lemma (Singular-design Moore--Penrose least squares).** \label{lem:step-004-pseudoinverse-ls}

Let \(A\in\mathbb R^{p\times m}\) and \(K\in\mathbb R^{m\times k}\) be finite. If \(K=U_K\Sigma V_K^{\mathsf T}\) is a compact SVD of rank \(s\), define \(P_K=V_KV_K^{\mathsf T}\) for \(s>0\) and \(P_K=0\) for \(s=0\). Then
\[
\phi(U)=\tfrac12\|A-UK^{\mathsf T}\|_F^2,\qquad
U\in\mathbb R^{p\times k},
\]
is minimized by
\[
U_\star=AK(K^{\mathsf T}K)^\dagger,
\]
and \(U_\star\) is the unique minimizer of smallest Frobenius norm. If \(s>0\), every minimizer has the form \(U_\star+R(I_k-P_K)\). If \(s=0\), then \(K=0\), every \(U\) minimizes \(\phi\), and \(U_\star=0\) is the unique minimum-norm minimizer.

**Proof / justification.** First take \(s>0\). Extend \(U_K\) and \(V_K\) to orthogonal bases \([U_K\ U_0]\) of \(\mathbb R^m\) and \([V_K\ V_0]\) of \(\mathbb R^k\). Since \(K^{\mathsf T}=V_K\Sigma U_K^{\mathsf T}\), right multiplication by \([U_K\ U_0]\) gives
\[
\begin{aligned}
\|A-UK^{\mathsf T}\|_F^2
&=\|(A-UV_K\Sigma U_K^{\mathsf T})[U_K\ U_0]\|_F^2\\
&=\|AU_K-UV_K\Sigma\|_F^2+\|AU_0\|_F^2.
\end{aligned}
\]
The second term is independent of \(U\). Since \(\Sigma\) is invertible, the first term is minimized exactly when
\[
UV_K=AU_K\Sigma^{-1}.
\]
Thus all minimizers are
\[
U=AU_K\Sigma^{-1}V_K^{\mathsf T}+R(I_k-P_K).
\]
Moreover,
\[
K(K^{\mathsf T}K)^\dagger
=U_K\Sigma V_K^{\mathsf T}V_K\Sigma^{-2}V_K^{\mathsf T}
=U_K\Sigma^{-1}V_K^{\mathsf T},
\]
so the first term is \(U_\star\). Orthogonality of the right subspaces gives
\[
\|U\|_F^2=\|UV_K\|_F^2+\|U(I_k-P_K)\|_F^2.
\]
The unique smallest norm is therefore obtained by setting the free component to zero. If \(s=0\), then \(K=0\) and \(\phi(U)=\frac12\|A\|_F^2\) for every \(U\), so \(U_\star=0\) is the unique minimum-norm choice. Thus the formula is finite and valid at every rank, including a singular or zero design. \(\square\)

### unit_003: lemma

**Lemma (Constrained orthogonal-\(Q\) block minimizer).** \label{lem:step-004-constrained-block}

Let \(A\in\mathbb R^{p\times m}\), \(K\in\mathbb R^{m\times k}\), and \(Q\in\mathbb R^{p\times k}\) satisfy \(Q^{\mathsf T}Q=I_k\). Then
\[
\min_{\operatorname{col}(X)\subseteq\operatorname{range}(Q)}
\tfrac12\|A-XK^{\mathsf T}\|_F^2
\]
has the minimum-Frobenius-norm minimizer
\[
X_\star=Q(Q^{\mathsf T}AK)(K^{\mathsf T}K)^\dagger.
\]
The conclusion holds for every rank of \(K\), including \(K=0\).

**Proof / justification.** Every feasible \(X\) has a unique representation \(X=QC\), with \(C=Q^{\mathsf T}X\). Put \(P=QQ^{\mathsf T}\). Then
\[
A-QCK^{\mathsf T}
=(I_p-P)A+Q(Q^{\mathsf T}A-CK^{\mathsf T}).
\]
The summands are Frobenius-orthogonal because \((I_p-P)Q=0\), and \(\|QB\|_F=\|B\|_F\). Hence
\[
\|A-QCK^{\mathsf T}\|_F^2
=\|(I_p-P)A\|_F^2
+\|Q^{\mathsf T}A-CK^{\mathsf T}\|_F^2.
\]
The first term is independent of \(C\). Lemma~\ref{lem:step-004-pseudoinverse-ls}, applied to \(Q^{\mathsf T}A\) and \(K\), gives
\[
C_\star=(Q^{\mathsf T}A)K(K^{\mathsf T}K)^\dagger.
\]
Finally, \(\|QC\|_F=\|C\|_F\), so the minimum-norm reduced solution gives the minimum-norm feasible \(X\). The zero-design case is included because the reduced minimum-norm solution is \(C_\star=0\). \(\square\)

### unit_004: proposition

**Proposition (Exact finite minimum-norm cALS block updates).** \label{prop:step-004-block-updates}

Consider a finite cALS state \((X_t,Y_t,Z_t)\) on the formal \(k\)-column orthonormal-basis domain, with \(Q=Q_{\mathrm{cALS}}\), \(Q^{\mathsf T}Q=I_k\), and \(X_t\) feasible for the constrained block. Define, in the displayed sequential order,
\[
K_t^x=Z_t\odot Y_t,\qquad
K_t^y=Z_t\odot X_{t+1},\qquad
K_t^z=Y_{t+1}\odot X_{t+1}.
\]
Then the three displayed updates are finite and are the respective minimum-Frobenius-norm minimizers of
\[
\min_{\operatorname{col}(X)\subseteq\operatorname{range}(Q)}F(X,Y_t,Z_t),
\qquad
\min_YF(X_{t+1},Y,Z_t),
\qquad
\min_ZF(X_{t+1},Y_{t+1},Z).
\]
Consequently,
\[
\begin{aligned}
F(X_{t+1},Y_t,Z_t)&\le F(X_t,Y_t,Z_t),\\
F(X_{t+1},Y_{t+1},Z_t)&\le F(X_{t+1},Y_t,Z_t),\\
F(X_{t+1},Y_{t+1},Z_{t+1})&\le F(X_{t+1},Y_{t+1},Z_t).
\end{aligned}
\]

**Proof / justification.** By Lemma~\ref{lem:step-004-cp-matricization}, the \(X\)-block objective is
\[
\tfrac12\|T_{(1)}-X(K_t^x)^{\mathsf T}\|_F^2.
\]
Lemma~\ref{lem:step-004-constrained-block}, with \(A=T_{(1)}\), \(K=K_t^x\), and \(Q=Q_{\mathrm{cALS}}\), gives exactly
\[
X_{t+1}
=Q\left[
Q^{\mathsf T}T_{(1)}K_t^x
\big((K_t^x)^{\mathsf T}K_t^x\big)^\dagger
\right].
\]
Because \(X_t\) is feasible, this constrained minimum is no larger than the value at \(X_t\), which proves the first inequality. No rank condition on \(K_t^x\) is used.

With \(X_{t+1}\) fixed, Lemmas~\ref{lem:step-004-cp-matricization} and \ref{lem:step-004-pseudoinverse-ls} give
\[
Y_{t+1}
=T_{(2)}K_t^y
\big((K_t^y)^{\mathsf T}K_t^y\big)^\dagger
\]
as the minimum-norm minimizer of the \(Y\)-block, and hence the second inequality. With \(X_{t+1},Y_{t+1}\) fixed, the same two lemmas give
\[
Z_{t+1}
=T_{(3)}K_t^z
\big((K_t^z)^{\mathsf T}K_t^z\big)^\dagger
\]
as the minimum-norm minimizer of the \(Z\)-block, and hence the third inequality. Every finite Gram matrix has a finite Moore--Penrose inverse, even if singular or zero, so all three selected updates are finite. \(\square\)

### unit_005: proposition

**Proposition (Well-defined sequential cALS sweep and monotonicity).** \label{prop:step-004-sequential-descent}

On every finite cALS initialization for which \(Q_{\mathrm{cALS}}\) is the stipulated orthonormal basis of \(\operatorname{range}(G_x^{\mathrm{cALS}})\), every sweep is defined, \(X_t\in\operatorname{range}(Q_{\mathrm{cALS}})\) for all \(t\), and
\[
F_{\mathrm{cALS}}(t)=F(X_t,Y_t,Z_t)
\]
satisfies \(F_{\mathrm{cALS}}(t+1)\le F_{\mathrm{cALS}}(t)\). More precisely, if
\[
F_t^x=F(X_{t+1},Y_t,Z_t),\qquad
F_t^y=F(X_{t+1},Y_{t+1},Z_t),
\]
then
\[
F_{\mathrm{cALS}}(t+1)
\le F_t^y
\le F_t^x
\le F_{\mathrm{cALS}}(t).
\]

**Proof / justification.** At initialization,
\[
X_0=G_x^{\mathrm{cALS}}
\in\operatorname{range}(G_x^{\mathrm{cALS}})
=\operatorname{range}(Q_{\mathrm{cALS}}),
\]
so \(X_0\) is feasible. Assume \(X_t,Y_t,Z_t\) are finite and \(X_t\) is feasible. Proposition~\ref{prop:step-004-block-updates} gives a finite \(X_{t+1}=Q_{\mathrm{cALS}}C_{t+1}\), so the new \(X\) is feasible. Then \(K_t^y=Z_t\odot X_{t+1}\) is finite and the proposition gives finite \(Y_{t+1}\). Next \(K_t^z=Y_{t+1}\odot X_{t+1}\) is finite and the proposition gives finite \(Z_{t+1}\). This closes the finite-state and feasibility induction.

The three inequalities in Proposition~\ref{prop:step-004-block-updates} are applied in exactly the displayed order. The \(Y\)-block uses the newly minimized \(X_{t+1}\), and the \(Z\)-block uses both \(X_{t+1}\) and \(Y_{t+1}\). Therefore
\[
F_{\mathrm{cALS}}(t+1)
=F(X_{t+1},Y_{t+1},Z_{t+1})
\le F_t^y
\le F_t^x
\le F(X_t,Y_t,Z_t)
=F_{\mathrm{cALS}}(t).
\]
No simultaneous Jacobi update or common stale design is used. Rank deficiency may make a block minimizer nonunique, but the selected pseudoinverse minimizer still supplies each signed inequality. \(\square\)

### unit_006: lemma

**Lemma (Finite scalar cALS limit and drop budget).** \label{lem:step-004-scalar-limit}

Under Proposition~\ref{prop:step-004-sequential-descent},
\[
L_{\mathrm{cALS}}
:=\lim_{t\to\infty}F_{\mathrm{cALS}}(t)
=\inf_{t\ge0}F_{\mathrm{cALS}}(t)
\]
exists as a finite real number. For every \(N\ge1\),
\[
\sum_{t=0}^{N-1}
\bigl(F_{\mathrm{cALS}}(t)-F_{\mathrm{cALS}}(t+1)\bigr)
=F_{\mathrm{cALS}}(0)-F_{\mathrm{cALS}}(N)
\le F_{\mathrm{cALS}}(0).
\]

**Proof / justification.** The squared Frobenius definition gives \(F_{\mathrm{cALS}}(t)\ge0\), while Proposition~\ref{prop:step-004-sequential-descent} gives a nonincreasing finite sequence. Let
\[
L=\inf_{t\ge0}F_{\mathrm{cALS}}(t),
\qquad
0\le L\le F_{\mathrm{cALS}}(0)<\infty.
\]
For any \(\varepsilon>0\), choose \(N\) with \(F_{\mathrm{cALS}}(N)<L+\varepsilon\). For all \(t\ge N\), monotonicity gives
\[
L\le F_{\mathrm{cALS}}(t)
\le F_{\mathrm{cALS}}(N)
<L+\varepsilon.
\]
Thus \(F_{\mathrm{cALS}}(t)\to L\). The displayed drop identity telescopes, and its upper bound uses \(F_{\mathrm{cALS}}(N)\ge0\). No convergence of \(X_t,Y_t,Z_t\), stationarity, or positive objective floor is needed. \(\square\)

### Boundary and degenerate cases

- **Zero Khatri--Rao design:** If a block design \(K\) is zero, the block objective is independent of that factor. The pseudoinverse formula returns the zero factor, which is the unique minimum-Frobenius-norm minimizer.
- **Nonzero singular design:** The compact-SVD calculation retains only the row-space component and sets the unconstrained null component to zero. Nonuniqueness does not affect exact objective minimization or descent.
- **First sweep:** The initial \(X_0\) is feasible by definition of the fixed span, so the first constrained inequality is valid even when \(K_0^x\) is singular or zero.
- **Zero block drop:** Tied block minima are allowed. Every block inequality is non-strict, and the scalar limit argument needs no strict decrease.
- **Zero objective:** If \(F_{\mathrm{cALS}}(t)=0\), each successive block minimum is at most zero and \(F\ge0\), so the entire sweep remains at objective zero.
- **Large factors and ill conditioning:** Factors and pseudoinverses may be arbitrarily large at a finite time. The proof asserts only finiteness at each finite matrix and does not export a norm bound or continuity of the update map.

## Target-Step Assembly

Lemma~\ref{lem:step-004-cp-matricization} identifies every cALS block residual with the actual tensor residual defining \(F\). Lemma~\ref{lem:step-004-pseudoinverse-ls} proves by compact SVD that \(AK(K^{\mathsf T}K)^\dagger\) is the minimum-Frobenius-norm least-squares minimizer for every finite design, including singular and zero Khatri--Rao matrices. Lemma~\ref{lem:step-004-constrained-block} adds the exact orthogonal \(Q_{\mathrm{cALS}}\)-splitting needed for the constrained \(X\)-formula.

Proposition~\ref{prop:step-004-block-updates} instantiates these results at all three displayed updates and gives the three one-block inequalities. Proposition~\ref{prop:step-004-sequential-descent} proves current-\(X_t\) feasibility and finite-iterate existence directly from initialization and the left-\(Q_{\mathrm{cALS}}\) update, then composes the inequalities in the exact \(X\)-then-\(Y\)-then-\(Z\) order. Finally, Lemma~\ref{lem:step-004-scalar-limit} uses only \(F\ge0\) to obtain the finite scalar limit and telescoping drop budget. These named results prove the exact accepted step_004 claim without factor boundedness, Gram conditioning, parameter convergence, or a simultaneous-update statement.

## Explicit Rate Audit

- Exposed variables: iteration \(t\), the finite designs \(K_t^x,K_t^y,K_t^z\), and the scalar values \(F_{\mathrm{cALS}}(t)\). No convergence rate is claimed.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(r,n,k,q,\rho,T\), deterministic bases, initialization values, Khatri--Rao ranks or condition numbers, factor norms, or \(t\).
- Fixed quantities: after \(T\), the cALS initialization, and \(Q_{\mathrm{cALS}}\) are fixed, the proof is deterministic.
- Probability mode: deterministic on each finite realization in the formal orthonormal-\(Q_{\mathrm{cALS}}\) domain. No probability conversion occurs.
- Horizon mode: every finite sweep is defined and nonincreasing; the scalar limit is as \(t\to\infty\). No parameter limit, stationarity, or finite-time rate is asserted.
- Norm mode: matrix and tensor Frobenius norms. Matricization preserves the exact objective, and the minimum-norm qualifier concerns the updated factor matrix.
- Admissibility conditions and auxiliary tolerances: no Khatri--Rao rank, Gram invertibility, conditioning margin, factor bound, restart, or tolerance is introduced.
- Term absorption or simplification inequalities: None. Exact minimization gives each signed block inequality directly.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: the finite scalar limit \(L_{\mathrm{cALS}}\) is the interface consumed by step_007; this step does not change the \(k/n\) margin or the \(3/8\) objective constant.
- Baseline-reduction check: at zero objective, all later block minima remain zero. Singular and zero designs use the same pseudoinverse formulas with no conservative loss.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined, public-facing objects: \(T_{(m)}\), \(S(X,Y,Z)\), \(F\), \(Q_{\mathrm{cALS}}\), \(X_t,Y_t,Z_t\), \(K_t^x,K_t^y,K_t^z\), and \(F_{\mathrm{cALS}}(t)\). The only exported interface is: all cALS sweeps are defined, the displayed updates are exact minimum-norm block minimizers, and \(F_{\mathrm{cALS}}(t)\) has a finite limit.
- Proof-local helper objects: \(A,K,U\); the compact-SVD factors \(U_K,\Sigma,V_K\), projector \(P_K\), and basis extensions \(U_0,V_0\); intermediate objectives \(F_t^x,F_t^y\); and scalar infimum \(L_{\mathrm{cALS}}\). None is a new theorem assumption.
- Appendix-local facts: finite-dimensional SVD, orthogonal Frobenius decomposition, and the epsilon proof for monotone sequences are used only inside the named local units.
- Constant provenance: the factor \(1/2\) comes directly from \(F\); no free radius, threshold, rate, or bounded quantity is introduced.
- Assumption provenance:
  - \(Q_{\mathrm{cALS}}^{\mathsf T}Q_{\mathrm{cALS}}=I_k\) is part of the formal orthonormal-basis construction in setting.md, not a generated trajectory event.
  - Feasibility \(X_t\in\operatorname{range}(Q_{\mathrm{cALS}})\), finiteness of all finite cALS iterates, and existence of every update are proved in Proposition~\ref{prop:step-004-sequential-descent}.
  - Khatri--Rao rank deficiency, nonuniqueness, and zero designs are handled by Lemmas~\ref{lem:step-004-pseudoinverse-ls} and \ref{lem:step-004-constrained-block}, not assumed away.
- Sequential-order note: \(K_t^y\) uses the newly minimized \(X_{t+1}\), and \(K_t^z\) uses both \(X_{t+1}\) and \(Y_{t+1}\). The proof never substitutes a simultaneous Jacobi update.
- Global diagnostic use: global_proof.md was read only after verifying that global_proof_review.md has status ACCEPTED. Its step-relevant planning guidance was to use a direct compact-SVD Moore--Penrose derivation, explicitly handle singular and zero designs, and telescope the sequential drops against the nonnegative objective. The diagnostic was not used as proof evidence, a cited result, an assumption source, or authority to change the accepted target claim.
