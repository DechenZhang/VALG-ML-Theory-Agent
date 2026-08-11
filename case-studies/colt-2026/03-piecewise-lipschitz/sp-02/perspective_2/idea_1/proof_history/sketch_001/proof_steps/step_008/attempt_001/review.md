# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_008
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_008/proof.md
- Reviewed proof SHA-256: 63c4257a7ec1db6387c7e7c19d467e15c1cc28999e7bcb2c1bdc93466896d12e

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-008-radial-cancellation} states the exact homogeneous integrand identity required by the accepted row. Its assumption basis is the anchored derivative-closure condition and the accepted `step_001` nonvanishing and differentiability conclusions; its local condition is exactly \(F_0\equiv0\); and it quantifies over every actual root-section point \(a\in H_\theta\).
- Proof validity: Accepted `step_001` gives \(r=\lVert F\rVert_2\geq1\), so \(F=r\gamma_F\) is a differentiable factorization with a positive denominator. Since \(F_0=0\), the actual root section is
  \[
  H_\theta=F(\theta)^\perp=\gamma_F(\theta)^\perp.
  \]
  Differentiation gives \(F'=r'\gamma_F+r\gamma_F'\). On that same section, \(\langle a,\gamma_F\rangle=0\), so the radial term cancels exactly and
  \[
  \frac{|\langle a,F'\rangle|}{\lVert F\rVert_2}
  =|\langle a,\gamma_F'\rangle|.
  \]
  No amplitude, radial-derivative, or lower-norm estimate is used after positivity is established.
- Cited-result and assumption audit: The current accepted `step_001` proof and review hashes match the binding artifacts. That dependency supplies only nonvanishing, differentiability, and the projective certificate; the cancellation itself is derived locally. No external source or unlisted condition is used.
- Rigor checklist: Division is only by \(r\geq1\); the derivative is in the original parameter coordinate; absolute values are taken only after the signed equality; and the identity is pointwise for every \(\theta\in\Theta\). For \(N=1\), \(H_\theta=\{0\}\), so both sides are zero. The actual central section contains zero, while the proof also preserves the accepted empty-section convention.
- Local adversarial test: Arbitrary positive radial rescaling, nonconstant radial motion, \(a=0\), \(N=1\), and a zero projective derivative all leave the displayed equality unchanged. Without section orthogonality the \(r'\)-term would survive, but orthogonality is exactly the consumed root equation.
- Contribution to target step: This lemma converts the accepted affine normal velocity into the exact projective velocity on the actual homogeneous root section, with zero residual.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-008-literal-constant} isolates the exact algebra requested by the row. It states the setting definition \(A=(2R)^N\kappa\), the needed condition \(R>0\), and the literal conclusion before its proof.
- Proof validity: Since \(R/(2R)=1/2\),
  \[
  \kappa R\sqrt N\sqrt2(2R)^{N-1}
  =\kappa(2R)^N\frac{\sqrt{2N}}2
  =A\sqrt{N/2}.
  \]
  The powers of \(2R\), the factor \(R\), and both square-root factors are accounted for exactly.
- Cited-result and assumption audit: This is direct algebra from setting-defined quantities. It uses no dependency, citation, hidden constant, or auxiliary parameter.
- Rigor checklist: The only division is by \(2R>0\). All factors are finite and nonnegative under the setting, and the identity is valid for every integer \(N\geq1\).
- Local adversarial test: At \(N=1\), the identity reduces to \(\kappa R\sqrt2(2R)^0=A/\sqrt2\). Arbitrarily small positive \(R\) and arbitrary admissible \(\kappa\) preserve the exact equality.
- Contribution to target step: This lemma converts the density, coefficient-radius, and cube-section factors into the required public coefficient \(A\sqrt{N/2}\) without a hidden loss.
- Verdict: PASS
- Repair direction: None

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-008-stationary-projective} states exactly the zero-projective-speed boundary claim assigned by the accepted sketch. It names both primitive assumptions, the accepted `step_001` conclusions, \(F_0\equiv0\), and \(\Gamma_{\mathrm{proj}}(F)=0\), and concludes an event identity with one fixed proper hyperplane for every admissible law and every positive-length interval.
- Proof validity: The ordinary setting supremum
  \[
  \Gamma_{\mathrm{proj}}(F)=\sup_{\theta\in\Theta}\lVert\gamma_F'(\theta)\rVert_2=0
  \]
  forces \(\gamma_F'=0\) pointwise. Since \(\Theta\) is an interval and the curve is differentiable on a surrounding open interval, coordinatewise zero derivative makes \(\gamma_F\equiv\gamma_0\). Accepted nonvanishing gives \(F(\theta)=r(\theta)\gamma_0\) with \(r\geq1\). Every positive-length interval is nonempty, so root existence is equivalent to \(\langle a,\gamma_0\rangle=0\). Unit normalization makes this a proper hyperplane, and the full joint Lebesgue density gives it law mass zero.
- Cited-result and assumption audit: The zero-derivative criterion and proper-hyperplane nullity are restated in current notation before use. Absolute continuity follows directly from Assumption~\ref{assump:cube-density-laws}; independence, a marginal density, or a transversality condition is not used. This density calculation verifies the stationary boundary and is not a second conversion in the rate proof.
- Rigor checklist: The proof distinguishes Hausdorff section measure from \(N\)-dimensional law mass. It does not claim that the central section is empty. The event equality holds for every endpoint convention because only nonemptiness of \(I\) is needed. For \(N=1\), the proper hyperplane is the singleton \(\{0\}\), which is still Lebesgue- and law-null.
- Local adversarial test: A nonconstant positive radial factor with constant projective direction, a central section of positive \(\mathcal H^{N-1}\)-measure, \(N=1\), endpoints, and arbitrarily short positive intervals all yield the same fixed null event.
- Contribution to target step: This lemma proves that the zero-rate branch is genuine and law-null rather than being justified by an incorrect empty-section assertion.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-008-homogeneous-rate} states the exact pairwise homogeneous probability chain for every original admissible law and every positive-length interval, under precisely the three accepted dependencies, the allocated primitive assumptions, and the preceding named local lemmas. It preserves the ordinary projective supremum, Euclidean conventions, and literal coefficient.
- Proof validity: Accepted `step_004`, specialized only by setting \(F_0=0\), gives the sole probability conversion on
  \(H_\theta=\gamma_F(\theta)^\perp\). Lemma~\ref{lem:step-008-radial-cancellation} changes its integrand by equality on that same section. For every \(a\in[-R,R]^N\), Cauchy--Schwarz and the coefficient cube give
  \[
  |\langle a,\gamma_F'(\theta)\rangle|
  \leq R\sqrt N\lVert\gamma_F'(\theta)\rVert_2.
  \]
  Accepted `step_005` applies to the identical central section and gives
  \(\mathcal H^{N-1}(H_\theta\cap[-R,R]^N)\leq\sqrt2(2R)^{N-1}\). Nonnegative integration, the ordinary setting supremum, and Lemma~\ref{lem:step-008-literal-constant} then give
  \[
  \Pr[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
  \leq A\sqrt{N/2}\,\Gamma_{\mathrm{proj}}(F)|I|.
  \]
  The current accepted `step_001` certificate gives
  \(\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}\) with no amplitude or affine-offset term, proving the second inequality.
- Cited-result and assumption audit: All three dependency proof/review hashes match the recorded bindings, and all dependency reviews have status `ACCEPTED`. The Edelman--Kostlan paragraph identifies Alan Edelman and Eric Kostlan, "How Many Zeros of a Random Polynomial Are Real?," Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9. It maps \(v=F\), \(a=\alpha\), \(\rho=f_\mu\), and the source interval to \(I\); records differentiability and nonvanishing from `step_001`, the joint density from Assumption~\ref{assump:cube-density-laws}, and the finite interval; and states the source nonoutputs. Its sole role is to cross-check the Euclidean normalization, section, and integrand. No expected-count conclusion, probability conversion, multiplicity conclusion, Ball factor, affine chart, or derivative certificate is consumed from that source.
- Rigor checklist: The inner integrand and section measure are nonnegative, the moving-section measurability is inherited from accepted `step_004`, and all pointwise bounds are finite. The interval estimate uses exactly
  \(\int_I\lVert\gamma_F'\rVert_2\leq\Gamma_{\mathrm{proj}}(F)|I|\), with no essential-supremum substitution. For \(N=1\), the section is \(\{0\}\) with \(\mathcal H^0\)-mass one but zero velocity integrand. If \(\Gamma_{\mathrm{proj}}=0\), Lemma~\ref{lem:step-008-stationary-projective} independently identifies the null event. Empty sections, zero certificates, endpoints, and arbitrarily short positive intervals are all consistent with the chain.
- Local adversarial test: Arbitrarily correlated capped densities, a projectively stationary but radially moving curve, a diagonal cube section attaining Ball's cap, \(N=1\), \(a=0\), \(\widehat\Lambda_{B,T}=0\), and intervals with length tending to zero introduce no extra factor or unhandled branch.
- Contribution to target step: This proposition proves both exact interval rates, including the requested \(A\sqrt{N/2}\) coefficient and the certificate substitution.
- Verdict: PASS
- Repair direction: None

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-008-pf-capacity} states exactly the setting-defined \(C^{\mathrm{Pf}}_{\mathcal D}\) conclusion under the preceding pairwise proposition and the same homogeneous specialization. It neither changes the event nor adds a stronger horizon claim.
- Proof validity: For each fixed admissible law and every interval with \(|I|>0\), Proposition~\ref{prop:step-008-homogeneous-rate} gives a common upper bound times \(|I|\). Division is therefore only by a strictly positive number. Taking first the defining interval supremum and then the defining law supremum yields
  \[
  C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
  \leq A\sqrt{N/2}\,\widehat\Lambda_{B,T}.
  \]
  The displayed double supremum is the setting definition exactly.
- Cited-result and assumption audit: The only proof authority is the named pairwise-rate proposition plus the setting definition. No measurable selection, interchange of suprema, probability conversion, or additional theorem is used.
- Rigor checklist: Every denominator is positive; the supremum order is \(\sup_{\mu\in\mathcal D}\sup_I\); the common right-hand side is independent of both indices; and arbitrarily short positive intervals remain included. The law class is nonempty by the setting.
- Local adversarial test: A sequence of positive-length intervals shrinking to a point, arbitrary variation over admissible correlated laws, and a zero certificate all preserve the same uniform bound. No assertion is made for zero-length intervals.
- Contribution to target step: This proposition performs exactly the final interval-then-law closure required by the accepted row, with no duplicated or malformed capacity formula.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found. Exact radial cancellation, literal constant algebra, stationary-event identification, pairwise probability control, and defining-supremum closure are each present in the local lemma map with a matching paper-ready statement and proof. Cauchy--Schwarz on the coefficient cube, zero-derivative constancy, proper-hyperplane nullity, and nonnegative interval integration are explicitly restated before use. The Edelman--Kostlan formula is visibly segregated as a normalization/integrand cross-check and contributes no proof output. The target assembly cites theorem-style names and labels rather than local unit IDs. No independence, second rate-proof probability conversion, chart count, transversality, auxiliary tolerance, amplitude bound, affine offset, hidden constant, or unsupported source conclusion is smuggled into prose or assembly.

## Target Claim Audit

The proof establishes exactly the accepted `step_008` row. In the static specialization \(F_0\equiv0\), it proves the requested integrand equality on the actual central root section and, for every admissible law and positive-length interval,

\[
\Pr[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
\leq A\sqrt{N/2}\,\Gamma_{\mathrm{proj}}(F)|I|
\leq A\sqrt{N/2}\,\widehat\Lambda_{B,T}|I|.
\]

It then proves the exact \(C^{\mathrm{Pf}}_{\mathcal D}\) certificate. The probability mode is ordinary probability for the original full joint law; the interval mode includes every positive-length interval; the projective quantity is the ordinary setting supremum; and all vector, operator, and Hausdorff conventions are Euclidean. The proof does not strengthen or weaken the row, preempt the later counterexample calculation, or introduce a final-assembly claim.

## Explicit Rate Audit

This is the complete R3 rate bridge. The exposed quantities are \(N\geq1\), \(R>0\), \(\kappa\), \(A=(2R)^N\kappa\), \(\Gamma_{\mathrm{proj}}(F)\), \(\widehat\Lambda_{B,T}\), and \(|I|\), while \(\mu\) and \(I\) range exactly as in the setting. There are no hidden constants, confidence parameters, auxiliary tolerances, minimum interval lengths, orientation factors, or suppressed dependence on correlation. The deterministic presentation and support/density data are fixed before the law and interval range. The probability mode is ordinary probability, the horizon mode is pairwise over every positive-length interval followed by the two defining suprema, and the norm mode is Euclidean with \(\mathcal H^{N-1}\), including \(\mathcal H^0\) for \(N=1\).

Every simplification is displayed:

\[
\frac{|\langle a,F'\rangle|}{\lVert F\rVert_2}
=|\langle a,\gamma_F'\rangle|
\leq R\sqrt N\lVert\gamma_F'\rVert_2,
\]

\[
\mathcal H^{N-1}(H_\theta\cap[-R,R]^N)
\leq\sqrt2(2R)^{N-1},
\qquad
\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2},
\]

followed by \(\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}\). No term is dropped or absorbed. The homogeneous specialization is an exact reduction of the accepted affine sweep, and the certificate substitution preserves the later R5 \(1/\delta\) scale without claiming or weakening that later calculation.

## Notation Surface Audit

The public-facing symbols \(\gamma_F\), \(\Gamma_{\mathrm{proj}}(F)\), \(\widehat\Lambda_{B,T}\), \(A\), and \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\) are setting-defined and retain their meanings. The radial factor \(r=\lVert F\rVert_2\) and stationary direction \(\gamma_0\) are proof-local, have proved provenance, and are not exported. The literal-algebra and stationary-case lemmas are appropriately appendix-local. The two public propositions export only the minimal interval-rate and capacity interfaces. No helper dictionary, new threshold, margin, event, or bundled constant leaks into the theorem surface.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-008-radial-cancellation} supplies the exact same-section projective integrand. Lemma~\ref{lem:step-008-literal-constant} supplies the literal coefficient identity. Lemma~\ref{lem:step-008-stationary-projective} supplies the proper-hyperplane zero-rate audit. Accepted Propositions~\ref{prop:step-004-coordinate-free-sweep} and
\ref{prop:step-005-translated-cube-section}, together with the accepted `step_001` projective certificate, feed Proposition~\ref{prop:step-008-homogeneous-rate} on identical objects and conventions. Proposition~\ref{prop:step-008-pf-capacity} then takes exactly the defining suprema. These named results jointly imply every clause of the row with zero residual and no assembly-only lemma, changed dependency, or target drift.

## Review Rationale

All five non-atomic local units are statement-complete and valid line by line. The proof uses the bound dependencies on exactly the objects they certify, cancels radial motion before applying inequalities, preserves the literal constant and ordinary projective supremum, handles the stationary and scalar branches correctly, and closes the capacity definition only after dividing by positive interval length. Citation, assumption-provenance, explicit-rate, probability-mode, notation, hidden-subclaim, and target-assembly audits all pass. No producer, dependency, or sketch repair is required, so `ACCEPTED` and `None` are the smallest aligned outputs.
