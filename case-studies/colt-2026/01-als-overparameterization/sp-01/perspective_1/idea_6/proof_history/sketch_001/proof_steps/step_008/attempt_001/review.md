# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 1
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_008/proof.md`
- Frozen SHA-256:
  `db0fc621b3ee7c11f491e93bea72e7fc800a7129a863a2975bd7c18403bd8691`
- Accepted sketch SHA-256:
  `97ca4a325c425bd2abf3ea13d6f68be96a3d7bd182f1d939a69127a44ff97bf3`
- Reviewed setting SHA-256:
  `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Accepted dependencies:
  - `perspective_1/idea_6/proof_steps/step_001/proof.md`, frozen SHA-256
    `d8a566c9d56d59699fc65dcc5cd79db0cea9ed2a73df7d703b2bc17aa25f407c`,
    with accepted review SHA-256
    `c4e9cd72ff31b4cbd021aa2f1674ccfa19dbf8cf070e6c46545558dd8ab50750`.
  - `perspective_1/idea_6/proof_steps/step_007b/proof.md`, frozen SHA-256
    `7c540efa61e1713c6260bbf7f66a1ab7b8d3b8038f7b81fd1baffa1995a8daf5`,
    with accepted review SHA-256
    `086c0e421f3526aa58142c5a7ebc3d82bb693a2d7ce1d682ff2fa10bb3750f2b`.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_008

## Blocking Issues

1. **The arbitrary-held-scale equivariance used by the literal-orbit claim is
   asserted but not proved.** In Proposition~\ref{prop:step-008-block-output}
   (lines 173--227), the displayed calculation assumes that both held modes
   have the same canonical diagonal `R_s`, so it proves the formula with
   `R_s^{-2}` only in that representative.  The final sentence says that the
   same cancellation holds for arbitrary positive held amplitude diagonals,
   but gives no normal-equation identity for that case.  Lemma~\ref{lem:step-008-chronology}
   then invokes (2.2) for a literal state with potentially different held
   norms (lines 502--509).  Thus the claimed quotient equivalence between the
   balanced refreshed state and the actual literal ALS intermediate is not
   established.  The smallest repair is local: introduce arbitrary positive
   diagonals `D_A,D_B`, set `R=D_AD_B`, derive
   `K=(P_B\odot P_A)R`, `K^TK=RJR`,
   `X_M^+=G_MD_\lambda QJ^{-1}R^{-1}`, and then derive both the represented
   product `lambda_j nu_j` and the normalized direction independently of
   `R`.  The fixed-chart/sign condition should be stated at the same point.

2. **`c_M`, `d_Q`, and the state norm are used before they are defined.**
   Proposition~\ref{prop:step-008-held-estimate} (lines 234--245) assumes
   `c_A`, `c_B`, and `||e||_Q`, but their only formula appears later in
   Lemma~\ref{lem:step-008-chronology} (lines 446--455).  `c_M` is not a
   setting-defined symbol (the setting defines `d_Q` inline), and `e` is not
   introduced in unit_003's statement.  This violates the self-contained
   local-unit and notation-provenance requirements and makes the key
   Lipschitz hypothesis ambiguous at the point where it is consumed.  Move
   the full `c_M`, `d_Q`, and `||e||_Q` definitions before unit_003, or restate
   unit_003 entirely in terms of its two held pairs and explicit row, column,
   and ambient bounds.  This is a local ordering/notation repair, not a
   change to the accepted sketch interface.

3. **The ambient column-normalization component of the unit_003 Lipschitz
   estimate is only asserted.** After proving the row/column estimate in
   (3.11), the proof says that the ambient bound
   `max_j ||G_M Delta C_M^+(:,j)||_2 < 11mD_h` follows from the “same
   columnwise calculation” (lines 354--369), but never writes that
   calculation.  This is an independent target-metric component, not a
   notation convention.  It must explicitly use, for each column,
   `G_M Delta C_j^+ = G_M Delta Y_j/nu_j + G_M tilde Y_j(1/nu_j-1/tilde nu_j)`,
   `||G_M tilde Y_j||_2=tilde nu_j`,
   `|nu_j-tilde nu_j| <= ||G_M Delta Y_j||_2`, and
   `||G_M Delta Y_j||_2 <= ||Delta Y(:,j)||_1`, followed by the
   `(1-theta)^{-1}` bounds and the numerical `5.25 -> 11` inequality.  Until
   this is displayed, unit_003 proves only the induced row/column and `s`
   pieces, not the ambient part of `c_M`; the sequential `d_Q` contraction
   therefore does not follow.  The same paragraph should also state why the
   diagonal output remains in the fixed oriented chart (for example from
   `||Y-I||_{rc}<4m rho`).

## Per-Lemma Audit

### unit_001: canonical product-one quotient representative

- Statement fidelity: PASS. The unit states the positive product-one action,
  equal-norm representative, represented product, and target-span coordinate
  map required by the step.
- Proof validity: PASS. The product-preserving rescaling factors multiply to
  one, uniqueness follows by comparing the common cube of the three norms,
  and the accepted Gram floor gives uniqueness of target-span coordinates.
- Cited-result and assumption audit: PASS. Positivity and full column rank are
  supplied by `E_sm`; no trajectory or convergence fact is assumed.
- Rigor checklist: PASS. Nonzero columns, orientation, gauge invariance, and
  the logarithm domain are explicit. The positive-chart restriction is the
  correct one for the setting.
- Local adversarial test: PASS. A componentwise product-one rescaling leaves
  both directions and `gamma_j` unchanged, while unequal raw mode norms are
  balanced without changing the represented rank-one term.
- Contribution to target step: PASS. It supplies the canonical quotient
  object, subject to the scale-equivariance gap recorded in blocker 1 for
  comparing it with a literal orbit.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact scale-free normal-equation output

- Statement fidelity: REVISE_STEP. The target row requires exact block-scale
  equivariance, but the theorem statement and displayed derivation cover only
  the common held diagonal `R_s`; arbitrary positive held scales are mentioned
  only in an unsupported final sentence.
- Proof validity: PASS for the common canonical representative. The
  Khatri--Rao identity, inverse ordering, product identity, and normalization
  are correct in that stated case.
- Cited-result and assumption audit: REVISE_STEP. No external result is at
  fault, but the unproved arbitrary-diagonal extension is a theorem-critical
  local subclaim used later by the chronology.
- Rigor checklist: REVISE_STEP. The missing `D_A,D_B` calculation leaves the
  scale cancellation and literal-orbit transfer incomplete; signs/positive
  chart preservation should be tied to the same local bound.
- Local adversarial test: REVISE_STEP. Start from a literal representative
  with held norms `a_{A,j}` and `a_{B,j}` unequal. The displayed `R_s^{-2}`
  formula cannot be applied to that state, so quotient equivalence has no
  proved path even though the asserted conclusion is true after the missing
  `R=D_AD_B` derivation.
- Contribution to target step: REVISE_STEP. Without this extension,
  `e_U,e_V,e_W` need not be shown to represent the literal ALS states.
- Verdict: REVISE_STEP
- Repair direction: Add the arbitrary-diagonal normal-equation and product
  calculation described in blocker 1, then re-audit unit_005's chronology.

### unit_003: target-span held-input estimate

- Statement fidelity: REVISE_STEP. The held-pair hypotheses use undefined
  forward symbols `c_M`, `e`, and `||e||_Q` at the point of statement.
- Proof validity: REVISE_STEP. The induced Gram, resolvent, diagonal-similarity,
  and reciprocal-log estimates are materially supported, but the ambient
  column-normalization bound in the target metric is only asserted.
- Cited-result and assumption audit: PASS for the accepted `E_sm` floor and
  `Gamma<=1.01`; the missing ambient calculation is local and does not require
  a new dependency.
- Rigor checklist: REVISE_STEP. The proof must show the normalization
  decomposition and the l1-to-ambient inequality before exporting the full
  `c_M` bound; it should also explicitly discharge the fixed sign chart.
- Local adversarial test: REVISE_STEP. Two states can have the same induced
  row/column coefficient budget while their normalized ambient columns differ
  through the reciprocal-norm term. The omitted second term is exactly the
  term that must be bounded to rule out this failure.
- Contribution to target step: REVISE_STEP. This unit is the sole source of
  the ambient and common-product output Lipschitz bounds used by the
  chronology and full-sweep contraction.
- Verdict: REVISE_STEP
- Repair direction: Define the metric inputs before the unit and display the
  columnwise normalization estimate in blocker 3; preserve the existing
  `11m<ell` arithmetic after the derivation.

### unit_004: quotient differential kernel

- Statement fidelity: PASS. The proposition identifies the componentwise
  product-one scaling kernel at the exact balanced factors, as requested.
- Proof validity: PASS. Full column rank gives duals; contractions isolate
  each component, perpendicular parts vanish, off-diagonal coefficients vanish,
  and diagonal coefficients obey the zero-sum relation. At exact fit the
  Hessian is the Gram of the differential.
- Cited-result and assumption audit: PASS. The only structural input is the
  accepted realized Gram floor; the argument is direct in current notation.
- Rigor checklist: PASS. Component, mode, weight, and quotient-tangent
  quantifiers are consistent. The converse scaling inclusion is immediate
  from the displayed differential formula.
- Local adversarial test: PASS. Nonorthogonal but full-rank realized factors
  still admit the dual isolation, and unequal positive `lambda_j` do not alter
  the kernel.
- Contribution to target step: PASS. It supplies the quotient-Hessian kernel
  interface independently of the two local gaps above.
- Verdict: PASS
- Repair direction: None.

### unit_005: chronological refresh, exact span, and literal-orbit identity

- Statement fidelity: PASS conditional on repairing unit_002. The chronology,
  common-register overwrite, target-span range, and zero-padding targets match
  the accepted sketch row.
- Proof validity: REVISE_STEP. The exact unfolding and tube closure are sound
  once the held-input estimate is available, but lines 502--509 apply (2.2) to
  arbitrary literal held norms even though unit_002 only proved the common
  `R_s` case. This is the downstream manifestation of blocker 1.
- Cited-result and assumption audit: PASS conditional on the local scale
  extension; accepted `step_007b` supplies the actual first-sweep entry and
  zero-padding identity.
- Rigor checklist: REVISE_STEP for the same scope mismatch. After the repair,
  the stated overwrite chronology correctly keeps only `s_W^+` in `e_W`.
- Local adversarial test: PASS conditional. With the generalized `R=D_AD_B`
  identity, arbitrary positive componentwise rescalings change only the
  representative and cannot change the represented product or direction.
- Contribution to target step: REVISE_STEP until literal-orbit equivalence is
  justified for the actual (possibly unbalanced) intermediate scales.
- Verdict: REVISE_STEP
- Repair direction: Consume the repaired unit_002 formula explicitly in the
  three chronology transitions and retain the existing range/pseudoinverse
  argument.

### unit_006: invariant quotient basin and completed map

- Statement fidelity: PASS conditional on units 002, 003, and 005. The map,
  factor, invariant-domain, and stationary-baseline claims match the sketch.
- Proof validity: PASS conditional. The numerical calculation
  `ell=17/512<1/16` and the max-norm composition are correct once each
  coordinate-output bound and refreshed-state legality has been established.
- Cited-result and assumption audit: PASS conditional on the repaired local
  producers; no new dependency is introduced.
- Rigor checklist: PASS conditional. The argument correctly avoids claiming
  intermediate full-state contraction and uses the exact target as the second
  comparison state for invariance.
- Local adversarial test: PASS. At the orthogonal equal-weight stationary
  point `Q=J=I`, `Y=I`, every refreshed common register is zero; the prior
  coherent-perpendicular obstruction is excluded by the accepted exact-span
  entry domain.
- Contribution to target step: PASS conditional on repaired coordinate and
  chronology units.
- Verdict: PASS
- Repair direction: None after the earlier local repairs are accepted.

## Hidden Subclaim Scan

The local map lists the main gauge, normal-equation, held-input, kernel,
chronology, and contraction claims. Two theorem-critical subclaims are not
actually discharged in the local derivation: extension of the normal equations
from common canonical held scales to arbitrary positive held scales, and the
ambient columnwise normalization estimate needed by `c_M`. The use of `c_M`
and `||e||_Q` before their definitions is an additional local notation/provenance
defect. Apart from these points, the target-span unfolding, zero-padding block
identity, induced inverse floor, chronological overwrite, and stationary
baseline calculations are explicitly represented; no unrestricted full-tube
claim is smuggled in.

## Target Claim Audit

The proof has the correct target domain and the correct numerical contraction
factor, and the accepted dependencies supply the exact target-span entry. It
does not yet establish the exact target claim because (i) the literal-orbit
identity relies on an unproved arbitrary-scale equivariance extension and (ii)
unit_003 does not prove the ambient component of the exported `d_Q` output
bound. The forward reference to `c_M`/`d_Q` also prevents unit_003 from being a
self-contained theorem-style input. These are local proof defects; the sketch
interface, domain, rate, and baseline need not change.

## Explicit Rate Audit

- Exposed variables are `q_*`, `rho_ALS`, `Gamma`, the induced row/column
  budgets, the ambient column norm, the common-product infinity norm, and the
  one-sweep/geometric horizon. The dependency is deterministic conditional on
  `E_sm` and `E_parallel_entry`.
- Hidden constants are intended to be universal numerical constants only; no
  new rank, dimension, confidence, or condition-number dependence is needed
  for the repairs.
- The inverse floor, diagonal-similarity cost, and `11m<ell` absorption are
  displayed. The missing ambient normalization inequality is nevertheless a
  required rate-preserving term, not a cosmetic omission.
- There is no probability conversion in this step. The baseline specialization
  at the exact orthogonal equal-weight stationary point is correctly stated,
  with no error-floor substitution.

## Notation Surface Audit

The canonical quotient objects and helper matrices are reasonably scoped, but
`c_M` is incorrectly described in the notes as “setting-defined” even though
the setting only expands `d_Q` and does not name `c_M`. Define `c_M`, `d_Q`, and
the zero state before any local unit that consumes them. The arbitrary-scale
diagonals needed for the literal-orbit bridge should likewise be named and
classified as proof-local, with their dependence on the original factor norms
shown explicitly.

## Target-Step Assembly Audit

Units 001, 004, and the exact range/zero-padding portion of unit 005 are
sound. The assembly cannot currently export `E_basin_parallel`: unit 002 does
not prove the scale-equivariant literal-orbit bridge, and unit 003 does not
export the full `c_M`/`d_Q` output metric. Unit 006's numerical contraction is
valid only after those producers are repaired. A fresh review is required
after the local proof-step rerun before downstream consumption.

## Review Rationale

`REVISE_STEP` is the smallest required status. The accepted sketch already
specifies the same quotient domain, common-register chronology, and full-sweep
map, and the missing statements can be supplied by local algebra and a local
normalization estimate. This is not a changed dependency, target, or theorem
contract, so `/proof-sketch` or idea generation is unnecessary. The producer
must rerun `step_008` with the three local repairs above, after which a fresh
`/proof-step-review step_008` is required.
