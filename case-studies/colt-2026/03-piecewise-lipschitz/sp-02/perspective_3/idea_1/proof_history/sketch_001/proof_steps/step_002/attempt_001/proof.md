# Proof Step

## Step Identity

- Sketch attempt: 1
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
  - `assump:shared-pfaffian-chain`: only the stated consequence that
    \(b,F_1,\ldots,F_N\) are \(C^1\) on the compact interval \(\Theta\) is
    used directly in this step.
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_001` proof and review supply compactness, hence Borel
    measurability, of \(K_R\).
  - On the branch \(K_R\ne\varnothing\), the accepted dependency supplies a
    nonzero available coordinate at every \(\theta\in K_R\), a finite value
    of \(\min_k V_k(\theta)\), and
    \(\Gamma_{\rm piv}(b,F;R)<\infty\). On the empty branch it supplies
    \(\Gamma_{\rm piv}=0\).
- Local conditional hypotheses:
  - Membership \(\theta\in E_j\) and the cube restriction
    \(\beta\in[-R,R]^{N-1}\) occur only as quantified antecedents in the
    chart proposition.
  - The split into \(K_R=\varnothing\) and
    \(K_R\ne\varnothing\) is a local case split, not an added theorem-facing
    assumption.

The primitive conditions `assump:no-forced-root` and
`assump:joint-density-cap` are not invoked directly. The former has already
been used inside the accepted dependency to derive pivot availability; the
latter is irrelevant to this deterministic step. No generated event,
stability condition, or local-validity condition is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:shared-pfaffian-chain}, each extended \(V_j:\Theta\to[0,+\infty]\) is Borel, and every pairwise strict or weak comparison set between the \(V_j\)'s is Borel. | Supplies the measurable finite-family comparisons needed for least-index tie handling. |
| `unit_002` | proposition | Under Assumption~\ref{assump:shared-pfaffian-chain} and the accepted compactness, pivot-availability, and finite-conditioning conclusions of Lemma~\ref{lem:step-001-root-feasible}, Lemma~\ref{lem:step-001-pivot-margin}, and Proposition~\ref{prop:step-001-fixed-family-bound}, the least minimizer \(j_*\) is Borel, its cells \((E_j)_{j=1}^N\) form a disjoint Borel partition of \(K_R\), and on \(E_j\), \(F_j\ne0\) and \(V_j=\min_kV_k\le\Gamma_{\rm piv}\). | Resolves ties measurably, proves partition exactness, and certifies every selected denominator and velocity cap. |
| `unit_003` | lemma | Under Assumption~\ref{assump:shared-pfaffian-chain} and Proposition~\ref{prop:step-002-selector-partition}, for every \(j\), the Borel sets \(E_{j,m}=E_j\cap\{\lvert F_j\rvert\ge1/m\}\) increase to \(E_j\). | Gives the exact finite-denominator exhaustion without introducing a theorem tolerance. |
| `unit_004` | proposition | Under Assumption~\ref{assump:shared-pfaffian-chain} and Proposition~\ref{prop:step-002-selector-partition}, if \(\theta\in E_j\) and \(\beta\in[-R,R]^{N-1}\), then \(T_j\) is well-defined, inserts the unique original coefficient \(\alpha_j\) solving \(\phi_\alpha(\theta)=0\), and its material partial derivative satisfies \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\rm piv}\), including the empty-sum \(N=1\) branch. | Proves the zero-residual original-coordinate chart and exact Jacobian-speed interface. |

Atomic step = no. Extended-value measurability, selector and partition
exactness, finite-pivot exhaustion, and chart algebra/differentiation are
independent nontrivial obligations and are exposed separately.

## Cited Result Applications

No paper result or external theorem is used as proof evidence.

### Accepted dependency: finite pivot availability on the feasible set

- Source or name: accepted `step_001` artifact
  `perspective_3/idea_1/proof_steps/step_001/proof.md`, SHA-256
  `2a44be9fcaa15c23fdfcde0d473d4cd3019c264628c431a082c1d90f1bcb634a`,
  paired with its `ACCEPTED` review, SHA-256
  `c935a43af6c57c18a18af36c36ce74083a6ba91edbaf75fb9c83a6c04339e489`.
- Restated statement in current notation: Lemma~\ref{lem:step-001-root-feasible}
  proves that \(K_R\) is compact and that the empty branch has
  \(\Gamma_{\rm piv}=0\). On the nonempty branch,
  Lemma~\ref{lem:step-001-pivot-margin} proves that every
  \(\theta\in K_R\) has at least one nonzero coordinate, and
  Proposition~\ref{prop:step-001-fixed-family-bound} proves that at least one
  \(V_j(\theta)\) is finite and that
  \(\Gamma_{\rm piv}(b,F;R)<\infty\).
- Instantiated objects: exactly the present \(b,F,K_R,V_j\), and
  \(\Gamma_{\rm piv}(b,F;R)\); no dependency notation is transferred to a
  different family or metric.
- Required assumptions: Assumptions~\ref{assump:shared-pfaffian-chain} and
  \ref{assump:no-forced-root}, as discharged inside the accepted dependency.
- Conclusion used: \(K_R\) is Borel; a finite pivot value exists at every
  feasible point; any minimizing value is finite; and the defining supremum
  \(\Gamma_{\rm piv}\) is finite on the nonempty branch.
- Assumption discharge here: acceptance of the hash-matched dependency review
  certifies these derived conclusions. This step does not promote
  Assumption~\ref{assump:no-forced-root} to a new primitive use.

### Elementary Borel facts

- Source or name: elementary finite-family Borel calculus.
- Restated statement in current notation: a continuous real-valued function
  on an open subspace is Borel there; a function that is Borel on a Borel set
  and equals \(+\infty\) on its Borel complement is extended-real Borel; and
  if \(f,g\) are extended-real Borel, then \(\{f<g\}\) and \(\{f\le g\}\)
  are Borel. Finite intersections and finite unions of Borel sets are Borel.
  A map into the finite discrete space \(\{1,\ldots,N\}\) is Borel exactly
  when every singleton fiber is Borel.
- Instantiated objects: the open sets \(U_j=\{F_j\ne0\}\), the extended
  velocities \(V_j\), their comparison sets, the cells \(E_j\), and the
  selector \(j_*\).
- Assumption discharge: Assumption~\ref{assump:shared-pfaffian-chain} supplies
  the continuity needed on \(U_j\); the accepted dependency supplies that
  \(K_R\) is Borel. The comparison claim is also proved explicitly in
  Lemma~\ref{lem:step-002-borel-velocities} by a rational-level formula.
- Conclusion used: Borel measurability of every object named above.

### Quotient rule and material partial differentiation

- Source or name: one-dimensional quotient rule and linearity of a partial
  derivative with the other coordinates fixed.
- Restated statement in current notation: if \(g,h\) are \(C^1\) and
  \(h(\theta)\ne0\), then
  \[
  \left(\frac gh\right)'(\theta)
  =\frac{g'(\theta)h(\theta)-g(\theta)h'(\theta)}{h(\theta)^2}.
  \]
  If \(\beta\) is held fixed, then
  \[
  \partial_\theta\left[-\frac b{F_j}
  -\sum_{i\ne j}\beta_i\frac{F_i}{F_j}\right]
  =-\left(\frac b{F_j}\right)'
  -\sum_{i\ne j}\beta_i\left(\frac{F_i}{F_j}\right)'.
  \]
- Instantiated objects: \(h=F_j\),
  \(g\in\{b,F_i:i\ne j\}\), and the setting-defined chart \(T_j\).
- Assumption discharge: Assumption~\ref{assump:shared-pfaffian-chain} gives
  \(C^1\) regularity, while
  Proposition~\ref{prop:step-002-selector-partition} proves
  \(F_j(\theta)\ne0\) on every selected cell.
- Conclusion used: continuity of the finite quotient-derivative expression
  on \(U_j\) and the exact derivative formula in
  Proposition~\ref{prop:step-002-exact-chart}.

### Local result applications

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Lemma~\ref{lem:step-002-borel-velocities} | Under Assumption~\ref{assump:shared-pfaffian-chain}, all extended \(V_j\)'s and their strict and weak comparison sets are Borel. | Supplies all comparison measurability in Proposition~\ref{prop:step-002-selector-partition}. |
| Proposition~\ref{prop:step-002-selector-partition} | Under Assumption~\ref{assump:shared-pfaffian-chain} and the accepted `step_001` interface, \(j_*\) is Borel, the \(E_j\)'s are a disjoint Borel partition, and a selected pivot is nonzero with \(V_j\le\Gamma_{\rm piv}\). | Supplies the selected-denominator facts to Lemma~\ref{lem:step-002-chart-exhaustion} and Proposition~\ref{prop:step-002-exact-chart}. |
| Lemma~\ref{lem:step-002-chart-exhaustion} | Under Assumption~\ref{assump:shared-pfaffian-chain} and Proposition~\ref{prop:step-002-selector-partition}, \(E_{j,m}\) is Borel and \(E_{j,m}\uparrow E_j\). | Supplies the exact exhaustion clause to the target-step assembly. |
| Proposition~\ref{prop:step-002-exact-chart} | Under Assumption~\ref{assump:shared-pfaffian-chain} and Proposition~\ref{prop:step-002-selector-partition}, every selected chart solves the original equation uniquely and obeys the exact material-derivative cap, including \(N=1\). | Supplies the graph and Jacobian clauses to the target-step assembly. |

## Local Derivation

### unit_001: lemma

**Lemma (Borel extended pivot velocities).**
\(\label{lem:step-002-borel-velocities}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain}, for each
\(j\in\{1,\ldots,N\}\), the setting-defined extension
\(V_j:\Theta\to[0,+\infty]\), equal to
\[
\left|\left(\frac b{F_j}\right)'\right|
+R\sum_{i\ne j}\left|\left(\frac{F_i}{F_j}\right)'\right|
\quad\text{on }U_j=\{F_j\ne0\}
\]
and equal to \(+\infty\) on \(\Theta\setminus U_j\), is Borel. Moreover,
for all \(j,k\), the sets \(\{V_j<V_k\}\) and \(\{V_j\le V_k\}\) are
Borel subsets of \(\Theta\).

Proof / justification:
Assumption~\ref{assump:shared-pfaffian-chain} makes \(F_j\) continuous, so
\(U_j\) is open in \(\Theta\). Because the compact interval \(\Theta\) is a
Borel subset of \(\mathbb R\), every relative Borel subset of \(\Theta\)
used below is also Borel in \(\mathbb R\). For \(g=b\), and separately for every
\(g=F_i\) with \(i\ne j\), the quotient rule gives on \(U_j\)
\[
\left(\frac g{F_j}\right)'
=\frac{g'F_j-gF_j'}{F_j^2}.
\]
The numerator and denominator are continuous there and the denominator does
not vanish. Thus every displayed quotient derivative is continuous on
\(U_j\), and so is their finite absolute-value sum defining \(V_j\) there.

For each finite \(a\in\mathbb R\),
\[
\{\theta\in\Theta:V_j(\theta)<a\}
=U_j\cap
\left\{\theta\in U_j:
\left|\left(\frac b{F_j}\right)'(\theta)\right|
+R\sum_{i\ne j}
\left|\left(\frac{F_i}{F_j}\right)'(\theta)\right|<a
\right\}.
\]
The set on the right is Borel in \(\Theta\): its second factor is open in
the subspace \(U_j\), and \(U_j\) itself is open. Also
\(\{V_j=+\infty\}=\Theta\setminus U_j\) is closed. Hence \(V_j\) is Borel
as an extended-real map.

For extended-real Borel functions, strict comparison can be checked at a
rational level. Here, explicitly,
\[
\{V_j<V_k\}
=\bigcup_{r\in\mathbb Q}
\bigl(\{V_j<r\}\cap\{V_k>r\}\bigr).
\]
If \(V_j(\theta)<V_k(\theta)\), then \(V_j(\theta)\) is finite and density
of \(\mathbb Q\) supplies such a finite \(r\), including when
\(V_k(\theta)=+\infty\); the reverse implication is immediate. Every set in
the countable union is Borel. Finally,
\[
\{V_j\le V_k\}=\Theta\setminus\{V_k<V_j\}
\]
is Borel as well.

### unit_002: proposition

**Proposition (Measurable least-pivot partition).**
\(\label{prop:step-002-selector-partition}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain}, the accepted conclusions
of Lemma~\ref{lem:step-001-root-feasible},
Lemma~\ref{lem:step-001-pivot-margin}, and
Proposition~\ref{prop:step-001-fixed-family-bound}, and
Lemma~\ref{lem:step-002-borel-velocities}, define for every
\(\theta\in K_R\)
\[
j_*(\theta)=\min\operatorname*{argmin}_{1\le k\le N}V_k(\theta),
\qquad
E_j=\{\theta\in K_R:j_*(\theta)=j\}.
\]
Then \(j_*:K_R\to\{1,\ldots,N\}\), with the discrete codomain, is Borel,
and \((E_j)_{j=1}^N\) is a disjoint Borel partition of \(K_R\). Moreover,
for every \(\theta\in E_j\),
\[
F_j(\theta)\ne0,
\qquad
V_j(\theta)=\min_{1\le k\le N}V_k(\theta)
\le\Gamma_{\rm piv}(b,F;R)<\infty.
\]
When \(K_R=\varnothing\), the selector is the empty map, all cells are
empty, and the same conclusions hold vacuously.

Proof / justification:
First suppose \(K_R\ne\varnothing\). The accepted `step_001` interface
ensures that, at each \(\theta\in K_R\), at least one \(V_k(\theta)\) is
finite. A finite family of extended-real values therefore has a finite
minimum and a unique least index attaining it. Thus \(j_*\) is well-defined.

The least-index rule has the exact cell representation
\[
E_j
=K_R
\cap\bigcap_{k<j}\{V_j<V_k\}
\cap\bigcap_{k>j}\{V_j\le V_k\}.
\tag{1}
\]
Indeed, a minimizing index \(j\) is the least minimizer exactly when its
value is strictly below every earlier-index value and no larger than every
later-index value. By the accepted compactness conclusion, \(K_R\) is Borel,
and Lemma~\ref{lem:step-002-borel-velocities} makes every comparison set in
(1) Borel. Hence each \(E_j\) is Borel. The unique least minimizer puts every
point of \(K_R\) in exactly one cell, so these cells are pairwise disjoint and
their union is \(K_R\). Since
\(j_*^{-1}(\{j\})=E_j\) for every singleton in the finite discrete codomain,
the selector is Borel.

If \(\theta\in E_j\), then \(V_j(\theta)\) equals the finite minimum. By the
definition of the extension, \(F_j(\theta)=0\) would instead force
\(V_j(\theta)=+\infty\), a contradiction. Hence the selected pivot is
nonzero. By the definition of \(\Gamma_{\rm piv}\) on nonempty \(K_R\),
\[
V_j(\theta)=\min_kV_k(\theta)
\le\sup_{\vartheta\in K_R}\min_kV_k(\vartheta)
=\Gamma_{\rm piv}(b,F;R).
\]
Its finiteness is the accepted conclusion of
Proposition~\ref{prop:step-001-fixed-family-bound}.

If \(K_R=\varnothing\), the unique map from the empty domain into the finite
discrete codomain is Borel, every displayed cell is empty, and the partition
and pointwise statements are vacuous. For \(N=1\), both intersections in
(1) are empty intersections, so \(E_1=K_R\); the argument above still proves
that \(F_1\ne0\) throughout a nonempty \(K_R\).

### unit_003: lemma

**Lemma (Finite-pivot chart exhaustion).**
\(\label{lem:step-002-chart-exhaustion}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain} and
Proposition~\ref{prop:step-002-selector-partition}, for every
\(j\in\{1,\ldots,N\}\) and every integer \(m\ge1\),
\[
E_{j,m}=E_j\cap\{\theta\in\Theta:\lvert F_j(\theta)\rvert\ge1/m\}
\]
is Borel, \(E_{j,m}\subseteq E_{j,m+1}\), and
\[
\bigcup_{m=1}^{\infty}E_{j,m}=E_j.
\]

Proof / justification:
The cell \(E_j\) is Borel by
Proposition~\ref{prop:step-002-selector-partition}. Continuity of \(F_j\)
under Assumption~\ref{assump:shared-pfaffian-chain} makes
\(\{\lvert F_j\rvert\ge1/m\}\) closed in \(\Theta\), so \(E_{j,m}\) is
Borel. Since \(1/(m+1)\le1/m\),
\[
\{\lvert F_j\rvert\ge1/m\}
\subseteq\{\lvert F_j\rvert\ge1/(m+1)\},
\]
which proves monotonicity.

Every \(E_{j,m}\) is contained in \(E_j\). Conversely, if
\(\theta\in E_j\), Proposition~\ref{prop:step-002-selector-partition}
gives \(\lvert F_j(\theta)\rvert>0\). Choose an integer
\(m\ge\max\{1,\lvert F_j(\theta)\rvert^{-1}\}\). Then
\(1/m\le\lvert F_j(\theta)\rvert\), so
\(\theta\in E_{j,m}\). This proves the union identity, including the cases
of arbitrarily small selected pivots and empty cells.

### unit_004: proposition

**Proposition (Exact affine pivot chart and material velocity).**
\(\label{prop:step-002-exact-chart}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain} and
Proposition~\ref{prop:step-002-selector-partition}, fix
\(j\in\{1,\ldots,N\}\), \(\theta\in E_j\), and
\(\beta=(\beta_i)_{i\ne j}\in[-R,R]^{N-1}\). Then
\[
T_j(\theta,\beta)
=-\frac{b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)}{F_j(\theta)}
\]
is well-defined. It is the unique value of the original coefficient
\(\alpha_j\) for which the original vector with
\(\alpha_{-j}=\beta\) satisfies \(\phi_\alpha(\theta)=0\). The chart is the
restriction of a \(C^1\), hence Borel, function on
\(U_j\times\mathbb R^{N-1}\), and its material partial derivative, with
\(\beta\) fixed, obeys the exact identity and bound
\[
\partial_\theta T_j(\theta,\beta)
=-\left(\frac b{F_j}\right)'(\theta)
-\sum_{i\ne j}\beta_i
 \left(\frac{F_i}{F_j}\right)'(\theta),
\tag{2}
\]
\[
\left|\partial_\theta T_j(\theta,\beta)\right|
\le V_j(\theta)\le\Gamma_{\rm piv}(b,F;R).
\tag{3}
\]
For \(N=1\), \(\beta\) is the unique empty tuple, both sums are empty, and
the same statement reads
\(T_1=-b/F_1\) and
\(\lvert\partial_\theta T_1\rvert=V_1\le\Gamma_{\rm piv}\).

Proof / justification:
Proposition~\ref{prop:step-002-selector-partition} gives
\(F_j(\theta)\ne0\), so the quotient defining \(T_j\) is well-defined. If
\(\alpha_{-j}=\beta\) and \(\alpha_j=T_j(\theta,\beta)\), then in the
original coefficient coordinates
\[
\begin{aligned}
\phi_\alpha(\theta)
&=b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)
  +T_j(\theta,\beta)F_j(\theta)\\
&=b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)
  -\left(b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)\right)\\
&=0.
\end{aligned}
\tag{4}
\]
Conversely, if \(\phi_\alpha(\theta)=0\) and
\(\alpha_{-j}=\beta\), division by the same nonzero \(F_j(\theta)\) gives
\(\alpha_j=T_j(\theta,\beta)\). Thus (4) is an exact same-object identity,
not an approximate or transformed root equation, and uniqueness follows from
the nonzero coefficient of \(\alpha_j\).

On \(U_j\times\mathbb R^{N-1}\), rewrite the same function as
\[
T_j(\theta,\beta)
=-\frac{b(\theta)}{F_j(\theta)}
-\sum_{i\ne j}\beta_i\frac{F_i(\theta)}{F_j(\theta)}.
\]
All ratios are \(C^1\) there. Holding the material coordinate \(\beta\)
fixed and differentiating the exact quotient expression gives (2), with no
derivative of \(\beta\). The triangle inequality and the cube restriction
\(\lvert\beta_i\rvert\le R\) give
\[
\begin{aligned}
\left|\partial_\theta T_j(\theta,\beta)\right|
&\le
\left|\left(\frac b{F_j}\right)'(\theta)\right|
+\sum_{i\ne j}\lvert\beta_i\rvert
 \left|\left(\frac{F_i}{F_j}\right)'(\theta)\right|\\
&\le
\left|\left(\frac b{F_j}\right)'(\theta)\right|
+R\sum_{i\ne j}
 \left|\left(\frac{F_i}{F_j}\right)'(\theta)\right|\\
&=V_j(\theta).
\end{aligned}
\]
The final inequality in (3) is exactly the selected-cell conclusion of
Proposition~\ref{prop:step-002-selector-partition}.

When \(N=1\), the remaining-coordinate space is \(\mathbb R^0\), the cube
\([-R,R]^0\) consists of the empty tuple and has the setting-prescribed
zero-dimensional Lebesgue volume one, and every sum over \(i\ne1\) is zero.
Therefore the same algebra gives
\(T_1=-b/F_1\), equation (4), and
\[
\left|\partial_\theta T_1\right|
=\left|\left(\frac b{F_1}\right)'\right|=V_1
\le\Gamma_{\rm piv}.
\]
No positive-dimensional beta coordinate or globally prescribed pivot is used
in any part of the proof.

## Target-Step Assembly

Lemma~\ref{lem:step-002-borel-velocities} proves that every extended
\(V_j\) and every comparison needed for finite minimization is Borel.
Proposition~\ref{prop:step-002-selector-partition} applies the accepted
`step_001` pivot-availability interface to make the minimum finite at each
point of \(K_R\), implements least-index ties by the strict/weak formula
(1), and proves that \(j_*\) is Borel and that the \(E_j\)'s form a disjoint
Borel partition. It also proves, without selecting one coordinate globally,
that a coordinate selected on \(E_j\) has \(F_j\ne0\) and
\(V_j=\min_kV_k\le\Gamma_{\rm piv}\).

Lemma~\ref{lem:step-002-chart-exhaustion} then proves the literal nested
identity \(E_{j,m}\uparrow E_j\); the index \(m\) only exposes finite
denominators and does not alter the target rate. Finally,
Proposition~\ref{prop:step-002-exact-chart} proves that \(T_j\) inserts the
unique original coefficient solving the original affine root equation, with
zero residual, and obtains the exact material-partial identity (2). The cube
bound yields the exact \(R\)-weighted inequality
\[
\lvert\partial_\theta T_j\rvert
\le V_j\le\Gamma_{\rm piv}.
\]
Its empty-tuple calculation closes \(N=1\). The empty \(K_R\) branch is
vacuous and has empty cells. These named results jointly establish every
clause of the exact `step_002` row and export only the measurable chart and
Jacobian interface consumed by `step_003`.

## Explicit Rate Audit

- Exposed variables: \(N\), \(R\), the setting-defined
  \(V_j(\theta)\), \(\Gamma_{\rm piv}(b,F;R)\), and the material coordinate
  \(\beta\) subject to \(\lvert\beta_i\rvert\le R\). The exported
  quantitative interface is exactly
  \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\rm piv}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\),
  the fixed deterministic family, \(N\), \(R\), the selected index, a pivot
  margin, the exhaustion level \(m\), or an unrecorded Pfaffian scale.
- Fixed quantities: The deterministic family \((b,F)\), its exact Pfaffian
  presentation, compact \(\Theta\), \(N\), and \(R\) are fixed. The selector
  and cells are then determined before any coefficient is sampled.
- Probability mode: Deterministic. No law, event probability, expectation,
  confidence level, or conditioning event is used.
- Horizon mode: Static and pointwise on \(K_R\), with a nested set exhaustion
  in \(m\); there is no time horizon, asymptotic claim, or stopping rule.
- Norm mode: Scalar absolute value for chart velocity and coordinatewise cube
  bounds \(\lvert\beta_i\rvert\le R\). The \(\ell_1\) feasibility norm used
  to define \(K_R\) remains unchanged in the accepted dependency.
- Admissibility conditions and auxiliary tolerances: \(N\ge1\), \(R>0\),
  Assumption~\ref{assump:shared-pfaffian-chain}, and the accepted `step_001`
  derived pivot interface. The threshold \(1/m\) is only a monotone
  exhaustion device and is not a theorem-facing tolerance.
- Term absorption or simplification inequalities: No term is dropped or
  absorbed. The only comparison is the displayed exact triangle inequality
  \[
  \left|\left(\frac b{F_j}\right)'
  +\sum_{i\ne j}\beta_i\left(\frac{F_i}{F_j}\right)'\right|
  \le
  \left|\left(\frac b{F_j}\right)'\right|
  +R\sum_{i\ne j}\left|\left(\frac{F_i}{F_j}\right)'\right|.
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: The disjoint selector
  exports one pointwise speed \(V_j\), not a sum over all \(N\) chart speeds.
  This is the exact interface from which `step_003` can obtain the literal
  factor \((2R)^{N-1}\) without an \(N\)-fold chart loss.
- Baseline-reduction check, if applicable: No monic specialization is proved
  in this step. The construction preserves the original coefficient vector
  exactly and permits different pivots on different cells, so it leaves the
  exact monic recovery assigned to `step_006` unchanged. In the boundary
  specialization \(N=1\), it reduces exactly to
  \(T_1=-b/F_1\) and
  \(\lvert\partial_\theta T_1\rvert=V_1\), with no loss.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined public-facing objects: \(V_j\) and
  \(\Gamma_{\rm piv}(b,F;R)\) retain exactly their definitions from
  `setting.md`. No alternative conditioning functional is introduced.
- Setting-defined appendix-local objects: \(U_j\), \(j_*\), \(E_j\),
  \(E_{j,m}\), \(\beta=\alpha_{-j}\), and \(T_j\) are the accepted chart
  interface consumed by `step_003`; they need not enlarge the public main
  theorem statement.
- New helper objects: None. Formula (1) is an explicit description of the
  setting-defined cell \(E_j\), not a new cell, and (2)--(4) are proof
  identities rather than named helper quantities.
- Constant provenance: \(N\) and \(R\) are basic setting quantities;
  \(\Gamma_{\rm piv}\) is setting-defined and proved finite by the accepted
  dependency. The integer \(m\ge1\) indexes an exhaustion and supplies no
  rate constant, margin, or auxiliary tolerance. No other constant, radius,
  threshold, or bounded quantity is introduced.
- Assumption provenance: Borel measurability of \(V_j\) is proved in
  Lemma~\ref{lem:step-002-borel-velocities}; the Borel selector, partition,
  selected-pivot nonvanishing, and selected speed cap are proved in
  Proposition~\ref{prop:step-002-selector-partition}; exhaustion is proved in
  Lemma~\ref{lem:step-002-chart-exhaustion}; and exact chart validity and
  velocity control are proved in
  Proposition~\ref{prop:step-002-exact-chart}. The only inherited derived
  facts are the exact accepted `step_001` conclusions restated above.
- Tie and pivot scope: Ties are resolved by strict comparisons against lower
  indices and weak comparisons against higher indices. The selected index may
  vary with \(\theta\); neither the proof nor its output assumes one globally
  nonzero coordinate. Zeros of unselected coordinates are harmless.
- Material-partial boundary: \(\partial_\theta T_j\) always means the
  material partial derivative with \(\beta\) fixed. The proof differentiates
  the exact quotient and does not add a derivative of a sampled or varying
  coefficient.
- Diagnostic boundary: `global_proof.md` was read only after its paired
  `global_proof_review.md` was hash-verified and found `ACCEPTED`. Its
  step-relevant planning suggestion was the decomposition into extended-value
  measurability, least-index cells and exhaustion, and exact quotient-chart
  differentiation. Every statement above was independently derived from
  `setting.md`, the accepted `step_002` row, and the accepted `step_001`
  dependency. The diagnostic was not used as evidence, a cited result, an
  assumption source, or authority to change the target claim.
- Progress boundary: This is a fixed-family chart certificate within the
  accepted `material_partial` theorem. It neither claims nor implies a
  polynomial bound on \(\Gamma_{\rm piv}\), a selected-pivot margin, or any
  other conditioning quantity from
  \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or general Pfaffian-format
  data.
