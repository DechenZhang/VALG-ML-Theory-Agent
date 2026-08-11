# Directory Conventions

## Root-Level Controller Artifacts

- `LITERATURE_SURVEY.md`
- `Perspective_Selection.md`
- `IDEA_REPORT.md`
- `theory_tracker.md`
- `workflow_feedback.md`
- `worker_log.md`

## Branch Layout

- `perspective_M/idea_N/idea.md`
- `perspective_M/idea_N/setting.md`
- `perspective_M/idea_N/latex_template/main.tex`
- `perspective_M/idea_N/latex_template/arxiv.sty`
- `perspective_M/idea_N/latex_template/ims.bst`
- `perspective_M/idea_N/latex_template/reference.bib`
- `perspective_M/idea_N/latex_template/1_intro.tex`
- `perspective_M/idea_N/latex_template/2_preliminary.tex`
- `perspective_M/idea_N/latex_template/3_main.tex`
- `perspective_M/idea_N/latex_template/4_proof_sketch.tex`
- `perspective_M/idea_N/latex_template/5_appendix.tex`
- `perspective_M/idea_N/assembly_report.md`
- `perspective_M/idea_N/proof_review.md`
- `perspective_M/idea_N/proof_tracker.md`
- `perspective_M/idea_N/proof_sketch.md`
- `perspective_M/idea_N/proof_sketch_review.md`
- `perspective_M/idea_N/global_proof.md`
- `perspective_M/idea_N/global_proof_review.md`
- `perspective_M/idea_N/proof_review_structural.md`
- `perspective_M/idea_N/proof_review_rigor.md`
- `perspective_M/idea_N/proof_review_citation.md`
- `perspective_M/idea_N/proof_review_adversarial.md`
- `perspective_M/idea_N/proof_steps/<Step ID>/proof.md`
- `perspective_M/idea_N/proof_steps/<Step ID>/review.md`

## Branch-Local Idea-Wide Layout

- `perspective_M/idea_N/technical_survey.md`

`technical_survey.md` is stored under one branch path `perspective_M/idea_N/technical_survey.md`; later same-perspective ideas may read it only as a reference.

`assembly_report.md`, `proof_sketch.md`, `proof_sketch_review.md`, `global_proof.md`, `global_proof_review.md`, specialized review artifacts, and `proof_steps/` are split-pipeline working or diagnostic artifacts. They remain branch-local and are not accepted-result outputs.

## Accepted Results

- `results/perspective_M/idea_N/theory`

Accepted split-mode results include `setting.md`, `latex_template/`, and aggregated `proof_review.md`.
