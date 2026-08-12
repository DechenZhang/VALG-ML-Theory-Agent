# COLT 2026 Case Studies

This corpus records applications of `ml-theory-research-agent` to **5 COLT 2026 problems**, decomposed into **9 subproblems**, with **22 workflow-accepted candidate bundles**.

**Execution configuration.** All nine preserved case-study runs used `gpt-5.6-sol` with maximum reasoning effort.

Workflow acceptance means that a branch passed the controller's internal artifact and review gates. It does **not** mean that the original open problem was solved. The separate [independent evaluation](evaluation/RESULTS_EVALUATION_REFINED.md) reads the source paper and public proof artifacts under a common [rubric](evaluation/EVALUATION_RUBRICS.md). Only Online Open Question 2 currently has independently evaluated verified full solutions: Perspective 1 / idea 1 and Perspective 2 / idea 1.

## Corpus index

`Pk/Il` denotes Perspective `k` / idea `l`.

| Problem and run | Candidates | Independent conclusion | Best-ranked candidate | Run evidence |
| --- | ---: | --- | --- | --- |
| [ALS Open Problem 2](01-als-overparameterization/sp-01/) | 1 | Restricted-subclass result | [P1/I7 PDF](01-als-overparameterization/sp-01/results/perspective_1/idea_7/paper.pdf) / [bundle](01-als-overparameterization/sp-01/results/perspective_1/idea_7/theory/) | [brief](01-als-overparameterization/sp-01/RESEARCH_BRIEF.md) / [evaluation](evaluation/RESULTS_EVALUATION_REFINED.md) |
| [ALS Open Problem 3](01-als-overparameterization/sp-02/) | 3 | Conditional and protocol-restricted results | [P2/I2 PDF](01-als-overparameterization/sp-02/results/perspective_2/idea_2/paper.pdf) / [bundle](01-als-overparameterization/sp-02/results/perspective_2/idea_2/theory/) | [brief](01-als-overparameterization/sp-02/RESEARCH_BRIEF.md) / [evaluation](evaluation/RESULTS_EVALUATION_REFINED.md) |
| [Deep Open Question 1](02-deep-vs-linear/sp-01/) | 3 | Specialized-regime and conditional results | [P3/I2 PDF](02-deep-vs-linear/sp-01/results/perspective_3/idea_2/paper.pdf) / [bundle](02-deep-vs-linear/sp-01/results/perspective_3/idea_2/theory/) | [brief](02-deep-vs-linear/sp-01/RESEARCH_BRIEF.md) / [evaluation](evaluation/RESULTS_EVALUATION_REFINED.md) |
| [Deep Open Question 2](02-deep-vs-linear/sp-02/) | 3 | Conditional reductions | [P2/I2 PDF](02-deep-vs-linear/sp-02/results/perspective_2/idea_2/paper.pdf) / [bundle](02-deep-vs-linear/sp-02/results/perspective_2/idea_2/theory/) | [brief](02-deep-vs-linear/sp-02/RESEARCH_BRIEF.md) / [evaluation](evaluation/RESULTS_EVALUATION_REFINED.md) |
| [Online Open Question 1](03-piecewise-lipschitz/sp-01/) | 2 | Partial sufficient conditions | [P2/I1 PDF](03-piecewise-lipschitz/sp-01/results/perspective_2/idea_1/paper.pdf) / [bundle](03-piecewise-lipschitz/sp-01/results/perspective_2/idea_1/theory/) | [brief](03-piecewise-lipschitz/sp-01/RESEARCH_BRIEF.md) / [evaluation](evaluation/RESULTS_EVALUATION_REFINED.md) |
| [Online Open Question 2](03-piecewise-lipschitz/sp-02/) | 3 | Two verified full solutions; one partial result | [P1/I1 PDF](03-piecewise-lipschitz/sp-02/results/perspective_1/idea_1/paper.pdf) / [bundle](03-piecewise-lipschitz/sp-02/results/perspective_1/idea_1/theory/) | [brief](03-piecewise-lipschitz/sp-02/RESEARCH_BRIEF.md) / [evaluation](evaluation/RESULTS_EVALUATION_REFINED.md) |
| [One-bit Open Problem 1](04-one-bit-mean/sp-01/) | 2 | Exact-target constructions pending primary-source verification | [P3/I1 PDF](04-one-bit-mean/sp-01/results/perspective_3/idea_1/paper.pdf) / [bundle](04-one-bit-mean/sp-01/results/perspective_3/idea_1/theory/) | [brief](04-one-bit-mean/sp-01/RESEARCH_BRIEF.md) / [evaluation](evaluation/RESULTS_EVALUATION_REFINED.md) |
| [DP Open Question 1](05-dp-pac/sp-01/) | 3 | Partial, dependency-limited, provisional results | [P1/I3 PDF](05-dp-pac/sp-01/results/perspective_1/idea_3/paper.pdf) / [bundle](05-dp-pac/sp-01/results/perspective_1/idea_3/theory/) | [brief](05-dp-pac/sp-01/RESEARCH_BRIEF.md) / [evaluation](evaluation/RESULTS_EVALUATION_REFINED.md) |
| [DP Open Question 2](05-dp-pac/sp-02/) | 2 | Partial, dependency-limited, provisional results | [P2/I2 PDF](05-dp-pac/sp-02/results/perspective_2/idea_2/paper.pdf) / [bundle](05-dp-pac/sp-02/results/perspective_2/idea_2/theory/) | [brief](05-dp-pac/sp-02/RESEARCH_BRIEF.md) / [evaluation](evaluation/RESULTS_EVALUATION_REFINED.md) |

## How to read a run

Each `sp-*` directory is a preserved workflow run root:

- `RESEARCH_BRIEF.md` states the source-aligned target and evaluation constraints.
- `LITERATURE_SURVEY.md`, `Perspective_Selection.md`, and `IDEA_REPORT.md` record idea discovery.
- `perspective_*/idea_*` contains branch-local formalization, proof stages, reviews, provenance, and history.
- `results/perspective_*/idea_*/theory/` is the controller-copied accepted bundle.

These historical runs are **rerunnable, not bit-for-bit reproducible**. This release normalizes machine-specific paths and removes OS and TeX build residue while preserving mathematical, provenance, review, and proof-history artifacts.
