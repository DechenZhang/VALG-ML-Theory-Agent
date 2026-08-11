# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public appendix contains assembly-introduced malformed or undefined notation in theorem statements and proof text. In particular, `5_appendix.tex` writes `(widetilde P_l)_(l \in [K])` for the already defined family `$(\widetilde P_\ell)_{\ell\in[K]}$`, `(P_x)_(x \in J)` for `$(P_x)_{x\in J}$`, `S_{n,N}` for the defined `\mathsf S_{n,N}`, `B_{\rm tilde}` for `\widetilde B`, and `delta_n` for `\delta_n`. The first corruption is in a public proposition statement, and the others occur in theorem-critical assembly prose. Thus those passages do not satisfy the notation-provenance and paper-ready LaTeX contracts even though the corresponding accepted step artifacts define and use the intended objects correctly. This is a transcription-only assembly defect: restoring the accepted notation requires no change to a step claim or derivation.

## Nonblocking Concerns

1. Five proof environments contain an explicit `\square` immediately before `\end{proof}`, which produces redundant end-of-proof markers but does not alter an argument.
2. Two occurrences of `\operatorname{ceil}` and several imprecise references to objects as having been defined in the setup section reduce presentation quality but leave their surrounding definitions and deductions recoverable.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The final quantitative specialization is the most brittle link because it must use the hard-prior lower bound and the learner-induced competitor at the identical tuple `(n,N,\varepsilon_0,\delta_m)` while preserving the universal quantifier order. Substituting the exact accepted step conclusions verifies that link; the remaining defect is only the malformed appendix notation identified above.
- Standalone theorem attack: The main theorem preserves the formalized arbitrary-output, approximate-DP, improper-PAC lower-bound target and exposes the fixed constants before the quantified class, domain, learner, and privacy parameters. No stronger theorem claim or hidden derived assumption was found. The supporting appendix nevertheless fails standalone paper-readiness where its public mathematical prose introduces strings that are not the defined symbols.
- Weakest step-level claim: Step 8's conditional ancillarity and exchangeability bridge was attacked by conditioning on the grand-pool construction, the hidden arm, and the overflow variable. The indexed next-unused-cell construction gives the required ordered product law; on `R\le n`, the hidden index remains independent of the ideal learner output, while `R=n` is correctly retained as success and only `R>n` is charged as overflow.
- Candidate counterexamples or stress cases: The audit tested the endpoint layouts `i=1` and `i=M`, odd `M=9n`, central omitted-point ranks `0` and `M`, off-diagonal binary-tree representatives, one-record neighboring data sets, bounded-`M` log-star inversion, `R=n`, and the one-chain case `k=1`. Each attempted counterexample is explicitly handled by the accepted derivations.
- Explicit-rate stress cases: The constants were checked through the parity-safe endpoint gap, the margin `a_0/M`, product privacy `(D\varepsilon,D\delta)`, finite log-star inversion, overflow estimate, privacy denominator, and final scalar specialization. The proof keeps the same prior, kernel, privacy pair, and risk target in the hard-prior and utility inequalities, and the `k=1` specialization recovers the stated baseline. No rate or hidden-dependence break was found.
- Appendix self-contained attack surface: All accepted non-atomic units and target-step assemblies have substantive public counterparts; the source tagged derivations are present, internal labels and citations resolve, and no workflow scaffolding or forbidden public claim-like environments were found. The concrete notation corruptions in Blocking Issue 1 remain an acceptance-blocking assembly surface because a reader cannot identify those strings from the public notation as written.
- Scope or mode upgrade attacks: Restriction from arbitrary output to finite cubes, with-replacement neighboring-sample privacy, product-DP composition, adaptive binary-leaf selection, finite minimax, conditional-to-unconditional coupling, and PAC utility were checked at their exact scopes. No illicit properness assumption, probability-mode upgrade, uniformity upgrade, or change of privacy parameters survived the audit.
- Remaining risk: No theorem-level or step-level mathematical break remains after the documented stress tests. A fresh assembly should correct the notation and redundant proof markers, then rerun the clean-room TeX/BibTeX/reference checks to confirm that the repaired public bundle is unchanged mathematically.
