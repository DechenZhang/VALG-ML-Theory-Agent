# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The assembled event-split proof uses joint measurability of the finite-horizon learner loss without preserving the accepted derivation that proves it. In `latex_template/5_appendix.tex:761`--`764`, the text lists forward operations, the Borel kink selector, logistic differentiation, back-propagation, the tie map, and the finite risk sum and then immediately concludes that the loss `Z(D,h)` is jointly measurable. This omits the theorem-critical transition present in the accepted `proof_steps/step_006/proof.md:203`--`224`: first show that the full one-step update map `theta -> theta - eta * selected_gradient` is Borel, induct through all `T` updates, and then pass to the finite latter-half aggregate and risk. The tower identity in (90) requires this measurable finite-horizon loss. Restore that update/composition induction from the accepted source; no proof-step change is needed.
2. Several public theorem-style interfaces are not self-contained because assembly removed local quantifiers and generated-object definitions that are explicit in the accepted source statements. Proposition `prop:p1-i3-step002-closed-tube` at `latex_template/5_appendix.tex:224`--`235` refers to a labeled history "above" rather than stating `omega in (X x {-1,+1})^T` and the exact recursion defining its states; Proposition `prop:p1-i3-step003-history-gates` at lines 368--383 likewise uses `theta^(t)` without exposing that history/state basis. Most directly, Proposition `prop:p1-i3-step005-conditional-comparison` at lines 605--627 leaves `D` and `h` to subsection prose rather than fixing `D in Delta(X)` and `h in H` in the proposition before defining `F(D,h)`; the public specialization at lines 887--905 similarly says only "for every D,h" without their domains. The accepted step statements contain these domains and local conditions. Restore them inside each affected lemma or proposition so no theorem conclusion depends on surrounding workflow-style scope.

## Nonblocking Concerns

1. The compile log contains only two shared-style font-shape fallback warnings; it has no LaTeX error, unresolved reference or citation, duplicate-label warning, or overfull box.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: Apart from the omitted measurability bridge, the derivations are correct. The finite forward/backward envelope, noncircular closed-ball induction, continuity/IVT gate argument, exact path expansion, tie-preserving aggregate identity, pointwise feasible-candidate comparison, finite pushforward calculation, event split, path count, and threshold monotonicity all follow from the stated assumptions and named accepted results. No accepted proof step requires revision.
- Statement self-containedness: BLOCKING for the local history/state and D,h scopes identified above. The main theorem itself names the four stable numbered assumptions and states the correct conditional target.
- Main theorem constants and notation: PASS. The public bounds are exactly dc_(epsilon+delta0)(H) <= d_path <= S^L <= S^(L0) and dc_(2 epsilon)(H) <= S^(L0), with no hidden multiplicative constant. The roles of T, eta, r, epsilon, delta0, L, L0, S, s0, kappa and the fixed finite-horizon mode are exposed.
- Derivation-over-notation: The appendix normally expands every helper quantity into visible equations. The only failed instance is that the list of Borel ingredients at lines 761--764 substitutes for the missing update-map and time-induction derivation.
- Explicit-rate contract: PASS. The event charge is exactly delta0, the stable contribution is exactly epsilon, the path dimension obeys the displayed factorwise inequalities, and the public specialization explicitly proves epsilon + delta0 <= 2 epsilon. No term, probability conversion, horizon dependence, or hidden constant is absorbed in prose.
- Appendix full derivations: I compared all 16 accepted local units and all seven accepted target-step assemblies against the live 944-line appendix. The appendix preserves the substantive definitions, equations, inequalities, induction, IVT argument, path algebra, infimum order, event split, boundary cases, and final composition except for the finite-horizon measurability induction in blocking issue 1. The statement compression in blocking issue 2 changes public interfaces even though the intended surrounding derivations remain recognizable.
- Quantifiers and constants: The final law is fixed before arbitrary D,h, and the proof correctly keeps the infimum before sample averaging. Constants and inequality directions are correct. The affected appendix propositions nevertheless need their local domains restored before they are valid standalone public results.
- Probability or convergence modes: The learner premise remains a joint expectation, the robust tube remains an initialization event, and the conclusion remains expectation under the unconditional pushforward law. The event split does not condition or reweight that law and makes no expectation-to-high-probability, local-to-global, or finite-to-infinite-horizon upgrade. Its integration step becomes fully rigorous once blocking issue 1 is repaired.
- Boundary cases: PASS for L=1, T=1, S=1, G_r=0, closed-ball equality, zero weights and path coefficients, cancellation to a zero score, delta0=0, epsilon=0, and delta0=epsilon. The fixed s0 tie and kappa kink conventions are preserved exactly.
- Hidden subclaims: The Borel one-step update and finite-horizon composition are the only missing theorem-critical derivation. No independent unreviewed mathematical lemma, cited theorem, optimizer selector, gate invariant, or conditioned feature law is otherwise hidden in assembly.

Verdict alignment: `BLOCKING` has numbered blocking issues, `Suggested Repair Depth = assembly`, and `Smallest Candidate Repair Target = /proof-assembly`.
