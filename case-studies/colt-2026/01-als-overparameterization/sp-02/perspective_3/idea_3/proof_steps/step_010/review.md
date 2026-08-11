# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_010`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_010/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Conditional assembly of the initialization event

- Statement fidelity: The proposition proves exactly the technical failure bound required by the accepted `step_010` row under the joint smoothing/initialization law. It consumes the current accepted dependency pairs for `step_001` unit attempt 2, `step_003` unit attempt 2, `step_004` unit attempt 1, and `step_009` unit attempt 1, without changing any event or probability space.
- Proof validity: From the setting identity, the complement is split exactly as the disjoint union
  \[
    \mathcal E_{\rm init\_norm}^{\mathsf c}
    =\mathcal E_{\rm cond}^{\mathsf c}\ \uplus\
    \Bigl[\mathcal E_{\rm cond}\cap
      \bigl((\mathcal E_{\rm gram}^{\rm norm})^{\mathsf c}
      \cup\mathcal E_{\rm size}^{\mathsf c}
      \cup\mathcal E_{\rm deficit}^{\mathsf c}\bigr)\Bigr].
  \]
  With \(\mathcal G=\sigma(A,B,C)\), the setting definition makes \(\mathcal E_{\rm cond}\in\mathcal G\). Therefore the displayed tower-property equality with \(\mathbf 1_{\mathcal E_{\rm cond}}\) is exact. The conditional union bound is valid almost surely under arbitrary dependence, and the three dependency bounds are pointwise uniform on \(\mathcal E_{\rm cond}\). Thus the second disjoint term is at most \(3r^{-20}\); adding the one unconditional smoothing failure gives exactly \(4r^{-20}\).
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-001-realized-conditioning} supplies the unconditional bound \(\mathbb P(\mathcal E_{\rm cond}^{\mathsf c})\le r^{-20}\). Accepted Propositions~\ref{prop:step-003-normalized-gram-event}, \ref{prop:step-004-balanced-size-transfer}, and \ref{prop:step-009-raw-witness} supply the three conditional failures, each at most \(r^{-20}\) for every realized triple in \(\mathcal E_{\rm cond}\). These are the exact dependency conclusions; every event is a derived output rather than a primitive assumption.
- Rigor checklist: The smoothing and initialization randomness remain on the setting's single joint probability space. The proof neither divides by \(\mathbb P(\mathcal E_{\rm cond})\) nor conditions on \(\mathcal E_{\rm cond}\) as an event, so \(\mathbb P(\mathcal E_{\rm cond})=0\) would create no undefined quotient. It uses no product formula or independence among the Gram, size, and deficit events. Event order differs only by commutativity of intersection.
- Local adversarial test: Even if the three initialization failures are perfectly correlated, conditionally or unconditionally, the conditional union bound still gives the claimed sum. On realized triples outside \(\mathcal E_{\rm cond}\), the indicator vanishes, so no conditional dependency estimate is used there. On a null smoothing fiber, only a version of conditional expectation is involved, and the almost-sure tower identity remains valid.
- Contribution to target step: Establishes the exact technical interface \(\mathbb P(\mathcal E_{\rm init\_norm}^{\mathsf c})\le4r^{-20}\).
- Verdict: PASS
- Repair direction: None.

### unit_002: Public initialization confidence

- Statement fidelity: The proposition converts the technical four-failure budget to the exact public target \(\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\), without changing the event, confidence mode, or admissible rank and dimension regime.
- Proof validity: For \(r\ge2\), \(4\le2^{10}\le r^{10}\), hence \(4r^{-20}\le r^{-10}\). Combining this with Proposition~\ref{prop:step-010-conditional-union} and the complement identity for probability proves the claim exactly.
- Cited-result and assumption audit: The only input is the preceding named local proposition. Assumption~\ref{assump:dimension} already permits enlarging the sufficiently-large-\(r\) theorem threshold, so the explicit requirement \(r\ge2\) is not an additional theorem-facing assumption.
- Rigor checklist: The exponent arithmetic, inequality direction, endpoint \(r=2\), and high-probability mode are correct. No hidden constant, auxiliary tolerance, horizon dependence, or probability conversion is introduced.
- Local adversarial test: At \(r=2\), the comparison has substantial slack: \(4\le2^{10}\). Increasing \(r\) only strengthens it. The possibly empty small-\(r\) rank window is irrelevant because the formal theorem is already asymptotic.
- Contribution to target step: Converts the exact \(4r^{-20}\) failure estimate into the accepted sketch-row confidence \(1-r^{-10}\).
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. The exact complement decomposition, \(\mathcal E_{\rm cond}\in\sigma(A,B,C)\), the indicator-form tower equality, conditional union bound, pointwise use of the three conditional dependency estimates, addition of the unconditional smoothing failure, and exponent conversion are all stated and discharged. No event independence, product probability, quotient by an event probability, null-event conditioning, trajectory property, or generated event is silently assumed.

## Target Claim Audit

The two propositions prove the exact accepted `step_010` claim under the setting's unchanged joint law:
\[
  \mathbb P(\mathcal E_{\rm init\_norm}^{\mathsf c})
  \le r^{-20}+3r^{-20}=4r^{-20}\le r^{-10},
\]
and therefore
\[
  \mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}.
\]
The event is exactly the setting-defined intersection of \(\mathcal E_{\rm cond}\), \(\mathcal E_{\rm gram}^{\rm norm}\), \(\mathcal E_{\rm deficit}\), and \(\mathcal E_{\rm size}\). Each constituent has a legal accepted producer, and none is treated as a primitive condition.

## Explicit Rate Audit

The exposed quantities are \(r\), one unconditional failure \(r^{-20}\), three pointwise-uniform conditional failures \(r^{-20}\), and the public target \(r^{-10}\). Hidden threshold dependence is inherited only through the accepted dependency thresholds and may depend on \(\kappa,q\), not on \(n,r,k\), the deterministic bases, realized factors, initialization, time, or horizon. The probability mode is joint smoothing/initialization high probability, the horizon is initialization-only, and the norm mode remains inside the exact setting-defined events. Both required simplifications are displayed:
\[
  r^{-20}+3r^{-20}=4r^{-20},
  \qquad
  4r^{-20}\le r^{-10}\quad(r\ge2).
\]
No baseline specialization or additional rate bridge is needed.

## Notation Surface Audit

All five events are public-facing and setting defined. The sigma-field \(\mathcal G=\sigma(A,B,C)\), the indicator, and the coefficient \(4\) are proof-local; the threshold \(r\ge2\) is appendix-local and explicitly discharged by the large-\(r\) regime. No unnecessary helper dictionary or notation cascade is exported downstream.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-010-conditional-union} combines the exact disjoint complement identity with the accepted `step_001`, `step_003`, `step_004`, and `step_009` interfaces to prove the \(4r^{-20}\) failure bound. Proposition~\ref{prop:step-010-public-confidence} performs the explicit exponent comparison. These two named results jointly imply the exact target, with no missing bridge, dependency flaw, independence shortcut, or changed probability space.

## Review Rationale

Both local units are exact and contract-valid. The first performs legally conditioned event bookkeeping with one unconditional smoothing failure and three uniformly conditional initialization failures; the second converts the resulting budget to the public confidence within the allowed large-\(r\) regime. All events retain derived-output provenance, and the proof handles arbitrary dependence and possible null fibers without division by an event probability. There is no local proof flaw, dependency flaw, or sketch-interface defect, so `ACCEPTED` with `Smallest Retry Target = None` is the controlled result.
