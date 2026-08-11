# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under the seven primitive assumptions in `setting.md`, including the static
finite terminal catalog and its explicit polynomial budget, the single map
\(\phi_G(x)=(g_1(x),\ldots,g_L(x))\) satisfies
\[
\forall h\in H\ \exists w_h\in\Delta_L\ \forall x\in X,
\qquad
h(x)\langle w_h,\phi_G(x)\rangle
\ge 1-2\varepsilon>\tfrac12,
\]
and therefore
\[
\operatorname{dc}(H)\le L
\le B\left(1+\frac{m}{\tau^2}\right)^k.
\]
The conclusion is deterministic, fixed-horizon, exact pointwise, and valid on
arbitrary domains, including the empty domain. It retains the exact
\(m=0\), every finite \(\tau>0\), \(L=1\), \(B=1\), and
\(\varepsilon=0\) boundary cases. The theorem remains explicitly
conditional on the catalog assumptions and does not claim the unresolved
catalog-free source theorem.

## Blockers

None

## Notes

Assembly identity: `sketch_attempt=1`; assembly `unit_attempt=4`. Relative to
the archived third attempt at
`proof_history/sketch_001/assembly_attempt_003_citation_blocking`, the sole
repair is public citation traceability for the finite-dimensional topology
facts already invoked in the accepted derivations. Ten appendix citation
commands now identify Walter Rudin, *Principles of Mathematical Analysis*,
third edition: Theorem 2.41 for finite-dimensional Heine--Borel, Theorem 4.8
(by complements) for closed inverse images under continuous maps, Theorem
4.14 for compactness of continuous images, and Theorem 4.16 for attainment of
extrema by continuous real functions on nonempty compact sets. The complete
BibTeX entry is in `reference.bib`, and `main.tex` enables the bibliography.
No theorem claim, theorem environment, accepted proof derivation, label, or
dependency changes.

The controller binding inputs were recomputed with SHA-256 and match exactly:

- `setting.md`: `4abbe2abefd18488f3ec1175566fb0c16c903b0e429738fcde74b71bcc6cef88`.
- `proof_sketch.md`: `109f2014f7e3242369d8ff70b4fbbcb284401f3e231eef40aaabbc95e26e9a41`.
- `proof_sketch_review.md`: `27e0be6e65a95376d8941fabc467b1525147d0c5842c2c816022fb58ace2b9e9`.
- `step_001`: proof `0be07c67f342f492702eeaf2c0fba2792db0c91cc5839b0ecb10fd9207e5466d`;
  review `7f9d3899bc9c7db169d383ceeb408d43e096d2b7621f692e5ca55a00c6075c16`.
- `step_002`: proof `bc595377b6068047df51c449eb82a9f9a37e34ed215c22751eb30df9ec4b76a5`;
  review `b0a6cd9b3a722e73143d3e4160acf85ed9c616c243337cc3a57dde7b00c15f0c`.
- `step_003`: proof `7852d0b7301bf399d8e67c30ec9d94a34eff9352ea58b95f6999c14a0cc042f6`;
  review `c57aa38f534080818c592e894e104d4d02166a66a7264a403a41dc3e32a88d0b`.
- `step_004`: proof `374f3a46da7176fd12932ea80b28e3bc014d024a71c47550a2cb35131c93de70`;
  review `2e7cf2abba72c14ebc00fd8b96955829a460b533d40cc6c71bcb5fca0affc3a5`.
- `step_005`: proof `810ea20a2ac1dbbb2c00b43fec8fcfa22f8597aaa21ad16ebbc0d09e2407cf47`;
  review `26efe402412382ff36d3e0decbfe690aed170e8377f8e18b9e21c5fd56abf9c9`.
- `step_006`: proof `a83c9b35e882370a01d2697a2a29156b3bb86e7c10cd0ae4f2309bc8106b449c`;
  review `3998157d62243b1b91f3165b19aebf10581c7ad9882459ce2d55a9c359a2c5d8`.

Validation evidence for attempt 4:

- The mandated bare-command scan returns exactly three genuine prose matches:
  `label-independent` at `1_intro.tex:54`, `label-linearity` at
  `1_intro.tex:98`, and `label-independent` at `5_appendix.tex:132`. It returns
  no bare mathematical command defect.
- The label/reference/citation audit counts 77 unique labels, 163
  `\ref`/`\eqref` uses, ten citation commands, one cited key, and one
  bibliography entry. It finds no duplicate label, missing reference target,
  missing citation key, or unused bibliography entry. Public-hygiene,
  placeholder, workflow-language, malformed-reference/citation,
  forbidden-environment, and source-build-artifact scans all return no defect.
- A recursive source comparison against archived attempt 3 finds changes only
  in `5_appendix.tex`, `main.tex`, and `reference.bib`, exactly matching the
  citation repair described above.
- A clean full `<TECTONIC_BIN>` compile wrote only to
  `<TEMP_ROOT>/p3-assembly-attempt4.1PF2SA/out`, ran BibTeX, produced a 19-page
  `main.pdf`, and produced a nonempty 437-byte `main.bbl` resolving
  `rudin1976principles`. The final log shows `main.bbl` included on page 5 and
  has no warning, error, unresolved or undefined reference/citation, multiply
  defined label, missing character, or overfull/underfull box. On an unchanged
  second build, `main.aux`, `main.bbl`, `main.blg`, `main.brf`, and `main.out`
  retained identical SHA-256 hashes, and the final log reports stable
  `main.out` and `main.brf`. No generated compile artifact appears in
  `latex_template/`.

The appendix still translates every accepted non-atomic local derivation and
each target-step assembly in dependency order. Progress type is `conditional`;
the remaining full source gap is derivation of a boundary-corrected
catalog-free linear bound from \(m\) and \(\tau\) alone. The copied `arxiv.sty`
continues to omit the unused `subfigure`, `algorithm`, `algorithmic`, and
`wasysym` loads, avoiding their package, encoding, and font warnings.
