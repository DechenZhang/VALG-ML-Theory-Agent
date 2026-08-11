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

- Assembly unit attempt 2 used retry mode `repair_assembly` and changed only the public LaTeX bundle plus this report. Five lost control-sequence backslashes were restored from the accepted source derivations; no accepted statement, assumption, dependency, or derivation was changed.
- The unsupported external affine-latent coverage and bounded-joint-density comparison prose was removed. The public bundle now makes no external related-result claim and uses no external citation command; `reference.bib` and `ims.bst` remain present while the compile entry suppresses an empty bibliography.
- The three-piece lemma now cites the labeled preliminaries section through `Section~\ref{sec:preliminaries}` rather than a hard-coded section number.
- A source-order full-derivation pass accounts for all 23 accepted local units and all seven target-step assemblies across the seven appendix step subsections. The threshold claim remains a public lemma, and the accepted witness target assembly remains exposed as a proposition; no unreviewed mathematical obligation was added.
- Static checks found 50 unique labels, 143 resolved `\ref`/`\eqref` uses, no duplicate or missing targets, no malformed command fragments, no forbidden workflow or audit prose, and no template placeholders. The four stable assumption labels and all nine required bundle files are present.
- Tectonic compiled the bundle in two passes to a 21-page PDF under `<TEMP_ROOT>/proof_assembly_p2_i1_attempt2.soD4TL`. The retained log has no TeX errors, unresolved references or citations, multiply defined labels, or overfull/underfull boxes. Only nonblocking bundled-package encoding output and font-substitution warnings remain.
- Recomputed hashes of `setting.md`, the accepted sketch and sketch review, all seven proof/review pairs, and the binding `proof_review.md` match the frozen inputs. The copied `ims.bst` matches the canonical support file; `arxiv.sty` retains only the pre-existing removal of the incompatible unused `subfigure` load.
