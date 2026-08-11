# Proof Step

## Step Identity

- Branch path: `perspective_2/idea_1`
- Sketch attempt: 2
- Step ID: `step_011`
- Unit attempt: 1
- Binding idea SHA-256: `5209aa21929e84604acb2712d8657460a48463901738fd00ebafaa84d5c43596`
- Binding setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Binding accepted proof-sketch SHA-256: `41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4`
- Binding accepted proof-sketch-review SHA-256: `a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9`
- Binding controller-open proof-tracker SHA-256: `19b3d4d53e529e318df561df47548606238040acd2b0ddc5f2f621574990d68a`
- Binding accepted `step_001` proof SHA-256: `6986e91d1b2a06c451ae6bba842e30747ac507bf3e0eeee09371c1af0b6d4ff8`
- Binding accepted `step_001` review SHA-256: `4ec6dfad924606b81aa28203e98ac3989ae15cf573297004efbd7036e4455f55`
- Binding accepted `step_008` proof SHA-256: `957f7441096a04d797c31a40b01bdb7bd06e696d79eb5f4439ad535f2d3cc085`
- Binding accepted `step_008` review SHA-256: `3bfe1e0e150e31cbff126ba2cbdf735c717506d64bacd73913ebeabc24fd9a19`
- Run mode: interactive
- Progress type: `full`

Before either dependency proof was consumed, both dependency pairs were verified against their current reviews:

- `step_001`: sketch attempt 2, Step ID `step_001`, unit attempt 2, reviewed proof
  `perspective_2/idea_1/proof_steps/step_001/proof.md`, reviewed proof SHA-256
  `6986e91d1b2a06c451ae6bba842e30747ac507bf3e0eeee09371c1af0b6d4ff8`, matching current proof digest,
  review SHA-256 `4ec6dfad924606b81aa28203e98ac3989ae15cf573297004efbd7036e4455f55`, and status `ACCEPTED`.
- `step_008`: sketch attempt 2, Step ID `step_008`, unit attempt 1, reviewed proof
  `perspective_2/idea_1/proof_steps/step_008/proof.md`, reviewed proof SHA-256
  `957f7441096a04d797c31a40b01bdb7bd06e696d79eb5f4439ad535f2d3cc085`, matching current proof digest,
  review SHA-256 `3bfe1e0e150e31cbff126ba2cbdf735c717506d64bacd73913ebeabc24fd9a19`, and status `ACCEPTED`.

All listed hashes were recomputed against the current artifacts before this proof was written. The accepted
sketch review has status `ACCEPTED`; the controller-open tracker records the same current dependency attempts
and this open sketch-attempt-2, unit-attempt-1 row. No global proof or global review was read or used. The
archived sketch-attempt-1 same-step proof/review pair was consulted only as diagnostic organization after its
two supplied hashes were verified; it is not current evidence or mathematical authority.

## Target Step Claim

The exact accepted sketch row is:

- Intended claim: For \(F=(1,\theta/\delta)\), prove the exact matrix certificate and projective speed, use
  `step_008` for the \(1/\delta\) upper bound, compute the exact \(\epsilon/(4\delta)\) probability, and record
  the lower ratio.
- Depends on: `step_001`, `step_008`.
- Assumptions used: Primitive specialization of all four assumptions; derived: both dependencies.
- Technical challenge: Include both sign wedges, coefficient-axis null sets, and the endpoint cases while
  ensuring the static annotation records the metric rescaling.
- Intended proof tool or cited result: Direct normalized-curve derivative and planar Lebesgue-area calculation.
- Output target: Counter-example 1 scale-audit clause.
- Rate objective: R5 and consistency with R1/R3.
- Row-local review status: `PENDING`. Sketch-level acceptance is supplied by the binding
  `proof_sketch_review.md`, whose status is `ACCEPTED`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: specialize to \(N=2\), \(\Theta=[-1,1]\), \(R=1\), and
    \(\kappa=1/4\), so \(A=(2R)^N\kappa=1\). A legal containing envelope has \(T\geq1\); because \(m=0\),
    the certificate below is independent of which such \(T\) is used. The scale parameters are fixed with
    \(0<\epsilon\leq\delta\leq1\) before the original lower coefficient vector
    \((\alpha_1,\alpha_2)\in[-1,1]^2\) is sampled.
  - `assump:balcan-common-chain`: use the empty chain \(q=0\), hence \(M=0\), with output polynomials
    \(Q_0=0\), \(Q_1=1\), and \(Q_2(\theta)=\theta/\delta\). Thus \(\Delta=1\).
  - `assump:anchored-derivative-closure`: use \(j_*=1\),
    \(\widetilde F=(F_0,F_1,F_2)=(0,1,\theta/\delta)\), and the supplied constant matrix whose only nonzero
    entry is \(B_{2,1}=1/\delta\), with rows and columns ordered as \(0,1,2\).
  - `assump:cube-density-laws`: for the upper theorem, the law remains an arbitrary possibly correlated member
    of \(\mathcal D_{2,1,1/4}\). For the required direct lower calculation only, select the source law in which
    \(\alpha_1,\alpha_2\) are independent uniform random variables on \([-1,1]\); its joint density is exactly
    \(1/4\) on the square, so it is one admissible member of the same class.
- Derived invariants supplied by accepted dependencies:
  - Accepted `step_001` proof/review, with proof SHA-256
    `6986e91d1b2a06c451ae6bba842e30747ac507bf3e0eeee09371c1af0b6d4ff8` and review SHA-256
    `4ec6dfad924606b81aa28203e98ac3989ae15cf573297004efbd7036e4455f55`: accepted
    Lemma~\ref{lem:step-001-height}, Proposition~\ref{prop:step-001-projective}, and
    Proposition~\ref{prop:step-001-boundary} supply the literal coefficient-height interface, homogeneous
    normalized-derivative interface, projective certificate, and exact one-entry-shear certificate.
  - Accepted `step_008` proof/review, with proof SHA-256
    `957f7441096a04d797c31a40b01bdb7bd06e696d79eb5f4439ad535f2d3cc085` and review SHA-256
    `3bfe1e0e150e31cbff126ba2cbdf735c717506d64bacd73913ebeabc24fd9a19`: accepted
    Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate} and
    Proposition~\ref{prop:step-008-s2-pf-closure} supply the sharper homogeneous interval and capacity bounds
    for every admissible possibly correlated law.
- Local conditional hypotheses: None. The restrictions \(0<\epsilon\leq\delta\leq1\) are static admissibility
  conditions in the accepted target, not generated invariants.

No coordinate independence is imposed on the general law class. Independence appears only in the particular
uniform source law whose exact probability is calculated below. No transversality, simple-root condition,
nonzero-coefficient condition, or exclusion of endpoint roots is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Exact one-entry derivative certificate (`lem:step-011-shear-certificate`): Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, if \(0<\delta\leq1\) and \(\widetilde F=(0,1,\theta/\delta)\) with row/column ordering \(0,1,2\), then \(q=M=m=0\), \(\Delta=1\), \(N=2\), the sole nonzero closure entry is \(B_{2,1}=1/\delta\), and \(\widehat\Lambda_{B,T}=1/\delta\) independently of the legal containing \(T\). | Proves the exact static annotation and exposes the metric-rescaling scale. |
| `unit_002` | lemma | Exact Euclidean projective speed (`lem:step-011-projective-speed`): Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and Lemma~\ref{lem:step-011-shear-certificate}, if \(F=(1,\theta/\delta)\) on \([-1,1]\), then for \(x=\theta/\delta\), \(\lVert\gamma_F'(\theta)\rVert_2=1/[\delta(1+x^2)]\), \(\Gamma_{\mathrm{proj}}(F)=1/\delta\), and \(\gamma_F'(0)=(0,1/\delta)\). | Computes the conditioning quantity exactly and verifies that its maximum is active at interval entry. |
| `unit_003` | proposition | Exact homogeneous upper coefficient (`prop:step-011-upper-coefficient`): Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:cube-density-laws}, and \ref{assump:anchored-derivative-closure}, accepted Propositions~\ref{prop:step-008-s2-pairwise-homogeneous-rate} and \ref{prop:step-008-s2-pf-closure}, and Lemmas~\ref{lem:step-011-shear-certificate} and \ref{lem:step-011-projective-speed}, every \(\mu\in\mathcal D_{2,1,1/4}\) and positive-length interval \(I\subseteq[-1,1]\) satisfy the exact bound with coefficient \(1/\delta\), and \(C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])\leq1/\delta\). | Supplies the dependency-based upper comparison without restricting the general law to independent coordinates. |
| `unit_004` | lemma | Exact root-wedge equivalence (`lem:step-011-root-wedges`): Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-derivative-closure}, Lemma~\ref{lem:step-011-shear-certificate}, and \(0<\epsilon\leq\delta\leq1\), the coefficient vectors in \([-1,1]^2\) producing a root in \([0,\epsilon]\) are exactly two closed opposite-sign wedges, including their coefficient-axis and endpoint boundaries; off the coordinate axes this is exactly the condition \(\alpha_1\alpha_2<0\) and \(\lvert\alpha_1\rvert\leq(\epsilon/\delta)\lvert\alpha_2\rvert\). | Identifies the precise event, both signs, axes, equality boundaries, and endpoint roots. |
| `unit_005` | proposition | Exact wedge probability (`prop:step-011-wedge-probability`): Under Assumption~\ref{assump:cube-density-laws}, the selected independent uniform source law, and Lemma~\ref{lem:step-011-root-wedges}, the two wedges have total planar area \(\epsilon/\delta\), and the exact root probability is \(\epsilon/(4\delta)\) for every \(0<\epsilon\leq\delta\leq1\). | Performs the direct source-example lower calculation, including all measure-zero interfaces. |
| `unit_006` | proposition | Exact normalized scale comparison (`prop:step-011-scale-comparison`): Under Lemma~\ref{lem:step-011-shear-certificate} and Propositions~\ref{prop:step-011-upper-coefficient} and \ref{prop:step-011-wedge-probability}, the selected source law has exact positive-length lower ratio \(1/(4\delta)\); separately, the dependency-supplied general upper coefficient is \(1/\delta\), and the raw one-entry Euclidean certificate is \(1/\delta\). The roles and constants remain distinct at \(\epsilon=\delta\), \(\delta=1\), and as \(\epsilon\downarrow0\) only through positive lengths. | Records quantitatively, without claiming an optimal constant, that the normalization captures the source \(1/\delta\) obstruction. |

Atomic step = no. The static certificate, normalized-curve derivative, dependency specialization, root-event
geometry, planar-area calculation, and normalized comparison are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: static and projective certificate

- Source or name: Accepted Lemma~\ref{lem:step-001-height},
  Proposition~\ref{prop:step-001-projective}, and
  Proposition~\ref{prop:step-001-boundary} from `step_001`; proof SHA-256
  `6986e91d1b2a06c451ae6bba842e30747ac507bf3e0eeee09371c1af0b6d4ff8`, matching accepted review SHA-256
  `4ec6dfad924606b81aa28203e98ac3989ae15cf573297004efbd7036e4455f55`.
- Restated statement in current notation: The literal matrix coefficient list gives
  
  \[
  \sup_{\theta\in\Theta}\lVert B(\theta)\rVert_{\mathrm{op}}
  \leq\widehat\Lambda_{B,T}.
  \]
  
  If \(F_0\equiv0\), then the anchor makes \(F\neq0\),
  
  \[
  \gamma_F'
  =(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
  \qquad
  \Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}.
  \]
  
  For the constant \(3\)-coordinate shear whose sole nonzero entry is \(B_{2,1}=1/\delta\), its literal
  certificate is \(1/\delta\).
- Instantiated objects: \(N=2\), \(F_0=0\), \(F=(F_1,F_2)=(1,\theta/\delta)\), and the matrix in
  Lemma~\ref{lem:step-011-shear-certificate}, all in the original \(\theta\)-coordinate and Euclidean norm.
- Required assumptions and discharge: Assumptions~\ref{assump:parameter-regime},
  \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure} are specialized explicitly in
  the allowed-input section and verified again in Lemma~\ref{lem:step-011-shear-certificate}. The condition
  \(F_0=0\) is literal.
- Conclusion used: The legal coefficient-height and homogeneous projective interfaces, and a dependency
  cross-check on the exact shear height.
- Nonoutputs: This dependency supplies neither the exact projective-speed equality nor any root probability;
  those are proved in this step.

### Accepted dependency: sharper homogeneous probability bound

- Source or name: Accepted Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate} and
  Proposition~\ref{prop:step-008-s2-pf-closure} from `step_008`; proof SHA-256
  `957f7441096a04d797c31a40b01bdb7bd06e696d79eb5f4439ad535f2d3cc085`, matching accepted review SHA-256
  `3bfe1e0e150e31cbff126ba2cbdf735c717506d64bacd73913ebeabc24fd9a19`.
- Restated statement in current notation: If \(F_0\equiv0\), then every
  \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\) with positive length satisfy
  
  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
  \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)\lvert I\rvert
  \leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}\lvert I\rvert,
  \]
  
  and
  
  \[
  C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
  \leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
  \]
- Instantiated objects: \(N=2\), \(R=1\), \(\kappa=1/4\),
  \(A=(2R)^N\kappa=1\), \(\Theta=[-1,1]\), and the exact feature curve above.
- Required assumptions and discharge: Assumptions~\ref{assump:parameter-regime},
  \ref{assump:balcan-common-chain}, \ref{assump:cube-density-laws}, and
  \ref{assump:anchored-derivative-closure} are specialized in the allowed-input section. The literal condition
  \(F_0\equiv0\) holds. The accepted dependency review certifies the original possibly correlated full joint
  law, ordinary probability, positive-length interval, Euclidean norm, stationary branch, and exact constant.
  Lemmas~\ref{lem:step-011-shear-certificate} and \ref{lem:step-011-projective-speed} supply the exact instance
  values inserted into that unchanged interface.
- Conclusion used: Only the upper interval and capacity coefficients in
  Proposition~\ref{prop:step-011-upper-coefficient}.
- Nonoutputs: This dependency assumes no independence and supplies no exact probability or lower ratio for the
  selected uniform law.

### Elementary facts used in current notation

- One-variable differentiation: for \(x=\theta/\delta\), \(x'=1/\delta\), and direct product and chain rules
  differentiate \((1,x)(1+x^2)^{-1/2}\). The denominator is positive for every real \(x\).
- Euclidean norm: for \(v=(v_1,v_2)\),
  \(\lVert v\rVert_2=(v_1^2+v_2^2)^{1/2}\). This is the sole vector norm in the projective calculation.
- Planar slice integration: if a measurable planar set has vertical slice length \(g(s)\geq0\), nonnegative
  Fubini integration gives its Lebesgue area as \(\int g(s)\,ds\). It is applied to triangular slices of length
  \(ts\) for \(0\leq s\leq1\).
- Uniform-density integration: for the selected independent uniforms on \([-1,1]\), each marginal density is
  \(1/2\), so the joint density is \(1/4\) on \([-1,1]^2\); the probability of a measurable subset is therefore
  one fourth of its planar area. This product calculation is used only for the selected source law.

### Current-step result application ledger

| Paper-ready result | Restated conclusion | Established from | Used by |
| ------------------ | -------------------- | ---------------- | ------- |
| Lemma~\ref{lem:step-011-shear-certificate} | The ordered augmented tuple has the exact one-entry closure and \(\widehat\Lambda_{B,T}=1/\delta\). | Direct output-degree, matrix-product, and coefficient-height calculations, consistent with accepted Lemma~\ref{lem:step-001-height} and Proposition~\ref{prop:step-001-boundary}. | Lemma~\ref{lem:step-011-projective-speed}, Proposition~\ref{prop:step-011-upper-coefficient}, and Lemma~\ref{lem:step-011-root-wedges}. |
| Lemma~\ref{lem:step-011-projective-speed} | \(\lVert\gamma_F'(\theta)\rVert_2=1/[\delta(1+(\theta/\delta)^2)]\), with supremum and active value \(1/\delta\) at \(\theta=0\). | Direct Euclidean differentiation. | Proposition~\ref{prop:step-011-upper-coefficient} and target-step assembly. |
| Proposition~\ref{prop:step-011-upper-coefficient} | Every admissible, possibly correlated law has upper interval coefficient \(1/\delta\), and the homogeneous capacity is at most \(1/\delta\). | Accepted Propositions~\ref{prop:step-008-s2-pairwise-homogeneous-rate} and \ref{prop:step-008-s2-pf-closure}, \(A=1\), \(N=2\), and the two exact instance values. | Proposition~\ref{prop:step-011-scale-comparison} and target-step assembly. |
| Lemma~\ref{lem:step-011-root-wedges} | The full root event is exactly the union of the two closed wedges, with axes and endpoint boundaries included. | Solving the scalar root equation separately for positive, negative, and zero \(\alpha_2\). | Proposition~\ref{prop:step-011-wedge-probability}. |
| Proposition~\ref{prop:step-011-wedge-probability} | The total area is \(\epsilon/\delta\), and the selected uniform-law probability is \(\epsilon/(4\delta)\). | Lemma~\ref{lem:step-011-root-wedges}, slice integration, and density \(1/4\). | Proposition~\ref{prop:step-011-scale-comparison} and target-step assembly. |
| Proposition~\ref{prop:step-011-scale-comparison} | The positive-length lower ratio is \(1/(4\delta)\); separately, the general upper coefficient and raw one-entry certificate are each \(1/\delta\), with distinct roles and all stated boundary regimes retained. | Lemma~\ref{lem:step-011-shear-certificate} and Propositions~\ref{prop:step-011-upper-coefficient} and \ref{prop:step-011-wedge-probability}. | Target-step assembly. |

No external paper result or independent root theorem is used.

## Local Derivation

### unit_001: lemma

**Lemma (Exact one-entry derivative certificate).**
\(\label{lem:step-011-shear-certificate}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and
\ref{assump:anchored-derivative-closure}, suppose \(0<\delta\leq1\), \(\Theta=[-1,1]\), and, in the exact
coordinate ordering \(0,1,2\),

\[
\widetilde F(\theta)
=
\begin{pmatrix}
F_0(\theta)\\ F_1(\theta)\\ F_2(\theta)
\end{pmatrix}
=
\begin{pmatrix}
0\\ 1\\ \theta/\delta
\end{pmatrix}.
\]

Then

\[
q=0,\qquad M=0,\qquad \Delta=1,\qquad N=2,\qquad m=0,
\]

and the constant matrix

\[
B
=
\begin{pmatrix}
0&0&0\\
0&0&0\\
0&1/\delta&0
\end{pmatrix}
\]

has the sole nonzero entry \(B_{2,1}=1/\delta\), satisfies

\[
\widetilde F'(\theta)=B\widetilde F(\theta),
\]

and has exact static certificate

\[
\widehat\Lambda_{B,T}=\frac1\delta.
\]

This value is independent of the legal containing parameter \(T\) satisfying
\([-1,1]\subseteq[-T,T]\).

**Proof / justification.** The chain is empty, so \(q=0\) and the setting convention gives \(M=0\). The three
output polynomials are \(Q_0=0\), \(Q_1=1\), and \(Q_2(\theta)=\theta/\delta\); their maximum total degree is
one, so \(\Delta=1\). There are two random-coordinate features, hence \(N=2\). The displayed matrix is constant,
so \(m=0\), and direct multiplication in the stated row-column ordering gives

\[
B\widetilde F(\theta)
=
\begin{pmatrix}
0\\ 0\\ (1/\delta)F_1(\theta)
\end{pmatrix}
=
\begin{pmatrix}
0\\ 0\\ 1/\delta
\end{pmatrix}
=\widetilde F'(\theta).
\]

Thus this is the supplied anchored closure matrix, with \(F_1\equiv1\) as the anchor. Its coefficient list has
only \(b_{2,1,0}=1/\delta\). Since \(m=0\), \(T_*^0=1\), and therefore the setting definition gives

\[
\begin{aligned}
\widehat\Lambda_{B,T}
&=\left(
\sum_{r=0}^{2}\sum_{s=0}^{2}
\left(\sum_{\ell=0}^{0}\lvert b_{rs,\ell}\rvert T_*^\ell\right)^2
\right)^{1/2}\\
&=\left(\left\lvert\frac1\delta\right\rvert^2\right)^{1/2}
=\frac1\delta,
\end{aligned}
\]

where the last equality uses \(\delta>0\). This direct calculation agrees with the accepted one-entry-shear
specialization in Proposition~\ref{prop:step-001-boundary}. Since the only power is \(T_*^0=1\), changing the
legal containing \(T\) changes neither the coefficient list nor the certificate. The certificate is therefore
a raw Euclidean coefficient-height calculation, not a value inferred from a later probability claim.
\(\square\)

### unit_002: lemma

**Lemma (Exact Euclidean projective speed).**
\(\label{lem:step-011-projective-speed}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and
\ref{assump:anchored-derivative-closure}, and Lemma~\ref{lem:step-011-shear-certificate}, let
\(F(\theta)=(1,\theta/\delta)\) on \(\Theta=[-1,1]\), with \(0<\delta\leq1\), and set
\(x=\theta/\delta\). Then

\[
\gamma_F(\theta)=\frac{(1,x)}{\sqrt{1+x^2}},
\qquad
\gamma_F'(\theta)
=\frac{(-x,1)}{\delta(1+x^2)^{3/2}},
\]

so

\[
\lVert\gamma_F'(\theta)\rVert_2
=\frac{1}{\delta(1+x^2)},
\qquad
\Gamma_{\mathrm{proj}}(F)=\frac1\delta.
\]

At \(\theta=0\),

\[
\gamma_F(0)=(1,0),
\qquad
\gamma_F'(0)=(0,1/\delta),
\qquad
\lVert\gamma_F'(0)\rVert_2=1/\delta.
\]

**Proof / justification.** The Euclidean norm is

\[
\lVert F(\theta)\rVert_2=\sqrt{1+x^2}>0,
\]

so normalization is valid everywhere, including the endpoints. Since \(x'=1/\delta\), direct differentiation
gives

\[
\begin{aligned}
\gamma_F'(\theta)
&=\frac1\delta\frac{d}{dx}
\left((1,x)(1+x^2)^{-1/2}\right)\\
&=\frac1\delta
\left(
-\frac{x}{(1+x^2)^{3/2}},
\frac{1}{(1+x^2)^{3/2}}
\right).
\end{aligned}
\]

Taking the Euclidean norm, without changing the parameter coordinate, yields

\[
\begin{aligned}
\lVert\gamma_F'(\theta)\rVert_2
&=\frac1\delta
\frac{\sqrt{x^2+1}}{(1+x^2)^{3/2}}\\
&=\frac{1}{\delta(1+x^2)}.
\end{aligned}
\]

Because \(1+x^2\geq1\), this is at most \(1/\delta\). The point \(\theta=0\in[-1,1]\) has \(x=0\) and
attains equality, so the ordinary supremum is exactly \(1/\delta\). Substitution at \(x=0\) gives the displayed
active vector value. The accepted projective certificate from Proposition~\ref{prop:step-001-projective}
therefore holds with equality for this instance. \(\square\)

### unit_003: proposition

**Proposition (Exact homogeneous upper coefficient).**
\(\label{prop:step-011-upper-coefficient}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain},
\ref{assump:cube-density-laws}, and \ref{assump:anchored-derivative-closure}, the accepted
Propositions~\ref{prop:step-008-s2-pairwise-homogeneous-rate} and
\ref{prop:step-008-s2-pf-closure}, and Lemmas~\ref{lem:step-011-shear-certificate} and
\ref{lem:step-011-projective-speed}, specialize to the following statement. For every possibly correlated law
\(\mu\in\mathcal D_{2,1,1/4}\) and every interval \(I\subseteq[-1,1]\) with \(\lvert I\rvert>0\),

\[
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\alpha_1+\alpha_2\theta/\delta=0]
\leq\frac1\delta\lvert I\rvert,
\]

and

\[
C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])\leq\frac1\delta.
\]

**Proof / justification.** For \(N=2\), \(R=1\), and \(\kappa=1/4\), the setting quantity is

\[
A=(2R)^N\kappa=2^2\cdot\frac14=1,
\qquad
A\sqrt{\frac N2}=1\cdot\sqrt{\frac22}=1.
\]

Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate} applies to every law in the original class,
without an independence hypothesis, and gives

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\alpha_1+\alpha_2\theta/\delta=0]
&\leq
A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)\lvert I\rvert\\
&=\frac1\delta\lvert I\rvert.
\end{aligned}
\]

Here Lemma~\ref{lem:step-011-projective-speed} supplies the exact equality
\(\Gamma_{\mathrm{proj}}(F)=1/\delta\). The certificate version has the identical coefficient because
Lemma~\ref{lem:step-011-shear-certificate} gives
\(\widehat\Lambda_{B,T}=1/\delta\). Proposition~\ref{prop:step-008-s2-pf-closure}, with the same substitution,
gives the capacity bound. Neither bound is clipped at one. This is solely the accepted dependency-supplied
upper theorem; no feature of the particular independent uniform law is used. \(\square\)

### unit_004: lemma

**Lemma (Exact root-wedge equivalence).**
\(\label{lem:step-011-root-wedges}\)

Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-derivative-closure},
Lemma~\ref{lem:step-011-shear-certificate}, and \(0<\epsilon\leq\delta\leq1\), define

\[
t:=\frac\epsilon\delta\in(0,1],
\]

and the two closed subsets of \([-1,1]^2\)

\[
\begin{aligned}
W_+(t)
&:=\{(\alpha_1,\alpha_2):0\leq\alpha_2\leq1,
-t\alpha_2\leq\alpha_1\leq0\},\\
W_-(t)
&:=\{(\alpha_1,\alpha_2):-1\leq\alpha_2\leq0,
0\leq\alpha_1\leq-t\alpha_2\}.
\end{aligned}
\]

Then the full coefficient event is exactly

\[
\{\alpha\in[-1,1]^2:\exists\theta\in[0,\epsilon],
\ \alpha_1+\alpha_2\theta/\delta=0\}
=W_+(t)\cup W_-(t).
\]

Off the coefficient axes this is equivalently the union of both opposite-sign wedges

\[
\alpha_1\alpha_2<0,
\qquad
\lvert\alpha_1\rvert\leq t\lvert\alpha_2\rvert.
\]

The boundary \(\alpha_1=0\) gives the endpoint root \(\theta=0\), the equality boundary
\(\lvert\alpha_1\rvert=t\lvert\alpha_2\rvert\) gives the endpoint root \(\theta=\epsilon\), and the only root
with \(\alpha_2=0\) is the origin, where the function is identically zero.

**Proof / justification.** Write \(u=\theta/\delta\). Since \(\delta>0\), the range
\(\theta\in[0,\epsilon]\) is exactly \(u\in[0,t]\), and the root equation becomes

\[
\alpha_1+\alpha_2u=0.
\]

If \(\alpha_2>0\), the unique candidate is \(u=-\alpha_1/\alpha_2\), and

\[
0\leq-\frac{\alpha_1}{\alpha_2}\leq t
\quad\Longleftrightarrow\quad
-t\alpha_2\leq\alpha_1\leq0.
\]

This is exactly the positive-\(\alpha_2\) part of \(W_+(t)\). If \(\alpha_2<0\), division reverses the
inequalities and gives

\[
0\leq-\frac{\alpha_1}{\alpha_2}\leq t
\quad\Longleftrightarrow\quad
0\leq\alpha_1\leq-t\alpha_2,
\]

which is exactly the negative-\(\alpha_2\) part of \(W_-(t)\). If \(\alpha_2=0\), the equation has a root if
and only if \(\alpha_1=0\); this origin belongs to both closed wedges. These three exhaustive cases prove the
event equality.

Because \(t\leq1\), the bounds \(\lvert\alpha_1\rvert\leq t\lvert\alpha_2\rvert\leq1\) keep both wedges
inside the coefficient square, including at \(t=1\). Away from the axes, the inequalities force strict opposite
signs. The candidate root is \(u=0\) when \(\alpha_1=0\) and \(u=t\) on the sloping equality boundary, proving
the two endpoint assertions rather than discarding their coefficient sets. \(\square\)

### unit_005: proposition

**Proposition (Exact wedge probability for the uniform source law).**
\(\label{prop:step-011-wedge-probability}\)

Under Assumption~\ref{assump:cube-density-laws}, let \(\alpha_1,\alpha_2\) be independent uniform random
variables on \([-1,1]\), solely for the required source example. Under the event identity of
Lemma~\ref{lem:step-011-root-wedges}, for every \(0<\epsilon\leq\delta\leq1\),

\[
\lambda_2(W_+(\epsilon/\delta)\cup W_-(\epsilon/\delta))
=\frac\epsilon\delta,
\]

and

\[
\Pr[\exists\theta\in[0,\epsilon]:
\alpha_1+\alpha_2\theta/\delta=0]
=\frac{\epsilon}{4\delta}.
\]

**Proof / justification.** Retain \(t=\epsilon/\delta\in(0,1]\). At a fixed
\(\alpha_2=s\in[0,1]\), the \(W_+(t)\) slice in the \(\alpha_1\)-coordinate is
\([-ts,0]\), of length \(ts\). Hence

\[
\lambda_2(W_+(t))
=\int_0^1 ts\,ds
=\frac t2.
\]

For \(W_-(t)\), substitute \(s=-\alpha_2\in[0,1]\); its slice length is again \(ts\), so

\[
\lambda_2(W_-(t))
=\int_0^1 ts\,ds
=\frac t2.
\]

The two wedges intersect only at the origin. Therefore

\[
\lambda_2(W_+(t)\cup W_-(t))
=2\int_0^1ts\,ds
=t
=\frac\epsilon\delta.
\]

This is the combined area of both sign quadrants, not the area of one wedge. The coefficient axes, the two
sloping equality edges, and the two outer square-edge segments are finite unions of line segments and hence
have planar Lebesgue measure zero. All closed boundaries were included in the exact event in
Lemma~\ref{lem:step-011-root-wedges}; their nullity is used only when evaluating area, not to remove either
endpoint root or any square-boundary coefficient from the event.

The selected product law has joint density exactly \(1/4\) on the square. Integrating that density over the
exact event gives

\[
\Pr[\exists\theta\in[0,\epsilon]:
\alpha_1+\alpha_2\theta/\delta=0]
=\frac14\lambda_2(W_+(t)\cup W_-(t))
=\frac{\epsilon}{4\delta}.
\]

At \(\epsilon=\delta\), \(t=1\), the two triangles have total area one and the probability is \(1/4\). At
\(\delta=1\), the same calculation holds for every \(0<\epsilon\leq1\). The \(\theta=0\) endpoint roots and
the \(\theta=\epsilon\) endpoint roots are already included exactly. \(\square\)

### unit_006: proposition

**Proposition (Exact normalized upper/lower scale comparison).**
\(\label{prop:step-011-scale-comparison}\)

Under Lemma~\ref{lem:step-011-shear-certificate} and
Propositions~\ref{prop:step-011-upper-coefficient} and
\ref{prop:step-011-wedge-probability}, for the selected uniform source law and every
\(0<\epsilon\leq\delta\leq1\),

\[
\frac{
\Pr[\exists\theta\in[0,\epsilon]:
\alpha_1+\alpha_2\theta/\delta=0]
}{\lvert[0,\epsilon]\rvert}
=\frac1{4\delta}.
\]

The three audit quantities are therefore:

\[
\text{selected-law lower ratio}=\frac1{4\delta},\qquad
\text{dependency-supplied general upper coefficient}=\frac1\delta,\qquad
\text{raw one-entry certificate}=\frac1\delta.
\]

The first quantity is smaller by the literal factor four; it is not asserted to equal either of the latter two,
and no optimal upper constant is claimed.
At \(\epsilon=\delta\) and at \(\delta=1\) these values remain literal. For fixed \(\delta>0\), the notation
\(\epsilon\downarrow0\) refers only to the limit through positive interval lengths, for which the ratio remains
\(1/(4\delta)\); no ratio is asserted at \(\epsilon=0\).

**Proof / justification.** Since \(\epsilon>0\), the interval has positive length
\(\lvert[0,\epsilon]\rvert=\epsilon\), so Proposition~\ref{prop:step-011-wedge-probability} may be divided by
that length:

\[
\frac{\epsilon/(4\delta)}{\epsilon}=\frac1{4\delta}.
\]

Proposition~\ref{prop:step-011-upper-coefficient} supplies \(1/\delta\) from the accepted general theorem, not
from the direct wedge calculation. Separately, Lemma~\ref{lem:step-011-shear-certificate} supplies the raw
Euclidean coefficient height \(1/\delta\) directly from the single matrix entry. Thus the lower test ratio is
\(1/4\) times each comparison scale, while the upper theorem and certificate retain logically distinct
provenance. If \(\epsilon\downarrow0\) with \(\epsilon>0\), the probability
\(\epsilon/(4\delta)\) tends to zero while the normalized ratio remains constant for fixed \(\delta>0\); at
\(\epsilon=0\), division is not defined and is not used. \(\square\)

## Target-Step Assembly

The primitive specialization fixes
\[
\Theta=[-1,1],\quad R=1,\quad \kappa=\frac14,\quad A=1,\quad
(\alpha_1,\alpha_2)\in[-1,1]^2,
\]
with \((\alpha_1,\alpha_2)\) retaining the setting's original two random lower-coefficient coordinates.
Lemma~\ref{lem:step-011-shear-certificate} verifies, in the exact augmented-coordinate ordering, that

\[
(q,M,\Delta,N,m)=(0,0,1,2,0),
\qquad
B_{2,1}=1/\delta
\]

is the sole nonzero closure entry and that \(\widehat\Lambda_{B,T}=1/\delta\), independently of the legal
containing \(T\). This direct instance calculation instantiates accepted
Lemma~\ref{lem:step-001-height} and agrees with the exact shear clause of accepted
Proposition~\ref{prop:step-001-boundary}.
Lemma~\ref{lem:step-011-projective-speed} independently differentiates the actual normalized curve in the
Euclidean norm and proves

\[
\lVert\gamma_F'(\theta)\rVert_2
=\frac{1}{\delta(1+(\theta/\delta)^2)},
\qquad
\Gamma_{\mathrm{proj}}(F)=\frac1\delta,
\]

including the active vector \(\gamma_F'(0)=(0,1/\delta)\). It therefore instantiates the accepted
normalized-curve interface in Proposition~\ref{prop:step-001-projective} with equality.

Proposition~\ref{prop:step-011-upper-coefficient} then instantiates the accepted
Propositions~\ref{prop:step-008-s2-pairwise-homogeneous-rate} and
\ref{prop:step-008-s2-pf-closure} with
\(A=1\) and \(N=2\), obtaining the exact \(1/\delta\) upper coefficient for every admissible possibly
correlated law. This dependency use does not impose independence on the theorem.

For the direct lower calculation only, Lemma~\ref{lem:step-011-root-wedges} proves the exact root-event identity
for both opposite-sign wedges, including the coordinate-axis and equality boundaries and both endpoint roots.
Proposition~\ref{prop:step-011-wedge-probability} computes their total square area as
\(\epsilon/\delta\) and integrates the selected uniform product density \(1/4\), giving exactly
\(\epsilon/(4\delta)\). Proposition~\ref{prop:step-011-scale-comparison} divides only by the positive interval
length and obtains the exact lower ratio \(1/(4\delta)\). It compares that ratio separately with the
dependency-supplied upper coefficient \(1/\delta\) and the raw one-entry certificate \(1/\delta\), preserving
their distinct constants and provenance and making no optimality claim. These named results jointly prove the
exact accepted `step_011` row and quantitatively record the source obstruction.

The exact affine-monic baseline is a separate, unaffected theorem clause. This proof neither reads nor consumes
the `step_010` proof artifact, and it introduces no replacement baseline, independent polynomial-root theorem,
or conclusion about that branch. No global diagnostic was read or used.

## Explicit Rate Audit

- Exposed variables: \(\delta\), \(\epsilon\), with \(0<\epsilon\leq\delta\leq1\), together with the literal
  specialization \(q=M=0\), \(\Delta=1\), \(N=2\), \(m=0\), \(R=1\), \(\kappa=1/4\), and \(A=1\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\delta\), \(\epsilon\), the law, coefficient correlation, interval
  length, coefficient axes, wedge boundaries, root location, \(T\), or any suppressed presentation parameter.
- Fixed quantities: The deterministic feature tuple, augmented-coordinate ordering, constant matrix, coefficient
  square, and, for the lower equality only, the selected independent uniform law. For the upper statement, the
  law ranges over the entire arbitrary-correlation class \(\mathcal D_{2,1,1/4}\).
- Probability mode: Ordinary probability. The upper inequality holds for each arbitrary admissible joint law;
  the lower equality is a direct calculation for the one source-specified product law. There is no confidence
  parameter or conditioning event.
- Horizon mode: The accepted upper theorem holds for every positive-length interval. The exact lower calculation
  uses every interval \([0,\epsilon]\) with \(0<\epsilon\leq\delta\). The notation
  \(\epsilon\downarrow0\) is a positive-length ratio limit only. No upper probability bound is clipped at one.
- Norm mode: Euclidean vector and projective norms in the original \(\theta\)-coordinate, and planar Lebesgue
  area for the coefficient square.
- Admissibility conditions and auxiliary tolerances: The four stable assumptions in their displayed primitive
  specialization and exactly \(0<\epsilon\leq\delta\leq1\). There is no auxiliary tolerance, asymptotic
  threshold, coefficient-axis exclusion, transversality margin, or minimum positive interval length.
- Term absorption or simplification inequalities: No term is absorbed. Every specialization is literal:
  
  \[
  \widehat\Lambda_{B,T}
  =\Gamma_{\mathrm{proj}}(F)
  =\frac1\delta,
  \qquad
  A\sqrt{\frac N2}=1,
  \]

  where \(x=\theta/\delta\) has \(dx/d\theta=1/\delta\); the derivative factor is retained in the original
  parameter metric. Moreover,
  
  \[
  2\int_0^1\frac\epsilon\delta s\,ds
  =\frac\epsilon\delta,
  \qquad
  \frac14\frac\epsilon\delta
  =\frac\epsilon{4\delta},
  \qquad
  \frac{\epsilon/(4\delta)}\epsilon
  =\frac1{4\delta}.
  \]

  Thus, because \(\delta>0\),

  \[
  \frac1{4\delta}
  =\frac14\left(\frac1\delta\right)
  <\frac1\delta.
  \]

  The left side is the selected-law lower ratio; the right side is separately the dependency upper coefficient
  and the raw certificate value. This comparison is a scale audit, not an optimality assertion.
- Probability conversion: The upper conversion is inherited only from the accepted `step_008` theorem. The
  lower equality is obtained independently by integrating the exact density \(1/4\) over the exactly identified
  planar event. No union bound, expectation conversion, or independence reduction of the general theorem is
  used.
- Contribution to any Rate Specialization Bridge: This is the complete R5 scale audit. It specializes the R1
  certificate and R3 homogeneous coefficient with exact equalities, then supplies the independent direct lower
  calculation required by the source example.
- Baseline-reduction check, if applicable: At \(\epsilon=\delta\), the area is one and the probability is
  \(1/4\); at \(\delta=1\), the certificate and projective speed are one and the lower ratio is \(1/4\). As
  \(\epsilon\downarrow0\) through positive values, the probability vanishes linearly but its normalized ratio
  remains \(1/(4\delta)\). The separate exact affine-monic baseline is unchanged and is not consumed in this
  step; no `step_010` output is used.

## Blockers

None

## Notation And Assumption Notes

- `public-facing`: The specialization
  \(\widetilde F=(F_0,F_1,F_2)=(0,1,\theta/\delta)\), with rows and columns ordered \(0,1,2\), and the matrix
  entry \(B_{2,1}=1/\delta\) are direct specializations of setting-defined objects. The exact outputs
  \(\widehat\Lambda_{B,T}=\Gamma_{\mathrm{proj}}(F)=1/\delta\), the upper coefficient \(1/\delta\), the
  probability \(\epsilon/(4\delta)\), and the lower ratio \(1/(4\delta)\) are the minimal interface exported to
  final assembly.
- `public-facing`: \(\delta\) is the original source scale, and \(\epsilon\) is the source interval length. Their
  range \(0<\epsilon\leq\delta\leq1\) is an explicit primitive admissibility condition, not a hidden threshold.
- `proof-local`: \(x=\theta/\delta\) is a direct dimensionless expression used only to expose the normalized
  derivative. It is not exported.
- `proof-local`: \(u=\theta/\delta\) is the rescaled root-equation coordinate used only inside
  Lemma~\ref{lem:step-011-root-wedges}; its range is derived exactly from the original closed
  \(\theta\)-interval, and it does not replace the original metric in the projective calculation.
- `proof-local`: \(t=\epsilon/\delta\) and the wedge names \(W_+(t)\), \(W_-(t)\) abbreviate the exact event
  during the planar calculation. Their bounds are proved in Lemma~\ref{lem:step-011-root-wedges}, and they are
  not theorem assumptions or downstream parameters.
- `proof-local`: \(\lambda_2\) denotes planar Lebesgue measure on the original coefficient square. It is used
  only to display the two slice integrals and is converted to probability solely by the selected density
  \(1/4\).
- `appendix-local`: The selected uniform law may be denoted informally as the source law. Its product structure
  is used only to identify its exact joint density \(1/4\); the upper theorem continues to quantify over every
  possibly correlated member of \(\mathcal D_{2,1,1/4}\).
- Constant provenance: \(1/\delta\) is both the literal coefficient of the sole nonzero matrix entry and the
  exact Euclidean projective speed proved by named local lemmas. The factor \(1/4\) is the exact joint density of
  the selected source law. The value \(A=1\) follows directly from \(A=(2R)^N\kappa\) with
  \(R=1,N=2,\kappa=1/4\). No free bounded quantity, margin, radius, or hidden constant is introduced.
- Assumption provenance: The four stable setting assumptions remain primitive. The matrix identity,
  certificate value, projective-speed value, root-event identity, wedge area, exact probability, and normalized
  ratio are all proved in this step or supplied by the two accepted dependencies exactly as recorded. There is
  no generated invariant, event membership, local-validity condition, or recurrence used as an assumption.
- Boundary provenance: The coefficient axis \(\alpha_1=0\) produces the \(\theta=0\) endpoint root; the
  \(\alpha_2=0\) axis contributes only the origin; the sloping equality boundaries produce
  \(\theta=\epsilon\) roots. All are included in the exact event and are planar-null only for the area
  calculation. Both opposite-sign quadrants are integrated. The cases \(\epsilon=\delta\), \(\delta=1\), and
  positive \(\epsilon\downarrow0\) are audited explicitly.
- Dependency/source separation: The exact lower probability is a direct source-law calculation in
  Propositions~\ref{prop:step-011-wedge-probability} and \ref{prop:step-011-scale-comparison}. The upper
  coefficient is supplied by accepted `step_008` after the exact local specialization. Neither calculation is
  presented as evidence for the other.
- Baseline boundary: The affine-monic conclusion remains a separate clause. No `step_010` artifact was read,
  cited, or consumed, and no statement here modifies that baseline.
- Diagnostic boundary: No global proof or global review was read or used. The archived sketch-attempt-1
  same-step proof with SHA-256
  `1f9537c74192da8502346ba12b457ccc9c8545fa8485aea22d234e0d594f59f3` and review with SHA-256
  `729872c64fb9fbc4da6f7e3f0c16c38118afe705134214a0b2764da2065879c8` were consulted only as
  permitted diagnostic organization. Every retained calculation was rechecked against the current attempt-2
  row and current dependency labels. Neither archived artifact, nor the stale live same-step review, is current
  evidence, a cited result, an assumption source, or authority to change the accepted claim.
