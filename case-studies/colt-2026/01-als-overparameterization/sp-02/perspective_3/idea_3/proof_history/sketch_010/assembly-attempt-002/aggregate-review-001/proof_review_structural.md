# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The repaired public appendix is still not self-contained because four source-level notation declarations were omitted while their symbols remain proof-critical. Lemma~\ref{lem:step-002-coefficient-gaussianization} uses \(\widetilde\zeta_i^M\), \(\zeta_i^M\), and \(\bar\zeta_i^M\) without first defining them from the pre-balancing columns, balanced coefficient vectors, and normalization. Proposition~\ref{prop:step-006-product-shape} uses \(Z_A,Z_B,Z_C\) without defining \(Z_M=[z_1^M\ \cdots\ z_k^M]\), and Proposition~\ref{prop:step-006-exact-equivariance} switches to \(H_a,H_b,H_c\) without declaring \(H_a:=H_A\), \(H_b:=H_B\), and \(H_c:=H_C\). The step-008 transfer derivation repeatedly uses \(h(Q;E,X)\) without the accepted definition \(\|P_{QE}X\|_F^2/\|X\|_F^2\). Finally, the step-009 conditional tail calculation uses \(\mathbb P_{\rm init}(\cdot\mid A,B,C)\) without declaring it as the remaining-initialization conditional law. Restore these explicit public definitions in the relevant theorem statements or proofs, preserving the accepted mathematics and dependency interfaces.

## Nonblocking Concerns

1. `step_003` remains long, but its four-unit decomposition is coherent. Its second producer attempt repaired only presentation and an event alias, without changing any mathematical unit or exported interface; the user's proof-work overload rule therefore does not trigger sketch revision.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: Exact conditional-goal alignment passes. The public theorem preserves the realized CP target, balanced simultaneous gradient descent, full-rank and dimension window, physical Frobenius loss, explicit positive endpoint floor, and the possibly zero factor \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\). It remains explicitly conditional and does not claim unconditional progress.
- Dependency closure: All 15 current proof/review pairs identify sketch attempt 10 and their current producer attempts; every review is `ACCEPTED`. The dependency graph is acyclic, all consumers follow accepted producers, and the repaired step-004, step-012, and step-013 public references now point to the correct named results.
- Sketch-step coverage: Exhaustive. The appendix contains one subsection for each of `step_001` through `step_015`, with 45 theorem-style units matching all 45 accepted source units, and every step is used transitively in the main-theorem chain.
- Assembly discipline: No independent unreviewed lemma, stronger claim, altered step statement, or hidden assumption was introduced. Every accepted `Target-Step Assembly` is represented by concluding proof text. The sole defect is omission of the source notation declarations listed above.
- LaTeX bundle structural synchronization: All required content and support files exist. The fresh compilation reports 50 pages with no warnings; environments balance, labels are unique, and references and all seven BibTeX-backed citations resolve. Source aliases, manual equation tags, standalone auxiliary audit blocks, and stale dependency references from assembly attempt 1 have been removed.
- Main theorem self-containedness: The main theorem is concise and reader-facing, cites Assumptions~1--6, defines \(\epsilon_0(\kappa)\) inline, exposes allowed constant dependence, probability mode, horizon mode, norm mode, and the unresolved conditional path factor, and does not depend on appendix-local symbols in its statement.
- Theorem-style statement shape: Statements expose numbered assumptions and named theorem-style dependencies before local conditions and conclusions. The only remaining self-containment failure is the undeclared notation inside the affected appendix statements and proofs.
- Explicit-rate and bridge structure: The public theorem and appendix prove the same technical rate, so no separate specialization bridge is needed. Thresholds, failure conversions, the \(\kappa_1^{12}\) anisotropic transfer loss, the endpoint \(15/16\) margin, and the final \(\kappa_1^{-12}\) relative-loss dependence remain explicit.
- Derivation-over-notation: All displayed definitions other than the four omitted declaration families, inequality chains, constants, conditional-probability conversions, boundary cases, and raw-to-physical target transfers are preserved. Normalization remains certificate-only; \(D_r\), \(\widehat D_0\), the coefficient residual, and the physical target and loss remain raw.
- Appendix local-unit coverage: Every accepted non-atomic local unit, cited-result application, boundary check, and target assembly was compared against its appendix proof body. All 45 substantive source derivations remain present; no proof obligation has been replaced by summary or provenance narration.
- Internal label/ref structure: The repaired bundle has unique theorem and equation labels, resolved named-result dependencies, and no workflow identifiers used as mathematical authority. The notation declarations in the blocking issue compile silently because TeX does not detect free mathematical symbols, but they must be restored for paper-ready self-containment.
