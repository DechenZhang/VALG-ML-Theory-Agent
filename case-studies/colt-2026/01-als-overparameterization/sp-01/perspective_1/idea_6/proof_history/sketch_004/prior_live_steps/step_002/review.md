# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: `step_002`
- Unit attempt: 1
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_002/proof.md`
- Frozen SHA-256:
  `401650914ed192f87bedf38edd9b10789c41f92cb8ff3519a50e6fbf486ac77b`
- Accepted dependency:
  `perspective_1/idea_6/proof_steps/step_001/proof.md`, frozen SHA-256
  `83ce9b561ae357ace3afd0f3be937b154643ab0b4b008b14bd16a6aabf7b9764`,
  with review SHA-256
  `4313048f58f570d9427ed2f59c3962b113c076e5a9381592de4e7e77e23e3458`
  and `Step-Review Status = ACCEPTED`.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Realized-Gram Gaussian regression

- Statement fidelity: The lemma uses exactly the primitive
  `assump:random-initialization` condition and the accepted derived event
  `E_sm`. It fixes a realized instance, target, slot, and mode, and exports
  only the conditional competitor law needed downstream. Conditioning on
  target coordinates is local to the regular-conditional calculation and is
  not promoted to an assumption or generated event.
- Proof validity: For `Z^(M)=G_M^T xi^(M)`, the covariance is the realized
  Gram `H_M` and the target variance is one. The displayed Gaussian
  regression mean and Schur-complement covariance are therefore exact. Each
  residual coordinate has variance `1-(H_M)_(ell j)^2<=1`, and the accepted
  row-mass bound gives the stated mean bound on the complete target window.
  Conditional independence of the three residual vectors follows from the
  independent raw vectors in the three modes.
- Cited-result and assumption audit: The accepted dependency is restated in
  current notation and its proof/review hashes match the frozen artifacts.
  The Gaussian regression identity is stated with its covariance and
  singular-covariance scope. No independence across competitor labels within
  one mode is used.
- Rigor checklist: The quantifiers cover every mode and every competitor;
  the scalar target variance is nonzero, while residual covariance may be
  singular and is still handled by the formula. The fixed-instance proposal
  probability is kept separate from the smoothing probability.
- Local adversarial test: Perfectly correlated competitor coordinates and
  zero conditional variances leave the regression identity and the variance
  bound valid. The proof does not silently replace the correlated residual
  vector by independent coordinates.
- Contribution to target step: Supplies the exact Gram-induced shifts,
  variance bounds, and cross-mode independence used by units 003 and 004.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact three-target window mass

- Statement fidelity: The lemma proves the exact one-mode and three-mode
  absolute-window probabilities at the setting level `t_r`, for every fixed
  realized unit target and every `r>=3`, under only the primitive proposal
  randomness.
- Proof validity: Monotonicity of the standard-normal density over an
  interval of width `t_r^(-1)` gives both endpoint bounds. Expanding the
  upper endpoint yields the factor `r^(-5/9)(log r)^(-1/2)` and the explicit
  worst-case lower constant at `r=3`. The three target coordinates use
  independent mode vectors, so cubing gives the exponent `5/3` and the
  logarithmic power `-3/2`.
- Cited-result and assumption audit: Unit-column normalization makes each
  target coordinate standard normal, and the stated initialization assumption
  supplies exactly the cross-mode independence. No target geometry beyond
  unit norm is imported.
- Rigor checklist: The factor two for the absolute window, interval width,
  endpoint correction, and all finite-r restrictions are explicit. The
  constants are positive and independent of the realized instance, target,
  rank, and confidence parameters.
- Local adversarial test: The lower bound remains valid at the smallest
  allowed rank and for either target-coordinate sign; no asymptotic
  large-r shortcut is used.
- Contribution to target step: Supplies the complete polynomial and
  logarithmic target-window rate.
- Verdict: PASS
- Repair direction: None.

### unit_003: Shifted Gaussian competitor-product tail

- Statement fidelity: The lemma takes the exact conditional shifted-Gaussian
  interface supplied by unit 001 and proves the required tail for every
  competitor and every unordered pair of distinct modes.
- Proof validity: Distinct-mode residuals can be represented as independent
  standard normals with scale factors in `[0,1]` and shifts bounded by
  `m_r`. The implication `|XY|>B_r => X^2+Y^2>2B_r`, followed by the
  Euclidean triangle inequality, gives the threshold
  `2(sqrt(B_r)-m_r)^2` for `G^2+H^2`. The exact two-dimensional radial tail
  then gives `exp(-(sqrt(B_r)-m_r)^2)`. Substitution of the target window
  and the displayed numerical estimates proves `beta_*>1.053` uniformly for
  all `r>=3`.
- Cited-result and assumption audit: The radial Gaussian tail is restated in
  current notation, and the regression means, scales, and cross-mode
  independence are discharged by unit 001 and the accepted `E_sm` event.
  No label independence is assumed.
- Rigor checklist: The argument covers arbitrary shift signs and degenerate
  scale factors, and it checks positivity of the subtracted threshold before
  applying the radial tail. The exponent and all fixed constants are exposed.
- Local adversarial test: Taking both shifts at their maximal magnitude and
  both residual scales equal to one is the worst case for the Euclidean bound;
  the strict exponent margin still remains above one.
- Contribution to target step: Makes the union over the `3(r-1)` same-label
  mode pairs summable at large rank.
- Verdict: PASS
- Repair direction: None.

### unit_004: Uniform competitor-pair survival

- Statement fidelity: The proposition proves a target-, instance-, and
  rank-uniform positive conditional probability for the complete competitor
  event, including both the large-r and finite-small-r regimes.
- Proof validity: For `r>=r_*`, the union bound over exactly `3(r-1)` pair
  events is at most one half because `beta_*>1` and the displayed cutoff is
  chosen so that `r^(beta_*-1)>=6`. For the remaining finite ranks, the
  residual vector in each mode is centered Gaussian (possibly singular), and
  the stated Gaussian correlation/Sidak box inequality gives a product lower
  bound for all coordinate slabs without assuming within-mode independence.
  Each marginal variance is at most one, so its slab probability is at least
  the standard-normal slab probability. Cross-mode independence then gives
  the exponent `3(r-1)`. The finite minimum is over a genuinely finite set
  of strictly positive widths `d_r`, hence defines a universal positive
  constant.
- Cited-result and assumption audit: The Gaussian box inequality is
  restated with its centered, symmetric-convex, and singular-covariance
  scope. Its hypotheses are discharged by the centered Schur-complement
  residuals from unit 001; the cross-mode product uses only the primitive
  initialization independence.
- Rigor checklist: The threshold relation `d_r+m_r=sqrt(b_* log r)` is
  exact, the finite cutoff and positivity are displayed, and no dependence
  across competitor labels is smuggled into either branch.
- Local adversarial test: Arbitrary negative or positive within-mode
  correlations, including singular covariance, are covered by the Gaussian
  box inequality; the finite-r argument remains valid even when the large-r
  union bound is not useful.
- Contribution to target step: Shows that competitor control costs only a
  universal constant fraction of the target-window probability.
- Verdict: PASS
- Repair direction: None.

### unit_005: Three-mode proposal window and ratio transfer

- Statement fidelity: The proposition packages the exact proof-only target
  event `E_win`, the uniform lower envelope `p_win`, both sides of the
  required probability rate, and the downstream `R_0,S_0` interface. The
  target label is explicitly proof-only and is not an algorithmic input.
- Proof validity: The pointwise conditional survival bound from unit 004 is
  integrated over the target window to obtain the lower probability bound;
  event inclusion gives the upper bound. Raw-vector normalization cancels in
  each same-mode ratio. The target pair denominator is at least
  `t_r^2=a_* log r`, while each competitor numerator is at most
  `b_* log r`, giving `R_0<=b_*/a_*=19/20`; summing at most `r-1` terms gives
  `S_0<=r R_0`. The displayed `Gamma,q_real` bounds also yield the stated
  initial denominator margin.
- Cited-result and assumption audit: Every input is a named local result or
  the accepted `E_sm` dependency. The conditional notation `Pr(...|T)` is
  used for the fixed realized-instance proposal law established in the
  preceding statements; no smoothing or target-label probability is mixed
  into it.
- Rigor checklist: Target denominators are nonzero on the window, the
  conditional-to-joint integration is in the correct order, and taking a
  finite minimum over targets preserves both comparison bounds. No coverage,
  trajectory, or confidence claim is imported.
- Local adversarial test: Saturating all competitor inequalities only
  saturates the conservative `19/20` and `r R_0` interfaces; arbitrary signs
  and raw initializer norms cancel exactly.
- Contribution to target step: Exports the required `E_win,p_win` rate and
  the same-target entry ratios consumed by the coverage/recurrence steps.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial claim is hidden outside the local lemma map. The
regression law, narrow-window integral, shifted product tail, finite-r
correlated-Gaussian survival bound, conditional-to-joint integration, and
ratio transfer each have a named theorem-style result and matching
derivation. The assembly uses those results explicitly and introduces no
trajectory, coverage, target-chart, or label-access assumption.

## Target Claim Audit

The frozen sketch-2 proof establishes the exact `step_002` row for every
fixed realized instance in `E_sm`: for every proof-only target and proposal
slot it defines the setting-aligned event `E_win` and proves universal
two-sided bounds

`c_all r^(-5/3)(log r)^(-3/2) <= Pr(E_win|T) <= C_win r^(-5/3)(log r)^(-3/2)`.

The lower envelope `p_win` has the same bounds, and every event witness
exports `R_0<=19/20` and `S_0<=r R_0`. The proof preserves the nested
instance-then-initialization probability mode and does not claim cross-target
independence or later coverage.

## Explicit Rate Audit

The explicit-rate contract passes. The exposed variable is `r`, with fixed
setting constants `q_*=1/4096`, `a_*=10/9`, and `b_*=19/18`. The comparison
constants `c_all` and `C_win` are explicitly built from the Gaussian window,
the exponent `beta_*`, the large-r cutoff, and the finite positive minimum;
they do not depend on `n`, `k`, `kappa_0`, `rho`, either confidence
parameter, accuracy, the base triple, the realized instance, target, slot,
or any generated condition number. The fixed-instance conditional
probability mode, static initialization horizon, and scalar/product norm
modes are stated. The proof displays the `5/3` exponent, the
`(log r)^(-3/2)` factor, the `beta_*>1` union margin, and the finite-r
probability conversion, with no prose-only term absorption. The orthogonal
equal-weight zero-smoothing limit removes the regression shifts and leaves
the same rate without a positive residual floor.

## Notation Surface Audit

`H_M`, the regression residuals, target-window and product thresholds,
`beta_*`, the finite cutoff, and the comparison constants are all defined
from setting quantities or accepted dependency outputs and are classified as
proof-local or appendix-local. Only `E_win`, `p_win`, and their comparison
constants are exported. Target labels and conditional target values are
explicitly proof-only; no generated event is treated as a primitive
assumption. The notation does not rebind setting objects or hide a
condition-number dependence.

## Target-Step Assembly Audit

The accepted `step_001` artifact supplies unit realized columns and the
`q_real<=q_*` Gram-row interface. Unit 001 converts that interface to the
conditional Gaussian law; unit 002 supplies the exact target-window rate;
unit 003 supplies a shifted tail with exponent above one; unit 004 supplies
uniform competitor survival for both rank regimes; and unit 005 integrates
the result and performs the exact raw-coordinate-to-ratio transfer. These
named results jointly imply every field of the accepted sketch row without a
new dependency, hidden bridge, or changed target.

## Review Rationale

`ACCEPTED` is the smallest controlled outcome. The frozen proof matches
sketch attempt 2 and the exact reviewed dependency hash, proves all five
local units under the permitted assumptions, handles correlated and
singular competitor coordinates, preserves the two-sided polynomial/log
rate, and exports the required `E_win`, `p_win`, `R_0`, and `S_0` interfaces.
No local derivation, dependency, notation, rate, baseline, or target-step
assembly defect requires a retry.
