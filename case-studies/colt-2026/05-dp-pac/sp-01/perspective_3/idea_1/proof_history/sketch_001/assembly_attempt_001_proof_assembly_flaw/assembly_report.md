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

- Assembly identity: sketch attempt 1; assembly attempt 1. This is a
  mechanical pre-review output-contract repair within the same producer
  attempt and does not consume another proof-producer attempt.
- Accepted-input bindings: the current `setting.md`, `proof_sketch.md`, and
  `proof_sketch_review.md` bindings were reverified against the accepted
  sixteen-step proof/review set before this repair.
- Source coverage: all sixteen current `proof.md` artifacts are `COMPLETE`,
  all sixteen bound `review.md` artifacts are `ACCEPTED`, and every accepted
  review hash matches its current proof artifact. The complete translated
  bodies for `step_001` through `step_016` occur exactly once, in source
  order, directly inside the sixteen matching subsections of canonical
  `5_appendix.tex`; there are no auxiliary appendix inputs. The final
  subsection proves the main theorem by citing the assembled theorem-style
  results. No `global_proof.md` content was used as evidence.
- Translation notes: the source-local Step 10 invariant is exposed publicly
  as `Lemma~\ref{lem:step-010-one-use}`. Two harmless Step 6 notation and
  delimiter defects were corrected only in their public LaTeX translation;
  no accepted source artifact was edited and no mathematical claim changed.
- Public-source checks: exactly three numbered assumptions retain their
  stable setting labels; all internal labels are unique; every `ref` and
  `eqref` target exists; the sole external citation has a BibTeX entry; no
  forbidden public `claim`, `hypothesis`, or `invariant` environment,
  workflow path, audit scaffold, Markdown syntax, control character, template
  placeholder, or build product remains in `latex_template/`. The directory
  contains exactly the nine contract-authorized canonical files.
- Compilation: the final cached Tectonic run completed TeX, BibTeX, and the
  required reruns and wrote
  `<TEMP_ROOT>/proof-assembly-p3-contract-rGuH6J/main.xdv` from a fresh directory
  containing only the nine canonical sources. The final log contains no TeX
  errors, undefined or multiply defined references, undefined citations, or
  overfull/underfull boxes. The only emitted warnings are invalid-UTF-8
  metadata bytes in cached external `algorithm.sty` and `algorithmic.sty`.
  PDF conversion is unavailable in this cached environment because
  `xdvipdfmx` lacks `cmmib8.pfb`; this is an external font-cache limitation
  rather than a TeX-source failure.
- Template support: `arxiv.sty` and `ims.bst` are byte-identical to the shared
  template copies. `main.tex` keeps `arxiv.sty` unchanged and suppresses only
  its obsolete `subfigure` request while loading the style, avoiding the
  style's conflict with `subcaption`.

Final SHA-256 manifest for `latex_template/`:

```text
6330b92d68852597d943b6b833e2230e318b97444c884749c8a2ca1e34f7d7cf  1_intro.tex
56b4a4e418c3b410fc2c3dbf622e15e7cb735d2d2eac9902b3be43c80b6c58ca  2_preliminary.tex
710b28d682b3ee901806630c98271bc4d487937a74bbdd2d5e1df94b23db5a3c  3_main.tex
cd91637bdda9b34b59ae744c3c5adc2686146315e1d467be99e95a3eaff2eec2  4_proof_sketch.tex
331aa87c385a5d748d03b223609b2f22ea1d2430bf20da6d266ebf1204901d2d  5_appendix.tex
e1d28a2426c8595fb5b68f444cda16893f6bc646e031a8a89f9b59c33f0bdb42  arxiv.sty
c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f  ims.bst
0bce82173d85b32e6c17054853dcff343bd469209202d03315b2e7e4bab42f51  main.tex
7ea6926ea3af934f391c414544f00c95c2d1f04376ce6de35bdae3578161d491  reference.bib
```
