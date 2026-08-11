# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_010`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_010/proof.md`, SHA-256 `314d3c3632243976831268a3629e2379258d68ddb3e02a879f961c4bfeaa302a`
- Binding setting artifact: `perspective_1/idea_3/setting.md`, SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`
- Binding sketch artifact: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d`
- Binding sketch-review artifact: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390`, status `ACCEPTED`
- Accepted `step_001` proof/review: SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a` / `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, status `ACCEPTED`
- Accepted `step_008` proof/review: SHA-256 `fd12b00bd08d505a0e99e1e0fd81894e2da77f97ccf6337127d886f79e51b049` / `5f38e44448fb85efb27196868145966b7acb9ad6188bcf0c0a1cef250c44817c`, status `ACCEPTED`
- Accepted `step_009` proof/review: SHA-256 `9799e655ff793a3787c6fac8863bdb00b3e357436d662381f0308b87ea1723d7` / `009609777bfce6f42c0d8010696c1994862d8ef7080388b9d5b404a676d4c8d2`, status `ACCEPTED`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-010-finite-coding} states exactly the finite input, output, and indexed-task coding needed by the accepted row, under the measurable quotient-cell and accepted finite-witness interfaces. It does not assume measurable raw singletons, a quotient section, or a proper output class.
- Proof validity: The threshold pattern proves the witness quotient points are distinct. Their measurable quotient cells then define the retraction \(\tau_i\), whose fiber at \(x_{i,1}\) correctly absorbs the complement and whose other fibers are the corresponding cells. The extension \(e_i(v)\) is measurable as a finite union of quotient cells, realizes every bit vector on the witness, and is allowed to be improper. The row-counting weights define the exact labeled law \(P_\theta\), and equation (11) is exactly the risk of \(e_i(v)\) under the accepted finite Dirac-mixture task.
- Cited-result and assumption audit: Accepted Lemma~\ref{lem:step-001-quotient-invariance} supplies the finite witness representation without a measurable section, while accepted Lemma~\ref{lem:step-008-shelah-tasks} supplies the fixed points, targets, and task universe. Assumption~\ref{assump:countably-coded-evaluation} supplies precisely the cell measurability used by the construction. No stronger property of \((X_i,\Sigma_i)\) is imported.
- Rigor checklist: The proof keeps multiplicities in \(\mathbf j\), distinguishes the abstract finite alphabet from raw singleton measurability, and proves all finite-evaluation cylinders of the decoder are measurable. All finite sets are nonempty. At \(t_i=1\), \(\tau_i\) is the total constant retraction and both the output and task formulas remain valid.
- Local adversarial test: Uncountable raw cells, nonmeasurable raw singletons, points outside every witness cell, and repeated task rows do not break the construction: only the measurable cells are tested, finite mixtures of Dirac measures remain legal, and risk is evaluated solely on the chosen representatives.
- Contribution to target step: Supplies an exact zero-residual finite coding on which privacy, compactness, and minimax can be performed.
- Verdict: PASS
- Repair direction: None

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-010-kernel-equivalence} gives both required directions between total unrestricted raw learners and the finite array set, while retaining every nonrealizable finite input, every ordered neighboring pair, every finite output event, arbitrary improper outputs, and exact task payoffs.
- Proof validity: For a raw learner, the finite evaluation map is measurable because each vector fiber is a finite-evaluation cylinder; applying raw DP directly to \(\operatorname{ev}_i^{-1}(E)\) proves (14) for every \(E\subseteq\mathcal V_i\). This avoids summing atomic inequalities and therefore never multiplies \(\delta\). Conversely, labeled preprocessing preserves the label and maps a one-row replacement either to equality or to one finite-row replacement. The array constraint then proves both DP directions for every output event. Measurability into the finite input space makes (20) a total Markov kernel, and the decoder \(e_i\) supplies a measurable arbitrary-improper raw hypothesis.
- Cited-result and assumption audit: The only local input is Lemma~\ref{lem:step-010-finite-coding}; all other facts are direct applications of the setting's all-input replacement-DP and finite-evaluation conventions. No realizability test, version-space assumption, quotient-coded output restriction, or group-privacy argument is used.
- Rigor checklist: The finite input set is all of \((F_i\times\{0,1\})^m\), so conflicting labels and every other nonrealizable row pattern are included. Ordered adjacency retains both likelihood-ratio directions. Equal retracted datasets are handled separately, and the finite array constraints cover empty, full, atomic, and non-atomic output events.
- Local adversarial test: Replacing a raw row by another row in the same quotient cell may make the retracted datasets equal; changing its label or its retraction cell leaves exactly one changed coordinate. Both cases satisfy privacy. On every hard-task sample, the retraction fixes each representative, while output restriction retains every coordinate on which task risk depends, so equations (18) and (21) have no residual.
- Contribution to target step: Proves that the finite game has exactly the payoff possibilities relevant to all eligible unrestricted learners and contains only kernels that extend to eligible total raw learners.
- Verdict: PASS
- Repair direction: None

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-010-compact-game} establishes the nonempty compact convex finite DP polytope, finite vertex representation, affine payoff continuity, and attained worst-task minimum required before strict minimax.
- Proof validity: The displayed cardinalities make the input, output, task, adjacency, and event collections finite. Row stochasticity, nonnegativity, and all-event DP are finitely many affine equalities or closed half-space constraints, hence form a closed convex set; row stochasticity bounds every coordinate. The data-independent constant-output kernel proves nonemptiness for every allowed \(\delta\). Finite-dimensional compactness and the restated polytope theorem give a nonempty finite vertex set and its convex hull. Each \(L_\theta\) is affine, and a finite maximum of continuous payoffs is continuous and attains its minimum.
- Cited-result and assumption audit: The finite polytope vertex theorem is restated with its exact finite-dimensional hypotheses, all of which are checked locally. Proposition~\ref{prop:step-010-kernel-equivalence} supplies the exact constraint set and payoffs. No compactness of an infinite learner or hypothesis space is asserted.
- Rigor checklist: Finiteness remains true at \(t_i=1\) and \(m=8\); the full collection of \(2^{|\mathcal V_i|}\) output events is large but finite. Lower-dimensional or singleton feasible sets are still nonempty compact polytopes with vertices. No closure, boundedness, or attainment claim is left implicit.
- Local adversarial test: Even if the DP constraints force degeneracy or many redundant faces, the constant kernel remains feasible and the compact-minimum argument remains valid. Neither task-universe size nor quotient cardinality enters a payoff threshold.
- Contribution to target step: Supplies the finite attained game on which pointwise strict hardness can be made uniform and finite matrix minimax can be applied.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-010-strict-value} targets the exact strict value \(\gamma_i>1/8\) at the same active factor, candidate budget, and delta parameter supplied by the accepted dependencies. The margin \(\eta_i\) is correctly classified as a derived proof-local quantity rather than a universal rate.
- Proof validity: Every \(p\in\mathcal P_i\) extends, by Proposition~\ref{prop:step-010-kernel-equivalence}, to a total all-input replacement-\((0.1,\delta)\)-DP learner with measurable arbitrary-improper output and exact indexed-task losses. Accepted Proposition~\ref{prop:step-009-almm-eligibility} discharges \(m\ge8\), strict subcriticality, and the exact delta cap. Accepted Proposition~\ref{prop:step-008-factor-floor} then yields an indexed task with loss strictly above \(1/8\), so \(g_i(p)>1/8\) for every feasible \(p\). Continuity and compact attainment provide a minimizer \(p_i^*\); evaluating the pointwise strict inequality at that actual minimizer proves \(\gamma_i>1/8\).
- Cited-result and assumption audit: The accepted factor-floor and eligibility conclusions are used at their exact expected-risk, fixed-candidate, arbitrary-output interfaces. Every task in the accepted universe is represented by at least one \(\theta\). The proof neither strengthens the ALMM margin nor treats pointwise strictness alone as a uniform gap.
- Rigor checklist: The argument correctly notes that taking an unattained infimum would give only a non-strict lower bound. Strictness is preserved solely because the continuous maximum payoff attains its minimum on the nonempty compact set. Equality at the delta cap is permitted by the accepted factor-floor hypothesis.
- Local adversarial test: A sequence of kernels with worst-task loss decreasing toward \(1/8\) cannot evade the conclusion: compactness supplies a convergent feasible minimizer, and that minimizer itself must still have a strict hard task by the accepted factor floor.
- Contribution to target step: Produces the positive game-value gap required for a prior that is strict against every learner.
- Verdict: PASS
- Repair direction: None

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-010-hard-prior} states the required quantifier order \(\exists\nu_i\,\forall A\), with \(\nu_i\) finite, learner-independent, supported on realizable finite-Dirac-mixture tasks, and giving strict average expected factor risk above \(1/8\).
- Proof validity: Writing \(\mathcal P_i\) as the convex hull of its finite vertices converts learner minimization into mixed row play without changing affine payoffs. The game orientation is correct: the learner minimizes and the task player maximizes, so finite minimax turns \(\min_\lambda\max_\mu\) into \(\max_\mu\min_\lambda\). An attaining maximizing task mixture \(\mu_i\) therefore has expected payoff at least \(\gamma_i\) against every vertex mixture and hence every \(p\in\mathcal P_i\). Restricting an arbitrary raw learner to \(p^A\) and using the exact payoff identity preserves the strict inequality.
- Cited-result and assumption audit: The finite von Neumann theorem is restated with the correct orientation and applied only to the finite vertex-by-task matrix. Proposition~\ref{prop:step-010-strict-value} supplies \(\gamma_i>1/8\), and Lemma~\ref{lem:step-010-compact-game} supplies the finite vertices and affine representation. No infinite minimax or unproved interchange is used.
- Rigor checklist: The pushforward from indexed tasks to actual task pairs is legitimate. If several indices encode the same task, their masses add and their risk functional is identical, so duplicated indices do not change the expectation. The optimizer may depend on the fixed factor, candidate budget, and \(\delta\), but it is chosen before and independently of the quantified learner.
- Local adversarial test: Nonunique vertex decompositions cannot affect the bound because the bilinear payoff equals the affine payoff of the represented \(p\). Nonunique or duplicated task encodings are harmless under pushforward. A singleton vertex set, a single task, and \(t_i=1\) are all covered by the same finite theorem.
- Contribution to target step: Reverses the learner-by-learner hard-task quantifiers and proves the exact learner-independent prior interface consumed downstream.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. Distinctness of the quotient witness cells, measurable retraction and output extension, exact finite task laws and risks, restriction and total extension of kernels, replacement-adjacency preservation, all-event DP, finite-polytope nonemptiness and compactness, strict-value attainment, finite minimax, and duplicate-task pushforward are each proved inside the appropriately named theorem-style unit. The two standard finite-dimensional results are restated before use with their current objects and hypotheses. The assembly does not rely on subsection names, bare unit IDs, the global diagnostic, or an unstated measurable section.

## Target Claim Audit

The proof establishes the exact accepted `step_010` claim on the same fixed-candidate contradiction branch as accepted `step_009`. For every \(i\in H\), it constructs a finite prior over the accepted realizable finite-Dirac-mixture factor tasks before quantifying over learners, and every total unrestricted all-input replacement-\((0.1,\delta)\)-DP learner on exactly \(m_{n,i}\) rows has prior-averaged expected distributional \(0\)-\(1\) risk strictly greater than \(1/8\). The proof neither restricts the learner to quotient outputs or proper hypotheses nor changes the privacy, risk, expectation, or candidate scope. An empty \(H\) makes the row's universal statement vacuous; on the accepted contradiction branch, accepted `step_009` proves \(H\ne\varnothing\).

## Explicit Rate Audit

The exposed quantities are the fixed factor \(i\), candidate \(n\), exact budget \(m_{n,i}\), \(d_i,t_i,N_m\), and \(\delta\), with privacy level \(0.1\) and risk threshold \(1/8\) fixed. The only numerical constants are the accepted universal \(a_{\rm L},c_\delta\); the attained margin \(\eta_i\) is allowed to depend on the finite game and is not exported as a hidden universal rate. Game cardinalities certify finiteness but do not enter the risk floor, eligibility conditions, or any theorem-facing hidden constant. The mode remains expected exact distributional binary risk at one fixed candidate, with pointwise all-event privacy and no probability conversion, approximation tolerance, asymptotic claim, or uniform-in-candidate upgrade. At \(k=1\), the low-complexity contradiction branch is already closed by accepted `step_009`; in the active branch the construction is exactly the unrestricted one-factor ALMM finite-task game, so the baseline is preserved.

## Notation Surface Audit

The sole public-facing new object is \(\nu_i\). The finite game sets, polytope, vertices, and value are appropriately appendix-local, while cells, retractions, extensions, finite laws, payoff functions, vertex weights, and the indexed prior are proof-local. Every helper is defined from setting objects or accepted dependencies before use. The proof exports no task-cardinality dictionary, free bounded constant, quotient section, or unnecessary finite-game notation to the downstream interface.

## Target-Step Assembly Audit

Accepted Lemmas~\ref{lem:step-001-quotient-invariance}, \ref{lem:step-001-output-measurability}, and \ref{lem:step-001-risk-pullback} supply the quotient-cell and exact-risk interface. Accepted Lemma~\ref{lem:step-008-shelah-tasks} and Proposition~\ref{prop:step-008-factor-floor} supply the fixed finite tasks and strict learner-by-learner floor; accepted Proposition~\ref{prop:step-009-almm-eligibility} supplies the exact active-factor numerical hypotheses. Lemma~\ref{lem:step-010-finite-coding}, Proposition~\ref{prop:step-010-kernel-equivalence}, Lemma~\ref{lem:step-010-compact-game}, Proposition~\ref{prop:step-010-strict-value}, and Proposition~\ref{prop:step-010-hard-prior} then form a complete named chain from those inputs to the exact prior-before-learner conclusion. No additional bridge, assumption, dependency, or weakened output is needed.

## Review Rationale

`ACCEPTED` is warranted because all five local units are valid under the exact setting and accepted dependencies and jointly prove the binding row without narrowing the unrestricted learner. The high-risk interfaces all pass independently: quotient cells replace any need for measurable raw singletons or a section; retraction preserves replacement adjacency; all nonrealizable finite inputs and all output events are included without multiplying \(\delta\); restriction and extension preserve task risk exactly; the DP array set is nonempty, compact, convex, and finite-dimensional; compact attainment preserves the strict \(>1/8\) gap; and correctly oriented finite minimax produces a finite learner-independent prior. Duplicate indexed tasks, finite-game cardinalities, \(t_i=1\), empty \(H\), and the \(k=1\) baseline are all handled. No retry is required, so `None` is the smallest retry target.
