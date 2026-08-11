# Assembly Report

## Assembly Identity

- Sketch attempt: `1`.
- Assembly attempt: `4`.
- Retry mode: `repair_assembly`.
- Repair trigger: `proof_review.md`, SHA-256
  `cb2b7b4095bfd12be7170fa42de0b545bd279b5778af4b97da60fa5af9ea55c`.

## Status

COMPLETE

## Attempted Claim

Under the four primitive assumptions in `1_intro.tex`, the bundle assembles
the totalized quotient-first VC-sensitive, old-Lyu, and finite-class private
PAC learners on the finite-or-countable evaluation quotient. Each learner
has a measurable raw pullback, all-input `(epsilon, delta)` privacy, and the
realizable iid population-error guarantee `err <= alpha` with failure
probability at most `beta`. The certified bounds are the VC-sensitive,
old-Lyu, and finite-class rates stated in `3_main.tex`, and choosing the
least certified arm gives the stated minimum/frontier bound. The claim makes
no unrestricted assertion outside the finite-or-countable quotient scope.

## Inputs

- Live `setting.md`, accepted `proof_sketch.md`, and accepted
  `proof_sketch_review.md`.
- All sixteen live proof-step/review pairs for `step_001` through `step_016`;
  every current review is `ACCEPTED`.
- The public bundle is the nine files under `latex_template/` plus this
  report. No setting, sketch, proof-step, review, tracker, log, accepted
  result, or archived-attempt artifact was modified.

## Coverage

All sixteen accepted step subsections were regenerated from their live
cited-result applications, local derivations, and target assemblies. The
appendix contains 10,710 lines, 110 balanced `proof` environments, and 17
subsections: one for each accepted step and a final main-theorem proof.
The live proof sources contain 15,265 lines in total. Every terminal target
composition is attached to a named theorem-style result or its proof; no
proof block begins immediately after another `end{proof}`.

The current public line inventory is:

- `1_intro.tex`: 141
- `2_preliminary.tex`: 64
- `3_main.tex`: 75
- `4_proof_sketch.tex`: 39
- `5_appendix.tex`: 10,710
- `main.tex`: 29
- `arxiv.sty`: 348
- `ims.bst`: 1,567
- `reference.bib`: 69
- Total: 13,042 lines.

Structural checks passed: 133 unique labels with no duplicates, 863
internal `ref` occurrences over 113 distinct targets with no missing labels,
balanced theorem-style environments, and 65 appendix citation uses (68
citation commands across all TeX files) backed by four bibliography keys
with no missing entries. The public-TeX hygiene scan found no workflow-only
artifact paths, forbidden audit scaffolding, malformed reference fragments,
public claim/hypothesis/invariant environments, control bytes, or non-ASCII
bytes.

## Repair Summary

Attempt 4 attached the sixteen terminal target compositions to named
paper-facing results and synchronized the public and appendix constants:
`K_{\mathrm V}=\max\{1,4K_{\rm fp}\}`, `K_{\mathrm O}=4C_{11}`, and
`K_*=\max\{8,K_{\mathrm O},K_{\mathrm V}\}`, while preserving the
`q_*=6` frontier domination chain. The mechanism source/dependency
inventory was integrated as `prop:step-010-interfaces`, and the old-arm
inventory as `prop:step-015-interfaces`. The proof-local calibration
dictionary in `2_preliminary.tex` was reduced to the named public interface,
and residual workflow scaffolding and wording inconsistencies were removed.
No mathematical source artifact or accepted input was changed.

## Verification

The exact conditional theorem and rate-specialization bridge are present in
`3_main.tex` and the final appendix proposition. The cached Tectonic build
completed successfully (exit code 0) with TeX, BibTeX, reruns, and PDF
generation:

`TECTONIC_CACHE_DIR=<TEMP_ROOT>/tectonic-cache-final3 <TECTONIC_BIN> --bundle <TEMP_ROOT>/tectonic-bundle.6ZSA5R --only-cached --outdir <TEMP_ROOT>/idea4-tectonic-final3-check latex_template/main.tex`

The resulting PDF is
`<TEMP_ROOT>/idea4-tectonic-final3-check/main.pdf` (707,197 bytes, about
691 KiB). Only overfull-box warnings remain; there are no TeX or BibTeX
errors and no unresolved reference or citation diagnostics.

Current SHA-256 values for all public bundle files:

- `latex_template/1_intro.tex`: `6ab743e5538b31826149bd5dd2f92c2ed1f9a9f2365c58c9ed10c548fe332097`
- `latex_template/2_preliminary.tex`: `4d345de69113b4bf6ed471309bcba1342e41f14c2b4baddc10209105de7291e0`
- `latex_template/3_main.tex`: `0e3cb41543426d9ea15fa6ebcfb24ac75d7634a2ca8c292758ea4e5dbbce445b`
- `latex_template/4_proof_sketch.tex`: `075f0c8aace98eeef2031deff281f640463ce8ed139d886b5916844bcd121348`
- `latex_template/5_appendix.tex`: `c9d6bb37fda11c5c2dc2669651fef27b8f720e27275ec39921d19f26de03742b`
- `latex_template/main.tex`: `668299847c9cf0286280a1edaf1653c4595575e4e775217bb0c0e5376d0a63d9`
- `latex_template/arxiv.sty`: `2c2939eefaa8e2feb53fae9bd337bbc9680c2553e2d0acf9238f2a008eb7e35d`
- `latex_template/ims.bst`: `c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f`
- `latex_template/reference.bib`: `c9ee07d6afe48b35af7b517906a2b23d7f8b39c6915b7c0135e1940647a9d872`

## Blockers

None

## Notes

Temporary converters, validation bundles, cached intermediates, and
generated PDFs under `/private/tmp` are private working files and are not
part of the requested bundle.
