# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_014`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_014/proof.md`, SHA-256 `1094b6ad39970ef9f27f5df7492fe6730d0dc0ba36f6bf42a8df7ff5b2bbfc62`
- Binding setting artifact: `perspective_1/idea_3/setting.md`, SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`
- Binding sketch artifact: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d`
- Binding sketch-review artifact: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390`, status `ACCEPTED`
- Accepted `step_007` proof/review: SHA-256 `7d50f8863b85cbe3e619e20837cf10751abe025ff6621b77c3bd369550eb2113` / `716ad09f4b11505604512aade558813fac938524462328a400846e72ac1c0609`, status `ACCEPTED`
- Accepted `step_009` proof/review: SHA-256 `9799e655ff793a3787c6fac8863bdb00b3e357436d662381f0308b87ea1723d7` / `009609777bfce6f42c0d8010696c1994862d8ef7080388b9d5b404a676d4c8d2`, status `ACCEPTED`
- Accepted `step_013` proof/review: SHA-256 `fefa0cee0010dfe7b61260f76921fc136af637ef7b1b0f583da10fce3d4ed7c4` / `69086ee1a4d2f3f9cfde241c9b81a6d10e8ab23c7f313d6d846e2865f555d4b4`, status `ACCEPTED`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_014

## Blocking Issues

1. Location: `proof.md:73`, `proof.md:97`, `proof.md:103`, `proof.md:138`, `proof.md:264`, and `proof.md:301`. Defect: the `unit_001` and `unit_003` interfaces and proofs use an "accepted finite product-prior experiment/construction from `step_013`" or bare accepted `step_013` as mathematical authority. The paper-ready reference contract permits step IDs only as audit handles; each theorem statement and proof use must cite and restate the exact accepted named result that supplies the finite common experiment, positive-mass atoms, full-product target, block-mixture measure, and conditioning identity. Downstream effect: although the construction and calculations are mathematically correct, these two non-atomic units are not dependency-self-contained for paper-ready assembly. Smallest repair direction: in `step_014` only, cite the exact accepted named `step_013` result or results, including Proposition~\ref{prop:step-013-tensorization} and the named exact-risk/common-experiment interface as applicable, and restate the finite-atom target/measure conclusion before use. No claim, dependency edge, assumption, constant, or derivation needs to change.
2. Location: `proof.md:346` in `## Target-Step Assembly`. Defect: the assembly says accepted `step_009` supplies \(c_{\rm low}\), \(w_L<1/128\), \(H\ne\varnothing\), and active-factor eligibility, rather than citing the exact named dependency claims. Downstream effect: the final assembly fails the mandatory named-result discipline even though the needed results exist and are accepted. Smallest repair direction: replace that authority with accepted Lemma~\ref{lem:step-009-low-mass} and Proposition~\ref{prop:step-009-almm-eligibility}, preserving the same candidate, hypotheses, and conclusions.

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The mathematical statement matches the exact PAC convention and the finite common prior required by the sketch, but its dependency basis is not paper-ready: "the accepted finite product-prior experiment represented by (4)-(8)" is introduced through bare `step_013` references rather than an accepted named theorem-style result.
- Proof validity: For \(p_\tau=\Pr[L_\tau>1/16]\), the complement is exactly \(L_\tau\le1/16\), including equality on the good side. Bounded risk gives
  \[
  \mathbb E L_\tau\le\frac1{16}(1-p_\tau)+p_\tau
  =\frac1{16}+\frac{15}{16}p_\tau.
  \]
  Thus \(p_\tau\le1/16\) gives the exact ceiling \(31/256\), while expectation strictly above \(31/256\) gives failure probability strictly above \(1/16\). Finite averaging under \(\Lambda\) preserves the non-strict ceiling with no interchange or selection issue.
- Cited-result and assumption audit: Accepted Lemma~\ref{lem:step-007-pac-conversion} is hash-current, correctly restated, and applicable to the same measurable \([0,1]\)-valued risk. The common finite-experiment input is mathematically available from accepted `step_013`, but its theorem statement must name the exact accepted result rather than rely on the step ID and setup equations alone.
- Rigor checklist: Threshold equality, strict contraposition, boundedness, measurability, finite support, integrability, learner randomness, and the taskwise-to-prior probability mode all pass. The same candidate and learner kernel are retained.
- Local adversarial test: If \(p_\tau=1/16\), the proof obtains only \(\mathbb E L_\tau\le31/256\), as required. If every atom is at the ceiling, the finite average cannot be strict. No equality case is incorrectly promoted to strictness.
- Contribution to target step: Supplies the exact upper side of the expected-risk contradiction and the event-level strict contrapositive.
- Verdict: REVISE_STEP
- Repair direction: Name and restate the accepted theorem-style `step_013` result that supplies the finite common experiment used in the statement and equations (4)-(8).

### unit_002: lemma

- Statement fidelity: The lemma uses exactly accepted Lemma~\ref{lem:step-009-low-mass} and Proposition~\ref{prop:step-013-tensorization} at the same fixed candidate and local contradiction branch.
- Proof validity: Since \(1-w_L>127/128>0\) and \(1/8-\eta_0>253/2048>0\), multiplying preserves strictness. The arithmetic is exact:
  \[
  127\cdot253=32131,\qquad 128\cdot2048=262144,
  \]
  \[
  \frac{31}{256}=\frac{31744}{262144},\qquad
  32131-31744=387.
  \]
  Hence the margin is exactly \(387/262144>0\).
- Cited-result and assumption audit: Both dependency labels exist in the hash-matched accepted artifacts. Their hypotheses are discharged by the same PAC learner, candidate, contradiction branch, and candidate-delta condition; no new residual or stronger eligibility claim is imported.
- Rigor checklist: Both substituted factors are proved positive before multiplication; every inequality used for the final separation is strict; no decimal approximation, asymptotic absorption, or hidden constant is used.
- Local adversarial test: One active factor still gives strictness because its accepted weight is positive. Equality in either candidate-delta cap does not affect the strict low-mass or overflow inequalities, which arise from separate accepted conclusions.
- Contribution to target step: Supplies the exact lower side of the contradiction with the required rational margin.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: The proposition states the exact deterministic target, block masses, and strict PAC-failure event, but its accepted finite-prior construction is not identified by a paper-ready named dependency result.
- Proof validity: Because \(\mathcal T=\operatorname{supp}(\Lambda)\) is finite and contains only positive-mass atoms, a prior average strictly above \(31/256\) forces at least one positive-mass atom with \(\mathbb E L_{\tau_\star}>31/256\). Lemma~\ref{lem:step-014-finite-prior-ceiling} then gives the strict event in the same sample/learner probability space.
- Cited-result and assumption audit: Full Cartesian assembly gives \(c^{\tau_\star}\in C\). The finite nonnegative mixture
  \[
  D^{\tau_\star}(B)=\sum_i\pi_iD_i^{\tau_\star}(B\cap X_i)
  \]
  is a probability measure on \((X,\Sigma)\); disjoint measurable blocks, factor support on \(X_i\), and \(\sum_i\pi_i=1\) give (D^{\tau_\star}(X_i)=\pi_i\). The setting makes the full-product target and resulting risk measurable. These facts are sound, but `proof.md:301` invokes bare accepted `step_013` for the target construction.
- Rigor checklist: Atom selection is deterministic and positive-mass, occurs before sample and learner randomness, and does not use measurable selection. The selected target is in the exact full class; the measure is an allowed arbitrary-support block mixture. Finite support of the hard witness is provenance only and does not narrow the theorem's distribution or learner quantifiers.
- Local adversarial test: If every positive-mass atom were at or below \(31/256\), the finite average could not exceed it. Zero-mass tuples are excluded by the support definition. Cross-factor learner dependence is irrelevant after conditioning on one complete task atom.
- Contribution to target step: Removes both proof devices, the prior and expected-risk conclusion, while preserving the same candidate, learner, exact risk, and strict failure event.
- Verdict: REVISE_STEP
- Repair direction: Replace the bare `step_013` authority in the statement/setup/proof by the exact accepted named common-experiment and target/mixture result or results, restated in current notation.

### unit_004: proposition

- Statement fidelity: The proposition explicitly names Assumption~\ref{assump:candidate-delta-budget}, all accepted dependency results, all earlier local named results, the fixed candidate, unrestricted learner scope, and the exact conclusion \(n\ge c_{\rm low}M_\oplus(C)\).
- Proof validity: On \(n<c_{\rm low}M\), accepted Lemma~\ref{lem:step-009-low-mass} and Proposition~\ref{prop:step-009-almm-eligibility} apply at the same exact budgets. Accepted Proposition~\ref{prop:step-013-tensorization} and Lemma~\ref{lem:step-014-rational-gap} give a strict expectation above \(31/256\), while universal PAC and Lemma~\ref{lem:step-014-finite-prior-ceiling} give the opposite non-strict ceiling. The contradiction negates the temporary branch and yields \(n\ge c_{\rm low}M\).
- Cited-result and assumption audit: Both candidate-delta conjuncts remain present: \(\delta\le1/[n\log(n+1)]\) and every factor-budget cap. Their hypotheses are non-strict, so equality is legal. No direct use of a transitive dependency, changed candidate, new privacy schedule, or restricted output class occurs.
- Rigor checklist: At \(n=1\), all denominators are positive. A single active factor preserves strictness. At \(k=1\), accepted Proposition~\ref{prop:step-013-one-factor-baseline} gives zero overflow and \(\mathbb E R^\star>1/8>31/256\); the same named local conversion yields the exact strict event. The inactive one-factor contradiction branch is excluded by accepted Lemma~\ref{lem:step-009-low-mass}.
- Local adversarial test: Equality at the PAC risk threshold stays good, equality at failure probability \(1/16\) yields only the ceiling, equality at either delta cap is permitted, and no small-sample or zero-active-factor exception remains.
- Contribution to target step: Correctly discharges \(n<c_{\rm low}M\) and exports the candidate-wise unrestricted lower theorem, conditional only on the binding candidate budget.
- Verdict: PASS
- Repair direction: None within this unit; it becomes consumable after the named-reference repairs to `unit_001`, `unit_003`, and the assembly.

## Hidden Subclaim Scan

No missing mathematical unit was found. The four independent obligations are correctly separated: exact PAC-to-expectation conversion, rational separation, deterministic finite-atom extraction with target/measure legality, and fixed-candidate contradiction closure. The finite linear-combination measure fact, block-mass identity, measurability of binary risk, and positive-mass finite-average argument are elementary consequences displayed at their points of use. The only hidden-interface defect is provenance form: the common finite product-prior/atom construction is consumed through bare `step_013` references instead of an exact named accepted result.

## Target Claim Audit

Mathematically, the proof establishes the exact target under the binding quantifiers. The good event is \(R_D\le1/16\), its complement is \(R_D>1/16\), and the ceiling is exactly \(\mathbb ER_D\le31/256\). The lower experiment uses the same \(A_n,n,c,D,R_D\), sample law, and learner randomness. The strict low-mass and overflow substitutions give \(32131/262144\), with margin \(387/262144\). Finite averaging yields a positive-mass deterministic full-product atom and a legal measurable block mixture. The contradiction discharges \(n<c_{\rm low}M\), retains both candidate-delta conjuncts including equality, and covers \(n=1\), one active factor, and the exact \(k=1\) event-level baseline. Acceptance is blocked only by the local named-reference contract violations above.

## Explicit Rate Audit

The step preserves all exposed variables \(n,k,(d_i,s_i,\pi_i,m_{n,i})_i,M,\varepsilon,\delta,w_L,\eta_0\), universal hidden-constant dependence, one-candidate horizon, exact binary-risk norm, and the stated probability modes. Both candidate-delta conjuncts are checked at the actual candidate, no auxiliary tolerance is introduced, and all term comparisons are displayed exactly. The finite prior is only a proof device and is eliminated before export. At \(k=1\), the accepted zero-overflow \(>1/8\) floor is converted to the original strict PAC-failure event rather than a weaker expectation-only surrogate.

## Notation Surface Audit

The classifications are appropriate. \(M,\pi_i,c_{\rm low}\), the lower comparison, and the extracted \(c,D\) are public-facing; \(\Lambda,\mathcal T,\tau,c^\tau,D^\tau,R^\star\) are appendix-local; and \(L_\tau,p_\tau,\tau_\star\) are proof-local. Every helper is defined and has accepted or direct provenance, and no helper hides a rate, boundedness, support, or measurability obligation. The needed repair concerns theorem-reference authority, not notation economy.

## Target-Step Assembly Audit

The named local chain is mathematically complete: Lemma~\ref{lem:step-014-rational-gap} supplies the strict lower floor, Lemma~\ref{lem:step-014-finite-prior-ceiling} supplies the exact PAC ceiling, Proposition~\ref{prop:step-014-deterministic-atom} supplies the explicit strict witness, and Proposition~\ref{prop:step-014-candidate-closure} discharges the contradiction branch. However, the first assembly paragraph relies on bare accepted `step_009` for \(c_{\rm low},w_L,H\), and eligibility. It must cite accepted Lemma~\ref{lem:step-009-low-mass} and Proposition~\ref{prop:step-009-almm-eligibility}. The common finite experiment used by the local chain must likewise be attached to the exact named accepted `step_013` result or results. Until those local citation repairs are made, the assembly is not paper-ready under the binding contract.

## Review Rationale

`REVISE_STEP` is the smallest sound status. Independent checks found no wrong inequality, probability conversion, quantifier shift, candidate change, measure defect, hidden assumption, baseline loss, or dependency-proof flaw. The accepted sketch and all three accepted dependency pairs remain valid. The submitted proof nevertheless uses bare step IDs and an unnamed accepted construction as mathematical authority in two local theorem interfaces and the target assembly, which the proof-step-review contract expressly rejects. A producer rerun of `/proof-step step_014` can repair only those references and restatements while preserving every mathematical line; no sketch or dependency rerun is required.
