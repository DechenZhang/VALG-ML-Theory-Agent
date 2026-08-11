# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under the five numbered assumptions in `setting.md`, prove one unconditional
anchored coefficient-normalized Pfaffian hyperplane-sweep theorem for the full
declared anchored, unit-range, coefficient-controlled normalization:

1. The primitive presentation satisfies
   \(|G_i'|\leq D_*:=\Delta B_Q(1+qB_P)\) and
   \(\Gamma_{\mathrm{proj}}(F)\leq
   \sqrt N\,\Delta B_Q(1+qB_P)/h\), with exact Euclidean normalization,
   endpoint conventions, and degree-zero dependence on \(M\) for fixed
   \(B_P\).
2. For each arbitrary correlated capped joint law and each positive-length
   interval, ordinary probability is at most
   \(A\sqrt{N/2}\,\Gamma_{\mathrm{proj}}(F)|I|\), hence at most
   \(AN\Delta B_Q(1+qB_P)|I|/(\sqrt2h)\); the same literal coefficients
   bound the interval-then-law capacity supremum.
3. The general affine event is bounded, in the extended-real sense, by
   \(\kappa\sum_j\int_{E_j}\int_{[-R,R]^{N-1}}
   |\partial_\theta T_j|\), without transversality, a uniform pivot margin,
   finite-fiber assumptions, or independence.
4. The same affine theorem exactly recovers the monic presentation with the
   leading coefficient deterministic and outside the random vector, the
   prescribed low/high charts and literal velocities, and
   \[
   \Pr[\exists\theta\in J:p_\alpha(\theta)=0]
   \leq \kappa(2R)^{d-1}
   \left(d+\frac{Rd(d-1)}2\right)|J|
   \]
   for every \(d\geq1\), bounded interval, and arbitrary correlated lower-
   coefficient law, including the exact \(d=1\) branch.
5. Counter-example 1 has \(B_Q=\Gamma_{\mathrm{proj}}(F)=1/\delta\), exact
   witness probability \(\epsilon/(4\delta)\), and the distinct scale chain
   \[
   \frac1{4\delta}\leq C^{\mathrm{Pf}}_{\mathcal D}
   \leq\frac1\delta\leq\frac{\sqrt2}{\delta}.
   \]

All constants are literal, with no hidden dependence or confidence
parameter. The claim uses ordinary probability, arbitrary full-joint
coefficient correlation, the declared interval scopes, Euclidean
projective/operator norms, scalar chart velocity, and the exact endpoint and
degenerate branches. It does not claim that every raw Pfaffian presentation
admits the declared normalization with polynomial budgets. Progress type is
`full`.

## Blockers

None

## Notes

- Assembly attempt 1 consumed only the ten current sketch-attempt-2 proof and
  review pairs. Their local-unit counts are `2,2,3,2,2,6,4,3,3,1`; each unit,
  its invoked cited-result checks, and each target conclusion is represented
  in the corresponding public appendix subsection. The appendix has exactly
  ten mathematical subsections followed by `Proof of the Main Theorem`.
- The public bundle contains all five stable assumption labels, the explicit
  rate contract, the exact monic and Counter-example bridges, 29 public
  theorem-style blocks, unique labels, closed references and citations, and
  consecutive displayed appendix equations `A.1`--`A.89`.
- Tectonic completed TeX, BibTeX, TeX reruns, and PDF generation with no
  warnings, unresolved references, or unresolved citations. Generated
  compilation byproducts were removed afterward. Separate `pdflatex` and
  `bibtex` executables were unavailable.
- The shared `arxiv.sty` was instantiated and minimally repaired by removing
  unused imports of `subfigure`, `algorithm`, `algorithmic`, and `wasysym`:
  `subfigure` conflicted with the template's `subcaption`, while the other
  unused imports produced package/font warnings. No theorem or layout feature
  used by this bundle depends on those imports.
- The controller-supplied SHA-256 values for `idea.md`, `setting.md`, the
  accepted sketch and review, the controller-open tracker, and all ten
  proof/review pairs were reverified after assembly. No protected input was
  modified, and no global diagnostic, stale proof history, or prior assembly
  supplied public proof evidence.
