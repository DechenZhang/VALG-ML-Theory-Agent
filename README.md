# ML Theory Research Agent

<div align="center">

**An auditable Codex skill workflow for developing and stress-testing machine-learning theory results.**

![Platform: Codex](https://img.shields.io/badge/platform-Codex-111827)
![Skills: 17](https://img.shields.io/badge/skills-17-2563eb)
![Case studies: 22 candidates](https://img.shields.io/badge/case%20studies-22%20candidates-0f766e)
[![License: MIT](https://img.shields.io/badge/license-MIT-4b5563)](LICENSE)

</div>

The repository contains a reusable 17-skill bundle and a traceable corpus of
COLT 2026 open-problem runs. It separates idea discovery from proof production,
routes failures to the smallest repair stage, and retains the artifacts needed
to inspect how each result was produced.

> [!IMPORTANT]
> A workflow-accepted candidate is not automatically a correct or publishable
> theorem. Every claim, citation, and proof still requires qualified independent
> review. See [Research status](#research-status).

![ML Theory Research Agent workflow](assets/workflow.png)

## Quick Start

### 1. Install the skills in a project

Clone this repository, then copy the complete skill bundle into the project in
which you want to run the research workflow:

```bash
git clone https://github.com/DechenZhang/ml-theory-research-agent.git
mkdir -p /path/to/research-project/.agents/skills
cp -R ml-theory-research-agent/skills/. /path/to/research-project/.agents/skills/
```

Keep `_shared/` beside the 17 skill directories. The skills resolve their
templates and artifact contracts through that shared directory.

### 2. Create a run root

```bash
mkdir -p /path/to/research-project/runs/my-problem
cd /path/to/research-project/runs/my-problem
```

Optionally add a `RESEARCH_BRIEF.md` to make the target, constraints, and
acceptance criteria persistent. A minimal example is available in
[`examples/minimal/`](examples/minimal/README.md).

### 3. Invoke the controller

Open Codex in the run root and send:

```text
$ml-theory-research-agent "your ML theory research direction"
```

`RUN_MODE=interactive` is the default and pauses at research checkpoints. To
approve checkpoints automatically while retaining all artifact and review
gates, include `RUN_MODE=autopilot` in the request.

Accepted branches are copied to:

```text
results/perspective_M/idea_N/theory/
```

For global installation under `~/.codex/skills/`, prerequisites, and a first
run walkthrough, see [Getting Started](docs/getting-started.md).

## What It Does

The public `ml-theory-research-agent` controller coordinates two connected
workflows:

| Workflow | Purpose | Main stages |
| --- | --- | --- |
| Idea discovery | Turn a research direction and literature gaps into distinct, formal theorem candidates. | Literature survey, perspective selection, idea generation, duplicate screening, formalization |
| Split proof | Test a formal goal through independently produced and reviewed proof artifacts. | Sketch and review, global diagnostic and review, dependency-ordered step proofs and reviews, assembly, four specialized reviews, aggregate decision |

Approved perspectives remain separate branches. Reviews can request a local
repair, a new sketch, or a new idea; attempt budgets stop an unsuccessful branch
from retrying indefinitely. The controller records worker provenance and copies
only a narrow accepted-result bundle after all final gates pass.

Read [Workflow](docs/workflow.md) for the stage sequence and [Skills](docs/skills.md)
for the complete 17-skill catalog.

## Auditable By Design

- **Artifact contracts:** producers and reviewers write structured files with
  controlled statuses, claims, assumptions, dependencies, and repair targets.
- **Independent gates:** proof sketches, theorem-level diagnostics, individual
  proof steps, citations, rigor, structure, and adversarial failure modes receive
  explicit reviews.
- **Smallest-target retries:** a failed local proof is repaired locally when
  possible; theorem-contract failures route back to idea generation.
- **Visible provenance:** trackers and worker logs record branch state, attempts,
  review outcomes, and the subagents responsible for each stage.
- **Preserved history:** consumed artifacts are archived before replacement, but
  historical copies never count as current proof evidence.

The generated file tree and binding/non-binding artifact rules are documented
in [Run Layout](docs/run-layout.md). Budgets and routing statuses are documented
in [Configuration](docs/configuration.md).

## COLT 2026 Case Studies

The repository includes nine subproblem runs derived from five COLT 2026 open
problems, spanning tensor decomposition, learning complexity, online
optimization, one-bit mean estimation, and differential privacy.

The corpus contains **22 workflow-accepted candidates**. That count means the
controller's internal artifact, provenance, assembly, and aggregate-review gates
passed; it does not mean 22 open problems were solved. Under the included
independent evaluation, **only Online Open Question 2 currently has verified
full solutions**. The other candidates are restricted, conditional, partial,
or pending stronger source and proof verification.

See the [COLT 2026 case-study index](case-studies/colt-2026/README.md) for
problem-level status, source briefs, candidate bundles, compiled papers, and
independent audits.

## Repository Layout

```text
.
|-- skills/                         # controller, 16 stage skills, shared contracts
|-- docs/                           # installation, workflow, controls, run semantics
|-- examples/minimal/               # small reusable research brief
|-- case-studies/colt-2026/         # source papers, nine run traces, evaluations
|-- assets/workflow.png
|-- scripts/                         # manifests and repository validation
|-- .github/workflows/               # continuous validation
|-- CITATION.cff
|-- CONTRIBUTING.md
|-- THIRD_PARTY_NOTICES.md
`-- LICENSE
```

The `skills/` directory is the reusable product. The case studies are retained
evidence of prior runs, not runtime dependencies.

## Inputs And Controls

The controller accepts a research direction as `$ARGUMENT`. An optional
run-root `RESEARCH_BRIEF.md` refines or overrides it. The main public control is
`RUN_MODE`:

| Mode | Behavior |
| --- | --- |
| `interactive` | Default. Pause at literature, perspective, idea, and setting checkpoints for approval or feedback. |
| `autopilot` | Approve checkpoints by default while preserving scope fidelity, budgets, artifact gates, and final verification. |

The default run explores up to three perspectives and uses bounded producer
attempts at the idea, sketch, global-proof, step-proof, and assembly levels.
Reviewers diagnose and route repairs; they do not consume producer budgets by
themselves. See [Configuration](docs/configuration.md) for exact defaults.

## Documentation

| Guide | Contents |
| --- | --- |
| [Getting Started](docs/getting-started.md) | Installation, first run, checkpoints, and output inspection |
| [Workflow](docs/workflow.md) | Idea-discovery and split-proof stage sequence |
| [Skills](docs/skills.md) | Responsibilities and outputs of all 17 skills |
| [Run Layout](docs/run-layout.md) | Artifact ownership, lifecycle, history, and accepted copies |
| [Configuration](docs/configuration.md) | Inputs, modes, attempt budgets, and retry routing |
| [Reproducibility](docs/reproducibility.md) | Rerun procedure, manifests, sanitization, and known limits |

## Research Status

This is a research prototype for structured theorem exploration. It does not
guarantee mathematical correctness, novelty, complete literature coverage, or
publication readiness. Literature stages may require network access; generated
citations must be checked against primary sources. LaTeX compilation requires a
local TeX installation.

Runs are intentionally auditable but are not expected to be bit-for-bit
reproducible: model versions, search results, runtime scheduling, and checkpoint
decisions can change. The supplied case studies record available inputs,
artifacts, evaluations, and checksums. See [Reproducibility](docs/reproducibility.md).

## Citation

Use the metadata in [`CITATION.cff`](CITATION.cff). GitHub also exposes it
through **Cite this repository** on the repository page.

## Contributing

Bug reports, workflow-contract improvements, and independently checked case
studies are welcome. Read [`CONTRIBUTING.md`](CONTRIBUTING.md) before submitting
changes, especially changes to artifact contracts or claimed result status.

## License

Repository-owned code and documentation are released under the
[`MIT License`](LICENSE). Source papers, bibliography styles, and other bundled
third-party materials retain their own terms; see
[`THIRD_PARTY_NOTICES.md`](THIRD_PARTY_NOTICES.md).
