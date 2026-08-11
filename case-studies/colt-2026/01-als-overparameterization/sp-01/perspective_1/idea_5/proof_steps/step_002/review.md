# Proof Step Review

## Step Review Identity

- Sketch attempt: 8
- Step ID: `step_002`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_1/idea_5/proof_steps/step_002/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: two-sided three-mode narrow-window mass

- Statement fidelity: PASS. The lemma proves the exact one-coordinate and
  three-mode absolute-window probabilities at `t=sqrt(a_* log r)`, under the
  primitive initialization law, for every fixed good instance and target.
- Proof validity: PASS. Monotonicity of the standard-normal density over an
  interval of width `t^(-1)` gives both endpoint bounds. Since `a_*/2=5/9`,
  the one-mode power is exactly `r^(-5/9)` and cubing gives
  `r^(-5/3)(log r)^(-3/2)`. The density-ratio lower constant is uniform at
  the smallest allowed `r=3`.
- Cited-result and assumption audit: PASS. The only input is
  Assumption~\ref{assump:random-initialization}, together with unit target
  columns and the displayed standard-normal density. No competitor or
  trajectory independence is imported.
- Rigor checklist: PASS. The absolute-value factor, interval width,
  exponent, logarithmic power, and nested conditional probability mode are
  all explicit and correctly ordered.
- Local adversarial test: PASS. The lower bound remains valid at `r=3` and
  improves with `r`; target-coordinate signs do not affect the absolute
  window.
- Contribution to target step: Supplies the complete rare target-window
  factor for the final probability comparison.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact correlated-coordinate regression

- Statement fidelity: PASS. The proposition gives the exact affine
  Gram-regression decomposition, Schur-complement covariance, cross-mode
  independence, mean bound, covariance-operator bound, and scalar variance
  bound required by the accepted step claim.
- Proof validity: PASS. The coordinate vector is centered Gaussian with
  covariance `H_M`; because its target diagonal is one,
  `R_(M,j)=Z_(-j)^(M)-h_(M,j)Z_j^(M)` is uncorrelated with the target and is
  therefore independent. Its covariance is the PSD Schur complement. The
  principal Gram matrix has operator norm at most `1+q_*` by Gershgorin, and
  `0 <= C_(M,j) <= H_M(-j,-j)` gives the same bound for the residual,
  including a singular residual covariance.
- Cited-result and assumption audit: PASS. The accepted step-001 event is
  used only through unit columns and `q_real<=q_*`; primitive
  Assumption~\ref{assump:random-initialization} supplies Gaussianity and
  independence across modes. The standard Gaussian conditioning fact is
  restated before use.
- Rigor checklist: PASS. Conditional scalar variance is exactly
  `1-|h_(M,j)_ell|^2<=1`; no inverse or density assumption is made for the
  Schur complement.
- Local adversarial test: PASS. Null directions and zero scalar residual
  variances are allowed and are covered by the PSD square-root representation
  and the later `sigma=0`/`tau=0` tail case.
- Contribution to target step: Converts correlated within-mode coordinates
  into shifted, cross-mode-independent Gaussian variables.
- Verdict: PASS
- Repair direction: None.

### unit_003: uniform shifted Gaussian product tail

- Statement fidelity: PASS. The standalone lemma explicitly assumes the
  exact independent shifted-Gaussian conditions supplied by unit_002 and
  concludes the required universal tail exponent.
- Proof validity: PASS. From `|XY|>B`, the proof obtains
  `X^2+Y^2>2B`; Minkowski and `sigma,tau<=1` then give the displayed
  chi-square threshold `2(sqrt(B)-m)^2`. The exact two-dimensional Gaussian
  tail yields `exp(-(sqrt(B)-m)^2)`. The displayed rational comparisons prove
  `alpha_*>19503/19000` and hence `beta_*>21/20>1`, with no hidden decimal
  assumption.
- Cited-result and assumption audit: PASS. The chi-square tail and Gaussian
  representation are restated in current notation; degenerate variances are
  explicitly permitted.
- Rigor checklist: PASS. Mean signs enter only through absolute values, all
  thresholds are positive by the proved alpha bound, and the constants depend
  only on fixed `q_*`, `a_*`, and `b_*`.
- Local adversarial test: PASS. Taking both mean magnitudes at `m_r` and both
  variances at one is the worst case covered by the Euclidean triangle bound;
  opposite signs do not change it.
- Contribution to target step: Supplies an exponent strictly above one for
  the same-label mode-pair union.
- Verdict: PASS
- Repair direction: None.

### unit_004: uniform all-competitor success, including finite ranks

- Statement fidelity: PASS. The proposition gives a target-, instance-, and
  rank-uniform conditional lower bound for all `3(r-1)` competitor pair
  inequalities without assuming independence across competitor labels.
- Proof validity: PASS. For `r>=r_fin`, the union bound is at most one half
  because `r_fin>=6^(1/(beta_*-1))`. For the finite range, stacking the
  residuals gives a block-diagonal PSD covariance of dimension
  `D_r=3(r-1)` and operator norm at most `1+q_*`. The representation
  `R=C^(1/2)G_(D_r)` is valid even when `C` is singular. The latent rectangle
  has probability `pi_fin^(D_r)>=pi_fin^(D_fin)=c_fin`; its operator-norm
  bound gives residual coordinate magnitude at most `d_*`, and monotonicity
  of `d(log r)` transfers this to the threshold `sqrt(b_* log r)`.
- Cited-result and assumption audit: PASS. All inputs are named local results,
  the accepted dependency, and primitive cross-mode initialization
  independence. The finite-r square-root construction needs no determinant
  or nonsingularity assumption.
- Rigor checklist: PASS. `beta_*>1` makes the finite cutoff and dimension
  finite; `d_*>0` follows from the displayed alpha bound; and `c_fin>0` is a
  fixed universal constant. The argument is uniform over every possible
  residual covariance allowed by the dependency event.
- Local adversarial test: PASS. Arbitrary dependence or singularity among
  competitor labels is handled by the latent-coordinate rectangle. The
  smallest rank `r=3`, shared coordinates across the three products, and
  arbitrary residual signs are all covered.
- Contribution to target step: Supplies the uniform competitor-event factor
  used in the lower probability bound.
- Verdict: PASS
- Repair direction: None.

### unit_005: exported rare window event and probability

- Statement fidelity: PASS. The proposition exports the exact per-target
  event, minimum target probability, two-sided universal comparison, and the
  required `R_0/S_0` chart-entry interface.
- Proof validity: PASS. Integrating the pointwise conditional competitor
  lower bound over the target window gives
  `c_cmp Pr(mathsf W_j)<=Pr(E_win(j))<=Pr(mathsf W_j)`, and finite minimization
  preserves both bounds. On the event, normalization of each raw initializer
  cancels in target-relative ratios; denominators are at least
  `t^2=a_* log r`, while matching competitor products are at most
  `b_* log r`. Thus every pair ratio is at most
  `b_*/a_*=19/20`, and summing at most `r-1` terms gives
  `S_0<=(r-1)R_0<=rR_0`.
- Cited-result and assumption audit: PASS. The accepted step-001 event and
  the named local results provide every input; no target-label independence,
  target union, trajectory membership, confidence conversion, or global
  diagnostic is used. The repaired proof explicitly defines the appendix-
  local alias `g_(M,ell):=G_M(:,ell)` and maps it to `u_ell,v_ell,w_ell`, so
  equation (32) is now a fully bound setting-level identity.
- Rigor checklist: PASS. The lower and upper constants are universal, the
  conditioning order is correct, target denominators are nonzero on the
  window, and the exact `19/20` ratio is displayed.
- Local adversarial test: PASS. Saturating all competitor bounds only
  saturates the stated `S_0` estimate; arbitrary signs and initializer norms
  cancel, and no independence across targets is required.
- Contribution to target step: Performs the conditional-to-joint conversion
  and exports `E_win`, `p_win`, `R_0`, and `S_0` to the next proof stage.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The narrow-window integral, exact Gaussian regression, shifted-product tail,
finite-r correlated-Gaussian lower bound, conditional-to-joint integration,
and `R_0/S_0` ratio conversion are all represented in the five-row local
lemma map and have matching theorem-style derivations. The finite-r
monotonicity and positivity checks are exposed rather than deferred to
assembly. The newly introduced factor-column alias is explicitly defined,
mapped to the setting matrices, and classified as appendix-local; no hidden
generated object or independent subclaim remains.

## Target Claim Audit

The fresh unit-attempt-2 proof establishes the exact accepted `step_002` row
for every fixed realized instance in `E_sm`: a one-slot, proof-only target
event with probability between universal multiples of
`r^(-5/3)(log r)^(-3/2)`. It preserves the nested instance-then-
initialization probability order, uses only the accepted `q_real<=q_*`
dependency clause, and exports the exact initial `R_0<=19/20` and
`S_0<=rR_0` consequences required by the formalized goal. No target union,
horizon upgrade, confidence conversion, extra primitive condition, or hidden
dependence is introduced.

## Explicit Rate Audit

- Rate-bearing status: applicable; this is the per-slot initialization-window
  rate.
- Exposed variables: `r` and the per-target conditional probability, with
  fixed numerical `q_*=1/4096`, `a_*=10/9`, and `b_*=19/18`.
- Hidden constants: `c_all` and `C_win`, including the finite-r constants,
  depend only on those fixed numerical values. They do not depend on `n`,
  `k`, `kappa_0`, `rho`, the base triple, the realized instance, either
  confidence parameter, `epsilon`, covariance rank, or a generated condition
  number.
- Fixed quantities and modes: one target, one proposal slot, and one good
  realized instance are fixed before proposal probability is taken. The mode
  is conditional probability, fixed horizon `t=0`, and raw scalar Gaussian
  coordinates translated into target-relative cross-mode products.
- Quantitative checks: (11)--(13) give the narrow-window constants;
  (18)--(21) give `beta_*>21/20`; (23)--(24) give the large-r union margin;
  (25)--(27) give a positive uniform finite-r lower bound even for singular
  covariance; and (31) gives the conditional-to-joint conversion. Every
  dropped term has a displayed inequality.
- Downstream specialization: the lower comparison is exactly the input to
  `step_003` for `k=Theta(r^(5/3)(log r)^(5/2))`; this step introduces no
  confidence dependence into the rank.
- Baseline reduction: when `q_real=0`, the regression means vanish and the
  residual covariances are identity for orthogonal realized factors. The same
  event and rate remain valid without an error floor or mode change.

## Notation Surface Audit

`E_win(j)`, `p_win`, and the universal comparison constants are the minimal
downstream-facing outputs. The window/competitor split, regression objects,
finite-r rectangle, and tail constants are proof-local or appendix-local and
are explicitly derived from setting notation. The repaired alias
`g_(M,ell)` is appendix-local, defined once as `G_M(:,ell)`, and explicitly
mapped to `u_ell`, `v_ell`, and `w_ell`; its later typographical forms
`g_(M,j)` and `g_(M,ell)` retain the same two-index meaning. No notation
drift, unexplained constant, or unnecessary public helper is exported.

## Target-Step Assembly Audit

The named results form an acyclic, dependency-closed chain:
Lemma~\ref{lem:step-002-narrow-window} supplies target-window mass;
Proposition~\ref{prop:step-002-regression} supplies the exact conditional
coordinate law; Lemma~\ref{lem:step-002-shifted-product} supplies the
summable tail; Proposition~\ref{prop:step-002-competitor} supplies the
uniform conditional competitor factor; and
Proposition~\ref{prop:step-002-window-event} integrates and exports the
two-sided event probability and ratio entry. The accepted step-001 proof and
review supply only the declared static `E_sm` interface. The repaired alias
closes the raw-column-to-ratio bridge, so these results jointly imply the
exact target claim and export only the stated outputs.

## Review Rationale

`ACCEPTED` is the smallest sound status for the fresh unit-attempt-2 proof.
The new proof directly binds the previously missing factor-column notation to
the setting's `G_M` columns and records its provenance and surface class. A
fresh line-by-line audit finds the Gaussian regression valid for singular
Schur complements, the shifted-product implication and exponent constants
valid, the large-r union and finite-r rectangle lower bounds uniform, the
two-sided probability conversion exact, and the `R_0/S_0` bridge target-faithful.
The accepted dependency is current and acyclic, all local units are named and
assembled with theorem-style references, and explicit rate, probability,
horizon, norm, baseline, and notation obligations are discharged. No sketch,
dependency, assumption, or target change is required; `Smallest Retry Target =
None` is therefore correct.
