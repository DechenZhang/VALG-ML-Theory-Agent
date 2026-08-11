# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_005/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_005

## Blocking Issues

1. **Local statements do not expose all prior-result dependencies.** In `unit_002`, the exact proposition statement omits Lemma~\ref{lem:step-005-limit-order}, although its proof uses that lemma to pass the all-time floor to the limit. In `unit_003`, the local lemma map lists Proposition~\ref{prop:step-005-pathwise-closure} as a premise, but the exact proposition statement omits it and the proof then uses it as the sole pathwise-to-set-inclusion source. In `unit_004`, the exact proposition statement omits Lemma~\ref{lem:step-005-limit-order}, although the proof again uses it. This violates the required statement-level assumption/dependency discipline and makes the local lemma map disagree with the exact `unit_003` statement. The smallest repair is to add the omitted named prior results to the affected exact statements and matching map rows, without changing any mathematical claim, assumption, or dependency step.
2. **One dependency is cited by workflow ID inside a local proof.** The proof of `unit_004` says that the accepted `step_004` results give the finite objective limit, rather than citing the already identified Lemma~\ref{lem:step-004-finite-variation} and Proposition~\ref{prop:step-004-objective-limit} as mathematical authority. Replace that sentence with the exact theorem-style references. No dependency proof or sketch change is needed.

## Per-Lemma Audit

### unit_001: Uniform lower bounds pass to a finite limit

- Statement fidelity: The lemma states exactly the scalar order-preservation fact needed to combine the accepted all-time objective floor with the accepted finite objective limit.
- Proof validity: The contradiction argument with `eta=(b-a)/2` is correct and covers every real finite limit and every real lower bound.
- Cited-result and assumption audit: No citation or branch assumption is used. The statement is self-contained.
- Rigor checklist: Quantifiers, strict inequalities, and the finite-limit mode are correct. No liminf-to-limit or extended-real upgrade is hidden.
- Local adversarial test: Equality `a=b`, a constant sequence, and negative values of `a` or `b` are all covered.
- Contribution to target step: It provides the exact scalar-limit bridge used by `unit_002` and `unit_004`.
- Verdict: PASS
- Repair direction: None.

### unit_002: Pathwise closure of the conditional loss floor

- Statement fidelity: The claimed conclusion exactly matches the pathwise part of the sketch row: `m=delta-L_P-zeta>delta/2`, positive explicit `epsilon`, finite objective limit, and the limiting relative floor on a trajectory in exactly `C_2`.
- Proof validity: The strict-margin calculation is correct. Both sides of the accepted norm floor are checked nonnegative before squaring. The resulting objective floor holds for every `t`, and Lemma~\ref{lem:step-005-limit-order} validly passes it to the finite limit supplied by the accepted `step_004` proposition.
- Cited-result and assumption audit: The current accepted Proposition~\ref{prop:step-003-ambient-floor}, Lemma~\ref{lem:step-004-finite-variation}, and Proposition~\ref{prop:step-004-objective-limit} match their proof/review artifacts and apply because membership in `C_2` supplies their certificate clauses. The exact statement, however, omits the named local Lemma~\ref{lem:step-005-limit-order} used in the proof.
- Rigor checklist: The proof retains `L_P`, `zeta`, `kappa^6`, and `C_T`; never divides by `||T||_F`; preserves the ambient Frobenius objective; and makes no probability, factor-convergence, or ALS-regularity upgrade.
- Local adversarial test: `T=0`, stationary trajectories, nearly saturated strict margins, and an empty or probability-zero certificate do not break the pathwise implication.
- Contribution to target step: Once its statement-level dependency list is repaired, it supplies the exact outcome-by-outcome finite-limit and loss-floor conclusion consumed by `unit_003`.
- Verdict: REVISE_STEP
- Repair direction: Add Lemma~\ref{lem:step-005-limit-order} to the exact proposition statement and corresponding local-map statement; leave the derivation unchanged.

### unit_003: Exact conditional event inclusion

- Statement fidelity: The displayed inclusion is exactly the setting-defined inclusion, with the same antecedent event, objective, limit mode, explicit `epsilon`, primitive joint law, and no certificate-probability assertion.
- Proof validity: Taking an arbitrary outcome in `C_2`, applying the pathwise closure proposition, and concluding elementwise set inclusion is correct. The proof neither conditions on `C_2` nor divides by its probability, so it remains valid when the antecedent is empty or null.
- Cited-result and assumption audit: Proposition~\ref{prop:step-005-pathwise-closure} is the exact prior result needed and is cited in the proof. The local lemma map also identifies it, but the exact proposition statement itself omits this named dependency, contrary to the statement-level contract.
- Rigor checklist: The set inclusion is literal rather than probabilistic; no measurability-to-probability conversion, union bound, nonemptiness assertion, or conditional-to-unconditional upgrade is used.
- Local adversarial test: Empty `C_2`, measure-zero `C_2`, and a nonempty `C_2` all satisfy the same outcome-by-outcome logic. The conclusion does not imply any lower bound on `P[C_2]`.
- Contribution to target step: It supplies the exact theorem-facing event inclusion after the statement-level dependency mismatch is repaired.
- Verdict: REVISE_STEP
- Repair direction: Add Proposition~\ref{prop:step-005-pathwise-closure} explicitly to the exact proposition statement so it matches the local lemma map and proof.

### unit_004: Exact/noiseless limiting-loss baseline

- Statement fidelity: The proposition preserves the accepted baseline obligation under `Q=I`, `E_rho=0`, and `T=D_r`, producing the stronger limiting floor `(delta-L_P)^2||T||_F^2` rather than a remainder or stopped surrogate.
- Proof validity: The accepted baseline residual floor is nonnegative because `delta-L_P>3delta/4>0`, so squaring is valid. The accepted objective limit and the local scalar limit lemma then give the displayed limiting floor.
- Cited-result and assumption audit: The accepted baseline-floor and objective-limit artifacts match the current dependency attempts. The exact statement omits Lemma~\ref{lem:step-005-limit-order}, and the proof refers once to the accepted `step_004` results by workflow ID rather than the exact theorem-style labels.
- Rigor checklist: The specialization removes the smoothing and coordinate losses, keeps the same target and Frobenius objective, and introduces no probability or ALS-regularity claim.
- Local adversarial test: Zero variation and stationary paths are covered. The baseline conclusion remains a constant relative floor and is not weakened merely to vanishing defect terms.
- Contribution to target step: It discharges the accepted exact/noiseless baseline-invariance audit, but needs only reference-discipline repairs.
- Verdict: REVISE_STEP
- Repair direction: Add Lemma~\ref{lem:step-005-limit-order} to the exact statement and map row, and replace the bare `step_004` reference in the proof with Lemma~\ref{lem:step-004-finite-variation} and Proposition~\ref{prop:step-004-objective-limit}.

## Hidden Subclaim Scan

The mathematical subclaims are all visible: scalar order preservation is `unit_001`, pathwise quantitative closure is `unit_002`, set inclusion is `unit_003`, and baseline preservation is `unit_004`. The explicit scalar choices in the target-step assembly are atomic substitutions satisfying the displayed positivity and dependence restrictions, not an unproved certificate-existence claim. The only structural defect is that three exact local statements fail to name prior theorem-style results that their proofs consume.

## Target Claim Audit

Subject to the local statement/reference repairs, the proof establishes the exact binding `step_005` claim. It proves
\[
m=\delta-L_P-\zeta>\delta/2>0,
\qquad
\epsilon=\left(\frac{m}{\kappa^6C_T}\right)^2>0,
\]
obtains the all-time objective floor by nonnegative squaring, passes that floor to the accepted finite scalar limit, and writes the result as the exact set inclusion under the joint law. It preserves all primitive quantifiers and is uniform over the declared `r,n,k`, admissible base triple, time, and realization.

The existential theorem constants are also handled correctly. The proof first establishes the stronger fixed-parameter implication for every positive `delta,L_P,zeta,C_T` satisfying the strict margins. The explicit choices `r_0=1`, `C_dim=1`, `delta=1`, `L_P=zeta=1/8`, and `C_T=1` are positive constant functions with only the allowed `(kappa,q)` dependence and therefore discharge the scalar existential quantifiers. The proof explicitly does not infer that the associated certificate is nonempty or has positive probability; possible vacuity is compatible with the accepted formalized conditional goal.

## Explicit Rate Audit

The proof exposes `kappa,q,r,n,k,delta,L_P,zeta,C_T,t` and the exact `epsilon`, with no hidden constant in the loss floor. The theorem-facing constants depend only on `(kappa,q)` and not on `r,n,k,t`, the base triple, or the realization. Fixed quantities, conditional pathwise probability mode, horizon-uniform-to-asymptotic mode, and ambient Frobenius norm mode are stated correctly. The only simplification is the displayed strict-margin inequality; every defect and scale factor is retained. No probability conversion occurs. The exact/noiseless specialization preserves the stronger baseline floor.

## Notation Surface Audit

The public-facing objects are inherited from the setting or accepted dependencies. `epsilon` is a necessary public constant with exact provenance, `m` is a useful proof-local abbreviation whose positivity is proved, and `T_hat_infinity` is an accepted dependency object used only to identify the finite limit. No helper event, regularity dictionary, free bounded constant, or unnecessary exported notation is introduced.

## Target-Step Assembly Audit

The accepted Proposition~\ref{prop:step-003-ambient-floor} gives the horizon-uniform norm floor. Nonnegative squaring gives the exact all-time objective floor. Accepted Proposition~\ref{prop:step-004-objective-limit} gives the finite limit of the same scalar objective, and Lemma~\ref{lem:step-005-limit-order} preserves the lower bound at that limit. Proposition~\ref{prop:step-005-event-inclusion} then gives the exact set inclusion without asserting certificate nonemptiness or probability. Proposition~\ref{prop:step-005-baseline-limit} preserves the recorded baseline. Thus the mathematical assembly is complete and uses no hidden ALS regularity; only the affected exact local statements and one proof reference need repair before certification.

## Review Rationale

`REVISE_STEP` is the smallest sound status. The event-inclusion logic, constant dependence and existential choices, quantitative inequalities, convergence-mode alignment, probability boundary, and exact/noiseless baseline are all correct under the unchanged accepted sketch and dependencies. No dependency or sketch interface must change. The submitted step nevertheless fails the mandatory theorem-style local-statement contract because `unit_002`, `unit_003`, and `unit_004` omit named prior results that their proofs use, and `unit_004` contains one bare workflow-step reference as mathematical authority. A local producer rerun that changes only those statement/reference lines is sufficient; the repaired proof will still require a fresh `step_005` review before downstream use.
