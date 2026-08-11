# Proof Sketch

## Formalized Setting

## Formalized Goal

## Sketch Identity

- Sketch attempt:

## Proof Roadmap

Summarize the selected framework or proof roadmap. If `technical_survey.md` was used, name the selected framework and its source provenance.

## Rate Objectives

Write `None` when no explicit quantitative dependence is requested or exposed.
Otherwise list each theorem target with:

- Objective type: fixed-time, fixed-horizon, horizon-uniform, structural-parameter explicit, confidence-explicit, regularity-explicit, numerical-error explicit, or another domain-appropriate explicit-dependence mode.
- Exposed variables:
- Hidden constants may depend on:
- Hidden constants may not depend on:
- Fixed quantities:
- Probability mode:
- Horizon mode:
- Norm mode:
- Required bridge or simplification obligations:
- Baseline invariance obligations:

## Assumption Provenance Objectives

Write `None` when the proof needs no generated-object, event, local-validity, stability, boundedness, recurrence, or invariant facts beyond primitive setting conditions.
Otherwise list each needed derived invariant, the primitive conditions expected to imply it, the step that will prove the bridge, and any conditional lemma that may use it only after the bridge is available.

## Mechanism-Source And Boundary Stress

Write `None` only when no step is covered by the Theorem-Critical Mechanism Witness Gate, no step claims contraction, coercivity, positivity, nondegeneracy, a lower bound, signed descent, support preservation, basin closure, recurrence closure, or exact/zero-limit behavior, no baseline invariance obligation is present, and no theorem-critical recursive, iterative, descent, contraction, convergence, all-time, recurrence closure, invariant, basin/support, mode-conversion, or exact/noiseless specialization claim is covered by the Entry-State / Activation Trace Gate.
Otherwise list each affected step with:

- Step ID:
- Claim class:
- Theorem role:
- Mechanism source:
- Source-to-claim adequacy:
- Residual-to-target adequacy:
- Key positive/control term or structural source:
- Opposing defect terms:
- Closure/dominance/absorption relation:
- Accumulation behavior / scope compatibility:
- Obligation locality classification:
- Noncircular closure status:
- Entry-state / first-update stress result:
- Baseline conclusion preserved:
- Producer-consumer provenance:
- Null or boundary regime tested:
- Target conclusion false or theorem-critical obstruction present if source vanishes:
- Repair route if source is unsupported:

For theorem-critical cited results, `Mechanism source` and `Source-to-claim adequacy` must record source identity, version or stable locator when relevant, exact label or stable statement identifier when used, statement role, conclusion-interface match, source-convention compatibility, object-target compatibility when an entry, reference, population, no-error, or baseline object is consumed, and known non-output boundaries, in addition to source-object mapping, hypothesis discharge, and bridge or wrapper obligations. For theorem-critical direct derivations, standard facts or tools, current-notation wrappers, and primitive-source derivations, record the exact setting convention, source-convention compatibility, object-target compatibility when applicable, raw-assumption-to-claim or output path, quantitative dominance or transfer relation when needed, branch or boundary handling, and downstream interface. If the produced object is transformed, weighted, preconditioned, whitened, reference-operator-modified, or otherwise surrogate relative to the consumed target, record the same-target bridge under the theorem metric or interface and use `Residual-to-target adequacy` to state the residual decomposition, source for each residual term, required target scale, and whether each residual is dominated. If source identity, label, statement role, conclusion-interface match, source-convention compatibility, required object-target compatibility, required residual-to-target adequacy, or direct/standard/current-notation/primitive-source source feasibility is unresolved, record a blocker instead of assigning the issue to future proof-step work.

`Obligation locality classification` should use only `step-local`, `sketch/interface defect`, or `idea/theorem-contract defect` when a theorem-critical hard obligation is already visible at sketch time; otherwise state `N/A`. This sketch-side classification is diagnostic, and `proof_sketch_review.md` remains the authoritative early classifier.

`Accumulation behavior / scope compatibility` must name the accumulated defect or forcing term, whether its sign is controlled or adversarial/unknown, the controlling budget/potential or mechanism-specific control relation, the one-step charge/absorption/potential-drop, preservation, projection, coupling, stopping, or conditioning relation, and why that relation has a finite budget or is valid under the declared all-time, uniform, limsup, or other accumulated scope. Category labels such as `finite-budgeted`, `monotone-potential controlled`, `Lyapunov`, `first-exit`, `reserve/ledger`, `stopped/conditioned`, `locally absorbed`, `small-gain`, `projection`, `dissipative recurrence`, or `algebraic coupling` are insufficient without that relation.

`Noncircular closure status` must name the noncircular producer or mechanism source, the exit/defect/control relation, and the dependency path for all-time, uniform, limsup, invariant, stability, recurrence, support, basin, boundedness, and generated-condition claims, or state `N/A` when the gate does not apply.

`Entry-state / first-update stress result` must trace the allowed entry, initial, stationary, null, degenerate, exact/noiseless, or boundary state when the Entry-State / Activation Trace Gate applies, or state `N/A`.

`Baseline conclusion preserved` must identify the inherited recovery, reduction, specialization, zero-defect, exact-limit, exact/noiseless, or baseline-case conclusion when one is present, and state how this step preserves the original conclusion rather than replacing it with a weaker surrogate. Use `N/A` only when no baseline invariance obligation touches the row.

## Exported Interface Feasibility

Write `None` when no theorem-critical downstream-facing output target, generated condition, margin, threshold, simplified bound, basin or membership certificate, recurrence interface, cited-tool wrapper conclusion, direct derivation output, standard fact or tool output, current-notation wrapper output, primitive-source derivation output, or public bridge is exported for later consumption.
Otherwise list each exported interface with:

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |

`Raw controls available before export` must come from primitive assumptions, accepted dependencies, cited tools with a valid planned discharge path, direct derivations, standard facts or tools, current-notation wrappers, primitive-source derivations, or explicitly conditional targets. The defect field must distinguish which terms are controlled by which parameter, event, margin, cited result, direct derivation, standard fact or tool, current-notation wrapper, primitive-source derivation, or threshold, and which terms are fixed, empirical, event-level, persistent, irreducible, or otherwise not controlled by that source. For theorem-critical source-supplied outputs, the row must expose source-convention compatibility. When the export depends on an entry, reference, population, no-error, or baseline object, the row must expose object-target compatibility; if the produced object is transformed, weighted, preconditioned, whitened, reference-operator-modified, or otherwise surrogate relative to the consumed target, it must expose a same-target bridge under the theorem metric or interface. `Residual-to-target adequacy` must state the produced object or control, consumed target or interface, theorem metric or norm, residual or transfer relation, source for each residual term, required margin or target scale, and whether every residual is dominated; use `N/A` only when no target-transfer bridge is present. For direct derivations, standard facts or tools, current-notation wrappers, and primitive-source derivations, the row must expose the exact setting convention, source-convention compatibility, object-target compatibility when applicable, raw-assumption-to-output path, quantitative dominance or transfer relation when needed, branch or boundary handling, and downstream interface. Use `Missing-interface blocker = None` only when the raw controls plausibly support the exact exported interface under the unchanged sketch and source-convention compatibility, required object-target compatibility, required residual-to-target adequacy, and required same-target bridge are exposed when needed. If a threshold, wrapper, direct derivation, standard fact or tool, current-notation wrapper, or primitive-source derivation controls only one defect class, split the bridge or record the unsupported part as a blocker.

## Generated Output Flow

Write `None` when no theorem-facing conclusion consumes a generated condition, derived invariant, recurrence closure, stability or boundedness claim, structural certificate, event membership, local-validity fact, membership fact, convergence claim, or quantitative specialization.
Otherwise list each generated output or control with:

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |

`Producer step or source` must be an earlier step, primitive condition, accepted-derived source, cited tool with a valid planned discharge path under the Source-To-Claim Adequacy Gate, direct derivation, standard fact or tool, current-notation wrapper, primitive-source derivation, or explicitly conditional target. For theorem-critical cited tools, record source identity, version or stable locator when relevant, exact label or stable statement identifier when used, statement role, source-object mapping, hypothesis discharge, conclusion-interface match, source-convention compatibility, object-target compatibility when an entry, reference, population, no-error, or baseline object is consumed, known non-output boundaries, and any bridge or wrapper obligation. For theorem-critical direct derivations, standard facts or tools, current-notation wrappers, and primitive-source derivations, record exact setting convention, source-convention compatibility, object-target compatibility when applicable, raw-assumption-to-output path, quantitative dominance or transfer relation when needed, branch or boundary handling, and downstream interface. If the generated output depends on an entry, reference, population, no-error, or baseline object and the produced object is transformed, weighted, preconditioned, whitened, reference-operator-modified, or otherwise surrogate relative to the consumed target, the row must expose a same-target bridge with residual-to-target adequacy. `Consumers` are downstream step IDs, closure steps, specialization steps, or final assembly. `Provenance class` must be `primitive`, `derived`, or `explicitly conditional`. Use `Missing-flow blocker = None` only when the producer-consumer path is legal and any source-convention compatibility, required object-target compatibility, residual-to-target adequacy, same-target bridge, and direct/standard/current-notation/primitive-source source feasibility needed by the generated output is already exposed.

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |

Use stable IDs such as `step_001`. `Depends on` is `None` or earlier step IDs. `Review status` starts as `PENDING`; sketch acceptance is determined by `proof_sketch_review.md`, not by this row-local field.

In `Assumptions used`, cite setting technical assumptions by their stable ids from `setting.md`, such as `assump:smoothness`; use prose only for non-setting dependencies or cited-result assumptions that must be discharged later.

In `Rate objective`, write `None` for non-rate-bearing steps. For rate-bearing steps, name the objective from `## Rate Objectives` and state the quantitative dependence, admissibility condition, term-absorption, probability-conversion, or Rate Specialization Bridge obligation this step must prove.

In `Assumptions used`, distinguish primitive setting assumptions from derived invariants supplied by earlier steps. Do not list an unproved derived invariant as a theorem-facing assumption; add a bridge step or record a blocker.

## Dependency Notes

Explain why the step graph is acyclic and how the accepted steps are expected to assemble into the target theorem.

## Blockers

Write `None` when a viable sketch exists. Otherwise name the exact sketch-level or idea-level blocker.
