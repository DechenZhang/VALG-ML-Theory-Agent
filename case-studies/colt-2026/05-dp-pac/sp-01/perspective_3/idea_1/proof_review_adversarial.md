# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The successful cached-Tectonic build emitted environment-level invalid-UTF-8 metadata warnings from external `algorithm` packages and harmless Wasy font-shape substitutions. The final log has no document error, unresolved or multiply defined reference or citation, duplicate destination, or overfull/underfull box.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: The most attackable implication is the pointwise \(n\ge a k\log_2^*N\) bound, especially the order of quantifiers in the one-block hard distribution. Step 004 proves an attained strict value over the compact exact finite-kernel model, applies the minimax separation in the required direction, and then uses an exact Caratheodory reduction to obtain one finite public prior \(\mu_{N,M}\) before and uniformly against every private kernel. The universal kernel class includes randomized, improper, prior-aware, nonmonotone, and tag-asymmetric learner behavior; the proof never substitutes the weaker learner-dependent order \(\forall K\,\exists\mu_K\).
- Standalone theorem attack: The theorem is self-contained relative to the setup and preliminary section and assumes only the three primitive candidate-regime, central replacement-DP, and distribution-free realizable-PAC assumptions. It fixes constants before all candidate variables, preserves the full conjunction \(\delta\le\min\{1/(n\log(n+1)),c_\delta/(M^2\log(M+1))\}\), uses the same deterministic sample size throughout, and quantifies over the full improper output space. Its source direction is a lower bound, its diagonal conclusion is explicitly `material_partial`, and the text does not upgrade it to the unresolved exponential, log-cardinality, universal-upper-bound, or characterization milestones.
- Weakest step-level claim: Steps 010--12 form the narrowest interface: the simulator is a total kernel on every labeled input and every seed, including \(U=0\), \(U=M\), and overflow; its occurrence map uses each source record in at most one synthesized row; and its overflow output is input-independent. For arbitrary neighboring feature-label replacements, a common nonoverflow seed therefore changes zero or one synthesized row, so one application of replacement DP gives exactly one \(\delta\); mixing over the common seed and postprocessing do not compose that charge. Step 011 couples actual and ideal experiments without conditioning on overflow, Step 013 subtracts the overflow probability exactly once, and Step 014 extracts a deterministic fixed instance before invoking the pointwise PAC ceiling, so the strict lower and upper risks refer to literally the same instance.
- Candidate counterexamples or stress cases: Fresh attacks covered endpoint thresholds \(t=1,N+1\), point masses and other degenerate block laws, arbitrary randomized nonmonotone hypotheses, prior-aware and tag-asymmetric code, corrupted neighboring labels, changed unused rows, repeated occurrence requests, \(n<k\), \(k=2,3\), \(M=8\), \(U=0\), \(U=M\), and overflow. Hidden-coordinate independence is imposed on the full sample/output kernel rather than inferred from learner symmetry, so all such arbitrary learner behaviors retain the exact average-block risk identity. Totality, one-use incidence, the binomial usage law, and the early-overflow branch cover every tested boundary without an undefined conditional distribution.
- Explicit-rate stress cases: The audit retained the exact budget \(M=\max\{8,\lceil4n/k\rceil\}\), both candidate-\(\delta\) conjuncts, the source privacy-cap direction, the strict ceiling/floor-eight split, and constants independent of \(k,N,n,\varepsilon,\delta,r\). The tower proof checks \(r=2\) directly, also covers \(r=3\), proves \(\log_2^*T_r=r\), \(\operatorname{LD}(C_{r,T_r})=rT_{r-1}\), and \(r-1\le\log_2^*\operatorname{LD}\le r\). Indices below \(r_0\) receive only the unconditional structural identities; the lower-bound specialization is correctly restricted to \(r\ge r_0\), so no pre-threshold theorem claim is smuggled in.
- Appendix self-contained attack surface: Every live accepted `step_001` through `step_016` proof/review pair was compared with its same-order appendix subsection, including all local lemmas, cited-result assumption discharges, boundary branches, and target-step assemblies; no `proof_history` artifact was used as current evidence. The accepted sketch and global diagnostic interfaces close, and the final appendix subsection derives every main-theorem clause from the named results. All binding hashes match, the canonical directory contains exactly nine files, both support files match the shared templates, a fresh scan finds no bare `qquad`, malformed reference command, duplicate label, placeholder, or workflow scaffold, and the two repaired locations now contain valid `\qquad` commands. An isolated byte-identical nine-file copy completed TeX, BibTeX, reruns, and PDF generation with no unresolved references or citations.
- Scope or mode upgrade attacks: The ALMM v3 source statement, improper-output scope, threshold orientation/endpoint transport, factor-nine domain reduction, and explicit privacy-cap direction were checked against the cited source. Internally, the product sample law stays conditional on the realized instance vector, PAC is applied pointwise before prior averaging, high-probability PAC is converted to expectation only on a fixed instance, overflow is charged once, and privacy is transferred through one fixed-seed adjacency map plus input-independent mixing and postprocessing. The diagonal comparison proves an unbounded improvement over the additive baseline but labels the result `material_partial` and explicitly leaves both \(\operatorname{VC}2^{\log_2^*\operatorname{LD}}\) and \(\log|C|\) scales unresolved.
- Remaining risk: No acceptance-blocking mathematical, quantifier, source-fidelity, assembly-preservation, citation, boundary, or compilation defect survived the audit. Residual dependence on the explicitly cited one-block theorem is ordinary external-theorem risk and was reduced by source-level statement and direction checking; the remaining TeX warnings are environment metadata/font substitutions only.
