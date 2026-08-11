# Skill Catalog

The bundle contains one public controller and 16 focused stage skills. Normal
users invoke only `ml-theory-research-agent`; slash-style calls in the skill
specifications are symbolic controller delegations, not a requirement to run
each stage manually.

| Role | Skill | Responsibility | Primary outputs |
| --- | --- | --- | --- |
| Public controller | `ml-theory-research-agent` | Orchestrate both workflows, checkpoints, trackers, worker provenance, retry routing, budgets, and accepted-result copying. | Root trackers, branch `proof_tracker.md`, `proof_history/`, accepted `results/` |
| Literature producer | `research-lit` | Map relevant theory and supporting empirical literature, techniques, results, and gaps. | `LITERATURE_SURVEY.md` |
| Perspective producer | `perspective-select` | Convert literature gaps into normalized, source-aligned research perspectives. | `Perspective_Selection.md` |
| Idea producer | `subagent-idea-generator` | Generate or minimally repair one branch-local idea, record lineage and support, and avoid duplicates. | `perspective_M/idea_N/idea.md` or `NO_VIABLE_IDEA` |
| Formalization producer | `idea-formalizer` | Translate an approved idea into explicit assumptions and exactly one theorem goal. | `perspective_M/idea_N/setting.md` |
| Sketch producer | `proof-sketch` | Create or repair a dependency-aware, lemma-sized proof roadmap and select proof tools. | `proof_sketch.md`; optional `technical_survey.md` |
| Sketch reviewer | `proof-sketch-review` | Gate theorem alignment, dependency feasibility, interfaces, high-risk obligations, and early obstructions. | `proof_sketch_review.md` |
| Global proof producer | `global-proof` | Write a detailed theorem-level diagnostic with block mapping, audits, closure checks, and hard-step localization. | `global_proof.md` |
| Global proof reviewer | `global-proof-review` | Decide whether the diagnostic supports step work or requires global, sketch, or idea repair. | `global_proof_review.md` |
| Step producer | `proof-step` | Prove exactly one accepted sketch step with local lemmas, derivations, and source checks. | `proof_steps/<Step ID>/proof.md` |
| Step reviewer | `proof-step-review` | Audit one step proof, its local lemmas, hidden subclaims, dependencies, and exact target claim. | `proof_steps/<Step ID>/review.md` |
| Assembly producer | `proof-assembly` | Assemble accepted step artifacts into a self-contained LaTeX paper without new unreviewed lemmas. | `latex_template/`, `assembly_report.md` |
| Structural reviewer | `proof-review-structural` | Check goal alignment, dependency closure, step coverage, and assembly discipline. | `proof_review_structural.md` |
| Rigor reviewer | `proof-review-rigor` | Check derivations, quantifiers, constants, probability modes, and boundary cases. | `proof_review_rigor.md` |
| Citation reviewer | `proof-review-citation` | Check theorem statements, source fidelity, object mappings, and assumption discharge. | `proof_review_citation.md` |
| Adversarial reviewer | `proof-review-adversarial` | Stress-test the weakest claims for counterexamples, circularity, and hidden gaps. | `proof_review_adversarial.md` |
| Review aggregator | `proof-review-aggregate` | Reconcile all four specialized reviews into the sole final decision and retry route. | `proof_review.md` |

## Shared Support Files

`skills/_shared/` is not an eighteenth skill. It contains the contracts that
make the stage skills interoperable:

- `templates/` defines required artifact shapes and the LaTeX bundle skeleton;
- `checklists/artifact-contracts.md` defines validity gates for consumed files;
- `checklists/tracker-lifecycle.md` defines tracker update rules;
- `checklists/review-outcomes.md` defines controlled reviewer outcomes;
- `checklists/result-copy.md` defines final accepted-copy verification;
- `references/directory-conventions.md` defines run and branch paths.

All `../_shared/...` references are resolved relative to the installed skill
directory, not relative to the active research run. This is why the entire
`skills/` payload must be installed together.

## Producer And Reviewer Boundaries

Producers may create or repair only the artifact owned by their stage.
Reviewers diagnose that artifact and emit controlled routing fields; they do
not silently rewrite the proof. The four specialized final reviewers are
diagnostic only. Even when one reports a blocker, the controller waits for
`proof-review-aggregate` before dispatching a producer repair.

`global-proof` and `global-proof-review` are theorem-level diagnostic stages.
They can block an infeasible proof before step work, but their prose never
replaces accepted step proofs or authorizes an unreviewed change to the sketch.

For the end-to-end order, see [Workflow](workflow.md).
