# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Apply the full joint-density cap to `step_003`, prove the
  general probability inequality and \(A/(2R)\) form for each law and
  interval, and take both suprema to obtain the finite anti-concentration
  ratio. Explicitly, for every
  \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
  \(I\subseteq\Theta\) with \(|I|>0\), prove
  \[
  \Pr_{\alpha\sim\mu}\!\left[
    \exists\theta\in I:\phi_\alpha(\theta)=0
  \right]
  \le
  \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
  =
  \frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|,
  \]
  and then prove
  \[
  \sup_{\mu\in\mathcal D_{N,R,\kappa}}
  \sup_{\substack{I\subseteq\Theta,\ I\text{ an interval}\\|I|>0}}
  \frac{\Pr_{\alpha\sim\mu}[
    \exists\theta\in I:\phi_\alpha(\theta)=0]}{|I|}
  \le
  \frac{A\Gamma_{\rm piv}(b,F;R)}{2R}.
  \]
- Depends on: `step_003`.
- Assumptions used: Primitive `assump:joint-density-cap`; derived volume
  bound from `step_003`.
- Technical challenge: Preserve arbitrary correlation, event measurability,
  and exact constants under the two uniform suprema.
- Intended proof tool or cited result: Lebesgue density domination and direct
  algebra.
- Output target: General affine coordinate-pivot sweep theorem.
- Rate objective: R1 requires
  \(\Pr(S_I)\le\kappa(2R)^{N-1}\Gamma_{\rm piv}|I|
  =A\Gamma_{\rm piv}|I|/(2R)\), in ordinary probability, uniformly over
  intervals, with no hidden constant.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:joint-density-cap`: for the quantified law
    \(\mu\in\mathcal D_{N,R,\kappa}\), the full joint law on
    \(\mathbb R^N\) has a Lebesgue density \(f_\mu\), with
    \(f_\mu=0\) almost everywhere outside \([-R,R]^N\) and
    \(f_\mu\le\kappa\) almost everywhere. This is a full joint-density
    condition and does not impose independence.
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_003` proof, SHA-256
    `38086ac69a640ffd22b3dc9f7ca26c26f868a1ec9b78bfdb078e429c4085504f`,
    paired with its `ACCEPTED` review, SHA-256
    `04d4b47609b1dd375af3f870dc62e7922da2395b69d8db8c140068ec3c8bf3b5`,
    supplies, for every interval \(I\subseteq\Theta\), the analytic and
    hence universally measurable event
    \[
    S_I=\{\alpha\in[-R,R]^N:
      \exists\theta\in I,\ \phi_\alpha(\theta)=0\},
    \]
    the finite setting-defined certificate
    \(\Gamma_{\rm piv}(b,F;R)<\infty\), and the exact coefficient-volume
    conclusion
    \[
    \lambda_N(S_I)
    \le
    (2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|.
    \]
    Its interface includes \(N=1\), the actual interval \(I\) with any
    supported endpoint convention, cube boundaries, empty \(K_R\), and
    tangent, multiple, or infinite root fibers.
- Local conditional hypotheses:
  - None.

No marginal or conditional density cap, coordinate independence,
simple-root condition, transversality, pivot margin, or polynomial
Pfaffian-format control of \(\Gamma_{\rm piv}\) is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:joint-density-cap} and the accepted measurable coefficient-volume certificate of Lemma~\ref{lem:step-003-measurable-charts} and Proposition~\ref{prop:step-003-volume-certificate}, every admissible law and every positive-length interval satisfy the exact ordinary-probability bound in both the \(\kappa(2R)^{N-1}\) and \(A/(2R)\) forms. | Converts the original root event from coefficient volume to probability without independence, conditioning, event enlargement, or constant loss. |
| `unit_002` | proposition | Under Assumption~\ref{assump:joint-density-cap}, the accepted finiteness of \(\Gamma_{\rm piv}\), and Proposition~\ref{prop:step-004-density-conversion}, division by positive interval length and the least-upper-bound property give the nested law and interval supremum bound with the same finite constant. | Closes the exact law-uniform and interval-uniform anti-concentration ratio. |

Atomic step = no. Density conversion for each original probability event and
the subsequent ratio-and-supremum closure are distinct audit obligations.

## Cited Result Applications

### Accepted dependency: measurable root-event coefficient volume

- Source or name: accepted `step_003` artifact
  `perspective_3/idea_1/proof_steps/step_003/proof.md`, SHA-256
  `38086ac69a640ffd22b3dc9f7ca26c26f868a1ec9b78bfdb078e429c4085504f`,
  paired with its `ACCEPTED` review, SHA-256
  `04d4b47609b1dd375af3f870dc62e7922da2395b69d8db8c140068ec3c8bf3b5`.
- Restated statement: Under the primitive regularity and no-forced-root
  assumptions discharged inside the accepted dependency,
  Lemma~\ref{lem:step-003-measurable-charts} proves that the original
  cube-restricted root event \(S_I\) is analytic and universally
  measurable. Proposition~\ref{prop:step-003-volume-certificate} proves,
  for every interval \(I\subseteq\Theta\),
  \[
  \lambda_N(S_I)
  \le
  (2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|.
  \]
  The accepted dependency interface also records
  \(\Gamma_{\rm piv}(b,F;R)<\infty\).
- Instantiated objects: the same setting functions \(b,F\), coefficient
  dimension \(N\), cube \([-R,R]^N\), interval \(I\), root event \(S_I\),
  Lebesgue measure \(\lambda_N\), and conditioning certificate
  \(\Gamma_{\rm piv}(b,F;R)\) used here.
- Required assumptions: Assumptions
  `assump:shared-pfaffian-chain` and `assump:no-forced-root`, together with
  the accepted chart interfaces, were discharged by the accepted
  dependency. This step does not re-assume any generated chart condition.
- Conclusion used: exact event measurability, finite
  \(\Gamma_{\rm piv}\), and the literal coefficient-volume factor
  \((2R)^{N-1}\), with no chart, multiplicity, boundary, or \(N=1\)
  remainder.

No external paper result or standard theorem is invoked in this step.
The identity \(\mu(B)=\int_B f_\mu\,d\lambda_N\) for measurable \(B\) is
the defining density representation in
Assumption~\ref{assump:joint-density-cap}; the remaining operations are
pointwise integration, division by \(|I|>0\), and direct algebra.

### Local result applications

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Proposition~\ref{prop:step-004-density-conversion} | Under Assumption~\ref{assump:joint-density-cap} and the accepted measurable volume certificate, every admissible \((\mu,I)\) with \(\lvert I\rvert>0\) satisfies the exact pairwise probability inequality in both constant forms. | Supplies the pairwise ratio bound to Proposition~\ref{prop:step-004-uniform-ratio} and the general probability theorem to target assembly. |
| Proposition~\ref{prop:step-004-uniform-ratio} | Under the same primitive density condition, accepted finiteness, and Proposition~\ref{prop:step-004-density-conversion}, both setting-defined suprema are bounded by \(A\Gamma_{\rm piv}(b,F;R)/(2R)<\infty\). | Supplies the anti-concentration-ratio consequence to target assembly. |

## Local Derivation

### unit_001: proposition

**Proposition (Full joint-density conversion in the original coefficient space).**
\(\label{prop:step-004-density-conversion}\)

Statement:
Under Assumption~\ref{assump:joint-density-cap} and the accepted conclusions
of Lemma~\ref{lem:step-003-measurable-charts} and
Proposition~\ref{prop:step-003-volume-certificate}, if
\(\mu\in\mathcal D_{N,R,\kappa}\) and \(I\subseteq\Theta\) is any interval
with \(|I|>0\), then
\[
\begin{aligned}
\Pr_{\alpha\sim\mu}\!\left[
  \exists\theta\in I:\phi_\alpha(\theta)=0
\right]
&=\int_{S_I}f_\mu(\alpha)\,d\lambda_N(\alpha)\\
&\le
\kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|\\
&=
\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|.
\end{aligned}
\tag{1}
\]
This is an ordinary-probability statement for the original root event. It
holds for arbitrarily correlated admissible laws, retains the exact
coefficient dimension, and includes \(N=1\), empty \(K_R\), and every
interval endpoint convention supported by the accepted dependency.

Proof / justification:
By Assumption~\ref{assump:joint-density-cap},
\(f_\mu=0\) almost everywhere outside \([-R,R]^N\). Hence
\[
\mu([-R,R]^N)
=\int_{[-R,R]^N}f_\mu\,d\lambda_N=1.
\tag{2}
\]
Therefore the unrestricted event in (1), under
\(\alpha\sim\mu\), agrees almost surely with its intersection with the
coefficient cube, which is exactly the accepted event \(S_I\). The accepted
Lemma~\ref{lem:step-003-measurable-charts} makes \(S_I\) universally
measurable, so the probability and density integral in (1) are well
defined.

The pointwise full joint-density ceiling and the accepted coefficient-volume
certificate now give, with no conditioning or coordinate factorization,
\[
\begin{aligned}
\Pr_{\alpha\sim\mu}\!\left[
  \exists\theta\in I:\phi_\alpha(\theta)=0
\right]
&=\mu(S_I)\\
&=\int_{S_I}f_\mu(\alpha)\,d\lambda_N(\alpha)\\
&\le\int_{S_I}\kappa\,d\lambda_N(\alpha)\\
&=\kappa\lambda_N(S_I)\\
&\le
\kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|.
\end{aligned}
\tag{3}
\]
Because \(R>0\) and \(A=(2R)^N\kappa\), direct algebra gives
\[
\kappa(2R)^{N-1}
=\frac{(2R)^N\kappa}{2R}
=\frac{A}{2R},
\tag{4}
\]
which completes (1). Equations (3)--(4) use the full density only; arbitrary
dependence among coordinates changes neither line.

For \(N=1\), the inherited beta-volume factor is
\((2R)^0=1\), and (4) becomes \(A/(2R)=\kappa\), so (1) reads
\[
\Pr_{\alpha\sim\mu}\!\left[
  \exists\theta\in I:\phi_\alpha(\theta)=0
\right]
\le\kappa\Gamma_{\rm piv}(b,F;R)|I|
\]
with no exceptional convention or hidden factor. If \(K_R=\varnothing\),
the accepted dependency gives \(S_I=\varnothing\) and
\(\Gamma_{\rm piv}=0\), so every line is zero. Open, closed, half-open, and
relative-endpoint interval conventions are unchanged because (3) integrates
the exact accepted \(S_I\), not an enlargement or closure. A right-hand side
larger than one remains a valid probability upper bound; no small-interval
threshold or truncation is introduced.

### unit_002: proposition

**Proposition (Uniform finite anti-concentration ratio).**
\(\label{prop:step-004-uniform-ratio}\)

Statement:
Under Assumption~\ref{assump:joint-density-cap}, the accepted conclusion
\(\Gamma_{\rm piv}(b,F;R)<\infty\), and
Proposition~\ref{prop:step-004-density-conversion},
\[
\sup_{\mu\in\mathcal D_{N,R,\kappa}}
\sup_{\substack{I\subseteq\Theta,\ I\text{ an interval}\\|I|>0}}
\frac{\Pr_{\alpha\sim\mu}[
  \exists\theta\in I:\phi_\alpha(\theta)=0]}{|I|}
\le
\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}
<\infty.
\tag{5}
\]
The conclusion is uniform over the full possibly correlated law class and
over all positive-length intervals, with no hidden constant.

Proof / justification:
For every admissible \(\mu\) and every stated interval \(I\),
\(|I|>0\). Dividing the final inequality of
Proposition~\ref{prop:step-004-density-conversion} by this positive number
gives
\[
\frac{\Pr_{\alpha\sim\mu}[
  \exists\theta\in I:\phi_\alpha(\theta)=0]}{|I|}
\le
\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}.
\tag{6}
\]
The right-hand side is independent of both \(\mu\) and \(I\). Thus it is an
upper bound for the inner set of ratios for each law and then for the outer
set of inner suprema. Taking the two least upper bounds in that order proves
(5). If either indexing class is empty, there is no admissible pair that can
violate the same uniform upper-bound statement.

Finally, \(A=(2R)^N\kappa<\infty\), \(R>0\), and the accepted dependency
supplies \(\Gamma_{\rm piv}(b,F;R)<\infty\). Hence the displayed
right-hand side is finite. No union bound, conditioning, expectation,
independence reduction, marginalization, or probability-mode conversion
occurs when taking the suprema.

## Target-Step Assembly

The accepted Lemma~\ref{lem:step-003-measurable-charts} supplies
measurability of the exact cube-restricted root event, and the accepted
Proposition~\ref{prop:step-003-volume-certificate} supplies
\[
\lambda_N(S_I)
\le(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
\]
with the original coefficient dimension and all boundary, multiplicity, and
\(N=1\) cases already included.

Proposition~\ref{prop:step-004-density-conversion} uses the primitive full
joint-density cap on this identical event to prove, for every admissible law
and every positive-length interval,
\[
\Pr_{\alpha\sim\mu}(S_I)
\le
\kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
=
\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|.
\]
The proof does not pass through any marginal or conditional law, so arbitrary
correlation is preserved exactly. Proposition~\ref{prop:step-004-uniform-ratio}
then divides only by \(|I|>0\) and takes the law and interval suprema without
changing the constant. The accepted finiteness of \(\Gamma_{\rm piv}\)
makes the resulting anti-concentration upper bound finite. These two named
propositions prove every clause of the accepted `step_004` row and export
the general affine coordinate-pivot sweep theorem consumed by `step_006`
and final assembly.

## Explicit Rate Audit

- Exposed variables: The pairwise bound exposes
  \(N,R,\kappa,A=(2R)^N\kappa,\Gamma_{\rm piv}(b,F;R)\), and \(|I|\).
  The ratio bound exposes the same quantities except that \(|I|\) cancels
  exactly.
- Hidden constants may depend on: None.
- Hidden constants may not depend on:
  \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\), the deterministic family,
  \(\mu\), \(I\), coefficient correlations, a pivot margin, root
  multiplicity, a marginal or conditional density, or any unrecorded
  Pfaffian scale or auxiliary conditioning quantity.
- Fixed quantities: The deterministic affine family and its exact Pfaffian
  presentation, together with \(N,R,\kappa\), are fixed while \(\mu\) and
  \(I\) range over their stated classes.
- Probability mode: Ordinary probability for each fixed law, followed by a
  uniform supremum over all admissible laws. There is no confidence
  parameter, conditioning event, expectation, or independence premise.
- Horizon mode: Every positive-length interval \(I\subseteq\Theta\), with no
  time horizon, asymptotic limit, stopping condition, or scope upgrade.
- Norm mode: The accepted \(\ell_1\) support-feasibility convention in
  \(K_R\), scalar coordinate-ratio variation in \(\Gamma_{\rm piv}\),
  Euclidean \(N\)-dimensional Lebesgue coefficient volume, and
  one-dimensional Lebesgue interval length are unchanged.
- Admissibility conditions and auxiliary tolerances:
  \(N\ge1\), \(R>0\), \(\kappa\in(0,\infty)\),
  Assumption~\ref{assump:joint-density-cap}, the accepted measurable
  coefficient-volume interface, and \(|I|>0\). There is no auxiliary
  tolerance, small-interval condition, pivot threshold, or simple-root
  condition.
- Term absorption or simplification inequalities: No term is dropped,
  dominated, truncated, or absorbed. The only simplification is the exact
  identity
  \[
  \kappa(2R)^{N-1}
  =
  \frac{(2R)^N\kappa}{2R}
  =
  \frac{A}{2R}.
  \]
  The ratio step divides both sides by the stipulated positive quantity
  \(|I|\).
- Probability conversion: Exactly
  \[
  \Pr_{\alpha\sim\mu}[
    \exists\theta\in I:\phi_\alpha(\theta)=0]
  =\int_{S_I}f_\mu\,d\lambda_N
  \le\kappa\lambda_N(S_I).
  \]
  There is no union bound, conditioning conversion, or residual event.
- Contribution to any Rate Specialization Bridge: This step exports the
  exact general affine theorem, with the factor
  \(\kappa(2R)^{N-1}\), for the later same-object monic specialization in
  `step_006`.
- Baseline-reduction check: The conversion retains the original
  \(N\)-dimensional coefficient vector and permits arbitrary correlation.
  In particular, it introduces no random leading coefficient, singular
  augmentation, marginal cap, or independence condition that could obstruct
  the exact affine-monic specialization. The \(N=1\) factor reduces exactly
  to \(\kappa\), not to a conservative surrogate.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing objects: \(S_I\), \(N,R,\kappa,A\),
  \(\Gamma_{\rm piv}(b,F;R)\), \(|I|\), the pairwise probability bound, and
  the nested anti-concentration ratio retain their setting and accepted
  sketch meanings. Only the two displayed conclusions are exported.
- Appendix-local objects: None are introduced in this step.
- Proof-local objects: The setting-defined density \(f_\mu\) is used only
  inside the density integral. No new event, constant, radius, threshold,
  margin, chart, conditional law, or helper dictionary is introduced.
- Constant provenance: \(N,R,\kappa\), and
  \(A=(2R)^N\kappa\) are primitive setting quantities.
  \(\Gamma_{\rm piv}(b,F;R)\) is the setting-defined static certificate whose
  finiteness is supplied by the accepted dependency interface. The factor
  \((2R)^{N-1}\) is inherited exactly from the accepted coefficient-volume
  certificate. Every equality between these constants is proved in (4).
- Assumption provenance: The full joint-density ceiling and cube support are
  primitive under Assumption~\ref{assump:joint-density-cap}. Event
  measurability, coefficient-volume control, and finite
  \(\Gamma_{\rm piv}\) are accepted derived conclusions. No realized event,
  generated condition, stability fact, local-validity fact, or root
  regularity property is promoted to a primitive assumption.
- Event and correlation scope: \(S_I\) is the original root event restricted
  to the coefficient cube; cube support makes it agree almost surely with
  the probability event in the goal. Density integration is over this same
  event. The proof never factors \(f_\mu\), conditions on coordinates, or
  invokes a marginal density, so all admissible correlations remain allowed.
- Boundary and degeneracy scope: The accepted event uses the actual interval
  \(I\), including every supported open, closed, half-open, or relative
  endpoint convention. The proof retains cube faces. Empty \(K_R\) gives
  zero probability and zero right-hand side. For \(N=1\),
  \((2R)^{N-1}=1\). Tangent, multiple, and infinite root fibers need no new
  treatment because the accepted volume certificate already includes them
  and the density conversion depends only on the resulting measurable set.
- Diagnostic boundary: The optional `global_proof.md` was not read or used
  for planning or evidence in this step. Its supplied identity and that of
  the paired accepted review were checked only as immutable binding hashes.
  No diagnostic statement is an assumption, citation, or authority for the
  target claim.
- Progress boundary: This remains exactly the fixed-family
  `material_partial` result in the setting. The theorem uses the finite
  setting-defined \(\Gamma_{\rm piv}(b,F;R)\) certificate, but neither this
  proof nor either exported conclusion claims or implies polynomial control
  of \(\Gamma_{\rm piv}\), the proof-local pivot margin, or any auxiliary
  conditioning quantity by
  \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or by general Pfaffian-format
  instance complexity. The remaining full-source gap is precisely such a
  polynomial general-instance bound, and it remains unresolved and outside
  this step.
