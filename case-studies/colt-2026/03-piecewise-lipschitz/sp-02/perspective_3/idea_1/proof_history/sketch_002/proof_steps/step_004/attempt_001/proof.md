# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Apply the full joint-density cap to `step_003`, prove the
  general probability inequality and \(A/(2R)\) form for each law and
  interval, and take both suprema to obtain the finite anti-concentration
  ratio.
- Depends on: `step_003`.
- Assumptions used: Primitive `assump:joint-density-cap`; derived volume
  bound from `step_003`.
- Technical challenge: Preserving arbitrary correlation, event
  measurability, and exact constants under the two uniform suprema.
- Intended proof tool or cited result: Lebesgue density domination and direct
  algebra.
- Output target: General affine coordinate-pivot sweep theorem.
- Rate objective: R1:
  \(\Pr(S_I)\le\kappa(2R)^{N-1}\Gamma\lvert I\rvert
  =A\Gamma\lvert I\rvert/(2R)\), ordinary probability,
  interval-uniform, no hidden constant.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:joint-density-cap`: the coefficient law is any
    \(\mu\in\mathcal D_{N,R,\kappa}\), so it has a nonnegative Lebesgue
    density \(f_\mu\), supported almost everywhere on the original cube
    \([-R,R]^N\), with \(f_\mu\le\kappa\) almost everywhere. This is one cap
    on the full joint density and imposes no product structure, marginal cap,
    conditional-density cap, or coordinate independence.
- Derived invariants supplied by accepted dependencies:
  - The current accepted dependency proof is
    `perspective_3/idea_1/proof_steps/step_003/proof.md`, SHA-256
    `600dae80a5c1e625dfce538a887d37242f083020b5042a8036ed014a79b91bdc`.
    Accepted Lemma~\ref{lem:step-003-measurable-charts} proves that, for every
    interval \(I\subseteq\Theta\), the exact original-coordinate event
    \[
    S_I=\{\alpha\in[-R,R]^N:\exists\theta\in I,
    b(\theta)+\langle\alpha,F(\theta)\rangle=0\}
    \]
    is analytic, universally measurable, and Lebesgue measurable. Accepted
    Proposition~\ref{prop:step-003-volume-certificate} proves
    \[
    \lambda_N(S_I)
    \le (2R)^{N-1}\Gamma_{\rm piv}(b,F;R)\lvert I\rvert
    \tag{1}
    \]
    for every such interval, including its zero, empty, and boundary cases.
    The same accepted dependency chain records the previously derived
    fixed-family conclusion \(\Gamma_{\rm piv}(b,F;R)<\infty\); it is not
    assumed anew here.
  - The matching accepted dependency review is
    `perspective_3/idea_1/proof_steps/step_003/review.md`, SHA-256
    `c935863b672cd9244c1c9bb33a86037e0226b417608b9c80c911b35aa6fc824e`.
    It records sketch attempt 2, `step_003`, unit attempt 1, `ACCEPTED`, and
    the matching proof digest.
- Local conditional hypotheses: None. Membership in
  \(\mathcal D_{N,R,\kappa}\), the interval restriction, and positive length
  where division by \(\lvert I\rvert\) occurs are explicit quantified
  conditions, not generated-object assumptions.

The primitive regularity and no-forced-root assumptions are not re-assumed
inside this step. Their relevant measurable-event, volume, empty-branch, and
finiteness consequences arrive only through the accepted dependency.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:joint-density-cap}, accepted Lemma~\ref{lem:step-003-measurable-charts}, and accepted Proposition~\ref{prop:step-003-volume-certificate}, if \(\mu\in\mathcal D_{N,R,\kappa}\) and \(I\subseteq\Theta\) is an interval, then the exact root event satisfies \(\Pr_\mu(S_I)\le\kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)\lvert I\rvert=A\Gamma_{\rm piv}(b,F;R)\lvert I\rvert/(2R)\). | Converts the exact coefficient-volume certificate into ordinary probability with the literal constant and arbitrary correlation. |
| `unit_002` | proposition | Under Assumption~\ref{assump:joint-density-cap}, the accepted finite-conditioning output, and Proposition~\ref{prop:step-004-density-domination}, the setting-defined outer law supremum of the inner positive-length interval supremum of \(\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]/\lvert I\rvert\) is at most \(A\Gamma_{\rm piv}(b,F;R)/(2R)<\infty\). | Closes the two uniform quantifiers in their accepted order without a union bound, confidence conversion, or added factor. |

Atomic step = no. Density domination of the exact measurable event and
ordered closure of the two suprema are logically distinct obligations.

## Cited Result Applications

### Accepted dependency: measurable coefficient-volume certificate

- Source identity: the current accepted `step_003` proof and review have the
  complete SHA-256 values recorded in
  `## Allowed Assumptions And Dependencies`; the review's recorded proof
  identity matches the current dependency proof.
- Restated statement in current notation: Accepted
  Lemma~\ref{lem:step-003-measurable-charts} makes the exact set \(S_I\)
  analytic, universally measurable, and Lebesgue measurable. Accepted
  Proposition~\ref{prop:step-003-volume-certificate} gives (1) for every
  interval \(I\subseteq\Theta\). The accepted dependency interface includes
  \(K_R=\varnothing\Rightarrow S_I=\varnothing\) and
  \(\Gamma_{\rm piv}=0\), zero-length interval nullity, \(N=1\), actual
  interval endpoints and closed cube faces, least-index ties, selected pivots
  approaching zero, tangent/multiple/infinite fibers, and noninjective chart
  maps. It also carries the accepted upstream fact
  \(\Gamma_{\rm piv}(b,F;R)<\infty\).
- Instantiated objects: exactly the setting's \(b,F,\Theta,N,R,K_R\), the
  original coefficient vector \(\alpha\), the closed coefficient cube, the
  event \(S_I\), \(\lambda_N\), and
  \(\Gamma_{\rm piv}(b,F;R)\). No event enlargement, transformed
  coefficient, conditional event, or new chart is introduced.
- Required assumptions and discharge: the dependency proof and its matching
  accepted review discharge their own primitive regularity and
  no-forced-root assumptions. This step consumes only the stated accepted
  conclusions.
- Conclusion used: exact event measurability, (1), all inherited boundary
  branches, and finiteness of the displayed fixed-family conditioning
  constant.
- Nonoutputs: the dependency supplies no probability conversion, density
  statement, independence property, confidence parameter, or polynomial
  general-instance bound on \(\Gamma_{\rm piv}\).

### Primitive density representation and cap

- Source or name: the definition of
  \(\mathcal D_{N,R,\kappa}\) in
  Assumption~\ref{assump:joint-density-cap}.
- Restated statement in current notation: for every
  \(\mu\in\mathcal D_{N,R,\kappa}\),
  \[
  \mu(B)=\int_B f_\mu(\alpha)\,d\lambda_N(\alpha)
  \]
  for every Lebesgue-measurable \(B\), with
  \(0\le f_\mu\le\kappa\) almost everywhere and
  \(f_\mu=0\) almost everywhere outside \([-R,R]^N\).
- Instantiated objects: \(B=S_I\), the exact measurable event exported by
  `step_003`.
- Required assumptions and discharge: event measurability is supplied by the
  accepted dependency; density existence, support, nonnegativity, and the
  full cap are precisely the primitive assumption.
- Conclusion used: \(\mu(S_I)\le\kappa\lambda_N(S_I)\), without a marginal
  argument or an independence assumption.
- Nonoutputs: this primitive condition supplies no coefficient-volume bound,
  chart count, root count, transversality, confidence conversion, or
  conditioning estimate.

### Local result applications

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Proposition~\ref{prop:step-004-density-domination} | Under the full joint-density cap and the accepted measurable volume certificate, every admissible law and every interval obey the exact ordinary-probability inequality in both \(\kappa(2R)^{N-1}\) and \(A/(2R)\) forms. | Supplies the pairwise bound to Proposition~\ref{prop:step-004-ordered-suprema} and target assembly. |
| Proposition~\ref{prop:step-004-ordered-suprema} | Under the pairwise inequality and accepted finiteness, the inner positive-length interval supremum followed by the outer law supremum is bounded by the same literal finite constant. | Supplies the uniform anti-concentration-ratio conclusion to target assembly. |

No external paper theorem is used in this step.

## Local Derivation

### unit_001: proposition

**Proposition (Full-joint-density domination of the swept root event).**
\(\label{prop:step-004-density-domination}\)

Statement:
Under Assumption~\ref{assump:joint-density-cap}, accepted
Lemma~\ref{lem:step-003-measurable-charts}, and accepted
Proposition~\ref{prop:step-003-volume-certificate}, if
\(\mu\in\mathcal D_{N,R,\kappa}\) and \(I\subseteq\Theta\) is any interval,
then the exact original-coordinate event
\[
S_I=\{\alpha\in[-R,R]^N:\exists\theta\in I,
\phi_\alpha(\theta)=0\}
\tag{2}
\]
is measurable for \(\mu\), and
\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
&=\mu(S_I)\\
&\le \kappa\lambda_N(S_I)\\
&\le \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)\lvert I\rvert\\
&=\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}\lvert I\rvert.
\end{aligned}
\tag{3}
\]
The statement includes zero-length and empty intervals, empty \(K_R\),
\(N=1\), actual interval and cube boundaries, and every tie, small-pivot,
tangent, multiple-root, infinite-fiber, and noninjective-chart branch already
included in the accepted coefficient-volume certificate.

Proof / justification:
By accepted Lemma~\ref{lem:step-003-measurable-charts}, \(S_I\) is analytic,
universally measurable, and Lebesgue measurable in the original coefficient
space. Assumption~\ref{assump:joint-density-cap} gives
\(\mu(\mathbb R^N\setminus[-R,R]^N)=0\). Hence the random root event agrees
\(\mu\)-almost surely with the supported event (2), and its ordinary
probability is \(\mu(S_I)\). Applying the full joint density directly to this
same event gives
\[
\begin{aligned}
\mu(S_I)
&=\int_{S_I}f_\mu(\alpha)\,d\lambda_N(\alpha)\\
&\le\int_{S_I}\kappa\,d\lambda_N(\alpha)
=\kappa\lambda_N(S_I).
\end{aligned}
\tag{4}
\]
This uses only the almost-everywhere cap on the full \(N\)-dimensional
density. Correlations between any or all coefficient coordinates therefore
remain arbitrary; no product factorization, marginalization, conditioning,
or union bound occurs.

Substitute accepted
Proposition~\ref{prop:step-003-volume-certificate} into (4). The first three
lines of (3) follow. Since \(R>0\) and
\(A=(2R)^N\kappa\), direct algebra gives
\[
\kappa(2R)^{N-1}
=\frac{(2R)^N\kappa}{2R}
=\frac A{2R},
\tag{5}
\]
which proves the last line with no inequality or hidden factor.

All inherited branches survive this operation unchanged. If
\(K_R=\varnothing\), the dependency gives \(S_I=\varnothing\) and
\(\Gamma_{\rm piv}=0\), so every term in (3) is zero. If \(I\) is empty or
\(\lvert I\rvert=0\), the dependency gives \(\lambda_N(S_I)=0\), and (4)
gives \(\mu(S_I)=0\); no division by \(\lvert I\rvert\) is made in this
proposition. When \(N=1\), the coefficient-volume factor is exactly
\((2R)^0=1\), while (5) remains exact because \(A=2R\kappa\). The event in
(2) retains actual interval endpoints and closed cube faces. Ties, pivots
approaching zero, tangencies, multiple or infinite root fibers, and
noninjective charts were resolved before the density is applied, so none can
create a probability remainder or chart-count loss here. Finally, (3)
remains a valid upper bound when its right-hand side exceeds one; no
small-interval condition or replacement by an unstated threshold is needed.

### unit_002: proposition

**Proposition (Ordered law-and-interval anti-concentration closure).**
\(\label{prop:step-004-ordered-suprema}\)

Statement:
Under Assumption~\ref{assump:joint-density-cap}, the accepted
fixed-family finiteness output carried by the current `step_003` dependency,
and Proposition~\ref{prop:step-004-density-domination}, taking first the
supremum over positive-length intervals and then the outer supremum over
admissible laws gives
\[
\sup_{\mu\in\mathcal D_{N,R,\kappa}}
\sup_{\substack{I\subseteq\Theta,\ I\text{ an interval}\\
                \lvert I\rvert>0}}
\frac{
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
}{\lvert I\rvert}
\le
\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}
<\infty.
\tag{6}
\]

Proof / justification:
Fix an arbitrary \(\mu\in\mathcal D_{N,R,\kappa}\). For every interval
\(I\subseteq\Theta\) with \(\lvert I\rvert>0\), divide (3) by the strictly
positive length to obtain
\[
\frac{
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
}{\lvert I\rvert}
\le
\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}.
\tag{7}
\]
The right-hand side is independent of \(I\). Therefore, for this fixed law,
the inner supremum in the exact accepted order satisfies
\[
\sup_{\substack{I\subseteq\Theta,\ I\text{ an interval}\\
                \lvert I\rvert>0}}
\frac{
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
}{\lvert I\rvert}
\le
\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}.
\tag{8}
\]
Because (8) holds for every admissible \(\mu\), taking the outer law
supremum proves (6). These are order-preserving supremum operations on a
pairwise uniform inequality, not union bounds over laws or intervals. They
introduce no event probability, chart count, confidence parameter, or
constant.

If the positive-length interval class is empty, as can occur for a
degenerate compact \(\Theta\), the inner supremum is empty and the asserted
upper bound is immediate under the standard extended-real convention. The
same observation applies if \(\mathcal D_{N,R,\kappa}\) is empty; whenever
an admissible law exists, the pointwise argument (7)--(8) applies. Zero-length
intervals were already proved to have zero probability in
Proposition~\ref{prop:step-004-density-domination}, but they are correctly
excluded before division in (6)--(8).

Finally, \(N\) is finite, \(R>0\), \(\kappa<\infty\), and
\(A=(2R)^N\kappa<\infty\). The accepted dependency chain gives
\(\Gamma_{\rm piv}(b,F;R)<\infty\). Thus the right-hand side of (6) is a
finite, explicit fixed-family constant. This does not estimate
\(\Gamma_{\rm piv}\) polynomially in any Pfaffian-format descriptor.

## Target-Step Assembly

Accepted Lemma~\ref{lem:step-003-measurable-charts} supplies the exact
original-coordinate event \(S_I\) with the measurability needed for density
integration. Accepted Proposition~\ref{prop:step-003-volume-certificate}
supplies, for every interval and all inherited boundary branches, the literal
coefficient-volume bound (1). Under
Assumption~\ref{assump:joint-density-cap},
Proposition~\ref{prop:step-004-density-domination} applies the full joint
density directly to that same event and derives
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\le
\kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)\lvert I\rvert
=
\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}\lvert I\rvert
\]
for every admissible, possibly fully correlated law and every interval in the
accepted pairwise target.

For positive-length intervals,
Proposition~\ref{prop:step-004-ordered-suprema} divides by the exact interval
length, takes the inner interval supremum for each fixed law, and then takes
the outer law supremum. The constant remains unchanged and is finite by the
accepted upstream fixed-family finiteness conclusion. These two named local
results prove every clause of the exact `step_004` row. The sole exported
interface is the general affine ordinary-probability theorem and its ordered
anti-concentration-ratio consequence, for consumption by `step_006` and final
assembly.

## Explicit Rate Audit

- Exposed variables: \(N,R,\kappa,A,\Gamma_{\rm piv}(b,F;R)\), and
  \(\lvert I\rvert\). The pairwise output is exactly
  \(\kappa(2R)^{N-1}\Gamma_{\rm piv}\lvert I\rvert
  =A\Gamma_{\rm piv}\lvert I\rvert/(2R)\), and the ratio output is exactly
  \(A\Gamma_{\rm piv}/(2R)\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: the law \(\mu\), its correlations, the
  interval \(I\), \(N,R,\kappa,A\), the fixed family, a chart or pivot index,
  an exhaustion level, root multiplicity, a confidence parameter, or the
  Pfaffian descriptors \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\).
- Fixed quantities: while \(\mu\) and \(I\) vary through the displayed
  suprema, the deterministic family \((b,F)\), compact \(\Theta\), its exact
  presentation, \(N,R,\kappa,A\), and
  \(\Gamma_{\rm piv}(b,F;R)\) are fixed.
- Probability mode: ordinary probability for every individual admissible
  law. There is no expectation, high-probability event, confidence level,
  conditioning event, almost-sure limit, or independence assumption.
- Horizon mode: static, pairwise for every interval and uniform under the
  displayed ordered suprema. There is no horizon, asymptotic, stopping-time,
  or all-time upgrade.
- Norm mode: the event and density use original-coordinate
  \(N\)-dimensional Lebesgue measure; the denominator is one-dimensional
  Lebesgue interval length. The accepted dependency retains the setting's
  \(\ell_1\) feasibility test in \(K_R\) and coordinate-ratio variation in
  \(\Gamma_{\rm piv}\); no new norm is introduced.
- Admissibility conditions and auxiliary tolerances: \(N\ge1\), \(R>0\),
  \(\kappa\in(0,\infty)\),
  \(\mu\in\mathcal D_{N,R,\kappa}\), and \(I\subseteq\Theta\) an interval.
  Positive length is required only for the ratio. There is no auxiliary
  tolerance or small-interval threshold.
- Term absorption or simplification inequalities: no term is absorbed,
  dropped, or dominated. The sole simplification is the equality
  \[
  \kappa(2R)^{N-1}
  =\frac{(2R)^N\kappa}{2R}
  =\frac A{2R}.
  \]
  Division by \(\lvert I\rvert\) occurs only under
  \(\lvert I\rvert>0\).
- Probability conversion: the deterministic coefficient-volume certificate
  is converted once by
  \(\mu(S_I)=\int_{S_I}f_\mu\,d\lambda_N
  \le\kappa\lambda_N(S_I)\). This is not a confidence, conditioning, or
  independence conversion.
- Contribution to any Rate Specialization Bridge: the output is the exact
  general affine theorem consumed by the monic specialization in `step_006`.
  It adds no remainder or conservative factor.
- Baseline-reduction check, if applicable: the same original coefficient
  event, law, interval, and constant are retained. In particular, for
  \(N=1\), the rate reduces exactly to
  \(\kappa\Gamma_{\rm piv}\lvert I\rvert\), since
  \((2R)^0=1\). The later monic baseline can therefore substitute its
  deterministic \(\Gamma_{\rm piv}\) certificate without a probability-mode,
  dimensional, or constant loss.

## Blockers

None.

## Notation And Assumption Notes

- Binding-input audit: before overwrite, SHA-256 values were verified as
  `f6319a52bbee7c41bf065f05b9970f5868aaa6695e2541f2713bd15d3d026409`
  for the controller prompt,
  `91119d2600ee2f787eb873796569ab53e35201e499bf81658d8a0bc1a8e7c79e`
  for `setting.md`,
  `aabcf6f6302d5cfab51cc1495d683cfa353390df7bf0fa81c3beecfcb076d108`
  for `proof_sketch.md`,
  `56d6b16524f0935fbfeee3802f4f6fe748cf0eebfdcfcdf1a66ddce763ebc88c`
  for `proof_sketch_review.md`,
  `fcb7dc635362de5be5c61bbaf858c09ed9795863e8cdd5598247666d45b178b0`
  for `global_proof.md`,
  `51006b10c890f501de7e1f6dd672a2ce07502b82251fcd58bbeef81ea006805b`
  for `global_proof_review.md`, and the two complete accepted dependency
  digests recorded above. The sketch review, global review, and dependency
  review record `ACCEPTED`, with matching reviewed artifact identities.
- Freshness audit: the pre-overwrite live `step_004` proof and review had the
  controller-specified stale SHA-256 values
  `84d16264879bff1e5842820f8291b7981beeb279683fe7701e56135cab476a91`
  and
  `7eb2ef7d37239b4af8e7c1aafd8eb4bc1725aab06a809bc7a1115467e0dc7a1b`.
  They were sketch-attempt-1 material and were not read for claims, used as
  evidence, used as an acceptance source, or copied as current identities.
  The existing live review is stale after this overwrite and cannot certify
  this fresh proof; a fresh `step_004` review is required.
- Public-facing objects: \(S_I,N,R,\kappa,A,\Gamma_{\rm piv}(b,F;R)\), the
  pairwise probability inequality, and the ordered anti-concentration ratio
  retain exactly their setting and accepted-dependency meanings. Only the
  two final bounds are exported.
- Proof-local objects: the setting-defined density \(f_\mu\) and the
  individual density integral in (4) are used only to discharge the primitive
  full-density cap. No new event, coefficient coordinate, constant, radius,
  threshold, tolerance, or transformed measure is introduced.
- Helper-object surface classification: \(S_I\) and the two exact bounds are
  `public-facing`; there is no new `appendix-local` helper; \(f_\mu\) and the
  displayed integral calculation are `proof-local` uses of setting-defined
  objects.
- Constant provenance: \(N,R,\kappa,A\) are defined in `setting.md`, with
  \(A=(2R)^N\kappa\). The fixed-family quantity
  \(\Gamma_{\rm piv}(b,F;R)\) is setting-defined and its finiteness is an
  accepted upstream derived conclusion carried by the current dependency.
  The coefficient-volume factor \((2R)^{N-1}\) is inherited literally from
  accepted `step_003`. No new constant is introduced.
- Assumption provenance: the full density support and cap are the sole
  primitive condition used directly. Event measurability, exact
  original-coordinate volume, the empty branch, all chart/root boundary
  cases, and fixed-family finiteness are accepted derived conclusions. This
  step proves ordinary-probability domination and ordered supremum closure.
  No generated event, local-validity condition, stability property,
  recurrence, boundedness fact, or invariant is treated as primitive or as a
  local conditional hypothesis.
- Boundary and degeneracy audit: \(K_R=\varnothing\), empty and zero-length
  intervals, degenerate \(\Theta\), an empty law class, \(N=1\), interval
  endpoints, closed cube faces, bounds exceeding one, ties, pivots approaching
  zero, tangencies, multiple/infinite fibers, and noninjective charts are all
  handled explicitly or inherited without alteration from the accepted
  measurable coefficient-volume certificate. Only positive-length intervals
  are divided by their length.
- Diagnostic boundary: the current `global_proof.md` was consulted only after
  its paired current `global_proof_review.md` was verified `ACCEPTED`. Its
  step-relevant planning suggestion was to separate exact full-density
  domination from ordered supremum closure. Every proof claim above was
  independently derived from `setting.md`, the accepted sketch row, the
  accepted `step_003` dependency, and the primitive density definition. The
  diagnostic pair was not used as evidence, a cited result, an assumption
  source, or authority to change the target claim.
- Progress boundary: this proof establishes only the accepted fixed-family
  `material_partial` probability interface. It neither claims nor implies a
  polynomial general-instance estimate for \(\Gamma_{\rm piv}\) in
  \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\), any chart-count theorem, or
  any other Pfaffian-format descriptors.
