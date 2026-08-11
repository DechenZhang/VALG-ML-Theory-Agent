# Proof Step Review

## Step Review Identity

- Sketch attempt: 8
- Step ID: `step_002`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_5/proof_steps/step_002/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_002

## Blocking Issues

1. **The realized factor-column symbol in the dependency restatement and the
   `R_0/S_0` bridge is undefined.** In `## Cited Result Applications`, the
   proof restates the accepted dependency as
   `sum_(ell != j)|<g_(M,j),g_(M,ell)>| <= q_*`, and equation (32) again uses
   `g_(M,ell)` and `g_(M,j)`. Neither `setting.md` nor this proof defines
   these lowercase objects. The setting defines the matrices
   `G_U=U,G_V=V,G_W=W` and the columns `u_ell,v_ell,w_ell`, so the intended
   identity is mathematically clear, but the strict notation/provenance
   contract does not permit an inferred alias in the step's exported
   raw-coordinate-to-ratio bridge. This leaves the written assembly without
   a formally bound factor column even though the underlying calculation is
   correct. The smallest repair is to define
   `g_(M,ell):=G_M(:,ell)` once, with
   `g_(U,ell)=u_ell`, `g_(V,ell)=v_ell`, and
   `g_(W,ell)=w_ell`, and classify it as appendix-local, or to replace every
   lowercase occurrence by the corresponding setting-level column.

## Per-Lemma Audit

### unit_001: two-sided three-mode narrow-window mass

- Statement fidelity: PASS. The lemma proves the exact one-coordinate and
  three-mode absolute-window probabilities at the target threshold
  `t=sqrt(a_* log r)`, under the primitive initialization law and uniformly
  for every fixed good instance and target.
- Proof validity: PASS. Monotonicity of the standard-normal density gives the
  two endpoint bounds over an interval of width `t^(-1)`. Since
  `a_*/2=5/9`, the one-mode power is exactly `r^(-5/9)`, and the density
  ratio is
  `exp(-1-1/(2a_* log r))`, uniformly bounded below at `r=3`. Genuine
  cross-mode independence then cubes both bounds, giving the exact
  `r^(-5/3)(log r)^(-3/2)` scale.
- Cited-result and assumption audit: PASS. Only
  Assumption~\ref{assump:random-initialization}, unit realized target columns,
  and the displayed standard-normal density are used. No competitor
  independence or generated trajectory condition is imported.
- Rigor checklist: PASS. The absolute-value factor of two, interval width,
  endpoint direction, exponent, logarithmic power, and uniform `r>=3`
  constant are all correct. The probability is conditional on the fixed
  realized instance and concerns one proposal slot at time zero.
- Local adversarial test: PASS. At `r=3`, the lower density-ratio constant is
  exactly the declared worst case; increasing `r` only improves it. Changing
  either target sign does not affect the event or its mass.
- Contribution to target step: Supplies the complete rare target-window
  factor used by the final two-sided estimate.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact correlated-coordinate regression

- Statement fidelity: PASS. The proposition gives the exact conditional mean,
  Schur-complement covariance, cross-mode independence, coordinate-mean
  bound, covariance-operator bound, and scalar variance bound required by the
  accepted sketch.
- Proof validity: PASS. For `Z^(M)=G_M^T xi^(M)`, the covariance is the Gram
  matrix `H_M`; because its target diagonal is one,
  `R_(M,j)=Z_(-j)^(M)-H_M(-j,j)Z_j^(M)` is jointly Gaussian and uncorrelated
  with the target coordinate, hence independent. Its covariance is the PSD
  Schur complement. This remains valid when that covariance is singular.
  Removing the target row/column cannot increase the `q_*` off-diagonal row
  budget, so Gershgorin gives operator norm at most `1+q_*`; subtracting the
  PSD rank-one term preserves that upper bound. Each conditional coordinate
  variance is exactly `1-|H_M(ell,j)|^2<=1`.
- Cited-result and assumption audit: PASS, modulo the global notation blocker
  in the separate dependency-restatement prose. The derivation itself uses
  the defined matrices `G_M,H_M`, the accepted
  Proposition~\ref{prop:step-001-event} only through `q_real<=q_*`, and
  Assumption~\ref{assump:random-initialization} for Gaussianity and mode
  independence.
- Rigor checklist: PASS. Conditioning on an exact target value is the standard
  Gaussian regular conditional law, whose displayed affine formula defines a
  version for every real target value. No inverse of the competitor covariance
  is taken, so degeneracy causes no gap.
- Local adversarial test: PASS. If the Schur complement has a null direction,
  the PSD square-root representation used later is still valid; if one scalar
  conditional variance vanishes, it is covered by `sigma=0` in unit_003.
- Contribution to target step: Converts the correlated within-mode coordinate
  family into exact shifts plus cross-mode-independent Gaussian residuals.
- Verdict: PASS
- Repair direction: None in this local derivation; bind the lowercase column
  alias in the shared dependency-restatement notation as in Blocking Issue 1.

### unit_003: uniform shifted Gaussian product tail

- Statement fidelity: PASS. The standalone lemma explicitly assumes the
  precise mean, variance, and independence conditions produced by unit_002
  and concludes the required universal product-tail exponent.
- Proof validity: PASS. The implications
  `|XY|>B => X^2+Y^2>2B` and
  `sqrt(X^2+Y^2)<=sqrt(2)m+sqrt(G^2+H^2)` give the displayed
  chi-square threshold `2(sqrt(B)-m)^2`. The exact `chi-square_2` tail is
  therefore `exp(-(sqrt(B)-m)^2)`. Dividing by `sqrt(log r)` yields the
  declared `alpha_*`, uniformly at `log r>=log 3`, and hence
  `r^(-beta_*)`.
- Cited-result and assumption audit: PASS. The `chi-square_2` tail is restated
  before use, and the lemma is self-contained, including the degenerate
  variance cases `sigma=0` or `tau=0`.
- Rigor checklist: PASS. The rational comparisons imply
  `alpha_*>19503/19000`, whose square exceeds `21/20`; thus the threshold is
  positive and `beta_*>1` without relying on an unstated decimal estimate.
  The constants depend only on fixed `q_*,a_*,b_*`.
- Local adversarial test: PASS. Opposite or equal mean signs are harmless
  because only their magnitudes enter. Taking both variances equal to one and
  both mean magnitudes equal to `m_r` is exactly the worst case controlled by
  the Euclidean triangle inequality.
- Contribution to target step: Supplies an exponent strictly above one, so a
  union over the `3(r-1)` same-label mode pairs has a uniform large-r margin.
- Verdict: PASS
- Repair direction: None.

### unit_004: uniform all-competitor success, including finite ranks

- Statement fidelity: PASS. The proposition proves a positive universal
  conditional probability for all competitor-pair inequalities, uniformly
  over target-window values, instances in `E_sm`, targets, and every `r>=3`,
  without assuming independence across competitor labels.
- Proof validity: PASS. For `r>=r_fin`, the union bound is valid because
  `r_fin>=6^(1/(beta_*-1))` implies
  `3r^(1-beta_*)<=1/2`. For `3<=r<r_fin`, stacking the three residual vectors
  gives a block-diagonal PSD covariance of dimension `D_r=3(r-1)` and
  operator norm at most `1+q_*`. Even if this covariance is singular,
  `R=C^(1/2)G_(D_r)` in distribution. On the latent-coordinate rectangle,
  the operator-norm bound gives `||R||_2<=d_*`; since
  `D_r<=D_fin` and `0<pi_fin<1`, its probability is at least
  `pi_fin^(D_fin)=c_fin>0`. The function
  `d(log r)=sqrt(b_*log r)-m_r` is increasing, so every competitor coordinate
  is at most `sqrt(b_*log r)` in magnitude and every required product is at
  most `b_*log r`.
- Cited-result and assumption audit: PASS. The proposition consumes only the
  named regression and shifted-product results plus the primitive
  cross-mode initialization independence. The PSD square-root construction
  is explicitly restated and does not require a density or determinant lower
  bound.
- Rigor checklist: PASS. `beta_*>1` makes `r_fin,D_fin` finite;
  `d_*=sqrt(log 3) alpha_*>0` makes `eta_fin,pi_fin,c_fin` positive. These
  constants can be extremely small but remain fixed universal constants, so
  the theorem's uniformity and polynomial parameter dependence are not
  altered.
- Local adversarial test: PASS. Perfect dependence or singularity among
  competitor labels does not affect the latent-rectangle lower bound. The
  proof also handles the smallest rank `r=3`, arbitrary residual signs, and
  all three products sharing coordinates for one competitor.
- Contribution to target step: Supplies the instance- and target-uniform
  competitor-event factor `c_cmp` needed for the probability lower bound.
- Verdict: PASS
- Repair direction: None.

### unit_005: exported rare window event and probability

- Statement fidelity: PASS. The proposition exports the exact per-target
  event, its minimum probability, both universal comparison bounds, and the
  `R_0/S_0` entry interface required by the setting and downstream recurrence.
- Proof validity: REVISE_STEP only for Blocking Issue 1. Mathematically,
  integrating the pointwise conditional competitor lower bound over
  `mathsf W_j` gives
  `c_cmp Pr(mathsf W_j)<=Pr(E_win(j))<=Pr(mathsf W_j)`, and taking a finite
  minimum over targets preserves both uniform bounds. On the event, raw
  initializer normalization cancels in each target-relative ratio; every
  denominator product is at least `t^2=a_*log r`, while the matching
  competitor product is at most `b_*log r`. Hence each pair ratio is at most
  `b_*/a_*=19/20`, and summing at most `r-1` terms gives
  `S_0<=(r-1)R_0<=rR_0`. As written, however, equation (32) expresses this
  valid identity using an undefined factor-column alias.
- Cited-result and assumption audit: PASS after the local alias repair. The
  named local results and accepted dependency provide every probabilistic and
  Gram input; no target-label independence, target union, confidence
  conversion, trajectory membership, or global-proof diagnostic is used as
  evidence.
- Rigor checklist: PASS apart from notation. The lower and upper constants
  are explicit and universal, the conditional probability order is correct,
  the target denominators are nonzero, and the exact ratio `19/20` is checked.
- Local adversarial test: PASS mathematically. Saturating all `r-1`
  competitor pair bounds saturates only the stated `S_0` estimate; arbitrary
  signs and initializer norms cancel. The event need not be independent
  across targets because this step takes only their minimum probability.
- Contribution to target step: Performs the conditional-to-joint conversion
  and exports the complete `E_win,p_win,R_0,S_0` interface to `step_003` and
  the recurrence path.
- Verdict: REVISE_STEP
- Repair direction: Bind or inline the setting-level realized factor columns
  in the dependency restatement and equation (32); no probabilistic or
  quantitative argument needs to change.

## Hidden Subclaim Scan

The five independent mathematical claims are all present in the local lemma
map and have matching theorem-style statements and derivations. The normal
window integral, Gaussian regression, shifted-product tail, finite-r
correlated-Gaussian lower bound, probability integration, and ratio bridge
are not hidden in assembly prose. The monotonicity and positivity used in the
finite-r argument follow from the displayed `d(log r)` formula and the proved
`alpha_*>0`. The proof's mention of the accepted global diagnostic is
properly classified as planning context and is not used as evidence. No
missing probabilistic bridge or independent lemma was found. The only
contract-visible hidden notation is the unbound lowercase column alias in
Blocking Issue 1.

## Target Claim Audit

The mathematical argument proves the exact accepted `step_002` claim for
each proof-only target and every fixed realized instance in `E_sm`: a
one-slot event with probability between universal multiples of
`r^(-5/3)(log r)^(-3/2)`. It preserves the nested conditioning order, uses
only the accepted `q_real<=q_*` dependency conclusion, and exports the exact
initial `R_0<=19/20` and `S_0<=rR_0` consequences required by the formalized
goal. There is no target union, horizon upgrade, confidence conversion,
extra assumption, or dependence on a base triple. The written claim is not
yet contract-complete solely because its final ratio identity uses an
undefined factor-column symbol.

## Explicit Rate Audit

- Rate-bearing status: applicable; this is the per-slot initialization-window
  rate.
- Exposed variables: `r` and the per-target conditional probability, with
  fixed numerical `q_*=1/4096`, `a_*=10/9`, and `b_*=19/18`.
- Hidden constants: `c_all` and `C_win` depend only on those fixed numerical
  constants. In particular, `r_fin,D_fin,eta_fin,pi_fin,c_fin,c_cmp` are
  explicit universal proof constants, not hidden instance parameters.
- Fixed quantities and modes: one target, one proposal slot, and one realized
  instance in `E_sm` are fixed before initialization probability is taken.
  The probability mode is conditional over that slot, the horizon mode is
  fixed time `t=0`, and the norm/interface mode is raw scalar Gaussian
  coordinates followed by exact target-relative pair ratios.
- Parameter exclusions: no hidden dependence enters through `n,k,kappa_0`,
  `rho`, either confidence parameter, `epsilon`, the target, the base triple,
  covariance rank, or a generated condition number.
- Quantitative checks: equations (11)--(13) give the two-sided narrow-window
  constants; (18)--(21) give `beta_*>21/20`; (23)--(24) make the large-r
  failure at most one half; (25)--(27) give a positive finite-r minimum even
  for singular covariance; and (31) performs the exact conditional-to-joint
  conversion. No term is dropped by prose.
- Downstream specialization: the lower bound is precisely the input by which
  `step_003` can choose `k=Theta(r^(5/3)(log r)^(5/2))` without incorporating
  `delta_init`; this step itself makes no rank or confidence choice.
- Baseline reduction: for orthogonal realized factors the regression means
  vanish and residual covariances become identity. The same rate and event
  remain valid, with only a conservative universal lower constant and no
  error floor.

## Notation Surface Audit

`E_win(j)`, `p_win`, and the universal comparison constants are the minimal
downstream-facing interface. The target-window/competitor split, regression
objects, finite-r rectangle, and tail constants are appropriately appendix-
or proof-local and are derived from setting objects. There is no notation
cascade and no generated event is disguised as a primitive condition.
However, `g_(M,ell)` is neither a setting symbol nor defined/classified in
this step. Because it appears both in the accepted-dependency restatement and
the theorem-facing ratio bridge, it must be bound to `G_M(:,ell)` or replaced
by `u_ell,v_ell,w_ell` before acceptance.

## Target-Step Assembly Audit

The named results form the correct acyclic mathematical chain:
Lemma~\ref{lem:step-002-narrow-window} supplies the target-window mass;
Proposition~\ref{prop:step-002-regression} supplies the exact conditional
coordinate law; Lemma~\ref{lem:step-002-shifted-product} supplies a summable
tail; Proposition~\ref{prop:step-002-competitor} supplies the uniform
conditional competitor factor; and
Proposition~\ref{prop:step-002-window-event} integrates and exports the
two-sided event probability and ratio entry. The assembly uses only named
theorem-style authorities and the current accepted `step_001` proof/review
pair. Once the lowercase factor-column alias is defined or inlined, these
results jointly imply the exact target. Until then, the final deterministic
bridge and hence the written assembly fail the strict notation-provenance
gate.

## Review Rationale

`REVISE_STEP` is the smallest sound status. Direct adversarial checks found no
mathematical flaw in the Gaussian conditioning, including singular residual
covariance; the shifted-product implication and exponent constants; the
large-r union bound; the finite-r universal rectangle lower bound; the
two-sided probability conversion; or the `R_0/S_0` calculation. The sole
blocker is an undefined local column alias in the dependency restatement and
the exported ratio bridge. Repairing that alias does not change the sketch
claim, assumptions, dependency list, probability mode, constants, rate,
output target, or downstream interface. Therefore the producer retry target
is `/proof-step step_002`; a fresh `/proof-step-review step_002` is still
required before downstream consumption.
