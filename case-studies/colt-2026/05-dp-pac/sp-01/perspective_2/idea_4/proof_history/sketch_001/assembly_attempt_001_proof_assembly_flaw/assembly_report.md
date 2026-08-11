# Assembly Report

## Status

PARTIAL_BLOCKED

## Attempted Claim

Conditioned on the four primitive assumptions in `1_intro.tex`, assemble the
quotient-first VC-sensitive, old-Lyu, and finite-class private PAC learners,
including measurable raw pullbacks, all-input `(epsilon, delta)` privacy,
realizable iid population error at most `alpha` with failure probability at
most `beta`, and the stated minimum/frontier rate bounds. The finite-or-
countable evaluation quotient assumption is part of the theorem scope; no
unrestricted claim is made outside it.

## Inputs

- Live `setting.md`, accepted `proof_sketch.md` and `proof_sketch_review.md`.
- All sixteen live proof-step/review pairs for `step_001` through `step_016`;
  every current review is `ACCEPTED`.
- The public bundle consists of the nine requested files under
  `latex_template/` plus this report. No source proof, review, tracker, or
  result artifact was modified.

## Coverage

Each of the sixteen appendix subsections was regenerated directly from its
live `Cited Result Applications`, `Local Derivation`, and `Target-Step
Assembly` sections. The generated appendix is 11,470 lines; the live proof
sources contain 15,265 lines in total. Workflow metadata and audit wrappers
were removed while mathematical statements, displayed derivations, boundary
cases, cited-result instantiations, and target implications were retained.

Structural checks passed: 131 unique labels, 1,077 internal references with
no missing labels, balanced theorem environments/braces/display delimiters,
97 citation uses backed by the four bibliography entries, no control bytes or
non-ASCII bytes, and no public claim/hypothesis/invariant environments or
workflow-only artifact references.

## Verification

The exact conditional theorem and rate-specialization bridge are present in
`3_main.tex` and the final appendix proposition. The appendix ends with a
main-theorem proof and keeps the `d=0`, finite/infinite-class, boundary, and
fixed-versus-scheduled-`delta` cases explicit. The generated support files are
the copied `arxiv.sty` and `ims.bst` plus the populated `reference.bib`.

## Blockers

1. A local Tectonic build could not reach TeX parsing. The command used the
   cached LaTeX format with `--only-cached` and output directory
   `<TEMP_ROOT>/idea4-tectonic.E8mPCa`; the complete log is
   `<TEMP_ROOT>/idea4-tectonic.E8mPCa/tectonic.log`. Tectonic 0.16.9 exits
   with status 101 in its request thread at
   `system-configuration-0.6.1/src/dynamic_store.rs:154` (`Attempted to
   create a NULL object`), followed by the reqwest event-loop panic. No TeX
   diagnostic was produced, so PDF compilation and warning inspection remain
   unverified. Smallest repair target: `/proof-assembly` in an environment
   with a functioning TeX engine (then rerun the same structural checks).

## Notes

The temporary converter and checker used during assembly are private working
files and are removed before handoff; they are not part of the requested
bundle.
