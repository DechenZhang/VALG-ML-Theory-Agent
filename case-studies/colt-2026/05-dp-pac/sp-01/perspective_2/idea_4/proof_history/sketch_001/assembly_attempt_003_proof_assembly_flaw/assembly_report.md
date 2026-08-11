# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under the four primitive assumptions in `1_intro.tex`, the bundle assembles
the totalized quotient-first VC-sensitive, old-Lyu, and finite-class private
PAC learners on the finite-or-countable evaluation quotient.  Each learner
has a measurable raw pullback, all-input `(epsilon, delta)` privacy, and the
realizable iid population-error guarantee `err <= alpha` with failure
probability at most `beta`.  The certified bounds are the VC-sensitive,
old-Lyu, and finite-class rates stated in `3_main.tex`, and choosing the least
certified arm gives the stated minimum/frontier bound.  The claim makes no
unrestricted assertion outside the finite-or-countable quotient scope.

## Inputs

- Live `setting.md`, accepted `proof_sketch.md`, and accepted
  `proof_sketch_review.md`.
- All sixteen live proof-step/review pairs for `step_001` through `step_016`;
  every current review is `ACCEPTED`.
- The public bundle is the nine files under `latex_template/` plus this
  report.  No setting, sketch, proof-step, review, tracker, log, accepted
  result, or archived-attempt artifact was modified.

## Coverage

All sixteen appendix step subsections were regenerated from their live cited
result applications, local derivations, and target assemblies.  The current
appendix has 10,884 lines, 124 balanced `proof` environments, and 17
subsections including the final main-theorem proof.  The attempt-3 cleanup
removed residual workflow/audit scaffolding, source-inventory prose,
standalone source-label lines, and duplicated mechanical wording; theorem
titles and references were normalized, while the mathematical derivations,
boundary cases, cited-result instantiations, assumption checks, and target
implications were retained.

Structural checks passed: 131 unique labels with no duplicates, 862 internal
reference occurrences (112 distinct targets) with no missing labels, and 64
BibTeX-backed citation uses across four keys with no missing bibliography
entries.  The public-TeX hygiene scan found no workflow-only artifact paths,
forbidden audit phrases, malformed reference fragments, public
claim/hypothesis/invariant environments, control bytes, or non-ASCII bytes.

## Verification

The exact conditional theorem and rate-specialization bridge are present in
`3_main.tex` and the final appendix proposition.  The cached Tectonic build
completed successfully (exit code 0) with TeX, BibTeX, reruns, and PDF
generation:

`TECTONIC_CACHE_DIR=<TEMP_ROOT>/tectonic-cache-final3 <TECTONIC_BIN> --bundle <TEMP_ROOT>/tectonic-bundle.6ZSA5R --only-cached --outdir <TEMP_ROOT>/idea4-tectonic-final3-check latex_template/main.tex`

The resulting PDF is
`<TEMP_ROOT>/idea4-tectonic-final3-check/main.pdf` (713,689 bytes, about
697 KiB).  Only overfull-box warnings remain; there are no TeX errors or
unresolved-reference/citation diagnostics.

Current SHA-256 values for all public bundle files:

- `latex_template/1_intro.tex`: `50746dd1f1d9c690a60dfcfa154ee1f093d2bbf539dd4bc98d9eead84b82cca7`
- `latex_template/2_preliminary.tex`: `b3bf57b25ad6a915ff34e33b9832625044a99d72f5c0887a7db72f799148afc4`
- `latex_template/3_main.tex`: `269fa8c6d527b493f44244756c7d379a8d39164763b1024af6e56036b8bf622a`
- `latex_template/4_proof_sketch.tex`: `075f0c8aace98eeef2031deff281f640463ce8ed139d886b5916844bcd121348`
- `latex_template/5_appendix.tex`: `c07997b9b3ce4c1b0cb581387ec3fdb73657c034fe37c7081b79ca07576c4d3e`
- `latex_template/main.tex`: `668299847c9cf0286280a1edaf1653c4595575e4e775217bb0c0e5376d0a63d9`
- `latex_template/arxiv.sty`: `2c2939eefaa8e2feb53fae9bd337bbc9680c2553e2d0acf9238f2a008eb7e35d`
- `latex_template/ims.bst`: `c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f`
- `latex_template/reference.bib`: `c9ee07d6afe48b35af7b517906a2b23d7f8b39c6915b7c0135e1940647a9d872`

## Blockers

None

## Notes

Temporary converters, validation bundles, cached intermediates, and generated
PDFs under `/private/tmp` are private working files and are not part of the
requested bundle.
