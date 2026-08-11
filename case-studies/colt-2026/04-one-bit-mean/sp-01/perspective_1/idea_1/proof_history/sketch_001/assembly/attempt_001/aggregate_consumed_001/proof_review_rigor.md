# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The statement of Proposition~\(\ref{prop:step-008-target-interface}\) in `latex_template/5_appendix.tex` is not self-contained with respect to the derivation it asserts. It attributes the needed first-moment conclusion to Proposition~\(\ref{prop:step-001-source-localization}\), Lemma~\(\ref{lem:step-001-midpoint}\), and Lemma~\(\ref{lem:step-001-cost}\), none of which states \(\mathbb E_D|X-\mu|\leq\sigma\). The proof correctly uses Lemma~\(\ref{lem:step-001-first-moment}\), together with the mean-range part of Assumption~\(\ref{assump:moment-class}\), to prove \(\mathbb E_D|X|<\infty\) before invoking Proposition~\(\ref{prop:step-006-residual-interface}\). Repair only the assembled proposition's dependency clause so that it names Assumption~\(\ref{assump:moment-class}\), Lemma~\(\ref{lem:step-001-first-moment}\), and the actual conditional-mean, residual-interface, and zero-displacement results used by its proof. No accepted proof-step derivation needs to change.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: Direct source-to-appendix comparison covered all 56 accepted local units and all 14 target-step assemblies. The appendix preserves the accepted equations, inequalities, substitutions, cited-result discharges, constants, and case analyses. No mathematical derivation error was found.
- Statement self-containedness: Blocking only at Proposition~\(\ref{prop:step-008-target-interface}\), whose dependency clause misidentifies the result that supplies the first moment. Its proof body and every downstream use are mathematically correct.
- Main theorem constants and notation: The technical theorem defines its \(k\)-only constants, \(V_k\), \(s\), and \(q\) before use. The reader-facing corollary states the public rate, fixed-horizon one-bit protocol, unconditional probability mode, absolute-error norm, and \(k\)-only hidden-constant dependence.
- Derivation-over-notation: Appendix helpers such as \(S_{\rm c}\), \(V_k\), and \(g_k\) expand to displayed setting quantities, and the proof retains the derivations establishing their bounds. No helper notation substitutes for a missing calculation.
- Explicit-rate contract: Proposition~\(\ref{prop:step-014-rate-bridge}\) supplies the public Rate Specialization Bridge. It checks the auxiliary choices, all three variance regimes, both ceilings, confidence-log conversion, localization-cost absorption, probability mode, and final \(k\)-only dependence through explicit inequalities.
- Appendix full derivations: The accepted proof sources and assembled appendix were compared directly rather than by environment counts. The assembled proof retains the localization source mapping, conditional raw-square calculation, fine and coarse ledgers, residual bias bounds, median calculation, tower conversion, and rate closure.
- Quantifiers and constants: Uniformity over the full class \(\mathcal D(k,\lambda,\sigma)\), fixed-\(k\) dependence, and independence from \(D,c,J,H\), transcripts, and sample realizations are preserved. The independently checked factors include \(48\), \(3072\), the three coarse constants, and the exponent \(k/(k-1)\).
- Probability or convergence modes: The proof correctly passes from the full localization sigma-field to the observable transcript, proves conditional iid concentration, integrates the indicator-valued localized certificate by the tower identity, and combines \(\delta/4+\delta/4=\delta/2\leq\delta\). No unsupported conditional-to-unconditional or pointwise-to-uniform upgrade occurs.
- Boundary cases: The proof handles \(\lambda=\sigma\) and the exact zero-query branch, \(\epsilon=e^{-1}\sigma\), \(k=2\) with one accuracy logarithm, \(\delta\uparrow1/2\), empty auxiliary groups, threshold and grid equalities, \(X=c\), zero conditional variance, and the point-mass fixed-point specialization.
- Hidden subclaims: No unreviewed mathematical subclaim or compressed derivation remains. The only acceptance issue is the assembled theorem-statement provenance mismatch identified above. Tectonic compilation completed with no undefined references or citations; the frozen assembly-report and compile-entry hashes remained unchanged.
