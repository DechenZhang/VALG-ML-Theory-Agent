# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization landscape and gradient
  trajectory analysis for asymmetric third-order CP least squares.
- Current idea: `perspective_2/idea_4`, sketch attempt 1.
- Setting / goal summary: A `material_partial`, modewise-near-orthogonal
  Gaussian-smoothed theorem for sequential single-probe projected balanced GD
  with \(k=\Theta(r^{3/2}(\log r)^2)\), an observable
  contraction/score/Hessian certificate, trust-region Armijo steps, a finite
  restart tape, injective target promotions, and no-floor terminal PL
  convergence to arbitrary relative error.  Arbitrary or merely
  well-conditioned non-orthogonal bases and simultaneous all-slot GD remain
  outside the claimed result.
- Attempt-1 diagnostic: the current certificate route is blocked before its
  probability analysis.  At the first promotion,
  \(\beta_{[r]}(\varnothing)=\tau\) exactly, contradicting the required
  one-target beta-purity export on comparable-weight instances.  The full
  balanced tangent also contains a radial direction with curvature
  \(9g^4-6g s(q)\), so positive Hessian certification conflicts with
  informative small-radius growth.

## Candidate Frameworks

### Framework 1: Sequential projected probes with an observable local certificate

- Source papers: *Beyond Lazy Training for Over-parameterized Tensor
  Decomposition* (arXiv:2010.11356); *Orthogonalized ALS: A Theoretically
  Principled Tensor Decomposition Algorithm for Practical Use*
  (PMLR 70, 2017, https://proceedings.mlr.press/v70/sharan17a.html);
  `perspective_2/idea_3/technical_survey.md`.
- Applicability to current branch: Sequential freezing and fresh projected
  probes directly avoid idea 3's false clear-only and all-candidate winner
  events.  An observable stopping certificate is also a plausible way to
  avoid raw-score promotion.  The current certificate, however, exports the
  wrong coefficient object and imposes the wrong radial curvature sign.  The
  framework therefore cannot instantiate the unchanged `setting.md`.
- Proof roadmap:
  1. Derive the realized near-orthogonal instance geometry from
     `assump:base-column-conditioning`,
     `assump:modewise-near-orthogonality`, `assump:gaussian-smoothing`,
     `assump:dimension-regime`, `assump:smoothing-scale`, and
     `assump:smoothing-margin`.
  2. Analyze one fresh projected probe and its observable contractions under
     `assump:random-tape`.
  3. Export a unique target, update protected spans, and iterate promotions.
     This item is impossible because the required first-promotion export has
     \(\beta(\varnothing)=\tau\), and the positive-Hessian test rejects the
     target-growth radial regime.
- Key lemmas / ingredients: normalized Gram concentration; exact balanced CP
  gradient/Hessian identities; projected Haar anti-concentration;
  certificate-to-target transfer; conditional restart amplification; and
  protected-span perturbation.
- Main transfer challenges: A probe-dependent score or contraction
  coefficient must not be confused with the coefficient vector of the entire
  unresolved residual.  An angular direction certificate must not impose
  positive curvature along the common radial activation direction.
- Potential repair techniques and supporting references:
  - Technique: replace full-residual beta purity by purity of the
    probe-dependent contracted coefficient vector, with a same-target
    residual bridge.
  - Supporting reference: `perspective_2/idea_3/proof_sketch_review.md` for
    the prior signed-score versus norm-purity failure; direct identity
    \(G_\star^{-1}\Phi_\star^*T=\tau\) in the current notation.
  - Why it may help: it measures the object the probe can actually change,
    while leaving the full unresolved residual multi-channel as it must be.
  - Technique: use an angular Hessian or saddle-signature test rather than
    positive curvature on the full balanced tangent.
  - Supporting reference: *Escaping From Saddle Points: Online Stochastic
    Gradient for Tensor Decomposition* (arXiv:1503.02101) as restricted-model
    strict-saddle motivation; the current radial identity must still be
    derived directly.
  - Why it may help: a pure target direction is angularly stable while radial
    negative curvature drives feature activation below target scale.
- Disposition: `rejected`.
- Branch notes: These repairs change the observable certificate and its
  theorem-facing output, so they belong to idea revision and re-formalization,
  not to a proof-sketch step.

### Framework 2: Angular strict-saddle certification followed by sequential deflation

- Source papers: *Escaping From Saddle Points: Online Stochastic Gradient for
  Tensor Decomposition* (arXiv:1503.02101); *Orthogonalized ALS: A
  Theoretically Principled Tensor Decomposition Algorithm for Practical Use*
  (PMLR 70, 2017, https://proceedings.mlr.press/v70/sharan17a.html).
- Applicability to current branch: The orthogonal and incoherent literature
  supports separating angular component identification from radial growth.
  This is close to the branch's modewise-near-orthogonal restriction and
  sequential projection.  Those papers use symmetric tensors and different
  objectives or updates, so no theorem is imported.  More importantly, an
  angular-only or saddle-index certificate is not the certificate fixed in
  `setting.md`.
- Proof roadmap:
  1. Condition on the derived realized Gram event and decompose the one-probe
     dynamics into common radius and three angular variables.
  2. Prove that an angularly stable high-score state is norm-pure for one
     unresolved target while the radial direction remains an activation
     direction.
  3. Promote using that revised observable signature and prove projected
     deflation preserves unresolved targets.
- Key lemmas / ingredients: radial/angular Hessian block decomposition;
  perturbation of orthogonal tensor singular triples; strict-saddle
  separation for mixed angular states; and modewise span perturbation.
- Main transfer challenges: asymmetry, unequal weights, adaptive protected
  projections, and an exact object-target bridge from contracted
  coefficients to one target.  The probability of reaching the angular
  certificate within the finite probe horizon must be derived under the
  actual Armijo dynamics.
- Potential repair techniques and supporting references:
  - Technique: diagonalize only the angular Hessian block and retain the
    radial score as a signed growth test.
  - Supporting reference: arXiv:1503.02101 for strict-saddle proof structure;
    direct balanced CP Hessian block calculation is required for this branch.
  - Why it may help: it respects the opposite roles of angular stability and
    radial feature growth.
- Disposition: `backup`.
- Branch notes: This is a candidate for a new idea, not a valid roadmap under
  the present formalized algorithm.

### Framework 3: Guarded balanced-chart PL refinement after exact same-target entry

- Source papers: *Local Convergence of the Alternating Least Squares
  Algorithm for Canonical Tensor Approximation* (DOI:10.1137/110843587);
  `perspective_2/idea_3/technical_survey.md`.
- Applicability to current branch: Near-orthogonal Gram conditioning and the
  exact balanced representation plausibly yield a nondegenerate quotient
  chart after an injective protected state is already close to the true
  factors.  The cited ALS result is motivation for quotient nondegeneracy
  only; the branch would need its own GD Jacobian-adjoint PL calculation.
  This framework does not produce chart entry from the probe protocol.
- Proof roadmap:
  1. Fix a same-target balanced chart modulo permutation and sign gauge and
     lower-bound the exact representation Jacobian.
  2. Bound the nonlinear residual and balancing-map remainder on an
     inverse-polynomial chart.
  3. Combine the PL inequality with the explicit Armijo lower step bound to
     obtain invariant, no-floor \(O(\log(1/\epsilon))\) convergence.
- Key lemmas / ingredients: quotient gauge; Schur-Gram conditioning;
  balanced CP Jacobian singular value; quadratic Taylor remainder; annular
  first-exit argument; and dyadic Armijo descent.
- Main transfer challenges: the chart must concern the actual target
  \(T\), not a surrogate left after discards, and its entry must be generated
  before the local result is consumed.
- Potential repair techniques and supporting references:
  - Technique: use the exact post-pruning residual identity and an annular
    endpoint bound based on the measured trust-region displacement.
  - Supporting reference: DOI:10.1137/110843587 for local quotient-Hessian
    motivation; `perspective_2/idea_3/technical_survey.md` for the direct
    adjoint-PL route.
  - Why it may help: it preserves arbitrary relative accuracy without
    carrying the finite probe reserve into the terminal recurrence.
- Disposition: `backup`.
- Branch notes: This downstream module may be reusable after a future idea
  supplies a valid promotion-to-chart bridge.  It cannot repair the current
  first-promotion contradiction.

### Framework 4: Smoothed Gram conditioning and finite restart amplification

- Source papers: *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* (NeurIPS 2025,
  https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html);
  *Smoothed Analysis of Tensor Decompositions* (arXiv:1311.3651); *New Tools
  for Smoothed Analysis: Least Singular Value Bounds for Random Matrices with
  Dependent Entries* (arXiv:2405.01517).
- Applicability to current branch: These sources support static smoothed
  conditioning and structured anti-concentration methodology.  They do not
  provide the branch's adaptive one-probe certificate, its Hessian signature,
  or a certificate-to-target transfer.  Once a genuine conditional
  per-block success probability exists, elementary conditional independence
  can amplify it over the finite tape.
- Proof roadmap:
  1. Transfer deterministic base margins to realized Gram and norm bounds.
  2. Prove an object-matched one-block success probability for the actual
     projected probe map.
  3. Apply conditional restart amplification and sum the deterministic
     discard reserve.
- Key lemmas / ingredients: normalized Gaussian concentration;
  Khatri--Rao/Schur Gram identities; polynomial small-ball bounds; conditional
  independence of fresh tape blocks; and finite union bounds.
- Main transfer challenges: no cited conditioning theorem changes the exact
  identity \(\beta(\varnothing)=\tau\), and restart amplification cannot
  manufacture a positive probability for a contract-incompatible
  certificate.
- Potential repair techniques and supporting references:
  - Technique: separate static instance geometry, one-block conditional
    probability, and restart amplification into distinct interfaces.
  - Supporting reference: arXiv:1311.3651 and arXiv:2405.01517 for smoothed
    conditioning methodology.
  - Why it may help: it prevents a dynamic generated condition from being
    hidden inside the instance event.
- Disposition: `backup`.
- Branch notes: Static geometry and finite-tape accounting survive the
  current diagnosis, but no framework is marked selected because the
  theorem-critical first-promotion interface is false.
