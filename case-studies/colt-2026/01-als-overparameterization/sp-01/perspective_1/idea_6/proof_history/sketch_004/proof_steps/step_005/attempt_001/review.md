# Proof Step Review

## Step Review Identity

- Branch: `perspective_1/idea_6`
- Sketch attempt: 4
- Step ID: `step_005`
- Unit attempt: 1
- Reviewed setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Reviewed sketch SHA-256: `47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b`
- Reviewed sketch-review SHA-256: `eda7c6672f755411db44e1ee214cf23ca1151429749140d0e3deffd4d5e40aa9`
- Reviewed proof artifact: `perspective_1/idea_6/proof_steps/step_005/proof.md`
- Reviewed proof SHA-256: `44a15d13954a19eda6e81ff7cc981ecfdd184aafb872ac5f3fbf516cfe2c6c37`

## Accepted Dependencies

- `step_004` proof SHA-256: `aff54178e9b82621c707d850d5b5d138ff44710610b997947c7be94a13f535b`; review SHA-256: `d6301b0f8c3b848bd2f4f7a41f039cbd22263b94f84a1b0a65cb2e4951544d03`; review status: `ACCEPTED`.
- `step_004b` proof SHA-256: `9e5a6515ebfd6889a28553751b9943bd3118319755afdedffdc8e49ba8496fdb`; review SHA-256: `6f01f4c67b592273856ecbc821784cd55781b6580f74c310497462a5da93fa64`; review status: `ACCEPTED`.

The dependency conclusions were checked in their current artifacts. They supply the covered certified witness and chart interface, the raw same-state signed equation, and the exhaustive no-label LOW/singleton/multi-support ledger used here.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_005

## Blocking Issues

1. Location: Lemma~\ref{lem:step-005-gauge}, especially proof lines 513--530. Defect: the statement quantifies over **every retained slot**, but its exported quantity
   \(s_{{\rm comp},a}=|\theta_a|/\lambda_{\pi(a)}\) uses the permutation
   \(\pi:[r]\to[r]\) produced by Proposition~\ref{prop:step-005-clusters} only after one representative per graph component has been selected and ordered. A nonrepresentative retained slot is not in that permutation's domain, so the statement and proof silently switch index sets. Downstream effect: the public `E_gauge`/`s_comp` interface is not well-defined with the stated quantifier and therefore cannot yet be consumed by `step_007`. Smallest repair: split the result into an all-retained-slot sign/orientation claim using the singleton label \(j(a)\), followed by a selected-representative claim under Proposition~\ref{prop:step-005-clusters} defining \(\pi(a)=j(a)\) and `s_comp`; alternatively restrict the entire exported `s_comp` conclusion to the ordered representatives.

2. Location: Proposition~\ref{prop:step-005-filter}, lines 285--303; Proposition~\ref{prop:step-005-clusters}, lines 460--482; and the opening of Lemma~\ref{lem:step-005-gauge}. Defect: the theorem-style statements do not name all prior results they consume. The filter statement lists only `E_cov` and `E_sm`, although its proof uses Lemma~\ref{lem:step-005-covered-singleton} and Proposition~\ref{prop:step-005-weighted-score}; line 301 cites the bare audit handle `unit_001` as mathematical authority. The clustering statement consumes Lemma~\ref{lem:step-005-chart-denom} only in its proof, and the gauge statement consumes the filter and clustering outputs without stating that basis at its opening. Downstream effect: the local results fail the required self-contained assumption-provenance and paper-ready-reference contract even though the underlying inequalities are valid. Smallest repair: add the exact named prior-result basis to each statement and replace the bare `unit_001` reference by `Lemma~\ref{lem:step-005-covered-singleton}`. No claim, dependency, constant, or sketch interface needs to change.

## Per-Lemma Audit

### unit_001: Covered witnesses are singleton component states

- Statement fidelity: PASS. The result produces one distinct singleton witness per covered target with the accepted singleton score interval.
- Proof validity: PASS. The accepted burn-time dual mass and chart self-map keep the covered stored state below `1/1024`; division by the accepted coefficient scale places every off-target normalized coordinate below `1/8`. The near-orthogonal target columns exclude one slot from serving two targets.
- Cited-result and assumption audit: PASS. The argument uses only the accepted coverage, covered-chart, no-label ledger, and realized Gram context.
- Rigor checklist: PASS. The stored-state time, target denominator, modewise signs, and strict distinctness margin are handled explicitly.
- Local adversarial test: PASS. At the endpoint `q=q_*`, the two target charts remain disjoint, and the exact component state has core `{j}`.
- Contribution to target step: PASS. It supplies nonempty singleton witnesses and the lower score scale needed by the observable filter.
- Verdict: PASS
- Repair direction: None.

### unit_002: Weighted support and exact stationary mixture score

- Statement fidelity: PASS. The proposition states the exhaustive non-LOW support split, the direct `m>=2` score bound, and the exact weighted stationary boundary formula.
- Proof validity: PASS. The multi-support inequality is exactly the accepted ledger output. At `q_real=0`, the three stationary equations imply equal contraction scales and coordinates proportional to `lambda_i^{-1}`; the projective sign equations rule out cancellation, yielding \((\sum_{i\in I}\lambda_i^{-2})^{-1/2}\).
- Cited-result and assumption audit: PASS. The unconditional classifier uses only `E_cert_tail` and `E_sm`; the stationary calculation is explicitly local and conditional.
- Rigor checklist: PASS. Positivity before division, arbitrary positive unequal weights, every nonempty finite support, and the `m=2` boundary are covered.
- Local adversarial test: PASS. The allowed unequal-weight two-support stationary point obeys the formula and remains in the multi-support branch.
- Contribution to target step: PASS. It supplies the weighted component-versus-mixture comparison and exact baseline profile.
- Verdict: PASS
- Repair direction: None.

### unit_003: Observable score gap and retained support

- Statement fidelity: REVISE_STEP. The numerical conclusion matches the sketch, but the statement omits the named local results and `E_cert_tail` interface used to prove it.
- Proof validity: PASS after a reference-only repair. The bounds `1.01 s_mix < 0.794 < 0.85 s_-`, `s_-/(1.01 s_+) > 0.901`, and the inherited LOW threshold prove that exactly singleton states pass the `0.85 sigma_max` filter.
- Cited-result and assumption audit: REVISE_STEP. The proof cites bare `unit_001` and leaves Proposition~\ref{prop:step-005-weighted-score} implicit.
- Rigor checklist: PASS. Global maximum upper and lower bounds, strict tie-independent inequalities, positive retained score, and the unequal-weight factor are all explicit.
- Local adversarial test: PASS. LOW, singleton, `m=2`, maximal/minimal component weights, and equal-score ties all route correctly.
- Contribution to target step: PASS mathematically; documentary repair is required before `E_support_wt` is certifiable.
- Verdict: REVISE_STEP
- Repair direction: Name Lemma~\ref{lem:step-005-covered-singleton}, Proposition~\ref{prop:step-005-weighted-score}, and the inherited ledger in the statement and proof references.

### unit_004: Selected singleton chart and denominator margins

- Statement fidelity: PASS. It exports the exact dual `l1`, ambient, denominator, and target-orientation margins required by the sketch.
- Proof validity: PASS. The singleton coefficient decomposition yields `chi_dual` and `chi_sel`; the realized Gram bound gives the off-target correlation radius `B`. The held contraction differs from `lambda_j g_{M,j}` by `chi_sel^2 + Gamma B^2 < q_*`, proving the `31/32`--`33/32` interval. The target score term dominates the complete off-target triple product, proving the orientation-sign product.
- Cited-result and assumption audit: PASS. All scale, residual, Gram, and singleton-tail inputs are accepted dependency or prior-result conclusions.
- Rigor checklist: PASS. Signs, contraction norms, all three modes, lower/upper endpoints, and strict positivity are checked.
- Local adversarial test: PASS. Opposing off-target signs cannot overturn the target score term at the declared endpoint.
- Contribution to target step: PASS. This is the complete chart/denominator source for clustering and downstream selected-state algebra.
- Verdict: PASS
- Repair direction: None.

### unit_005: Observable graph separation and exactly r clusters

- Statement fidelity: REVISE_STEP. The claim is correct, but its theorem-style assumption basis omits Lemma~\ref{lem:step-005-chart-denom}, which is the direct source used by the proof.
- Proof validity: PASS. Same-target oriented states have inner product at least `1-2 chi_sel^2 > 1-32 q_*`; cross-target states have absolute inner product below `q_* + 2 chi_sel + chi_sel^2 < 1/32`. Hence the observable threshold creates complete same-target components and no cross edges, while coverage makes all `r` components nonempty.
- Cited-result and assumption audit: REVISE_STEP only for the omitted statement-level named basis; no dependency proof flaw is present.
- Rigor checklist: PASS. Modewise absolute correlations, graph transitivity, nonemptiness, selection, and tie-breaking are all covered.
- Local adversarial test: PASS. Duplicate states stay within one component and cross-target states remain far below the edge threshold.
- Contribution to target step: PASS mathematically; its named source must be added to the statement.
- Verdict: REVISE_STEP
- Repair direction: State the result under Proposition~\ref{prop:step-005-filter}, Lemma~\ref{lem:step-005-chart-denom}, and `E_cov` for the nonempty-component conclusion.

### unit_006: Certificate signs and product-preserving gauge

- Statement fidelity: REVISE_STEP. The all-retained-slot quantifier is incompatible with the selected-representative permutation used in `s_comp`.
- Proof validity: PASS for the sign and gauge algebra on a fixed retained slot. Same-state multilinearity gives the score inner product; `tau_r<1` forces each certificate sign to equal `sign(theta)`. The target-positive signs multiply to `sign(theta)`, and dividing by the initialization signs yields a product-one gauge that preserves the represented tensor and barred equation.
- Cited-result and assumption audit: REVISE_STEP. The selected-representative portion must explicitly consume Proposition~\ref{prop:step-005-clusters}, and the positive-score interval must explicitly consume Proposition~\ref{prop:step-005-filter}.
- Rigor checklist: REVISE_STEP only for the domain switch. The sign equations, residual norm, negative-score branch, tensor preservation, and scalar interval are otherwise valid.
- Local adversarial test: PASS after restricting the interface. Negative component scores are absorbed exactly, zero scores cannot be retained, and all product-one sign patterns preserve the tensor.
- Contribution to target step: REVISE_STEP. `E_gauge` is mathematically available but its public selected-column domain must be stated exactly.
- Verdict: REVISE_STEP
- Repair direction: Separate the retained-pool orientation result from the ordered-representative `pi`/`s_comp` export and name the producer propositions in each statement.

### unit_007: Finite scope, generated-output flow, and baseline

- Statement fidelity: PASS conditional on the repaired outputs. It states the finite same-state producer order and the exact orthogonal/equal-weight specialization.
- Proof validity: PASS. The classifier and graph operate on a finite certified pool, no later ALS state is consumed, and direct exact-component substitution gives zero certificate residual and `s_comp=1`.
- Cited-result and assumption audit: PASS. The producer-consumer chain contains only accepted dependencies and the current named outputs.
- Rigor checklist: PASS. No finite-to-all-time or conditional-to-unconditional upgrade occurs.
- Local adversarial test: PASS. Finite orthogonal transients retain their certificate tolerance, while the exact stationary component has exact zero residual.
- Contribution to target step: PASS. It closes scope, output provenance, and the local baseline obligation.
- Verdict: PASS
- Repair direction: None beyond consuming the repaired `E_cluster`/`E_gauge` statements.

## Hidden Subclaim Scan

No missing mathematical lemma was found. The weighted score comparison, target-chart transfer, graph separation, and sign algebra all have named units and valid derivations. The remaining hidden-interface defects are documentary but blocking: Proposition~\ref{prop:step-005-filter} consumes prior local conclusions without naming them and cites a bare unit ID, while the clustering and gauge statements leave part of their prior-result basis to the proof body. The `pi(a)` domain switch in the gauge statement is also hidden until Proposition~\ref{prop:step-005-clusters} is inspected.

## Target Claim Audit

The proof's calculations establish the accepted sketch-row score classifier, direct `m>=2` bound, positive theta margin, graph separation, exactly `r` observable components, dual/ambient chart, and denominator margins under the accepted dependencies. The current artifact does not yet establish a well-formed exact `E_gauge`/`s_comp` output because `pi(a)` is undefined for the statement's nonrepresentative retained slots. Restricting that conclusion to the ordered representatives, and making the named local-result bases explicit, preserves every claim, constant, quantifier at the step boundary, probability mode, and downstream interface.

## Explicit Rate Audit

- Exposed quantities `r`, `q_real`, `Gamma`, `lambda_min`, `lambda_max`, `tau_r`, `eta_0`, `eta_rel`, `vartheta`, `vartheta_*`, `a_cert`, `s_-`, `s_+`, `s_mix`, `chi_dual`, `chi_sel`, and the finite certified pool are preserved.
- Hidden constants are universal and the proof introduces no dependence on `n`, `k`, the base triple, smoothing parameters, confidence levels, accuracy, target labels used by the algorithm, later ALS states, or an unlisted condition number.
- Probability mode is pathwise conditional on the accepted `E_sm`/`E_cov` producer path; horizon mode is one finite certified pool and graph; norm modes are the stated Euclidean, dual-`l1`, scalar-score, and contraction norms.
- The score, denominator, and graph absorptions are displayed with strict endpoint inequalities. No term or confidence conversion is hidden.
- The exact orthogonal/equal-weight stationary component retains score ratio one and zero same-state residual. The requested baseline is not weakened.

## Notation Surface Audit

The raw/barred states, singleton label, proof-only signs, chart radii, and score constants are otherwise explicit and properly scoped. The sole blocking notation defect is that `pi` is a permutation of the selected ordered representatives but is used in a statement quantified over the larger retained pool. The repair should keep `j(a)` as the proof-only label on all retained slots and reserve `pi(a)` and public `s_comp` for the selected `a in [r]` representatives.

## Target-Step Assembly Audit

After the two local repairs, the named results jointly imply the exact target: covered singleton witnesses and the weighted stationary formula feed the observable score filter; the selected chart lemma feeds graph separation; cluster selection supplies the representative permutation; and the same-state sign lemma supplies the product-preserving positive gauge and selected `s_comp`. In the current artifact, assembly stops at the quantifier/domain mismatch in Lemma~\ref{lem:step-005-gauge} and the contract-invalid local-result references. No accepted dependency or sketch-row interface must change.

## Review Rationale

`REVISE_STEP` is the smallest sound status. The weighted classifier, numerical score gap, chart and denominator estimates, graph separation, sign identity, finite-scope behavior, and exact baseline all pass substantive review. The blockers are confined to the submitted step: make the local theorem statements self-contained with named prior-result bases, replace the bare audit-handle citation, and align the gauge statement's domain with the selected-representative permutation. These repairs require no new lemma, assumption, dependency, constant, mechanism, or sketch revision; the repaired proof will require a fresh step review before downstream use.
