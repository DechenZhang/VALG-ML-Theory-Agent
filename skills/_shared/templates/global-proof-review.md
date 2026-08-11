# Global Proof Review

## Global-Proof Review Identity

Record the branch path, sketch attempt, reviewed `proof_sketch.md` identity, reviewed `proof_sketch_review.md` identity, reviewed `global_proof.md` identity, and reviewed global proof status.

## Global-Proof Review Status

Allowed values:

- `ACCEPTED`
- `REVISE_GLOBAL`
- `REVISE_SKETCH`
- `IDEA_FAIL`

## Smallest Retry Target

Allowed values:

- `None`
- `/global-proof`
- `/proof-sketch`
- `/subagent-idea-generator`

Status-target alignment:

- `ACCEPTED` -> `None`
- `REVISE_GLOBAL` -> `/global-proof`
- `REVISE_SKETCH` -> `/proof-sketch`
- `IDEA_FAIL` -> `/subagent-idea-generator`

Do not include a `Retry Mode` field or a numeric score.

## Blocking Issues

List acceptance-blocking issues. Write `None` only when `Global-Proof Review Status = ACCEPTED`.

## Required Repair Bundle

List every material repair obligation, not only the first blocker. For each item, state the affected artifact or section, smallest repair target, exact issue, and whether the current accepted sketch must be preserved or replaced by a new sketch attempt. For `IDEA_FAIL`, identify the setting or goal component that must change, explain why `/proof-sketch` is insufficient under the current setting and goal, and name the required theorem-contract change: changed primitive assumptions, changed algorithm/model/procedure, changed theorem scope/mode/metric, changed exposed dependence, changed success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion. Write `None` only when `Global-Proof Review Status = ACCEPTED`.

## Contract And Status Audit

Check section completeness, controlled status vocabulary, status/routing alignment, detail sufficiency, and diagnostic-boundary compliance.

## Claim And Sketch Fidelity Audit

Check fidelity to `setting.md`, accepted `proof_sketch.md`, and accepted `proof_sketch_review.md`, including theorem scope, assumptions, quantifier order, conclusion, exposed dependence, dependencies, output targets, and any inherited baseline invariance obligation.

## Theorem-Level Structure Audit

Check whether the theorem-level blocks, dependency order, sketch-step coverage, and final composition plausibly support the attempted theorem or expose the correct blocker.

## Dependency And Assumption Audit

Check theorem-facing condition provenance, generated-condition bridges, local conditional hypotheses, missing derived-condition bridges, and whether an unconditional target is being completed by assumption.

## Citation And Tool Audit

Check cited theorem, standard fact, technical tool, direct derivation, current-notation wrapper, primitive-source derivation, and dependency uses for current-object mapping, source-convention compatibility, object-target compatibility and residual-to-target adequacy for theorem-critical entry/reference/baseline/transformed/surrogate objects, assumption discharge obligations, conclusion needed, and affected block or `Step ID`. For theorem-critical cited results, record source identity, version or stable locator when relevant, exact label or stable statement identifier when used, statement role, source-object mapping, source-convention compatibility, hypothesis discharge, conclusion-interface match, known non-output boundaries, and any bridge or wrapper obligation before treating the cited result as `step-local`. For theorem-critical standard tools, direct derivations, current-notation wrappers, and primitive-source derivations, record the exact setting convention, source-convention compatibility when inherited or translated from another convention, object-target compatibility when an entry or reference object is consumed, residual-to-target adequacy when a bridge transfers into the consumed target, raw-assumption-to-claim implication, quantitative scale or dominance relation, branch or boundary handling, and downstream interface before treating the output as `step-local`.

## Quantitative Dependence Audit

When quantitative dependence is exposed or a baseline invariance obligation is present, check variables, hidden-constant dependence, fixed quantities, probability or stochastic mode, horizon or limiting mode, norm or metric mode, auxiliary tolerances, public specialization obligations, baseline-reduction obligations, and whether inherited baseline/recovery conclusions are preserved. Write `None` only when no quantitative dependence is exposed and no baseline invariance obligation is present.

## Scope And Closure Review

Check the `global_proof.md` scope-and-closure certificate. For each theorem-critical generated condition, recurrence, invariant, stability, boundedness, membership, convergence, quantitative specialization, structural lower/sign/coercivity/nondegeneracy/support claim, scope upgrade, or theorem-closure block covered by the Theorem-Critical Mechanism Witness Gate, verify the target condition or control, claim class and theorem role, declared theorem scope, local interface or recurrence, key positive/control term or structural source, defect/forcing terms, closure mechanism, mechanism source / boundary exclusion, source-to-claim adequacy and source-convention compatibility when the target uses a theorem-critical source, residual-to-target adequacy when a bridge transfers a produced, baseline, transformed, or surrogate object or control into the consumed target, obligation locality classification, noncircular closure status when applicable, entry-state / first-update stress result when applicable, closure/dominance/absorption relation, primitive controls, generated controls, boundary stress result, and failure mode if the mechanism is absent. State whether any missing, shallow, scope-incompatible, source-convention-incompatible, residual-inadequate, or non-`step-local` certificate or witness is a diagnostic omission under an already-valid accepted sketch requiring `/global-proof`, a same-setting repair requiring `/proof-sketch` through a new or changed bridge, residual-to-target bridge, source-convention bridge, generated-output flow, mechanism witness, mechanism source, interface, entry-state trace, boundary exclusion, concrete recurrence/potential or mechanism-specific control relation, or quantitative-specialization/loss-routing step, or an idea-level theorem-contract change requiring `/subagent-idea-generator` because it requires changed primitive assumptions, changed algorithm/model/procedure, changed theorem scope/mode/metric, changed exposed dependence, changed success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion. Use `/global-proof` for a shallow scope-and-closure certificate only when the accepted sketch already contains the concrete relation, residual-to-target adequacy when applicable, and source-convention compatibility evidence and the diagnostic omitted or misstated it.

For all-time, uniform, limsup, invariant, stability, recurrence, support, basin, boundedness, and generated-condition entries, verify the Noncircular Closure Gate: the certificate must name a noncircular producer or mechanism source, exit/defect/control relation, and dependency path to each consumer. Reject acceptance if the source assumes the same target closure, generated condition, or final theorem consequence.

For recursive, iterative, descent, contraction, convergence, all-time, recurrence closure, invariant, basin/support, mode-conversion, and exact/noiseless specialization entries, verify the Entry-State / Activation Trace Gate: the certificate must trace an allowed entry, initial, stationary, null, degenerate, exact/noiseless, or boundary state through the first update, transition, or stationary behavior. Reject acceptance if the mechanism is inactive while the theorem-facing conclusion remains false.

When the certificate concerns repeated, iterated, recursive, limiting, or otherwise accumulated controls, also verify the accumulation behavior / scope compatibility field. Reject acceptance if the diagnostic only names a barrier, reserve, ledger, invariant, stability, bootstrap, finite-budget, Lyapunov, first-exit, small-gain, projection, dissipative recurrence, algebraic coupling, or later proof without naming the accumulated defect, sign status, controlling budget/potential or mechanism-specific control relation, one-step charge/absorption/potential-drop, preservation, projection, coupling, stopping, or conditioning relation, finite-budget or declared-scope validity justification, and compatible mechanism source.

Verify the `global_proof.md` generated-output flow. Reject acceptance if a theorem-facing generated output has no legal producer, has consumers before producers, lacks a dependency path from producer to consumer, or is exported by a closure, specialization, assembly, or later-proof label without being proved from accepted inputs. Use `/global-proof` only when the accepted sketch already contains the valid flow and the diagnostic failed to expose it; use `/proof-sketch` when the sketch needs a bridge, output target, dependency, generated-condition interface, or flow allocation.

Verify exported-interface feasibility and residual-to-target adequacy for every theorem-critical downstream-facing output target, generated condition, margin, threshold, simplified bound, basin or membership certificate, recurrence interface, cited-tool wrapper conclusion, direct derivation output, standard fact or tool output, current-notation wrapper output, primitive-source derivation output, or public bridge. Reject acceptance if the diagnostic lacks source-convention compatibility when a source supplies the output, object-target compatibility when an entry or reference object is consumed, raw controls, exported interface, residual decomposition when applicable, defect split, dominance or transfer relation, required target scale, margin or threshold source, branch or boundary handling, and consumers. If the produced object is transformed, weighted, preconditioned, whitened, reference-operator-modified, or otherwise surrogate relative to the consumed target, the diagnostic must already expose a same-target bridge with residual-to-target adequacy. Use `/global-proof` only when the accepted sketch already contains the valid interface, residual-to-target adequacy when applicable, and source-convention evidence and the diagnostic failed to expose it; use `/proof-sketch` when the sketch needs a bridge, output target, dependency, margin or threshold source, cited-tool wrapper conclusion, direct-derivation interface, standard-fact/tool interface, current-notation wrapper interface, primitive-source interface, source-convention bridge, object-target bridge, residual-to-target bridge, defect-class split, or dominance/transfer relation.

Verify source-convention compatibility for theorem-critical cited tools, standard facts or tools, current-notation wrappers, direct derivations, and primitive-source derivations. Reject acceptance if a source interface is consumed under a different branch convention, object, metric, population or reference operator, entry target, procedure, normalization, dependence, or baseline/no-error specialization without an explicit bridge.

Verify every present baseline invariance obligation. Reject acceptance if the diagnostic omits the inherited baseline conclusion, shows only that defect terms vanish, weakens it into a conservative or conditional surrogate, or labels the missing source as step-local without an existing source-adequate sketch interface and any applicable entry-state trace.

## Gate Evidence Table

For every theorem-critical generated condition, recurrence, invariant, stability, boundedness, membership, convergence, structural lower/sign/coercivity/nondegeneracy/support claim, quantitative specialization, baseline invariance obligation, scope upgrade, theorem-closure block, generated-output flow, exported-interface feasibility obligation, residual-to-target adequacy obligation, or hard obligation that affects acceptance, include one row. If none exist, write `None` and give the specific reason.

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

`ACCEPTED` is invalid if any applicable row is missing, shallow, category-only, circular, source-inadequate, lacks source-convention compatibility for a theorem-critical source, lacks object-target compatibility for a theorem-critical entry/reference/baseline object, lacks residual-to-target adequacy for a theorem-critical bridge, lacks a feasible raw-control-to-exported-interface relation, source-identity-uncertain for a theorem-critical cited result, scope-incompatible, missing generated-output producer-consumer flow, missing entry or boundary stress when applicable, or classified as anything other than `step-local`. Use `N/A` only with a specific reason. A row is shallow if it defers theorem-critical source identity, source label, statement role, conclusion-interface shape, source-convention compatibility, object-target compatibility, same-target bridge compatibility for transformed or surrogate produced objects, residual decomposition or required-scale dominance, known non-output boundary checks, direct derivation, standard fact or tool, current-notation wrapper, or primitive-source derivation source feasibility, raw-assumption-to-interface checks, or exported-interface feasibility checks to later proof-step work. Use `/global-proof` only when the accepted sketch already contains the valid evidence and `global_proof.md` failed to expose it; otherwise use `/proof-sketch` or `/subagent-idea-generator` according to the required theorem-contract change.

## Hard-Step Localization Audit

Distinguish step-local hard obligations under the unchanged accepted sketch from defects requiring `/global-proof`, `/proof-sketch`, or `/subagent-idea-generator`. A hard obligation is not step-local if the Theorem-Critical Mechanism Witness is missing, scope-incompatible, source-inadequate for the claim class, residual-to-target adequacy is missing when a bridge transfers into the consumed target, or if a cited tool, direct derivation, standard fact or tool, current-notation wrapper, or primitive-source derivation has not already passed source-convention compatibility and raw-assumption-to-exported-interface feasibility checks.

Required check: obligation locality classification. Verify the certificate's `Obligation locality classification` field row by row, classify each theorem-critical hard obligation as `step-local`, `sketch/interface defect`, or `idea/theorem-contract defect`, and route every non-`step-local` obligation to the aligned smallest retry target.

## Early Idea-Failure Screen

Check whether any alleged hard local step actually requires adding a theorem-facing mechanism source not supported by the setting, changing primitive assumptions, changing the algorithm/model/procedure, changing theorem scope/mode/metric, changing exposed dependence, changing success criterion, or weakening the conclusion. Record the outcome of contract-contradiction, missing-mechanism, source-convention stress, residual-to-target stress, persistent-defect, limiting/boundary stress, entry-state trace, generated-condition, dependence/mode, baseline invariance, and same-setting repair-plausibility checks. Before routing to `/subagent-idea-generator`, decide whether an added or rewritten bridge, dependency interface, conditional local lemma with discharge, quantitative-specialization step, or conservative loss-routing step could plausibly repair the issue under the same setting and goal; if preserving an inherited baseline conclusion would require weakening or replacing that conclusion, route to `/subagent-idea-generator`.

## Review Rationale

Explain why the chosen status and smallest retry target are the smallest sound route.
