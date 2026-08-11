# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_016`
- Unit attempt: 4
- Review attempt: 5
- Reviewed proof artifact:
  `perspective_2/idea_4/proof_steps/step_016/proof.md`
- Reviewed proof SHA-256:
  `7a565cffb18401dbd1dbbf5ec0634ef0d22b5d99027c4a551e8baa403cd6218d`
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Accepted proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Accepted proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency `step_002` proof/review SHA-256:
  `880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f` /
  `090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5`
- Accepted dependency `step_003` proof/review SHA-256:
  `b55c3326656c172d547fc0e26cc17d5ec006ef35a631e7c98934c6bd078d3280` /
  `c39a5a44a4c9e0b6bc33f6ceaa9ce98e5f00c61dc4ee701d301f0f96e8fa51aa`
- Accepted dependency `step_014` proof/review SHA-256:
  `d2185eaf630add3a9369e2f5f101b6d77e584b45297af80057d521836b54e4de` /
  `eb0461f192edd46bc09b9466b8ee074a851c186d971218907c64bdb817028d15`
- Accepted dependency `step_015` proof/review SHA-256:
  `c06105f1721b8835a667cda698b81615b38c20825cbbee39bd9e676cb5ada9d0` /
  `6e6446ea757ce611db32ea38898959e19a2ce0ac287a24d3e243e4458d979c09`
- Dependency closure audit: all live direct and transitive files match the
  current accepted reviews. Step 002 has no dependencies. The accepted Step
  003 pair binds the current Step 001 and Step 002 pairs and contains the
  repaired universal pointwise-law promotion with only arm-specific null-law
  specialization. The accepted Step 014 pair binds the current Steps 001,
  002, 007, 011, and 013 pairs; the accepted Step 011 and Step 013 reviews in
  turn bind the current ancestor closure through Steps 003-006, 008-010, and
  012. The accepted Step 015 pair binds the exact current Steps 002, 003, and
  004 pairs. Shared ancestor identities agree throughout.
- Evidence boundary: no `proof_history/` artifact was read or used as
  current evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Shared exact zero-sample learner

- Statement fidelity: The proposition states the exact common `d=0` target:
  `v=0`, singleton raw and quotient classes, the identical finite, old, and
  VC Dirac law at sample size zero, `(0,0)` privacy, zero decoded risk, and
  `m_C=0`.
- Proof validity: Accepted Step 002 proves the singleton and dimension
  conclusions and exact risk transfer. The displayed empty-input Dirac law is
  a kernel and is data independent. Current accepted Steps 014 and 015 supply
  the same arm-specific quotient output, so the three laws are literally
  equal.
- Cited-result and assumption audit: Every invoked label is present in the
  current accepted Step 002, Step 014, or Step 015 pair. No property of the
  generally larger improper space `H_C` is mistaken for singletonness.
- Rigor checklist: The proof is uniform over `D,c`, uses the allowed
  `N=0` value, and evaluates no positive-dimensional denominator, ceiling,
  partition, or limiting expression.
- Local adversarial test: A singleton concept may induce multiple quotient
  cells and `H_C` may contain other improper functions; the unique
  `bar c_0` nevertheless decodes exactly to the unique target, so the
  conclusion survives this boundary.
- Contribution to target step: It establishes the required common null law
  before any finite positive-dimensional construction or comparison.
- Verdict: PASS
- Repair direction: None.

### unit_002: Measurable finite quotient exponential-weight kernel

- Statement fidelity: The proposition constructs the finite arm on the fixed
  full class `bar C`, for every finite sample size and every labeled
  quotient input, with output in `H_C` and raw pullback through `T_N`.
- Proof validity: Factorization gives `|bar C|=M>=1`. Every exponential
  weight is positive, the normalizer is a finite positive sum, and the law is
  an everywhere-defined Borel probability measure. The accepted countable
  promotion theorem makes its event-mass coordinates a quotient kernel, and
  measurable composition with `T_N` gives the raw kernel.
- Cited-result and assumption audit: The current Step 003 proposition
  explicitly applies to every separately supplied pointwise Borel law,
  without support, propriety, or transcript restrictions; its repaired null
  clause does not impose a generic Dirac law. This is exactly the scope used
  here.
- Rigor checklist: The construction covers `N=0`, `M=1`, arbitrary and
  nonrealizable labels, duplicate records, and finite or countably infinite
  quotient domains. The range is data independent.
- Local adversarial test: At empty input the weights are uniform on the fixed
  finite class; arbitrary changes of support masses across input atoms remain
  measurable because the quotient input sigma-field is discrete.
- Contribution to target step: It supplies the finite arm's complete
  quotient/raw Markov-kernel interface without a finite surrogate.
- Verdict: PASS
- Repair direction: None.

### unit_003: Pure all-input privacy of finite private ERM

- Statement fidelity: The proposition proves pure `epsilon`-DP for both
  quotient and raw finite laws on every replace-one labeled input, stronger
  than the required approximate-DP interface.
- Proof validity: One replacement changes every mistake count by at most one.
  The numerator changes by at most `exp(epsilon/2)` and the normalizer by at
  least `exp(-epsilon/2)`, giving the exact eventwise
  `exp(epsilon)` ratio. Accepted neighbor transport covers equal quotient
  images as well as strict quotient neighbors.
- Cited-result and assumption audit: Privacy is derived directly from the
  local kernel and accepted record-map result. Neither realizability, a good
  event, nor an external exponential-mechanism theorem is used.
- Rigor checklist: The finite sums justify the event calculation, adjacency
  is symmetric, and arbitrary label changes, same-cell replacements,
  nonrealizable inputs, and `N=0` are covered.
- Local adversarial test: A replacement may simultaneously change the
  preferred hypothesis and the normalizer; the two half-privacy comparisons
  still give the full ratio.
- Contribution to target step: It proves the finite arm's all-input privacy
  with no hidden sensitivity or utility premise.
- Verdict: PASS
- Repair direction: None.

### unit_004: Direct unconditional realizable risk tail

- Statement fidelity: The lemma gives the required unconditional raw
  decoded-risk probability over both iid data and mechanism randomness,
  uniformly over every `D,c`.
- Proof validity: Realizability gives the target concept unit weight and
  normalizer at least one. For each fixed candidate, the expected Gibbs
  weight is the exact Bernoulli transform
  `[1-p(1-exp(-epsilon/2))]^N`. The displayed scalar proof gives
  `1-exp(-epsilon/2)>=epsilon/4`; summing over the fixed finite bad set
  yields `M exp(-N epsilon alpha/4)`. Exact iid pushforward and risk
  equality identify this with the raw event.
- Cited-result and assumption audit: Independence and the Bernoulli mean come
  only from the primitive realizable-iid condition. The two Step 002
  transport propositions are current and quantify over every improper
  output. No concentration theorem or selected-output independence is
  assumed.
- Rigor checklist: The sum and expectation interchange is finite, strict
  risk `p>alpha` is used in the valid direction, and `p=0`, `p=1`,
  an empty bad set, and `N=0` are harmless.
- Local adversarial test: A high-risk hypothesis can fit an individual sample
  perfectly; integrating its exact exponential weight still supplies the
  claimed tail without a separate uniform-convergence event.
- Contribution to target step: It establishes the finite arm's complete
  unconditional PAC conversion.
- Verdict: PASS
- Repair direction: None.

### unit_005: Ceiling-aware complete finite-class arm

- Statement fidelity: The proposition combines the finite kernel, privacy,
  and tail into a complete learner, preserves the exact singleton branch,
  pays every ceiling, and assigns only the unavailable finite arm cost
  `+infinity` when the class is infinite.
- Proof validity: On `d>=1`, the chosen integer sample size gives
  `N_fin epsilon alpha/4 >= log M+log(1/beta)`, hence failure at most
  `beta`. The proof establishes the ceiling helper exceeds one, uses
  `ceil(x)<=2x`, and then `log M<=log^+ M` to obtain
  `N_fin<=8 R_fin`.
- Cited-result and assumption audit: All inputs are primitive conditions or
  preceding named local results. Finiteness is a target case split, not a new
  theorem-facing assumption.
- Rigor checklist: `M=1` is handled by the exact zero-sample branch;
  `d>=1` implies `M>=2`; all constants are numerical; and no additional
  sampling term or hidden logarithm is introduced.
- Local adversarial test: Infinite `C` creates no empirical range,
  truncation, representative, or surrogate. The old and VC arms are not
  changed by disabling the finite arm.
- Contribution to target step: It exports the normalized finite-arm tuple
  with explicit constant 8 and logarithmic exponent zero.
- Verdict: PASS
- Repair direction: None.

### unit_006: Minimum of three complete common-interface learners

- Statement fidelity: The proposition compares only complete learners with
  the same quotient output space, decoder, raw adjacency, population-risk
  norm, confidence level, and unconditional probability mode, and selects
  one entire learner before observing data.
- Proof validity: Current accepted Step 014 supplies the VC row; current
  accepted Step 015 propositions supply the old kernel, privacy, PAC, and
  rate row; unit 005 supplies the finite row when available. Selecting the
  least certified threshold is allowed to depend on the public class and
  parameters. Each actual sample size is below its threshold, and
  `Lambda>=1` plus the universal maximum constant gives the common
  `Lambda^6` envelope and the minimum bound.
- Cited-result and assumption audit: All six Step 015 labels used across this
  step are present in producer attempt 3 and accepted by Review attempt 3.
  The Step 014 and Step 002 interfaces match their live accepted pairs.
- Rigor checklist: Different arms may use different sample sizes and laws.
  No random arm choice, mixture, sample split, post-selection, or union bound
  occurs. With infinite `C`, the extended-real finite threshold is omitted
  while two finite certified thresholds remain.
- Local adversarial test: The arm with the smallest certified threshold need
  not minimize the unknown actual sample sizes; its actual size is still
  bounded by the minimum certified threshold, which is exactly what the
  sample-complexity argument requires.
- Contribution to target step: It proves the deterministic common-interface
  three-arm minimum without mixing laws.
- Verdict: PASS
- Repair direction: None.

### unit_007: Boundary-preserving fixed-parameter frontier

- Statement fidelity: The proposition states every requested `d=0`,
  `M=1`, `v=1`, `v=d`, finite/infinite, fixed-`delta`,
  selected-schedule, standalone-old-schedule, and conditional-scope
  conclusion.
- Proof validity: A positive Littlestone dimension gives `v>=1`, while a
  VC-shattered set yields a same-depth Littlestone tree and hence `v<=d`.
  Direct algebra gives `v d^4=d^5` at `v=d` and ratio `v/d` between
  the exposed Lyu factors. The selected actual sample size is no larger than
  the VC certified threshold regardless of which arm wins, so the exact
  VC-arm schedule implies `N_* delta -> 0`. The old arm's numerical limit
  is invoked only under its separate accepted sufficient condition.
- Cited-result and assumption audit: The unit uses only named local results,
  the current accepted VC-arm proposition, and the current accepted old-arm
  rate and boundary propositions. Fixed-parameter validity is not derived
  from an asymptotic premise.
- Rigor checklist: Pure privacy of the finite arm is not confused with a
  numerical `N_fin delta` limit. The fixed-parameter frontier suppresses
  only permitted logarithms, and the structural arm comparison is not
  presented as a lower bound or characterization.
- Local adversarial test: The conclusions remain valid at `d=0`,
  `d=v=1`, `v=o(d)`, `v=d`, finite and infinite classes, fixed
  positive `delta`, and only the exact declared small-`delta` schedules.
- Contribution to target step: It exports the exact conditional frontier
  while expressly leaving uncountable evaluation quotients and the
  unrestricted DP-PAC problem open.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the seven-unit map. Unit
001 isolates the common null law; unit 002 proves finite-law totality and
measurability; unit 003 proves the full numerator/normalizer privacy ratio;
unit 004 proves the Bernoulli-integrated risk tail and raw transport; unit
005 pays the confidence threshold, ceiling, singleton, and infinite-class
boundaries; unit 006 certifies and selects among complete learner tuples; and
unit 007 proves the dimension, schedule, scaling, and remaining-open-scope
statements. The dependency-refresh discussion is provenance, not a hidden
mathematical lemma. No external citation, diagnostic artifact, subsection
title, or bare local-unit ID is used as proof authority.

## Target Claim Audit

The seven named results establish the exact accepted `step_016` row and the
controller-expanded target under the four primitive setting assumptions and
the current accepted Steps 002, 003, 014, and 015. The proof constructs the
fixed finite quotient law, proves its quotient/raw kernel interfaces, pure
all-input privacy, unconditional uniform PAC tail, integer sample size, and
exact `R_fin` normalization. It assigns `+infinity` only to the finite
arm for an infinite class, compares three already complete interfaces, and
proves every required boundary and schedule. No assumption, dependency,
quantifier, output space, norm, probability mode, or theorem scope drifts.
The conclusion remains explicitly conditional on a finite-or-countable
measurable evaluation quotient and does not claim to solve the unrestricted
open problem.

## Explicit Rate Audit

- Exposed variables: `|C|,d,v,alpha,beta,epsilon,delta`; cardinality appears
  only in the finite arm.
- Hidden constants: the finite arm uses explicit constant 8 and exponent 0;
  the accepted VC arm uses universal `K_V` and exponent 4; the accepted old
  arm uses universal `K_old` and exponent 6; their maximum and the common
  exponent 6 are universal and parameter independent.
- Fixed quantities and modes: the finite-parameter result holds pointwise for
  every allowed tuple, with all-input replace-one DP, unconditional uniform
  realizable PAC, one fixed sample for the preselected arm, and decoded
  binary population risk. The class-complexity shorthand fixes
  `alpha,beta,epsilon` and uses the declared small-`delta` convention.
- Quantitative bridges: the proof displays the Gibbs coefficient bound, the
  complete finite tail, the confidence threshold, the paid integer ceiling,
  the `log M<=log^+M` comparison, the common threshold minimum, and the
  structural and schedule inequalities. No term or positive power is
  absorbed by prose.
- Probability conversion: exact iid pushforward and risk equality transfer
  the finite quotient tail with no confidence loss; deterministic arm
  selection needs no union bound.
- Baseline reduction: zero-sample recovery, `v=1`, exact `v=d`,
  finite/infinite cardinality, fixed positive `delta`, the selected
  learner's schedule, and the standalone old schedule are all preserved.

## Notation Surface Audit

The setting notation retains its original meaning. Public-facing outputs are
limited to the finite learner at `N_fin`, its sample size and explicit
constant, and the selected learner, `N_*`, common constant, and exponent.
Generic finite-kernel families, empirical counts, weights, normalizers, and
certified thresholds are appropriately appendix-local. Candidate risks, the
finite bad set, ceiling helpers, and the deterministic tie index are
proof-local and eliminated. Every helper is defined from setting quantities,
an accepted dependency, or a named local derivation. The old kernel symbol
and old universal scalar remain distinct, and no helper hides measurability,
finiteness, positivity, constant dependence, or a generated condition.

## Target-Step Assembly Audit

The assembly cites all seven theorem-style results in dependency order.
The zero proposition isolates the null branch; the finite-kernel, finite-DP,
and finite-tail results construct and certify the finite learner; the
finite-arm proposition chooses and normalizes its integer sample size; the
minimum proposition compares complete tuples; and the frontier proposition
proves every specialization and scope boundary.

Accepted Steps 002 and 003 supply exactly the factorization, dimensions,
record/sample/risk transport, universal pointwise-law promotion, and raw
pullback used locally. Accepted Step 014 supplies the complete VC tuple.
Accepted Step 015 producer attempt 3 and Review attempt 3 supply the exact
null, kernel, DP, PAC, rate, and boundary labels consumed here. These
dependencies and local results jointly imply every target clause without an
unreviewed lemma, stale pair, mixed law, or missing producer-consumer path.

## Review Rationale

`ACCEPTED` with `Smallest Retry Target = None` is the smallest sound
decision. All binding hashes, direct dependencies, and transitive identities
match the current artifacts. Independent review of all seven local units
validates their statements, labels, derivations, assumption discharge,
dependency applications, explicit-rate inequalities, boundary cases, helper
classification, hidden-subclaim coverage, and final assembly. No local proof
flaw, dependency flaw, or sketch-interface change remains.
