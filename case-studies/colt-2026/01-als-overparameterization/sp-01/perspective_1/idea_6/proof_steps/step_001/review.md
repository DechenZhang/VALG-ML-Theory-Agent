# Proof Step Review

## Step Review Identity

- Sketch attempt: 9
- Step ID: `step_001`
- Unit attempt: 1
- Binding setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_001/proof.md`
- Reviewed proof SHA-256:
  `601fe6bc7ef5d060d9ea229fab4f95c3e86d7c903b9686c7cb5a0d3a4a3a0f4a`
- Binding sketch SHA-256:
  `39fa8ed5134725387a788dc84467bee0f4530083192a1cd1845d16ff92075334`
- Binding sketch-review SHA-256:
  `f1e96d74e126f7bede1f8503aaf54fbcdf82663da318e40f53de8ea372e28cd4`
- Dependency artifacts: None.
- Accepted global diagnostic SHA-256: `a4d5f9953eedd3eced7248328b79839083bbda8a9c246b506a018d529d8f7ffd`; review SHA-256: `1354d398c8555f0864d2b9067a510851296afa22be648290ba363849bae6f2b8`.
- Review provenance: controller-local independent revalidation after two unresponsive reviewer handoffs; no archived review was consumed as evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Simultaneous smoothing concentration ledger

- Statement fidelity: PASS. The theorem-style lemma with label
  `lem:p1-i6-s001-gaussian-ledger` constructs exactly the proof-local event
  `E_0` needed by the accepted row. It uses only the stated deterministic
  base-scale and independent Gaussian-smoothing conditions and states the
  scalar, norm-square, and distinct-column quadratic conclusions with their
  mode and column quantifiers.
- Proof validity: PASS. Scaling the scalar Gaussian, chi-square, and
  independent bilinear inequalities gives respectively `2a_L`,
  `a_N+2a_Q+2a_B`, and `2a_Q+2a_B`. The counts `3r^2`, `3r`, and
  `3 binom(r,2)` and the factor 2 in the bilinear tail give
  `Pr(E_0^c) <= delta_sm/3 + delta_sm/3 + delta_sm/(3r) <= delta_sm`.
- Cited-result and assumption audit: PASS. Each elementary concentration
  statement is restated in current notation, including the instantiated
  Gaussian objects and the bilinear mgf. Independence is used only for
  distinct perturbation columns and is supplied by
  `assump:gaussian-smoothing`; the norm scaling is supplied by
  `assump:base-scale`. No generated event is treated as primitive.
- Rigor checklist: PASS. `L_sm=log(9r^2/delta_sm)` is positive for the setting
  range `r>=3`, `0<delta_sm<1`; the union bound does not require independence
  between event classes and covers all three modes.
- Local adversarial test: PASS. The bounds use the largest allowed inverse
  base norm, so unequal base scales and aligned signs cannot increase the
  displayed failure probability or perturbation envelopes.
- Contribution to target step: Supplies the sole probability-bearing event
  from which all static realized geometry is derived.
- Verdict: PASS
- Repair direction: None.

### unit_002: Norm retention, normalization envelope, and weight balance

- Statement fidelity: PASS. The theorem-style lemma
  `lem:p1-i6-s001-norm-weight` consumes the named `E_0` result and the
  exact base-scale, base-weight-balance, and smoothing-margin conditions. It
  states the required column norm floor, a common `h_sm` envelope, and
  `Gamma<=1.01`.
- Proof validity: PASS. The chi-square envelope and
  `kappa_0 rho<=q_*/128` imply `||z_{Mj}||<1/2`; the reverse triangle
  inequality gives `||x_{Mj}||>=1/(2 kappa_0)`. The exact identity for
  `d_{Mj}^2` yields `1-h_sm<=d_{Mj}^2<=1+h_sm`. Equations (11)-(12)
  correctly separate and absorb the radial linear, centered quadratic,
  deterministic normalization, and `L_sm/n` correction terms, giving
  `h_sm<=5q_*/96<q_*/16`. The product comparison for the three mode norms,
  followed by the displayed inverse inequalities, gives the strict
  `Gamma<1.01` bound from `801/800`.
- Cited-result and assumption audit: PASS. `E_0` is the only random input;
  all positivity and denominator facts used in the weight comparison are
  proved locally. The base weight ratio is retained rather than silently
  replaced by equality.
- Rigor checklist: PASS. The max/min product argument covers the worst
  combination of upper and lower mode norms. The inequalities involving
  `(1-h_sm)^{-3}` are invoked only after the proof establishes
  `3h_sm<=1/2`.
- Local adversarial test: PASS. Simultaneously taking every numerator norm
  at its upper envelope and every denominator norm at its lower envelope
  still leaves the explicit numerical reserve below `1.01`; the zero-noise
  specialization has `d_{Mj}=1` exactly.
- Contribution to target step: Supplies realized norm retention and the
  weight-ratio field used in `E_sm` and downstream conditioning.
- Verdict: PASS
- Repair direction: None.

### unit_003: Normalized realized Gram row control

- Statement fidelity: PASS. The theorem-style lemma
  `lem:p1-i6-s001-normalized-gram` proves the exact per-mode interface
  `q(G_M)<=q_*`, hence `q_real<=q_*`, while displaying the requested linear,
  quadratic, and normalization contributions.
- Proof validity: PASS. The four-term pre-normalization expansion has two
  directional terms, one independent quadratic term, and the base row mass.
  The row ledger in (17) is therefore exact. Equation (19) retains the
  bilinear Bernstein correction `2r a_L^2` and explicitly bounds it; dividing
  by `d_{Mj}d_{Mell}>=1-h_sm` is valid from unit_002. The final value is
  strictly below `q_*`.
- Cited-result and assumption audit: PASS. The base row mass is used only
  through `assump:cumulative-gram`; `E_0` and the positive normalization
  denominator come from named preceding lemmas. No realized Gram condition
  is promoted to an assumption.
- Rigor checklist: PASS. Absolute values preserve arbitrary signs, the
  `(r-1)` row count is shown before relaxation to `r`, and all mode/row
  quantifiers are retained. The denominator is positive in the proved margin
  regime.
- Local adversarial test: PASS. Concentrating all allowed base interference
  in one row and aligning all perturbation signs is covered by the absolute
  row ledger and still leaves the stated slack.
- Contribution to target step: Produces the normalized Gram control required
  for the real-factor interference and pair-Gram conclusions.
- Verdict: PASS
- Repair direction: None.

### unit_004: Cyclic Khatri--Rao spectral floors

- Statement fidelity: PASS. The theorem-style lemma
  `lem:p1-i6-s001-khatri-rao` states the exact `1-q_*^2` minimum-eigenvalue
  floor for each cyclic pair of realized modes.
- Proof validity: PASS. The Khatri--Rao Gram is correctly identified as the
  Hadamard product of the two realized Gram matrices. Its diagonal is one,
  and its off-diagonal row mass is bounded by the product of the two row
  masses, at most `q_*^2`. Symmetric Gershgorin then gives (21).
- Cited-result and assumption audit: PASS. The Schur identity and
  Gershgorin statement are restated in current notation, with unit diagonals
  and row bounds discharged by unit_003. All three cyclic choices are covered.
- Rigor checklist: PASS. Sign choices are harmless under absolute values,
  and the resulting positive floor excludes a singular pair-Gram boundary.
- Local adversarial test: PASS. Even if the two factor Gram rows place all
  allowable mass on the same pair with opposing signs, the absolute-product
  bound remains `q_*^2`.
- Contribution to target step: Supplies the exact positive cyclic
  Khatri--Rao conditioning interface consumed later.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

PASS. The four independent nontrivial contributions are exactly the four
named local units. The scalar inequalities used to bound `h_sm`, `Gamma`, and
the row ledger are displayed in those units rather than smuggled in through
"standard" prose. The target assembly introduces no extra trajectory,
initialization, basin, target-label, or conditioning assumption and uses only
the named theorem-style labels.

## Target Claim Audit

PASS. The proof targets the accepted sketch-9 row verbatim: one static event
over the once-drawn smoothing perturbations, with probability at least
`1-delta_sm`, implies the realized norm floor, `q_real<=q_*`, `Gamma<=1.01`,
and all three cyclic Khatri--Rao Gram floors `1-q_*^2`. The quantifier order,
primitive-assumption provenance, no-dependency interface, and high-probability
mode are unchanged. The stronger strict intermediate inequalities do not
alter the exported claim.

## Explicit Rate Audit

PASS. The exposed variables are `n`, `r`, `kappa_0`, `rho`, and
`delta_sm`, with `L_sm=log(9r^2/delta_sm)`; the fixed numerical quantities
include `q_*`, the base Gram slack `q_*/4`, and the base weight ratio `801/800`.
The proof separately displays the per-entry linear scale
`kappa_0 rho sqrt(L_sm/n)`, centered quadratic scale
`kappa_0^2 rho^2 sqrt(L_sm/n)`, deterministic normalization scale
`kappa_0^2 rho^2`, and the retained bilinear `L_sm/n` correction, together
with all row factors and the finite union counts. Equations (2), (11)-(12),
and (19) give explicit admissibility and absorption inequalities. Hidden
constants are numerical and do not depend on the base triple, any generated
condition number, `epsilon`, `delta_init`, or the realized perturbations.
The probability mode is high probability over the static smoothing draw, the
horizon is static, and the column, Gram-row, weight-ratio, and spectral norms
are named. No public rate specialization or additional probability
conversion is needed for this producer. The zero-perturbation orthogonal
equal-weight limit is checked separately and retains the exact baseline.

## Notation Surface Audit

PASS. The mode aliases
`(bar x_{Mj},g_{Mj},x_{Mj},s_{Mj},bar m_{Mj},z_{Mj},d_{Mj},m_{Mj})` are
appendix-local translations of setting objects. `L_sm`, `x_sm`, `a_L`, `a_Q`,
`a_N`, `a_B`, `h_sm`, and `E_0` are proof-local and explicitly defined from
setting quantities. `E_sm` is the sole public-facing output and contains
exactly the sketch-row interface. No helper alias changes meaning, hides a
boundedness claim, or leaks into the public theorem.

## Target-Step Assembly Audit

PASS. The concentration lemma produces `E_0` with the required probability;
the norm/weight lemma and normalized-Gram lemma derive all remaining static
fields on that same event; and the Khatri--Rao lemma derives each of the three
spectral floors. The explicit inclusion `E_0 subseteq E_sm` transfers the
probability without a second event or hidden intersection loss. The assembly
uses paper-ready `Lemma~\ref{...}` references and exports no unsupported
generated invariant.

## Review Rationale

`ACCEPTED` is the smallest correct status. Every local unit is theorem-style,
self-contained under the permitted primitive conditions or an earlier named
unit, and its concentration, normalization, row-mass, and Schur/Gershgorin
arithmetic closes with numerical slack. The exact target, explicit rate
categories, assumption provenance, notation surface, and orthogonal baseline
are all preserved, so neither a producer rerun nor a sketch/interface repair
is required.
