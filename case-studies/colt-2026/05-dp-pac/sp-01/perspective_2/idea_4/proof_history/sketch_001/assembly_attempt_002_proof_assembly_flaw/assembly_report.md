# Assembly Report

## Status

COMPLETE

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
live cited-result applications, local derivations, and target assemblies. The
current appendix is 11,387 lines; the live proof sources contain 15,265 lines
in total. Workflow metadata and audit wrappers were removed while
mathematical statements, displayed derivations, boundary cases, cited-result
instantiations, and target implications were retained.

Structural checks passed: 131 unique labels, 926 internal references with no
missing labels, balanced theorem environments/braces/display delimiters, 87
BibTeX-backed citation uses, no control or non-ASCII bytes, and no public
claim/hypothesis/invariant environments or workflow-only artifact references.

## Verification

The exact conditional theorem and rate-specialization bridge are present in
`3_main.tex` and the final appendix proposition. The appendix ends with a
main-theorem proof and keeps the `d=0`, finite/infinite-class, boundary, and
fixed-versus-scheduled-`delta` cases explicit. The generated support files are
the copied `arxiv.sty` and `ims.bst` plus the populated `reference.bib`.

The final cached build was run from the idea directory with:

`TECTONIC_CACHE_DIR=<TEMP_ROOT>/tectonic-cache-final3 <TECTONIC_BIN> --bundle <TEMP_ROOT>/tectonic-bundle.6ZSA5R --only-cached --outdir <TEMP_ROOT>/idea4-tectonic-final3 latex_template/main.tex`

Tectonic 0.16.9 exited 0 after TeX, BibTeX, all reruns, and `xdvipdfmx`;
the PDF is `<TEMP_ROOT>/idea4-tectonic-final3/main.pdf` (745,679 bytes).
The only diagnostics are overfull-box warnings and the sandbox warning for
`/dev/null`; there are no TeX errors or unresolved-reference diagnostics.
The requested `p2-tectonic-bundle.22U60z` reaches the same stages but omits
`cmex7.pfb`, so it cannot emit a PDF; the frozen local bundle above contains
that cached font and provides the successful validation.

Current public-file SHA-256 values:

- `5_appendix.tex`: `e1c17c02cdacce8ffa9a4206ea6d4d64143fb47f6df012f25118c9ca58b6bf73`
- `arxiv.sty`: `2c2939eefaa8e2feb53fae9bd337bbc9680c2553e2d0acf9238f2a008eb7e35d`
- `main.tex`: `668299847c9cf0286280a1edaf1653c4595575e4e775217bb0c0e5376d0a63d9`
- `reference.bib`: `c9ee07d6afe48b35af7b517906a2b23d7f8b39c6915b7c0135e1940647a9d872`

## Blockers

None.

## Notes

Temporary converters, validation bundles, and generated PDFs are private
working files and are not part of the requested bundle.
