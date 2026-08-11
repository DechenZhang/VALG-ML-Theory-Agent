# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_2/proof_steps/step_002/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Conditional Haar projector isotropy and tensor energy

- Statement fidelity: The lemma proves exactly the accepted row's conditional projector and projected-energy identities for either method and every fixed tensor value, using only the accepted Haar/independence output of `step_001` and the listed primitive assumptions.
- Proof validity: Conditional Haar invariance makes the mean projector commute with every orthogonal matrix; coordinate sign flips eliminate off-diagonal entries, coordinate permutations equalize the diagonal entries, and trace (k) gives \(\mathbb E[P_{\mathcal S_M}\mid T=T_0]=(k/n)I_n\). For arbitrary \(T_0\), mode-1 matricization and projector symmetry/idempotence give \(\|P_{\mathcal H_M}T_0\|_F^2=\operatorname{tr}(P_{\mathcal S_M}(T_0)_{(1)}(T_0)_{(1)}^{\mathsf T})\), so taking the conditional expectation yields exactly \((k/n)\|T_0\|_F^2\).
- Cited-result and assumption audit: The accepted Lemma~\ref{lem:step-001-haar-independence} is restated in current notation with the constant product-Haar conditional kernel and its primitive assumption basis. No trajectory fact, smoothing property, or external result is imported.
- Rigor checklist: Trace and expectation interchange is legitimate because projectors are bounded finite-dimensional matrices. The calculation is pointwise under the accepted conditional kernel, preserves the tensor Frobenius norm under matricization, and applies without a nonzero-tensor hypothesis.
- Local adversarial test: The identity remains valid for nonsymmetric or otherwise arbitrary mode-1 Gram matrix data through \((T_0)_{(1)}(T_0)_{(1)}^{\mathsf T}\succeq0\), and at \(T_0=0\) both sides are zero. No isotropy of \(T\) is used.
- Contribution to target step: It supplies the exact expectation needed by the per-method Markov calculation.
- Verdict: PASS
- Repair direction: None.

### unit_002: Zero-safe per-method Markov event

- Statement fidelity: The lemma proves the exact setting-defined event bound \(\mathbb P(E_M\mid T=T_0)\ge1/2\) for every conditional fiber and separately states the sure-event conclusion at \(T_0=0\).
- Proof validity: For \(T_0\ne0\), the projected energy is nonnegative and integrable, the threshold \(2(k/n)\|T_0\|_F^2\) is positive, and Markov's inequality bounds the larger non-strict threshold event, hence also the strict complement of \(E_M\), by \(1/2\). For \(T_0=0\), the defining non-strict inequality is identically \(0\le0\), so the event is sure without division.
- Cited-result and assumption audit: Markov's inequality is restated with nonnegativity, integrability, and positive-threshold hypotheses, all explicitly discharged. The expectation input comes from Lemma~\ref{lem:step-002-projector-energy}; no generated event is assumed.
- Rigor checklist: The strict/non-strict event comparison is in the correct direction, \(k,n>0\) makes the nonzero-fiber denominator positive, and the probability mode remains conditional on the fixed shared tensor.
- Local adversarial test: An atom exactly at the threshold remains inside \(E_M\) and causes no loss. The zero tensor, arbitrarily small nonzero tensors, and the boundary \(k/n=1/8\) are all covered.
- Contribution to target step: It supplies the two per-method conditional probability factors used in the joint event proposition.
- Verdict: PASS
- Repair direction: None.

### unit_003: Exact orthogonal-complement margin

- Statement fidelity: The lemma converts the setting-defined event into the exact output margin \((1-2k/n)\|T\|_F^2\), then specializes it to \((3/4)\|T\|_F^2\), matching the accepted sketch row.
- Proof validity: Orthogonal Pythagoras gives \(\|(I-P_{\mathcal H_M})T\|_F^2=\|T\|_F^2-\|P_{\mathcal H_M}T\|_F^2\). The event threshold gives the first inequality, while \(k\le r^{5/4}\) and \(n\ge8r^{5/4}\) give \(k/n\le1/8\), hence \(1-2k/n\ge3/4\).
- Cited-result and assumption audit: The projector identity is restated in the exact tensor Frobenius geometry. The only quantitative inputs are Assumptions~\ref{assump:dimension} and \ref{assump:rank_window}; no hidden margin or positivity assumption is introduced.
- Rigor checklist: All inequalities are non-strict and therefore include equality at the dimension boundary. The proof also includes \(T=0\), where all terms vanish.
- Local adversarial test: At \(k/n=1/8\) the conclusion is exactly \(3/4\), and at \(T=0\) it is \(0\ge0\). No normalization, asymptotic approximation, or term absorption appears.
- Contribution to target step: It exports the simultaneous residual-size interface consumed downstream once the joint event is established.
- Verdict: PASS
- Repair direction: None.

### unit_004: Joint conditional and unconditional projection event

- Statement fidelity: The proposition proves conditional independence, exact conditional factorization, the joint conditional lower bound for every \(T_0\), the unconditional lower bound, and both residual margins on the joint event, which is the full accepted output target.
- Proof validity: Given \(T=T_0\), each \(E_M\) is measurable only in its method-specific span and a deterministic threshold. The accepted constant product-Haar kernel therefore factorizes the event indicators. Multiplying the two \(1/2\) lower bounds gives \(1/4\); the tower property then preserves \(1/4\) unconditionally. Applying Lemma~\ref{lem:step-002-residual-margin} separately to the two events yields both margins on their intersection.
- Cited-result and assumption audit: Conditional product structure is inherited exactly from accepted `step_001`, and the tower property is restated and applied to the same measurable joint event. The proof does not assert unconditional independence of the events or independence of the complete trajectories.
- Rigor checklist: The shared random tensor is held fixed before factorization, the \(T_0=0\) fiber has product probability one, and the conditional lower bound is pointwise under the accepted kernel, so averaging is valid without an almost-everywhere gap.
- Local adversarial test: Unconditional dependence induced by the shared \(T\) does not affect the argument. Arbitrary tensor laws and deterministic bases are harmless because the calculation is uniform over every fixed \(T_0\).
- Contribution to target step: It assembles the exact joint event, confidence, and simultaneous residual-margin certificate exported to `step_007`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is hidden outside the local lemma map. Projector isotropy and trace evaluation, the zero-safe Markov step, deterministic orthogonal complementation and \(k/n\) arithmetic, conditional product factorization, tower conversion, and simultaneous margin assembly each appear in a named unit. The boundary discussion only stress-tests those proved statements.

## Target Claim Audit

The proof establishes the exact `step_002` claim under the accepted dependency and precisely the three listed primitive assumptions. It proves the per-method expectation and conditional event probability for arbitrary \(T\), including \(T=0\); conditional independence only after conditioning on the shared tensor; joint conditional and unconditional probability at least \(1/4\); and the exact residual factors \(1-2k/n\) and \(3/4\). No quantifier, probability-mode, norm, or method-scope drift occurs.

## Explicit Rate Audit

The rate-bearing quantities are explicit and preserved: threshold \(2(k/n)\|T\|_F^2\), conditional probabilities \(1/2\) and \(1/4\), residual factor \(1-2k/n\), and specialization \(k/n\le1/8\Rightarrow1-2k/n\ge3/4\). There are no hidden constants, auxiliary tolerances, absorbed terms, horizon upgrades, or norm changes. Conditional and unconditional probability modes are linked by the displayed tower identity, and the \(T=0\) baseline retains the exact zero conclusion.

## Notation Surface Audit

The public-facing surface is limited to the setting-defined tensor, spans, projectors, events, probabilities, and residual margin. The fixed fiber \(T_0\), mean projector \(\overline P_M\), and projected-energy variable \(X_M\) are correctly classified as proof-local; theorem-style local results are appendix-local. No helper alias hides a dependence, event, boundedness claim, or transfer residual.

## Target-Step Assembly Audit

The accepted Lemma~\ref{lem:step-001-haar-independence} supplies the exact conditional product-Haar law. Lemma~\ref{lem:step-002-projector-energy} supplies the Haar expectation and arbitrary-\(T\) trace identity; Lemma~\ref{lem:step-002-markov-event} supplies each \(1/2\) event bound with the zero boundary handled separately; Proposition~\ref{prop:step-002-joint-event} supplies conditional factorization and the tower-based \(1/4\) bounds; and Lemma~\ref{lem:step-002-residual-margin} supplies the exact \(k/n\) margin arithmetic. These named accepted/developed results jointly imply every clause of the target row without relying on bare unit IDs or diagnostic artifacts.

## Review Rationale

`ACCEPTED` is warranted because all four local units are self-contained, mathematically valid, and jointly prove the unchanged accepted sketch-row claim. The high-risk points requested for review all close exactly: the Haar mean projector has trace-fixed coefficient \(k/n\); the trace formula holds for arbitrary \(T\); \(T=0\) is handled before any division; Markov controls the correct complement; product structure is invoked only conditionally on the shared tensor; the tower property preserves the pointwise \(1/4\) bound; and the dimension/rank assumptions give the exact \(3/4\) residual factor. The accepted `step_001` dependency is sufficient and sound, so no producer, dependency, or sketch repair is required and `Smallest Retry Target = None`.
