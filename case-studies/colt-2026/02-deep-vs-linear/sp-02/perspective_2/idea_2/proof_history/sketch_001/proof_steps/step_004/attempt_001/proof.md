# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every \(h\in\mathcal H\) and nonempty finite \(S\subseteq\mathcal X\), prove
  \[
  \max_{f\in K_A}\min_{x\in S}h(x)f(x)\ge\rho
  \]
  and select \(f_{h,S}\in K_A\) attaining this maximum.
- Depends on: `step_002`, `step_003`.
- Assumptions used: Primitive `assump:parameter-regime`, `assump:universal-adversarial-guarantee`; derived compactness and correlation from the accepted dependencies.
- Technical challenge: Justify the minimax order exactly while allowing the exact-center witness to vary with \(p\) but keeping \(K_A,V_A,\varphi_A\) fixed.
- Intended proof tool or cited result: Sion (1958), Theorem 3.4, DOI `10.2140/pjm.1958.8.171`, with explicit object mapping and hypothesis discharge; simplex extreme-point identity.
- Output target: Exact simultaneous \(\rho\)-margin on every nonempty finite restriction.
- Rate objective: R2, preserving \(\rho\) exactly through minimax with no probability or approximation conversion.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: \(\varepsilon\in[0,1/4)\), so the setting-defined threshold
    \[
    \rho=1-2\varepsilon\in(1/2,1].
    \]
  - `assump:universal-adversarial-guarantee`: this primitive condition is used only through the accepted exact-correlation output of `step_003`. It is not reapplied to a new response rule in this step.
- Accepted dependency artifacts:
  - `perspective_2/idea_2/proof_steps/step_002/proof.md`, SHA-256 `d0034bd3eca13915507bbdb9038a5363e0050e2536a870fe15d7bb99bb33fd78`.
  - `perspective_2/idea_2/proof_steps/step_002/review.md`, SHA-256 `909474f05a0a839e2f6443b67bd5200a3d700358ea7a9b2132cbde219f0444b4`, with controlled status `ACCEPTED` for sketch attempt 1, Step ID `step_002`, and unit attempt 1.
  - `perspective_2/idea_2/proof_steps/step_003/proof.md`, SHA-256 `de63d61152e43e7859b5e765cf65564277921a71ac3b3f60f7de30508d3cd78d`.
  - `perspective_2/idea_2/proof_steps/step_003/review.md`, SHA-256 `84c8164bb4f98d0db1cf1abd726558e0c3710278ac8d80fc769c61cd1cdd914d`, with controlled status `ACCEPTED` for sketch attempt 1, Step ID `step_003`, and unit attempt 1.
- Derived invariants supplied by the accepted dependencies:
  - Proposition~\(\ref{prop:step-002-compact-body}\) for \(r_A>0\), together with Proposition~\(\ref{prop:step-002-zero-dimensional}\) for \(r_A=0\), supplies one fixed nonempty compact convex body \(K_A\subseteq V_A\). Lemma~\(\ref{lem:step-002-continuous-evaluations}\), together with the zero-dimensional proposition, supplies continuity of every map \(f\mapsto f(x)\) on that same body.
  - Proposition~\(\ref{prop:step-003-exact-correlation}\) supplies, for every \(\mathcal D\in\mathcal P(\mathcal X)\) and \(h\in\mathcal H\), the exact-center mean response
    \(F_{R^0_{\mathcal D,h}}\in K_A\) satisfying
    \[
    \mathbb E_{x\sim\mathcal D}
      [h(x)F_{R^0_{\mathcal D,h}}(x)]\ge\rho.
    \]
    Its witness may depend on \((\mathcal D,h)\), while \(K_A\), \(V_A\), and the fixed coordinate map do not.
- Local conditional hypotheses: None.

The finite-support law associated with \(p\in\Delta(S)\) is available from the basic setup of `setting.md`. No compactness, response validity, correlation, simultaneous feasibility, or attainment fact is promoted to a primitive condition.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the basic setup of `setting.md`, if \(S\subseteq\mathcal X\) is nonempty and finite, then for every real family \((a_x)_{x\in S}\), \(\min_{p\in\Delta(S)}\sum_{x\in S}p(x)a_x=\min_{x\in S}a_x\), and the simplex minimum is attained at a vertex. | Converts the minimizing distribution into the least signed point evaluation, including the singleton case. |
| `unit_002` | proposition | Under the accepted compactness, convexity, and evaluation-continuity conclusions of Propositions~\(\ref{prop:step-002-compact-body}\), \(\ref{prop:step-002-zero-dimensional}\), and Lemma~\(\ref{lem:step-002-continuous-evaluations}\), and Lemma~\(\ref{lem:step-004-simplex-vertex}\), if \(h\in\mathcal H\) and \(S\subseteq\mathcal X\) is nonempty and finite, then Sion's theorem applies to the fixed sets \(K_A\) and \(\Delta(S)\) and to \(L_h(f,p)=\sum_{x\in S}p(x)h(x)f(x)\), giving exactly \(\max_f\min_p L_h=\min_p\max_f L_h\); every displayed extremum is attained. | Discharges Sion's hypotheses in the exact max-min orientation and separately proves the attainment needed for `max` and `min`. |
| `unit_003` | proposition | Under Assumptions~\(\ref{assump:parameter-regime}\) and~\(\ref{assump:universal-adversarial-guarantee}\), the accepted rank-conditional compactness conclusions of Propositions~\(\ref{prop:step-002-compact-body}\) and~\(\ref{prop:step-002-zero-dimensional}\), Proposition~\(\ref{prop:step-003-exact-correlation}\), and Proposition~\(\ref{prop:step-004-sion-fixed-body}\), if \(h\in\mathcal H\) and \(S\subseteq\mathcal X\) is nonempty and finite, then \(\min_{p\in\Delta(S)}\max_{f\in K_A}L_h(f,p)\ge\rho\). For each \(p\), the exact-center witness may vary with \(p\), but it always belongs to the same fixed \(K_A\). | Transfers the exact per-distribution correlation into the minimizing side of the fixed-body minimax game without slack or quantifier drift. |
| `unit_004` | proposition | Under Assumptions~\(\ref{assump:parameter-regime}\) and~\(\ref{assump:universal-adversarial-guarantee}\), Lemma~\(\ref{lem:step-004-simplex-vertex}\), Proposition~\(\ref{prop:step-004-sion-fixed-body}\), and Proposition~\(\ref{prop:step-004-exact-center-lower}\), if \(h\in\mathcal H\) and \(S\subseteq\mathcal X\) is nonempty and finite, then there is \(f_{h,S}\in K_A\) with \(\min_{x\in S}h(x)f_{h,S}(x)=\max_{f\in K_A}\min_{x\in S}h(x)f(x)\ge\rho\). | Assembles the exact finite simultaneous margin and the required maximizing witness. |

Atomic step = no. The simplex reduction, cited minimax instantiation, distributionwise lower bound, and maximizing-witness assembly are distinct nontrivial obligations.

## Cited Result Applications

1. **Accepted compact-body dependency.** Proposition~\(\ref{prop:step-002-compact-body}\) states that when \(r_A>0\), \(K_A\) is a nonempty compact convex subset of the fixed finite-dimensional space \(V_A\). Proposition~\(\ref{prop:step-002-zero-dimensional}\) states the same conclusion directly when \(r_A=0\), with \(K_A=\{0\}\). Lemma~\(\ref{lem:step-002-continuous-evaluations}\), together with the zero-dimensional proposition, states that each point evaluation \(f\mapsto f(x)\) is continuous in that fixed topology. The proof/review hashes above match the accepted dependency. These conclusions supply exactly the fixed set, topology, and continuity used below; they do not supply minimax equality, a positive lower bound, or attainment of the finite signed-margin maximum.
2. **Accepted exact-correlation dependency.** Proposition~\(\ref{prop:step-003-exact-correlation}\) states that for every \(\mathcal D\in\mathcal P(\mathcal X)\) and \(h\in\mathcal H\), the exact-center rule produces \(F_{R^0_{\mathcal D,h}}\in K_A\) and
   \[
   \mathbb E_{x\sim\mathcal D}
     [h(x)F_{R^0_{\mathcal D,h}}(x)]
   \ge\rho.
   \]
   The proof/review hashes above match the accepted dependency. This result supplies one witness for each distribution. It does not assert that the same exact-center witness works for two different distributions.
3. **Sion's general minimax theorem.** The source is Maurice Sion, *On General Minimax Theorems*, Pacific Journal of Mathematics 8(1):171--176 (1958), Theorem 3.4, DOI `10.2140/pjm.1958.8.171`. In the orientation used here, its statement is: if \(M\) is a nonempty compact convex subset of a linear topological space, \(N\) is a nonempty convex subset of a linear topological space, and \(G:M\times N\to\mathbb R\) is upper semicontinuous and quasiconcave in its first, maximizing variable for every fixed second variable, and lower semicontinuous and quasiconvex in its second, minimizing variable for every fixed first variable, then
   \[
   \sup_{m\in M}\inf_{n\in N}G(m,n)
   =
   \inf_{n\in N}\sup_{m\in M}G(m,n).
   \]
   Proposition~\(\ref{prop:step-004-sion-fixed-body}\) maps \(M=K_A\), \(N=\Delta(S)\), and \(G=L_h\), checks every hypothesis, and separately proves that all four extrema are attained. The cited theorem supplies only the order equality; it does not supply the fixed body, per-\(p\) correlation, simplex vertex identity, attainment, or arbitrary-domain closure.
4. **Finite-simplex vertex reduction, Lemma~\(\ref{lem:step-004-simplex-vertex}\).** Its current-notation statement is the `unit_001` row above. It is proved directly and is used by Proposition~\(\ref{prop:step-004-finite-margin}\) to identify the minimizing distribution with the least signed point.
5. **Fixed-body minimax equality, Proposition~\(\ref{prop:step-004-sion-fixed-body}\).** Its current-notation statement is the `unit_002` row above. It is used by Proposition~\(\ref{prop:step-004-finite-margin}\) to change only the order of optimization over the same \(K_A\) and \(\Delta(S)\).
6. **Exact-center minimax lower bound, Proposition~\(\ref{prop:step-004-exact-center-lower}\).** Its current-notation statement is the `unit_003` row above. It is used by Proposition~\(\ref{prop:step-004-finite-margin}\) to put the exact threshold \(\rho\) on the min-max value.
7. **Finite simultaneous margin, Proposition~\(\ref{prop:step-004-finite-margin}\).** Its current-notation statement is the `unit_004` row above. The target-step assembly uses this result as the exact exported interface.

## Local Derivation

### unit_001: lemma

**Lemma (Finite-simplex minima occur at vertices).**
\(\label{lem:step-004-simplex-vertex}\)
Under the basic setup of `setting.md`, suppose \(S\subseteq\mathcal X\) is nonempty and finite. For every real family \((a_x)_{x\in S}\),
\[
\min_{p\in\Delta(S)}\sum_{x\in S}p(x)a_x
=\min_{x\in S}a_x.
\]
Both minima are attained. More precisely, if \(x_*\in S\) minimizes \(a_x\), then the vertex \(p^{x_*}\in\Delta(S)\), defined by \(p^{x_*}(x_*)=1\) and \(p^{x_*}(x)=0\) for \(x\ne x_*\), attains the simplex minimum. For a singleton \(S=\{x_*\}\), \(\Delta(S)=\{p^{x_*}\}\), so the identity remains exact.

**Proof / justification.**
Because \(S\) is nonempty and finite, there is \(x_*\in S\) with
\(a_{x_*}=\min_{x\in S}a_x\). For any \(p\in\Delta(S)\), nonnegativity and unit sum of its coordinates give
\[
\sum_{x\in S}p(x)a_x
\ge
\sum_{x\in S}p(x)a_{x_*}
=a_{x_*}.
\]
At the vertex \(p^{x_*}\), the left-hand side equals \(a_{x_*}\). Thus the lower bound is sharp and both stated minima are attained. The calculation uses no assumption that \(|S|\ge2\). \(\square\)

### unit_002: proposition

**Proposition (Sion's max-min equality on the fixed response body).**
\(\label{prop:step-004-sion-fixed-body}\)
Under the accepted conclusions of Propositions~\(\ref{prop:step-002-compact-body}\) and~\(\ref{prop:step-002-zero-dimensional}\), Lemma~\(\ref{lem:step-002-continuous-evaluations}\), and Lemma~\(\ref{lem:step-004-simplex-vertex}\), suppose \(h\in\mathcal H\) and \(S\subseteq\mathcal X\) is nonempty and finite. Let
\[
\Delta(S)
:=\left\{p\in\mathbb R^S:p(x)\ge0\ \text{for all }x\in S,
\ \sum_{x\in S}p(x)=1\right\}
\]
and, on the fixed product \(K_A\times\Delta(S)\), define
\[
L_h(f,p):=\sum_{x\in S}p(x)h(x)f(x).
\]
Then Sion's 1958 Theorem 3.4 applies in the exact orientation with \(f\) maximizing and \(p\) minimizing, and
\[
\max_{f\in K_A}\min_{p\in\Delta(S)}L_h(f,p)
=
\min_{p\in\Delta(S)}\max_{f\in K_A}L_h(f,p).
\]
Every maximum and minimum displayed here is attained.

**Proof / justification.**
We discharge the cited theorem's hypotheses in the current notation.

First, the accepted `step_002` conclusions cover both possible ranks: Proposition~\(\ref{prop:step-002-compact-body}\) gives, when \(r_A>0\), that \(K_A\) is nonempty, compact, and convex in the fixed finite-dimensional topology of \(V_A\); Proposition~\(\ref{prop:step-002-zero-dimensional}\) gives the same properties directly when \(r_A=0\). Thus in all cases the maximizing set is the same setting-defined, fixed body \(K_A\), not a body selected after \(h\), \(S\), or \(p\).

Second, because \(S\) is nonempty and finite, \(\Delta(S)\) contains every vertex \(p^x\), is convex, and is closed and bounded in the finite-dimensional linear topological space \(\mathbb R^S\). Hence it is nonempty and compact. Sion requires only convexity of the minimizing set in this orientation, while this additional compactness will justify the outer minimum below.

Third, fix \(p\in\Delta(S)\). The map
\[
f\longmapsto L_h(f,p)
=\sum_{x\in S}p(x)h(x)\,\delta_x(f)
\]
is a finite linear combination of point evaluations. Lemma~\(\ref{lem:step-002-continuous-evaluations}\) gives their continuity when \(r_A>0\), and Proposition~\(\ref{prop:step-002-zero-dimensional}\) gives it when \(r_A=0\). Therefore this map is continuous and affine on \(K_A\). It is in particular upper semicontinuous, and each upper level set is the intersection of \(K_A\) with an affine half-space, hence convex; it is quasiconcave in the maximizing variable.

Fourth, fix \(f\in K_A\). The map
\[
p\longmapsto L_h(f,p)
=\sum_{x\in S}p(x)h(x)f(x)
\]
is a finite linear function of the Euclidean coordinates of \(p\). It is continuous and affine on \(\Delta(S)\), hence lower semicontinuous, and each lower level set is convex; it is quasiconvex in the minimizing variable. The payoff is finite and real-valued because the sum is finite and every \(f(x)\) is a real number.

All hypotheses of Sion's Theorem 3.4 are now discharged with
\[
M=K_A,qquad N=\Delta(S),qquad G=L_h.
\]
Its conclusion, without reversing the players or changing signs, is exactly
\[
\sup_{f\in K_A}\inf_{p\in\Delta(S)}L_h(f,p)
=
\inf_{p\in\Delta(S)}\sup_{f\in K_A}L_h(f,p).
\tag{1}
\]

It remains to justify every `max` and `min` in the proposition, rather than attributing attainment to the order equality. For fixed \(p\), continuity of \(L_h(\cdot,p)\) on compact \(K_A\) gives an attained maximum. For fixed \(f\), continuity of \(L_h(f,\cdot)\) on compact \(\Delta(S)\) gives an attained minimum; Lemma~\(\ref{lem:step-004-simplex-vertex}\) also identifies an attaining vertex.

For the outer maximum, Lemma~\(\ref{lem:step-004-simplex-vertex}\) gives
\[
\inf_{p\in\Delta(S)}L_h(f,p)
=\min_{x\in S}h(x)f(x).
\]
This is continuous in \(f\): for any \(f,g\in K_A\),
\[
\left|
\min_{x\in S}h(x)f(x)-\min_{x\in S}h(x)g(x)
\right|
\le\max_{x\in S}|f(x)-g(x)|,
\]
and the finite collection of point evaluations is continuous. Compactness of \(K_A\) therefore makes the left outer supremum in (1) an attained maximum.

For the outer minimum, put temporarily
\(v(p):=\max_{f\in K_A}L_h(f,p)\). Each quantity
\(\max_{f\in K_A}|f(x)|\) is finite because point evaluation is continuous and \(K_A\) is compact. For \(p,q\in\Delta(S)\),
\[
\begin{aligned}
|v(p)-v(q)|
&\le \max_{f\in K_A}|L_h(f,p)-L_h(f,q)|\\
&\le \sum_{x\in S}|p(x)-q(x)|
       \max_{f\in K_A}|f(x)|.
\end{aligned}
\]
Thus \(v\) is continuous on compact \(\Delta(S)\), so the right outer infimum in (1) is an attained minimum. Replacing the four attained suprema/infima in (1) by maxima/minima proves the displayed equality. \(\square\)

### unit_003: proposition

**Proposition (Exact-center witnesses lower-bound the fixed-body min-max value).**
\(\label{prop:step-004-exact-center-lower}\)
Under Assumptions~\(\ref{assump:parameter-regime}\) and~\(\ref{assump:universal-adversarial-guarantee}\), the accepted compactness conclusion of Propositions~\(\ref{prop:step-002-compact-body}\) and~\(\ref{prop:step-002-zero-dimensional}\), accepted Proposition~\(\ref{prop:step-003-exact-correlation}\), and Proposition~\(\ref{prop:step-004-sion-fixed-body}\), suppose \(h\in\mathcal H\) and \(S\subseteq\mathcal X\) is nonempty and finite. Then
\[
\min_{p\in\Delta(S)}\max_{f\in K_A}L_h(f,p)\ge\rho.
\]
For each \(p\), the exact-center response and its mean function may depend on \(p\), but every such function belongs to the one fixed body \(K_A\).

**Proof / justification.**
Fix an arbitrary \(p\in\Delta(S)\). By the basic setup, \(p\) determines the available finitely supported probability law \(\mathcal D_p\in\mathcal P(\mathcal X)\) that assigns mass \(p(x)\) to \(x\in S\) and zero mass outside \(S\). Accepted Proposition~\(\ref{prop:step-003-exact-correlation}\), instantiated with \((\mathcal D_p,h)\), gives
\[
F_{R^0_{\mathcal D_p,h}}\in K_A
\]
and, with no tolerance or approximation residual,
\[
\begin{aligned}
L_h(F_{R^0_{\mathcal D_p,h}},p)
&=\sum_{x\in S}p(x)h(x)
  F_{R^0_{\mathcal D_p,h}}(x)\\
&=\mathbb E_{x\sim\mathcal D_p}
  [h(x)F_{R^0_{\mathcal D_p,h}}(x)]\\
&\ge\rho.
\end{aligned}
\]
Consequently,
\[
\max_{f\in K_A}L_h(f,p)
\ge L_h(F_{R^0_{\mathcal D_p,h}},p)
\ge\rho.
\tag{2}
\]
The maximum exists by Proposition~\(\ref{prop:step-004-sion-fixed-body}\); inequality (2) itself only needs the displayed witness membership.

The quantifiers in (2) are
\[
\forall p\in\Delta(S)\ \exists
F_{R^0_{\mathcal D_p,h}}\in K_A:
L_h(F_{R^0_{\mathcal D_p,h}},p)\ge\rho.
\]
The rule \(R^0_{\mathcal D_p,h}\), and hence its mean response, is allowed to change when \(p\) changes. What does not change is the maximizing set: every witness is a raw response already contained in the same \(K_A\), which was fixed from the learner before \(h\), \(S\), and \(p\). No common exact-center rule across different \(p\)'s is asserted or needed.

Since (2) holds for every \(p\), taking the attained minimum over \(p\in\Delta(S)\) gives
\[
\min_{p\in\Delta(S)}\max_{f\in K_A}L_h(f,p)
\ge\rho
\]
with the threshold unchanged. \(\square\)

### unit_004: proposition

**Proposition (Attained simultaneous margin on every finite restriction).**
\(\label{prop:step-004-finite-margin}\)
Under Assumptions~\(\ref{assump:parameter-regime}\) and~\(\ref{assump:universal-adversarial-guarantee}\), Lemma~\(\ref{lem:step-004-simplex-vertex}\), Proposition~\(\ref{prop:step-004-sion-fixed-body}\), and Proposition~\(\ref{prop:step-004-exact-center-lower}\), suppose \(h\in\mathcal H\) and \(S\subseteq\mathcal X\) is nonempty and finite. Then
\[
\begin{aligned}
\max_{f\in K_A}\min_{x\in S}h(x)f(x)
&=\max_{f\in K_A}\min_{p\in\Delta(S)}L_h(f,p)\\
&=\min_{p\in\Delta(S)}\max_{f\in K_A}L_h(f,p)\\
&\ge\rho.
\end{aligned}
\]
Moreover, there is \(f_{h,S}\in K_A\) attaining the first maximum, and it satisfies
\[
h(x)f_{h,S}(x)\ge\rho
\qquad\text{for every }x\in S.
\]

**Proof / justification.**
For each fixed \(f\in K_A\), apply Lemma~\(\ref{lem:step-004-simplex-vertex}\) to the finite family \(a_x=h(x)f(x)\). This gives the pointwise identity
\[
\min_{p\in\Delta(S)}L_h(f,p)
=\min_{x\in S}h(x)f(x).
\]
Taking the already attained maximum over the same fixed \(K_A\) proves the first equality in the displayed chain. Proposition~\(\ref{prop:step-004-sion-fixed-body}\) proves the second equality in exactly the orientation shown, with \(f\) maximizing and \(p\) minimizing. Proposition~\(\ref{prop:step-004-exact-center-lower}\) proves the final inequality at exactly \(\rho\). No inequality in this composition replaces \(\rho\) by a smaller threshold.

Proposition~\(\ref{prop:step-004-sion-fixed-body}\) also proves that the first maximum is attained. Select an attaining function and call it \(f_{h,S}\). Then
\[
\min_{x\in S}h(x)f_{h,S}(x)\ge\rho,
\]
which is equivalent, because \(S\) is nonempty, to
\[
h(x)f_{h,S}(x)\ge\rho
\quad\text{for every }x\in S.
\]

If \(S=\{x_0\}\), the simplex has the single vertex \(p^{x_0}\), and the chain reduces without any omitted case to
\[
\max_{f\in K_A}h(x_0)f(x_0)
\ge
h(x_0)F_{R^0_{\delta_{x_0},h}}(x_0)
\ge\rho.
\]
Thus singleton restrictions are covered exactly. The empty set is not passed to Sion's theorem and is outside this step's binding claim; its vacuous constraint is handled downstream as the empty intersection of subsets of \(K_A\). \(\square\)

## Target-Step Assembly

Fix \(h\in\mathcal H\) and a nonempty finite \(S\subseteq\mathcal X\). The accepted `step_002` pair supplies one nonempty compact convex \(K_A\), fixed before \(h,S\), or \(p\), and continuity of every signed point evaluation on it. Proposition~\(\ref{prop:step-004-sion-fixed-body}\) uses precisely those conclusions to discharge Sion's 1958 Theorem 3.4 with \(M=K_A\), \(N=\Delta(S)\), and \(G=L_h\), preserving the exact max-min orientation
\[
\max_{f\in K_A}\min_{p\in\Delta(S)}L_h(f,p)
=
\min_{p\in\Delta(S)}\max_{f\in K_A}L_h(f,p).
\]
The same proposition separately proves all required attainment statements.

For every \(p\), accepted Proposition~\(\ref{prop:step-003-exact-correlation}\) supplies the possibly \(p\)-dependent exact-center mean response \(F_{R^0_{\mathcal D_p,h}}\), always inside that same fixed \(K_A\). Proposition~\(\ref{prop:step-004-exact-center-lower}\) therefore gives
\[
\min_{p\in\Delta(S)}\max_{f\in K_A}L_h(f,p)\ge\rho
\]
without asking one exact-center rule to serve all \(p\) and without changing \(K_A,V_A\), or \(\varphi_A\).

Lemma~\(\ref{lem:step-004-simplex-vertex}\) proves, including for singleton \(S\), that
\[
\min_{p\in\Delta(S)}L_h(f,p)=\min_{x\in S}h(x)f(x).
\]
Proposition~\(\ref{prop:step-004-finite-margin}\) composes these exact statements and selects an attaining \(f_{h,S}\in K_A\) with
\[
h(x)f_{h,S}(x)\ge\rho
\quad\text{for all }x\in S.
\]
This is exactly the binding `step_004` output, at the unchanged threshold \(\rho\), for every nonempty finite restriction.

## Explicit Rate Audit

- Exposed variables: \(\varepsilon\) through the exact threshold \(\rho=1-2\varepsilon\). The set \(S\) may be any nonempty finite subset, and no dependence on \(|S|\) appears.
- Hidden constants may depend on: None. There are no hidden constants.
- Hidden constants may not depend on: \(\mathcal X,\mathcal H,A,\mu_A,m,\tau,\varepsilon,h,S,p,R,U\), or domain cardinality.
- Fixed quantities: \(A,\mu_A,m,\tau\), the complete-response interface, \(V_A\), \(K_A\), and \(\varphi_A\) are fixed before \(h,S,p\). Only the exact-center witness may vary with \(p\), and only the exported \(f_{h,S}\) varies with \((h,S)\).
- Probability mode: Deterministic. A simplex point \(p\) is a finitely supported population law, not a randomized oracle policy; the accepted seed expectation is already inside \(F_{R^0}\). No theorem probability or confidence parameter is introduced.
- Horizon mode: Static finite-restriction conclusion for the fixed finite query horizon \(m\) inherited from the setting. No all-time or horizon-uniform upgrade occurs.
- Norm mode: Exact pointwise signed margin, equivalently \(\min_{x\in S}h(x)f_{h,S}(x)\ge\rho\). No norm or risk conversion occurs.
- Admissibility conditions and auxiliary tolerances: \(\varepsilon\in[0,1/4)\) and nonempty finite \(S\). The inherited \(\tau>0\) creates no term in this step, and no auxiliary tolerance is introduced.
- Term absorption or simplification inequalities: None. The quantitative chain consists of exact equalities followed by
  \[
  \min_{p\in\Delta(S)}\max_{f\in K_A}L_h(f,p)\ge\rho.
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports the unchanged threshold \(\rho\) to the finite-intersection step, with zero minimax, simplex, and attainment residual.
- Baseline-reduction check: At \(\varepsilon=0\), \(\rho=1\), and every equality and compact-attainment argument preserves margin exactly \(1\). For singleton \(S\), the statement reduces exactly to the accepted point-mass correlation. No weaker positive-margin surrogate is substituted.

## Blockers

None

## Notation And Assumption Notes

- \(\Delta(S)\) is `appendix-local` and is directly defined from the nonempty finite setting subset \(S\). Its vertices \(p^x\) are `proof-local`; no simplex is formed for the empty set in this step.
- \(L_h(f,p)=\sum_{x\in S}p(x)h(x)f(x)\) is `appendix-local`. It is reused throughout the minimax argument and is defined entirely from setting objects and the fixed body's point evaluations.
- The temporary value function \(v(p)=\max_{f\in K_A}L_h(f,p)\) is `proof-local`. The quantities \(\max_{f\in K_A}|f(x)|\) in its continuity estimate are `proof-local` finite bounds proved from accepted compactness and evaluation continuity; they are neither assumed nor exported as uniform-in-\(x\) constants.
- The finitely supported law \(\mathcal D_p\) is `proof-local`, directly defined from \(p\) and the setting's availability of all finitely supported laws. The exact-center rule \(R^0_{\mathcal D_p,h}\) and its mean response use accepted `step_003` notation and may vary with \(p\).
- \(f_{h,S}\) is the minimal `public-facing` generated output of this step. Proposition~\(\ref{prop:step-004-finite-margin}\) proves its membership in the fixed \(K_A\), its attainment property, and all its signed inequalities; none is assumed.
- \(\rho=1-2\varepsilon\) is the setting-defined `public-facing` margin. It is inherited exactly from Proposition~\(\ref{prop:step-003-exact-correlation}\). No new radius, slack, threshold, rate, or approximation parameter is introduced.
- Constant provenance: this step introduces no public constant. The only proof-local finite evaluation maxima are attained and finite by the accepted compactness/continuity dependency. The threshold \(\rho\) comes directly from `assump:parameter-regime` and the accepted exact-correlation dependency.
- Assumption provenance: compactness, convexity, nonemptiness, and evaluation continuity of \(K_A\) are accepted derived outputs of `step_002`; exact-center membership and correlation are accepted derived outputs of `step_003`. The simplex identity is proved in Lemma~\(\ref{lem:step-004-simplex-vertex}\), the cited-theorem hypotheses and attainment are proved in Proposition~\(\ref{prop:step-004-sion-fixed-body}\), the fixed-body lower bound is proved in Proposition~\(\ref{prop:step-004-exact-center-lower}\), and finite simultaneous feasibility is proved in Proposition~\(\ref{prop:step-004-finite-margin}\). There is no event, stability condition, recurrence, local-validity condition, or conditional hypothesis.
- Fixed-body quantifiers: the logical path is
  \[
  \forall p\in\Delta(S)\ \exists f_p^0\in K_A:
  L_h(f_p^0,p)\ge\rho
  \quad\Longrightarrow\quad
  \min_p\max_{f\in K_A}L_h(f,p)\ge\rho.
  \]
  The witness \(f_p^0=F_{R^0_{\mathcal D_p,h}}\) may vary with \(p\); the set over which every maximum is taken is always the same pre-instance \(K_A\). Neither \(V_A\) nor \(\varphi_A\) varies.
- Boundary regimes: every nonempty finite \(S\), including \(|S|=1\), is covered. The empty set is excluded from Sion's invocation and from the binding target; its downstream constraint is vacuous. At \(\varepsilon=0\), the exact threshold is \(1\). A fixed \(h\) and nonempty \(S\) already imply nonempty \(\mathcal H\) and \(\mathcal X\); no nonexistent target, point, law, or simplex is selected.
- Diagnostic boundary: `global_proof.md` and `global_proof_review.md` were not consulted. No diagnostic artifact, nondependency step, prior branch, or proof-history artifact is used as evidence, an assumption source, a cited result, or authority to alter the target claim.
