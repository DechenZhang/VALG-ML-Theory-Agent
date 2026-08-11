# Proof Step

## Step Identity

- Sketch attempt: 8
- Step ID: step_008
- Unit attempt: 1

## Target Step Claim

- Intended claim: Establish the quotient Hessian kernel, explicit active
  rank-r inverse branch and zero-padding equivalence, and a tube
  \(\|e\|_Q\le \rho_{\rm ALS}=1/1024\) on which cyclic CP-ALS is
  \(<1/4\)-contractive.
- Depends on: accepted step_001 and step_007 proofs and reviews.
- Assumptions used: the derived \(E_{\rm sm},E_{\rm best},E_{\rm quotient}\)
  interfaces and primitive Assumption~\ref{assump:base-scale}.
- Technical challenge: source-convention mapping, the normalized pair-Gram
  inverse floor, the quotient scaling kernel, and composition of the three
  cyclic mode updates in the norm exported by step_007.
- Intended proof tool or cited result: a dual-basis kernel calculation, direct
  normal-equation and inverse estimates, and the qualitative quotient/local
  ALS framework of Uschmajew, DOI 10.1137/110843587, Assumption 1,
  Lemma 3.2, and Theorems 3.3 and 3.5.
- Output target: \(E_{\rm basin}\) and quotient contraction
  \(\nu\le1/4\).
- Rate objective: an explicit radius \(\rho_{\rm ALS}=1/1024\), normalized
  inverse floor \(31/32\), per-mode constant below \(1/16\), cyclic constant
  below \(1/4\), and no additive error floor.

## Step Proof Status

PARTIAL_BLOCKED

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:base-scale} gives the declared deterministic scale
    range. Through accepted \(E_{\rm sm}\), every realized raw factor norm is
    at least \((2\kappa _0)^{-1}\).
  - The setting definitions of the exact active cyclic CP-ALS updates, the
    frozen \(k-r\) zero columns, and Moore--Penrose selection are primitive
    procedure definitions.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-001-event} and its matching step_001
    review supply \(E_{\rm sm}\): \(q=q_{\rm real}\le q_*=1/4096\),
    \(\Gamma\le1.01\), unit realized factor columns, and every target
    Khatri--Rao Gram has eigenvalue floor \(1-q_*^2\).
  - Accepted Proposition~\ref{prop:step-007-quotient}, Lemma
    \ref{lem:step-007-transfer}, and Proposition
    \ref{prop:step-007-assembly}, together with the accepted step_007
    review, supply the positive equal-norm quotient chart

    \[
      \|e\|_Q=\max\left\{
      \max_{M,j}\|p_{M,j}-g_{M,j}\|_2,
      \max_M\|L_M^TP_M-I\|_{\rm col,1},
      \max_M\|L_M^TP_M-I\|_{\rm row,1},
      \max_{M,j}|\alpha_{M,j}|\right\},                    \tag{8.1}
    \]
    where \(H_M=G_M^TG_M\), \(L_M=G_MH_M^{-1}\), and the selected
    initialization satisfies \(\|e_{\rm best}\|_Q\le128\omega\le512\omega
    <\rho_{\rm ALS}/4\). The accepted step_007 proof restates the step_006
    row, column, and perpendicular controls used to prove this entry; no
    step_006 statement is consumed here outside that accepted step_007
    interface.
- Local conditional hypotheses:
  - Local inverse statements below fix a positive equal-norm quotient point
    satisfying \(\|e\|_Q\le\rho_{\rm ALS}\). This tube membership is a local
    hypothesis, not a primitive theorem assumption.
  - The target-step assembly does not assume that future ALS iterates remain
    in this tube. That maintenance is part of the target claim and is exactly
    the part refuted by Proposition~\ref{prop:step-008-tube-obstruction}.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | proposition | Under the setting's frozen-zero procedure, if the active pair design is full rank, the rank-k Moore--Penrose update is exactly the ordinary active rank-r update followed by k-r zero columns. | Proves zero-padding equivalence. |
| unit_002 | proposition | Under accepted \(E_{\rm sm}\), the Hessian kernel at the exact active CP point consists exactly of the two componentwise product-one scaling directions per component. | Proves the quotient-Hessian kernel and positive quotient source. |
| unit_003 | lemma | Under Assumption~\ref{assump:base-scale}, accepted \(E_{\rm sm}\) and \(E_{\rm quotient}\), every positive chart point with \(\|e\|_Q\le1/1024\) has normalized active pair-Gram floor greater than \(31/32\), with an explicit ordinary inverse branch. | Proves the requested active inverse branch without assuming collective perpendicular-Gram control. |
| unit_004 | proposition | Under the exact orthogonal equal-weight specialization allowed by the baseline contract, there are points with \(\|e\|_Q<\rho_{\rm ALS}\) for which one cyclic ALS sweep has quotient error greater than \(3/4\). | Refutes the claimed uniform tube contraction and the advertised per-mode Lipschitz bound. |

Atomic step = no. Zero-padding, the differential kernel, pair-design
invertibility, and the cyclic contraction claim are independent nontrivial
obligations.

## Cited Result Applications

### Accepted dependency: smoothed-instance geometry

- Source: accepted Proposition~\ref{prop:step-001-event} and its matching
  step_001 review.
- Restated statement in current notation: on \(E_{\rm sm}\), each \(G_M\) has
  unit columns and Gram \(H_M\) with absolute off-diagonal row mass at most
  \(q_*\); each target pair design has Gram
  \(H_{M'}\circ H_{M''}\) with eigenvalue floor \(1-q_*^2\); realized raw
  norms are at least \((2\kappa _0)^{-1}\).
- Assumption discharge: step_001 derives this static event from the five
  primitive smoothing assumptions. It is consumed here only after its
  accepted review.
- Conclusion used: the target dual bases exist, the exact active target is
  nondegenerate modulo scaling, and realized amplitudes are positive.

### Accepted dependency: relative-amplitude quotient entry

- Source: accepted Proposition~\ref{prop:step-007-quotient}, Lemma
  \ref{lem:step-007-transfer}, Proposition
  \ref{prop:step-007-assembly}, and their matching step_007 review.
- Restated statement in current notation: every nonzero active quotient class
  in the positive target chart has a product-one equal-norm representative
  \(X_M=P_M\operatorname{diag}(a)\), with
  \(a_j=\lambda_j^{1/3}(1+\alpha_j)\), measured by (8.1); the selected
  initialization obeys \(\|e_{\rm best}\|_Q<\rho_{\rm ALS}/4\).
- Assumption discharge: step_007 obtains the entry from accepted selected
  row/column controls and the observable best scalar. No ALS basin or
  future-trajectory property is among its hypotheses.
- Conclusion used: the exact chart, norm, positive entry, and scale-free
  amplitudes used below.

### Accepted dependency: Khatri--Rao operator comparison

- Source: accepted Lemma~\ref{lem:step-007-target-norm}.
- Restated statement: for column matrices \(A=[a_j]\) and \(B=[b_j]\),
  \[
    \|A\odot B\|_2\le
    \min\{\|A\|_2\max_j\|b_j\|_2,
             \|B\|_2\max_j\|a_j\|_2\}.                    \tag{8.2}
  \]
- Assumption discharge: the accepted proof derives (8.2) by an explicit
  direct-sum factorization, so no additional paper hypothesis is needed.
- Conclusion used: the norm of the target dual pair design in
  Lemma~\ref{lem:step-008-inverse}.

### Moore--Penrose block identity and zero-residual Hessian identity

- Source or name: direct finite-dimensional linear algebra.
- Restated statements: if \(A\) is positive definite, then
  \(\operatorname{diag}(A,0)^\dagger=\operatorname{diag}(A^{-1},0)\).
  If \({\cal L}=\frac12\|T-{\cal F}(x)\|_F^2\) and
  \(T={\cal F}(x_*)\), then
  \(\nabla^2{\cal L}(x_*)=D{\cal F}(x_*)^*D{\cal F}(x_*)\), so its kernel is
  \(\ker D{\cal F}(x_*)\).
- Assumption discharge: positive definiteness of the active block is proved
  by Lemma~\ref{lem:step-008-inverse}; the residual is exactly zero at the
  realized target by the setting definition of \(T\). Both identities are
  also proved directly in the corresponding local units.
- Conclusion used: Propositions~\ref{prop:step-008-zero-padding} and
  \ref{prop:step-008-kernel}.

### Uschmajew local ALS source

- Source identity recorded by the accepted sketch: A. Uschmajew, Local
  Convergence of the Alternating Least Squares Algorithm for Canonical Tensor
  Approximation, SIAM J. Matrix Anal. Appl. (2012), DOI
  10.1137/110843587, Assumption 1, Lemma 3.2, and Theorems 3.3 and 3.5.
- Intended current-object mapping: exact active rank-r CP least squares,
  componentwise scaling quotient, and fixed cyclic block order.
- Application status: not used as proof authority here. The accepted sketch
  explicitly says this source does not supply the numerical radius, the
  rank-k zero-padding reduction, or the \(1/4\) factor. Even granting its
  qualitative local-convergence conclusion in the source topology cannot
  imply contraction on all of the weaker tube (8.1): Proposition
  ~\ref{prop:step-008-tube-obstruction} gives points in that tube whose first
  cyclic sweep exits it by an order-one amount.
- Conclusion used: none. The quotient kernel and the valid inverse statement
  are proved directly, and the numerical contraction application is blocked.

## Local Derivation

Write
\[
  R:=\rho_{\rm ALS}:={1\over1024},\qquad q:=q_{\rm real}\le q_*={1\over4096}.
                                                               \tag{8.3}
\]
For the exact active target, put \(s_j=\lambda_j^{1/3}\) and
\(X_M^*=G_M\operatorname{diag}(s)\). At a positive equal-norm quotient
representative write
\[
  X_M=P_M\operatorname{diag}(a),\qquad
  a_j=s_j(1+\alpha_j),                                      \tag{8.4}
\]
where the three mode amplitudes are equal after product-one balancing. This
is only a translation of the accepted quotient notation.

### unit_001: proposition

**Proposition (exact zero-padding reduction).**
\label{prop:step-008-zero-padding}

Under the setting's frozen-zero procedure, suppose the current active pair
design \(K_A\in{\mathbb R}^{n^2\times r}\) has full column rank. Then the
rank-k Moore--Penrose mode update with pair design \([K_A,0]\) is exactly the
ordinary active rank-r inverse update followed by \(k-r\) zero columns:
\[
 T_{(M)}[K_A,0]
 \left([K_A,0]^T[K_A,0]\right)^\dagger
 =\left[T_{(M)}K_A(K_A^TK_A)^{-1},0\right].                \tag{8.5}
\]
The same statement holds in every cyclic mode.

**Proof.** Direct multiplication gives
\[
 [K_A,0]^T[K_A,0]
 =\begin{bmatrix}K_A^TK_A&0\\0&0\end{bmatrix}.
\]
Since \(K_A^TK_A\) is positive definite, the singular-value definition of
the Moore--Penrose inverse gives the block diagonal inverse
\(\operatorname{diag}((K_A^TK_A)^{-1},0)\). Multiplication by
\(T_{(M)}[K_A,0]\) proves (8.5). The setting freezes the inactive columns,
so they remain zero in the two held modes and the same block identity applies
at every later update. \(\qed\)

### unit_002: proposition

**Proposition (exact quotient-Hessian kernel).**
\label{prop:step-008-kernel}

Under accepted \(E_{\rm sm}\), let \({\cal F}\) be the active CP synthesis
map
\[
 {\cal F}(X_U,X_V,X_W)=\sum_{j=1}^r
 x_{U,j}\otimes x_{V,j}\otimes x_{W,j}.
\]
At \(X_M^*=G_M\operatorname{diag}(s)\), the kernel of
\(D{\cal F}(X^*)\), and hence the kernel of
\(\nabla^2{\cal L}_r(X^*)\), consists exactly of variations
\[
 \dot x_{M,j}=s_j\beta_{M,j}g_{M,j},\qquad
 \beta_{U,j}+\beta_{V,j}+\beta_{W,j}=0                    \tag{8.6}
\]
for every \(j\). These are precisely the two product-one infinitesimal
scalings per component; the quotient Hessian has no other kernel direction.

**Proof.** Accepted \(E_{\rm sm}\) and Gershgorin give
\(\lambda_{\min}(H_M)\ge1-q>0\), so \(L_M=G_MH_M^{-1}\) exists and
\(L_M^TG_M=I\). Suppose \(D{\cal F}(X^*)[\dot X]=0\). Contract this tensor
in modes \(V,W\) against the dual columns \(l_{V,j},l_{W,j}\). All components
except \(j\) vanish, and the remaining equality is
\[
 s_j^2\left(\dot x_{U,j}
 +g_{U,j}\{l_{V,j}^T\dot x_{V,j}
            +l_{W,j}^T\dot x_{W,j}\}\right)=0.             \tag{8.7}
\]
Thus \(\dot x_{U,j}\) is parallel to \(g_{U,j}\). The two cyclic contractions
show the same for \(\dot x_{V,j}\) and \(\dot x_{W,j}\). Write
\(\dot x_{M,j}=s_j\beta_{M,j}g_{M,j}\). Substitution in (8.7) gives the
sum-zero condition in (8.6). Conversely, the three differential terms of
component \(j\) then sum to
\(s_j^3(\beta_{U,j}+\beta_{V,j}+\beta_{W,j})
\,g_{U,j}\otimes g_{V,j}\otimes g_{W,j}=0\), so every variation in (8.6)
is in the kernel.

At the exact target the residual \(T-{\cal F}(X^*)\) is zero. Differentiating
\(\frac12\|T-{\cal F}(X)\|_F^2\) twice therefore yields
\(\nabla^2{\cal L}_r(X^*)=D{\cal F}(X^*)^*D{\cal F}(X^*)\), whose kernel is
the kernel just computed. \(\qed\)

### unit_003: lemma

**Lemma (dual-projected active inverse floor).**
\label{lem:step-008-inverse}

Under Assumption~\ref{assump:base-scale}, accepted \(E_{\rm sm}\) and
\(E_{\rm quotient}\), fix a positive equal-norm chart point satisfying
\(\|e\|_Q\le R\). For any two held modes \(M',M''\), let
\[
 K=P_{M''}\odot P_{M'},\qquad J=K^TK,\qquad
 B_M=L_M^TP_M.                                             \tag{8.8}
\]
Then
\[
 \lambda_{\min}(J)\ge
 \{(1-q)(1-2R-2R^2)\}^2>{31\over32},\qquad
 \|J^{-1}\|_2<{32\over31}.                                 \tag{8.9}
\]
Moreover, the actual held-factor design is \(K\operatorname{diag}(a^2)\),
its Gram has the explicit ordinary inverse
\[
 \left[\operatorname{diag}(a^2)J\operatorname{diag}(a^2)\right]^{-1}
 =\operatorname{diag}(a^{-2})J^{-1}\operatorname{diag}(a^{-2}), \tag{8.10}
\]
and
\[
 \left\|\left[\operatorname{diag}(a^2)J
        \operatorname{diag}(a^2)\right]^{-1}\right\|_2
 \le {32\over31}\left({2\kappa _0\over1-R}\right)^4.        \tag{8.11}
\]
Thus the active inverse and Proposition~\ref{prop:step-008-zero-padding}
are valid throughout the declared tube even though the contraction claim is
not.

**Proof.** Put \(K_0=L_{M''}\odot L_{M'}\). The exact Khatri--Rao
cross-Gram identity gives
\[
 K_0^TK=(L_{M''}^TP_{M''})\circ(L_{M'}^TP_{M'})
       =B_{M''}\circ B_{M'}=:D.                            \tag{8.12}
\]
Write \(B_M=I+C_M\). By (8.1), both the induced row and column masses of
\(C_M\) are at most \(R\). On the diagonal,
\[
 |D_{jj}-1|
 \le |C_{M'',jj}|+|C_{M',jj}|
      +|C_{M'',jj}C_{M',jj}|\le2R+R^2.
\]
Off the diagonal \(D_{ij}=C_{M'',ij}C_{M',ij}\), and each row and column has
absolute off-diagonal mass at most \(R^2\). Hence
\[
 \|D-I\|_2
 \le\sqrt{\|D-I\|_{\rm row,1}\|D-I\|_{\rm col,1}}
 \le2R+2R^2.                                               \tag{8.13}
\]
Also \(\|L_M\|_2\le(1-q)^{-1/2}\) and
\(\max_j\|l_{M,j}\|_2\le(1-q)^{-1/2}\). Applying (8.2) gives
\(\|K_0\|_2\le(1-q)^{-1}\). Therefore, for every vector \(x\),
\[
 \|Kx\|_2\ge {\|K_0^TKx\|_2\over\|K_0\|_2}
 \ge(1-q)(1-2R-2R^2)\|x\|_2.                              \tag{8.14}
\]
Squaring proves the first inequality in (8.9). Numerically,
\(q_*<0.00025\) and \(2R+2R^2<0.002\), so the square in (8.9) is greater
than \(0.995>31/32\). This also proves the inverse-norm bound.

The equal-norm form (8.4) gives the actual pair design
\(K\operatorname{diag}(a^2)\), proving (8.10). Accepted \(E_{\rm sm}\)
and Assumption~\ref{assump:base-scale} give
\(s_j=\lambda_j^{1/3}\ge(2\kappa _0)^{-1}\), while tube membership gives
\(a_j\ge s_j(1-R)\). Combining this with (8.9) proves (8.11). \(\qed\)

### unit_004: proposition

**Proposition (the exported quotient tube does not contract uniformly).**
\label{prop:step-008-tube-obstruction}

Under the exact orthogonal equal-weight specialization in the accepted
baseline contract, for every fixed \(R=1/1024\) and every sufficiently large
allowed \(r\), there is a positive equal-norm active point satisfying
\(\|e\|_Q<R\) such that one complete cyclic CP-ALS sweep in the setting's
\(U,V,W\) order satisfies
\[
 \|\Phi_{\rm cyc}(e)\|_Q>{3\over4}.                         \tag{8.15}
\]
In particular, neither the sketch's per-mode bound
\[
 \|\Phi_M(e)-\Phi_M(e')\|_Q
 \le[8q_*+16(\|e\|_Q+\|e'\|_Q)]\|e-e'\|_Q                 \tag{8.16}
\]
nor its \(<1/4\) cyclic contraction can hold on the full tube defined only by
(8.1).

**Proof.** Take \(n\ge k>r\), choose orthonormal vectors
\(g_{M,j}=e_j\), \(j\in[r]\), in all three modes, set
\(\lambda_j=1\), and take a unit vector \(h=e_{r+1}\) orthogonal to their
span. These objects satisfy the exact orthogonal equal-weight baseline,
\(q=0\), \(\Gamma=1\), and every target pair-Gram is the identity. Set
\[
 t:={R\over4}={1\over4096},\qquad c_0:=\sqrt{1-t^2},       \tag{8.17}
\]
and define a balanced active point with all common amplitudes equal to one by
\[
 p_{U,j}=e_j,\qquad
 p_{V,j}=p_{W,j}=c_0e_j+th.                              \tag{8.18}
\]
All columns are unit and positively oriented. Since \(L_M=G_M\),
\[
 B_U=I,\qquad B_V=B_W=c_0I,
\]
and every relative amplitude is zero. Furthermore,
\[
 \|p_{V,j}-e_j\|_2
 =\sqrt{(1-c_0)^2+t^2}<2t={R\over2},\qquad
 1-c_0={t^2\over1+c_0}<t^2.
\]
Thus all four fields in (8.1) are strictly below \(R\), so
\(\|e\|_Q<R\).

Consider the first, \(U\)-mode, ALS update. Its held direction-pair Gram and
target-to-current cross Gram are exactly
\[
 J=(P_W^TP_W)\circ(P_V^TP_V)
   =(1-t^4)I+t^4{\bf1}{\bf1}^T,                            \tag{8.19}
\]
\[
 C=(G_W^TP_W)\circ(G_V^TP_V)=(1-t^2)I.                   \tag{8.20}
\]
The setting normal equation therefore gives \(X_U^+=G_UCJ^{-1}\). The
rank-one inverse formula yields
\[
 J^{-1}={1\over1-t^4}
 \left(I-c_r{\bf1}{\bf1}^T\right),\qquad
 c_r:={t^4\over1+(r-1)t^4}.                               \tag{8.21}
\]
The common positive scalar \((1-t^2)/(1-t^4)\) does not affect directions.
Consequently the normalized updated direction and its target-dual coefficient
column are
\[
 p_{U,j}^+={e_j-c_r\sum_{\ell=1}^re_\ell\over N_r},\qquad
 B_U^+={I-c_r{\bf1}{\bf1}^T\over N_r},                    \tag{8.22}
\]
where \(N_r^2=1-2c_r+rc_r^2\). Since
\(rc_r=rt^4/(1+(r-1)t^4)<1\), one has \(N_r<1\). Choose any allowed
\[
 r\ge1+{3\over t^4};                                      \tag{8.23}
\]
the setting permits this choice and then permits \(n\ge k>r\). The
off-diagonal absolute column mass in (8.22) is
\[
 \sum_{\ell\ne j}|B_U^+(\ell,j)|
 ={(r-1)c_r\over N_r}
 >{(r-1)t^4\over1+(r-1)t^4}\ge{3\over4}.                 \tag{8.24}
\]
The subsequent \(V\)- and \(W\)-mode updates do not change the \(U\)-mode
factor directions. Any product-one equal-norm rebalancing changes only
column scales, not those directions. Hence (8.24) remains one field of the
quotient norm after the complete sweep and proves (8.15).

The exact target \(e'=0\) is a fixed point. Thus a \(<1/4\) cyclic
contraction would instead give
\(\|\Phi_{\rm cyc}(e)\|_Q<\|e\|_Q/4<R/4\), contradicting (8.15).
Likewise (8.16) with \(q=0,e'=0\) has right side at most
\(16R^2<2\cdot10^{-5}\), while the updated \(U\)-coordinate already has
the mass (8.24).

This is not a zero-probability escape from the intended source convention.
The inverse in (8.21) and the strict gap between \(3/4\) and \(R/4\) make the
construction stable under sufficiently small perturbations of the target
factors. It can also be placed in the positive-smoothing support directly:
take base directions \(e_j\), choose mutually orthogonal \(f_j\) in their
orthogonal complement, and use the same sufficiently small nonzero
perturbation \(\delta f_j\) in all three modes. The normalized realized
columns remain orthonormal and the realized weights remain equal, while all
strict \(E_G\) inequalities hold. This configuration is an interior point of
the Gaussian support, so a small open neighborhood has positive smoothing
probability and retains the strict \(3/4\) versus \(R/4\) gap by continuity.
The nearby factors satisfy \(q_{\rm real}<q_*\), \(\Gamma<1.01\), and the
accepted static margins. The obstruction is the missing collective
perpendicular-correlation field in (8.1), not exact orthogonality itself.
\(\qed\)

## Target-Step Assembly

Proposition~\ref{prop:step-008-zero-padding} proves the exact rank-k to
active rank-r reduction once the active pair design is invertible.
Proposition~\ref{prop:step-008-kernel} proves that the exact target Hessian
has only the componentwise scaling kernel, so the quotient removes all
infinitesimal degeneracy. Lemma~\ref{lem:step-008-inverse} then proves a
stronger-than-requested \(31/32\) normalized pair-Gram floor and the explicit
ordinary inverse branch throughout the declared quotient tube.

These valid results do not assemble the exact sketch-row claim. Proposition
~\ref{prop:step-008-tube-obstruction} shows that the norm exported by accepted
step_007 permits order-\(R\) shared perpendicular components across
arbitrarily many columns. Their single-mode Grams have off-diagonal entries
of order \(R^2\), and the held pair Gram has a coherent rank-one term of
size \(rR^4\). Although this term does not destroy the spectral lower bound,
its inverse produces order-one induced row/column mixing in the first updated
mode. Because later blocks do not change that mode's direction, the complete
cyclic sweep exits the tube. Therefore \(E_{\rm basin}\), the claimed
\(\nu\le1/4\) recurrence, and all-time tube invariance cannot be exported from
the current dependencies.

## Explicit Rate Audit

- Exposed variables: \(r,n,k,\kappa _0,q,q_*,R\), the relative amplitudes,
  ambient direction errors, dual induced row/column masses, normalized and
  amplitude-scaled pair Grams, and the cyclic sweep index.
- Hidden constants may depend on: only the displayed universal numerical
  constants and fixed \(q_*=1/4096\).
- Hidden constants may not depend on: \(r,n,k,\kappa _0,\rho,\epsilon\), either
  confidence parameter, the base triple, the selected run, or an unlisted
  collective perpendicular condition number.
- Fixed quantities: one realized fixed instance and the quotient radius
  \(R=1/1024\). In the obstruction, \(t=R/4\) is fixed while \(r\) ranges
  over the setting's allowed values.
- Probability mode: deterministic conditional on accepted \(E_{\rm sm}\) and
  quotient-entry interfaces. No probability conversion is performed.
- Horizon mode: the requested claim is all active sweeps after entry. The
  obstruction occurs in the first cyclic sweep, so no finite-to-uniform
  upgrade is available.
- Norm mode: exactly the maximum quotient norm (8.1), including ambient
  Euclidean direction error and target-dual induced row/column \(\ell_1\)
  mass. The obstruction is visible in the latter field.
- Admissibility conditions and auxiliary tolerances: \(r\ge3\), \(r<k\le n\),
  \(q\le q_*\), positive relative amplitudes, and \(R=1/1024\). Equation
  (8.23) is an allowed choice of \(r\), not an added theorem assumption.
- Term absorption or simplification inequalities: (8.13)--(8.14) prove the
  inverse floor; (8.17)--(8.24) retain the full \(rR^4\) term and show why it
  cannot be absorbed uniformly in \(r\).
- Probability conversion: none.
- Contribution to any Rate Specialization Bridge: the normalized inverse
  branch has the requested universal floor, and (8.11) exposes its raw
  polynomial \(\kappa _0\) dependence. No contraction-rate bridge is valid
  under the current quotient interface.
- Baseline-reduction check: the exact orthogonal equal-weight target itself is
  a fixed point and has zero residual, so the stationary baseline remains
  exact. However, the same baseline supplies Proposition
  ~\ref{prop:step-008-tube-obstruction}; exactness at the center does not imply
  an \(r\)-uniform neighborhood in the weaker norm (8.1).

## Blockers

1. Failed local unit: Proposition
   ~\ref{prop:step-008-tube-obstruction} disproves the uniform
   \(\|e\|_Q\le1/1024\) cyclic-contraction target and its advertised per-mode
   estimate. The accepted quotient norm controls each perpendicular column
   separately but does not control the induced mass of the Hadamard product
   of two perpendicular Gram matrices.
2. Failed target-step assembly: without a contraction on the exported tube,
   the proof cannot derive \(E_{\rm basin}\), tube invariance, or the
   all-sweep recurrence consumed by step_009.
3. Locality and smallest repair: this is a sketch/interface defect, not an
   idea/theorem-contract defect. A same-setting proof-sketch repair can either
   add the missing pairwise perpendicular-Gram field to \(E_{\rm quotient}\),
   with a producer in step_007, or split step_008 into a first-sweep argument
   using the much smaller accepted initialization residual
   \(\|P_M^\perp(:,j)\|_2\le\tau_r\), followed by contraction on the
   target-span manifold (updated ALS blocks have zero perpendicular part).
   Either repair must replace, rather than reuse, the false full-tube
   inequality (8.16).

## Notation And Assumption Notes

- Public-facing objects would have been \(E_{\rm basin}\), \(R\), and the
  cyclic contraction factor. Because the target is blocked, only the valid
  active inverse and zero-padding conclusions are available; no
  \(E_{\rm basin}\) object is exported.
- Appendix-local objects are the target amplitudes \(s_j\), balanced current
  amplitudes \(a_j\), pair designs \(K,K_0\), pair Gram \(J\), dual
  coefficient matrices \(B_M\), and cross Gram \(D\). Each is defined from
  setting objects or accepted dependency objects.
- Proof-local objects in the obstruction are \(t,c_0,c_r,N_r,h\), and the
  all-ones vector. Their values and existence are proved from \(R=1/1024\) and
  \(n\ge k>r\); none is a theorem assumption.
- The constants \(31/32,32/31,3/4\) are proved numerical bounds in
  Lemma~\ref{lem:step-008-inverse} and Proposition
  ~\ref{prop:step-008-tube-obstruction}, not free bounded quantities.
- \(E_{\rm sm},E_{\rm best},E_{\rm quotient}\) are derived interfaces supplied
  by accepted dependencies. Tube membership is used only as a local
  conditional hypothesis in Lemma~\ref{lem:step-008-inverse}; it is not
  assumed to persist.
- Every mode update, pair design, and pseudoinverse is the setting's active
  CP-ALS object. Equal-norm balancing uses only product-one column scalings
  and never changes a factor direction, so it cannot remove the obstruction
  in (8.24).
- The paired global_proof.md and global_proof_review.md were read only after
  checking that the latter has status ACCEPTED. Their step-relevant planning
  suggestions were the zero-padding split, dual kernel calculation,
  normalized inverse floor, and direct cyclic audit. They were not used as
  proof evidence, cited results, assumption sources, or authority to change
  the target claim. The fresh direct cyclic audit is what exposes the blocker.
