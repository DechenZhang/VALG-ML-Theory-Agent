# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_004
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_004/proof.md, SHA-256 58339caff7775e6a63fc73b4d0a9293c6b42b9faa2f3ed519b8d2ad58d2af8a2
- Binding setting artifact: perspective_1/idea_1/setting.md, SHA-256 f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83
- Binding accepted sketch artifact: perspective_1/idea_1/proof_sketch.md, SHA-256 2fa48ee16cca9a8d0379071f448d1e72ce98ae46d624482d772e74b97649c74a
- Binding accepted sketch review artifact: perspective_1/idea_1/proof_sketch_review.md, SHA-256 40b66331aa50a66607d068e266c545a865044bd175a56d81f012542e6d17d6f8
- Accepted dependency proof artifact: perspective_1/idea_1/proof_steps/step_003/proof.md, SHA-256 648841deed8e205ff9dcbf7b74267a77bdbb7d519a7ce1f9833de0d88f503cf5
- Accepted dependency review artifact: perspective_1/idea_1/proof_steps/step_003/review.md, status ACCEPTED, SHA-256 456aa120c700edc7e711f09f283845c3e7eeee8036951fafdd1212e5682b2ec0
- Accepted global diagnostic pair: global_proof.md, SHA-256 45e93d102aa948c0d80886e5f21cf3bdaa412dfaa25611684eb363d48fa1f5b9; global_proof_review.md, status ACCEPTED, SHA-256 cd86cc68e3982c55aeb16fcafbda0759bb71464aee405c4a158bd41a308463db
- Evidence boundary: The accepted global pair was checked only to validate the optional diagnostic provenance recorded by the proof. It supplies no proof fact, assumption, citation, or target authority. The stale live review with SHA-256 69f88a79fa061835b2d831fc1678552ff496ccea274f775463935e6c0cc7c89b was not used as evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-004-scaled-ball} states exactly the \(N\geq2\) central-section interface fixed by the accepted step_004 row. Its basis is explicit: Assumption~\ref{assump:parameter-regime}, \(R>0\), \(N\geq2\), and a quantified Euclidean unit normal \(v\). Its conclusion is neither affine-translated nor probabilistic.
- Proof validity: With \(Q_N=[-1/2,1/2]^N\), \(H=v^\perp\), and \(D_R(y)=2Ry\), one has \(D_R(Q_N)=[-R,R]^N\), \(D_R(H)=H\), and \(D_R(Q_N\cap H)=[-R,R]^N\cap H\). Euclidean Hausdorff scaling in dimension \(N-1\) therefore multiplies Ball's literal bound by exactly \((2R)^{N-1}\). No rotation, density transformation, boundary removal, or extra factor occurs.
- Cited-result and assumption audit: The publisher-registered record for DOI 10.1090/S0002-9939-1986-0840631-0 confirms Keith Ball, *Cube Slicing in R^n*, Proceedings of the American Mathematical Society 97(3), 1986, pages 465--473, and the main result that every \((n-1)\)-dimensional section of the unit cube has volume at most \(\sqrt2\). Thus the submitted linear central-section statement is a valid narrower specialization. The source's intrinsic Euclidean \((n-1)\)-volume is the standard \(\mathcal H^{n-1}\) measure used here. Ball supplies section size only and is not used for motion, probability, correlation, \(N=1\), or an affine translate.
- Rigor checklist: The source and target sections are closed Borel sets; \(2R>0\); \(v^\perp\) is codimension one; and Hausdorff dimension and scaling exponent are both \(N-1\). The equality of the scaled intersections is exact even on cube faces. All displayed relations precede the single inequality inherited from Ball.
- Local adversarial test: For \(N=2\) and \(v=(1,1)/\sqrt2\), the unit-square diagonal has length \(\sqrt2\), so both the source constant and the \((2R)^{N-1}\) scaling are sharp. Coordinate sections are smaller. Arbitrarily small or large positive \(R\), every orientation, and all face intersections preserve the argument. The excluded \(N=1\) branch is handled directly in unit_002.
- Contribution to target step: The lemma supplies exactly the orientation-uniform central-section cap consumed by the probability proposition.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-004-correlated-central-sweep} reproduces the accepted step target for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\), with the same event, coefficient cube, normalized curve, Euclidean speed, and literal coefficient \(A\sqrt{N/2}\). The \(N=1\) and \(N\geq2\) conditions are exhaustive proof branches, not added theorem assumptions.
- Proof validity: The Borel root-coefficient set \(E_I\) is exactly the event set inside the support cube, as certified by accepted Proposition~\ref{prop:step-003-central-volume}. The single full joint-density calculation gives \(\Pr(E_I)\leq\kappa\operatorname{Leb}^N(E_I)\). For \(N=1\), the accepted dependency gives section \(\{0\}\), zero integrand, zero root-set volume, and the stationary scalar unit curve, hence equality \(0=0\). For \(N\geq2\), Cauchy--Schwarz and cube support give
  \[
  |\langle\gamma_F'(\theta),a\rangle|
  \leq R\sqrt N\,\|\gamma_F'(\theta)\|_2,
  \]
  and unit_001 bounds the remaining section measure. Substitution into the accepted incidence integral is monotone and valid in the nonnegative extended sense.
- Cited-result and assumption audit: The accepted step_003 proof and review hashes match the bound artifacts and export the exact Borel coefficient-volume inequality, including the unit normalized section convention and the \(N=1\) zero-volume branch. Assumptions~\ref{assump:parameter-regime} and \ref{assump:cube-density-laws} supply only static parameters, cube support, and one capped full joint density. No coordinate independence, marginal or conditional density bound, generated event, transversality, or confidence assumption is imported. The accepted global diagnostic is not used as mathematical authority.
- Rigor checklist: The coefficient algebra is the exact identity
  \[
  \kappa R\sqrt N\sqrt2(2R)^{N-1}
  =\kappa(2R)^N\sqrt{N/2}
  =A\sqrt{N/2}.
  \]
  There is no missing factor \(N\), orientation factor, law-dependent constant, or term absorption. The arbitrary-law quantifier precedes the arbitrary interval quantifier after the deterministic presentation is fixed. An upper bound larger than one remains a valid probability bound and is not clipped.
- Local adversarial test: Empty and singleton intervals give zero volume and zero integral; open, closed, and half-open intervals differ only by accepted coefficient-null endpoint hyperplanes. Tangent, ordinary or higher-order multiple, accumulating, and infinite fibers are already covered by accepted projection multiplicity. Identically-zero combinations and stationary normalized curves project to proper null hyperplanes, including when the local speed vanishes. Cube faces are retained throughout. A density concentrated near a rotated section remains controlled by the one full joint cap, regardless of correlation. The result remains exact for \(N=1\), and a diagonal \(N=2\) section realizes Ball's section factor. The bound does not involve \(q,M,\Delta,B_P,B_Q,h^{-1}\), and it neither invokes nor weakens the separate affine-monic baseline.
- Contribution to target step: The proposition combines the accepted incidence interface, the checked central-section lemma, Euclidean pointwise control, cube support, and the full-density cap to prove the exact all-law local-length interface.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. The only nontrivial local translation of an external theorem is isolated in Lemma~\ref{lem:step-004-scaled-ball}; the probability and constant conversion are isolated in Proposition~\ref{prop:step-004-correlated-central-sweep}. Hausdorff similarity scaling, Cauchy--Schwarz, and integration against a density are each restated with the objects and hypotheses used. Borel measurability and all root-fiber degeneracy handling are inherited from the current accepted dependency rather than silently reproved. The unused observation \(A\geq1\) is valid and does not relax any step. Mathematical assembly uses theorem-style names and stable labels, not bare unit IDs, subsection titles, stale reviews, or the global diagnostic.

## Target Claim Audit

The artifact records sketch attempt 2, step_004, unit attempt 1, and Step Proof Status = COMPLETE. It proves exactly
\[
\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
\langle\alpha,F(\theta)\rangle=0\right]
\leq A\sqrt{\frac N2}\int_I\|\gamma_F'(\theta)\|_2\,d\theta
\]
for every admissible arbitrary correlated law and every interval. The scope is ordinary probability, deterministic per-interval, with no confidence conversion, law or interval union bound, independence premise, translated-section bound, or supremum upgrade. The proof preserves the exact cube, feature curve, coefficient dimension, and Euclidean measures from the accepted row. The stronger explicit handling of zero-length interval conventions is already part of the accepted dependency and does not alter the output interface.

## Explicit Rate Audit

The step is rate-bearing for R2. It exposes \(N,R,\kappa,A=(2R)^N\kappa\), \(I\), and the Euclidean local speed, with no hidden constants. The deterministic presentation and \(N,R,\kappa\) are fixed while \(\mu\) and \(I\) range. Probability mode is ordinary probability for each law; horizon mode is every fixed interval, before the later positive-length supremum; norm mode is Euclidean \(\ell_2\), \(\operatorname{Leb}^N\), and \(\mathcal H^{N-1}\), with \(\mathcal H^0\) for \(N=1\). There is no auxiliary tolerance or confidence parameter. The only domination is the displayed Cauchy--Schwarz/cube inequality, and the final coefficient conversion is equality. The later step_005, not this step, introduces \(q,M,\Delta,B_P,B_Q,h^{-1}\) through the projective-speed specialization and takes suprema. The \(N=1\) and zero-speed reductions are exact. The affine-monic baseline remains on its separate affine-chart producer path and is neither replaced nor weakened.

## Notation Surface Audit

The sole public-facing output is Proposition~\ref{prop:step-004-correlated-central-sweep}. Lemma~\ref{lem:step-004-scaled-ball} is correctly classified appendix-local. The source cube \(Q_N\), hyperplane \(H\), dilation \(D_R\), event set \(E_I\), density name \(f_\mu\), and local normal \(v\) are proof-local objects defined directly from setting, source, or accepted-dependency objects. Their provenance, measurability, scale, and scope are explicit. No proof-local dictionary, free constant, translated section, auxiliary event, or unproved bounded quantity is exported.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-003-central-volume} supplies the exact Borel root-set incidence integral and all interval, endpoint, tangent, multiple, infinite-fiber, stationary, identically-zero, and \(N=1\) handling. Lemma~\ref{lem:step-004-scaled-ball} supplies the checked \(N\geq2\) central-section cap. Proposition~\ref{prop:step-004-correlated-central-sweep} combines those named results with Cauchy--Schwarz, cube support, and one full-density integration, then applies the literal coefficient identity. These inputs jointly imply the exact target for both exhaustive dimension branches. No unreviewed lemma, global-diagnostic conclusion, stronger assumption, factor \(N\), or affine-monic substitution enters the assembly.

## Review Rationale

ACCEPTED with Smallest Retry Target = None is the smallest valid decision. Both local units are self-contained relative to their declared primitive inputs and the current accepted dependency. Ball's source identity and section convention, the central dilation, Hausdorff scaling, Borel probability conversion, arbitrary-correlation scope, exact constant algebra, all interval and degeneracy cases, explicit-rate surface, notation provenance, and dependency-only assembly all pass. There is no local proof flaw, dependency blocker, or sketch-interface defect requiring repair.
