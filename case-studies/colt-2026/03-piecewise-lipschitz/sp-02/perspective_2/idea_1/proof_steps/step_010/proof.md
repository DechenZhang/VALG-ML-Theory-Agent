# Proof Step

## Step Identity

- Branch path: perspective_2/idea_1
- Sketch attempt: 2
- Step ID: step_010
- Unit attempt: 1
- Run mode: interactive
- Target mode: Exact-goal, unconditional, full-progress theorem on the declared derivative-closed subclass
- Binding idea SHA-256: 5209aa21929e84604acb2712d8657460a48463901738fd00ebafaa84d5c43596
- Binding setting SHA-256: 6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e
- Binding accepted proof-sketch SHA-256: 41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4
- Binding accepted proof-sketch-review SHA-256: a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9
- Binding controller-open proof-tracker SHA-256: f346400f2475cc763923c009f5b17ee725144be82b8850b7f437ae0e87edfe8a
- Accepted dependency step_003 proof SHA-256: e49284222ce24bde4b3ae8b5f8d1434622c09bfd3a39eb512641169e55e2d7a0
- Accepted dependency step_003 review SHA-256: 4d6a93d359e6559d49d306809fe8ad925eb03a262c36446591c846632a6e1ff8
- Accepted dependency step_003 identity: sketch attempt 2, Step ID step_003, unit attempt 1, reviewed proof hash matching the preceding proof hash, Step-Review Status ACCEPTED.
- Accepted dependency step_009 proof SHA-256: 8da586dbdd81e96baba3d3767b4982caf24ecbe40c3bb7987ba41a06477208e3
- Accepted dependency step_009 review SHA-256: 7c17949e3a8be360e6439d5e1faa11a08e887cd002cc49b32f8031e3cb0c585a
- Accepted dependency step_009 identity: sketch attempt 2, Step ID step_009, unit attempt 2, reviewed proof hash matching the preceding proof hash, Step-Review Status ACCEPTED.
- Diagnostic same-step material: only the authorized archived sketch-attempt-1 step_010 proof and review were consulted, with SHA-256 values 46985d925710c381063b71fb3f47af13680586a5648e2bfbbaea6b44bdf40707 and 93724e353a02a14f20dd68edbacece0e244e7dff327d4395f9e9144d69a90255. They were used only to preserve valid local labels and were not used as current evidence or authority.
- Global diagnostic boundary: neither global_proof.md nor global_proof_review.md was read or used.

## Target Step Claim

The following is the exact accepted sketch-attempt-2 row.

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| step_010 | Prove one named complete affine-monic specialization wrapper whose conclusion explicitly restates the step_009 augmented monomial presentation, \(q=M=m=0\), \(\Delta=N=d\), \(A=(2R)^d\kappa\), constant derivative-shift matrix with nonzero entries \(B_{0,d}=d\) and \(B_{k+1,k}=k\) for \(1\leq k\leq d-1\), \(\widehat\Lambda_{B,T}=(\sum_{k=1}^d k^2)^{1/2}\), legal pivot/velocity package, deterministic leading coefficient, and, by applying step_003, the exact bound \(\Pr[\exists\theta\in J:p_\alpha(\theta)=0]\leq\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert J\rvert\) for every arbitrary correlated lower-coefficient law and bounded \(J\). | step_003, step_009 | Primitive: assump:cube-density-laws in dimension \(d\); derived: named theorem-style outputs from both dependencies | Export the entire monic package, not only its probability inequality; verify exact source-object mapping, beta-volume, disjoint partition lengths, \(d=1\), zero-length intervals, and exact coefficient dimension while introducing no auxiliary loss or singular leading coordinate. | Named current-notation theorem-style wrapper citing the named step_009 presentation/certificate results, plus direct specialization and integration of the named step_003 chart theorem. | Named complete affine-monic presentation/certificate-and-probability interface for step_012. | R1 and R4: exact certificate specialization and complete exact baseline bridge, with every interface clause re-exported. | PENDING |

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:cube-density-laws}, specialized to dimension \(d\): the original lower-coefficient vector
    \[
    \alpha=(\alpha_0,\ldots,\alpha_{d-1})
    \]
    is drawn from an arbitrary Borel probability law \(\mu\) on \(\mathbb R^d\) with one full joint Lebesgue density \(f_\mu\), supported on \([-R,R]^d\), such that \(0\leq f_\mu\leq\kappa\) almost everywhere. Arbitrary correlation is allowed. No marginal, conditional, or product-density bound is available or used.
- Derived invariants and controls supplied by accepted dependencies:
  - Proposition~\ref{prop:step-003-pivot-sweep} supplies the current accepted indicator and indicator-dropped affine chart inequalities in the original coefficient dimension for positive-length intervals.
  - Proposition~\ref{prop:step-009-monic-presentation} supplies the actual augmented monomial tuple, the exact lower-coefficient vector, the pointwise same-polynomial identity, the deterministic leading coefficient, \(q=M=0\), \(\Delta=N=d\), \(A=(2R)^d\kappa\), and the anchor.
  - Lemma~\ref{lem:step-009-derivative-shift} supplies the exact constant derivative-shift matrix, \(m=0\), its coefficient-by-coefficient closure identity, the \(d=1\) matrix, and the exact certificate height.
  - Proposition~\ref{prop:step-009-two-pivot-charts} supplies the measurable legal two-pivot split, both exact charts, their original-coordinate insertion maps, and their same-polynomial identities for \(d\geq2\).
  - Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity} supply the exact regional chart-velocity bounds and their common location-free cap.
  - Proposition~\ref{prop:step-009-linear-case} supplies the separate \(d=1\), zero-dimensional-beta chart and unit velocity.
  - Claim~\ref{claim:step-009-boundary-index-closure} supplies the accepted boundary, sign, dimension, empty-cell, arbitrary-location, and deterministic-leading-coordinate closure.
- Local conditional hypotheses: None. Fixing \(d,R,\kappa,\mu\), and \(J\) instantiates universal quantifiers. Positive length is used only inside Proposition~\ref{prop:step-010-positive-length}; Lemma~\ref{lem:step-010-degenerate-interval} discharges the complementary zero-length case.
- Accepted dependency artifacts used: exactly the current step_003 and step_009 proof/review pairs recorded in Step Identity. Both reviews bind sketch attempt 2, the exact Step ID and current unit attempt, the matching proof hash, and ACCEPTED status.
- No later proof step, archived proof statement, review conclusion, tracker statement, or global diagnostic is a mathematical assumption or proof authority.

## Local Lemma Map

Atomic step = no. Exact measure accounting, the positive-length chart specialization, affine-hyperplane nullity for zero-length intervals, and the complete downstream wrapper are independent nontrivial obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Proposition~\ref{prop:step-009-two-pivot-charts} for \(d\geq2\) and Proposition~\ref{prop:step-009-linear-case} for \(d=1\), if \(d\geq1\), \(R>0\), and \(J\) is bounded, then every nonpivot cube has volume \((2R)^{d-1}\), including \(\lambda_0([-R,R]^0)=1=(2R)^0\), and the measurable active cells are disjoint with total length \(\lvert J\rvert\). | Supplies the exact beta-volume and parameter-length budget with no chart-count factor. |
| unit_002 | proposition | Under Assumption~\ref{assump:cube-density-laws}, Proposition~\ref{prop:step-003-pivot-sweep}, Proposition~\ref{prop:step-009-monic-presentation}, Lemma~\ref{lem:step-009-derivative-shift}, Proposition~\ref{prop:step-009-two-pivot-charts}, Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity}, Proposition~\ref{prop:step-009-linear-case}, Claim~\ref{claim:step-009-boundary-index-closure}, and Lemma~\ref{lem:step-010-measure-accounting}, every positive-length bounded interval satisfies the exact ordinary-probability affine-monic bound under every arbitrary correlated full joint law. | Applies the accepted sweep theorem to the exact original \(d\)-coefficient monic charts and proves the positive-length bridge. |
| unit_003 | lemma | Under Assumption~\ref{assump:cube-density-laws} and Proposition~\ref{prop:step-009-monic-presentation}, every zero-length bounded interval has a polynomial-root event of probability zero under the same full joint density. | Closes empty and singleton intervals by affine-hyperplane nullity, without another root theorem. |
| unit_004 | proposition | Under Assumption~\ref{assump:cube-density-laws}, all eight named accepted dependency results listed in the binding target, and the three preceding local results, one proposition statement simultaneously exports the exact augmented monomial presentation, format data, shift matrix and certificate, legal charts and velocities, deterministic leading coefficient, every boundary convention, and the all-bounded-interval ordinary-probability inequality. | Provides the one named complete presentation/certificate-and-probability authority consumed directly by step_012. |

## Cited Result Applications

The following restatements use only the current accepted dependency proofs identified above. They translate every source object into the present \(d\)-dimensional monic notation; they do not reprove or replace either dependency.

### Accepted Proposition~\ref{prop:step-003-pivot-sweep}

- Source and exact assumption basis: Proposition~\ref{prop:step-003-pivot-sweep}, titled Exhausted affine pivot-sweep inequality, is the current accepted step_003 theorem-style output. Its statement is under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-derivative-closure}, and \ref{assump:cube-density-laws}; the accepted Anchor nonvanishing Lemma~\ref{lem:step-001-anchor}; the accepted Borel and Lebesgue nullity Lemma~\ref{lem:step-002-lebesgue-null}; the accepted Nullity under arbitrary full joint laws Proposition~\ref{prop:step-002-law-null}; Proposition~\ref{prop:step-003-finite-area}; and Lemma~\ref{lem:step-003-root-coverage}.
- Exact conclusion restated in current notation: for every \(\mu\in\mathcal D_{N,R,\kappa}\), every interval \(I\subseteq\Theta\) with \(\lvert I\rvert>0\), and every Lebesgue-measurable legal partition
  \[
  I=\bigsqcup_{j=1}^{N}E_j,\qquad F_j\neq0\ \hbox{on }E_j,
  \]
  the proposition gives, in the extended nonnegative reals,
  \[
  \begin{aligned}
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
  &\leq
  \kappa\sum_{j=1}^{N}\int_{E_j}\int_{[-R,R]^{N-1}}
  \mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
  \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta\\
  &\leq
  \kappa\sum_{j=1}^{N}\int_{E_j}\int_{[-R,R]^{N-1}}
  \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta.
  \end{aligned}
  \]
  Its conclusion explicitly includes \(N=1\), empty cells, zero Jacobians, pivots without a uniform margin, every endpoint convention, every root multiplicity and fiber cardinality, and identically-zero affine combinations.
- Object mapping: set \(N=d\), \(I=J\), \(F_0(\theta)=\theta^d\), \(F_{k+1}(\theta)=\theta^k\), and \(\phi_\alpha=p_\alpha\). Dependency chart coordinate \(j\) is original lower coefficient \(\alpha_{j-1}\). For \(d\geq2\), use the accepted cells \(E_1,E_d\) and set \(E_j=\varnothing\) for \(2\leq j\leq d-1\); for \(d=1\), use the sole cell \(E_1=J\).
- Assumption discharge: Proposition~\ref{prop:step-009-monic-presentation} gives the exact presentation, coefficient dimension, anchor, and same-polynomial identity. Lemma~\ref{lem:step-009-derivative-shift} gives the exact derivative closure. Proposition~\ref{prop:step-009-two-pivot-charts} and Proposition~\ref{prop:step-009-linear-case} give the legal partition in their respective dimensions. Claim~\ref{claim:step-009-boundary-index-closure} permits every bounded location of \(J\) through a containing compact \(\Theta\) and verifies that this introduces no \(T\)-dependent output. Assumption~\ref{assump:cube-density-laws} supplies the same full joint law. All area-formula, persistent-root, multiplicity, tangency, exhaustion, and endpoint obligations are already discharged inside the accepted proposition and are not reopened here.
- Conclusion used and nonoutputs: this step uses both displayed chart inequalities, with literal coefficient \(\kappa\), only for \(\lvert J\rvert>0\). It does not invoke a new area formula, a root-count theorem, independence, or any conclusion not stated by the accepted proposition.

### Accepted Proposition~\ref{prop:step-009-monic-presentation}

- Exact assumption basis: Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and the explicit monic specialization of Assumption~\ref{assump:anchored-derivative-closure}, with \(d\geq1\), bounded \(J\), and \(\alpha\in[-R,R]^d\).
- Exact conclusion: the ordered tuple is
  \[
  (F_0,F_1,\ldots,F_d)=(\theta^d,1,\theta,\ldots,\theta^{d-1}),
  \]
  and, pointwise for every real \(\theta\),
  \[
  F_0(\theta)+\langle\alpha,F(\theta)\rangle
  =\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
  =p_\alpha(\theta).
  \]
  It gives \(q=M=0\), \(\Delta=N=d\), \(A=(2R)^d\kappa\), the literal anchor \(F_1=1\), exactly \(d\) random lower coefficients, and deterministic leading coefficient one outside \(\alpha\).
- Object mapping and discharge: these are already the current wrapper objects, with feature coordinate \(F_{k+1}\) paired with \(\alpha_k\). No relabeling, augmentation, or residual is present. This accepted proposition discharges the presentation and deterministic-leading-coordinate clauses of the wrapper.

### Accepted Lemma~\ref{lem:step-009-derivative-shift}

- Exact assumption basis: Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, with \(d\geq1\) and the tuple of Proposition~\ref{prop:step-009-monic-presentation}.
- Exact conclusion: with rows and columns indexed by \(0,\ldots,d\), the constant matrix \(B\in\mathbb R^{(d+1)\times(d+1)}\) has exactly the nonzero entries
  \[
  B_{0,d}=d,\qquad B_{k+1,k}=k\quad(1\leq k\leq d-1),
  \]
  satisfies \(\widetilde F'=B\widetilde F\) coefficient by coefficient, has \(m=0\), and obeys
  \[
  \widehat\Lambda_{B,T}
  =\left(\sum_{k=1}^{d}k^2\right)^{1/2}.
  \]
  At \(d=1\),
  \[
  B=\begin{pmatrix}0&1\\0&0\end{pmatrix}.
  \]
- Object mapping and discharge: the row and column order is exactly the wrapper order \((F_0,F_1,\ldots,F_d)\). Since \(m=0\), \(T_*^0=1\), so the accepted certificate has no interval-location or hidden \(T\) factor. This accepted lemma discharges every matrix, closure, degree, \(d=1\), and certificate clause of the wrapper.

### Accepted Proposition~\ref{prop:step-009-two-pivot-charts}

- Exact assumption basis: Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, Proposition~\ref{prop:step-009-monic-presentation}, \(d\geq2\), and bounded \(J\).
- Exact conclusion: the measurable disjoint partition
  \[
  E_1=J\cap\{\lvert\theta\rvert\leq1\},\qquad
  E_d=J\cap\{\lvert\theta\rvert>1\}
  \]
  assigns \(\theta=\pm1\) to \(E_1\). The pivot \(\alpha_0\), corresponding to \(F_1=1\), is legal on \(E_1\), and the pivot \(\alpha_{d-1}\), corresponding to \(F_d=\theta^{d-1}\), is legal on \(E_d\). The exact charts are
  \[
  T_1(\theta,\beta)
  =-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
  \qquad \beta=(\beta_1,\ldots,\beta_{d-1})\in[-R,R]^{d-1},
  \]
  \[
  T_d(\theta,\beta)
  =-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1},
  \qquad \beta=(\beta_0,\ldots,\beta_{d-2})\in[-R,R]^{d-1}.
  \]
  Their insertion maps are
  \[
  \Psi_1=(T_1,\beta_1,\ldots,\beta_{d-1}),\qquad
  \Psi_d=(\beta_0,\ldots,\beta_{d-2},T_d),
  \]
  and satisfy \(p_{\Psi_1(\theta,\beta)}(\theta)=p_{\Psi_d(\theta,\beta)}(\theta)=0\).
- Object mapping and discharge: both insertion maps use the original order \((\alpha_0,\ldots,\alpha_{d-1})\). The residual between the chart-produced polynomial and the target polynomial is exactly zero. The indicator \(\mathbf 1\{\lvert T_j\rvert\leq R\}\) in Proposition~\ref{prop:step-003-pivot-sweep} is precisely the check that the inserted pivot also lies in the original cube.

### Accepted Lemma~\ref{lem:step-009-inner-velocity}

- Exact assumption basis: Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, Proposition~\ref{prop:step-009-two-pivot-charts}, \(d\geq2\), \(\theta\in E_1\), and \(\beta\in[-R,R]^{d-1}\).
- Exact conclusion:
  \[
  \partial_\theta T_1
  =-d\theta^{d-1}-\sum_{k=1}^{d-1}k\beta_k\theta^{k-1},
  \qquad
  \lvert\partial_\theta T_1\rvert
  \leq d+R\sum_{k=1}^{d-1}k
  =d+\frac{Rd(d-1)}2.
  \]
- Object mapping and discharge: the chart and beta cube are exactly those in the wrapper. The accepted bound includes \(\theta=0\) and \(\theta=\pm1\), so it discharges the complete inner velocity clause without a local rederivation.

### Accepted Lemma~\ref{lem:step-009-outer-velocity}

- Exact assumption basis: Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, Proposition~\ref{prop:step-009-two-pivot-charts}, \(d\geq2\), \(\theta\in E_d\), and \(\beta\in[-R,R]^{d-1}\).
- Exact conclusion:
  \[
  \partial_\theta T_d
  =-1+\sum_{k=0}^{d-2}(d-1-k)\beta_k\theta^{k-d},
  \]
  \[
  \lvert\partial_\theta T_d\rvert
  \leq1+R\sum_{m=1}^{d-1}\frac{m}{\lvert\theta\rvert^{m+1}}
  \leq1+\frac{Rd(d-1)}2
  \leq d+\frac{Rd(d-1)}2.
  \]
- Object mapping and discharge: the accepted estimate uses the signed outer chart first and absolute values afterward, so it applies to negative outer \(\theta\). It uses only \(\lvert\theta\rvert>1\), not an upper location bound, and therefore discharges the outer and arbitrary-location velocity clauses exactly.

### Accepted Proposition~\ref{prop:step-009-linear-case}

- Exact assumption basis: Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, Proposition~\ref{prop:step-009-monic-presentation} specialized to \(d=1\), bounded \(J\), and \(\alpha_0\in[-R,R]\).
- Exact conclusion: with
  \[
  [-R,R]^0=\{()\},\qquad
  (F_0,F_1)=(\theta,1),\qquad
  p_{\alpha_0}(\theta)=\theta+\alpha_0,
  \]
  the sole pivot \(\alpha_0\) is legal on every \(\theta\in J\), the zero-dimensional-beta chart is
  \[
  T_1(\theta)=-\theta,\qquad \Psi_1(\theta)=(-\theta),
  \]
  and
  \[
  p_{\Psi_1(\theta)}(\theta)=0,\qquad
  \lvert\partial_\theta T_1\rvert=1
  =d+\frac{Rd(d-1)}2.
  \]
- Object mapping and discharge: the sole coefficient is the original \(\alpha_0\); no beta coordinate is added. Together with Lemma~\ref{lem:step-009-derivative-shift}, this accepted proposition discharges the full \(d=1\) chart, dimension, velocity, matrix, and same-polynomial branch.

### Accepted Claim~\ref{claim:step-009-boundary-index-closure}

- Exact assumption basis: Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, all six preceding step_009 theorem-style results in their applicable \(d\)-branches, \(d\geq1\), and any bounded interval \(J\).
- Exact conclusion: every chart, certificate, and object conclusion remains valid at \(\theta=0,\pm1\), for negative outer \(\theta\), empty partition pieces, \(d=1\), \(d=2\), and every location of \(J\). The coefficient input has exactly \(d\) lower coordinates, the augmented matrix is exactly \((d+1)\)-square, and neither a singular or randomized leading coordinate nor a bound involving \(\sup_{\theta\in J}\lvert\theta\rvert\) occurs.
- Object mapping and discharge: the claim concerns precisely the wrapper tuple, matrix, charts, coefficient cube, and interval. It supplies the accepted boundary and index closure used below; no archive statement or Target-Step Assembly paragraph substitutes for it.

### Standard measure facts

The following elementary facts are restated before local use.

1. The \((d-1)\)-dimensional rectangle \([-R,R]^{d-1}\) has product volume \((2R)^{d-1}\). In dimension zero, \([-R,R]^0=\{()\}\) and \(\lambda_0(\{()\})=1=(2R)^0\).
2. If finitely many Lebesgue-measurable sets are pairwise disjoint, the measure of their union is the sum of their measures. Empty sets have measure zero.
3. A real interval of Lebesgue length zero is empty or a singleton.
4. For a fixed \(\theta_0\), the set
   \[
   \left\{\alpha\in[-R,R]^d:
   \alpha_0=-\theta_0^d-\sum_{k=1}^{d-1}\alpha_k\theta_0^k\right\}
   \]
   is a closed affine-hyperplane slice. Every fiber in the \(\alpha_0\)-coordinate is empty or a singleton, hence has one-dimensional Lebesgue measure zero. Tonelli therefore gives \(d\)-dimensional Lebesgue measure zero, including the \(d=1\) empty-beta convention.
5. If a Borel probability law has full joint density \(0\leq f_\mu\leq\kappa\), then for every Lebesgue-null Borel set \(H\),
   \[
   \mu(H)=\int_H f_\mu\,d\lambda_d=0.
   \]
   This uses the full density directly and makes no statement about marginals or conditional laws.

### Local result application map

- Lemma~\ref{lem:step-010-measure-accounting} supplies the exact beta-volume and disjoint cell-length identities.
- Proposition~\ref{prop:step-010-positive-length} applies Proposition~\ref{prop:step-003-pivot-sweep} to the exact current step_009 charts and proves the probability bound for \(\lvert J\rvert>0\).
- Lemma~\ref{lem:step-010-degenerate-interval} proves the same bound for \(\lvert J\rvert=0\) by affine-hyperplane nullity.
- Proposition~\ref{prop:step-010-complete-affine-monic-wrapper} re-exports every deterministic dependency conclusion and the two probability branches as one theorem-style interface.

No independent polynomial-root theorem, new area-formula invocation, marginal or conditional density theorem, confidence conversion, or random leading-coordinate construction is used.

## Local Derivation

### unit_001: lemma

**Lemma (Exact monic chart measure accounting).**
\(\label{lem:step-010-measure-accounting}\)

Statement:
Under Proposition~\ref{prop:step-009-two-pivot-charts} when \(d\geq2\) and Proposition~\ref{prop:step-009-linear-case} when \(d=1\), if \(d\geq1\), \(R>0\), and \(J\subset\mathbb R\) is a bounded interval, then every chart's nonpivot cube has exact volume
\[
\lambda_{d-1}([-R,R]^{d-1})=(2R)^{d-1},
\]
where
\[
\lambda_0([-R,R]^0)=1=(2R)^0
\]
when \(d=1\). Moreover, the active cells are measurable and disjoint and have total Lebesgue length \(\lvert J\rvert\). For \(d\geq2\),
\[
\lvert E_1\rvert+\lvert E_d\rvert=\lvert J\rvert,
\]
and the intermediate cells \(E_j=\varnothing\), \(2\leq j\leq d-1\), have zero length; for \(d=1\), \(E_1=J\) and \(\lvert E_1\rvert=\lvert J\rvert\).

Proof / justification:
For \(d\geq2\), either accepted chart has exactly \(d-1\) nonpivot coordinates, each ranging over \([-R,R]\). Product measure gives
\[
\lambda_{d-1}([-R,R]^{d-1})
=\prod_{r=1}^{d-1}\lambda_1([-R,R])
=\prod_{r=1}^{d-1}2R
=(2R)^{d-1}.
\]

Proposition~\ref{prop:step-009-two-pivot-charts} gives
\[
E_1=J\cap\{\lvert\theta\rvert\leq1\},
\qquad
E_d=J\cap\{\lvert\theta\rvert>1\}.
\]
The cells are measurable, disjoint, and have union \(J\); \(\theta=\pm1\) belongs only to \(E_1\). Adding the empty intermediate cells yields a legal partition indexed by every \(j=1,\ldots,d\), and finite additivity gives
\[
\sum_{j=1}^{d}\lvert E_j\rvert
=\lvert E_1\rvert+\lvert E_d\rvert
=\lvert J\rvert.
\]
This remains exact if \(J\), \(E_1\), or \(E_d\) is empty, or if \(J\) lies entirely in one region.

For \(d=1\), Proposition~\ref{prop:step-009-linear-case} gives one empty beta tuple and the sole cell \(E_1=J\). By the zero-dimensional product convention,
\[
[-R,R]^0=\{()\},
\qquad
\lambda_0(\{()\})=1=(2R)^0,
\]
and \(\lvert E_1\rvert=\lvert J\rvert\). Thus no dimension introduces a multiplier for the number of active charts. \(\square\)

### unit_002: proposition

**Proposition (Exact positive-length affine-monic sweep).**
\(\label{prop:step-010-positive-length}\)

Statement:
Under Assumption~\ref{assump:cube-density-laws}, Proposition~\ref{prop:step-003-pivot-sweep}, Proposition~\ref{prop:step-009-monic-presentation}, Lemma~\ref{lem:step-009-derivative-shift}, Proposition~\ref{prop:step-009-two-pivot-charts}, Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity}, Proposition~\ref{prop:step-009-linear-case}, Claim~\ref{claim:step-009-boundary-index-closure}, and Lemma~\ref{lem:step-010-measure-accounting}, let \(d\geq1\), let \(J\subset\mathbb R\) be a bounded interval with \(\lvert J\rvert>0\), and let
\[
\alpha=(\alpha_0,\ldots,\alpha_{d-1})\sim\mu,
\]
where \(\mu\) is any Borel full joint-density law supported on \([-R,R]^d\) with \(f_\mu\leq\kappa\) almost everywhere. Then, in ordinary probability,
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
\leq
\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)\lvert J\rvert.
\]

Proof / justification:
Proposition~\ref{prop:step-009-monic-presentation} gives \(N=d\), the original coefficient order \((\alpha_0,\ldots,\alpha_{d-1})\), and the exact pointwise identity
\[
F_0(\theta)+\langle\alpha,F(\theta)\rangle
=p_\alpha(\theta).
\]
Thus the event in Proposition~\ref{prop:step-003-pivot-sweep} is exactly the event in this proposition. The leading coefficient remains the deterministic coefficient of \(F_0=\theta^d\).

Claim~\ref{claim:step-009-boundary-index-closure} permits a nondegenerate compact \(\Theta\supseteq J\) inside some \([-T,T]\). Proposition~\ref{prop:step-009-monic-presentation} and Lemma~\ref{lem:step-009-derivative-shift} supply on that containing interval the exact presentation, anchor, and derivative closure required by Proposition~\ref{prop:step-003-pivot-sweep}. Because the matrix is constant and \(m=0\), this instantiation introduces no \(T\)-dependent conclusion.

Assumption~\ref{assump:cube-density-laws} supplies one full joint density \(f_\mu\leq\kappa\) on the original cube. Proposition~\ref{prop:step-003-pivot-sweep} already performs direct joint-density domination. This specialization neither factors \(f_\mu\) nor takes a marginal or conditional density.

First suppose \(d\geq2\). Use the accepted cells \(E_1,E_d\) and define \(E_j=\varnothing\) for \(2\leq j\leq d-1\). Proposition~\ref{prop:step-009-two-pivot-charts} makes this a measurable legal partition for the \(d\) features. Applying both accepted chart inequalities gives
\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
&\leq
\kappa\int_{E_1}\int_{[-R,R]^{d-1}}
\mathbf 1\{\lvert T_1(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_1(\theta,\beta)\rvert\,d\beta\,d\theta\\
&\quad+
\kappa\int_{E_d}\int_{[-R,R]^{d-1}}
\mathbf 1\{\lvert T_d(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_d(\theta,\beta)\rvert\,d\beta\,d\theta\\
&\leq
\kappa\int_{E_1}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_1(\theta,\beta)\rvert\,d\beta\,d\theta\\
&\quad+
\kappa\int_{E_d}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_d(\theta,\beta)\rvert\,d\beta\,d\theta.
\end{aligned}
\]
No other chart contributes because its cell is empty.

Set only as inherited shorthand
\[
V_d:=d+\frac{Rd(d-1)}2.
\]
Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity} give, on their complete chart domains,
\[
\lvert\partial_\theta T_1\rvert\leq V_d,
\qquad
\lvert\partial_\theta T_d\rvert
\leq1+\frac{Rd(d-1)}2
\leq V_d.
\]
The second inequality is valid for both signs of outer \(\theta\). Claim~\ref{claim:step-009-boundary-index-closure} assigns \(0,\pm1\) to the legal inner branch and confirms that empty cells and arbitrary interval locations require no alteration. Lemma~\ref{lem:step-010-measure-accounting} now yields
\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
&\leq
\kappa V_d(2R)^{d-1}\lvert E_1\rvert
+\kappa V_d(2R)^{d-1}\lvert E_d\rvert\\
&=
\kappa(2R)^{d-1}V_d
(\lvert E_1\rvert+\lvert E_d\rvert)\\
&=
\kappa(2R)^{d-1}V_d\lvert J\rvert.
\end{aligned}
\]
The two chart integrals charge disjoint parameter cells; they do not produce a factor of two.

Now suppose \(d=1\). Proposition~\ref{prop:step-009-linear-case} supplies the sole legal cell \(E_1=J\), the chart \(T_1=-\theta\), and
\[
\lvert\partial_\theta T_1\rvert=1=V_1.
\]
The \(N=1\) case of Proposition~\ref{prop:step-003-pivot-sweep} and Lemma~\ref{lem:step-010-measure-accounting} give
\[
\begin{aligned}
\Pr_{\alpha_0\sim\mu}[\exists\theta\in J:p_{\alpha_0}(\theta)=0]
&\leq
\kappa\int_J\int_{[-R,R]^0}
\mathbf 1\{\lvert T_1(\theta)\rvert\leq R\}
\lvert\partial_\theta T_1(\theta)\rvert\,d\lambda_0\,d\theta\\
&\leq
\kappa\int_J\int_{[-R,R]^0}1\,d\lambda_0\,d\theta\\
&=\kappa\lvert J\rvert\\
&=\kappa(2R)^0
\left(1+\frac{R\cdot1\cdot0}{2}\right)\lvert J\rvert.
\end{aligned}
\]

In both branches, Proposition~\ref{prop:step-009-two-pivot-charts} or Proposition~\ref{prop:step-009-linear-case} inserts the pivot into the same original coefficient vector and gives \(p_{\Psi_j(\theta,\beta)}(\theta)=0\). Hence the residual from the produced chart object to the consumed polynomial event is identically zero. \(\square\)

### unit_003: lemma

**Lemma (Degenerate bounded intervals are law-null).**
\(\label{lem:step-010-degenerate-interval}\)

Statement:
Under Assumption~\ref{assump:cube-density-laws} and Proposition~\ref{prop:step-009-monic-presentation}, let \(d\geq1\), let \(J\subset\mathbb R\) be a bounded interval with \(\lvert J\rvert=0\), and let \(\alpha\sim\mu\) have any Borel full joint density supported on \([-R,R]^d\) with \(f_\mu\leq\kappa\) almost everywhere. Then
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]=0.
\]
Consequently,
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
\leq
\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)\lvert J\rvert
=0.
\]

Proof / justification:
If \(J=\varnothing\), the event is empty. Otherwise, a real interval of length zero is a singleton, say \(J=\{\theta_0\}\). Proposition~\ref{prop:step-009-monic-presentation} identifies the event with
\[
\left\{\alpha\in[-R,R]^d:
\alpha_0=-\theta_0^d-\sum_{k=1}^{d-1}\alpha_k\theta_0^k\right\}.
\]
This is a closed affine-hyperplane slice because the coefficient of \(\alpha_0\) is exactly one. For each fixed \((\alpha_1,\ldots,\alpha_{d-1})\), its section in the \(\alpha_0\)-coordinate is empty or a singleton and therefore has one-dimensional Lebesgue measure zero. Tonelli gives zero \(d\)-dimensional Lebesgue measure. When \(d=1\), the nonpivot tuple is empty and the same set is the singleton \(\{\alpha_0=-\theta_0\}\cap[-R,R]\), so the argument remains literal.

Applying the full joint-density cap directly,
\[
\Pr_{\alpha\sim\mu}[p_\alpha(\theta_0)=0]
=
\int_{\{\alpha:p_\alpha(\theta_0)=0\}}f_\mu(\alpha)\,d\lambda_d(\alpha)
\leq
\kappa\lambda_d(\{\alpha:p_\alpha(\theta_0)=0\})
=0.
\]
No independence, marginal or conditional density, polynomial-root theorem, or randomized leading coordinate is used. Since \(\lvert J\rvert=0\), the target right-hand side is also zero. \(\square\)

### unit_004: proposition

**Proposition (Complete affine-monic presentation, certificate, and root-probability wrapper).**
\(\label{prop:step-010-complete-affine-monic-wrapper}\)

Statement:
Under Assumption~\ref{assump:cube-density-laws} in dimension \(d\), Proposition~\ref{prop:step-003-pivot-sweep}, Proposition~\ref{prop:step-009-monic-presentation}, Lemma~\ref{lem:step-009-derivative-shift}, Proposition~\ref{prop:step-009-two-pivot-charts}, Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity}, Proposition~\ref{prop:step-009-linear-case}, Claim~\ref{claim:step-009-boundary-index-closure}, Lemma~\ref{lem:step-010-measure-accounting}, Proposition~\ref{prop:step-010-positive-length}, and Lemma~\ref{lem:step-010-degenerate-interval}, let \(d\geq1\), \(R>0\), \(0<\kappa<\infty\), and let \(J\subset\mathbb R\) be any bounded interval. Let
\[
\alpha=(\alpha_0,\ldots,\alpha_{d-1})\sim\mu,
\]
where \(\mu\) is any Borel probability law on \(\mathbb R^d\) with one full joint density \(f_\mu\), supported on \([-R,R]^d\), satisfying \(f_\mu\leq\kappa\) almost everywhere; its coordinates may be arbitrarily correlated. Then the following conclusions hold simultaneously as one current-notation interface.

1. **Actual augmented presentation and random object.** The tuple and polynomial are
   \[
   (F_0,F_1,\ldots,F_d)
   =(\theta^d,1,\theta,\ldots,\theta^{d-1}),
   \qquad
   F=(1,\theta,\ldots,\theta^{d-1}),
   \]
   \[
   F_0(\theta)+\langle\alpha,F(\theta)\rangle
   =\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
   =p_\alpha(\theta)
   \quad\text{for every }\theta\in\mathbb R.
   \]
   The vector \(\alpha\in[-R,R]^d\) consists of exactly the \(d\) lower coefficients. The leading coefficient one is deterministic, belongs to \(F_0=\theta^d\), and is not a random or singular additional coordinate. The exact presentation parameters are
   \[
   q=M=m=0,\qquad
   \Delta=N=d,\qquad
   A=(2R)^d\kappa.
   \]

2. **Exact constant derivative-shift certificate.** With rows and columns indexed by \(0,1,\ldots,d\), define the constant \((d+1)\)-square matrix by
   \[
   B_{rs}=
   \begin{cases}
   d,&(r,s)=(0,d),\\
   k,&(r,s)=(k+1,k)\text{ for some }1\leq k\leq d-1,\\
   0,&\text{otherwise}.
   \end{cases}
   \]
   Equivalently, its exactly nonzero entries are
   \[
   B_{0,d}=d,\qquad
   B_{k+1,k}=k\quad(1\leq k\leq d-1),
   \]
   and
   \[
   \widetilde F'(\theta)=B\widetilde F(\theta)
   \quad\text{for every }\theta.
   \]
   Its exact setting certificate is
   \[
   \widehat\Lambda_{B,T}
   =\left(\sum_{k=1}^{d}k^2\right)^{1/2}.
   \]
   Because \(m=0\), this equality contains no interval-location factor and no hidden \(T\) factor. At \(d=1\),
   \[
   B=\begin{pmatrix}0&1\\0&0\end{pmatrix},
   \qquad
   \widehat\Lambda_{B,T}=1.
   \]

3. **Legal charts and velocities for \(d\geq2\).** The cells
   \[
   E_1=J\cap\{\lvert\theta\rvert\leq1\},
   \qquad
   E_d=J\cap\{\lvert\theta\rvert>1\},
   \qquad
   E_j=\varnothing\quad(2\leq j\leq d-1)
   \]
   form a measurable disjoint legal partition of \(J\), with
   \[
   \lvert E_1\rvert+\lvert E_d\rvert=\lvert J\rvert.
   \]
   On \(E_1\), the legal pivot is the original coefficient \(\alpha_0\) multiplying \(F_1=1\), and
   \[
   T_1(\theta,\beta)
   =-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
   \qquad
   \Psi_1(\theta,\beta)
   =(T_1(\theta,\beta),\beta_1,\ldots,\beta_{d-1}).
   \]
   On \(E_d\), the legal pivot is the original coefficient \(\alpha_{d-1}\) multiplying \(F_d=\theta^{d-1}\neq0\), and
   \[
   T_d(\theta,\beta)
   =-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1},
   \qquad
   \Psi_d(\theta,\beta)
   =(\beta_0,\ldots,\beta_{d-2},T_d(\theta,\beta)).
   \]
   In both cases \(\beta\in[-R,R]^{d-1}\), and
   \[
   \lambda_{d-1}([-R,R]^{d-1})=(2R)^{d-1}.
   \]
   The insertion maps are in the original order \((\alpha_0,\ldots,\alpha_{d-1})\), and
   \[
   F_0(\theta)+\langle\Psi_1(\theta,\beta),F(\theta)\rangle
   =p_{\Psi_1(\theta,\beta)}(\theta)=0,
   \]
   \[
   F_0(\theta)+\langle\Psi_d(\theta,\beta),F(\theta)\rangle
   =p_{\Psi_d(\theta,\beta)}(\theta)=0.
   \]
   Thus the residual from either produced chart vector to the target polynomial is exactly zero. The inserted vector belongs to the support cube exactly when its pivot also satisfies \(\lvert T_1\rvert\leq R\) or \(\lvert T_d\rvert\leq R\), respectively.

   With
   \[
   V_d:=d+\frac{Rd(d-1)}2,
   \]
   the exact derivative formulas and accepted bounds are
   \[
   \partial_\theta T_1
   =-d\theta^{d-1}-\sum_{k=1}^{d-1}k\beta_k\theta^{k-1},
   \qquad
   \lvert\partial_\theta T_1\rvert\leq V_d,
   \]
   \[
   \partial_\theta T_d
   =-1+\sum_{k=0}^{d-2}(d-1-k)\beta_k\theta^{k-d},
   \]
   \[
   \lvert\partial_\theta T_d\rvert
   \leq
   1+R\sum_{m=1}^{d-1}\frac{m}{\lvert\theta\rvert^{m+1}}
   \leq1+\frac{Rd(d-1)}2
   \leq V_d.
   \]

4. **Separate linear chart.** At \(d=1\),
   \[
   (F_0,F_1)=(\theta,1),\qquad
   p_{\alpha_0}(\theta)=\theta+\alpha_0,
   \qquad
   E_1=J,
   \]
   and the beta space is genuinely zero-dimensional:
   \[
   [-R,R]^0=\{()\},\qquad
   \lambda_0([-R,R]^0)=1=(2R)^0.
   \]
   The sole legal chart is
   \[
   T_1(\theta)=-\theta,\qquad
   \Psi_1(\theta)=(-\theta),\qquad
   p_{\Psi_1(\theta)}(\theta)=0,
   \]
   and
   \[
   \lvert\partial_\theta T_1\rvert=1=V_1.
   \]
   No beta coordinate is introduced.

5. **Boundary, dimension, and location closure.** The inner chart handles \(\theta=0,\theta=1,\theta=-1\); the outer chart handles both signs of \(\theta\) whenever \(\lvert\theta\rvert>1\). Empty \(J\), empty active cells, and intervals lying in only one region require no change. At \(d=2\), the generic formulas specialize to
   \[
   (F_0,F_1,F_2)=(\theta^2,1,\theta),
   \qquad
   B=\begin{pmatrix}0&0&2\\0&0&0\\0&1&0\end{pmatrix},
   \qquad
   \widehat\Lambda_{B,T}=\sqrt5,
   \]
   \[
   T_1=-\theta^2-\beta_1\theta,
   \qquad
   T_2=-\theta-\beta_0\theta^{-1},
   \qquad
   \lvert\partial_\theta T_1\rvert\leq2+R,
   \qquad
   \lvert\partial_\theta T_2\rvert\leq1+R\leq2+R.
   \]
   Every coefficient vector has dimension \(d\), every beta cube has dimension \(d-1\), and \(B\) has dimension \(d+1\). None of the presentation, certificate, chart, velocity, or probability conclusions depends on the location of \(J\).

6. **Exact ordinary-probability bridge for every bounded interval.** For the same original law \(\mu\), with no independence assumption and for every bounded interval \(J\), including empty and singleton intervals,
   \[
   \boxed{
   \Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
   \leq
   \kappa(2R)^{d-1}
   \left(d+\frac{Rd(d-1)}2\right)\lvert J\rvert.}
   \]
   When \(\lvert J\rvert=0\), the event is empty or a proper affine-hyperplane slice and has probability zero under the same full joint density. When \(d=1\), the displayed bound is exactly \(\kappa\lvert J\rvert\).

Proof / justification:
Proposition~\ref{prop:step-009-monic-presentation} gives clause 1 exactly. Lemma~\ref{lem:step-009-derivative-shift} gives clause 2 exactly, including the \(d=1\) matrix and the absence of a \(T\) factor. Proposition~\ref{prop:step-009-two-pivot-charts}, Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity}, and Lemma~\ref{lem:step-010-measure-accounting} give clause 3. Proposition~\ref{prop:step-009-linear-case} and Lemma~\ref{lem:step-010-measure-accounting} give clause 4. Claim~\ref{claim:step-009-boundary-index-closure} gives clause 5, including the explicit \(d=2\) specialization and arbitrary interval location.

For \(\lvert J\rvert>0\), Proposition~\ref{prop:step-010-positive-length} applies Proposition~\ref{prop:step-003-pivot-sweep} to these exact original-coordinate charts, uses the same full joint-density cap, and proves clause 6. For \(\lvert J\rvert=0\), Lemma~\ref{lem:step-010-degenerate-interval} proves clause 6 by affine-hyperplane nullity. These cases exhaust every bounded interval.

Every item in the statement is therefore either an exact current accepted dependency conclusion or the exact local integration/nullity bridge proved above. No bare Step ID, local unit ID, review decision, archive artifact, or Target-Step Assembly paragraph is used as mathematical authority. The proposition itself is the complete theorem-style interface. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-010-complete-affine-monic-wrapper} is the direct authority for the target row and for downstream step_012. Its statement, before its proof, names Proposition~\ref{prop:step-003-pivot-sweep} and all seven required current step_009 authorities and explicitly exports:

- the actual tuple \((\theta^d,1,\theta,\ldots,\theta^{d-1})\), the exact \(d\)-coordinate lower-coefficient vector, the identity to \(p_\alpha\), and the deterministic leading coefficient;
- \(q=M=m=0\), \(\Delta=N=d\), \(A=(2R)^d\kappa\), the exact \((d+1)\)-square matrix including \(d=1\), and \(\widehat\Lambda_{B,T}=(\sum_{k=1}^{d}k^2)^{1/2}\);
- the measurable legal cells, both exact \(d\geq2\) charts, original-coordinate insertion maps, regional and common velocity bounds, the separate zero-dimensional \(d=1\) chart, and every boundary, sign, empty-cell, \(d=2\), and arbitrary-location branch; and
- the exact ordinary-probability inequality for every arbitrary correlated full joint-density law and every bounded interval.

The probability conclusion follows inside the named wrapper through Proposition~\ref{prop:step-010-positive-length}, which specializes the accepted sweep proposition and uses Lemma~\ref{lem:step-010-measure-accounting}, and through Lemma~\ref{lem:step-010-degenerate-interval} for zero length. Thus the complete presentation/certificate and probability package reaches step_012 through one named theorem-style result, with no transitive prose-only clause and no assembly-only authority.

## Explicit Rate Audit

- Exposed variables: \(d\geq1\), \(R>0\), \(0<\kappa<\infty\), \(\lvert J\rvert\), the full law \(\mu\), and the exact deterministic data
  \[
  q=M=m=0,\quad
  \Delta=N=d,\quad
  A=(2R)^d\kappa,\quad
  B,\quad
  \widehat\Lambda_{B,T}
  =\left(\sum_{k=1}^{d}k^2\right)^{1/2},\quad
  V_d=d+\frac{Rd(d-1)}2.
  \]
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d,R,\kappa\), the law, coefficient correlations, the location or endpoint convention of \(J\), a containing \(T\), a pivot threshold, the number of active charts, a leading-coordinate approximation, an auxiliary tolerance, a confidence level, or any unrecorded quantity.
- Fixed quantities: For each application, \(d,R,\kappa\), the deterministic augmented monomial tuple, and its constant matrix are fixed before \(\mu\) and \(J\) are selected. A compact \(\Theta\supseteq J\) is only the accepted setting instantiation for the positive-length dependency and leaves no final factor.
- Probability mode: Ordinary probability for each arbitrary correlated Borel full joint law. There is no expectation, high-probability statement, confidence parameter, conditioning event, union-bound conversion, marginalization premise, or independence premise.
- Horizon mode: Every bounded interval \(J\), uniformly in location and endpoint convention. Positive-length intervals use the accepted sweep; zero-length intervals use direct affine-hyperplane nullity. There is no recursive, asymptotic, stopping-time, or all-time upgrade.
- Norm and measure mode: Scalar absolute value for chart velocity; Euclidean/Frobenius coefficient height for \(B\); \(d\)-dimensional Lebesgue measure in the original coefficient coordinates; \((d-1)\)-dimensional beta measure; and one-dimensional Lebesgue length \(\lvert J\rvert\). At \(d=1\), beta measure is \(\lambda_0\) with mass one.
- Admissibility conditions and auxiliary tolerances: Exactly \(d\geq1\), \(R>0\), \(0<\kappa<\infty\), a full joint density supported on \([-R,R]^d\) and capped by \(\kappa\), and bounded \(J\). There is no auxiliary tolerance, pivot margin, root-simplicity condition, transversality condition, confidence parameter, or extra coordinate.
- Term absorption or simplification inequalities:
  \[
  \widehat\Lambda_{B,T}^2
  =d^2+\sum_{k=1}^{d-1}k^2
  =\sum_{k=1}^{d}k^2,
  \]
  \[
  \lvert\partial_\theta T_1\rvert
  \leq d+\frac{Rd(d-1)}2,
  \]
  \[
  \lvert\partial_\theta T_d\rvert
  \leq1+\frac{Rd(d-1)}2
  \leq d+\frac{Rd(d-1)}2,
  \]
  \[
  \lambda_{d-1}([-R,R]^{d-1})=(2R)^{d-1},
  \qquad
  \lvert E_1\rvert+\lvert E_d\rvert=\lvert J\rvert,
  \]
  with \((2R)^0=1\) and sole cell \(E_1=J\) at \(d=1\). No term is dropped or absorbed by prose.
- Probability conversion: None. Proposition~\ref{prop:step-003-pivot-sweep} applies the full joint-density cap directly for positive length. Lemma~\ref{lem:step-010-degenerate-interval} applies the same cap directly to a Lebesgue-null affine hyperplane for zero length.
- Contribution to Rate Objective R1: The wrapper re-exports the exact constant shift matrix and exact certificate. Since \(m=0\), \(T_*^0=1\); the R1 specialization has no loss, hidden constant, interval-location dependence, or hidden \(T\) factor.
- Contribution to Rate Objective R4: The wrapper is the complete public baseline bridge. It combines the accepted original-coordinate chart theorem, the accepted deterministic monic package, exact beta volume, and exact partition length to produce the literal coefficient
  \[
  \kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right).
  \]
- Baseline-invariance audit: The produced tuple and consumed polynomial are pointwise identical; the chart-produced vector and consumed coefficient vector have the same \(d\) coordinates and ordering; the leading coefficient remains deterministic; the law, interval, probability mode, and scalar/Euclidean conventions are unchanged; every residual is zero; and no remainder or conservative loss appears. At \(d=1\), the package reduces exactly to \((\theta,1)\), the displayed \(2\)-by-\(2\) matrix, height one, zero-dimensional beta measure one, and probability bound \(\kappa\lvert J\rvert\).

## Blockers

None

## Notation And Assumption Notes

- Public-facing inherited objects: \(F_0,F_1,\ldots,F_d\), \(F\), \(\alpha\), \(p_\alpha\), \(q,M,m,\Delta,N,A\), \(B\), \(\widehat\Lambda_{B,T}\), \(E_1,E_d\), \(T_1,T_d\), \(\Psi_1,\Psi_d\), their beta-coordinate domains, and \(V_d\) retain exactly their current accepted step_009 meanings. The insertion maps appear because the binding wrapper interface explicitly requires coefficient insertion into the same original vector.
- Public-facing new interface: Proposition~\ref{prop:step-010-complete-affine-monic-wrapper} is the sole new theorem-facing object. It packages, without altering, the inherited deterministic objects and the locally proved probability bridge for direct consumption by step_012.
- Appendix-local objects: None beyond the inherited chart coordinates already required in the public wrapper statement.
- Proof-local objects: \(\lambda_{d-1}\) and \(\lambda_d\) record beta and coefficient dimensions. The fixed-\(\theta_0\) affine-hyperplane slice in Lemma~\ref{lem:step-010-degenerate-interval} is used only for the zero-length boundary and is not exported as an auxiliary theorem object.
- Coefficient ordering and dimensions: feature coordinate \(j\in\{1,\ldots,d\}\) is \(F_j(\theta)=\theta^{j-1}\) and is paired with the original coefficient \(\alpha_{j-1}\). Thus the pivots are exactly \(\alpha_0\) and \(\alpha_{d-1}\), every beta cube has dimension \(d-1\), the full joint law has dimension \(d\), and the augmented matrix has dimension \(d+1\). There is no coefficient \(\alpha_d\).
- Constant provenance: \(R\) and \(\kappa\) belong to Assumption~\ref{assump:cube-density-laws}; \(A=(2R)^d\kappa\) is inherited from Proposition~\ref{prop:step-009-monic-presentation}; every matrix entry and the certificate height are inherited from Lemma~\ref{lem:step-009-derivative-shift}; the regional velocity bounds are inherited from Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity}; \(V_d\) is their accepted common cap; and the beta-volume and interval-length factors are proved by Lemma~\ref{lem:step-010-measure-accounting}. No free or hidden constant occurs.
- Assumption provenance: the full joint-density law is the sole primitive theorem-facing condition of this step. The presentation, closure, matrix, certificate, legal pivots, chart identities, velocity bounds, and boundary validity are accepted dependency conclusions. Exact measure accounting and zero-length nullity are proved locally. No generated event, pivot margin, boundedness fact, regularity condition, independence property, or leading-coordinate law is assumed.
- Source-to-claim and residual audit: Proposition~\ref{prop:step-003-pivot-sweep} acts on the actual \(d\)-dimensional coefficient vector. The step_009 insertion maps return that same ordered vector, and their affine root identity is exactly \(p_\alpha(\theta)=0\). The source and target law, cube, interval, scalar coordinate, and measure conventions coincide. Every transfer residual is identically zero.
- Boundary audit: \(\theta=0,\pm1\) uses the inner constant pivot; negative outer \(\theta\) uses the accepted signed derivative and absolute reciprocal-power bound; \(d=2\) is displayed in the wrapper statement; empty cells integrate to zero; \(d=1\) has no beta coordinate; empty intervals have empty events; singleton intervals give proper affine-hyperplane slices; and no statement depends on where \(J\) lies.
- Rate-object surface: R1 exports the exact matrix and certificate equality. R4 exports the exact ordinary-probability inequality. No auxiliary threshold, hidden location scale, confidence parameter, chart-count factor, or singular leading-coordinate approximation is present.
- Diagnostic boundary: the two authorized sketch-attempt-1 archive files were consulted only to preserve the stable labels \(\ref{lem:step-010-measure-accounting}\), \(\ref{prop:step-010-positive-length}\), and \(\ref{lem:step-010-degenerate-interval}\). Their claims are reproved here from current accepted dependencies. No archived statement or review status is current evidence. Neither global diagnostic file was read.
