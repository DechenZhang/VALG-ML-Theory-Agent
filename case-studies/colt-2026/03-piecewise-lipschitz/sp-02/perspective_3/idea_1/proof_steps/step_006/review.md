# Proof Step Review

## Step Review Identity

- Sketch attempt: 3
- Step ID: step_006
- Unit attempt: 1
- Reviewed proof artifact: perspective_3/idea_1/proof_steps/step_006/proof.md (SHA-256 4edc04230dde38ca7a7ff7c04475b38512ed6aea89bfe7bf6b430ad3f016c2a8)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Proposition on the exact original-space monic presentation

- Statement fidelity: PASS. The proposition fixes exactly \(d\ge1\), \(R>0\), \(\kappa>0\), an auxiliary compact interval, and an arbitrary full joint density on the original \(d\) lower coefficients. It keeps the leading coefficient one in the deterministic offset \(b_d(\theta)=\theta^d\), states the same-object identity \(b_d+\langle\alpha,F_d\rangle=p_\alpha\), discharges the two deterministic setting assumptions, and states the literal tuple \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff},N,A)=(0,0,d-1,d,d,(2R)^d\kappa)\).
- Proof validity: PASS. Reindexing \((F_d)_i=\theta^{i-1}\) gives exactly \(\langle\alpha,F_d\rangle=\sum_{k=0}^{d-1}\alpha_k\theta^k\). The vacuous chain gives \(q=M=0\); the random outputs have maximum degree \(d-1\), while the deterministic offset has degree \(d\). The constant feature \((F_d)_1=1\) proves no forced root. Substitution of \(N=d\) gives \(A=(2R)^d\kappa\).
- Cited-result and assumption audit: PASS. Assumptions~\ref{assump:shared-pfaffian-chain}, \ref{assump:no-forced-root}, and \ref{assump:joint-density-cap} retain their stable setting IDs. The first two are derived directly for this specialization, while the density cap remains the primitive law condition. No dependency conclusion or external theorem is needed for the algebra or descriptor calculation.
- Rigor checklist: PASS. The proof covers \(d=1\), where \(\Delta_{\rm rnd}=0\), \(F_d=(1)\), and \(p_\alpha(\theta)=\theta+\alpha_0\). Almost-everywhere cube support and arbitrary coefficient correlation are preserved. No leading coordinate is randomized, appended, transformed, or assigned a singular law.
- Local adversarial test: PASS. At \(\theta=0\), at either endpoint of an auxiliary compact interval, and for either sign of \(\theta\), the constant feature remains one and the affine object remains exactly the monic polynomial. Changing coefficient correlations cannot affect this deterministic identity or the descriptor tuple.
- Contribution to target step: PASS. This proposition supplies the exact objects, primitive-assumption discharge, probability space, same-object bridge, and descriptor data used by all four later units.
- Verdict: PASS
- Repair direction: None

### unit_002: Lemma on the constant-pivot velocity

- Statement fidelity: PASS. The statement makes the constant feature a legal pivot everywhere, gives the exact speed-one branch for \(d=1\), and for \(d\ge2\) gives the exact inner-region formula and the requested bound \(d+Rd(d-1)/2\) on the closed region \(\lvert\theta\rvert\le1\).
- Proof validity: PASS. The setting definition yields one offset derivative and exactly \(d-1\) nonpivot feature derivatives:
  \[
  V_{\rm const}(\theta)
  =d\lvert\theta\rvert^{d-1}
   +R\sum_{k=1}^{d-1}k\lvert\theta\rvert^{k-1}.
  \]
  For \(d=1\), the feature sum is empty and \(\lvert(\theta)'\rvert=1\). For \(d\ge2\), bounding each power by one on the closed unit region and using \(\sum_{k=1}^{d-1}k=d(d-1)/2\) proves the stated constant.
- Cited-result and assumption audit: PASS. The only input is Proposition~\ref{prop:step-006-a3-monic-presentation}; monomial differentiation and the finite arithmetic sum are stated and derived locally. No root theorem, dependency probability statement, or extra regularity premise is used.
- Rigor checklist: PASS. The proof explicitly treats \(\theta=0\), so the displayed power shorthand does not rely on an undefined \(0^0\). Both signs are covered by absolute values. The points \(\theta=\pm1\) are assigned to the constant chart. The number and weights of all derivative terms are exact.
- Local adversarial test: PASS. For \(d=2\), the formula is \(2\lvert\theta\rvert+R\), including value \(R\) at zero. For \(d=1\), the sole feature is simultaneously the constant and top feature and has speed one for every \(\theta\), including the outer region.
- Contribution to target step: PASS. The lemma controls zero, the entire \(d=1\) case, both signs in the inner region, and the closed chart boundary without a chart-count or localization cost.
- Verdict: PASS
- Repair direction: None

### unit_003: Proposition on the top pivot and global conditioning

- Statement fidelity: PASS. The proposition uses a legal top pivot for \(d\ge2\) on \(\lvert\theta\rvert>1\), states the exact inverse-power velocity sum, records the exact monic root-feasible set, and proves \(\Gamma_{\rm piv}\le d+Rd(d-1)/2\) for every auxiliary compact interval with a bound independent of that interval.
- Proof validity: PASS. Dividing \(b_d=\theta^d\) by the top feature \(\theta^{d-1}\) gives offset ratio \(\theta\) and derivative magnitude one. Reindexing the lower feature exponent by \(m=d-1-k\) gives \(\theta^k/\theta^{d-1}=\theta^{-m}\) and derivative magnitude \(m/\lvert\theta\rvert^{m+1}\) for both signs. Since \(\lvert\theta\rvert>1\), the exact sum is at most \(\sum_{m=1}^{d-1}m\), and \(1\le d\) gives the requested common constant.
- Cited-result and assumption audit: PASS. The accepted step_001 proof/review identities are current and exact: sketch attempt 3, Step ID step_001, unit attempt 1, proof digest 6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838, and ACCEPTED status. The proposition consumes only the common supported-root, legal-pivot, empty-\(K_R\), and fixed-family finiteness interface; it imports none of step_001's proof-local constants.
- Rigor checklist: PASS. The three exhaustive branches are \(d=1\), \(d\ge2\) with \(\lvert\theta\rvert\le1\), and \(d\ge2\) with \(\lvert\theta\rvert>1\). The closed boundary belongs only to the constant branch. The pointwise minimum is taken over legal pivots before the supremum over the exact \(K_R\). Empty \(K_R\) gives the setting value zero, and an empty chart region contributes nothing.
- Local adversarial test: PASS. The explicit \(d=2\) formulas are \(2\lvert\theta\rvert+R\) and \(1+R/\lvert\theta\rvert^2\). The top pivot is nonzero for either sign in the outer region. If \(K_R\) lies wholly in one chart or is empty, coverage and the bound remain valid. Enlarging, translating, or shrinking the auxiliary compact interval does not change the pointwise constant.
- Contribution to target step: PASS. The proposition supplies the localization-independent deterministic certificate \(\Gamma_{\rm piv}(b_d,F_d;R)\le d+Rd(d-1)/2\) needed for the exact pairwise probability substitution.
- Verdict: PASS
- Repair direction: None

### unit_004: Proposition on positive-length bounded intervals

- Statement fidelity: PASS. The proposition quantifies an arbitrary bounded positive-length interval and the same arbitrary correlated law on the original \(d\) lower coefficients, localizes inside one compact interval, and states both the literal requested \(\kappa\)-form and its exactly equal \(A/(2R)\)-form.
- Proof validity: PASS. For \(a=\inf I<c=\sup I\), the interval property gives \(\overline I=[a,c]\), so \(\Theta=[a,c]\) is a valid compact localization. The proof checks \(N=d\), both deterministic assumptions, the full joint density, positive interval length, the global pivot certificate, and exact event identity before applying the accepted pairwise theorem. Substitution gives
  \[
  \Pr[\exists\theta\in I:p_\alpha(\theta)=0]
  \le\kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)\lvert I\rvert,
  \]
  and \(\kappa(2R)^{d-1}=A/(2R)\) follows literally from \(A=(2R)^d\kappa\) and \(R>0\).
- Cited-result and assumption audit: PASS. The accepted step_004 proof/review identities are current and exact: sketch attempt 3, Step ID step_004, unit attempt 1, proof digest ef99e98a57f58c58b2354c87d7a179ca79f108854ee0b0049c4ed194a4d12b57, and ACCEPTED status. The only consumed step_004 conclusion is Proposition~\ref{prop:step-004-a3-exact-density-transfer}. No ordered-supremum, capacity, nonemptiness-threshold, or empty-index semantic result is imported.
- Rigor checklist: PASS. The affine and polynomial events use the same \(\alpha,\mu,\theta,I\), so their equality is exact and leaves no residual. Almost-everywhere cube support is sufficient, arbitrary correlation is retained, and no marginal or independence premise appears. Intervals disjoint from \(K_R\), including empty \(K_R\), have zero supported root probability by the accepted step_001 interface.
- Local adversarial test: PASS. An open, closed, or half-open bounded positive-length interval has the same compact closure localization. A right-hand side larger than one remains a valid upper bound and is not clipped. No small-interval threshold, auxiliary tolerance, compact-localization factor, or probability-mode conversion is introduced.
- Contribution to target step: PASS. This proposition recovers the exact positive-length monic baseline directly from the accepted affine pairwise theorem in the original probability space.
- Verdict: PASS
- Repair direction: None

### unit_005: Proposition completing empty and singleton intervals

- Statement fidelity: PASS. The proposition extends exactly from positive-length bounded intervals to all bounded intervals and specifically asserts proper-affine-hyperplane nullity, including the \(d=1\) case and the zero right-hand side.
- Proof validity: PASS. A zero-length real interval cannot contain two distinct points, so it is empty or a singleton. The empty event has probability zero. For \(I=\{\theta_0\}\), the root set is
  \[
  H_{\theta_0}
  =\left\{\alpha:\alpha_0=-\theta_0^d
  -\sum_{k=1}^{d-1}\alpha_k\theta_0^k\right\},
  \]
  whose \(\alpha_0\) coefficient is one and whose normal \(F_d(\theta_0)\) is nonzero. Thus it is proper for every \(\theta_0\), including zero.
- Cited-result and assumption audit: PASS. For \(d=1\), the proof directly covers the singleton \(H_{\theta_0}=\{-\theta_0\}\) by intervals of arbitrarily small length. For \(d\ge2\), the hyperplane is the graph of a continuous affine function, hence closed and measurable; Tonelli is restated for a nonnegative measurable indicator and every \(\alpha_0\)-section is a singleton of one-dimensional measure zero.
- Rigor checklist: PASS. Tonelli applies even though the ambient graph and the outer integration domain are unbounded because the integrand is nonnegative. It gives \(\lambda_d(H_{\theta_0})=0\), and the full joint density gives \(\mu\ll\lambda_d\) and hence \(\mu(H_{\theta_0})=0\). This is absolute-continuity reasoning, not a marginal-density claim.
- Local adversarial test: PASS. The argument covers \(d=1\), every \(d\ge2\), \(\theta_0=0\), arbitrary coefficient correlation, and almost-everywhere cube support. The singleton probability and the right-hand side are both exactly zero; no limiting positive-length argument or hidden remainder is used.
- Contribution to target step: PASS. Together with Proposition~\ref{prop:step-006-a3-positive-interval-transfer}, this proposition proves the literal rate for every bounded interval.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found. The same-object presentation and descriptor discharge, constant-pivot calculation, top-pivot/global-\(\Gamma_{\rm piv}\) calculation, positive-length dependency transfer, and zero-length nullity argument are exactly the five mapped units. The bounded-interval closure fact, zero-length interval classification, monomial derivative identities, arithmetic sum, hyperplane measurability, Tonelli application, and absolute-continuity implication are each stated and justified before use. There is no unlisted polynomial-root theorem, compactness-dependent bound, marginal-density step, independence premise, chart-count estimate, leading-coordinate augmentation, threshold, or remainder.

## Target Claim Audit

The submitted proof establishes the exact sketch-attempt-3 step_006 row. For every integer \(d\ge1\), it retains
\[
p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
\]
with deterministic leading coefficient one outside the original \(d\)-dimensional random vector. It proves the exact constant- and top-pivot formulas, handles \(d=1\), \(d=2\), \(\theta=0\), \(\lvert\theta\rvert=1\), both outer-region signs, empty chart regions, and empty \(K_R\), and obtains a compact-localization-independent bound
\[
\Gamma_{\rm piv}(b_d,F_d;R)\le d+\frac{Rd(d-1)}2.
\]
It then applies only the accepted step_004 pairwise proposition to the identical affine/polynomial event for every positive-length bounded interval, and proves empty and singleton intervals separately by affine-hyperplane nullity. The exact descriptor tuple and literal probability coefficient are preserved. The proof does not strengthen the assumptions, change the coefficient probability space, narrow the interval class, alter ordinary-probability mode, or consume capacity semantics.

The source-direction boundary is also faithful. This is the exact monic fixed-family baseline within the accepted material_partial theorem. It neither claims nor implies polynomial general-instance control of \(\Gamma_{\rm piv}\) from \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) or any other Pfaffian-format descriptors; that full-source gap remains explicit.

## Explicit Rate Audit

The step is rate-bearing and satisfies the Explicit Rate Contract. The exposed quantities are exactly \(d,R,\kappa,\lvert I\rvert\), \(A=(2R)^d\kappa\), \(\Gamma_{\rm piv}(b_d,F_d;R)\), and the displayed coefficient \(d+Rd(d-1)/2\); \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff},N\) are fixed descriptors with their exact specialized values. There is no hidden constant.

For each instance, \(d,R,\kappa\) and the monic presentation are fixed while the full joint law and bounded interval vary. Probability mode is ordinary probability under the arbitrary correlated law. Horizon mode is static and uniform over every bounded interval, including empty and singleton intervals. Norm and measure modes are the setting's \(\ell_1\) root-feasibility test, scalar quotient-derivative variation, interval length, and \(d\)-dimensional Lebesgue coefficient measure.

There is no confidence parameter, auxiliary tolerance, small-interval condition, asymptotic qualification, clipping, or probability conversion. Every simplification is displayed: the finite arithmetic sum, the inverse-power comparison on \(\lvert\theta\rvert>1\), \(1\le d\), substitution of the \(\Gamma_{\rm piv}\) bound, and \(\kappa(2R)^{d-1}=A/(2R)\). The baseline-reduction check is exact same-object recovery with no conservative loss, remainder, independent baseline citation, or randomized leading coefficient. Bounds larger than one remain valid as written.

## Notation Surface Audit

The public-facing objects are \(d,R,\kappa,A,b_d,F_d,p_\alpha,\alpha,I,\lvert I\rvert\), and the literal rate coefficient. The setting-defined \(K_R,V_j,\Gamma_{\rm piv}\) keep their original meanings. The already authorized aliases \(V_{\rm const}\) and \(V_{\rm top}\), together with the vacuous-chain outputs \(Q_i\), are appropriately appendix-local. The compact localization, reindexing variable, singleton point, hyperplane, and section variable are proof-local. No helper is promoted to a theorem assumption or hidden rate factor.

The five local theorem labels are unique. Every internal proof reference resolves to one of those labels, the accepted pairwise dependency label, or a stable setting assumption ID. The target-step assembly uses paper-ready theorem names and labels rather than bare unit IDs as mathematical authority. No notation changes the coefficient dimension, law, event, or meaning of a setting object.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-006-a3-monic-presentation} supplies the exact object, assumptions, law space, and tuple. Lemma~\ref{lem:step-006-a3-constant-pivot} and Proposition~\ref{prop:step-006-a3-global-pivot-certificate} jointly supply the global conditioning bound through exhaustive legal-pivot branches. Proposition~\ref{prop:step-006-a3-positive-interval-transfer} checks and applies only accepted Proposition~\ref{prop:step-004-a3-exact-density-transfer} on one compact localization. Proposition~\ref{prop:step-006-a3-complete-monic-baseline} adds exactly the empty and singleton cases.

These named results jointly imply
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:p_\alpha(\theta)=0]
\le
\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)\lvert I\rvert
\]
for every bounded interval and every admissible correlated lower-coefficient law. No unreviewed bridge, ordered supremum, capacity interpretation, or external polynomial-root result is needed.

## Artifact Integrity Audit

All protected inputs matched their binding SHA-256 values before review: idea.md 5743443042dfc9c20be52d5e563ebc263b0a4a3454c7eb30034c2b811123e836; setting.md 91119d2600ee2f787eb873796569ab53e35201e499bf81658d8a0bc1a8e7c79e; proof_sketch.md 32023800de7b27eca85577e615139a5658106b35406627061879396bb35bf906; proof_sketch_review.md 3b626916a9e03b7539ee88961ad973ee2bbe2d6c3649a5bac51e8028cac5335e; controller-open proof_tracker.md 9d7d64c75caab8070de919b9fbabef54804db59e751461548c7c215f159a316c; and the submitted proof 4edc04230dde38ca7a7ff7c04475b38512ed6aea89bfe7bf6b430ad3f016c2a8. The step_001 and step_004 proof/review pairs also matched all four supplied dependency hashes and the required review identities.

The submitted proof is ASCII text with no disallowed control byte. It has 337 inline opening and 337 inline closing TeX delimiters, 47 display opening and 47 display closing delimiters, and 346 opening and 346 closing braces. Its five local labels are unique, and all local, dependency, and assumption references resolve to declared current artifacts.

Hash-only provenance preflight confirmed that the stale live review and its archival copy were byte-identical at SHA-256 49b03b628a445ddd04df1f4b5a31dc217734df9c67d085b9bc2d83491b62d4d8 before replacement. The archive was not read or used as evidence and remains unchanged. The review action replaces only perspective_3/idea_1/proof_steps/step_006/review.md; concurrent changes outside perspective_3/idea_1 are irrelevant to this branch-local scope.

## Review Rationale

ACCEPTED is the smallest controlled outcome because all five declared local units are self-contained relative to the unchanged setting and exactly verified accepted dependencies, are valid line by line, and jointly prove every clause of the accepted step_006 row. The deterministic leading coefficient, original correlated coefficient law, two-pivot constant, compact-independent localization, zero-length completion, literal descriptor tuple, exact rate, and material_partial boundary all pass. No local proof, dependency, or sketch repair is required, so Smallest Retry Target = None.
