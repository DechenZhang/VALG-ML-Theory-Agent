# Proof Step Review

## Step Review Identity

- Sketch attempt:
- Step ID:
- Unit attempt:
- Reviewed proof artifact:

## Step-Review Status

Allowed values:

- `ACCEPTED`
- `REVISE_STEP`
- `REVISE_SKETCH`
- `BLOCKED_BY_DEPENDENCY`

## Smallest Retry Target

Allowed values:

- `None`
- `/proof-step <Step ID>`
- `/proof-step <dependency Step ID>`
- `/proof-sketch`

## Blocking Issues

Write `None` only when `Step-Review Status = ACCEPTED`; otherwise write numbered local blockers.

## Per-Lemma Audit

Add one subsection for every local proof unit in the submitted step proof.

### unit_001: lemma

- Statement fidelity:
- Proof validity:
- Cited-result and assumption audit:
- Rigor checklist:
- Local adversarial test:
- Contribution to target step:
- Verdict:
- Repair direction:

Allowed per-unit verdicts are `PASS`, `REVISE_STEP`, `REVISE_SKETCH`, and `BLOCKED_BY_DEPENDENCY`.

## Hidden Subclaim Scan

Inspect prose, calculations, citations, and target-step assembly for independent nontrivial subclaims not listed in the local lemma map.

## Target Claim Audit

Check that the proof establishes the exact target step claim, including quantifiers, assumptions, constants, parameter dependence, probability or convergence mode, and scope.

## Explicit Rate Audit

Write `None` when the target step is not rate-bearing. Otherwise check exposed variables, hidden-constant dependence, fixed quantities, assumptions for all exposed rate categories, auxiliary parameter choices, term absorption inequalities, probability conversion, horizon mode, norm mode, contribution to any Rate Specialization Bridge, and any applicable baseline-reduction check.

## Notation Surface Audit

Check whether new helper objects are classified as `public-facing`, `appendix-local`, or `proof-local`; whether one-off aliases are avoided; whether long helper dictionaries are necessary; and whether the step exports only the minimal public-facing interface needed downstream.

## Target-Step Assembly Audit

Check that accepted local proof units, accepted dependencies, and cited results jointly imply the exact target step claim.

## Review Rationale

Explain why the chosen status and retry target are the smallest required repair.
