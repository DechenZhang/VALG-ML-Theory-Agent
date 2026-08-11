# Assembly Report

## Status

COMPLETE

## Attempted Claim

There are simultaneous universal constants
\(C_{\mathrm{up}}=65536\),
\(C_{\mathrm{quota}}=\max\{1,K_Y+1/20\}\), and
\(c_{\mathrm{low}}>0\) for every measurable class satisfying
assump:canonical-product, assump:vc-one-factors, and
assump:countably-coded-evaluation and every privacy pair satisfying
assump:global-privacy-range, with the following conclusions:

- For every \(0<\delta<1\), the specified quotient-first routed learner
  is a measurable all-input replacement-\((\varepsilon,\delta)\)-DP
  Markov kernel and is distribution-free \((1/16,1/16)\)-PAC at every
  \(n\ge\lceil C_{\mathrm{up}}Q_{\oplus}\rceil\), with
  \[
  Q_{\oplus}\le
  C_{\mathrm{quota}}\frac{M_{\oplus}(C)}{\varepsilon}
  \log^2\!\frac{eM_{\oplus}(C)}{\varepsilon\delta}.
  \]
- At every fixed candidate satisfying
  assump:candidate-delta-budget, every unrestricted measurable private
  learner with the universal PAC guarantee satisfies
  \(n\ge c_{\mathrm{low}}M_{\oplus}(C)\), with a deterministic
  full-product strict PAC-failure witness on the contradicted branch.
- If both candidate-delta conjuncts hold at
  \(n_*=\operatorname{SC}_{\varepsilon,\delta}(C)\), the exact
  candidate-wise lower bound and the arbitrary-\(\delta\) upper bound
  form the stated sample-complexity sandwich.
- At \(k=1\), the upper learner is exactly the unpadded measurable
  quotient-first factor learner with its stronger
  \((1/64,1/4096)\) utility, while the lower construction has exact
  zero overflow and retains the unrestricted one-factor
  VC/Littlestone baseline.

This is the exact conditional target in setting.md.  It is a material
subclass theorem and does not claim a characterization for arbitrary
finite-Littlestone classes or uncountable evaluation quotients.

## Blockers

None

## Notes

- All fifteen required proof steps and their matching accepted reviews
  are present.  Every theorem-style source label used by the step
  artifacts has a public counterpart in latex_template/5_appendix.tex.
- The appendix contains one paper-facing subsection per proof step,
  source-order local derivations, cited-result instantiations, boundary
  cases, target conclusions, and a final proof of the main theorem.
- The five stable setting assumptions are numbered and retain their
  exact assump: labels.  The arbitrary-\(\delta\) upper scope and the
  two-conjunct candidate-wise lower scope remain separate.
- The public rate bridge retains quota ceilings, both candidate-delta
  checks, exact probability and horizon modes, universal hidden-constant
  dependence, and both one-factor baseline reductions.
- The command tectonic --keep-logs --keep-intermediates main.tex
  completes successfully with BibTeX and resolved internal references
  and citations.
