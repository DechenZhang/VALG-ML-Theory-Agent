# Workflow

`ml-theory-research-agent` is an artifact-driven controller. It owns stage
ordering, checkpoints, worker provenance, retry budgets, branch routing, and
accepted-result copying. Stage skills own the research or review rubric for the
artifact they produce.

## End-To-End Shape

```text
research direction + optional RESEARCH_BRIEF.md
                    |
                    v
        Workflow 1: idea discovery
 literature -> perspectives -> ideas -> formal settings
                    |
                    v
          Workflow 2: split proof
 sketch -> global diagnostic -> proof steps -> assembly -> final reviews
                    |
                    v
     accepted result or smallest-target repair
```

The current directory is the run root unless the user names another one.
Approved perspectives become independent branches. The controller launches all
approved perspectives before allowing one proof branch to monopolize the run,
then advances branches in parallel when the runtime supports it or by fair
round-robin scheduling otherwise.

## Workflow 1: Idea Discovery

| Stage | What happens | Gate |
| --- | --- | --- |
| Direction merge | `$ARGUMENT` is merged with an optional `RESEARCH_BRIEF.md`; the brief has priority. | Downstream artifacts must preserve explicit or clearly implied source constraints. |
| Literature mapping | A run-scoped worker maps settings, results, techniques, sources, and gaps. | `LITERATURE_SURVEY.md` must pass its artifact contract and checkpoint. |
| Perspective selection | A distinct run-scoped worker normalizes a small set of research perspectives. | `Perspective_Selection.md` must remain aligned with the merged direction and pass its checkpoint. |
| Idea generation | Each perspective receives its own idea worker and `idea_N` slots. | Ideas must record lineage, assumption support, source alignment, and concrete checks for novel mechanisms. |
| Duplicate screening | Approved ideas are compared across perspectives before formalization. | Duplicates consume their idea slot but do not enter the current idea report. |
| Formalization | A distinct worker turns each viable idea into assumptions and exactly one formal goal. | `setting.md` receives a checkpoint and stable assumption identifiers. |

An idea worker may return `NO_VIABLE_IDEA` instead of manufacturing a weak
candidate. That consumes the current idea slot and records the gate failures in
`theory_tracker.md`. `IDEA_REPORT.md` remains a snapshot of active,
non-duplicate branches rather than a history of every failed candidate.

## Workflow 2: Split Proof

The proof workflow deliberately separates theorem-level planning, local proof
production, and final evaluation.

| Phase | Producer and reviewer behavior | Stage output |
| --- | --- | --- |
| Proof sketch | Build lemma-sized steps with stable IDs, dependencies, assumptions, tools, exported interfaces, and known blockers; review viability before detailed proof work. | Accepted `proof_sketch.md` plus `proof_sketch_review.md` |
| Global diagnostic | Draft the whole theorem argument, map sketch blocks, audit assumptions and citations, and expose hard steps; independently review the theorem-level structure. | `global_proof.md` is diagnostic context only and must be paired with an accepted `global_proof_review.md`. |
| Step proofs | Prove each accepted sketch step in dependency order, using a distinct producer and reviewer for each step. | A current `proof.md` and accepted `review.md` for every required `Step ID` |
| Assembly | Reconcile notation and combine accepted step claims without adding unreviewed lemmas. | `latex_template/` and `assembly_report.md` |
| Specialized review | Four independent reviewers inspect structure, derivational rigor, citations, and adversarial failure modes. | Four diagnostic review artifacts |
| Aggregate review | A separate aggregator resolves the diagnostic reviews into the only controller-facing final score, failure type, and repair route. | `proof_review.md` |

The global diagnostic is intentionally not a substitute for step proofs. A
detailed whole-proof narrative can expose a theorem-level obstruction early,
but assembly still requires fresh, accepted proof and review artifacts for each
sketch step.

## Gates And Repair Routing

Every consumed artifact is validated before it can update trackers, trigger a
retry, justify acceptance, or be copied to results. Important gates include:

- fidelity to the formal goal and source direction;
- assumption provenance and discharge;
- theorem-critical mechanism witnesses and exported interfaces;
- dependency closure and noncircular reasoning;
- cited-result statement and object mapping;
- quantitative dependence and boundary cases;
- fresh review of every repaired proof step;
- self-contained, paper-ready assembly without unreviewed lemmas.

When a review or human checkpoint rejects an attempt, it identifies the
smallest mathematical object that must change. The controller validates that
diagnosis, selects the responsible producer, and charges the applicable retry
budget. The selected producer changes only the implicated component using the
accepted upstream context, the failed attempt, and the validated diagnosis.
The revised artifact must then pass a fresh independent review or human
checkpoint before downstream use.

Repair follows a hierarchy from the narrowest proof artifact to the theorem
contract:

```text
proof assembly -> proof step or dependency -> proof sketch -> idea and formal setting
```

The global diagnostic sits alongside this hierarchy: it may be revised under
the same accepted sketch, or it may expose a defect requiring sketch or
theorem-contract repair. An `IDEA_FAIL` route is valid only when preserving the
current setting and goal cannot repair the defect. It must identify the
required theorem-contract change, such as a primitive assumption, algorithm,
theorem scope, exposed dependence, success criterion, theorem-facing mechanism
source unsupported by the current setting, or weakened conclusion.

When the obstruction lies in the theorem formulation or initial problem
setup, the next idea must be an explicitly related source-relative variant or
relaxation. It preserves the branch's mathematical relationship to the
originating question and records the remaining gap rather than silently
replacing the target. If a local retry budget is exhausted, the controller
escalates to the next broader repair level with remaining budget. Exhausting
all idea slots ends only the affected perspective branch. See
[Configuration](configuration.md) for the exact status-to-route mappings and
attempt limits.

## Worker Separation

The controller records real runtime-visible handles in `worker_log.md`. It uses
two run-scoped workers for literature and perspective selection. For a
perspective with `k` accepted sketch steps, it requires 12 distinct
perspective-level roles plus two distinct step-level roles for every step, for
a total `12 + 2k` perspective-scoped and step-scoped handles. A producer cannot
stand in for its reviewer.

Reruns may resume the same handle for the same role and step. Replacements are
recorded as handoffs. Missing or invented provenance blocks finalization.

## Acceptance And Continuation

An aggregate score at or above the threshold is necessary but not sufficient.
Acceptance also requires an `ACCEPTED` failure type, no critical issues, a
complete assembly, all specialized contracts, fresh step coverage, assumption
provenance, worker distinctness, budget validity, and verified result copying.

Acceptance is branch-local. After copying one accepted branch, the controller
continues the remaining approved perspectives until each is accepted,
exhausted, or stopped by a hard gate, unless the user explicitly requested a
first-success search.

See [Configuration](configuration.md) for exact statuses and budgets and
[Run Layout](run-layout.md) for the artifact lifecycle.
