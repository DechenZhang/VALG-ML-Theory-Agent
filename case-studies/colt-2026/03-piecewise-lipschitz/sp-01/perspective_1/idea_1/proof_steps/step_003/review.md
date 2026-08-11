# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_003
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_003/proof.md (SHA-256: 2302d712770cbe9f62efad7528b6823b2b2e020ea61231f974293769e16e78af)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-conditional-uniform-kernel} states the complete local conditional interface assigned by the accepted sketch: an arbitrary Borel conditioning law, including the one-point empty-tuple law for \(d=1\); measurable \(G,\rho\); independent \(U\sim\operatorname{Unif}[-1,1]\); and a measurable full-measure set \(H\) on which \(\rho>0\). It concludes the exact conditional density and exact essential supremum on \(H\), with the support conclusion stated only under the additional displayed support condition. No theorem-facing assumption is added.
- Proof validity: The fallback \(g_R(a)=\mathbf 1\{|a|\leq R\}/(2R)\) is a genuine density because \(R>0\). The piecewise definition avoids every quotient on \(H^c\), is jointly measurable, and integrates to one on every fiber. Independence gives the actual product-law integral; on \(H\), the positive-width substitution \(a=G(b)+\rho(b)u\) yields the displayed uniform density, while replacing the kernel on the null complement does not change the joint-law identity. The kernel criterion therefore gives a regular conditional law of the actual intercept. On each positive-width fiber the density equals \(1/(2\rho(b))\) on an interval of positive Lebesgue length, so the essential supremum is exactly that value. The optional support conclusion follows from \([G-\rho,G+\rho]\subseteq[-R,R]\) on \(H\) and the supported fallback on \(H^c\).
- Cited-result and assumption audit: No external paper result is used. The product-law identity, positive affine substitution, and regular-conditional-kernel criterion are restated with the current objects and their hypotheses are discharged by the local statement. The parameterized integral defining the kernel is measurable by the same nonnegative joint-measurability/Tonelli argument. The set \(H\) is an explicit local conditional hypothesis only; it is not exported to the unconditional class theorem.
- Rigor checklist: The proof distinguishes the \(\pi\)-null set of invalid fibers from Lebesgue-null subsets inside a valid fiber, makes no division by zero, and uses equality of kernels only up to the correct conditioning-law null sets. Inclusive interval endpoints do not affect either normalization or the essential supremum. No density, coordinate independence, or absolute continuity of \(\pi\) is used.
- Local adversarial test: Atomic, singular, and dependently coordinated conditioning laws leave the product-kernel calculation unchanged. A zero or negative width on \(H^c\) is harmless because the fallback is used there; a zero width on positive \(\pi\)-mass would invalidate the conclusion, and the lemma does not conceal that regime. For \(d=1\), all kernel identities reduce literally to the unique empty-tuple fiber.
- Contribution to target step: This lemma supplies the exact measurable conditional-uniform kernel and cap needed to derive the random-intercept envelope without a pointwise lower width.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-003-random-intercept-envelope} uses exactly Assumption~\ref{assump:random-intercept-witness} and the prior named conditional-kernel lemma. It proves cube support, a jointly measurable density version, the almost-everywhere formula \(K_\mu=1/(2\rho_\mu)\), the exact per-law reciprocal-width integral, and the required class envelope. These are precisely the derived hypotheses that must precede use of the accepted R1 dependency.
- Proof validity: The good-fiber set \(H_\mu=\{\rho_\mu>0,\ |G_\mu|+\rho_\mu\leq R\}\) is measurable and has full \(\pi_\mu\)-measure by the primitive assumption. Applying the prior lemma gives the claimed density, measurable cap, and zero extension. Since \(\beta\) already lies in the higher-coordinate cube and \(|\alpha_0|\leq |G_\mu|+\rho_\mu|U_\mu|\leq R\) almost surely, the actual coefficient law is cube-supported. Null-fiber fallback values vanish from the cap integral, giving \(\int K_\mu d\pi_\mu=(1/2)\int\rho_\mu^{-1}d\pi_\mu\). Taking the class supremum only after this equality yields \(\bar\kappa_{\mathcal D_{\mathrm{RI}}}=M_{\mathrm{RI}}/2\), and hence the target inequality.
- Cited-result and assumption audit: Assumption~\ref{assump:random-intercept-witness} supplies only the primitive affine representation, independence, almost-sure positivity, support inequality, and class reciprocal-width budget. Conditional density, cap measurability, cube support, and the averaged envelope are derived here. Assumption~\ref{assump:averaged-intercept-density} is not assumed. The equality of the two class suprema follows directly from the per-law identity and the setting definitions; no external result is invoked.
- Rigor checklist: Almost-sure conditions are intersected before use, and arbitrary values of \(\rho_\mu^{-1}\) or the density on the null complement do not affect integration. The proof preserves the exact factor \(1/2\), integrates the reciprocal width for each law before the class supremum, and never replaces it by an essential supremum over \(\beta\). The support argument concerns the actual law, not merely the chosen conditional version.
- Local adversarial test: Widths may approach zero and make \(K_\mu\) unbounded across fibers; the proof charges those fibers through the finite reciprocal integral. A positive-mass zero-width set would break the density interface and is explicitly excluded by the primitive assumption. Singular, discrete, or dependent \(\pi_\mu\) causes no change. For \(d=1\), the outer integral is evaluation at the one empty-tuple fiber, and cube support and the cap identity remain exact.
- Contribution to target step: The proposition proves every component of the averaged-intercept-density interface for the random-intercept class, including support and the exact envelope, before any root-hitting theorem is invoked.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-003-random-intercept-root-hitting} states Assumption~\ref{assump:random-intercept-witness}, the prior envelope proposition, and accepted Proposition~\ref{prop:step-002-averaged-root-hitting}. It concludes the exact per-law all-interval inequality and the class conclusion with factor \(M_{\mathrm{RI}}/2\), matching the accepted sketch row and R2.
- Proof validity: The prior proposition first proves cube support and the complete density-envelope hypothesis for \(\mathcal D_{\mathrm{RI}}\). Only then is the accepted dependency instantiated. Substitution of \(\int K_\mu d\pi_\mu=(1/2)\int\rho_\mu^{-1}d\pi_\mu\), followed by the definitions of \(\bar\kappa_{\mathcal D_{\mathrm{RI}}}\) and \(M_{\mathrm{RI}}\), gives every inequality in (18) and (19) with the correct orientation and exact coefficient. The inherited dependency already supplies simultaneous validity for every positive-length interval.
- Cited-result and assumption audit: The sole proof dependency is current accepted Proposition~\ref{prop:step-002-averaged-root-hitting}. Its proof has status `COMPLETE`, current SHA-256 `f3f9aa19a82936c133877ad71896f58fd0cf71dd19af8fc60c1ce5437db84228`, and a matching `ACCEPTED` review with smallest retry target `None`. The proposition consumes only that dependency's cube-supported averaged-density interface and exact R1 conclusion. No statement from `global_proof.md` is used as evidence.
- Rigor checklist: The fixed-law reciprocal-width integral precedes both class suprema. Probability mode remains an exact unconditional probability inequality; there is no exceptional event, confidence conversion, or quantifier exchange. No interval-dependent null set is introduced, and finiteness follows from the primitive class budget and the accepted finite derivative envelope.
- Local adversarial test: Arbitrarily short positive-length intervals are covered by the inherited linear bound. Unbounded fiber caps remain legal because only their per-law mean is used. The one-point \(d=1\) marginal gives the same substitution, with no positive-dimensional conditioning assumption. If the derived density interface had not been established before invocation, the step would be circular; the explicit unit_002-to-unit_003 order prevents that failure.
- Contribution to target step: This proposition transfers the newly derived coefficient-side certificate through the accepted general theorem to the exact random-intercept root-hitting result.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-003-fixed-width-certificate} states the primitive random-intercept assumption, both prior named propositions, the per-law condition \(\rho_\mu=r_\mu>0\) almost surely, and the class condition \(\sup_{\mu\in\mathcal F}r_\mu^{-1}<\infty\). It concludes the exact cap, per-law root bound, class envelope, and class root bound required by the fixed-width clause.
- Proof validity: On the intersection of the full-measure fixed-width and primitive-validity sets, the established formula gives \(K_\mu=1/(2r_\mu)\). Integration against the probability marginal proves the exact per-law envelope, and substitution into the named root-hitting proposition gives (23). For a nonempty class of such members, taking the supremum only after the per-law equality gives \(\bar\kappa_{\mathcal F}=(1/2)\sup_\mu r_\mu^{-1}\); the explicit finiteness condition then discharges the accepted R1 hypothesis and yields (25).
- Cited-result and assumption audit: No new theorem or assumption is introduced. The support condition and random-intercept construction remain those of Assumption~\ref{assump:random-intercept-witness}; the fixed-width identity is a local specialization, and class-uniform reciprocal-width finiteness is exactly the setting's required class integrability condition specialized to constants.
- Rigor checklist: The argument keeps the per-law and class scopes distinct, preserves the exact factor \(1/2\), and does not infer class finiteness merely from each individual \(r_\mu>0\). The explicit supremum condition is necessary for the claimed uniform class bound. No hidden lower-width constant is introduced.
- Local adversarial test: A sequence of members with \(r_\mu\downarrow0\) would make the class bound infinite and is correctly excluded by (24), while every single positive-width member retains its per-law bound. Singular or dependent higher-coefficient marginals remain irrelevant. When \(d=1\), \(r_\mu\) is the width on the unique empty-tuple fiber and all formulas are unchanged.
- Contribution to target step: The proposition completes the fixed-width specialization with its exact per-law formula and the correct class-uniform condition.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial claim is missing from the local lemma map. Construction and measurability of the null-fiber conditional kernel, its identification with the actual conditional law, and the exact essential supremum are contained in unit_001. Full-measure discharge, cube support, cap measurability, per-law integration, and class-envelope closure are contained in unit_002. Dependency instantiation and all-law/all-interval closure are contained in unit_003. The fixed-width per-law and class specializations are contained in unit_004. The product-law identity, affine substitution, kernel criterion, and nonnegative parameter-integration measurability are stated or instantiated in current notation with discharged hypotheses. No beta-density, pointwise width lower bound, positive-mass fallback, measurable root selector, or diagnostic-only claim is smuggled into the proof.

## Target Claim Audit

The proof establishes the exact accepted `step_003` row. Under the primitive Assumption~\ref{assump:random-intercept-witness}, it first derives, rather than assumes, a jointly measurable conditional density supported in \([-R,R]\), with
\[
f_\mu(a_0\mid\beta)
=\frac{\mathbf1\{|a_0-G_\mu(\beta)|\leq\rho_\mu(\beta)\}}
       {2\rho_\mu(\beta)},
\qquad
K_\mu(\beta)=\frac{1}{2\rho_\mu(\beta)}
\]
for \(\pi_\mu\)-almost every fiber. It proves cube support and the exact fixed-law integral before taking the class supremum, obtains \(\bar\kappa_{\mathcal D_{\mathrm{RI}}}=M_{\mathrm{RI}}/2\) and therefore the required inequality, legally invokes accepted R1, and derives the all-law, all-positive-length-interval bound and fixed-width clause. The exact equality for the class envelope is a direct consequence of the setting definitions and strengthens only an intermediate identity; it includes and does not alter the binding target conclusion. All conclusions retain arbitrary singular or dependent \(\pi_\mu\), the null-fiber almost-everywhere scope, and the \(d=1\) convention.

## Dependency And Assumption Provenance Audit

- Primitive conditions: the basic random-intercept construction and Assumption~\ref{assump:random-intercept-witness} supply measurable \(G_\mu,\rho_\mu\), independent uniform noise, almost-sure positive width, the support inequality, and the finite reciprocal-width class budget.
- Local conditional hypothesis: unit_001 assumes positivity on a named measurable full-measure set \(H\) only to prove a reusable kernel statement. Unit_002 constructs \(H_\mu\) and discharges this condition from the primitive assumption before any unconditional conclusion uses the lemma.
- Locally derived outputs: the regular conditional density, measurable essential-supremum version, cube support, fixed-law cap integral, and finite class envelope are proved by units 001 and 002. None is moved into the theorem assumptions.
- Accepted dependency: `step_002` is consumed only through Proposition~\ref{prop:step-002-averaged-root-hitting}; its current proof is `COMPLETE`, its proof hash matches the hash certified by its current `ACCEPTED` review, and that review has smallest retry target `None`.
- Noncircular flow: primitive random-intercept data -> Lemma~\ref{lem:step-003-conditional-uniform-kernel} -> Proposition~\ref{prop:step-003-random-intercept-envelope} -> accepted R1 instantiation -> fixed-width specialization. Assumption~\ref{assump:averaged-intercept-density} is a derived interface here, not a primitive premise.

## Explicit Rate Audit

- Exposed variables: \(L_{d,R,\Theta}\), \(|I|\), \(\rho_\mu(\beta)\), \(\int\rho_\mu^{-1}d\pi_\mu\), \(M_{\mathrm{RI}}\), \(r_\mu\), \(\bar\kappa_{\mathcal D_{\mathrm{RI}}}\), and \(C_{\mathcal D_{\mathrm{RI}}}\).
- Hidden constants: None. The density normalization, cap, per-law coefficient, and class coefficient retain the exact factor \(1/2\); no dependence on \(\mu,\beta,I,d,R,\Theta\), marginal structure, or an unreported width is suppressed.
- Fixed quantities and quantifier order: \(d,R,\Theta\) and the declared class are fixed before laws and intervals vary. For each law, \(\rho_\mu^{-1}\) is integrated against the actual marginal before either class supremum is taken.
- Probability mode: exact regular-conditional identities almost everywhere in \(\beta\), followed by deterministic inequalities between exact unconditional probabilities. There is no confidence parameter, good event, or probability conversion.
- Horizon and norm modes: the result is static and uniform over every class member and positive-length interval. It uses scalar Lebesgue essential supremum in the intercept coordinate, ordinary absolute value for support, interval length, and the normalized root-hitting functional.
- Admissibility, tolerances, and absorption: the only conditions are the basic construction, Assumption~\ref{assump:random-intercept-witness}, and the explicit fixed-width class condition. No auxiliary tolerance, truncation, term absorption, or dropped remainder occurs.
- Baseline reduction: accepted R1 is preserved exactly after the identity \(\int K_\mu d\pi_\mu=(1/2)\int\rho_\mu^{-1}d\pi_\mu\). The result is not weakened to a conditional or pointwise-cap surrogate, and the \(d=1\) specialization is exact.

## Notation Surface Audit

Setting-defined \(G_\mu,\rho_\mu,U_\mu,\pi_\mu,M_{\mathrm{RI}},K_\mu,\bar\kappa,L\), and \(C\) retain their meanings. The generic \(H,g_R,Q,Y,f,K,A,B,h,\Psi,g,r\), the law-specific \(H_\mu\), and the temporary class \(\mathcal F\) are explicitly scoped and classified as proof-local; they expose no new theorem-facing assumption or free constant. The fallback \(g_R\) is defined directly from the primitive \(R>0\). The only exported interfaces are the named conditional-kernel lemma and three named propositions required downstream. No unnecessary helper dictionary, notation cascade, or unclassified public symbol is present.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-003-conditional-uniform-kernel} proves the measurable exact conditional kernel and cap. Proposition~\ref{prop:step-003-random-intercept-envelope} discharges the lemma's local conditions from the primitive assumption, proves cube support, and derives the complete averaged-density interface. Accepted Proposition~\ref{prop:step-002-averaged-root-hitting} may therefore be invoked by Proposition~\ref{prop:step-003-random-intercept-root-hitting}, which supplies the exact random-intercept probability and class bounds. Proposition~\ref{prop:step-003-fixed-width-certificate} then specializes established formulas under the explicit class condition. These named results jointly imply every clause of the target without an unstated bridge, a stronger theorem-facing assumption, or reliance on subsection names or local unit IDs as mathematical authority.

## Review Rationale

ACCEPTED is warranted because the current proof matches sketch attempt 1, `step_003`, unit attempt 1, and the required SHA-256; its only dependency is current and accepted; and all four local units prove their exact assigned interfaces under allowed inputs. The null-fiber fallback is measurable and nonvacuous, the conditional density and essential supremum are exact, cube support is derived, arbitrary singular or dependent conditioning marginals remain covered, reciprocal widths are integrated before the class supremum, the factor \(1/2\) is preserved, the fixed-width class condition is explicit, and \(d=1\) is handled throughout. No local, dependency, or sketch defect remains, so `None` is the aligned smallest retry target.
