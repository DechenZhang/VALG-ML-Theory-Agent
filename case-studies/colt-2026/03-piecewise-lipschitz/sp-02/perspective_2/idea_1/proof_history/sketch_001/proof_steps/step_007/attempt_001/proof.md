# Proof Step

## Step Identity

- Branch path: `perspective_2/idea_1`
- Sketch attempt: 1
- Step ID: `step_007`
- Unit attempt: 1
- Run mode: `interactive`
- Progress type: `full`
- Binding setting: `perspective_2/idea_1/setting.md`
- Binding setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Accepted proof sketch: `perspective_2/idea_1/proof_sketch.md`
- Accepted proof sketch SHA-256: `8b5b22e5000e1c5641e2b5baf0c4d48244ce3389941b0cc9857b47510bbf6c93`
- Accepted proof-sketch review: `perspective_2/idea_1/proof_sketch_review.md`
- Accepted proof-sketch-review SHA-256: `4288579fa3b8583b31faa2c220f5071879da72f06ac3a1dd3d1889cb1096cb7c`
- Accepted proof-sketch-review status: `ACCEPTED`
- Accepted `step_004` proof SHA-256: `cbda35c61b01723ae2ccf9c9e052048bdafc6e8d87a108436c750c8a6574a064`
- Accepted `step_004` review SHA-256: `9c9587b882088cca10d00e7bb53d040f55f2ba0425cd4c6e44c5d82647e671f3`
- Accepted `step_004` review status: `ACCEPTED`
- Accepted `step_005` proof SHA-256: `0eba9c6000ae4a34731f05af239e19ec350024534167b173a5af4ba42e1e2641`
- Accepted `step_005` review SHA-256: `24153f0140d1a31a23d213a3882795ccb244f47c8f844d0696df6e28b0a6b4be`
- Accepted `step_005` review status: `ACCEPTED`
- Accepted `step_006` proof SHA-256: `5795f2ed4685bc1f60ea1f02206d64fd14dc344a6634b9506c7e8aa8d0715da0`
- Accepted `step_006` review SHA-256: `9919776062a8f13452ce1570df329fdae4bc610a46bdff4c0422afbc7c4b362a`
- Accepted `step_006` review status: `ACCEPTED`

## Target Step Claim

The exact accepted sketch row is:

- Intended claim: Combine `step_004`--`step_006` to prove both displayed general affine inequalities and
  \(C^{\mathrm{aff}}_{\mathcal D}\leq
  A(1+NR^2)\widehat\Lambda_{B,T}/(\sqrt2R)\), uniformly over laws and intervals.
- Depends on: `step_004`, `step_005`, `step_006`.
- Assumptions used: Primitive: `assump:cube-density-laws` and parameter definitions; derived: all dependencies.
- Technical challenge: Preserve literal factors, full law/interval uniformity, arbitrary correlation, and
  degree-zero additional Pfaffian-format dependence through integration and suprema.
- Intended proof tool or cited result: Exact multiplication, the \(\kappa\)-density domination already in
  `step_004`, and definitions of \(A\) and \(C^{\mathrm{aff}}\).
- Output target: Complete general affine theorem clause.
- Rate objective: R2: full Rate Specialization Bridge with no hidden constant.
- Row-local review status: `PENDING`. Sketch-level acceptance is supplied by the binding
  `proof_sketch_review.md`, whose status is `ACCEPTED`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:cube-density-laws`: the coefficient vector \(\alpha\) has an arbitrary, possibly correlated law
    \(\mu\in\mathcal D_{N,R,\kappa}\), supported on \([-R,R]^N\), with one full joint density bounded by
    \(\kappa\). The accepted `step_004` dependency already performs the sole density-to-probability
    domination. This step does not factor, condition, marginalize, or otherwise convert that law.
- Setting parameter definitions, not additional primitive assumptions:
  \(N\geq1\), \(R>0\), \(0<\kappa<\infty\),
  the nondegenerate compact interval \(\Theta\), \(A=(2R)^N\kappa\), the nonempty law class
  \(\mathcal D=\mathcal D_{N,R,\kappa}\), the setting-defined objects
  \(F_0,F,\phi_\alpha,H_\theta\), and the two-supremum definition of
  \(C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)\).
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\ref{lem:step-004-partition-sum} and
    Proposition~\ref{prop:step-004-coordinate-free-sweep}, certified by the binding `step_004`
    proof/review pair at `perspective_2/idea_1/proof_steps/step_004/proof.md` and
    `perspective_2/idea_1/proof_steps/step_004/review.md`, supply measurability of the moving section mass and,
    for every admissible law and positive-length interval, the exact first
    coordinate-free affine swept-area inequality with literal factor \(\kappa\). The coordinate-free
    conclusion retains arbitrary
    coefficient correlation, every interval endpoint convention, tangent and multiple roots, persistent-root
    nullity, cube boundaries, empty sections, and the \(N=1\) Hausdorff convention.
  - Accepted Proposition~\ref{prop:step-005-translated-cube-section}, certified by the binding `step_005`
    proof/review pair at `perspective_2/idea_1/proof_steps/step_005/proof.md` and
    `perspective_2/idea_1/proof_steps/step_005/review.md`, supplies for every nonzero normal and every offset the uniform translated-section bound
    \(\sqrt2(2R)^{N-1}\), including empty sections and \(N=1\).
  - Accepted Lemma~\ref{lem:step-006-root-amplitude},
    Proposition~\ref{prop:step-006-affine-velocity}, and
    Proposition~\ref{prop:step-006-boundary}, certified by the binding `step_006` proof/review pair, supply the
    exact pointwise root-section velocity bound. The artifacts are
    `perspective_2/idea_1/proof_steps/step_006/proof.md` and
    `perspective_2/idea_1/proof_steps/step_006/review.md`. Their exported conclusions are the bound
    \((1+NR^2)\widehat\Lambda_{B,T}\), anchor-backed nonvanishing of \(F\), and the static zero-certificate
    conclusion.
- Local conditional hypotheses: None. Fixing a law, an interval, a parameter point, or a point on a root
  section only instantiates a target quantifier. Empty-section and zero-certificate branches are proved below
  and are not theorem-facing exclusions.

No primitive amplitude bound, transversality condition, independence assumption, chart-count factor,
additional density conversion, auxiliary tolerance, or hidden regularity premise is allowed or used. The
accepted dependencies discharge their own primitive prerequisites; this assembly step invokes no other
primitive assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Sectionwise product and interval integration (`lem:step-007-sectionwise-product`): Under the setting parameter definitions, accepted Lemma~\ref{lem:step-004-partition-sum}, Propositions~\ref{prop:step-005-translated-cube-section} and \ref{prop:step-006-affine-velocity}, and the checked nonnegative-integration facts, for every positive-length interval \(I\subseteq\Theta\), the coordinate-free normal-velocity integral is at most \(\sqrt2(2R)^{N-1}(1+NR^2)\widehat\Lambda_{B,T}\lvert I\rvert\). | Multiplies exactly the translated-section measure and pointwise velocity certificates, then integrates the same constant over \(I\), including \(N=1\) and empty sections. |
| `unit_002` | proposition | Literal general affine probability chain (`prop:step-007-affine-event-rate`): Under Assumption~\ref{assump:cube-density-laws}, the setting parameter definitions, accepted Proposition~\ref{prop:step-004-coordinate-free-sweep}, and Lemma~\ref{lem:step-007-sectionwise-product}, every admissible law and positive-length interval satisfy the two target inequalities and the exact equality to \(A(1+NR^2)\widehat\Lambda_{B,T}\lvert I\rvert/(\sqrt2R)\). | Combines the only probability interface with `unit_001` and proves the literal \(A\)-algebra without a hidden constant or second probability conversion. |
| `unit_003` | claim | Zero-certificate static-event dichotomy (`claim:step-007-zero-certificate`): Under Assumption~\ref{assump:cube-density-laws}, the setting parameter definitions, and accepted Propositions~\ref{prop:step-004-coordinate-free-sweep}, \ref{prop:step-006-affine-velocity}, and \ref{prop:step-006-boundary}, if \(\widehat\Lambda_{B,T}=0\), then the root section is one static proper affine hyperplane; an empty cube section gives an impossible supported event, while a nonempty cube section gives a static law-null hyperplane event with zero normal velocity. | Distinguishes the required nonempty static null event from an empty section using only allowed accepted inputs. |
| `unit_004` | proposition | Affine dispersion certificate (`prop:step-007-affine-dispersion`): Under Assumption~\ref{assump:cube-density-laws}, the setting parameter definitions, Proposition~\ref{prop:step-007-affine-event-rate}, and the checked monotonicity-of-suprema fact, dividing only by positive \(\lvert I\rvert\) and taking first the defining interval supremum and then the defining law supremum gives \(C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)\leq A(1+NR^2)\widehat\Lambda_{B,T}/(\sqrt2R)\). | Performs exactly the two target-defining suprema and closes uniformity over arbitrarily short positive-length intervals and all admissible laws. |

Atomic step = no. Pointwise section/velocity multiplication, the probability-rate algebra, the zero-certificate
dichotomy, and the ordered two-supremum closure are independent nontrivial audit obligations.

## Cited Result Applications

### Accepted dependency: measurable coordinate-free affine swept-area interface

- Source or name: Accepted Lemma~\ref{lem:step-004-partition-sum} and
  Proposition~\ref{prop:step-004-coordinate-free-sweep} from `step_004`, with proof
  SHA-256 `cbda35c61b01723ae2ccf9c9e052048bdafc6e8d87a108436c750c8a6574a064` and accepted review SHA-256
  `9c9587b882088cca10d00e7bb53d040f55f2ba0425cd4c6e44c5d82647e671f3`.
- Restated statement in current notation: The lemma proves that the nonnegative section mass appearing below
  is completed-Lebesgue measurable in \(\theta\). The proposition proves that, for every
  \(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length interval \(I\subseteq\Theta\),
  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
  \leq
  \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
  \frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
  {\lVert F(\theta)\rVert_2}
  \,d\mathcal H^{N-1}(a)\,d\theta.
  \]
- Instantiated objects: The original affine family, original \(N\)-dimensional coefficient vector, same
  possibly correlated law, same cube, same interval, and same Euclidean section integral as in the target.
- Required assumptions and discharge: Its accepted proof/review pair discharges its own primitive assumptions
  and earlier dependencies. Assumption~\ref{assump:cube-density-laws} is retained here to quantify the same law
  class. The dependency's one full-density domination is the only probability conversion used anywhere in this
  step.
- Conclusion used: Lemma~\ref{lem:step-007-sectionwise-product} uses the measurable-section-mass conclusion.
  Proposition~\ref{prop:step-007-affine-event-rate} uses the displayed inequality verbatim.
  Claim~\ref{claim:step-007-zero-certificate} uses its zero-velocity specialization to certify a static
  nonempty hyperplane event as law-null.

### Accepted dependency: uniform translated cube-section certificate

- Source or name: Accepted Proposition~\ref{prop:step-005-translated-cube-section} from `step_005`, with proof
  SHA-256 `0eba9c6000ae4a34731f05af239e19ec350024534167b173a5af4ba42e1e2641` and accepted review SHA-256
  `24153f0140d1a31a23d213a3882795ccb244f47c8f844d0696df6e28b0a6b4be`.
- Restated statement in current notation: For \(N\geq1\), \(R>0\), every \(n\neq0\), and every
  \(c\in\mathbb R\), if \(H(n,c)=\{x:\langle n,x\rangle=c\}\), then
  \[
  \mathcal H^{N-1}([-R,R]^N\cap H(n,c))
  \leq
  \mathcal H^{N-1}([-R,R]^N\cap H(n,0))
  \leq\sqrt2(2R)^{N-1}.
  \]
- Instantiated objects: For each \(\theta\), take \(n=F(\theta)\) and \(c=-F_0(\theta)\). The accepted
  `step_006` dependency retains the anchor-backed fact \(\lVert F(\theta)\rVert_2\geq1\), so this is a legal
  nonzero normal and \(H(n,c)=H_\theta\).
- Required assumptions and discharge: The binding `step_005` pair certifies the source convention, translated
  comparison, exact scaling, empty sections, and \(N=1\). The present step adds no geometric hypothesis.
- Conclusion used: Lemma~\ref{lem:step-007-sectionwise-product} uses only the final literal section cap.

### Accepted dependency: root-section affine normal velocity

- Source or name: Accepted Lemma~\ref{lem:step-006-root-amplitude},
  Proposition~\ref{prop:step-006-affine-velocity}, and
  Proposition~\ref{prop:step-006-boundary} from `step_006`, with proof SHA-256
  `5795f2ed4685bc1f60ea1f02206d64fd14dc344a6634b9506c7e8aa8d0715da0` and accepted review SHA-256
  `9919776062a8f13452ce1570df329fdae4bc610a46bdff4c0422afbc7c4b362a`.
- Restated statement in current notation: For every \(\theta\in\Theta\) and
  \(a\in H_\theta\cap[-R,R]^N\),
  \[
  \frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
  {\lVert F(\theta)\rVert_2}
  \leq(1+NR^2)\widehat\Lambda_{B,T}.
  \]
  Its accepted derivation also proves \(\lVert F(\theta)\rVert_2\geq1\). If
  \(\widehat\Lambda_{B,T}=0\), then \(B=0\) and \(\widetilde F'=0\) on \(\Theta\), so every defined
  numerator is zero and the affine tuple is static; this conclusion does not assert that the cube-truncated
  root section is empty.
- Instantiated objects: Exactly the numerator, denominator, root section, cube, and Euclidean norm in the
  coordinate-free integral exported by `step_004`.
- Required assumptions and discharge: The binding `step_006` proof/review pair discharges its primitive
  derivative-closure prerequisites and accepted matrix-certificate dependency. This step uses its result only
  as an accepted derived interface.
- Conclusion used: Lemma~\ref{lem:step-007-sectionwise-product} uses the pointwise cap, and
  Claim~\ref{claim:step-007-zero-certificate} uses the static zero-certificate conclusion.

### Elementary nonnegative integration and order facts

- Source or name: Monotonicity and constant integration for nonnegative Lebesgue/Hausdorff integrals, followed
  by monotonicity of suprema.
- Restated statement in current notation: If \(S\) is measurable, \(0\leq g\leq L<\infty\) on \(S\), then
  \(\int_S g\,d\nu\leq L\nu(S)\). If \(h(\theta)\leq L\) on an interval \(I\), then
  \(\int_Ih(\theta)\,d\theta\leq L|I|\). If \(x_s\leq L\) for every index \(s\), then
  \(\sup_s x_s\leq L\).
- Instantiated objects: The nonnegative normal-velocity integrand, each cube-truncated root section, the
  positive-length interval, and successively the interval and law index sets in the definition of
  \(C^{\mathrm{aff}}_{\mathcal D}\).
- Required assumptions and discharge: Measurability of the moving section mass is included in accepted
  Proposition~\ref{prop:step-004-coordinate-free-sweep}; the pointwise and section bounds are the two accepted
  dependencies just restated. The setting defines \(|I|\) as Lebesgue length and requires \(|I|>0\) before
  division.
- Conclusion used: Lemma~\ref{lem:step-007-sectionwise-product} performs the two integrations, and
  Proposition~\ref{prop:step-007-affine-dispersion} performs the two suprema.

### Current-step result application map

| Paper-ready result | Restated conclusion | Established from | Used by |
| ------------------ | -------------------- | ---------------- | ------- |
| Lemma~\ref{lem:step-007-sectionwise-product} | The coordinate-free double integral is at most \(\sqrt2(2R)^{N-1}(1+NR^2)\widehat\Lambda_{B,T}\lvert I\rvert\). | Accepted sweep measurability, translated-section and velocity certificates, plus checked nonnegative integration. | Proposition~\ref{prop:step-007-affine-event-rate}. |
| Proposition~\ref{prop:step-007-affine-event-rate} | Every admissible law and positive-length interval satisfy the literal target probability chain, including the exact \(A\)-equality. | Accepted coordinate-free sweep and Lemma~\ref{lem:step-007-sectionwise-product}. | Claim~\ref{claim:step-007-zero-certificate}, Proposition~\ref{prop:step-007-affine-dispersion}, and target assembly. |
| Claim~\ref{claim:step-007-zero-certificate} | At zero certificate, an empty section and a nonempty static law-null hyperplane event are distinct and both give probability zero. | Accepted staticity, accepted coordinate-free sweep, and the support/density law interface. | Boundary audit in target assembly. |
| Proposition~\ref{prop:step-007-affine-dispersion} | The ordered interval and law suprema give the exact \(C^{\mathrm{aff}}_{\mathcal D}\) certificate. | Proposition~\ref{prop:step-007-affine-event-rate} and the setting definition. | Target assembly and downstream `step_012`. |

No external paper result, sharper homogeneous estimate, monic specialization, counterexample calculation, or
second root-event theorem is used in this step.

## Local Derivation

### unit_001: lemma

**Lemma (Sectionwise product and interval integration).**
\(\label{lem:step-007-sectionwise-product}\)

Under the setting parameter definitions and accepted
Lemma~\ref{lem:step-004-partition-sum},
Propositions~\ref{prop:step-005-translated-cube-section} and
\ref{prop:step-006-affine-velocity}, and the checked nonnegative-integration facts restated above, if
\(I\subseteq\Theta\) is an interval with \(|I|>0\), then

\[
\begin{aligned}
&\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta\\
&\qquad\leq
\sqrt2(2R)^{N-1}(1+NR^2)
\widehat\Lambda_{B,T}|I|.
\end{aligned}
\]

**Proof / justification.** Fix \(\theta\in I\). The accepted `step_006` interface gives
\(\lVert F(\theta)\rVert_2\geq1\), so

\[
H_\theta
=\{a\in\mathbb R^N:\langle F(\theta),a\rangle=-F_0(\theta)\}
\]

is an affine hyperplane with nonzero normal. Therefore accepted
Proposition~\ref{prop:step-005-translated-cube-section}, instantiated with
\(n=F(\theta)\) and \(c=-F_0(\theta)\), gives

\[
\mathcal H^{N-1}(H_\theta\cap[-R,R]^N)
\leq\sqrt2(2R)^{N-1}.
\]

On that same section, accepted Proposition~\ref{prop:step-006-affine-velocity} gives pointwise

\[
0\leq
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\leq(1+NR^2)\widehat\Lambda_{B,T}.
\]

Monotonicity of the nonnegative section integral now yields the literal pointwise product

\[
\begin{aligned}
&\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\\
&\qquad\leq
(1+NR^2)\widehat\Lambda_{B,T}
\mathcal H^{N-1}(H_\theta\cap[-R,R]^N)\\
&\qquad\leq
\sqrt2(2R)^{N-1}(1+NR^2)\widehat\Lambda_{B,T}.
\end{aligned}
\]

If the section is empty, its Hausdorff measure and integral are both zero, so the same chain is valid without
evaluating a section point. If \(N=1\), the accepted section result uses \(\mathcal H^0\) counting measure and
the accepted velocity result has factor \(1+R^2\); no dimension-continuation argument is needed.

The accepted `step_004` interface certifies measurability of the nonnegative moving-section mass. Integrating
the pointwise constant over \(I\) therefore gives

\[
\begin{aligned}
&\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta\\
&\qquad\leq
\int_I\sqrt2(2R)^{N-1}(1+NR^2)
\widehat\Lambda_{B,T}\,d\theta\\
&\qquad=
\sqrt2(2R)^{N-1}(1+NR^2)
\widehat\Lambda_{B,T}|I|.
\end{aligned}
\]

There is no chart summation, orientation factor, limit, or term absorption in this multiplication. \(\square\)

### unit_002: proposition

**Proposition (Literal general affine probability chain).**
\(\label{prop:step-007-affine-event-rate}\)

Under Assumption~\ref{assump:cube-density-laws}, the setting parameter definitions, accepted
Proposition~\ref{prop:step-004-coordinate-free-sweep}, and
Lemma~\ref{lem:step-007-sectionwise-product}, for every
\(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length interval \(I\subseteq\Theta\),

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
\widehat\Lambda_{B,T}|I|\\
&=
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}|I|.
\end{aligned}
\]

The statement is simultaneous over all admissible possibly correlated laws and all positive-length intervals,
uses ordinary probability, and has no hidden constant.

**Proof / justification.** Fix an arbitrary admissible \(\mu\) and an arbitrary interval \(I\) with
\(|I|>0\). Accepted Proposition~\ref{prop:step-004-coordinate-free-sweep} gives the first displayed
inequality verbatim. Its accepted density argument already used the full joint bound \(f_\mu\leq\kappa\), so
there is no probability conversion to repeat.

Lemma~\ref{lem:step-007-sectionwise-product} bounds the exact same double integral. Since \(\kappa>0\),
multiplication by \(\kappa\) preserves the inequality and gives

\[
\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'+\langle a,F'\rangle\rvert}{\lVert F\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta
\leq
\kappa\sqrt2(2R)^{N-1}(1+NR^2)
\widehat\Lambda_{B,T}|I|.
\]

It remains only to verify the stated equality. The setting defines \(A=(2R)^N\kappa\), and \(R>0\).
Consequently,

\[
\begin{aligned}
\frac{A}{\sqrt2R}
&=\frac{\kappa(2R)^N}{\sqrt2R}\\
&=\kappa(2R)^{N-1}\frac{2R}{\sqrt2R}\\
&=\kappa\sqrt2(2R)^{N-1}.
\end{aligned}
\]

Multiplying this identity by the nonnegative factor
\((1+NR^2)\widehat\Lambda_{B,T}|I|\) proves the final equality exactly. Because the law and interval fixed at
the start were arbitrary and every consumed dependency is uniform in those choices, the entire chain holds
simultaneously for every admissible pair. No law independence, section orientation, interval lower-length
threshold, or Pfaffian degree enters this argument. \(\square\)

### unit_003: claim

**Claim (Zero-certificate static-event dichotomy).**
\(\label{claim:step-007-zero-certificate}\)

Under Assumption~\ref{assump:cube-density-laws}, the setting parameter definitions, and accepted
Propositions~\ref{prop:step-004-coordinate-free-sweep},
\ref{prop:step-006-affine-velocity}, and
\ref{prop:step-006-boundary}, if \(\widehat\Lambda_{B,T}=0\), then there is a fixed proper affine hyperplane
\(H_*\subset\mathbb R^N\) such that \(H_\theta=H_*\) for every \(\theta\in\Theta\). For every admissible law
and positive-length interval, an empty intersection \(H_*\cap[-R,R]^N\) gives an impossible supported root
event, whereas a nonempty intersection gives a static law-null hyperplane event with zero normal velocity.

**Proof / justification.** Suppose \(\widehat\Lambda_{B,T}=0\). Accepted
Proposition~\ref{prop:step-006-boundary} gives

\[
B(\theta)=0,
\qquad
\widetilde F'(\theta)=0
\qquad(\theta\in\Theta).
\]

Thus \(\widetilde F\) is constant on the interval \(\Theta\). Fix any \(\theta_0\in\Theta\), set

\[
F_0^*:=F_0(\theta_0),
\qquad
F^*:=F(\theta_0),
\qquad
H_*:=\{a\in\mathbb R^N:F_0^*+\langle a,F^*\rangle=0\}.
\]

The anchor-backed nonvanishing retained by the accepted `step_006` interface gives
\(\lVert F^*\rVert_2\geq1\). Hence \(H_*\) is a proper affine hyperplane, and staticity gives
\(H_\theta=H_*\) for every \(\theta\in\Theta\).

Let \(I\subseteq\Theta\) have positive length. It is nonempty, and for every coefficient vector \(a\),
\(\phi_a\) is constant on \(I\). Therefore

\[
\{a:\exists\theta\in I,\ \phi_a(\theta)=0\}=H_*.
\]

If \(H_*\cap[-R,R]^N=\varnothing\), support of \(\mu\) on the cube makes the root event impossible. The
section integral is also an integral over the empty set.

Now suppose instead that \(H_*\cap[-R,R]^N\neq\varnothing\). This is not an empty-section argument.
Staticity gives, for every \(a\) in the nonempty section and every \(\theta\in I\),

\[
F_0'(\theta)+\langle a,F'(\theta)\rangle=0.
\]

Accepted Proposition~\ref{prop:step-004-coordinate-free-sweep} then yields

\[
\begin{aligned}
\mu(H_*)
&=\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]\\
&\leq
\kappa\int_I\int_{H_*\cap[-R,R]^N}0
\,d\mathcal H^{N-1}(a)\,d\theta
=0.
\end{aligned}
\]

Thus the nonempty static section corresponds to a proper affine hyperplane event of zero probability under
every admissible law. This conclusion uses the already accepted sweep/null interface and does not invoke
`step_002`, a separate hyperplane-null theorem, or an independence argument. \(\square\)

### unit_004: proposition

**Proposition (Affine dispersion certificate).**
\(\label{prop:step-007-affine-dispersion}\)

Under Assumption~\ref{assump:cube-density-laws}, the setting parameter definitions, and
Proposition~\ref{prop:step-007-affine-event-rate}, together with the checked monotonicity-of-suprema fact,
one has

\[
C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
\leq
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\]

The conclusion uses exactly the two defining suprema and remains valid for arbitrarily short intervals of
positive length.

**Proof / justification.** Fix \(\mu\in\mathcal D\). For every interval \(I\subseteq\Theta\) with
\(|I|>0\), Proposition~\ref{prop:step-007-affine-event-rate} gives

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}|I|.
\]

Only now divide by the strictly positive number \(|I|\). This gives

\[
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]}{|I|}
\leq
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\]

For this fixed law, take the first defining supremum, namely the supremum over positive-length intervals:

\[
\sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\ |I|>0}}
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]}{|I|}
\leq
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\]

The right side is independent of \(\mu\). Take the second defining supremum, namely the supremum over
\(\mu\in\mathcal D\), to obtain

\[
\begin{aligned}
C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
&=
\sup_{\mu\in\mathcal D}
\sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\ |I|>0}}
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]}{|I|}\\
&\leq
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\end{aligned}
\]

No interchange of suprema, limiting interval, confidence conversion, or lower bound on \(|I|\) is used. If
\(\widehat\Lambda_{B,T}=0\), Claim~\ref{claim:step-007-zero-certificate} confirms directly that every ratio
has zero numerator, whether the static cube section is empty or nonempty. \(\square\)

## Target-Step Assembly

Fix arbitrary \(\mu\in\mathcal D_{N,R,\kappa}\) and an arbitrary interval
\(I\subseteq\Theta\) with \(|I|>0\). Accepted
Proposition~\ref{prop:step-004-coordinate-free-sweep} supplies, without a second probability conversion,

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq
\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta.
\]

Accepted Proposition~\ref{prop:step-005-translated-cube-section} controls the measure of the exact section in
that integral, and accepted Proposition~\ref{prop:step-006-affine-velocity} controls its exact pointwise
integrand. Lemma~\ref{lem:step-007-sectionwise-product} composes those two accepted interfaces, including empty
sections and \(N=1\), to give

\[
\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'+\langle a,F'\rangle\rvert}{\lVert F\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta
\leq
\sqrt2(2R)^{N-1}(1+NR^2)
\widehat\Lambda_{B,T}|I|.
\]

Proposition~\ref{prop:step-007-affine-event-rate} substitutes this inequality and proves the literal complete
chain

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
\widehat\Lambda_{B,T}|I|\\
&=
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}|I|.
\end{aligned}
\]

The final equality follows directly from \(A=(2R)^N\kappa\) and \(R>0\), with no asymptotic or hidden
constant. Claim~\ref{claim:step-007-zero-certificate} separately verifies that at zero certificate a nonempty
static root section is a law-null proper-hyperplane event rather than being misclassified as empty.

Finally, Proposition~\ref{prop:step-007-affine-dispersion} divides only by \(|I|>0\), takes the defining
interval supremum, and then takes the defining law supremum to prove

\[
C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
\leq
\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\]

These named results prove exactly the accepted `step_007` row. The conclusions use ordinary probability,
retain arbitrary coefficient correlation, use Euclidean norms and \(\mathcal H^{N-1}\), are uniform over all
admissible laws and all positive-length intervals, and preserve every literal \(N,R,A,\kappa\) factor. No
sharper homogeneous result, monic specialization, counterexample, or final theorem assembly is consumed.

## Explicit Rate Audit

- Exposed variables: \(N\), \(R\), \(\kappa\), \(A=(2R)^N\kappa\),
  \(\widehat\Lambda_{B,T}\), and \(|I|\), with \(\mu\) and \(I\) ranging exactly as in the setting. The
  interval probability coefficient is literally
  \(A(1+NR^2)\widehat\Lambda_{B,T}/(\sqrt2R)\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(N,R,\kappa,A,\mu,I\), coefficient correlation, section orientation or
  offset, a pivot or pivot margin, root multiplicity, endpoint convention, \(q,M,\Delta\), or any other
  instance parameter.
- Fixed quantities: The deterministic instance data
  \((\Theta,T,q,M,\Delta,N,R,\kappa,A,m,B,F_0,F)\) and the supplied certificate are fixed before \(\mu\) and
  \(I\) range. Once \(\widehat\Lambda_{B,T}\) is fixed, the additional dependence on \(q,M,\Delta\) is
  exactly degree zero.
- Probability mode: Ordinary probability separately for each arbitrary full joint law. There is no confidence
  parameter, conditioning event, expectation, independence reduction, or union bound.
- Horizon mode: Pairwise for every positive-length interval, then exactly the defining interval supremum and
  defining law supremum. The result is interval-uniform but introduces no recursive, stopping-time, or
  all-time process.
- Norm mode: Euclidean vector and operator conventions inherited by the velocity certificate, and Euclidean
  \((N-1)\)-dimensional Hausdorff measure on each actual affine section. For \(N=1\), \(\mathcal H^0\) is
  counting measure.
- Admissibility conditions and auxiliary tolerances: Exactly Assumption~\ref{assump:cube-density-laws}, the
  setting parameter definitions with \(R>0\), and the three accepted dependency interfaces. There is no
  auxiliary tolerance, amplitude bound, transversality premise, pivot margin, independence condition, or
  chart-count factor.
- Term absorption or simplification inequalities: No term is dropped or absorbed. The complete deterministic
  multiplication is
  \[
  \int_{H_\theta\cap[-R,R]^N}
  \frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
  {\lVert F(\theta)\rVert_2}
  \,d\mathcal H^{N-1}(a)
  \leq
  (1+NR^2)\widehat\Lambda_{B,T}
  \mathcal H^{N-1}(H_\theta\cap[-R,R]^N)
  \leq
  \sqrt2(2R)^{N-1}(1+NR^2)\widehat\Lambda_{B,T},
  \]
  followed by integration to obtain the factor \(|I|\). The public algebra is exactly
  \[
  \kappa\sqrt2(2R)^{N-1}
  =\frac{\kappa(2R)^N}{\sqrt2R}
  =\frac{A}{\sqrt2R},
  \qquad R>0.
  \]
- Probability conversion: None in this step. Accepted
  Proposition~\ref{prop:step-004-coordinate-free-sweep} already contains the sole conversion
  \(\mu(S)\leq\kappa\lambda_N(S)\) for the full joint density. Taking suprema is an order operation, not a
  second probability conversion.
- Contribution to any Rate Specialization Bridge: This step is the complete R2 bridge from the accepted
  coordinate-free technical integral to the public pairwise affine probability rate and then to
  \(C^{\mathrm{aff}}_{\mathcal D}\). It verifies the section and velocity inputs, literal multiplication,
  \(A\)-identity, unchanged probability mode, and both defining suprema.
- Baseline-reduction check: This step is the general affine clause and does not consume or replace the sharper
  homogeneous or exact monic baselines. The accepted indicator chart theorem remains available to their legal
  downstream producers. Within the present clause, \(\widehat\Lambda_{B,T}=0\) reduces exactly to probability
  and dispersion constant zero, with Claim~\ref{claim:step-007-zero-certificate} distinguishing a static
  nonempty law-null hyperplane from an empty section.
- Boundary audit: For \(N=1\), the accepted \(\mathcal H^0\) section bound and velocity factor give the same
  displayed chain. Empty sections contribute zero. No positive lower bound on \(|I|\) beyond the defining
  condition \(|I|>0\) is used, so arbitrarily short positive-length intervals are covered without a tolerance.

## Blockers

None.

## Notation And Assumption Notes

- `public-facing`: Proposition~\ref{prop:step-007-affine-event-rate} exports the complete general affine
  probability chain, and Proposition~\ref{prop:step-007-affine-dispersion} exports only the requested
  \(C^{\mathrm{aff}}_{\mathcal D}\) bound. They introduce no new public symbol. These are the minimal outputs
  consumed by `step_012`.
- `appendix-local`: Lemma~\ref{lem:step-007-sectionwise-product} packages the exact section/velocity
  multiplication, and Claim~\ref{claim:step-007-zero-certificate} packages the required boundary dichotomy.
  Their labels are paper-ready proof authorities; `unit_001`--`unit_004` are audit handles only.
- `proof-local`: In the zero-certificate proof, \(\theta_0\) is an arbitrary reference point,
  \(F_0^*=F_0(\theta_0)\), \(F^*=F(\theta_0)\), and
  \(H_*=\{a:F_0^*+\langle a,F^*\rangle=0\}\). All are derived from the accepted staticity conclusion and
  disappear from the exported interface. No helper constant or event dictionary is introduced.
- Inherited notation: \(F_0,F,\widetilde F,\phi_\alpha,H_\theta,\mathcal D,N,R,\kappa,A,B\), and
  \(\widehat\Lambda_{B,T}\) retain exactly their setting meanings. The affine hyperplane notation
  \(H(n,c)\) appears only inside the restated accepted `step_005` result and is instantiated immediately by
  \(n=F(\theta)\), \(c=-F_0(\theta)\).
- Constant provenance: \(A=(2R)^N\kappa\), \(R>0\), and \(\widehat\Lambda_{B,T}\) are setting-defined.
  The factor \(\sqrt2(2R)^{N-1}\) is inherited from accepted `step_005`; the factor
  \((1+NR^2)\widehat\Lambda_{B,T}\) is inherited from accepted `step_006`; and their product and conversion to
  \(A/(\sqrt2R)\) are proved in Lemma~\ref{lem:step-007-sectionwise-product} and
  Proposition~\ref{prop:step-007-affine-event-rate}. No new constant, radius, threshold, rate, margin,
  admissibility parameter, or finite-tube quantity is introduced.
- Assumption provenance: `assump:cube-density-laws` is the only primitive condition consumed at this step.
  The coordinate-free probability inequality, section bound, velocity bound, nonvanishing denominator, and
  zero-certificate staticity are accepted derived outputs. Empty-section handling, the literal algebra,
  positive-length division, ordered suprema, and the static-event dichotomy are proved in the four named local
  units. No generated event, boundedness fact, recurrence, local-validity condition, transversality property, or
  root-simplicity property is promoted to an assumption.
- Uniformity and measure conventions: The proof fixes \(\mu\) and \(I\) only to instantiate universal
  quantifiers, derives a constant independent of both, and then takes exactly the defining suprema. It uses the
  one full possibly correlated joint density, ordinary probability, Euclidean norms, and normalized Euclidean
  Hausdorff measure. In \(N=1\), the inherited \(\mathcal H^0\) counting convention is retained.
- Forbidden-input audit: No global amplitude bound, transversality, independence, chart-count factor, second
  probability conversion, hidden constant, auxiliary tolerance, sharper homogeneous step, monic step,
  Counter-example 1, or final assembly result is read or used. `global_proof.md` and
  `global_proof_review.md` were not read or used.
