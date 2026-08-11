# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_006
- Unit attempt: 1
- Reviewed proof artifact: perspective_3/idea_2/proof_steps/step_006/proof.md

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: High-accuracy strict feasibility

- Statement fidelity: The proposition proves the exact step_006 bridge for an arbitrary fixed \(h\): strict infeasibility of the representative system is impossible under Assumption~\ref{assump:high-accuracy}, the accepted step_003 approximate-separator interface, and the accepted step_005 conditional obstruction interface. It does not claim a stronger margin, a common vector for multiple targets, or an altered probability mode.
- Proof validity: The temporary infeasibility hypothesis is introduced only after fixing \(h\). The step_005 witness distribution \(\mathcal D_h^\star\) is then fixed before step_003 is instantiated. Step_003 supplies a deterministic \(v\) for exactly the pair \((\mathcal D_h^\star,h)\), while step_005's lower bound is universal over the same deterministic score class and therefore applies to that \(v\). The chain
  \[
  \mathcal L_{\mathcal D_h^\star,h}(x\mapsto\langle v,x\rangle)
  \le 2\varepsilon
  <\frac{1}{n+1}
  \le\frac{1}{k}
  \le
  \mathcal L_{\mathcal D_h^\star,h}(x\mapsto\langle v,x\rangle)
  \]
  has the correct direction and is contradictory.
- Cited-result and assumption audit: The proof restates the current-notation conclusions of accepted step_003 (for every legal distribution and target, some deterministic identity-coordinate vector has loss at most \(2\varepsilon\)) and accepted step_005 (under the local infeasibility hypothesis, one legal uniform distribution gives loss at least \(1/k\ge 1/(n+1)\) for every \(w\)). It explicitly checks that \(\mathcal D_h^\star\in\Delta(\mathcal X)\), keeps the same target and tie-resolved loss, and uses Assumption~\ref{assump:high-accuracy} only for the strict numerical comparison. The accepted step_004 interface is used only as the definition and exact equivalence of the system; no unaccepted dependency or external theorem is imported.
- Rigor checklist: Quantifiers are in the required order: fix \(h\), assume infeasibility, construct one witness law, invoke the universal distribution-wise result, and discharge infeasibility. No expectation is compared directly with a realized lower bound; step_003 has already performed deterministic extraction. The proof does not interchange an infimum and an expectation, does not require attainment of an infimum, and does not silently turn the strict threshold into a weak one. The endpoint \(k=n+1\) is retained, so equality in the certificate threshold is still contradicted by the primitive strict inequality.
- Local adversarial test: At \(2\varepsilon=1/(n+1)\), the displayed chain would not be contradictory, which confirms that strictness is genuinely used. At \(k<n+1\), the lower bound is stronger. If step_003 returns \(v=0\), the universal step_005 lower bound still applies, and the witness atoms are ties/errors. At \(\varepsilon=0\), the same argument gives an immediate contradiction to infeasibility. The construction is valid for \(n=1\) and does not require a nonempty class beyond the fixed-target branch.
- Contribution to target step: It proves feasibility of the exact representative strict system for each fixed target, which is the only new theorem-critical conclusion required before applying step_004's equivalence.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact identity representation for a fixed target

- Statement fidelity: The proposition converts the strict-feasibility conclusion of Proposition~\ref{prop:step-006-feasibility} through the exact accepted step_004 equivalence and obtains precisely
  \[
  \forall x\in\mathcal X,\qquad
  \operatorname{sign}_{s_0}(\langle w_h,x\rangle)=h(x)
  \]
  for each fixed \(h\). It leaves the common feature-map and dimension conclusions to step_007 as required by the sketch.
- Proof validity: A vector satisfying the strict inequalities on \(Q_h\) is supplied by Proposition~\ref{prop:step-006-feasibility}. The proof invokes the reverse direction of the accepted representative/pairwise equivalence for this same vector and target, so correctness is extended to every antipodal pair and hence all of \(\mathcal X\). Strictness ensures nonzero representative and antipodal scores, so the tie convention is not bypassed.
- Cited-result and assumption audit: The accepted step_004 proof/review pair is cited by its theorem-style labels, Lemmas~\ref{lem:step-004-representatives} and \ref{lem:step-004-pairwise-strictness}, with the current score, target, and tie convention restated in the cited-result application section. No additional oddness, margin, or trajectory assumption is introduced; oddness and tie handling are already discharged by that accepted dependency.
- Rigor checklist: The same \(w_h\) and \(h\) are used throughout, and the pair partition covers all cube points. The argument is deterministic and finite, with no probability or convergence upgrade. Zero scores are excluded by strictness on \(Q_h\), and the antipodal score is exactly the negative of the representative score.
- Local adversarial test: The two possible values of \(s_0\), the \(w_h=0\) failure of strict feasibility, and the \(n=1\) single-pair case are all covered by the accepted dependency equivalence. The empty-class case is handled separately in the target-step assembly, so no fixed target is selected when \(\mathcal H=\varnothing\).
- Contribution to target step: It exports the exact target-wise identity separator needed by step_007 and final assembly.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim is used. The proof explicitly names the temporary infeasibility hypothesis, legality and construction of the step_005 witness law, deterministic extraction from step_003, the strict numerical chain, and the conversion from strict feasibility to exact representation. Same-distribution, same-target, same-score, and same-loss matching is stated in the local proof and assembly. The use of \(1/k\ge1/(n+1)\), the \(k=1\) and \(k=n+1\) endpoints, the zero vector, the zero-error case, and the empty-class branch are all addressed. Mathematical authority in the assembly is supplied by theorem-style proposition and lemma labels and accepted dependency conclusions rather than subsection names or bare unit IDs.

## Target Claim Audit

The proof establishes the exact accepted sketch-row claim:
\[
\forall h\in\mathcal H\ \exists w_h\in\mathbb R^n\ \forall x\in\mathcal X,
\qquad
\operatorname{sign}_{s_0}(\langle w_h,x\rangle)=h(x).
\]
For each target, the strict system \(h(q)\langle w,q\rangle>0\) on \(Q_h\) is first proved feasible. The approximate upper bound and obstruction lower bound are compared on one identical \((h,\mathcal D_h^\star,x\mapsto\langle v,x\rangle,\mathcal L)\) tuple. The output vector may depend on \(h\), but no dependence on a distribution, initialization, or trajectory is exported. The proof preserves the fixed finite-horizon source protocol through the already accepted step_003 interface and makes no simultaneous-over-target or high-probability claim.

## Explicit Rate Audit

This step is rate-bearing through the exactification threshold. Exposed quantities are \(n,\varepsilon\), the support size \(k\) with \(1\le k\le n+1\), the fixed target \(h\), and the witness law produced conditionally by step_005; inherited \(m,S,T,\eta\) remain fixed and introduce no hidden term. Hidden constants are absent and may depend on nothing. The probability mode is deterministic: step_003's expectation-to-existence conversion is consumed as an already accepted deterministic existential statement, and step_006 performs no further probability conversion. The horizon is the inherited fixed finite \(T\), and the metric is the exact tie-resolved zero-one risk. The only specialization inequality is displayed in full:
\[
\mathcal L_{\mathcal D_h^\star,h}(x\mapsto\langle v,x\rangle)
\le 2\varepsilon
<\frac{1}{n+1}
\le\frac{1}{k}
\le
\mathcal L_{\mathcal D_h^\star,h}(x\mapsto\langle v,x\rangle).
\]
No term is absorbed or dropped. At the baseline \(\varepsilon=0\), the same strict contradiction preserves the exact representation conclusion; at equality, the proof correctly does not claim exactification.

## Notation Surface Audit

The step reuses setting-derived \(Q_h\), the accepted step_005 witness law \(\mathcal D_h^\star\), the accepted support size \(k\), and the accepted identity-coordinate score. The vector \(v\) is explicitly proof-local and is not exported; \(w_h\) is the sole public-facing output. The temporary infeasibility hypothesis is a local conditional hypothesis, not a primitive theorem assumption. No new constant, event, margin, radius, boundedness assertion, or trajectory invariant is introduced, and no helper notation obscures the strict gap or its parameter dependence.

## Target-Step Assembly Audit

Under the local infeasibility hypothesis, accepted step_005 produces a legal distribution with a universal lower bound. Accepted step_003 applies to that exact distribution and target and supplies a deterministic vector meeting the upper bound. Assumption~\ref{assump:high-accuracy} yields the strict contradiction, so infeasibility is false. The accepted step_004 equivalence then supplies exact representation for the arbitrary fixed target. Handling \(\mathcal H=\varnothing\) before fixing \(h\) and retaining the target-wise dependence of \(w_h\) gives the exact step_006 assembly; step_007 is the downstream consumer of the separator output.

## Review Rationale

Both local propositions prove their stated claims under the unchanged sketch interface. The central possible failure mode is mixing the distribution used to generate the step_003 vector with another distribution or comparing an expected loss to a universal lower bound without a deterministic witness; the proof avoids both errors by fixing \(\mathcal D_h^\star\) first and consuming step_003's deterministic existence conclusion. The strict \(2\varepsilon<1/(n+1)\) gap, tie-resolved metric, support endpoint, null vector, zero-error specialization, and quantifier order all survive the audit. No local flaw, dependency flaw, or sketch/interface change is present, so ACCEPTED with Smallest Retry Target = None is the smallest disposition.
