# Assembly Report

## Assembly Identity

- Sketch attempt: `1`.
- Assembly attempt: `7`.
- Retry mode: `repair_assembly`.
- Repair trigger: `proof_review.md`, SHA-256
  `050d138f9a5527e8130c5c6452150b780d80b8c4ab420a314ea6ba2c912f5882`.

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
  `step_016`; every current review is `ACCEPTED` and records the exact
  SHA-256 of its current proof.
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
- `global_proof.md`: `bbb47a7e0753c47fc073d71b9e8e5b0a74d40d79aad7e22c1e8d7bf44c687784`
- `global_proof_review.md`: `490e6b89ecd229a41dac2b24c82bb277cbacfd66acff00f4f5c82fc58ac7cf09`

The global diagnostic pair was used only for accepted assembly routing and
not as proof evidence. No artifact under `proof_history/` was consumed.

## Coverage

All sixteen accepted step subsections remain assembled from their live
`Cited Result Applications`, `Local Derivation`, and
`Target-Step Assembly` source sections. Those required sections contain
11,166 source lines across 15,408 total proof-source lines.

A source-order pass accounted for all 107 accepted local-unit labels. Each
appears in the appendix in source order as a public lemma or proposition;
the source-local Step 005 claim is translated to the allowed public
proposition `prop:step-005-positive-range`. A per-step display pass
accounted for all 558 distinct tags in the required source sections. Of
these, 554 are literal appendix tags. The four nonliteral cases preserve
exact duplicate or dependency content:

1. Step 013 source tag `(11)` is the already produced identity
   `E_core = E_good intersect E_mech`; the subsection cites the producing
   Step 010 proposition and restates the same equality before use.
2. Step 016 source tag `(C.V)` is the accepted Step 014 VC-arm rate and is
   restated as `B_V = K_V Lambda^4 R_VC`.
3. Step 016 source tag `(C.O)` is Proposition
   `prop:step-015-rate`, equation `(22.1)`, and is restated as
   `B_o = K_O Lambda^6 R_old`.
4. Step 016 source tag `(C.Odelta)` is the standalone old-arm schedule,
   reproduced as equation `(7.3)`.

The current public line inventory is:

- `1_intro.tex`: 141
- `2_preliminary.tex`: 64
- `3_main.tex`: 75
- `4_proof_sketch.tex`: 39
- `5_appendix.tex`: 10,846
- `main.tex`: 29
- `arxiv.sty`: 348
- `ims.bst`: 1,567
- `reference.bib`: 69
- Total: 13,178 lines.

Structural checks passed: 134 unique labels with no duplicates; 908
internal reference occurrences over 115 distinct targets with no missing
labels; 110 appendix theorem-style units (39 lemmas and 71 propositions);
111 balanced proof environments; four balanced assumption environments;
and 17 appendix subsections, one per accepted step plus the final
main-theorem proof. Every appendix theorem-style label is consumed; the
only unconsumed theorem-style label is the terminal public
`cor:frontier`. The 68 citation commands use exactly the two
BibTeX-backed keys `lyu2025` and `sauer1972`.

## Repair Summary

Attempt 7 repaired assembly presentation and source synchronization only.
It did not change an accepted claim, assumption, dependency, or proof
artifact.

1. Restored the omitted source-order public interfaces: Step 004 equation
   `(1)`; Step 006 equations `(1)-(2)`; Step 007 equations
   `(1)-(5)`; Step 008 definitions `(1)-(3)` and interfaces
   `(4)-(13)`; Step 009 equations `(1)-(10)`; Step 010 equations
   `(1)-(4)`; Step 011 equations `(1)-(11)`; and Step 012 equations
   `(1)-(17)`.
2. Step 015 now states the exact degree-zero-complete elementary-symmetric
   inequality `(C6)` and the Bernoulli lower-tail interface `(C7)` as
   inline results, not external authorities. Lemma
   `lem:step-015-tails` contains the complete pairwise-smoothing proof
   `(8.3a)-(8.3d)`, endpoint cases, maximum/minimum averaging, variance
   decrease, convergence and continuity, the without-replacement mgf
   `(8.3)`, KL optimization `(8.4)`, and bound `(8.5)`. Lemma
   `lem:step-015-lower-tail` contains the complete degenerate-case and
   exponential-Markov derivation `(20.2)-(20.3)` and the
   `theta = 3/4` specialization.
3. The Step 015 subsection references only Steps 002, 003, 004, and its own
   Step 015 results. It contains no Step 011 interface or any other
   proof-step dependency.
4. Corrected the duplicated article in the totalization boundary and the
   result-type mismatch that called `lem:step-012-empirical` a
   proposition.

## Verification

The public-TeX hygiene scan found no control bytes, non-ASCII bytes,
workflow-only paths or proof authorities, forbidden audit scaffolding,
mechanical phrases, placeholders, malformed bare reference/citation
fragments, public claim/hypothesis/invariant environments or labels,
duplicate labels, missing reference targets, mismatched theorem-result
types, or missing citation entries. The four stable setting assumption IDs
match the four public assumption labels exactly. The main theorem contains
no forward reference to an appendix-local result.

A clean cached Tectonic 0.16.9 build completed successfully (exit code 0)
with TeX, BibTeX, required reruns, and PDF generation:

`TECTONIC_CACHE_DIR=<TEMP_ROOT>/tectonic-cache-final3 <TECTONIC_BIN> --bundle <TEMP_ROOT>/tectonic-bundle.6ZSA5R --only-cached --keep-logs --outdir <TEMP_ROOT>/idea4-tectonic-attempt7.VfImRf perspective_2/idea_4/latex_template/main.tex`

The resulting PDF is
`<TEMP_ROOT>/idea4-tectonic-attempt7.VfImRf/main.pdf` (703,705 bytes,
113 pages). The final log has eight overfull-box warnings, with maximum
excess 22.38173 pt. There are no TeX or BibTeX errors and no unresolved
reference or citation diagnostics.

## Bundle Inventory

Frozen SHA-256 values for all nine public bundle files:

- `latex_template/1_intro.tex`: `3f2bc4b7ebd3290db88a480121f3c3f2f65eec9bc5f6d4bb67034ddd82da4b50`
- `latex_template/2_preliminary.tex`: `4d345de69113b4bf6ed471309bcba1342e41f14c2b4baddc10209105de7291e0`
- `latex_template/3_main.tex`: `0e3cb41543426d9ea15fa6ebcfb24ac75d7634a2ca8c292758ea4e5dbbce445b`
- `latex_template/4_proof_sketch.tex`: `075f0c8aace98eeef2031deff281f640463ce8ed139d886b5916844bcd121348`
- `latex_template/5_appendix.tex`: `97882501fd830b5615860510e429a45c07b25433a1eb5b60415e7824233078ca`
- `latex_template/main.tex`: `668299847c9cf0286280a1edaf1653c4595575e4e775217bb0c0e5376d0a63d9`
- `latex_template/arxiv.sty`: `2c2939eefaa8e2feb53fae9bd337bbc9680c2553e2d0acf9238f2a008eb7e35d`
- `latex_template/ims.bst`: `c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f`
- `latex_template/reference.bib`: `c9ee07d6afe48b35af7b517906a2b23d7f8b39c6915b7c0135e1940647a9d872`

## Blockers

None

## Notes

Temporary validation files and the generated PDF under `/private/tmp`
are private working outputs and are not part of the requested bundle. The
SHA-256 of this report is frozen separately after the write so the report
does not attempt a self-referential embedded hash.
