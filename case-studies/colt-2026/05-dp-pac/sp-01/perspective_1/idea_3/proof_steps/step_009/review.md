# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_009
- Unit attempt: 2
- Reviewed proof artifact: perspective_1/idea_3/proof_steps/step_009/proof.md, SHA-256 9799e655ff793a3787c6fac8863bdb00b3e357436d662381f0308b87ea1723d7
- Binding setting artifact: perspective_1/idea_3/setting.md, SHA-256 5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0
- Binding sketch artifact: perspective_1/idea_3/proof_sketch.md, SHA-256 6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d
- Binding sketch-review artifact: perspective_1/idea_3/proof_sketch_review.md, SHA-256 9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390, status ACCEPTED
- Accepted step_001 proof/review: SHA-256 c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a / baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82, status ACCEPTED
- Accepted step_007 proof/review: SHA-256 7d50f8863b85cbe3e619e20837cf10751abe025ff6621b77c3bd369550eb2113 / 716ad09f4b11505604512aade558813fac938524462328a400846e72ac1c0609, status ACCEPTED
- Accepted step_008 proof/review: SHA-256 fd12b00bd08d505a0e99e1e0fd81894e2da77f97ccf6337127d886f79e51b049 / 5f38e44448fb85efb27196868145966b7acb9ad6188bcf0c0a1cef250c44817c, status ACCEPTED

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-009-low-mass} states the exact fixed-candidate PAC and contradiction hypotheses, uses the accepted structural, additive-VC, and factor-floor constants, fixes universal \(R_0,c_{\rm low}\) before the class and candidate, and proves both \(w_L<1/128\) and the all-low exclusion \(H\ne\varnothing\). This is the first part of the binding step_009 interface.
- Proof validity: For \(i\notin H\), \(r_i\le R_0\) and accepted Lemma~\ref{lem:step-001-logstar} gives \(s_i\le R_0+2\). Accepted Proposition~\ref{prop:step-007-additive-vc} gives \(k\le n/a_{\rm VC}\). Therefore
  \[
  w_L\le\frac{(R_0+2)k}{M}
  \le\frac{R_0+2}{a_{\rm VC}}\frac nM
  <\frac{R_0+2}{a_{\rm VC}}c_{\rm low}
  \le\frac1{128}.
  \]
  The strict inequality comes from the same-candidate hypothesis \(n<c_{\rm low}M\), so equality in the first branch defining \(c_{\rm low}\) causes no boundary loss. Since \(\sum_i\pi_i=1\), \(H=\varnothing\) would force \(w_L=1\), proving the stated exclusion.
- Cited-result and assumption audit: Lemma~\ref{lem:step-001-logstar} supplies exactly \(s_i\ge2\) and \(s_i\le r_i+2\); Proposition~\ref{prop:step-007-additive-vc} supplies exactly \(a_{\rm VC}=1/2\) and \(n\ge a_{\rm VC}k\) under the current PAC premise; Proposition~\ref{prop:step-008-factor-floor} supplies the universal \(0<a_{\rm L}\le1\). All three names and current hashes match accepted dependency artifacts. No privacy, factor learner, support, balance, or generated event is assumed.
- Rigor checklist: \(M>0\) follows from \(s_i\ge2\); finite summation is exact; constants have universal provenance; and quantifiers remain at one fixed learner and candidate. The cases \(r_i=0\), \(r_i=R_0\), every factor low, every factor active, one active factor, and \(k=1\) are covered.
- Local adversarial test: If all factors are low, the premises themselves imply the contradiction \(1=w_L<1/128\), rather than silently assuming an active factor. If the low set is empty, the empty sum is zero. At \(k=1\) with \(r_1\le R_0\), the additive-VC certificate closes the local contradiction branch exactly.
- Contribution to target step: Produces the exact low-complexity residual and proves that a nonvacuous active source exists whenever the contradiction branch is entered.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-009-active-budget} explicitly assumes the same \(n<c_{\rm low}M\), exact constants, and active set fixed by Lemma~\ref{lem:step-009-low-mass}. It proves the strict bounds for the raw quota term, its ceiling, the floor eight, and the exact setting budget \(m_{n,i}\), as required by the accepted row.
- Proof validity: For \(i\in H\),
  \[
  a_{\rm L}r_i>a_{\rm L}R_0\ge32.
  \]
  Hence \(1<a_{\rm L}r_i/32\) and \(8<a_{\rm L}r_i/4\). Also \(0<a_{\rm L}\le1\) implies \(R_0\ge32\), so \(r_i+2<2r_i\). With \(c_{\rm low}\le a_{\rm L}/64\),
  \[
  4n\pi_i<4c_{\rm low}s_i
  \le\frac{a_{\rm L}}{16}(r_i+2)
  <\frac{a_{\rm L}r_i}{8}.
  \]
  The universal identity \(\lceil x\rceil<x+1\), including integer \(x\), then gives
  \[
  \lceil4n\pi_i\rceil
  <\frac{a_{\rm L}r_i}{8}+\frac{a_{\rm L}r_i}{32}
  =\frac5{32}a_{\rm L}r_i<a_{\rm L}r_i.
  \]
  Both entries of the defining maximum are therefore strictly subcritical.
- Cited-result and assumption audit: The only quantitative inputs are the accepted \(s_i\le r_i+2\), the accepted range \(0<a_{\rm L}\le1\), and the named prior lemma's universally fixed constants and active set. No stronger ALMM conclusion is imported, and no PAC or delta premise is used where it is unnecessary.
- Rigor checklist: The proof preserves strictness through \(r_i>R_0\), the ceiling, and the maximum. It exposes the additive \(+2\), ceiling-one, and floor-eight absorptions rather than hiding them in constants. All quantities refer to the same \(n,M,\pi_i\).
- Local adversarial test: Integer \(4n\pi_i\), equality of the two maximum entries, \(r_i=R_0+1\), \(a_{\rm L}=1\), and arbitrarily small positive \(a_{\rm L}\) all retain strict slack. The threshold equality \(r_i=R_0\) is correctly outside \(H\).
- Contribution to target step: Supplies \(8\le m_{n,i}<a_{\rm L}r_i\) for every active factor at its exact setting-defined budget.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-009-almm-eligibility} and its local-lemma-map entry explicitly include the same fixed candidate and the local hypothesis \(n<c_{\rm low}M\). Its cited-result restatement and proof also discharge that antecedent before invoking Lemma~\ref{lem:step-009-active-budget}. The proposition exports exactly the integer-budget, floor, strict subcriticality, and factorwise delta interface.
- Proof validity: The budget definition gives \(m_{n,i}\in\mathbb N\) and \(m_{n,i}\ge8\), while the preceding lemma gives strict subcriticality. Assumption~\ref{assump:candidate-delta-budget} states one finite minimum at this same candidate, so for every \(i\in H\),
  \[
  0<\delta\le
  \min_j\frac{c_\delta}{m_{n,j}^2\log(m_{n,j}+1)}
  \le\frac{c_\delta}{m_{n,i}^2\log(m_{n,i}+1)}.
  \]
  Its separate first conjunct also remains explicitly recorded as
  \[
  0<\delta\le\frac1{n\log(n+1)}.
  \]
  Denominators are positive because \(n\ge1\) and \(m_{n,i}\ge8\).
- Cited-result and assumption audit: Proposition~\ref{prop:step-008-factor-floor} is restated with its exact natural-log cap, strict subcritical hypothesis, arbitrary-output scope, and constants \(a_{\rm L},c_\delta\). The current proposition does not assume the downstream factor learner; it checks only the numerical hypotheses that a later accepted construction must use.
- Rigor checklist: Equality at either delta cap is allowed; only \(m_{n,i}<a_{\rm L}r_i\) is strict. The minimum-to-coordinate implication is deterministic and finite. It creates no event, probability conversion, independence claim, or factor union bound.
- Local adversarial test: Equality in the factor cap, equality in the first conjunct, \(n=1\), one active factor, and all factors active all pass. A factor outside \(H\) receives no unsupported ALMM eligibility claim.
- Contribution to target step: Completes the exact candidate-wise ALMM numerical eligibility certificate without changing candidate, privacy schedule, or learner scope.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the local lemma map. The low-mass/all-low argument, strict active-budget calibration, and candidate-delta discharge are isolated as the three named units. Universality of \(R_0,c_{\rm low}\), normalization \(\sum_i\pi_i=1\), integrality of \(m_{n,i}\), and positivity of the displayed denominators follow directly from explicit definitions and accepted constant ranges. The target-step assembly uses theorem-style references rather than local unit IDs, and it introduces no hidden factor learner, event, union bound, or uniform-in-candidate claim.

## Target Claim Audit

The proof establishes the exact accepted step_009 row under one fixed unrestricted PAC learner, Assumption~\ref{assump:candidate-delta-budget}, and the local contradiction hypothesis \(n<c_{\rm low}M\). The constants
\[
R_0=\left\lceil32/a_{\rm L}\right\rceil,
\qquad
c_{\rm low}=\min\left\{
\frac{a_{\rm VC}}{128(R_0+2)},\frac{a_{\rm L}}{64}
\right\}
\]
are universal. The generated set \(H=\{i:r_i>R_0\}\) has low complement mass \(w_L<1/128\), and every \(i\in H\) has the exact budget and delta conditions required by the accepted ALMM factor floor. Quantifiers, strict and non-strict boundaries, natural/base-two logarithm conventions, arbitrary improper learner scope, and candidate locality all match the binding claim.

## Explicit Rate Audit

- Exposed variables: the fixed candidate \(n\), \(k\), \((d_i,r_i,s_i,\pi_i,m_{n,i})_i\), \(M\), and \(\delta\).
- Constants and dependence: \(a_{\rm VC}=1/2\), \(a_{\rm L}\), and \(c_\delta\) are accepted universal constants; \(R_0,c_{\rm low}\) are explicit functions of them. No constant depends on the class, factors, quotient cardinalities, learner, distribution, candidate, \(\varepsilon\), or \(\delta\).
- Probability and horizon modes: the PAC premise is consumed only through the deterministic accepted VC certificate. All new conclusions are deterministic at one fixed candidate. There is no simultaneous event, union bound, asymptotic statement, or uniform-in-candidate upgrade.
- Norm and admissibility modes: the dependency premise uses exact distributional binary risk. The current step is numerical and retains the complete candidate condition, including \(\delta\le1/[n\log(n+1)]\), while using the factor-budget conjunct only for ALMM eligibility.
- Absorption audit: the proof displays the low-mass bound, additive-log-star absorption, ceiling-one bound, floor-eight bound, and strict maximum comparison. No rate term or threshold is dropped in prose.
- Baseline reduction: for \(k=1\), \(\pi_1=1\). The low-\(r_1\) contradiction branch is already excluded by the additive VC floor; on the high branch \(H=\{1\}\) and the exact one-factor ALMM numerical interface is preserved. No proper, finite-support, or expectation-only final surrogate is introduced.

## Notation Surface Audit

The setting/sketch quantities \(r_i,s_i,M,\pi_i,m_{n,i}\) are used consistently, with \(\pi_i\) explicitly identified with the setting's \(\omega_i\). The exported public-facing objects \(R_0,c_{\rm low},H,w_L\) are minimal downstream controls and have explicit provenance. Equations used only to pay the additive, ceiling, and floor defects remain proof-local. No long helper dictionary, symbol reuse, unexplained bounded quantity, or unclassified generated object obscures the claim.

## Target-Step Assembly Audit

Accepted Lemma~\ref{lem:step-001-logstar} supplies the exact scalar comparison; accepted Proposition~\ref{prop:step-007-additive-vc} supplies \(a_{\rm VC}=1/2\) and the fixed-candidate lower certificate; accepted Proposition~\ref{prop:step-008-factor-floor} supplies \(a_{\rm L},c_\delta\) and the exact factor-floor interface. Lemma~\ref{lem:step-009-low-mass}, Lemma~\ref{lem:step-009-active-budget}, and Proposition~\ref{prop:step-009-almm-eligibility} then imply the exact low-mass, subcritical-budget, and delta conclusions. The assembly preserves the first candidate-delta conjunct in the named eligibility proposition and rate audit, uses the same \(n\) throughout, and relies on no unreviewed bridge.

## Review Rationale

ACCEPTED is warranted because all three local units are self-contained relative to the setting and exact accepted dependencies, their derivations are valid, and their named assembly proves the binding step claim. The repaired artifact explicitly places \(n<c_{\rm low}M\) in the unit_003 map entry, proposition, cited-result restatement, and invocation discharge, and it names the exact dependency and local theorem-style provenance throughout. Independent checks of constants, strict/equality boundaries, both candidate-delta conjuncts, fixed-candidate scope, no-union-bound logic, explicit rate modes, hidden subclaims, dependency fidelity, and the \(k=1\) baseline reveal no remaining local or upstream defect. No retry is required, so None is the smallest retry target.
