---
name: ml-theory-research-agent
description: Orchestrate the full ML theory research workflow, including idea discovery, upgraded split proof workflow with global proof diagnostics and review, specialized final reviewers, checkpoints, tracker lifecycle, branch routing, and accepted-result copying.
---

# ML Theory Research Agent

Use this public controller skill for the full ML-theory research workflow. The controller owns workflow order, checkpoints, tracker lifecycle, worker provenance, retry routing, and accepted-result copying. Internal research and proof rubrics live in the producing or reviewing skills.

## Responsibilities

- Orchestrate Workflow 1: literature survey, perspective selection, idea generation, and formalization.
- Orchestrate Workflow 2: split proof sketch, sketch review, global proof diagnostics, global proof review, step proof, step review, proof assembly, specialized final review, and aggregate final review.
- Enforce `RUN_MODE`, defaulting to `interactive`; `RUN_MODE = autopilot` approves checkpoints by default but does not change perspective coverage.
- Maintain `theory_tracker.md`, `proof_tracker.md`, `IDEA_REPORT.md`, `workflow_feedback.md`, and `worker_log.md`.
- Route local and final review outcomes to the smallest retry point.
- Copy accepted final artifacts into `results/perspective_M/idea_N/theory`.

## Inputs And Outputs

Required input:

- `$ARGUMENT`

Optional input:

- `RESEARCH_BRIEF.md`

`RESEARCH_BRIEF.md` refines or overrides `$ARGUMENT`; after the Workflow 1 merge, `$ARGUMENT` in this controller means the merged effective research direction. The merged effective research direction is subject to the Source-Direction Fidelity Contract in `../_shared/checklists/artifact-contracts.md`; downstream workers must extract only constraints that are present or clearly implied, without assuming fixed brief headings.

Controller-owned outputs:

- `LITERATURE_SURVEY.md`
- `Perspective_Selection.md`
- `IDEA_REPORT.md`
- `theory_tracker.md`
- `workflow_feedback.md`
- `worker_log.md`
- `perspective_M/idea_N/proof_tracker.md`
- `perspective_M/idea_N/proof_history/` for non-binding archival copies of overwritten proof-stage artifacts
- accepted artifacts under `results/perspective_M/idea_N/theory`

## Internal Skill Calls

- `/research-lit "$ARGUMENT"` -> writes `LITERATURE_SURVEY.md`
- `/perspective-select "$ARGUMENT"` -> writes `Perspective_Selection.md`
- `/subagent-idea-generator "$ARGUMENT"` -> writes `perspective_M/idea_N/idea.md`, or returns `NO_VIABLE_IDEA` without finalizing an idea when all candidates fail hard gates
- `/idea-formalizer` -> writes `perspective_M/idea_N/setting.md`
- `/proof-sketch` -> writes `perspective_M/idea_N/proof_sketch.md`
- `/proof-sketch-review` -> writes `perspective_M/idea_N/proof_sketch_review.md`
- `/global-proof` -> writes `perspective_M/idea_N/global_proof.md`
- `/global-proof-review` -> writes `perspective_M/idea_N/global_proof_review.md`
- `/proof-step <Step ID>` -> writes `perspective_M/idea_N/proof_steps/<Step ID>/proof.md`
- `/proof-step-review <Step ID>` -> writes `perspective_M/idea_N/proof_steps/<Step ID>/review.md`
- `/proof-assembly` -> writes `perspective_M/idea_N/latex_template/` and `perspective_M/idea_N/assembly_report.md`
- `/proof-review-structural` -> writes `perspective_M/idea_N/proof_review_structural.md`
- `/proof-review-rigor` -> writes `perspective_M/idea_N/proof_review_rigor.md`
- `/proof-review-citation` -> writes `perspective_M/idea_N/proof_review_citation.md`
- `/proof-review-adversarial` -> writes `perspective_M/idea_N/proof_review_adversarial.md`
- `/proof-review-aggregate` -> writes `perspective_M/idea_N/proof_review.md`

Slash-style calls are symbolic skill invocations. To invoke a skill, load its `SKILL.md`, provide the listed inputs through the assigned subagent, and verify the expected artifact.

## Split Subagent Model

Before perspective branches, spawn or resume two distinct run-scoped subagents:

- `literature-worker` for `/research-lit "$ARGUMENT"`
- `perspective-selector` for `/perspective-select "$ARGUMENT"`

These run-scoped handles are required worker provenance for the full workflow, but they are not counted in the per-perspective `12 + 2k` proof/idea distinctness gate.

For each approved perspective, spawn twelve distinct perspective-scoped subagents:

- `idea-worker` for `/subagent-idea-generator`
- `formalizer` for `/idea-formalizer`
- `sketch-worker` for `/proof-sketch`
- `sketch-reviewer` for `/proof-sketch-review`
- `global-proof-worker` for `/global-proof`
- `global-proof-reviewer` for `/global-proof-review`
- `assembler` for `/proof-assembly`
- `structural-reviewer` for `/proof-review-structural`
- `rigor-reviewer` for `/proof-review-rigor`
- `citation-reviewer` for `/proof-review-citation`
- `adversarial-reviewer` for `/proof-review-adversarial`
- `review-aggregator` for `/proof-review-aggregate`

For each accepted sketch step, spawn two additional distinct step-scoped subagents:

- `step-worker` for `/proof-step <Step ID>`
- `step-reviewer` for `/proof-step-review <Step ID>`

If an approved perspective has `k` sketch steps, the controller requires `12 + 2k` distinct runtime-visible subagent handles for that perspective. Step-scoped handles are tied to one `Step ID`; do not reuse them for another step in the same sketch. Reruns may resume the same handle for the same role and step when available; otherwise spawn a replacement and record a `handoff`.

Before each delegated stage, append a row to `worker_log.md` using `../_shared/templates/worker-log.md`. Do not run a delegated stage with an empty or invented handle.

Resolve `../_shared/...` references relative to this skill directory (`skills/ml-theory-research-agent/` in source form or the installed skill directory), not relative to the active run root.

## Artifact Gates

Before consuming an artifact for routing, tracker updates, acceptance, or copying, validate it against `../_shared/checklists/artifact-contracts.md`.

Required checks:

- `LITERATURE_SURVEY.md` keeps the required literature-survey structure and does not contradict extracted source-direction constraints; when source-relevant constraints matter downstream, the survey keeps them visible in relation and gap prose.
- `Perspective_Selection.md` contains complete normalized perspective tuples and does not contradict extracted source-direction constraints; if normalization drops source-critical details, its gap or focus prose preserves them as residual context for idea generation.
- `idea.md` preserves required headings, concrete lineage notes, and support provenance in existing `Notes` fields; theorem-critical assumptions, procedures, protocols, and mechanisms are standard/literature-derived or novel example-verified, and every novel component names several branch-specific concrete verification examples. When source-direction constraints are present, `idea.md` records source alignment, progress type, and materiality, and does not pass an unmarked weakening or `non_material` candidate.
- `setting.md` preserves required headings, assigns a stable ASCII assumption id such as `assump:smoothness` to every technical assumption, contains exactly one goal statement, preserves idea-level assumption-support provenance in `# Note / Rigor`, and preserves source-alignment and progress-type metadata when present.
- `proof_sketch.md` exposes stable steps, exact claims, dependencies, assumptions, proof tools, theorem-critical mechanism-witness entries, exported-interface feasibility for downstream-facing theorem-critical outputs, including source-convention compatibility, object-target compatibility for theorem-critical entry/reference/baseline objects, same-target bridges with residual-to-target adequacy when the produced object is transformed, weighted, preconditioned, whitened, reference-operator-modified, or otherwise surrogate relative to the consumed target, and raw-assumption-to-interface feasibility for direct derivations, standard facts or tools, current-notation wrappers, and primitive-source derivations when applicable, baseline invariance obligations when present, obligation locality classification when theorem-critical hard obligations are visible, noncircular closure status when applicable, entry-state / first-update stress results when applicable, generated-output flow entries when theorem-facing generated outputs are consumed, and blockers.
- `proof_sketch_review.md` contains a controlled sketch-review status, integer sketch viability score, smallest retry target, retry mode, audit summary, early obstruction audit including the theorem-critical mechanism-witness gate, Exported Interface Feasibility Gate, Residual-To-Target Adequacy Gate when applicable, Baseline Invariance Obligation when applicable, Step-Locality And Theorem-Contract Gate, Noncircular Closure Gate, Entry-State / Activation Trace Gate, source-interface feasibility including source-convention compatibility and object-target compatibility for direct derivations, standard facts or tools, current-notation wrappers, and primitive-source derivations when applicable, same-target bridge checks with residual-to-target adequacy for transformed or surrogate produced objects, and generated-output flow when applicable, a `Gate Evidence Table` satisfying the shared Gate Evidence Row Contract, blocking issues, required repair bundle, and rationale.
- `global_proof.md` contains a controlled global proof status, reviewed sketch identity, attempted theorem claim, detailed whole-proof draft, theorem-level block map, sketch-step coverage, dependency and assumption audit, citation and tool audit, quantitative dependence audit including baseline invariance obligations when present, scope and closure certificate covering theorem-critical mechanism witnesses, exported-interface feasibility for downstream-facing theorem-critical outputs, including source-convention compatibility, object-target compatibility for theorem-critical entry/reference/baseline objects, same-target bridges with residual-to-target adequacy for transformed or surrogate produced objects, and raw-assumption-to-interface feasibility for direct derivations, standard facts or tools, current-notation wrappers, and primitive-source derivations when applicable, obligation locality classification using only `step-local`, `sketch/interface defect`, or `idea/theorem-contract defect`, noncircular closure status when applicable, entry-state / first-update stress results when applicable, generated-output flow when applicable, early obstruction and repair-plausibility audit, global gaps and hard steps, diagnostic boundary note, and suggested routing.
- `global_proof_review.md` contains a controlled global-proof review status, smallest retry target, blocking issues, required repair bundle, contract and status audit, claim and sketch fidelity audit, theorem-level structure audit, dependency and assumption audit, citation and tool audit, quantitative dependence audit, scope and closure review with an independent theorem-critical mechanism-witness gate, Exported Interface Feasibility Gate, Residual-To-Target Adequacy Gate when applicable, source-interface feasibility including source-convention compatibility and object-target compatibility for direct derivations, standard facts or tools, current-notation wrappers, and primitive-source derivations when applicable, same-target bridge checks with residual-to-target adequacy for transformed or surrogate produced objects, and Baseline Invariance Obligation when applicable, a `Gate Evidence Table` satisfying the shared Gate Evidence Row Contract, row-level obligation locality classification review, Noncircular Closure Gate, Entry-State / Activation Trace Gate, Step-Locality And Theorem-Contract Gate, and generated-output flow when applicable, hard-step localization audit, early idea-failure screen, and rationale.
- every step proof and review artifact contains the required local proof and local review sections.
- `latex_template/` contains the required content and support files and passes the self-contained paper-ready TeX gate.
- `assembly_report.md` contains a controlled assembly status, attempted claim, blockers, and notes.
- the Assumption Provenance Contract passes for sketch, global proof, step, assembly, and final review artifacts.
- every specialized review artifact contains `Reviewer Verdict`, `Blocking Issues`, `Nonblocking Concerns`, `Suggested Repair Depth`, and `Smallest Candidate Repair Target`.
- aggregated `proof_review.md` contains `Score`, `Failure Type`, `Critical Issues`, `Suggested Next Action`, and `Retry Mode`.
- accepted-result copying copies only `setting.md`, `latex_template/`, and `proof_review.md`.

Hard controller gates:

- `MAX_*` budgets are total allowed producer attempts, not retry counts. Do not run or accept attempt `MAX + 1` for any idea, sketch, global proof, step, or assembly producer.
- Before any rerun overwrites a branch artifact path that has already been consumed for routing, tracker updates, acceptance checks, or accepted-result copying, copy the previous consumed file or directory into branch-local `proof_history/sketch_XXX/...` under a stage-and-attempt-specific path. Preserve enough path structure to identify the original artifact, including `proof_steps/<Step ID>/...` and `latex_template/` when applicable.
- `proof_history/` is archival history only. It is never current proof evidence, never satisfies an artifact gate, and is never copied to accepted results.
- Specialized final reviewers are diagnostic. After a specialized reviewer reports a blocker in a contract-valid artifact, any producer repair must be routed by `/proof-review-aggregate`; the controller may rerun or hand off a specialized reviewer directly only when that diagnostic review artifact is missing or contract-invalid.
- Finalization must fail if any budget gate, worker-provenance gate, artifact gate, or accepted-copy verification gate fails.

## Initialization

Treat the current directory as the run root unless the user explicitly names another root.

Before running `/research-lit`:

- If `worker_log.md` is missing at the run root, initialize it with the table structure from `../_shared/templates/worker-log.md`.
- If `workflow_feedback.md` is missing at the run root, initialize it from `../_shared/templates/workflow-feedback.md`.
- If `theory_tracker.md` is missing at the run root, initialize it from `../_shared/templates/theory-tracker.md`.
- If `IDEA_REPORT.md` is missing at the run root, initialize it from `../_shared/templates/idea-report.md`.
- Preserve existing controller-owned files when present; do not rewrite or truncate prior run history during initialization.
- Do not append a `theory_tracker.md` branch row during initialization. Append a normal viable-idea branch row only after `idea.md` passes its checkpoint and the cross-perspective duplicate gate. Exception: if `/subagent-idea-generator` returns `NO_VIABLE_IDEA` or the approved `idea.md` fails the cross-perspective duplicate gate, append the corresponding failed row for that consumed `idea_N` slot immediately before routing to the next idea slot or marking the perspective exhausted.

Existing proof-stage artifacts are branch history. Do not delete them unless the user asks. On a rerun, use the latest relevant review or final review artifact as the triggering repair artifact.

Before a rerun overwrites any latest proof-stage artifact path that was previously consumed, archive that consumed artifact under `proof_history/sketch_XXX/...`. Do not archive by moving the live artifact; copy it, then let the producer overwrite the fixed path.

## Control Parameters

- `RUN_MODE`: `interactive` or `autopilot`; default `interactive` and requires explicit user approval at checkpoints
- `MAX_PERSPECTIVES = 3`
- `MAX_IDEA_VARIANTS_PER_PERSPECTIVE = 8`
- `MAX_SKETCH_ATTEMPTS_PER_IDEA = 6`
- `MAX_GLOBAL_PROOF_ATTEMPTS_PER_SKETCH = 3`
- `MAX_STEP_ATTEMPTS_PER_STEP = 3`
- `MAX_ASSEMBLY_ATTEMPTS_PER_SKETCH = 8`
- `ACCEPT_THRESHOLD = 7`

`Retry Mode` is recorded only in `proof_sketch_review.md` and aggregated `proof_review.md`, and may be summarized in `proof_tracker.md` `Reasons`; do not add a proof-tracker column for it. `global_proof.md` records `Status` and `Suggested Routing`, not retry mode. `global_proof_review.md` records `Global-Proof Review Status` and `Smallest Retry Target`, not retry mode or a numeric score. Step-review and specialized review artifacts do not include `Retry Mode`: `proof_steps/<Step ID>/review.md` records `Step-Review Status` and `Smallest Retry Target`, and the controller derives step repair routing from those fields; specialized review artifacts provide diagnostic repair depth and candidate target for the aggregator only.

## Retry Budget Rules

The controller owns retry budgets. Reviewer skills diagnose outcomes and retry targets but do not consume or update budgets.

- Each `MAX_*` value is the total number of allowed producer attempts. Attempt `1` consumes the first budget slot; the controller must stop before dispatching attempt `MAX + 1`. Budget state is invalid if one perspective has more than `MAX_IDEA_VARIANTS_PER_PERSPECTIVE` consumed idea slots, or if any accepted proof-tracker row has `Sketch attempt > MAX_SKETCH_ATTEMPTS_PER_IDEA`, global `Unit attempt > MAX_GLOBAL_PROOF_ATTEMPTS_PER_SKETCH`, step `Unit attempt > MAX_STEP_ATTEMPTS_PER_STEP`, or assembly `Unit attempt > MAX_ASSEMBLY_ATTEMPTS_PER_SKETCH`.
- `MAX_IDEA_VARIANTS_PER_PERSPECTIVE` limits idea-generation slots under one approved perspective. `IDEA_FAIL` consumes this budget by creating the next `idea_N`; `NO_VIABLE_IDEA` consumes the current `idea_N` slot without creating or accepting an `idea.md`; cross-perspective duplicate rejection consumes the current `idea_N` slot after `idea.md` checkpoint approval but before formalization. Enforce the budget by counting all `theory_tracker.md` rows for that perspective with `Idea attempt = idea_N`, including failed `NO_VIABLE_IDEA` and `DUPLICATE_IDEA` rows. Exhaustion ends the perspective branch.
- `MAX_SKETCH_ATTEMPTS_PER_IDEA` limits proof-roadmap and decomposition attempts for one idea. `Sketch attempt` starts at `1`; sketch-review `REVISE_SKETCH`, global-proof-review `REVISE_SKETCH`, and final `PROOF_SKETCH_FLAW` consume this budget by incrementing `Sketch attempt`.
- `MAX_GLOBAL_PROOF_ATTEMPTS_PER_SKETCH` limits `/global-proof` producer attempts under the current accepted sketch. The first global diagnostic uses `Unit attempt = 1`; `global-proof-review` `REVISE_GLOBAL` consumes this budget by rerunning `/global-proof` with the next global `Unit attempt` under the same `Sketch attempt`.
- `MAX_STEP_ATTEMPTS_PER_STEP` limits attempts for one `Step ID` under the current sketch attempt. `REVISE_STEP` and final `PROOF_STEP_FLAW` consume the affected step's `Unit attempt` budget.
- `BLOCKED_BY_DEPENDENCY` consumes the blocking dependency step's `MAX_STEP_ATTEMPTS_PER_STEP` budget, not the downstream step that reported the dependency block.
- `MAX_ASSEMBLY_ATTEMPTS_PER_SKETCH` limits assembly attempts under the current accepted sketch. Final `PROOF_ASSEMBLY_FLAW` consumes the assembly `Unit attempt` budget.
- `/global-proof-review` consumes no producer budget itself. `REVISE_GLOBAL` consumes the global-proof attempt budget by rerunning `/global-proof` under the same accepted sketch and same `Sketch attempt`. `REVISE_SKETCH` consumes the sketch retry budget by rerunning `/proof-sketch`. `IDEA_FAIL` consumes the idea-generation budget by creating the next idea slot.
- After any sketch revision, previous step proof/review and assembly artifacts from an earlier `Sketch attempt` are stale for binding purposes. The controller must rerun `/proof-step` and `/proof-step-review` for every required step in the newly accepted sketch, in dependency order, before assembly. The only prior proof material that may be consulted is the latest prior relevant artifact for the same branch and same step or dependency, such as the latest previous same-step proof/review, latest previous dependency proof/review, or latest aggregate review that triggered repair. These artifacts may be used only as diagnostic or repair references when their claims, assumptions, and dependencies still match the current accepted sketch. Do not scan or rely on the full historical archive; acceptance requires fresh artifacts under the current `Sketch attempt`.
- After any `/proof-step <Step ID>` producer rerun, the previous accepted `proof_steps/<Step ID>/review.md` is stale unless its `Sketch attempt`, `Step ID`, `Unit attempt`, and `Reviewed proof artifact` identify the current `proof_steps/<Step ID>/proof.md` produced by that rerun. The repaired step proof must pass a fresh `/proof-step-review <Step ID>` with `Step-Review Status = ACCEPTED` before it can be consumed by downstream step reviews, assembly, specialized final reviews, aggregate review, or accepted-result copying.
- The specialized final reviewer ensemble consumes no producer budget and does not route retries directly.
- Final `/proof-review-aggregate` consumes no budget itself. Its `Suggested Next Action` consumes the controller-supported repair target's budget.
- When a local step or assembly budget is exhausted, escalate to sketch revision. When sketch attempts are exhausted, escalate to a new idea. When idea-generation slots are exhausted, mark the branch failed.
- Before any `IDEA_FAIL` or retry-exhaustion route creates a fresh `idea_N`, perform a minimal-delta check: identify the failed needed property, any failed baseline invariance obligation, and which prior primitive assumption, algorithm/model/procedure, theorem scope/mode/metric, exposed dependence, success criterion, or mechanism source, including any theorem-facing mechanism source not supported by the setting, is implicated, or whether weakening the conclusion is implicated. Prefer the smallest idea/formalization repair that keeps unaffected idea structure intact, including inherited baseline/recovery conclusions unless the triggering failure explicitly made their weakening target-changing. First preserve any review-allowed same-setting sketch repair when the route is not a valid `IDEA_FAIL`; after a valid `IDEA_FAIL`, treat primitive-assumption, theorem-contract, or target changes as idea repair rather than as repair of the existing proof artifacts, and create a materially new idea only when the implicated repair cannot preserve the prior branch structure. A target-changing drift after `IDEA_FAIL`, retry exhaustion, or explicit checkpoint feedback must remain the smallest change justified by the failure record and must preserve source-direction metadata and remaining-gap labeling.

## Workflow 1: Idea Discovery

1. Read `$ARGUMENT`; if `RESEARCH_BRIEF.md` exists, merge it with `$ARGUMENT`, with the brief taking priority. All later `/research-lit "$ARGUMENT"`, `/perspective-select "$ARGUMENT"`, and `/subagent-idea-generator "$ARGUMENT"` calls use this merged effective argument. Apply the Source-Direction Fidelity Contract to downstream Workflow 1 artifacts: extract constraints from available prose only when present or clearly implied, and do not assume fixed `RESEARCH_BRIEF.md` headings.
2. Spawn or resume the run-scoped `literature-worker`, append a `worker_log.md` row with `Branch Path = run`, `Stage = literature-survey`, and `Notes` containing `scope=run`, then run `/research-lit "$ARGUMENT"` and checkpoint `LITERATURE_SURVEY.md`.
3. Spawn or resume the run-scoped `perspective-selector`, append a `worker_log.md` row with `Branch Path = run`, `Stage = perspective-selection`, and `Notes` containing `scope=run`, then run `/perspective-select "$ARGUMENT"` and checkpoint `Perspective_Selection.md`.
4. Launch all approved perspectives as active branches before proof work monopolizes any one branch: create every approved `perspective_M/`, allocate each initial `idea_1` slot, spawn each distinct `idea-worker`, and dispatch `/subagent-idea-generator "$ARGUMENT"` for all approved perspectives when the runtime supports parallel delegation. If true parallel delegation is unavailable, use fair round-robin scheduling across active perspectives and do not run one perspective to acceptance, exhaustion, or hard-gate termination before launching or advancing the others.
5. As each active perspective branch's idea worker returns `NO_VIABLE_IDEA`, do not checkpoint that branch's `idea.md` and do not run `/idea-formalizer` for that branch. Append exactly one failed `theory_tracker.md` row for the consumed branch-local `idea_N` slot with `Setting = N/A`, `Goal = N/A`, `Setting Signature = N/A`, `Goal Signature = N/A`, `Status = Fail`, `Best Score` empty or `0`, and `Reasons = NO_VIABLE_IDEA: <compact gate-failure reasons>`; if that perspective's idea budget remains, route that branch to the next `idea_N` using those compact gate-failure reasons as feedback, otherwise mark only that perspective branch exhausted.
6. For each active perspective branch whose worker produces an `idea.md`, checkpoint that branch-local `idea.md`; on approval, run the cross-perspective duplicate gate for that branch.
7. If the cross-perspective duplicate gate rejects an approved branch-local `idea.md`, do not run `/idea-formalizer` for that branch and do not include that branch in `IDEA_REPORT.md`. Append exactly one failed `theory_tracker.md` row for the consumed branch-local `idea_N` slot with `Setting`, `Goal`, `Setting Signature`, and `Goal Signature` filled from the generated `idea.md` using the same normalized summaries used for viable idea rows, `Status = Fail`, `Best Score` empty or `0`, and `Reasons = DUPLICATE_IDEA: matches <perspective_M/idea_N>; <compact duplicate reason>`; if that perspective's idea budget remains, route that branch to the next `idea_N` using that duplicate reason as feedback, otherwise mark only that perspective branch exhausted.
8. For each viable non-duplicate branch-local idea, append the normal `theory_tracker.md` row only after that branch's `idea.md` passes checkpoint and duplicate gate.
9. Keep `IDEA_REPORT.md` as a current snapshot of active non-duplicate branches.

Checkpoint actions:

- In `RUN_MODE = interactive` or when `RUN_MODE` is unspecified, stop at each checkpoint and ask the user for `approve/proceed`, `edit`, or `re-generate/re-search`.
- `approve` or `proceed`: continue.
- `edit`: apply the requested edits to the current artifact, then checkpoint again.
- `re-generate` or `re-search`: persist feedback in `workflow_feedback.md`, rerun the producing skill, then clear the feedback section.
- `RUN_MODE = autopilot`: choose approve/proceed. Autopilot approval does not authorize first-attempt target weakening or source-scope drift; first ideas still follow the Source-Direction Fidelity Contract, and later drift requires valid failure evidence, retry exhaustion, or explicit checkpoint feedback. Autopilot also does not stop the run after the first accepted branch; launch all approved perspectives as active branches and continue them unless the user explicitly requested a first-success search.

## Workflow 2: Split Theory Proof

Workflow 2 runs one active proof branch per approved perspective whose current idea passed duplicate checks. Keep these perspective branches active in parallel when the runtime supports it; otherwise advance them by fair round-robin scheduling. Branch-local retries consume only that branch's budgets. Acceptance and finalization are branch-local: after one branch is accepted and copied, continue every remaining approved perspective until that perspective is accepted, exhausted, or blocked by a hard gate, unless the user explicitly requested a first-success search.

### Phase 1: Formalization

Spawn or resume the perspective's distinct `formalizer`, then invoke:

```markdown
/idea-formalizer
```

Inputs:

- `perspective_M/idea_N/idea.md` that has passed the support-provenance artifact gate
- optional `LITERATURE_SURVEY.md`
- optional branch-local files under `perspective_M/`

Output:

- `perspective_M/idea_N/setting.md`

Checkpoint `setting.md`, including the compact assumption-support summary in `# Note / Rigor`. When accepted, initialize `perspective_M/idea_N/proof_tracker.md` from the shared proof-tracker template.

### Phase 2: Proof Sketch

Spawn or resume the perspective's distinct `sketch-worker`, append a proof-tracker row with `Sketch attempt = current sketch attempt`, `Unit type = sketch`, `Unit id = sketch`, `Unit attempt = 1`, and `Score = N/A`, then invoke:

```markdown
/proof-sketch
```

Inputs:

- `perspective_M/idea_N/setting.md`
- `perspective_M/idea_N/proof_tracker.md`
- optional `idea.md`, `LITERATURE_SURVEY.md`, `theory_tracker.md`, `technical_survey.md`, and prior same-perspective artifacts
- on reruns, the triggering `proof_sketch_review.md`, `global_proof.md`, `global_proof_review.md`, `proof_steps/<Step ID>/review.md`, or aggregated `proof_review.md`
- on reruns, controller-provided `Retry Mode`: `revise_sketch`

Outputs:

- `perspective_M/idea_N/proof_sketch.md`
- optional `perspective_M/idea_N/technical_survey.md`

The sketch must expose stable step IDs, intended claims, dependencies, assumptions, proof tools or cited results, theorem-critical mechanism-witness entries, exported-interface feasibility for downstream-facing theorem-critical outputs, source-convention compatibility, object-target compatibility for theorem-critical entry/reference/baseline objects, same-target bridges with residual-to-target adequacy when the produced object is transformed, weighted, preconditioned, whitened, reference-operator-modified, or otherwise surrogate relative to the consumed target, and raw-assumption-to-interface feasibility for direct derivations, standard facts or tools, current-notation wrappers, and primitive-source derivations when applicable, obligation locality classification when theorem-critical hard obligations are visible, noncircular closure status when applicable, entry-state / first-update stress results when applicable, generated-output flow entries when theorem-facing generated outputs are consumed, and blockers.

### Phase 3: Proof Sketch Review

Spawn or resume the perspective's distinct `sketch-reviewer`, then invoke:

```markdown
/proof-sketch-review
```

Inputs:

- `perspective_M/idea_N/setting.md`
- `perspective_M/idea_N/proof_sketch.md`
- optional lineage, tracker, and technical-survey artifacts

Output:

- `perspective_M/idea_N/proof_sketch_review.md`

After `proof_sketch_review.md` passes its artifact gate, fill the open sketch proof-tracker row with `Score = N/A`, `Review outcome = <sketch review status>`, `Retry target = <Smallest Retry Target>`, and `Status = Accept` only for `ACCEPTED`; otherwise set `Status = Fail`.

Route sketch-review status:

- `ACCEPTED`: count sketch steps as `k`, prepare the `12 + 2k` worker-provenance plan, then proceed to global proof.
- `REVISE_SKETCH`: require `Retry Mode = revise_sketch`; if `MAX_SKETCH_ATTEMPTS_PER_IDEA` remains, increment `Sketch attempt` and rerun `/proof-sketch`; otherwise route to idea revision or branch exhaustion.
- `IDEA_FAIL`: require `Smallest Retry Target = /subagent-idea-generator`, `Retry Mode = new_idea`, and an explicit rationale explaining why same-setting sketch repair cannot preserve the current formalized setting and goal and identifying the required theorem-contract change: changed primitive assumptions, changed algorithm/model/procedure, changed theorem scope/mode/metric, changed exposed dependence, changed success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion. If that rationale is missing, treat the review artifact as contract-invalid and rerun or hand off `/proof-sketch-review`. If valid and `MAX_IDEA_VARIANTS_PER_PERSPECTIVE` remains, route to idea revision with the triggering `proof_sketch_review.md` as prior failure evidence; otherwise mark branch exhaustion.

### Phase 4: Global Proof

After the sketch review is accepted, spawn or resume the perspective's distinct `global-proof-worker`, append a proof-tracker row with `Sketch attempt = current sketch attempt`, `Unit type = global`, `Unit id = global`, `Unit attempt = next global proof attempt under the current sketch attempt` starting at `1`, and `Score = N/A`, then invoke:

```markdown
/global-proof
```

Inputs:

- `setting.md`
- accepted `proof_sketch.md`
- accepted `proof_sketch_review.md`
- optional prior failures and tracker history

Output:

- `perspective_M/idea_N/global_proof.md`

The global proof artifact must be a detailed theorem-level diagnostic draft, not a short sketch summary. It must expose the attempted claim, theorem-level block map, step coverage, dependency and assumption audit, cited-tool obligations, source-convention compatibility, object-target compatibility for theorem-critical entry/reference/baseline objects, same-target bridges with residual-to-target adequacy when the produced object is transformed, weighted, preconditioned, whitened, reference-operator-modified, or otherwise surrogate relative to the consumed target, and raw-assumption-to-interface feasibility for direct derivations, standard facts or tools, current-notation wrappers, and primitive-source derivations when applicable, quantitative-dependence obligations when relevant, scope-and-closure certificate for all entries covered by the Theorem-Critical Mechanism Witness Gate, exported-interface feasibility and raw-control-to-exported-interface paths for downstream-facing theorem-critical outputs, obligation locality classification for theorem-critical hard obligations, noncircular closure status when applicable, entry-state / first-update stress results when applicable, generated-output flow when applicable, and diagnostic boundary note required by the shared artifact contract. `global_proof.md` may label candidate idea-level evidence, but only `global_proof_review.md` can route that evidence to `/subagent-idea-generator`.

After `global_proof.md` passes its artifact gate, spawn or resume the perspective's distinct `global-proof-reviewer`, append a worker-log row, then invoke:

```markdown
/global-proof-review
```

Inputs:

- `setting.md`
- accepted `proof_sketch.md`
- accepted `proof_sketch_review.md`
- `global_proof.md`
- optional prior failures and tracker history

Output:

- `perspective_M/idea_N/global_proof_review.md`

After `global_proof_review.md` passes its artifact gate, fill the open global proof-tracker row with `Score = N/A`, `Review outcome = <Global-Proof Review Status>`, `Retry target = <Smallest Retry Target>`, and `Status = Accept` only for `ACCEPTED`; otherwise set `Status = Fail`. Do not copy any global-proof or global-proof-review diagnostic score into the tracker.

Route global-proof-review status:

- `ACCEPTED`: require `Smallest Retry Target = None`, then continue to step proof using `global_proof.md` only as accepted diagnostic context.
- `REVISE_GLOBAL`: require `Smallest Retry Target = /global-proof`; if `MAX_GLOBAL_PROOF_ATTEMPTS_PER_SKETCH` remains, append a new global proof-tracker row with the next global `Unit attempt`, rerun `/global-proof` under the same accepted sketch and same `Sketch attempt`, then rerun `/global-proof-review`. If the global proof budget is exhausted, escalate to `/proof-sketch` with `Retry Mode = revise_sketch` if the sketch budget remains; otherwise route to idea revision or branch exhaustion.
- `REVISE_SKETCH`: require `Smallest Retry Target = /proof-sketch`; if `MAX_SKETCH_ATTEMPTS_PER_IDEA` remains, increment `Sketch attempt` and rerun `/proof-sketch` with `Retry Mode = revise_sketch` and the triggering `global_proof_review.md`; otherwise route to idea revision or branch exhaustion.
- `IDEA_FAIL`: require `Smallest Retry Target = /subagent-idea-generator` and an explicit rationale explaining why same-setting sketch repair cannot preserve the current formalized setting and goal and identifying the required theorem-contract change: changed primitive assumptions, changed algorithm/model/procedure, changed theorem scope/mode/metric, changed exposed dependence, changed success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion. If that rationale is missing, treat the review artifact as contract-invalid and rerun or hand off `/global-proof-review`. If valid and `MAX_IDEA_VARIANTS_PER_PERSPECTIVE` remains, route to idea revision with the triggering `global_proof_review.md` as prior failure evidence; otherwise mark branch exhaustion.

`global_proof.md` is diagnostic. It must not replace accepted step proofs, justify assembly acceptance, or change sketch-step claims without routing back through accepted `global_proof_review.md` and then `/proof-sketch`.

### Phase 5: Step Proof And Step Review

Run steps in dependency order. A step may start only after all listed dependencies have accepted reviews.

For each `Step ID`, spawn or resume the distinct step-scoped `step-worker`, append a proof-tracker row with `Sketch attempt = current sketch attempt`, `Unit type = step`, `Unit id = <Step ID>`, `Unit attempt = next attempt for this Step ID under the current sketch attempt`, and `Score = N/A`, then invoke:

```markdown
/proof-step <Step ID>
```

Inputs:

- `setting.md`
- `proof_sketch.md`
- accepted `proof_sketch_review.md`
- optional accepted diagnostic `global_proof.md` when paired with accepted `global_proof_review.md`
- accepted `global_proof_review.md` when `global_proof.md` is provided
- target `Step ID`
- accepted dependency step proof/review artifacts, when dependencies exist
- on reruns, triggering same-step `proof_steps/<Step ID>/review.md`, downstream `proof_steps/<Downstream Step ID>/review.md` naming this step as the failed dependency, or aggregated `proof_review.md` when repairing a step

Output:

- `proof_steps/<Step ID>/proof.md`

Then spawn or resume the distinct step-scoped `step-reviewer` and invoke:

```markdown
/proof-step-review <Step ID>
```

Inputs:

- `setting.md`
- `proof_sketch.md`
- accepted `proof_sketch_review.md`
- target `Step ID`
- `proof_steps/<Step ID>/proof.md`
- accepted dependency step proof/review artifacts, when dependencies exist

Output:

- `proof_steps/<Step ID>/review.md`

After `proof_steps/<Step ID>/review.md` passes its artifact gate, fill the open step proof-tracker row with `Score = N/A`, `Review outcome = <Step-Review Status>`, `Retry target = <Smallest Retry Target>`, and `Status = Accept` only for `ACCEPTED`; otherwise set `Status = Fail`.

Route step-review status:

- `ACCEPTED`: continue to downstream steps or assembly.
- `REVISE_STEP`: if `MAX_STEP_ATTEMPTS_PER_STEP` remains for this `Step ID`, rerun `/proof-step <Step ID>` with the same-step review as the triggering repair artifact, then rerun `/proof-step-review <Step ID>` against the repaired proof and proceed only if that same-step review returns `ACCEPTED`; otherwise route by the new step-review status. If the step budget is exhausted, escalate to sketch revision.
- `REVISE_SKETCH`: if `MAX_SKETCH_ATTEMPTS_PER_IDEA` remains, rerun `/proof-sketch` with `Retry Mode = revise_sketch` and an incremented sketch attempt; otherwise route to idea revision or branch exhaustion.
- `BLOCKED_BY_DEPENDENCY`: if `MAX_STEP_ATTEMPTS_PER_STEP` remains for the named dependency, rerun `/proof-step <dependency Step ID>` with the downstream review as the triggering repair artifact, then rerun `/proof-step-review <dependency Step ID>` against the repaired dependency proof and proceed only if that dependency review returns `ACCEPTED`; after that, rerun affected downstream step reviews or step proofs as needed in dependency order. If the dependency review is not `ACCEPTED`, route by its step-review status. If the dependency step budget is exhausted, escalate to sketch revision.

### Phase 6: Proof Assembly

After all required steps are accepted, spawn or resume the perspective's distinct `assembler`, append a proof-tracker row with `Sketch attempt = current sketch attempt`, `Unit type = assembly`, `Unit id = assembly`, and `Unit attempt = next assembly attempt under the current sketch attempt`, then invoke:

```markdown
/proof-assembly
```

Inputs:

- `setting.md`
- accepted `proof_sketch.md`
- accepted `proof_sketch_review.md`
- accepted proof/review artifacts for every required step
- optional aggregated `proof_review.md` when repairing `PROOF_ASSEMBLY_FLAW`

Outputs:

- `perspective_M/idea_N/latex_template/`
- `perspective_M/idea_N/assembly_report.md`

Assembly may combine accepted step claims and reconcile notation, but it must not introduce independent unreviewed lemmas.

The assembly proof-tracker row remains open until the aggregate final review is valid. Fill that row from aggregated `proof_review.md`: numeric `Score`, `Review outcome = Failure Type`, `Retry target = Suggested Next Action`, and `Status = Accept` only for `Failure Type = ACCEPTED`; otherwise `Status = Fail`.

### Phase 7: Specialized Final Reviews

After assembly, spawn or resume the four distinct specialized reviewers and invoke:

```markdown
/proof-review-structural
/proof-review-rigor
/proof-review-citation
/proof-review-adversarial
```

Inputs:

- `setting.md`
- assembled `latex_template/`
- `assembly_report.md`
- accepted `proof_sketch.md`
- accepted `proof_sketch_review.md`
- valid diagnostic `global_proof.md` paired with accepted `global_proof_review.md`
- accepted `global_proof_review.md`
- accepted step proof/review artifacts for every required sketch step

Outputs:

- `perspective_M/idea_N/proof_review_structural.md`
- `perspective_M/idea_N/proof_review_rigor.md`
- `perspective_M/idea_N/proof_review_citation.md`
- `perspective_M/idea_N/proof_review_adversarial.md`

Each specialized review is diagnostic only. It must emit `Reviewer Verdict`, `Blocking Issues`, `Nonblocking Concerns`, `Suggested Repair Depth`, and `Smallest Candidate Repair Target`; it must not update trackers or route retries.

Validate each specialized review artifact before invoking `/proof-review-aggregate`. If one is missing or contract-invalid, rerun or hand off only that diagnostic reviewer with a real worker-log row; this consumes no proof producer budget and must not be recorded as a proof flaw.

If a contract-valid specialized review reports `BLOCKING`, do not repair the producer directly from that specialized review. Invoke `/proof-review-aggregate` first, then route the producer repair only from the aggregate `proof_review.md`.

### Phase 8: Aggregate Final Review

Spawn or resume the perspective's distinct `review-aggregator`, then invoke:

```markdown
/proof-review-aggregate
```

Inputs:

- `setting.md`
- assembled `latex_template/`
- `assembly_report.md`
- accepted `proof_sketch.md`
- accepted `proof_sketch_review.md`
- valid diagnostic `global_proof.md` paired with accepted `global_proof_review.md`
- accepted `global_proof_review.md`
- accepted step proof/review artifacts for every required sketch step
- all four specialized review artifacts

Output:

- `perspective_M/idea_N/proof_review.md`

Aggregate final review outputs:

- `Score`
- `Failure Type`: `ACCEPTED`, `PROOF_ASSEMBLY_FLAW`, `PROOF_STEP_FLAW`, `PROOF_SKETCH_FLAW`, or `IDEA_FAIL`
- `Critical Issues`
- `Suggested Next Action`
- `Retry Mode`

Acceptance requires:

- `Score >= ACCEPT_THRESHOLD`
- `Failure Type = ACCEPTED`
- `Critical Issues = None`
- `latex_template/` contains the required content and support files, and the LaTeX bundle is self-contained/paper-ready
- `assembly_report.md` has `Status = COMPLETE`, `Blockers = None`, and an attempted claim consistent with the public LaTeX bundle and `setting.md`
- no unreviewed lemma, changed accepted step statement, stale dependency, or missing step coverage
- the Assumption Provenance Contract passes: unconditional final theorems must not assume unproved generated-object, event, local-validity, stability, recurrence, boundedness, membership, or invariant facts through an admissibility or similar package
- all four specialized review artifacts pass their contracts and report no acceptance-blocking issue
- required run-scoped worker provenance and per-perspective `12 + 2k` distinctness gates pass

### Phase 9: Refine Or Finish

Route aggregate final review outcomes. `Suggested Next Action` and `Retry Mode` must align with `Failure Type`; if they disagree, treat the aggregate review as contract-invalid and rerun or hand off `/proof-review-aggregate`.

- `ACCEPTED`: run branch-local finalization and accepted-result copying, then continue any remaining approved perspectives or active branches unless the user explicitly requested a first-success search.
- `PROOF_ASSEMBLY_FLAW`: require `Suggested Next Action = /proof-assembly` and `Retry Mode = repair_assembly`; if `MAX_ASSEMBLY_ATTEMPTS_PER_SKETCH` remains, rerun `/proof-assembly` with aggregated `proof_review.md` as the triggering repair artifact, then specialized reviews and aggregate review; otherwise escalate to sketch revision.
- `PROOF_STEP_FLAW`: require `Suggested Next Action = /proof-step <Step ID>` and `Retry Mode = repair_step`; if `MAX_STEP_ATTEMPTS_PER_STEP` remains for the affected `Step ID`, rerun `/proof-step <Step ID>` with aggregated `proof_review.md` as the triggering repair artifact, then rerun `/proof-step-review <Step ID>` against the repaired proof and proceed only if that same-step review returns `ACCEPTED`; after that, rerun affected downstream step reviews or step proofs as needed, assembly, specialized reviews, and aggregate review. If the same-step review is not `ACCEPTED`, route by its step-review status. If the step budget is exhausted, escalate to sketch revision.
- `PROOF_SKETCH_FLAW`: require `Suggested Next Action = /proof-sketch` and `Retry Mode = revise_sketch`; if `MAX_SKETCH_ATTEMPTS_PER_IDEA` remains, rerun `/proof-sketch` with an incremented sketch attempt and aggregated `proof_review.md` as the triggering repair artifact; otherwise route to idea revision or branch exhaustion.
- `IDEA_FAIL`: require `Suggested Next Action = /subagent-idea-generator`, `Retry Mode = new_idea`, and an explicit rationale explaining why `PROOF_SKETCH_FLAW` cannot preserve the current formalized setting and goal and identifying the required theorem-contract change: changed primitive assumptions, changed algorithm/model/procedure, changed theorem scope/mode/metric, changed exposed dependence, changed success criterion, adding a theorem-facing mechanism source not supported by the setting, or weakening the conclusion. If that rationale is missing, treat the aggregate review as contract-invalid and rerun or hand off `/proof-review-aggregate`. If valid, revise the idea when `MAX_IDEA_VARIANTS_PER_PERSPECTIVE` remains, using aggregated `proof_review.md` as prior failure evidence.

When retry limits are exhausted, escalate in this order: local unit retry -> sketch revision -> new idea -> branch failure.

## Finalization

For an accepted branch, finalization is branch-local:

1. Verify final artifact gates.
2. Verify split worker-provenance gates.
3. Verify no perspective has more than `MAX_IDEA_VARIANTS_PER_PERSPECTIVE` consumed idea slots in `theory_tracker.md`, including `NO_VIABLE_IDEA` and `DUPLICATE_IDEA` rows, and no accepted proof-tracker row uses an over-budget producer attempt, including global proof attempts.
4. Copy only:
   - `setting.md`
   - `latex_template/`
   - `proof_review.md`
5. Do not copy diagnostic or archival artifacts, including `assembly_report.md`, `global_proof.md`, `global_proof_review.md`, specialized review artifacts, sketch artifacts, step artifacts, or `proof_history/`.
6. Copy into `results/perspective_M/idea_N/theory`.
7. Verify the copied files exist, including the complete `latex_template/` directory with `main.tex`, `arxiv.sty`, `ims.bst`, `reference.bib`, and the five content files.
8. Mark the current theory-tracker row `Accept` only after copy verification passes.

After all approved perspectives terminate, return the accepted-branches summary, which may contain zero, one, or multiple accepted branches. If no branch is accepted after all approved perspectives terminate, return a failure summary.

## References

Load these only when needed. Paths are relative to this skill directory, not to the active run root:

- `../_shared/templates`
- `../_shared/templates/worker-log.md`
- `../_shared/templates/workflow-feedback.md`
- `../_shared/templates/theory-tracker.md`
- `../_shared/templates/idea-report.md`
- `../_shared/templates/proof-tracker.md`
- `../_shared/templates/global-proof-review.md`
- `../_shared/templates/assembly-report.md`
- `../_shared/checklists/artifact-contracts.md`
- `../_shared/checklists/tracker-lifecycle.md`
- `../_shared/checklists/review-outcomes.md`
- `../_shared/checklists/result-copy.md`
- `../_shared/references/directory-conventions.md`

Detailed mathematical rubrics belong in the internal proof and review skills, not in this public controller.
