# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_015`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_015/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: polynomial continuity of the CP model and objective

- Statement fidelity: The proposition proves exactly the continuity bridge required by the accepted `step_015` interface. It fixes the realized target while varying the finite-dimensional parameter triple, so target randomness is not confused with parameter continuity.
- Proof validity: The coordinate identity
  \[
    [S(X,Y,Z)]_{abc}=\sum_{i=1}^k X_{ai}Y_{bi}Z_{ci}
  \]
  makes every output coordinate a homogeneous polynomial of total degree three. Substitution into
  \[
    F(X,Y,Z)=\sum_{a,b,c}\left(T_{abc}-\sum_iX_{ai}Y_{bi}Z_{ci}\right)^2
  \]
  gives a polynomial of total degree at most six, including the constant, cubic, and sextic terms. Finite-dimensional polynomial continuity therefore gives both asserted limits.
- Cited-result and assumption audit: Polynomial continuity is restated in current notation and proved from coordinates; no external citation or generated invariant is used. The displayed formula for `d_bal` is exactly the Euclidean product norm on \((\mathbb R^{n\times k})^3\), so no quotient, balancing-orbit, or surrogate metric is introduced.
- Rigor checklist: The proof keeps \(T\) fixed for the continuity argument, quantifies over all finitely many coordinates, and uses the physical Frobenius objective from the setting. Product-space convergence therefore implies \(S(\theta_t)\to S(\theta_\infty)\) in Frobenius norm and \(F(\theta_t)\to F(\theta_\infty)\) in \(\mathbb R\).
- Local adversarial test: Possible zero factor columns or a limit on the zero branch do not affect polynomial continuity. No continuity of the balancing map is needed because the accepted dependency already supplies convergence of the represented parameter sequence itself.
- Contribution to target step: Supplies the exact passage from the accepted `d_bal` parameter limit to the asymptotic value of the actual objective.
- Verdict: PASS
- Repair direction: None.

### unit_002: endpoint continuity and exact event inclusion

- Statement fidelity: The proposition consumes the accepted convergence and positive-endpoint-loss interfaces and proves the exact inclusion \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\subseteq\mathcal F_+\). It uses the setting's actual convergence-and-positive-limit event, not an endpoint-only, finite-time, normalized, or surrogate-target event.
- Proof validity: On an arbitrary outcome in the intersection, accepted Lemma~\ref{lem:step-011-finite-path-limit} gives a finite \(d_{\rm bal}\)-limit. Proposition~\ref{prop:step-015-polynomial-continuity} converts it to \(\lim_tF(\theta_t)=F(\theta_\infty)\), and accepted Proposition~\ref{prop:step-014-positive-physical-loss} gives \(F(\theta_\infty)\ge\epsilon_0(\kappa)\|T\|_F^2>0\) on the same event. These are exactly the two defining clauses of \(\mathcal F_+\).
- Cited-result and assumption audit: The current accepted `step_011` proof/review pair supplies convergence on `C_path`; the current accepted `step_014` pair supplies the exact physical endpoint floor on the intersection. Assumption~\ref{assump:gd_step} only identifies the setting trajectory. No positive probability, boundedness, or loss conclusion is promoted to a primitive assumption.
- Rigor checklist: The convergence mode, endpoint object, physical objective, strict positivity, and event scope agree across both dependencies and the local continuity result. The proof does not replace a limit by a liminf or infer endpoint positivity without continuity.
- Local adversarial test: At zero path length, the accepted limit is \(\theta_0\) and continuity remains exact. At a zero conditional probability for the path event, the deterministic inclusion remains valid pointwise and makes no probabilistic assertion by itself.
- Contribution to target step: Establishes the precise event inclusion required before probability monotonicity can be applied.
- Verdict: PASS
- Repair direction: None.

### unit_003: exact conditional-probability accounting

- Statement fidelity: The proposition proves all three relations in the target display under the joint smoothing/initialization law for an arbitrary admissible deterministic base triple. It retains the progress type `conditional` and the exact unresolved factor \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\).
- Proof validity: Accepted Proposition~\ref{prop:step-010-public-confidence} yields \(\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}>0\) for \(r\ge2\), before conditional probability is defined. Event inclusion gives the first inequality, the definition of conditioning on a positive-probability event gives the equality, and multiplication of the initialization-confidence bound by the nonnegative conditional factor gives the final inequality with the correct direction.
- Cited-result and assumption audit: The accepted `step_010` interface is stated under the same joint law and uniformly for every admissible deterministic base triple. Conditional probability and event monotonicity are restated and instantiated with the exact setting events. No independence between initialization geometry and the trajectory event is claimed or used.
- Rigor checklist: Assumption~\ref{assump:dimension} permits enlarging the existing asymptotic threshold so that \(r\ge2\); this introduces no new theorem-facing regime. The denominator is checked strictly positive before division. The conditional factor lies in \([0,1]\), so the multiplication step is legal even at zero.
- Local adversarial test: If \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})=0\), the exact intersection identity gives probability zero and the final result reduces only to \(\mathbb P(\mathcal F_+)\ge0\). Thus the proof does not manufacture an unconditional positive failure probability or a lower bound for the path certificate. Arbitrary dependence between the two events does not affect the argument.
- Contribution to target step: Performs the exact final probability-mode conversion and preserves the conditional branch's stated remaining gap.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. The coordinate polynomial degrees, equality of `d_bal` with the Euclidean product metric, objective-limit passage, definition-level membership in \(\mathcal F_+\), positivity of the conditioning denominator, event monotonicity, conditional identity, multiplication by a nonnegative factor, and zero-factor boundary are all represented by the three mapped units and proved where used. Measurability is inherited from the setting's declared events and finite-dimensional trajectory maps; no independence or probability-mode upgrade is hidden in the prose or assembly.

## Target Claim Audit

The proof establishes the exact accepted `step_015` claim. On \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), the balanced representatives converge in the unchanged metric and their actual physical objective satisfies
\[
  \lim_{t\to\infty}F(\theta_t)=F(\theta_\infty)
  \ge\epsilon_0(\kappa)\|T\|_F^2>0.
\]
Consequently the exact event inclusion holds, and under the setting's joint law
\[
  \mathbb P(\mathcal F_+)
  \ge(1-r^{-10})
    \mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm}).
\]
The conclusion remains explicitly conditional: it makes no positive lower-bound claim for the retained factor and therefore no unconditional positive-probability claim.

## Explicit Rate Audit

The step exposes \(r\), the confidence \(1-r^{-10}\), \(\kappa\) through the inherited \(\epsilon_0(\kappa)=((15/16)\delta_0)^2\kappa_1^{-12}\), and the exact conditional factor. The large-\(r\) threshold may depend only on \(\kappa,q\), as inherited from the setting and accepted dependencies, and is explicitly enlarged to include \(r\ge2\). Probability mode is joint smoothing/initialization probability for each fixed admissible deterministic base triple followed by event conditioning on a proved positive-probability event. Horizon mode is all-time parameter convergence and asymptotic objective value; norm mode is `d_bal` and the physical tensor Frobenius objective. The only simplification is displayed and valid for a nonnegative factor:
\[
  \mathbb P(\mathcal E_{\rm init\_norm})p
  \ge(1-r^{-10})p,
  \qquad
  p=\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\ge0.
\]
At \(p=0\), both product terms are zero. No dependence, term, or confidence factor is dropped, and the zero-path baseline preserves the inherited positive physical endpoint floor.

## Notation Surface Audit

All exported objects and events are setting-defined or inherited from accepted dependencies. Coordinate indices and the abstract Euclidean product space are proof-local; the \(r\ge2\) threshold is appendix-local and absorbed into the allowed asymptotic threshold. The step introduces no helper dictionary, surrogate event, alternative metric, or new public constant. Its public output is only the exact event inclusion and conditional probability bound needed by the theorem.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-015-polynomial-continuity} supplies the missing continuity bridge from accepted Lemma~\ref{lem:step-011-finite-path-limit} to the asymptotic objective. Proposition~\ref{prop:step-015-event-inclusion} combines that bridge with accepted Proposition~\ref{prop:step-014-positive-physical-loss} to prove exact membership in \(\mathcal F_+\). Proposition~\ref{prop:step-015-conditional-accounting} then combines this inclusion with accepted Proposition~\ref{prop:step-010-public-confidence} under the same law. These named results jointly imply the exact target, with no missing interface, changed dependency, or extra mathematical repair.

## Review Rationale

All three local units are faithful and complete. The first proves the exact finite-dimensional continuity statement, the second assembles the actual convergence-and-positive-limit event, and the third performs conditioning only after proving a positive denominator and retains the unresolved conditional factor even at zero. The proof neither assumes independence nor upgrades the conditional theorem into an unconditional positive-probability result. No substantive repair or missing interface is present, so the overload rule does not trigger sketch revision and `ACCEPTED` with `Smallest Retry Target = None` is the smallest controlled result.
