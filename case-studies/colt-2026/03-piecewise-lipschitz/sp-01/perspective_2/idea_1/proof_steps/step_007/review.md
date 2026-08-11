# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_007
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_007/proof.md at SHA-256 ca9e7d554fd1ad3a0c4c465d2528c86940040594d37a9cbe032ff1aa7e8eb868

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: The proposition exactly covers the accepted sketch row's \(d=1\) branch: both conditioning tuples are empty, both conditional laws are the sole-coefficient marginal, and both caps equal \(1/(2R)\). Its statement explicitly invokes Assumption~\ref{assump:indexed-regime}, the setting-defined witness, and the local condition \(d=1\).
- Proof validity: The uniform law is written as \(\nu_R(A)=\lambda_1(A\cap[-R,R])/(2R)\) with density \(u_R=(2R)^{-1}{\bf1}_{[-R,R]}\). Since \(R\geq1\), this is a probability density with essential supremum exactly \(1/(2R)\). Conditioning on the one-point space \(\mathbb R^0\) gives the marginal law, so both setting-defined caps are the same deterministic value almost surely.
- Cited-result and assumption audit: No dependency or external paper result is used. The only version issue is the restated standard uniqueness of Lebesgue densities and Euclidean regular conditional laws, whose Euclidean-space hypotheses hold here. The proof does not assume Assumption~\ref{assump:mean-endpoint-conditional-caps}; it derives the required density and cap.
- Rigor checklist: Normalization, positivity of \(R\), almost-sure mode, and equality of the two degree-one caps are explicit. No interchange, limiting argument, hidden constant, or unstated uniformity claim occurs.
- Local adversarial test: At \(R=1\), the density height is exactly \(1/2\); endpoint changes on a Lebesgue-null set cannot alter the essential supremum. Empty conditioning creates no version-dependent random coordinate. The claim survives the degree-one boundary exactly.
- Contribution to target step: Supplies both conditional-density existence requirements and both exact cap values for the \(d=1\) membership branch.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: The proposition exactly covers the \(d=2\) branch and conditions each endpoint on the complete complementary coordinate, as required by the class definition and accepted sketch row.
- Proof validity: Independence of the two \(\nu_R\)-distributed endpoints yields constant kernels \(Q^0_y=Q^\infty_x=\nu_R\). The two displayed integral identities verify these kernels directly as regular conditional laws in both directions. Their common density is \(u_R\), so both random caps equal \(1/(2R)\) almost surely.
- Cited-result and assumption audit: Endpoint independence and uniformity come from the setting-defined witness, not from an assumed class-membership condition. Almost-sure uniqueness of the kernels and density essential suprema is restated and applied only after a valid constant version has been constructed. There are no dependencies or unverified citations.
- Rigor checklist: Both conditioning directions are checked separately; measurability follows because the kernels are constant. Values at conditioning points outside the marginal support are harmless, and the conclusion is correctly stated only almost surely for arbitrary permissible versions.
- Local adversarial test: Conditioning on either endpoint does not reveal the other because of mutual independence. At \(R=1\) the cap is exactly \(1/2\), and no joint-density assumption beyond the explicit two-dimensional witness construction is used.
- Contribution to target step: Supplies both full-complement conditional densities and exact caps for the \(d=2\) membership branch.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: The proposition exactly covers every \(d\geq3\), conditioning \(\alpha_0\) on \(\alpha_{1:d-1}\) and \(\alpha_{d-1}\) on \(\alpha_{0:d-2}\), and asserts the exact cap required by the sketch.
- Proof validity: The first complement is a measurable function of \((S,U_\infty)\) and is independent of \(U_0\); the second is a measurable function of \((U_0,S)\) and is independent of \(U_\infty\). The displayed factorization identities therefore verify constant \(\nu_R\) kernels on both full complement spaces. Each kernel has density \(u_R\) and cap \(1/(2R)\), and almost-sure kernel uniqueness transfers this cap to every permissible version at the realized complement.
- Cited-result and assumption audit: Mutual independence of \(U_0,U_\infty,S\) and the coordinate formulas are part of the setting-defined witness. The restated measurable-image preservation of independence is applied with its objects explicitly identified. No dependency result, global diagnostic, ambient joint density, or general-class cap assumption is used.
- Rigor checklist: The argument handles the complete conditioning tuple, not a reduced sigma-field. It distinguishes the two pivots and proves both conditional identities. The almost-sure and exact-equality modes are preserved, with no dimension-dependent normalizing factor.
- Local adversarial test: For \(d=3\), the complement reveals the single middle sign and the other endpoint but not the pivot. For all larger \(d\), repeated middle coordinates reveal no information beyond \(S\). Ambient singularity of the middle block does not affect either one-dimensional endpoint kernel, and off-support kernel values do not affect the almost-sure cap.
- Contribution to target step: Supplies both endpoint conditional-density and exact-cap requirements for all \(d\geq3\), including the singular witness regimes.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: The proposition proves cube support for every degree and ambient singularity for exactly the required regime \(d\geq3\), without adding singularity claims for \(d=1,2\).
- Proof validity: Each coordinate is directly shown to lie in \([-R,R]\). For \(d\geq3\), all mass lies on the Borel set
  \[
  A_{d,R}=[-R,R]\times\{(R,\ldots,R),(-R,\ldots,-R)\}\times[-R,R].
  \]
  Its finite middle factor has \((d-2)\)-dimensional Lebesgue measure zero, so the finite union of the two corresponding product rectangles is \(\lambda_d\)-null. Full mass on this null Borel set proves singularity.
- Cited-result and assumption audit: The coordinate construction is taken directly from setting.md; Assumption~\ref{assump:compact-cube-support} is not used to assume the desired conclusion. The null-product fact is restated in current dimensions and its finiteness and bounded-factor hypotheses are discharged.
- Rigor checklist: The proof treats \(d=1\), \(d=2\), and \(d\geq3\) separately for support. It explicitly covers \(d=3\), where the middle factor is the two-point set \(\{-R,R\}\). Borel measurability and full-mass/null-measure requirements for singularity are both checked.
- Local adversarial test: At \(d=3\), the support is a union of two two-dimensional rectangles inside \(\mathbb R^3\), hence null. At \(R=1\), the two middle values remain distinct and the same product-null argument applies. Endpoint continuity does not increase the ambient dimension enough to create positive \(\lambda_d\)-measure.
- Contribution to target step: Verifies the support membership condition in every degree and the accepted claim's explicit singularity certificate for \(d\geq3\).
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: The proposition proves precisely the required dependent-middle-coordinate property for \(d\geq4\), the first regime with at least two middle coordinates.
- Proof validity: The construction gives \(\alpha_1=\alpha_2=RS\) almost surely. Since \(R\geq1\), \(R\neq-R\), and the Rademacher probabilities yield
  \[
  \mathbb P(\alpha_1=R,\alpha_2=R)=\frac12
  \neq\frac14
  =\mathbb P(\alpha_1=R)\mathbb P(\alpha_2=R).
  \]
  Thus the pair, and hence the middle-coordinate family, is not independent.
- Cited-result and assumption audit: Only the setting-defined Rademacher construction and Assumption~\ref{assump:indexed-regime} are used. No dependency, citation, or inferred class property supplies the dependence conclusion.
- Rigor checklist: The indices \(\alpha_1,\alpha_2\) exist exactly when \(d\geq4\); the distinct-support-point requirement is discharged by \(R\geq1\). The proof uses an explicit event calculation rather than relying on equality of variables alone.
- Local adversarial test: The boundary \(d=4\) has exactly two middle coordinates and passes the same joint-probability test. At \(R=1\), the support values remain \(1\) and \(-1\), so the strict inequality remains valid.
- Contribution to target step: Establishes the target's explicit middle-coordinate dependence certificate for all \(d\geq4\).
- Verdict: PASS
- Repair direction: None.

### unit_006: claim

- Statement fidelity: The claim isolates the separate theorem-clause threshold and assumes only Assumption~\ref{assump:indexed-regime} plus the exact-cap conclusion of the applicable named degree proposition. Its conclusion is exactly the pair of mean-cap inequalities needed for membership.
- Proof validity: Each cap is the deterministic almost-sure value \(1/(2R)\), so each expectation equals \(1/(2R)\). The displayed chain
  \[
  \frac1{2R}\leq\frac12\leq
  \min\{\bar\kappa_0,\bar\kappa_\infty\}
  \]
  follows from \(R\geq1\) and the separate threshold and implies both required inequalities.
- Cited-result and assumption audit: The three possible cap inputs are cited by theorem-style proposition labels and were proved locally. The lower bounds on \(\bar\kappa_0,\bar\kappa_\infty\) are explicitly classified as a separate theorem-clause hypothesis, not folded into Assumption~\ref{assump:indexed-regime} or imported into the root-hitting chain.
- Rigor checklist: Expectation mode, exact constant, admissibility \(R\geq1\), and both cap coordinates are explicit. No integrability issue remains because the caps are finite deterministic values, and no term is hidden or absorbed.
- Local adversarial test: Equality holds at \(R=1\) and \(\bar\kappa_0=\bar\kappa_\infty=1/2\). If either cap parameter were below \(1/2\), this particular uniform witness need not satisfy the displayed sufficient threshold, and the proof correctly makes no membership claim under that weakened clause.
- Contribution to target step: Converts the exact degree-specific caps into both class-membership mean bounds while keeping the threshold confined to the witness nonemptiness clause.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. The proof explicitly maps and proves the six nontrivial local obligations: the three degree-specific conditional-kernel calculations, support and singularity, middle-coordinate dependence, and threshold comparison. The standard facts about regular-conditional-law uniqueness, measurable images of independent variables, and null product supports are restated in current notation with their hypotheses discharged before use. The assembly's observation that an explicitly constructed Euclidean random vector induces a Borel probability law is an atomic standard fact, not an unproved theorem-critical bridge.

The proof has no accepted dependency artifacts and uses none. Its final global-diagnostic note records provenance only: no proposition, calculation, or assembly implication cites global_proof.md or global_proof_review.md as mathematical evidence. All step-relevant claims are independently established by the named local results.

## Target Claim Audit

The proof establishes the exact accepted step_007 claim. For every integer \(d\geq1\) and \(R\geq1\), with fixed finite \(\eta\), it treats the exhaustive regimes \(d=1\), \(d=2\), and \(d\geq3\); proves both required full-complement conditional densities and the almost-sure identities \(K_0=K_\infty=1/(2R)\); proves cube support; proves ambient singularity for \(d\geq3\); and proves middle-coordinate dependence for \(d\geq4\). Under only the separately stated \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\) clause, it obtains both mean-cap inequalities and hence exact membership in \(\mathcal D_{d,R,\eta}\).

There is no quantifier drift, stronger class-membership premise, weakened cap conclusion, or unsupported scope upgrade. In particular, Assumption~\ref{assump:mean-endpoint-conditional-caps} and Assumption~\ref{assump:compact-cube-support} are verified for the witness rather than used as premises. The threshold is consumed only by Claim~\ref{claim:step-007-threshold} and the witness-membership assembly; it has no logical path to the general root-hitting bound or steps step_001 through step_006.

## Explicit Rate Audit

The step exposes \(d,R,\bar\kappa_0,\bar\kappa_\infty\) and the exact cap \(1/(2R)\), declares that there are no hidden constants, and fixes \(\eta\) independently of \(d,R\). The probability mode is exact almost-sure cap computation followed by exact expectation; the horizon mode is static; and the norm is conditional \(L^\infty(\mathbb R)\) relative to one-dimensional Lebesgue measure. The admissibility conditions are exactly \(d\geq1\), \(R\geq1\), and the separate threshold for this clause, with no auxiliary tolerance or probability conversion.

The only specialization is the displayed pointwise inequality \(1/(2R)\leq1/2\leq\min\{\bar\kappa_0,\bar\kappa_\infty\}\). No term is dropped and no dependence is hidden: the endpoint kernel density has height \(1/(2R)\) in every dimension, while the dimension and middle-block realization introduce no normalizing factor. At fixed \(\eta\), the certificate is uniform over all indexed \(d,R\). No baseline-reduction obligation applies to this new static nonemptiness certificate, and the \(d=1\) boundary is proved exactly.

## Notation Surface Audit

The helper objects \(\lambda_k\), \(\nu_R\), \(u_R\), \(Q^0\), \(Q^\infty\), and \(A_{d,R}\) are explicitly defined from setting quantities or proved local constructions and are classified as proof-local. They are lightweight and used to expose, rather than hide, the normalization, kernel identities, and null-support argument. The only public-facing export is the setting-defined membership certificate together with the accepted exact cap, support, singularity, and dependence properties. No proof-local kernel or support-set dictionary is exported downstream, and all constants have explicit provenance.

## Target-Step Assembly Audit

The assembly uses paper-ready named references throughout. Proposition~\ref{prop:step-007-degree-one-kernels}, Proposition~\ref{prop:step-007-degree-two-kernels}, and Proposition~\ref{prop:step-007-high-degree-kernels} supply the conditional-density and exact-cap clauses in the three exhaustive degree regimes. Proposition~\ref{prop:step-007-support-singularity} supplies support in every regime and singularity for \(d\geq3\). Proposition~\ref{prop:step-007-middle-dependence} supplies dependence when \(d\geq4\). Claim~\ref{claim:step-007-threshold} supplies both mean-cap inequalities.

These results jointly verify every item in the exact definition of \(\mathcal D_{d,R,\eta}\) and every additional property in the sketch row. No bare local unit ID, subsection title, dependency claim, or diagnostic artifact is used as mathematical authority. The threshold comparison is downstream only of the exact cap results and downstream only into witness membership, so the assembly does not contaminate the independent general-bound chain.

## Review Rationale

The submitted proof is faithful to the accepted sketch attempt and proves the exact step_007 interface under only the allowed primitive data and separate theorem-clause threshold. Each local unit has a self-contained theorem-style statement, stable label, valid derivation, discharged standard-fact assumptions, and a necessary target contribution. Boundary checks at \(d=1\), \(d=2\), \(d=3\), \(d=4\), and \(R=1\) pass; the cap identities, support, singularity, dependence, explicit dependence, and threshold isolation are all exact. There are no dependencies, hidden assumptions, global-diagnostic proof inputs, missing local units, or assembly gaps. Therefore ACCEPTED with Smallest Retry Target = None is the only contract-aligned disposition.
