# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization landscape and trajectory analysis for
  gradient descent on asymmetric third-order CP least squares.
- Current idea: `perspective_2/idea_1`.
- Setting / goal summary: Under polynomial base conditioning, static cyclic
  normalized Khatri--Rao near-isometry, source Gaussian smoothing, and
  \(k=\lceil C_{\mathrm{rank}}r^{3/2}(\log r)^2\rceil\), analyze the exact
  signed-coefficient/unit-direction projected-gradient iteration from one small
  Haar initialization.  The target combines a global landscape trichotomy, a
  coverage-conditioned PL region, trajectory-derived channel coverage and
  persistence, polynomial basin entry, and relative-Frobenius refinement.

## Candidate Frameworks

### Framework 1: Perturbative channel-selection dynamics in normalized CP coordinates

- Source papers: *Guarantees for Alternating Least Squares in Overparameterized
  Tensor Decompositions* (NeurIPS 2025,
  https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html);
  *Beyond Lazy Training for Over-parameterized Tensor Decomposition*
  (arXiv:2010.11356).
- Applicability to current branch: The first source supplies exact CP/Khatri--Rao
  algebra and structured-random-feature proof patterns, but its producer is a
  pseudoinverse parallel-ALS update at quadratic width.  The second supplies a
  small-initialization correlation-growth and off-target accounting pattern,
  but for a symmetric, regularized, mode-switched algorithm with periodic
  reinitialization.  Neither source supplies a theorem for the present
  simultaneous projected/Riemannian GD map, and no ALS conclusion can be used
  as a GD wrapper.
- Proof roadmap:
  1. Derive realized pair-feature near-isometry and a well-conditioned triple
     tensor Gram from the primitive smoothing assumptions.
  2. Use balanced triple-product order statistics over the \(k\) independent
     seeds and the exact first two GD updates to activate one representative per
     target channel.
  3. Close channel persistence, off-span leakage, coefficient competition, PL
     entry, and refinement with a single explicit potential.
- Key lemmas / ingredients: Gaussian matrix concentration for normalized
  pair-feature columns; Schur-multiplier contraction for correlation matrices;
  product-Gaussian anti-concentration; exact projected-gradient identities; and
  a coupled signal/leakage potential.
- Main transfer challenges: A two-mode feature-frame singular-value bound does
  not produce an individual winning component.  The model-model term creates
  cross-component off-span forcing.  Loss descent alone does not bound
  cancelling coefficients.  Most importantly, this trajectory framework does
  not supply the required global gradient/negative-curvature/dormant-cubic
  landscape trichotomy in the branch's normalized coordinates.
- Potential repair techniques and supporting references:
  - Technique: use triple-product extreme order statistics rather than a full
    \(r^2\)-feature span.
  - Supporting reference: *Beyond Lazy Training for Over-parameterized Tensor
    Decomposition* (arXiv:2010.11356), only for the general random-feature
    amplification pattern.
  - Why it may help: with \(k=r^{3/2}\operatorname{polylog}(r)\), the largest
    balanced triple product for a fixed channel can be separated from the
    within-seed competitors by a constant-scale extreme-value gap.  A new
    current-notation proof would still be required.
- Disposition: `rejected`.
- Branch notes: This is the closest trajectory framework, but it cannot be
  selected for the exact formalized conjunction because the landscape part has
  a coordinate-level counterexample described in `proof_sketch.md`.  The
  parent sources remain useful only after a theorem-contract repair.

### Framework 2: Strict-saddle or high-value landscape transfer

- Source papers: *Escaping From Saddle Points: Online Stochastic Gradient for
  Tensor Decomposition* (arXiv:1503.02101); *On the Optimization Landscape of
  Tensor Decompositions* (arXiv:1706.05598).
- Applicability to current branch: These papers establish landscape information
  for an orthogonal stochastic-decomposition objective and a random symmetric
  component-finding objective, respectively.  Their objectives,
  parameterizations, symmetry assumptions, algorithms, and target interfaces
  do not match signed-coefficient asymmetric CP least squares on
  \([ -B_{\mathrm{box}},B_{\mathrm{box}}]^k\times(\mathbb S^{n-1})^{3k}\).
- Proof roadmap:
  1. Classify nonoptimal critical configurations by gradient, Hessian, or a
     higher-order component-injection direction.
  2. Prove quantitative escape and connect it to the deterministic GD
     trajectory.
  3. Transfer local geometry to relative residual.
- Key lemmas / ingredients: strict-saddle classification, tangent-Hessian
  calculations, high-order Taylor expansion, and stable-manifold or quantitative
  escape analysis.
- Main transfer challenges: At a dormant normalized component, the
  target-coupled variation requiring its coefficient and all three sphere
  rotations is fourth order in local coordinates, and the first optimized loss
  decrease is sixth order.  Thus a
  cubic escape statement from homogeneous unnormalized coordinates is not
  source-convention compatible with this branch.
- Potential repair techniques and supporting references:
  - Technique: change to unnormalized homogeneous factor coordinates or add an
    explicit dormant-direction refresh operation.
  - Supporting reference: *Beyond Lazy Training for Over-parameterized Tensor
    Decomposition* (arXiv:2010.11356), whose algorithm explicitly uses a
    different homogeneous parameterization and refresh mechanism.
  - Why it may help: a zero unnormalized rank-one component admits a cubic
    tensor injection, while a refreshed dormant normalized component can first
    choose target-facing directions.  Either repair changes the present
    parameterization or algorithm.
- Disposition: `rejected`.
- Branch notes: The source-to-claim and source-convention gates fail.  No cited
  strict-saddle theorem has the current object, and the exact current object has
  a higher-order stationary configuration.

### Framework 3: Local CP nondegeneracy followed by a PL refinement phase

- Source papers: *Local Convergence of the Alternating Least Squares Algorithm
  for Canonical Tensor Approximation* (DOI:10.1137/110843587);
  *Guarantees for Alternating Least Squares in Overparameterized Tensor
  Decompositions* (NeurIPS 2025,
  https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html).
- Applicability to current branch: Local quotient-Hessian nondegeneracy and
  Khatri--Rao conditioning suggest a direct current-notation Jacobian lower
  bound near a regular true representation.  This can plausibly support a
  coverage-conditioned PL lemma, but it supplies neither random basin entry nor
  the global landscape certificate.
- Proof roadmap:
  1. Use realized cyclic Khatri--Rao conditioning to lower-bound the active
     representation Jacobian on a regular coverage chart.
  2. dominate the quadratic chart remainder by the Jacobian margin;
  3. combine the resulting PL inequality with a separately proved basin-entry
     event.
- Key lemmas / ingredients: local CP Jacobian calculation, quotient treatment
  of sign/permutation redundancy, inverse-function/error-bound estimates, and
  smooth descent.
- Main transfer challenges: The trajectory may produce split, dormant, or
  cancelling representatives rather than the regular chart used by the local
  calculation.  An explicit same-target bridge and coefficient lower margin
  are required.  No cited ALS local theorem is a GD basin-entry theorem.
- Potential repair techniques and supporting references:
  - Technique: formulate a cluster-aggregate coverage chart and prove that at
    least one representative per channel retains inverse-polynomial signed
    coefficient mass.
  - Supporting reference: *Local Convergence of the Alternating Least Squares
    Algorithm for Canonical Tensor Approximation*
    (DOI:10.1137/110843587), for the local nondegeneracy pattern only.
  - Why it may help: the chart can tolerate redundant dormant components if the
    active representatives provide a uniformly conditioned Jacobian.
- Disposition: `backup`.
- Branch notes: This is a viable component framework, not an end-to-end
  roadmap.  It does not repair the global landscape theorem-contract defect.

No framework is marked `selected`: the exact formalized target has a direct
normalized-coordinate obstruction before proof-step allocation.
