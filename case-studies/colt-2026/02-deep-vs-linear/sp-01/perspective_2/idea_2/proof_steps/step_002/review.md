# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_002/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Sampled-label measurability of exact SGD

- Statement fidelity: The lemma proves exactly the sampled-label-only information interface required by the accepted `step_002` row. It keeps the exact Gaussian initialization, source update, fixed ReLU-kink convention, latter-half aggregate, and fixed tie map from Assumption~\ref{assump:source-regime}.
- Proof validity: Defining the single-valued update map \(U(\theta,x,y)\) exposes that update \(t\) receives the random target only through \(h_B(X_t)=B_{X_t}\). Induction over \(t=0,\ldots,T-1\) correctly proves \(\Theta^{(t)}\) is measurable with respect to the initialization and ordered sampled input-label pairs. Every iterate used by the returned aggregate is therefore available in the terminal sigma-field, and applying \(\operatorname{sgn}_{\tau}\) preserves measurability even at score zero.
- Cited-result and assumption audit: No external theorem is used. The source recursion and initialization law are binding setting objects, while the fixed kink and tie conventions are primitive parts of Assumption~\ref{assump:source-regime}. The representative targets \(h_b\) and all auxiliary random variables are explicitly constructed under the temporary shattered-set hypothesis; no trajectory fact is assumed.
- Rigor checklist: The induction covers \(t=T\), hence all terms in the aggregate. Repeated sample inputs are allowed pathwise. The initialization is independent of the random labeling, and the argument introduces no access to target values outside the sampled inputs. The result is finite-horizon and exact rather than asymptotic or almost-sure shorthand.
- Local adversarial test: If several \(X_t\)'s coincide, the recursion merely reuses the same observed coordinate and remains measurable. At a ReLU kink the fixed source selection leaves \(U\) single-valued, and at an aggregate tie the returned value is the fixed binary label \(\tau\); neither case reveals an unsampled bit.
- Contribution to target step: It supplies the exact learner-information interface consumed by Lemma~\ref{lem:step-002-unseen-label}.
- Verdict: PASS
- Repair direction: None.

### unit_002: Fair unseen bit

- Statement fidelity: The lemma establishes the accepted sketch's theorem-critical claim that, on the unseen event, the test label remains conditionally fair given all information available to the exact learner and hence causes conditional error exactly \(1/2\).
- Proof validity: After fixing the test index and ordered training indices, the unseen event makes the test coordinate distinct from the set of observed coordinates. Mutual independence of the finite family \((B_z)_{z\in Z}\) then leaves \(B_X\) fair after conditioning on every sampled label; repeated indices only reduce the observed coordinate set. Independence of \(\Theta^{(0)}\) preserves this fact. Since the terminal sigma-field contains the indices, sampled labels, initialization, and test index, and the unseen event is measurable in it, the pointwise conditioning argument yields the asserted almost-sure conditional law on that event. Unit 001 makes the predicted label fixed under the same conditioning, so its mismatch probability with a fair sign is \(1/2\).
- Cited-result and assumption audit: The only prior result is the fully restated Lemma~\ref{lem:step-002-label-access}. Label-coordinate independence and initialization independence are explicit in the auxiliary experiment and source setup. No independence between the prediction and an observed label is claimed; only the distinct unseen coordinate is used.
- Rigor checklist: The random-index issue is handled by first conditioning on concrete input indices. The event restriction is essential and explicit. The conditional statement permits arbitrary sample multiplicities, either tie label, and zero aggregate score. There is no conversion from conditional fairness to unconditional fairness without paying the unseen-event probability later.
- Local adversarial test: Off the event \(E\), \(B_X\) can be one of the observed labels and need not be fair conditionally; the lemma makes no claim there. On \(E\), even an algorithm that perfectly memorizes every sampled label still has conditional error \(1/2\) against the independent coordinate \(B_X\).
- Contribution to target step: It provides the exact conditional \(1/2\) error factor used in Proposition~\ref{prop:step-002-average-risk}.
- Verdict: PASS
- Repair direction: None.

### unit_003: Finite-horizon avoidance

- Statement fidelity: The lemma proves the exact \(T\)-sample avoidance probability and the required lower bound \((1-1/(2T))^T\ge1/2\), including the accepted sketch's \(T=1\) boundary.
- Proof validity: Conditional on the test point, each iid uniform training draw avoids it with probability \(1-1/(2T)\), and independence gives the displayed product regardless of repeated realized values. The included induction proves Bernoulli's inequality for every integer \(k\ge1\) and \(u\in[0,1]\); substituting \(k=T\) and \(u=1/(2T)\) gives the claimed lower bound.
- Cited-result and assumption audit: The scalar inequality is proved locally rather than cited. Assumption~\ref{assump:source-regime} supplies the integer condition \(T\ge1\), so the set size \(2T\) and substitution are valid.
- Rigor checklist: The equality and inequality are distinguished, all factors are nonnegative, and the proof averages over the test point only after obtaining an expression independent of that point. No asymptotic approximation or hidden constant occurs.
- Local adversarial test: At \(T=1\), the exact probability is \(1/2\), so the lower bound remains sharp. Training-sample collisions do not alter the product calculation because independence concerns draws, not distinct observed values.
- Contribution to target step: It supplies the finite-horizon event probability multiplied by the conditional error in Proposition~\ref{prop:step-002-average-risk}.
- Verdict: PASS
- Repair direction: None.

### unit_004: Random-label average-risk lower bound

- Statement fidelity: The proposition converts the local unseen-label mechanism into the exact expected classification-risk interface of Assumption~\ref{assump:universal-sgd-success}, while still averaging only over the finite auxiliary family of realized targets.
- Proof validity: Conditional on a fixed labeling, initialization, and training sample, an independent \(X\sim\mathcal D_Z\) expresses population risk as the expected mismatch indicator because \(h_b|_Z=b\). Averaging over the uniform finite labeling gives the exact joint-experiment identity. The tower property is applied with the measurable event \(E\); Unit 002 supplies conditional mismatch \(1/2\) on \(E\), and Unit 003 supplies \(\Pr(E)\ge1/2\), yielding the lower bound \(1/4\).
- Cited-result and assumption audit: The proposition restates and uses only Units 001--003. The learner, risk, distribution, horizon, initialization, samples, aggregate, and tie convention are exactly those in the setting. The representative \(h_b\) may differ outside \(Z\), but both training and test distributions are supported on \(Z\), so no unsupported equality outside \(Z\) is used.
- Rigor checklist: All expectations are over finite label/test spaces and the stated learner randomness, so the conditioning and finite averaging are legitimate. The proof retains the nonnegative error contribution off \(E\) rather than assuming anything about it. At \(T=1\), it still obtains \(1/4\) exactly.
- Local adversarial test: A learner can behave arbitrarily on seen points and on the complement of \(E\); the lower bound uses only unseen test points. Random initialization and score ties are already inside the conditioned learner information and cannot reduce the fair-bit mismatch below \(1/2\).
- Contribution to target step: It exports the finite average lower bound consumed by Proposition~\ref{prop:step-002-vc}.
- Verdict: PASS
- Repair direction: None.

### unit_005: VC ceiling from universal exact-SGD success

- Statement fidelity: The proposition proves the exact sketch-row output \(\operatorname{VC}(\mathcal H)<2T\) on the accepted remaining branch, under precisely Assumptions~\ref{assump:source-regime} and \ref{assump:universal-sgd-success} plus the accepted `step_001` branch interface.
- Proof validity: If VC dimension were at least \(2T\), a shattered set \(Z\) and one deterministically selected representative \(h_b\in\mathcal H\) for each finite labeling would exist. Unit 004 makes the finite average of the fixed-target risks at least \(1/4\), so one fixed \(b_\star\) has \(R_{b_\star}\ge1/4\). Only after this selection is the universal premise invoked for the fixed pair \((\mathcal D_Z,h_{b_\star})\), giving \(R_{b_\star}\le\varepsilon<1/4\), a contradiction.
- Cited-result and assumption audit: The accepted dependency Proposition~\ref{prop:step-001-architecture} is current and has a matching `ACCEPTED` review; it supplies only the remaining-branch interface. Proposition~\ref{prop:step-002-average-risk} is restated before use. The architecture, step size, and horizon remain fixed before the witness distribution and fixed target are selected, exactly matching the universal premise's quantifier order.
- Rigor checklist: The auxiliary random target is eliminated before Assumption~\ref{assump:universal-sgd-success} is used. The contradiction relies on the required strict threshold \(\varepsilon<1/4\), not an invalid strict version of the average lower bound. Finite representative selection requires no measurability choice. If the domain has fewer than \(2T\) points, the contradiction hypothesis is already impossible, consistent with the conclusion.
- Local adversarial test: At \(T=1\), the selected fixed target has risk at least \(1/4\), still strictly above \(\varepsilon\). Neither a target-dependent representative choice outside \(Z\) nor random-label averaging changes the final fixed distribution-target pair consumed by the premise.
- Contribution to target step: It proves and exports \(v=\operatorname{VC}(\mathcal H)<2T\) for `step_003`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. Sampled-label measurability, conditional fairness of the random-index label, event measurability, repeated-sample handling, the avoidance product and Bernoulli bound, the risk/test-point identity, tower-property integration, finite maximum-at-least-average extraction, and the universal-premise quantifier check all appear in named local units. The assembly cites theorem-style labels rather than using local unit IDs as mathematical authority.

## Target Claim Audit

The submitted proof establishes exactly \(v=\operatorname{VC}(\mathcal H)<2T\) on the remaining branch. It uses the exact source learner and expected \(0\)-\(1\) risk, conditions on all learner-visible information, preserves the fixed kink and tie conventions, and introduces no trajectory, stability, margin, or boundedness hypothesis. The random labeling is only a finite averaging device; the contradiction is ultimately against one fixed distribution and one fixed target, so the quantifier order in Assumption~\ref{assump:universal-sgd-success} is preserved.

## Explicit Rate Audit

This step is rate-bearing. Its exposed quantities are \(T\in\mathbb Z_{\ge1}\), \(0\le\varepsilon<1/4\), and \(v=\operatorname{VC}(\mathcal H)\); all numerical factors are explicit and no hidden constant is introduced. The architecture, \(\eta\), and \(T\) are fixed before the witness pair is chosen. The premise is in expectation over the exact initialization and \(T\) iid samples, the auxiliary label and test-point randomness are eliminated, and the output is deterministic. The horizon is fixed and finite, and the metric is exact tie-resolved classification risk followed by VC dimension. The displayed inequalities
\[
\Pr(E)=\left(1-\frac1{2T}\right)^T\ge\frac12,
\qquad
\frac12\Pr(E)\ge\frac14>\varepsilon
\]
account for every probability and threshold conversion. The \(T=1\) baseline is exact, and no dependence on \(n,S,\eta,d\), or a confidence parameter enters the exported VC certificate.

## Notation Surface Audit

The proof correctly classifies only \(v=\operatorname{VC}(\mathcal H)\) as `public-facing`. The five named results are `appendix-local`; \(Z,\mathcal D_Z,h_b,R_b,b_\star,B,\Theta^{(t)},X_{0:T-1},X,\widehat g_B,\mathscr F_t,\mathscr F,I,E\) are `proof-local`, explicitly defined from setting objects or the temporary shattering hypothesis. These helpers expose rather than hide the information and conditioning argument. No proof-local event, sigma-field, representative choice, or randomized target leaks into the downstream interface.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-001-architecture} supplies the remaining branch. Lemma~\ref{lem:step-002-label-access} gives sampled-label measurability; Lemma~\ref{lem:step-002-unseen-label} gives conditional error \(1/2\) on the unseen event; Lemma~\ref{lem:step-002-avoidance} gives event probability at least \(1/2\); Proposition~\ref{prop:step-002-average-risk} gives finite average risk at least \(1/4\); and Proposition~\ref{prop:step-002-vc} selects a fixed target and applies universal success. These accepted dependency and local claims jointly imply the exact target with no missing bridge.

## Review Rationale

The submitted step is self-contained under the accepted sketch and current dependency. Its delicate points are all discharged locally: the exact recursion accesses only sampled labels, the random-index test bit stays fair on the measurable unseen event, repeated samples and score ties do not create information, the finite-horizon probability is valid at \(T=1\), and random-target averaging is converted to one fixed target before the universal premise is invoked. No proof, dependency, or sketch interface needs repair, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest correct disposition.
