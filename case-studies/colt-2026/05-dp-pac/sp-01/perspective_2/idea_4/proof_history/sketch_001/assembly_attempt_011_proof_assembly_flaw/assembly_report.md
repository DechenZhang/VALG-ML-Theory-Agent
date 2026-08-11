# Assembly Report

## Assembly Identity

- Sketch attempt: `1`.
- Assembly attempt: `11`.
- Retry context: post-step-repair reassembly after all refreshed dependencies
  received current accepted reviews.
- Repair trigger: `proof_review.md`, SHA-256
  `b16c5105c2e7af458ba72ce1ec6a55cd6d73c09b4238a4c601f606845de9faec`.

## Status

COMPLETE

## Attempted Claim

Under the four primitive assumptions in `1_intro.tex`, the totalized
quotient-first VC-sensitive, old-Lyu, and (when `|C| < infinity`)
finite-class laws on the finite-or-countable measurable evaluation quotient
are measurable Markov kernels whose raw pullbacks are all-input
`(epsilon, delta)`-DP and have realizable iid population error at most
`alpha` with failure probability at most `beta`. When `d = 0`, all three
available arms use the same exact zero-sample Dirac law and `m_C = 0`. When
`d >= 1`, universal constants give

`N_VC <= K_V Lambda^4 R_VC`,
`N_old <= K_O Lambda^6 R_old`, and
`N_fin <= 8 R_fin` for finite `C`; the finite arm has pure `epsilon`-DP,
and its cost is `+infinity` when `C` is infinite. Hence, for
`K_* = max{8,K_O,K_V}`,

`m_C(alpha,beta;epsilon,delta) <= K_* Lambda^6
min{R_fin,R_old,R_VC}`.

With `alpha`, `beta`, and `epsilon` fixed and delta following the declared
selected-learner schedule
`delta K_V Lambda^4 R_VC -> 0`, this yields
`m_C = tilde O(min{log^+|C|,d^5,v d^4})` and the selected sample size
satisfies `N_* delta -> 0`. The standalone old arm instead uses its separate
schedule `delta K_O Lambda^6 R_old -> 0`. The claim is conditional on the
finite-or-countable quotient scope: the unrestricted DP-PAC open problem,
uncountable evaluation quotients, and a universal polynomial in `v` and
`log d` remain unresolved.

## Inputs

- Live `setting.md`, accepted `proof_sketch.md`, and accepted
  `proof_sketch_review.md`.
- All sixteen live proof-step/review pairs for `step_001` through
  `step_016`; every current review is `ACCEPTED`, names its current proof,
  and contains that proof's exact SHA-256.
- Current accepted proof/review manifest:
  - `step_001`: `0cd51e748813399f1c1e80bc659200d37f96aa013c97e75eda2adeaf74c5d530` / `83fee520299e99482863c0e2fe5b905f9b8a1aef70cfcb8b933decbdffe19b7c`.
  - `step_002`: `880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f` / `090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5`.
  - `step_003`: `b55c3326656c172d547fc0e26cc17d5ec006ef35a631e7c98934c6bd078d3280` / `c39a5a44a4c9e0b6bc33f6ceaa9ce98e5f00c61dc4ee701d301f0f96e8fa51aa`.
  - `step_004`: `aded5334e6b420fa91d8de54cf36290a5aa726ab4d955f84586afa67311192e5` / `483174aef76458d0433547a4eb68628cb79d92d3ceddd0010c6e4835a94b15ec`.
  - `step_005`: `f1ba8be90c3ec4c84ac79bed9bb8ad537d9912e5737e6362e50647c3634557c5` / `40bbda8f8bb5f05d545f348a4d1a047454e86a8a6833db9f28a756d0a12ef67b`.
  - `step_006`: `5177f69ab096c7afcb360bbb2d016461fe16fc334c3eb39f2353945f56c7cf7b` / `3ea50da72012b8307579c24a6a56d25d9c5cab9e90e82cf91e7603879e452e76`.
  - `step_007`: `f8da4dbdc8ee467385d1a04b64904f31ea93215443cb260ba05e1cdeb9cd34f1` / `6c4dee49c2466974c1f6f1e46e2e9d790a933abaad85e85b8b52bc654ba0b5e1`.
  - `step_008`: `903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760` / `cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b`.
  - `step_009`: `b5c2dd0c3c737d906881e324a6aaacb4d958be8f288106b067a58b980cebbe52` / `71be50c1a5f40c03d5d64dd767a3ba948f2aed385cbdc3375b33ffdd4a5fc5c0`.
  - `step_010`: `f119835bca16b5d87d71cfd4e52f0cd9bddc4d0b2fdfe21a5d9f96146e9a8e98` / `46714f79e4b8525356b6f736fd6849f7e58ca6f68c0d06741fde5849a60c8e74`.
  - `step_011`: `3acb55b6a2cd5af3f9dbd5133637547a76474743e7f519384088bd24773fa83e` / `64f33e4d382087cc70be87de68117c6937248e11b40136cea6d13cfb478154f1`.
  - `step_012`: `0a5d28b5f44489f7571fe3de7b5770ba5eadc43f52e20ad116feeea84d2d8e2f` / `d81afb9811900bf85507a8a87d4132dba0c333bd47da0da095c08701a20fb7ca`.
  - `step_013`: `05b705c11f57591bdc061f3b6f0b556bf2e5f2eafccca2bbf3651c1878187b19` / `d708487b80ca18b1bcd6ecf968002a400212e30229f42063f67e9ba3cc0b3c0a`.
  - `step_014`: `d2185eaf630add3a9369e2f5f101b6d77e584b45297af80057d521836b54e4de` / `eb0461f192edd46bc09b9466b8ee074a851c186d971218907c64bdb817028d15`.
  - `step_015`: `c06105f1721b8835a667cda698b81615b38c20825cbbee39bd9e676cb5ada9d0` / `6e6446ea757ce611db32ea38898959e19a2ce0ac287a24d3e243e4458d979c09`.
  - `step_016`: `7a565cffb18401dbd1dbbf5ec0634ef0d22b5d99027c4a551e8baa403cd6218d` / `ffdb80d3448630eb17fd22999402057a9882166cda3bd2eb26c534022c9e7e6c`.
- The public bundle is the nine files under `latex_template/` plus this
  controller-private report. No setting, sketch, proof-step, review,
  tracker, log, accepted-result, or archived-attempt artifact was modified.

Binding SHA-256 values:

- `setting.md`: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- `proof_sketch.md`: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- `proof_sketch_review.md`: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Triggering aggregate `proof_review.md`:
  `b16c5105c2e7af458ba72ce1ec6a55cd6d73c09b4238a4c601f606845de9faec`

No diagnostic or archival artifact was consumed as current proof evidence.

## Coverage

All sixteen accepted step subsections remain assembled from their live
`Cited Result Applications`, `Local Derivation`, and
`Target-Step Assembly` source sections. Those required sections contain
11,267 body lines, or 11,315 lines including their three headings in each of
the sixteen proofs, across 15,662 total proof-source lines.

A source-order pass accounted for all 107 accepted local-unit labels. Each
appears in the appendix in source order as a public lemma or proposition;
the source-local Step 005 claim is translated to the allowed public
proposition `prop:step-005-positive-range`. A per-step display pass
accounted for all 559 distinct tags in the required source sections. Of
these, 555 are literal appendix tags. The four nonliteral cases preserve
exact duplicate or dependency content:

1. Step 013 source tag `(11)` is the already produced identity
   `E_core = E_good intersect E_mech`; the subsection cites its Step 010
   producer and restates the equality before use.
2. Step 016 source tag `(C.V)` is the accepted Step 014 VC-arm rate and is
   restated as `B_V = K_V Lambda^4 R_VC`.
3. Step 016 source tag `(C.O)` is Proposition
   `prop:step-015-rate`, equation `(22.1)`, and is restated as
   `B_o = K_O Lambda^6 R_old`.
4. Step 016 source tag `(C.O\delta)` is the standalone old-arm schedule,
   reproduced as equation `(7.3)`.

The current public line inventory is:

- `1_intro.tex`: 141
- `2_preliminary.tex`: 264
- `3_main.tex`: 121
- `4_proof_sketch.tex`: 43
- `5_appendix.tex`: 10,885
- `main.tex`: 29
- `arxiv.sty`: 348
- `ims.bst`: 1,567
- `reference.bib`: 69
- Total: 13,467 lines.

Structural checks passed: 134 unique labels with no duplicates; 904
internal reference occurrences over 113 distinct targets with no missing
labels; 110 appendix theorem-style units (39 lemmas and 71 propositions);
111 balanced proof environments; four balanced assumption environments;
and 17 appendix subsections, one per accepted step plus the final
main-theorem proof. The three intentionally terminal theorem-style labels
without downstream consumers are `prop:step-008-boundaries`,
`prop:step-012-boundaries`, and the public `cor:frontier`; their statements
and proofs remain present. The 64 citation commands use exactly the two
BibTeX-backed keys `lyu2025` and `sauer1972`.

## Repair Summary

Attempt 11 reassembled after the accepted Step 003 repair and all required
dependency refreshes. The public Step 003 kernel and raw-pullback statements
now preserve the universal identities for an arbitrary supplied pointwise
law, including `A_0=K_0`, and invoke the Dirac conclusion only for one of the
three setting-defined learner-arm null laws. The proof sketch now cites the
Step 002 factorization, VC lemma, Littlestone lemma, record map, iid
pushforward, and risk proposition individually. Corollary `cor:frontier`
declares `alpha`, `beta`, and `epsilon` fixed, preserves finite-parameter
validity for fixed positive `delta`, and separates the selected-learner and
standalone-old schedules. The repair did not change an accepted claim,
assumption, dependency, constant, rate, privacy mode, PAC mode, horizon,
boundary case, baseline arm, or conditional theorem scope.

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

`TECTONIC_CACHE_DIR=<TEMP_ROOT>/tectonic-cache-final3 <TECTONIC_BIN> --bundle <TEMP_ROOT>/tectonic-bundle.6ZSA5R --only-cached --keep-logs --outdir <TEMP_ROOT>/p2-assembly11-final.ywkMCM main.tex`

The resulting PDF is
`<TEMP_ROOT>/p2-assembly11-final.ywkMCM/main.pdf` (716,989 bytes). The final log
has eight overfull-box warnings, all in the
appendix, with maximum excess 22.38173 pt, plus two nonblocking font-shape
substitution warnings. The completed theorem-facing kernels produce no
overfull box. There are no TeX or BibTeX errors and no unresolved reference
or citation diagnostics.

## Bundle Inventory

Frozen SHA-256 values for all nine public bundle files:

- `latex_template/1_intro.tex`: `3f2bc4b7ebd3290db88a480121f3c3f2f65eec9bc5f6d4bb67034ddd82da4b50`
- `latex_template/2_preliminary.tex`: `204fe09dc7e0cc59ddfbcc891a19c36519c05692c3023f50ce138ef4bc007c79`
- `latex_template/3_main.tex`: `116cfc0cadf3cc49c62d0b9cc50fe86d5b6cc34a72b25d6a9854a3a08a998a70`
- `latex_template/4_proof_sketch.tex`: `86bf86f60db076d17b2b854f34e7c837d946a21a04a30fb61d0ab917485a63e9`
- `latex_template/5_appendix.tex`: `28255041b3b44f384fbe838287068c1e64b47c7d3326c853ccf9efe33cd20bb7`
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
