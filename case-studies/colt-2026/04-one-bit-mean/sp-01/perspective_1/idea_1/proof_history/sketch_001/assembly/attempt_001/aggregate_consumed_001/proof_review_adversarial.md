# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The statement of Proposition~\(\ref{prop:step-008-target-interface}\) in `latex_template/5_appendix.tex` fails the standalone dependency attack. It attributes the first-moment input to Proposition~\(\ref{prop:step-001-source-localization}\), Lemma~\(\ref{lem:step-001-midpoint}\), and Lemma~\(\ref{lem:step-001-cost}\), but none of those results states \(\mathbb E_D|X-\mu|\leq\sigma\). After removing the proof body, the proposition therefore has no named source for the integrability premise needed to take the residual expectations. The proof body correctly obtains \(\mathbb E_D|X|\leq\sigma+\lambda<\infty\) from Assumption~\(\ref{assump:moment-class}\) and Lemma~\(\ref{lem:step-001-first-moment}\), exactly as the accepted `step_008` proof does. This is an assembly-only dependency-clause defect: repair the public statement to name those actual inputs, Proposition~\(\ref{prop:step-008-conditional-mean}\), Proposition~\(\ref{prop:step-006-residual-interface}\), and Lemma~\(\ref{lem:step-006-zero-displacement}\), without changing an accepted step proof.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The order-optimal corollary was attacked at \(\lambda=\sigma\), \(\epsilon=e^{-1}\sigma\), \(\delta\uparrow1/2\), \(k=2\), and from both sides of \(k=2\). The named Rate Specialization Bridge retains the sole critical logarithm, proves the low-\(k\) exponent, and explicitly absorbs ceilings, confidence shifts, and localization cost.
- Standalone theorem attack: Proposition~\(\ref{prop:step-008-target-interface}\) does not expose its actual first-moment and mean-range premises in its statement, even though its proof uses them. This is the verified break above.
- Weakest step-level claim: The accepted `step_008` conditional mean, factor-48 raw square, and residual interface were recomputed from the level law, pair probability \(1/16\), inverse weight \(16/p_j\), and dither identities. The accepted proof has the correct dependency map; the defect was introduced only in its LaTeX translation.
- Candidate counterexamples or stress cases: A point mass at the center, a point mass with a different generated center, asymmetric rare-tail two-point laws, exact grid and stable-band boundaries, \(J=1\), empty auxiliary groups, and arbitrarily small positive \(p_j\) do not break the accepted identities or activation ledgers.
- Explicit-rate stress cases: \(k=2\) retains exactly one \(\log(\sigma/\epsilon)\); for \(1<k<2\), \(\sigma^kH^{2-k}/\epsilon^2\) specializes to \(O_k((\sigma/\epsilon)^{k/(k-1)})\). Hidden constants remain functions of fixed \(k\) only.
- Appendix self-contained attack surface: All tested local derivations remain present, but the misattributed dependency clause prevents one theorem-style statement from being self-contained after its surrounding proof is removed.
- Scope or mode upgrade attacks: `step_012` conditions on the complete localization transcript, and `step_013` integrates its indicator-valued bound before taking the supremum over \(D\). The fixed-horizon conditional-to-unconditional conversion is valid and no stopping-time or uniform-in-time claim is introduced.
- Remaining risk: After the one dependency-clause repair, the tested theorem, step, boundary, baseline, probability-mode, and rate attacks leave no acceptance-blocking adversarial issue.

## Reviewed Artifact Hashes

- Core: `setting.md` `b6fc67fb2a0319480cb1ab6313489a2ce01e8bf888d25a8813f2f07f0d5d3190`; `proof_sketch.md` `1ae6f29f2b9ceab5bcba7dfab508d71bc045f0822e083dbfcf5aec66f873633c`; `proof_sketch_review.md` `f44fe903f485c1783ea0c7fc3f9f95e337c79a43ff8749d52ee92a2b56131f23`; `global_proof.md` `42f61c1c7e3353966d6a6c069c0cf8b4e457b7ab9edd3e3f090e3859d1519f38`; `global_proof_review.md` `3bacc907ecf192208b1e4d5d0ff2b0c6924427460b4f0fccd1094e4939cf78d8`; `assembly_report.md` `d85e7d3a2d5169d164a8c87016b2c9584d4e5b703fb9f2123f6f18bda4c4bc7e`.
- Bundle: `1_intro.tex` `2c1634202a777f0d5a05758f03aeedcf118d3a0bad401d278d1350335c29ee82`; `2_preliminary.tex` `c7a85101f33a52fb1cdfb995c22448e51ed0c1dd885369df7ad56672ba2fd75b`; `3_main.tex` `404489917d34f11c70a8972a7a7d6d5f0e4c704f526e0faa69d506bdf91ea1d3`; `4_proof_sketch.tex` `e02a5fe259abc053a63347c2d9ea6869126a1619719d2b139cbf303b77097ac3`; `5_appendix.tex` `87101a2593570022116ffef8a42f27f918fa3a8ea970dbb7f046eeaa278ff96a`; `main.tex` `b002817db506e413f880f1fea80e70d97960f233db6eb2a0489a1570636a7f41`; `arxiv.sty` `e1d28a2426c8595fb5b68f444cda16893f6bc646e031a8a89f9b59c33f0bdb42`; `ims.bst` `c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f`; `reference.bib` `c6f128fa3a88226c29204fc5a6b52aa80840ce1ea0ad109bcc358db3e5534520`.
- Step pairs 001-004, proof/review: `dc22a361441e6cdbc4c54537ca39e3cc38b3071069e3f089d9ad758bb17c379b`/`67dada641fad3ab0cf52d7a5aed94d3f647fd2d014ab235fdcf06f03b2f305b7`; `f22f51f16d14638bd26f5f83662c33620f142a3b3d1bd167cbb32b982d509c58`/`a549919aa08482df95acaf2b6551b14f1da4e0ae2c8301f30a06a654062229e2`; `3004fae27e0cb92d391b296ae21afa8e38f50daaebda5c8b9988d59be1fa2ddf`/`b28d7b3b77efd48df96d29937b8b1029295c8f2accf2982898574ea4129690de`; `5a3e58510ac0aae757c434ebc510adc63833b9e2f26fd8d1ad27f4bb23c81153`/`e1cb7b1487f0fc30985da9c01fd7e6424a1805f54d210ba3bd400bf733093d25`.
- Step pairs 005-008, proof/review: `a11175474544ac3d7c1045a381d9825baa441cdd6a7599bbc74d4659acba9239`/`11deb0dfc65ff1c5c6cc05af4dd9ad00cafbfd2e8db286b1938aa2c7b19cfeb6`; `8b9032652aff80e875da03cecdc2e04cf5757618826735a131911d400f55ab58`/`df17f07d57218738adde9fb53eeb95f98fb6f971b8b6bcd11584f30aaf0f26b4`; `ae20b081db5273b80dd726d07fb34b0f24db20bebd007c973bea2b4a79276498`/`6bba1a0d83b472a6d4dfea84753e84dd9bf12264d1c2c0695071db6f0d3f263d`; `13363eff6ae9349ab6ce6e8d8ad4a7ff0b7e380671405b20f1944f45214a66d5`/`7a52062f02688f0eb30319a5fd1c944642705d58df96914c99f94b727c28a8c1`.
- Step pairs 009-012, proof/review: `50bda5320b626ee2c71b4c76c6c575947766acf46cad161b06b5b528ce7cf617`/`e1d0ceeeebcb087820fbecc5421cf031228da4f346fc5e60f67d7030b9511fe7`; `ee49814577413c1eeef0f3e2e8e6e04fa786f49673890edadb01bf3ece3fa84e`/`48f794651dbcfea8be44ccc3841f94cc62316bd76700229e30e0306554717cf0`; `77fac490aa0b200fd40fde9473cbf53f6d0cf244a8fa28ac940b80b3d0e45096`/`b57a12b63b69c642288bb23dfb682212378f9b8344fc0f421147e62dd54ca57c`; `708c2b8c20b8cd3dc61b27567e258cbd584fa94e790a31c88dbbcf6bb6e9249d`/`08c5a86942807c2b00f08752e11a5016f2fb519d9ef7b9415666750487a62f76`.
- Step pairs 013-014, proof/review: `e1dca19c8cf7905483c6fda7dfa19460e76ca013b9a6e537100a9f2c6a2c4bf2`/`98e9c4a630e13d858ccc77ae29b094df546d8635f3ff9f2fc17435acdbebd4dc` (Unit attempt 2); `3414246c7c99bb7e1449280c46bc42f78f154f636657b8ed1dc7ae229a03afa0`/`1b54807394c3c643d7e7ac1230eeaa42594ff3a8e6de8a6f2593e49dec7310dc`.
