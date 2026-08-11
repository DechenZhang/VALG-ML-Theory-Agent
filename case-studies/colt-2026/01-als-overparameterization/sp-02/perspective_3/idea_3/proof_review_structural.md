# Structural Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. `step_003` remains the longest local proof, but its four-unit decomposition is coherent. Its unit attempt 2 changed only LaTeX presentation and the explicit `\mathcal Q^{MN}` event alias, without a second substantive repair or a missing producer-consumer interface. The user's proof-work overload rule therefore does not trigger sketch revision.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Structural Audit

- Goal alignment: Exact. The public theorem preserves the realized CP target, balanced simultaneous gradient descent, the full dimension and rank window, the physical Frobenius loss, and the explicit constant
  \(\epsilon_0(\kappa)=((15/16)\delta_0)^2\kappa_1^{-12}\). It is explicitly conditional on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), retains the possibly zero factor \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\), and makes no unconditional positive-probability claim.
- Dependency closure: All 15 current proof/review pairs match sketch attempt 10 and their current producer attempts, and every review is `ACCEPTED`. The dependency graph is acyclic; every generated event, orientation, span, witness, endpoint, radius, margin, and loss is produced before use. The public dependency references identify the accepted balancing, normalized-Gram, raw-leverage, tail-conversion, finite-limit, displacement, factor-radius, remainder, and physical-transfer results.
- Sketch-step coverage: Complete. The appendix has one mathematical subsection for every step from `step_001` through `step_015`. Its theorem-style unit counts are exactly \(3,3,4,3,4,4,3,4,2,2,3,3,2,2,3\), matching all 45 accepted source units, and every step is used transitively in the main-theorem proof.
- Assembly discipline: Assembly attempt 4 repairs only the public Step 008--010 probability interface. Proposition~\ref{prop:step-009-raw-witness} names both Proposition~\ref{prop:step-008-raw-leverage} and Lemma~\ref{lem:step-008-tail-conversion}, states \(r\ge r_{0,\rm LEV}(\kappa)\), and publicly exports
  \(\mathbb P_{\rm init}(\mathcal E_{\rm deficit}^{\mathsf c}\mid A,B,C)\le r^{-20}\) for every realized triple in \(\mathcal E_{\rm cond}\). Its proof displays the inherited exponential failure and polynomial conversion. Proposition~\ref{prop:step-010-conditional-union} consumes this completed conclusion in the original three-event conditional union, giving exactly \(r^{-20}+3r^{-20}=4r^{-20}\), with no fifth failure term and no independence assumption. No accepted statement, assumption, probability mode, or theorem claim is changed.
- LaTeX bundle structural synchronization: All required content and support files exist, the five canonical sections occur in order, the six stable assumption labels exactly match `setting.md`, and the appendix contains the required final proof. The current compile log postdates the repaired appendix and reports a 51-page output with no unresolved reference, undefined citation, duplicate-label, box, BibTeX, or rerun warning. Seven external citation keys resolve through `reference.bib` and `ims.bst`.
- Main theorem self-containedness: The theorem is concise and reader-facing. It cites Assumptions~\ref{assump:base_conditioning}--\ref{assump:gd_step}, defines \(\epsilon_0(\kappa)\) before use, exposes the allowed \(r_0,C\) dependence, and states its joint-law probability mode, all-time/asymptotic horizon, \(d_{\rm bal}\) convergence metric, physical Frobenius loss, and unresolved conditional factor.
- Theorem-style statement shape: Every public lemma and proposition states its numbered assumptions or named prior theorem-style dependencies before its local conditions and conclusions. The pre-balancing, balanced, and normalized coefficient vectors, their physical-mode pairing, the Gaussian mode arrays and elliptic aliases, the fixed-target projection energy and its domain, and the remaining-initialization conditional law are all declared before first use. The statement-by-statement scan found no free public symbol.
- Explicit-rate and bridge structure: The public theorem states the same technical rate proved in the appendix, so no separate specialization corollary is needed. The rank-window threshold, product-Haar tail conversion, four-event confidence conversion, \(\kappa_1^{12}\) anisotropic loss, \(15/16\) endpoint margin, and final \(\kappa_1^{-12}\) relative-loss dependence are attached to displayed inequalities. The zero-path baseline retains the stronger full initial margin.
- Derivation-over-notation: The public proof preserves the exact normalized-to-raw Gram identities, product-Haar disintegration, fixed-target projection calculation, finite-variation closure, endpoint Taylor expansion, same-target physical projection, and conditional-probability conversion. Normalization remains certificate-only; \(D_r\), \(\widehat D_0\), the coefficient residual, target, and physical loss remain raw. On the full theorem event, Step 013 selects \(W_0\) directly from the existential clause defining \(\mathcal E_{\rm deficit}\); it does not use the canonical Step 009 witness outside the raw-leverage event.
- Appendix local-unit coverage: Every accepted non-atomic local unit was compared against its appendix proof body, together with every cited-result application used by that unit, all boundary and null cases, and all 15 target-step assemblies. All substantive definitions, equation chains, constants, conditioning discharges, compactness and measurability arguments, tail conversions, endpoint absorptions, and same-target transfers are present. No proof obligation is replaced by a summary, provenance note, citation-only shortcut, or instruction to inspect an internal artifact.
- Internal label/ref structure: All 253 labels are unique, every internal reference target resolves, and all citation keys have BibTeX entries. There are no manual equation tags, malformed command fragments, unresolved source aliases, public `claim`/`hypothesis`/`invariant` dependencies, workflow identifiers, audit scaffolding, template placeholders, or mechanical translation debris.

Verdict alignment: `PASS` has `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`.
