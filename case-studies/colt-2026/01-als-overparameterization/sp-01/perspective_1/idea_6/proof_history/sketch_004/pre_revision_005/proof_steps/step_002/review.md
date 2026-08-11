# Proof Step Review

## Step Review Identity

- Sketch attempt: 4
- Step ID: `step_002`
- Unit attempt: 1
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_002/proof.md`
- Reviewed proof SHA-256:
  `5e1b4aa1e6fa8a95a9a3a0318b885ce1706a2222f5cfdc65695f7113447118f8`
- Binding sketch SHA-256:
  `47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b`
- Binding sketch-review SHA-256:
  `eda7c6672f755411db44e1ee214cf23ca1151429749140d0e3deffd4d5e40aa9`
- Accepted dependency proof:
  `perspective_1/idea_6/proof_steps/step_001/proof.md`, SHA-256
  `7fab685e663df565c7e1ec99484ed86f5393e35aa0398047c23a866c29fc3362`
- Accepted dependency review:
  `perspective_1/idea_6/proof_steps/step_001/review.md`, SHA-256
  `2acfd5b7208c925aa28de3a57045bf6c3a0ad25cb3a0512e0e920fce1904a177`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Realized-Gram Gaussian regression

- Statement fidelity: PASS. Lemma~\ref{lem:p1-i6-s002-regression} states the
  exact conditional-coordinate interface required by the sketch: the
  competitor vector has mean `H_M(-j,j)x`, Schur-complement covariance,
  coordinate variances at most one, shifts at most
  `q_*(t_r+t_r^(-1))`, and independent residual vectors across the three
  modes.
- Proof validity: PASS. For `Z_i^(M)=G_M^T xi_i^(M)`, the conditional Gaussian
  formula gives covariance
  `H_M(-j,-j)-H_M(-j,j)H_M(j,-j)`. Its `ell`th diagonal is
  `1-H_M(ell,j)^2<=1`. The accepted `q(G_M)<=q_*` conclusion implies both
  `|H_M(ell,j)|<=q_*` and the displayed shift bound. Conditioning is modewise,
  so independence of the three raw Gaussian vectors gives independence of the
  three residual vectors. The argument remains valid for a singular Schur
  complement.
- Cited-result and assumption audit: PASS. Gaussian regression is restated in
  current notation, including its singular-covariance case. The unit uses only
  Assumption~\ref{assump:random-initialization} and the accepted unit-column and
  Gram-row outputs of `E_sm`; target values are local regular-conditional
  hypotheses and are integrated out later.
- Rigor checklist: PASS. The fixed-instance, slot, target, and mode quantifiers
  are explicit. No same-mode label independence, density with respect to a
  nonsingular covariance, or unconditional-to-conditional upgrade is used.
- Local adversarial test: PASS. Perfectly correlated or degenerate competitor
  residual coordinates do not affect the coordinate variance bound or
  cross-mode independence. Arbitrarily signed Gram entries are covered by the
  absolute row-mass bound.
- Contribution to target step: Supplies the exact correlated-competitor law
  used by the product-tail and finite-r survival arguments.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact three-target window mass

- Statement fidelity: PASS. Lemma~\ref{lem:p1-i6-s002-target-window} gives
  universal two-sided constants for each one-mode window and, after cubing,
  the exact three-mode rate
  `r^(-5/3)(log r)^(-3/2)` required by the accepted sketch row.
- Proof validity: PASS. With `w=t_r^(-1)`, monotonicity of the standard normal
  density gives the two endpoint bounds. Substitution of
  `t_r^2=a_* log r` yields the upper constant
  `C_t=sqrt(2/(pi a_*))` and the lower multiplier
  `exp(-1-1/(2a_*log r))`, uniformly bounded below by its value at `r=3`.
  Since `a_*/2=5/9`, the one-mode exponent is `5/9`; independence of target
  coordinates across modes gives `3(5/9)=5/3` and cubes the logarithmic
  factor.
- Cited-result and assumption audit: PASS. The elementary normal-window
  integral is restated and proved from density monotonicity. Unit-column
  geometry makes every target coordinate standard normal, and
  Assumption~\ref{assump:random-initialization} supplies the three-mode
  independence.
- Rigor checklist: PASS. The constants are positive and universal for every
  `r>=3`; no asymptotic Mills-ratio equivalence or hidden large-r threshold is
  used. Endpoint inclusion is immaterial for continuous target coordinates.
- Local adversarial test: PASS. At the smallest allowed rank `r=3`, the stated
  lower constant is exactly the conservative endpoint factor, so the bound
  does not rely on an unstated asymptotic regime.
- Contribution to target step: Supplies the full target-window probability
  before competitor survival is integrated.
- Verdict: PASS
- Repair direction: None.

### unit_003: Shifted Gaussian competitor-product tail

- Statement fidelity: PASS. Lemma~\ref{lem:p1-i6-s002-pair-tail} proves a
  uniform conditional failure probability `r^(-beta_*)` for every competitor
  and every distinct-mode pair, with an explicit exponent strictly above one.
- Proof validity: PASS. Writing the two conditioned coordinates as
  `X=mu+sigma G`, `Y=nu+tau H`, cross-mode independence makes `G,H`
  independent and the regression lemma gives `sigma,tau<=1` and
  `|mu|,|nu|<=m_r`. If `|XY|>B_r`, then
  `||(X,Y)||_2>sqrt(2B_r)`. The reverse triangle inequality and
  `||(sigma G,tau H)||_2<=sqrt(G^2+H^2)` therefore imply
  `G^2+H^2>2(sqrt(B_r)-m_r)^2`. The exact chi-square-two tail is then
  `exp(-(sqrt(B_r)-m_r)^2)`. Factoring `sqrt(log r)` and using `r>=3` gives
  the displayed `beta_*`; direct numerical bounding gives
  `beta_*>1.053>1`.
- Cited-result and assumption audit: PASS. The radial Gaussian tail is
  restated exactly, and its independence hypothesis is discharged only across
  distinct modes. The conditional mean and variance inputs come from
  Lemma~\ref{lem:p1-i6-s002-regression}; no within-mode independence or
  independence across competitor labels is invoked.
- Rigor checklist: PASS. The proof verifies `sqrt(B_r)-m_r>0`, handles zero
  residual variance, preserves conditioning on the full target triple, and
  exposes every numerical dependence in `beta_*`.
- Local adversarial test: PASS. Taking both conditional shifts with the worst
  sign and both residual variances equal to one is exactly dominated by the
  radial event used in the proof. Smaller or singular residual variances can
  only reduce that envelope.
- Contribution to target step: The strict margin `beta_*-1>0` makes the
  `3(r-1)` competitor union summable for all sufficiently large ranks.
- Verdict: PASS
- Repair direction: None.

### unit_004: Uniform competitor-pair survival

- Statement fidelity: PASS. Proposition~\ref{prop:p1-i6-s002-survival}
  supplies one universal positive conditional survival factor for every
  `r>=3`, every target triple in the windows, and every admissible realized
  covariance, including correlated and singular same-mode residual vectors.
- Proof validity: PASS. For
  `r_* = ceil(6^(1/(beta_*-1))) vee 3`, the union bound is
  `3(r-1)r^(-beta_*)<=3r^(1-beta_*)<=1/2` when `r>=r_*`. For each remaining
  integer rank, the sufficient box event
  `|Y_{M,j,ell}|<=d_r=sqrt(B_r)-m_r` forces every conditioned coordinate to
  have magnitude at most `sqrt(B_r)` and hence forces all three pair-product
  constraints. Successive Gaussian correlation for symmetric slabs gives at
  least `Pr(|G|<=d_r)^(r-1)` per mode because every marginal variance is at
  most one. Cross-mode residual independence cubes this bound. The minimum is
  over finitely many positive quantities, so `c_pair>0` is uniform.
- Cited-result and assumption audit: PASS. The Gaussian correlation box
  inequality is restated for possibly singular centered Gaussian vectors and
  applied only to symmetric convex slabs. Its marginal comparison and the
  cross-mode product are separately justified by the regression lemma and
  Assumption~\ref{assump:random-initialization}.
- Rigor checklist: PASS. The large-r union needs no dependence assumptions;
  the small-r construction needs no within-mode label independence. Positivity
  of every `d_r` follows from the displayed exponent bracket, and the empty
  finite-set convention is stated.
- Local adversarial test: PASS. Even if all same-mode competitor residuals are
  maximally correlated or the covariance is supported on a proper subspace,
  Gaussian correlation still gives the box lower bound. The construction also
  covers the finite ranks for which the union bound alone is ineffective.
- Contribution to target step: Supplies the universal conditional factor that
  converts target-window mass into the lower half of the two-sided rate.
- Verdict: PASS
- Repair direction: None.

### unit_005: Three-mode window event and rate envelope

- Statement fidelity: PASS. Proposition~\ref{prop:p1-i6-s002-assembly}
  defines the exact `E_win(i,j)` event, proves the required conditional
  two-sided probability with universal constants, exports the public lower
  envelope `p_win(r)`, and establishes the sketch-required initial ratio
  bounds `R_0<=19/20` and `S_0<=rR_0`.
- Proof validity: PASS. Integrating the uniform conditional survival bound over
  the three target coordinates gives
  `c_pair Pr(A_{i,j}|T)<=Pr(E_win(i,j)|T)`; event inclusion gives the upper
  bound. Lemma~\ref{lem:p1-i6-s002-target-window} then supplies both exact rate
  exponents. Initial-vector normalization cancels from each coordinate ratio.
  Every target denominator pair is at least `t_r^2=a_*log r`, while every
  matching competitor numerator pair is at most `B_r=b_*log r`; hence each
  pair ratio is at most `b_*/a_*=19/20`. Each pair-mass sum has at most `r-1`
  terms, so the stated `S_0<=rR_0` follows.
- Cited-result and assumption audit: PASS. The proposition consumes only the
  accepted `E_sm` geometry, Assumption~\ref{assump:random-initialization}, and
  the preceding named local results. Conditional target values are integrated
  out, and neither target labels nor later trajectory facts become public
  assumptions.
- Rigor checklist: PASS. The probability is explicitly conditional on one
  fixed realized tensor and over one proposal triple; it is uniform in slot,
  target, and `T in E_sm`. The denominator is nonzero on the window event, all
  three unordered mode pairs are covered, and no cross-target union or
  confidence conversion is claimed at this step.
- Local adversarial test: PASS. Simultaneously saturating the numerator ceiling
  and denominator floor gives exactly `19/20`, so the exported margin is valid
  at the boundary. The weaker `rR_0` statement safely dominates the exact
  `(r-1)R_0` sum.
- Contribution to target step: Completes `E_win,p_win` and the `R_0,S_0`
  consumer interface without adding a hidden coverage or observability claim.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

PASS. The five independent nontrivial claims are exactly the five mapped local
units. Gaussian conditioning, target-window integration, the shifted radial
implication, the large-r union, the finite-r correlated box construction, and
the ratio conversion are all displayed rather than hidden in broad prose. The
assembly uses theorem-style labels, not local unit IDs, as mathematical
authority. No independence across competitor labels or targets, nonsingularity
of a residual covariance, generated chart condition, or future coverage event
is smuggled into the proof.

## Target Claim Audit

PASS. For every fixed `T in E_sm`, target `j`, and slot `i`, the proof gives
universal constants `0<c_win<=C_win<infinity` such that the conditional one-slot
probability lies between those constants times
`r^(-5/3)(log r)^(-3/2)`. This is the exact accepted `step_002` claim and
quantifier order. The only primitive input is
Assumption~\ref{assump:random-initialization}; `E_sm` is correctly consumed as
an accepted derived invariant from `step_001`. The exported `R_0,S_0` bounds
match the raw-coordinate chart interface fixed by the setting and sketch.

## Explicit Rate Audit

PASS. The sole varying rate parameter is `r>=3`; `q_*=1/4096`, `a_*=10/9`,
and `b_*=19/18` are fixed numerical quantities. Hidden constants are explicitly
restricted to these numerical thresholds and the finite universal minimum
defining `c_pair`; they are independent of `n,k,kappa_0,rho,epsilon`, both
confidence levels, the base triple, realized `T`, slot, and target. The
probability mode is conditional on one fixed good smoothed instance and over
one raw proposal triple; the horizon is one initialization, and the norm mode
is scalar absolute coordinates, pair products, and target-relative ratios.
Equations (3)-(5) preserve the exact window rate, (8)-(11) expose the shifted
tail and union threshold, and (12)-(13) handle every finite rank without an
asymptotic placeholder. Equation (15) performs the conditional-to-integrated
conversion. No confidence is hidden in `p_win`, and target/slot unions are
correctly deferred to `step_003`. In the orthogonal equal-weight baseline the
conditional shifts vanish and residual coordinates become independent, so the
calculation reduces to the unshifted baseline without a new error floor.

## Notation Surface Audit

PASS. `G_M,H_M,Z_i^(M),B_r,m_r,d_r,beta_*`, and `r_*` are explicitly defined
proof-local objects. `A_{i,j}` and `B_{i,j}` are appropriately appendix-local
events. Only `E_win`, `p_win`, and the universal comparison envelope are
public-facing outputs; the target-specific conditional probability and helper
constants remain local bookkeeping. Every helper has setting or accepted
dependency provenance, no symbol is rebound, and no unnecessary dictionary is
exported downstream.

## Target-Step Assembly Audit

PASS. Accepted `step_001` supplies the exact unit-column and Gram-row input.
Lemma~\ref{lem:p1-i6-s002-regression} translates it into conditional residual
laws; Lemma~\ref{lem:p1-i6-s002-target-window} supplies target mass;
Lemma~\ref{lem:p1-i6-s002-pair-tail} supplies the strict exponent;
Proposition~\ref{prop:p1-i6-s002-survival} supplies uniform competitor
survival; and Proposition~\ref{prop:p1-i6-s002-assembly} integrates and converts
the same raw event into `E_win,p_win,R_0,S_0`. These named results jointly imply
the exact step claim with no missing bridge or dependency.

## Review Rationale

`ACCEPTED` is the smallest correct status. All five theorem-style local units
are self-contained under the allowed primitive condition, the current accepted
dependency, and named earlier units. The conditional Gaussian calculations,
normal-window constants, shifted product exponent, finite-small-r survival,
singular-covariance handling, conditional integration, and ratio assembly are
valid with the stated quantifiers and universal constants. The exact target,
explicit rate, assumption provenance, notation surface, and baseline reduction
are preserved, so neither `/proof-step step_002` nor `/proof-sketch` is needed.
