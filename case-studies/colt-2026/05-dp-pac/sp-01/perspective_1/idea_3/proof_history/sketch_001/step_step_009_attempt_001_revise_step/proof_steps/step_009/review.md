# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_009`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_009/proof.md`, SHA-256 `7cdbcce0faaba4743d53d2ea3bbf0a54eeaf6bf20f6e4583337bf8af56517c9d`
- Binding setting artifact: `perspective_1/idea_3/setting.md`, SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`
- Binding sketch artifact: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d`
- Binding sketch-review artifact: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390`, status `ACCEPTED`
- Accepted dependency proof/review: `step_001`, SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a` / `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, status `ACCEPTED`
- Accepted dependency proof/review: `step_007`, SHA-256 `7d50f8863b85cbe3e619e20837cf10751abe025ff6621b77c3bd369550eb2113` / `716ad09f4b11505604512aade558813fac938524462328a400846e72ac1c0609`, status `ACCEPTED`
- Accepted dependency proof/review: `step_008`, SHA-256 `fd12b00bd08d505a0e99e1e0fd81894e2da77f97ccf6337127d886f79e51b049` / `5f38e44448fb85efb27196868145966b7acb9ad6188bcf0c0a1cef250c44817c`, status `ACCEPTED`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_009

## Blocking Issues

1. Location: the `unit_003` Local Lemma Map entry; Proposition~\ref{prop:step-009-almm-eligibility}, especially its statement; its restatement in `## Cited Result Applications`; and the target-step assembly. Defect: the proposition does not state the indispensable local hypothesis \(n<c_{\rm low}M\). Naming Lemma~\ref{lem:step-009-active-budget} does not discharge that lemma's conditional antecedent, and the phrases "the same one candidate" and "the fixed candidate" leave the missing restriction recoverable only from surrounding prose. Read as a standalone theorem, the proposition asserts \(m_{n,i}<a_{\rm L}r_i\) for every active factor whenever only Assumption~\ref{assump:candidate-delta-budget} holds. This is false: for a fixed active factor, an arbitrarily large candidate \(n\) can satisfy the delta budget after choosing sufficiently small positive \(\delta\), while \(m_{n,i}\ge\lceil4n\pi_i\rceil\) eventually exceeds the fixed value \(a_{\rm L}r_i\). Downstream effect: the named proposition cannot export the subcritical ALMM eligibility certificate consumed by later steps, even though its proof body is valid under the globally listed contradiction hypothesis. Smallest repair direction: add the exact fixed-candidate hypothesis \(n<c_{\rm low}M\), with the same \(R_0,c_{\rm low},H\), to the map entry, proposition statement, and restatement; then explicitly discharge it when invoking Lemma~\ref{lem:step-009-active-budget}. Keep the delta calculation unchanged.

2. Location: the `unit_001` and `unit_002` Local Lemma Map entries and theorem statements, and the first sentence of `## Target-Step Assembly`. Defect: the theorem-style provenance of \(a_{\rm L}\), and hence of the claimed universal constants \(R_0\) and \(c_{\rm low}\), is incomplete at the local interfaces. Lemma~\ref{lem:step-009-low-mass} calls \(a_{\rm L}\) only "the accepted ALMM constant" rather than naming accepted Proposition~\ref{prop:step-008-factor-floor}. Lemma~\ref{lem:step-009-active-budget} names only accepted Lemma~\ref{lem:step-001-logstar} and imports \(0<a_{\rm L}\le1\), \(R_0=\lceil32/a_{\rm L}\rceil\), and \(c_{\rm low}\le a_{\rm L}/64\) through equation references; those are exactly the inputs used in equations (14), (16), and (17). The assembly likewise relies on workflow names `step_007` and `step_008` rather than the exact accepted propositions for constant provenance. Downstream effect: the arithmetic identifies valid universal constants globally, but the local results are not self-contained theorem-style proof authorities under the review contract. Smallest repair direction: name accepted Proposition~\ref{prop:step-008-factor-floor} wherever \(a_{\rm L}\)'s accepted universal range is consumed, and either restate the exact constant definitions/relations in the active-budget statement or cite the preceding named lemma with its exact interface. Replace the workflow-only assembly references by accepted Propositions~\ref{prop:step-007-additive-vc} and \ref{prop:step-008-factor-floor}. Update the corresponding map entries without changing any inequality.

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The mathematical statement targets exactly the low-factor certificate required by the accepted row: the setting weights, \(H=\{i:r_i>R_0\}\), strict \(w_L<1/128\), and the all-low exclusion under the fixed-candidate PAC and contradiction premises. Its theorem-style dependency basis is incomplete because the universal provenance of \(a_{\rm L}\), and therefore of \(R_0,c_{\rm low}\), is described only as an "accepted ALMM constant" instead of being tied to accepted Proposition~\ref{prop:step-008-factor-floor}.
- Proof validity: Conditional on the documented accepted constants, the proof is correct. For every low factor, including \(r_i=R_0\), accepted Lemma~\ref{lem:step-001-logstar} gives \(s_i\le R_0+2\). Accepted Proposition~\ref{prop:step-007-additive-vc} gives \(k\le n/a_{\rm VC}\). Therefore
  \[
  w_L\le\frac{(R_0+2)k}{M}
  \le\frac{R_0+2}{a_{\rm VC}}\frac nM
  <\frac{R_0+2}{a_{\rm VC}}c_{\rm low}
  \le\frac1{128}.
  \]
  The only strict step is supplied by \(n<c_{\rm low}M\), so equality in the first branch of the definition of \(c_{\rm low}\) causes no loss.
- Cited-result and assumption audit: The accepted structural and additive-VC conclusions are correctly named and discharged. Accepted Proposition~\ref{prop:step-008-factor-floor} is correctly restated elsewhere in the artifact and does supply universal \(0<a_{\rm L}\le1\), but that named source is absent from this local statement and map entry.
- Rigor checklist: \(M>0\) follows from \(s_i\ge2\); all sums are finite; no probability interchange occurs; and no privacy or generated-event assumption is introduced. The constants are independent of the class, learner, candidate, and privacy parameters once their accepted source is named.
- Local adversarial test: The threshold boundary \(r_i=R_0\) remains low and is charged by \(R_0+2\). If all factors are low, then \(w_L=1\), contradicting the proved strict bound. At \(k=1\), the low branch is likewise incompatible with the PAC and contradiction premises; if all factors are active, \(w_L=0\).
- Contribution to target step: Supplies the exact low-mass residual and guarantees a nonempty active set on the nonvacuous contradiction branch.
- Verdict: REVISE_STEP
- Repair direction: Add accepted Proposition~\ref{prop:step-008-factor-floor} as the exact source of the universal \(a_{\rm L}\) used to define \(R_0,c_{\rm low}\); retain the derivation unchanged.

### unit_002: lemma

- Statement fidelity: Its conclusions are the exact active-factor inequalities needed by the accepted row, including strict subcriticality at the setting-defined budget. The statement is not fully self-contained because its needed range \(0<a_{\rm L}\le1\) and the exact relations defining \(R_0,c_{\rm low},H\) are imported only through equations (4)-(6), without naming the accepted proposition or preceding theorem-style result supplying them.
- Proof validity: Under those documented inputs, every inequality is correct. From \(r_i>R_0=\lceil32/a_{\rm L}\rceil\), one obtains \(a_{\rm L}r_i>32\), so both \(1<a_{\rm L}r_i/32\) and \(8<a_{\rm L}r_i/4\) are strict. Since \(a_{\rm L}\le1\), \(R_0\ge32\) and hence \(r_i+2<2r_i\). Together with \(c_{\rm low}\le a_{\rm L}/64\), this yields \(4n\pi_i<a_{\rm L}r_i/8\). The universal identity \(\lceil x\rceil<x+1\) then gives \(\lceil4n\pi_i\rceil<(5/32)a_{\rm L}r_i<a_{\rm L}r_i\), while the floor eight is separately strict. Thus the maximum is strictly subcritical.
- Cited-result and assumption audit: Accepted Lemma~\ref{lem:step-001-logstar} correctly supplies \(s_i\le r_i+2\). The proof also consumes the accepted universal range of \(a_{\rm L}\) and the previously fixed constant relations, but the theorem statement does not identify those sources in theorem-style form.
- Rigor checklist: The argument handles real and integer \(4n\pi_i\), equality between the maximum's two entries, and every ceiling boundary. All inequalities remain at the same fixed candidate, and no asymptotic notation or hidden absorption is used.
- Local adversarial test: At the smallest possible active integer \(r_i=R_0+1\), the strict inequality \(a_{\rm L}r_i>a_{\rm L}R_0\ge32\) still supplies both margins. The proof would fail without \(n<c_{\rm low}M\), confirming that this condition must remain explicit in every downstream statement.
- Contribution to target step: Pays the additive \(+2\), ceiling one, and floor eight and supplies the exact strict inequality \(m_{n,i}<a_{\rm L}r_i\).
- Verdict: REVISE_STEP
- Repair direction: State the named source and exact constant conditions used by the proof, or cite the preceding named lemma with that full interface; do not change equations (14)-(19).

### unit_003: proposition

- Statement fidelity: The factorwise delta conclusion and retained first candidate-budget conjunct match the accepted target, but the displayed theorem is stronger than the target because it omits \(n<c_{\rm low}M\). Consequently its subcriticality conclusion is false at sufficiently large candidates.
- Proof validity: The proof body is correct only when the globally listed local contradiction hypothesis is supplied. Lemma~\ref{lem:step-009-active-budget} then gives \(m_{n,i}<a_{\rm L}r_i\), the budget definition gives \(m_{n,i}\in\mathbb N\) and \(m_{n,i}\ge8\), and Assumption~\ref{assump:candidate-delta-budget} gives both
  \[
  \delta\le\frac1{n\log(n+1)}
  \quad\text{and}\quad
  \delta\le\frac{c_\delta}{m_{n,i}^2\log(m_{n,i}+1)}
  \]
  at that exact same candidate.
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-008-factor-floor} and Assumption~\ref{assump:candidate-delta-budget} are named correctly. The antecedent needed to consume Lemma~\ref{lem:step-009-active-budget} is not stated or discharged in the proposition itself.
- Rigor checklist: The factor delta cap is correctly non-strict, including equality. Positivity of its denominator follows from \(m_{n,i}\ge8\). The first delta conjunct is retained exactly. Passing from the finite minimum to each factor is a deterministic implication, not a union bound, and no event simultaneity or independence is asserted.
- Local adversarial test: Holding an active factor fixed and increasing \(n\) breaks \(m_{n,i}<a_{\rm L}r_i\) while an arbitrarily small positive \(\delta\) can still satisfy Assumption~\ref{assump:candidate-delta-budget}. This directly breaks the proposition as stated. Equality at the factor delta cap does not break the accepted ALMM interface.
- Contribution to target step: Intended to export the exact active-factor numerical eligibility interface, including the same-candidate delta cap and retained source-scale conjunct.
- Verdict: REVISE_STEP
- Repair direction: Add \(n<c_{\rm low}M\) explicitly to the proposition and map/restatement interfaces and discharge it before invoking Lemma~\ref{lem:step-009-active-budget}.

## Hidden Subclaim Scan

No independent mathematical subclaim is missing from the three-unit decomposition. Low-mass calibration, strict active-budget absorption, and candidate-delta discharge are appropriately separated. Universality of \(R_0,c_{\rm low}\), the all-low exclusion, the elementary ceiling inequality, and the finite-minimum implication are all derived or inherited from accepted results. The blockers are incomplete or overstrong theorem statements and workflow/equation-only provenance, not a need for a fourth mathematical lemma. The submitted file is ASCII-only and contains no form-feed or other unexpected control byte.

## Target Claim Audit

Under the globally listed fixed-candidate PAC premise, Assumption~\ref{assump:candidate-delta-budget}, and \(n<c_{\rm low}M\), the displayed derivation proves the exact accepted `step_009` claim. Accepted Proposition~\ref{prop:step-008-factor-floor} makes \(a_{\rm L},c_\delta\) universal; accepted Proposition~\ref{prop:step-007-additive-vc} makes \(a_{\rm VC}=1/2\) universal. Hence \(R_0=\lceil32/a_{\rm L}\rceil\) and the displayed positive \(c_{\rm low}\) are universal. The proof gets strict \(w_L<1/128\), treats \(r_i=R_0\), all-low, one-active, and \(k=1\) branches, and proves strict \(m_{n,i}<a_{\rm L}r_i\) while retaining a non-strict delta cap. It neither changes candidates nor strengthens the primitive delta condition. The named target interface is nevertheless uncertifiable as submitted because Proposition~\ref{prop:step-009-almm-eligibility} drops a necessary hypothesis.

## Explicit Rate Audit

The numerical proof preserves the exact exposed quantities \(n,k,(d_i,r_i,s_i,\pi_i,m_{n,i})_i,M,\delta\). The only constant dependence is on the accepted universal \(a_{\rm VC},a_{\rm L},c_\delta\) and fixed numerical/logarithm conventions; there is no class, factor-cardinality, quotient-cardinality, learner, candidate, \(\varepsilon\), or \(\delta\) dependence hidden in \(R_0,c_{\rm low}\). The probability input is the fixed-candidate PAC premise, consumed through a deterministic accepted consequence. The horizon is one candidate, the metric inherited by the premise is exact distributional binary risk, and this step's conclusions are deterministic. Equations (10), (14)-(19), and (20)-(22) display every absorption and admissibility inequality. There is no probability conversion, union bound, auxiliary tolerance, asymptotic regime, or uniform-in-\(n\) upgrade.

The baseline arithmetic also passes. At \(k=1\), \(\pi_1=1\); the low branch contradicts the PAC plus subcritical premises, while the active branch yields the exact one-factor ALMM numerical interface. This preserves the unrestricted one-factor lower route rather than replacing it with a proper, finite-support, or expectation-only final theorem. These rate and baseline conclusions require only the statement-interface repairs above; no quantitative or baseline change is needed.

## Notation Surface Audit

The setting/sketch aliases \(r_i,s_i,M,\pi_i,m_{n,i}\) are correctly classified as public-facing, and \(\pi_i=\omega_i\) introduces no new weight. The generated public interface \(R_0,c_{\rm low},H,w_L\) is minimal for downstream use, while equations (14)-(19) are appropriately proof-local. No helper cascade hides a constant, rate, boundedness claim, or generated event. The defect is reference discipline: "accepted ALMM constant," "the same candidate," equations (4)-(6), and workflow names `step_007`/`step_008` are not substitutes for the exact named theorem-style dependency and local hypotheses at a downstream theorem interface.

## Target-Step Assembly Audit

The body-level assembly is mathematically complete under the global contradiction hypothesis: accepted Proposition~\ref{prop:step-007-additive-vc}, Lemma~\ref{lem:step-009-low-mass}, Lemma~\ref{lem:step-009-active-budget}, and Proposition~\ref{prop:step-009-almm-eligibility} are intended to yield exactly \(H,w_L\), strict budget subcriticality, and the same-candidate delta cap. As written, however, the first assembly sentence relies on workflow step IDs for constant provenance, and the final named proposition does not include the hypothesis needed for its own strict-budget conclusion. The assembly therefore cannot yet serve as a paper-ready downstream proof authority. Naming the exact accepted propositions and repairing the local statements suffices; no new lemma, dependency, constant, or sketch bridge is required.

## Review Rationale

`REVISE_STEP` with `/proof-step step_009` is the smallest sound route. The accepted setting, sketch, sketch review, and all three dependency proof/review pairs are current and valid. The submitted arithmetic passes every high-risk numerical test: universal constant calibration, strict low mass, threshold/all-low/one-factor boundaries, additive-two/ceiling/floor absorption, strict subcriticality, non-strict factor delta equality, retention of the first delta conjunct, fixed-candidate scope, absence of a union bound, explicit rates, and baseline preservation. The artifact still cannot be accepted because one exported proposition is false without a missing local hypothesis and the earlier constant interfaces do not consistently name their theorem-style provenance. Both defects are confined to this proof artifact and can be repaired without changing the accepted sketch row or any dependency. A fresh `/proof-step-review step_009` remains required after the producer rerun.
