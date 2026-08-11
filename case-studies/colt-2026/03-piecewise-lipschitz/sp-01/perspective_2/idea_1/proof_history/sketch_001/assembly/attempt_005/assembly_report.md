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

- Assembly unit attempt 5 used retry mode `repair_assembly` and was bound to the aggregate attempt-4 repair trigger `proof_review.md` at SHA-256 `a868e39503d926f7924e3f51d33814fcfca145c943532c1a9d44f9276f513d8d`, whose verdict is `Score 6`, `Failure Type PROOF_ASSEMBLY_FLAW`, and `Suggested Next Action /proof-assembly`.
- The repair changed only the acceptance-critical citation/source mapping in `latex_template/5_appendix.tex`. It instantiates Kallenberg Lemma 1.41(iii) with the conditioning space, probability marginal, and probability kernel before invoking Radon--Nikodym; identifies the resulting kernel product as a probability measure and checks sigma-finiteness of the dominating product measure; invokes Kallenberg Lemma 1.17 for bounded-measure uniqueness on an explicit countable generating pi-system containing the whole pivot space, so the two measures have equal total mass; proves absolute continuity of the finite measure `rho(E)=int_E |q| d lambda` inline for rational-endpoint approximation; and cites Kallenberg Theorem 1.1 for both pi--lambda arguments while exposing whole-product membership. The false Folland Proposition 2.23 and Kallenberg Lemma 1.1 locators no longer occur.
- Attempted-claim fidelity is exact. No theorem claim, assumption, constant, quantifier, dependency, local-unit statement, accepted derivation, target-step assembly, probability mode, or witness clause changed, and no new theorem-level lemma was introduced. All seven current `COMPLETE` proof artifacts retain the SHA-256 values accepted by their paired `ACCEPTED` reviews. The appendix still contains all 23 non-atomic local units, all seven target-step assemblies, and the final theorem assembly.
- Only the authorized scope changed: `latex_template/5_appendix.tex` and this `assembly_report.md`. The other eight public bundle files are byte-for-byte identical to archived assembly attempt 4, and no setting, sketch, proof-step, review, tracker, worker-log, proof-history, or results artifact was modified. The public source hashes are: `1_intro.tex` `c26ad9c6d82f7d12fe570ebefa0e2f32cac15e3771378a7b76b0e2d77c497d80`; `2_preliminary.tex` `e7b19ebaa3b2157cdd6603301065d8ccb9c0085bbbff5e5f456bf083d113cc09`; `3_main.tex` `22cfad0ae3575f5fb1ae6a60b8c8d3616e5343b480ddcb343ccc14ea2e32187f`; `4_proof_sketch.tex` `e00ada152098a652bf35a157763161871c9271feb49a720b7b7918c1477a0615`; `5_appendix.tex` `65c76b5f5ca4e8a82d8e1531ad205e07fdba65bf9b61527f52b026a2fb90abaf`; `main.tex` `1df7cd0108bd10e725c63aae9bd857e107847ef7f852801c40c67d353fe5530e`; `arxiv.sty` `f3ab0291ff4f33f51944852dffc9468e7df595600ddeb397f3bcd2252142d2a2`; `ims.bst` `c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f`; and `reference.bib` `aa030357606cfaf71e00b4472067272b2d48911cc587ecc7c759ed87227ea302`.
- Static checks found 50 unique labels and 143 `\ref`/`\eqref` uses, with no duplicate or missing targets. The 15 citation commands use exactly the two complete BibTeX keys `Folland1999` and `Kallenberg2002`; `reference.bib` already contains both entries, and the unchanged `main.tex` continues to invoke it through `ims.bst`. The four stable assumption labels match `setting.md`, and scans found no malformed locator, forbidden workflow or audit prose, public claim/hypothesis/invariant environment, or template placeholder.
- A fresh isolated BibTeX-aware Tectonic 0.16.9 build followed by a second stabilization invocation produced a 22-page PDF under `<TEMP_ROOT>/proof_assembly_p2_i1_attempt5.GNablc`. Both invocations ran BibTeX and the required TeX passes. The final TeX and BibTeX logs have no errors, unresolved references or citations, multiply defined labels, or overfull/underfull boxes. The two nonblocking bundled `wasy` font-substitution warnings remain; Tectonic also reports the pre-existing nonblocking invalid-UTF-8 bytes in cached `algorithm.sty` and `algorithmic.sty` comments. The PDF SHA-256 is `ee263fde28cf4706e0893b404eb3c0edf4c89dd6c59221361618b8035de44d14`, the final log SHA-256 is `62eb7eecb5fa7ee55a112e665f46e4af7582b125107ae9cf1b580b7e7c06f546`, the generated bibliography SHA-256 is `40bd2733f21921ac3825f0dab49ef75362106de24b037c4db95b8a1a79e06e27`, and the BibTeX log SHA-256 is `dcbc30cd46b5b815c45e1f29231d44bde833f32665edd8258c4e54a2ba4bf46a`.
