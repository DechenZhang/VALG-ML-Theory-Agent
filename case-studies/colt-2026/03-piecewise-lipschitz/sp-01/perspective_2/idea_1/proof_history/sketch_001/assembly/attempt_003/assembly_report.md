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

- Assembly unit attempt 3 used retry mode `repair_assembly` and was bound to the aggregate repair trigger `proof_review.md` at SHA-256 `44b1e6fe50c95f4968ac97b870c31d966c00c730496801f601a746f2d1f917e7`, with failure type `PROOF_ASSEMBLY_FLAW` and target `/proof-assembly`.
- The aggregate-authorized presentation repair deleted only the orphaned word `The` from `latex_template/1_intro.tex:132-133`. The passage now ends one sentence at the regime limitation and begins the next with `No learner or online algorithm is specialized.` No mathematical content, claim, assumption, label, citation, support file, or accepted-step translation changed.
- The public bundle contains exactly the five canonical content files and four required entry/support files. Static checks found 50 unique labels and 143 `\ref`/`\eqref` uses, with no duplicate or missing targets, malformed command fragments, forbidden workflow or audit prose, public claim/hypothesis/invariant environments, or template placeholders. The four stable assumption labels match `setting.md`.
- The public TeX has no external citation command or bibliography invocation, so `reference.bib` and `ims.bst` remain present while no empty References section is rendered. Tectonic's default pass retains BibTeX-capable behavior, but no BibTeX run was required for this citation-free bundle.
- Claim synchronization and accepted-source coverage remain unchanged: `3_main.tex` and `5_appendix.tex` retain their attempt-2 hashes; all seven proof/review pairs remain current and accepted; and the unchanged appendix still contains seven accepted-step subsections, all 23 accepted local units, all seven target-step assemblies, and the final proof of the main theorem. No unreviewed proof content was added.
- A fresh isolated Tectonic 0.16.9 default-pass compile with one explicit rerun produced a 21-page PDF under `<TEMP_ROOT>/proof_assembly_p2_i1_attempt3.jGT9hX`. The retained final log has no TeX errors, unresolved references or citations, multiply defined labels, or overfull/underfull boxes; only two nonblocking bundled `wasy` font-substitution warnings remain. The PDF SHA-256 is `f31824355bcb944e652a2ffdec8918a283a3f8f50fa9c6cbb5aafe03fcdf4d61` and the final log SHA-256 is `bca2983134eeeb1ce6da23f80fc5fdfc8f99581ae31f30f0789e31553880dfa8`.
