# Global Proof

## Reviewed Sketch Identity

Record the branch path, sketch attempt, reviewed `proof_sketch.md` identity, reviewed `proof_sketch_review.md` identity, and confirmation that the sketch review status is `ACCEPTED`.

## Status

Allowed values:

- `COMPLETE_DRAFT`
- `PARTIAL_BLOCKED`
- `SKETCH_BLOCKED`

Diagnostic suggested routing:

- `COMPLETE_DRAFT` -> `Suggested Routing = None`
- `PARTIAL_BLOCKED` -> `Suggested Routing = None`
- `SKETCH_BLOCKED` -> `Suggested Routing = /proof-sketch`

The controller still runs `/global-proof-review` before downstream step proof or repair routing consumes this diagnostic.

## Attempted Theorem Claim

State the goal mode, theorem-facing assumptions, attempted conclusion, scope, and any exposed quantitative mode or dependence. In target-spec mode, state the strongest concrete claim the accepted sketch appears able to support, without guessing unsupported constants, rates, modes, or dependence.

## Whole-Proof Draft

Write a detailed theorem-level proof draft from the accepted sketch. Include named theorem-level blocks, the intended logical order, main derivational transitions, and final assembly to the attempted theorem. Keep unresolved parts explicit.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |

## Dependency And Assumption Audit

Classify theorem-facing conditions as primitive conditions, accepted derived conclusions from sketch dependencies, local conditional hypotheses, or missing derived-condition bridges. Write `None` only when no unresolved dependency or assumption-provenance issue remains.

## Citation And Tool Audit

List each cited theorem, standard fact, technical tool, direct derivation, current-notation wrapper, primitive-source derivation, or dependency use. For each item, state the source or name, current-branch objects, assumptions to discharge, conclusion needed, source-convention compatibility when theorem-critical, and affected block or `Step ID`. Write `None` only when no cited or external tool is needed.

## Quantitative Dependence Audit

When quantitative dependence is exposed or a baseline invariance obligation is present, record exposed variables, hidden-constant dependence, fixed quantities, probability or stochastic mode, horizon or limiting mode, norm or metric mode, auxiliary tolerances, public specialization obligations, baseline-reduction obligations, and how inherited baseline/recovery conclusions are preserved when relevant. Write `None` only when no quantitative dependence is exposed and no baseline invariance obligation is present.

## Scope And Closure Certificate

For each theorem-critical generated condition, recurrence, invariant, stability, boundedness, membership, convergence, quantitative specialization, structural lower/sign/coercivity/nondegeneracy/support claim, scope upgrade, or theorem-closure block needed by the attempted theorem, record:

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ----------------------------------- | ---------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |

Closure mechanism must be one or more of: self-contraction, dissipative/restoring recurrence, telescoping, summable control, signed cancellation, monotone potential, reserve/ledger under declared scope, stopping/conditioning argument, projection/nonexpansive maintenance, algebraic coupling, structural lower/upper comparison, or explicitly conditional target. The accumulation behavior / scope compatibility field must state how defect, forcing, leakage, or residual terms behave under the declared scope, or mark the behavior unsupported. For all-time or accumulated rows, it must name the accumulated defect, whether its sign is controlled or adversarial/unknown, the controlling budget/potential or mechanism-specific control relation, the one-step charge/absorption/potential-drop, preservation, projection, coupling, stopping, or conditioning relation, and why that relation has a finite budget or is valid under the declared scope. Category labels such as `finite-budgeted`, `monotone-potential controlled`, `reserve/ledger`, `stopped/conditioned`, `locally absorbed`, `small-gain`, `first-exit`, `Lyapunov`, `projection`, `dissipative recurrence`, or `algebraic coupling` are insufficient without that relation; if the accepted sketch does not already supply it, use `Status = SKETCH_BLOCKED`. The mechanism source / boundary exclusion field must name a primitive condition, accepted derived control, cited tool with a valid diagnostic discharge path under the Source-To-Claim Adequacy Gate, direct derivation, standard fact or tool, current-notation wrapper, primitive-source derivation with checked source-convention compatibility and raw-assumption feasibility, or explicitly conditional theorem target that makes the mechanism nonvacuous; it must also state which allowed boundary regimes are handled or excluded by the declared scope. For theorem-critical cited tools, record source identity, version or stable locator when relevant, exact label or stable statement identifier when used, statement role, source-object mapping, hypothesis discharge, conclusion-interface match, source-convention compatibility, known non-output boundaries, and any bridge or wrapper obligation. For theorem-critical direct derivations, standard facts or tools, current-notation wrappers, and primitive-source derivations, record exact setting convention, source-convention compatibility, raw-assumption-to-claim or output path, quantitative dominance or transfer relation when needed, branch or boundary handling, and downstream interface. The source-to-claim adequacy field must explain why the named source has the lower/sign/support/conditioning content needed by the claim class, including source-convention compatibility when theorem-critical, or state `N/A` when no structural lower/sign/support/nondegeneracy claim is involved. The residual-to-target adequacy field must state the produced object or control, consumed target or interface, theorem metric or norm, residual or transfer relation, source for each residual term, required margin or target scale, and whether every residual is dominated; use `N/A` only when no target-transfer bridge is present. The obligation locality classification field must use only `step-local`, `sketch/interface defect`, or `idea/theorem-contract defect`; any non-`step-local` entry forces `Status = SKETCH_BLOCKED`, with idea-level defects labeled as candidate idea-level evidence for `/global-proof-review` only when they identify the required theorem-contract change: changed primitive assumptions, changed algorithm/model/procedure, changed theorem scope/mode/metric, changed exposed dependence, changed success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion. The noncircular closure status field must name the noncircular producer or mechanism source, the exit/defect/control relation, and the dependency path for all-time, uniform, limsup, invariant, stability, recurrence, support, basin, boundedness, and generated-condition claims, or state `N/A` when the gate does not apply. The entry-state / first-update stress result field must trace an allowed entry, initial, stationary, null, degenerate, exact/noiseless, or boundary state when the Entry-State / Activation Trace Gate applies, or state `N/A`. Write `None` only when the attempted theorem needs no theorem-critical generated condition, recurrence, invariant, stability, boundedness, membership, convergence, quantitative specialization, structural lower/sign/coercivity/nondegeneracy/support claim, scope upgrade, or theorem-closure block covered by the Theorem-Critical Mechanism Witness Gate. Otherwise include certificate rows for every covered entry and use `N/A` only for row fields whose specific gate does not apply, such as entry-state / first-update stress when the Entry-State / Activation Trace Gate is irrelevant.

When a baseline invariance obligation is present, include it in the relevant certificate, generated-output flow, or quantitative-dependence entry. The diagnostic must state the baseline conclusion, the specialization or entry case, the mechanism source that preserves the original conclusion, and any first-transition or stationary trace needed to show the original conclusion, not only a weaker surrogate, remains valid.

## Exported Interface Feasibility

For each theorem-critical downstream-facing output target, generated condition, margin, threshold, simplified bound, basin or membership certificate, recurrence interface, cited-tool wrapper conclusion, direct derivation output, standard fact or tool output, current-notation wrapper output, primitive-source derivation output, or public bridge consumed by the attempted theorem, a theorem-level block, a closure block, public specialization, or a later step, record:

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |

`Raw controls available before export` must come from primitive assumptions, accepted-derived controls, sketch dependencies, cited tools with a valid diagnostic discharge path, direct derivations, standard facts or tools, current-notation wrappers, primitive-source derivations, or explicitly conditional targets. The defect field must distinguish which terms are controlled by each parameter, event, margin, cited result, direct derivation, standard fact or tool, current-notation wrapper, primitive-source derivation, or threshold, and which terms are fixed, empirical, event-level, persistent, irreducible, or otherwise not controlled by that source. For theorem-critical source-supplied outputs, the row must expose source-convention compatibility. For direct derivations, standard facts or tools, current-notation wrappers, and primitive-source derivations, the row must expose the exact setting convention, source-convention compatibility, raw-assumption-to-output path, quantitative dominance or transfer relation when needed, branch or boundary handling, and downstream interface. If the produced object is transformed, weighted, preconditioned, whitened, reference-operator-modified, or otherwise surrogate relative to the consumed target, the row must expose a same-target bridge under the theorem metric or interface. `Residual-to-target adequacy` must state the produced object or control, consumed target or interface, theorem metric or norm, residual or transfer relation, source for each residual term, required margin or target scale, and whether every residual is dominated; use `N/A` only when no target-transfer bridge is present. `Feasibility status or blocker` is `valid` only when the raw controls support the exact downstream-facing exported interface under the accepted sketch, source-convention compatibility is exposed when needed, and residual-to-target adequacy is exposed when applicable. If the accepted sketch lacks the needed bridge, output target, dependency, margin or threshold source, cited-tool wrapper conclusion, direct/standard/current-notation/primitive-source output conclusion, defect-class split, dominance/transfer relation, source-convention compatibility, residual-to-target adequacy, or source feasibility, use `Status = SKETCH_BLOCKED` rather than treating the issue as a hard local proof step.

## Generated Output Flow

For each theorem-facing generated output consumed by the attempted theorem, a theorem-level block, a closure block, or public specialization, record:

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |

`Producer block/step/source` must be a theorem-level block, sketch step, primitive condition, accepted-derived source, cited tool with a valid diagnostic discharge path under the Source-To-Claim Adequacy Gate, direct derivation, standard fact or tool, current-notation wrapper, primitive-source derivation, or explicitly conditional target. For theorem-critical cited tools, record source identity, version or stable locator when relevant, exact label or stable statement identifier when used, statement role, source-object mapping, hypothesis discharge, conclusion-interface match, source-convention compatibility, known non-output boundaries, and any bridge or wrapper obligation. For theorem-critical direct derivations, standard facts or tools, current-notation wrappers, and primitive-source derivations, record exact setting convention, source-convention compatibility, raw-assumption-to-output path, quantitative dominance or transfer relation when needed, branch or boundary handling, and downstream interface. If the generated output depends on an entry, reference, population, no-error, or baseline object and the produced object is transformed, weighted, preconditioned, whitened, reference-operator-modified, or otherwise surrogate relative to the consumed target, the flow must expose a same-target bridge with residual-to-target adequacy. `Provenance class` must be `primitive`, `derived`, or `explicitly conditional`. Use `Flow status = valid` only when the producer-consumer path is legal and any source-convention compatibility, residual-to-target adequacy when applicable, and direct/standard/current-notation/primitive-source source feasibility needed by the generated output is already exposed. Otherwise state the missing producer, missing dependency, unsupported source, missing source-convention compatibility, missing residual-to-target adequacy, missing source feasibility, or required sketch repair.

## Early Obstruction And Repair Plausibility

Record obstruction-level checks for contract contradictions, the Theorem-Critical Mechanism Witness Gate, Residual-To-Target Adequacy Gate, exported-interface feasibility failures, missing theorem-critical mechanisms, unsupported mode or dependence upgrades, generated-condition provenance failures, limiting or boundary stress failures, entry-state trace failures, and same-setting repair plausibility. Do not attempt substantial local step proofs. If the obstruction appears idea-level, label it as candidate idea-level evidence for `/global-proof-review` only when it identifies the required theorem-contract change: changed primitive assumptions, changed algorithm/model/procedure, changed theorem scope/mode/metric, changed exposed dependence, changed success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion; `global_proof.md` still uses `SKETCH_BLOCKED` and `Suggested Routing = /proof-sketch`.

## Global Gaps And Hard Steps

List unresolved global links, hard steps, or likely local proof bottlenecks. Write `None` only when the draft is complete.

## Diagnostic Boundary Note

State that this artifact is diagnostic only and cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change accepted sketch-step claims.

## Suggested Routing

First line must be one of:

- `None`
- `/proof-sketch`

For `None`, add whether to continue with all steps or prioritize a named `/proof-step <Step ID>` as diagnostic guidance. For `/proof-sketch`, state that the current sketch attempt is blocked and a new sketch attempt is required.
