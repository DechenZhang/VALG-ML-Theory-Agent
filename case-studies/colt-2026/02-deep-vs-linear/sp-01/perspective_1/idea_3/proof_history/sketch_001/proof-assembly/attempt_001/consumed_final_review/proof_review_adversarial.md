# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The unconditional event-split argument uses a theorem-critical measurability claim that the assembled appendix does not prove. At latex_template/5_appendix.tex:761, the proof lists Borel forward operations, the kink selector, logistic differentiation, back-propagation, the tie map, and the finite risk sum, and then concludes at line 764 that the realized loss \(Z_{\mathcal D,h}\) is jointly measurable. This skips the necessary generated-state bridge: define the full one-step map \(\theta\mapsto\theta-\eta\nabla_\theta^{(\kappa)}\ell(yf_\theta(x))\), prove it Borel, induct through the \(T\) updates, and only then pass to the latter-half aggregate, tie map, and finite risk. Without that bridge, the measurable conditional average in (86) and the tower identity in (90) are not established in the paper proof. The accepted step_006 proof contains this exact derivation, so this is a verified assembly omission rather than a proof-step defect.
2. Several public appendix propositions fail the standalone-statement attack because their local quantifiers or generated-object definitions exist only in preceding subsection prose. Proposition prop:p1-i3-step002-closed-tube refers to "every labeled history \(\omega\) above" without defining its domain and recursion in the proposition; Proposition prop:p1-i3-step003-history-gates uses the resulting \(\theta^{(t)}\) under the same inherited scope; Proposition prop:p1-i3-step005-conditional-comparison defines \(F_{\mathcal D,h}\) without first quantifying \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\) in the statement; and Proposition prop:p1-i3-step007-public-specialization says only "for every \(\mathcal D,h\)" without their domains. Removing the surrounding prose therefore leaves free or undefined objects in theorem-style interfaces consumed later. The accepted step statements already contain the missing domains and local conditions, so restoring them verbatim is an assembly-only repair.

## Nonblocking Concerns

1. Measurability of \(E_r\) is used in the event split without a separate construction-level proof. This does not independently block the theorem because Assumption assump:robust-tube assigns \(E_r\) a probability and therefore includes event measurability as part of its premise, but stating that convention explicitly would make the probability interface clearer.
2. The compile log contains two shared-style font fallback warnings. They do not affect the mathematical artifact.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The conversion from the stable-initialization comparison to the unconditional law bound in Proposition prop:p1-i3-step006-event-split. Its inequality and one-time \(E_r^c\) charge are correct, but its tower step currently rests on the omitted finite-horizon measurability induction.
- Standalone theorem attack: Removing subsection setup leaves the four proposition interfaces listed in Blocking Issue 2 with unquantified distributions, targets, histories, or generated states. Their proofs are recognizable, but the public theorem-style statements are not self-contained.
- Weakest step-level claim: The accepted step_006 measurability unit is the highest-risk local unit. Stressing ReLU-kink initializations, \(\kappa\in\{0,1\}\), and arbitrary finite \(T\) does not break its source proof because the selected one-step update is Borel and finite composition preserves measurability. The break is only in its compressed LaTeX translation.
- Candidate counterexamples or stress cases: Arbitrary behavior on \(E_r^c\), point-mass and zero-mass training tuples, \(T=1\), \(L=1\), \(G_r=0\), terminal equality \(T\eta G_r=r\), hidden kinks, zero path weights, exact score cancellation, \(\delta_0=0\), and \(\varepsilon=0\) do not falsify the accepted claim. On \(E_r\), all-history containment, strict gate stability, and exact path expansion survive these cases; on \(E_r^c\), the unit-risk charge is sufficient.
- Explicit-rate stress cases: The stable contribution is bounded by exactly \(\varepsilon\), the complement by exactly \(\delta_0\), and no union bound over histories is used. The path-count inequalities \(d_{\rm path}\leq S^L\leq S^{L_0}\) and the same-law specialization \(\varepsilon+\delta_0\leq2\varepsilon\) retain all exposed dependence and pass the \(S=1\), \(L=1\), and zero-error boundaries.
- Appendix self-contained attack surface: The appendix otherwise contains the full gradient envelope, noncircular containment induction, IVT gate argument, exact path algebra, infimum-before-expectation comparison, pushforward identity, event charge, and deterministic specialization. The missing update-composition measurability derivation and inherited theorem-statement scopes are the concrete failures.
- Scope or mode upgrade attacks: No invalid upgrade was found. The law \(\mathcal P_{\rm gate}\) is fixed before every later \((\mathcal D,h)\), maps from \(E_r^c\) remain in that unconditional law, the learner premise stays in joint expectation, and the conclusion stays in expected tie-resolved representation risk at the fixed finite horizon.
- Remaining risk: After assembly repair, the repaired TeX should be recompiled and all specialized reviews rerun. No counterexample or accepted-step, sketch, or idea-level defect was found under the declared conditional theorem contract.

