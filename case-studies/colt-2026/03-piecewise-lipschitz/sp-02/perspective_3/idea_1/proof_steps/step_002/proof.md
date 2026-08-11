# Proof Step

## Step Identity

- Sketch attempt: 3
- Step ID: step_002
- Unit attempt: 1
- Binding idea.md SHA-256:
  5743443042dfc9c20be52d5e563ebc263b0a4a3454c7eb30034c2b811123e836
- Binding setting.md SHA-256:
  91119d2600ee2f787eb873796569ab53e35201e499bf81658d8a0bc1a8e7c79e
- Accepted proof_sketch.md SHA-256:
  32023800de7b27eca85577e615139a5658106b35406627061879396bb35bf906
- Accepted proof_sketch_review.md SHA-256:
  3b626916a9e03b7539ee88961ad973ee2bbe2d6c3649a5bac51e8028cac5335e
- Accepted diagnostic global_proof.md SHA-256:
  80b090266336b304ff4ca0184709b45eff448c3f1758efdaa09d923c8dbfaee8
- Accepted diagnostic global_proof_review.md SHA-256:
  24ad84083a200f89cc8c7973ee168783bca0c81c3432ac73e24f50e4606184dd
- Accepted dependency step_001 proof SHA-256:
  6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838
- Accepted dependency step_001 review SHA-256:
  c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0

## Target Step Claim

- Intended claim: Prove the extended \(V_j\) and least-minimizer selector are
  Borel, \((E_j)_j\) is a disjoint Borel partition of \(K_R\),
  \(E_{j,m}\uparrow E_j\), and on each selected chart \(T_j\) solves the root
  equation exactly with
  \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\rm piv}\).
- Depends on: step_001.
- Assumptions used: Primitive assump:shared-pfaffian-chain; derived pivot
  availability from step_001.
- Technical challenge: Measurable tie handling and exact velocity control
  without a single global pivot or an \(N\)-fold union bound.
- Intended proof tool or cited result: Finite Borel minimization and direct
  quotient differentiation.
- Output target: Measurable chart and Jacobian interface.
- Rate objective: R1: exact \(R\)-weighted velocity inequality with no
  auxiliary tolerance in the theorem rate.
- Row-local review status in the accepted sketch: PENDING.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic setting fixes \(N\ge1\), \(R>0\), a compact interval
    \(\Theta\), the functions \(b,F_1,\ldots,F_N\), and the definitions of
    \(U_j,V_j,\Gamma_{\rm piv},j_*,E_j,E_{j,m}\), and \(T_j\).
  - Assumption~\ref{assump:shared-pfaffian-chain}: only its conclusion that
    \(b,F_1,\ldots,F_N\) are \(C^1\) on \(\Theta\) is used. The Pfaffian
    degree descriptors are not used quantitatively.
- Derived invariants supplied by accepted dependencies:
  - The accepted step_001 proof and review identified above establish that
    \(K_R\) is compact, hence Borel.
  - If \(K_R=\varnothing\), the accepted dependency gives
    \(\Gamma_{\rm piv}=0\).
  - If \(K_R\ne\varnothing\), it establishes \(F(\theta)\ne0\) for every
    \(\theta\in K_R\), pointwise availability of a nonzero pivot whose
    ordinary \(V_j(\theta)\) is finite, and
    \[
    \min_{1\le j\le N}V_j(\theta)
    \le\Gamma_{\rm piv}(b,F;R)<\infty
    \qquad(\theta\in K_R).
    \]
    This is fixed-family finiteness only.
- Local conditional hypotheses:
  - A statement about a selected chart quantifies a fixed
    \(j\in\{1,\ldots,N\}\), a point \(\theta\in E_j\), and
    \(\beta=(\beta_i)_{i\ne j}\in[-R,R]^{N-1}\). These are local
    antecedents, not extra theorem assumptions.
  - The branch \(K_R\ne\varnothing\) is invoked only when a selected point
    exists. The empty branch is handled explicitly.

Assumption~\ref{assump:no-forced-root} is not independently invoked in this
step; its relevant consequence arrives through the accepted step_001
dependency. Assumption~\ref{assump:joint-density-cap}, independence,
transversality, a prescribed global pivot, a generated event, and an
auxiliary tolerance are neither allowed nor used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\ref{assump:shared-pfaffian-chain} and the accepted step_001 compactness, pivot-availability, and fixed-family-finiteness conclusions, every extension \(V_j:\Theta\to[0,+\infty]\) is Borel, and its finite pointwise minimum on \(K_R\) is bounded by \(\Gamma_{\rm piv}\). | Produces the extended-real Borel data and a finite minimizing value at every feasible point. |
| unit_002 | proposition | Under Lemma~\ref{lem:step-002-extended-speed-measurability} and the accepted Borelness of \(K_R\), the deterministic least-index minimizer \(j_*\) is Borel, its fibers \(E_1,\ldots,E_N\) are a pairwise disjoint Borel cover of \(K_R\), and every selected pivot is nonzero. | Resolves all ties measurably and supplies the selected chart domains. |
| unit_003 | lemma | Under Assumption~\ref{assump:shared-pfaffian-chain} and Proposition~\ref{prop:step-002-lexicographic-pivot-partition}, for every \(j\) the sets \(E_{j,m}=E_j\cap\{\lvert F_j\rvert\ge1/m\}\) are Borel, increase in \(m\), and have union exactly \(E_j\). | Gives an exact finite denominator exhaustion with no discarded boundary or tolerance. |
| unit_004 | proposition | Under Assumption~\ref{assump:shared-pfaffian-chain} and Proposition~\ref{prop:step-002-lexicographic-pivot-partition}, if \(\theta\in E_j\) and \(\beta\in[-R,R]^{N-1}\), then \(T_j\) is jointly Borel on the selected chart and inserting it in the original \(j\)-th coefficient coordinate solves the original root equation with residual zero. | Supplies the measurable same-object chart and exact root reconstruction. |
| unit_005 | proposition | Under Assumption~\ref{assump:shared-pfaffian-chain}, the accepted step_001 fixed-family-finiteness conclusion, and Propositions~\ref{prop:step-002-lexicographic-pivot-partition} and \ref{prop:step-002-exact-original-root-chart}, if \(j\in\{1,\ldots,N\}\), \(\theta\in E_j\), and \(\beta\in[-R,R]^{N-1}\), then the chart satisfies the exact quotient derivative identity and \(\lvert\partial_\theta T_j\rvert\le V_j=\min_iV_i\le\Gamma_{\rm piv}\). | Supplies the literal \(R\)-weighted velocity bound without an \(N\)-fold loss. |

Atomic step = no. Extended-valued measurability, deterministic finite
selection, denominator exhaustion, exact same-coordinate reconstruction, and
the chart-velocity calculation are separate nontrivial obligations.

## Cited Result Applications

No paper result or external citation is used. The accepted dependency,
standard facts, and local results used later are restated here in the current
notation.

### Accepted dependency: step_001

- Source identity: accepted proof SHA-256
  6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838,
  certified by accepted review SHA-256
  c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0.
- Restated statement in current notation:
  Lemma~\ref{lem:step-001-supported-root-compactness} proves that \(K_R\) is
  compact and that the empty branch has \(\Gamma_{\rm piv}=0\).
  Lemma~\ref{lem:step-001-positive-available-pivot} proves, on nonempty
  \(K_R\), that \(F\ne0\) pointwise and at least one nonzero coordinate is
  available. Proposition~\ref{prop:step-001-fixed-family-pivot-bound} proves
  that at each \(\theta\in K_R\) at least one ordinary pivot speed is finite,
  that the finite minimum is attained, and that
  \[
  \min_jV_j(\theta)\le\Gamma_{\rm piv}(b,F;R)<\infty.
  \]
- Instantiated objects: exactly the present \(b,F,\Theta,N,R,K_R,V_j\), and
  \(\Gamma_{\rm piv}\).
- Required assumptions and discharge: the dependency used
  Assumptions~\ref{assump:shared-pfaffian-chain} and
  \ref{assump:no-forced-root}; its matching review accepted those
  derivations. This step consumes the conclusions as derived dependency
  outputs and independently uses only
  Assumption~\ref{assump:shared-pfaffian-chain}.
- Conclusion used: Borel \(K_R\), finite pivot availability at every
  nonempty feasible point, nonzero selected denominators, and strict
  fixed-family finiteness of \(\Gamma_{\rm piv}\).
- Nonoutputs: the dependency gives no Borel selector, no chart equation, no
  chart derivative, no probability statement, and no polynomial bound in
  Pfaffian-format descriptors.

### Extended-real Borel comparison

- Source or name: elementary Borel calculus on \([0,+\infty]\).
- Restated statement: if \(f,g:X\to[0,+\infty]\) are Borel, then
  \(\{f<g\}\) and \(\{f\le g\}\) are Borel. Indeed,
  \[
  \{f<g\}
  =
  \bigcup_{r\in\mathbb Q}
  \bigl(\{f<r\}\cap\{g>r\}\bigr),
  \qquad
  \{f\le g\}=X\setminus\{g<f\}.
  \]
  Rational separation remains valid when \(g=+\infty\).
- Required assumptions and discharge: Lemma~\ref{lem:step-002-extended-speed-measurability}
  proves the required extended-real Borelness; countability of
  \(\mathbb Q\) makes the displayed union Borel.
- Conclusion used: the strict and weak comparisons in the explicit
  least-index cell formula are Borel.

### Finite-discrete measurability

- Source or name: inverse-image criterion for a finite discrete codomain.
- Restated statement: a map \(h:X\to\{1,\ldots,N\}\) is Borel if every
  singleton fiber \(h^{-1}(\{j\})\) is Borel, because the inverse image of
  any subset of the finite target is a finite union of those fibers.
- Required assumptions and discharge: Proposition~\ref{prop:step-002-lexicographic-pivot-partition}
  proves every fiber \(E_j\) Borel.
- Conclusion used: Borel measurability of \(j_*\).

### Finite integer exhaustion

- Source or name: the Archimedean property.
- Restated statement: for every real \(x>0\), there is a finite integer
  \(m\ge1\) such that \(1/m\le x\).
- Required assumptions and discharge: Proposition~\ref{prop:step-002-lexicographic-pivot-partition}
  proves \(\lvert F_j(\theta)\rvert>0\) whenever \(\theta\in E_j\).
- Conclusion used: every selected point belongs to a finite exhaustion
  level.

### Quotient differentiation and finite-sum triangle inequality

- Source or name: one-dimensional quotient rule, differentiation of a finite
  affine sum, and the triangle inequality.
- Restated statement: if \(g,h\) are \(C^1\) in the setting convention and
  \(h(\theta)\ne0\), then
  \[
  \left(\frac gh\right)'(\theta)
  =
  \frac{g'(\theta)h(\theta)-g(\theta)h'(\theta)}
       {h(\theta)^2}.
  \]
  For fixed scalars \(c_i\), differentiation commutes with a finite sum, and
  \(\lvert\sum_i c_ix_i\rvert\le\sum_i\lvert c_i\rvert\lvert x_i\rvert\).
- Required assumptions and discharge:
  Assumption~\ref{assump:shared-pfaffian-chain} supplies \(C^1\)
  regularity; Proposition~\ref{prop:step-002-lexicographic-pivot-partition}
  supplies \(F_j(\theta)\ne0\); cube membership supplies
  \(\lvert\beta_i\rvert\le R\).
- Conclusion used: the exact derivative identity and the term-by-term
  \(R\)-weighted upper bound in
  Proposition~\ref{prop:step-002-exact-r-weighted-velocity}.

The regenerated local results have these exact application interfaces.

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Lemma~\ref{lem:step-002-extended-speed-measurability} | Under primitive \(C^1\) regularity and the accepted step_001 interface, each extended \(V_j\) is Borel and the minimum on \(K_R\) is finite and at most \(\Gamma_{\rm piv}\). | Supplies Borel comparisons and a finite winner to Proposition~\ref{prop:step-002-lexicographic-pivot-partition}. |
| Proposition~\ref{prop:step-002-lexicographic-pivot-partition} | Under Lemma~\ref{lem:step-002-extended-speed-measurability} and accepted Borelness of \(K_R\), the least selector is Borel, its cells partition \(K_R\) disjointly, and selected pivots are nonzero. | Supplies cells to Lemma~\ref{lem:step-002-exact-denominator-exhaustion} and legal denominators to both chart propositions. |
| Lemma~\ref{lem:step-002-exact-denominator-exhaustion} | Under Assumption~\ref{assump:shared-pfaffian-chain} and Proposition~\ref{prop:step-002-lexicographic-pivot-partition}, \(E_{j,m}\) is an increasing Borel exhaustion of \(E_j\), with finite-level entry for every selected point. | Supplies the exact exhaustion clause in target-step assembly. |
| Proposition~\ref{prop:step-002-exact-original-root-chart} | Under Assumption~\ref{assump:shared-pfaffian-chain} and Proposition~\ref{prop:step-002-lexicographic-pivot-partition}, \(T_j\) is Borel and inserts into the original coefficient vector to give residual zero. | Supplies the exact graph clause and the chart expression differentiated in Proposition~\ref{prop:step-002-exact-r-weighted-velocity}. |
| Proposition~\ref{prop:step-002-exact-r-weighted-velocity} | Under Assumption~\ref{assump:shared-pfaffian-chain}, the accepted finite-conditioning interface, and Propositions~\ref{prop:step-002-lexicographic-pivot-partition} and \ref{prop:step-002-exact-original-root-chart}, the selected chart has the exact quotient derivative and satisfies \(\lvert\partial_\theta T_j\rvert\le V_j=\min_iV_i\le\Gamma_{\rm piv}\). | Supplies the exact velocity clause in target-step assembly and the downstream Jacobian integrand bound. |

## Local Derivation

### unit_001: lemma

**Lemma (Borel measurability of the extended pivot speeds).**
\(\label{lem:step-002-extended-speed-measurability}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain} and the compactness,
pivot-availability, and fixed-family-finiteness conclusions of accepted
Lemmas~\ref{lem:step-001-supported-root-compactness} and
\ref{lem:step-001-positive-available-pivot} and accepted
Proposition~\ref{prop:step-001-fixed-family-pivot-bound}, for every
\(j\in\{1,\ldots,N\}\) the setting extension
\[
V_j:\Theta\longrightarrow[0,+\infty]
\]
is Borel. Moreover, for every \(\theta\in K_R\),
\[
\min_{1\le i\le N}V_i(\theta)
\le\Gamma_{\rm piv}(b,F;R)<\infty
\]
whenever \(K_R\ne\varnothing\); when \(K_R=\varnothing\), this pointwise
assertion is vacuous and \(\Gamma_{\rm piv}=0\).

Proof / justification:
Fix \(j\). Assumption~\ref{assump:shared-pfaffian-chain} makes \(F_j\)
continuous, so
\[
U_j=\{\theta\in\Theta:F_j(\theta)\ne0\}
\]
is relatively open, hence Borel, in \(\Theta\). On \(U_j\), the quotient
rule gives
\[
\left(\frac b{F_j}\right)'
=\frac{b'F_j-bF_j'}{F_j^2},
\qquad
\left(\frac{F_i}{F_j}\right)'
=\frac{F_i'F_j-F_iF_j'}{F_j^2}
\quad(i\ne j).
\]
Every numerator factor is continuous, and the denominator is continuous and
nonzero on \(U_j\). Hence each displayed derivative is continuous on
\(U_j\), including in the relative topology at endpoints of \(\Theta\).
Therefore the finite-branch function
\[
W_j(\theta)
:=
\left|\left(\frac b{F_j}\right)'(\theta)\right|
+R\sum_{i\ne j}
\left|\left(\frac{F_i}{F_j}\right)'(\theta)\right|
\qquad(\theta\in U_j)
\]
is finite and continuous on \(U_j\).

The setting defines \(V_j=W_j\) on \(U_j\) and \(V_j=+\infty\) on
\(\Theta\setminus U_j\). For every finite real \(a\),
\[
\{\theta\in\Theta:V_j(\theta)<a\}
=
\{\theta\in U_j:W_j(\theta)<a\},
\]
which is Borel in \(\Theta\). Finite strict sublevel sets generate the Borel
sigma algebra of \([0,+\infty]\), so \(V_j\) is extended-real Borel. This
also proves the exact equivalence
\[
V_j(\theta)<+\infty
\quad\Longleftrightarrow\quad
F_j(\theta)\ne0.
\]

If \(K_R\ne\varnothing\), the accepted dependency supplies, at each
\(\theta\in K_R\), a nonzero coordinate with finite ordinary speed.
Consequently the finite list \(V_1(\theta),\ldots,V_N(\theta)\) contains a
finite entry and has a finite attained minimum. The accepted
Proposition~\ref{prop:step-001-fixed-family-pivot-bound}, together with the
definition of \(\Gamma_{\rm piv}\), gives
\[
\min_iV_i(\theta)\le\Gamma_{\rm piv}(b,F;R)<\infty.
\]
If \(K_R=\varnothing\), there is no \(\theta\) to check, and accepted
Lemma~\ref{lem:step-001-supported-root-compactness} gives the setting's
exact value \(\Gamma_{\rm piv}=0\). No continuity of the extended \(V_j\)
across a zero of \(F_j\) is claimed or needed.

### unit_002: proposition

**Proposition (Borel lexicographic pivot partition).**
\(\label{prop:step-002-lexicographic-pivot-partition}\)

Statement:
Under Lemma~\ref{lem:step-002-extended-speed-measurability} and the Borelness
of \(K_R\) supplied by accepted
Lemma~\ref{lem:step-001-supported-root-compactness}, define, for
\(\theta\in K_R\),
\[
j_*(\theta)
:=
\min\operatorname*{arg\,min}_{1\le i\le N}V_i(\theta).
\]
Then \(j_*:K_R\to\{1,\ldots,N\}\), with finite discrete codomain, is Borel.
Its fibers \(E_j=\{\theta\in K_R:j_*(\theta)=j\}\) satisfy
\[
E_j
=K_R\cap\{V_j<+\infty\}
\cap\bigcap_{i<j}\{V_j<V_i\}
\cap\bigcap_{i>j}\{V_j\le V_i\}.
\]
They are Borel, pairwise disjoint, and have union \(K_R\). On \(E_j\),
\[
V_j(\theta)=\min_iV_i(\theta)<+\infty
\quad\text{and}\quad F_j(\theta)\ne0.
\]
If \(K_R=\varnothing\), \(j_*\) is the unique empty map and every \(E_j\)
is empty, so the same conclusions hold.

Proof / justification:
By Lemma~\ref{lem:step-002-extended-speed-measurability}, every \(V_i\) is
Borel with values in \([0,+\infty]\). For any two such maps \(f,g\),
\[
\{f<g\}
=
\bigcup_{r\in\mathbb Q}
\bigl(\{f<r\}\cap\{g>r\}\bigr)
\]
is Borel. To verify equality, if \(f(\theta)<g(\theta)<+\infty\), choose a
rational strictly between them; if \(f(\theta)<g(\theta)=+\infty\), choose a
finite rational larger than \(f(\theta)\). The converse follows from
\(f(\theta)<r<g(\theta)\). Also
\(\{f\le g\}\) is the complement of \(\{g<f\}\). Thus every comparison in
the displayed formula for \(E_j\) is Borel. Since \(K_R\) and
\(\{V_j<+\infty\}\) are Borel, each \(E_j\) is Borel.

For each \(\theta\in K_R\), Lemma~\ref{lem:step-002-extended-speed-measurability}
gives a finite attained minimum of the finite list. Let \(j\) be the least
index attaining it. Then \(V_j<V_i\) for every \(i<j\) and
\(V_j\le V_i\) for every \(i>j\), so \(\theta\in E_j\). Conversely, a point
in the displayed \(E_j\) has \(V_j\) no larger than any later coordinate and
strictly smaller than every earlier coordinate, hence \(j\) is exactly the
least minimizer. This proves both coverage and uniqueness, so the cells are
pairwise disjoint.

The fiber of \(j_*\) over \(j\) is precisely \(E_j\). The inverse image of
an arbitrary subset of the finite discrete target is therefore a finite
union of Borel cells; hence \(j_*\) is Borel. Cell membership also gives
\(V_j=\min_iV_i<+\infty\), and the equivalence proved in
Lemma~\ref{lem:step-002-extended-speed-measurability} yields
\(F_j\ne0\). Thus a zero coordinate can never be selected against the finite
pivot supplied by step_001. Zeros in unselected coordinates are unrestricted.

If \(N=1\), both comparison intersections are empty,
\(E_1=K_R\), and the selector is constantly one on its domain. If \(K_R\)
is empty, every assertion is an assertion about empty fibers and the unique
empty map. These cases require no arbitrary tie convention beyond the same
least-index rule.

### unit_003: lemma

**Lemma (Exact finite exhaustion by nonzero selected denominators).**
\(\label{lem:step-002-exact-denominator-exhaustion}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain} and
Proposition~\ref{prop:step-002-lexicographic-pivot-partition}, for every
\(j\in\{1,\ldots,N\}\) and integer \(m\ge1\),
\[
E_{j,m}:=
E_j\cap\{\theta\in\Theta:\lvert F_j(\theta)\rvert\ge1/m\}
\]
is Borel,
\[
E_{j,m}\subseteq E_{j,m+1},
\qquad
\bigcup_{m=1}^{\infty}E_{j,m}=E_j.
\]
Equivalently, \(E_{j,m}\uparrow E_j\), and every selected point enters a
finite level.

Proof / justification:
Assumption~\ref{assump:shared-pfaffian-chain} makes \(F_j\) continuous, so
\(\{\lvert F_j\rvert\ge1/m\}\) is relatively closed in \(\Theta\) and is
Borel. Proposition~\ref{prop:step-002-lexicographic-pivot-partition} makes
\(E_j\) Borel, hence \(E_{j,m}\) is Borel.

Because \(1/(m+1)\le1/m\),
\[
\{\lvert F_j\rvert\ge1/m\}
\subseteq
\{\lvert F_j\rvert\ge1/(m+1)\},
\]
so the levels increase. Their union is contained in \(E_j\) by definition.
For the reverse inclusion, take \(\theta\in E_j\). The selector proposition
gives \(x:=\lvert F_j(\theta)\rvert>0\). By the Archimedean property, a
finite \(m\ge1\) satisfies \(1/m\le x\), and then
\(\theta\in E_{j,m}\). This proves exact equality of the union with \(E_j\).

Equality at \(\lvert F_j\rvert=1/m\) is retained by the weak threshold.
An arbitrarily small positive selected pivot may enter late but always enters
at a finite level. Empty cells, including every cell when
\(K_R=\varnothing\), satisfy the same identity. The number \(1/m\) is only
an exact localization threshold; it is not a theorem tolerance and leaves no
boundary remainder.

### unit_004: proposition

**Proposition (Exact Borel chart in the original coefficient coordinates).**
\(\label{prop:step-002-exact-original-root-chart}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain} and
Proposition~\ref{prop:step-002-lexicographic-pivot-partition}, fix
\(j\in\{1,\ldots,N\}\). Write
\(J_j=\{1,\ldots,N\}\setminus\{j\}\), identify
\(\mathbb R^{J_j}\) with \(\mathbb R^{N-1}\) in increasing coordinate
order, and let \(\beta=(\beta_i)_{i\in J_j}\). The function
\[
T_j(\theta,\beta)
=-\frac{b(\theta)+\sum_{i\in J_j}\beta_iF_i(\theta)}
        {F_j(\theta)}
\]
is well-defined and jointly Borel on
\(E_j\times[-R,R]^{J_j}\). For every point in that domain, define the
original coefficient vector
\[
\alpha^{(j)}_i(\theta,\beta)
=
\begin{cases}
T_j(\theta,\beta),&i=j,\\
\beta_i,&i\in J_j.
\end{cases}
\]
Then the original, unweighted root equation holds exactly:
\[
b(\theta)
+\left\langle\alpha^{(j)}(\theta,\beta),F(\theta)\right\rangle
=0.
\]
No assertion that \(T_j\in[-R,R]\) is part of this result.

Proof / justification:
Proposition~\ref{prop:step-002-lexicographic-pivot-partition} gives
\(E_j\subseteq U_j\), so \(F_j(\theta)\ne0\) at every selected point.
On the relatively open product
\(U_j\times\mathbb R^{J_j}\), write the same formula as
\[
-\frac{b(\theta)}{F_j(\theta)}
-\sum_{i\in J_j}\beta_i\frac{F_i(\theta)}{F_j(\theta)}.
\]
Every coefficient ratio is continuous on \(U_j\), and the expression is a
finite affine function of \(\beta\). It is therefore jointly continuous on
that product. Its restriction to the Borel subspace
\(E_j\times[-R,R]^{J_j}\) is jointly Borel and is exactly \(T_j\).

Substitution into the original coefficient coordinates gives
\[
\begin{aligned}
b(\theta)
+\left\langle\alpha^{(j)}(\theta,\beta),F(\theta)\right\rangle
&=
b(\theta)+T_j(\theta,\beta)F_j(\theta)
+\sum_{i\in J_j}\beta_iF_i(\theta)\\
&=
b(\theta)
-\left(b(\theta)+\sum_{i\in J_j}\beta_iF_i(\theta)\right)
+\sum_{i\in J_j}\beta_iF_i(\theta)\\
&=0.
\end{aligned}
\]
The residual is identically zero in the original coefficient vector; there
is no weighting, permutation of the mathematical coordinates, transformed
target, or auxiliary error.

Only \(F_j\) is a denominator. Thus a zero of any unselected \(F_i\) merely
makes its corresponding numerator value zero and does not invalidate the
chart. When \(N=1\), \(J_1=\varnothing\),
\([-R,R]^{J_1}=\mathbb R^0\) is a singleton, both sums are empty, and the
identity reduces to \(T_1=-b/F_1\) and \(b+T_1F_1=0\). If \(K_R\) is empty,
all chart domains are empty. The formula is valid at interval endpoints in
the setting's relative \(C^1\) convention.

### unit_005: proposition

**Proposition (Exact \(R\)-weighted selected-chart velocity).**
\(\label{prop:step-002-exact-r-weighted-velocity}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain}, the fixed-family
finiteness conclusion of accepted
Proposition~\ref{prop:step-001-fixed-family-pivot-bound}, and
Propositions~\ref{prop:step-002-lexicographic-pivot-partition} and
\ref{prop:step-002-exact-original-root-chart}, fix
\(j\in\{1,\ldots,N\}\), \(\theta\in E_j\), and
\(\beta\in[-R,R]^{J_j}\). For fixed \(\beta\), the chart expression is
\(C^1\) in \(\theta\) on \(U_j\) in the setting convention, and
\[
\partial_\theta T_j(\theta,\beta)
=-\left(\frac b{F_j}\right)'(\theta)
-\sum_{i\in J_j}\beta_i
 \left(\frac{F_i}{F_j}\right)'(\theta).
\]
It satisfies the exact chain
\[
\left|\partial_\theta T_j(\theta,\beta)\right|
\le V_j(\theta)
=\min_{1\le i\le N}V_i(\theta)
\le\Gamma_{\rm piv}(b,F;R)<\infty.
\]
The same statement holds after restriction to every
\(E_{j,m}\times[-R,R]^{J_j}\).

Proof / justification:
The selected denominator is nonzero by
Proposition~\ref{prop:step-002-lexicographic-pivot-partition}. On \(U_j\),
Assumption~\ref{assump:shared-pfaffian-chain} and the quotient rule give
\[
\left(\frac b{F_j}\right)'
=\frac{b'F_j-bF_j'}{F_j^2},
\qquad
\left(\frac{F_i}{F_j}\right)'
=\frac{F_i'F_j-F_iF_j'}{F_j^2}.
\]
For fixed \(\beta\), differentiating the finite affine expression from
Proposition~\ref{prop:step-002-exact-original-root-chart} gives, without an
interchange of an infinite sum or a limit,
\[
\partial_\theta T_j
=-\left(\frac b{F_j}\right)'
-\sum_{i\in J_j}\beta_i
 \left(\frac{F_i}{F_j}\right)'.
\]
At an endpoint of \(\Theta\), this is the endpoint derivative already
included in the setting's \(C^1\) convention; no open-interval conclusion is
silently substituted.

The triangle inequality and the separate cube bound for every actual
nonpivot coordinate yield
\[
\begin{aligned}
\left|\partial_\theta T_j(\theta,\beta)\right|
&\le
\left|\left(\frac b{F_j}\right)'(\theta)\right|
+\sum_{i\in J_j}
 \lvert\beta_i\rvert
 \left|\left(\frac{F_i}{F_j}\right)'(\theta)\right|\\
&\le
\left|\left(\frac b{F_j}\right)'(\theta)\right|
+R\sum_{i\in J_j}
 \left|\left(\frac{F_i}{F_j}\right)'(\theta)\right|\\
&=V_j(\theta).
\end{aligned}
\]
There is one literal factor \(R\) for each nonpivot summand and no other
constant. Cell membership means that \(j\) is the least minimizer, so in
particular
\[
V_j(\theta)=\min_iV_i(\theta).
\]
Because \(\theta\in E_j\subseteq K_R\), this branch is nonempty. The defining
supremum and the accepted fixed-family-finiteness conclusion then give
\[
\min_iV_i(\theta)\le\Gamma_{\rm piv}(b,F;R)<\infty.
\]

No sum over chart indices is taken in this pointwise calculation. The
least-index rule assigns each \(\theta\) to exactly one cell, so this
interface introduces neither an \(N\)-fold chart loss nor a union-bound
factor. Restricting from \(E_j\) to \(E_{j,m}\) changes none of the
identities or inequalities, and \(1/m\) never enters the bound. If an
unselected feature value or coefficient \(\beta_i\) is zero, its displayed
term is handled literally; no division by that quantity occurs. For
\(N=1\), the sum is empty and the bound is exactly
\[
\left|-\left(\frac b{F_1}\right)'\right|
=V_1\le\Gamma_{\rm piv},
\]
with no conservative remainder. If \(K_R=\varnothing\), the chart statement
is vacuous and the dependency gives \(\Gamma_{\rm piv}=0\).

## Target-Step Assembly

Lemma~\ref{lem:step-002-extended-speed-measurability} proves that every
setting extension \(V_j:\Theta\to[0,+\infty]\) is Borel and, using only the
accepted step_001 output, that the pointwise minimum is finite at every point
of \(K_R\).

Proposition~\ref{prop:step-002-lexicographic-pivot-partition} applies
finite Borel comparisons with the strict-before/weak-after rule. It proves
that the least-minimizer selector is Borel, that its fibers form a pairwise
disjoint Borel partition of \(K_R\), that ties are resolved by the least
index, and that no selected coordinate is zero.

Lemma~\ref{lem:step-002-exact-denominator-exhaustion} proves, with both
inclusions and finite-level entry, the exact limit
\[
E_{j,m}\uparrow E_j.
\]
The weak threshold keeps equality points, arbitrarily small positive pivots
enter some finite level, and the exhaustion introduces no auxiliary
tolerance.

Proposition~\ref{prop:step-002-exact-original-root-chart} proves that
\(T_j\) is a Borel chart and that inserting it into the original \(j\)-th
coefficient coordinate solves
\[
b(\theta)+\langle\alpha,F(\theta)\rangle=0
\]
with residual exactly zero. Proposition~\ref{prop:step-002-exact-r-weighted-velocity}
then differentiates that same expression and proves
\[
\left|\partial_\theta T_j\right|
\le
\left|\left(\frac b{F_j}\right)'\right|
+R\sum_{i\ne j}
\left|\left(\frac{F_i}{F_j}\right)'\right|
=V_j
\le\Gamma_{\rm piv}.
\]
This is the exact accepted-row velocity interface, with no chart sum,
\(N\)-fold loss, hidden constant, or auxiliary theorem tolerance.

Together, these five named results prove every clause of the accepted
step_002 row and only its deterministic chart interface. Selected and
unselected coordinate zeros, least-index ties, compact-interval endpoints,
\(K_R=\varnothing\), \(N=1\), and every finite exhaustion level are covered
inside the named results. No probability law, area formula, root-event
volume, or general-instance Pfaffian complexity estimate is inferred.

## Explicit Rate Audit

- Exposed variables: \(N,R\), the nonpivot coordinates \(\beta_i\), the
  pointwise speeds \(V_j(\theta)\), and
  \(\Gamma_{\rm piv}(b,F;R)\). The exact quantitative statement is
  \[
  \left|\partial_\theta T_j\right|
  \le
  \left|\left(\frac b{F_j}\right)'\right|
  +R\sum_{i\ne j}
   \left|\left(\frac{F_i}{F_j}\right)'\right|
  =V_j\le\Gamma_{\rm piv}.
  \]
- Hidden constants may depend on: None; there is no hidden constant.
- Hidden constants may not depend on: \(N,R\), the family, its Pfaffian
  representation, a pivot margin, a selected cell, an exhaustion index, or
  an auxiliary tolerance. No dependence is hidden.
- Fixed quantities: The deterministic family \((b,F)\), its fixed
  presentation, compact \(\Theta\), \(N\), and \(R\) are fixed.
- Probability mode: Deterministic. There is no probability law,
  expectation, confidence parameter, conditioning event, or union bound.
- Horizon mode: Static and pointwise on \(K_R\), with a finite partition and
  a countable exact exhaustion. There is no horizon, asymptotic statement,
  stopping time, or recursive scope.
- Norm mode: Scalar absolute value for chart velocity, coordinatewise
  absolute bounds \(\lvert\beta_i\rvert\le R\), and the setting's
  coordinate-ratio variation in \(V_j\).
- Admissibility conditions and auxiliary tolerances: \(N\ge1\), \(R>0\),
  compact \(\Theta\), Assumption~\ref{assump:shared-pfaffian-chain}, the
  accepted step_001 interface, \(\theta\in E_j\), and
  \(\beta\in[-R,R]^{N-1}\). There is no auxiliary tolerance. The threshold
  \(1/m\) only localizes a nonzero denominator and disappears through exact
  set exhaustion.
- Term absorption or simplification inequalities: No term is dropped,
  absorbed, or replaced by a chart count. The only simplification is the
  displayed termwise inequality
  \[
  \sum_{i\ne j}\lvert\beta_i\rvert
  \left|\left(\frac{F_i}{F_j}\right)'\right|
  \le
  R\sum_{i\ne j}
  \left|\left(\frac{F_i}{F_j}\right)'\right|,
  \]
  justified separately by \(\lvert\beta_i\rvert\le R\).
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: The disjoint cells and
  pointwise velocity inequality supply step_003 with the exact chart
  integrand. They introduce neither a tolerance nor an \(N\)-fold loss, so
  the later coefficient-volume factor remains \((2R)^{N-1}\), not
  \(N(2R)^{N-1}\).
- Baseline-reduction check, if applicable: For \(N=1\), the beta space is a
  singleton, every feature-ratio sum is empty, \(E_1=K_R\), and the result
  reduces exactly to \(T_1=-b/F_1\) and
  \(\lvert T_1'\rvert=V_1\le\Gamma_{\rm piv}\). For
  \(K_R=\varnothing\), every cell and chart domain is empty and
  \(\Gamma_{\rm piv}=0\). There is no conservative loss in either branch.
  The monic baseline belongs to step_006 and is not altered here.

## Blockers

None

## Notation And Assumption Notes

- Binding identity: all eight SHA-256 identities listed in
  ## Step Identity were verified before this overwrite. The accepted
  dependency review records sketch attempt 3, step_001, unit attempt 1,
  status ACCEPTED, and the matching dependency-proof digest.
- Setting-defined surface: \(U_j,V_j,j_*,E_j,E_{j,m},\beta,T_j\), and
  \(\Gamma_{\rm piv}\) retain exactly their meanings in setting.md.
  \(\Gamma_{\rm piv}\) is public-facing. The pivot cells, exhaustion, and
  chart objects are appendix-local and downstream-facing to step_003; they
  are not added to the public theorem statement.
- New proof-local helpers: \(W_j\) names the finite branch of \(V_j\);
  \(J_j=\{1,\ldots,N\}\setminus\{j\}\) preserves coordinate labels; and
  \(\alpha^{(j)}(\theta,\beta)\) is used only to state exact insertion into
  the original coefficient vector. The rational \(r\) and integer \(m\) are
  bound proof variables, not exported parameters. No new appendix-local
  constant or public-facing helper is introduced.
- Constant provenance: \(N\) and \(R\) are basic-setting quantities.
  \(\Gamma_{\rm piv}\) is setting-defined and proved finite for the fixed
  family by accepted step_001. The thresholds \(1/m\) are directly defined
  from finite integers and are eliminated by
  Lemma~\ref{lem:step-002-exact-denominator-exhaustion}. No radius, margin,
  rate, or bounded quantity is freely assumed.
- Assumption provenance: \(C^1\) regularity is primitive through
  Assumption~\ref{assump:shared-pfaffian-chain}. Compact/Borel \(K_R\),
  pointwise pivot availability, nonvanishing of at least one feasible
  coordinate, and fixed-family finiteness are accepted derived outputs of
  step_001. Borel speeds, Borel cells, selected-pivot nonvanishing,
  finite-level entry, chart measurability, exact root reconstruction, and
  velocity control are proved by the five named local results here. No
  generated event, stability fact, recurrence, or local-validity condition
  is assumed.
- Tie and zero audit: The strict comparisons against lower indices and weak
  comparisons against higher indices implement deterministic least-index
  tie breaking. A selected zero has \(V_j=+\infty\) and is excluded by the
  available finite minimum. An unselected zero is harmless because no
  division by \(F_i\), \(i\ne j\), occurs.
- Boundary audit: The proof separately handles \(K_R=\varnothing\);
  \(N=1\) and its zero-dimensional beta space; equality at
  \(\lvert F_j\rvert=1/m\); arbitrarily small positive selected pivots;
  compact-interval endpoints under the setting's \(C^1\) convention; and
  all finite exhaustion levels. It neither requires \(T_j\in[-R,R]\) nor
  claims it; step_003 may impose that exact range restriction on its chart
  domain.
- Exactness and loss audit: The root residual is identically zero in the
  original coefficient coordinates. The derivative is obtained by literal
  quotient differentiation. The cube bound produces exactly one \(R\)
  weight per nonpivot term. Disjoint least-index cells prevent chart
  duplication, and no \(N\)-fold factor or auxiliary tolerance appears.
- Producer-consumer provenance: accepted step_001 produces the finite-pivot
  and fixed-family-finiteness inputs; this step produces the Borel
  partition, exact exhaustion, root chart, and velocity certificate; only
  step_003 consumes this step's exported interface.
- Diagnostic boundary: global_proof_review.md with SHA-256
  24ad84083a200f89cc8c7973ee168783bca0c81c3432ac73e24f50e4606184dd
  was verified ACCEPTED for global_proof.md with SHA-256
  80b090266336b304ff4ca0184709b45eff448c3f1758efdaa09d923c8dbfaee8.
  Its step-relevant planning pattern was extended Borel speeds, a
  least-index partition, exact graph substitution, and quotient
  differentiation. It was not used as evidence, a cited result, an
  assumption source, or authority to change the target claim.
- Same-step history boundary: the consumed sketch-attempt-2 proof SHA-256
  f283dcd2fe425f336a16a3dfa06f6bebbc822d8f86407aaa6214a7b48d033ed6
  and review SHA-256
  6e87e9d11f307556a640246941f7a195ab7b5d178ce62b5f48e3a1ce84bef113
  were byte-identical to their archived copies and were consulted only as
  diagnostic history. They supply no current identity, local unit,
  assumption, accepted dependency, or mathematical evidence. All five local
  units and their theorem labels above are regenerated for sketch attempt 3.
- Progress boundary: this proof uses only the strict fixed-family finiteness
  of \(\Gamma_{\rm piv}\) accepted from step_001. It neither states nor
  implies a polynomial general-instance bound on \(\Gamma_{\rm piv}\) from
  \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) or any other Pfaffian-format
  data. The branch remains material_partial and the full complexity problem
  remains open.
