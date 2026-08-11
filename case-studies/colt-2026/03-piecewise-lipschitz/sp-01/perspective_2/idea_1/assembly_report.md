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
\bar\kappa_*:=\max\{\bar\kappa_0,\bar\kappa_\infty\}.
\]
Here
\[
M_\eta(d,R)
=\max\left\{
\bar\kappa_0\left(d+\frac{Rd(d-1)}2\right),
\bar\kappa_\infty\left(1+\frac{Rd(d-1)}2\right)
\right\},
\]
so the exact middle bound is the maximum of the two chart coefficients, not
their sum.

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
The result retains the `material_partial` scope: it gives a sufficient
condition for \(R\geq1\), without claiming necessity, treating laws lacking
either endpoint mean cap, or treating \(0<R<1\).

## Blockers

None

## Notes

- Assembly attempt 6 is bound to sketch attempt 1 and the current accepted
  step attempts `(1, 1, 3, 3, 2, 2, 1)` for Steps 001 through 007. The live
  setting, sketch, sketch review, global diagnostic, global review, and all
  seven proof/review pairs match the controller-supplied SHA-256 identities.
  Every current step review is `ACCEPTED`. The global diagnostic was used only
  as a gate and hash-verified context, not as proof evidence; no archived
  `proof_history/` artifact or stale final review supplied mathematical
  content.
- The source-order obligation pass covered all 23 accepted non-atomic local
  units, with per-step counts `(2, 2, 3, 3, 3, 4, 6)`, every invoked cited-result
  application, and all seven target-step assemblies. A second source-order
  comparison against the current appendix found each obligation represented
  in complete theorem-style proof text. The appendix contains 24 named local
  results because the Step 007 target assembly is also the reusable witness
  membership proposition; the other target assemblies are preserved as
  concluding proof text in their corresponding subsections.
- The attempt-6 synchronization repaired only stale assembly content. In
  `latex_template/5_appendix.tex`, Step 003 now includes the accepted finite
  kernel-product construction and joint-law identification, explicit
  sigma-finiteness and Tonelli/Radon--Nikodym discharge, countable-generator
  fiber identification, complete rational-interval cap argument, direct
  kernel-version invariance, conditional support, compact-projection Borel
  proof, and both complete pi--lambda arguments. Step 004 now combines the cap
  and image-length bounds pointwise and integrates only the measurable cap
  times a fixed scalar, including the support-compatible zero-pivot
  instantiation on each outer chart. `latex_template/reference.bib` adds the
  accepted Munkres topology source. No theorem statement, assumption,
  constant, quantifier, dependency meaning, probability mode, witness clause,
  or accepted step artifact was changed.
- Static validation found all nine required public bundle files in canonical
  order. There are 50 unique labels and 145 `\ref`/`\eqref` uses, with no
  duplicate or missing target. The 15 citation commands use exactly the three
  complete BibTeX entries `Folland1999`, `Kallenberg2002`, and `Munkres2000`;
  the Step 003 subsection uses only those accepted sources. The four numbered
  assumption labels exactly match `setting.md`. Scans found no forbidden
  `claim`, `hypothesis`, or `invariant` environment, workflow/audit prose,
  template placeholder, malformed bare reference/citation fragment, or main
  theorem forward reference.
- `latexmk`, `pdflatex`, and standalone `bibtex` are unavailable. A fresh
  isolated cached Tectonic 0.16.9 build, followed by a stabilization build,
  ran BibTeX and all required TeX passes and produced a 23-page PDF under
  `<TEMP_ROOT>/proof_assembly_p2_i1_attempt6.zXe2lg`. The final logs contain no TeX or
  BibTeX error, unresolved reference or citation, multiply defined label, or
  overfull/underfull box. The only nonblocking diagnostics are two `wasy` font
  substitutions and the pre-existing invalid-UTF-8 bytes in cached
  `algorithm.sty` and `algorithmic.sty` comments. The PDF SHA-256 is
  `a3b928b25d0a3a652512003f74c5accb922fa7bd241638402da878b688b58780`,
  the final log SHA-256 is
  `c453a9ee952dc432322c12d41f5fc17265d8479a07f2a26c60cb73f46d9009fb`,
  the generated bibliography SHA-256 is
  `4a01618f3c887d2d16e83874b15f2d6e8c24f5b80dcd1094e8ef339f21912823`,
  and the BibTeX log SHA-256 is
  `dcbc30cd46b5b815c45e1f29231d44bde833f32665edd8258c4e54a2ba4bf46a`.
- The final public bundle SHA-256 values are: `1_intro.tex`
  `c26ad9c6d82f7d12fe570ebefa0e2f32cac15e3771378a7b76b0e2d77c497d80`;
  `2_preliminary.tex`
  `e7b19ebaa3b2157cdd6603301065d8ccb9c0085bbbff5e5f456bf083d113cc09`;
  `3_main.tex`
  `22cfad0ae3575f5fb1ae6a60b8c8d3616e5343b480ddcb343ccc14ea2e32187f`;
  `4_proof_sketch.tex`
  `e00ada152098a652bf35a157763161871c9271feb49a720b7b7918c1477a0615`;
  `5_appendix.tex`
  `145cb358222671b2aa05f18be51cd0b5a241b54480745bb608ed751f7c75428c`;
  `main.tex`
  `1df7cd0108bd10e725c63aae9bd857e107847ef7f852801c40c67d353fe5530e`;
  `arxiv.sty`
  `f3ab0291ff4f33f51944852dffc9468e7df595600ddeb397f3bcd2252142d2a2`;
  `ims.bst`
  `c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f`;
  and `reference.bib`
  `b09a1e45989466c4ec1657c13f464ce920773f51f51c35b66855a105b5fc9ba8`.
- Attempt 6 modified only the authorized
  `latex_template/5_appendix.tex`, `latex_template/reference.bib`, and this
  controller-private report. The other seven public bundle files remain
  unchanged. No setting, sketch, global diagnostic, proof-step, step-review,
  tracker, worker-log, proof-history, specialized-review, aggregate-review,
  or accepted-results artifact was modified.
