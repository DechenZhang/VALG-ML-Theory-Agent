# Assembly Report

## Assembly Identity

- Sketch attempt: 1
- Assembly attempt: 2
- Retry mode: `repair_assembly`
- Repair trigger: `perspective_1/idea_3/proof_review.md`, SHA-256
  `876ff3c980058822ffef4b7b8450682b256d1128395ee2e1be910e25e76053d6`
- The frozen assembly attempt 1 under `proof_history/` was not consumed as
  current proof evidence.

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

## Source Hashes

Post-repair SHA-256 hashes of the public TeX sources are:

- `latex_template/1_intro.tex`:
  `7f41d397926d1022b5a3525ccfc959c5d6565ca7f1380378b8daeaf748507604`
- `latex_template/2_preliminary.tex`:
  `375674748435bbf6c9b4adcdca553f3bd6fa30a55a243fbb3c892ded5e05dda1`
- `latex_template/3_main.tex`:
  `6c43636d12aaf8e2f1b3716e352266382f59863172ac25685768bbd771ff556d`
- `latex_template/4_proof_sketch.tex`:
  `423c5853c476461b1dcf5f3132f3ae35933c414dc95df80d178092139b669ae7`
- `latex_template/5_appendix.tex`:
  `cdcc341b97f7fe5d433d447b31f5cd5a40df03aa4dd83b3891a6ae588fd0f6b1`
- `latex_template/main.tex`:
  `9bf58c202192a9823a9b56293964b4a00e00cea50c5bd7af17e106a96a9275af`

## Notes

- Assembly attempt 2 repairs exactly the 31 aggregate-listed corruptions in
  `latex_template/5_appendix.tex`: 21 bare `qquad` tokens, six bare `quad`
  tokens, two bare `operatorname` tokens, one 0x0D-corrupted
  `Proposition~\ref{prop:step-002-factor-utility}` dependency, and the one
  Step 8 mistranscription `k,2^{C_RNL}`.  The restored Step 8 term is
  `k\,2^{C_RNL}`.
- This exact repair added 31 bytes to `latex_template/5_appendix.tex`, from
  203950 to 203981 bytes, while retaining its 5107-line structure.  The
  other five public TeX sources remain byte-identical to their pre-repair
  hashes.
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
- A clean `tectonic --keep-logs --keep-intermediates main.tex` build ran
  TeX, BibTeX, and all required TeX reruns successfully.  The final scans
  find no malformed commands, control bytes, duplicate labels, unresolved
  references or citations, overfull boxes, or aggregate corruption
  patterns.  Three nonblocking underfull-box warnings remain.
