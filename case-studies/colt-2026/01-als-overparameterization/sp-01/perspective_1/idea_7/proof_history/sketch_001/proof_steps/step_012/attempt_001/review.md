# Proof Step Review

## Step Review Identity

- Branch: `perspective_1/idea_7`
- Sketch attempt: 1
- Step ID: `step_012`
- Unit attempt: 1
- Binding setting SHA-256: `1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a`
- Binding sketch SHA-256: `31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69`
- Binding sketch-review SHA-256: `b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e`
- Reviewed proof artifact: `perspective_1/idea_7/proof_steps/step_012/proof.md`
- Reviewed proof SHA-256: `0dda5eb0cfc2d276e6550e17aabf81897bc6519328b2fe180173e602c72e3299`
- Accepted dependency `step_003` proof/review SHA-256: `2ec3af5229ee6717bb501939c614b65a7163694fb3f478395c8ff163df2ed551` / `046c8b2ef34d4e749556b11d1ce056457f3d84feffe4e63a9b9d528c3a2a2527`
- Accepted dependency `step_011` proof/review SHA-256: `261a9f185e507aa82a022051791ca90bf29faf473440d54920e1632433219ed0` / `9dbaa42776c3f3c91b8172d6564261627673fd75bd854542e810084efb8ad1af`
- Hash preflight: all binding, proof, and dependency hashes match the files reviewed.

## Step-Review Status

`REVISE_STEP`

## Smallest Retry Target

`/proof-step step_012`

## Blocking Issues

1. **`unit_001`, equation (7): the quotient-to-original-residual denominator uses the wrong Gram identity.** The accepted target Khatri--Rao Gram is the two-mode matrix
   \(K_U=(W\odot V)^\top(W\odot V)=(W^\top W)\circ(V^\top V)\). For a nonorthogonal third mode,
   \[
   \|T\|_F^2=\lambda^\top\bigl[(U^\top U)\circ K_U\bigr]\lambda,
   \]
   not \(\lambda^\top K_U\lambda\) as asserted in (7). Thus the displayed lower bound, and hence the certified constant in (8), is not proved by the submitted derivation. This is locally repairable: define the pair and full tensor Grams and use the Schur product theorem with the unit diagonal of \(U^\top U\), or use the accepted three modewise Gram floors directly, to prove a lower bound for the actual full tensor Gram before recomputing (8). The repaired proof must restate this standard fact in current notation and discharge its assumptions.

2. **`unit_001`, `unit_002`, `unit_003`, and `unit_005`: theorem-style assumption and dependency provenance is incomplete.** The statements use raw text such as `assump:accuracy-confidence`, classify \(\kappa_0\ge1\) as part of a derived static event, and invoke bare step IDs in their proofs. In particular, `unit_002` does not name the accepted chronological-contraction proposition or the residual-transfer lemma in its statement, and `unit_005` does not name the accepted coupon proposition, the accepted basin proposition, and the local stopping proposition that turn coverage into success. Rewrite the statements using `Assumption~\ref{assump:...}` and named theorem-style dependency/local results, classify \(\kappa_0\ge1\) as a primitive setting condition, and remove the assembly's unsupported assertion that this step proves the landing itself is stationary. This step may prove the residual/cap behavior conditional on the exact entry; `step_013` owns the full landing baseline trace.

3. **`unit_003`: the literal all-tape claim does not account for the setting's initial normalization domain.** The proof checks zero Jacobi contractions but starts after \({\cal N}(\xi)=\xi/\|\xi\|_2\) has already been formed. A raw tape containing \(\xi=0\) is therefore outside the written procedure before any listed gate. State explicitly the algorithmically admissible tape domain (equivalently, the standard nonzero almost-sure version of each Gaussian initialization) and quantify `E_run_cap` over every tape in that domain. The Moore--Penrose singular/off-chart separation after initialization is otherwise valid and needs no basin claim.

4. **Runtime assembly stops at a per-run bound.** Proposition (13) gives a sound dense upper bound for one run, while the target requires the runtime including all \(J\) restarts. The assembly never displays or derives
   \(W_{\rm total}\le J W_{\rm run}\), never substitutes the exact bounds for \(L_{\rm prop}\), \(m_{\rm cap}\), and \(J\), and calls \(J=O(\log(1/\delta_{\rm init}))\) although the uniform formula with the clamp is \(J=O(1+\log(1/\delta_{\rm init}))\). Add the total-work inequality and the explicit specialization to the variables in the setting. This is an assembly calculation within the unchanged step row, not a new sketch interface.

## Per-Lemma Audit

### unit_001: balanced-chart residual transfer

- Statement fidelity: The intended claim is exactly the required quotient-to-original-Frobenius bridge, with the correct active rank and no additive floor. Its primitive and derived assumption basis needs the provenance repair in Blocking Issue 2.
- Proof validity: Equations (2)--(6) correctly encode the balanced exact-span tensor and bound the numerator without an \(\ell_1\)-over-components loss. Equation (7) is false for general nonorthogonal \(U\), because it omits the factor \(U^\top U\) from the full tensor Gram. Consequently (8) is not established as written.
- Cited-result and assumption audit: The accepted pair-Gram floor is applicable only after a current-notation Schur-product transfer to the full three-mode Gram. `K_U` is not defined locally, and \(\kappa_0\ge1\) is a primitive setting fact rather than an `E_sm` output.
- Rigor checklist: The induced-norm-to-spectral estimate, exponential scale bound, Kronecker operator norm, and constants through (6) pass. The denominator comparison and its constant do not.
- Local adversarial test: Take nonorthogonal unit columns in \(U\) and nonorthogonal columns in the other two modes. Then the cross terms in \(\|T\|_F^2\) contain the additional \(U\)-inner products, directly disproving the equality in (7). At \(x=0\), the numerator remains exactly zero, so the baseline part of this unit is sound.
- Contribution to target step: Blocked until the actual target norm receives a valid spectral lower bound.
- Verdict: `REVISE_STEP`
- Repair direction: Replace (7) by a defined full tensor Gram identity and a proved Schur/Gershgorin or minimum-singular-value lower bound; then recompute the constant and cite the primitive/derived inputs in the lemma statement.

### unit_002: covered-path stopping before the cap

- Statement fidelity: The proposition targets the exact original residual and the setting's exact cap. It should name the accepted basin proposition and Lemma~\ref{lem:step-012-residual-transfer} in its statement.
- Proof validity: Conditional on a repaired residual-transfer lemma and the accepted recurrence, \(x_t\le\ell^t x_0\), \(x_0<1\), and \(C_{\rm stop}\log(512/17)\ge1\) give (9)--(11). The ceiling only strengthens the estimate, and \(8\kappa_0^2/\epsilon>1\).
- Cited-result and assumption audit: The proof currently says only that `step_011` supplies the recurrence. It must cite the accepted Proposition~\ref{prop:step-011-chronological-contraction}, and it must cite the primitive accuracy and base-scale conditions in theorem-ready form.
- Rigor checklist: The geometric exponent, cap boundary, first-hit interpretation, and absence of an additive floor pass once `unit_001` is repaired.
- Local adversarial test: At the maximal entry radius, the accepted recurrence stays inside the chart. At the exact state \(x_0=0\), the accepted cyclic fixed-point result gives residual zero after the first completed sweep. No off-event state is used.
- Contribution to target step: Supplies `E_stop` after the local denominator and provenance repairs.
- Verdict: `REVISE_STEP`
- Repair direction: Consume the repaired residual lemma and named accepted recurrence explicitly; keep the cap arithmetic unchanged.

### unit_003: observable cap and Moore--Penrose branch separation

- Statement fidelity: The good-path recurrence is correctly withheld from singular, off-chart, and noncovered branches. The all-tape quantifier needs the initialization-domain clarification in Blocking Issue 3.
- Proof validity: Once initialized, all proposal lists and gates are finite, every finite design has a Moore--Penrose solution, and the fixed counter gives either a hit or timeout after at most \(m_{\rm cap}\) sweeps. A zero cyclic output need not be canonically refreshed on the literal capped branch, so no illegal quotient assertion is made.
- Cited-result and assumption audit: Moore--Penrose existence is used only for existence on a singular branch, not for an inverse reserve. The theorem statement must cite the accuracy assumption in the required stable format and make the admissible-tape convention explicit.
- Rigor checklist: Singular landing and cyclic designs, zero active landing norms, nonhitting states, and positive target denominator on `E_sm` are separated correctly. The unchecked raw-zero initialization is the sole totality defect.
- Local adversarial test: A rank-deficient frozen or cyclic design still yields a finite pseudoinverse output and reaches the cap. A literal raw vector \(\xi=0\), however, makes the stated initialization undefined before the proof's first gate.
- Contribution to target step: Supplies `E_run_cap` after the tape-domain statement is made exact.
- Verdict: `REVISE_STEP`
- Repair direction: State the nonzero Gaussian tape domain/version explicitly; retain the existing singular/off-event/cap argument.

### unit_004: dense per-run runtime

- Statement fidelity: The proposition correctly limits itself to one complete run and includes successful and unsuccessful branches.
- Proof validity: The dimensions are consistent: unfolding/design multiplication costs \(O(n^3k)\), Gram formation costs \(O(n^2k^2)\), and a dense \(k\)-column factorization costs \(O(k^3)\). Proposal contractions, scores, graph work, landing, residual reconstruction, and at most \(m\) sweeps are all covered by (13).
- Cited-result and assumption audit: The dense exact-arithmetic model is stated, and no condition-number estimate is inferred from Moore--Penrose existence.
- Rigor checklist: Retaining the inactive zero-padded columns only enlarges the rank-\(r\) cost to the valid \(B_k\) bound. Constant factors for three modes are absorbed into the universal operation-count constant.
- Local adversarial test: Singular designs do not change matrix dimensions or introduce an inverse-condition-number factor in this arithmetic-operation model.
- Contribution to target step: Provides the correct per-run factor for the missing total-work multiplication.
- Verdict: `PASS`
- Repair direction: None within this unit; add the `J W_run` specialization in target assembly.

### unit_005: conditional restart amplification

- Statement fidelity: The exact formula for \(J\), conditional fixed-instance probability, smallest-residual output rule, and rank bound match the target. The statement must name all results that make coverage imply a completed successful run.
- Proof validity: Conditional on the repaired `E_stop` result, each run fails with probability at most \(1/27\), and fresh full proposal tapes make the completed-run outcomes independent given the smoothed tensor. Hence \(27^{-J}\le\delta_{\rm init}\) follows from \(C_{\rm rep}\log 27\ge1\). Minimum-residual selection preserves the original residual threshold, and inactive columns stay zero.
- Cited-result and assumption audit: The accepted coupon and chronological-contraction propositions and the local cap proposition are used by name only in prose through bare step IDs. They must be restated/named in the proposition's assumption basis. Cross-target independence is not used.
- Rigor checklist: The outer smoothing event remains separate, the restart randomness is conditional on one fixed tensor, and early failed runs remain completed finite trials by `unit_003`. Uniformly over all \(\delta_{\rm init}\in(0,1)\), the asymptotic shorthand is \(O(1+\log(1/\delta_{\rm init}))\).
- Local adversarial test: For \(\delta_{\rm init}\) close to one, the `max{1,...}` clamp is necessary and the exact failure inequality still holds; this is why a uniform bare \(O(\log(1/\delta_{\rm init}))\) statement is not literal.
- Contribution to target step: Supplies `E_restart` after `E_stop` is repaired and supplies the factor \(J\) for total runtime.
- Verdict: `REVISE_STEP`
- Repair direction: Name the accepted/local producers in the statement, consume the repaired stopping proposition, and use the exact clamped rate in the runtime assembly.

## Hidden Subclaim Scan

The full-tensor denominator comparison is an independent nontrivial subclaim hidden inside equation (7); it must be proved within `unit_001`. The target assembly also silently upgrades the per-run bound to total restarted runtime and asserts that the landing itself is stationary in the baseline, neither of which is supplied by the named local results in this step. The former needs an explicit `J W_run` calculation; the latter should be restricted to the exact-entry residual/fixed-point consequence and left to `step_013` for the full landing trace. Apart from the raw-zero initialization-domain point, the singular/off-event branches do not hide a basin or inverse claim.

## Target Claim Audit

The submitted artifact does not yet establish the exact step claim. The stopping and restart conclusions depend on the unproved original-norm lower bound in equation (7), and the all-restart polynomial runtime is asserted without its total-work calculation. The cap arithmetic, conditional probability order, rank bound, and Moore--Penrose/off-event separation otherwise match the accepted sketch row and require no change to that row.

## Explicit Rate Audit

- Exposed variables: \(n,r,k=U(r),\kappa_0,\rho^{-1},\log(1/\epsilon)\), and \(\log(1/\delta_{\rm init})\) are retained. The proof correctly keeps \(\delta_{\rm sm}\) out of the rank and restart count.
- Hidden constants: the stated dependence on universal dense-operation and numerical constants is acceptable; no generated condition number enters the arithmetic-operation bound.
- Fixed quantities: one smoothed tensor, the dense representation, inactive zero columns, and cyclic U/V/W order are correctly fixed under conditional restart analysis.
- Probability mode: the proof correctly separates the outer `E_sm` event from conditional independent restart randomness. It does not multiply the confidence levels into `k`.
- Horizon mode: the geometric recurrence is used only on generated `E_basin`; arbitrary defined tapes use the finite cap without receiving convergence.
- Norm mode: the intended exported norm is the original relative Frobenius norm. That mode conversion remains unproved until Blocking Issue 1 is fixed.
- Term absorption: the geometric cap and restart exponent inequalities are explicit and correct. The residual denominator transfer and total restart-cost specialization are incomplete.
- Baseline reduction: exact entry \(e=0\) gives zero residual and a stationary cyclic state through the accepted dependency. This step should not claim the separate frozen landing identity owned by `step_013`.

## Notation Surface Audit

`Delta`, `mathscr G`, `mathcal A`, `x_t`, `B_s`, and `W_run` are appropriately proof-local, while `E_stop`, `E_run_cap`, and `E_restart` are the minimal public-facing outputs. `K_U` in equation (7) is neither defined nor correctly mapped to the full tensor Gram. The repaired proof should define the pair Gram and full three-mode Gram separately rather than overloading one symbol. No other notation cascade is present.

## Target-Step Assembly Audit

The accepted coupon proposition supplies `E_cov`; the accepted chronological-contraction proposition supplies the exact-span basin recurrence; the repaired residual-transfer lemma and stopping proposition would then imply `E_stop`; the finite-tape proposition supplies `E_run_cap`; and the restart proposition implies `E_restart`. This dependency flow is acyclic and preserves the nested probability order. As submitted, the first implication fails at equation (7), and the runtime conclusion lacks the final multiplication and specialization over exactly \(J\) completed runs.

## Review Rationale

`REVISE_STEP` is the smallest sound status. The decisive mathematical error is confined to the local residual-transfer derivation and has a standard repair using the already accepted realized Gram controls. The remaining defects are local statement/provenance, tape-domain, baseline-scope, and rate-assembly issues. None requires a new assumption, changed algorithm, changed dependency row, new bridge step, weaker target, or repair to either accepted dependency. A fresh proof-step attempt must be followed by a fresh review before downstream use.
