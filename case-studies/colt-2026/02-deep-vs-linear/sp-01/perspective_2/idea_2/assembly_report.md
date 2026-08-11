# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under `assump:source-regime`, `assump:universal-sgd-success`, and the
separately explicit conditional premise `assump:tie-resolved-confident-map`,
every setup satisfies
\[
\operatorname{dc}(\mathcal H)\le 7TSd.
\]
The constant \(7\) is numerical and independent of
\(n,\mathcal H,L,(n_i)_{i=0}^L,S,\eta,T,\varepsilon,d\), and
\(\mathcal P\). If a separate result supplies a fully explicit polynomial
bound \(d\le p(S,T)\) with no hidden \(n\)- or \(\eta\)-dependence, the same
result specializes to
\[
\operatorname{dc}(\mathcal H)\le7TSp(S,T).
\]
The bundle does not assert that universal SGD success implies the confident-map
premise or the additional polynomial bound.

## Repair Scope

This is assembly attempt 2, routed by the aggregate `PROOF_ASSEMBLY_FLAW`.
The only repaired item is the transcription of the exact update map in
`latex_template/5_appendix.tex`: the malformed bare `eta` was changed to the
declared LaTeX step-size `\eta`. No setting, sketch, step proof, review,
tracker, worker log, specialized review, aggregate review, or result artifact
was modified.

## Coverage And Synchronization

The current setting, accepted proof sketch and sketch review, and all five
accepted proof/review pairs were used as binding inputs. The appendix retains
all 17 accepted source local units and all five target-step assemblies in the
dependency order `step_001` through `step_005`. Every source theorem label is
present in the appendix; the public bundle has 49 unique labels and all 127
internal references resolve. A direct comparison with the consumed attempt-1
bundle found exactly the one intended update-token difference, and the repaired
line now matches the `step_002` source body exactly.

The bundle retains the required support files and contains no malformed bare
command fragments, unresolved placeholders, workflow-only proof language,
duplicate labels, external citation commands, or visible empty bibliography.
The exact tie-resolved theorem, boundary branches, VC ceiling, counting bound,
common tuple, direct-sum score identity, and conditional polynomial bridge are
unchanged and remain self-contained.

## Verification

`tectonic --keep-logs main.tex` was run from inside `latex_template` and
completed successfully, producing a fresh `main.pdf` and `main.log`. The fresh
log contains no LaTeX errors, undefined references, or undefined citations.
It reports only the existing nonblocking underfull-box and font-shape warnings.

## Blockers

None.
