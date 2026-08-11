# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public step-009/step-010 probability interface drops the named tail-conversion dependency. Proposition~\ref{prop:step-008-raw-leverage} proves conditional failure only at most
   \[
     8\exp\!\left(-\frac{c_Hr}{16\kappa_1^{24}}\right),
   \]
   while Lemma~\ref{lem:step-008-tail-conversion} is the separate result that converts this quantity to \(r^{-20}\) under its explicit threshold. Nevertheless, equation~\eqref{eq:step-009-9} attributes the \(r^{-20}\) bound only to Proposition~\ref{prop:step-008-raw-leverage}; Proposition~\ref{prop:step-009-raw-witness} does not list the tail-conversion lemma and does not state the conditional failure bound in its public conclusion; and Proposition~\ref{prop:step-010-conditional-union} then lists only Proposition~\ref{prop:step-009-raw-witness} as the deficit-event producer while consuming failure \(r^{-20}\). Thus the named public theorem-style dependency chain does not establish the rate used in the four-event union, even though the accepted step-008 and step-009 source artifacts contain the required valid ingredients. Repair the assembly by explicitly combining Proposition~\ref{prop:step-008-raw-leverage} with Lemma~\ref{lem:step-008-tail-conversion} where equation~\eqref{eq:step-009-9} is derived, exporting the conditional \(r^{-20}\) deficit bound in a named theorem-style conclusion, and citing that complete producer from step 010.

## Nonblocking Concerns

1. The theorem remains explicitly conditional on \(\mathcal C_{\rm path}\). If \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})=0\), the final lower bound is zero. This is the declared source-level certificate-probability gap, not a defect in the conditional theorem.

2. The user's overload rule does not require another sketch revision. Current sketch-attempt-10 `step_003` unit attempt 2 repaired presentation only, and no current step has accumulated repeated substantive local proof failures.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The initialization confidence \(\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\) depends on three conditional failures of size \(r^{-20}\). The Gram and size producers export that rate correctly; the deficit producer loses the separate exponential-to-polynomial dependency during assembly, so the public chain currently supports only the exponential raw-leverage tail at that link.
- Standalone theorem attack: The setup, theorem, proof sketch, endpoint argument, and final conditional accounting otherwise state the same conditional result for the actual balanced-GD trajectory and physical Frobenius loss. Removing internal workflow artifacts exposes the step-009 dependency loss above: the accepted source correctly names both step-008 units, but the paper-facing proposition does not.
- Weakest step-level claim: The accepted step-009 mathematics survives stress testing. Raw span membership, Pythagoras, nonzero normal energy, witness normalization, and the deterministic implication from raw leverage to \(\mathcal E_{\rm deficit}\) are correct. The break is only the assembly's incomplete public export of the inherited probability rate, so no proof-step or sketch repair is needed.
- Candidate counterexamples or stress cases: Maximal \(k=\lfloor r^{5/4}\rfloor\), worst allowed ellipticity, \(d=0\), equality in the leverage bound, zero model columns, zero displacement, zero path, maximal allowed path, equality in the initial deficit, worst-sign Taylor remainder, and zero conditional path probability do not break the accepted derivations. Before applying the omitted tail-conversion lemma, however, Proposition~\ref{prop:step-008-raw-leverage} literally supplies only the displayed exponential failure and cannot by itself justify equation~\eqref{eq:step-009-9}.
- Explicit-rate stress cases: The product-Haar tail, \(\tau_\kappa=1/(4\kappa_1^{12})\), rank-window comparison, \(\kappa_1^{12}\) elliptic loss, \(15/16\) endpoint margin, and \(\kappa_1^{-12}\) relative-loss exponent all check out. The sole rate-interface failure is omission of Lemma~\ref{lem:step-008-tail-conversion} and its threshold from the named producer-consumer path for the deficit failure.
- Appendix self-contained attack surface: The bundle contains all accepted local mathematical units, has unique labels and resolved internal references, and all seven citation keys resolve. Existing Tectonic artifacts report a successful build with no unresolved-reference, citation, duplicate-label, box, or bibliography warning; no TeX compiler is installed in the current shell for an additional rebuild. Syntactic resolution does not cure the semantic dependency omission in step 009.
- Scope or mode upgrade attacks: No additional scope or mode upgrade survives. Smoothing and initialization remain under the stated joint law, endpoint claims remain deterministic on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), finite variation remains an explicit conditional certificate, and the final conditional factor is retained without an independence claim.
- Remaining risk: After the assembly-level rate dependency is restored, the only substantive limitation is the explicitly retained absence of a positive uniform lower bound for \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\); the branch therefore remains conditional rather than a full solution of the original open problem.
