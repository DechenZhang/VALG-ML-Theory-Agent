# Proof Step Review

## Step Review Identity

- Branch: `perspective_1/idea_7`
- Sketch attempt: 1
- Step ID: `step_010`
- Unit attempt: 1
- Binding setting SHA-256: `1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a`
- Binding sketch SHA-256: `31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69`
- Binding sketch-review SHA-256: `b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e`
- Reviewed proof artifact: `perspective_1/idea_7/proof_steps/step_010/proof.md`
- Reviewed proof SHA-256: `5d44d0d35d98c22a3d88be1e0dc1882e632523cb53ad62a60964b3ad28274e01`
- Accepted dependency step_009 proof/review SHA-256: `a4b6fb97f55259816c35a8fe7e48b7bd5ef2b822c706acc50b086ba27e972761` / `664aae39e12238e0929b3ecac0e058070a5b09cb3375a0f6bdd6f2cc50ed6a6f`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_010

## Blocking Issues

1. **Location:** `unit_003` statement, lines 179--190. **Defect:** The
   theorem statement begins only with “Under unit_002”. `unit_002` is an
   audit handle, not a paper-ready mathematical dependency, and the statement
   does not itself name the accepted `E_land_pre`/step-009 conclusions that
   supply positivity, the coefficient identity, and the frozen range. The
   derivation is valid after those inputs are read, but downstream consumers
   cannot cite this lemma without recovering its assumptions from surrounding
   prose. **Downstream effect:** The exported direction field and target-chart
   orientation are not a self-contained theorem interface. **Smallest repair
   direction:** State the lemma under
   `Proposition~\ref{prop:step-010-frozen-solves}` (and, where needed, the
   named accepted step-009 reserve proposition), explicitly including the
   `E_land_pre`/`\beta<1` conditions; retain the existing derivation.

2. **Location:** `unit_004` statement, lines 216--228. **Defect:** “After
   all three independent frozen outputs have been computed” is a procedural
   sentence, not an assumption basis. The proposition uses the positive
   normalizers and the common frozen-input provenance from `unit_002`, but
   neither is named in the theorem statement. **Downstream effect:** The
   positivity condition needed to define `\widetilde\gamma_j^{1/3}` and the
   same-input condition needed for the synchronized commit are only
   recoverable from the proof body. **Smallest repair direction:** Rewrite
   the statement under
   `Proposition~\ref{prop:step-010-frozen-solves}` and the setting's frozen
   joint-commit rule, explicitly stating `\widetilde d_{M,j}>0` for all
   active columns before defining the rebalance.

3. **Location:** `unit_005` statement, lines 245--253. **Defect:** “Under
   units 001--004” again uses bare audit IDs as mathematical authority and
   omits named theorem-style references to the direction, rebalance, and
   accepted seed-scale results. **Downstream effect:** The public
   `d_Q(e^{\rm land},0)` interface is not self-contained under the local-unit
   contract, even though the displayed logarithm and norm calculations are
   correct. **Smallest repair direction:** Cite
   `Lemma~\ref{lem:step-010-directions}`,
   `Proposition~\ref{prop:step-010-rebalance}`, and the accepted
   `E_seed` scale conclusion explicitly in the proposition statement; state
   the exact target-span/chart conditions before asserting the quotient bound.

These are local theorem-interface defects. They do not require changing the
accepted sketch row, the step-009 dependency, the algorithm, or any numerical
constant.

## Per-Lemma Audit

### unit_001: unconditional unfolding-range inclusion

- Statement fidelity: PASS. The lemma proves the exact Moore--Penrose range
  claim required by the sketch, for every frozen design including singular
  designs, without adding a good-event premise.
- Proof validity: PASS. The unfolding identity
  `T_(M)=G_M D_lambda K_{-M}^{\top}` gives the left-range inclusion, and right
  multiplication by the frozen design and its Gram pseudoinverse preserves
  that range. The argument is valid independently for all three modes.
- Cited-result and assumption audit: PASS. The tensor decomposition and
  unfolding convention are setting identities; no inverse, target label, or
  landing output is imported. The singular/off-event branch remains covered.
- Rigor checklist: PASS. Dimensions and multiplication order are consistent,
  and no rank assumption is used to obtain the range statement.
- Local adversarial test: PASS. A rank-deficient or zero-column design still
  produces a product whose columns lie in `range(T_(M))`; the proof does not
  promote this to a quantitative basin claim.
- Contribution to target step: PASS. Supplies exact target-span membership on
  every tape.
- Verdict: PASS
- Repair direction: None

### unit_002: three independent frozen solves and positive normalizers

- Statement fidelity: PASS conditional on the accepted step-009
  `E_land_pre` interface. It targets the exact ordinary-inverse formulas,
  positivity, and one-frozen-seed ordering required by the sketch.
- Proof validity: PASS. The positive diagonal congruence makes each design
  full column rank on `E_land_pre`; the pseudoinverse therefore equals the
  ordinary inverse. Factoring `\widetilde B_M=\Xi_M L_M^0` and using the
  induced column bound gives `1-\beta\le a_{M,j}\le1+\beta`, hence strictly
  positive normalizers before the joint commit.
- Cited-result and assumption audit: PASS. The accepted step-009 reserves
  supply the congruence, inverse floor, and `\Xi_M` bound; the proof keeps the
  Moore--Penrose fallback separate on singular tapes and does not feed a
  landing output into another design.
- Rigor checklist: PASS. Diagonal scales are positive, the matrix order in
  the coefficient identity is correct, and the `\Gamma\eta_A<1` margin is
  used before the norm lower bound.
- Local adversarial test: PASS. Unequal positive weights are controlled by
  `\Gamma`; an off-event singular design is not silently assigned the
  ordinary formula.
- Contribution to target step: PASS. Supplies the legal simultaneous landing
  formulas and normalizer floors.
- Verdict: PASS
- Repair direction: None for the derivation; make the dependency basis
  explicit in the statement as described in Blocking Issue 1.

### unit_003: normalized direction fields

- Statement fidelity: REVISE_STEP. The claimed direction fields, zero
  perpendicular component, Euclidean column error, and positive target
  orientation are exactly the intended outputs, but the statement's bare
  “Under unit_002” premise is not a named theorem-style dependency.
- Proof validity: PASS after the statement repair. The identity
  `\Xi_M D_{a,M}^{-1}-I` splits into two terms, each controlled by
  `\beta/(1-\beta)` in both induced orientations. The direct column estimate
  gives the same Euclidean bound and positive target correlation.
- Cited-result and assumption audit: REVISE_STEP for interface form only. The
  accepted step-009 reserve and unit-002 conclusion are available, but must
  be named in the theorem statement rather than referenced by an audit ID.
- Rigor checklist: PASS. The diagonal normalization is positive before
  inversion, `2/(1-\beta)<3` follows from `\beta<1/64`, and the target sign
  chart is preserved.
- Local adversarial test: PASS. Maximal allowed `\beta` and arbitrary
  off-diagonal signs remain inside the displayed induced-norm and Euclidean
  bounds; no perpendicular field is reintroduced.
- Contribution to target step: PASS after the local statement rewrite.
- Verdict: REVISE_STEP
- Repair direction: Replace the bare unit-ID premise with explicit named
  propositions and the `E_land_pre` conditions; do not change the proof body.

### unit_004: joint commit and product-preserving rebalance

- Statement fidelity: REVISE_STEP. The product-preserving formula is exact,
  but the statement has no theorem-facing assumption basis: the positive
  normalizers and common frozen-input condition are supplied only by
  surrounding prose.
- Proof validity: PASS conditional on unit-002. All three outputs are formed
  from the same frozen seed before commitment; positive scaling preserves each
  rank-one product and leaves normalized directions unchanged.
- Cited-result and assumption audit: REVISE_STEP for the missing named
  interface, not for a dependency failure. The setting's joint-commit rule
  and the accepted positive-normalizer conclusion are sufficient once stated.
- Rigor checklist: PASS. The product ratio in (10) is exactly one, inactive
  columns remain zero, and no sequential U-to-V or V-to-W landing dependency
  is introduced.
- Local adversarial test: PASS. Mixed factor signs do not affect the positive
  rebalance identity; a zero-normalizer tape is excluded before this unit and
  remains an observable unsuccessful branch.
- Contribution to target step: PASS after the statement rewrite.
- Verdict: REVISE_STEP
- Repair direction: Add explicit named prerequisites (`E_land_pre`, the
  frozen-seed joint-commit rule, and positive active norms) to the proposition
  statement.

### unit_005: quotient entry after one rebalance

- Statement fidelity: REVISE_STEP. The numerical target is exact and stronger
  than required, but “Under units 001--004” is not a self-contained
  theorem-style dependency list.
- Proof validity: PASS. The product identity gives
  `s_j^{land}=-2s_j^0+\sum_M\log a_{M,j}`; the interval for `a_{M,j}` and
  the logarithm inequality yield `\|s^{land}\|_\infty\le1024\omega`, while
  the direction bounds give the stated `d_Q` envelope. The final
  `4096\omega<\rho_{\rm ALS}/3` arithmetic is correct.
- Cited-result and assumption audit: REVISE_STEP for the statement's bare
  unit IDs only. The accepted seed scale bound and the named direction and
  rebalance propositions provide all needed inputs.
- Rigor checklist: PASS. The fixed `q_*`, `\tau_r`, and
  `\rho_{\rm ALS}=1/1024` values give the displayed strict margin; no
  probability or horizon upgrade is hidden.
- Local adversarial test: PASS. At the exact orthogonal/equal-weight seed all
  actual defects vanish; at maximal `\beta` the logarithm remains in its
  positive interval.
- Contribution to target step: PASS after the theorem-statement repair.
- Verdict: REVISE_STEP
- Repair direction: Cite the named direction/rebalance results and the
  accepted `E_seed` scale conclusion explicitly, then retain equations
  (12)--(15).

## Hidden Subclaim Scan

PASS for mathematical coverage. The five mapped units cover the MP range,
ordinary-inverse reduction, all-mode normalizer floors, normalized direction
fields, synchronized commit, product preservation, quotient logarithms, and
the final radius arithmetic. The only hidden issue is dependency provenance:
units 003--005 use audit IDs or procedural context instead of theorem-style
assumption statements. No unreviewed algebraic lemma, post-solve comparator,
or sequential landing input is smuggled into the proof.

## Target Claim Audit

PASS conditional on the local statement repairs. The submitted derivation
establishes the exact sketch-row claim: Moore--Penrose range inclusion on all
tapes; ordinary formulas and positive normalizers under `E_land_pre`; three
outputs evaluated from one frozen seed and committed together; one
product-preserving rebalance; zero perpendicular fields; and
`d_Q(e^{\rm land},0)\le4096\omega<\rho_{\rm ALS}/3`. As written, the
target cannot be accepted under the local-unit contract because three exported
units do not expose their named prerequisites.

## Explicit Rate Audit

- Exposed variables: `r`, `q_*`, `\Gamma`, `\eta_A`,
  `\beta=\Gamma\eta_A`, `\tau_r`, `\omega`, `\rho_{\rm ALS}`, positive
  realized `\lambda_j`, and the accepted seed log field `s^0`.
- Hidden constants: only the fixed numerical margins; no dependence on `n`,
  `\kappa_0`, `\rho`, `\epsilon`, either confidence parameter, target
  labels, generated condition numbers, or post-solve objects.
- Fixed quantities: one realized tensor, one frozen active seed, the prescribed
  `q_*`, `\tau_r`, and `\rho_{\rm ALS}`; all three mode solves form one finite
  transaction.
- Probability mode: deterministic conditional on `E_land_pre`/`E_seed`; no
  probability conversion is performed.
- Horizon mode: one synchronized landing pass and one rebalance; no
  chronological accumulation.
- Norm mode: induced row/column `\ell_1`, Euclidean column norms, and the
  quotient `d_Q` metric.
- Admissibility and absorption: `\beta\le128\omega<1/64`, `r\ge3`, positive
  `\lambda_j`, `2/(1-\beta)<3`, the logarithm bound, and the displayed
  `2\|s^0\|_\infty+6\beta\le1024\omega` inequality are explicit.
- Probability conversion: none.
- Contribution to rate specialization: exact target-span entry and a
  condition-number-free basin-scale quotient radius.
- Baseline reduction: at an exact orthogonal/equal-weight certified seed,
  `q_{\rm real}=0`, `C_M^0=N_M^0=s^0=0`, `J_M^0=Q_M^0=I`, and
  `\Xi_M=I`; all landing outputs and the rebalance are exact and the residual
  is zero. The fixed positive `\tau_r` and `\omega` are not set to zero.

## Notation Surface Audit

PASS for mathematical notation. `K_{-M}`, `P_{-M}^0`, `\Xi_M`, `L_M^0`,
`\ell_j^0`, `D_{a,M}`, `a_{M,j}`, and `v_{M,j}` are explicitly defined
translations, and the public exports are only the direction fields, product
log, range, normalizer, and quotient bounds. The theorem-style references
must be repaired so these objects are not justified by audit IDs.

## Target-Step Assembly Audit

PASS conditional on the same local repairs. Accepted step-009 supplies the
positive congruence, inverse floor, coefficient similarity, and normalizer
reserve; unit_001 supplies unconditional range inclusion; unit_002 supplies
the three independent ordinary formulas; unit_003 supplies normalized exact
span; unit_004 preserves the committed products; and unit_005 supplies the
quotient radius. The dependency path is acyclic and all three modes remain
frozen-input/synchronized. The current assembly is not contract-valid only
because units 003--005 do not state those dependencies with theorem-style
labels.

## Review Rationale

`REVISE_STEP` is the smallest sound outcome. The MP range argument, ordinary
versus pseudoinverse split, synchronized all-mode commit, positive rebalance,
gauge/orientation handling, constants, off-event/singular branches, baseline
specialization, and target arithmetic all pass. A local rewrite of three
theorem statements is required by the proof-step contract before downstream
step-011 can cite the exported direction, rebalance, and quotient interfaces;
no dependency retry or sketch revision is warranted.
