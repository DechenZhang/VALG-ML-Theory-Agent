# Reproducibility And Auditability

The repository is designed to make a run inspectable and rerunnable. It does
not promise bit-for-bit reproduction of model-generated research.

## What A Published Run Preserves

The COLT 2026 case studies retain the available research input and substantive
workflow record, including:

- the source open-problem paper and subproblem `RESEARCH_BRIEF.md`;
- literature, perspective, idea, setting, and proof-stage artifacts;
- theory and proof trackers, workflow feedback, and worker provenance;
- overwritten consumed artifacts under branch-local `proof_history/`;
- the accepted `setting.md`, LaTeX bundle, aggregate review, and compiled paper;
- independent evaluation material and problem-level status labels.

Repository-level source indexes and independent evaluations are kept alongside
the preserved run roots. They are separate from the controller's normal run
outputs described in [Run Layout](run-layout.md).

## Rerun Procedure

1. Install the exact repository revision's complete `skills/` payload.
2. Create an empty run root.
3. Copy the selected case study's `RESEARCH_BRIEF.md` into that root.
4. Inspect the preserved `worker_log.md`, trackers, and `RUN_CONFIG.md` when
   present for controls recorded by the original run.
5. Open Codex in the run root and invoke:

   ```text
   $ml-theory-research-agent "rerun the research question and target stated in RESEARCH_BRIEF.md" with RUN_MODE=interactive
   ```

6. At checkpoints, compare the new artifact to the source constraints rather
   than attempting to force textual equality with the historical artifact.
7. Independently compile and audit any accepted proof bundle.

When a historical model, search result, checkpoint choice, or other control is
not present in the published artifacts, treat it as unknown; the repository
does not infer a value after the fact.

## Why Outputs Can Differ

Even with the same brief and skill revision, a rerun can change because of:

- model and inference-service updates;
- search availability, ranking, and source changes;
- subagent scheduling and handoffs;
- interactive checkpoint decisions;
- stochastic candidate generation and adversarial review;
- bug fixes or policy changes in the Codex runtime.

For this reason, compare theorem identity, assumptions, citations, proof
obligations, review outcomes, and accepted status rather than file hashes across
independent reruns. The Git revision identifies the published repository
snapshot. Hashes embedded in original worker or proof artifacts continue to
identify specific stage handoffs where recorded, but they do not predict a
future run.

Worker logs may retain paths and digests for omitted runtime scratch files such
as `.controller_tmp/`. These entries document historical dispatches, but their
referenced scratch files are not part of the published corpus.

## Citation And Archival Use

Use [`CITATION.bib`](../CITATION.bib) for the repository and cite the relevant
original open-problem paper separately. For an archival research record, retain
the repository revision, source brief, preserved workflow record, accepted
bundle, compiled output, and independent evaluation together.
