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

- Assembly attempt 2 is a routed `repair_assembly` of the five defects in the
  binding aggregate review. It preserves the exact R1--R5 theorem contract,
  probability and norm modes, exposed dependence, success criterion, and
  `full` progress type.
- The finite-chart quotient estimate now contains the accepted product
  `m^2|H_j(s,zeta)| |F_j(theta)-F_j(s)|`. The central incidence proof now
  applies the Euclidean `C^1` implicit-function theorem at the proved
  regularity level, with the nonzero coefficient partial written explicitly
  and the Rudin citation backed by `reference.bib`; the unused Lee entry was
  removed.
- All 89 appendix displays formerly carrying manual tags are compiler-numbered
  equation environments with unique ASCII labels `eq:appendix-1` through
  `eq:appendix-89`. All 71 textual manual-number uses were replaced by
  `\eqref`; no hard-coded appendix equation number remains. The combined
  Bogachev bibliography record now identifies `Measure Theory`, Volumes I--II,
  without a false single-volume field or volume-specific DOI.
- The unused preliminary affine-event alias was removed. The exhaustion set
  `E_{j,m}` is now defined only at its first appendix use, where the accepted
  finite-level argument needs it.
- The ten current sketch-attempt-2 proof/review pairs remain the only proof
  authorities. Their local-unit counts are `2,2,3,2,2,6,4,3,3,1`; every
  accepted local derivation, invoked cited-result application, and target-step
  assembly remains represented in the ten appendix subsections. Reversing the
  mechanical equation-label conversion reproduces the archived attempt-1
  appendix except exactly for the two mandated appendix repairs.
- An isolated Tectonic 0.16.9 build completed TeX, BibTeX, the required TeX
  reruns, and PDF generation. All ordinary references, equation references,
  and citations resolved. The converged build emitted one persistent overfull
  `\hbox` warning of `7.52167pt`; it emitted no unresolved-reference or
  unresolved-citation diagnostic. Build byproducts remain outside the branch.
- The changed outputs are `2_preliminary.tex`, `5_appendix.tex`,
  `reference.bib`, and this report. The other required public/support outputs
  remain byte-identical to assembly attempt 1. All binding controller and
  producer hashes, the archived attempt-1 bundle, and the five archived final
  reviews were reverified after repair; no protected artifact was modified or
  used as replacement proof authority.
