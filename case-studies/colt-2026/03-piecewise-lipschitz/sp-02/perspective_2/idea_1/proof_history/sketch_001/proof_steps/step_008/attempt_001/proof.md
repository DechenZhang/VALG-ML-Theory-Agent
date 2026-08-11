# Proof Step

## Step Identity

- Branch path: `perspective_2/idea_1`
- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 1
- Binding setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Binding proof-sketch SHA-256: `8b5b22e5000e1c5641e2b5baf0c4d48244ce3389941b0cc9857b47510bbf6c93`
- Binding accepted proof-sketch-review SHA-256: `4288579fa3b8583b31faa2c220f5071879da72f06ac3a1dd3d1889cb1096cb7c`
- Run mode: interactive
- Progress type: `full`

## Target Step Claim

The exact accepted sketch row is:

- Intended claim: In the specialization \(F_0=0\), prove the integrand is
  \(\lvert\langle a,\gamma_F'\rangle\rvert\), derive the exact
  \(A\sqrt{N/2}\Gamma_{\mathrm{proj}}\) bound, substitute
  \(\Gamma_{\mathrm{proj}}\leq\widehat\Lambda\), and take the
  \(C^{\mathrm{Pf}}\) supremum.
- Depends on: `step_001`, `step_004`, `step_005`.
- Assumptions used: Primitive: `assump:cube-density-laws`,
  `assump:anchored-derivative-closure`; derived: all dependencies.
- Technical challenge: Cancel radial motion exactly, handle stationary projective curves and \(N=1\), and
  expose the literal \(A\sqrt{N/2}\) algebra.
- Intended proof tool or cited result: Direct \(F=r\gamma_F\) differentiation and orthogonality; Ball section
  bound; Edelman--Kostlan Theorem 5.1 as an integrand/convention cross-check.
- Output target: Sharper homogeneous theorem and \(C^{\mathrm{Pf}}\) clause.
- Rate objective: R3 and R5: exact projective/certificate rates and delta-scale retention.
- Row-local review status: `PENDING`. Sketch-level acceptance is supplied by the binding
  `proof_sketch_review.md`, whose status is `ACCEPTED`.

The external cross-check named in the accepted row is not needed or used below. The proof uses the accepted
affine swept-area interface directly.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:cube-density-laws`: \(\alpha\) has one arbitrary, possibly correlated, joint density supported on
    \([-R,R]^N\) and bounded by \(\kappa\).
  - `assump:anchored-derivative-closure`: the setting tuple is the anchored derivative-closed tuple, with
    \(F_{j_*}=1\) and the supplied deterministic closure certificate. This condition is used through the exact
    homogeneous interfaces proved by the accepted `step_001` dependency.
- Setting definitions, not additional assumptions: \(N\geq1\), \(R>0\),
  \(A=(2R)^N\kappa\), the nondegenerate interval \(\Theta\),
  \(\gamma_F=F/\lVert F\rVert_2\),
  \(\Gamma_{\mathrm{proj}}(F)=\sup_{\theta\in\Theta}\lVert\gamma_F'(\theta)\rVert_2\),
  and the definition of \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\).
- Derived invariants supplied by accepted dependencies:
  - Accepted `step_001` proof, SHA-256
    `d55b8e0455d2b2d38b3d72339557df4b1366b5e2cd81cc145fd537dca1e75c11`, and accepted review, SHA-256
    `dd04491bf12d076e4482faa9dcfb484d671d601a35cf64405f9d2afa4e535899`, status `ACCEPTED`: in the homogeneous specialization
    \(F_0\equiv0\), \(F\neq0\), \(r=\lVert F\rVert_2\geq1\), \(\gamma_F\) is differentiable,
    \(\Gamma_{\mathrm{proj}}(F)\) is finite, and
    \(\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}\).
  - Accepted `step_004` proof, SHA-256
    `cbda35c61b01723ae2ccf9c9e052048bdafc6e8d87a108436c750c8a6574a064`, and accepted review, SHA-256
    `9c9587b882088cca10d00e7bb53d040f55f2ba0425cd4c6e44c5d82647e671f3`, status `ACCEPTED`: every admissible possibly
    correlated law and every positive-length interval satisfy the coordinate-free affine swept-area inequality,
    with exact Euclidean and \(\mathcal H^{N-1}\) conventions and literal coefficient \(\kappa\).
  - Accepted `step_005` proof, SHA-256
    `0eba9c6000ae4a34731f05af239e19ec350024534167b173a5af4ba42e1e2641`, and accepted review, SHA-256
    `24153f0140d1a31a23d213a3882795ccb244f47c8f844d0696df6e28b0a6b4be`, status `ACCEPTED`: every section of the coefficient cube
    is bounded by its parallel central section and then by \(\sqrt2(2R)^{N-1}\), including the
    \(\mathcal H^0\) convention for \(N=1\).
- Local conditional hypotheses: None. The condition \(F_0\equiv0\) is the static specialization in the accepted
  target itself, not a generated invariant or an added theorem assumption.

No independence, amplitude bound, affine offset, transversality condition, chart-count factor, auxiliary
tolerance, or stationary-section emptiness is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Exact radial cancellation on homogeneous root sections (`lem:step-008-radial-cancellation`): Under Assumption~\ref{assump:anchored-derivative-closure} and the accepted nonvanishing and differentiability conclusions of `step_001`, if \(F_0\equiv0\), then \(H_\theta=\gamma_F(\theta)^\perp\) and, for every \(a\in H_\theta\), \(\lvert\langle a,F'(\theta)\rangle\rvert/\lVert F(\theta)\rVert_2=\lvert\langle a,\gamma_F'(\theta)\rangle\rvert\). | Removes deterministic radial motion by equality before any bound is applied. |
| `unit_002` | lemma | Literal homogeneous constant identity (`lem:step-008-literal-constant`): From the setting definition \(A=(2R)^N\kappa\) and \(R>0\), \(\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}\). | Preserves the exact \(N,R,\kappa,A\) dependence with no hidden factor. |
| `unit_003` | lemma | Stationary projective curves give a static law-null event (`lem:step-008-stationary-projective`): Under Assumptions~\ref{assump:cube-density-laws} and \ref{assump:anchored-derivative-closure} and the accepted `step_001` conclusions, if \(F_0\equiv0\) and \(\Gamma_{\mathrm{proj}}(F)=0\), then for every admissible law and positive-length interval the root event is one fixed proper-hyperplane event and has probability zero, including \(N=1\). | Audits the zero-rate branch without claiming that the central section is empty. |
| `unit_004` | proposition | Sharp homogeneous interval rate (`prop:step-008-homogeneous-rate`): Under Assumptions~\ref{assump:cube-density-laws} and \ref{assump:anchored-derivative-closure}, accepted `step_001`, `step_004`, and `step_005`, and Lemmas~\ref{lem:step-008-radial-cancellation}--\ref{lem:step-008-stationary-projective}, if \(F_0\equiv0\), then every admissible law and every positive-length interval \(I\subseteq\Theta\) satisfy \(\Pr[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]\leq A\sqrt{N/2}\Gamma_{\mathrm{proj}}(F)\lvert I\rvert\leq A\sqrt{N/2}\widehat\Lambda_{B,T}\lvert I\rvert\). | Proves the exact pairwise probability chain, including all degenerate and short-interval cases. |
| `unit_005` | proposition | Defining-supremum closure (`prop:step-008-pf-capacity`): Under the assumptions and results of Proposition~\ref{prop:step-008-homogeneous-rate}, if \(F_0\equiv0\), then \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\leq A\sqrt{N/2}\widehat\Lambda_{B,T}\). | Divides only by positive interval length and takes the interval supremum followed by the law supremum exactly as defined. |

Atomic step = no. Radial cancellation, literal constant algebra, the stationary boundary regime, pairwise
probability control, and supremum closure are distinct proof obligations.

## Cited Result Applications

### Accepted dependency: normalized derivative and projective certificate

- Source or name: Accepted Proposition~\ref{prop:step-001-projective} and its boundary proposition from
  `step_001`, with the proof/review identities and hashes listed above.
- Restated statement in current notation: In the specialization \(F_0\equiv0\), the anchor gives
  \(r(\theta)=\lVert F(\theta)\rVert_2\geq1\), so \(\gamma_F\) is differentiable, and
  \[
  \Gamma_{\mathrm{proj}}(F)
  =\sup_{\theta\in\Theta}\lVert\gamma_F'(\theta)\rVert_2
  \leq\widehat\Lambda_{B,T}.
  \]
  In particular, when \(N=1\), the anchored normalized curve is constant and its projective speed is zero.
- Instantiated objects: The actual setting curve \(F\), its Euclidean norm, its normalized curve, the actual
  homogeneous block of the supplied closure matrix, and the setting certificate.
- Required assumptions and discharge: The accepted proof and matching `ACCEPTED` review discharge the anchor,
  differentiability, denominator, block, projector, coefficient-height, endpoint, and zero-certificate checks.
- Conclusion used: Nonvanishing and differentiability in Lemma~\ref{lem:step-008-radial-cancellation}, the exact
  definition and finiteness of \(\Gamma_{\mathrm{proj}}\) throughout, and
  \(\Gamma_{\mathrm{proj}}\leq\widehat\Lambda_{B,T}\) in
  Proposition~\ref{prop:step-008-homogeneous-rate}.
- Nonoutputs: This dependency supplies no root probability, cube-section measure, or amplitude estimate.

### Accepted dependency: coordinate-free affine swept-area interface

- Source or name: Accepted Proposition~\ref{prop:step-004-coordinate-free-sweep} from `step_004`, with the
  proof/review identities and hashes listed above.
- Restated statement in current notation: For every admissible law \(\mu\) and positive-length interval
  \(I\subseteq\Theta\),
  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:
  F_0(\theta)+\langle\alpha,F(\theta)\rangle=0]
  \leq\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
  \frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
  {\lVert F(\theta)\rVert_2}
  \,d\mathcal H^{N-1}(a)\,d\theta.
  \]
- Instantiated objects: Set \(F_0\equiv0\), retain the original possibly correlated law and original interval,
  and use the actual central root section \(H_\theta=F(\theta)^\perp\).
- Required assumptions and discharge: The accepted proof and matching `ACCEPTED` review certify the sole
  probability-to-swept-area conversion, full joint-density use, all root multiplicities, endpoint conventions,
  persistent roots, arbitrary correlation, and the \(N=1\) zero-dimensional convention.
- Conclusion used: The first line of the probability chain in
  Proposition~\ref{prop:step-008-homogeneous-rate}.
- Nonoutputs: This dependency supplies no section-size or projective-speed bound.

### Accepted dependency: uniform translated cube-section certificate

- Source or name: Accepted Proposition~\ref{prop:step-005-translated-cube-section} from `step_005`, with the
  proof/review identities and hashes listed above.
- Restated statement in current notation: For every nonzero \(n\in\mathbb R^N\) and every \(c\in\mathbb R\),
  \[
  \mathcal H^{N-1}([-R,R]^N\cap\{a:\langle n,a\rangle=c\})
  \leq
  \mathcal H^{N-1}([-R,R]^N\cap n^\perp)
  \leq\sqrt2(2R)^{N-1}.
  \]
- Instantiated objects: \(n=\gamma_F(\theta)\neq0\) and \(c=0\), so the consumed section is exactly
  \(H_\theta\cap[-R,R]^N\), in the same Euclidean Hausdorff convention.
- Required assumptions and discharge: The accepted proof and matching `ACCEPTED` review certify central
  maximality, Ball's central bound and scaling, all orientations, empty and boundary sections, and the direct
  \(\mathcal H^0\) branch for \(N=1\).
- Conclusion used: The pointwise section factor \(\sqrt2(2R)^{N-1}\) in
  Proposition~\ref{prop:step-008-homogeneous-rate}.
- Nonoutputs: The dependency supplies no velocity, probability, or correlation statement.

### Authorized source-convention cross-check: Edelman--Kostlan Theorem 5.1

- Source identity: Alan Edelman and Eric Kostlan, "How Many Zeros of a Random Polynomial Are Real?",
  Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9.
- Restated source statement in current notation: For a differentiable nonvanishing curve
  \(v:I\to\mathbb R^N\) and a random coefficient vector \(a\) with joint Lebesgue density \(\rho\), let
  \(Z_I(a;v)\) be the source-convention number of zeros of
  \(\theta\mapsto\langle a,v(\theta)\rangle\) on \(I\). Theorem 5.1 gives
  \[
  \mathbb E_\rho Z_I(a;v)
  =
  \int_I\int_{v(\theta)^\perp}
  \frac{\lvert\langle a,v'(\theta)\rangle\rvert}{\lVert v(\theta)\rVert_2}
  \rho(a)\,d\mathcal H^{N-1}(a)\,d\theta.
  \]
  Writing \(\gamma_v=v/\lVert v\rVert_2\), the source integrand on
  \(v(\theta)^\perp=\gamma_v(\theta)^\perp\) is equivalently
  \(\lvert\langle a,\gamma_v'(\theta)\rangle\rvert\rho(a)\).
- Exact role: This statement is recorded only to cross-check the Euclidean normalization, section, and
  homogeneous integrand independently derived in Lemma~\ref{lem:step-008-radial-cancellation}. No inequality,
  expected-count conclusion, event-probability conversion, or multiplicity statement from the source is used.
- Object mapping: \(v=F\), \(\gamma_v=\gamma_F\), \(a=\alpha\), \(\rho=f_\mu\), and the source interval is the
  current \(I\). The coefficient-space inner product, normalization, codimension-one Hausdorff measure, and
  parameter coordinate are the current Euclidean ones.
- Assumption discharge for the cross-check: Accepted `step_001` gives differentiability and
  \(\lVert F\rVert_2\geq1\); Assumption~\ref{assump:cube-density-laws} gives the full joint Lebesgue density; and
  \(I\subseteq\Theta\) is a finite interval. These are the translated source hypotheses for the displayed
  homogeneous formula. The branch does not ask the source to handle tangent, multiple,
  endpoint, or persistent roots: those regimes and the event-probability inequality are already certified by
  accepted `step_004`. Thus no unverified source regularity condition is imported into the proof.
- Nonoutputs: The source does not supply the accepted affine chart theorem, the probability-of-existence bound
  used here, the cube-section factor, the translated-section wrapper, the derivative-closure certificate, the
  projective certificate, the \(N=1\) boundary proof, or the defining-supremum closure.

### Elementary facts used in current notation

- Euclidean Cauchy--Schwarz: for \(a,v\in\mathbb R^N\),
  \(\lvert\langle a,v\rangle\rvert\leq\lVert a\rVert_2\lVert v\rVert_2\). It is applied with
  \(a\in[-R,R]^N\) and \(v=\gamma_F'(\theta)\); the cube gives
  \(\lVert a\rVert_2\leq R\sqrt N\).
- Zero-derivative criterion on an interval: a differentiable real coordinate whose derivative vanishes on an
  interval is constant. Applied coordinatewise, it makes \(\gamma_F\) constant when the exact ordinary supremum
  \(\Gamma_{\mathrm{proj}}(F)\) is zero.
- Euclidean proper-hyperplane nullity: if \(v\neq0\), then
  \(\{a:\langle a,v\rangle=0\}\) has \(N\)-dimensional Lebesgue measure zero. An orthogonal change of coordinates
  sends it to \(\{x_1=0\}\), whose nullity follows from product measure. Since each admissible law has a full
  Lebesgue density, the same hyperplane has law mass zero. This fact is used only for the stationary-case audit,
  not as a second probability conversion in the rate derivation.
- Monotonicity of nonnegative integration: if \(0\leq g(\theta)\leq M\) on a measurable interval \(I\), then
  \(\int_I g(\theta)\,d\theta\leq M|I|\). It is applied with
  \(g=\lVert\gamma_F'\rVert_2\) and the exact bound
  \(M=\Gamma_{\mathrm{proj}}(F)\).

### Current-step result application ledger

| Paper-ready result | Restated conclusion | Established from | Used by |
| ------------------ | -------------------- | ---------------- | ------- |
| Lemma~\ref{lem:step-008-radial-cancellation} | On the actual central root section, the normalized normal velocity is exactly \(\lvert\langle a,\gamma_F'\rangle\rvert\). | Accepted nonvanishing, \(F=r\gamma_F\), differentiation, and section orthogonality. | Proposition~\ref{prop:step-008-homogeneous-rate}. |
| Lemma~\ref{lem:step-008-literal-constant} | \(\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}\). | The setting definition of \(A\) and \(R>0\). | Proposition~\ref{prop:step-008-homogeneous-rate}. |
| Lemma~\ref{lem:step-008-stationary-projective} | If \(\Gamma_{\mathrm{proj}}=0\), every interval root event is one fixed proper-hyperplane event of probability zero. | Accepted nonvanishing, the zero-derivative criterion, and the primitive full-density law. | Proposition~\ref{prop:step-008-homogeneous-rate} and the boundary audit. |
| Proposition~\ref{prop:step-008-homogeneous-rate} | Every admissible law and positive-length interval satisfy the exact projective and certificate probability chain. | The three accepted dependencies and the preceding local lemmas. | Proposition~\ref{prop:step-008-pf-capacity} and target-step assembly. |
| Proposition~\ref{prop:step-008-pf-capacity} | \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\leq A\sqrt{N/2}\widehat\Lambda_{B,T}\). | Pairwise rate, division by positive interval lengths, then the two defining suprema. | Target-step assembly and downstream homogeneous consumers. |

No external paper conclusion is invoked. The restated source formula is only the authorized convention
cross-check and does not replace any accepted dependency or any derivation in this step.

## Local Derivation

### unit_001: lemma

**Lemma (Exact radial cancellation on homogeneous root sections).**
\(\label{lem:step-008-radial-cancellation}\)

Under Assumption~\ref{assump:anchored-derivative-closure} and the accepted nonvanishing and differentiability
conclusions of `step_001`, suppose \(F_0\equiv0\). For every \(\theta\in\Theta\), write

\[
r(\theta):=\lVert F(\theta)\rVert_2,
\qquad
\gamma_F(\theta):=\frac{F(\theta)}{r(\theta)}.
\]

Then \(r(\theta)>0\),

\[
H_\theta=F(\theta)^\perp=\gamma_F(\theta)^\perp,
\]

and, for every \(a\in H_\theta\),

\[
\frac{\lvert\langle a,F'(\theta)\rangle\rvert}{\lVert F(\theta)\rVert_2}
=\lvert\langle a,\gamma_F'(\theta)\rangle\rvert.
\]

**Proof / justification.** The accepted anchor conclusion gives \(r(\theta)\geq1\). Since
\(F=r\gamma_F\) and \(r>0\),

\[
\langle a,F(\theta)\rangle=0
\quad\Longleftrightarrow\quad
r(\theta)\langle a,\gamma_F(\theta)\rangle=0
\quad\Longleftrightarrow\quad
\langle a,\gamma_F(\theta)\rangle=0.
\]

This proves the equality of the two orthogonal hyperplanes. Differentiating the exact factorization in the
original \(\theta\)-coordinate gives

\[
F'(\theta)=r'(\theta)\gamma_F(\theta)+r(\theta)\gamma_F'(\theta).
\]

If \(a\in H_\theta=\gamma_F(\theta)^\perp\), then the entire radial term cancels:

\[
\begin{aligned}
\frac{\langle a,F'(\theta)\rangle}{r(\theta)}
&=\frac{r'(\theta)}{r(\theta)}
  \langle a,\gamma_F(\theta)\rangle
  +\langle a,\gamma_F'(\theta)\rangle\\
&=\langle a,\gamma_F'(\theta)\rangle.
\end{aligned}
\]

Taking absolute values proves the claim. No estimate of \(r\), \(r'\), or the amplitude of \(F\) is used after
the positive denominator has been certified.

For \(N=1\), the unit vector \(\gamma_F(\theta)\) has orthogonal complement \(\{0\}\), so \(a=0\) and both sides
are zero. There is also no hidden nonemptiness premise: any empty section in the accepted integration convention
would contribute the zero integral, while the actual homogeneous central section is never empty because
\(0\in\gamma_F(\theta)^\perp\cap[-R,R]^N\). \(\square\)

### unit_002: lemma

**Lemma (Literal homogeneous constant identity).**
\(\label{lem:step-008-literal-constant}\)

For the setting-defined \(A=(2R)^N\kappa\), with \(R>0\),

\[
\kappa R\sqrt N\,\sqrt2(2R)^{N-1}
=A\sqrt{\frac N2}.
\]

**Proof / justification.** Because \(R>0\), \(R/(2R)=1/2\). Therefore

\[
\begin{aligned}
\kappa R\sqrt N\,\sqrt2(2R)^{N-1}
&=\kappa(2R)^N\frac{R}{2R}\sqrt{2N}\\
&=\kappa(2R)^N\frac{\sqrt{2N}}2\\
&=A\sqrt{\frac N2}.
\end{aligned}
\]

Every equality is literal; no inequality or absorbed constant occurs. \(\square\)

### unit_003: lemma

**Lemma (Stationary projective curves give a static law-null event).**
\(\label{lem:step-008-stationary-projective}\)

Under Assumptions~\ref{assump:cube-density-laws} and
\ref{assump:anchored-derivative-closure} and the accepted nonvanishing and differentiability conclusions of
`step_001`, suppose \(F_0\equiv0\) and \(\Gamma_{\mathrm{proj}}(F)=0\). Then there is a fixed unit vector
\(\gamma_0\in\mathbb R^N\) such that, for every admissible law \(\mu\) and every positive-length interval
\(I\subseteq\Theta\),

\[
\{a:\exists\theta\in I,\ \langle a,F(\theta)\rangle=0\}
=\{a:\langle a,\gamma_0\rangle=0\},
\]

and this proper hyperplane has \(\mu\)-probability zero. This includes \(N=1\), where the hyperplane is the
singleton \(\{0\}\).

**Proof / justification.** By the exact setting definition,

\[
0=\Gamma_{\mathrm{proj}}(F)
=\sup_{\theta\in\Theta}\lVert\gamma_F'(\theta)\rVert_2.
\]

The norm is nonnegative, so \(\gamma_F'(\theta)=0\) at every \(\theta\in\Theta\). The set \(\Theta\) is an
interval, hence the zero-derivative criterion applied to each coordinate gives a fixed
\(\gamma_0\) with \(\gamma_F(\theta)=\gamma_0\) throughout \(\Theta\). Normalization gives
\(\lVert\gamma_0\rVert_2=1\), so \(\gamma_0\neq0\). Moreover,

\[
F(\theta)=r(\theta)\gamma_0,
\qquad r(\theta)=\lVert F(\theta)\rVert_2\geq1.
\]

Every positive-length \(I\) is nonempty. Thus, for a fixed \(a\),

\[
\exists\theta\in I:\langle a,F(\theta)\rangle=0
\quad\Longleftrightarrow\quad
\langle a,\gamma_0\rangle=0,
\]

which proves the event equality. Since \(\gamma_0\neq0\), the right-hand set is a proper Euclidean hyperplane.
Choose an orthogonal map sending \(\gamma_0/\lVert\gamma_0\rVert_2\) to the first coordinate vector. Orthogonal
maps preserve Lebesgue measure, and product measure gives
\(\lambda_N(\{x:x_1=0\})=0\). Hence the hyperplane has \(\lambda_N\)-measure zero. For the full joint density
\(f_\mu\) from Assumption~\ref{assump:cube-density-laws},

\[
\mu(\gamma_0^\perp)
=\int_{\mathbb R^N}\mathbf 1_{\gamma_0^\perp}(a)f_\mu(a)\,da
=0.
\]

When \(N=1\), \(\gamma_0^\perp=\{0\}\), and the same density argument applies. Notice that the central section of
the coefficient cube is not being declared empty; it contains the origin and can have positive
\(\mathcal H^{N-1}\)-measure. Its probability is zero because the coefficient law is \(N\)-dimensionally
absolutely continuous. \(\square\)

### unit_004: proposition

**Proposition (Sharp homogeneous interval rate).**
\(\label{prop:step-008-homogeneous-rate}\)

Under Assumptions~\ref{assump:cube-density-laws} and
\ref{assump:anchored-derivative-closure}, the accepted conclusions of `step_001`, `step_004`, and `step_005`,
and Lemmas~\ref{lem:step-008-radial-cancellation}--\ref{lem:step-008-stationary-projective}, suppose
\(F_0\equiv0\). Then, for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
\(I\subseteq\Theta\) with \(|I|>0\),

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
&\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|\\
&\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}|I|.
\end{aligned}
\]

The conclusion uses ordinary probability for the original possibly correlated law and holds for arbitrarily
short positive-length intervals.

**Proof / justification.** Fix an arbitrary admissible \(\mu\) and an arbitrary interval \(I\) with
\(|I|>0\). In the homogeneous specialization,

\[
H_\theta
=\{a:\langle a,F(\theta)\rangle=0\}
=\gamma_F(\theta)^\perp
\]

by Lemma~\ref{lem:step-008-radial-cancellation}. The accepted coordinate-free swept-area proposition gives

\[
\begin{aligned}
&\Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]\\
&\qquad\leq
\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta\\
&\qquad=
\kappa\int_I\int_{\gamma_F(\theta)^\perp\cap[-R,R]^N}
\lvert\langle a,\gamma_F'(\theta)\rangle\rvert
\,d\mathcal H^{N-1}(a)\,d\theta.
\end{aligned}
\]

The equality is the exact radial cancellation, not an upper bound on radial scale or motion. For every
\(a\in[-R,R]^N\),

\[
\lVert a\rVert_2^2=\sum_{i=1}^N a_i^2\leq NR^2,
\qquad
\lvert\langle a,\gamma_F'(\theta)\rangle\rvert
\leq R\sqrt N\,\lVert\gamma_F'(\theta)\rVert_2.
\]

The accepted section certificate, instantiated with the nonzero unit normal \(\gamma_F(\theta)\), gives

\[
\mathcal H^{N-1}(\gamma_F(\theta)^\perp\cap[-R,R]^N)
\leq\sqrt2(2R)^{N-1}.
\]

Consequently, by ordinary nonnegative integration,

\[
\begin{aligned}
&\Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]\\
&\quad\leq
\kappa R\sqrt N\,\sqrt2(2R)^{N-1}
\int_I\lVert\gamma_F'(\theta)\rVert_2\,d\theta\\
&\quad\leq
\kappa R\sqrt N\,\sqrt2(2R)^{N-1}
\Gamma_{\mathrm{proj}}(F)|I|\\
&\quad=
A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|.
\end{aligned}
\]

The second inequality uses exactly
\(\Gamma_{\mathrm{proj}}(F)=\sup_{\theta\in\Theta}\lVert\gamma_F'(\theta)\rVert_2\), not an essential supremum or
an enlarged envelope. The final equality is Lemma~\ref{lem:step-008-literal-constant}. The accepted projective
certificate from `step_001` now gives

\[
A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
\leq
A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}|I|,
\]

which proves the displayed probability chain.

All boundary regimes are literal. If a section were empty, its nonnegative inner integral would be zero; the
actual central section contains zero. For \(N=1\), \(\mathcal H^0\) is counting measure, the section is
\(\{0\}\), and its velocity integrand is zero, so the probability bound is zero. If
\(\Gamma_{\mathrm{proj}}(F)=0\), the integral chain also gives zero, while
Lemma~\ref{lem:step-008-stationary-projective} verifies independently that the event is the fixed proper
hyperplane \(\gamma_0^\perp\) and is law-null rather than section-empty. The same audit applies when the accepted
certificate forces \(\widehat\Lambda_{B,T}=0\). Finally, the estimate
\(\int_I\lVert\gamma_F'\rVert_2\leq\Gamma_{\mathrm{proj}}(F)|I|\) is valid for every \(|I|>0\), with no minimum
length, endpoint loss, limit, or auxiliary tolerance. \(\square\)

### unit_005: proposition

**Proposition (Defining-supremum closure for the homogeneous Pfaffian rate).**
\(\label{prop:step-008-pf-capacity}\)

Under the assumptions and conclusions of Proposition~\ref{prop:step-008-homogeneous-rate}, if
\(F_0\equiv0\), then

\[
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
\]

**Proof / justification.** Fix \(\mu\in\mathcal D\). Proposition~\ref{prop:step-008-homogeneous-rate} holds for
every interval \(I\subseteq\Theta\) with \(|I|>0\). Division is therefore only by a strictly positive number and
gives

\[
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:
\langle\alpha,F(\theta)\rangle=0]}{|I|}
\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
\]

First take exactly the defining supremum over positive-length intervals for this fixed law:

\[
\sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\|I|>0}}
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:
\langle\alpha,F(\theta)\rangle=0]}{|I|}
\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
\]

The right-hand side is independent of \(\mu\). Taking next exactly the defining supremum over
\(\mu\in\mathcal D\) yields

\[
\sup_{\mu\in\mathcal D}
\sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\|I|>0}}
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:
\langle\alpha,F(\theta)\rangle=0]}{|I|}
\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
\]

The left-hand side is precisely \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\). No zero-length interval is divided
out, and arbitrarily short positive intervals remain in the supremum. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-008-radial-cancellation} specializes the accepted coordinate-free sweep to the actual
homogeneous section and proves the requested exact identity

\[
\frac{\lvert\langle a,F'(\theta)\rangle\rvert}{\lVert F(\theta)\rVert_2}
=\lvert\langle a,\gamma_F'(\theta)\rangle\rvert.
\]

It does so by annihilating \(r'\gamma_F\) with section orthogonality, so no deterministic amplitude or radial
motion is bounded. Proposition~\ref{prop:step-008-homogeneous-rate} then combines the accepted first sweep,
\(\lVert a\rVert_2\leq R\sqrt N\), the accepted central-section cap, and ordinary nonnegative integration to
obtain, uniformly over the original arbitrary correlated laws and positive-length intervals,

\[
\Pr[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}|I|.
\]

Lemma~\ref{lem:step-008-literal-constant} supplies the exact algebra
\(\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}\), and
Lemma~\ref{lem:step-008-stationary-projective} supplies the required static proper-hyperplane audit when the
projective speed is zero. Proposition~\ref{prop:step-008-pf-capacity} divides only by positive interval length,
takes the defining interval supremum, and then takes the defining law supremum, proving

\[
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
\]

These named results prove every clause of the exact accepted `step_008` row. They preserve ordinary probability,
the original full joint law, exact Euclidean and Hausdorff conventions, all \(N,R,\kappa,A\) factors, the
ordinary projective supremum, \(N=1\), empty-section conventions, stationary curves, and arbitrarily short
positive intervals. No external root theorem, second probability conversion, affine offset, amplitude bound,
chart count, auxiliary tolerance, or final assembly claim is introduced.

## Explicit Rate Audit

- Exposed variables: \(N\geq1\), \(R>0\), \(\kappa\), \(A=(2R)^N\kappa\),
  \(\Gamma_{\mathrm{proj}}(F)\), \(\widehat\Lambda_{B,T}\), and \(|I|\), together with the arbitrary law
  \(\mu\) and interval \(I\). Once the supplied certificate is fixed, the additional dependence on
  \(q,M,\Delta\) is exactly degree zero.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(N,R,\kappa,A,\mu,I\), coefficient correlation, interval length,
  section orientation, radial scale or motion, \(q,M,\Delta\), or the supplied certificate.
- Fixed quantities: The deterministic presentation and
  \((\Theta,T,q,M,\Delta,N,R,\kappa,A,m,B)\) are fixed before \(\mu\) and \(I\) are selected.
- Probability mode: Ordinary probability for each fixed arbitrary full joint law, followed only at the end by
  the defining law supremum. There is no confidence parameter, conditioning event, independence reduction, or
  union bound.
- Horizon mode: Pairwise for every positive-length interval, including arbitrarily short intervals, followed by
  the defining interval supremum and then the law supremum. There is no asymptotic or minimum-length regime.
- Norm mode: Euclidean vector norm and inner product, ordinary induced projective speed, and Euclidean
  \((N-1)\)-dimensional Hausdorff measure; \(\mathcal H^0\) is counting measure when \(N=1\).
- Admissibility conditions and auxiliary tolerances: Exactly the two primitive stable assumptions allocated to
  this row, the static specialization \(F_0\equiv0\), the three accepted dependencies, and \(|I|>0\) only when
  division is performed. There is no auxiliary tolerance, pivot margin, amplitude envelope, or additional
  admissibility threshold.
- Term absorption or simplification inequalities: No term is absorbed. The complete pointwise and constant
  chain is
  \[
  \frac{\lvert\langle a,F'\rangle\rvert}{\lVert F\rVert_2}
  =\lvert\langle a,\gamma_F'\rangle\rvert
  \leq R\sqrt N\lVert\gamma_F'\rVert_2,
  \]
  \[
  \mathcal H^{N-1}(H_\theta\cap[-R,R]^N)
  \leq\sqrt2(2R)^{N-1},
  \qquad
  \kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2},
  \]
  followed by the exact certificate comparison
  \(\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}\).
- Probability conversion: The sole conversion used in the rate proof is already contained in the accepted
  coordinate-free swept-area dependency. The direct full-density nullity check in
  Lemma~\ref{lem:step-008-stationary-projective} is only a boundary verification of the zero-rate event and is
  not used to replace or repeat the accepted conversion.
- Contribution to any Rate Specialization Bridge: This is the complete R3 homogeneous bridge. The auxiliary
  choice is exactly \(F_0\equiv0\); the technical conditions are discharged by the three accepted dependencies;
  radial cancellation and the literal constant identity perform the only simplifications; the accepted sweep
  supplies the probability conversion; and Propositions~\ref{prop:step-008-homogeneous-rate} and
  \ref{prop:step-008-pf-capacity} give the final public rates.
- Baseline-reduction check: Specializing the accepted affine sweep to \(F_0\equiv0\) changes the normal-velocity
  integrand by an exact identity, not a conservative loss. Positive rescaling of \(F\) changes only \(r\) and
  cancels completely on the root section. The subsequent certificate substitution is literal, so the later R5
  scale specialization may insert its accepted certificate value without any amplitude, additive, or hidden
  factor; this step neither computes nor weakens that later specialization.

## Blockers

None.

## Notation And Assumption Notes

- `public-facing`: No new helper symbol is introduced. The setting-defined
  \(\gamma_F\), \(\Gamma_{\mathrm{proj}}(F)\), \(\widehat\Lambda_{B,T}\), \(A\), and
  \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\) retain their original meanings. The only exported interfaces are the
  probability chain in Proposition~\ref{prop:step-008-homogeneous-rate} and the capacity clause in
  Proposition~\ref{prop:step-008-pf-capacity}.
- `proof-local`: \(r(\theta)=\lVert F(\theta)\rVert_2\) exposes the radial factor only in
  Lemma~\ref{lem:step-008-radial-cancellation}. Its positivity and lower bound are accepted outputs of
  `step_001`; neither \(r\) nor \(r'\) is bounded or exported.
- `proof-local`: \(\gamma_0\) is the fixed unit vector proved to exist only in the stationary branch of
  Lemma~\ref{lem:step-008-stationary-projective}. It is not a theorem assumption or downstream parameter.
- `appendix-local`: Lemma~\ref{lem:step-008-literal-constant} and
  Lemma~\ref{lem:step-008-stationary-projective} expose the algebraic and degenerate-case checks needed to audit
  the two public propositions; they export no helper dictionary.
- Constant provenance: \(R\sqrt N\) is proved directly from cube support, \(\sqrt2(2R)^{N-1}\) is inherited from
  the accepted section certificate, \(A=(2R)^N\kappa\) is setting-defined, and their exact multiplication is
  proved by Lemma~\ref{lem:step-008-literal-constant}. No unspecified constant, radius, margin, or threshold
  appears.
- Assumption provenance: The coefficient law and full density cap are primitive under
  `assump:cube-density-laws`; the anchored tuple is primitive under `assump:anchored-derivative-closure`.
  Nonvanishing, differentiability, projective boundedness, the swept-area inequality, and the cube-section cap
  are accepted derived outputs. Radial cancellation, stationary-event identification, the probability chain,
  and supremum closure are proved in this step. There is no generated invariant or local conditional hypothesis.
- Boundary provenance: The actual homogeneous section is central and contains zero; an empty-section integral
  would nevertheless be zero under the accepted conventions. For \(N=1\), the section is \(\{0\}\),
  \(\mathcal H^0\) counts it once, and the velocity integrand is zero. If
  \(\Gamma_{\mathrm{proj}}(F)=0\), the curve is projectively constant and the event is a static proper hyperplane
  of law mass zero. Positive-length intervals can be arbitrarily short because no length threshold is used.
- Probability and correlation provenance: The accepted sweep retains the original \(N\)-dimensional joint law
  and its arbitrary correlation. This step neither marginalizes nor conditions it and performs no union bound.
- Diagnostic boundary: `global_proof.md` was not read or used. No statement outside the binding setting,
  accepted sketch row, accepted dependencies, and current local derivations is used as proof evidence.
