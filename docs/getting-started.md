# Getting Started

This guide installs the complete skill bundle, starts a first run, and explains
where to inspect the result. The public entry point is always
`ml-theory-research-agent`; the other skills are controller-managed stages.

## Prerequisites

- Codex with project or personal skills enabled and support for subagents.
- Git for cloning the repository.
- Network access when the literature stages need external sources.
- A TeX distribution only if you want to compile an assembled proof bundle.

The workflow can produce useful diagnostics without TeX, but final assembly
checks are strongest when the generated LaTeX can be compiled.

## Project-Local Installation

Project-local installation makes the exact skill version part of a research
project's working context. It is the recommended setup for a reproducible run.

```bash
git clone https://github.com/DechenZhang/ml-theory-research-agent.git
mkdir -p /path/to/research-project/.agents/skills
cp -R ml-theory-research-agent/skills/. /path/to/research-project/.agents/skills/
```

Copy the entire contents of `skills/`, including `_shared/`. The controller and
stage skills resolve templates, checklists, and directory conventions relative
to that shared directory.

The resulting installation should begin like this:

```text
/path/to/research-project/.agents/skills/
|-- ml-theory-research-agent/
|-- research-lit/
|-- perspective-select/
|-- ...
`-- _shared/
```

## Personal Installation

To make the bundle available across projects, copy it into the personal Codex
skill directory instead:

```bash
mkdir -p ~/.codex/skills
cp -R ml-theory-research-agent/skills/. ~/.codex/skills/
```

Project-local skills are easier to pin and audit. When both locations contain a
copy, verify which one the current Codex environment loads before starting a
long run.

## Prepare A Run

Create a dedicated run root. The controller writes trackers, surveys, branch
directories, and results into the current directory.

```bash
mkdir -p /path/to/research-project/runs/clipped-sgd
cd /path/to/research-project/runs/clipped-sgd
```

You can begin with only a prompt. For a stable, inspectable target, also create
`RESEARCH_BRIEF.md` in the run root. The brief should state the research
question, setting, desired result, important constraints, known obstacles, and
what would count as progress. It should not contain secrets or generated
tracker state.

The [`examples/minimal/RESEARCH_BRIEF.md`](../examples/minimal/RESEARCH_BRIEF.md)
file is a reusable starting point.

## Start The Controller

Open Codex in the run root and send a request such as:

```text
$ml-theory-research-agent "last-iterate convergence of clipped SGD under a Polyak-Lojasiewicz condition"
```

If `RESEARCH_BRIEF.md` exists, it refines or overrides the prompt where the two
overlap. The merged direction controls literature search, perspective
selection, and idea generation.

### Interactive mode

`RUN_MODE=interactive` is the default. At each Workflow 1 checkpoint, inspect
the artifact and answer with one of the controller's supported actions:

- `approve` or `proceed` to continue;
- `edit` with concrete requested changes;
- `re-generate` or `re-search` with feedback for a fresh producer attempt.

Checkpoint feedback is persisted by the controller. Do not manually approve a
candidate whose theorem target silently weakens the brief.

### Autopilot mode

Include `RUN_MODE=autopilot` when you want checkpoint approval to proceed by
default:

```text
$ml-theory-research-agent "last-iterate convergence of clipped SGD under a Polyak-Lojasiewicz condition" with RUN_MODE=autopilot
```

Autopilot changes checkpoint behavior only. It does not remove artifact gates,
source-direction fidelity, worker-provenance checks, retry budgets, specialized
proof reviews, or accepted-copy verification.

## Inspect A Run

Start with these root artifacts:

- `LITERATURE_SURVEY.md` maps related results, techniques, and gaps.
- `Perspective_Selection.md` defines the approved research branches.
- `IDEA_REPORT.md` summarizes current viable, non-duplicate ideas.
- `theory_tracker.md` records branch outcomes and accepted candidates.
- `worker_log.md` records stage workers and handoffs.

Then inspect `perspective_M/idea_N/` for the idea, formal setting, proof
artifacts, reviews, and `proof_tracker.md`. An accepted branch is copied to:

```text
results/perspective_M/idea_N/theory/
```

That public bundle contains `setting.md`, `proof_review.md`, and
`latex_template/`. The full branch directory remains the audit trace. See
[Run Layout](run-layout.md) for binding and archival artifact rules.

## Common Problems

**A stage cannot find `_shared/`.** Reinstall the complete contents of
`skills/`; copying only the controller directory is insufficient.

**No literature sources can be checked.** Confirm network access. Treat any
uncorroborated citations as provisional and verify them against primary
sources before relying on the proof.

**A generated PDF is missing.** The accepted output contract is a LaTeX source
bundle, not necessarily a compiled PDF. Install TeX and compile `main.tex` in a
temporary build directory.

**Windows reports a path-length error.** The preserved proof histories include
relative paths up to 235 characters. Enable Git long-path support and clone the
repository near the drive root when inspecting the full case-study corpus.

**A run keeps revising one branch.** Read the most recent review and tracker
row. Attempt limits are total producer attempts, and exhaustion deliberately
escalates from a local repair to a sketch, idea, or branch failure.
