# Minimal Example

This example shows the smallest useful run setup: one dedicated directory and
one stable `RESEARCH_BRIEF.md`.

## Use It

Install the repository's complete `skills/` bundle as described in
[Getting Started](../../docs/getting-started.md), then prepare a run root:

```bash
mkdir -p /path/to/research-project/runs/clipped-sgd
cp RESEARCH_BRIEF.md /path/to/research-project/runs/clipped-sgd/
cd /path/to/research-project/runs/clipped-sgd
```

Open Codex there and invoke the public controller:

```text
$ml-theory-research-agent "last-iterate convergence of clipped SGD under a Polyak-Lojasiewicz condition"
```

The brief is intentionally a research target, not a claimed theorem. The
workflow should preserve its distinctions between a full result, a restricted
special case, and a conditional reduction. Review the literature survey and
formal goal carefully before approving them.

The controller will write its root artifacts and `perspective_M/idea_N/`
branches beside the brief. Accepted branches, if any, appear under `results/`.
