# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. Verified assembly transcription break in `latex_template/5_appendix.tex`: theorem-facing control sequences lost their backslashes at lines 362 (`\qquad`), 700 (`\lambda`), 723 (`\leq`), 743 (`\leq`), and 912 (`\qquad`). The accepted step artifacts contain the correct symbols. As assembled, the cap identity and scalar definitions contain spurious letter products, the inner-chart calculation uses `lambda(...)` instead of Lebesgue measure, and the positive-chart proposition and its image-length premise do not state inequalities. The public appendix therefore does not faithfully or self-containedly prove the accepted claims, even though TeX can compile the bare letters as variables.

## Nonblocking Concerns

1. The three chart-probability proofs write an intermediate integral of $\widehat K_i(y)\lambda(s_i(I_i;y))$ without explicitly establishing measurability of the image-length map in $y$. This does not threaten the result: the proved pointwise image bound permits direct domination by the measurable function $\widehat K_i(y)B_i(d,R)|I_i|$. The assembly repair should either use that direct domination or state the elementary measurability argument.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The mean conditional-density caps must yield the three chart probability bounds without an almost-sure uniform cap; the accepted cap, section, and disintegration interfaces support this, but the assembled inner and positive-chart displays are corrupted.
- Standalone theorem attack: The public theorem matches the formalized law class, interval scope, exact chart maximum, fixed-$\eta$ polynomial bound, and separately thresholded witness clause. Its appendix currently fails the standalone-proof test because of the verified transcription break.
- Weakest step-level claim: `step_003` and `step_004`, especially measurable cap representatives, Borel event sections, matching conditioning fields, and integration of mean caps. Singular conditioning marginals, kernel changes on null fibers, and coincident degree-one pivots do not break the accepted derivations.
- Candidate counterexamples or stress cases: $d=1$, $R=1$, zero cap parameters, empty index sets, open and singleton chart pieces, roots at $\pm1$, negative outer parameters, tangencies, multiple roots, ambiently singular witness laws, and dependent middle coordinates were tested. Each is neutralized by a primitive condition or an accepted local result; no theorem or step counterexample remains.
- Explicit-rate stress cases: $\bar\kappa_*=0$, one cap parameter zero, $d=1$, $R=1$, and arbitrary growth of $d,R$ with fixed $\eta$ preserve the displayed termwise comparisons and introduce no hidden constant or mode conversion.
- Appendix self-contained attack surface: The five bare command names at lines 362, 700, 723, 743, and 912 are verified assembly-only deviations from the accepted sources. The optional direct-domination rewrite would also remove the image-length measurability surface.
- Scope or mode upgrade attacks: No unsupported conditional-to-unconditional, expectation-to-tail, interval-to-all-time, norm, or asymptotic upgrade was found. The witness threshold remains disjoint from the general root-hitting chain.
- Remaining risk: After a faithful assembly repair and fresh bundle validation, no adversarial issue presently requires changing an accepted step, the sketch, or the idea.
