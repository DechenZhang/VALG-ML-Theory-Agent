# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_005/proof.md` (SHA-256 `4bdeddb090ff889aa710ca8126b91bb792f56635a6f60223f698edbfeb4f335a`)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Universal calibration and fixed log-star threshold

- Statement fidelity: The lemma gives exactly the universal calibration required by the accepted `step_005` row. It defines \(a=b_*/16\), \(c_\delta=d_*\), \(\varepsilon_0=0.1\), \(\alpha_0=\beta_0=2^{-13}\), and a fixed \(N_0\) from only the accepted dependency constants, then proves \(N\ge N_*\) and \(b_*\log_2^*N\ge16\) for every \(N\ge N_0\).
- Proof validity: Since \(q_*=\lceil16/b_*\rceil\ge1\), the setting's tower convention gives \(\log_2^*\operatorname{Tow}_2(q_*)=q_*\). Monotonicity of each iterated logarithm along the positive tower range yields \(N\ge\operatorname{Tow}_2(q_*)\Rightarrow\log_2^*N\ge q_*\), hence \(b_*\log_2^*N\ge b_*q_*\ge16\). Taking \(N_0=\max\{N_*,\operatorname{Tow}_2(q_*)\}\) also gives \(N\ge N_*\), including equality \(N=N_0\).
- Cited-result and assumption audit: Only the current accepted `step_002` endpoint is used: universal \(b_*,d_*>0\), integer \(N_*\ge2\), and the source admissibility interface. No diagnostic artifact, candidate-dependent object, or unaccepted source statement enters the derivation.
- Rigor checklist: \(q_*\) and \(N_0\) are finite integers; all public constants are positive and fixed before candidate quantification; \(2^{-13}\in(0,1/2)\); and no hidden constant depends on \(k,N,n,\varepsilon,\delta\).
- Local adversarial test: If \(b_*\ge16\), then \(q_*=1\) and the same proof works. If \(b_*<16\), the ceiling still gives the required weak lower bound. If \(N_*>\operatorname{Tow}_2(q_*)\), the maximum defining \(N_0\) preserves both conclusions. The exact boundary \(N=N_0\) is covered.
- Contribution to target step: Supplies the fixed universal constants and the numerical slack used to dominate both branches of \(M\).
- Verdict: PASS
- Repair direction: None.

### unit_002: Strict domination of the exact simulated budget

- Statement fidelity: The lemma targets the exact setting-defined integer \(M=\max\{8,\lceil4n/k\rceil\}\) under the local negation \(n<akL_N\), and proves the required strict source regime \(8\le M<b_*L_N\) without replacing \(M\) by a real-valued or expected budget.
- Proof validity: From \(a=b_*/16\) and \(k>0\), the local contradiction gives \(4n/k<(b_*/4)L_N\). The strict identity \(\lceil x\rceil<x+1\) holds for every real \(x\), including integral \(x\). Since \(b_*L_N\ge16\),
  \[
  \left\lceil\frac{4n}{k}\right\rceil
  <\frac14b_*L_N+1
  \le\frac5{16}b_*L_N
  <b_*L_N.
  \]
  Separately, \(8<16\le b_*L_N\). Both integer entries of the maximum are therefore strictly below the same threshold, so their maximum is too.
- Cited-result and assumption audit: The only primitive input is Assumption~\ref{assump:candidate-regime}, supplying \(k\ge2\), \(N\ge N_0\), and integer \(n\ge1\); the only derived input is the accepted-calibration result. The contradiction \(n<akL_N\) is explicitly a local conditional hypothesis and is not exported as a theorem assumption.
- Rigor checklist: Strictness is retained through the ceiling, the \(+1\) allowance, the \(5/16\) comparison, and the max-with-8 step. Integer and noninteger \(4n/k\) are both covered. No floor, asymptotic, or quantifier change occurs.
- Local adversarial test: At \(M=8\), the fixed branch satisfies \(8<b_*L_N\). At \(N=N_0\), the same \(b_*L_N\ge16\) bound holds. For \((n,k)=(1,2)\), \(akL_N=b_*L_N/8\ge2>1=n\), so the local contradiction is active; moreover, \(\lceil4n/k\rceil=2\) and hence \(M=8\). The proof also covers \(n<k\) and integral \(4n/k\).
- Contribution to target step: Supplies exact source sample-size membership and the strict hard-regime certificate.
- Verdict: PASS
- Repair direction: None.

### unit_003: Candidate-conjunction preservation and strict source privacy cap

- Statement fidelity: The lemma retains both conjuncts of `assump:candidate-regime` separately and derives the source privacy cap at the same exact \(M\). It does not replace the candidate convention by only the cap used downstream.
- Proof validity: From the minimum bound one obtains both \(\delta\le1/(n\log(n+1))\) and \(\delta\le c_\delta/(M^2\log(M+1))\). Positivity follows from \(n\ge1\), \(M\ge8\), and \(c_\delta>0\). Strict monotonicity of the natural logarithm gives \(\log(M+1)>\log M>0\), so positive reciprocal comparison and \(c_\delta\le d_*\) yield
  \[
  \frac{c_\delta}{M^2\log(M+1)}
  <\frac{c_\delta}{M^2\log M}
  \le\frac{d_*}{M^2\log M}.
  \]
  Thus even equality in the candidate's second upper bound gives strict membership in the accepted source cap.
- Cited-result and assumption audit: Assumption~\ref{assump:candidate-regime} is the sole primitive source; \(d_*\) is inherited from the current accepted dependency. The first candidate \(\delta\)-conjunct remains available and is not used as a hidden substitute for the second.
- Rigor checklist: Denominators are positive, inequality directions after taking reciprocals are correct, and the proof permits \(c_\delta=d_*\), \(\varepsilon=0.1\), and equality in either candidate upper bound. Probability, sample-size, and adjacency modes are unchanged.
- Local adversarial test: At \(M=8\), the displayed comparison is \(c_\delta/(64\log9)<d_*/(64\log8)\). At \((n,k)=(1,2)\), the two retained conditions are \(\delta\le1/\log2\) and \(\delta\le c_\delta/(64\log9)\), and the latter still gives the strict source cap.
- Contribution to target step: Supplies exact candidate privacy membership while preserving the full theorem-facing conjunction.
- Verdict: PASS
- Repair direction: None.

### unit_004: Hard-regime and candidate-parameter certificate

- Statement fidelity: The proposition assembles exactly (C3)--(C5), which is the accepted `step_005` output: fixed universal constants, \(N\ge N_*\), exact integer \(8\le M<b_*\log_2^*N\), source-compatible \((\varepsilon,\delta)\), and both original candidate \(\delta\)-conditions.
- Proof validity: Lemma~\ref{lem:step-005-calibration} supplies the universal calibration; Lemma~\ref{lem:step-005-budget} supplies exact strict budget control; and Lemma~\ref{lem:step-005-privacy-cap} supplies source privacy membership and conjunction preservation. These conclusions jointly imply every clause of (C3)--(C5) with no omitted case.
- Cited-result and assumption audit: The accepted dependency is restated before use and contributes only \(b_*,d_*,N_*\) and its source interface. Assumption~\ref{assump:candidate-regime} is primitive. The candidate contradiction is used only as the proposition's local conditional antecedent. No hard instance, learner property, event, or generated invariant is assumed, and the optional diagnostic global proof is explicitly neither read nor used.
- Rigor checklist: Quantifier order is correct: constants are selected once before arbitrary candidates; the implication is deterministic and pointwise in \(k,N,n,\varepsilon,\delta\); and all strict and weak inequalities match the accepted source wrapper.
- Local adversarial test: The proposition explicitly survives \(N=N_0\) and the floor branch \(M=8\). At \((n,k)=(1,2)\), the fixed calibration makes the local contradiction nonvacuous because \(akL_N\ge2>1=n\), and the exact budget is \(M=8\). It also retains the source threshold and candidate conjunction at equality in the candidate bounds.
- Contribution to target step: Exports the minimal hard-regime and source-parameter certificate consumed downstream.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. The tower/log-star identity and monotonic comparison, universality of \(N_0\), strict ceiling bound, max-with-8 domination, positivity of logarithmic denominators, strict source-cap comparison, preservation of both candidate \(\delta\)-conjuncts, and all requested boundary cases are stated and proved inside named local units. The contradiction \(n<akL_N\) is consistently classified as a local conditional hypothesis and is not made theorem-facing. The proof states that `global_proof.md` was not read or used, and no diagnostic assertion appears as proof authority.

## Target Claim Audit

The submitted proof establishes the exact accepted sketch-row claim. The universal choices are made only from the accepted \(b_*,d_*,N_*\); for every candidate satisfying Assumption~\ref{assump:candidate-regime}, the local negation \(n<ak\log_2^*N\) implies the exact integer source range \(N\ge N_*\), \(8\le M<b_*\log_2^*N\), \(0<\varepsilon\le0.1\), and \(0<\delta<d_*/(M^2\log M)\), while both primitive candidate \(\delta\)-bounds remain present. The proof neither weakens nor strengthens the theorem target, changes candidate quantifiers, nor exports the contradiction hypothesis as an assumption.

## Explicit Rate Audit

The step correctly exposes \(k,N,n,\varepsilon,\delta\), \(L_N=\log_2^*N\), and exact \(M=m_{n,k}\). Hidden dependence is confined to the accepted universal source constants and excludes every candidate, learner, distribution, sample, or generated object. Constants and \(N_0\) are fixed before candidate quantification. The mode is a deterministic, fixed-size, pointwise scalar implication; there is no probability conversion, stopping-time interpretation, expected-size substitution, or norm change. Equations (7)--(9) explicitly prove ceiling and floor-eight domination, while (13)--(14) explicitly prove logarithmic cap domination. The exact \(M=8\) baseline and both candidate \(\delta\)-conjuncts are preserved.

## Notation Surface Audit

All helper objects have valid provenance and are classified. The theorem constants \(a,c_\delta,\varepsilon_0,\alpha_0,\beta_0,N_0\) are public-facing and directly defined from accepted constants; \(L_N\), \(M\), and the certificate proposition are appendix-local; and the one-use calibration integer \(q_*\) is proof-local and eliminated from the exported interface. There is no unnecessary helper dictionary or free bounded constant.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-002-wrapper} supplies the exact dependency constants and admissibility endpoint. Lemmas~\ref{lem:step-005-calibration}, \ref{lem:step-005-budget}, and \ref{lem:step-005-privacy-cap} respectively prove universal calibration, strict exact-budget membership, and privacy-cap/conjunction membership. Proposition~\ref{prop:step-005-certificate} combines those named results to imply every clause of the exact target. The assembly relies only on theorem-style labels and the accepted dependency, not on bare unit IDs, subsection titles, diagnostics, or downstream claims.

## Review Rationale

All four local units are correct and jointly prove the unchanged `step_005` interface. The proof supplies universal tower/log-star calibration, preserves strictness through the ceiling and max-with-8 branches, retains both candidate \(\delta\)-conjuncts while obtaining a strict source cap, and covers \(N=N_0\), \(M=8\), and \((n,k)=(1,2)\). Its only nonprimitive condition is the explicitly local contradiction hypothesis, and it uses no diagnostic global proof. The dependency is current and accepted, so no local, sketch-level, or dependency-level repair is needed; `ACCEPTED` with `Smallest Retry Target = None` is the smallest aligned outcome.
