# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_008/proof.md` (SHA256 `3dddedfdd14f3415d0c01b41d4f401cc0039249d8e4aa3fa856808588971fc41`)
- Binding setting artifact: `perspective_3/idea_1/setting.md` (SHA256 `f442ae0c468201e0c204c72dd07cb9cc2a2d8bbaa6ba286120dfcb8d9749cb17`)
- Binding accepted sketch: `perspective_3/idea_1/proof_sketch.md` (SHA256 `56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1`)
- Binding accepted sketch review: `perspective_3/idea_1/proof_sketch_review.md` (SHA256 `ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b`)
- Accepted dependency `step_004`: proof SHA256 `49e65cdfc0067df7c7dd63e3c76ef15197d29c2307cc42898c3a44d23c8911ba`; review SHA256 `4a3440d51d3e9b490e043c3299e127d0c4de0f9c738f87dae210996b60e1f999`
- Accepted dependency `step_007`: proof SHA256 `5c5a792c80a7692ca1369c17bada22c23a07256df0cdfdaf577c4b9d616566ec`; review SHA256 `02b3819e190d38b9446e008bf15e8448d5d80c1f2a9a5880e560c71c25bd387e`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Hidden-coordinate instance factorization

- Statement fidelity: PASS. The theorem-style statement proves exactly the first component of the sketch row: the full vector has law \(\mu_{N,M}^{\otimes k}\) and is independent of the uniform selector \(J\). Its hypotheses use the accepted public prior and the stated local generative construction, without adding a privacy, PAC, support-size, or nondegeneracy premise.
- Proof validity: PASS. For every support atom \(\boldsymbol\xi\) and selector value \(j\), equation (6) gives \(\Pr(J=j,\boldsymbol\Xi=\boldsymbol\xi)=k^{-1}\prod_i\mu_{N,M}(\{\xi_i\})\). The factor after \(k^{-1}\) is independent of \(j\); summing over \(j\) proves both the product marginal and the joint factorization required for independence. This directly verifies the generative order rather than inferring exchangeability from a symmetry slogan.
- Cited-result and assumption audit: PASS. Accepted Proposition~\ref{prop:step-004-finite-hard-prior} is restated with its admissibility conditions and exact public quantifier order. It supplies one finite law before the experiment and before the arbitrary learner is fixed. The accepted dependency proves \(\exists\mu_{N,M}\,\forall B\), so a later learner may know the public prior without changing the prior or creating circularity; the hardness inequality itself is not used in this unit.
- Rigor checklist: PASS. All spaces used atomwise are finite after the accepted finite-support reduction, every support atom has a well-defined mass, and repeated coordinate values do not conflict with independence of the coordinate draws. The claim is unconditional independence of \(J\) and the instance vector, not an unsupported assertion about later generated objects.
- Local adversarial test: PASS. If \(\mu_{N,M}\) is a point mass, all \(\Xi_i\) coincide almost surely but the vector is still distributed as the product of that point mass and remains independent of \(J\). Multiple support points with repeated realized coordinates, endpoint thresholds, point-mass \(Q\)'s, and \(k=2\) or \(k=3\) leave the same factorization unchanged.
- Contribution to target step: PASS. This establishes the exact pre-data law and removes the only possible selection-bias route at the instance stage.
- Verdict: PASS
- Repair direction: None.

### unit_002: Conditional i.i.d. tagged-product sample law

- Statement fidelity: PASS. The lemma proves the precise fixed-instance interpretation required by the setting and sketch: conditional on every realized instance vector, the ordered size-\(n\) sample has law \((P_{\boldsymbol Q}^{c_{\boldsymbol T}})^n\), and the conditional sample kernel is independent of \(J\). It does not strengthen this to an unconditional i.i.d. claim after prior mixing.
- Proof validity: PASS. Equation (8) computes each labeled-row atom as \(k^{-1}Q_i(x)\mathbf1\{y=\tau_{t_i}(x)\}\), exactly the mass assigned by \(P_{\boldsymbol Q}^{c_{\boldsymbol t}}\). Independent tag draws and independent rowwise feature randomness give the product across rows, while deterministic labels preserve that independence. Combining this kernel with unit_001 correctly removes \(J\) from the conditional law and yields equation (3).
- Cited-result and assumption audit: PASS. The only prior local result is Lemma~\ref{lem:step-008-instance-factorization}; the tag law, conditional feature laws, threshold labels, and product distribution are explicitly defined primitive or local-construction inputs. No PAC guarantee, privacy premise, exchangeability theorem, or learner property enters.
- Rigor checklist: PASS. The proof distinguishes conditional and unconditional stochastic modes explicitly: rows are conditionally i.i.d. for fixed \(\boldsymbol\Xi\), whereas the shared random vector can make the prior mixture dependent. Sample size is exactly \(n\); there is no stopping-time or expected-count substitution. The label and feature spaces are finite, so the atomwise kernel determines the full law.
- Local adversarial test: PASS. Endpoint targets \(t_i=1,N+1\), zero entries of \(Q_i\), point-mass and non-full-support block laws, unequal \(Q_i\)'s, and samples with no row tagged by the realized \(J\) all satisfy the same atom formula. No division by a support mass or conditioning on observing the selected tag is used.
- Contribution to target step: PASS. This supplies the exact ideal product-data certificate and the no-\(J\)-dependence needed to extend selector independence through the learner.
- Verdict: PASS
- Repair direction: None.

### unit_003: Persistence of selector independence through an asymmetric learner

- Statement fidelity: PASS. The lemma proves the strongest selector fact actually needed downstream, \(J\perp\!\!\!\perp(\boldsymbol\Xi,S^{\mathrm{id}},H)\), for every randomized learner with fresh coins. It explicitly permits tag asymmetry, prior-aware code, nonproper output, and arbitrary dependence of \(H\) on the complete sample.
- Proof validity: PASS. The atomwise identity (11)
  \[
  \Pr(J=j,\boldsymbol\Xi=\boldsymbol\xi,S^{\mathrm{id}}=s,H=h)
  =\frac1k\mu_{N,M}^{\otimes k}(\boldsymbol\xi)
    p_{\boldsymbol\xi}(s)K_A(h\mid s)
  \]
  is the correct stochastic-kernel factorization. The product-instance mass, conditional sample mass, and arbitrary learner kernel contain no \(j\)-factor. Summing over \(j\) therefore proves joint independence, not merely pairwise independence, and gives conditional uniformity on every positive-mass atom.
- Cited-result and assumption audit: PASS. Lemmas~\ref{lem:step-008-instance-factorization} and \ref{lem:step-008-ideal-sample-law} are restated before use. The randomized map \(A\) receives only \(s\), and its fresh internal coins are independent of the experiment; public knowledge of \(\mu_{N,M}\) may alter \(K_A\) but cannot add dependence on the unobserved selector. No symmetry, privacy, or PAC premise is smuggled into the kernel.
- Rigor checklist: PASS. The sample and hypothesis spaces are finite, and the prior has finite support, so the atomwise calculation and conditional probability statement require no unproved regular-conditional-probability or measurability theorem. Zero-mass atoms are correctly excluded from the pointwise conditional formula while the almost-sure claim remains valid.
- Local adversarial test: PASS. Let \(A\) treat tag 1 specially, ignore all other tags, randomize with a tag-dependent output kernel, and hardwire the public prior. Then \(K_A(h\mid s)\) can be maximally asymmetric but still depends only on \(s\), so the displayed factorization remains independent of \(j\). The conclusion also survives a singleton prior and samples with no selected-tag row.
- Contribution to target step: PASS. This is the exact bridge that permits conditioning on the full instance/sample/output tuple before averaging over the hidden coordinate.
- Verdict: PASS
- Repair direction: None.

### unit_004: Deterministic tagged-product risk decomposition

- Statement fidelity: PASS. The proposition establishes the exact deterministic interface requested by the sketch: product population risk under the equal tag mass \(1/k\) is the arithmetic mean of the block errors and, through accepted `step_007`, of the legal one-block restriction risks.
- Proof validity: PASS. Expanding the finite population risk and substituting \(P_{\boldsymbol Q}(i,x)=k^{-1}Q_i(x)\) gives equation (13) term by term. Accepted Proposition~\ref{prop:step-007-risk-identity} then identifies each inner sum with \(R_{Q_i}(D_i h,\tau_{t_i})\). No stochastic averaging or interchange is hidden in this deterministic calculation.
- Cited-result and assumption audit: PASS. The accepted restriction-risk proposition is restated in current notation and its proof/review hashes match the binding dependency. Equal tag mass comes from the primitive definition of \(P_{\boldsymbol Q}\); it is not inferred from learner or instance symmetry. No property of \(A\), \(J\), privacy, PAC learning, or the hard-prior inequality is used.
- Rigor checklist: PASS. Quantification covers every \(h\), every endpoint-inclusive threshold vector, and every vector of probability laws. The \(Q_i\)'s may differ arbitrarily, and the output may be nonmonotone and tag-asymmetric. All sums are finite and the normalization \(\sum_{i,x}k^{-1}Q_i(x)=1\) is exact.
- Local adversarial test: PASS. Assign all learner error to tag 1, take distinct or degenerate \(Q_i\)'s, or use all-zero/all-one target blocks. For \(k=2\) and \(k=3\), the decomposition becomes exactly \((e_1+e_2)/2\) and \((e_1+e_2+e_3)/3\), with no symmetry assumption and no boundary loss.
- Contribution to target step: PASS. This identifies the conditional selector average with the exact theorem metric rather than with a surrogate average-risk object.
- Verdict: PASS
- Repair direction: None.

### unit_005: Selected-coordinate averaging for arbitrary randomized learners

- Statement fidelity: PASS. The proposition assembles the preceding interfaces into both the conditional identity (14) and the unconditional target identity (4)/(15), retaining every source of randomness and the exact population-risk mode.
- Proof validity: PASS. With \(\mathcal G=\sigma(\boldsymbol\Xi,S^{\mathrm{id}},H)\), each \(e_i(H;\boldsymbol T,\boldsymbol Q)\) is a bounded \(\mathcal G\)-measurable finite sum. Unit_003 gives \(\Pr(J=i\mid\mathcal G)=1/k\) almost surely, so finite conditional averaging gives \(\mathbb E[e_J\mid\mathcal G]=k^{-1}\sum_i e_i\). Unit_004 identifies that sum pathwise with \(R_{P_{\boldsymbol Q}}(H,c_{\boldsymbol T})\), and total expectation proves the target equality. Accepted `step_007` separately gives the first equality in (15) pathwise.
- Cited-result and assumption audit: PASS. Every consumed dependency or local theorem is restated and discharged. The elementary finite conditional-expectation identity is stated explicitly, and boundedness/integrability follows from probability-weighted indicator sums. No symmetry of \(A\), identical distribution of the realized errors, PAC upper bound, DP guarantee, overflow event, or coupling premise is used.
- Rigor checklist: PASS. Conditioning is on the full tuple that makes all \(e_i\)'s measurable while leaving \(J\) uniform. The proof does not condition on the selector-dependent event that the selected tag is absent, so it avoids a conditional-uniformity error; such samples simply remain atoms in the unconditional identity. The almost-sure conditional statement and unconditional expectation statement are kept distinct.
- Local adversarial test: PASS. If a tag-asymmetric learner has \(e_1=1\) and \(e_i=0\) for \(i>1\) on a realized tuple, conditional averaging still gives \(1/k\), exactly its product risk. Singleton prior support, endpoint and degenerate blocks, no-selected-tag samples, and the \(k=2,3\) boundaries all preserve the equality without conservative loss.
- Contribution to target step: PASS. This proves the exact selected-risk/product-risk exchangeability certificate consumed by later coupling and lower-bound steps.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the local lemma map. The generative-order factorization, conditional row-product law, persistence of independence through a randomized asymmetric kernel, deterministic equal-tag risk decomposition, and measurable conditional averaging are separated into the five named units. The assertions about prior-aware code, endpoint targets, degenerate support, point-mass or zero-mass \(Q\), and absent selected tags are direct stress cases of those units rather than new proof obligations. The assembly invokes theorem-style labels, not bare unit IDs or subsection names, as mathematical authority.

## Target Claim Audit

PASS. The raw producer status is exactly `COMPLETE`, and the derivation proves the accepted sketch-row claim under the unchanged dependencies. The instance vector is unconditionally \(\mu_{N,M}^{\otimes k}\) and independent of \(J\); the labeled rows are i.i.d. from \(P_{\boldsymbol Q}^{c_{\boldsymbol T}}\) conditional on the fixed instance vector, with no false unconditional-i.i.d. upgrade; and the full expected selected block error equals exact product population risk for every randomized tag-asymmetric \(A\). The prior is fixed before \(A\) and may be public. No privacy, PAC, symmetry, nondegeneracy, observed-tag, or later-coupling condition is added, and no quantifier or stochastic mode is weakened.

## Explicit Rate Audit

PASS. This R1 interface exposes fixed \(k,N,M,n\), the accepted prior \(\mu_{N,M}\), exact tag weight \(1/k\), and exact sample size \(n\). It introduces no hidden constant, auxiliary tolerance, approximation, or absorbed term. Equations (2), (3), and (14) have exact distributional or conditional-expectation modes; equation (4) is an exact unconditional expectation; the horizon is fixed-size rather than expected or stopped; and the metric is population 0-1 risk. The prior's admissibility conditions remain inherited from `step_004`, and the exact \(k=2,3\) baselines are preserved.

## Notation Surface Audit

PASS. The exported variables \(J,\boldsymbol\Xi,\boldsymbol T,\boldsymbol Q,S^{\mathrm{id}},H\), tag/sample variables, and block errors are all defined directly from the setting, accepted prior, or local construction and are needed by downstream consumers. The support \(\mathcal Z\) and instance space \(\mathcal I_N\) are correctly appendix-local; atom names, \(p_{\boldsymbol\xi}\), \(K_A\), and generic conditional-expectation symbols are proof-local. The helper classification is complete, and no alias hides measurability, finiteness, normalization, boundedness, or parameter dependence.

## Target-Step Assembly Audit

PASS. Accepted Proposition~\ref{prop:step-004-finite-hard-prior} supplies the public finite law with the correct fixed-prior quantifier order. Lemmas~\ref{lem:step-008-instance-factorization}, \ref{lem:step-008-ideal-sample-law}, and \ref{lem:step-008-selector-independence} establish joint independence of \(J\) from the complete instance/sample/output tuple. Accepted Proposition~\ref{prop:step-007-risk-identity} and Proposition~\ref{prop:step-008-risk-decomposition} identify the legal restricted risks and exact equal-tag product risk. Proposition~\ref{prop:step-008-selected-risk-identity} then yields equation (4). These named results jointly imply every part of the target and require no unreviewed bridge.

## Review Rationale

The submitted proof is complete under the accepted setting, sketch, and dependency interfaces. Its atomwise construction proves that the selector is independent not merely of the instance vector but of the full instance/sample/randomized-output tuple, even for a prior-aware, deliberately tag-asymmetric learner. It keeps the product-sample assertion conditional on the realized instance, checks measurability before conditional averaging, and uses equal tag mass rather than learner symmetry for the risk identity. The proof also preserves endpoint, degenerate-support, no-selected-tag, and \(k=2,3\) cases and imports neither PAC nor privacy. No producer, dependency, or sketch repair is required, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest sound outcome.
