# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: step_007
- Unit attempt: 1
- Binding idea SHA-256:
  5209aa21929e84604acb2712d8657460a48463901738fd00ebafaa84d5c43596
- Binding setting SHA-256:
  6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e
- Binding accepted sketch SHA-256:
  41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4
- Binding accepted sketch-review SHA-256:
  a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9
- Controller-open proof-tracker SHA-256:
  1ea059704e04162950148891320802ea00eee0d29439795f7100a089d888660a
- Pre-overwrite sketch-attempt-1 proof SHA-256:
  8be2df25871ae6e1737861b3bd138011f1027951988250dc688e7233e94434e6
- Pre-overwrite sketch-attempt-1 review SHA-256:
  6794ada25352a9328461aa9312532fbe8fae96a5d7a747b11f38c9677e6b0256
- Archive identity: before this overwrite, byte-identical copies of the preceding proof and review were verified
  at perspective_2/idea_1/proof_history/sketch_001/proof_steps/step_007/attempt_001/.
- Evidence boundary: the pre-overwrite proof, its review, and the archived copies were hash-checked but not read
  or used. The optional global diagnostic pair was omitted. No undeclared proof-step artifact, later step,
  monic specialization, counterexample, or final assembly artifact is evidence below.

## Target Step Claim

The exact accepted sketch-attempt-2 row is:

- Intended claim: Combine step_004--step_006 to prove both displayed general affine inequalities and
  \(C^{\mathrm{aff}}_{\mathcal D}\leq
  A(1+NR^2)\widehat\Lambda/(\sqrt2R)\), uniformly over laws and intervals.
- Depends on: step_004, step_005, step_006.
- Assumptions used: Primitive: assump:cube-density-laws and parameter definitions; derived: all dependencies.
- Technical challenge: Preserve literal factors, full law/interval uniformity, arbitrary correlation, and
  degree-zero additional Pfaffian-format dependence through integration and suprema.
- Intended proof tool or cited result: Exact multiplication, \(\kappa\)-density domination already in
  step_004, and definitions of \(A\) and \(C^{\mathrm{aff}}\).
- Output target: Complete general affine theorem clause.
- Rate objective: R2: full Rate Specialization Bridge with no hidden constant.
- Row-local review status: PENDING. Sketch-level acceptance is supplied by the binding accepted
  proof-sketch review recorded above.

Concretely, the target is to prove, for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
\(I\subseteq\Theta\) with \(\lvert I\rvert>0\),

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
&\leq
\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta\\
&\leq
\kappa\sqrt2(2R)^{N-1}(1+NR^2)
\widehat\Lambda_{B,T}\lvert I\rvert\\
&=
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}
\lvert I\rvert,
\end{aligned}
\tag{T1}
\]

and then to take the setting-defined interval and law suprema in their exact order to obtain

\[
C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
\leq
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\tag{T2}
\]

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:cube-density-laws}: \(\mu\) may be any law in
    \(\mathcal D_{N,R,\kappa}\), with arbitrary coefficient correlation. This step performs no new density
    domination; the sole factor \(\kappa\) is already present in the accepted step_004 output.
  - Setting parameter definitions, using only the parameter clauses of
    Assumption~\ref{assump:parameter-regime}: \(N\geq1\), \(R>0\),
    \(0<\kappa<\infty\), the law class is nonempty,
    \[
    A=(2R)^N\kappa,
    \]
    and \(I\subseteq\Theta\) is an interval with \(\lvert I\rvert>0\).
    This is the sketch row's "parameter definitions" interface, not an added regularity assumption.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-004-s2-affine-swept-area}, the coordinate-free first affine swept-area
    inequality on the actual affine root section.
  - Proposition~\ref{prop:step-005-translated-section-certificate}, the translated cube-section bound on that
    identical section with Euclidean \(\mathcal H^{N-1}\).
  - Proposition~\ref{prop:step-006-s2-affine-velocity}, the pointwise normal-velocity bound for the identical
    coefficient \(a\), feature tuple \(\widetilde F=(F_0,F)\), supplied matrix \(B\), Euclidean norm, and
    certificate \(\widehat\Lambda_{B,T}\).
- Local conditional hypotheses: None. A fixed law, interval, parameter point, or section point is only an
  instantiation of a universal quantifier. No event, pivot margin, amplitude bound, transversality condition,
  root-simplicity condition, tolerance, or confidence parameter is assumed.

The accepted dependency artifacts are exactly:

| Dependency | Proof SHA-256 | Review SHA-256 | Review identity and status | Export consumed here |
| ---------- | ------------- | --------------- | -------------------------- | -------------------- |
| step_004 | 91736da20ac3e8c97693b158e1a528f5ac2ed3bab6ef61b14185ab2beae76ef4 | 45285c72a3ea65948cdd60b0148c44526384f53c9e35bae2a86b9a09d2964389 | Sketch attempt 2, Step ID step_004, Unit attempt 1, ACCEPTED; reviewed proof digest matches | Proposition~\ref{prop:step-004-s2-affine-swept-area} |
| step_005 | a3c503cdc2b19acb74d9598fe8d674c185715ef20ea11ea28322eee62827ab63 | 3c12da50c102fe5562cec9e3681b80250defa6d4f88a32f05c3b462349f94ad0 | Sketch attempt 2, Step ID step_005, Unit attempt 1, ACCEPTED; reviewed proof digest matches | Proposition~\ref{prop:step-005-translated-section-certificate} |
| step_006 | 130dbada8d3b451575971240d58a54992c32de30eb740707d3184ed9e3deb954 | cfcd012a07f15b84d9b41e50d24eed881dc6ef1a7309154681e5f3228dc03dae | Sketch attempt 2, Step ID step_006, Unit attempt 1, ACCEPTED; reviewed proof digest matches | Proposition~\ref{prop:step-006-s2-affine-velocity} |

Each dependency is used only through the named exported conclusion in the final column. Internal ancestors of
those accepted dependencies are not independently imported.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\ref{assump:cube-density-laws}, the setting parameter definitions, and accepted Propositions~\ref{prop:step-004-s2-affine-swept-area}, \ref{prop:step-005-translated-section-certificate}, and \ref{prop:step-006-s2-affine-velocity}, if \(\mu\in\mathcal D_{N,R,\kappa}\) and \(I\subseteq\Theta\) is an interval with \(\lvert I\rvert>0\), then the complete literal chain (T1) holds on the actual sections. | Multiplies the exact sweep, section, and velocity factors and proves the exact \(A\)-algebra for each law and interval. |
| unit_002 | lemma | Under the assumptions and dependencies of Lemma~\ref{lem:step-007-s2-fixed-law-rate}, every positive-length interval ratio is bounded by the displayed deterministic constant; taking first the setting-defined interval supremum and then the law supremum proves (T2). | Performs the sole probability-to-capacity conversion without a union bound or mode change. |
| unit_003 | proposition | Under Assumption~\ref{assump:cube-density-laws}, the setting parameter definitions, the three accepted dependency propositions, and Lemmas~\ref{lem:step-007-s2-fixed-law-rate} and \ref{lem:step-007-s2-capacity-conversion}, the general affine chain (T1), capacity bound (T2), all stated boundary conventions, and the exact \(\widehat\Lambda_{B,T}=0\) probability conclusion hold. | Exports the complete general affine rate and named zero-certificate interface as the sole public-facing result for step_012. |

Atomic step = no. Pointwise section/velocity integration, the positive-length two-supremum conversion, and the
zero-certificate/public-interface assembly are distinct nontrivial obligations. There are exactly three local
units.

## Cited Result Applications

### Accepted dependency: coordinate-free first affine sweep

- Source or name: accepted Proposition~\ref{prop:step-004-s2-affine-swept-area}.
- Artifact identity: the step_004 proof/review pair and matching sketch-attempt-2, step_004, unit-attempt-1
  ACCEPTED review recorded in the dependency table.
- Restated statement in current notation: for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
  \(I\subseteq\Theta\) with \(\lvert I\rvert>0\), with the interval's literal endpoint convention,
  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
  \leq
  \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
  \frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
  {\lVert F(\theta)\rVert_2}
  \,d\mathcal H^{N-1}(a)\,d\theta.
  \tag{D4}
  \]
- Instantiated objects: the setting-defined affine event, the actual coefficient vector \(a\), the actual
  section \(H_\theta\cap[-R,R]^N\), the original \(F_0,F\), the Euclidean denominator, and
  \(\mathcal H^{N-1}\). For \(N=1\), its accepted convention is \(\mathcal H^0\) counting measure, with the
  zero-dimensional beta space having mass one.
- Required assumptions and discharge: the accepted dependency proof and its matching review have discharged
  the dependency's primitive and internal dependency basis. This step supplies only an arbitrary admissible
  law and positive-length interval, as required by (D4), and does not consume the dependency's internal
  ancestors.
- Conclusion used: exactly (D4), including its sole density factor \(\kappa\), arbitrary-correlation scope,
  endpoint convention, empty-section interpretation, and tangent/multiple-root coverage. No second density
  domination or root theorem is applied.

### Accepted dependency: translated cube-section certificate

- Source or name: accepted Proposition~\ref{prop:step-005-translated-section-certificate}.
- Artifact identity: the step_005 proof/review pair and matching sketch-attempt-2, step_005, unit-attempt-1
  ACCEPTED review recorded in the dependency table.
- Restated statement in current notation: for every \(\theta\in\Theta\), the anchor-backed nonzero
  \(F(\theta)\) gives
  \[
  u_\theta=\frac{F(\theta)}{\lVert F(\theta)\rVert_2},
  \qquad
  t_\theta=-\frac{F_0(\theta)}{\lVert F(\theta)\rVert_2},
  \qquad
  H_\theta=u_\theta^\perp+t_\theta u_\theta,
  \]
  and
  \[
  \mathcal H^{N-1}(H_\theta\cap[-R,R]^N)
  \leq
  \mathcal H^{N-1}(F(\theta)^\perp\cap[-R,R]^N)
  \leq\sqrt2(2R)^{N-1}.
  \tag{D5}
  \]
- Instantiated objects: the identical \(H_\theta\) from (D4), the same coefficient cube, the same Euclidean
  normal, and the same Hausdorff measure. No central section replaces the target section; the first inequality
  in (D5) is the accepted translated-to-central comparison on the same normal.
- Required assumptions and discharge: \(N\geq1\) and \(R>0\) are setting parameter facts, while legality of
  the actual root-section representation is already part of the accepted dependency interface.
- Conclusion used: only the final actual-section cap in (D5). The current proof does not separately invoke
  Brunn--Minkowski, Ball's theorem, or any unreviewed geometric result.

### Accepted dependency: affine root-section velocity

- Source or name: accepted Proposition~\ref{prop:step-006-s2-affine-velocity}.
- Artifact identity: the step_006 proof/review pair and matching sketch-attempt-2, step_006, unit-attempt-1
  ACCEPTED review recorded in the dependency table.
- Restated statement in current notation: on every identical section point
  \(\theta\in\Theta\), \(a\in H_\theta\cap[-R,R]^N\), the accepted root-section coupling gives
  \[
  \lvert F_0(\theta)\rvert
  =\lvert\langle a,F(\theta)\rangle\rvert
  \leq R\sqrt N\,\lVert F(\theta)\rVert_2,
  \qquad
  \lVert\widetilde F(\theta)\rVert_2
  \leq\sqrt{1+NR^2}\,\lVert F(\theta)\rVert_2,
  \]
  \[
  \lVert(1,a)\rVert_2\leq\sqrt{1+NR^2},
  \]
  and the supplied derivative-closure matrix satisfies
  \[
  F_0'(\theta)+\langle a,F'(\theta)\rangle
  =\langle(1,a),B(\theta)\widetilde F(\theta)\rangle.
  \]
  Using the accepted certificate for this identical \(B\), the exported conclusion is
  \[
  \frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
  {\lVert F(\theta)\rVert_2}
  \leq
  \bigl(\sqrt{1+NR^2}\bigr)
  \bigl(\sqrt{1+NR^2}\bigr)\widehat\Lambda_{B,T}
  =(1+NR^2)\widehat\Lambda_{B,T}.
  \tag{D6}
  \]
- Instantiated objects: the same \(a,\theta,F_0,F,\widetilde F,B\), parameter coordinate, Euclidean vector
  norm, induced Euclidean operator norm, and certificate used in (D4). There is no surrogate feature or
  different matrix certificate.
- Required assumptions and discharge: the accepted dependency proof and matching review have discharged its
  root-section, closure, anchor, and internal certificate basis. This step uses only the exported pointwise
  conclusion (D6); it does not import step_006's internal dependency.
- Conclusion used: exactly (D6), including both visible square-root factors and their literal product. No
  global amplitude bound, residual, transversality, pivot condition, or additional constant is introduced.

### Local result application register

- Lemma~\ref{lem:step-007-s2-fixed-law-rate}: under the primitive law/parameter interface and all three accepted
  dependency propositions, its conclusion is the complete fixed-law, fixed-positive-length-interval chain
  (T1). It is used by Lemma~\ref{lem:step-007-s2-capacity-conversion} and
  Proposition~\ref{prop:step-007-s2-general-affine-rate}.
- Lemma~\ref{lem:step-007-s2-capacity-conversion}: under the same interface and
  Lemma~\ref{lem:step-007-s2-fixed-law-rate}, its conclusion is exactly (T2), obtained by the inner interval
  supremum followed by the outer law supremum. It is used by
  Proposition~\ref{prop:step-007-s2-general-affine-rate}.
- Proposition~\ref{prop:step-007-s2-general-affine-rate}: under the stated primitive interface, accepted
  dependencies, and both local lemmas, its conclusion is the complete general affine rate, capacity bound, and
  exact zero-certificate clause. It is used in Target-Step Assembly and is the only public-facing interface
  exported to step_012.

No external paper result, standard theorem, global diagnostic, or undeclared proof-step result is applied in
this step.

## Local Derivation

### unit_001: lemma

**Lemma (Fixed-law affine probability rate with literal constants).**
\(\label{lem:step-007-s2-fixed-law-rate}\)

Statement:
Under Assumption~\ref{assump:cube-density-laws}, the setting parameter definitions, and accepted
Propositions~\ref{prop:step-004-s2-affine-swept-area},
\ref{prop:step-005-translated-section-certificate}, and
\ref{prop:step-006-s2-affine-velocity}, if
\(\mu\in\mathcal D_{N,R,\kappa}\) and \(I\subseteq\Theta\) is an interval with
\(\lvert I\rvert>0\), then

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
&\leq
\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta\\
&\leq
\kappa\sqrt2(2R)^{N-1}(1+NR^2)
\widehat\Lambda_{B,T}\lvert I\rvert\\
&=
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}
\lvert I\rvert.
\end{aligned}
\tag{1}
\]

This holds for every arbitrarily correlated admissible law, with the accepted endpoint and
zero-dimensional-section conventions.

Proof / justification:
Fix the deterministic presentation data. Next fix an arbitrary
\(\mu\in\mathcal D_{N,R,\kappa}\), and after the law fix an arbitrary interval
\(I\subseteq\Theta\) with \(\lvert I\rvert>0\). Accepted
Proposition~\ref{prop:step-004-s2-affine-swept-area} gives the first line of (1) directly:

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq
\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta.
\tag{2}
\]

The factor \(\kappa\) in (2) is already the accepted full-joint-density domination. It is neither repeated nor
converted into a marginal bound.

For every fixed \(\theta\in I\) and every
\(a\in H_\theta\cap[-R,R]^N\), accepted
Proposition~\ref{prop:step-006-s2-affine-velocity} applies to this identical section point and gives

\[
0\leq
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\leq(1+NR^2)\widehat\Lambda_{B,T}.
\tag{3}
\]

Integrating (3) on the actual section, including the empty-section case, yields

\[
\begin{aligned}
&\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\\
&\qquad\leq
(1+NR^2)\widehat\Lambda_{B,T}\,
\mathcal H^{N-1}(H_\theta\cap[-R,R]^N).
\end{aligned}
\tag{4}
\]

Accepted Proposition~\ref{prop:step-005-translated-section-certificate} applies to the same
\(H_\theta\), coefficient cube, Euclidean metric, and Hausdorff convention, so

\[
\mathcal H^{N-1}(H_\theta\cap[-R,R]^N)
\leq\sqrt2(2R)^{N-1}.
\tag{5}
\]

Substituting (5) into (4), then integrating the resulting constant over the literal interval \(I\), gives

\[
\begin{aligned}
&\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta\\
&\qquad\leq
\kappa\int_I
\sqrt2(2R)^{N-1}(1+NR^2)\widehat\Lambda_{B,T}
\,d\theta\\
&\qquad=
\kappa\sqrt2(2R)^{N-1}(1+NR^2)
\widehat\Lambda_{B,T}\lvert I\rvert.
\end{aligned}
\tag{6}
\]

There is no chart sum in (4)--(6), hence no chart-count factor. There is no residual, surrogate section,
second law domination, or hidden absorption. The displayed factor is the direct product of the actual
translated-section measure and the actual pointwise normal velocity.

It remains only to verify the final equality in (1). Assumption~\ref{assump:parameter-regime} gives
\(R>0\), and the setting defines \(A=(2R)^N\kappa\). Therefore

\[
\begin{aligned}
\kappa\sqrt2(2R)^{N-1}
&=\frac{\sqrt2}{2R}\,\kappa(2R)^N\\
&=\frac{\sqrt2}{2R}\,A\\
&=\frac{A}{\sqrt2R},
\end{aligned}
\tag{7}
\]

where \(\sqrt2/(2R)=1/(\sqrt2R)\) follows from \(2=(\sqrt2)^2\) and \(R>0\). Multiplying (7) by the unchanged
nonnegative factors
\((1+NR^2)\widehat\Lambda_{B,T}\lvert I\rvert\) proves the last line of (1).

For \(N=1\), (2) uses the accepted \(\mathcal H^0\) counting convention and zero-dimensional beta mass one;
(5) reads \(0\) or \(1\leq\sqrt2(2R)^0\); and (3) has the literal factor
\((1+R^2)\widehat\Lambda_{B,T}\). Empty sections contribute zero to (4). Included interval endpoints are
inherited from (2), while changing endpoint conventions does not alter (6). No lower bound on
\(\lvert I\rvert\) beyond strict positivity appears, so the argument applies unchanged to arbitrarily short
positive-length intervals. Because the law and interval were arbitrary, (1) holds separately for every such
pair, without independence or a law/interval union bound. \(\square\)

### unit_002: lemma

**Lemma (Exact interval-then-law capacity conversion).**
\(\label{lem:step-007-s2-capacity-conversion}\)

Statement:
Under Assumption~\ref{assump:cube-density-laws}, the setting parameter definitions, the three accepted
dependency propositions, and Lemma~\ref{lem:step-007-s2-fixed-law-rate},

\[
C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
\leq
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\tag{8}
\]

The conversion first takes the setting-defined inner supremum over positive-length intervals for a fixed law
and then the outer supremum over admissible laws.

Proof / justification:
Fix an arbitrary \(\mu\in\mathcal D_{N,R,\kappa}\). For every interval
\(I\subseteq\Theta\) with \(\lvert I\rvert>0\),
Lemma~\ref{lem:step-007-s2-fixed-law-rate} and positivity of \(\lvert I\rvert\) give

\[
\frac{
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
}{\lvert I\rvert}
\leq
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\tag{9}
\]

The right-hand side is deterministic and independent of \(I\). Taking exactly the inner interval supremum in
the setting definition yields, for this fixed \(\mu\),

\[
\sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\ \lvert I\rvert>0}}
\frac{
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
}{\lvert I\rvert}
\leq
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\tag{10}
\]

Now take the outer supremum over \(\mu\in\mathcal D\). By the setting definition,

\[
\begin{aligned}
C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
&=
\sup_{\mu\in\mathcal D}
\sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\ \lvert I\rvert>0}}
\frac{
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
}{\lvert I\rvert}\\
&\leq
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\end{aligned}
\tag{11}
\]

Equations (9)--(11) divide only by the positive scalar \(\lvert I\rvert\). They do not form a simultaneous
random event, exchange random and deterministic suprema, or apply any law/interval union bound. Ordinary
probability for each fixed law is preserved. \(\square\)

### unit_003: proposition

**Proposition (General affine coefficient-sweep rate and zero certificate).**
\(\label{prop:step-007-s2-general-affine-rate}\)

Statement:
Under Assumption~\ref{assump:cube-density-laws}, the setting parameter definitions, accepted
Propositions~\ref{prop:step-004-s2-affine-swept-area},
\ref{prop:step-005-translated-section-certificate}, and
\ref{prop:step-006-s2-affine-velocity}, and
Lemmas~\ref{lem:step-007-s2-fixed-law-rate} and
\ref{lem:step-007-s2-capacity-conversion}, every
\(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
\(I\subseteq\Theta\) with \(\lvert I\rvert>0\) satisfy

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
&\leq
\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta\\
&\leq
\kappa\sqrt2(2R)^{N-1}(1+NR^2)
\widehat\Lambda_{B,T}\lvert I\rvert\\
&=
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}
\lvert I\rvert,
\end{aligned}
\tag{12}
\]

and

\[
C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
\leq
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\tag{13}
\]

If \(\widehat\Lambda_{B,T}=0\), then for every such law and interval,

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]=0.
\tag{14}
\]

These conclusions retain arbitrary coefficient correlation, ordinary probability, uniformity over every
positive-length interval, the accepted \(N=1\) zero-dimensional section convention, empty root sections, literal
interval endpoints, and the exact dependence on \(A,N,R,\kappa,\widehat\Lambda_{B,T}\), and
\(\lvert I\rvert\). There are no hidden constants. Once the supplied certificate is fixed, additional
dependence on \(q,M,\Delta\) is exactly degree zero.

Proof / justification:
Equation (12) is Lemma~\ref{lem:step-007-s2-fixed-law-rate}, and (13) is
Lemma~\ref{lem:step-007-s2-capacity-conversion}. Their proofs use the identical section, coefficient,
feature tuple, matrix certificate, Euclidean norm, and Hausdorff measure convention exported by the three
accepted dependencies, so no interface transfer or residual remains.

For the zero-certificate case, substitute \(\widehat\Lambda_{B,T}=0\) into (12). Since
\(A=(2R)^N\kappa\) is finite, \(R>0\), and probabilities are nonnegative,

\[
0
\leq
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq
\frac{A(1+NR^2)\cdot0}{\sqrt2R}\lvert I\rvert
=0.
\tag{15}
\]

Thus (14) is an exact probability conclusion for each law and interval. It is not inferred from a vacuous
empty-section statement: even if an actual root section is nonempty, accepted
Proposition~\ref{prop:step-006-s2-affine-velocity} makes the nonnegative integrand in (2) equal to zero when
\(\widehat\Lambda_{B,T}=0\), and accepted
Proposition~\ref{prop:step-004-s2-affine-swept-area} then bounds the actual root event by that zero integral.
No separate persistent-root or affine-hyperplane nullity result is imported.

The \(N=1\), empty-section, endpoint, and arbitrarily short positive-length interval cases were checked in
Lemma~\ref{lem:step-007-s2-fixed-law-rate}; positivity of interval length is the only condition used in the
capacity division. This completes every clause of the proposition. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-004-s2-affine-swept-area} supplies the first inequality on the actual
affine root sections with the literal coefficient \(\kappa\). On each identical section,
accepted Proposition~\ref{prop:step-006-s2-affine-velocity} supplies

\[
\frac{\lvert F_0'+\langle a,F'\rangle\rvert}{\lVert F\rVert_2}
\leq(1+NR^2)\widehat\Lambda_{B,T},
\]

and accepted Proposition~\ref{prop:step-005-translated-section-certificate} supplies

\[
\mathcal H^{N-1}(H_\theta\cap[-R,R]^N)
\leq\sqrt2(2R)^{N-1}.
\]

Their composition in Lemma~\ref{lem:step-007-s2-fixed-law-rate} is the literal multiplication

\[
\kappa\,
\bigl[\sqrt2(2R)^{N-1}\bigr]\,
\bigl[(1+NR^2)\widehat\Lambda_{B,T}\bigr]\,
\lvert I\rvert,
\]

followed only by the exact setting algebra

\[
\kappa\sqrt2(2R)^{N-1}
=\frac{\sqrt2}{2R}\,\kappa(2R)^N
=\frac{A}{\sqrt2R}.
\]

Lemma~\ref{lem:step-007-s2-capacity-conversion} divides only by positive \(\lvert I\rvert\), takes the inner
interval supremum for each fixed law, and then takes the outer law supremum, exactly as
\(C^{\mathrm{aff}}_{\mathcal D}\) is defined.

Proposition~\ref{prop:step-007-s2-general-affine-rate} packages these two conclusions and the exact
zero-certificate consequence. This proposition is the sole public-facing output of this step and the only
interface exported to step_012. Lemmas~\ref{lem:step-007-s2-fixed-law-rate} and
\ref{lem:step-007-s2-capacity-conversion} are appendix-local proof units, not separate downstream interfaces.

The assembly introduces no chart-count factor, residual, surrogate object, second density domination, hidden
absorption, new probability conversion, auxiliary tolerance, confidence parameter, independence assumption,
uniform pivot margin, transversality condition, root-simplicity condition, global amplitude bound, or
law/interval union bound. It proves exactly the accepted step_007 row and no homogeneous, monic,
counterexample, or final-assembly claim.

## Explicit Rate Audit

- Exposed variables: \(A,N,R,\kappa,\widehat\Lambda_{B,T}\), and \(\lvert I\rvert\) are all visible in
  (12). The law \(\mu\), interval \(I\), offset \(F_0\), feature vector \(F\), and actual sections
  \(H_\theta\) remain explicitly quantified. The capacity rate exposes
  \(A,N,R,\widehat\Lambda_{B,T}\).
- Hidden constants may depend on: None. There are no hidden constants.
- Hidden constants may not depend on: \(N,R,\kappa,A,T,m,B,\widehat\Lambda_{B,T},q,M,\Delta,\mu\),
  coefficient correlation, \(I\), \(\lvert I\rvert\), endpoint convention, section orientation or offset,
  root multiplicity, any tolerance, or any confidence parameter.
- Fixed quantities: the deterministic presentation data
  \((\Theta,U,T,q,M,\Delta,N,R,\kappa,A,m,B,\eta,(Q_i)_{i=0}^N,F_0,F)\), including the coefficient list that
  defines \(\widehat\Lambda_{B,T}\), are fixed before \(\mu\) and \(I\) are selected. The supplied certificate
  is not random and no limit or auxiliary choice changes it.
- Probability mode: ordinary probability separately for each fixed arbitrary
  \(\mu\in\mathcal D_{N,R,\kappa}\). There is no high-probability event, expectation, conditioning,
  confidence parameter, independence reduction, simultaneous-over-laws event, or union bound.
- Horizon mode: static every-interval mode over all intervals \(I\subseteq\Theta\) with
  \(\lvert I\rvert>0\), including arbitrarily short intervals and the literal endpoint convention. The
  capacity uses the inner interval supremum followed by the outer law supremum. There is no recursive,
  all-time stochastic, asymptotic, or stopping-time upgrade.
- Norm mode: the numerator and denominator use the setting's Euclidean inner product and vector norm; the
  matrix certificate acts through the induced Euclidean operator norm inside the accepted velocity result;
  section size uses Euclidean \((N-1)\)-dimensional Hausdorff measure. For \(N=1\),
  \(\mathcal H^0\) is counting measure and the accepted zero-dimensional beta space has mass one.
- Admissibility conditions and auxiliary tolerances: exactly \(N\geq1\), \(R>0\),
  \(0<\kappa<\infty\), nonempty \(\mathcal D_{N,R,\kappa}\),
  \(\mu\in\mathcal D_{N,R,\kappa}\), \(I\subseteq\Theta\) an interval with
  \(\lvert I\rvert>0\), Assumption~\ref{assump:cube-density-laws}, the setting parameter definitions, and the
  three accepted dependency propositions. Auxiliary tolerances: none.
- Term absorption or simplification inequalities: no term is absorbed, dominated, or dropped. The complete
  multiplication is
  \[
  \kappa
  \int_I
  \bigl[(1+NR^2)\widehat\Lambda_{B,T}\bigr]\,
  \mathcal H^{N-1}(H_\theta\cap[-R,R]^N)\,d\theta
  \leq
  \kappa\sqrt2(2R)^{N-1}(1+NR^2)
  \widehat\Lambda_{B,T}\lvert I\rvert,
  \]
  and the complete \(A\)-algebra is
  \[
  \kappa\sqrt2(2R)^{N-1}
  =\frac{\sqrt2}{2R}\kappa(2R)^N
  =\frac{A}{\sqrt2R}.
  \]
- Probability conversion: for each fixed law, divide the per-interval inequality only by
  \(\lvert I\rvert>0\); take the inner supremum over such intervals; then take the outer supremum over laws.
  This is (9)--(11), with no change from ordinary probability and no union bound.
- Contribution to any Rate Specialization Bridge: Proposition~\ref{prop:step-007-s2-general-affine-rate}
  is the complete R2 general-affine Rate Specialization Bridge. There is no auxiliary parameter choice.
  Its technical conditions are exactly the setting interface and accepted dependency interfaces; its
  simplification is the displayed multiplication and exact \(A\)-algebra; its probability conversion is the
  displayed positive-length division and ordered suprema; and its final rate is (12)--(13).
- Baseline-reduction check, if applicable: at \(\widehat\Lambda_{B,T}=0\), the rate reduces exactly to zero
  and proves the probability-zero statement (14) for every law and interval, rather than only proving that a
  defect term vanishes. For \(N=1\), the accepted zero-dimensional convention yields the literal specialized
  factor \(\kappa\sqrt2(1+R^2)\widehat\Lambda_{B,T}\lvert I\rvert\). Empty root sections contribute zero, but
  the zero-certificate probability conclusion is not restricted to empty sections. No conservative
  remainder is introduced.
- Pfaffian-format dependence: after fixing the supplied \(\widehat\Lambda_{B,T}\), additional dependence on
  \(q,M,\Delta\) is exactly degree zero. None of these parameters occurs in (12) or (13), and none is hidden.

## Blockers

None

## Notation And Assumption Notes

- Public-facing: Proposition~\ref{prop:step-007-s2-general-affine-rate} only. It exposes the original
  setting-defined \(F_0,F,H_\theta,\mathcal D,A,N,R,\kappa,\widehat\Lambda_{B,T}\), the actual probability
  event, and the capacity \(C^{\mathrm{aff}}_{\mathcal D}\). It is the sole interface consumed by step_012,
  including its named zero-certificate clause.
- Appendix-local: Lemma~\ref{lem:step-007-s2-fixed-law-rate} and
  Lemma~\ref{lem:step-007-s2-capacity-conversion}. They expose the literal multiplication and supremum
  conversion for review and assembly but introduce no additional downstream object.
- Proof-local: no helper event, tolerance, threshold, margin, residual, surrogate section, or shorthand
  constant is introduced. The proof keeps the complete integrand and rate expressions visible.
- Constant provenance: \(N,R,\kappa,A=(2R)^N\kappa\) and
  \(\widehat\Lambda_{B,T}\) are setting-defined. The literal \(\kappa\) is inherited from accepted
  Proposition~\ref{prop:step-004-s2-affine-swept-area}; the literal
  \(\sqrt2(2R)^{N-1}\) is inherited from accepted
  Proposition~\ref{prop:step-005-translated-section-certificate}; and the literal
  \((1+NR^2)\widehat\Lambda_{B,T}\) is inherited from accepted
  Proposition~\ref{prop:step-006-s2-affine-velocity}. The only new operation is their displayed product,
  followed by the setting equality (7).
- Assumption provenance: arbitrary correlated law admissibility is primitive under
  Assumption~\ref{assump:cube-density-laws}. The coordinate-free probability inequality, actual-section
  measure bound, and actual-section velocity bound are derived controls supplied by the three accepted
  dependencies. There are no local conditional hypotheses and no generated invariant is reclassified as
  primitive.
- Interface identity: all three dependency outputs use the identical affine section
  \(H_\theta\cap[-R,R]^N\), coefficient \(a\), original feature tuple
  \(\widetilde F=(F_0,F)\), supplied matrix \(B\), certificate
  \(\widehat\Lambda_{B,T}\), parameter coordinate, Euclidean norm, coefficient cube, and
  \(\mathcal H^{N-1}\) convention. Thus every transfer residual is zero.
- Boundary audit: \(N=1\), empty sections, \(\widehat\Lambda_{B,T}=0\), included or excluded interval
  endpoints, and arbitrarily short positive-length intervals are handled in the local derivation. The
  \(R=0\) case is excluded by the primitive setting, and \(R>0\) is used explicitly in the \(A\)-algebra.
- Evidence boundary: no optional global diagnostic was read or used. The consumed sketch-attempt-1 target
  artifacts were not read. No conclusion from any undeclared dependency, sharper homogeneous step, monic
  step, counterexample artifact, or final assembly is imported.
