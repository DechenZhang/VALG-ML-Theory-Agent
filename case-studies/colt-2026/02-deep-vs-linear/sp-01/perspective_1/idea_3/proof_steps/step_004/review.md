# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_3/proof_steps/step_004/proof.md

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact path expansion under the initialization gate signature

- Statement fidelity: The lemma proves the exact ball-wide fixed-feature identity required by the accepted `step_004` row. Its path index (p=(i_0,\ldots,i_{L-1})\) uses one input coordinate and one coordinate from each hidden layer, its coefficient contains exactly the corresponding weights from layers (1,\ldots,L\), and its feature contains only the input coordinate and initialization gates. The statement is conditional on the static event and accepted ball-wide gate proposition, and it separately includes the gate-free (L=1) case.
- Proof validity: Equation (4) is the exact ReLU recursion because the accepted gate proposition identifies every current strict gate with its initialization gate. The partial-path recurrence in (5) matches that network recursion. The simultaneous induction has the correct base (z_{0,i_0}=x_{i_0}), appends one gate and one weight at each hidden layer, and yields (6) with all indices and finite sums in their proper ranges. Multiplication by the linear output weight and summation over (i_{L-1}) gives precisely (c_p(\theta)\varphi_{\theta^{(0)},p}(x)). For (L=1), the formula reduces to the original linear output because both products are empty and (i_{L-1}=i_0).
- Cited-result and assumption audit: The only nonlocal mathematical input is the independently accepted Proposition~\ref{prop:p1-i3-step003-ball-gates}, restated with the exact ball, inputs, hidden coordinates, and strict-gate conclusion. Assumption~\ref{assump:fixed-source-witnesses} supplies the bias-free architecture and forward equations; Assumption~\ref{assump:robust-tube} supplies the static event and radius. Event membership is a local conditional hypothesis. No containment, gate stability, path representation, coefficient boundedness, or nonzero-weight property is treated as primitive, and no external citation is used.
- Rigor checklist: The coefficient indices have the correct orientation ((\theta_\ell)_{i_\ell,i_{\ell-1}}) and output factor ((\theta_L)_{1,i_{L-1}}). The hidden gate at layer (q) is attached to (i_q), exactly as in the setting feature. All sums and products are finite, so distribution is legal without a convergence interchange. Negative inactive preactivations contribute a zero gate, while moving and signed weights remain entirely in the coefficient. The proof uses no derivative or kink convention.
- Local adversarial test: At (L=2), the expansion is \(\sum_{i_0,i_1}(\theta_2)_{1,i_1}(\theta_1)_{i_1,i_0}x_{i_0}g^{(0)}_{1,i_1}(x)\), exactly the one-hidden-layer formula. At (L=1), it is the original linear score. Width-one layers, inactive gates, zero weight factors, negative weights, and canceling path contributions all preserve the finite algebraic equality. A ball-boundary parameter is covered by the accepted ball-wide gate result.
- Contribution to target step: The lemma supplies an exact coefficient vector (c(\theta)\in\mathbb R^{d_{\rm path}}) for every state in the tube while keeping \(\varphi_{\theta^{(0)}}\) determined solely by initialization.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact latter-half aggregate coefficient and tie identity

- Statement fidelity: The proposition has the exact target quantifiers: each initialization in (E_r), every deterministic length-(T) labeled history and its exact iterates, and every evaluation input. It defines the prescribed inclusive index set (J_T=\{\lceil T/2\rceil,\ldots,T\}\), exports (w_\omega=\sum_{t\in J_T}c(\theta^{(t)}(\omega))\), and proves scalar and fixed-tie prediction equality. Target and history dependence occurs only in the feasible coefficient, not in the feature map.
- Proof validity: Accepted Invariant~\ref{inv:p1-i3-step002-closed-tube} puts every state (0\le t\le T) in the exact ball, and accepted Invariant~\ref{inv:p1-i3-step003-history-gates} supplies the same initialization signature there. The preceding lemma therefore applies at every (t\in J_T). Finite summation and bilinearity give \(\sum_t f_{\theta^{(t)}}(x)=\langle\sum_t c(\theta^{(t)}),\varphi_{\theta^{(0)}}(x)\rangle\) with no residual. A source-consistent history uses exactly the setting update and latter-half score, so applying the same \(\operatorname{sign}_{s_0}\) function to equal scalars gives identical predictions and strict classification indicators.
- Cited-result and assumption audit: Both accepted dependencies are restated in current notation with their distinct outputs: `step_002` supplies containment and `step_003` supplies gate equality. Lemma~\ref{lem:p1-i3-step004-path-expansion} is restated before use. The proposition assumes no distributional property, target consistency, likely-history event, margin of the aggregate score, or coefficient bound. Each (c(\theta^{(t)})\) is a finite vector because it consists of finite products of real setting parameters, and (J_T) is finite.
- Rigor checklist: The time range includes the terminal state (T) exactly as in the setting. Since (T\ge1), (J_T) is nonempty. The feature map is identical for all summands, which is what licenses moving the finite coefficient sum inside one inner product. The pointwise scalar identity is stronger than and directly implies the tie-resolved prediction identity; no positive-margin or almost-sure qualifier is introduced.
- Local adversarial test: For (T=1), (J_T=\{1\}), so the aggregate contains exactly the prescribed terminal state. Zero path coefficients, cancellation across paths, cancellation across time, and an aggregate score equal to zero leave both sides identical and make both predictions equal (s_0). Arbitrary labels and histories remain covered because the dependency invariants are all-history statements; source consistency is needed only to identify the generic pathwise score with (A_{\mathcal D,h^\star}\).
- Contribution to target step: The proposition generates the exact history-dependent feasible coefficient consumed by `step_005` and establishes the required aggregate score and tie identity without altering the initialization-only feature map.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the local lemma map. The exact layerwise distributive expansion, the (L=1) reduction, and robustness to zero or canceling coefficients are contained in Lemma~\ref{lem:p1-i3-step004-path-expansion}. Applicability at every generated state, finite aggregation, source-history identification, and zero-score tie preservation are contained in Proposition~\ref{prop:p1-i3-step004-aggregate}. Finiteness of the coefficient products and sums follows directly from finite-dimensional real parameters and the finite index sets. The target assembly cites theorem-style labels and accepted dependency labels rather than using local unit IDs as mathematical authority.

## Target Claim Audit

The proof establishes the exact accepted `step_004` claim. Conditional on each \(\theta^{(0)}\in E_r\), every point of the static ball, and hence every iterate of every length-(T) labeled history, has an exact representation in the single setting-defined map \(\varphi_{\theta^{(0)}}\). For every history,
\[
A_\omega(x)=\left\langle
\sum_{t=\lceil T/2\rceil}^{T}c(\theta^{(t)}(\omega)),
\varphi_{\theta^{(0)}}(x)
\right\rangle
\quad\text{for every }x\in\mathcal X.
\]
The statement is deterministic conditional on the static event, uniform over inputs and histories, exact rather than approximate, and preserves the source tie convention. It claims neither unconditional stability nor a path-independent coefficient.

## Explicit Rate Audit

The step is rate-bearing through RO-1 only in asserting zero representation residual. It exposes the architecture and (d_{\rm path}), the finite horizon (T), the exact generated states, and the accepted conditional interfaces involving (r,M_r,G_r,\eta\); it introduces no hidden constant or auxiliary tolerance. The probability mode is deterministic conditional on (E_r), the horizon mode uses precisely the finite state set (0,\ldots,T), and the metric is pointwise scalar equality followed by the setting's tie-resolved classification rule. No term is absorbed, no coefficient-size bound is claimed or required, and no probability conversion occurs. The (L=1), (T=1), zero-coefficient, exact-cancellation, and zero-score baselines are recovered without loss.

## Notation Surface Audit

The setting-defined feature map and the exported coefficient vectors (c(\theta)\) and (w_\omega\) form the minimal public-facing interface needed downstream. The initialization-gate alias (g_{\ell,j}^{(0)}(x)) and partial path sums (P_{\ell,j}(\theta,x)) are proof-local and directly defined; (J_T), the arbitrary history, and its states are appendix-local finite-scope objects. Every helper is classified in the proof, no notation is imported from an external source, and no helper dictionary hides boundedness, a margin, an event, or an assumption. The coefficient and path indices remain consistent with the setting throughout.

## Target-Step Assembly Audit

The accepted `step_002` invariant supplies exact all-history containment, and the accepted `step_003` proposition/invariant supplies the exact initialization gates on the ball and at all history states. Lemma~\ref{lem:p1-i3-step004-path-expansion} converts those gates and the current trained weights into the exact per-state path score. Proposition~\ref{prop:p1-i3-step004-aggregate} sums those identities over the setting's prescribed time indices and applies the fixed tie function. These named results jointly imply the exact target claim, including (L=1), (T=1), zero and canceling coefficients, and zero aggregate scores, with no missing bridge or changed dependency.

## Review Rationale

Both local units pass target-fidelity, dependency, assumption-provenance, notation, and line-by-line rigor checks. The layer and path indices match the bias-free network recursion exactly, current weight motion is isolated in the coefficient vector, and the accepted all-history containment and gate interfaces are consumed only after their independent reviews. Finite aggregation preserves exact scalar equality, and applying the identical fixed tie rule handles a zero aggregate without a margin assumption. The proof establishes precisely the accepted step interface, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest correct disposition.
