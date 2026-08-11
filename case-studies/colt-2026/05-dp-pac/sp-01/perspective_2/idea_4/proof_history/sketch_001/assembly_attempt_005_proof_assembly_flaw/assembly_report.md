# Assembly Report

## Assembly Identity

- Sketch attempt: `1`.
- Assembly attempt: `5`.
- Retry mode: `repair_assembly`.
- Repair trigger: `proof_review.md`, SHA-256
  `45ded25b90e130a3e958024d85952f0a4431dc4e6a25054dd10374eb3dd5acf0`.

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

Binding SHA-256 values:

- `setting.md`: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- `proof_sketch.md`: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- `proof_sketch_review.md`: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- `global_proof.md`: `bbb47a7e0753c47fc073d71b9e8e5b0a74d40d79aad7e22c1e8d7bf44c687784`
- `global_proof_review.md`: `490e6b89ecd229a41dac2b24c82bb277cbacfd66acff00f4f5c82fc58ac7cf09`

## Coverage

All sixteen accepted step subsections were regenerated from their live
cited-result applications, local derivations, and target assemblies. The
appendix contains 10,061 lines, 111 balanced `proof` environments, and 17
subsections: one for each accepted step and a final main-theorem proof.
The live proof sources contain 15,265 lines in total. Every terminal target
composition is attached to a named theorem-style result or its proof; no
proof block begins immediately after another `end{proof}`.

The current public line inventory is:

- `1_intro.tex`: 141
- `2_preliminary.tex`: 64
- `3_main.tex`: 75
- `4_proof_sketch.tex`: 39
- `5_appendix.tex`: 10,061
- `main.tex`: 29
- `arxiv.sty`: 348
- `ims.bst`: 1,567
- `reference.bib`: 69
- Total: 12,393 lines.

Structural checks passed: 134 unique labels with no duplicates, 888
internal reference occurrences over 115 distinct targets with no missing
labels, 110 appendix theorem-style units (39 lemmas and 71 propositions),
and balanced theorem/proof environments. All appendix theorem-style labels
are consumed; the only unconsumed theorem-style label is the terminal public
`cor:frontier`. The 62 citation commands use two BibTeX-backed keys with no
missing entry. The public-TeX hygiene scan found no workflow-only artifact
paths, forbidden audit scaffolding, malformed reference fragments, public
claim/hypothesis/invariant environments, control bytes, or non-ASCII bytes.

## Repair Summary

Attempt 5 repaired the public dependency graph without changing a proof
claim. The standalone audit/source inventories in Steps 001, 008, 009, 011,
012, 013, 014, and 016 were removed after their mathematical obligations
were integrated into the named statements and proofs that consume them.
Sparse Sample and AboveThreshold calibration now appears in the Step 001
calibration proof; Step 010 defines
`E_core = E_good intersect E_mech` before every Step 012 consumer; and the
Step 010, Step 013, and Step 015 interface propositions are narrow packaging
bridges with explicit named producers and downstream references. The old-arm
and frontier terminal compositions now use direct paper-facing prose, and
the `q_*=6` domination chain is grammatical and unchanged mathematically.
No mathematical source artifact or accepted input was changed.

## Verification

The exact conditional theorem and rate-specialization bridge are present in
`3_main.tex` and the final appendix proposition. The cached Tectonic build
completed successfully (exit code 0) with TeX, BibTeX, reruns, and PDF
generation:

`TECTONIC_CACHE_DIR=<TEMP_ROOT>/tectonic-cache-final3 <TECTONIC_BIN> --bundle <TEMP_ROOT>/tectonic-bundle.6ZSA5R --only-cached --outdir <TEMP_ROOT>/idea4-tectonic-attempt5-check perspective_2/idea_4/latex_template/main.tex`

The resulting PDF is
`<TEMP_ROOT>/idea4-tectonic-attempt5-check/main.pdf` (666,335 bytes, about
651 KiB). Only overfull-box warnings remain; there are no TeX or BibTeX
errors and no unresolved reference or citation diagnostics.

Current SHA-256 values for all public bundle files:

- `latex_template/1_intro.tex`: `6ab743e5538b31826149bd5dd2f92c2ed1f9a9f2365c58c9ed10c548fe332097`
- `latex_template/2_preliminary.tex`: `4d345de69113b4bf6ed471309bcba1342e41f14c2b4baddc10209105de7291e0`
- `latex_template/3_main.tex`: `0e3cb41543426d9ea15fa6ebcfb24ac75d7634a2ca8c292758ea4e5dbbce445b`
- `latex_template/4_proof_sketch.tex`: `075f0c8aace98eeef2031deff281f640463ce8ed139d886b5916844bcd121348`
- `latex_template/5_appendix.tex`: `cddd252375f1d6c1881f351bec86de1e3942e6ceb86e9a37ad84f4cce82e0208`
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
