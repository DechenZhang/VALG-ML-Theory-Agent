# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 3
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_004/proof.md,
  SHA-256
  c8619ac6aee61cbd10a6ffe6e02a56259b72039b497d845b17ee1423a5b1522c

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: The proposition states the exact inner-chart estimate
  \(\mu(H_{d,I_0})\leq\bar\kappa_0B_0(d,R)|I_0|\), with the target
  quantifiers and the required empty- and singleton-piece conclusion.
- Proof validity: The accepted disintegration interface supplies a measurable
  section-probability integrand. On the full-measure finite-cap set \(G_0\),
  the proof combines simultaneous kernel domination with the accepted inner
  image-length certificate to obtain the pointwise bound
  \[
  Q^0_y((E^0_{I_0})_y)
  \leq \widehat K_0(y)B_0(d,R)|I_0|.
  \]
  The right side is measurable, and only this cap-times-fixed-scalar
  majorant is integrated. The primitive mean bound then gives the exact
  displayed constant.
- Cited-result and assumption audit: Lemma~\ref{lem:step-001-unit-002},
  Lemma~\ref{lem:step-003-kernel-caps}, and
  Proposition~\ref{prop:step-003-disintegration} are accepted dependencies
  and are restated in current notation before use. Their support, Borelness,
  and kernel premises are discharged through the listed setting assumptions
  and the accepted dependency interfaces. No external theorem or extra
  primitive condition is introduced.
- Rigor checklist: Restriction to \(G_0\) precedes every cap product; the cap
  is finite there; \(B_0(d,R)|I_0|\) is a finite scalar; and the proof does
  not require measurability of
  \(y\mapsto\lambda(s_0(I_0;y))\). Empty and singleton images are treated
  directly, so neither a null fiber nor \(\bar\kappa_0=0\) creates a
  \(0\cdot\infty\) expression. The \(d=1\) empty-tuple case is covered.
- Local adversarial test: The argument remains valid for arbitrary endpoint
  conventions, a zero-length piece, a null set of conditioning fibers,
  \(\bar\kappa_0=0\), \(R=1\), and \(d=1\). No almost-sure uniform numerical
  cap is used.
- Contribution to target step: Supplies exactly the inner one of the three
  chart probability controls.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: The proposition states the exact positive-outer
  estimate
  \(\mu(H_{d,I_+})\leq\bar\kappa_\infty B_\infty(d,R)|I_+|\), including the
  required empty- and singleton-piece conclusion.
- Proof validity: The proof uses only the outer disintegration kernel. For
  \(d\geq2\), appending the pivot value zero makes every
  \(y\in G_\infty\) support-compatible, so the accepted positive-outer
  certificate applies; for \(d=1\), its empty-tuple specialization applies.
  The resulting section probability is bounded pointwise by the measurable
  majorant
  \(\widehat K_\infty(y)B_\infty(d,R)|I_+|\), whose integral is controlled by
  the exact outer mean-cap inequality.
- Cited-result and assumption audit:
  Proposition~\ref{prop:step-002-positive-outer-certificate},
  Lemma~\ref{lem:step-003-kernel-caps}, and
  Proposition~\ref{prop:step-003-disintegration} are accepted and are
  instantiated with the matching outer objects. The pivot-zero extension
  uses only \(0\in[-R,R]\) and introduces no generated assumption.
- Rigor checklist: The measurable section integrand and measurable
  cap-times-constant majorant justify the integration inequality without
  asserting image-length measurability. Cap finiteness is used only on the
  full-measure set. Arbitrary endpoints, approach to \(1\), empty and
  singleton pieces, and the degree-one boundary are all covered.
- Local adversarial test: The proof survives a singular conditioning
  marginal, unbounded pointwise cap values across fibers, a zero outer mean
  cap, and the common-kernel \(d=1\) specialization. It neither invokes the
  inner kernel nor combines the two outer signs.
- Contribution to target step: Supplies exactly the positive-outer chart
  probability control.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: The proposition states the exact negative-outer
  estimate
  \(\mu(H_{d,I_-})\leq\bar\kappa_\infty B_\infty(d,R)|I_-|\), including the
  required empty- and singleton-piece conclusion.
- Proof validity: The negative-chart disintegration is performed through the
  outer kernel, and the specifically negative accepted image certificate is
  applied after the support-compatible pivot-zero extension. The proof
  obtains the measurable pointwise majorant
  \(\widehat K_\infty(y)B_\infty(d,R)|I_-|\), integrates it, and applies the
  outer mean bound with no added factor.
- Cited-result and assumption audit:
  Proposition~\ref{prop:step-002-negative-outer-certificate},
  Lemma~\ref{lem:step-003-kernel-caps}, and
  Proposition~\ref{prop:step-003-disintegration} are accepted, explicitly
  restated, and used with their exact negative-chart and outer-kernel
  interfaces. No sign symmetry is substituted for the negative certificate.
- Rigor checklist: The same measurable-majorant, finite-cap, null-fiber, and
  zero-length safeguards as in unit_002 are present. Negative powers and the
  approach to \(-1\) are already discharged by the accepted sign-specific
  dependency, and \(d=1\) is handled by its exact empty-tuple specialization.
- Local adversarial test: The argument remains valid for every endpoint
  convention, singleton or empty \(I_-\), \(\bar\kappa_\infty=0\), and the
  degree-one common kernel. It performs no union, maximum, or sign-transfer
  step.
- Contribution to target step: Supplies exactly the negative-outer chart
  probability control.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. The
full-measure restriction and monotonicity of nonnegative integration are
restated elementary facts. The pivot-zero extension is a direct
support-compatible instantiation of the accepted outer propositions. Most
importantly, the proof never integrates
\(\widehat K_i(y)\lambda(s_i(I_\bullet;y))\): the possibly unverified
image-length function occurs only in a pointwise inequality, after which the
proof integrates the measurable capped scalar majorant. Thus no hidden
image-length measurability lemma is required.

## Target Claim Audit

The three propositions establish exactly the accepted step_004 row for every
\(d\geq1\), \(R\geq1\), \(\mu\in\mathcal D_{d,R,\eta}\), and
\(I\in\mathcal I(\Theta)\). The inner and outer conditioning kernels remain
separate for \(d\geq2\); at \(d=1\) the accepted common unconditional kernel
is used while the two primitive mean inequalities remain separate. Empty and
singleton chart pieces, arbitrary endpoints, and all three chart events are
covered. There is no stronger cap assumption, narrowed regime, quantifier
change, or probability-mode change.

## Explicit Rate Audit

The proof preserves the exact factors
\[
B_0(d,R)=d+\frac{Rd(d-1)}2,\qquad
B_\infty(d,R)=1+\frac{Rd(d-1)}2
\]
and the separate exposed multipliers
\(\bar\kappa_0|I_0|\),
\(\bar\kappa_\infty|I_+|\), and
\(\bar\kappa_\infty|I_-|\). There are no hidden constants, auxiliary
tolerances, confidence parameters, horizon terms, or absorption steps. The
mode is exact probability for each fixed law, and the norm inputs are
one-dimensional Lebesgue image length and conditional \(L^\infty\) density
caps. No union or maximum is taken in this step, so neither outer estimate
acquires a factor two. At \(d=1\), both structural factors reduce exactly to
one.

## Notation Surface Audit

The public-facing surface consists only of the setting-defined chart events,
piece lengths, cap parameters, structural factors, and the three exported
probability inequalities. The coordinate pairs, kernels, marginals,
measurable caps, and Borel lifts are appendix-local accepted step_003
objects. The sets \(G_0,G_\infty\) and pivot-zero extension are proof-local.
Their provenance and scope are explicit, no one-off alias hides a
boundedness or measurability obligation, and no helper object is exported
downstream.

## Target-Step Assembly Audit

Propositions~\ref{prop:step-004-inner-chart-probability},
\ref{prop:step-004-positive-outer-probability}, and
\ref{prop:step-004-negative-outer-probability} jointly give the exact three
target controls. The assembly cites the theorem-style names and stable
labels, uses local unit IDs only as audit handles, applies the two mean caps
through their matching kernels, and correctly leaves union and maximum
operations to the next step.

## Review Rationale

The submitted proof closes every obligation in the accepted sketch row using
only the three accepted dependencies and the listed primitive assumptions.
Its conditioning calculations are separate where required, its degree-one
specialization is exact, and its measurable-majorant argument makes all
three integrations legal without an additional image-length measurability
claim. Because no local, sketch-level, or dependency defect remains,
ACCEPTED with Smallest Retry Target equal to None is the required disposition.
