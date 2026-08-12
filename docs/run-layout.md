# Run Layout And Artifact Lifecycle

The controller treats the current directory as the run root unless the user
explicitly names another root. Files at fixed paths are the live state of the
run; archived copies preserve provenance but never count as current evidence.

## Directory Shape

```text
run-root/
|-- RESEARCH_BRIEF.md                 # optional user input
|-- LITERATURE_SURVEY.md
|-- Perspective_Selection.md
|-- IDEA_REPORT.md
|-- theory_tracker.md
|-- workflow_feedback.md
|-- worker_log.md
|-- perspective_M/
|   `-- idea_N/
|       |-- idea.md
|       |-- setting.md
|       |-- proof_tracker.md
|       |-- proof_sketch.md
|       |-- proof_sketch_review.md
|       |-- technical_survey.md       # optional
|       |-- global_proof.md
|       |-- global_proof_review.md
|       |-- proof_steps/
|       |   `-- <Step ID>/
|       |       |-- proof.md
|       |       `-- review.md
|       |-- latex_template/
|       |-- assembly_report.md
|       |-- proof_review_structural.md
|       |-- proof_review_rigor.md
|       |-- proof_review_citation.md
|       |-- proof_review_adversarial.md
|       |-- proof_review.md
|       `-- proof_history/
`-- results/
    `-- perspective_M/idea_N/theory/
        |-- setting.md
        |-- proof_review.md
        `-- latex_template/
```

## Root Artifacts

| Artifact | Owner and purpose |
| --- | --- |
| `RESEARCH_BRIEF.md` | Optional user-authored direction that refines or overrides the prompt. The controller preserves it. |
| `LITERATURE_SURVEY.md` | Literature worker's map of related settings, results, techniques, evidence, and gaps. |
| `Perspective_Selection.md` | Perspective selector's normalized branches. |
| `IDEA_REPORT.md` | Controller-owned current snapshot of viable, non-duplicate ideas. It is not the full failure history. |
| `theory_tracker.md` | Controller-owned branch and idea-slot lifecycle, including failed `NO_VIABLE_IDEA` and duplicate slots. |
| `workflow_feedback.md` | Checkpoint feedback persisted across a producer rerun and cleared according to the controller contract. |
| `worker_log.md` | Runtime-visible worker assignments, stage provenance, resumes, and handoffs. |

Initialization creates missing controller files from shared templates. It does
not truncate prior run history or add a viable branch row before an idea passes
its checkpoint and duplicate gate.

## Branch Artifacts

An `idea_N` directory is one formal theorem branch within one approved
`perspective_M`. The branch keeps both current producer artifacts and the
reviews that authorize downstream use.

- `idea.md` and `setting.md` define the current theorem contract.
- `proof_tracker.md` records sketch, global, step, and assembly producer
  attempts and their controlling review outcomes.
- `proof_sketch.md` defines stable step IDs, claims, dependencies, assumptions,
  proof tools, interfaces, and blockers.
- `proof_sketch_review.md` is the binding early viability decision.
- `technical_survey.md` is optional and may be absent when no idea-local
  framework survey was created or used.
- `global_proof.md` is theorem-level diagnostic context only. It may be
  consumed downstream only when paired with a current accepted
  `global_proof_review.md`; neither artifact is proof evidence.
- `proof_steps/<Step ID>/` holds the current proof and current review for one
  sketch step.
- `latex_template/` and `assembly_report.md` are the current assembly output.
- the four specialized review files are diagnostics consumed by
  `proof-review-aggregate`;
- `proof_review.md` is the sole controller-facing final review and repair route.

## Current, Stale, And Archived State

The controller writes live artifacts to fixed paths. Before a producer
overwrites an artifact that has already been consumed for routing, tracker
updates, acceptance, or result copying, the controller copies the prior version
under a stage-and-attempt-specific path in:

```text
perspective_M/idea_N/proof_history/sketch_XXX/
```

The archive retains enough of the original path to distinguish proof steps and
LaTeX bundles. It is non-binding history: it cannot satisfy an artifact gate,
support a current acceptance decision, or be copied to final results.

A sketch revision makes the earlier `global_proof.md` and
`global_proof_review.md` pair non-current and invalidates all earlier step
proof/review, assembly, specialized-review, and aggregate-review artifacts.
After the new sketch is accepted, the controller must obtain a fresh global
diagnostic and accepted review before producing and reviewing every required
step under that sketch. Likewise, rerunning a step producer makes the old
accepted step review stale until a new review identifies and accepts the
repaired proof artifact.

Only the latest relevant same-step, dependency, or triggering-review artifacts
may be supplied as narrowly scoped repair context when their claims and
assumptions still match. Do not scan or rely on the full historical archive.
These artifacts remain diagnostic inputs, not current proof evidence.

## Tracker Semantics

Producer attempts, not reviewer calls, consume budgets. The controller opens a
tracker row before the relevant sketch, global proof, proof step, or assembly
producer runs, then closes it from the controlling review artifact.

- sketch, global, and step rows use `Score = N/A`;
- the assembly row receives the numeric score and failure type from the
  aggregate final review;
- `Status = Accept` is reserved for the controlled accepted outcome;
- attempt numbers above a configured maximum invalidate finalization.

`Retry Mode` stays in sketch and aggregate review artifacts and can be
summarized in tracker reasons; it is not a separate proof-tracker column.

## Accepted Result Copy

After all gates pass, the controller copies only:

```text
setting.md
proof_review.md
latex_template/
```

into `results/perspective_M/idea_N/theory/`. The LaTeX directory must include
`main.tex`, `arxiv.sty`, `ims.bst`, `reference.bib`, and the five content files.
The controller verifies the copy before marking the theory-tracker row
accepted.

The narrow result bundle is convenient for reading and distribution, but it is
not the full evidence trail. For an audit, retain the run root and examine the
sketch, global diagnostic, step proofs, reviews, trackers, and worker log.

Published case-study snapshots may retain a compiled `main.pdf` inside this
directory or its `latex_template/`. Those PDFs are historical publication
artifacts, not additional controller-owned acceptance evidence. Each candidate
also has a consistently located `paper.pdf` beside its `theory/` directory.

## Case-Study Additions

The COLT corpus wraps each historical run with repository-level material such
as source PDFs, problem indexes, and evaluation reports. Those files provide
publication context; they are not generated by the controller's normal run
contract.
