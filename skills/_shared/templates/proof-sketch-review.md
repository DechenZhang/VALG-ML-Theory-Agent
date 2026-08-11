# Proof Sketch Review

## Reviewed Sketch Identity

- Sketch attempt:

## Sketch Viability Score

Write exactly one integer from `1` to `10`.

## Sketch Review Status

Allowed values:

- `ACCEPTED`
- `REVISE_SKETCH`
- `IDEA_FAIL`

## Smallest Retry Target

Allowed values:

- `None`
- `/proof-sketch`
- `/subagent-idea-generator`

Status-target alignment:

- `ACCEPTED` -> `None`
- `REVISE_SKETCH` -> `/proof-sketch`
- `IDEA_FAIL` -> `/subagent-idea-generator`

## Retry Mode

Allowed values:

- `none`
- `revise_sketch`
- `new_idea`

Mode alignment:

- `ACCEPTED` -> `none`
- `REVISE_SKETCH` -> `revise_sketch`
- `IDEA_FAIL` -> `new_idea`

Score alignment:

- `ACCEPTED` -> `8-10`
- `REVISE_SKETCH` -> `5-7`
- `IDEA_FAIL` -> `1-4`

## Audit Summary

- Goal alignment:
- Dependency audit:
- High-risk coverage:
- Explicit-rate coverage:
- Assumption and citation plausibility:

## Early Obstruction Audit

- Limiting-case stress:
- Theorem-critical bridge support:
- Exported-interface feasibility:
- Theorem-critical mechanism witness gate:
- Entry-state trace stress:
- Obligation locality classification:
- Noncircular closure gate:
- Mechanism-source and boundary stress:
- Generated-output flow:
- Source-to-claim adequacy: include direct derivation, standard fact or tool, current-notation wrapper, and primitive-source derivation feasibility when applicable, including source-convention compatibility, object-target compatibility for theorem-critical entry/reference/baseline objects, the exact setting convention, raw-assumption-to-claim implication, quantitative scale or dominance relation, and branch or boundary handling before classifying the obligation as `step-local`.
- Residual-to-target adequacy: when a bridge transfers a produced, baseline, transformed, or surrogate object or control into a consumed target, record the produced object/control, consumed target/interface, theorem metric or norm, residual decomposition, source for each residual term, required target margin or scale, whether every residual is dominated, and the route when this is missing or deferred.
- Baseline invariance audit: record the inherited baseline conclusion, specialization or entry case, preserving mechanism source, first-transition or stationary trace when applicable, whether the original conclusion is preserved, and the retry route when omitted, weakened, or replaced by a surrogate.
- Scope-accumulation compatibility: record the accumulated defect or forcing term, sign status, controlling budget/potential or mechanism-specific control relation, one-step charge/absorption/potential-drop, preservation, projection, coupling, stopping, or conditioning relation, finite-budget or declared-scope validity justification, mechanism source, and route when unsupported.
- Scope and dependence consistency:
- Generated-condition provenance:
- Citation and tool applicability: for theorem-critical cited results, record source identity, version or stable locator when relevant, exact label or stable statement identifier when used, statement role, source-object mapping, source-convention compatibility, hypothesis discharge, conclusion-interface match, known non-output boundaries, and any bridge or wrapper obligation before treating the cited result as `step-local`.
- Same-setting repair plausibility:
- Target-preserving bridge-repair gate:
- High-risk obligation classes:

## Gate Evidence Table

For every theorem-critical generated condition, recurrence, invariant, stability, boundedness, membership, convergence, structural lower/sign/coercivity/nondegeneracy/support claim, quantitative specialization, baseline invariance obligation, scope upgrade, theorem-closure block, generated-output flow, exported-interface feasibility obligation, residual-to-target adequacy obligation, or hard obligation that affects acceptance, include one row. If none exist, write `None` and give the specific reason.

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

`ACCEPTED` is invalid if any applicable row is missing, shallow, category-only, circular, source-inadequate, lacks source-convention compatibility for a theorem-critical source, lacks object-target compatibility for a theorem-critical entry/reference/baseline object, lacks residual-to-target adequacy for a theorem-critical bridge, lacks a feasible raw-control-to-exported-interface relation, source-identity-uncertain for a theorem-critical cited result, scope-incompatible, missing generated-output producer-consumer flow, missing entry or boundary stress when applicable, or classified as anything other than `step-local`. Use `N/A` only with a specific reason. A row is shallow if it defers theorem-critical source identity, source label, statement role, conclusion-interface shape, source-convention compatibility, object-target compatibility, same-target bridge compatibility for transformed or surrogate produced objects, residual decomposition or required-scale dominance, known non-output boundary checks, direct derivation, standard fact or tool, current-notation wrapper, or primitive-source derivation source feasibility, raw-assumption-to-interface checks, or exported-interface feasibility checks to later proof-step work.

## Blocking Issues

Write `None` only when `Sketch Review Status = ACCEPTED`; otherwise write numbered blockers with the smallest repair direction.

## Required Repair Bundle

Write `None` only when `Sketch Review Status = ACCEPTED`; otherwise list all material repair obligations for the next `/proof-sketch` or `/subagent-idea-generator` run, including issue location, required change, affected assumptions or step IDs, and smallest repair target. If the obstruction is a missing bridge, state either the target-preserving sketch repair obligation or the concrete reason no same-setting sketch repair can preserve the current setting and goal. For `IDEA_FAIL`, identify the required theorem-contract change: changed primitive assumptions, changed algorithm/model/procedure, changed theorem scope/mode/metric, changed exposed dependence, changed success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion.

## Review Rationale

Explain why the selected status is the deepest required change.
