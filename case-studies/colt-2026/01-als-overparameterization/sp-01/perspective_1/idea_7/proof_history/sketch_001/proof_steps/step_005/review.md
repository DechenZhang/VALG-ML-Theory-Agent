# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 1
- Binding setting SHA-256: `1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a`
- Binding sketch SHA-256: `31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69`
- Binding sketch-review SHA-256: `b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e`
- Reviewed proof artifact: `perspective_1/idea_7/proof_steps/step_005/proof.md`
- Reviewed proof SHA-256: `9bca5c10bd7fd97eff2467cc9e766f64d6abcb211e49c17764b2cfd6b0025e1c`
- Accepted dependency proof SHA-256 (`step_004`): `6b2073b568dc2f94ffa871256831a26a2f2b6772b980b1c2207fd679ddde7922`
- Accepted dependency review SHA-256 (`step_004`): `287df7342183d926bcb1c665cd60878f162859396e0143e3e9fd3268869ee471`
- Accepted coverage dependency proof SHA-256 (`step_003`): `2ec3af5229ee6717bb501939c614b65a7163694fb3f478395c8ff163df2ed551`
- Accepted geometry dependency proof SHA-256 (`step_001`): `467b0960c46a1487155b3ed5354d069fa7e6a477cf6a7efac6d779aefc801207`

## Step-Review Status

`REVISE_STEP`

## Smallest Retry Target

`/proof-step step_005`

## Blocking Issues

1. **A helper symbol changes mathematical type.** At `proof.md:179-182`,
   `alpha_{M,a}` is the scalar orientation multiplier
   `(s_a,1,1)` used in `bar r_{M,a}=alpha_{M,a}r_{M,a}`. At
   `proof.md:287-323`, the same `alpha_{M,a}` is reintroduced as the
   vector of target-span coordinates in `bar p_{M,a}=G_M alpha_{M,a}`.
   Consequently the statements and derivation of (10)--(14) are
   ill-typed/ambiguous as written, and the exported coefficient ledger has
   no unambiguous notation. Rename one object (for example, use
   `eta_{M,a}` for the sign multiplier and reserve `alpha_{M,a}` for span
   coordinates) throughout the lemma, equations, and notation notes.

2. **The displayed scalar-conversion identity has the wrong sign.** At
   `proof.md:320-323`, from (12) the extra term when replacing `d` by
   `sigma` is
   `(1/d-1/sigma) B`, not
   `(d/sigma-1)B/d`; the latter is its negative. The subsequent norm bound
   is unchanged, but the claimed exact identity is false. Flip the sign or
   state only the corresponding norm inequality after the symbol rename.

3. **Latent-coordinate threshold sets are called observable.** At
   `proof.md:404-436` and `:602-605`, `T_{M,a}` is described as an
   "observable" threshold set even though it is defined from
   `c_{M,a}=G_M^T p_{M,a}` and therefore uses the unknown target factors.
   The score pool `H` is observable, but these target-coordinate threshold
   sets and witness indices must be explicitly proof-only. Correct the
   classification and ensure no downstream no-label argument treats
   `T_{M,a}` as an algorithmic test.

## Per-Lemma Audit

### unit_001: signed certificate equation and score-preserving orientation

- Statement fidelity: PASS. The unit targets the exact raw right-sided
  equation, common score sign, product-preserving orientation, and scalar
  reserve required by `E_cert_eq`.
- Proof validity: PASS after disambiguating the later coefficient notation.
  Multiplying the projective residual by the contraction norm is valid;
  multilinearity gives `p_M^T G_M k_M=theta`; and `tau_r<1` forces every
  minimizing sign to equal `sign(theta)`. The orientation preserves the
  rank-one term and gives the barred equation.
- Cited-result and assumption audit: PASS. The nonzero contractions and
  `zeta<=tau_r` are inherited from the accepted step-004 certificate, while
  the realized Gram bounds are inherited from step 001. Coverage witnesses
  are used only in the later score-floor unit.
- Rigor checklist: PASS. The inner-product scalar cancellation and the
  per-column residual bound are correct, including arbitrary per-mode raw
  signs and the exact zero-interference fixed-point case.
- Local adversarial test: PASS. A fixed point with mixed factor signs still
  has one common projective sign and the product-preserving orientation does
  not change its represented tensor.
- Contribution to target step: PASS. Supplies the raw and barred same-state
  identities and the one-time residual scale.
- Verdict: PASS.
- Repair direction: None for this unit; use a distinct name for its scalar
  sign multiplier when referenced by unit 002.

### unit_002: projected Gram-leak and finite residual ledger

- Statement fidelity: PASS. The selector inequality, coordinate defect,
  target-span expansion, first-order/cross Gram leaks, and projected
  certificate charge match the accepted row.
- Proof validity: REVISE_STEP. Once the two meanings of `alpha_{M,a}` are
  separated, the expansion and bounds (8)--(14) are valid. In the submitted
  artifact the type collision makes (10)--(14) formally ambiguous, and the
  scalar replacement identity at (22) has the sign error listed above.
- Cited-result and assumption audit: PASS. Full-rank span coordinates follow
  from the accepted `E_sm` Gram floor; the residual is in the realized span
  because both sides of the barred equation are there. No landing or cluster
  property is imported.
- Rigor checklist: PASS modulo the two local notation/algebra repairs.
  The induced-norm, Cauchy--Schwarz, pseudoinverse, and `sqrt(r) tau_r`
  calculations retain the required factors and do not double-count scalar
  normalization.
- Local adversarial test: PASS after repair. The bounds remain valid for
  signed coordinates, maximal allowed Gram leakage, and the exact `q=0,
  tau_r=0` specialization.
- Contribution to target step: PASS after repair. This unit supplies the
  finite weighted ledger consumed by the threshold unit and downstream
  selected-state closure.
- Verdict: REVISE_STEP.
- Repair direction: Rename the sign multiplier, correct the scalar-conversion
  sign, and recompute the displayed type annotations without changing the
  target claim.

### unit_003: observable score floor and threshold/tail ledger

- Statement fidelity: PASS. The score-floor, retained-pool, dominant
  coordinate, selector, and weighted-tail inequalities are the intended
  `E_cert_tail` outputs.
- Proof validity: PASS. The coverage ratio bounds give the stated
  `a_win` and `u_win` controls; the reverse-triangle score floor, high-score
  normalization, threshold intersection, and Cauchy--Schwarz tail bounds
  have valid constants for every `r>=3`.
- Cited-result and assumption audit: PASS conditional on the step-004
  coverage-witness interface. The witness labels are proof annotations and
  the score pool itself is computed from the observable tensor score.
- Rigor checklist: PASS. The argument handles unequal weights through
  `Gamma<=1.01`, keeps the residual conversion explicit, and does not add a
  probability or clustering assumption.
- Local adversarial test: PASS. Off-target signs, threshold ties, mixed-sign
  exact components, and a high-score slot unrelated to the witness target do
  not invalidate the absolute-value ledger.
- Contribution to target step: PASS once the threshold sets are explicitly
  classified as proof-only rather than algorithmic observables.
- Verdict: REVISE_STEP.
- Repair direction: Correct the observable/proof-only wording and preserve
  the existing score-based `H` definition.

## Hidden Subclaim Scan

The independent mathematical claims are all present in the three-unit map:
the signed equation, the projected/coefficient ledger, and the score/tail
ledger. Multilinearity, induced-norm bounds, span membership, numerical
threshold checks, and the finite event conjunction are proved in those units;
there is no missing landing, clustering, or cyclic-ALS subclaim. The only
unresolved issues are the local notation/type collision, the scalar sign typo,
and the observable-scope misclassification listed above.

## Target Claim Audit

Apart from those local repairs, the proof establishes the exact accepted
claim on the generated `E_cert` and `E_sm` interfaces: every stored slot has
the raw signed equation and product-preserving barred equation, the projected
residual is charged at `sqrt(r) tau_r`, and the finite weighted selector and
tail ledger is available before clustering. The construction remains
deterministic conditional on the accepted events and introduces no new
confidence factor, label, landing condition, or future ALS invariant. The
submitted artifact is not accepted only because the ambiguous notation and
false exact sign identity prevent a paper-ready target-step assembly.

## Explicit Rate Audit

- Exposed variables are `r`, `q_real<=q_*`, `Gamma<=1.01`, `tau_r`,
  `lambda_min`, `lambda_max`, `sigma_max`, and the displayed
  `sqrt(r(1+q)) tau_r`/`sqrt(r) d tau_r` charges.
- The certificate residual is charged once per finite stored slot; it is not
  multiplied by a later selection or ALS horizon. The score conversion,
  `d>3 lambda_min/4`, `lambda_max/d<7/5`, and `eta_score<1/2000` checks expose
  the needed margins.
- Probability mode is deterministic conditional on the accepted generated
  events, horizon is one finite stored state per slot, and no hidden
  condition-number or confidence dependence is introduced.
- Baseline reduction is substantively preserved (all defects vanish at an
  exact orthogonal component), but the repaired notation should describe the
  result up to the product-one sign gauge rather than assert that the current
  one-coordinate orientation always makes every `bar c_M=e_j`.

## Notation Surface Audit

`H_M`, `Delta_M`, `B_M`, `L_M`, `X_M`, and `varrho_M` are appropriately
appendix-local, while the equation/tail events are the only public outputs.
The scalar/vector reuse of `alpha_{M,a}` is not acceptable under the
notation-provenance contract and is the primary retry reason. The
target-coordinate sets `T_{M,a}` and witness indices must also be marked
proof-only; only the score-defined pool `H` is observable. After these local
changes, the helper surface is economical and all constants have explicit
provenance.

## Target-Step Assembly Audit

The accepted step-004 certificate and step-001 Gram interface jointly supply
the inputs. Unit 001 gives the signed equation, unit 002 projects and expands
it, and unit 003 derives the finite score/tail ledger. The dependency path is
complete and no sketch or dependency change is needed. Current assembly is
blocked only by the ambiguous `alpha` references and the incorrect exact
scalar-conversion sign; those must be repaired and freshly reviewed before
step 006/007 consume the artifact.

## Review Rationale

`REVISE_STEP` is the smallest sound status. The intended mathematics and
interfaces are otherwise viable, and no new bridge, assumption, dependency,
or target change is required. A single producer retry can rename the two
different `alpha` objects, correct the sign in the score conversion, and
explicitly keep latent-coordinate thresholds proof-only. After that retry, a
fresh `/proof-step-review step_005` is required before downstream use.
