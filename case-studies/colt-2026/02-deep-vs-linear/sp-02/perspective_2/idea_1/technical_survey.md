# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2, deterministic exact embedding derandomization.
- Current idea: Response-complete transcript incidence operator, finite robust separation, tolerance-energy quotient, and arbitrary-domain exactification.
- Setting / goal summary: Under one randomized adaptive unrestricted-SQ learner that succeeds for every distribution, target, and tolerance-valid response strategy, prove one deterministic exact feature map over an arbitrary domain with dimension at most \(C m/\tau^2\). The constant must be universal, and the map must be independent of the distribution, target, responses, and learner seed.

## Candidate Frameworks

### Framework 1: Finite Gordan separation through response-complete terminal coordinates

- Source papers: *Limitations of Learning via Embeddings in Euclidean Half Spaces* (JMLR 2002, https://jmlr.org/papers/v3/bendavid02a.html); *A General Characterization of the Statistical Query Complexity* (COLT 2017, https://proceedings.mlr.press/v65/feldman17c.html).
- Applicability to current branch: The Euclidean-sign viewpoint matches the finite strict-separation target, while the SQ source fixes the adversarial response-tree semantics. For a fixed finite \(S\) and target \(h\), Gordan's alternative can be applied directly to the signed response-complete columns. Failure of strict separation produces nonnegative weights defining a distribution on \(S\); the terminal-predictor coordinates then force every possible leaf predictor to have zero correlation with \(h\), contradicting the learner guarantee. This proves a finite-restriction separator but supplies no dimension bound.
- Proof roadmap:
  1. Define all response-complete query-channel and terminal-predictor coordinates from `assump:adaptive-sq-interface`.
  2. Derive the point-mass payoff from `assump:universal-adversarial-guarantee` and `assump:parameter-regime`.
  3. Apply the finite-dimensional theorem of the alternative to obtain strict finite-restriction separators, using the full universal-distribution guarantee for the contradiction.
- Key lemmas / ingredients: Error-correlation identity; finite-dimensional Gordan alternative; exact-center responses as one legal strategy under a guarantee uniform over all strategies; inclusion of every terminal predictor as a coordinate.
- Main transfer challenges: The separating functional may use arbitrary terminal-predictor coordinates and may depend on \((h,S)\). Neither cited source makes these functionals factor through one target-independent quotient, bounds the span needed by all separators, or globalizes independently chosen finite quotients.
- Potential repair techniques and supporting references:
  - Technique: Use discrimination-norm minimax only to audit legal adaptive-oracle quantifiers.
  - Supporting reference: *A General Characterization of the Statistical Query Complexity* (COLT 2017, https://proceedings.mlr.press/v65/feldman17c.html).
  - Why it may help: It prevents favorable-response or fixed-seed substitutions, but its published interface is query/distribution complexity rather than exact sign-rank compression.
- Disposition: `backup`
- Branch notes: This is a valid proof prefix, not a selected full framework. It removes the need for an unsupported point-mass-to-simultaneous minimax leap, but leaves the central rank and globalization obligations untouched.

### Framework 2: Tolerance-gap charging on the adaptive response tree

- Source papers: *A General Characterization of the Statistical Query Complexity* (COLT 2017, https://proceedings.mlr.press/v65/feldman17c.html); *Efficient Noise-Tolerant Learning from Statistical Queries* (JACM 1998, DOI:10.1145/293347.293351).
- Applicability to current branch: The response-tree and adversarial-tolerance conventions match the learner. A fixed execution has at most \(m\) nodes and every label-channel gap satisfies \(0\le\Delta\le2\), so a pathwise estimate such as \(\sum_{t\le m}\Delta_t^2\le4m\) is immediate. The required quotient, however, must control independent directions collected across incomparable continuous branches, seeds, targets, and separating distributions. The cited results do not provide an injection of such directions into one execution or a branch-uniform potential with finite total charge.
- Proof roadmap:
  1. Associate a retained quotient direction with a separated pair of tolerance intervals.
  2. Lower-bound its charge by a universal multiple of \(\tau^2\).
  3. Sum charges against one common potential bounded by \(O(m)\).
- Key lemmas / ingredients: Query decomposition into label-independent and label-dependent channels; tolerance-interval overlap; adversarial response-tree coupling; a common potential or common-witness charging lemma.
- Main transfer challenges: Step 3 has no source. Bounded depth is pathwise, whereas the desired retained directions can lie on different branches. Moreover, the Gordan separators from Framework 1 are terminal-output functionals, and no source makes them descend through a kernel selected from query-channel gaps.
- Potential repair techniques and supporting references:
  - Technique: Search for a source-verified branch-uniform discrimination potential or an exact sign-rank factorization theorem for unrestricted adaptive SQ trees.
  - Supporting reference: *A General Characterization of the Statistical Query Complexity* (COLT 2017, https://proceedings.mlr.press/v65/feldman17c.html).
  - Why it may help: Its minimax quantities are the closest cited adaptive-SQ machinery, but the literature survey explicitly records that they do not export the required exact common quotient.
- Disposition: `rejected`
- Branch notes: No theorem-critical mechanism source supports the common energy inequality. Calling the pathwise depth bound an aggregate rank budget would silently drop branch, seed, target, and witness-distribution multiplicity.

### Framework 3: Probabilistic or approximate representation followed by exactification

- Source papers: *Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity* (COLT 2020, https://proceedings.mlr.press/v125/kamath20b.html); *On Reductions and Representations of Learning Problems in Euclidean Spaces* (STOC 2025, arXiv:2411.10784).
- Applicability to current branch: These works explain how randomized or approximate embeddings can be smaller than deterministic exact ones. That is precisely the wrong output interface here: the theorem requires one deterministic map and strict signs at every point.
- Proof roadmap:
  1. Extract a distribution over finite-dimensional transcript maps.
  2. Obtain expected or high-probability approximation for each distribution-target pair.
  3. Attempt to derandomize and exactify simultaneously over all points and targets.
- Key lemmas / ingredients: Probabilistic representation minimax; approximate-risk conversion.
- Main transfer challenges: The exactification step is absent and is known not to follow merely from expected positive-error control. It would change deterministic exact dimension into a probabilistic, confident, or approximate notion.
- Potential repair techniques and supporting references:
  - Technique: Retain the probabilistic conclusion only as an explicitly partial theorem.
  - Supporting reference: *Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity* (COLT 2020, https://proceedings.mlr.press/v125/kamath20b.html).
  - Why it may help: It supports a source-endorsed relaxation, but cannot repair the current full theorem without changing its success criterion.
- Disposition: `rejected`
- Branch notes: This parent switch is disallowed for the present full branch because it changes the target object. No framework is marked `selected`: the survey found a sound finite-separation prefix but no traceable full-roadmap source for common rank compression and arbitrary-domain exactification.
