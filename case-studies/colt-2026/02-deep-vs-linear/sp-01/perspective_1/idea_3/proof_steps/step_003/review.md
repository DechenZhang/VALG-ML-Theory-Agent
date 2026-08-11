# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_003
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_3/proof_steps/step_003/proof.md

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Continuous exact preactivation paths on the closed ball

- Statement fidelity: The lemma supplies the continuity and path-in-the-ball interface required by the accepted step_003 row. It quantifies over the setting's parameter ball, every input, and every hidden layer/coordinate, and it treats \(L=1\) as the empty hidden-index case. It does not assume an SGD trajectory, a positive margin, or gate stability.
- Proof validity: The coordinatewise affine-segment estimate places every segment point, including both endpoints and the closed-ball boundary, in \(B_\infty(\theta^{(0)},r)\). The layer-one finite sum is continuous, and the induction over layers correctly uses continuity of \(\sigma\), finite products, and finite sums to obtain the exact recursively defined preactivation paths. The displayed recurrences are the network's forward equations evaluated on the segment, not a linearization.
- Cited-result and assumption audit: The only standard facts used are restated in current notation: affine coordinates are continuous, finite sums/products preserve continuity, and \(a\mapsto\max\{0,a\}\) is continuous. The fixed-source architecture and finite radius come from the named setting assumptions. No selected derivative, kink value, nonzero-weight condition, or unproved trajectory membership is used.
- Rigor checklist: The induction range \(1\le\ell\le L-1\) is correct, including the vacuous range for \(L=2\); the segment estimate uses \(0\le s\le1\) and weak inequalities; all coordinates remain finite. The argument is deterministic and uniform in \(x\), with no illegal interchange or probability upgrade.
- Local adversarial test: Zero weight coordinates and zero intermediate preactivations do not affect continuity; a zero preactivation is allowed in this unit (and is excluded only later on \(E_r\)). A point at distance exactly \(r\), \(s=0\), and \(s=1\) all remain in the closed ball. \(L=1\) has no hidden path to prove.
- Contribution to target step: This unit provides the continuous path needed for the subsequent IVT sign-crossing contradiction and nothing stronger.
- Verdict: PASS
- Repair direction: None.

### unit_002: Strict gate constancy on a positive-margin ball

- Statement fidelity: The proposition states the exact ball-wide interface: conditional on the local event \(\theta^{(0)}\in E_r\), every hidden preactivation has a nonzero initialization sign and the same strict \(>0\) indicator at every point of the closed ball. It explicitly separates the gate-free \(L=1\) case and names the preceding continuity lemma.
- Proof validity: For \(L\ge2\), event membership gives \(m=M_r(\theta^{(0)})>0\). The infimum definition of \(M_r\) gives \(\lvert u_{\ell,j}(\vartheta,x)\rvert\ge m\) for every point in the defining domain, including all boundary points. Along the affine segment, the preactivation is continuous and remains at magnitude at least \(m\). Opposite endpoint signs would therefore force a zero by the intermediate value theorem, contradicting the margin. Since both endpoints are nonzero, equality of ordinary signs is exactly equality of the strict gate indicators. The \(L=1\) assertion is correctly vacuous.
- Cited-result and assumption audit: The continuity lemma is restated and used with its exact current objects; the IVT statement is given before application and its zero lies in the same closed ball. The only theorem-facing condition is the local conditional event, while \(M_r>0\) is derived from that event rather than assumed as a gate invariant. No \(\rho_\kappa(0)\) or hidden gate condition is used.
- Rigor checklist: Quantifiers cover every input, hidden layer, coordinate, and arbitrary \(\theta\) in the ball. The argument handles \(\theta=\theta^{(0)}\), endpoint equality, and strict versus non-strict inequalities. The ordinary sign notation is explicitly restricted to nonzero reals, so it never conflicts with the setting's tie-resolved \(\operatorname{sign}_{s_0}\). The conclusion is independent of \(\kappa\), as required.
- Local adversarial test: A zero parameter coordinate is allowed; only a zero preactivation would make \(M_r=0\), which places the initialization outside \(E_r\) and is later charged rather than silently excluded from the global law. A putative sign crossing at any interior or boundary point contradicts (4). Width-one hidden layers and \(L=2\) do not change the argument.
- Contribution to target step: This unit proves the exact fixed initialization gate signature on the entire static tube, which is the theorem-critical bridge to path expansion.
- Verdict: PASS
- Repair direction: None.

### unit_003: All-history initialization gate signature

- Statement fidelity: The invariant has the exact downstream quantifiers: every initialization in \(E_r\), every deterministic length-\(T\) labeled history, every input, every hidden coordinate, and every \(0\le t\le T\). It exports the initialization indicators and the positive margin, with an explicit empty statement for \(L=1\).
- Proof validity: The accepted step_002 invariant supplies \(\|\theta^{(t)}-\theta^{(0)}\|_\infty\le t\eta G_r\le r\) before the ball proposition is applied. Thus every generated state, including \(t=0\), the first update, and the terminal state, is in the same closed ball; Proposition~\ref{prop:p1-i3-step003-ball-gates} then gives (5). The history is arbitrary, so the result is all-history rather than merely almost sure under source sampling.
- Cited-result and assumption audit: The dependency is the current, independently accepted step_002 proof/review pair and is restated in current notation. It supplies containment only; this unit does not import gate stability or a path representation from it. No distribution, target, or expected-success premise is used.
- Rigor checklist: The horizon endpoints and \(T=1\) are covered, \(T\ge1\) justifies the first-update display, and equality at radius \(r\) is legal because the ball is closed. The proof preserves the strict \(>0\) convention and does not evaluate a ReLU derivative at a kink.
- Local adversarial test: Zero gradients and maximal outward updates remain covered by step_002; any state exactly on the radius boundary still receives the margin conclusion. Arbitrary labels cannot invalidate the transfer because the dependency is all-history. For \(L=1\), the hidden quantifier is empty and no gate mechanism is presumed.
- Contribution to target step: This is the exact all-history transfer needed by step_004 to use one initialization feature map for every iterate.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. Segment containment and recursive continuity are contained in Lemma~\ref{lem:p1-i3-step003-continuous-preactivation}; the margin-to-sign implication and sign-to-strict-indicator implication are contained in Proposition~\ref{prop:p1-i3-step003-ball-gates}; and the trajectory transfer is contained in Invariant~\ref{inv:p1-i3-step003-history-gates}. The target-step assembly cites these theorem-style labels and the accepted step_002 invariant rather than relying on unit IDs or subsection names.

## Target Claim Audit

The proof establishes exactly the accepted step_003 claim, conditional on the static event \(E_r\): for \(L\ge2\), every hidden preactivation has the initialization sign throughout \(B_\infty(\theta^{(0)},r)\), and every generated state for every labeled history has the same strict gate indicators; for \(L=1\), the gate statement is empty. The scope is deterministic conditional-on-event, uniform over all inputs, hidden coordinates, states \(0,\ldots,T\), and histories. No stronger unconditional gate claim, derivative claim, or feature representation is asserted.

## Explicit Rate Audit

The step is exact and rate-bearing only through the exposed quantities \(M_r(\theta^{(0)})\), \(r\), and the accepted containment relation \(t\eta G_r(\theta^{(0)})\le r\). The gate residual is identically zero; no hidden constant, absorbed term, auxiliary tolerance, or probability conversion is introduced. The mode is deterministic conditional-on-\(E_r\), horizon-uniform over the finite states \(0\le t\le T\), and uses the coordinate sup norm for containment and scalar strict signs for gates. The initialization probability and the \(E_r^c\) charge are correctly deferred to the later event-conversion step. The \(L=1\), closed-boundary, and \(T=1\) baseline reductions preserve the original conclusion exactly, so no separate rate-specialization bridge is required here.

## Notation Surface Audit

The segment \(\gamma_{\theta^{(0)},\theta}\), scalar paths \(q_{\ell,j,x,\theta^{(0)},\theta}\), and \(m=M_r(\theta^{(0)})\) are proof-local aliases with direct definitions from setting notation. The generated iterates and history are appendix-local quantified objects, and only the strict gate identity is exported publicly. The ordinary scalar \(\operatorname{sgn}\) is explicitly restricted to nonzero arguments; no notation is imported from a cited source, and no helper dictionary hides a constant or assumption.

## Target-Step Assembly Audit

The accepted step_002 containment invariant places every history state in the closed static ball. Unit_001 supplies continuous preactivation paths inside that ball, unit_002 uses the positive \(M_r\) margin and IVT to rule out every sign crossing, and unit_003 applies the ball result to all generated states. These accepted units jointly imply the exact fixed initialization gate signature, including the \(L=1\) gate-free case, with no additional assumptions or downstream residual.

## Review Rationale

All three local units are self-contained, use only the binding setting and the accepted step_002 dependency, and satisfy the local-unit, provenance, quantifier, and notation contracts. The continuity/IVT bridge is valid on the closed ball, strict positivity excludes zero gates on \(E_r\), and the all-history transfer is made only after independently proved containment. Closed-ball endpoints, \(T=1\), zero parameter coordinates, arbitrary labels, the \(L=1\) case, and the fixed \(\kappa\) convention are explicitly covered. The proof therefore merits ACCEPTED, with Smallest Retry Target = None.
