# Accepted Result Copy

When a branch is accepted, the public skill copies the accepted final artifacts into:

`results/perspective_M/idea_N/theory`

Copy only the accepted final:

- `setting.md`
- `latex_template/`
- aggregated `proof_review.md`

Do not copy diagnostic, archival, or split-pipeline working artifacts such as `assembly_report.md`, `global_proof.md`, `global_proof_review.md`, `proof_review_structural.md`, `proof_review_rigor.md`, `proof_review_citation.md`, `proof_review_adversarial.md`, `proof_sketch.md`, `proof_sketch_review.md`, `proof_steps/`, or `proof_history/` unless a later accepted-result contract explicitly changes this rule.

Accepted-result copying is complete only when the accepted final artifacts have been copied into `results/perspective_M/idea_N/theory` and `results/perspective_M/idea_N/theory/latex_template/` contains `main.tex`, `arxiv.sty`, `ims.bst`, `reference.bib`, `1_intro.tex`, `2_preliminary.tex`, `3_main.tex`, `4_proof_sketch.tex`, and `5_appendix.tex`.

Do not treat the branch as accepted until that accepted-result copy verification passes.
