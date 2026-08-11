# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_006/proof.md`, SHA-256 `1a3400a6c132242fb0b8be9dbdad7bdbea8482765f81bc80f9dbb9f880cfee40`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-family} states the exact accepted same-object specialization. It keeps \(b_d(\theta)=\theta^d\) deterministic, keeps only \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\) random, and asserts the literal identity \(b_d+\langle\alpha,F_d\rangle=p_\alpha\) in the original \(d\)-dimensional lower-coefficient space. It also states the exact tuple \(q=0\), \(M=0\), \(N=d\), \(\Delta_{\rm rnd}=d-1\), \(\Delta_{\rm aff}=d\), and \(A=(2R)^d\kappa\).
- Proof validity: The coordinate relation \(F_{k+1}(\theta)=\theta^k\) gives \(\langle\alpha,F_d(\theta)\rangle=\sum_{k=0}^{d-1}\alpha_k\theta^k\) directly, so no coordinate permutation, augmentation, approximation, or residual is introduced. With the absent chain, the setting convention gives \(q=0\) and \(M=0\); the random feature degrees are exactly \(0,\ldots,d-1\), while including \(b_d\) raises only \(\Delta_{\rm aff}\) to \(d\). Substitution into \(A=(2R)^N\kappa\) is exact.
- Cited-result and assumption audit: No polynomial-root theorem or monic-baseline theorem is invoked. Polynomiality directly discharges Assumption~\ref{assump:shared-pfaffian-chain} on every compact localization. The constant feature \(F_1\equiv1\) gives \(F_d(\theta)\ne0\) for every \(\theta\), directly discharging Assumption~\ref{assump:no-forced-root}, including \(\theta=0\). Assumption~\ref{assump:joint-density-cap} remains a full joint density on the same \(\mathbb R^d\), with no independence premise.
- Rigor checklist: The degree calculation remains valid at \(d=1\), where the sole random feature has degree zero and \(\Delta_{\rm rnd}=0\). All identities hold for every \(\alpha\in\mathbb R^d\) and every \(\theta\), hence also on every auxiliary compact \(\Theta\). The deterministic leading coefficient is never treated as a random coordinate.
- Local adversarial test: At \(d=1\) and \(\theta=0\), the feature vector is still \((1)\), so neither the no-forced-root check nor the density dimension degenerates. Adding a leading-coordinate Dirac mass would change the probability space and is neither needed nor present.
- Contribution to target step: It supplies the exact object, descriptor, assumption-discharge, and coefficient-space bridge used by every later local result and by accepted Proposition~\ref{prop:step-004-density-conversion}.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-two-pivots} gives the required sole-pivot formula for \(d=1\), the exact constant-pivot velocity on \(\lvert\theta\rvert\le1\), the exact top-pivot velocity on \(\lvert\theta\rvert>1\), and the resulting pointwise minimum bound with the literal target constant.
- Proof validity: For \(d=1\), \(b_1(\theta)=\theta\), \(F_1=1\), and the nonpivot sum is empty, so \(V_{\rm const}=\lvert(\theta/1)'\rvert=1\). For \(d\ge2\), pivoting on \(1\) gives exactly
  \[
  V_{\rm const}(\theta)
  =d\lvert\theta\rvert^{d-1}
   +R\sum_{k=1}^{d-1}k\lvert\theta\rvert^{k-1}.
  \]
  On \(\lvert\theta\rvert\le1\), each displayed power is at most one, including the \(k=1\) derivative at \(\theta=0\), so the bound is \(d+R\sum_{k=1}^{d-1}k=d+Rd(d-1)/2\). On \(\lvert\theta\rvert>1\), the top feature \(\theta^{d-1}\) is nonzero; the offset ratio is \(\theta\), and the other feature ratio for degree \(k\in\{0,\ldots,d-2\}\) is \(\theta^{-m}\) with \(m=d-1-k\). This bijectively reindexes the degrees as \(m=1,\ldots,d-1\) and yields exactly
  \[
  V_{\rm top}(\theta)
  =1+R\sum_{m=1}^{d-1}\frac{m}{\lvert\theta\rvert^{m+1}}.
  \]
  Since \(\lvert\theta\rvert>1\), this is at most \(1+R\sum_{m=1}^{d-1}m=1+Rd(d-1)/2\), which is at most the target constant because \(d\ge2\).
- Cited-result and assumption audit: The unit uses only Proposition~\ref{prop:step-006-family}, direct differentiation, and the setting definition of \(V_j\). Both selected pivots are setting coordinates, and each is used only on a domain where it is nonzero. No separate root-count theorem, prescribed global pivot, or auxiliary cutoff is used.
- Rigor checklist: At \(\theta=0\), only the legal constant pivot is used. At \(\lvert\theta\rvert=1\), the boundary belongs only to the constant region; the top region is strict. For \(d=2\), the formulas reduce to \(V_{\rm const}=2\lvert\theta\rvert+R\) and \(V_{\rm top}=1+R/\lvert\theta\rvert^2\), so both branches give at most \(2+R\). If one region has empty intersection with a chosen compact \(\Theta\) or with \(K_R\), it contributes no obligation. The two regions are disjoint and exhaustive, so there is no duplicated boundary or chart-count cost.
- Local adversarial test: Negative \(\theta\) causes no sign error because \(\lvert(\theta^{-m})'\rvert=m/\lvert\theta\rvert^{m+1}\). The top pivot is never evaluated at its zero, and the constant pivot prevents the large-power chart from being used near zero. On each region the pointwise minimum over all legal pivots is at most the chosen legal-pivot value.
- Contribution to target step: It provides the global pointwise velocity certificate from which the compact-independent \(\Gamma_{\rm piv}\) bound follows.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-compact-gamma} states the exact transfer from the pointwise two-pivot calculation to the setting-defined functional on every compact interval, explicitly makes the constant independent of the auxiliary compact, and records the root-free conclusion for intervals disjoint from \(K_R\).
- Proof validity: If \(K_R=\varnothing\), the setting definition gives \(\Gamma_{\rm piv}=0\). Otherwise Lemma~\ref{lem:step-006-two-pivots} gives, for every \(\theta\in K_R\),
  \[
  \min_{1\le j\le d}V_j(\theta)
  \le d+\frac{Rd(d-1)}2.
  \]
  Taking the supremum over \(K_R\) preserves this same constant. The calculation depends only on \(\theta,d,R\), not on the endpoints, diameter, or nonempty chart regions of \(\Theta\). Accepted Lemma~\ref{lem:step-001-root-feasible} then implies that a supported root cannot lie in an interval disjoint from \(K_R\).
- Cited-result and assumption audit: Proposition~\ref{prop:step-006-family} directly discharges the regularity and no-forced-root assumptions needed by accepted `step_001`. The accepted dependency is restated in the same \(N=d\), \(b_d,F_d,R,\Theta\) notation. No compactness margin, generated condition, or polynomial format bound is newly assumed.
- Rigor checklist: The empty-\(K_R\) and nonempty-\(K_R\) branches are exhaustive. The minimum is taken before the supremum, exactly as in the definition of \(\Gamma_{\rm piv}\). Empty intersections with either pivot region are harmless, and the bound remains valid for degenerate compact localizations as well as the nondegenerate localizations later used for positive-length intervals.
- Local adversarial test: A compact interval lying wholly inside one chart region still has a legal selected pivot at every feasible point; a compact interval crossing \(\lvert\theta\rvert=1\) incurs no extra cost because the certificate is pointwise and the boundary is assigned once. An empty feasible set cannot create an undefined supremum because the setting provides its explicit zero branch.
- Contribution to target step: It exports the exact \(\Gamma_{\rm piv}\) certificate needed by the positive-length specialization and the direct treatment of intervals outside the root-feasible region.
- Verdict: PASS
- Repair direction: None.

### unit_004: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-zero-length} covers exactly the bounded intervals excluded by the positive-length hypothesis of accepted `step_004`, and it states nullity in the original \(d\)-dimensional lower-coefficient law.
- Proof validity: A zero-length interval is empty or a singleton. The empty case has an empty event. For \(I=\{\theta_0\}\), the exact affine identity gives
  \[
  H_{\theta_0}
  =\left\{\alpha:\alpha_0+\sum_{k=1}^{d-1}\alpha_k\theta_0^k=-\theta_0^d\right\}.
  \]
  The coefficient of \(\alpha_0\) is one, so this is a proper affine hyperplane for every \(\theta_0\). For \(d=1\) it is the singleton \(\{-\theta_0\}\); for \(d\ge2\) it is the graph of an affine function of \((\alpha_1,\ldots,\alpha_{d-1})\). The stated Tonelli section calculation gives \(\lambda_d(H_{\theta_0})=0\), and integration of the full joint density over this null set gives probability zero.
- Cited-result and assumption audit: The affine-graph nullity fact is restated with its measurable graph, singleton sections, and nonnegative Tonelli integrand. Assumption~\ref{assump:joint-density-cap} supplies absolute continuity of the full joint law; no coordinate independence, conditional density, or support-interior condition is invoked.
- Rigor checklist: The argument includes \(d=1\), arbitrary \(\theta_0\), and intersections of the hyperplane with cube faces. It does not require the hyperplane to intersect the support cube, and it does not randomize the leading coefficient. Both sides of the target bound are exactly zero when \(\lvert I\rvert=0\).
- Local adversarial test: Even maximally correlated coefficients allowed by a bounded full joint density assign zero mass to a Lebesgue-null hyperplane. The conclusion would fail for a singular law concentrated on that hyperplane, but such a law is correctly excluded by the primitive full-density assumption rather than by independence.
- Contribution to target step: It supplies the complete zero-length branch without a separate polynomial-root theorem or a limiting argument from positive-length intervals.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-monic-bound} quantifies over every \(d\ge1\), every \(\mu\in\mathcal D_{d,R,\kappa}\), and every bounded interval \(I\subset\mathbb R\), and states the literal accepted probability bound with ordinary probability, arbitrary correlation, and no hidden condition.
- Proof validity: The zero-length case follows from Lemma~\ref{lem:step-006-zero-length}. If \(\lvert I\rvert>0\), then the closure of the bounded interval is a nondegenerate compact interval, so any compact interval \(\Theta\) containing that closure is a valid nondegenerate setting domain with \(I\subseteq\Theta\). Proposition~\ref{prop:step-006-family} verifies both deterministic assumptions there, the primitive law already lies in \(\mathcal D_{d,R,\kappa}\), and Proposition~\ref{prop:step-006-compact-gamma} supplies the compact-independent conditioning bound. Accepted Proposition~\ref{prop:step-004-density-conversion} therefore applies exactly with \(N=d\). The identity \(b_d+\langle\alpha,F_d\rangle=p_\alpha\) makes its event identical to the target event, and substitution yields
  \[
  \Pr[\exists\theta\in I:p_\alpha(\theta)=0]
  \le\kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)\lvert I\rvert.
  \]
  The alternative constant form agrees because \(A/(2R)=(2R)^d\kappa/(2R)=\kappa(2R)^{d-1}\).
- Cited-result and assumption audit: The positive-length invocation uses the current hash-matched accepted `step_004` theorem in the same compact domain, coefficient dimension, event, law, support radius, and probability mode. The outside-\(K_R\) and empty-\(K_R\) conclusions use the current accepted `step_001` root-feasibility interface. No external monic theorem, separate polynomial-root theorem, singular augmentation, or marginal-density argument enters.
- Rigor checklist: Assumption~\ref{assump:joint-density-cap} gives cube membership almost surely, so if \(I\cap K_R=\varnothing\), or if \(K_R=\varnothing\), the unrestricted sampled event also has probability zero. The compact localization introduces no endpoint, diameter, or threshold dependence. The cases \(d=1\), \(d=2\), \(\theta=0\), \(\lvert\theta\rvert=1\), empty intervals, singleton intervals, intervals outside \(K_R\), empty \(K_R\), and positive-length bounded intervals are all covered.
- Local adversarial test: Arbitrary dependence cannot defeat either branch: positive length uses the full joint-density conversion already proved by `step_004`, while zero length uses absolute continuity of that same full joint law. A right-hand side larger than one is still a valid upper bound, and no small-interval premise or truncation is silently introduced.
- Contribution to target step: It combines the exact same-object bridge, the compact-independent conditioning certificate, the accepted affine theorem, and the null zero-length branch into the full monic baseline conclusion.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is hidden outside the five-unit map. Exact object and tuple identification are in Proposition~\ref{prop:step-006-family}; all derivative, reindexing, arithmetic-sum, legal-domain, and boundary calculations are in Lemma~\ref{lem:step-006-two-pivots}; the pointwise-minimum-to-supremum transfer and root-feasible boundary cases are in Proposition~\ref{prop:step-006-compact-gamma}; zero-length classification and hyperplane nullity are in Lemma~\ref{lem:step-006-zero-length}; and compact localization, dependency application, density-space matching, and final constant substitution are in Proposition~\ref{prop:step-006-monic-bound}. The elementary compactness and affine-graph facts are restated before use. The prose and assembly introduce no separate root theorem, baseline citation, auxiliary threshold, singular coefficient augmentation, conservative loss, or unreviewed general Pfaffian-format claim.

## Target Claim Audit

The proof establishes the exact accepted `step_006` claim. It proves \(\Gamma_{\rm piv}(b_d,F_d;R)\le d+Rd(d-1)/2\) on every compact localization, independently of that localization, and proves for every \(d\ge1\), every possibly correlated \(\mu\in\mathcal D_{d,R,\kappa}\), and every bounded interval \(I\subset\mathbb R\), including zero-length intervals,
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:p_\alpha(\theta)=0]
\le
\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)\lvert I\rvert.
\]
The coefficient vector has exactly dimension \(d\), the leading coefficient remains deterministic, the event is unchanged, and the probability is ordinary probability with no independence assumption. Quantifiers, constants, degree descriptors, interval scope, and boundary cases match `setting.md` and the accepted sketch row.

The progress type remains strictly `material_partial`. The proof recovers the exact monic baseline and supplies a fixed-family conditioning certificate, but it neither claims nor implies polynomial general-instance control of \(\Gamma_{\rm piv}\) from \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or any other Pfaffian-format data. The unresolved full-source gap remains explicit.

## Explicit Rate Audit

The step is rate-bearing under R3. Its exposed quantities are \(d,R,\kappa,\lvert I\rvert\), the intermediate \(\Gamma_{\rm piv}\), and the fixed-family descriptors \(q=0\), \(M=0\), \(N=d\), \(\Delta_{\rm rnd}=d-1\), \(\Delta_{\rm aff}=d\), and \(A=(2R)^d\kappa\). There is no hidden constant. The deterministic monic family, \(d,R,\kappa\) are fixed while the law and bounded interval vary; the auxiliary compact may vary but does not enter the bound. The mode is ordinary probability, the horizon mode is every bounded interval with no asymptotic or stopping qualification, and the norm/measure modes are the setting's \(\ell_1\) feasibility test, scalar coordinate-ratio variation, \(d\)-dimensional Lebesgue coefficient measure, and one-dimensional interval length.

All simplifications are displayed inequalities or identities: the small-region and large-region derivative sums each use \(\sum_{r=1}^{d-1}r=d(d-1)/2\); the large-region result uses only \(1\le d\); the pointwise certificate is transferred by the defining minimum and supremum; and \(A/(2R)=\kappa(2R)^{d-1}\) is exact. There is no auxiliary tolerance, threshold, confidence conversion, term absorption, or conservative remainder. At \(d=1\), the result reduces exactly to \(\kappa\lvert I\rvert\), preserving the inherited monic baseline rather than a weaker surrogate.

## Notation Surface Audit

The public-facing surface is limited to the setting-defined \(b_d,F_d,p_\alpha,V_{\rm const},V_{\rm top},K_R,\Gamma_{\rm piv}\), the exact descriptor tuple, and the final probability bound. The singleton hyperplane \(H_{\theta_0}\), its graph parameter, and the auxiliary compact \(\Theta\) are correctly classified as proof-local; none is exported as a theorem assumption or rate parameter. No appendix-local dictionary is introduced, and the full target constant remains visible instead of being hidden behind an alias. Every constant and helper object has direct setting, accepted-dependency, or named-local-result provenance.

## Target-Step Assembly Audit

The assembly uses paper-ready named results and stable labels. Proposition~\ref{prop:step-006-family} supplies the exact same-object and descriptor bridge. Lemma~\ref{lem:step-006-two-pivots} supplies the complete legal pointwise chart certificate, and Proposition~\ref{prop:step-006-compact-gamma} turns it into the compact-independent conditioning bound using accepted root feasibility. Lemma~\ref{lem:step-006-zero-length} closes the only interval class not covered by accepted Proposition~\ref{prop:step-004-density-conversion}. Proposition~\ref{prop:step-006-monic-bound} then applies that accepted affine theorem on a valid compact localization and substitutes the exact \(\Gamma_{\rm piv}\) and \(A/(2R)\) identities. These results jointly imply every clause of the target without relying on subsection titles, bare unit IDs, diagnostic artifacts, or an unreviewed lemma.

## Review Rationale

`ACCEPTED` with `Smallest Retry Target = None` is the smallest valid decision. Each of the five nontrivial local units is structurally complete and mathematically correct; the current accepted dependencies supply exactly the interfaces used; every equality, inequality, quantifier, probability mode, coefficient dimension, boundary case, and constant survives direct recomputation. The exact monic baseline is recovered through the affine theorem with no random leading coefficient, independence premise, auxiliary loss, or scope drift, and the proof explicitly respects the binding `material_partial` boundary.
