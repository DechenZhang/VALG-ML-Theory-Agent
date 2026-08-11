# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_007`
- Unit attempt: 1
- Progress type: `full`

## Target Step Claim

- Intended claim: For every $d,J$, verify the exact q=0 normalized monic presentation and prescribed pivot sets, derive both displayed velocity bounds and the $d=1$ identity, and record $N=d,A=(2R)^d\kappa,\Delta_{\mathrm{aug}}=d$.
- Depends on: None
- Assumptions used: Primitive specialization of `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, `assump:affine-chart-data`; deterministic monic data
- Technical challenge: Preserve the lower-coefficient object exactly, control negative powers on $\lvert\theta\rvert>1$, and handle the transition and empty-sum branch without a singular leading coordinate.
- Intended proof tool or cited result: Direct current-notation chart differentiation and finite-sum identities; no independent polynomial root theorem.
- Output target: Exact monic object/pivot/velocity certificate.
- Rate objective: R4: all specialization conditions and literal $V_d$ bound.
- Review status: PENDING

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- `assump:parameter-regime`: specialize the static parameters to \(N=d\), \(q=0\), \(h>0\), \(R>0\), \(0<\kappa<\infty\), and a nondegenerate interval \(\Theta=[c-h,c+h]\). The definition \(A=(2R)^N\kappa\) is retained literally.
- `assump:balcan-common-chain`: use its \(q=0\) branch, so the chain is empty, \(M=0\), and every \(G_i\) is its polynomial \(Q_i\) evaluated directly at \(x\).
- `assump:anchored-unit-range`: use the literal anchor \(Q_1\equiv 1\). The chain-range requirement is vacuous when \(q=0\).
- `assump:affine-chart-data`: use the affine-interface requirements as the conditions to be checked for the displayed monic construction. In particular, satisfaction of the prescribed pivot cover is not assumed: Proposition~\ref{prop:step-007-monic-presentation} verifies \(F_0\in C^1(\Theta)\), and Lemma~\ref{lem:step-007-pivot-partition} proves measurability, coverage, and pivot nonvanishing directly.

The integer \(d\geq1\), bounded interval \(J\subset\mathbb R\), and displayed deterministic monic formulas are target-specified static inputs, not additional assumptions. Define the reused literal velocity cap

\[
V_d:=d+\frac{R d(d-1)}2.
\]

Derived invariants supplied by accepted dependencies: None.

Local conditional hypotheses: None.

Accepted dependency artifacts: None. The target row has no dependencies.

## Local Lemma Map

Atomic step = no. The object identification, pivot validity, and the two chart differentiations are independently auditable claims.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-unit-range}, and subject to the affine regularity requirement in Assumption~\ref{assump:affine-chart-data}, if \(d\geq1\) and \(J\subset\mathbb R\) is bounded, then some nondegenerate \(\Theta=[c-h,c+h]\supseteq J\) has \(Q_0(x)=(c+hx)^d\), \(Q_{k+1}(x)=(c+hx)^k\), \(F_0(\theta)=\theta^d\), \(F_{k+1}(\theta)=\theta^k\), and \(F_0+\langle\alpha,F\rangle=p_\alpha\) pointwise, with \(q=0\), \(M=0\), \(N=d\), \(A=(2R)^d\kappa\), \(\Delta_{\mathrm{aug}}=d\), and deterministic monic coefficient outside \(\alpha\in\mathbb R^d\). | Establishes the exact object mapping and parameter tuple. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-unit-range}, and \ref{assump:affine-chart-data}, and Proposition~\ref{prop:step-007-monic-presentation}, if \(d\geq2\), then \(E_1=J\cap\{\lvert\theta\rvert\leq1\}\), \(E_d=J\cap\{\lvert\theta\rvert>1\}\), and \(E_j=\varnothing\) otherwise form a measurable partition with \(F_1=1\neq0\) on \(E_1\) and \(F_d=\theta^{d-1}\neq0\) on \(E_d\); if \(d=1\), then \(E_1=J\) and \(F_1=1\neq0\). This includes \(\theta=0\), \(\lvert\theta\rvert=1\), and empty cells. | Verifies the exact pivot partition required by the affine interface. |
| `unit_003` | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-unit-range}, and \ref{assump:affine-chart-data}, Proposition~\ref{prop:step-007-monic-presentation}, and Lemma~\ref{lem:step-007-pivot-partition}, if \(d\geq2\), \(\theta\in E_1\), and \(\beta\in[-R,R]^{d-1}\), then \(T_1=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k\) and \(\lvert\partial_\theta T_1\rvert\leq d+R\sum_{k=1}^{d-1}k=V_d\); if \(d=1\), then the empty-sum chart is \(T_1=-\theta\) with \(\lvert T_1'\rvert=1=V_1\). | Supplies the low-pivot velocity certificate and empty-sum branch. |
| `unit_004` | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-unit-range}, and \ref{assump:affine-chart-data}, Proposition~\ref{prop:step-007-monic-presentation}, and Lemma~\ref{lem:step-007-pivot-partition}, if \(d\geq2\), \(\theta\in E_d\), and \(\beta\in[-R,R]^{d-1}\), then \(T_d=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}\) and \(\lvert\partial_\theta T_d\rvert\leq1+R\sum_{k=0}^{d-2}(d-1-k)=1+R d(d-1)/2\leq V_d\), with every negative-power estimate restricted to \(\lvert\theta\rvert>1\). | Supplies the high-pivot velocity certificate without a singular leading coordinate. |

## Cited Result Applications

External paper results: None.

Standard theorem applications: None. Differentiation of the displayed integer powers, the triangle inequality, and both finite-sum identities are written out in the local derivations rather than invoked as black-box results.

Accepted dependency results: None.

Local-result applications:

1. **Proposition~\ref{prop:step-007-monic-presentation} (Exact normalized monic presentation).** Restated in current notation: the \(q=0\) outputs \(Q_0(x)=(c+hx)^d\) and \(Q_{k+1}(x)=(c+hx)^k\) pull back to \(F_0(\theta)=\theta^d\) and \(F_{k+1}(\theta)=\theta^k\), give \(F_0+\langle\alpha,F\rangle=p_\alpha\), and have the stated tuple. Its objects are \(d,J,c,h,\Theta,Q_0,Q_1,\ldots,Q_d,F_0,F_1,\ldots,F_d\). The boundedness of \(J\) supplies \(c,h\); the \(q=0\) convention and anchor are discharged by Assumptions~\ref{assump:balcan-common-chain} and \ref{assump:anchored-unit-range}; the remaining static parameter conditions come from Assumption~\ref{assump:parameter-regime}; affine regularity is checked directly. This proposition is used by all three later lemmas and by the target-step assembly.

2. **Lemma~\ref{lem:step-007-pivot-partition} (Prescribed monic pivot partition).** Restated in current notation: for \(d\geq2\), \(E_1=J\cap\{\lvert\theta\rvert\leq1\}\), \(E_d=J\cap\{\lvert\theta\rvert>1\}\), and all other \(E_j\) empty form a measurable partition with \(F_1=1\) on \(E_1\) and \(F_d=\theta^{d-1}\neq0\) on \(E_d\); for \(d=1\), \(E_1=J\) and \(F_1=1\). The exact monomial identities are supplied by Proposition~\ref{prop:step-007-monic-presentation}; the affine partition requirements are those recorded in Assumption~\ref{assump:affine-chart-data}. This lemma is used to justify both chart divisions and in the target-step assembly.

3. **Lemma~\ref{lem:step-007-low-pivot-chart} (Constant-pivot chart and velocity).** Restated in current notation: solving for \(\alpha_0\) on the constant-pivot cell gives the displayed \(T_1\), its derivative, and the exact bound \(d+R\sum_{k=1}^{d-1}k=V_d\); the \(d=1\) branch gives \(T_1=-\theta\) and unit speed. Its only local coefficient condition is \(\beta_k\in[-R,R]\), the explicit affine-chart domain, while \(R>0\) comes from Assumption~\ref{assump:parameter-regime}. It is used in the target-step assembly.

4. **Lemma~\ref{lem:step-007-high-pivot-chart} (Highest-lower-degree pivot chart and velocity).** Restated in current notation: for \(d\geq2\), solving for \(\alpha_{d-1}\) on \(E_d\) gives the displayed \(T_d\), and direct differentiation gives \(\lvert\partial_\theta T_d\rvert\leq1+R d(d-1)/2\leq V_d\). Proposition~\ref{prop:step-007-monic-presentation} identifies the monomials, Lemma~\ref{lem:step-007-pivot-partition} supplies the nonzero denominator and the strict regime \(\lvert\theta\rvert>1\), and the coefficient cube supplies \(\lvert\beta_k\rvert\leq R\). It is used in the target-step assembly.

## Local Derivation

### unit_001: proposition

**Proposition (Exact normalized monic presentation).** \(\label{prop:step-007-monic-presentation}\)

Statement: Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-unit-range}, and subject to the affine regularity requirement in Assumption~\ref{assump:affine-chart-data}, if \(d\geq1\) and \(J\subset\mathbb R\) is a bounded interval, then there is a nondegenerate interval \(\Theta=[c-h,c+h]\supseteq J\) for which

\[
F_0(\theta)=\theta^d,
\qquad
F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),
\]

has normalized-coordinate representatives

\[
Q_0(x)=(c+hx)^d,
\qquad
Q_{k+1}(x)=(c+hx)^k\quad(0\leq k\leq d-1).
\]

For every \(\theta\in\Theta\) and every \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in\mathbb R^d\),

\[
F_0(\theta)+\langle\alpha,F(\theta)\rangle
=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
=p_\alpha(\theta).
\]

The specialization tuple is exactly

\[
q=0,
\qquad M=0,
\qquad N=d,
\qquad A=(2R)^d\kappa,
\qquad \Delta_{\mathrm{aug}}=d,
\]

and the monic coefficient \(1\) is deterministic and is not a coordinate of the \(d\)-dimensional lower-coefficient vector \(\alpha\).

Proof / justification:

Because \(J\) is bounded, there are finite real numbers \(L<U\) such that \(J\subseteq[L,U]\), regardless of the location of \(J\). Set

\[
c:=\frac{L+U}{2},
\qquad
h:=\frac{U-L}{2}>0.
\]

Then \(\Theta=[c-h,c+h]=[L,U]\) is nondegenerate and contains \(J\). This construction also covers an empty or singleton interval because \(L<U\) may be chosen with a strict margin around it.

Set \(q=0\). The chain tuple is empty, so the definition in Assumption~\ref{assump:balcan-common-chain} gives \(M=0\) and \(G_i(x)=Q_i(x)\). For \(x=x(\theta)=(\theta-c)/h\),

\[
c+h x(\theta)
=c+h\frac{\theta-c}{h}
=\theta.
\]

Consequently,

\[
Q_0(x(\theta))=(c+h x(\theta))^d=\theta^d=F_0(\theta)
\]

and, for every \(0\leq k\leq d-1\),

\[
Q_{k+1}(x(\theta))=(c+h x(\theta))^k=\theta^k=F_{k+1}(\theta).
\]

In particular \(Q_1(x)=(c+hx)^0=1\), so the literal anchor in Assumption~\ref{assump:anchored-unit-range} holds; its chain-range clause is vacuous. All displayed outputs are polynomials, hence \(F_0\in C^1(\Theta)\), as required by the regularity part of Assumption~\ref{assump:affine-chart-data}. Their monomial coefficient budgets are finite static presentation data.

There are exactly \(d\) random-feature outputs, indexed by \(k=0,\ldots,d-1\), so \(N=d\). The definition from Assumption~\ref{assump:parameter-regime} then gives

\[
A=(2R)^N\kappa=(2R)^d\kappa.
\]

Since \(h>0\), the coefficient of \(x^d\) in \(Q_0(x)=(c+hx)^d\) is \(h^d\neq0\), so \(\deg Q_0=d\). Every \(Q_{k+1}\) has degree \(k\leq d-1\). Therefore

\[
\max\{\deg Q_0,\deg Q_1,\ldots,\deg Q_d\}=d.
\]

The same affine change has nonzero slope, so it preserves every displayed polynomial degree. Hence the setting's augmented degree is exactly

\[
\Delta_{\mathrm{aug}}
:=\max\{\deg F_0,\deg F_1,\ldots,\deg F_d\}
=d.
\]

Finally, substituting the displayed \(F_i\) into the affine expression yields pointwise

\[
F_0(\theta)+\langle\alpha,F(\theta)\rangle
=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
=p_\alpha(\theta).
\]

The leading coefficient \(1\) appears only in the deterministic offset \(F_0\). Thus the coefficient vector remains exactly \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in\mathbb R^d\), with no added or randomized leading coordinate.

### unit_002: lemma

**Lemma (Prescribed monic pivot partition).** \(\label{lem:step-007-pivot-partition}\)

Statement: Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-unit-range}, and \ref{assump:affine-chart-data}, and Proposition~\ref{prop:step-007-monic-presentation}, if \(d\geq2\), then the exact sets

\[
E_1=J\cap\{\lvert\theta\rvert\leq1\},
\qquad
E_d=J\cap\{\lvert\theta\rvert>1\},
\qquad
E_j=\varnothing\quad(j\notin\{1,d\})
\]

form a measurable partition of \(J\), with \(F_1\neq0\) on \(E_1\) and \(F_d\neq0\) on \(E_d\). If \(d=1\), the exact choice \(E_1=J\) is measurable and has \(F_1\neq0\) everywhere. These conclusions remain valid at \(\theta=0\), at \(\lvert\theta\rvert=1\), and when any displayed cell is empty.

Proof / justification:

Every interval in \(\mathbb R\) is Borel measurable. The sets \(\{\lvert\theta\rvert\leq1\}\) and \(\{\lvert\theta\rvert>1\}\) are Borel, disjoint, and have union \(\mathbb R\). Hence their intersections with \(J\) are measurable, disjoint, and have union \(J\). Adding empty \(E_j\)'s preserves this partition. Empty-cell pivot conditions hold vacuously.

By Proposition~\ref{prop:step-007-monic-presentation},

\[
F_1(\theta)=\theta^0=1
\]

for every \(\theta\). Thus the selected pivot on \(E_1\) never vanishes. In particular, if \(0\in J\), then \(0\in E_1\) and its pivot equals \(1\). If \(1\in J\) or \(-1\in J\), the non-strict inequality assigns that transition point to \(E_1\), again with pivot \(1\).

For \(d\geq2\), Proposition~\ref{prop:step-007-monic-presentation} also gives

\[
F_d(\theta)=\theta^{d-1}.
\]

On \(E_d\), \(\lvert\theta\rvert>1\), so \(\theta\neq0\) and \(F_d(\theta)\neq0\) (indeed, \(\lvert F_d(\theta)\rvert>1\)). This proves the prescribed data satisfy the partition and nonvanishing requirements of Assumption~\ref{assump:affine-chart-data}; those properties have not been assumed for these cells.

When \(d=1\), Proposition~\ref{prop:step-007-monic-presentation} gives \(F_1=1\), so the single cell \(E_1=J\) is valid. The construction does not depend on the location of \(J\): if \(J\) lies wholly in one regime, the other displayed cell is simply empty; if it crosses either transition point, the two cells split it as above.

### unit_003: lemma

**Lemma (Constant-pivot chart and velocity).** \(\label{lem:step-007-low-pivot-chart}\)

Statement: Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-unit-range}, and \ref{assump:affine-chart-data}, Proposition~\ref{prop:step-007-monic-presentation}, and Lemma~\ref{lem:step-007-pivot-partition}, if \(d\geq2\), \(\theta\in E_1\), and \(\beta=(\beta_1,\ldots,\beta_{d-1})\in[-R,R]^{d-1}\), then solving the affine equation for \(\alpha_0\) gives exactly

\[
T_1(\theta,\beta)
=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
\]

and

\[
\lvert\partial_\theta T_1(\theta,\beta)\rvert
\leq d+R\sum_{k=1}^{d-1}k
=d+\frac{R d(d-1)}2
=V_d.
\]

If \(d=1\), \(\theta\in E_1=J\), and the sum and coefficient vector \(\beta\) are empty, then \(T_1(\theta)=-\theta\) and \(\lvert T_1'(\theta)\rvert=1=V_1\).

Proof / justification:

For \(d\geq2\), reindex the nonpivot chart coordinates by their polynomial exponents, so \(\beta_k\) occupies the coefficient coordinate \(\alpha_k\) for \(1\leq k\leq d-1\). On \(E_1\), Lemma~\ref{lem:step-007-pivot-partition} gives \(F_1=1\). The root equation with \(\alpha_0\) as the pivot coordinate is

\[
0
=F_0(\theta)+\alpha_0F_1(\theta)
 +\sum_{k=1}^{d-1}\beta_kF_{k+1}(\theta)
=\theta^d+\alpha_0+\sum_{k=1}^{d-1}\beta_k\theta^k.
\]

Solving this scalar equation gives

\[
T_1(\theta,\beta)
=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k.
\]

Direct differentiation gives

\[
\partial_\theta T_1(\theta,\beta)
=-d\theta^{d-1}-\sum_{k=1}^{d-1}k\beta_k\theta^{k-1}.
\]

Because \(\theta\in E_1\) implies \(\lvert\theta\rvert\leq1\), and because \(\lvert\beta_k\rvert\leq R\), the triangle inequality yields

\[
\begin{aligned}
\lvert\partial_\theta T_1(\theta,\beta)\rvert
&\leq d\lvert\theta\rvert^{d-1}
 +\sum_{k=1}^{d-1}k\lvert\beta_k\rvert\lvert\theta\rvert^{k-1}\\
&\leq d+R\sum_{k=1}^{d-1}k.
\end{aligned}
\]

At \(\theta=0\), the \(k=1\) summand has the ordinary factor \(\theta^0=1\), while all terms with a positive power of \(\theta\) vanish; there is no division or negative power in this chart. Reindexing \(1+2+\cdots+(d-1)\) gives

\[
\sum_{k=1}^{d-1}k=\frac{d(d-1)}2,
\]

which proves the stated bound.

For \(d=1\), the general affine expression is \(F_0(\theta)+\alpha_0F_1(\theta)=\theta+\alpha_0\). There are no nonpivot coordinates, so with the empty-sum convention

\[
T_1(\theta)=-\theta,
\qquad
T_1'(\theta)=-1,
\qquad
\lvert T_1'(\theta)\rvert=1.
\]

Also \(V_1=1+R\cdot1\cdot0/2=1\), so the literal cap agrees with the exact derivative.

### unit_004: lemma

**Lemma (Highest-lower-degree pivot chart and velocity).** \(\label{lem:step-007-high-pivot-chart}\)

Statement: Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-unit-range}, and \ref{assump:affine-chart-data}, Proposition~\ref{prop:step-007-monic-presentation}, and Lemma~\ref{lem:step-007-pivot-partition}, if \(d\geq2\), \(\theta\in E_d\), and \(\beta=(\beta_0,\ldots,\beta_{d-2})\in[-R,R]^{d-1}\), then solving the affine equation for \(\alpha_{d-1}\) gives exactly

\[
T_d(\theta,\beta)
=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1},
\]

and

\[
\lvert\partial_\theta T_d(\theta,\beta)\rvert
\leq1+R\sum_{k=0}^{d-2}(d-1-k)
=1+\frac{R d(d-1)}2
\leq d+\frac{R d(d-1)}2
=V_d.
\]

All negative powers in this statement and proof are restricted to \(E_d\subset\{\lvert\theta\rvert>1\}\).

Proof / justification:

Reindex the nonpivot chart coordinates by their polynomial exponents, so \(\beta_k\) occupies coefficient coordinate \(\alpha_k\) for \(0\leq k\leq d-2\). On \(E_d\), Lemma~\ref{lem:step-007-pivot-partition} gives \(F_d(\theta)=\theta^{d-1}\neq0\). The affine equation, with \(\alpha_{d-1}\) as pivot coordinate, is

\[
0
=\theta^d+\sum_{k=0}^{d-2}\beta_k\theta^k
 +\alpha_{d-1}\theta^{d-1}.
\]

Division by the nonzero pivot gives

\[
\begin{aligned}
T_d(\theta,\beta)
&=-\frac{\theta^d}{\theta^{d-1}}
  -\sum_{k=0}^{d-2}\beta_k\frac{\theta^k}{\theta^{d-1}}\\
&=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}.
\end{aligned}
\]

Differentiating this exact expression on \(\lvert\theta\rvert>1\) gives

\[
\partial_\theta T_d(\theta,\beta)
=-1+\sum_{k=0}^{d-2}(d-1-k)\beta_k\theta^{k-d}.
\]

For every \(0\leq k\leq d-2\), the exponent \(k-d\) is negative. The strict cell condition \(\lvert\theta\rvert>1\) therefore gives

\[
\lvert\theta^{k-d}\rvert\leq1.
\]

This is the only negative-power estimate used, and it is used only on \(E_d\). Together with \(\lvert\beta_k\rvert\leq R\), it gives

\[
\begin{aligned}
\lvert\partial_\theta T_d(\theta,\beta)\rvert
&\leq1+\sum_{k=0}^{d-2}(d-1-k)
  \lvert\beta_k\rvert\lvert\theta\rvert^{k-d}\\
&\leq1+R\sum_{k=0}^{d-2}(d-1-k).
\end{aligned}
\]

As \(k\) runs from \(0\) to \(d-2\), the integer \(d-1-k\) runs from \(d-1\) down to \(1\). Hence

\[
\sum_{k=0}^{d-2}(d-1-k)
=\sum_{r=1}^{d-1}r
=\frac{d(d-1)}2.
\]

Because \(d\geq2\), \(1\leq d\), so

\[
1+\frac{R d(d-1)}2
\leq d+\frac{R d(d-1)}2
=V_d.
\]

For the requested \(d=2\) audit, the formulas reduce without any hidden sum to

\[
T_1=-\theta^2-\beta_1\theta,
\qquad
\lvert T_1'\rvert\leq2+R
\quad(\lvert\theta\rvert\leq1),
\]

and

\[
T_2=-\theta-\beta_0\theta^{-1},
\qquad
T_2'=-1+\beta_0\theta^{-2},
\qquad
\lvert T_2'\rvert\leq1+R\leq2+R
\quad(\lvert\theta\rvert>1).
\]

Thus the negative powers in the \(d=2\) high chart are never evaluated at \(\theta=0\) or at \(\lvert\theta\rvert=1\); those points, when present in \(J\), belong to the constant-pivot cell.

## Target-Step Assembly

Proposition~\ref{prop:step-007-monic-presentation} supplies the exact normalized-coordinate objects

\[
Q_0(x)=(c+hx)^d,
\qquad
Q_{k+1}(x)=(c+hx)^k,
\]

their pullbacks \(F_0(\theta)=\theta^d\), \(F_{k+1}(\theta)=\theta^k\), the pointwise equality

\[
F_0(\theta)+\langle\alpha,F(\theta)\rangle=p_\alpha(\theta),
\]

and exactly \(q=0\), \(M=0\), \(N=d\), \(A=(2R)^d\kappa\), and \(\Delta_{\mathrm{aug}}=d\). It also proves that the monic coefficient is the deterministic offset and that \(\alpha\) contains exactly the \(d\) lower coefficients.

Lemma~\ref{lem:step-007-pivot-partition} supplies exactly the prescribed measurable cells and proves their pivots are active before either chart is formed. Lemma~\ref{lem:step-007-low-pivot-chart} supplies

\[
T_1=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
\qquad
\lvert\partial_\theta T_1\rvert
\leq d+\frac{R d(d-1)}2
\quad(\lvert\theta\rvert\leq1),
\]

including \(T_1=-\theta\) and \(\lvert T_1'\rvert=1\) for \(d=1\). Lemma~\ref{lem:step-007-high-pivot-chart} supplies

\[
T_d=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1},
\qquad
\lvert\partial_\theta T_d\rvert
\leq1+\frac{R d(d-1)}2
\leq d+\frac{R d(d-1)}2
\quad(\lvert\theta\rvert>1).
\]

The arbitrary location of bounded \(J\) is handled by the explicit enclosing interval in Proposition~\ref{prop:step-007-monic-presentation}; empty cells and the points \(0,1,-1\) are handled by Lemma~\ref{lem:step-007-pivot-partition}; and the \(d=2\) formulas are audited in Lemmas~\ref{lem:step-007-low-pivot-chart} and \ref{lem:step-007-high-pivot-chart}. These named results prove the exact target row. The exported interface consists only of the exact monic object mapping, the displayed specialization tuple, the prescribed pivot partition, and the two displayed chart-velocity certificates for downstream `step_008`.

## Explicit Rate Audit

- Exposed variables: \(d\) and \(R\) in the velocity cap \(V_d=d+R d(d-1)/2\); \(N=d\), \(A=(2R)^d\kappa\), and \(\Delta_{\mathrm{aug}}=d\) in the specialization tuple; \(c,h,J\) only in the exact deterministic object mapping and cell domains.
- Hidden constants may depend on: None; every coefficient is literal.
- Hidden constants may not depend on: \(d,R,\kappa,N,A,c,h,J,\theta,\beta\), or the location of \(J\). There are no hidden constants.
- Fixed quantities: For each pointwise certificate, \(d,R,\kappa,c,h,J,\Theta\) and the deterministic monic presentation are fixed, while \(\theta\) and the appropriate \(\beta\in[-R,R]^{d-1}\) range over the stated chart domain.
- Probability mode: Deterministic. This step contains no probability assertion and uses no density or independence condition.
- Horizon mode: Static and pointwise, uniform over each prescribed cell; there is no time, recursive, limiting, or stopping-time scope.
- Norm mode: Scalar absolute value \(\lvert\partial_\theta T_j\rvert\).
- Admissibility conditions and auxiliary tolerances: \(d\geq1\), \(R>0\), \(h>0\), bounded \(J\subseteq\Theta\), and \(\beta\in[-R,R]^{d-1}\). The high-pivot certificate is restricted exactly to \(d\geq2\) and \(\lvert\theta\rvert>1\). There are no auxiliary tolerances.
- Term absorption or simplification inequalities:
  \[
  \sum_{k=1}^{d-1}k
  =\sum_{k=0}^{d-2}(d-1-k)
  =\frac{d(d-1)}2,
  \qquad
  1+\frac{R d(d-1)}2
  \leq d+\frac{R d(d-1)}2
  \quad(d\geq2).
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: The only exported quantitative inputs are the exact tuple and the literal two-chart cap required by `step_008`; no probability bound is invoked or derived here.
- Baseline-reduction check, if applicable: At \(d=1\), the high-pivot branch disappears, the nonpivot sum is empty, and \(T_1=-\theta\) has exact speed \(1=V_1\). This is a deterministic chart specialization only; no monic probability baseline is invoked.

## Blockers

None

## Notation And Assumption Notes

- **Public-facing objects:** \(F_0,F,p_\alpha,Q_0,Q_1,\ldots,Q_d\); the exact tuple \(q=0\), \(M=0\), \(N=d\), \(A=(2R)^d\kappa\), \(\Delta_{\mathrm{aug}}=d\); the prescribed \(E_j\); the chart coordinates \(T_1,T_d\); and the literal reused cap \(V_d=d+R d(d-1)/2\). These are exactly the objects consumed by `step_008`.
- **Appendix-local objects:** None.
- **Proof-local objects:** The enclosing endpoints \(L<U\), the midpoint construction of \(c,h\), the reindexed nonpivot tuples \(\beta=(\beta_1,\ldots,\beta_{d-1})\) or \(\beta=(\beta_0,\ldots,\beta_{d-2})\), and the summation reindex \(r=d-1-k\). They are used only to prove the public-facing interface. For \(d=1\), \(\beta\in[-R,R]^0\) denotes the unique empty tuple and every corresponding sum is zero.
- **Constant and parameter provenance:** \(R,\kappa\), and \(A=(2R)^N\kappa\) come directly from Assumption~\ref{assump:parameter-regime}; \(d\) and bounded \(J\) are target quantifiers; \(c,h,\Theta\) are constructed in Proposition~\ref{prop:step-007-monic-presentation}; \(q,M,N,\Delta_{\mathrm{aug}}\) are computed there from the displayed specialization; and \(V_d\) is proved by Lemmas~\ref{lem:step-007-low-pivot-chart} and \ref{lem:step-007-high-pivot-chart}. No free bounded quantity is introduced.
- **Assumption provenance:** The only primitive setting conditions used are `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, and `assump:affine-chart-data`. The deterministic monic formulas are target-specified data. The concrete \(C^1\) property, measurable partition, pivot nonvanishing, chart identities, and velocity bounds are proved in this step. No generated-object fact, event, stability condition, recurrence, boundedness invariant, or local-validity condition is assumed.
- **Dependency and citation boundary:** There are no dependency artifacts and no cited results. In particular, the proof uses no earlier proof step, no polynomial-root theorem, no monic probability result, and no random leading coordinate.
- **Public-surface restriction:** No probability estimate, cube-volume factor, root-counting statement, or additional helper dictionary is exported. The public-facing output is limited to the exact object mapping, specialization tuple, pivot partition, and two chart-velocity certificates stated in the target-step assembly.
