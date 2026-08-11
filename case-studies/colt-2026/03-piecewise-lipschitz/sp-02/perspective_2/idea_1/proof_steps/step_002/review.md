# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: `step_002`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_2/idea_1/proof_steps/step_002/proof.md`
- Reviewed proof SHA-256: `a87b6ac3a6ad433b1b2333739ad1631d0dbc426763125c63f16b87b8a9ae530e`
- Binding setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Binding accepted sketch SHA-256: `41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4`
- Binding accepted sketch-review SHA-256: `a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9`
- Accepted dependency `step_001` proof SHA-256: `6986e91d1b2a06c451ae6bba842e30747ac507bf3e0eeee09371c1af0b6d4ff8`
- Accepted dependency `step_001` review SHA-256: `4ec6dfad924606b81aa28203e98ac3989ae15cf573297004efbd7036e4455f55`
- Dependency status and exact consumed claim: `ACCEPTED`; Lemma~\ref{lem:step-001-anchor} gives (F_{j_*}(\theta)=1) for every (\theta\in\Theta) in the original coefficient coordinates.
- Evidence boundary: The accepted global diagnostic is context only and is not proof evidence. The sketch-attempt-1 proof and stale live review were not used as current evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The Persistent-root affine translate and anchor exclusion lemma states the exact interval-wise structural target under Assumption~\ref{assump:anchored-derivative-closure} and the accepted anchor dependency. It identifies the nonempty locus as (a^0+K_I), proves that this affine subspace is proper, and does not strengthen the target or assume persistent roots away.
- Proof validity: The identity (Z_\infty(I)=\bigcap_{\theta\in I}H_\theta) follows directly from the pointwise definition. In the nonempty branch, subtracting the identity for (a^0) proves (a\in Z_\infty(I)) if and only if (a-a^0\in K_I). Arbitrary intersections of kernels are linear subspaces. The accepted dependency gives \(\langle e_{j_*},F(\theta)\rangle=1\) for every \(\theta\in I\), so (e_{j_*}\notin K_I), (K_I\neq\mathbb R^N), and (a^0+e_{j_*}\notin Z_\infty(I)).
- Cited-result and assumption audit: The exact `step_001` proof and accepted review match the binding digests and supply precisely the literal anchor used here. No matrix, projective, analytic, independence, or density conclusion is imported from that dependency. The only primitive assumption named in the local statement uses its stable ID.
- Rigor checklist: The quantifier is every positive-length interval and the argument uses the literal point set (I), so open, closed, and half-open endpoint conventions require no continuation step. Empty loci are separated before (a^0) is chosen. If (F_0\equiv0), then (Z_\infty(I)=K_I). Constant or dependent features may enlarge (K_I) only up to dimension (N-1). For (N=1), the anchor forces (K_I=\{0\}), so a nonempty locus is a singleton.
- Local adversarial test: Even when all nonanchor features are constant, duplicated, or zero, the anchor direction still has pairing one and cannot enter the common kernel. A persistent root can genuinely exist, including the singleton (N=1) branch, but translation by (e_{j_*}) leaves the locus, so no allowed branch makes it full-dimensional.
- Contribution to target step: It establishes the exact empty-or-proper-affine structural dichotomy and the literal anchor-direction exclusion used in the nullity certificate.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: The Borel and Lebesgue nullity lemma proves the required measurable (N)-dimensional nullity for the exact persistent-root locus, including uncountable intersections, unbounded affine loci, empty loci, and the (N=1) branch.
- Proof validity: Each fixed-time (H_\theta) is the zero set of a continuous affine map and is closed; therefore the arbitrary, possibly uncountable intersection defining (Z_\infty(I)) is closed and Borel. Choosing any (\bar\theta\in I), the anchor (F_{j_*}(\bar\theta)=1) writes (H_{\bar\theta}) as a graph over the (N-1) nonanchor coordinates. For (N\geq2), every fiber in coordinate (a_{j_*}) is a singleton, so Tonelli gives (\lambda_N(H_{\bar\theta})=0), even over the full unbounded base. Containment (Z_\infty(I)\subseteq H_{\bar\theta}) then gives the claimed nullity. For (N=1), that graph is itself one singleton.
- Cited-result and assumption audit: Tonelli's theorem is restated in current notation for a nonnegative Borel indicator on the permuted product space. The proof discharges Borel measurability, product Lebesgue measure, coordinate-permutation invariance, and singleton-fiber nullity. The accepted anchor result is restated before use. No paper citation or unchecked proper-subspace theorem is used.
- Rigor checklist: Positive length ensures (I\neq\varnothing), so (\bar\theta) exists. The coordinate permutation preserves Lebesgue measure. The base may have infinite measure because the fiber integrand is identically zero and Tonelli applies to a nonnegative function. Empty intersections are closed and null. No compactness, bounded-locus claim, finite-rank reduction, or regularity in (\theta) is needed.
- Local adversarial test: Take a nonempty affine locus of dimension (N-1) with arbitrarily large slope and unbounded extent. It remains contained in the fixed-time anchored graph, whose vertical sections are singletons, so its full (N)-dimensional measure is still zero. The same argument survives (F_0\equiv0), constant features, and (N=1).
- Contribution to target step: It supplies the exact Borel null set required before any probability law is applied.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: The Nullity under arbitrary full joint laws proposition converts the preceding Borel nullity into exactly the law-null persistent-root certificate for every admissible law and every tested interval, with zero remainder and no independence condition.
- Proof validity: Assumption~\ref{assump:cube-density-laws} supplies one nonnegative (N)-dimensional density (f_\mu), supported on ([-R,R]^N) and bounded by (\kappa) almost everywhere. Thus
  \[
  \mu(Z_\infty(I))
  =\int_{Z_\infty(I)\cap[-R,R]^N} f_\mu\,d\lambda_N
  \leq \kappa\lambda_N(Z_\infty(I)\cap[-R,R]^N)
  \leq \kappa\lambda_N(Z_\infty(I))=0.
  \]
  The event equality is exactly the definition of (Z_\infty(I)).
- Cited-result and assumption audit: The statement uses the stable density-law assumption and the named preceding nullity lemma. It invokes no marginal, product, conditional-density, or independence result. The support-cube restriction is an equality from the density support, while the density cap is used only after measurability and nullity have been proved.
- Rigor checklist: An almost-everywhere density bound is sufficient for the integral inequality. The support boundary creates no singular component because the law has a full Lebesgue density. Intersections of the Borel locus with the closed support cube remain Borel and null. Empty, unbounded, (F_0\equiv0), dependent-feature, constant-feature, and (N=1) cases all enter the same calculation.
- Local adversarial test: An arbitrarily correlated density may concentrate in a thin neighborhood of the affine locus, but absolute continuity prevents it from assigning mass to the locus itself. A singular law supported on that locus would break the conclusion, but such a law is excluded exactly by Assumption~\ref{assump:cube-density-laws}, not by an added condition.
- Contribution to target step: It exports the exact zero-probability persistent-root certificate consumed downstream.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the local lemma map. Unit_001 proves the affine-translate identity, common-kernel linearity, literal anchor exclusion, properness, and the (N=1) structure. Unit_002 separately proves Borel measurability of the uncountable intersection, fixed-time graph containment, singleton-fiber Tonelli nullity for unbounded graphs, and the (N=1) null case. Unit_003 performs the sole probability conversion using the full joint density and support-cube intersection. The elementary closed-set, coordinate-permutation, singleton-measure, and Tonelli facts are restated or justified before use. Neither the accepted global diagnostic nor stale same-step history appears as mathematical authority.

## Target Claim Audit

The proof establishes the exact attempt-2 `step_002` row. For each positive-length interval (I\subseteq\Theta), it proves that the exact locus \(\{a:F_0+\langle a,F\rangle\equiv0\text{ on }I\}\) is empty or a proper affine subspace and then proves that every \(\mu\in\mathcal D_{N,R,\kappa}\) assigns it probability zero. The quantifiers are pairwise and universal over (I) and (\mu); no simultaneous event over all intervals is asserted. The argument retains the deterministic (F_0), the original (N)-dimensional coefficient vector, arbitrary correlation, persistent roots, and zero probability remainder. It introduces no transversality, root-simplicity, analytic-continuation, feature-independence, or exclusion assumption. Taking (I=\Theta) also supplies the global persistent-root class required by the formalized goal.

## Explicit Rate Audit

None. This step is not rate-bearing: it exports the exact exceptional probability (0), with no hidden constant, confidence parameter, auxiliary tolerance, horizon conversion, or dependence to specialize. The zero remainder is valid separately for every admissible law and positive-length interval and is the exact interface required by rate objectives R2 and R4.

## Notation Surface Audit

(Z_\infty(I)) is correctly classified as the sole public-facing exported locus and is defined directly from setting objects. (K_I) is an appendix-local common kernel used to expose affine structure and properness. The canonical vector (e_{j_*}), the branch point (a^0), the fixed time (\bar\theta), nonanchor coordinates (\beta), and Lebesgue notation (\lambda_N) are proof-local. (H_\theta), (F_0), (F), and (f_\mu) retain their setting meanings. No one-off alias hides a bound, no helper dictionary is exported, and every constant has primitive or accepted-dependency provenance.

## Target-Step Assembly Audit

The assembly uses only paper-ready named results with exact conclusions. Accepted Lemma~\ref{lem:step-001-anchor} supplies the literal anchor. Lemma~\ref{lem:step-002-affine-locus} gives the empty-or-proper-affine dichotomy and anchor-direction exclusion. Lemma~\ref{lem:step-002-lebesgue-null} proves that the exact possibly unbounded, uncountably-defined locus is Borel and Lebesgue-null. Proposition~\ref{prop:step-002-law-null} then applies the one full joint density to obtain probability zero. These results jointly imply every clause of the target row with no missing bridge or downstream drift; bare unit IDs, step IDs, stale history, and the global diagnostic are not used as proof authority.

## Review Rationale

The submitted proof is complete, target-faithful, and self-contained relative to the current accepted `step_001` dependency. Each of its three local units passes its statement, derivation, assumption, citation, boundary, and adversarial audits. In particular, it handles uncountable intersections, unbounded loci, (N=1), (F_0\equiv0), dependent and constant features, endpoint conventions, arbitrary correlation, and the support cube without adding a transversality, independence, conditional-density, or persistent-root exclusion assumption. Therefore `ACCEPTED` with `Smallest Retry Target = None` is the smallest controlled outcome.
