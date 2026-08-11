# Proof Step Review

## Step Review Identity

- Sketch attempt: 8
- Step ID: step_008
- Unit attempt: 1
- Reviewed proof artifact:
  `perspective_1/idea_5/proof_steps/step_008/proof.md`
  (SHA-256 `585e538cf3389b555f1c751d2a3882bde6eb738f987e69455247bd9c8b5d1859`)
- Accepted dependencies checked: `step_001/proof.md` and `review.md`, and
  `step_007/proof.md` and `review.md`. The accepted `step_006` row/column and
  perpendicular interfaces were also checked as provenance for their
  restatement inside accepted step_007.
- Frozen producer identity: `Step Proof Status = PARTIAL_BLOCKED`; the
  reviewed hash matches the producer's frozen signal.

## Step-Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Blocking Issues

1. Location: Proposition~\ref{prop:step-008-tube-obstruction}, especially
   (8.17)--(8.24), and the target-step assembly. Defect: the accepted
   quotient norm controls perpendicular error column by column but has no
   collective perpendicular-Gram field. In the orthogonal equal-weight
   specialization, shared perpendicular components of size below the tube
   radius generate the coherent pair-Gram term
   `t^4 1 1^T`; for allowed `r t^4 >= 3`, the first updated mode has induced
   off-diagonal dual mass greater than `3/4`. The later two mode updates and
   quotient rebalancing do not change that direction. Downstream effect: the
   advertised per-mode bound, uniform `<1/4` cyclic contraction,
   `E_basin`, all-sweep tube invariance, and the input expected by step_009
   are unavailable. Smallest repair: revise the sketch to add a produced
   collective perpendicular control to `E_quotient` and the contraction
   tube, or replace the full-tube claim by a sourced first-sweep bridge from
   the stronger step_007 entry control followed by contraction on the
   target-span manifold.
2. Location: the accepted `step_007 -> step_008 -> step_009` generated-output
   interface. Defect: repairing only the submitted step proof cannot prove
   the false full-tube statement; the producer, dependency/output interface,
   and exact contraction domain must change together. Downstream effect:
   step_009 cannot legally consume a trajectory invariant merely inferred
   from the current `Q`-tube membership. Smallest repair: `/proof-sketch`,
   with the revised producer-consumer path and contraction domain stated
   before any new step proof attempt.

## Per-Lemma Audit

### unit_001: exact zero-padding reduction

- Statement fidelity: PASS. The proposition proves the rank-`k`
  Moore--Penrose reduction requested by the sketch whenever the active pair
  design is full rank.
- Proof validity: PASS. The pair Gram is exactly block diagonal with active
  block `K_A^T K_A` and a zero inactive block, so its pseudoinverse is
  `diag((K_A^T K_A)^(-1),0)`. Multiplication gives the active ordinary
  inverse update and frozen zero columns in every mode.
- Cited-result and assumption audit: PASS. The frozen-zero rule is a primitive
  procedure definition, and active full rank is proved later by unit_003;
  no future contraction or generated basin condition is assumed.
- Rigor checklist: PASS. Matrix dimensions, singular and nonsingular blocks,
  cyclic reuse, and the inactive-column boundary are handled explicitly.
- Local adversarial test: PASS. The identity remains exact at the target and
  for every full-rank active design, while making no assertion on a singular
  active branch.
- Contribution to target step: PASS. It supplies the exact zero-padding
  equivalence, one valid part of the target claim.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact quotient-Hessian kernel

- Statement fidelity: PASS. The proposition identifies exactly the two
  product-one scaling directions per component and no additional Hessian
  kernel directions.
- Proof validity: PASS. Contracting a zero CP differential against two
  target-dual columns isolates one component and forces each mode variation
  to be parallel to its target column. The three scalar coefficients must
  sum to zero, and the converse substitution verifies every such scaling
  variation. At zero residual, the Hessian identity `D F^* D F` is exact.
- Cited-result and assumption audit: PASS. Accepted `E_sm` makes every target
  Gram invertible and supplies the dual bases. The Uschmajew source is not
  used as authority for this direct current-notation proof.
- Rigor checklist: PASS. Positive target amplitudes, all component and mode
  quantifiers, the converse inclusion, and the zero-residual specialization
  are explicit.
- Local adversarial test: PASS. Orthogonal factors, maximal permitted Gram
  interference, and unequal positive weights preserve the dual isolation;
  discrete permutations create no infinitesimal kernel.
- Contribution to target step: PASS. It proves the positive quotient-Hessian
  source but does not by itself imply a uniform quantitative neighborhood.
- Verdict: PASS
- Repair direction: None.

### unit_003: dual-projected active inverse floor

- Statement fidelity: PASS. The lemma proves the requested normalized
  active inverse branch on the declared `Q` tube, while correctly separating
  that valid lower-floor claim from the failed contraction claim.
- Proof validity: PASS. The cross Gram
  `K_0^T K = B_(M'') circ B_(M')` differs from identity by at most
  `2R+2R^2` in induced row and column norms. The accepted target-dual
  conditioning then yields
  `sigma_min(K) >= (1-q)(1-2R-2R^2)` and hence the squared floor in (8.9).
  Factoring the positive amplitudes gives the ordinary inverse (8.10) and
  the explicit polynomial `kappa_0` bound (8.11).
- Cited-result and assumption audit: PASS. The Khatri--Rao norm comparison is
  restated from accepted step_007, `E_sm` supplies the target duals, and
  `assump:base-scale` is used only to lower-bound realized amplitudes.
- Rigor checklist: PASS. The proof distinguishes singular values from Gram
  eigenvalues, checks the `31/32` arithmetic, and keeps normalized and raw
  amplitude-scaled inverses separate.
- Local adversarial test: PASS. Coherent perpendicular errors may enlarge a
  pair Gram but do not defeat the dual-projected lower bound; this is
  consistent with unit_004, where the obstruction is large induced mixing,
  not loss of invertibility.
- Contribution to target step: PASS. It supplies the active inverse needed
  by unit_001 and isolates the failure to the contraction interface.
- Verdict: PASS
- Repair direction: None.

### unit_004: full-tube contraction obstruction

- Statement fidelity: REVISE_SKETCH. The proposition does not establish the
  intended contraction; it correctly proves that the exact accepted
  full-tube claim is false.
- Proof validity: PASS as an obstruction. For
  `p_(V,j)=p_(W,j)=sqrt(1-t^2)e_j+t h`, all four fields of the accepted
  quotient norm are below `R`. The first pair Gram and cross Gram are exactly
  `(1-t^4)I+t^4 1 1^T` and `(1-t^2)I`. The rank-one inverse, column
  normalization, and choice `(r-1)t^4 >= 3` give off-diagonal dual column
  mass greater than `3/4`. Subsequent block updates and product-one balancing
  cannot alter the already-updated mode's directions.
- Cited-result and assumption audit: PASS. The exact orthogonal equal-weight
  case is part of the accepted baseline contract, and `n >= k > r` supplies
  a common perpendicular direction for every allowed sufficiently large
  `r`. The proof also gives an interior positive-smoothing construction with
  nonzero orthogonal perturbations and a continuity neighborhood, so the
  obstruction is not confined to a null boundary. No qualitative citation
  can supply contraction in this weaker norm.
- Rigor checklist: PASS. Unit norms, positive orientation, target dual
  coefficients, amplitude coordinates, the first cyclic update, column
  normalization, strict inequalities, and the unchanged-mode argument are
  all checked. The construction violates the claim in the first sweep, so
  no horizon or limiting-mode conversion can repair it.
- Local adversarial test: REVISE_SKETCH. Taking the exact target as the fixed
  comparison point makes the claimed Lipschitz right side `O(R^2)`, while
  the actual updated coordinate is greater than `3/4`.
- Contribution to target step: REVISE_SKETCH. It establishes that the
  accepted contraction domain and generated-output interface must change.
- Verdict: REVISE_SKETCH
- Repair direction: Add a collective perpendicular operator/Gram field with
  a legal producer, or split off a first-sweep entry argument before a
  target-span contraction theorem; then rerun the affected sketch steps.

## Hidden Subclaim Scan

The local lemma map accounts for zero padding, the exact differential
kernel, active pair-design invertibility, and the contraction obstruction.
The robustness sentence after (8.24) is not an unproved replacement for the
counterexample: the exact baseline calculation already contradicts the
accepted full-tube claim, and continuity follows locally from the displayed
strict margins and uniformly invertible rational normal-equation map. No
hidden per-mode estimate, collective perpendicular bound, tube invariance,
or cited local-convergence conclusion is treated as proved. The artifact
honestly leaves `E_basin` unexported.

## Target Claim Audit

The proof establishes three requested structural pieces: exact zero-padding
equivalence, the quotient-Hessian kernel, and an explicit active inverse
branch with normalized floor greater than `31/32`. It does not establish the
exact sketch-row contraction claim. Instead, unit_004 disproves uniform
`<1/4` contraction on `||e||_Q <= 1/1024` for allowed `r`, under the same
cyclic order and quotient norm. Consequently the exact output targets
`E_basin` and `nu <= 1/4` do not follow. This is not a local omission that a
second proof attempt can fill under the unchanged row.

## Explicit Rate Audit

- The step is rate-bearing in `r`, `n`, `k`, `kappa_0`, `q`, `q_*`, the
  fixed radius `R`, relative amplitudes, direction errors, induced dual
  row/column masses, and cyclic sweep count.
- Hidden constants are only displayed universal constants. The valid inverse
  bound exposes its polynomial `kappa_0` dependence and introduces no hidden
  generated condition number.
- The mode is deterministic conditional on accepted instance and entry
  interfaces; the requested horizon is all active sweeps. The obstruction is
  already present in the first sweep and needs no probability conversion.
- The norm is exactly the accepted quotient maximum norm. With `t=R/4`, the
  allowed choice `r >= 1+3/t^4` retains the coherent `r t^4` term rather than
  absorbing it into an `r`-independent constant.
- The normalized inverse floor and raw amplitude-scaled inverse are proved by
  explicit inequalities. The per-mode `<1/16`, cyclic `<1/4`, and invariant
  tube rates are false under the current interface and therefore cannot
  contribute to a Rate Specialization Bridge.
- Baseline reduction remains exact at the stationary orthogonal target, but
  stationarity at the center does not imply an `r`-uniform neighborhood in
  the current norm. The counterexample preserves rather than weakens that
  distinction.

## Notation Surface Audit

The artifact correctly classifies `E_basin`, the radius, and contraction
factor as intended public outputs and does not export them after failure.
Target amplitudes, pair designs, Grams, and dual coefficients are
appendix-local; `t`, `c_0`, `c_r`, `N_r`, `h`, and the all-ones vector are
proof-local and explicitly defined. Raw setting objects are not rebound,
equal-norm quotient balancing changes only scales, and no helper alias hides
the collective `r t^4` dependence. The valid structural outputs remain
minimal, but they are insufficient for downstream consumption without a
revised public basin interface.

## Target-Step Assembly Audit

Units 001--003 compose validly: unit_003 supplies active full rank, unit_001
then supplies exact rank-`k`/rank-`r` equivalence, and unit_002 supplies the
only quotient-Hessian kernel. Unit_004 prevents completion of the assembly:
the same accepted `Q` tube contains points whose first cyclic sweep has
order-one dual mass. Therefore the named local results cannot jointly imply
`E_basin`, cyclic contraction, or all-time tube maintenance, and step_009 has
no accepted dependency output to consume.

## Review Rationale

`REVISE_SKETCH` is the smallest sound status. The frozen producer correctly
marks the proof `PARTIAL_BLOCKED` and gives a valid theorem-level
counterexample, rather than hiding the missing collective control in a local
constant. A `/proof-step step_008` rerun under the unchanged sketch would be
asked to prove a false full-tube statement. The formalized setting, cyclic
algorithm, target metric, arbitrary-accuracy goal, and baseline need not
change: accepted step_007 already contains much stronger initialization-side
perpendicular control, and each updated ALS block lies in the target span.
Those facts make a same-setting sketch repair plausible, but the sketch must
first expose the new contraction domain, its producer, and its path to
step_009. The smallest retry target is therefore `/proof-sketch`.
