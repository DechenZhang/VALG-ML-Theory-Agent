# Reproducibility And Auditability

The repository is designed to make a run inspectable and rerunnable. It does
not promise bit-for-bit reproduction of model-generated research.

## What A Published Run Preserves

The COLT 2026 case studies retain the available research input and controller
trace, including:

- the source open-problem paper and subproblem `RESEARCH_BRIEF.md`;
- literature, perspective, idea, setting, and proof-stage artifacts;
- theory and proof trackers, workflow feedback, and worker provenance;
- overwritten consumed artifacts under branch-local `proof_history/`;
- the accepted `setting.md`, LaTeX bundle, aggregate review, and compiled paper;
- independent evaluation material and problem-level status labels;
- `run-metadata.yaml` and `MANIFEST.sha256` for the published snapshot.

The case-study additions are publication metadata. They are separate from the
controller's normal run outputs described in [Run Layout](run-layout.md).

## Rerun Procedure

1. Install the exact repository revision's complete `skills/` payload.
2. Create an empty run root.
3. Copy the selected case study's `RESEARCH_BRIEF.md` into that root.
4. Read `run-metadata.yaml` for recorded controls and any values marked
   `unknown` in the historical trace.
5. Open Codex in the run root and invoke:

   ```text
   $ml-theory-research-agent with RUN_MODE=interactive
   ```

6. At checkpoints, compare the new artifact to the source constraints rather
   than attempting to force textual equality with the historical artifact.
7. Independently compile and audit any accepted proof bundle.

When a historical model, search result, or checkpoint choice was not recorded,
the metadata says `unknown`; the repository does not infer a value after the
fact.

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
independent reruns. Hashes verify that a published snapshot has not changed;
they do not predict a future run.

## Snapshot Verification

Each published subproblem includes `MANIFEST.sha256`. From that subproblem
directory, use the platform's SHA-256 checker. On macOS:

```bash
shasum -a 256 -c MANIFEST.sha256
```

The manifest covers every tracked or nonignored file in its run directory,
except the manifest itself. Ignored OS, editor, controller-scratch, and LaTeX
build residue is deliberately excluded. A checksum or inventory mismatch means
the working copy differs from the recorded corpus and should be resolved before
treating it as the evaluated version.

## Sanitized Prompt Traces

Historical controller prompts are kept under documented `audit/` locations
when available. Publication replaces machine-specific absolute path prefixes
with:

```text
<WORKSPACE_ROOT>
<CODEX_SKILLS_ROOT>
<TEMP_ROOT>
<TECTONIC_BIN>
```

`<WORKSPACE_ROOT>` denotes the sanitized historical workspace prefix; a prompt
may append the original run hierarchy beneath it. `<CODEX_SKILLS_ROOT>` denotes
the sanitized root of the installed skill bundle. `<TEMP_ROOT>` replaces
ephemeral compilation and source-cache directories, and `<TECTONIC_BIN>`
replaces a host-specific Tectonic executable path. These substitutions remove
local filesystem identity without changing the research instruction or audit
claim. They are deterministic documentation edits, not evidence that the
original runtime environment can be reconstructed exactly. Embedded runtime
digests identify the pre-publication artifacts unless stated otherwise;
`MANIFEST.sha256` is authoritative for the sanitized published snapshot.
Prompt traces can also contain runtime-specific model hints; treat those as
historical context unless the current environment supports the same controls.

## Verification Boundaries

A controller-accepted bundle has passed the workflow's internal contracts and
review ensemble. It has not thereby received peer review. Before citing or
building on a candidate:

1. check every cited theorem against its primary source;
2. verify that assumptions and mathematical objects map exactly;
3. audit theorem-critical derivations and boundary cases independently;
4. compile the LaTeX bundle from a clean temporary directory;
5. compare the theorem to the original open-problem scope;
6. record whether the result is full, restricted, conditional, partial, or
   unresolved.

The COLT corpus uses this distinction explicitly: it contains 22
workflow-accepted candidates, but only Online Open Question 2 currently has
independently evaluated verified full solutions. Other labels remain
provisional at the strength stated in the case-study index.

## Citation And Archival Use

Use [`CITATION.cff`](../CITATION.cff) for the repository and cite the relevant
original open-problem paper separately. For an archival research record, retain
the repository revision, run metadata, manifest, source brief, full trace,
accepted bundle, compiled output, and independent audit together.
