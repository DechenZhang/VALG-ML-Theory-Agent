# Technical Survey

## Current Idea Branch

- Perspective: Perspective 1, exact deterministic dimension-complexity implication.
- Current idea: `perspective_1/idea_2`, a proposed Euclidean-transcript obstruction for the exact Gaussian-initialized ReLU/logistic one-sample SGD protocol.
- Setting / goal summary: From `assump:fixed-source-witnesses` and `assump:universal-expected-success`, prove the unconditional pointwise bound \(\operatorname{dc}(\mathcal H)\le C T S\) without changing the protocol, probability mode, predictor, or representation notion.

## Candidate Frameworks

### Framework 1: Exact SCO reduction followed by exact halfspace representation

- Source papers: Bogdan Chornomaz, Shay Moran, and Tom Waknine, *On Reductions and Representations of Learning Problems in Euclidean Spaces*, arXiv:2411.10784v1 (STOC 2025), Definition 6 and Theorem 3, especially paper pages 18--19.
- Applicability to current branch: Theorem 3 converts an exact \((\alpha,\beta)\)-reduction with \(\beta<1/2\) to SCO in \(\mathbb R^d\) into an exact representation in \(\mathbb R^{d+1}\). Thus an exact SCO reduction on the full transcript, \(d\le(T+1)S\), would give \(\operatorname{dc}(\mathcal H)\le (T+1)S+1\le3TS\). The missing premise is decisive: expected error of a randomized, distribution-dependent ReLU trajectory is not an exact reduction, and its good-transcript sets are not supplied as convex zero-loss sets.
- Proof roadmap:
  1. Encode \((\theta^{(0)},\ldots,\theta^{(T)})\) in \(\mathbb R^{(T+1)S}\).
  2. Export an exact \((\alpha,\beta)\)-reduction to a convex task on those coordinates.
  3. Apply source Theorem 3 and the dimension arithmetic.
- Key lemmas / ingredients: Exact transformed realizability; minimax to obtain one zero-loss point \(w_h\) for every target on all examples; convexity to preserve zero loss on label-conditioned hulls; \(\beta<1/2\) and Hahn--Banach strict separation. Strict separation is compatible with either fixed tie label \(\tau\).
- Main transfer challenges: The branch has no zero-loss transformed task, convex per-example loss, or valid \(r_{\mathrm{in}},r_{\mathrm{out}}\). The trajectory law changes with \(\mathcal D\). The \(\varepsilon\)-risk residual is at the wrong scale for exact realizability.
- Potential repair techniques and supporting references:
  - Technique: Replace the exact export by an explicitly probabilistic/confident representation theorem.
  - Supporting reference: N. Kamath, O. Montasser, and N. Srebro, *Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity*, arXiv:2003.04180; `RESEARCH_BRIEF.md`.
  - Why it may help: It matches randomized expected-error information, but changes the target and therefore belongs to idea revision.
- Disposition: `rejected`.
- Branch notes: This is the only located source theorem whose output directly gives exact deterministic dimension. Treating transcript dimension as SCO dimension would assume the missing bridge.

### Framework 2: Borsuk--Ulam for convex relations

- Source papers: Chornomaz, Moran, and Waknine, arXiv:2411.10784v1, Theorems 7 and 9 and the proof of Theorem 1 on paper pages 14--18.
- Applicability to current branch: The source requires a compact convex parameter set, nonempty convex fibers, antipodal disjointness, and closedness or open inverse fibers. Piecewise analytic activation strata imply none of these properties. The fixed \(\kappa\) convention makes the kink update single-valued, not globally continuous.
- Proof roadmap:
  1. Relate a sphere of realizable distributions to transcript coordinates.
  2. Prove convex good-transcript fibers and antipodal disjointness across all kink/dead-unit strata.
  3. Invoke the source relation theorem and translate its dimension conclusion to sign-rank.
- Key lemmas / ingredients: Convex fibers, compactness, antipodal separation, partition of unity, and classical Borsuk--Ulam.
- Main transfer challenges: Transcript feasibility sets are nonlinear recursive images, low-error fibers can be disconnected, Gaussian initialization is unbounded, kink transitions can be discontinuous, and the source theorem lower-bounds an already-convex relation rather than converting an arbitrary nonlinear algorithm into a representation.
- Potential repair techniques and supporting references:
  - Technique: First prove a genuine exact convex reduction, then use source Theorem 3.
  - Supporting reference: Chornomaz, Moran, and Waknine, arXiv:2411.10784v1, Theorem 3.
  - Why it may help: It would provide the right output, but the convex reduction is exactly the unsupported obligation.
- Disposition: `rejected`.
- Branch notes: The source contains no piecewise-analytic-transcript extension. A future proof step cannot be its first mechanism source.

### Framework 3: Direct stratified transcript linearization

- Source papers: `perspective_1/idea_2/idea.md` (proposed branch-local mechanism); no external arbitrary-depth exact-linearization theorem was located in `LITERATURE_SURVEY.md`.
- Applicability to current branch: For fixed sample and activation histories, the update is analytic on each open stratum, with boundary values fixed by \(\kappa\). This supports a finite branchwise description, but not a common \(O(TS)\)-dimensional linear lift. Path/activation lifts may have architecture-dependent or exponentially large dimension.
- Proof roadmap:
  1. Enumerate sample, label, and activation strata over \(T\) updates.
  2. Derive exact formulas while retaining all boundary strata.
  3. Seek a common linear lift of all aggregate predictors.
- Key lemmas / ingredients: Finite input and horizon, deterministic kink selector, analytic logistic factor, and activation-pattern decomposition.
- Main transfer challenges: No linear-size lift, convexity, global gluing, or derandomization theorem is available. Coordinate count alone does not control sign-rank.
- Potential repair techniques and supporting references:
  - Technique: Seek a polynomial lift or a high-probability/confident target.
  - Supporting reference: `RESEARCH_BRIEF.md`, Source-Endorsed Relaxations And Variants.
  - Why it may help: Those targets permit lift or randomization losses but require a new idea/formalization.
- Disposition: `rejected`.
- Branch notes: The local examples in `idea.md` verify formulas, not the theorem-critical global lift.

### Framework 4: Randomized or approximate representation extraction

- Source papers: Kamath, Montasser, and Srebro, arXiv:2003.04180; Chornomaz, Moran, and Waknine, arXiv:2411.10784v1, Theorem 4 and Definitions 13--14.
- Applicability to current branch: This matches expected/high-probability outputs and also warns that approximate/randomized dimension can be much smaller than exact sign-rank. A successful randomized certificate cannot be silently exactified.
- Proof roadmap:
  1. Extract a distribution over transcript-based predictors or embeddings.
  2. Convert expected error to an explicit confidence statement.
  3. Bound a linearized embedding dimension and state the relaxed target.
- Key lemmas / ingredients: Randomized embeddings, probability conversion, and explicit lift-size control.
- Main transfer challenges: The trajectory law depends on \(\mathcal D\), the readout is nonlinear, and the conclusion would not be deterministic exact dimension.
- Potential repair techniques and supporting references:
  - Technique: Use the weakest source-endorsed confident/probabilistic target, with polynomial dependence if necessary.
  - Supporting reference: `RESEARCH_BRIEF.md` and arXiv:2003.04180.
  - Why it may help: It follows the user-approved fallback order after full progress fails, but is outside this unchanged goal.
- Disposition: `backup`.
- Branch notes: No framework is `selected`; this backup is only for controller-routed idea revision.
