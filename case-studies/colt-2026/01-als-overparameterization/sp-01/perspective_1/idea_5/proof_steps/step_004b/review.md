# Proof Step Review

## Step Review Identity

- Sketch attempt: 8
- Step ID: `step_004b`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_5/proof_steps/step_004b/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: raw same-state right-sign certificate

- Statement fidelity: PASS. The proposition proves the exact target-row identity with both companion directions taken from the stored state, retains the projective sign on the right, and gives the per-column `d_M tau_r` residual bound.
- Proof validity: PASS. The definition of the projective residual gives the column equation after multiplication by `d_M`; multilinearity gives the displayed same-state `K_M^raw`, and stacking preserves the right-sided diagonal sign convention.
- Cited-result and assumption audit: PASS. Only the accepted `E_cert` predicate from `step_004` and the setting tensor contraction are used. No look-ahead, pre-update pair matrix, target label, or coverage event is imported.
- Rigor checklist: PASS. Nonzero `d_M` is part of the successful certificate predicate, dimensions and right multiplication are consistent, and the residual norm is exactly the certificate definition.
- Local adversarial test: PASS. A finite orthogonal transient retains its nonzero residual; an exact stationary state gives zero residual; either sign of the contraction is handled by `Sigma_M`.
- Contribution to target step: PASS. This is the raw `E_cert_eq` producer used by all subsequent ledger units.
- Verdict: PASS
- Repair direction: None.

### unit_002: span distance, coefficient norms, and scale factors

- Statement fidelity: PASS. The lemma establishes the dual projection, perpendicular distance, coefficient norm bounds, contraction-scale bounds, and the non-LOW `0.69 <= alpha_M <= 1.03` interface required by the sketch.
- Proof validity: PASS. The certificate distance to a vector in `span(G_M)` bounds the projection residual; the Gram spectral interval gives the two-sided `s_M` bounds; Cauchy--Schwarz gives `d_M >= |theta|`; and the Hadamard contraction estimate gives `d_M <= lambda_max(1+q)`. The scalar ratio bound and the `0.69/1.03` numerical envelope follow from the displayed margins.
- Cited-result and assumption audit: PASS. The only inherited facts are `E_sm`, the local certificate predicate, and the setting definitions. The non-LOW threshold is a local conditional branch, not a promoted theorem assumption.
- Rigor checklist: PASS. `s_M>0`, `L_M` is well-defined, `lambda_min>0`, and all bounds are uniform in the certified slot and in `r`.
- Local adversarial test: PASS. The maximal `q_*`, `Gamma=1.01`, and `tau_r` endpoints still leave the claimed scalar interval; zero contractions are excluded only by the explicit certificate predicate.
- Contribution to target step: PASS. Supplies every denominator and scale used by the normalized coordinate ledger.
- Verdict: PASS
- Repair direction: None.

### unit_003: vector-level Hadamard Gram budget

- Statement fidelity: PASS. The lemma expands the actual coefficient vectors, rather than a matrix-product surrogate, and exports the exact `eta_G=2q_*+q_*^2` budget.
- Proof validity: PASS. `H_M=I+F_M`, symmetry and the accepted row mass imply `||F_M||_2 <= q`; the three expansion terms are bounded by `q`, `q`, and `q^2` using the displayed Hadamard Cauchy--Schwarz inequalities.
- Cited-result and assumption audit: PASS. The Gram interface is the accepted `E_sm` output; no target chart or support assumption is used.
- Rigor checklist: PASS. The coefficient vectors are unit `l_2` vectors, so no hidden rank factor enters the `l_1` bounds, and row/column conventions agree for the symmetric Gram.
- Local adversarial test: PASS. Saturated Gram leakage and arbitrary signs of the coefficient vectors are covered by absolute-value bounds; the cross term is charged separately.
- Contribution to target step: PASS. Provides the linear, quadratic, and cross Gram defect class for `E_cert_tail`.
- Verdict: PASS
- Repair direction: None.

### unit_004: reciprocal normalization and scalar cancellation

- Statement fidelity: PASS. The lemma states the exact reciprocal identity, isolates the second-order remainder as `eta_N=5q_*^2`, and makes the first-order part a scalar absorbed into `alpha_M`.
- Proof validity: PASS. Multiplication verifies the identity exactly, and `4q_*^2/(1-q_*) < 5q_*^2` proves the remainder bound. The exact scalar is retained in `alpha_M`, so no first-order normalization term is incorrectly treated as coordinate leakage.
- Cited-result and assumption audit: PASS. The only input is the preceding proved `s_M` bound; no generated invariant is assumed.
- Rigor checklist: PASS. The denominator `1+nu_M` is positive, the fixed-slot/mode scope of the scalar cancellation is explicit, and the reserve is conservative rather than an omitted term.
- Local adversarial test: PASS. The extremal `|nu_M|=q_*` case remains within the stated reserve; the exact `q=0` specialization has zero remainder.
- Contribution to target step: PASS. Supplies the independent scalar defect class without changing the coefficient-vector profile.
- Verdict: PASS
- Repair direction: None.

### unit_005: normalized absolute coordinate equation and finite certificate charge

- Statement fidelity: PASS. The lemma derives the normalized signed equation, its absolute coordinate form, the combined `eta_0` reserve, and the sole finite-support `l_2`-to-`l_1` conversion `eta_C=2 sqrt(r) tau_r`.
- Proof validity: PASS. Applying `L_M^T` to the raw identity and dividing by `lambda_min s_{M'}s_{M''}` gives the stated `alpha_M` equation; the projected residual has `l_2` norm below `2 tau_r`; taking absolute values changes the nonnegative pair product by at most the Gram and residual errors.
- Cited-result and assumption audit: PASS. Only `E_sm`, `E_cert`, and units 001--004 are consumed. The scalar reserve `eta_N` is explicitly conservative and is not double-counted as vector leakage.
- Rigor checklist: PASS. `mu_i >= 1` justifies the residual division, the finite-support conversion is applied once, and the resulting global `l_1` bound is uniform over all `r` coordinates.
- Local adversarial test: PASS. Residual signs may be adversarial; the proof uses absolute values and retains the full `sqrt(r)` charge. No `O(tau_r)` global `l_1` claim is made.
- Contribution to target step: PASS. Produces the sign-independent coordinate equations used by every support branch.
- Verdict: PASS
- Repair direction: None.

### unit_006: threshold denominators and weighted profile

- Statement fidelity: PASS. The lemma proves the non-LOW outside-mass bound, legal retained-coordinate denominators, the three-mode ratio relation, and the `144 eta_0` weighted profile on the threshold core.
- Proof validity: PASS. The scalar inequality for a coordinate with one entry below `1/8` gives the `10/17` pair-to-sum ratio; summing the three coordinate inequalities yields `X <= 33 eta_0`. The retained-floor bound makes every pair denominator positive, the ratio perturbations are bounded by `33 eta_0`, and the three-mode cancellation plus explicit reciprocal normalization yields the stated `68/72/144 eta_0` profile constants.
- Cited-result and assumption audit: PASS. The only inputs are the local residual equation, the non-LOW conditional threshold, and `E_sm`; no `E_cov`, target chart, `E_chart_l1`, score-filter outcome, or label is used.
- Rigor checklist: PASS. The `q_*` numerical reserve gives `vartheta_*>1/16`, `d_0<1/128`, and `68 eta_0<1/16`; the normalization identity accounts for the outside `l_2` mass before exporting the profile.
- Local adversarial test: PASS. Empty cores are not silently divided by; threshold-straddling coordinates are covered by the explicit propagation inequality and later dichotomy; all retained signs are handled through absolute coordinates.
- Contribution to target step: PASS. Provides the global no-label denominator/profile interface for singleton and multi-support classification.
- Verdict: PASS
- Repair direction: None.

### unit_007: singleton core and component score

- Statement fidelity: PASS. The lemma proves the common singleton index, the `a_cert` tail, the near-one coordinate margin, and the two-sided observable component score bound.
- Proof validity: PASS. The small-root inequality from the threshold ledger gives `A <= 1.51 eta_0`; unit normalization gives the coordinate margin. The `H_M=I+F_M` expansion, tail triangle bound, and `B_s` normalization bound yield the displayed `s_-` and `s_+` score envelopes with ample numerical slack.
- Cited-result and assumption audit: PASS. The lemma uses only the accepted/proved profile interface and current realized Gram notation. It does not import a target label or covered trajectory.
- Rigor checklist: PASS. The tail, Gram, and scalar contributions are kept separate; `a_cert<1/512` and `s_->0.953`, `s_+<1.047` hold at the worst allowed `r=3` reserve and improve thereafter.
- Local adversarial test: PASS. Arbitrary tail signs are handled by triangle inequalities, unequal weights are exposed through `Gamma`, and the exact orthogonal singleton has score exactly `lambda_j`.
- Contribution to target step: PASS. Produces the singleton branch and its score margin for the later observable filter.
- Verdict: PASS
- Repair direction: None.

### unit_008: multi-support profile and score tail

- Statement fidelity: PASS. The proposition covers every core of size at least two, exports the finite weighted tail score, preserves the `144 eta_0` profile, and gives the `m`-dependent score upper bound.
- Proof validity: PASS. The threshold pair-to-sum inequality bounds the outside product tail without a coordinatewise `r tau_r` sum. Summing the exact retained-coordinate equations gives the pair-product bounds for the `alpha_M`; combining them yields the `1+50 eta_0` scale bound, and the weighted coordinate equation plus the Gram/scalar expansion gives the `kappa_I+144 eta_0+tail_score` score envelope.
- Cited-result and assumption audit: PASS. Inputs are units 005--006 and `E_sm`; no coverage or target-chart fact is used. The profile is applied only where all retained coordinates have the proved positive denominator.
- Rigor checklist: PASS. `t_M^2<eta_0`, `d_0<16 eta_0`, `kappa_I<=Gamma/sqrt(m)`, and the numerical `1.01 s_mix<0.794` margin are explicit. The conservative `144 eta_0` reserve covers the scalar/Gram and finite-tail perturbation classes.
- Local adversarial test: PASS. Unequal weights, arbitrary signs, `m=2`, and an outside threshold tail are all handled by absolute weighted bounds; the exact orthogonal support formula is recovered when defects vanish.
- Contribution to target step: PASS. Produces the multi-support branch consumed by weighted score classification.
- Verdict: PASS
- Repair direction: None.

### unit_009: LOW and threshold-straddling dichotomy

- Statement fidelity: PASS. The proposition exhausts LOW, singleton, and multi-support alternatives, supplies the stronger empty-core score boundary, and rules out a mismatched-top non-LOW singleton.
- Proof validity: PASS. Non-LOW outside-mass control rules out an empty core directly. The auxiliary `S,D` relations follow by multiplying the normalized equations by `mu_i x_{M,i}`; for a putative high-score empty core they force a uniform coordinate cap, whose numerical score upper bound contradicts `S>0.169`. The singleton result supplies common top indices, so no fourth straddling branch remains.
- Cited-result and assumption audit: PASS. The proposition consumes the local residual/profile and earlier named singleton/multi results only; `S`, `D`, and the `g_*` bound are proof-local current-notation quantities, not assumptions.
- Rigor checklist: PASS. The `S=0` case is not divided by before the high-score implication establishes `S>0.169`; the `0.17/0.169/0.167` margins are strict, and the top-index conclusion is label-free.
- Local adversarial test: PASS. Empty cores, threshold ties, mismatched top indices, LOW scores, and negative score signs are covered; no high-score state can evade the partition.
- Contribution to target step: PASS. Closes the global LOW/singleton/multi/straddle ledger before clustering.
- Verdict: PASS
- Repair direction: None.

### unit_010: proof-only barred post-score convention

- Statement fidelity: PASS. The proposition is explicitly conditional on the later common-sign conclusion and states the exact right-column sign absorption and barred equation required downstream.
- Proof validity: PASS. Columnwise multiplication by `delta_M` converts the raw sign matrix into the pair signs in `bar K_M`; residual norms are unchanged. The product-one sign choice preserves the original initialized rank-one tensor while replacing the proof scalar by `bar theta=|theta|`.
- Cited-result and assumption audit: PASS. The common sign condition is a local post-score hypothesis and is also checked directly from the raw certificate equation; no future theorem is used as proof authority.
- Rigor checklist: PASS. The per-column diagonal notation is consistent, `tau_r<1` forces `epsilon_M=sgn(theta)` for every nonzero certified slot, and raw algorithm objects are never rebound.
- Local adversarial test: PASS. Negative scores and arbitrary individual mode signs are handled by the product-preserving gauge; the exact orthogonal stationary case reduces to the raw normal equation.
- Contribution to target step: PASS. Exports the proof-only barred convention without contaminating the pre-score raw ledger.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The local map accounts for the raw certificate identity, span/projection and
scale bounds, vector Gram leakage, scalar normalization, finite residual
conversion, threshold outside mass, profile normalization, singleton and
multi-support score bounds, empty/straddling exhaustion, and post-score sign
absorption. The short `S,D` comparison in unit 009 and the scalar/tail
perturbation estimates in units 007--008 are direct consequences of the
displayed coordinate equations and named preceding results; they do not
introduce an unlisted generated condition. No proof text uses `E_cov`,
`E_chart_l1`, a target chart, or a clustering outcome as an assumption, and
no look-ahead state or pre-update pair matrix is hidden in the assembly.

## Target Claim Audit

The proof establishes the exact attempt-8 `step_004b` claim for every stored
certified slot on the derived `E_sm` interface: the raw right-sided sign
equation is same-state, the three defect classes are explicitly separated,
the finite-support charge is `eta_C=2 sqrt(r) tau_r`, and the no-label ledger
exhausts LOW, singleton, multi-support, empty, and threshold-straddling
cases. The barred equation is stated only under the later score/sign
condition, as required by the accepted sketch. The output makes no target
distance or selected-state claim, preserving the downstream residual-transfer
boundary. Quantifiers, stored-state versus look-ahead convention, and
conditional deterministic mode match the setting and accepted sketch.

## Explicit Rate Audit

- Exposed variables: `r`, `q_real`, `Gamma`, `tau_r=q_*^2/(10^4 r)`,
  `eta_G`, `eta_N`, `eta_C`, `eta_0`, `eta_rel`, the threshold/profile
  constants, and support size `m`.
- Hidden constants: only the displayed universal constants and fixed `q_*`.
- Fixed quantities: the realized instance on `E_sm` and one arbitrary
  certified stored state; the inequalities are deterministic and uniform
  over all certified slots.
- Probability mode: conditional/deterministic; no new probability conversion
  or union bound is claimed.
- Horizon mode: one fixed certificate state, with no proposal-time or
  all-time accumulation claim.
- Norm mode: Euclidean residual/coefficient norms, finite-support `l_1`,
  target-basis coordinate ratios, and the original score `|theta|`.
- Auxiliary conditions and absorption: `r>=3`, `q<=q_*`, `Gamma<=1.01`,
  `tau_r`, the non-LOW threshold, `eta_C`, the denominator reserve, the
  `68/72/144 eta_0` profile, and the singleton/multi numerical margins are
  all displayed. No hidden dependence on labels, coverage, `k`, confidence,
  or a generated condition number is introduced.
- Probability conversion: None.
- Rate-specialization contribution: supplies the explicit `sqrt(r) tau_r`
  certificate charge and the uniform support/profile constants downstream.
- Baseline reduction: at `q_real=0` and a stationary representative,
  `F_M=g_M=R_M^raw=0` and the exact same-state equation is recovered; finite
  orthogonal transients retain their residual and do not create an error floor.

## Notation Surface Audit

The only public-facing exports are `E_cert_eq` and `E_cert_tail`. `H_M`,
`L_M`, coefficient vectors, scale factors, threshold sets, profile
normalizers, and score ledgers are explicitly classified as appendix-local or
proof-local and are derived from the setting or accepted predecessor. Raw
setting symbols `P,Q,S,K,D,theta` remain raw; barred copies are conditional
proof-only objects. No one-off helper is exported as a primitive assumption,
and no notation drift or hidden condition number appears.

## Target-Step Assembly Audit

The named results form an acyclic assembly:
`prop:step-004b-raw` gives `E_cert_eq`; `lem:step-004b-scale`,
`lem:step-004b-gram`, `lem:step-004b-normalization`, and
`lem:step-004b-residual` give the three defect classes and coordinate ledger;
`lem:step-004b-profile` gives retained denominators and the weighted profile;
`lem:step-004b-singleton` and `prop:step-004b-multi` give the two score/tail
branches; `prop:step-004b-straddle` exhausts empty and mismatched-top cases;
and `prop:step-004b-barred` supplies the post-score proof convention. These
units jointly imply exactly `E_cert_eq` and `E_cert_tail`, with no dependency
on a future step as mathematical authority.

## Review Rationale

`ACCEPTED` is the smallest sound status. The frozen unit-attempt-1 proof is
faithful to sketch attempt 8 and the accepted `step_004` interface, proves
the same-state/raw-versus-barred conventions, and closes the theorem-critical
all-certified ledger with explicit finite residual, normalization, profile,
and boundary controls. Every local unit has a named theorem-style statement,
the local derivation and assembly use only allowed inputs, and the target,
rate, baseline, and notation contracts are preserved. No `/proof-step` or
`/proof-sketch` rerun is required.
