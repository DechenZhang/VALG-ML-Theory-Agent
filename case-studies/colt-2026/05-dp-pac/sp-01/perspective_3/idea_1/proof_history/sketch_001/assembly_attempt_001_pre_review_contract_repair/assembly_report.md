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

- Assembly identity: sketch attempt 1; assembly attempt 1.
- Accepted-input bindings: `setting.md` SHA-256
  `f442ae0c468201e0c204c72dd07cb9cc2a2d8bbaa6ba286120dfcb8d9749cb17`;
  `proof_sketch.md` SHA-256
  `56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1`;
  `proof_sketch_review.md` SHA-256
  `ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b`.
- Source coverage: all sixteen current `proof.md` artifacts are `COMPLETE`,
  all sixteen bound `review.md` artifacts are `ACCEPTED`, and every accepted
  review hash matches its current proof artifact. Steps `step_001` through
  `step_016` are represented, in order, by
  `appendix_step_001.tex` through `appendix_step_016.tex` and by sixteen
  matching subsections in `5_appendix.tex`. The final subsection proves the
  main theorem by citing the assembled theorem-style results. No
  `global_proof.md` content was used as evidence.
- Translation notes: the source-local Step 10 invariant is exposed publicly
  as `Lemma~\ref{lem:step-010-one-use}`. Two harmless Step 6 notation and
  delimiter defects were corrected only in their public LaTeX translation;
  no accepted source artifact was edited and no mathematical claim changed.
- Public-source checks: exactly three numbered assumptions retain their
  stable setting labels; all internal labels are unique; every `ref` and
  `eqref` target exists; the sole external citation has a BibTeX entry; no
  forbidden public `claim`, `hypothesis`, or `invariant` environment,
  workflow path, audit scaffold, Markdown syntax, control character, template
  placeholder, or build product remains in `latex_template/`.
- Compilation: the final cached Tectonic run completed TeX, BibTeX, and the
  rerun and wrote `<TEMP_ROOT>/proof-assembly-p3-c2WH7W/main.xdv`. Its log contains
  no TeX errors, undefined or multiply defined references, undefined
  citations, or overfull/underfull boxes. The only emitted warnings are
  invalid-UTF-8 metadata bytes in cached external `algorithm.sty` and
  `algorithmic.sty`. PDF conversion is unavailable in this cached environment
  because `xdvipdfmx` lacks `cmmib8.pfb`; this is an external font-cache
  limitation rather than a TeX-source failure.
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
115886a85004bbe8644f8240ba9e484d5d33e46290bcb6925e746e66b967aa66  5_appendix.tex
6ae5c51440e5724648edc2dca28728c6b88d3708ccd015608a00eeafbfe8af36  appendix_step_001.tex
89f663455fe0e4e1912229f473b49c0752e45c457efaa252cbad2ee46da3c1f1  appendix_step_002.tex
2fc975dedc948046331e38ebd28e1d32fcc7b4fb5027f69939aedd0c6b3ec081  appendix_step_003.tex
975d18934047accdb19f52f29176fd884e00cb15c8b2cbf80c41e7b33a598d80  appendix_step_004.tex
2a8bae14c7d16d6591d7163feec28b7304211cc2928b77103d47cdb4138e832d  appendix_step_005.tex
c21c64fec80e4eb95f0b5139cf6d4efef2b7d143ca9ed4d86e596455cf263614  appendix_step_006.tex
1ad417a1749fdd3bce92e1bdb456f49298f3ac0aab312d88dc6d1619ecc2fced  appendix_step_007.tex
2fa3f2a552c761b596cba2f58db262d4bfa1f74523ca9f59be8f44785ac04800  appendix_step_008.tex
10d836a3a338d55b3d710d2c44a234724b8e353f38d552a9e6c053661bf3e146  appendix_step_009.tex
249b889a091126ec13604ced81bbdf25d00227e244fa9c95cf59cebcaa248170  appendix_step_010.tex
b273155aa310369bc3becae81106c569a437687c69adcafc1b8aecbac721ac64  appendix_step_011.tex
accc082a9ec3706b94ec03e02b7175d31af05e51b2819ef36fb1c8936936e09d  appendix_step_012.tex
2dbfa99d65c8697fc5fd82a84f057dc7f5e1f6c4dddcbcc4fa994d6226271153  appendix_step_013.tex
bae0414b8b3a5eb20e9f0c87fdf8b576b876f9d2d5f6471f2419682110dd5ceb  appendix_step_014.tex
30b06b24c57984649a392af2d9a724ee203a44e8d30206f216873ca250a6b554  appendix_step_015.tex
0586a8dfeb64a612d79ab8f8779f4aa76b5f3761e9bf5f4b837eb46dde95a68d  appendix_step_016.tex
e1d28a2426c8595fb5b68f444cda16893f6bc646e031a8a89f9b59c33f0bdb42  arxiv.sty
c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f  ims.bst
0bce82173d85b32e6c17054853dcff343bd469209202d03315b2e7e4bab42f51  main.tex
7ea6926ea3af934f391c414544f00c95c2d1f04376ce6de35bdae3578161d491  reference.bib
```
