# Assembly Report

## Status

COMPLETE

## Attempted Claim

Fix one finite
\(\eta=(\bar\kappa_0,\bar\kappa_\infty)\in[0,\infty)^2\), independently of
\((d,R)\). For every \(d\geq1\), \(R\geq1\),
\(\mu\in\mathcal D_{d,R,\eta}\), and \(I\in\mathcal I(\Theta)\), the assembled
bundle proves
\[
\mu(H_{d,I})
\leq \bar\kappa_0B_0(d,R)|I_0|
 +\bar\kappa_\infty B_\infty(d,R)(|I_+|+|I_-|)
\leq M_\eta(d,R)|I|.
\]
Consequently, with the stated zero convention for empty supremum index sets,
\[
C_{\mathcal D_{d,R,\eta}}
\leq M_\eta(d,R)
\leq P_\eta(d,R)
=\bar\kappa_*d+\frac{\bar\kappa_*}{2}Rd^2,
\qquad
\bar\kappa_*=\max\{\bar\kappa_0,\bar\kappa_\infty\}.
\]
The exact middle bound is the maximum of the two chart coefficients, not
their sum, and every coefficient is displayed.

Separately, only when
\(\bar\kappa_0,\bar\kappa_\infty\geq1/2\), the bundle proves for every
\(d\geq1\) and \(R\geq1\) that
\[
\mu^{\mathrm{wit}}_{d,R}\in\mathcal D_{d,R,\eta},
\qquad
K_0^{\mu^{\mathrm{wit}}_{d,R}}
=K_\infty^{\mu^{\mathrm{wit}}_{d,R}}
=\frac1{2R}\quad\text{almost surely}.
\]
The result retains the material_partial scope: it is a sufficient-condition
theorem for \(R\geq1\), without a necessity claim, coverage of laws lacking
both endpoint mean caps, or coverage of \(0<R<1\).

## Blockers

None

## Notes

- Assembly unit attempt 4 used retry mode `repair_assembly` and was bound to the aggregate repair trigger `proof_review.md` at SHA-256 `3efd2e60a8c63229b89e67740506e5bda580329daacbd60d49c1d257a89a1556`, with failure type `PROOF_ASSEMBLY_FLAW` and target `/proof-assembly`.
- The repair added integrated citations in `latex_template/5_appendix.tex` for the acceptance-critical uses of Tonelli, Radon--Nikodym and density uniqueness, finite-measure uniqueness on a generating pi-system, Lebesgue differentiation, absolute continuity of the integral, regular-conditional-distribution uniqueness, the pi--lambda theorem, monotone convergence, and product-measure nullity. `latex_template/reference.bib` now contains complete stable-ASCII entries for Folland and Kallenberg, and `latex_template/main.tex` invokes `reference.bib` through `ims.bst`.
- No theorem claim, assumption, constant, quantifier, proof dependency, local-unit statement, or mathematical derivation changed, and no lemma was added. Removing only the attempt-4 citation additions reconstructs the accepted attempt-3 appendix byte-for-byte at SHA-256 `48010b2141f6014c1dd4fca3a75309748dbd0abec3e3afdadee49dc61eec2f6e`. A direct current-source audit confirms all seven `COMPLETE` proof artifacts remain paired with their `ACCEPTED` reviews and that the appendix preserves all 23 non-atomic local units, all seven target-step assemblies, and the final theorem assembly.
- The public bundle contains exactly the five canonical content files and four required entry/support files. Static checks found 50 unique labels and 143 `\ref`/`\eqref` uses, with no duplicate or missing targets. Its 15 citation commands use exactly the two complete BibTeX keys `Folland1999` and `Kallenberg2002`. The four stable assumption labels match `setting.md`, and scans found no malformed command fragments, forbidden workflow or audit prose, public claim/hypothesis/invariant environments, non-ASCII BibTeX data, or template placeholders.
- A fresh isolated BibTeX-aware Tectonic 0.16.9 build with an explicit stabilization invocation produced a 21-page PDF under `<TEMP_ROOT>/proof_assembly_p2_i1_attempt4_final.gVTZCs`. Both invocations ran BibTeX and the required TeX passes. The final log and BibTeX log have no errors, unresolved references or citations, multiply defined labels, or overfull/underfull boxes. Two nonblocking bundled `wasy` font-substitution warnings remain in the TeX log; Tectonic also reported nonblocking invalid-UTF-8 bytes in cached `algorithm.sty` and `algorithmic.sty` package comments. The PDF SHA-256 is `cc5905dabe1e9936f980e317ad07ebd02a68671cb6b0b396962136d818b5e270`, the final log SHA-256 is `8eb0a632afa93ecebb30a1209b549d5490b3a53cf2fbe6b9278591c4a57a79bd`, and the generated bibliography SHA-256 is `40bd2733f21921ac3825f0dab49ef75362106de24b037c4db95b8a1a79e06e27`.
