# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_006
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_3/proof_steps/step_006/proof.md

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Finite gate law and exact pushforward identity

- Statement fidelity: The lemma matches the step-006 sketch row. It constructs the initialization-only gate feature map, proves finite support, and identifies the expectation of the best fixed-feature risk under the unconditional pushforward law with the corresponding Gaussian-initialization expectation for every fixed \((\mathcal D,h)\). It does not condition the law on \(E_r\) and does not add an optimizer-attainment premise.
- Proof validity: For each finite input/path coordinate, the preactivation is continuous in the initialization and the strict-positive indicator is Borel, so every feature coordinate is Borel and takes values in \(\{-1,0,+1\}\). Finiteness of \(\mathcal X\) and the path index gives the displayed finite range bound. The best-risk table \(\Psi_{\mathcal D,h}\) is a function on a finite range and is therefore measurable; \(F=\Psi\circ\Phi\) is measurable and lies in \([0,1]\). Summing pushforward masses proves (5) without an interchange involving an infimum.
- Cited-result and assumption audit: The only nonlocal input is the setting definition of \(\varphi_{\theta^{(0)}}\) and \(\mathcal P_{\rm gate}=\Phi_\#\gamma\), under Assumption~\ref{assump:fixed-source-witnesses}. The finite-range pushforward formula is restated and its measurability hypotheses are discharged locally. No dependency proof, event membership, trajectory fact, or generated feature property is silently treated as primitive.
- Rigor checklist: The finite-domain identification of maps with their coordinate tuples makes the Borel claim concrete; duplicate maps receive their combined pushforward mass. The risk infimum is finite because every risk is in \([0,1]\) and the coefficient space is nonempty. The argument remains valid for zero coordinates, repeated gates, and nonattained infima. The empty product and singleton range for \(L=1\) are explicitly covered.
- Local adversarial test: Initializations at ReLU kinks only change a Borel indicator and do not threaten measurability; they still yield one of the three coordinate values. Multiple initializations mapping to one feature map do not alter the identity because the integrand depends only on that map. No measurable minimizing selector is introduced.
- Contribution to target step: Supplies the unconditional, finite-support feature law and the exact outer-expectation identity needed before the event split.
- Verdict: PASS
- Repair direction: None.

### unit_002: Unconditional event-split risk bound

- Statement fidelity: The proposition proves the exact unconditional initialization expectation bound \(\mathbb E_{\theta^{(0)}}F_{\mathcal D,h}\le\varepsilon+\delta_0\) for arbitrary fixed \((\mathcal D,h)\), using precisely the accepted step-005 conditional comparison and the three listed primitive assumptions. It preserves the unconditional Gaussian law and does not export a conditioned feature distribution.
- Proof validity: The realized learner loss \(Z(\vartheta,\mathbf x)\) is a finite, bounded, jointly measurable function of initialization and the finite sample tuple; the finite conditional average \(g\) is consequently measurable and in \([0,1]\). On \(E_r\), accepted Proposition~\ref{prop:p1-i3-step005-conditional-comparison} gives \(F\le g\); on \(E_r^c\), the probability-valued definition gives \(0\le F\le1\). Splitting the same unconditional expectation yields (12). The finite conditional sum and initialization/sample independence justify (13), and nonnegativity gives \(\mathbb E[\mathbf 1_{E_r}g]\le\mathbb E Z\le\varepsilon\). The robust-tube premise gives \(\Pr(E_r^c)\le\delta_0\), so the displayed \(\varepsilon+\delta_0\) bound follows with no missing term.
- Cited-result and assumption audit: Step-005 proof/review is a matching accepted dependency and its exact conditional claim is restated in current notation. Assumption~\ref{assump:universal-expected-success} is applied to the same unconditional initialization and iid source-sample law, while Assumption~\ref{assump:robust-tube} supplies only the initialization-measurable event probability. Assumption~\ref{assump:fixed-source-witnesses} supplies the protocol and independence. No trajectory or gate invariant is re-assumed on the complement.
- Rigor checklist: The event is split before any conditioning on samples, and the sample average is finite because \(\mathcal X^T\) is finite. The inequality direction is correct: the stable term is bounded by the full expected learner loss and the complement by its unit risk bound. The proof does not discard \(E_r^c\), condition the feature law, or invoke an illegal \(\inf/\mathbb E\) interchange. Measurability, boundedness, and nonnegativity are sufficient for the stated tower/Tonelli use.
- Local adversarial test: Arbitrary predictor behavior on \(E_r^c\), zero-probability sample tuples, deterministic distributions, zero learner loss, and maximal complement mass all remain covered by the unit bound. If \(\delta_0=0\), the complement term vanishes exactly; if \(\varepsilon=0\), the assumption forces \(\delta_0=0\) and the conclusion remains zero. The fixed finite horizon includes \(T=1\), and no union bound over histories is hidden.
- Contribution to target step: Converts the stable conditional representation interface into the unconditional Gaussian expectation at exactly the required additive error.
- Verdict: PASS
- Repair direction: None.

### unit_003: Universal probabilistic-dimension witness

- Statement fidelity: The proposition states the exact target quantifiers \(\exists\mathcal P_{\rm gate}\,\forall\mathcal D\,\forall h\), the expected best-linear-risk inequality, and the resulting \(\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)\le d_{\rm path}\). It does not strengthen the conditional branch to an unconditional deterministic claim.
- Proof validity: The architecture, Gaussian law, and initialization-to-feature rule are fixed before the arbitrary distribution and target, so their pushforward is one law independent of later choices. Unit 001 identifies its expectation with \(\mathbb E F\), and unit 002 bounds that expectation for each arbitrary pair. Existence of a witness law in dimension \(d_{\rm path}\) then directly implies the dimension-complexity inequality by definition.
- Cited-result and assumption audit: The proposition invokes only the two accepted local results and the three primitive assumptions already checked above. The law is not changed after choosing \((\mathcal D,h)\), and no assumption about an optimizer, event-conditioned law, or sample-path coefficient is exported.
- Rigor checklist: The order of quantifiers is explicit and correct. The error metric and expectation mode remain the tie-resolved expected representation risk from the setting; there is no conversion to high probability, almost sure, or horizon-uniform mode. The dimension is exactly \(d_{\rm path}\), not a support cardinality or a history-dependent lift.
- Local adversarial test: Repeated gate maps, feature maps generated on \(E_r^c\), zero scores, \(L=1\), and arbitrary finite \(T\) do not affect the existential witness argument. The same law works pointwise for all \((\mathcal D,h)\) because the preceding bound was proved after an arbitrary choice while the law was already fixed.
- Contribution to target step: Closes the probabilistic-dimension witness and the required law/target quantifier order.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the local lemma map. Unit 001 contains the finite-support/Borel and pushforward bridge; unit 002 explicitly establishes learner-loss measurability, the conditional sample average, the stable-event comparison, and the complement charge; unit 003 performs the final quantifier and dimension-complexity closure. The finite-range integration and bounded tower identities are restated before use, and all their hypotheses are checked locally. The assembly cites theorem-style labels and the accepted step-005 proposition rather than subsection names, proof-step IDs, or diagnostic artifacts. The finite-domain risk bounds and nonnegativity facts are direct consequences of the setting and are not hidden generated invariants.

## Target Claim Audit

The proof establishes, for every arbitrary \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\),
\[
\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}
\left[\inf_{w\in\mathbb R^{d_{\rm path}}}
R_{\mathcal D,h}(w,\varphi)\right]
\le \varepsilon+\delta_0,
\]
with one initialization-only pushforward law selected before those choices. The stable contribution is exact, the complement contributes at most \(\Pr(E_r^c)\le\delta_0\), and the learner premise contributes at most \(\varepsilon\). Thus the exact expected, fixed-finite-horizon, tie-resolved target and the consequent \(\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)\le d_{\rm path}\) are proved. No optimizer selector is used, and no conditional law remains in the conclusion.

## Explicit Rate Audit

The step is rate-bearing through RO-1. Exposed variables are \(\varepsilon,\delta_0,T,\eta,r,M_r,G_r,d_{\rm path}\), the architecture and fixed conventions \(s_0,\kappa\), and arbitrary \(\mathcal D,h\). Hidden constants are none; no dependence is suppressed. The architecture, initialization law, feature-map rule, and finite horizon are fixed before arbitrary \((\mathcal D,h)\). Probability mode is joint expectation for the learner premise, initialization probability for the tube event, and unconditional expectation under \(\mathcal P_{\rm gate}\) for the conclusion. Horizon mode is fixed finite \(T\), including \(T=1\); norm mode is tie-resolved 0-1 risk and its infimum over the Euclidean feature space. The only conversion is the displayed inequality \(\mathbb E[\mathbf1_{E_r}g]\le\mathbb E Z\le\varepsilon\) plus \(\mathbb E[\mathbf1_{E_r^c}F]\le\Pr(E_r^c)\le\delta_0\); no term is absorbed by prose, and no auxiliary tolerance or public-rate bridge is claimed here. Baseline checks \(\delta_0=0\), \(\varepsilon=0\), and gate-free \(L=1\) are preserved exactly.

## Notation Surface Audit

The exported objects are only \(\mathcal P_{\rm gate}\), \(F_{\mathcal D,h}\), and the target inequality. \(\Theta,\gamma,\Phi,\Gamma,\Psi_{\mathcal D,h},Z_{\mathcal D,h},g_{\mathcal D,h}\), and finite sample tuples are proof-local or appendix-local helpers, each defined from setting notation and used to expose measurability or probability provenance. The finite support bound is proved rather than assumed and is not incorrectly exported as a dimension rate. No helper selector, radius, margin, or hidden constant is introduced.

## Target-Step Assembly Audit

Lemma~\ref{lem:p1-i3-step006-gate-pushforward} supplies the exact pushforward expectation identity. Proposition~\ref{prop:p1-i3-step006-event-split}, using accepted Proposition~\ref{prop:p1-i3-step005-conditional-comparison}, bounds the corresponding Gaussian expectation by the stable learner expectation plus the explicit complement charge. Proposition~\ref{prop:p1-i3-step006-dc-witness} then fixes the law before arbitrary \((\mathcal D,h)\) and applies the definition of \(\operatorname{dc}\). These accepted local units and dependency claims jointly imply the exact sketch-row target, including its probability mode, constants, and quantifier order.

## Review Rationale

All three local units pass target fidelity, dependency and assumption provenance, measurability, notation, and line-by-line rigor checks. The finite-support argument removes any possible measurable-minimizer issue; the pointwise step-005 comparison is used before averaging; and the event split keeps the same unconditional law while charging the entire unstable contribution by its unit risk bound. Boundary cases \(L=1\), \(T=1\), \(\delta_0=0\), \(\varepsilon=0\), zero scores, repeated/zero-mass histories, and nonattained infima are explicitly covered. The resulting witness has exactly the required \(\exists\mathcal P_{\rm gate}\,\forall\mathcal D\,\forall h\) order. `ACCEPTED` with `Smallest Retry Target = None` is therefore the smallest correct disposition.
