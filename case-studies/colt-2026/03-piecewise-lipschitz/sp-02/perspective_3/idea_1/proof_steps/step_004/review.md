# Proof Step Review

## Step Review Identity

- Sketch attempt: 3
- Step ID: step_004
- Unit attempt: 1
- Reviewed proof artifact: perspective_3/idea_1/proof_steps/step_004/proof.md (SHA-256 ef99e98a57f58c58b2354c87d7a179ca79f108854ee0b0049c4ed194a4d12b57)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Proposition~\ref{prop:step-004-a3-exact-density-transfer}

- Statement fidelity: PASS. The statement uses Assumption~\ref{assump:joint-density-cap} and exactly the accepted measurability and coefficient-volume outputs of step_003. It quantifies every admissible law and every positive-length interval, keeps the root event in the original coefficient coordinates, and states the complete ordinary-probability chain with the literal \(A/(2R)\) constant. It does not import strict finiteness, a supremum, or a new geometric claim into this unit.
- Proof validity: PASS. The proof first obtains \(f_\mu=0\) almost everywhere off \(C=[-R,R]^N\) and \(0\le f_\mu\le\kappa\) almost everywhere. Since accepted Lemma~\ref{lem:step-003-a3-analytic-chart-events} makes \(S_I\) Lebesgue measurable and \(\mu\ll\lambda_N\), \(S_I\) is measurable for the completed law and \(\Pr_\mu(S_I)=\int_{S_I}f_\mu\,d\lambda_N\le\kappa\lambda_N(S_I)\). Substitution of accepted Proposition~\ref{prop:step-003-a3-volume-certificate} gives the second inequality, and \(\kappa(2R)^{N-1}=A/(2R)\) follows exactly from \(A=(2R)^N\kappa\) and \(R>0\). For the unrestricted event \(E_I=\{\alpha\in\mathbb R^N:\exists\theta\in I,\phi_\alpha(\theta)=0\}\), one has \(S_I=E_I\cap C\), so \(E_I\setminus S_I\subseteq C^c\). Because \(C^c\) is a Borel \(\mu\)-null set, this difference is completion-measurable and null; hence \(E_I\) is completion-measurable and \(\Pr_\mu(E_I)=\Pr_\mu(S_I)\).
- Cited-result and assumption audit: PASS. The step_003 proof/review pair is correctly identified as sketch attempt 3, step_003, unit attempt 1, reviewed-proof SHA-256 9dc61d50827f3e217dec04dca87907d1053ab0b3170253952b65d40efe5071dd, and ACCEPTED. Its restatement is exact: step_003 supplies only event measurability and \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}|I|\). The full joint-density cap is the only primitive condition used here. The completion and density-integration facts are restated with all hypotheses discharged.
- Rigor checklist: PASS. Probability is ordinary completed-law probability, not outer, conditional, marginal, high-probability, or confidence-parametrized probability. The calculation never factors the density or integrates out a coordinate, so arbitrary correlation is retained. The support-null completion argument is sufficient even if the unrestricted off-cube root subset is not Borel. The proof covers \(N=1\), empty \(S_I\), empty \(K_R\), and \(\Gamma_{\rm piv}=0\), and it correctly permits an upper bound larger than one without clipping or imposing a small-interval condition.
- Local adversarial test: PASS. Concentrating an arbitrarily correlated density near \(S_I\) cannot exceed the full joint cap. Singular laws are outside the declared class and are not silently admitted. Tangent, multiple, and infinite root fibers remain within the unchanged event already certified by step_003. The law-null cube complement creates no residual probability term.
- Contribution to target step: PASS. This proposition proves the exact universal pairwise theorem and is the sole step_004 output that may be consumed by step_006.
- Verdict: PASS
- Repair direction: None

### unit_002: Lemma~\ref{lem:step-004-a3-law-index}

- Statement fidelity: PASS. Under only the basic definition of \(\mathcal D_{N,R,\kappa}\), the lemma states the exact equivalence \(\mathcal D_{N,R,\kappa}\ne\varnothing\) if and only if \(A\ge1\), includes the sharp \(A=1\) boundary, and does not promote class nonemptiness to a theorem assumption.
- Proof validity: PASS. Necessity starts from an actually chosen admissible law and uses only nonnegativity, unit integral, almost-everywhere cube support, the density cap, and \(\lambda_N([-R,R]^N)=(2R)^N\) to obtain \(1\le\kappa(2R)^N=A\). Sufficiency starts only from \(A\ge1\), constructs \(f_{\rm unif}=(2R)^{-N}\mathbf 1_{[-R,R]^N}\), verifies unit mass and support, and uses \((2R)^{-N}\le\kappa\) exactly when \(A\ge1\). Equality at \(A=1\) is admissible.
- Cited-result and assumption audit: PASS. No dependency result, probability nonemptiness premise, independence premise, or external theorem is used. The cube-volume fact is explicitly restated, and every condition invoked is part of the law-class definition or the primitive parameter ranges \(N\ge1\), \(R>0\), and \(\kappa>0\).
- Rigor checklist: PASS. All density statements are almost-everywhere statements where required. The necessity argument does not presuppose the conclusion, and the sufficiency argument supplies a concrete law rather than an unproved existence assertion. The proof remains valid for every \(N\ge1\) and every finite positive \(R,\kappa\).
- Local adversarial test: PASS. For \(A<1\), no correlated or nonuniform density can evade the integral ceiling. For \(A=1\), the uniform law saturates rather than violates the cap. No marginal or conditional density is substituted for the full law definition.
- Contribution to target step: PASS. This lemma classifies exactly when the outer law index is nonempty.
- Verdict: PASS
- Repair direction: None

### unit_003: Lemma~\ref{lem:step-004-a3-interval-index}

- Statement fidelity: PASS. The lemma uses only the setting convention that \(\Theta\) is a compact interval and proves that its positive-length interval index class is nonempty exactly when \(|\Theta|>0\), including degenerate compact intervals.
- Proof validity: PASS. If a positive-length interval \(I\subseteq\Theta\) exists, monotonicity of Lebesgue measure gives \(0<|I|\le|\Theta|\). Conversely, if \(|\Theta|>0\), the compact interval \(\Theta\) itself is an admissible interval, so \(I=\Theta\) witnesses nonemptiness. If \(|\Theta|=0\), monotonicity excludes every positive-length subinterval.
- Cited-result and assumption audit: PASS. Lebesgue-measure monotonicity and the fact that a compact interval is itself an interval are the only facts used. There is no hidden connectedness, interior, openness, endpoint, or positive-domain-length assumption.
- Rigor checklist: PASS. The argument covers closed compact intervals \([a,b]\) with \(a<b\), the degenerate case \(a=b\), and also the empty-interval convention if it is allowed. Open, closed, or half-open choices for subintervals do not affect either implication. All indexed intervals are Lebesgue measurable.
- Local adversarial test: PASS. A singleton \(\Theta\) has length zero and cannot contain a positive-length interval. A positive-length compact interval itself always supplies a witness, so no unproved interior-selection step is needed.
- Contribution to target step: PASS. This lemma classifies exactly when the inner interval index is nonempty.
- Verdict: PASS
- Repair direction: None

### unit_004: Proposition~\ref{prop:step-004-a3-ordered-suprema}

- Statement fidelity: PASS. The proposition states the exact inner-interval then outer-law order, calls the result a finite nonnegative real only when both index classes are nonempty, and assigns the literal value \(-\infty\) when either class is empty. It cites the all-branch fixed-family finiteness output directly from step_001 and does not proxy it through step_003.
- Proof validity: PASS. In the branch \(A\ge1\) and \(|\Theta|>0\), the two preceding lemmas make both index sets nonempty. Dividing the pairwise inequality by \(|I|>0\), first taking the interval supremum for a fixed law, and then taking the law supremum gives a nonnegative quantity bounded by \(A\Gamma_{\rm piv}/(2R)\). Accepted Lemma~\ref{lem:step-001-supported-root-compactness} and Proposition~\ref{prop:step-001-fixed-family-pivot-bound} give \(0\le\Gamma_{\rm piv}<\infty\) directly in the empty and nonempty \(K_R\) branches, so this upper bound is a finite real. The empty-index cases are also correct separately: an empty outer law class gives an outer empty supremum; a nonempty outer class with an empty inner interval class gives the supremum of the constant value \(-\infty\); and if both classes are empty the outer empty-supremum convention again gives \(-\infty\). In every case \(-\infty\le A\Gamma_{\rm piv}/(2R)\) is a meaningful extended-real inequality, but the left side is not called a finite nonnegative capacity.
- Cited-result and assumption audit: PASS. The step_001 proof/review pair is correctly identified as sketch attempt 3, step_001, unit attempt 1, reviewed-proof SHA-256 6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838, and ACCEPTED. Its conditional nonempty-\(K_R\) proposition is combined with its explicit empty-\(K_R\) lemma, exactly as required for all-branch strict finiteness. The pairwise input is the preceding local proposition, and the two index facts are the preceding local lemmas. No output is strengthened or weakened.
- Rigor checklist: PASS. The supremum order is never reversed, no union bound is used, and division occurs only for positive-length intervals. Since \(A>0\), \(R>0\), and \(\Gamma_{\rm piv}\) is finite and nonnegative, the displayed right-hand side is well-defined. The proof treats \(A=1\), \(|\Theta|=0\), \(\Gamma_{\rm piv}=0\), and all single-empty and double-empty combinations explicitly. Only the both-nonempty middle expression is asserted to be a finite nonnegative real.
- Local adversarial test: PASS. When \(A<1\) but \(|\Theta|>0\), the outer supremum is still \(-\infty\). When \(A\ge1\) but \(|\Theta|=0\), every available inner supremum is \(-\infty\). When both failures occur, the outer class is empty. These cases rule out the common but invalid replacement of an empty supremum by zero. The pairwise universal theorem remains valid, possibly vacuously, in all three cases.
- Contribution to target step: PASS. This proposition supplies the exact branch-qualified ordered-supremum consequence for final assembly only.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found. The density-completion bridge, the equality between the unrestricted event and \(S_I\) modulo the law-null cube complement, the exact constant conversion, the two independent index-class equivalences, and all three nested empty-supremum cases occur inside the four mapped units. The standard completion, cube-volume, measure-monotonicity, and extended-supremum facts are restated before use. The proof contains no unlisted root theorem, area-formula argument, chart-count estimate, independence or marginal-density premise, clipping operation, small-interval threshold, confidence conversion, or polynomial Pfaffian-format estimate. The optional global diagnostic is identified only as excluded diagnostic material and supplies no mathematical inference.

## Target Claim Audit

The proof establishes the exact sketch-attempt-3 step_004 row. For every admissible law and positive-length interval, it proves the ordinary-probability identity and chain
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
=\Pr_\mu(S_I)
\le\kappa\lambda_N(S_I)
\le\kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
=\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|.
\]
The event and coefficients are unchanged from step_003, and arbitrary correlation is retained. Strict \(0\le\Gamma_{\rm piv}<\infty\) comes directly from step_001. The law and interval index classes are nonempty exactly for \(A\ge1\) and \(|\Theta|>0\), respectively. Only when both hold is the ordered supremum a finite nonnegative real; otherwise its literal value is \(-\infty\), while the universal pairwise theorem remains valid, possibly vacuously. The quantifier and supremum order, constants, ordinary-probability mode, fixed-family scope, and material_partial source label are preserved. No polynomial general-instance control of \(\Gamma_{\rm piv}\) in \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) or other Pfaffian-format parameters is claimed or implied.

## Explicit Rate Audit

The step is rate-bearing and passes the Explicit Rate Contract. The exposed quantities are exactly \(N,R,\kappa,A=(2R)^N\kappa,\Gamma_{\rm piv}(b,F;R)\), and \(|I|\); there is no hidden constant. The deterministic family, its Pfaffian presentation, compact \(\Theta\), and \(N,R,\kappa,A\) are fixed, while \(\mu\) and \(I\) range in the stated order. The probability mode is ordinary completed-law probability for each pair, followed only by the assembly-level ordered suprema. The horizon mode is static and interval-uniform, and the norm/measure modes remain the setting's \(\ell_1\) feasibility test, scalar pivot variation, interval length, and \(N\)-dimensional Lebesgue measure in the original coefficient coordinates.

No auxiliary tolerance, confidence parameter, asymptotic limit, horizon upgrade, or term absorption appears. The only simplification is the exact equality \(\kappa(2R)^{N-1}=A/(2R)\), with the \(N=1\) factor equal to one. Conditions \(A\ge1\) and \(|\Theta|>0\) classify supremum semantics and are not assumptions of the pairwise rate. The baseline-reduction interface is exact: only the pairwise theorem is exported to step_006, on the same lower-coefficient vector and event, with arbitrary correlation and no clipped probability, dimension change, conservative remainder, or independent baseline theorem.

## Notation Surface Audit

The public-facing objects are \(N,R,\kappa,A,\Gamma_{\rm piv},|I|\), and the exact dependency-defined event \(S_I\). The pairwise inequality is the minimal downstream public interface; the ordered-supremum branch semantics are reserved for final assembly. The cube alias \(C\), the per-law density \(f_\mu\), the uniform density \(f_{\rm unif}\), and an individual probability ratio are correctly proof-local. There are no appendix-local helpers and no long constant dictionary. Every helper is defined from setting quantities, no symbol changes meaning, and all four local theorem labels and all dependency/assumption references resolve to the current proof, setting, or declared accepted dependencies.

## Target-Step Assembly Audit

Accepted Lemma~\ref{lem:step-003-a3-analytic-chart-events} and Proposition~\ref{prop:step-003-a3-volume-certificate} supply only the exact measurable event and coefficient-volume certificate. Proposition~\ref{prop:step-004-a3-exact-density-transfer} converts that same event to the pairwise probability theorem. Lemmas~\ref{lem:step-004-a3-law-index} and \ref{lem:step-004-a3-interval-index} classify the two index sets. Accepted Lemma~\ref{lem:step-001-supported-root-compactness} and Proposition~\ref{prop:step-001-fixed-family-pivot-bound} supply strict finiteness directly to Proposition~\ref{prop:step-004-a3-ordered-suprema}. These named results jointly imply every target clause without an unreviewed bridge. The pairwise theorem is routed to step_006 and final assembly, while the branch-qualified ordered-supremum semantics are routed only to final assembly.

## Review Rationale

ACCEPTED is the smallest controlled outcome because each of the four declared units is self-contained relative to the setting, current accepted dependencies, and preceding named local results, and the units jointly prove the exact unchanged step_004 interface. The completed-law event argument, sharp law threshold, compact-interval equivalence, direct finiteness provenance, exact supremum order, every empty-index branch, rate and constant provenance, arbitrary-correlation scope, consumer split, baseline recovery interface, and material_partial boundary all pass. No local proof, dependency, or sketch repair is required, so Smallest Retry Target = None.
