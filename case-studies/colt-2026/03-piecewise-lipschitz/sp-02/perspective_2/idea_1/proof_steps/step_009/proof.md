# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_009`
- Unit attempt: 2
- Perspective / idea: `perspective_2/idea_1`
- Binding idea SHA-256: `5209aa21929e84604acb2712d8657460a48463901738fd00ebafaa84d5c43596`
- Binding setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Binding accepted-sketch SHA-256: `41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4`
- Binding accepted-sketch-review SHA-256: `a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9`
- Binding controller-open tracker SHA-256: `a8a37f5e07c130fae8b5097a4cad51548dabef04d383af5adc778e8b81cecc44`
- Triggering same-step proof SHA-256 (unit attempt 1): `130965111a7aa8a28eada371f33377fd5fa9394c56d086f0b33f3bcb4aceb81e`
- Triggering same-step review SHA-256: `fea482225091b0abe6dde7a92d3d1118e0f95da239a26adb00ed2155112401e3`
- Dependency proof/review artifacts: None.
- Optional global diagnostic artifacts: Omitted as instructed; neither `global_proof.md` nor `global_proof_review.md` was read or used.

## Target Step Claim

The following is the exact accepted sketch-attempt-2 row.

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_009` | For every \(d,J\), verify the augmented monomial \(q=0\) presentation, constant derivative-shift matrix and exact certificate, prescribed pivot partition, both chart formulas and velocity bounds, and the \(d=1\) branch. | None | Primitive specialization of `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-derivative-closure` | Preserve the actual lower-coefficient object, control negative powers on \(\lvert\theta\rvert>1\), and audit \(q,M,\Delta,N,m,A,\widehat\Lambda\) without invoking the baseline theorem. | Direct matrix multiplication, chart solving/differentiation, and finite-sum identities. | Exact monic object/certificate/pivot/velocity package. | R1 and R4: exact specialization data and \(V_d\). | PENDING |

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: specialize the static one-dimensional regime to every integer \(d\geq1\), \(N=d\), \(R>0\), \(0<\kappa<\infty\), and every bounded interval \(J\subset\mathbb R\). Because \(J\) is bounded, it is contained in some nondegenerate compact \(\Theta\subseteq[-T,T]\); no bound below depends on that choice of \(T\) or on \(\sup_{\theta\in J}\lvert\theta\rvert\).
  - `assump:balcan-common-chain`: use the empty chain and the explicit output polynomials \(Q_0(\theta)=\theta^d\) and \(Q_{k+1}(\theta)=\theta^k\), \(0\leq k\leq d-1\), in the setting's ambient parameter dimension \(p=1\).
  - `assump:anchored-derivative-closure`: the concrete specialization must verify, rather than presume, both the literal anchor \(F_1\equiv1\) and the identity \(\widetilde F'=B\widetilde F\) for its displayed constant matrix.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency artifacts: None; the target row has no dependencies.

The coefficient variable is the actual lower-coefficient vector
\(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\). Membership in this cube is a deterministic domain condition for the chart calculations. No density, event, generated invariant, or probability statement is assumed or used.

## Local Lemma Map

Atomic step = no. The presentation, matrix certificate, two chart calculations, the linear case, and the complete boundary/index audit are independent nontrivial obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | **Augmented Monomial Presentation** (`prop:step-009-monic-presentation`). Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and the explicit monic specialization of Assumption~\ref{assump:anchored-derivative-closure}, for every \(d\geq1\) the ordered tuple \((\theta^d,1,\theta,\ldots,\theta^{d-1})\) gives pointwise \(F_0+\langle\alpha,F\rangle=p_\alpha\), has \(q=M=0\), \(\Delta=N=d\), \(A=(2R)^d\kappa\), and literal anchor \(F_1=1\), with exactly the \(d\) lower coefficients random. | Fixes the exact object, coefficient index map, Balcan descriptor data, cube, and deterministic leading coordinate. |
| `unit_002` | lemma | **Exact Derivative-Shift Certificate** (`lem:step-009-derivative-shift`). Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and for the tuple in Proposition~\ref{prop:step-009-monic-presentation}, the constant \((d+1)\)-square matrix whose only nonzero entries are \(B_{0,d}=d\) and \(B_{k+1,k}=k\) for \(1\leq k\leq d-1\) satisfies \(\widetilde F'=B\widetilde F\) coefficient by coefficient, has \(m=0\), and has exact setting-defined height \((\sum_{k=1}^d k^2)^{1/2}\), including \(d=1\). | Verifies the primitive closure source and exact Euclidean/Frobenius certificate. |
| `unit_003` | proposition | **Two-Pivot Coefficient Charts** (`prop:step-009-two-pivot-charts`). Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, Proposition~\ref{prop:step-009-monic-presentation}, \(d\geq2\), and bounded interval \(J\), the measurable disjoint partition \(E_1=J\cap\{\lvert\theta\rvert\leq1\}\), \(E_d=J\cap\{\lvert\theta\rvert>1\}\) has legal pivots \(\alpha_0\) and \(\alpha_{d-1}\), respectively, and yields exactly the two stated coefficient charts. | Produces the legal partition, index/dimension map, and exact inner and outer chart formulas. |
| `unit_004` | lemma | **Inner-Region Chart Velocity** (`lem:step-009-inner-velocity`). Under the assumptions of Proposition~\ref{prop:step-009-two-pivot-charts}, if \(\theta\in E_1\) and \(\beta\in[-R,R]^{d-1}\), then direct differentiation gives \(\lvert\partial_\theta T_1\rvert\leq d+Rd(d-1)/2\). | Supplies the exact inner velocity cap, including \(\theta=0\) and \(\theta=\pm1\). |
| `unit_005` | lemma | **Outer-Region Chart Velocity** (`lem:step-009-outer-velocity`). Under the assumptions of Proposition~\ref{prop:step-009-two-pivot-charts}, if \(\theta\in E_d\) and \(\beta\in[-R,R]^{d-1}\), then direct differentiation and the exact reindexing \(m=d-1-k\) give \(\lvert\partial_\theta T_d\rvert\leq1+R\sum_{m=1}^{d-1}m/\lvert\theta\rvert^{m+1}\leq1+Rd(d-1)/2\leq d+Rd(d-1)/2\). | Controls all negative powers on the legal outer region without any interval-location factor. |
| `unit_006` | proposition | **Global Linear-Case Chart** (`prop:step-009-linear-case`). Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and Proposition~\ref{prop:step-009-monic-presentation} specialized to \(d=1\), if \(J\) is bounded, then, with \([-R,R]^0=\{()\}\), the sole pivot \(\alpha_0\) is legal on all of \(J\), the zero-dimensional-beta chart is \(T_1(\theta)=-\theta\), and \(\lvert\partial_\theta T_1\rvert=1\). | Handles the empty-sum and zero-dimensional chart branch exactly. |
| `unit_007` | claim | **Location-Free Boundary and Index Closure** (`claim:step-009-boundary-index-closure`). Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and the six named results above, the monic package is valid at \(\theta=0,\pm1\), for negative outer \(\theta\), empty partition cells, \(d=1,2\), and every arbitrarily located bounded \(J\); every coefficient and matrix index has the declared dimension, the lower-coefficient cube is exactly \([-R,R]^d\), and no leading-coordinate randomization or \(\sup_J\lvert\theta\rvert\) dependence occurs. | Closes every required boundary, dimension, object-identity, and interval-location audit. |

## Cited Result Applications

External paper results: None.

Accepted dependency results: None.

No polynomial-root theorem, area formula, density domination, or probability theorem is invoked. The proof uses only the following direct standard facts, restated here in current notation before use.

1. **Finite monomial differentiation.** For an integer \(n\geq1\), \((\theta^n)'=n\theta^{n-1}\). A finite sum of such monomials differentiates term by term. For a negative integer exponent, the same formula is used only at \(\theta\neq0\). Here nonnegative powers occur in the inner chart, while negative powers occur only on \(\lvert\theta\rvert>1\).
2. **Scalar triangle and power identities.** For finite real families, \(\lvert\sum_i x_i\rvert\leq\sum_i\lvert x_i\rvert\); for an integer \(n\), \(\lvert\theta^n\rvert=\lvert\theta\rvert^n\) whenever the power is defined. Thus \(\lvert\theta\rvert^r\leq1\) for \(r\geq0\) on \(\lvert\theta\rvert\leq1\), and \(\lvert\theta\rvert^{-r}<1\) for \(r>0\) on \(\lvert\theta\rvert>1\).
3. **Finite arithmetic sum.** For \(d\geq2\), \(\sum_{k=1}^{d-1}k=d(d-1)/2\). Each velocity derivation below displays the finite pairing calculation at the point where it is used.
4. **Elementary measurability.** Every real interval is Borel; intersections with \(\{\lvert\theta\rvert\leq1\}\) and \(\{\lvert\theta\rvert>1\}\) are measurable. These two sets are disjoint and cover \(\mathbb R\), with \(\theta=\pm1\) in the first set.

The local results used in the target assembly are restated as follows.

- Proposition~\ref{prop:step-009-monic-presentation} identifies the exact augmented tuple, descriptor values, anchor, coefficient cube, and pointwise polynomial. Its assumptions are discharged directly by the empty-chain outputs and the setting definitions.
- Lemma~\ref{lem:step-009-derivative-shift} identifies every nonzero matrix entry, verifies every row of the closure identity, and evaluates the setting's coefficient-height formula. Its assumptions are discharged by Proposition~\ref{prop:step-009-monic-presentation} and direct matrix algebra.
- Proposition~\ref{prop:step-009-two-pivot-charts} gives the measurable partition, legal pivots, coefficient insertion maps, and exact root identities for \(d\geq2\). Its assumptions are discharged by the explicit features from Proposition~\ref{prop:step-009-monic-presentation}.
- Lemma~\ref{lem:step-009-inner-velocity} gives the inner velocity cap from the inner chart and the lower-coefficient cube.
- Lemma~\ref{lem:step-009-outer-velocity} gives the location-free outer velocity cap from the outer chart and \(\lvert\theta\rvert>1\).
- Proposition~\ref{prop:step-009-linear-case}, whose statement basis includes Proposition~\ref{prop:step-009-monic-presentation} specialized to \(d=1\), gives the complete \(d=1\) pivot/chart/velocity branch under the explicit convention \([-R,R]^0=\{()\}\).
- Claim~\ref{claim:step-009-boundary-index-closure} verifies that these results jointly cover every required boundary, dimension, sign, empty-cell, coefficient-object, and interval-location regime.

## Local Derivation

### unit_001: proposition

**Proposition (Augmented Monomial Presentation).** \(\label{prop:step-009-monic-presentation}\)

Statement:
Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and the explicit monic specialization of Assumption~\ref{assump:anchored-derivative-closure}, let \(d\geq1\), let \(J\subset\mathbb R\) be a bounded interval, and let \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\). If
\[
F_0(\theta)=\theta^d,
\qquad
F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),
\]
then, with the ordered augmented tuple
\[
\widetilde F=(F_0,F_1,\ldots,F_d)
=(\theta^d,1,\theta,\ldots,\theta^{d-1}),
\]
one has pointwise on \(\mathbb R\)
\[
F_0(\theta)+\langle\alpha,F(\theta)\rangle
=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
=p_\alpha(\theta).
\]
The Balcan descriptor values are exactly \(q=0\), \(M=0\), \(\Delta=d\), \(N=d\), and \(A=(2R)^d\kappa\), and the literal anchor is \(F_1=1\). The coefficient vector contains exactly the \(d\) lower coefficients; the leading coefficient one is deterministic and is not a coordinate of \(\alpha\).

Proof / justification:
Take the empty common chain. By the setting's explicit convention for an empty chain,
\[
q=0,
\qquad
M=0.
\]
The output polynomials in the one scalar parameter are
\[
Q_0(\theta)=\theta^d,
\qquad
Q_{k+1}(\theta)=\theta^k
\quad(0\leq k\leq d-1).
\]
Their coordinate index map is
\[
k\in\{0,\ldots,d-1\}
\longmapsto
i=k+1\in\{1,\ldots,d\}.
\]
Thus there are \(d\) random-feature coordinates, so \(N=d\), and
\[
\Delta
=\max\left\{\deg Q_0,\max_{0\leq k\leq d-1}\deg Q_{k+1}\right\}
=\max\{d,d-1\}
=d.
\]
This calculation also covers \(d=1\), when the second maximum is the single value \(0\). By the setting definition of \(A\),
\[
A=(2R)^N\kappa=(2R)^d\kappa.
\]
The first random feature corresponds to \(k=0\), hence
\[
F_1(\theta)=\theta^0=1
\quad\text{for every }\theta,
\]
which verifies the literal anchor required by Assumption~\ref{assump:anchored-derivative-closure}.

Finally, using the displayed index map coefficient by coefficient,
\[
\begin{aligned}
F_0(\theta)+\langle\alpha,F(\theta)\rangle
&=F_0(\theta)+\sum_{i=1}^{d}\alpha_{i-1}F_i(\theta)\\
&=\theta^d+\sum_{i=1}^{d}\alpha_{i-1}\theta^{i-1}\\
&=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
=p_\alpha(\theta).
\end{aligned}
\]
This is a pointwise identity for every real \(\theta\). The domain \([-R,R]^d\) is the actual lower-coefficient cube. There is no coordinate \(\alpha_d\), and the deterministic term \(F_0=\theta^d\) is not part of the random feature inner product.

### unit_002: lemma

**Lemma (Exact Derivative-Shift Certificate).** \(\label{lem:step-009-derivative-shift}\)

Statement:
Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, let \(d\geq1\) and let \(\widetilde F\) be the ordered tuple in Proposition~\ref{prop:step-009-monic-presentation}. Define a constant matrix \(B\in\mathbb R^{(d+1)\times(d+1)}\), with rows and columns indexed by \(0,1,\ldots,d\), by declaring its only nonzero entries to be
\[
B_{0,d}=d,
\qquad
B_{k+1,k}=k\quad(1\leq k\leq d-1).
\]
Then \(\widetilde F'=B\widetilde F\) coefficient by coefficient, \(m=0\), and
\[
\widehat\Lambda_{B,T}
=\left(\sum_{k=1}^{d}k^2\right)^{1/2}.
\]
For \(d=1\), \(B\) is the \(2\)-by-\(2\) matrix with the sole nonzero entry \(B_{0,1}=1\).

Proof / justification:
The row actions of \(B\) follow the ordered coordinate map exactly.

- Row \(0\) has only column \(d\) nonzero. Since \(F_d(\theta)=\theta^{d-1}\),
  \[
  (B\widetilde F)_0=dF_d=d\theta^{d-1}=F_0'(\theta).
  \]
- Row \(1\) is zero, because it is not among the declared nonzero rows. Hence
  \[
  (B\widetilde F)_1=0=(1)'=F_1'(\theta).
  \]
- Every remaining row is uniquely \(r=k+1\) for an integer \(1\leq k\leq d-1\). Its only nonzero column is \(s=k\), and the feature index map gives \(F_k(\theta)=\theta^{k-1}\). Therefore
  \[
  (B\widetilde F)_{k+1}
  =kF_k
  =k\theta^{k-1}
  =(\theta^k)'
  =F_{k+1}'(\theta).
  \]

Rows \(0\), \(1\), and \(k+1\) for \(1\leq k\leq d-1\) are exactly all rows \(0,1,\ldots,d\). Thus every coordinate agrees and
\[
\widetilde F'(\theta)=B\widetilde F(\theta)
\quad\text{for every }\theta\in\mathbb R.
\]
This verifies the closure identity of Assumption~\ref{assump:anchored-derivative-closure}; it was not imported as an unverified property of the monic tuple.

Because every entry of \(B\) is constant, its setting representation is
\[
B_{rs}(\theta)=b_{rs,0},
\qquad
b_{rs,0}=B_{rs},
\]
with no coefficient of positive degree. Hence the polynomial matrix degree is exactly \(m=0\). Since \(T_*^0=1\), the setting-defined coefficient height satisfies
\[
\begin{aligned}
\widehat\Lambda_{B,T}^{2}
&=\sum_{r=0}^{d}\sum_{s=0}^{d}
  \left(\sum_{\ell=0}^{0}\lvert b_{rs,\ell}\rvert T_*^\ell\right)^2\\
&=\sum_{r=0}^{d}\sum_{s=0}^{d}\lvert B_{rs}\rvert^2\\
&=\lVert B\rVert_{\mathrm F}^{2}\\
&=d^2+\sum_{k=1}^{d-1}k^2\\
&=\sum_{k=1}^{d}k^2.
\end{aligned}
\]
Taking the nonnegative square root proves the asserted certificate. In particular, neither \(T\) nor the location of \(J\) appears.

When \(d=1\), the range \(1\leq k\leq d-1\) is empty and
\[
B=\begin{pmatrix}0&1\\0&0\end{pmatrix}.
\]
Its row actions are \((B\widetilde F)_0=F_1=1=(\theta)'\) and \((B\widetilde F)_1=0=(1)'\), while the height calculation gives \(\widehat\Lambda_{B,T}^2=1=\sum_{k=1}^{1}k^2\).

### unit_003: proposition

**Proposition (Two-Pivot Coefficient Charts).** \(\label{prop:step-009-two-pivot-charts}\)

Statement:
Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, let \(d\geq2\), let \(J\subset\mathbb R\) be a bounded interval, and use the tuple and coefficient vector of Proposition~\ref{prop:step-009-monic-presentation}. Then
\[
E_1=J\cap\{\lvert\theta\rvert\leq1\},
\qquad
E_d=J\cap\{\lvert\theta\rvert>1\}
\]
is a measurable disjoint partition of \(J\), with \(\theta=\pm1\) assigned to \(E_1\). The pivot \(\alpha_0\) is legal on \(E_1\), the pivot \(\alpha_{d-1}\) is legal on \(E_d\), and the exact pivot-coordinate maps are
\[
T_1(\theta,\beta)
=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
\qquad
\beta=(\beta_1,\ldots,\beta_{d-1})\in[-R,R]^{d-1},
\]
and
\[
T_d(\theta,\beta)
=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1},
\qquad
\beta=(\beta_0,\ldots,\beta_{d-2})\in[-R,R]^{d-1}.
\]
Inserting the pivot values into their respective coefficient coordinates gives a pointwise zero of the same polynomial \(p_\alpha\).

Proof / justification:
Every interval is Borel. The set \(\{\lvert\theta\rvert\leq1\}\) is closed and the set \(\{\lvert\theta\rvert>1\}\) is open, so \(E_1\) and \(E_d\) are measurable. Their defining inequalities are complementary and disjoint, hence
\[
E_1\cap E_d=\varnothing,
\qquad
E_1\cup E_d=J.
\]
Both boundary points \(1\) and \(-1\) satisfy the weak inner inequality and therefore belong to \(E_1\) whenever they belong to \(J\).

The coefficient-to-feature index map of Proposition~\ref{prop:step-009-monic-presentation} sends \(\alpha_0\) to \(F_1=1\). Thus the inner pivot denominator is exactly one on all of \(E_1\). Solving
\[
0=\theta^d+\alpha_0+\sum_{k=1}^{d-1}\alpha_k\theta^k
\]
for \(\alpha_0\), and writing the remaining coefficient \(\alpha_k\) as \(\beta_k\), gives
\[
T_1(\theta,\beta)
=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k.
\]
The full coefficient insertion map is
\[
\Psi_1(\theta,\beta)
=\bigl(T_1(\theta,\beta),\beta_1,\ldots,\beta_{d-1}\bigr)
\in\mathbb R^d,
\]
and direct substitution verifies
\[
p_{\Psi_1(\theta,\beta)}(\theta)
=\theta^d+T_1(\theta,\beta)
+\sum_{k=1}^{d-1}\beta_k\theta^k
=0.
\]

On \(E_d\), the outer pivot \(\alpha_{d-1}\) multiplies
\[
F_d(\theta)=\theta^{d-1}.
\]
Because \(d\geq2\) and \(\lvert\theta\rvert>1\),
\(\lvert F_d(\theta)\rvert=\lvert\theta\rvert^{d-1}>1\), so this pivot is nonzero. Solving
\[
0=\theta^d+\sum_{k=0}^{d-2}\alpha_k\theta^k
+\alpha_{d-1}\theta^{d-1}
\]
for \(\alpha_{d-1}\), with \(\beta_k=\alpha_k\) for \(0\leq k\leq d-2\), gives
\[
\begin{aligned}
T_d(\theta,\beta)
&=-\frac{\theta^d}{\theta^{d-1}}
  -\sum_{k=0}^{d-2}\beta_k\frac{\theta^k}{\theta^{d-1}}\\
&=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}.
\end{aligned}
\]
All divisions are legal because \(\theta\neq0\) on \(E_d\). The full insertion map is
\[
\Psi_d(\theta,\beta)
=\bigl(\beta_0,\ldots,\beta_{d-2},T_d(\theta,\beta)\bigr)
\in\mathbb R^d.
\]
Multiplying the pivot formula by \(\theta^{d-1}\) yields
\[
T_d(\theta,\beta)\theta^{d-1}
=-\theta^d-\sum_{k=0}^{d-2}\beta_k\theta^k,
\]
and consequently
\[
p_{\Psi_d(\theta,\beta)}(\theta)
=\theta^d+\sum_{k=0}^{d-2}\beta_k\theta^k
+T_d(\theta,\beta)\theta^{d-1}
=0.
\]
The nonpivot input is the actual cube \([-R,R]^{d-1}\). The inserted pivot value may or may not lie in \([-R,R]\); the downstream chart indicator, not this deterministic specialization, handles that separate condition.

### unit_004: lemma

**Lemma (Inner-Region Chart Velocity).** \(\label{lem:step-009-inner-velocity}\)

Statement:
Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and Proposition~\ref{prop:step-009-two-pivot-charts}, let \(d\geq2\), \(\theta\in E_1\), and \(\beta=(\beta_1,\ldots,\beta_{d-1})\in[-R,R]^{d-1}\). Then
\[
\lvert\partial_\theta T_1(\theta,\beta)\rvert
\leq d+R\sum_{k=1}^{d-1}k
=d+\frac{Rd(d-1)}2.
\]

Proof / justification:
Term-by-term differentiation of the finite inner chart gives
\[
\partial_\theta T_1(\theta,\beta)
=-d\theta^{d-1}-\sum_{k=1}^{d-1}k\beta_k\theta^{k-1}.
\]
Here every exponent \(d-1\) and \(k-1\) is nonnegative. Because \(\theta\in E_1\) implies \(\lvert\theta\rvert\leq1\), and because \(\lvert\beta_k\rvert\leq R\), the triangle inequality gives every intermediate term explicitly:
\[
\begin{aligned}
\lvert\partial_\theta T_1(\theta,\beta)\rvert
&\leq d\lvert\theta\rvert^{d-1}
  +\sum_{k=1}^{d-1}k\lvert\beta_k\rvert\lvert\theta\rvert^{k-1}\\
&\leq d
  +R\sum_{k=1}^{d-1}k.
\end{aligned}
\]
At \(\theta=0\), the \(k=1\) factor is \(\lvert\theta\rvert^0=1\), while every term with a positive exponent vanishes, so the same calculation remains literal.

For completeness, the finite arithmetic sum follows by pairing the list \(1,\ldots,d-1\) with its reverse. Since \(k\mapsto d-k\) permutes \(\{1,\ldots,d-1\}\),
\[
\begin{aligned}
2\sum_{k=1}^{d-1}k
&=\sum_{k=1}^{d-1}k+\sum_{k=1}^{d-1}(d-k)\\
&=\sum_{k=1}^{d-1}\bigl(k+d-k\bigr)\\
&=\sum_{k=1}^{d-1}d\\
&=d(d-1).
\end{aligned}
\]
Therefore \(\sum_{k=1}^{d-1}k=d(d-1)/2\), which proves
\[
\lvert\partial_\theta T_1\rvert
\leq d+\frac{Rd(d-1)}2.
\]

### unit_005: lemma

**Lemma (Outer-Region Chart Velocity).** \(\label{lem:step-009-outer-velocity}\)

Statement:
Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and Proposition~\ref{prop:step-009-two-pivot-charts}, let \(d\geq2\), \(\theta\in E_d\), and \(\beta=(\beta_0,\ldots,\beta_{d-2})\in[-R,R]^{d-1}\). Then
\[
\lvert\partial_\theta T_d(\theta,\beta)\rvert
\leq1+R\sum_{m=1}^{d-1}\frac{m}{\lvert\theta\rvert^{m+1}}
\leq1+\frac{Rd(d-1)}2
\leq d+\frac{Rd(d-1)}2.
\]

Proof / justification:
Every power in the outer chart is defined because \(\lvert\theta\rvert>1\). Direct differentiation gives
\[
\begin{aligned}
\partial_\theta T_d(\theta,\beta)
&=-1-\sum_{k=0}^{d-2}\beta_k(k-d+1)\theta^{k-d}\\
&=-1+\sum_{k=0}^{d-2}(d-1-k)\beta_k\theta^{k-d}.
\end{aligned}
\]
Using \(\lvert\beta_k\rvert\leq R\) and the triangle inequality,
\[
\lvert\partial_\theta T_d(\theta,\beta)\rvert
\leq1+R\sum_{k=0}^{d-2}(d-1-k)\lvert\theta\rvert^{k-d}.
\]
Now set
\[
m=d-1-k.
\]
As \(k\) increases from \(0\) to \(d-2\), \(m\) decreases from \(d-1\) to \(1\), and
\[
k=d-1-m,
\qquad
k-d=-m-1.
\]
Reversing this finite order gives the exact reindexing
\[
\begin{aligned}
\sum_{k=0}^{d-2}(d-1-k)\lvert\theta\rvert^{k-d}
&=\sum_{m=1}^{d-1}m\lvert\theta\rvert^{-m-1}\\
&=\sum_{m=1}^{d-1}\frac{m}{\lvert\theta\rvert^{m+1}}.
\end{aligned}
\]
This is the only use of negative powers. Since \(\lvert\theta\rvert>1\), every \(m\geq1\) satisfies
\[
0<\frac1{\lvert\theta\rvert^{m+1}}<1.
\]
Therefore
\[
\lvert\partial_\theta T_d(\theta,\beta)\rvert
\leq1+R\sum_{m=1}^{d-1}m.
\]
Again displaying the entire finite-sum calculation, the reverse-list pairing gives
\[
2\sum_{m=1}^{d-1}m
=\sum_{m=1}^{d-1}\bigl(m+d-m\bigr)
=\sum_{m=1}^{d-1}d
=d(d-1),
\]
so
\[
\lvert\partial_\theta T_d(\theta,\beta)\rvert
\leq1+\frac{Rd(d-1)}2.
\]
Finally, \(d\geq2\) implies \(1\leq d\), and hence
\[
1+\frac{Rd(d-1)}2
\leq d+\frac{Rd(d-1)}2.
\]
For negative outer \(\theta\), integer powers may change sign inside the derivative, but
\(\lvert\theta^{k-d}\rvert=\lvert\theta\rvert^{k-d}\); the displayed absolute-value calculation is unchanged. No upper bound on \(\lvert\theta\rvert\) was used.

### unit_006: proposition

**Proposition (Global Linear-Case Chart).** \(\label{prop:step-009-linear-case}\)

Statement:
Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and Proposition~\ref{prop:step-009-monic-presentation} specialized to \(d=1\), let \(J\subset\mathbb R\) be bounded and let \(\alpha_0\in[-R,R]\). Then, with the explicit zero-dimensional convention
\[
[-R,R]^0=\{()\},
\]
\[
\widetilde F(\theta)=(\theta,1),
\qquad
p_{\alpha_0}(\theta)=\theta+\alpha_0,
\]
the sole coefficient \(\alpha_0\) is a legal pivot on every \(\theta\in J\), the zero-dimensional-beta chart is
\[
T_1(\theta)=-\theta,
\]
and
\[
\lvert\partial_\theta T_1(\theta)\rvert=1
=d+\frac{Rd(d-1)}2.
\]

Proof / justification:
For \(d=1\), Proposition~\ref{prop:step-009-monic-presentation} gives the augmented tuple \((F_0,F_1)=(\theta,1)\), the actual coefficient vector \((\alpha_0)\in[-R,R]^1\), and
\[
p_{\alpha_0}(\theta)=\theta+\alpha_0.
\]
The only random feature is the constant \(F_1=1\), so it is nonzero on all of \(J\). Solving the root equation gives \(\alpha_0=-\theta\).

The nonpivot coordinate set has dimension \(d-1=0\). Under the standard product convention,
\[
[-R,R]^0=\{()\},
\]
so there is one empty beta tuple and no beta sum. Thus the full coefficient chart is simply
\[
\Psi_1(\theta)=\bigl(T_1(\theta)\bigr)=(-\theta),
\]
and pointwise
\[
p_{\Psi_1(\theta)}(\theta)=\theta-\theta=0.
\]
Direct differentiation gives \(\partial_\theta T_1=-1\) and hence \(\lvert\partial_\theta T_1\rvert=1\). Since \(d(d-1)/2=0\) at \(d=1\), this is exactly the common cap \(d+Rd(d-1)/2=1\). Lemma~\ref{lem:step-009-derivative-shift} separately verifies that the matrix is \(2\)-by-\(2\), has only \(B_{0,1}=1\), and has height one.

### unit_007: claim

**Claim (Location-Free Boundary and Index Closure).** \(\label{claim:step-009-boundary-index-closure}\)

Statement:
Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, let \(d\geq1\), let \(J\subset\mathbb R\) be any bounded interval, and use Proposition~\ref{prop:step-009-monic-presentation}, Lemma~\ref{lem:step-009-derivative-shift}, Proposition~\ref{prop:step-009-two-pivot-charts} when \(d\geq2\), Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity} when \(d\geq2\), and Proposition~\ref{prop:step-009-linear-case} when \(d=1\). Then all chart, certificate, and object conclusions remain valid at \(\theta=0\), \(\theta=1\), \(\theta=-1\), negative outer \(\theta\), empty partition pieces, \(d=1\), and \(d=2\). They hold for every location of \(J\), use exactly \(d\) lower-coordinate inputs and a \((d+1)\)-square augmented matrix, and contain neither a singular/randomized leading coordinate nor a bound depending on \(\sup_{\theta\in J}\lvert\theta\rvert\).

Proof / justification:
At \(\theta=0\), the point is in \(E_1\) for \(d\geq2\), and the pivot is the literal constant \(F_1=1\). The inner formula contains only nonnegative powers, and Lemma~\ref{lem:step-009-inner-velocity} explicitly treats the exponent-zero term. At \(\theta=1\) and \(\theta=-1\), the weak inequality \(\lvert\theta\rvert\leq1\) again assigns the point to \(E_1\), so no negative power is evaluated at the transition.

For negative \(\theta\) with \(\lvert\theta\rvert>1\), the outer pivot \(\theta^{d-1}\) is nonzero. Proposition~\ref{prop:step-009-two-pivot-charts} derives the chart algebraically at that same signed \(\theta\), while Lemma~\ref{lem:step-009-outer-velocity} takes absolute values only after differentiation and therefore retains all signs correctly.

Either \(E_1\) or \(E_d\) may be empty. The set identities
\[
E_1\cap E_d=\varnothing,
\qquad
E_1\cup E_d=J
\]
remain valid, and a chart assertion on an empty cell is vacuous. If \(J\) itself is empty, both cells are empty and every pointwise assertion is vacuous. If \(J\) lies wholly in one region, only that region's chart is active.

The case \(d=1\) is closed by Proposition~\ref{prop:step-009-linear-case}. For the first genuinely two-pivot case \(d=2\), every index can be inspected explicitly:
\[
\widetilde F=(\theta^2,1,\theta),
\qquad
B=\begin{pmatrix}
0&0&2\\
0&0&0\\
0&1&0
\end{pmatrix},
\qquad
\widehat\Lambda_{B,T}=\sqrt{2^2+1^2}=\sqrt5.
\]
The two charts and their derivatives are
\[
T_1(\theta,\beta_1)=-\theta^2-\beta_1\theta,
\qquad
\partial_\theta T_1=-2\theta-\beta_1,
\]
and
\[
T_2(\theta,\beta_0)=-\theta-\beta_0\theta^{-1},
\qquad
\partial_\theta T_2=-1+\beta_0\theta^{-2}.
\]
Consequently, on their respective regions,
\[
\lvert\partial_\theta T_1\rvert\leq2+R,
\qquad
\lvert\partial_\theta T_2\rvert
\leq1+\frac{R}{\lvert\theta\rvert^2}
\leq1+R
\leq2+R.
\]
Thus the index conventions and bounds agree at \(d=2\) without a missing row, feature, or coefficient.

For any bounded interval \(J\), Assumption~\ref{assump:parameter-regime} can be instantiated on a compact \(\Theta\supseteq J\) inside some \([-T,T]\). Lemma~\ref{lem:step-009-derivative-shift} has \(m=0\), so \(T_*^0=1\) eliminates \(T\) from the certificate. The inner velocity uses only \(\lvert\theta\rvert\leq1\), and the outer velocity uses reciprocal powers bounded by one on \(\lvert\theta\rvert>1\). Hence the bounds do not use \(\sup_{\theta\in J}\lvert\theta\rvert\), even when the location of \(J\) varies without a common bound across problem instances.

Finally, Proposition~\ref{prop:step-009-monic-presentation} maps coefficient indices \(k=0,\ldots,d-1\) bijectively to feature indices \(1,\ldots,d\), and Lemma~\ref{lem:step-009-derivative-shift} indexes the augmented matrix by \(0,\ldots,d\). Thus the coefficient cube is exactly \([-R,R]^d\), each beta cube has dimension \(d-1\), and the matrix has size \((d+1)\)-by-\((d+1)\). The leading coefficient one belongs to deterministic \(F_0=\theta^d\); no extra random coordinate, augmented density, or singular law is introduced.

## Boundary Audit

Claim~\ref{claim:step-009-boundary-index-closure} supplies the complete audit. In particular:

- \(\theta=0\) uses the constant inner pivot, and no negative power is evaluated.
- \(\theta=1\) and \(\theta=-1\) are both assigned to \(E_1\) by the weak inequality.
- Negative outer \(\theta\) is legal because \(\theta\neq0\), and the bound uses \(\lvert\theta\rvert\).
- Empty \(E_1\), empty \(E_d\), an empty \(J\), and an interval lying wholly in either region require no modification.
- Proposition~\ref{prop:step-009-linear-case} handles \(d=1\) with \([-R,R]^0=\{()\}\); Claim~\ref{claim:step-009-boundary-index-closure} displays the complete \(d=2\) matrix and both charts.
- Proposition~\ref{prop:step-009-monic-presentation} verifies the exact pointwise polynomial equality and actual lower-coefficient cube; Lemma~\ref{lem:step-009-derivative-shift} verifies every augmented row and column.
- The deterministic leading coefficient is never placed in \(\alpha\), and no density on \(d+1\) coordinates is asserted.
- The certificate and velocities are independent of the location of \(J\); no factor involving \(\sup_{\theta\in J}\lvert\theta\rvert\) occurs.

## Target-Step Assembly

Proposition~\ref{prop:step-009-monic-presentation} supplies, for every \(d\geq1\), the exact augmented object
\[
\widetilde F=(\theta^d,1,\theta,\ldots,\theta^{d-1}),
\qquad
F_0+\langle\alpha,F\rangle=p_\alpha,
\]
with
\[
q=0,
\qquad
M=0,
\qquad
\Delta=d,
\qquad
N=d,
\qquad
A=(2R)^d\kappa,
\qquad
F_1=1,
\]
and with precisely \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\) random. Lemma~\ref{lem:step-009-derivative-shift} adds \(m=0\), proves the coefficient-by-coefficient identity \(\widetilde F'=B\widetilde F\), proves that the only nonzero entries are
\[
B_{0,d}=d,
\qquad
B_{k+1,k}=k\quad(1\leq k\leq d-1),
\]
and evaluates the exact setting-defined Euclidean/Frobenius certificate as
\[
\widehat\Lambda_{B,T}
=\left(\sum_{k=1}^{d}k^2\right)^{1/2}.
\]

For \(d\geq2\), Proposition~\ref{prop:step-009-two-pivot-charts} supplies the measurable disjoint partition with \(\lvert\theta\rvert=1\) on the inner side, proves both pivots legal, and gives
\[
T_1(\theta,\beta)
=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
\qquad
T_d(\theta,\beta)
=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}.
\]
Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity} prove, respectively,
\[
\lvert\partial_\theta T_1\rvert
\leq d+\frac{Rd(d-1)}2
\quad\text{on }E_1,
\]
and
\[
\lvert\partial_\theta T_d\rvert
\leq1+R\sum_{m=1}^{d-1}\frac{m}{\lvert\theta\rvert^{m+1}}
\leq1+\frac{Rd(d-1)}2
\leq d+\frac{Rd(d-1)}2
\quad\text{on }E_d.
\]
Proposition~\ref{prop:step-009-linear-case} gives the same common cap for \(d=1\), using the global chart \(T_1=-\theta\). Defining the downstream-facing deterministic cap only after these derivations,
\[
V_d:=d+\frac{Rd(d-1)}2,
\]
all prescribed chart velocities are at most \(V_d\). Claim~\ref{claim:step-009-boundary-index-closure} closes every requested boundary, sign, dimension, empty-cell, interval-location, and leading-coordinate regime.

These named results prove exactly the accepted target row. The exported interface is only the monic object, its Balcan descriptor tuple, its constant derivative-shift matrix and coefficient-height certificate, its legal pivot partition and chart formulas, and its velocity caps. No beta-volume integration, density use, area-formula invocation, root theorem, probability conclusion, or final-theorem assembly occurs here.

## Explicit Rate Audit

- Exposed variables: \(d\), \(R\), \(\kappa\) through the exact identity \(A=(2R)^d\kappa\), the matrix entries, \(T\) through the setting's certificate definition, the bounded interval \(J\), the scalar \(\theta\), and the exact deterministic cap \(V_d=d+Rd(d-1)/2\). The disclosed format values are \(q=M=m=0\) and \(\Delta=N=d\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d\), \(R\), \(\kappa\), \(T\), the location of \(J\), coefficient correlations, a pivot threshold, a leading-coordinate approximation, or any undeclared quantity.
- Fixed quantities: For each specialization, \(d,R,\kappa\), the explicit tuple, the lower-coefficient cube, the constant matrix \(B\), and a chosen compact \(\Theta\supseteq J\) are fixed. The displayed conclusions hold pointwise for every admissible chart input.
- Probability mode: Deterministic. No law, density, event probability, expectation, confidence level, or probability conversion is used.
- Horizon mode: Pointwise on each of the two measurable cells for every bounded \(J\), uniformly with respect to the location of \(J\). There is no integration, limiting operation, or all-time recursion.
- Norm mode: Scalar absolute value for chart velocities, the Euclidean coefficient convention, and the exact setting-defined Frobenius/coefficient-height convention for \(B\).
- Admissibility conditions and auxiliary tolerances: \(d\geq1\), \(R>0\), bounded \(J\), and beta coordinates in their actual cube. For \(d\geq2\), the only regional conditions are \(\lvert\theta\rvert\leq1\) for the inner chart and \(\lvert\theta\rvert>1\) for the outer chart. There is no auxiliary tolerance or pivot margin.
- Term absorption or simplification inequalities:
  \[
  \sum_{k=1}^{d-1}k
  =\sum_{m=1}^{d-1}m
  =\frac{d(d-1)}2,
  \]
  \[
  \sum_{m=1}^{d-1}\frac{m}{\lvert\theta\rvert^{m+1}}
  \leq\sum_{m=1}^{d-1}m
  =\frac{d(d-1)}2
  \quad(\lvert\theta\rvert>1),
  \]
  and
  \[
  1+\frac{Rd(d-1)}2
  \leq d+\frac{Rd(d-1)}2
  \quad(d\geq2).
  \]
  Each inequality is proved in the named velocity lemmas; no term is hidden or absorbed by prose.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: The proof exports exactly the deterministic presentation/certificate/pivot/velocity inputs needed by the downstream affine-monic wrapper. It does not integrate beta volume, apply a density cap, or state the resulting probability inequality.
- Baseline-reduction check, if applicable: R1 is preserved exactly because \(m=0\) makes \(T_*^0=1\) and yields \(\widehat\Lambda_{B,T}=(\sum_{k=1}^d k^2)^{1/2}\) with no \(T\)-loss. R4 is preserved exactly because the object is \(p_\alpha\) with only the \(d\) lower coefficients random, the prescribed charts and common velocity \(V_d\) are literal, and no independent polynomial-root result or randomized leading coordinate is introduced. The accepted baseline path remains: this deterministic package is consumed by the named current-notation wrapper, which alone combines it with the common affine chart theorem before final assembly.
- Workflow producer-consumer path: As audit metadata, primitive monic data -> the named results in `step_009` -> the named complete current-notation wrapper in `step_010` -> dependency-only assembly in `step_012`. The step IDs are not used as mathematical proof authority.
- Progress-type audit: `progress_type=full` is preserved. This local artifact proves only its assigned deterministic specialization package and does not claim the downstream probability bound or the full theorem prematurely.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing setting-derived objects:** \(d,J,R,\kappa,A,N,q,M,\Delta,m,T,T_*\), the output polynomials \(Q_i\), \(F_0,F,\widetilde F\), \(\alpha\), \(p_\alpha\), \(B\), and \(\widehat\Lambda_{B,T}\). Their meanings are the setting's meanings under the explicit monic specialization; no symbol is imported from another branch or prior attempt.
- **Public-facing derived objects:** The partition cells \(E_1,E_d\), pivot maps \(T_1,T_d\), and velocity cap \(V_d=d+Rd(d-1)/2\). Proposition~\ref{prop:step-009-two-pivot-charts} proves the partition and chart formulas; Lemmas~\ref{lem:step-009-inner-velocity}, \ref{lem:step-009-outer-velocity}, and Proposition~\ref{prop:step-009-linear-case} prove the cap.
- **Appendix-local objects:** The full insertion maps \(\Psi_1,\Psi_d\) and the convention \([-R,R]^0=\{()\}\). They expose the exact coefficient-coordinate meaning and pointwise root identity but need not enlarge the downstream theorem interface.
- **Proof-local objects:** The beta coordinate lists in each chart derivation, the dummy indices \(i,k,r,s\), the index map \(k\mapsto k+1\), matrix coefficient notation \(b_{rs,0}\), and the outer reindexing variable \(m=d-1-k\). Each is introduced only for its displayed derivation and is not exported.
- **Constant provenance:** \(A=(2R)^d\kappa\) is a direct specialization of the setting definition. The matrix entries are explicitly defined. The height is proved by Lemma~\ref{lem:step-009-derivative-shift}. The two regional velocity bounds are proved by Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity}; the \(d=1\) value is proved by Proposition~\ref{prop:step-009-linear-case}. No hidden or freely chosen constant occurs.
- **Assumption provenance:** The parameter and empty-chain conditions are primitive. The anchor and derivative-closure identity for the generated monomial tuple are verified in this step by Proposition~\ref{prop:step-009-monic-presentation} and Lemma~\ref{lem:step-009-derivative-shift}; they are not assumed circularly. Measurability, pivot legality, chart identities, velocity boundedness, and boundary validity are all proved locally. There are no derived invariants from dependencies and no local conditional hypotheses.
- **Distributional boundary:** The deterministic cube \([-R,R]^d\) and \(A=(2R)^d\kappa\) are recorded because they are part of the accepted descriptor package. Assumption `assump:cube-density-laws` is not used: no density, independence, correlation argument, beta-volume calculation, or probability conclusion appears.
- **Diagnostic boundary:** No global diagnostic was read. The consumed sketch-attempt-1 live proof/review and their archived copies were not used as current evidence or mathematical authority, and `proof_history` content was not read. The local identities, labels, units, and assembly were regenerated for sketch attempt 2.
- **Baseline and scope boundary:** The exact R1/R4 deterministic package is preserved for the sole direct downstream wrapper. This proof does not invoke `step_003`, does not prove the downstream probability bound, and does not assemble any theorem beyond the assigned specialization.
