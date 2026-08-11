# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove the extended \(V_j\) and least-minimizer selector are
  Borel, \((E_j)_j\) is a disjoint Borel partition of \(K_R\),
  \(E_{j,m}\uparrow E_j\), and on each selected chart \(T_j\) solves the root
  equation exactly with
  \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\rm piv}\).
- Depends on: `step_001`.
- Assumptions used: Primitive `assump:shared-pfaffian-chain`; derived pivot
  availability from `step_001`.
- Technical challenge: Measurable tie handling and exact velocity control
  without a single global pivot or an \(N\)-fold union bound.
- Intended proof tool or cited result: Finite Borel minimization and direct
  quotient differentiation.
- Output target: Measurable chart and Jacobian interface.
- Rate objective: R1 requires the exact \(R\)-weighted velocity inequality
  with no auxiliary tolerance in the theorem rate.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:shared-pfaffian-chain`: this step uses only that
    \(b,F_1,\ldots,F_N\) are \(C^1\) on the compact interval \(\Theta\).
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_001` proof is
    `perspective_3/idea_1/proof_steps/step_001/proof.md`, SHA-256
    `0a5355f86a9086ad945b96629d8e05f2dd8e77c9abcc1faa855a54dfd5e8d252`.
    It proves that \(K_R\) is compact; if \(K_R\ne\varnothing\), then a
    nonzero pivot coordinate is available at every point of \(K_R\), the
    pointwise minimum \(\min_jV_j\) is finite, and
    \(\Gamma_{\rm piv}(b,F;R)<\infty\); if \(K_R=\varnothing\), then
    \(\Gamma_{\rm piv}(b,F;R)=0\).
  - Its accepted review is
    `perspective_3/idea_1/proof_steps/step_001/review.md`, SHA-256
    `c0f43d8431f1714cc8a4ecbb1501ac465974b6603b078b2601f1b3f3e88df5c3`.
    The review records sketch attempt 2, `step_001`, unit attempt 1, status
    `ACCEPTED`, and the same complete reviewed-proof digest.
- Local conditional hypotheses:
  - The condition \(K_R\ne\varnothing\) is used only for the nonempty branch
    in which a selector has points to select. The empty branch is proved
    separately and is not excluded from the target.
  - Membership \(\theta\in E_j\) and
    \(\beta\in[-R,R]^{N-1}\) are quantified local conditions in the chart
    proposition, not theorem-facing assumptions.

This proof does not independently invoke `assump:no-forced-root`; its needed
consequence is exactly the accepted pivot-availability output of `step_001`.
It does not use `assump:joint-density-cap`.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:shared-pfaffian-chain} and the accepted pivot-availability and finiteness conclusions of `step_001`, each extended \(V_j:\Theta\to[0,+\infty]\) is Borel and \(\min_jV_j(\theta)\) is finite for every \(\theta\in K_R\). | Supplies measurable finite data for the selector. |
| `unit_002` | proposition | Under Lemma~\ref{lem:step-002-borel-speeds}, the least minimizer \(j_*:K_R\to\{1,\ldots,N\}\) is Borel and its fibers \(E_j\) form a disjoint Borel partition of \(K_R\), with every selected pivot nonzero. | Resolves ties measurably and produces the unique chart cells. |
| `unit_003` | lemma | Under Assumption~\ref{assump:shared-pfaffian-chain} and Proposition~\ref{prop:step-002-borel-selector}, each \(E_{j,m}\) is Borel, \(E_{j,m}\subseteq E_{j,m+1}\), and every point of \(E_j\) belongs to some finite level, so \(E_{j,m}\uparrow E_j\). | Produces the denominator-bounded finite exhaustion without deleting boundary points. |
| `unit_004` | proposition | Under Assumption~\ref{assump:shared-pfaffian-chain}, the accepted `step_001` interface, and Proposition~\ref{prop:step-002-borel-selector}, if \(\theta\in E_j\) and \(\beta\in[-R,R]^{N-1}\), then \(T_j\) is well-defined, gives an exact root in the original coefficient coordinates, and satisfies \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\rm piv}\). | Supplies the exact graph and velocity interface with the literal \(R\) weights and no chart-count loss. |

Atomic step = no. Extended-valued measurability, finite least-index selection,
finite-level exhaustion, and exact chart differentiation are independent
nontrivial obligations and are proved separately.

## Cited Result Applications

No paper result or external theorem is used. The accepted dependency and the
elementary standard facts used below are restated in current notation.

### Accepted dependency: `step_001`

- Source identity: the accepted proof and review have the complete SHA-256
  values recorded in `## Allowed Assumptions And Dependencies`. The review's
  recorded proof identity matches the current dependency proof exactly.
- Restated statement in current notation: Accepted
  Lemma~\ref{lem:step-001-root-feasible} gives compactness of \(K_R\) and the
  empty-set branch. Accepted
  Lemma~\ref{lem:step-001-pivot-margin} gives, when
  \(K_R\ne\varnothing\),
  \[
  F(\theta)\ne0\quad(\theta\in K_R),
  \qquad
  \rho=\min_{\theta\in K_R}\max_j\lvert F_j(\theta)\rvert>0.
  \]
  Accepted Proposition~\ref{prop:step-001-fixed-family-bound} proves that at
  every \(\theta\in K_R\) at least one ordinary pivot speed is finite and
  that \(\Gamma_{\rm piv}(b,F;R)<\infty\). In the empty branch it equals
  zero.
- Instantiated objects: exactly the current \(b,F,K_R,V_j\), and
  \(\Gamma_{\rm piv}(b,F;R)\); no dependency notation is reinterpreted.
- Assumption discharge: the dependency proof and its matching accepted review
  already discharge their own primitive assumptions. This step consumes only
  the stated derived conclusions. In particular, it does not promote
  nonvanishing or a pivot margin to a primitive condition.
- Conclusion used: \(K_R\) is Borel; at least one finite extended speed is
  available at every point of nonempty \(K_R\); a selected finite speed has a
  nonzero denominator; and the pointwise minimum is bounded above by the
  finite fixed-family \(\Gamma_{\rm piv}\).

### Elementary Borel calculus

- Source or name: continuity implies Borel measurability, Borel comparison of
  extended-real maps, and the finite-discrete fiber criterion.
- Restated statement in current notation: A continuous real function on a
  Borel subspace is Borel. If \(f,g:X\to[0,+\infty]\) are Borel, then
  \[
  \{f<g\}
  =\bigcup_{r\in\mathbb Q}
    \bigl(\{f<r\}\cap\{r<g\}\bigr),
  \qquad
  \{f\le g\}=X\setminus\{g<f\},
  \]
  so both comparison sets are Borel; also
  \(\{f<+\infty\}=\bigcup_{n\ge1}\{f<n\}\) is Borel. A map from a
  measurable space into the finite discrete space \(\{1,\ldots,N\}\) is
  Borel exactly when all of its point fibers are Borel.
- Instantiated objects: the extended maps \(V_i,V_j\), their comparison sets,
  and the fibers \(E_j=j_*^{-1}(\{j\})\).
- Assumption discharge: Lemma~\ref{lem:step-002-borel-speeds} proves the
  extended speeds Borel before any comparison is used. The target index space
  is finite and carries its full power-set sigma algebra.
- Conclusion used: every set in the explicit least-index formula for \(E_j\)
  is Borel, and the selector is Borel.

### Quotient rule and exact triangle inequality

- Source or name: one-dimensional quotient rule and finite-sum triangle
  inequality.
- Restated statement in current notation: If \(g,h\) are \(C^1\) and
  \(h(\theta)\ne0\), then
  \[
  \left(\frac gh\right)'(\theta)
  =\frac{g'(\theta)h(\theta)-g(\theta)h'(\theta)}{h(\theta)^2}.
  \]
  For real \(x_0,x_i\),
  \(\lvert x_0+\sum_i x_i\rvert\le
  \lvert x_0\rvert+\sum_i\lvert x_i\rvert\).
- Instantiated objects: \((g,h)=(b,F_j)\) and
  \((g,h)=(F_i,F_j)\), followed by
  \(x_i=\beta_i(F_i/F_j)'\).
- Assumption discharge: Assumption~\ref{assump:shared-pfaffian-chain} gives
  \(C^1\) regularity, while
  Proposition~\ref{prop:step-002-borel-selector} gives
  \(F_j(\theta)\ne0\) on \(E_j\). The cube condition gives
  \(\lvert\beta_i\rvert\le R\).
- Conclusion used: the exact derivative identity and the literal
  \(R\)-weighted upper bound in
  Proposition~\ref{prop:step-002-exact-chart}.

### Finite integer exhaustion

- Source or name: the Archimedean property of the positive integers.
- Restated statement in current notation: for every real \(x>0\), there is a
  finite integer \(m\ge1\) for which \(1/m\le x\).
- Instantiated object: \(x=\lvert F_j(\theta)\rvert\) at a point
  \(\theta\in E_j\).
- Assumption discharge: Proposition~\ref{prop:step-002-borel-selector} proves
  this coordinate magnitude is strictly positive.
- Conclusion used: every selected point enters a finite exhaustion level.

### Local result applications

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Lemma~\ref{lem:step-002-borel-speeds} | Under Assumption~\ref{assump:shared-pfaffian-chain} and the accepted `step_001` interface, all extended speeds are Borel and their finite pointwise minimum exists on \(K_R\). | Supplies the comparisons and finite winner used by Proposition~\ref{prop:step-002-borel-selector}. |
| Proposition~\ref{prop:step-002-borel-selector} | Under Lemma~\ref{lem:step-002-borel-speeds}, the least selector is Borel, its fibers are a disjoint Borel partition, and a selected denominator is nonzero. | Supplies cells to Lemma~\ref{lem:step-002-finite-exhaustion} and legal denominators to Proposition~\ref{prop:step-002-exact-chart}. |
| Lemma~\ref{lem:step-002-finite-exhaustion} | Under Assumption~\ref{assump:shared-pfaffian-chain} and Proposition~\ref{prop:step-002-borel-selector}, the Borel cells \(E_{j,m}\) increase to \(E_j\), and every selected point enters at finite \(m\). | Supplies the exact exhaustion clause to target-step assembly. |
| Proposition~\ref{prop:step-002-exact-chart} | Under Assumption~\ref{assump:shared-pfaffian-chain}, the accepted dependency, and Proposition~\ref{prop:step-002-borel-selector}, each selected graph is exact and has \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\rm piv}\). | Supplies the exact chart and velocity clauses to target-step assembly. |

## Local Derivation

### unit_001: lemma

**Lemma (Borel extended pivot speeds and finite feasible minimum).**
\(\label{lem:step-002-borel-speeds}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain} and the accepted
conclusions of Lemma~\ref{lem:step-001-root-feasible},
Lemma~\ref{lem:step-001-pivot-margin}, and
Proposition~\ref{prop:step-001-fixed-family-bound}, for every
\(j\in\{1,\ldots,N\}\) the extended map
\(V_j:\Theta\to[0,+\infty]\) is Borel. If \(K_R\ne\varnothing\), then
\(\min_{1\le j\le N}V_j(\theta)\) is finite for every
\(\theta\in K_R\), and
\[
\min_jV_j(\theta)\le\Gamma_{\rm piv}(b,F;R)<\infty.
\]
If \(K_R=\varnothing\), these pointwise assertions are vacuous and
\(\Gamma_{\rm piv}(b,F;R)=0\).

Proof / justification:
Fix \(j\). Assumption~\ref{assump:shared-pfaffian-chain} makes \(F_j\)
continuous, so
\[
U_j=\{\theta\in\Theta:F_j(\theta)\ne0\}
\]
is relatively open and Borel in \(\Theta\). On \(U_j\), each of
\(b/F_j\) and \(F_i/F_j\), \(i\ne j\), is \(C^1\). The quotient-rule
formula expresses its derivative using the continuous functions
\(b,F_i,F_j,b',F_i',F_j'\) and the nonzero denominator \(F_j^2\).
Consequently the finite branch
\[
\left\lvert\left(\frac b{F_j}\right)'\right\rvert
+R\sum_{i\ne j}
 \left\lvert\left(\frac{F_i}{F_j}\right)'\right\rvert
\]
is continuous, hence Borel, on \(U_j\).

The setting extends this branch by \(+\infty\) on
\(\Theta\setminus U_j\). For every finite real \(a\), its strict sublevel
set is the intersection of \(U_j\) with the strict sublevel set of the
continuous finite branch. It is therefore Borel. These finite sublevel sets
generate the Borel sigma algebra of \([0,+\infty]\), so the extended
\(V_j\) is Borel. This argument uses the relative topology on the compact
interval and therefore includes its endpoints.

Now suppose \(K_R\ne\varnothing\) and fix \(\theta\in K_R\). Accepted
Lemma~\ref{lem:step-001-pivot-margin} gives at least one index \(k\) with
\(F_k(\theta)\ne0\). The finite-branch formula above then gives
\(V_k(\theta)<+\infty\). A finite list containing a finite entry has a
finite attained minimum. Accepted
Proposition~\ref{prop:step-001-fixed-family-bound} gives the fixed-family
finiteness of \(\Gamma_{\rm piv}\), and the definition as a supremum yields
\[
\min_jV_j(\theta)
\le\sup_{\vartheta\in K_R}\min_jV_j(\vartheta)
=\Gamma_{\rm piv}(b,F;R)<\infty.
\]
The accepted empty-branch conclusion gives the last assertion when
\(K_R=\varnothing\).

### unit_002: proposition

**Proposition (Borel least-pivot selector and disjoint cells).**
\(\label{prop:step-002-borel-selector}\)

Statement:
Under Lemma~\ref{lem:step-002-borel-speeds}, define on \(K_R\)
\[
j_*(\theta)
=\min\operatorname*{argmin}_{1\le i\le N}V_i(\theta).
\]
Then \(j_*:K_R\to\{1,\ldots,N\}\), with the finite discrete target, is
Borel. For every \(j\), its fiber \(E_j=j_*^{-1}(\{j\})\) is the Borel set
\[
E_j
=K_R\cap\{V_j<+\infty\}
 \cap\bigcap_{i<j}\{V_j<V_i\}
 \cap\bigcap_{i>j}\{V_j\le V_i\}.
\]
The family \((E_j)_{j=1}^N\) is pairwise disjoint and has union \(K_R\).
Moreover, \(E_j\subseteq U_j\), so \(F_j\ne0\) on every selected cell.
When \(K_R=\varnothing\), the unique empty-domain selector is Borel and all
cells are empty.

Proof / justification:
By Lemma~\ref{lem:step-002-borel-speeds}, all \(V_i\) are Borel
extended-real maps. For any two such maps \(f,g\), density of the rationals
in the finite real line gives
\[
\{f<g\}
=\bigcup_{r\in\mathbb Q}
  \bigl(\{f<r\}\cap\{r<g\}\bigr).
\]
If \(f<g\), then \(f\) is finite and a rational lies strictly between them,
including when \(g=+\infty\); the reverse inclusion is immediate. Thus
strict comparison sets are Borel. Since
\(\{f\le g\}=\Theta\setminus\{g<f\}\), weak comparison sets are Borel as
well. Finally,
\(\{V_j<+\infty\}=\bigcup_{n\ge1}\{V_j<n\}\) is Borel. Accepted
Lemma~\ref{lem:step-001-root-feasible} makes \(K_R\) compact and hence
Borel, so the displayed \(E_j\) is Borel in \(\Theta\).

At every \(\theta\in K_R\), Lemma~\ref{lem:step-002-borel-speeds} gives a
finite attained minimum of the finite list \((V_i(\theta))_{i=1}^N\). Let
\(j\) be its least attaining index. Then \(V_j<+\infty\); every earlier
index has strictly larger value; and every later index has value at least
\(V_j\). Hence \(\theta\) belongs to the displayed \(E_j\). Conversely,
the displayed inequalities say exactly that \(j\) attains the minimum and
no smaller index does. Thus the sets cover \(K_R\) and are pairwise
disjoint, including all ties.

For any subset \(B\subseteq\{1,\ldots,N\}\),
\[
j_*^{-1}(B)=\bigcup_{j\in B}E_j
\]
is a finite union of Borel sets. This proves Borel measurability of the
selector. The condition \(V_j<+\infty\) in the fiber formula and the setting
extension \(V_j=+\infty\) off \(U_j\) prove \(E_j\subseteq U_j\).
Therefore a coordinate zero can never be selected against the finite pivot
provided by the accepted dependency. Zeros in unselected coordinates do not
affect the construction. If \(K_R\) is empty, every assertion reduces to the
corresponding empty-set statement.

### unit_003: lemma

**Lemma (Borel finite-level exhaustion of each selected cell).**
\(\label{lem:step-002-finite-exhaustion}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain} and
Proposition~\ref{prop:step-002-borel-selector}, for every
\(j\in\{1,\ldots,N\}\) and integer \(m\ge1\),
\[
E_{j,m}=E_j\cap\{\lvert F_j\rvert\ge1/m\}
\]
is Borel, \(E_{j,m}\subseteq E_{j,m+1}\), and
\[
\bigcup_{m=1}^{\infty}E_{j,m}=E_j.
\]
More precisely, every \(\theta\in E_j\) lies in at least one finite level
\(E_{j,m}\).

Proof / justification:
Assumption~\ref{assump:shared-pfaffian-chain} makes \(F_j\) continuous, so
\(\{\lvert F_j\rvert\ge1/m\}\) is closed relative to \(\Theta\) and is
Borel. Proposition~\ref{prop:step-002-borel-selector} makes \(E_j\) Borel;
hence every \(E_{j,m}\) is Borel.

Since \(1/(m+1)\le1/m\),
\[
\{\lvert F_j\rvert\ge1/m\}
\subseteq
\{\lvert F_j\rvert\ge1/(m+1)\},
\]
so the sequence is increasing. Every level is a subset of \(E_j\). For the
reverse inclusion, fix \(\theta\in E_j\). The selector proposition gives
\(\lvert F_j(\theta)\rvert>0\). By the Archimedean property, some finite
integer \(m\) satisfies
\(1/m\le\lvert F_j(\theta)\rvert\), whence
\(\theta\in E_{j,m}\). This proves the union identity and shows that no
point survives only at a formal infinite level. For empty \(E_j\), including
the branch \(K_R=\varnothing\), the same claims hold trivially.

### unit_004: proposition

**Proposition (Exact selected-coordinate chart and pivot velocity).**
\(\label{prop:step-002-exact-chart}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain}, the accepted conclusions
of Lemma~\ref{lem:step-001-pivot-margin} and
Proposition~\ref{prop:step-001-fixed-family-bound}, and
Proposition~\ref{prop:step-002-borel-selector}, fix
\(j\in\{1,\ldots,N\}\), \(\theta\in E_j\), and
\(\beta=(\beta_i)_{i\ne j}\in[-R,R]^{N-1}\). Then
\[
T_j(\theta,\beta)
=-\frac{b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)}{F_j(\theta)}
\]
is well-defined and is Borel jointly in \((\theta,\beta)\) on
\(E_j\times[-R,R]^{N-1}\). In the original coefficient coordinates, with
the \(j\)-th coordinate equal to \(T_j(\theta,\beta)\) and all other
coordinates equal to \(\beta_i\), it satisfies the exact root equation
\[
b(\theta)+T_j(\theta,\beta)F_j(\theta)
+\sum_{i\ne j}\beta_iF_i(\theta)=0.
\]
For every fixed \(\beta\), it is \(C^1\) in the setting's endpoint-inclusive
\(\theta\) convention and
\[
\partial_\theta T_j(\theta,\beta)
=-\left(\frac b{F_j}\right)'(\theta)
-\sum_{i\ne j}\beta_i
 \left(\frac{F_i}{F_j}\right)'(\theta),
\]
with the exact bound
\[
\left\lvert\partial_\theta T_j(\theta,\beta)\right\rvert
\le V_j(\theta)
=\min_{1\le i\le N}V_i(\theta)
\le\Gamma_{\rm piv}(b,F;R).
\]
All conclusions remain true after restricting \(\theta\) to any
\(E_{j,m}\).

Proof / justification:
Proposition~\ref{prop:step-002-borel-selector} gives
\(E_j\subseteq U_j\), so \(F_j(\theta)\ne0\) and the displayed quotient is
well-defined. On
\(U_j\times\mathbb R^{N-1}\), its numerator is continuous jointly in
\((\theta,\beta)\), its denominator is continuous and nonzero, and therefore
\(T_j\) is continuous there. Its restriction to the Borel domain
\(E_j\times[-R,R]^{N-1}\) is Borel.

Multiplying the defining quotient by its nonzero denominator gives
\[
T_j(\theta,\beta)F_j(\theta)
=-b(\theta)-\sum_{i\ne j}\beta_iF_i(\theta).
\]
Moving all terms to the left proves the displayed original root equation
with residual exactly zero. No coefficient is weighted, transformed, or
augmented.

For fixed \(\beta\), rewrite the chart as
\[
T_j(\theta,\beta)
=-\frac{b(\theta)}{F_j(\theta)}
-\sum_{i\ne j}\beta_i\frac{F_i(\theta)}{F_j(\theta)}.
\]
Assumption~\ref{assump:shared-pfaffian-chain} and the nonzero denominator
permit direct quotient differentiation, giving the asserted derivative
identity. The same algebra applies at endpoints under the \(C^1\) convention
already fixed by the setting; no interior-point restriction is introduced.
The triangle inequality and the coordinatewise cube bounds give
\[
\begin{aligned}
\left\lvert\partial_\theta T_j(\theta,\beta)\right\rvert
&\le
\left\lvert\left(\frac b{F_j}\right)'(\theta)\right\rvert
+\sum_{i\ne j}\lvert\beta_i\rvert
 \left\lvert\left(\frac{F_i}{F_j}\right)'(\theta)\right\rvert\\
&\le
\left\lvert\left(\frac b{F_j}\right)'(\theta)\right\rvert
+R\sum_{i\ne j}
 \left\lvert\left(\frac{F_i}{F_j}\right)'(\theta)\right\rvert\\
&=V_j(\theta).
\end{aligned}
\]
There is one factor \(R\) for each actual nonpivot coefficient and no
auxiliary slack. Because \(\theta\in E_j\), the selected value is the
pointwise minimum, including at ties. Since \(E_j\subseteq K_R\), the
definition of \(\Gamma_{\rm piv}\), together with its accepted fixed-family
finiteness, gives
\[
V_j(\theta)=\min_iV_i(\theta)
\le\sup_{\vartheta\in K_R}\min_iV_i(\vartheta)
=\Gamma_{\rm piv}(b,F;R)<\infty.
\]

When \(N=1\), the beta cube is the singleton \([-R,R]^0\), both sums are
empty, the sole cell is \(E_1=K_R\), and the statements reduce exactly to
\[
T_1=-b/F_1,
\qquad
\lvert\partial_\theta T_1\rvert
=\left\lvert(b/F_1)'\right\rvert
=V_1\le\Gamma_{\rm piv}.
\]
Thus there is no missing zero-dimensional case. If \(K_R=\varnothing\), all
\(E_j\) and all chart domains are empty, so the chart claims are vacuous and
the accepted dependency gives \(\Gamma_{\rm piv}=0\). Restriction to
\(E_{j,m}\subseteq E_j\) changes none of the identities or inequalities and
introduces no tolerance.

## Target-Step Assembly

Lemma~\ref{lem:step-002-borel-speeds} proves that every extended \(V_j\) is
Borel and, using only the accepted `step_001` output, that a finite minimizing
speed exists at each point of nonempty \(K_R\). The rational-comparison
construction in Proposition~\ref{prop:step-002-borel-selector} then proves
that the least minimizer is Borel. Its explicitly described fibers are Borel,
pairwise disjoint, cover \(K_R\), resolve every finite tie by the least index,
and never select a zero coordinate.

Lemma~\ref{lem:step-002-finite-exhaustion} proves
\(E_{j,m}\uparrow E_j\) as Borel sets and proves the stronger pointwise fact
needed for exact coverage: every selected nonzero pivot enters some finite
level. Proposition~\ref{prop:step-002-exact-chart} proves on each such unique
cell that \(T_j\) reconstructs the original coefficient coordinate with zero
root-equation residual and that
\[
\lvert\partial_\theta T_j\rvert
\le
\left\lvert(b/F_j)'\right\rvert
+R\sum_{i\ne j}\left\lvert(F_i/F_j)'\right\rvert
=V_j
=\min_iV_i
\le\Gamma_{\rm piv}.
\]

The same four results cover coordinate zeros, least-index ties, endpoints,
\(N=1\), every finite exhaustion level, and the empty \(K_R\) branch. The
velocity estimate is applied on the one cell selected for each parameter
point; no sum over \(j\), union bound, or factor \(N\) occurs in this step.
These statements are exactly the measurable chart and velocity interface in
the accepted `step_002` row.

## Explicit Rate Audit

- Exposed variables: \(N,R\), the coordinate values \(\beta_i\), the exact
  speeds \(V_j(\theta)\), and \(\Gamma_{\rm piv}(b,F;R)\). The exhaustion
  index \(m\) is a domain-localization integer, not a rate parameter.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: The fixed family, \(q,M\),
  \(\Delta_{\rm rnd}\), \(\Delta_{\rm aff}\), \(N\), \(R\), a pivot
  margin, the selected cell, or an auxiliary tolerance. There is no hidden
  multiplicative constant.
- Fixed quantities: The deterministic family \((b,F)\), its exact common
  Pfaffian presentation, compact \(\Theta\), \(N\), and \(R\) are fixed.
- Probability mode: Deterministic. No law, density, event probability,
  confidence parameter, expectation, or conditioning is used.
- Horizon mode: Static and pointwise on \(K_R\), with a finite partition and
  a countable denominator exhaustion; there is no time horizon, asymptotic
  mode, or stopping condition.
- Norm mode: Scalar absolute value for chart velocity, the coordinatewise
  cube constraint \(\lvert\beta_i\rvert\le R\), and the setting's
  coordinate-ratio variation in \(V_j\).
- Admissibility conditions and auxiliary tolerances: \(N\ge1\), \(R>0\),
  Assumption~\ref{assump:shared-pfaffian-chain}, the accepted `step_001`
  pivot interface, \(\theta\in E_j\), and
  \(\beta\in[-R,R]^{N-1}\). There is no auxiliary tolerance. The threshold
  \(1/m\) only localizes a nonzero denominator and disappears through exact
  set union.
- Term absorption or simplification inequalities: No term is dropped or
  absorbed. The exact displayed calculation uses
  \[
  \sum_{i\ne j}\lvert\beta_i\rvert
  \left\lvert(F_i/F_j)'\right\rvert
  \le
  R\sum_{i\ne j}\left\lvert(F_i/F_j)'\right\rvert
  \]
  and nothing else. The least-index partition gives
  \(V_j=\min_iV_i\le\Gamma_{\rm piv}\) pointwise, with no chart-count
  factor.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports to
  `step_003` the exact area-integrand bound with the literal \(R\) weights.
  It introduces neither a tolerance nor an \(N\)-fold loss, so the later
  beta-cube factor remains exactly \((2R)^{N-1}\).
- Baseline-reduction check, if applicable: For \(N=1\), the result reduces
  exactly to \(T_1=-b/F_1\) and
  \(\lvert\partial_\theta T_1\rvert=V_1\), with the empty beta sum and no
  conservative loss. The chart inserts the original coefficient rather than
  augmenting or transforming it, preserving the later exact monic
  specialization.

## Blockers

None

## Notation And Assumption Notes

- Binding-input audit: before use, the current files were verified to have
  SHA-256 values
  `91119d2600ee2f787eb873796569ab53e35201e499bf81658d8a0bc1a8e7c79e`
  for `setting.md`,
  `aabcf6f6302d5cfab51cc1495d683cfa353390df7bf0fa81c3beecfcb076d108`
  for `proof_sketch.md`,
  `56d6b16524f0935fbfeee3802f4f6fe748cf0eebfdcfcdf1a66ddce763ebc88c`
  for `proof_sketch_review.md`,
  `fcb7dc635362de5be5c61bbaf858c09ed9795863e8cdd5598247666d45b178b0`
  for `global_proof.md`,
  `51006b10c890f501de7e1f6dd672a2ce07502b82251fcd58bbeef81ea006805b`
  for `global_proof_review.md`, and the two complete accepted dependency
  digests recorded above. The sketch review and global review both record
  `ACCEPTED`, and the dependency review records the matching current proof
  identity.
- Setting-defined downstream interface: \(U_j,V_j,\Gamma_{\rm piv},j_*\),
  \(E_j,E_{j,m}\), \(\beta\), and \(T_j\) retain exactly their definitions
  from `setting.md`. They are `appendix-local`/downstream-facing chart
  objects, not new main-theorem parameters. The only public-facing quantity
  exported beyond the chart proof is the already setting-defined
  \(\Gamma_{\rm piv}\).
- Proof-local helper objects: None. The rational comparison variable \(r\)
  and a pointwise exhaustion index \(m\) are bound variables, not exported
  helper parameters. Local unit IDs and paper-ready labels are audit and
  reference handles, not mathematical objects.
- New constants, radii, thresholds, rates, or margins: None. \(N,R\) and the
  exhaustion threshold \(1/m\) are setting-defined. The accepted dependency's
  proof-local margin \(\rho\) is restated only to identify pivot provenance;
  it is not imported into this step's conclusion or rate.
- Assumption provenance: Borel speeds are proved in
  Lemma~\ref{lem:step-002-borel-speeds}; Borel cells and nonzero selected
  denominators are proved in
  Proposition~\ref{prop:step-002-borel-selector}; finite-level entry is
  proved in Lemma~\ref{lem:step-002-finite-exhaustion}; and exact graph and
  velocity control are proved in
  Proposition~\ref{prop:step-002-exact-chart}. Pivot availability and
  fixed-family finiteness are derived outputs of the accepted dependency.
  No generated event, local-validity condition, recurrence, stability,
  boundedness, or invariant is assumed as primitive.
- Boundary and degeneracy audit: Empty \(K_R\) produces the empty selector,
  empty cells, empty exhaustion, and vacuous charts with
  \(\Gamma_{\rm piv}=0\). Least-index strict/weak comparisons resolve every
  tie. Extended value \(+\infty\) excludes a selected coordinate zero;
  unselected zeros are harmless. Every positive selected denominator enters
  a finite level. For \(N=1\), the selector and beta-free chart reduce
  exactly as displayed. Relative continuity and the setting's \(C^1\)
  convention include endpoints.
- Diagnostic boundary: `global_proof.md` was read only after its paired
  `global_proof_review.md` was verified current and `ACCEPTED`. Its sole
  step-relevant planning suggestion used here was the decomposition into
  extended-speed measurability, least-index cells, exhaustion, and exact
  quotient differentiation. Every statement above was independently proved
  from `setting.md`, the accepted `step_002` row, and the accepted `step_001`
  dependency. The diagnostic was not used as proof evidence, a cited result,
  an assumption source, or authority to change the target claim.
- Freshness boundary: the stale attempt-1 `step_002` proof/review and all
  `proof_history/` contents were neither used nor cited. This artifact is a
  fresh derivation for sketch attempt 2, `step_002`, unit attempt 1.
- Progress boundary: The result is a fixed-family measurable chart interface.
  It neither asserts nor implies a polynomial general-instance bound on
  \(\Gamma_{\rm piv}\) in
  \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or any other Pfaffian-format
  data. The accepted `material_partial` boundary is unchanged.
