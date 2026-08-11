# Assembly Report

## Assembly Identity

- Sketch attempt: `1`.
- Assembly attempt: `10`.
- Retry mode: `repair_assembly`.
- Repair trigger: `proof_review.md`, SHA-256
  `d3ae05fcae554e267fac0e58551ad26afeb217ce80db06830a794592dd790cf7`.

## Status

COMPLETE

## Attempted Claim

Under the four primitive assumptions in `1_intro.tex`, the bundle
assembles totalized quotient-first VC-sensitive, old-Lyu, and finite-class
private PAC learners on the finite-or-countable evaluation quotient. Each
available learner has a measurable raw pullback, all-input
`(epsilon, delta)` privacy, and the realizable iid population-error
guarantee `err <= alpha` with failure probability at most `beta`. The
certified bounds are the VC-sensitive, old-Lyu, and finite-class rates
stated in `3_main.tex`; choosing the least certified arm gives the stated
minimum/frontier bound. The claim makes no unrestricted assertion outside
the finite-or-countable quotient scope.

## Inputs

- Live `setting.md`, accepted `proof_sketch.md`, and accepted
  `proof_sketch_review.md`.
- All sixteen live proof-step/review pairs for `step_001` through
  `step_016`; every current review is `ACCEPTED`, names its current proof,
  and contains that proof's exact SHA-256.
- Accepted Step 015 proof/review:
  `bcb840332dff8fe4f0c2028744e46eff951fb4e7aa6e47f74fd4c3bcfdc7d492` /
  `ee3c367e9ab057d098023701bd7b10469eb3b5381f6c3cc3ff1cc7c1952e93bd`.
- Accepted Step 016 proof/review:
  `bd89e61edb9ba13a0198e603a87cee816d7a74ab95e5ef258e7399c0981c6e0b` /
  `88ffdd0a13abc8f1bc885cf49d4328e3fa8b20cdd09506250a088ab262593561`.
- The public bundle is the nine files under `latex_template/` plus this
  controller-private report. No setting, sketch, proof-step, review,
  tracker, log, accepted-result, or archived-attempt artifact was modified.

Binding SHA-256 values:

- `setting.md`: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- `proof_sketch.md`: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- `proof_sketch_review.md`: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Triggering aggregate `proof_review.md`:
  `d3ae05fcae554e267fac0e58551ad26afeb217ce80db06830a794592dd790cf7`

No diagnostic or archival artifact was consumed as current proof evidence.

## Coverage

All sixteen accepted step subsections remain assembled from their live
`Cited Result Applications`, `Local Derivation`, and
`Target-Step Assembly` source sections. Those required sections contain
11,118 body lines, or 11,166 lines including their three headings in each of
the sixteen proofs, across 15,408 total proof-source lines.

A source-order pass accounted for all 107 accepted local-unit labels. Each
appears in the appendix in source order as a public lemma or proposition;
the source-local Step 005 claim is translated to the allowed public
proposition `prop:step-005-positive-range`. A per-step display pass
accounted for all 558 distinct tags in the required source sections. Of
these, 554 are literal appendix tags. The four nonliteral cases preserve
exact duplicate or dependency content:

1. Step 013 source tag `(11)` is the already produced identity
   `E_core = E_good intersect E_mech`; the subsection cites its Step 010
   producer and restates the equality before use.
2. Step 016 source tag `(C.V)` is the accepted Step 014 VC-arm rate and is
   restated as `B_V = K_V Lambda^4 R_VC`.
3. Step 016 source tag `(C.O)` is Proposition
   `prop:step-015-rate`, equation `(22.1)`, and is restated as
   `B_o = K_O Lambda^6 R_old`.
4. Step 016 source tag `(C.Odelta)` is the standalone old-arm schedule,
   reproduced as equation `(7.3)`.

The current public line inventory is:

- `1_intro.tex`: 141
- `2_preliminary.tex`: 264
- `3_main.tex`: 111
- `4_proof_sketch.tex`: 39
- `5_appendix.tex`: 10,862
- `main.tex`: 29
- `arxiv.sty`: 348
- `ims.bst`: 1,567
- `reference.bib`: 69
- Total: 13,430 lines.

Structural checks passed: 134 unique labels with no duplicates; 898
internal reference occurrences over 113 distinct targets with no missing
labels; 110 appendix theorem-style units (39 lemmas and 71 propositions);
111 balanced proof environments; four balanced assumption environments;
and 17 appendix subsections, one per accepted step plus the final
main-theorem proof. The three intentionally terminal theorem-style labels
without downstream consumers are `prop:step-008-boundaries`,
`prop:step-012-boundaries`, and the public `cor:frontier`; their statements
and proofs remain present. The 76 citation commands use exactly the two
BibTeX-backed keys `lyu2025` and `sauer1972`.

## Repair Summary

Attempt 10 repaired only the single assembly-level authority defect identified
by the triggering aggregate. In the final proof, exact VC- and Littlestone-
dimension preservation is now attributed to
`lem:step-002-vc` and `lem:step-002-ld`. The existing references to
`prop:step-002-factorization`, `prop:step-002-record-map`,
`prop:step-002-iid-pushforward`, and `prop:step-002-risk` remain and are
assigned only to quotient factorization, raw-neighbor transport, iid
pushforward, and exact risk transfer. No other public TeX sentence changed
from archived attempt 9. The repair did not change an accepted claim,
assumption, dependency, proof step, review artifact, constant, rate, privacy
mode, PAC mode, horizon, boundary case, baseline arm, or conditional theorem
scope.

## Verification

The public-TeX hygiene scan found no control bytes, non-ASCII bytes,
workflow-only paths or proof authorities, forbidden audit scaffolding,
mechanical phrases, placeholders, malformed bare reference/citation
fragments, public claim/hypothesis/invariant environments or labels,
duplicate labels, missing reference targets, result-type mismatches, or
missing citation entries. The four stable setting assumption IDs match the
four public assumption labels exactly. The main theorem contains no forward
reference to an appendix-local result; its corollary cites only the named
Rate Specialization Bridge allowed by the assembly contract. A structural
scan found no appendix internal forward reference and no theorem-proof
self-reference.

A fresh cached Tectonic 0.16.9 build, launched from inside `latex_template/`,
completed successfully (exit code 0)
with TeX, BibTeX, required reruns, and PDF generation:

`TECTONIC_CACHE_DIR=<TEMP_ROOT>/tectonic-cache-final3 <TECTONIC_BIN> --bundle <TEMP_ROOT>/tectonic-bundle.6ZSA5R --only-cached --keep-logs --outdir <TEMP_ROOT>/idea4-tectonic-attempt10.6LUCra main.tex`

The resulting PDF is
`<TEMP_ROOT>/idea4-tectonic-attempt10.6LUCra/main.pdf` (714,186 bytes,
115 pages). The final log has eight overfull-box warnings, all in the
appendix, with maximum excess 22.38173 pt, plus two nonblocking font-shape
substitution warnings. The completed theorem-facing kernels produce no
overfull box. There are no TeX or BibTeX errors and no unresolved reference
or citation diagnostics.

## Bundle Inventory

Frozen SHA-256 values for all nine public bundle files:

- `latex_template/1_intro.tex`: `3f2bc4b7ebd3290db88a480121f3c3f2f65eec9bc5f6d4bb67034ddd82da4b50`
- `latex_template/2_preliminary.tex`: `204fe09dc7e0cc59ddfbcc891a19c36519c05692c3023f50ce138ef4bc007c79`
- `latex_template/3_main.tex`: `e9202c398962af668b773585e980fcc6913406043808ccfbc48004e825099e52`
- `latex_template/4_proof_sketch.tex`: `075f0c8aace98eeef2031deff281f640463ce8ed139d886b5916844bcd121348`
- `latex_template/5_appendix.tex`: `a948807f761f23d805ff0c956717fdb0e3af9a069174d44c87b71782102c29c2`
- `latex_template/main.tex`: `668299847c9cf0286280a1edaf1653c4595575e4e775217bb0c0e5376d0a63d9`
- `latex_template/arxiv.sty`: `2c2939eefaa8e2feb53fae9bd337bbc9680c2553e2d0acf9238f2a008eb7e35d`
- `latex_template/ims.bst`: `c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f`
- `latex_template/reference.bib`: `c9ee07d6afe48b35af7b517906a2b23d7f8b39c6915b7c0135e1940647a9d872`

## Blockers

None

## Notes

Temporary validation files and the generated PDF under `/private/tmp` are
private working outputs and are not part of the requested bundle. The
SHA-256 of this report is frozen separately after the write so the report
does not attempt a self-referential embedded hash.
