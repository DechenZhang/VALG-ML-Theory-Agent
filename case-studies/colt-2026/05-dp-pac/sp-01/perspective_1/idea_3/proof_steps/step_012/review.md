# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_012
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_3/proof_steps/step_012/proof.md, SHA-256 ac0610a3d0c21f6be85650e00c8d934ef8e6eddd849f27f4116db1e7113fdd74
- Binding setting artifact: perspective_1/idea_3/setting.md, SHA-256 5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0
- Binding sketch artifact: perspective_1/idea_3/proof_sketch.md, SHA-256 6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d
- Binding sketch-review artifact: perspective_1/idea_3/proof_sketch_review.md, SHA-256 9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390, status ACCEPTED
- Accepted step_001 proof/review: SHA-256 c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a / baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82, status ACCEPTED
- Accepted step_009 proof/review: SHA-256 9799e655ff793a3787c6fac8863bdb00b3e357436d662381f0308b87ea1723d7 / 009609777bfce6f42c0d8010696c1994862d8ef7080388b9d5b404a676d4c8d2, status ACCEPTED
- Accepted step_010 proof/review: SHA-256 314d3c3632243976831268a3629e2379258d68ddb3e02a879f961c4bfeaa302a / ef6aa34bc4943a059f70fb3140ac71cf2c7fcdbc0a3711af7db392a9508bce98, status ACCEPTED
- Accepted step_011 proof/review: SHA-256 5259c6a34a8812b105c312b387f1e595591066a8a1d976cf2857333f21fc3315 / f43d02a700e96928b0afb0720408411aaf5de398817d430a15fb6a620630cd4c, status ACCEPTED

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-012-ideal-experiment} fixes the accepted active priors and deterministic low-factor tasks before the arbitrary global learner, then states exactly the common full-product target, block-mixture distribution, iid ideal sample, and marginal binomial route-count interface required by the binding row.
- Proof validity: Finiteness of \(H\subseteq[k]\) permits all accepted priors and low-factor choices to be fixed simultaneously without a selector. Assumption~\ref{assump:canonical-product} combines the sampled factor targets into one \(c^\star\in C\), while the setting's measurable-target consequence makes it measurable. The finite mixture \(D^\star(B)=\sum_j\pi_jD_j(B\cap X_j)\) is a probability measure with the exact block masses. Distinct row-array coordinates make the routed records conditionally independent, and equation (9) correctly factors their joint law as \((D^\star_{c^\star})^n\) conditional on the task vector. Each \(L_j\) is therefore marginally \(\operatorname{Bin}(n,\pi_j)\).
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-009-almm-eligibility} supplies the same fixed-candidate weights and active set; accepted Proposition~\ref{prop:step-010-hard-prior} supplies finite priors fixed before every learner. The low-factor task choices use only nonemptiness of the setting factors. No learner-dependent task, balance condition, generated event, or measurable choice over an infinite family is introduced.
- Rigor checklist: The proof distinguishes conditioning on the finite task vector from the outer finite prior average, fixes every task before data and the single learner call, and uses only finite task and support spaces. The formulas remain valid when all factors are active, when only one factor is active, and when \(k=1\).
- Local adversarial test: Repeated routes to one factor use fresh row-array coordinates, so they do not create sample dependence. Arbitrary heterogeneity of the \(D_j\)'s and of the weights does not alter the iid mixture calculation. Randomizing a task after the learner call would invalidate the later minimax order, but the displayed construction samples all tasks first.
- Contribution to target step: Provides the single common ideal experiment against which every active hidden learner is compared.
- Verdict: PASS
- Repair direction: None

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-012-hidden-kernel} constructs a kernel on exactly \(m_{n,i}\) labeled factor rows, with finite output and the accepted decoder, and explicitly requires totality, input-independent overflow handling, one-use insertion, and measurability before privacy is invoked.
- Proof validity: The finite restriction \(\rho_i\) is measurable because every singleton fiber is a permitted finite-evaluation cylinder and \(\mathcal V_i\) is finite. The auxiliary law is supported on finitely many other-task, route, and other-row realizations and is independent of the factor input. On overflow, equation (16) returns the fixed vector without evaluating \(\Phi_{i,\xi}\), requesting an unavailable row, or calling \(A_n\). Off overflow, every coordinate of \(\Phi_{i,\xi}\) is either a measurable input projection followed by the measurable trace-space inclusion or a constant record. Kernel composition and a finite mixture therefore make \(s\mapsto K_i^{A_n}(s,E)\) measurable for every \(E\subseteq\mathcal V_i\), while each row is a probability law.
- Cited-result and assumption audit: Accepted Lemma~\ref{lem:step-010-finite-coding} supplies the measurable improper decoder and finite witness, and accepted Proposition~\ref{prop:step-010-hard-prior} supplies finite-support task laws. The arbitrary global output is used only through the setting's finite-evaluation-cylinder interface. No properness, quotient-output, realizability, or unproved standard-Borel property of the raw factor space is used.
- Rigor checklist: The kernel is defined on inconsistent and nonrealizable inputs. If \(L_i=0\), no input coordinate is used; if \(0<L_i\le m_i\), exactly the first \(L_i\) coordinates are used; if \(L_i>m_i\), the construction exits before any input-dependent map is formed. Finite output also makes every decoder cylinder measurable.
- Local adversarial test: Nonmeasurable raw singletons do not matter because coordinate projections and the trace inclusion are measurable. A route requesting \(m_i+1\) rows cannot trigger an out-of-range access because it is caught by the first branch. An arbitrary improper \(A_n\) output remains legal because only its labels on the finite \(F_i\) are retained.
- Contribution to target step: Supplies the total unrestricted measurable factor learner that the privacy and hard-prior interfaces consume.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-012-hidden-privacy} proves all-input replacement-\((\varepsilon,\delta)\)-DP for the hidden kernel and then the exact weaker \((0.1,\delta)\) interface required by the accepted hard prior, with no realizability premise or privacy composition.
- Proof validity: Conditioning on one input-independent auxiliary realization is legitimate. Overflow gives the same point mass for both inputs. If the replaced input row is unused, the assembled global datasets coincide. If it is used, its occurrence number identifies exactly one \(i\)-slot: before the \(a\)-th occurrence the count is below \(a\), at that slot it becomes \(a\), and at every later \(i\)-slot it is larger. Hence arbitrary labeled neighboring factor inputs induce global datasets differing in at most one record. Applying global DP once to the measurable event \(\rho_i^{-1}(E)\) gives equation (19), and integrating the same conditional inequality adds \(\int\delta\,d\mathsf Q_i=\delta\), not a multiple of \(\delta\).
- Cited-result and assumption audit: The only privacy source is the quantified all-input global DP kernel; Proposition~\ref{prop:step-012-hidden-kernel} supplies the input-independent auxiliary law and measurable output restriction. Assumption~\ref{assump:global-privacy-range} supplies only \(\varepsilon\le0.1\) for the final monotonicity step.
- Rigor checklist: Both directions of replacement adjacency and every output event are covered. Labels need not be consistent with a concept. Used-row, unused-row, no-slot, and overflow cases exhaust the construction. There is one global learner call on nonoverflow and none on overflow.
- Local adversarial test: A label-only replacement is still one global-record replacement; replacing a raw instance and label together is also one replacement. Reusing a row would break this proof, but equation (15) assigns row \(a\) only to the unique \(a\)-th requested slot. Mixing auxiliary randomness cannot compose privacy because the same input-independent law is used for both neighbors.
- Contribution to target step: Establishes the eligible unrestricted factor-privacy interface with exact parameters.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-012-identity-coupling} states the exact same-task, same-target, same-mixture, same-dataset, same-output-coordinate, and same-risk identity off overflow, together with both the pointwise residual bound and the expected residual at most \(\eta_0\). It explicitly limits the conclusion to factor marginals.
- Proof validity: Drawing \(T_i\sim\nu_i\) externally and using the first \(m_i\) rows of its independent array gives exactly the hard-prior input law; the other tasks, route, and other-factor arrays retain precisely the input-independent auxiliary marginal of \(K_i^{A_n}\). On \(\mathcal O_i^c\), every \(i\)-slot and non-\(i\)-slot in equation (25) equals its ideal counterpart, proving \(\Phi_{i,\xi}(S_i^{\rm in})=S^\star\). A general Markov kernel needs no random-seed representation: sampling one output coordinate from \(A_n(S^\star,\cdot)\) and sharing that coordinate off overflow gives the required coupling. Accepted finite coding makes \(e_i(\rho_i(\omega))\) equal to \(h_\omega\) on every point supporting \(D_i\), so the factor risks are exactly equal off overflow.
- Cited-result and assumption audit: Accepted step_010 supplies learner-independent priors, supported finite tasks, and the zero-residual decoder; accepted step_011 supplies the exact marginal probability \(\Pr(\mathcal O_i)\le\eta_0\), including endpoints. Assumption~\ref{assump:canonical-product} is used only to make the shared task tuple one legal global target, never in privacy.
- Rigor checklist: Both risks are measurable finite sums in \([0,1]\). Thus \(|R_i^{\rm tr}-R_i^{\rm id}|\le\mathbf1_{\mathcal O_i}\) pointwise and \(|\mathbb ER_i^{\rm tr}-\mathbb ER_i^{\rm id}|\le\mathbb E|R_i^{\rm tr}-R_i^{\rm id}|\le\Pr(\mathcal O_i)\le\eta_0\). This accounts for the entire residual; finite restriction, decoding, task selection, and target transfer add zero error.
- Local adversarial test: Conditioning on any fixed \(T_i\) leaves the route law unchanged, so the same residual holds taskwise. On overflow, the ideal call may be arbitrary, but bounded risk charges it by at most one. The task vector, route, arrays, and ideal output can be shared across all \(i\), while only each hidden learner's marginal law is consumed; no hidden output independence, joint release, or joint overflow event is needed.
- Contribution to target step: Supplies the exact same-target bridge from every hard-prior hidden learner to one common global ideal experiment.
- Verdict: PASS
- Repair direction: None

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-012-boundaries} isolates all boundary traces required by the binding row: no requested slot, used and unused replacements, overflow, arbitrary labels, one active factor, the zero-weight endpoint, and the exact \(k=1\) specialization.
- Proof validity: Each item follows from the named construction, privacy proposition, or coupling proposition. At \(L_i=0\), the assembled database contains no factor-input coordinate and still equals the ideal database. The overflow decision depends only on the route. When \(H=\{i\}\), the other active-prior product is empty and every remaining factor task is fixed. At the hypothetical \(\pi_i=0\) endpoint, \(L_i=0\) almost surely, so input independence and exact coupling hold. At \(k=1\), \(\pi_1=1\), \(L_1=n\), and \(m_{n,1}=\max\{8,4n\}\ge n\), so overflow is impossible and the first \(n\) input rows are inserted once.
- Cited-result and assumption audit: Positivity of the actual setting weights comes from accepted Lemma~\ref{lem:step-001-logstar}; exact zero overflow at \(\pi_i=0,1\) comes from accepted Lemma~\ref{lem:step-011-zero-overflow}. The remaining claims are direct specializations of Propositions~\ref{prop:step-012-hidden-kernel}, \ref{prop:step-012-hidden-privacy}, and \ref{prop:step-012-identity-coupling}.
- Rigor checklist: The cases \(L_i=0\), \(0<L_i\le m_i\), and \(L_i>m_i\) cover all route counts. Independently, \(n\le8\) forces \(m_i\ge n\) and hence zero overflow; ceiling equality and \(L_i=m_i\) remain in the exact nonoverflow branch. The actual active-factor regime has positive weight, while the algebraic zero-weight check introduces no new theorem branch.
- Local adversarial test: With one active factor but \(k>1\), fixed low-factor rows still supply a valid global database. With \(k=1\), there is neither other-task randomness nor a conservative overflow loss. A replacement in any of the \(m_{n,1}-n\) unused rows changes no global record.
- Contribution to target step: Verifies the degenerate and baseline regimes without weakening the generic claim.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. The prior-before-learner common experiment is unit_001; totality, finite-evaluation postprocessing, and kernel measurability are unit_002; arbitrary-label one-use privacy is unit_003; exact same-target coupling and the sole overflow residual are unit_004; and the endpoint traces are unit_005. Simultaneous choice of finitely many accepted priors is finite choice, not a measurable-selection claim. Formation of a joint law from the finite task/sample experiment and the arbitrary output kernel is ordinary kernel integration, and unit_004 correctly avoids assuming a seed representation. The proof contains no hidden properness, quotient-output, balance, support restriction on the global learner, privacy composition, joint-overflow bound, or output-independence claim.

## Target Claim Audit

The proof establishes the exact accepted step_012 row under the unchanged setting and dependencies. The quantifier order is

\[
\text{candidate and accepted priors}
\;\longrightarrow\;
\text{fixed low-factor tasks}
\;\longrightarrow\;
\text{arbitrary global }A_n
\;\longrightarrow\;
K_i^{A_n}\text{ for each }i\in H.
\]

Within a kernel run, other-task realizations and the complete route are input-independent and fixed before the learner call; overflow is resolved before unavailable-row access. The resulting kernel is total and measurable on every labeled \(m_{n,i}\)-row input, is replacement-\((\varepsilon,\delta)\)-DP and hence replacement-\((0.1,\delta)\)-DP, and has exact same-target identity with the common ideal experiment off overflow. Its complete expected-risk discrepancy is at most \(\eta_0\). The claim is pointwise in privacy and marginal in each factor's utility coupling, exactly as required. No quantifier-order reversal, stronger assumption, altered dependency, changed target, or probability-mode upgrade occurs.

## Explicit Rate Audit

- Exposed variables: the fixed candidate \(n\), \(k\), \(i\in H\), \((\pi_j)_j\), the exact \(m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\}\), \(L_i\), \(\mathcal O_i\), \(\varepsilon\), \(\delta\), and \(\eta_0=e^7(2/9)^9\).
- Hidden constants: none. The finite task and witness cardinalities certify measurability/finiteness only and do not enter the exported privacy or risk bound.
- Fixed quantities: the accepted candidate-specific priors and witnesses, replacement adjacency, the finite-evaluation convention, and the fixed downstream factor-risk threshold.
- Probability mode: privacy is pointwise over all neighboring inputs and all finite-output events. Off-overflow equality is pointwise under the coupling. The residual is one unconditional factor-marginal expectation over tasks, rows, route, and learner output. There is no union bound or joint-factor probability assertion.
- Horizon mode: one fixed global candidate \(n\) and its exact factor budget. No asymptotic, stopping-time, all-time, or uniform-in-candidate conclusion is made.
- Norm mode: exact distributional binary \(0\)-\(1\) factor risk.
- Absorption and conversion: \(e^\varepsilon\le e^{0.1}\) is the only privacy monotonicity; finite input-independent mixing retains one \(\delta\); and \(|R_i^{\rm tr}-R_i^{\rm id}|\le\mathbf1_{\mathcal O_i}\) with \(\Pr(\mathcal O_i)\le\eta_0\) is the complete risk conversion. No term is dropped or absorbed in prose.
- Baseline reduction: at \(k=1\), the route is deterministic, the first \(n\) rows are used once, and overflow and coupling loss are exactly zero. This preserves the unrestricted one-factor reduction rather than replacing it by the conservative \(\eta_0\) bound.

## Notation Surface Audit

The proof classifies the setting/dependency quantities \(\pi_j,m_{n,j},H,\nu_j\), the public residual interface \(\mathcal O_j,\eta_0\), and the generated kernel \(K_i^{A_n}\) as public-facing where appropriate. The common tasks, target, mixture, arrays, ideal sample/output, and risk variables are appendix-local; \(\rho_i,v_i^\circ,\xi,\mathsf Q_i,\Phi_{i,\xi}\), and the requested-slot index are proof-local. Every helper has explicit provenance and is defined before use. The finite dictionaries expose rather than hide totality, finiteness, measurability, adjacency, or the residual, and the exported interface contains no unnecessary implementation notation.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-012-ideal-experiment} fixes the common experiment with the correct quantifier order. Proposition~\ref{prop:step-012-hidden-kernel} supplies a total measurable finite-output learner on the exact factor budget. Proposition~\ref{prop:step-012-hidden-privacy} proves the all-input one-use privacy interface with no composition. Proposition~\ref{prop:step-012-identity-coupling} supplies equality of the exact target, task, mixture, dataset, output restriction, and factor risk off overflow and bounds the entire discrepancy by \(\eta_0\). Proposition~\ref{prop:step-012-boundaries} closes the no-slot, arbitrary-label, zero-weight, one-active-factor, and \(k=1\) branches. These named local results, together with the hash-matched accepted dependency claims, jointly imply every part of the binding target and export precisely the eligible factor learners and same-target marginal coupling consumed by step_013.

## Review Rationale

ACCEPTED is warranted because all five local units are self-contained relative to the formal setting and accepted dependencies, valid under their displayed conditions, and assembled through theorem-style references into the exact binding claim. Independent stress tests found no unavailable-row access, kernel-measurability gap, arbitrary-label privacy gap, row reuse, privacy composition, task/learner quantifier reversal, target mismatch, finite-restriction residual, joint-versus-marginal confusion, or uncovered endpoint. The only discrepancy between a hidden factor experiment and the common ideal experiment is the bounded overflow branch, and the proof charges its full contribution by the accepted marginal constant \(\eta_0\), with exact zero loss at \(k=1\). No retry is required, so None is the smallest retry target.
