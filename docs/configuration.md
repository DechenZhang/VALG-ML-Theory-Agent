# Inputs, Modes, And Retry Policy

The controller intentionally has a small public interface. Most behavior is
encoded in artifact contracts and controlled review outcomes rather than a
large set of command-line flags.

## Research Direction

The required input is `$ARGUMENT`, the research direction passed with the
controller invocation:

```text
$ml-theory-research-agent "convergence analysis of low-precision LoRA training"
```

State the target setting, desired theorem or progress type, and important
constraints. Avoid asking only for "a new theorem" without identifying the
research object or success criterion.

## `RESEARCH_BRIEF.md`

An optional `RESEARCH_BRIEF.md` in the run root refines or overrides
`$ARGUMENT`. The merge happens before literature search, so all of Workflow 1
uses the same effective direction.

Useful brief content includes:

- the exact question and target theorem shape;
- the model, data, algorithm, metric, and asymptotic regime;
- assumptions to use, avoid, weaken, or justify;
- required baselines, primary sources, or forbidden shortcuts;
- known failed directions and proof bottlenecks;
- criteria for full, partial, conditional, or negative progress.

The controller extracts constraints from ordinary prose; no fixed headings are
required. It must not invent restrictions that the brief does not state or
silently weaken source-critical details downstream.

## Run Mode

| Value | Checkpoint behavior |
| --- | --- |
| `interactive` | Default. Stop at each Workflow 1 checkpoint for `approve/proceed`, `edit`, or `re-generate/re-search`. |
| `autopilot` | Approve checkpoints by default. Continue all approved perspectives unless the user explicitly requests a first-success search. |

Autopilot does not permit first-attempt target weakening, source-scope drift,
missing workers, invalid artifacts, extra producer attempts, or acceptance
without copy verification.

## Default Limits

| Controller constant | Default | Scope |
| --- | ---: | --- |
| `MAX_PERSPECTIVES` | `3` | Approved perspectives explored in the run. |
| `MAX_IDEA_VARIANTS_PER_PERSPECTIVE` | `8` | Consumed idea slots in one perspective, including `NO_VIABLE_IDEA` and duplicate outcomes. |
| `MAX_SKETCH_ATTEMPTS_PER_IDEA` | `6` | Proof-roadmap and decomposition attempts for one idea. |
| `MAX_GLOBAL_PROOF_ATTEMPTS_PER_SKETCH` | `3` | Theorem-level diagnostic producer attempts under one accepted sketch. |
| `MAX_STEP_ATTEMPTS_PER_STEP` | `3` | Proof producer attempts for one `Step ID` under one sketch attempt. |
| `MAX_ASSEMBLY_ATTEMPTS_PER_SKETCH` | `8` | Assembly producer attempts under one accepted sketch. |
| `ACCEPT_THRESHOLD` | `7` | Minimum aggregate final-review score; all other acceptance gates still apply. |

Every `MAX_*` value is the total number of producer attempts, not a retry count.
Attempt 1 consumes the first slot; attempt `MAX + 1` is invalid. Reviewer and
diagnostic calls consume no producer budget by themselves. The repair producer
that a review dispatches consumes the next slot.

These values are hard controller gates in the published workflow. A local fork
can change the policy deliberately, but a run must not exceed the limits stated
by the controller version it records.

## Controlled Routing

| Controlling artifact | Outcome | Smallest normal route |
| --- | --- | --- |
| Idea generation | `NO_VIABLE_IDEA` | Record the consumed `idea_N`; try the next idea slot if available. |
| Sketch review | `ACCEPTED` | Continue to the global proof diagnostic. |
| Sketch review | `REVISE_SKETCH` | Rerun `proof-sketch` under the next sketch attempt. |
| Sketch review | `IDEA_FAIL` | Create a new idea only with a valid theorem-contract rationale. |
| Global proof review | `ACCEPTED` | Continue to dependency-ordered proof steps. |
| Global proof review | `REVISE_GLOBAL` | Rerun `global-proof` under the same accepted sketch. |
| Global proof review | `REVISE_SKETCH` | Start the next sketch attempt. |
| Global proof review | `IDEA_FAIL` | Create a new idea only with a valid theorem-contract rationale. |
| Step review | `ACCEPTED` | Continue to downstream steps or assembly. |
| Step review | `REVISE_STEP` | Rerun the named proof step, then obtain a fresh review. |
| Step review | `BLOCKED_BY_DEPENDENCY` | Repair and freshly review the named dependency; charge its step budget. |
| Step review | `REVISE_SKETCH` | Start the next sketch attempt. |
| Aggregate review | `ACCEPTED` | Verify gates, copy the accepted bundle, then continue other branches. |
| Aggregate review | `PROOF_ASSEMBLY_FLAW` | Repair assembly, then rerun all specialized and aggregate reviews. |
| Aggregate review | `PROOF_STEP_FLAW` | Repair and freshly review the named step, refresh affected downstream work, then reassemble and rereview. |
| Aggregate review | `PROOF_SKETCH_FLAW` | Start the next sketch attempt and regenerate all binding downstream proof artifacts. |
| Aggregate review | `IDEA_FAIL` | Create a new idea only with the required theorem-contract rationale. |

When a local unit budget is exhausted, routing escalates to sketch revision.
When sketch attempts are exhausted, it escalates to a new idea. When idea slots
are exhausted, that perspective branch fails.

## Final Acceptance

`Score >= 7` alone does not accept a branch. The aggregate artifact must also
report `Failure Type = ACCEPTED` and `Critical Issues = None`. The assembly must
be complete and claim-consistent; every required step must have a current
accepted review; assumption provenance, artifact contracts, citations,
specialized reviews, worker distinctness, budgets, and the final copy must all
pass their gates.

See [Workflow](workflow.md) for stage context and [Run Layout](run-layout.md)
for tracker and staleness rules.
