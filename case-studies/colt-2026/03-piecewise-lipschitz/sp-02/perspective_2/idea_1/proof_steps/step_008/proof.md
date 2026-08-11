# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_008`
- Unit attempt: 1

## Target Step Claim

- Intended claim: In the specialization \(F_0=0\), prove the integrand is
  \(\lvert\langle a,\gamma_F'\rangle\rvert\), derive the exact
  \(A\sqrt{N/2}\Gamma_{\mathrm{proj}}(F)\) bound, substitute
  \(\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}\), and take the
  \(C^{\mathrm{Pf}}_{\mathcal D}\) supremum.
- Depends on: `step_001`, `step_004`, `step_005`.
- Assumptions used: Primitive: `assump:cube-density-laws`,
  `assump:anchored-derivative-closure`; derived: all dependencies.
- Technical challenge: Cancel radial motion exactly, handle stationary projective curves and \(N=1\), and
  expose the literal \(A\sqrt{N/2}\) algebra.
- Intended proof tool or cited result: Direct \(F=r\gamma_F\) differentiation and orthogonality; Ball section
  bound; Edelman--Kostlan Theorem 5.1 as integrand/convention cross-check.
- Output target: Sharper homogeneous theorem and \(C^{\mathrm{Pf}}\) clause.
- Rate objective: R3 and R5: exact projective/certificate rates and \(\delta\)-scale retention.
- Progress type: `full`.
- Row-local review status: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

The deterministic setting instance is fixed before any law or interval is selected.

### Primitive conditions

- Directly allocated primitive `assump:cube-density-laws`
  (Assumption~\ref{assump:cube-density-laws}): \(\mu\) is an arbitrary Borel probability law with one full
  \(N\)-dimensional Lebesgue density \(f_\mu\), supported on \([-R,R]^N\), satisfying
  \(\lVert f_\mu\rVert_\infty\leq\kappa\). No independence or marginal-density premise is available.
- Directly allocated primitive `assump:anchored-derivative-closure`
  (Assumption~\ref{assump:anchored-derivative-closure}): the fixed anchor is \(F_{j_*}\equiv1\), and the
  supplied deterministic matrix satisfies \(\widetilde F'=B\widetilde F\). No projective-speed, amplitude,
  radial-derivative, transversality, or swept-area bound is primitive.
- Inherited dependency condition `assump:parameter-regime`
  (Assumption~\ref{assump:parameter-regime}): in particular \(N\geq1\), \(R>0\),
  \(0<\kappa<\infty\), \(\Theta\) is a nondegenerate compact interval, and
  \(\mathcal D_{N,R,\kappa}\) is nonempty. This condition enters only through the setting definitions and the
  accepted dependency statements.
- Inherited dependency condition `assump:balcan-common-chain`
  (Assumption~\ref{assump:balcan-common-chain}): the common-chain presentation supplies the differentiable
  setting used by the accepted anchor and projective conclusions. This proof introduces no new Pfaffian
  presentation condition and no new dependence on \(q,M,\Delta\).

### Derived invariants supplied by accepted dependencies

- Current sketch-attempt-2 `step_001`, unit-attempt-2:
  proof SHA-256
  `6986e91d1b2a06c451ae6bba842e30747ac507bf3e0eeee09371c1af0b6d4ff8`;
  accepted review SHA-256
  `4ec6dfad924606b81aa28203e98ac3989ae15cf573297004efbd7036e4455f55`.
  Its accepted review records sketch attempt 2, Step ID `step_001`, unit attempt 2, status `ACCEPTED`,
  and that exact reviewed-proof digest. Only
  Lemma~\ref{lem:step-001-anchor}, Lemma~\ref{lem:step-001-height}, and
  Proposition~\ref{prop:step-001-projective} are available here: the literal anchor/nonvanishing and
  normalization legality, the static certificate, the normalized-derivative identity, and
  \(\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}\).
- Current sketch-attempt-2 `step_004`, unit-attempt-1:
  proof SHA-256
  `91736da20ac3e8c97693b158e1a528f5ac2ed3bab6ef61b14185ab2beae76ef4`;
  accepted review SHA-256
  `45285c72a3ea65948cdd60b0148c44526384f53c9e35bae2a86b9a09d2964389`.
  Its accepted review records sketch attempt 2, Step ID `step_004`, unit attempt 1, status `ACCEPTED`,
  and that exact reviewed-proof digest. The only conclusion consumed here is
  Proposition~\ref{prop:step-004-s2-affine-swept-area}, the coordinate-free first affine swept-area
  inequality.
- Current sketch-attempt-2 `step_005`, unit-attempt-1:
  proof SHA-256
  `a3c503cdc2b19acb74d9598fe8d674c185715ef20ea11ea28322eee62827ab63`;
  accepted review SHA-256
  `3c12da50c102fe5562cec9e3681b80250defa6d4f88a32f05c3b462349f94ad0`.
  Its accepted review records sketch attempt 2, Step ID `step_005`, unit attempt 1, status `ACCEPTED`,
  and that exact reviewed-proof digest. The only conclusion consumed here is
  Proposition~\ref{prop:step-005-translated-section-certificate}, including its central-section cap and
  \(N=1\) counting-measure convention.

The assumption bases inherited inside those accepted propositions remain discharged exactly as their accepted
reviews record them. No transitive proof artifact is opened or treated as a dependency of this step.

### Local conditional hypotheses

- \(F_0\equiv0\) is the exact static specialization in the accepted row. It is not a new primitive assumption,
  generated invariant, event, or transformed model.
- \(\Gamma_{\mathrm{proj}}(F)=0\) is considered only as a proved case split in
  Proposition~\ref{prop:step-008-s2-stationary-projective}; it is not assumed for the theorem-facing
  conclusion.
- There are no other local conditional hypotheses.

## Local Lemma Map

Atomic step = no. The step has exactly the following five non-atomic local units.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, accepted Lemma~\ref{lem:step-001-anchor}, and \(F_0\equiv0\), the actual section is \(H_\theta=F(\theta)^\perp=\gamma_F(\theta)^\perp\), \(r(\theta)=\lVert F(\theta)\rVert_2\geq1\), and \(\lvert\langle a,F'(\theta)\rangle\rvert/\lVert F(\theta)\rVert_2=\lvert\langle a,\gamma_F'(\theta)\rangle\rvert\) for every \(a\in H_\theta\). | Gives exact same-section radial cancellation with legal normalization. |
| `unit_002` | lemma | Under Assumption~\ref{assump:parameter-regime} and the setting definition \(A=(2R)^N\kappa\), \(\kappa R\sqrt N\sqrt{2}(2R)^{N-1}=A\sqrt{N/2}\). | Supplies the literal coefficient without absorption or a hidden constant. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:cube-density-laws}, and \ref{assump:anchored-derivative-closure}, accepted Lemma~\ref{lem:step-001-anchor}, and \(F_0\equiv0\), if \(\Gamma_{\mathrm{proj}}(F)=0\), then \(\gamma_F\) is constant on connected \(\Theta\), every interval root event is one fixed proper nonempty central hyperplane, and every admissible full-density law assigns it probability zero, including \(N=1\). | Closes the stationary projective and zero-rate boundary. |
| `unit_004` | proposition | Under the allocated primitives, inherited dependency conditions, the three accepted dependency conclusions, Lemmas~\ref{lem:step-008-s2-radial-cancellation} and \ref{lem:step-008-s2-literal-algebra}, Proposition~\ref{prop:step-008-s2-stationary-projective}, and \(F_0\equiv0\), every admissible law and positive-length interval obey the exact pairwise chain \( \Pr[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]\leq A\sqrt{N/2}\Gamma_{\mathrm{proj}}(F)\lvert I\rvert\leq A\sqrt{N/2}\widehat\Lambda_{B,T}\lvert I\rvert\). | Proves the sharper homogeneous probability theorem. |
| `unit_005` | proposition | Under the same assumptions and Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate}, interval division followed by the interval supremum for each fixed law and then the outer law supremum gives \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\leq A\sqrt{N/2}\widehat\Lambda_{B,T}\). | Closes the setting-defined capacity with the required supremum order. |

## Cited Result Applications

### Accepted dependency: anchor nonvanishing

- Source and identity: current accepted
  Lemma~\ref{lem:step-001-anchor} from `step_001`, with the proof/review identity recorded above.
- Restated statement in current notation: under
  Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and
  \ref{assump:anchored-derivative-closure},

  \[
  F_{j_*}(\theta)=1,\qquad
  \lVert F(\theta)\rVert_2\geq1,\qquad
  F(\theta)\neq0
  \]

  for every \(\theta\in\Theta\), and \(\gamma_F=F/\lVert F\rVert_2\) is well-defined and differentiable along
  \(\Theta\).
- Instantiated objects: the actual \(F\), anchor coordinate \(j_*\), interval \(\Theta\), and Euclidean norm
  from `setting.md`.
- Assumption discharge: the named setting assumptions are present unchanged. No lower norm beyond the literal
  anchor is added.
- Conclusion used: normalization legality, \(r\geq1\), and differentiability in
  Lemma~\ref{lem:step-008-s2-radial-cancellation} and
  Proposition~\ref{prop:step-008-s2-stationary-projective}.

### Accepted dependency: static and projective certificates

- Source and identity: current accepted Lemma~\ref{lem:step-001-height} and
  Proposition~\ref{prop:step-001-projective} from `step_001`, with the proof/review identity recorded above.
- Restated statements in current notation: the static certificate is

  \[
  \lVert B(\theta)\rVert_{\mathrm{op}}
  \leq\lVert B(\theta)\rVert_{\mathrm F}
  \leq\widehat\Lambda_{B,T}
  \quad(\theta\in\Theta).
  \]

  Under the exact specialization \(F_0\equiv0\), the normalized derivative and projective certificate are

  \[
  \gamma_F'(\theta)
  =\bigl(I_N-\gamma_F(\theta)\gamma_F(\theta)^{\mathsf T}\bigr)
  B_F(\theta)\gamma_F(\theta),
  \qquad
  \Gamma_{\mathrm{proj}}(F)
  \leq\widehat\Lambda_{B,T}.
  \]
- Instantiated objects: the actual \(B,F,\gamma_F,\Theta\), the setting-defined lower block \(B_F\), and
  Euclidean operator, Frobenius, and vector norms.
- Assumption discharge: the proposition's accepted basis is
  Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and
  \ref{assump:anchored-derivative-closure}, together with its named accepted local conclusions. The local
  specialization \(F_0\equiv0\) is exactly the target specialization here.
- Conclusion used: only the displayed normalized/projective interface and its literal certificate domination
  are used. The last substitution in
  Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate} cites this exact current named projective
  certificate.

### Accepted dependency: coordinate-free first affine swept-area inequality

- Source and identity: current accepted
  Proposition~\ref{prop:step-004-s2-affine-swept-area} from `step_004`, with the proof/review identity
  recorded above.
- Restated statement in current notation: for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
  \(I\subseteq\Theta\) with \(\lvert I\rvert>0\),

  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
  \leq
  \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
  \frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
  {\lVert F(\theta)\rVert_2}
  \,d\mathcal H^{N-1}(a)\,d\theta.
  \]

  The inequality retains the actual \(N\)-dimensional coefficient coordinates, the literal endpoint convention,
  the literal factor \(\kappa\), arbitrary correlation, and its \(N=1\) convention.
- Instantiated objects: the actual law, interval, affine function, coefficient cube, root section, and Euclidean
  Hausdorff measure from the current setting.
- Assumption discharge: Assumption~\ref{assump:anchored-derivative-closure} is present directly; the proposition's
  remaining accepted basis, including the single full-joint-density conversion, is already discharged by the
  accepted dependency review. No transitive dependency artifact is consumed here.
- Conclusion used: exactly this first inequality, specialized without loss to \(F_0\equiv0\). No chart formula,
  second probability argument, or later affine rate is used.

### Accepted dependency: uniform translated cube-section certificate

- Source and identity: current accepted
  Proposition~\ref{prop:step-005-translated-section-certificate} from `step_005`, with the proof/review
  identity recorded above.
- Restated statement in current notation: under Assumption~\ref{assump:parameter-regime}, for every Euclidean
  unit normal \(u\) and \(t\in\mathbb R\),

  \[
  \mathcal H^{N-1}\bigl([-R,R]^N\cap(u^\perp+tu)\bigr)
  \leq
  \mathcal H^{N-1}\bigl([-R,R]^N\cap u^\perp\bigr)
  \leq\sqrt{2}(2R)^{N-1}.
  \]

  For \(N=1\), \(\mathcal H^0\) is counting measure: a point section has mass one and an empty section mass zero,
  so the same cap holds. For a setting root section with nonzero \(F(\theta)\), the proposition identifies the
  actual affine section with the corresponding same-normal translate.
- Instantiated objects: \(u=\gamma_F(\theta)\), \(t=0\), and the actual central section
  \(H_\theta=\gamma_F(\theta)^\perp\).
- Assumption discharge: \(R>0\) and \(N\geq1\) are in
  Assumption~\ref{assump:parameter-regime}; accepted Lemma~\ref{lem:step-001-anchor} gives
  \(\lVert\gamma_F(\theta)\rVert_2=1\).
- Conclusion used: only the central-section cap, including its \(N=1\) convention. The accepted proposition is
  the proof authority; no cube-slicing theorem is reapplied in this step.

### Elementary results used locally

- Product rule: if scalar \(r\) and vector curve \(\gamma\) are differentiable, then
  \((r\gamma)'=r'\gamma+r\gamma'\). The accepted anchor result gives the required differentiability.
- Euclidean Cauchy--Schwarz: for \(x,y\in\mathbb R^N\),
  \(\lvert\langle x,y\rangle\rvert\leq\lVert x\rVert_2\lVert y\rVert_2\). It is applied only to
  \(x=a\) and \(y=\gamma_F'(\theta)\).
- Zero-derivative criterion on an interval: a real differentiable function with zero derivative throughout the
  interior of a connected interval is constant; applying this coordinatewise to a vector curve gives the same
  conclusion. Differentiability on the ambient open \(U\) covers the endpoints of \(\Theta\) by restriction.
- Proper-hyperplane nullity under a density: if \(v\neq0\), then \(v^\perp\) is an
  \(N\)-dimensional Lebesgue-null set; hence a law with density \(f\) satisfies
  \(\mu(v^\perp)=\int_{v^\perp}f\,d\operatorname{Leb}^N=0\). This uses the full joint density and no
  independence. For \(N=1\), \(v^\perp=\{0\}\), which is Lebesgue-null.
- Monotonicity of nonnegative integration: pointwise domination of nonnegative measurable integrands may be
  integrated without cancellation. All uses below are finite after the accepted cube-section cap and accepted
  projective certificate are inserted.

### Authorized source-convention cross-check

The accepted row names Edelman--Kostlan, *How Many Zeros of a Random Polynomial Are Real?*, Theorem 5.1,
DOI:10.1090/S0273-0979-1995-00571-9. It is recorded here only as the source-convention and
normalized-integrand cross-check authorized by the accepted sketch, not as proof authority. The object map is:
the source's one-dimensional parameter is the current \(\theta\); its deterministic evaluation vector is the
current \(F(\theta)\); its normalized evaluation curve is the current
\(\gamma_F(\theta)=F(\theta)/\lVert F(\theta)\rVert_2\); its coefficient vector is the current \(a\); its
arbitrary coefficient density corresponds to the current full joint density \(f_\mu\); and the homogeneous root
condition is \(\langle a,F(\theta)\rangle=0\). The applicable convention checks are discharged because
\(\Theta\) is one-dimensional, accepted Lemma~\ref{lem:step-001-anchor} makes \(F\) differentiable and
nonzero, and Assumption~\ref{assump:cube-density-laws} supplies an arbitrary full joint density. The
cross-checked normalized section integrand is
\(\lvert\langle a,\gamma_F'(\theta)\rangle\rvert\).

No proof line below invokes that theorem. It does not supply the chart sweep, the exact radial cancellation, the
Ball section factor, the density conversion, the projective certificate, or the current homogeneous probability
and capacity theorem.

### Local result applications

- Lemma~\ref{lem:step-008-s2-radial-cancellation} will prove the actual-section identity and exact integrand
  equality from the accepted anchor conclusion and the target specialization. It is used by
  Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate}.
- Lemma~\ref{lem:step-008-s2-literal-algebra} will prove the exact \(A\)-coefficient identity from \(R>0\) and
  \(A=(2R)^N\kappa\). It is used by
  Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate}.
- Proposition~\ref{prop:step-008-s2-stationary-projective} will prove the fixed-hyperplane, law-null boundary
  when \(\Gamma_{\mathrm{proj}}(F)=0\). It is used in the boundary branch of
  Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate}.
- Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate} will combine the three accepted dependencies and
  the first three local results to prove the pairwise probability chain. It is used by
  Proposition~\ref{prop:step-008-s2-pf-closure}.
- Proposition~\ref{prop:step-008-s2-pf-closure} will apply the setting's ordered defining suprema to the
  pairwise rate. It is used in the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Exact homogeneous radial cancellation on the actual section).**
\(\label{lem:step-008-s2-radial-cancellation}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and
\ref{assump:anchored-derivative-closure}, accepted
Lemma~\ref{lem:step-001-anchor}, and the exact specialization \(F_0\equiv0\), define

\[
r(\theta):=\lVert F(\theta)\rVert_2,
\qquad
\gamma_F(\theta):=\frac{F(\theta)}{r(\theta)}.
\]

Then, for every \(\theta\in\Theta\), \(r(\theta)\geq1\), both definitions and all differentiations are legal,
and the actual setting-defined coefficient section is

\[
H_\theta
=\{a\in\mathbb R^N:\langle a,F(\theta)\rangle=0\}
=F(\theta)^\perp
=\gamma_F(\theta)^\perp.
\]

For every \(a\in H_\theta\),

\[
\frac{\lvert\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
=\lvert\langle a,\gamma_F'(\theta)\rangle\rvert.
\]

This is an equality on the same actual coefficient section, with no bound on \(r\) beyond anchor legality and no
bound on \(r'\).

**Proof / justification.** Accepted Lemma~\ref{lem:step-001-anchor} gives

\[
F_{j_*}(\theta)=1,
\qquad
r(\theta)=\lVert F(\theta)\rVert_2\geq1
\]

for every \(\theta\in\Theta\), and gives differentiability of \(\gamma_F\). Thus normalization and division by
\(r(\theta)\) are legal, including at interval endpoints by restriction from \(U\).

Because \(F_0\equiv0\), the setting definition of the actual section gives

\[
\begin{aligned}
H_\theta
&=\{a:F_0(\theta)+\langle a,F(\theta)\rangle=0\}\\
&=\{a:\langle a,F(\theta)\rangle=0\}\\
&=\{a:r(\theta)\langle a,\gamma_F(\theta)\rangle=0\}\\
&=\gamma_F(\theta)^\perp.
\end{aligned}
\]

This also proves \(H_\theta=F(\theta)^\perp\). In particular, for the same \(a\) appearing in the actual
section integral,

\[
\langle a,\gamma_F(\theta)\rangle=0.
\]

Differentiate the object identity \(F=r\gamma_F\):

\[
F'=r'\gamma_F+r\gamma_F'.
\]

Taking the inner product with that same \(a\in H_\theta\), dividing by the positive
\(r=\lVert F\rVert_2\), and using actual-section orthogonality gives

\[
\frac{\langle a,F'\rangle}{\lVert F\rVert_2}
=\frac{r'}r\langle a,\gamma_F\rangle+\langle a,\gamma_F'\rangle
=\langle a,\gamma_F'\rangle.
\]

Taking absolute values proves the displayed equality. The term involving \(r'\) vanishes algebraically; it is
not bounded, integrated, absorbed, or replaced by an amplitude condition. \(\square\)

### unit_002: lemma

**Lemma (Literal homogeneous coefficient algebra).**
\(\label{lem:step-008-s2-literal-algebra}\)

Under Assumption~\ref{assump:parameter-regime} and the setting definition
\(A=(2R)^N\kappa\),

\[
\kappa R\sqrt N\,\sqrt{2}(2R)^{N-1}
=A\sqrt{\frac N2}.
\]

**Proof / justification.** Assumption~\ref{assump:parameter-regime} gives \(R>0\), \(N\geq1\), and
\(\kappa>0\). Hence every displayed power and square root is legal, and

\[
R(2R)^{N-1}=\frac{(2R)^N}{2}.
\]

Therefore

\[
\begin{aligned}
\kappa R\sqrt N\,\sqrt{2}(2R)^{N-1}
&=\kappa(2R)^N\frac{\sqrt N\,\sqrt{2}}{2}\\
&=\kappa(2R)^N\sqrt{\frac N2}\\
&=A\sqrt{\frac N2}.
\end{aligned}
\]

Every equality is literal; no term is dominated or hidden. \(\square\)

### unit_003: proposition

**Proposition (Stationary projective branch is one fixed law-null central hyperplane).**
\(\label{prop:step-008-s2-stationary-projective}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:cube-density-laws}, and
\ref{assump:anchored-derivative-closure}, accepted Lemma~\ref{lem:step-001-anchor}, and the exact
specialization \(F_0\equiv0\), suppose

\[
\Gamma_{\mathrm{proj}}(F)=0.
\]

Then there is a fixed unit vector \(\gamma_0\in\mathbb R^N\) such that
\(\gamma_F(\theta)=\gamma_0\) for every \(\theta\in\Theta\). For every nonempty interval
\(I\subseteq\Theta\),

\[
\left\{a\in\mathbb R^N:
\exists\theta\in I,\ \langle a,F(\theta)\rangle=0\right\}
=\gamma_0^\perp.
\]

Thus the union root event is one fixed proper nonempty central hyperplane, not an empty section, and every
\(\mu\in\mathcal D_{N,R,\kappa}\) satisfies

\[
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]=0.
\]

For \(N=1\), the same statement reads \(\gamma_0^\perp=\{0\}\), and the conclusion remains ordinary
probability zero under every admissible one-dimensional density.

**Proof / justification.** By definition,

\[
\Gamma_{\mathrm{proj}}(F)
=\sup_{\theta\in\Theta}\lVert\gamma_F'(\theta)\rVert_2.
\]

All terms under the supremum are nonnegative. Hence
\(\Gamma_{\mathrm{proj}}(F)=0\) implies
\(\gamma_F'(\theta)=0\) for every \(\theta\in\Theta\). The set \(\Theta\) is a connected interval, and
\(\gamma_F\) is differentiable by accepted Lemma~\ref{lem:step-001-anchor}. The coordinatewise
zero-derivative criterion therefore gives a fixed vector \(\gamma_0\) with
\(\gamma_F(\theta)=\gamma_0\) on all of \(\Theta\). Since every \(\gamma_F(\theta)\) is normalized,
\(\lVert\gamma_0\rVert_2=1\).

Accepted Lemma~\ref{lem:step-001-anchor} also gives
\(r(\theta)=\lVert F(\theta)\rVert_2\geq1\). Thus, for every \(\theta\),

\[
F(\theta)=r(\theta)\gamma_0,
\qquad
\langle a,F(\theta)\rangle=0
\ \Longleftrightarrow\
\langle a,\gamma_0\rangle=0.
\]

Every positive-length interval is nonempty, so taking the union over \(\theta\in I\) gives exactly
\(\gamma_0^\perp\). Because \(\gamma_0\neq0\), this is a proper hyperplane. Because \(0\in\gamma_0^\perp\),
it is central and nonempty. The conclusion depends only on the projective direction, so even an arbitrary
positive differentiable radial factor would leave this root set unchanged.

A proper hyperplane is \(N\)-dimensional Lebesgue-null. Assumption~\ref{assump:cube-density-laws} supplies one
full joint density \(f_\mu\), so

\[
\mu(\gamma_0^\perp)
=\int_{\gamma_0^\perp}f_\mu(a)\,d\operatorname{Leb}^N(a)
=0.
\]

This conclusion uses neither independence nor marginal densities. When \(N=1\), a unit
\(\gamma_0\) has either normal orientation and its orthogonal hyperplane is the singleton \(\{0\}\).
Its intersection with \([-R,R]\) is nonempty and has \(\mathcal H^0\)-mass one, but it has
one-dimensional Lebesgue measure zero, so every admissible density still assigns it probability zero.
\(\square\)

### unit_004: proposition

**Proposition (Sharp pairwise homogeneous interval rate).**
\(\label{prop:step-008-s2-pairwise-homogeneous-rate}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain},
\ref{assump:cube-density-laws}, and \ref{assump:anchored-derivative-closure}, the accepted current
Propositions~\ref{prop:step-001-projective},
\ref{prop:step-004-s2-affine-swept-area}, and
\ref{prop:step-005-translated-section-certificate}, accepted
Lemma~\ref{lem:step-001-anchor}, Lemmas~\ref{lem:step-008-s2-radial-cancellation} and
\ref{lem:step-008-s2-literal-algebra}, and
Proposition~\ref{prop:step-008-s2-stationary-projective}, if \(F_0\equiv0\), then for every
\(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\) with
\(\lvert I\rvert>0\),

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
&\leq
A\sqrt{\frac N2}\,
\Gamma_{\mathrm{proj}}(F)\lvert I\rvert\\
&\leq
A\sqrt{\frac N2}\,
\widehat\Lambda_{B,T}\lvert I\rvert.
\end{aligned}
\]

This is ordinary probability for the arbitrary, possibly correlated, full-joint-density law. The coefficients
and both inequalities are literal, with no clipping at one.

**Proof / justification.** Fix the complete deterministic instance, including \(F_0\equiv0\), before selecting
a law or interval. Now fix an arbitrary \(\mu\in\mathcal D_{N,R,\kappa}\), and only afterward fix an arbitrary
interval \(I\subseteq\Theta\) with \(\lvert I\rvert>0\), retaining its literal endpoint convention.

Because \(F_0\equiv0\), one has \(F_0'\equiv0\) and
\(\phi_\alpha(\theta)=\langle\alpha,F(\theta)\rangle\). Apply only the accepted coordinate-free first
swept-area inequality, Proposition~\ref{prop:step-004-s2-affine-swept-area}:

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
&\leq
\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta.
\end{aligned}
\]

Lemma~\ref{lem:step-008-s2-radial-cancellation} identifies the same actual section as
\(H_\theta=\gamma_F(\theta)^\perp\) and replaces the integrand by equality, not by an estimate:

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
&\leq
\kappa\int_I\int_{\gamma_F(\theta)^\perp\cap[-R,R]^N}
\lvert\langle a,\gamma_F'(\theta)\rangle\rvert
\,d\mathcal H^{N-1}(a)\,d\theta.
\end{aligned}
\]

For every \(a\in[-R,R]^N\),

\[
\lVert a\rVert_2^2
=\sum_{i=1}^N a_i^2
\leq NR^2,
\qquad
\lVert a\rVert_2\leq R\sqrt N.
\]

Euclidean Cauchy--Schwarz therefore gives, on the actual central section,

\[
\lvert\langle a,\gamma_F'(\theta)\rangle\rvert
\leq
R\sqrt N\,\lVert\gamma_F'(\theta)\rVert_2.
\]

The integrands are nonnegative. Hence accepted
Proposition~\ref{prop:step-005-translated-section-certificate}, applied with the actual Euclidean unit normal
\(u=\gamma_F(\theta)\) and \(t=0\), yields

\[
\begin{aligned}
&\int_{\gamma_F(\theta)^\perp\cap[-R,R]^N}
\lvert\langle a,\gamma_F'(\theta)\rangle\rvert
\,d\mathcal H^{N-1}(a)\\
&\qquad\leq
R\sqrt N\,\lVert\gamma_F'(\theta)\rVert_2\,
\mathcal H^{N-1}
\bigl(\gamma_F(\theta)^\perp\cap[-R,R]^N\bigr)\\
&\qquad\leq
R\sqrt N\,\sqrt{2}(2R)^{N-1}
\lVert\gamma_F'(\theta)\rVert_2.
\end{aligned}
\]

This calculation is literal also for \(N=1\): the actual section is the singleton \(\{0\}\),
\(\mathcal H^0\) counts it once, and the integrand at \(a=0\) is zero. Thus no positive point mass is inferred
from the counting measure.

Integrating the pointwise inequality and using the definition of projective speed gives

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
&\leq
\kappa R\sqrt N\,\sqrt{2}(2R)^{N-1}
\int_I\lVert\gamma_F'(\theta)\rVert_2\,d\theta\\
&\leq
\kappa R\sqrt N\,\sqrt{2}(2R)^{N-1}
\Gamma_{\mathrm{proj}}(F)\lvert I\rvert.
\end{aligned}
\]

No interval-length lower bound other than \(\lvert I\rvert>0\) is used. If
\(\Gamma_{\mathrm{proj}}(F)=0\), Proposition~\ref{prop:step-008-s2-stationary-projective} independently
identifies the event as one fixed proper central hyperplane and proves its probability is zero; the displayed
nonnegative-integral derivation also remains valid without dividing by
\(\Gamma_{\mathrm{proj}}(F)\).

Apply the literal identity in Lemma~\ref{lem:step-008-s2-literal-algebra}:

\[
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
\leq
A\sqrt{\frac N2}\,
\Gamma_{\mathrm{proj}}(F)\lvert I\rvert.
\]

Finally, apply the exact current named projective certificate,
Proposition~\ref{prop:step-001-projective},

\[
\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T},
\]

to obtain

\[
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
\leq
A\sqrt{\frac N2}\,
\widehat\Lambda_{B,T}\lvert I\rvert.
\]

The full-joint-density factor \(\kappa\) entered only once, inside the accepted first swept-area inequality.
There is no conditioning, marginalization, independence reduction, union bound, second probability conversion,
chart-count factor, or auxiliary tolerance. If either displayed right-hand side exceeds one, it remains a valid
upper bound and is not clipped. \(\square\)

### unit_005: proposition

**Proposition (Defining-supremum closure for the homogeneous capacity).**
\(\label{prop:step-008-s2-pf-closure}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain},
\ref{assump:cube-density-laws}, and \ref{assump:anchored-derivative-closure},
Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate}, and the exact specialization
\(F_0\equiv0\),

\[
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
\leq
A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
\]

The interval supremum is taken for each fixed law before the outer law supremum, exactly as in the setting
definition.

**Proof / justification.** Fix \(\mu\in\mathcal D\). For every interval \(I\subseteq\Theta\) with
\(\lvert I\rvert>0\), Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate} gives

\[
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
\leq
A\sqrt{\frac N2}\,
\widehat\Lambda_{B,T}\lvert I\rvert.
\]

Only now divide by the strictly positive \(\lvert I\rvert\):

\[
\frac{
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
}{\lvert I\rvert}
\leq
A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
\]

The right-hand side is deterministic and independent of \(I\). Therefore, still for this fixed law,

\[
\sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\ \lvert I\rvert>0}}
\frac{
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
}{\lvert I\rvert}
\leq
A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
\]

The same deterministic inequality holds for every \(\mu\in\mathcal D\). Taking the outer law supremum only
after the interval supremum gives

\[
\begin{aligned}
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
&=
\sup_{\mu\in\mathcal D}
\sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\ \lvert I\rvert>0}}
\frac{
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
}{\lvert I\rvert}\\
&\leq
A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
\end{aligned}
\]

No zero-length interval is divided by, and arbitrarily short positive-length intervals remain within the
supremum. \(\square\)

## Target-Step Assembly

Fix the deterministic homogeneous instance before the arbitrary law and interval.
Accepted Lemma~\ref{lem:step-001-anchor} makes
\(r=\lVert F\rVert_2\geq1\) and normalization legal.
Lemma~\ref{lem:step-008-s2-radial-cancellation} then proves on the actual setting section, without changing the
event or coefficient variable, that

\[
H_\theta=F(\theta)^\perp=\gamma_F(\theta)^\perp,
\qquad
\frac{\lvert\langle a,F'(\theta)\rangle\rvert}{\lVert F(\theta)\rVert_2}
=\lvert\langle a,\gamma_F'(\theta)\rangle\rvert.
\]

Proposition~\ref{prop:step-008-s2-stationary-projective} closes the
\(\Gamma_{\mathrm{proj}}(F)=0\) branch as one fixed proper law-null central hyperplane, including \(N=1\).
Starting from accepted Proposition~\ref{prop:step-004-s2-affine-swept-area}, applying the exact cancellation,
the cube radius \(\lVert a\rVert_2\leq R\sqrt N\), Cauchy--Schwarz, and accepted
Proposition~\ref{prop:step-005-translated-section-certificate}, and integrating nonnegatively gives the
coefficient
\(\kappa R\sqrt N\sqrt{2}(2R)^{N-1}\).
Lemma~\ref{lem:step-008-s2-literal-algebra} identifies it exactly as
\(A\sqrt{N/2}\).
Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate} therefore proves, for every arbitrary admissible
law and positive-length interval,

\[
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
\leq
A\sqrt{\frac N2}\Gamma_{\mathrm{proj}}(F)\lvert I\rvert
\leq
A\sqrt{\frac N2}\widehat\Lambda_{B,T}\lvert I\rvert,
\]

where the final substitution is exactly accepted
Proposition~\ref{prop:step-001-projective}.
Finally, Proposition~\ref{prop:step-008-s2-pf-closure} divides only by positive interval length, takes the
interval supremum for each fixed law, and then takes the outer law supremum, proving

\[
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
\leq
A\sqrt{\frac N2}\widehat\Lambda_{B,T}.
\]

These five named local results jointly prove every clause of the exact accepted `step_008` row. No global
diagnostic, stale proof, later step, or undeclared dependency is proof authority.

## Explicit Rate Audit

- Exposed variables: \(N,R,\kappa,A,\Gamma_{\mathrm{proj}}(F),
  \widehat\Lambda_{B,T},\lvert I\rvert\), with
  \(A=(2R)^N\kappa\) and the literal coefficient \(\sqrt{N/2}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\mu\), \(I\), \(q,M,\Delta\), a norm margin, a section orientation,
  correlation, a radial amplitude or derivative, a confidence level, or any unrecorded quantity.
- Fixed quantities: the deterministic instance
  \((\Theta,T,q,M,\Delta,N,R,\kappa,A,m,B,F)\) with \(F_0\equiv0\), including the full coefficient
  presentation and supplied certificate, is fixed before \(\mu\) and \(I\). Once the supplied certificate is
  fixed, additional dependence on \(q,M,\Delta\) is exactly degree zero.
- Probability mode: ordinary probability for each fixed arbitrary law with one possibly correlated full joint
  density. There is no confidence parameter, conditioning event, expectation, high-probability statement, or
  union-bound conversion.
- Horizon mode: pairwise for every positive-length interval \(I\subseteq\Theta\), followed by the exact
  interval-then-law defining suprema. There is no asymptotic, all-time, stopping-time, or limiting upgrade.
- Norm mode: Euclidean vector norm and inner product, Euclidean induced operator and Frobenius norms inside the
  accepted projective certificate, and Euclidean \((N-1)\)-dimensional Hausdorff measure, with
  \(\mathcal H^0\) counting measure for \(N=1\).
- Admissibility conditions and auxiliary tolerances: exactly the four stable setting assumptions as allocated,
  \(F_0\equiv0\), the three current accepted dependency pairs, an arbitrary
  \(\mu\in\mathcal D_{N,R,\kappa}\), and \(\lvert I\rvert>0\). Auxiliary tolerances: none.
- Term absorption or simplification inequalities: radial motion cancels by equality on the actual section;
  \(\lVert a\rVert_2\leq R\sqrt N\);
  \(\mathcal H^{N-1}(H_\theta\cap[-R,R]^N)\leq\sqrt{2}(2R)^{N-1}\);
  \(\int_I\lVert\gamma_F'\rVert_2\leq\Gamma_{\mathrm{proj}}(F)\lvert I\rvert\);
  \(\kappa R\sqrt N\sqrt{2}(2R)^{N-1}=A\sqrt{N/2}\); and
  \(\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}\). No term is dropped, clipped, or absorbed by prose.
- Probability conversion: the only density-to-probability conversion is already contained in accepted
  Proposition~\ref{prop:step-004-s2-affine-swept-area} and uses the one full joint-density cap \(\kappa\).
  This step performs no second conversion, marginalization, conditioning, or union bound.
- Contribution to any Rate Specialization Bridge: this is the complete R3 homogeneous Rate Specialization
  Bridge, with exact object specialization, technical-condition discharge, radial cancellation, section and
  cube bounds, coefficient algebra, certificate substitution, and capacity closure.
- Baseline-reduction check, if applicable: setting \(F_0\equiv0\) in the accepted affine sweep gives the same
  homogeneous event and actual central section, not a surrogate. The radial factor cancels with zero loss.
  The later R5 scale path is preserved because both \(\Gamma_{\mathrm{proj}}(F)\) and
  \(\widehat\Lambda_{B,T}\) remain explicit and unabsorbed; no later specialization calculation is made here.
  No monic or other later-branch claim is introduced.
- Confidence, asymptotic, tolerance, clipping, and conversion loss: none.

## Boundary And Degenerate-Case Audit

- \(N=1\): the actual central section is \(\{0\}\), not empty.
  Its \(\mathcal H^0\)-mass is one, the integrand at \(a=0\) is zero, and the full one-dimensional density
  assigns \(\{0\}\) probability zero. Either representation of its unit normal gives the same section.
- Empty central sections: impossible in the homogeneous branch because \(0\in\gamma_F(\theta)^\perp\) and
  \(0\in[-R,R]^N\). The accepted empty-section convention remains consistent but is not used to discard an
  event.
- The point \(a=0\): it lies in every homogeneous section and contributes exactly zero normal velocity.
- Radial rescaling: the proof differentiates \(F=r\gamma_F\) and cancels \(r'\) by orthogonality. No upper
  bound on \(r\), no bound on \(r'\), and no amplitude assumption is used; any positive differentiable radial
  rescaling leaves the identity and root section unchanged.
- Stationary projective motion: if \(\Gamma_{\mathrm{proj}}(F)=0\), the normalized curve is constant on
  connected \(\Theta\), the event is one fixed proper central hyperplane, and its probability is zero.
- Zero certificate: if \(\widehat\Lambda_{B,T}=0\), the accepted projective certificate gives
  \(\Gamma_{\mathrm{proj}}(F)=0\), so the stationary proposition gives probability and capacity zero, matching
  the displayed right-hand side.
- Interval endpoints: all feature derivatives come from the open domain \(U\), and the accepted swept-area
  proposition retains each interval's literal endpoint convention. The integral bound is unchanged by endpoint
  measure zero, while event coverage remains inherited from that accepted proposition.
- Arbitrarily short intervals: every argument is valid for every \(\lvert I\rvert>0\); only the final capacity
  step divides by length, and it never divides by zero.
- Bounds exceeding one: neither pairwise bound is clipped. A right-hand side larger than one remains a valid
  upper bound for ordinary probability.

## Baseline-Reduction Audit

The exact homogeneous specialization starts from the accepted affine swept-area proposition with
\(F_0=F_0'=0\). It leaves the coefficient vector, law, interval, event, cube, and Hausdorff section unchanged.
Lemma~\ref{lem:step-008-s2-radial-cancellation} then removes only the radial representation factor by an
identity on that same section. Consequently the R3 coefficient and modes have no conservative loss. The later
R5 path remains available through the two explicit quantities
\(\Gamma_{\mathrm{proj}}(F)\) and \(\widehat\Lambda_{B,T}\); this step performs no calculation or theorem claim
from that later specialization.

## Blockers

None

## Notation And Assumption Notes

- Public-facing setting objects: \(N,R,\kappa,A,\Theta,\mathcal D,F,\gamma_F,
  \Gamma_{\mathrm{proj}}(F),B,\widehat\Lambda_{B,T},H_\theta\), and
  \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\). They retain exactly their `setting.md` meanings.
- Public-facing output: Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate} and
  Proposition~\ref{prop:step-008-s2-pf-closure}, together with the named radial-cancellation
  Lemma~\ref{lem:step-008-s2-radial-cancellation} needed by downstream assembly.
- Appendix-local result: Lemma~\ref{lem:step-008-s2-literal-algebra} exposes the constant calculation, and
  Proposition~\ref{prop:step-008-s2-stationary-projective} exposes the stationary boundary.
- Proof-local helper \(r(\theta)=\lVert F(\theta)\rVert_2\): it is defined from the setting feature vector and
  proved to satisfy \(r\geq1\) by accepted Lemma~\ref{lem:step-001-anchor}. It is not an amplitude parameter and
  is not exported in the final rate.
- Proof-local helper \(\gamma_0\): it is produced, not assumed, in the stationary proposition by the
  zero-derivative criterion. Its unit norm and fixed-hyperplane conclusion are proved there.
- The event is never renamed or transformed: throughout it is the setting event
  \(\{\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0\}\).
- Constant provenance: \(N,R,\kappa\) and \(A=(2R)^N\kappa\) are setting quantities;
  \(\sqrt{2}(2R)^{N-1}\) is inherited only from accepted
  Proposition~\ref{prop:step-005-translated-section-certificate};
  \(R\sqrt N\) is proved from cube support inside
  Proposition~\ref{prop:step-008-s2-pairwise-homogeneous-rate};
  and \(A\sqrt{N/2}\) is proved exactly by
  Lemma~\ref{lem:step-008-s2-literal-algebra}.
- Assumption provenance: cube support and the full joint-density cap are primitive; nonvanishing,
  normalization legality, projective speed, the projective certificate, the first swept-area inequality, and the
  section cap are accepted dependency outputs; radial cancellation, constant algebra, stationary nullity, the
  pairwise rate, and capacity closure are local derived facts. No generated property is promoted to a primitive
  assumption.
- Quantifier order: the deterministic instance is fixed first; the law is arbitrary second; the positive-length
  interval is arbitrary third. Capacity closure takes the interval supremum for each fixed law and the outer law
  supremum last.
- Measure and mode conventions: probability is ordinary probability under an arbitrary correlated full joint
  density; all vector and operator norms are Euclidean; section measure is Euclidean Hausdorff measure; and the
  \(N=1\) section convention is \(\mathcal H^0\) counting measure.
- No global proof or global review was read or used. No sketch-attempt-1 proof or review is current evidence.
  No `step_002`, `step_003`, `step_006`, `step_007`, or later-step artifact is read, cited, or
  consumed.
