# Assembly Report

## Status

COMPLETE

## Attempted Claim

There exist absolute constants $a,c_\delta,\varepsilon_0>0$,
$\alpha_0,\beta_0\in(0,1/2)$, and $N_0\in\mathbb Z_{\ge2}$ such that,
for every $k\ge2$, $N\ge N_0$, $n\ge1$, every privacy pair satisfying
`assump:candidate-regime`, and every randomized, computationally
unrestricted, possibly improper learner
$A:(X_{k,N}\times\{0,1\})^n\to\mathcal H_{k,N}$, if $A$ satisfies
`assump:central-dp` and `assump:distribution-free-realizable-pac`, then
\[
n\ge a k\log_2^*N.
\]
The assembled theorem fixes
$\varepsilon_0=0.1$ and $\alpha_0=\beta_0=2^{-13}$, preserves the full
two-conjunct restriction on $\delta$, and is pointwise in the fixed candidate
sample size under replacement central DP and population zero-one risk.

Consequently, for $k=r$ and $N=\operatorname{Tow}_2(r)$, all sufficiently
large $r$ satisfy
\[
n\ge ar^2
\quad\text{and}\quad
n\ge a\,\operatorname{VC}(C_{r,N})
          \log_2^*\operatorname{LD}(C_{r,N}).
\]
The bundle also proves the exact VC, Littlestone-dimension, and cardinality
identities on this diagonal and the comparison with the additive scale. It
explicitly leaves unresolved the stronger
$\Omega(\operatorname{VC}2^{\log_2^*\operatorname{LD}})$ and
$\Omega(\log|C|)$ lower bounds and any general combinatorial
characterization.

## Blockers

None

## Notes

- Assembly identity: sketch attempt 1; assembly attempt 2 of 100, in
  `repair_assembly` mode. The binding final review is
  `proof_review.md` at SHA-256
  `39cbb0a0fa7bbc3a3d35ec302651845e092b40e1f9c4722a41cf38e7306c4fd7`.
- Repair scope: only canonical `latex_template/5_appendix.tex`, canonical
  `latex_template/main.tex`, and this report changed. No setting, sketch,
  proof-step, proof-step-review, tracker, log, history, diagnostic,
  `global_proof.md`, or accepted-result artifact was edited.
- Accepted-input coverage: all sixteen current `proof.md` artifacts are
  `COMPLETE`, all sixteen bound `review.md` artifacts are `ACCEPTED`, and the
  complete translated bodies for `step_001` through `step_016` occur in source
  order inside the sixteen matching appendix subsections. The final subsection
  proves the main theorem by citing the assembled theorem-style results. No
  `global_proof.md` content was used as proof evidence.
- Repair content: the appendix now uses unique step-qualified display tags and
  unique labels with resolved `eqref` dependencies. It restores the accepted
  Step 4 hard-regime/minimax details (including the separation derivation and
  the public-prior quantifier order), the Step 6 pointwise-before-averaging
  conclusion, the Step 8 conditional-averaging justification, named
  cross-step authorities in Steps 10--13, and the complete Step 16 arithmetic,
  rate bridge, and remaining-gap comparison. These are translations of
  accepted source obligations, not new mathematical claims.
- Public-source checks: the directory contains exactly the nine authorized
  files listed below. Exactly three numbered assumptions retain the stable
  setting labels. Across the public TeX there are 321 unique labels, every
  `ref`/`eqref` target resolves, and all 232 display tags are unique. The sole
  external citation key has its BibTeX entry. Scans found no forbidden public
  `claim`, `hypothesis`, or `invariant` environment, workflow path, audit
  scaffold, malformed reference command, stale numeric proof authority,
  Markdown heading, control byte, template placeholder, or build product.
- PDF destinations: `main.tex` advances the hidden equation counter before
  each manually tagged `equation` environment. Visible step-qualified tags are
  unchanged, while every PDF destination is unique. The pre-existing style
  wrapper still suppresses only `arxiv.sty`'s obsolete `subfigure` request.
- Compilation: from a fresh directory initially containing only the nine
  canonical sources, cached Tectonic completed TeX, BibTeX, all required
  reruns, and `xdvipdfmx`, producing
  `<TEMP_ROOT>/proof-assembly-p3-attempt2-final.uEVKJK/main.pdf`. The final log has no
  TeX or BibTeX errors, undefined or multiply defined references, undefined
  citations, duplicate PDF destinations, or overfull/underfull boxes. The
  invocation emitted transient first-pass overfull warnings before references
  stabilized; none remain in the final log. The only persistent warnings are
  invalid-UTF-8 metadata bytes in cached external `algorithm.sty` and
  `algorithmic.sty`.
- Template support: `arxiv.sty` and `ims.bst` are byte-identical to the shared
  template copies.

Required canonical file inventory:

```text
1_intro.tex
2_preliminary.tex
3_main.tex
4_proof_sketch.tex
5_appendix.tex
arxiv.sty
ims.bst
main.tex
reference.bib
```

Final SHA-256 manifest for `latex_template/`:

```text
6330b92d68852597d943b6b833e2230e318b97444c884749c8a2ca1e34f7d7cf  1_intro.tex
56b4a4e418c3b410fc2c3dbf622e15e7cb735d2d2eac9902b3be43c80b6c58ca  2_preliminary.tex
710b28d682b3ee901806630c98271bc4d487937a74bbdd2d5e1df94b23db5a3c  3_main.tex
cd91637bdda9b34b59ae744c3c5adc2686146315e1d467be99e95a3eaff2eec2  4_proof_sketch.tex
198ad593c5046879721834c33ae37c8c364eb976926f0b9553288e1314a814eb  5_appendix.tex
e1d28a2426c8595fb5b68f444cda16893f6bc646e031a8a89f9b59c33f0bdb42  arxiv.sty
c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f  ims.bst
78b90dc6827a1bb2820343ec805ca52f80dd1c375b8b5c0b6d899e3913d2e280  main.tex
7ea6926ea3af934f391c414544f00c95c2d1f04376ce6de35bdae3578161d491  reference.bib
```
