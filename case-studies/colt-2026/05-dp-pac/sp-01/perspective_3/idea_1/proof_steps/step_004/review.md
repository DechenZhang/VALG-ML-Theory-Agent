# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_004/proof.md` (SHA-256 `49e65cdfc0067df7c7dd63e3c76ef15197d29c2307cc42898c3a44d23c8911ba`)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact compact polytope of source-private kernels

- Statement fidelity: The lemma supplies exactly the learner strategy set required by the accepted `step_004` row. It uses the full improper output space, exact size-\(M\) labeled-input space, replacement adjacency, and the source privacy cap; it does not impose properness, realizability of privacy-test datasets, or any prior-dependent restriction on learner code.
- Proof validity: Both the input and output sets are finite, so row stochasticity and the DP inequalities form a finite system of affine equalities and closed halfspaces. Quantifying over every event \(E\subseteq\mathcal G_N\) and every ordered adjacent pair gives the exact two-direction all-event approximate-DP condition. The row-simplex product is compact, the intersection remains compact and convex, and a constant-output kernel proves nonemptiness. Mapping a randomized learner to its conditional output probabilities and sampling from a given stochastic row prove the claimed bijection.
- Cited-result and assumption audit: No external result beyond elementary finite-dimensional compactness is needed. The finite ordered domain, full hypothesis space, exact fixed sample size, population loss convention, and replacement adjacency come from `setting.md`; \(d_*\) and the source cap come from the accepted `step_003` interface. No setting technical assumption or generated invariant is imported.
- Rigor checklist: The dimension \(D=(2N)^M2^N\) is correct, every DP inequality is linear in the kernel coordinates, equality at the privacy cap is included, and privacy monotonicity for \(\varepsilon\le0.1\), \(\delta\le\bar\delta_M\) has the correct direction. Arbitrary internal randomization is fully captured because privacy and one-call expected loss depend only on the finite output law for each input.
- Local adversarial test: Singleton-only constraints would be insufficient for approximate DP, but the proof retains all \(2^{|\mathcal G_N|}\) events. Reversing an adjacent pair is not omitted because pairs are ordered. Constant, nonmonotone, improper, and prior-aware algorithms all still induce kernels in the same fixed polytope whenever they satisfy source privacy.
- Contribution to target step: Establishes one nonempty compact convex finite learner strategy set over which the worst-instance value can be minimized and against which a public prior can later be selected.
- Verdict: PASS
- Repair direction: None.

### unit_002: Continuous payoff geometry and uniform strict game value

- Statement fidelity: The lemma proves the exact payoff interface required by the sketch: continuity on the raw compact instance space, affinity only in the learner kernel, and a compactly attained worst-learner value strictly above \(\eta\). It correctly avoids claiming that the payoff is affine in the raw distribution \(Q\).
- Proof validity: The displayed \(p_{t,Q}(s)\) is exactly the mass of an iid realizable labeled sample and \(r_{t,Q}(g)\) is exact population 0-1 risk. Their product yields the finite coefficient representation \(\ell_{N,M}(K;t,Q)=\langle K,a_{N,M}(t,Q)\rangle\). For fixed \(t\), each coefficient is polynomial in \(Q\), so the coefficient map is continuous on every simplex copy and hence on the finite disjoint union. The maximum-of-pairings estimate proves continuity of \(f_{N,M}\). Compactness gives an actual minimizer \(K_*\), and accepted `step_003` applied at that same kernel gives \(f_{N,M}(K_*)>\eta\), so the uniform game value is strictly greater than \(\eta\).
- Cited-result and assumption audit: The current `step_003` proof has SHA-256 `81c92218e737c3592f4071b4706eee2b1b8b9288cb9115295d5f840b24271f31`, matching its accepted review. Only Proposition~\ref{prop:step-003-expected-hardness} is consumed: for each fixed source-private kernel it supplies one possibly learner-dependent \((t,Q)\) with strict expected loss. No minimax, prior, or uniform margin is imported from the dependency.
- Rigor checklist: The sample and output expectations are expanded over the correct finite spaces, joint continuity follows from a finite pairing, and maxima and minima are attained. Quantifiers are preserved: first fix \(N,M\), then minimize over all private kernels, and only then apply the dependency to the attained minimizer. Boundary distributions and endpoint thresholds remain in the compact instance space.
- Local adversarial test: A sequence of kernels could in principle have learner-specific gaps tending to zero, so pointwise strictness alone would not justify an unattained infimum. The proof closes exactly this risk by continuity and compact attainment at \(K_*\), where the dependency again gives a strict inequality. At point-mass or simplex-boundary \(Q\), the coefficient formula remains polynomial and no division or likelihood ratio appears.
- Contribution to target step: Converts learner-wise worst-instance hardness into the strict compact game value \(v_{N,M}>\eta\) that can survive the later exact minimax swap.
- Verdict: PASS
- Repair direction: None.

### unit_003: Compact bilinear minimax via finite-dimensional separation

- Statement fidelity: The generic lemma has exactly the compact-convex, finite-dimensional, continuous separately affine interface used later for the kernel/coefficient-hull pairing. It proves both equality and attainment rather than invoking an unverified probability-measure minimax theorem.
- Proof validity: For every \(r<\alpha\), compactness produces finitely many adversary actions whose payoff coordinates avoid the lower orthant. The affine image \(F(X)\) is compact and convex and is disjoint from the closed convex orthant. Strong separation therefore supplies a separator. Because the orthant is unbounded below, any negative separator coordinate would make its support function infinite; hence the separator is nonnegative and can be normalized to a probability vector. Affinity in the second argument converts this vector into one \(y_r\in Y\) with \(\min_x p(x,y_r)>r\). A compact subsequential limit as \(r\uparrow\alpha\), combined with weak minimax, proves equality and right-side attainment.
- Cited-result and assumption audit: Finite-dimensional strong separation is named and restated with the exact compact/closed convex hypotheses, and those hypotheses are discharged for \(F(X)\) and the lower orthant before use. No branch assumption or dependency conclusion is smuggled into this generic lemma.
- Rigor checklist: The finite subcover uses strict continuity neighborhoods, \(F(X)\) is convex because \(F\) is affine, the separator orientation is consistent, its coordinate sum is positive after nonnegativity and nonzeroness, and separately affine payoffs preserve the normalized convex combination. Passing to a subsequence preserves \(r_q\to\alpha\), and the resulting pointwise inequalities hold for every \(x\), giving the required minimum bound.
- Local adversarial test: A signed separator would not define a mixed adversary, but the unbounded-orthant argument rules out every negative coordinate. Zero coordinates are harmless. The proof does not confuse separate affinity with raw-\(Q\) affinity; the later adversary variable is already a coefficient in a convex set. Nonunique optimizers and boundary points of either strategy set do not affect attainment.
- Contribution to target step: Supplies the exact learner/adversary quantifier reversal with no approximation, closure, or lost strictness.
- Verdict: PASS
- Repair direction: None.

### unit_004: Compact coefficient hull and exact finite barycenters

- Statement fidelity: The lemma gives precisely the needed result for the continuous coefficient image: its ordinary finite convex hull is compact, and each coefficient has an exact finite representation by actual raw instances with support at most \(D+1\).
- Proof validity: Starting from the definition of convex hull, affine dependence among more than \(D+1\) coefficient vectors produces coefficients \(\theta_j\) summing to zero and with zero weighted vector sum. The choice \(\rho=\min_{\theta_j>0}\lambda_j/\theta_j\) preserves nonnegativity, total mass, and the barycenter while deleting at least one positive support weight; iteration yields the Caratheodory bound. This bound then represents the whole convex hull as the continuous image of the compact set \(\Delta([D+1])\times I^{D+1}\), proving compactness rather than silently replacing the convex hull by its closure.
- Cited-result and assumption audit: Caratheodory's theorem is both restated and proved by affine-dependence elimination. Compactness uses only the stated nonempty compactness of \(I\), finite-dimensionality, and elementary compact-product/image facts. No probability-measure closure theorem or unreviewed discretization result is used.
- Rigor checklist: An affine dependence with zero coefficient sum necessarily has both signs, so the elimination step is well-defined; negative \(\theta_j\) only increase the corresponding weights. Zero weights can be removed or used for padding because \(I\) is nonempty. Bilinearity gives the payoff identity for every kernel exactly.
- Local adversarial test: The convex hull of a compact set need not be treated as compact by assertion alone; the explicit \(D+1\)-term parameterization proves closedness and compactness. Duplicate instance coefficients, point masses, and boundary distributions remain legal support points and do not change the exact barycenter.
- Contribution to target step: Turns the optimizing mixed payoff coefficient into a genuinely finite prior over actual \((t,Q)\) pairs with no net, approximation tolerance, or loss of the strict gap.
- Verdict: PASS
- Repair direction: None.

### unit_005: Finite public hard prior for source-private one-block kernels

- Statement fidelity: The proposition matches the target row exactly: for each admissible \(N,M\), one finite law \(\mu_{N,M}\) is chosen before the universal learner quantifier and gives prior-averaged expected population loss strictly greater than \(\eta\) for every randomized unrestricted learner at the source privacy cap.
- Proof validity: Pairing a fixed kernel with a convex combination cannot exceed its largest raw-instance pairing, so maximizing over the coefficient hull equals maximizing over the raw coefficient image. The compact bilinear minimax lemma then gives \(\max_c\min_K\langle K,c\rangle=v_{N,M}>\eta\). An attained optimizer \(c_*\) has an exact at-most-\(D+1\)-point representation, and its weights define \(\mu_{N,M}\). For every kernel, the exact expectation equals \(\langle K,c_*\rangle\ge\min_{K'}\langle K',c_*\rangle=v_{N,M}>\eta\), which is precisely the claimed strict inequality.
- Cited-result and assumption audit: All hypotheses of the local minimax and finite-barycenter lemmas are explicitly discharged using units 001--004. The only dependency input is the accepted `step_003` strict game source already audited in unit_002. No later simulator, product, PAC, or privacy-transfer artifact is used.
- Rigor checklist: The support bound \((2N)^M2^N+1\) follows from the displayed ambient dimension. Zero weights and repeated pairs can be removed without changing the law. The prior may depend on \(N,M\) but not on a selected learner, and every expectation retains exact sample size \(M\), learner randomness, and population 0-1 risk.
- Local adversarial test: After the prior is made public, a learner whose code hardwires it is still just one kernel in the already fixed universal polytope, so the same inequality applies; there is no diagonal or self-reference gap. The minimax equality and exact barycenter introduce no non-strict approximation, so \(>\eta\) survives. Endpoint thresholds, simplex faces, point masses, and nonunique on-support threshold descriptions remain included.
- Contribution to target step: Exports the finite public hard prior with the required quantifier order \(\exists\mu_{N,M}\,\forall B\), completing the target claim.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. Finite all-event DP encoding, nonemptiness, kernel equivalence, payoff expansion, continuity, compact attainment, the strict-value upgrade, separator sign and normalization, affine-dependence elimination, convex-hull compactness, raw-image/hull maximum equality, exact prior expectation, and prior-aware universal coverage are each stated and justified in a named local unit. The proof uses theorem-style labels rather than bare unit IDs as mathematical authority. The finite-dimensional strong-separation fact is explicitly restated and instantiated; Caratheodory's theorem is proved in current notation.

## Target Claim Audit

The proof establishes, for every integer \(N\ge N_*\) and \(M\ge8\) with \(M<b_*\log_2^*N\), the existence of one finitely supported law \(\mu_{N,M}\) on \([N+1]\times\Delta([N])\) such that every randomized unrestricted \((0.1,d_*/(M^2\log M))\)-DP one-block learner has prior-averaged expected population loss strictly greater than \(2^{-8}\). The proof preserves fixed sample size, exact replacement privacy, arbitrary improper output, endpoint thresholds, boundary distributions, and the quantifier order \(\exists\mu_{N,M}\,\forall B\). It neither weakens the strict inequality nor strengthens the claim to an unsupported raw-instance saddle point.

## Explicit Rate Audit

This is an R1 rate-bearing interface. The proof exposes \(N,M\), \(b_*,d_*,N_*\), \(\log_2^*N\), the exact privacy cap, \(\eta=2^{-8}\), the kernel dimension \(D=(2N)^M2^N\), and support bound \(D+1\). No new hidden constant is introduced. The admissibility conditions, deterministic outer existence statement, expectation mode, exact fixed-\(M\) horizon, and population 0-1 risk mode are explicit. No auxiliary tolerance, probability conversion, asymptotic substitution, or term absorption occurs. The unrestricted randomized improper one-block baseline, exact privacy endpoints, \(M=8\), endpoint thresholds, point masses, and prior-aware algorithms are preserved.

## Notation Surface Audit

The public-facing export is limited to \(\mu_{N,M}\) and Proposition~\ref{prop:step-004-finite-hard-prior}, with inherited constants and \(\eta\). The kernel, instance, coefficient-image, convex-hull, value, and dimension objects are appropriately appendix-local, while separator and affine-dependence variables are proof-local. Every helper object is defined from setting notation, the accepted dependency, or an earlier named local result. No one-off alias hides boundedness, compactness, strictness, or parameter dependence, and no proof-local dictionary is exported downstream.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-004-kernel-polytope} supplies the exact compact learner set. Lemma~\ref{lem:step-004-payoff-value} supplies the continuous coefficient pairing and strict compact game value. Lemma~\ref{lem:step-004-compact-minimax} swaps the compact convex quantifiers exactly, and Lemma~\ref{lem:step-004-finite-barycenter} represents the optimizing coefficient by finitely many actual instances. Proposition~\ref{prop:step-004-finite-hard-prior} combines these named results into the exact public-prior claim. The assembly does not rely on diagnostic artifacts, subsection names, unreviewed dependencies, or later proof steps.

## Review Rationale

All five local units are valid under the unchanged accepted sketch and the current accepted `step_003` interface. The proof handles the continuum of raw distributions without assuming affinity in \(Q\), upgrades pointwise strict hardness only after compact attainment, proves the minimax swap with the required separator-sign argument, proves compactness and exact finite support for the coefficient hull, and preserves the strict \(>\eta\) bound under the public-prior quantifier order even for prior-aware learner code. No local repair, sketch repair, or dependency repair is needed; `ACCEPTED` with `Smallest Retry Target = None` is the smallest aligned outcome.
