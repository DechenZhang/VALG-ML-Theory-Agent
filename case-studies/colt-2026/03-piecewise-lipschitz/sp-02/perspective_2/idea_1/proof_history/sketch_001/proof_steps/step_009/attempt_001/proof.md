# Proof Step

## Step Identity

- Branch path: `perspective_2/idea_1`
- Sketch attempt: 1
- Step ID: `step_009`
- Unit attempt: 1
- Run mode: `interactive`
- Target mode: Exact-goal, unconditional, full-progress theorem on the declared derivative-closed subclass
- Progress type: `full`
- Binding setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Binding proof sketch SHA-256: `8b5b22e5000e1c5641e2b5baf0c4d48244ce3389941b0cc9857b47510bbf6c93`
- Binding proof-sketch review SHA-256: `4288579fa3b8583b31faa2c220f5071879da72f06ac3a1dd3d1889cb1096cb7c`
- Binding proof-sketch review status: `ACCEPTED`
- Diagnostic global proof SHA-256: `c7529eb3ef73cdb215c7ecfb9bad5fdfee639d9eea3c0d91060b4a0aaac03fb0`
- Binding global-proof review SHA-256: `cd76bd4102c0e811947104173dcc29cd325f2082ae53865d6c8bb25b20b9bb4e`
- Binding global-proof review status: `ACCEPTED`
- Rate-objective role: Preserve the augmented-monomial specialization in R1 and produce exactly the deterministic object/certificate/pivot/velocity inputs assigned to R4.

## Target Step Claim

- Intended claim: For every \(d,J\), verify the augmented monomial \(q=0\) presentation, constant derivative-shift matrix and exact certificate, prescribed pivot partition, both chart formulas and velocity bounds, and the \(d=1\) branch.
- Depends on: None.
- Assumptions used: Primitive specialization of `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-derivative-closure`.
- Technical challenge: Preserve the actual lower-coefficient object, control negative powers on \(\lvert\theta\rvert>1\), and audit \(q,M,\Delta,N,m,A,\widehat\Lambda\) without invoking the baseline theorem.
- Intended proof tool or cited result: Direct matrix multiplication, chart solving/differentiation, and finite-sum identities.
- Output target: Exact monic object/certificate/pivot/velocity package.
- Rate objective: R1 and R4: exact specialization data and \(V_d\).
- Review status in the accepted sketch row: `PENDING`.

The exact package proved below is for every integer \(d\geq1\), every bounded interval \(J\subset\mathbb R\), and the coefficient vector

\[
\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d.
\]

The leading coefficient of \(\theta^d\) is deterministic and is never appended to this vector.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:parameter-regime}, specialized to \(N=d\geq1\), \(q=0\), \(m=0\), \(R>0\), \(0<\kappa<\infty\), and a compact parameter interval containing the bounded interval \(J\). Boundedness of \(J\) permits such a compact interval at any location on the real line.
  - Assumption~\ref{assump:balcan-common-chain}, specialized to the empty chain and the output polynomials \(Q_0(\theta)=\theta^d\) and \(Q_{k+1}(\theta)=\theta^k\) for \(0\leq k\leq d-1\).
  - Assumption~\ref{assump:anchored-derivative-closure}, specialized to the anchor \(Q_1\equiv1\). The required closure identity is discharged directly in Proposition~\ref{prop:step-009-monomial-certificate}; it is not used as a substitute for the matrix calculation.
- Accepted dependency step proof/review artifacts: None.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None. Membership of a displayed \(\beta\) in its coefficient cube and membership of \(\theta\) in a displayed pivot cell are explicit domains of the corresponding local result, not assumed generated invariants.
- Unused setting condition: Assumption~\ref{assump:cube-density-laws} is not used. This step is deterministic and proves no probability bound.

## Local Lemma Map

Atomic step = no. The matrix certificate, chart identities, two region-specific derivative bounds, the degree-one branch, and the boundary/interface audit are independently checkable calculations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure} in the stated monomial specialization, for every integer \(d\geq1\) the augmented tuple has \(q=M=0\), \(\Delta=N=d\), \(m=0\), \(A=(2R)^d\kappa\), anchor \(F_1=1\), exact identity \(F_0+\langle\alpha,F\rangle=p_\alpha\), constant shift matrix \(B_{0,d}=d\), \(B_{k+1,k}=k\) for \(1\leq k\leq d-1\), and certificate \(\widehat\Lambda_{B,T}=(\sum_{k=1}^d k^2)^{1/2}\). | Establishes the exact object, dimensions, derivative closure, certificate, and deterministic-leading-coordinate interface. |
| unit_002 | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and Proposition~\ref{prop:step-009-monomial-certificate}, if \(d\geq2\), \(J\) is bounded, and each nonpivot tuple belongs to \([-R,R]^{d-1}\), then \(E_1=J\cap\{\lvert\theta\rvert\leq1\}\), \(E_d=J\cap\{\lvert\theta\rvert>1\}\), and \(E_j=\varnothing\) for \(2\leq j\leq d-1\) form a measurable disjoint legal pivot partition, and solving for \(\alpha_0\) or \(\alpha_{d-1}\) gives exactly the stated maps \(T_1\) and \(T_d\), each pointwise representing a root of the original \(p_\alpha\). | Establishes the prescribed pivots, full indexed partition, chart formulas, and same-object coefficient mapping. |
| unit_003 | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, Proposition~\ref{prop:step-009-monomial-certificate}, and Lemma~\ref{lem:step-009-two-pivot-charts}, if \(d\geq2\), \(\theta\in E_1\), and \(\beta\in[-R,R]^{d-1}\), then \(\lvert\partial_\theta T_1\rvert\leq d+Rd(d-1)/2\). | Proves the inner velocity cap with the complete arithmetic-sum calculation and the \(\theta=0\) boundary. |
| unit_004 | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, Proposition~\ref{prop:step-009-monomial-certificate}, and Lemma~\ref{lem:step-009-two-pivot-charts}, if \(d\geq2\), \(\theta\in E_d\), and \(\beta\in[-R,R]^{d-1}\), then \(\lvert\partial_\theta T_d\rvert\leq1+Rd(d-1)/2\leq d+Rd(d-1)/2\). | Proves the outer velocity cap using negative powers only where \(\lvert\theta\rvert>1\), including negative outer \(\theta\). |
| unit_005 | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and Proposition~\ref{prop:step-009-monomial-certificate}, if \(d=1\), then the sole pivot \(\alpha_0\) is legal on all of \(J\), \(T_1(\theta)=-\theta\), the chart is exactly \(p_{T_1(\theta)}(\theta)=0\), and \(\lvert\partial_\theta T_1\rvert=1\). | Proves the separate degree-one branch, including the zero-dimensional nonpivot coordinate convention. |
| unit_006 | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, Proposition~\ref{prop:step-009-monomial-certificate}, Lemmas~\ref{lem:step-009-two-pivot-charts}, \ref{lem:step-009-inner-velocity}, and \ref{lem:step-009-outer-velocity} when \(d\geq2\), and Lemma~\ref{lem:step-009-degree-one} when \(d=1\), the package remains valid at \(\theta=0\), at \(\lvert\theta\rvert=1\), for negative outer \(\theta\), for empty pivot cells, for \(d=1\) and \(d=2\), and for bounded \(J\) at arbitrary location, with exact coefficient dimension and no singular or randomized leading coordinate. | Consolidates every required boundary and downstream object-interface audit without adding a probability conclusion. |

## Cited Result Applications

No paper result, external theorem, standard root theorem, or accepted dependency is used. In particular, no independent polynomial-root theorem enters this step. The only later-used results are the direct local results proved below.

- Proposition~\ref{prop:step-009-monomial-certificate} (Augmented monomial closure certificate): its inputs are Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, specialized to the explicit monomial outputs. Its conclusion is the exact presentation, pointwise polynomial identity, constant shift matrix, and coefficient-height certificate. The primitive conditions are discharged in its statement and its conclusion is used by every subsequent local result and by the target-step assembly.
- Lemma~\ref{lem:step-009-two-pivot-charts} (Legal two-pivot monomial charts): its inputs are Proposition~\ref{prop:step-009-monomial-certificate}, \(d\geq2\), a bounded interval \(J\), and the displayed coefficient-cube domains. Its conclusion is the measurable legal partition and the two exact chart identities. It is used by Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity}, Proposition~\ref{prop:step-009-boundary-interface}, and the target-step assembly.
- Lemma~\ref{lem:step-009-inner-velocity} (Inner monomial chart velocity): its inputs are the explicit inner cell and cube domain supplied by Lemma~\ref{lem:step-009-two-pivot-charts}. Its conclusion is the exact inner cap \(d+Rd(d-1)/2\). It is used by Proposition~\ref{prop:step-009-boundary-interface} and the target-step assembly.
- Lemma~\ref{lem:step-009-outer-velocity} (Outer monomial chart velocity): its inputs are the explicit outer cell and cube domain supplied by Lemma~\ref{lem:step-009-two-pivot-charts}. Its conclusion is the exact outer cap and its domination by \(d+Rd(d-1)/2\). It is used by Proposition~\ref{prop:step-009-boundary-interface} and the target-step assembly.
- Lemma~\ref{lem:step-009-degree-one} (Degree-one monic chart): its input is the \(d=1\) specialization of Proposition~\ref{prop:step-009-monomial-certificate}. Its conclusion is the sole exact chart and unit velocity. It is used by Proposition~\ref{prop:step-009-boundary-interface} and the target-step assembly.
- Proposition~\ref{prop:step-009-boundary-interface} (Boundary-complete monic chart interface): its inputs are the preceding proposition and lemmas. Its conclusion is the complete boundary, dimension, location, and deterministic-leading-coordinate audit. It is used in the target-step assembly.

The two finite-sum identities used in the velocity caps are derived explicitly inside Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity}; they are not imported results.

## Local Derivation

### unit_001: proposition

**Proposition (Augmented monomial closure certificate).**
\(\label{prop:step-009-monomial-certificate}\)

Statement:
Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, specialized as follows, let \(d\geq1\) be an integer and let \(J\subset\mathbb R\) be a bounded interval. Set

\[
F_0(\theta)=\theta^d,
\qquad
F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),
\]

and \(F=(F_1,\ldots,F_d)\). Then this is an empty-chain presentation with

\[
q=0,
\quad M=0,
\quad \Delta=d,
\quad N=d,
\quad m=0,
\quad A=(2R)^d\kappa,
\]

anchor \(F_1\equiv1\), and, for every
\(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\),

\[
F_0(\theta)+\langle\alpha,F(\theta)\rangle
=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
=p_\alpha(\theta)
\qquad\text{for every }\theta\in\mathbb R.
\]

Moreover, the constant \((d+1)\)-by-\((d+1)\) matrix whose only nonzero entries are

\[
B_{0,d}=d,
\qquad
B_{k+1,k}=k\quad(1\leq k\leq d-1)
\]

satisfies \(\widetilde F'=B\widetilde F\) and has exact certificate

\[
\widehat\Lambda_{B,T}
=\left(\sum_{k=1}^{d}k^2\right)^{1/2}.
\]

The coefficient of \(F_0=\theta^d\) is the deterministic number one and is not a coordinate of the \(d\)-dimensional vector \(\alpha\).

Proof / justification:

Because \(J\) is bounded, one may choose a nondegenerate compact interval \(\Theta\) containing \(J\), a finite \(T>0\) with \(\Theta\subseteq[-T,T]\), and the open domain \(U=\mathbb R\). There is no Pfaffian chain when \(q=0\), so the convention in the setting gives \(M=0\). Take

\[
Q_0(\theta)=\theta^d,
\qquad
Q_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1).
\]

The largest output degree is \(d\), hence \(\Delta=d\). There are exactly \(d\) random-coordinate outputs \(F_1,\ldots,F_d\), hence \(N=d\), and the definition in the setting gives

\[
A=(2R)^N\kappa=(2R)^d\kappa.
\]

Since \(Q_1=1\), the required anchor is exactly \(F_1=1\). The displayed pointwise equality follows by the coordinate correspondence

\[
\alpha_k\longleftrightarrow F_{k+1}(\theta)=\theta^k,
\qquad 0\leq k\leq d-1.
\]

Thus the random vector has exactly the lower-coefficient indices \(0,\ldots,d-1\); no coordinate multiplies \(F_0\).

It remains to calculate the derivative matrix rather than assume it. In the coordinate ordering

\[
\widetilde F=(F_0,F_1,\ldots,F_d)
=(\theta^d,1,\theta,\ldots,\theta^{d-1}),
\]

the zeroth row of \(B\widetilde F\) is

\[
(B\widetilde F)_0=dF_d=d\theta^{d-1}=F_0'.
\]

The first row is zero, so

\[
(B\widetilde F)_1=0=F_1'.
\]

For every \(1\leq k\leq d-1\), row \(k+1\) gives

\[
(B\widetilde F)_{k+1}=kF_k
=k\theta^{k-1}
=F_{k+1}'.
\]

These are all \(d+1\) rows, so \(\widetilde F'=B\widetilde F\) pointwise on \(U\). The matrix is constant, hence \(m=0\). With \(T_*:=\max\{1,T\}\), the certificate definition therefore reduces exactly to

\[
\begin{aligned}
\widehat\Lambda_{B,T}^2
&=\sum_{r=0}^{d}\sum_{s=0}^{d}
  \left(\sum_{\ell=0}^{0}\lvert b_{rs,\ell}\rvert T_*^\ell\right)^2\\
&=\sum_{r=0}^{d}\sum_{s=0}^{d}\lvert b_{rs,0}\rvert^2\\
&=d^2+\sum_{k=1}^{d-1}k^2\\
&=\sum_{k=1}^{d}k^2.
\end{aligned}
\]

Taking the nonnegative square root proves the asserted exact certificate. In particular, because \(T_*^0=1\), neither the certificate nor any matrix entry depends on the location of \(J\) or on the size of the containing \(T\). This also covers \(d=1\): the sole nonzero matrix entry is \(B_{0,1}=1\), and the empty second family of entries contributes zero.

### unit_002: lemma

**Lemma (Legal two-pivot monomial charts).**
\(\label{lem:step-009-two-pivot-charts}\)

Statement:
Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and under Proposition~\ref{prop:step-009-monomial-certificate}, suppose \(d\geq2\) and \(J\subset\mathbb R\) is bounded. Define

\[
E_1:=J\cap\{\theta:\lvert\theta\rvert\leq1\},
\qquad
E_d:=J\cap\{\theta:\lvert\theta\rvert>1\}.
\]

For every \(j\) with \(2\leq j\leq d-1\), set \(E_j:=\varnothing\). Then \((E_j)_{j=1}^d\) is a measurable disjoint partition of \(J\). The pivots \(F_1=1\) on \(E_1\) and \(F_d=\theta^{d-1}\) on \(E_d\) are nonzero; all other pivot obligations are vacuous. With nonpivot coordinates indexed by the corresponding lower-coefficient indices, the chart maps are exactly

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

Inserting \(T_1\) as \(\alpha_0\), or \(T_d\) as \(\alpha_{d-1}\), gives pointwise equality to a root of the original polynomial \(p_\alpha\), and every root with coefficients in \([-R,R]^d\) has the displayed solved pivot value on its assigned cell.

Proof / justification:

The sets \(\{\lvert\theta\rvert\leq1\}\) and \(\{\lvert\theta\rvert>1\}\) are Borel, so their intersections with the interval \(J\) are measurable. They are disjoint and partition \(\mathbb R\). The intermediate cells are empty and hence measurable. Therefore

\[
E_i\cap E_j=\varnothing\quad(i\neq j),
\qquad
\bigsqcup_{j=1}^{d}E_j=J.
\]

When \(d=2\), there is no intermediate index and this convention adds no cell.

The transition points \(\theta=1\) and \(\theta=-1\) lie in \(E_1\), not in \(E_d\). On \(E_1\), Proposition~\ref{prop:step-009-monomial-certificate} gives the constant pivot

\[
F_1(\theta)=1\neq0.
\]

On \(E_d\),

\[
\lvert F_d(\theta)\rvert
=\lvert\theta^{d-1}\rvert
=\lvert\theta\rvert^{d-1}>1,
\]

so this pivot is also nonzero, including when \(\theta<-1\).

On \(E_1\), solving

\[
0=\theta^d+\alpha_0+\sum_{k=1}^{d-1}\alpha_k\theta^k
\]

for \(\alpha_0\), while writing the other coordinates as \(\beta_k=\alpha_k\), gives the asserted \(T_1\). If

\[
\Psi_1(\theta,\beta)
=(T_1(\theta,\beta),\beta_1,\ldots,\beta_{d-1}),
\]

then the exact pointwise check is

\[
\begin{aligned}
p_{\Psi_1(\theta,\beta)}(\theta)
&=\theta^d+T_1(\theta,\beta)
  +\sum_{k=1}^{d-1}\beta_k\theta^k\\
&=\theta^d-\theta^d
  -\sum_{k=1}^{d-1}\beta_k\theta^k
  +\sum_{k=1}^{d-1}\beta_k\theta^k\\
&=0.
\end{aligned}
\]

Conversely, the root equation has coefficient one on \(\alpha_0\), so it uniquely forces \(\alpha_0=T_1(\theta,(\alpha_k)_{k=1}^{d-1})\).

On \(E_d\), division by the nonzero pivot \(\theta^{d-1}\) is legitimate. Solving

\[
0=\theta^d+\sum_{k=0}^{d-2}\alpha_k\theta^k
  +\alpha_{d-1}\theta^{d-1}
\]

for \(\alpha_{d-1}\), while writing \(\beta_k=\alpha_k\), gives

\[
\alpha_{d-1}
=-\frac{\theta^d}{\theta^{d-1}}
 -\sum_{k=0}^{d-2}\beta_k\frac{\theta^k}{\theta^{d-1}}
=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}
=T_d(\theta,\beta).
\]

If

\[
\Psi_d(\theta,\beta)
=(\beta_0,\ldots,\beta_{d-2},T_d(\theta,\beta)),
\]

then

\[
\begin{aligned}
p_{\Psi_d(\theta,\beta)}(\theta)
&=\theta^d+\sum_{k=0}^{d-2}\beta_k\theta^k
  +T_d(\theta,\beta)\theta^{d-1}\\
&=\theta^d+\sum_{k=0}^{d-2}\beta_k\theta^k
  -\theta\theta^{d-1}
  -\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}\theta^{d-1}\\
&=\theta^d+\sum_{k=0}^{d-2}\beta_k\theta^k
  -\theta^d-\sum_{k=0}^{d-2}\beta_k\theta^k\\
&=0.
\end{aligned}
\]

The same division shows that any root on \(E_d\) uniquely forces this pivot value. Both maps therefore act on the original \(d\) lower coefficients and solve the original polynomial equation; neither introduces a leading-coordinate variable.

### unit_003: lemma

**Lemma (Inner monomial chart velocity).**
\(\label{lem:step-009-inner-velocity}\)

Statement:
Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, Proposition~\ref{prop:step-009-monomial-certificate}, and Lemma~\ref{lem:step-009-two-pivot-charts}, if \(d\geq2\), \(\theta\in E_1\), and \(\beta=(\beta_1,\ldots,\beta_{d-1})\in[-R,R]^{d-1}\), then

\[
\lvert\partial_\theta T_1(\theta,\beta)\rvert
\leq d+R\sum_{k=1}^{d-1}k
=d+\frac{Rd(d-1)}2.
\]

Proof / justification:

Differentiate the finite polynomial sum in Lemma~\ref{lem:step-009-two-pivot-charts} term by term:

\[
\partial_\theta T_1(\theta,\beta)
=-d\theta^{d-1}
 -\sum_{k=1}^{d-1}k\beta_k\theta^{k-1}.
\]

On \(E_1\), \(\lvert\theta\rvert\leq1\). Therefore

\[
d\lvert\theta\rvert^{d-1}\leq d.
\]

For \(k=1\), the derivative of \(\theta\) is the constant one, including at \(\theta=0\). For every \(2\leq k\leq d-1\), \(k-1\geq1\) and

\[
\lvert\theta\rvert^{k-1}\leq1.
\]

Thus no ambiguous negative or singular power occurs at \(\theta=0\), and the triangle inequality together with \(\lvert\beta_k\rvert\leq R\) gives

\[
\begin{aligned}
\lvert\partial_\theta T_1(\theta,\beta)\rvert
&\leq d\lvert\theta\rvert^{d-1}
  +\sum_{k=1}^{d-1}k\lvert\beta_k\rvert
   \lvert\theta\rvert^{k-1}\\
&\leq d+R\sum_{k=1}^{d-1}k.
\end{aligned}
\]

For completeness, set \(S:=\sum_{k=1}^{d-1}k\). Replacing \(k\) by \(d-k\) permutes the same \(d-1\) integers, so

\[
2S
=\sum_{k=1}^{d-1}\bigl(k+(d-k)\bigr)
=\sum_{k=1}^{d-1}d
=d(d-1).
\]

Hence

\[
\sum_{k=1}^{d-1}k=\frac{d(d-1)}2,
\]

which gives the asserted bound. The argument includes \(\lvert\theta\rvert=1\), since every displayed power then has absolute value one.

### unit_004: lemma

**Lemma (Outer monomial chart velocity).**
\(\label{lem:step-009-outer-velocity}\)

Statement:
Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, Proposition~\ref{prop:step-009-monomial-certificate}, and Lemma~\ref{lem:step-009-two-pivot-charts}, if \(d\geq2\), \(\theta\in E_d\), and \(\beta=(\beta_0,\ldots,\beta_{d-2})\in[-R,R]^{d-1}\), then

\[
\begin{aligned}
\lvert\partial_\theta T_d(\theta,\beta)\rvert
&\leq1+R\sum_{k=0}^{d-2}(d-1-k)\\
&=1+\frac{Rd(d-1)}2\\
&\leq d+\frac{Rd(d-1)}2.
\end{aligned}
\]

Proof / justification:

Every power in \(T_d\) is an integer power and is evaluated only on \(E_d\), where \(\lvert\theta\rvert>1\) and hence \(\theta\neq0\). Differentiating gives

\[
\begin{aligned}
\partial_\theta T_d(\theta,\beta)
&=-1-\sum_{k=0}^{d-2}
  \beta_k(k-d+1)\theta^{k-d}\\
&=-1+\sum_{k=0}^{d-2}
  \beta_k(d-1-k)\theta^{k-d}.
\end{aligned}
\]

For \(0\leq k\leq d-2\), the exponent \(k-d\) is negative. The only control used for these negative powers is the defining outer-cell inequality \(\lvert\theta\rvert>1\):

\[
\lvert\theta^{k-d}\rvert
=\lvert\theta\rvert^{k-d}
=\frac{1}{\lvert\theta\rvert^{d-k}}
\leq1.
\]

This calculation is unchanged when \(\theta<-1\), because the sign of an integer power disappears after taking absolute value. Therefore

\[
\begin{aligned}
\lvert\partial_\theta T_d(\theta,\beta)\rvert
&\leq1+
  \sum_{k=0}^{d-2}\lvert\beta_k\rvert(d-1-k)
  \lvert\theta\rvert^{k-d}\\
&\leq1+R\sum_{k=0}^{d-2}(d-1-k).
\end{aligned}
\]

With the exact reindexing \(r=d-1-k\), the index \(k=0\) gives \(r=d-1\), and \(k=d-2\) gives \(r=1\). Consequently,

\[
\begin{aligned}
\sum_{k=0}^{d-2}(d-1-k)
&=\sum_{r=1}^{d-1}r\\
&=\frac{d(d-1)}2,
\end{aligned}
\]

where the final equality is the arithmetic-sum calculation displayed in Lemma~\ref{lem:step-009-inner-velocity}. Since \(d\geq2\), \(1\leq d\), and hence

\[
1+\frac{Rd(d-1)}2
\leq d+\frac{Rd(d-1)}2.
\]

This proves both asserted outer bounds without using a negative power at \(\theta=0\) or at either transition point.

### unit_005: lemma

**Lemma (Degree-one monic chart).**
\(\label{lem:step-009-degree-one}\)

Statement:
Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and under Proposition~\ref{prop:step-009-monomial-certificate}, if \(d=1\) and \(J\subset\mathbb R\) is bounded, then the sole pivot is \(\alpha_0\) on all of \(J\), its feature is \(F_1=1\), its nonpivot cube is \([-R,R]^0\), and

\[
T_1(\theta)=-\theta,
\qquad
p_{T_1(\theta)}(\theta)=0,
\qquad
\lvert\partial_\theta T_1(\theta)\rvert=1
\]

for every \(\theta\in J\).

Proof / justification:

For \(d=1\), Proposition~\ref{prop:step-009-monomial-certificate} gives

\[
\widetilde F=(F_0,F_1)=(\theta,1),
\qquad
p_{\alpha_0}(\theta)=\theta+\alpha_0.
\]

There is one random coordinate and no nonpivot coordinate. The set \([-R,R]^0\) is the singleton containing the empty tuple, so the setting's chart formula reduces to

\[
T_1(\theta)=-\frac{F_0(\theta)}{F_1(\theta)}=-\theta.
\]

The pivot is nonzero everywhere because \(F_1=1\). Direct substitution and differentiation give

\[
p_{T_1(\theta)}(\theta)=\theta-\theta=0,
\qquad
\partial_\theta T_1(\theta)=-1,
\]

so \(\lvert\partial_\theta T_1\rvert=1\). This also equals

\[
d+\frac{Rd(d-1)}2=1
\]

when \(d=1\), with no empty sum, negative power, or second pivot to interpret.

### unit_006: proposition

**Proposition (Boundary-complete monic chart interface).**
\(\label{prop:step-009-boundary-interface}\)

Statement:
Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, Proposition~\ref{prop:step-009-monomial-certificate}, Lemmas~\ref{lem:step-009-two-pivot-charts}, \ref{lem:step-009-inner-velocity}, and \ref{lem:step-009-outer-velocity} when \(d\geq2\), and Lemma~\ref{lem:step-009-degree-one} when \(d=1\), the exact monic object/certificate/pivot/velocity package is valid for every \(d\geq1\) and every bounded interval \(J\), including \(\theta=0\), \(\lvert\theta\rvert=1\), negative outer \(\theta\), empty pivot cells, \(d=1\), \(d=2\), and intervals at arbitrary location. The package always uses exactly the \(d\) lower coefficients and never divides by, or randomizes, the leading coefficient.

Proof / justification:

For \(d\geq2\), Lemma~\ref{lem:step-009-two-pivot-charts} assigns both \(\theta=0\) and \(\lvert\theta\rvert=1\) to \(E_1\), where the pivot is the constant \(F_1=1\). Lemma~\ref{lem:step-009-inner-velocity} uses only nonnegative powers there and explicitly includes \(\theta=0\) and \(\lvert\theta\rvert=1\). Thus there is no transition ambiguity or singularity.

For \(\theta<-1\), Lemma~\ref{lem:step-009-two-pivot-charts} gives

\[
\lvert F_d(\theta)\rvert=\lvert\theta\rvert^{d-1}>1,
\]

and Lemma~\ref{lem:step-009-outer-velocity} controls each negative power through \(\lvert\theta\rvert>1\) only. Hence negative outer points obey the same formula and bound as positive outer points.

Either active pivot cell may be empty, and every intermediate cell \(E_j\), \(2\leq j\leq d-1\), is empty by definition. Every assertion on an empty cell is vacuous, while measurability, disjointness, and

\[
\bigsqcup_{j=1}^{d}E_j=J
\]

remain true. In particular, this covers intervals lying wholly in \([-1,1]\), wholly to the right of one, wholly to the left of minus one, and intervals meeting the transition. Lemma~\ref{lem:step-009-degree-one} separately covers \(d=1\) on all of \(J\), so the two-cell notation is not imposed when it would duplicate the sole coefficient.

For the requested explicit \(d=2\) audit, Proposition~\ref{prop:step-009-monomial-certificate} gives

\[
\widetilde F=(\theta^2,1,\theta),
\qquad
B_{0,2}=2,
\qquad
B_{2,1}=1,
\qquad
\widehat\Lambda_{B,T}=\sqrt{1^2+2^2}=\sqrt5.
\]

The two charts from Lemma~\ref{lem:step-009-two-pivot-charts} are

\[
T_1(\theta,\beta_1)=-\theta^2-\beta_1\theta,
\qquad
T_2(\theta,\beta_0)=-\theta-\beta_0\theta^{-1}.
\]

Their derivatives and caps are, respectively,

\[
\partial_\theta T_1=-2\theta-\beta_1,
\qquad
\lvert\partial_\theta T_1\rvert\leq2+R
\quad(\lvert\theta\rvert\leq1),
\]

and

\[
\partial_\theta T_2=-1+\beta_0\theta^{-2},
\qquad
\lvert\partial_\theta T_2\rvert\leq1+R\leq2+R
\quad(\lvert\theta\rvert>1).
\]

Thus the smallest nontrivial two-pivot degree has exactly the general formulas and constants.

Finally, a bounded \(J\) may be centered arbitrarily far from the origin. Proposition~\ref{prop:step-009-monomial-certificate} shows that the constant matrix has \(m=0\), so \(T_*^0=1\) removes all dependence on the containing interval's location. On the inner cell, the only input is \(\lvert\theta\rvert\leq1\); on the outer cell, the only input is \(\lvert\theta\rvert>1\). Hence neither velocity cap contains the center, endpoints, or containing \(T\).

The exact equalities in Proposition~\ref{prop:step-009-monomial-certificate} and Lemma~\ref{lem:step-009-two-pivot-charts} show throughout that the coefficient vector is

\[
(\alpha_0,\ldots,\alpha_{d-1})\in\mathbb R^d
\]

and the affine expression is exactly \(p_\alpha\). The coefficient one on \(\theta^d\) belongs to deterministic \(F_0\); neither chart solves for it or divides by it. The only outer division is by the already nonzero feature \(F_d=\theta^{d-1}\). This proves every claimed boundary and object-interface assertion.

## Target-Step Assembly

Proposition~\ref{prop:step-009-monomial-certificate} proves, for every \(d\geq1\), the exact augmented monomial object

\[
F_0=\theta^d,
\qquad
F_{k+1}=\theta^k\quad(0\leq k\leq d-1),
\]

the pointwise identity to \(p_\alpha\), all specialization metadata

\[
q=0,
\quad M=0,
\quad \Delta=d,
\quad N=d,
\quad m=0,
\quad A=(2R)^d\kappa,
\]

the anchor \(F_1=1\), the exact constant shift matrix, and

\[
\widehat\Lambda_{B,T}
=\left(\sum_{k=1}^{d}k^2\right)^{1/2}.
\]

For \(d\geq2\), Lemma~\ref{lem:step-009-two-pivot-charts} supplies the prescribed measurable disjoint \(d\)-indexed partition, with all intermediate cells empty, and the exact maps

\[
T_1=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
\qquad
T_d=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}.
\]

Lemma~\ref{lem:step-009-inner-velocity} proves

\[
\lvert\partial_\theta T_1\rvert
\leq d+\frac{Rd(d-1)}2
\quad\text{on }E_1,
\]

and Lemma~\ref{lem:step-009-outer-velocity} proves

\[
\lvert\partial_\theta T_d\rvert
\leq1+\frac{Rd(d-1)}2
\leq d+\frac{Rd(d-1)}2
\quad\text{on }E_d.
\]

Lemma~\ref{lem:step-009-degree-one} proves the sole-pivot formula and unit velocity when \(d=1\). Proposition~\ref{prop:step-009-boundary-interface} verifies that these conclusions cover every required boundary, degree, interval-location, dimension, and deterministic-leading-coordinate interface. The composition therefore proves exactly the accepted `step_009` row and exports the exact monic object/certificate/pivot/velocity package to `step_010`.

No probability integral, beta-volume multiplication, partition-length integration, or polynomial-root probability bound is proved here; those are the distinct downstream obligations of `step_010`.

## Explicit Rate Audit

This step is rate-bearing only through the deterministic R1 certificate specialization and the deterministic inputs to the R4 baseline bridge. It does not execute the downstream probability bound.

### R1: Static derivative-closure certificate specialization

- Objective type: Structural-parameter explicit deterministic certificate.
- Exposed variables: \(T,m,N\), the coefficient list \((b_{rs,\ell})\), and \(\widehat\Lambda_{B,T}\), specialized here to \(m=0\), \(N=d\), \(B_{0,d}=d\), \(B_{k+1,k}=k\), and all other entries zero. The disclosed presentation parameters are \(q=M=0\) and \(\Delta=d\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d\), \(T\), \(R\), \(\kappa\), \(J\), a coefficient law, a pivot margin, or any other instance parameter.
- Fixed quantities: For each specialization, the deterministic monomial presentation, \(B\), and a compact \(\Theta\) containing \(J\).
- Probability mode: Deterministic.
- Horizon mode: The identity \(\widetilde F'=B\widetilde F\) is pointwise on \(U=\mathbb R\); the constant certificate is uniform on every containing \(\Theta\).
- Norm mode: Euclidean Frobenius aggregation in the exact certificate definition. Since \(B\) is constant, the coefficient-height sum equals \(\lVert B\rVert_{\mathrm F}\) exactly.
- Admissibility conditions and auxiliary tolerances: \(d\geq1\); there is no auxiliary tolerance.
- Term absorption or simplification inequalities: None. The exact identity is
  \[
  \widehat\Lambda_{B,T}^2
  =d^2+\sum_{k=1}^{d-1}k^2
  =\sum_{k=1}^{d}k^2.
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This proves the exact augmented-monomial certificate required by R1 and consumed by R4. It makes no claim about the separate Counter-example 1 specialization of R1.
- Baseline-reduction check: The required monomial certificate is preserved literally, not bounded by a hidden multiple. At \(d=1\), it is exactly one; at \(d=2\), it is exactly \(\sqrt5\). Because \(m=0\), it is independent of the location of \(J\) and the containing \(T\).

### R4: Exact affine-monic baseline inputs

- Objective type: Exact deterministic specialization and structural-parameter explicit velocity package for the downstream baseline bridge.
- Exposed variables: \(d,R,\kappa,J\), together with \(q=M=0\), \(\Delta=N=d\), \(m=0\), \(A=(2R)^d\kappa\), \(\widehat\Lambda_{B,T}=(\sum_{k=1}^d k^2)^{1/2}\), and
  \[
  V_d:=d+\frac{Rd(d-1)}2.
  \]
- Hidden constants may depend on: None.
- Hidden constants may not depend on: The location or endpoints of \(J\), coefficient correlations, \(T\), an auxiliary pivot threshold, or a random leading-coordinate approximation.
- Fixed quantities: \(d,R,\kappa\) and, for each bounded \(J\), a compact \(\Theta\) containing it.
- Probability mode: The present package is deterministic and holds for every coefficient-cube point. The downstream R4 mode remains ordinary probability for each arbitrary correlated lower-coefficient law; no probability conversion occurs in this step.
- Horizon mode: Pointwise on every bounded interval \(J\), uniformly in its location. The downstream interval integration is not performed here.
- Norm mode: Scalar absolute value for chart velocities, Euclidean/Frobenius norm for the matrix certificate, and the original \(d\)-dimensional lower-coefficient coordinates.
- Admissibility conditions and auxiliary tolerances: \(d\geq1\), \(R>0\); for \(d\geq2\), the inner and outer cells are as prescribed. There is no auxiliary tolerance or pivot margin.
- Term absorption or simplification inequalities:
  \[
  \sum_{k=1}^{d-1}k
  =\sum_{k=0}^{d-2}(d-1-k)
  =\frac{d(d-1)}2,
  \]
  \[
  \lvert\theta\rvert^{k-d}\leq1
  \quad(0\leq k\leq d-2,\ \lvert\theta\rvert>1),
  \]
  and
  \[
  1+\frac{Rd(d-1)}2
  \leq d+\frac{Rd(d-1)}2=V_d
  \quad(d\geq2).
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports exactly the original \(d\)-coefficient object, the legal charts, and the pointwise cap \(V_d\) required by `step_010`. It does not multiply by \((2R)^{d-1}\), integrate over \(J\), or assert the probability conclusion.
- Baseline-reduction check: The deterministic leading coefficient remains outside the random vector, and the chart identities have zero residual relative to \(p_\alpha\). For \(d=1\), \(V_1=1\) and the sole chart has unit velocity. For \(d=2\), the exact inner and outer caps are \(2+R\) and \(1+R\). No independent polynomial theorem, singular augmented law, remainder, or conservative constant is introduced.

## Blockers

None

## Notation And Assumption Notes

- Progress metadata: The branch remains exact-goal, unconditional, and `full` for the declared derivative-closed subclass. This supporting step neither changes the progress classification nor claims the downstream R4 probability conclusion.
- Original-setting notation: \(F_0,F_1,\ldots,F_d\), \(\widetilde F\), \(B\), \(T_*\), \(\widehat\Lambda_{B,T}\), \(A\), \(T_j\), and \(\Psi_j\) retain their meanings from `setting.md` with \(N=d\).
- Coefficient indexing: Random coordinate \(j\in\{1,\ldots,d\}\) multiplies \(F_j(\theta)=\theta^{j-1}\) and is named \(\alpha_{j-1}\). Thus pivot \(j=1\) is \(\alpha_0\), pivot \(j=d\) is \(\alpha_{d-1}\), and the random-vector dimension is exactly \(d\).
- Public-facing objects: The explicit augmented tuple, constant matrix \(B\), exact certificate \(\widehat\Lambda_{B,T}\), the direct constant \(V_d=d+Rd(d-1)/2\), the active pivot cells \(E_1,E_d\) and intermediate empty cells \(E_j\) for \(2\leq j\leq d-1\) when \(d\geq2\), the maps \(T_1,T_d\), and the degree-one map are the minimal outputs needed by the downstream exact specialization.
- Appendix-local objects: The two cell-specific nonpivot coordinate tuples \((\beta_1,\ldots,\beta_{d-1})\) and \((\beta_0,\ldots,\beta_{d-2})\), and the explicit insertion maps \(\Psi_1,\Psi_d\), are used to display the pointwise same-polynomial identities.
- Proof-local objects: The temporary arithmetic-sum symbol \(S\), the reindexing variable \(r=d-1-k\), and the choice of a containing \(\Theta,T\) for a given bounded \(J\) are proof bookkeeping and are not exported.
- Constant provenance: \(A=(2R)^d\kappa\) is the setting definition after \(N=d\). The exact certificate is proved by Proposition~\ref{prop:step-009-monomial-certificate}. The inner and outer velocity constants are proved by Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity}. The common cap \(V_d\) is a direct expression in the primitive quantities \(d,R\), and its domination of the outer constant is displayed explicitly.
- Assumption provenance: The monomial outputs and coefficient order are primitive specialization data. The closure identity, matrix certificate, measurable partition, pivot nonvanishing, chart identities, derivative bounds, and all boundary facts are proved in this step. None is assumed as a generated invariant or supplied by a dependency.
- Surface discipline: No law, density, probability event, beta-volume, section measure, partition-length integral, or root-probability estimate is introduced. Those belong to `step_010` or earlier common-chart steps, not to this package.
- Boundary discipline: \(\theta=0\) and \(\lvert\theta\rvert=1\) use only the constant inner pivot; negative powers occur only on \(\lvert\theta\rvert>1\); negative outer points are controlled by absolute values of integer powers; empty cells are vacuous; and \(d=1\) is not forced into the two-pivot notation.
- Diagnostic context: `global_proof.md` was read only at its G9 planning block, paired with the current `ACCEPTED` `global_proof_review.md`. Its suggested matrix and two-region algebra were independently derived in units 001--006. It was not used as evidence, a cited result, an assumption source, or authority to change the accepted target claim.
