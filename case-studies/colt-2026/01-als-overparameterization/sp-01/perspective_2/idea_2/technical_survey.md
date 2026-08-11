# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization landscape and gradient trajectory
  analysis for asymmetric third-order CP least squares.
- Current idea: `perspective_2/idea_2`.
- Setting / goal summary: Analyze the exact homogeneous CP objective under the
  conditional smoothed cyclic Khatri--Rao class at
  \(k=\lceil C r^{3/2}(\log r)^2\rceil\), using one finite Haar tape,
  tensor-preserving balancing, capped Armijo GD, epochwise reset, one-at-a-time
  promotion, final pruning, and protected-only no-floor refinement.  The claim
  is restricted to the protocol's derived reachable tube.

## Candidate Frameworks

### Framework 1: Homogeneous small-initialization growth with periodic refresh

- Source papers: *Beyond Lazy Training for Over-parameterized Tensor
  Decomposition* (arXiv:2010.11356); `perspective_2/idea_1/technical_survey.md`.
- Applicability to current branch: The arXiv source supplies a finite-width
  pattern using homogeneous small initialization, mode switching, and periodic
  reinitialization.  This branch correctly adopts homogeneous factors and an
  explicit finite tape, fixing the normalized dormant-coordinate obstruction
  recorded in the prior branch artifact.  The source nevertheless studies a
  symmetric regularized objective, a different parameterization and switching
  rule, accuracy-dependent width, and a different cap/refresh protocol.  It has
  no theorem for the branch's exact capped dyadic Armijo map.
- Proof roadmap:
  1. From a fresh tape block, derive positive residual correlation and cubic
     radial growth for at least one probationary component.
  2. Charge reset changes to a finite loss/Lyapunov reserve and promote a
     residual-aligned component.
  3. Iterate the residual feedback until a regular protected chart is reached,
     then use local PL refinement.
- Key lemmas / ingredients: anti-concentration of degree-three Haar
  contractions; balanced radial/angular gradient identities; finite refresh
  accounting; and epochwise potential decrease.
- Main transfer challenges: The source does not imply channel-injective
  promotion, protected noncancellation, cap inactivity, an inverse-polynomial
  line-search lower bound, or a same-target active chart for this asymmetric
  objective.  The exact branch parking rule also allows geometric approach to a
  probationary cap without ever triggering equality-based parking.
- Potential repair techniques and supporting references:
  - Technique: park or project a probationary component whenever its cap is the
    active constraint, rather than only when its radius already equals the cap.
  - Supporting reference: *Beyond Lazy Training for Over-parameterized Tensor
    Decomposition* (arXiv:2010.11356), for the use of explicit mode switches and
    refresh boundaries rather than asymptotic cap approach.
  - Why it may help: it would stop the dyadic step from following the remaining
    cap slack down to exponentially small values.  It changes the current
    protocol and therefore belongs to idea repair.
- Disposition: `rejected`.
- Branch notes: This is the closest parent framework, but it cannot be selected
  as authority for the exact hybrid map.  Its refresh mechanism motivated the
  branch; it does not discharge the branch-specific cap and line-search
  interface.

### Framework 2: Khatri--Rao conditioning plus adaptive residual proposals

- Source papers: *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* (NeurIPS 2025,
  https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html);
  *Smoothed Analysis of Tensor Decompositions* (arXiv:1311.3651).
- Applicability to current branch: These sources provide exact asymmetric
  Khatri--Rao algebra and smoothed tensor-product conditioning patterns.  They
  can support a primitive-to-realized instance bridge and probability
  bookkeeping.  The first source uses a pseudoinverse ALS update and a full
  quadratic feature span; the second uses algebraic recovery.  Neither proves
  homogeneous GD activation, sequential residual diversity, or reachable-tube
  persistence.
- Proof roadmap:
  1. Prove realized pair- and triple-Gram conditioning from the static base
     margin and Gaussian perturbations.
  2. Express each fresh residual score in the true component basis and use tape
     anti-concentration to find a proposal for an unresolved channel.
  3. Transfer the proposal through protected GD and pruning to the same tensor
     target.
- Key lemmas / ingredients: normalized Gaussian perturbation bounds,
  Schur-multiplier contraction, structured polynomial anti-concentration, and
  exact residual contractions.
- Main transfer challenges: Collective feature conditioning is not an
  individual residual-channel assignment.  A score exceeding
  \(\|T\|_F P^{-30}\) can correspond to a mixed residual direction; it does not
  by itself imply channel diversity, persistence, or noncancellation.
- Potential repair techniques and supporting references:
  - Technique: state a current-notation residual decomposition lemma separating
    unresolved target mass from protected approximation and refresh defects.
  - Supporting reference: *Guarantees for Alternating Least Squares in
    Overparameterized Tensor Decompositions* (NeurIPS 2025), for Khatri--Rao
    object identities only.
  - Why it may help: an explicit decomposition could expose the margin needed
    for injective promotion, but must be proved for the present GD trajectory.
- Disposition: `backup`.
- Branch notes: This is a viable instance/algebra component, not an end-to-end
  framework.  ALS conclusions are not used as GD proof authority.

### Framework 3: Regular CP chart and local PL refinement

- Source papers: *Local Convergence of the Alternating Least Squares Algorithm
  for Canonical Tensor Approximation* (DOI:10.1137/110843587);
  `perspective_2/idea_1/technical_survey.md`.
- Applicability to current branch: Local quotient nondegeneracy suggests a
  direct Jacobian lower bound near the balanced true representation.  It can
  plausibly support protected-only PL contraction after a current-notation
  chart-entry proof.  It does not produce the chart, exclude protected
  cancellation, or validate the reset and cap dynamics.
- Proof roadmap:
  1. Lower-bound the active balanced CP Jacobian using realized pair-Gram
     conditioning and target-weight bounds.
  2. Dominate the nonlinear chart remainder and prove local PL plus chart
     preservation under protected-only Armijo steps.
  3. Prove final pruning leaves the protected state in that same-target chart.
- Key lemmas / ingredients: balanced-gauge Jacobian calculus, local error
  bounds, quotient treatment of sign/permutation symmetry, and descent under a
  Lipschitz gradient.
- Main transfer challenges: The trajectory may contain duplicate, mixed, or
  cancelling protected components.  A small tensor residual or refresh budget
  alone does not supply an injective regular representation.  Pruning must be
  compared with the chart radius, and the PL contraction must have no positive
  floor.
- Potential repair techniques and supporting references:
  - Technique: derive a signed cluster-to-representative map with an explicit
    same-target Frobenius residual bound before invoking local geometry.
  - Supporting reference: *Local Convergence of the Alternating Least Squares
    Algorithm for Canonical Tensor Approximation*
    (DOI:10.1137/110843587), for local nondegeneracy motivation only.
  - Why it may help: it would make chart membership a produced object rather
    than an admissibility condition.
- Disposition: `backup`.
- Branch notes: This local component remains potentially useful after protocol
  repair, but no cited ALS theorem is a wrapper for the protected homogeneous
  GD map.

No framework is marked `selected`: the exact equality-triggered parking rule
conflicts with the claimed inverse-polynomial accepted-step bound on the
positive-growth path the burn-in is designed to create.
