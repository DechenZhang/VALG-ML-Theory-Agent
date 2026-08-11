# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2, exact deterministic embedding derandomization.
- Current idea: Static finite-rank seed-averaged response space and compact-body exactification.
- Setting / goal summary: For one randomized adaptive unrestricted-SQ learner that succeeds for every distribution, target, and deterministic tolerance-valid complete response rule, assume that the pre-instance span of all seed-averaged terminal responses has rank
  \(r_A\le B(1+m/\tau^2)^k\). Construct one target-independent map into \(\mathbb R^{r_A}\) that represents every target with pointwise signed margin at least \(1-2\varepsilon\), on an arbitrary domain.

## Candidate Frameworks

### Framework 1: Fixed finite-dimensional response body, minimax, and compact finite-intersection exactification

- Source papers: *Limitations of Learning via Embeddings in Euclidean Half Spaces* (JMLR 2002, https://jmlr.org/papers/v3/bendavid02a.html); *A General Characterization of the Statistical Query Complexity* (COLT 2017, https://proceedings.mlr.press/v65/feldman17c.html); Maurice Sion, *On General Minimax Theorems* (Pacific Journal of Mathematics 8(1), 1958, Theorem 3.4, DOI:10.2140/pjm.1958.8.171); James R. Munkres, *Topology*, 2nd ed. (Section 26, finite-intersection characterization of compactness).
- Applicability to current branch: The JMLR source fixes the exact common Euclidean-sign target, and the COLT source supplies the compatible randomized adaptive adversarial-SQ convention. The new primitive rank certificate puts every seed-averaged response in one finite-dimensional space before any distribution or target is selected. Sion's finite-dimensional compact-convex minimax theorem then converts per-distribution exact-center correlation into simultaneous margin on each finite subset. Because all finite witnesses lie in one fixed compact body and use one fixed positive threshold, the ordinary finite-intersection characterization of compactness gives a real-valued arbitrary-domain witness without constructing unrelated finite-restriction maps.
- Proof roadmap:
  1. Goal: construct the all-response mean family, its fixed span, a fixed basis, and an evaluation-coordinate norm, then prove the closed convex response body compact. Earlier-item dependencies: None. Assumptions used: `assump:adaptive-sq-interface`, `assump:mean-response-rank`.
  2. Goal: for each distribution-target pair, instantiate the exact-center complete rule and derive the seed-averaged correlation bound. Earlier-item dependencies: Item 1 for all-rule membership. Assumptions used: `assump:parameter-regime`, `assump:adaptive-sq-interface`, `assump:universal-adversarial-guarantee`.
  3. Goal: on each nonempty finite subset, apply Sion's theorem to the fixed compact response body and finite probability simplex. Earlier-item dependencies: Items 1--2. Assumptions used: the derived compactness and correlation outputs, with no added theorem-facing condition.
  4. Goal: use closed signed-margin subsets of that same body and their finite-intersection property to obtain one response-space element for each target on the entire domain. Earlier-item dependencies: Items 1 and 3. Assumptions used: derived compactness, evaluation continuity, and finite simultaneous feasibility.
  5. Goal: express the global element in the fixed basis and invoke the primitive rank certificate for the exact polynomial dimension bound. Earlier-item dependencies: Items 1 and 4. Assumptions used: `assump:parameter-regime`, `assump:mean-response-rank`, and the derived global-margin output.
- Key lemmas / ingredients: Evaluation functionals span the dual of a finite-dimensional function space; finite-dimensional Heine--Borel compactness; the error-correlation identity \(hg=1-2\mathbf 1\{g\ne h\}\); Sion's minimax theorem for a continuous bilinear payoff; the finite-intersection characterization of compactness; exact basis-coordinate evaluation.
- Main transfer challenges: The exact-center rule varies with the finite-support distribution, so the proof must keep \(K_A\), \(V_A\), and the basis fixed while allowing only the witness \(F_{R^0}\) to vary. The response rule must be complete and public-transcript measurable, not seed-aware. Empty-domain, empty-class, zero-rank, zero-query, and unrestricted-tolerance cases must be handled without invoking a nonexistent simplex or a query-round induction.
- Potential repair techniques and supporting references:
  - Technique: Use a closed uniform signed-margin constraint \(h(x)f(x)\ge\rho\) in one compact body, rather than open strict-separation constraints on independently chosen finite maps.
  - Supporting reference: Maurice Sion, *On General Minimax Theorems* (1958), Theorem 3.4, DOI:10.2140/pjm.1958.8.171; James R. Munkres, *Topology*, 2nd ed., Section 26.
  - Why it may help: Minimax supplies the same fixed threshold \(\rho\) on every finite subset, so the closed-set compactness passage has zero approximation residual and preserves exact signs over arbitrary cardinalities.
- Disposition: `selected`
- Branch notes: This framework retains both parent lines and adds only the standard minimax tool. Unlike the failed Perspective 2, Idea 1 roadmap, it does not infer a common rank from pathwise query energy and does not globalize unrelated finite quotient maps. The common rank and the coherent real ambient space are the explicit primitive certificate of the current conditional theorem.

### Framework 2: Response-complete Gordan separation followed by factorization

- Source papers: `perspective_2/idea_1/technical_survey.md`; `perspective_2/idea_1/proof_sketch_review.md`; *Limitations of Learning via Embeddings in Euclidean Half Spaces* (JMLR 2002, https://jmlr.org/papers/v3/bendavid02a.html); *A General Characterization of the Statistical Query Complexity* (COLT 2017, https://proceedings.mlr.press/v65/feldman17c.html).
- Applicability to current branch: Finite Gordan separation remains a sound way to turn the universal distribution guarantee into finite exact signs. It is unnecessary here because the rank certificate already provides a smaller, fixed response space and the exact-center correlation has a uniform quantitative margin. Retaining the response-complete operator would introduce unbounded terminal coordinates that must then be factored back through \(V_A\).
- Proof roadmap:
  1. Goal: enumerate response-complete terminal coordinates. Earlier-item dependencies: None. Assumptions used: `assump:adaptive-sq-interface`.
  2. Goal: use Gordan's alternative to obtain a finite separator. Earlier-item dependencies: Item 1. Assumptions used: `assump:parameter-regime`, `assump:universal-adversarial-guarantee`.
  3. Goal: prove that every such separator factors through the mean-response space. Earlier-item dependencies: Items 1--2. Assumptions used: `assump:mean-response-rank`; this dependency does not by itself provide the required factorization, which is why the framework remains backup.
- Key lemmas / ingredients: Finite Gordan alternative; exact-center response legality; terminal-coordinate correlation contradiction.
- Main transfer challenges: Step 3 is not supplied by Gordan's alternative. It adds a kernel-compatibility obligation absent from the selected direct minimax route.
- Potential repair techniques and supporting references:
  - Technique: Replace the uncompressed terminal-coordinate operator by the already certified mean-response space.
  - Supporting reference: `perspective_2/idea_1/proof_sketch_review.md` identifies exact separator descent as the missing interface of the earlier route.
  - Why it may help: The current primitive rank certificate makes the replacement legal and removes the unsupported quotient step.
- Disposition: `backup`
- Branch notes: The valid finite-separation prefix is retained only as negative/alternative roadmap memory; it is not needed by the selected proof.

### Framework 3: Pathwise tolerance-energy compression and finite-restriction globalization

- Source papers: `perspective_2/idea_1/technical_survey.md`; `perspective_2/idea_1/proof_sketch_review.md`; *A General Characterization of the Statistical Query Complexity* (COLT 2017, https://proceedings.mlr.press/v65/feldman17c.html).
- Applicability to current branch: A path has at most \(m\) queries, but its energy does not control the union of directions over incomparable response branches and seeds. Independently chosen finite strict representations also need not globalize over an arbitrary real domain.
- Proof roadmap:
  1. Goal: charge retained query directions along executions. Earlier-item dependencies: None. Assumptions used: `assump:adaptive-sq-interface` and the bounded query range.
  2. Goal: form low-rank finite quotients. Earlier-item dependencies: Item 1. Assumptions used: `assump:universal-adversarial-guarantee`; the missing branch-uniform charge is not supplied by this assumption.
  3. Goal: compactify finite-restriction maps. Earlier-item dependencies: Item 2. Assumptions used: no current assumption supplies projective compatibility or a closed common positive margin, which is the explicit blocker.
- Key lemmas / ingredients: Pathwise bounded query energy; separator descent through a common kernel; projective compatibility of finite maps.
- Main transfer challenges: The latter two ingredients have no source under the unconditional SQ assumptions, and the first controls the wrong accumulation scope. The prior review gives a cardinality stress example against generic finite-restriction exactification.
- Potential repair techniques and supporting references:
  - Technique: Do not use pathwise charging or finite-map compactification; work directly in the primitive fixed finite-rank space \(V_A\).
  - Supporting reference: `perspective_2/idea_1/proof_sketch_review.md`, Gate Evidence Table and Blocking Issues 1--3.
  - Why it may help: It replaces both failed interfaces with assumptions and constructions that are explicit in the current theorem contract.
- Disposition: `rejected`
- Branch notes: This roadmap is exhausted by the same-perspective failure memory and is not reused.
