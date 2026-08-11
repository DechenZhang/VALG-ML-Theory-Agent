# Proof Step Review

## Step Review Identity

- Sketch attempt: 4
- Step ID: `step_001`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_2/idea_9/proof_steps/step_001/proof.md`
  (SHA-256 `d734ce5aafeb85310a37ce3175c938df1919881e90981e3fecbf7470ff07042a`)

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_001

## Blocking Issues

1. **Unit 005 has an incomplete assumption interface.** The theorem-style
   statement at lines 412--415 lists only
   `assump:base-column-conditioning`, `assump:gaussian-smoothing`, and
   `assump:smoothing-scale`, but its proof invokes
   Proposition~\ref{prop:step-001-normalized-geometry} for the lower and upper
   realized-column norms (lines 468--469) and invokes
   Lemma~\ref{lem:step-001-gaussian-operator} to bound the complement of
   `E_op` (lines 498--502). The former cited proposition requires the
   modewise Gram margin (and, as stated, the base-product-balance assumption),
   while the latter event-probability conclusion requires the dimension
   regime. Without those assumptions, `E_op` does not imply the displayed
   partner-norm lower bound and the claimed unconditional `r^(-20)` bound for
   `E_lb` is not discharged. Add the missing stable assumption IDs and their
   discharge to Unit 005, or replace the cited proposition with a direct
   norm derivation whose assumptions are stated explicitly. Update the local
   lemma map and the rate/assembly notes consistently.

2. **Unit 004 leaves the zero-padding domain condition implicit.** Its
   statement appends `k-r` joint-zero slots (lines 374--380) while citing only
   Proposition~\ref{prop:step-001-normalized-geometry}; no condition in that
   statement establishes `k >= r`. Under the literal listed interface an
   allowed algorithmic rank could make `k-r` undefined, so the claimed full
   rank-`k` `Q^star` is not self-contained. Either cite
   Assumption~\ref{assump:rank-regime} explicitly (and propagate it through
   the local map and assumption audit), or state/export the active rank-`r`
   representation here and defer the zero-slot embedding to the later step
   that consumes the rank regime.

## Per-Lemma Audit

### unit_001: Simultaneous Gaussian perturbation operator event

- Statement fidelity: PASS. The unit proves the first sketch-row source event
  with the exact three-mode operator-norm interface and failure allocation.
- Proof validity: PASS. Scaling the rectangular Gaussian matrix, choosing
  `t = sqrt(60 log(2r))`, applying the dimension condition, and taking the
  three-mode union bound gives `6(2r)^(-30)`. The columnwise consequence is
  immediate from the operator norm.
- Cited-result and assumption audit: PASS. The rectangular Gaussian tail is
  restated with its current dimensions and its Gaussian and dimension
  assumptions are discharged.
- Rigor checklist: PASS. The finite `r >= 2` boundary and the fixed-large
  `C_dim` choice are explicit; no separate hidden column union is needed.
- Local adversarial test: PASS. The bound remains valid at the minimum allowed
  dimension and for all three independent modes simultaneously.
- Contribution to target step: PASS. It supplies the sole upper-tail event
  consumed by the normalization and final event units.
- Verdict: PASS
- Repair direction: None.

### unit_002: Normalized realized geometry and balanced weights

- Statement fidelity: PASS. It establishes nonvanishing, norm bounds, the
  signed normalized-Gram perturbation, and the factor-two product-weight
  ratio on the named `E_op` event.
- Proof validity: PASS. The normalization identity (8), the denominator
  reserve from the modewise margin, and the `40 kappa rho` Gram perturbation
  bound are algebraically sound. The relative norm interval gives the stated
  weight ratio, and the stronger `nu_real <= nu_star` implies the exported
  `2 nu_star` bound.
- Cited-result and assumption audit: PASS. `E_op` is an accepted earlier local
  conclusion, and the base norm, product balance, smoothing, smoothing scale,
  and modewise margin are all stated before use.
- Rigor checklist: PASS. The proof controls the diagonal normalization
  defect, keeps constants uniform in dimensions and the instance, and does
  not assert an operator bound for an entrywise absolute Gram matrix.
- Local adversarial test: PASS. The `kappa rho <= 1/10` reserve handles the
  smallest base norm and the extremal relative weight ratio; the argument is
  modewise and survives reciprocal mode rescalings.
- Contribution to target step: PASS. It supplies the realized geometry needed
  by the Khatri--Rao, target, lower-tail, and final-event units.
- Verdict: PASS
- Repair direction: None.

### unit_003: Pair and triple Khatri--Rao conditioning

- Statement fidelity: PASS. The pair/triple operator gaps, Loewner intervals,
  tensor norm comparison, and nonzero target are exactly the sketch outputs.
- Proof validity: PASS. Symmetry identifies rows with columns, Cauchy--Schwarz
  gives the pair row sum `nu_real^2`, the triple row sum is bounded by
  `nu_real^3`, and the symmetric row-sum bound is applied only to the
  Hadamard products. The Khatri--Rao Gram identity then yields the spectral
  and Frobenius conclusions.
- Cited-result and assumption audit: PASS. The row-sum and Khatri--Rao facts
  are restated in current notation, and Unit 002 supplies their hypotheses.
- Rigor checklist: PASS. Diagonal entries are handled exactly, signs are
  retained, and the fixed `C_nu` margin gives the `1/16` bounds for every
  `r >= 2`.
- Local adversarial test: PASS. The argument covers signed, transitive, and
  zero-correlation off-diagonal entries and does not rely on an absolute-Gram
  operator inequality.
- Contribution to target step: PASS. It supplies all pair/triple floors and
  the exact target-norm comparison.
- Verdict: PASS
- Repair direction: None.

### unit_004: Exact balanced target and strict radius guard

- Statement fidelity: REVISE_STEP. The active-slot algebra and guard target
  are correct, but the full rank-`k` construction is not self-contained until
  `k >= r` is an explicit allowed condition.
- Proof validity: PASS conditional on `k >= r`. The normalized factors have
  unit norm, the tensor products sum to the exact realized `T`, and the cube
  root of the norm bounds lies strictly below `R_max`.
- Cited-result and assumption audit: REVISE_STEP. The statement cites only
  Unit 002 while silently using the domain fact needed to append `k-r` slots.
- Rigor checklist: REVISE_STEP for the missing quantifier/domain condition;
  no algebraic defect remains after that condition is made explicit.
- Local adversarial test: FAIL at the literal interface `k < r`, where the
  claimed zero-padding state is undefined. The later rank regime would repair
  this, but it is not currently part of the unit statement.
- Contribution to target step: REVISE_STEP. The exact active representation is
  established, but the exported full-state `Q^star` interface is incomplete.
- Verdict: REVISE_STEP
- Repair direction: Cite `assump:rank-regime` in the unit statement/map and
  assembly, or export only the active rank-`r` target here and defer padding.

### unit_005: Uniform normalized-Gram lower-tail branch

- Statement fidelity: REVISE_STEP. The lower-tail claim has the intended
  threshold and probability mode, but its theorem-facing assumption basis is
  too weak for the cited derivation.
- Proof validity: REVISE_STEP. Conditional Gaussian anti-concentration,
  disjoint-pair independence, the normalization threshold, and the explicit
  `D_lb=64` comparison are sound once the `E_op` norm reserve is available.
  The current proof does not establish that reserve under the assumptions
  written in the unit statement.
- Cited-result and assumption audit: REVISE_STEP. Lines 468--469 consume
  Proposition~\ref{prop:step-001-normalized-geometry}, whose stated
  assumptions include `assump:base-product-balance` and
  `assump:modewise-gram-margin`; lines 498--502 consume the probability bound
  from Lemma~\ref{lem:step-001-gaussian-operator}, which requires
  `assump:dimension-regime`. Those IDs are absent from Unit 005's statement
  and local lemma map.
- Rigor checklist: REVISE_STEP for assumption provenance only. The density
  bound is uniform in the conditional mean, and the `r=2` finite allocation,
  `P^(-64) <= t_norm`, and `E_op` intersection arithmetic otherwise check.
- Local adversarial test: FAIL under the literal three-assumption statement:
  without the modewise margin, a perturbation can approach cancellation of a
  base column, so the partner variance lower bound used in (23)--(25) is not
  available; without the dimension condition, the `E_op` failure allocation
  is not justified.
- Contribution to target step: REVISE_STEP. Until repaired, `E_lb` and the
  branch-qualified numerical comparison in Unit 006 are unsupported.
- Verdict: REVISE_STEP
- Repair direction: Add the missing stable assumption IDs and explicit
  discharge to Unit 005 (and its map), or derive the norm reserve directly
  from the full six-assumption interface instead of citing Unit 002.

### unit_006: Once-drawn instance event and branch-qualified rates

- Statement fidelity: REVISE_STEP because its assembly consumes the current
  Unit 005 lower-tail result and Unit 004 full-state target result.
- Proof validity: PASS conditional on those two local repairs. The finite
  probability union, the `D_stat >= 2 D_lb + d_num` ordering, and the
  `r^2 e`/`sqrt(r) e` branch comparisons are correct.
- Cited-result and assumption audit: REVISE_STEP through the unresolved local
  interfaces; the proposition itself names all six primitive assumptions and
  does not introduce a new theorem-level condition.
- Rigor checklist: PASS conditional on repaired inputs. It keeps raw numerical
  terms outside `E_lb`, separates instance probability from tape probability,
  and handles the exact `H=e=0` limit separately.
- Local adversarial test: PASS conditional on repairs. The `r=2` allocation,
  tiny positive `nu_real`, and exact zero limit have explicit paths.
- Contribution to target step: REVISE_STEP until `E_inst`, `E_lb`, and the
  padded `Q^star` are supplied by valid preceding units.
- Verdict: REVISE_STEP
- Repair direction: Rerun the same step after repairing Units 004 and 005;
  no new sketch step or dependency is required.

## Hidden Subclaim Scan

The six local units account for the Gaussian operator event, normalized
geometry, pair/triple products, target construction, lower-tail event, and
final probability/rate assembly. The standard Gaussian, interval, row-sum,
and Khatri--Rao facts are restated before use, and the branch inequalities are
named in Unit 006. The only unaccounted theorem-facing conditions are the
`k >= r` zero-padding domain in Unit 004 and the missing Unit 005 assumption
IDs listed above; both are recorded as blocking issues rather than silently
treated as primitive facts.

## Target Claim Audit

The submitted artifact targets the exact Step 001 interface: realized norm
and signed-Gram control, factor-weight transfer, pair/triple conditioning,
the exact realized tensor and balanced representation, `E_lb`, and the
once-drawn probability mode. It preserves the exact target rather than a
whitened or orthogonalized surrogate and keeps all numerical absorption
branch-qualified. The target is not certified as written because Unit 005's
unconditional lower-tail statement lacks the assumptions used to prove it,
and Unit 004's rank-`k` padding is undefined without an explicit `k >= r`
condition.

## Explicit Rate Audit

This is rate-bearing. The proof exposes `n,r,k,kappa,rho,Gamma_star,P`,
`nu_base`, `nu_star`, `nu_real`, realized weights and Grams, `||T||_F`,
`D_lb`, and the later `D_stat` choice. Hidden constants are restricted to
the declared class/protocol constants and universal numerical constants.
The once-drawn high-probability mode, trajectory-uniform horizon, Euclidean,
operator, singular-value, and Frobenius norms are all stated. The Gaussian
union allocation, `P^(-64) <= t_norm`, and the explicit `D_stat` absorption
inequalities prevent prose-only term dropping. The audit is contract-complete
apart from the Unit 005 assumption-provenance defect and the Unit 004 domain
condition, which must be repaired before the rate output is consumable.

## Notation Surface Audit

The proof mostly has an economical, scoped notation surface. `X_M`, `E_op`,
`bar U`, `U`, `bar D`, `D`, `delta_col`, `E_M`, `t_raw`, `t_norm`, and `d_num`
are explicitly classified as proof-local; `E_lb`, `E_inst`, `D_lb`, and
`Q^star` are exported outputs. The local theorem labels are stable and all
mathematical assembly references use theorem-style labels. The bare `m_j`
alias for an unnormalized column in Unit 002 is explicitly scoped, but a
rerun should preferably inline `a_j,b_j,c_j` or classify that alias alongside
the other proof-local notation to avoid confusion with the setting's
normalized `m_{j,M}` symbols.

## Target-Step Assembly Audit

Units 001--003 correctly compose the once-drawn geometry and Khatri--Rao
interfaces. Unit 004 supplies exact active-slot algebra but currently lacks
the zero-padding domain condition. Unit 005 supplies the intended small-ball
branch only conditionally on assumptions absent from its own statement.
Consequently Unit 006's event intersection and `D_stat` branch comparison
cannot yet certify the exact target-step claim. After the two local repairs,
the named units and no external dependencies jointly imply the sketch-row
output; no new bridge, step, or changed theorem contract is needed.

## Review Rationale

The smallest sound status is REVISE_STEP. The defects are local statement and
assumption-interface omissions in Units 004--005, not failures of the
accepted sketch, target scope, probability mode, mechanism source, or metric.
The normalized-Gram algebra, Gaussian small-ball calculation, exact target
identity, finite probability allocation, branch-qualified numerical
comparison, baseline limit, and explicit-rate bookkeeping are otherwise
adequate. A fresh `/proof-step step_001` attempt that makes the already
available rank and primitive assumptions explicit (or defers zero padding)
should be reviewed again before any downstream step consumes this artifact.
