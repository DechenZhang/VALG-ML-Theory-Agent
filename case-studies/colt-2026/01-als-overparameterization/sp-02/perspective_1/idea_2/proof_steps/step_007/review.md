# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_007`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_2/proof_steps/step_007/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Joint-event fixed-witness and all-time objective floor

- Statement fidelity: The proposition proves the exact first assembly interface from the accepted sketch row. On the accepted joint event it exposes the squared-residual fraction (3/4), converts it through the exact objective coefficient (1/2) to the floor (3/8), covers every finite index of both methods, and invokes the normalized fixed witness only on its legal positive-denominator branch.
- Proof validity: Assumptions~\ref{assump:dimension} and \ref{assump:rank_window} give
  \[
  k/n\le r^{5/4}/(8r^{5/4})=1/8.
  \]
  Accepted Proposition~\ref{prop:step-002-joint-event} therefore yields the simultaneous (3/4) complement-energy bound on \(\mathcal E\). Accepted Proposition~\ref{prop:step-003-pythagorean-floor} then gives
  \[
  F_M(t)\ge \tfrac12\|(I-P_{\mathcal H_M})T\|_F^2
  \ge \tfrac38\|T\|_F^2.
  \]
  Accepted Proposition~\ref{prop:step-004-sequential-descent} and Proposition~\ref{prop:step-005-well-defined} supply every finite index needed by the all-defined-iterate dependency. If (T\ne0), the (3/4) bound makes the witness denominator strictly positive; if (T=0), the proof correctly uses only the unnormalized Pythagorean floor.
- Cited-result and assumption audit: Every dependency is current, accepted, and restated in branch notation. The proposition uses only the two quantitative primitive assumptions plus accepted derived outputs; it does not treat event membership, fixed-span membership, iterate existence, or an objective floor as primitive. No external citation or diagnostic artifact is used as proof authority.
- Rigor checklist: The method, projector, realized tensor, Frobenius norm, and time index agree across all inputs. Both inequalities are non-strict, so equality at (k/n=1/8) is included. The probability-one algorithmic domain inherited from the accepted dependencies suffices for the final probabilistic use, and no finite-horizon, factor-boundedness, or conditioning hypothesis is added.
- Local adversarial test: At (T=0), all displayed lower bounds reduce to zero without division. At nonzero (T) on \(\mathcal E\), both witness denominators are positive. Singular cALS designs, zero cGD gradients, zero objective drops, and arbitrarily large finite factors remain covered by the accepted all-index dependencies and do not alter the static floor.
- Contribution to target step: It supplies the exact all-time (3/4\to3/8) bridge consumed by the scalar-limit unit.
- Verdict: PASS
- Repair direction: None.

### unit_002: Passage from the all-time floor to both objective limits

- Statement fidelity: The proposition proves exactly the accepted all-time-to-asymptotic conversion for the two scalar objectives. It preserves the same event, target tensor, norm, objective constant, and ordinary scalar convergence mode.
- Proof validity: Accepted Lemma~\ref{lem:step-004-scalar-limit} and Proposition~\ref{prop:step-005-scalar-limit} give finite limits for cALS and cGD. On each realized outcome in \(\mathcal E\), the quantity (c_T=(3/8)\|T\|_F^2) is fixed in (t), and Proposition~\ref{prop:step-007-joint-floor} gives (F_M(t)\ge c_T) for every (t). The displayed epsilon contradiction is a complete proof that the scalar limit is at least (c_T).
- Cited-result and assumption audit: The two accepted limit results are used with their exact conclusions and no stronger parameter-convergence or stationarity claim. The local proposition depends only on the preceding named proposition and those accepted scalar-limit outputs.
- Rigor checklist: No expectation, conditional probability, infimum over models, or optimization operation is interchanged with the limit. Finiteness of (T) makes (c_T) finite, and the argument applies separately to both method sequences before their conclusions are intersected.
- Local adversarial test: Constant sequences, zero limits, zero objective drops, and (T=0) all satisfy the argument. The proof does not require strict descent, a convergence rate, a positive step-size lower bound, or factor convergence.
- Contribution to target step: It produces the exact two-method limit event implied by \(\mathcal E\), with no loss from (3/8).
- Verdict: PASS
- Repair direction: None.

### unit_003: Exact constrained material-partial positive-limit theorem

- Statement fidelity: The proposition reproduces the formalized goal and the accepted `step_007` row with (r_0=1), \(\alpha=1/4\), (L(r)=r^{5/4}), joint probability at least (1/4), objective fraction (3/8), unrestricted deterministic bases, shared (T), independent method starts, and the two exact constrained algorithms. It explicitly labels the result `material_partial` and does not state an unconstrained conclusion.
- Proof validity: After fixing (q,r,n,k) and an arbitrary deterministic base triple, accepted Proposition~\ref{prop:step-002-joint-event} supplies the constant product-Haar conditional kernel and
  \[
  \mathbb P(\mathcal E\mid T=T_0)\ge1/4
  \]
  for every tensor fiber. On the common conditional probability-one algorithmic domain, Proposition~\ref{prop:step-007-limit-passage} proves \(\mathcal E\) is contained in the final two-limit event. Hence the final event has conditional probability at least (1/4), and the tower property preserves that bound under the full smoothing-and-initialization law. The arithmetic (k\le r^{5/4}), (n\ge8r^{5/4}) is valid for every positive integer (r), so (r_0=1) is legal; empty early integer rank windows are correctly treated as vacuous.
- Cited-result and assumption audit: All five setting assumptions appear with stable ids. The accepted `step_002` result supplies the shared-(T) conditional probability interface, the preceding local proposition supplies the final event implication, and accepted Claim~\ref{claim:step-006-nontransfer} is used only as a scope certificate. Smoothing concentration, base conditioning, incoherence, complete-trajectory independence, and a favorable generated event are not imported.
- Rigor checklist: The quantifier order is correct: (q) is fixed; (r,n,k) and each deterministic base triple are universally quantified; then smoothing and initialization are drawn. Uniformity over bases is pointwise with common constants, not a simultaneous event over an uncountable family. Conditional independence is used only for the two initialization spans after fixing the shared tensor. The conditional-null-set qualification is preserved before tower averaging.
- Local adversarial test: At (T=0), \(\mathcal E\) is sure and the required lower bound is zero. At (k/n=1/8), the constants remain exactly (3/4) and (3/8). For small (r) with no admissible integer (k), the theorem is vacuous rather than false. Arbitrary deterministic bases, exact/noiseless realized tensors, singular ALS designs, and zero GD gradients introduce no additional event. The accepted non-transfer certificate prevents any inference about ordinary unconstrained ALS or GD.
- Contribution to target step: It closes every theorem quantifier, the conditional-to-unconditional probability conversion, the numerical specialization, the baseline cases, and the constrained-only material-partial scope.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is hidden outside the three-unit map. The (k/n\) specialization, all-index objective floor, witness-denominator branch, scalar order preservation, conditional event inclusion, tower conversion, arbitrary-base uniformity, small-(r) vacuity, and constrained-only scope are each proved in or inherited explicitly by a named proposition. The boundary section only stress-tests these results. No diagnostic global-proof artifact is used as mathematical authority.

## Target Claim Audit

The proof establishes the exact `step_007` claim. For every admissible (r,n,k) and every unrestricted deterministic base triple, it proves under the stipulated smoothing and shared-target independent-start law that both constrained objective limits exist as finite real numbers and are at least ((3/8)\|T\|_F^2) on an event of probability at least (1/4). The residual constant (3/4), objective constant (3/8), threshold (r_0=1), rank function (L(r)=r^{5/4}), and exponent \(\alpha=1/4\) are all derived exactly. There is no quantifier, probability-mode, horizon-mode, norm, base-uniformity, or algorithm-scope drift.

## Explicit Rate Audit

The proof exposes (q,\rho=r^{-q},r,n,k,T,M,t\), the deterministic bases, \(\alpha=1/4\), (L(r)=r^{5/4}), and all numerical constants. No hidden constants or auxiliary tolerances remain. The displayed inequalities
\[
k/n\le1/8,\qquad 1-2k/n\ge3/4,\qquad \tfrac12(1-2k/n)\ge3/8
\]
justify every simplification. The probability mode is pointwise conditional on the shared tensor followed by exact tower averaging; the horizon mode is all finite indices followed by an already-proved scalar limit; and the norm mode is the actual tensor Frobenius norm throughout. No term is absorbed by prose. The (T=0), zero-objective, exact/noiseless, equality-boundary, and empty-rank-window baselines preserve the original conclusion rather than a weaker surrogate.

## Notation Surface Audit

The public-facing additions \(\alpha\), (L(r)), and (r_0) are necessary theorem quantities with explicit provenance. The joint event \(\mathcal E\), fixed residual (R_M), and scalar limits \(\ell_M\) are appropriately appendix-local; (T_0,c_T,\varepsilon,N\), and \(\mathbb E_T\) are proof-local. The `step_006` comparison objects remain appendix-local and are used only for scope. No helper alias hides a boundedness, measurability, probability, residual-transfer, or rate obligation, and the exported theorem surface remains minimal.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-002-joint-event} supplies the simultaneous projection event and its conditional (1/4) probability. Proposition~\ref{prop:step-007-joint-floor} combines it with accepted Proposition~\ref{prop:step-003-pythagorean-floor} and the all-index existence outputs from accepted `step_004` and `step_005`. Accepted Lemma~\ref{lem:step-004-scalar-limit} and Proposition~\ref{prop:step-005-scalar-limit}, through Proposition~\ref{prop:step-007-limit-passage}, supply the two asymptotic inequalities. Proposition~\ref{prop:step-007-material-partial} then performs the exact tower conversion and quantifier specialization, while accepted Claim~\ref{claim:step-006-nontransfer} supplies only the declared scope boundary. These named results jointly imply every clause of the target row without a missing bridge or reliance on bare unit ids.

## Review Rationale

`ACCEPTED` is the smallest sound decision because the proof is faithful to the accepted sketch and all dependency interfaces are current and sufficient. The high-risk points close exactly: conditioning is on the shared tensor before multiplying the two span-event probabilities; the common probability-one algorithmic domain introduces no confidence loss; (3/4) and (3/8) follow from displayed equalities and inequalities; the all-time floor passes to two finite scalar limits without a mode interchange; (r_0=1), (L(r)=r^{5/4}), and \(\alpha=1/4\) preserve every quantifier; arbitrary deterministic bases are handled pointwise with uniform constants; and all zero, equality, vacuous-window, singular-design, and constrained-scope boundaries are explicit. No step, dependency, or sketch repair is required.
