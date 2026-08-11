# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization landscape and gradient trajectory
  analysis for asymmetric third-order CP least squares.
- Current idea: perspective_2/idea_3.
- Setting / goal summary: Analyze the exact homogeneous asymmetric CP objective
  at \(k=\lceil C r^{3/2}(\log r)^2\rceil\) using one finite Haar tape,
  balanced factors, guarded Armijo updates, one-time radial project-and-park
  transitions, residual-score promotion, finite resets, and protected-only
  no-floor refinement. Landscape claims are restricted to the tube generated
  by that protocol.

## Candidate Frameworks

### Framework 1: Guarded homogeneous refresh-and-promotion dynamics

- Source papers: *Beyond Lazy Training for Over-parameterized Tensor
  Decomposition* (arXiv:2010.11356);
  perspective_2/idea_2/technical_survey.md;
  perspective_2/idea_1/technical_survey.md.
- Applicability to current branch: The parent source supplies the useful
  homogeneous small-initialization, mode-switch, and finite-refresh pattern.
  Idea 2 exposed a protocol-level failure: equality-only cap parking can make
  dyadic steps exponentially small. Idea 3 adds fixed trial guards and a
  one-time radial project-and-park transition, so cap slack is converted into a
  finite discrete event with an explicit \(B_{\mathrm{disc}}\) budget. The
  source still does not prove the present asymmetric residual-score,
  protected-cap, or channel-assignment interfaces.
- Proof roadmap:
  1. Derive the smoothed instance event and the exact balanced representation.
  2. Prove guarded Armijo existence and an inverse-polynomial common-step lower
     bound; charge each project-and-park/reset/pruning jump to
     \(B_{\mathrm{disc}}\).
  3. Use fresh-tape anti-concentration and homogeneous radial/angular growth to
     obtain one promotion-ready proposal per unresolved channel.
  4. Prove target-mass reduction, a signed persistence potential, active-chart
     entry, and protected PL refinement.
- Key lemmas / ingredients: polynomial smoothness on the guarded domain;
  balanced homogeneous radial identities; degree-three Haar
  anti-concentration; Schur-product Khatri--Rao conditioning; finite discrete
  event accounting; and a signed cluster potential.
- Main transfer challenges: A residual score can be a mixed or duplicate
  channel; static KR conditioning does not automatically yield injective
  promotion. The persistence potential must control angular leakage,
  coefficient signs, duplicate competition, and the protected cap. The
  project-and-park jump is a discontinuity in factor coordinates and must be
  transferred to the same tensor target and chart.
- Potential repair techniques and supporting references:
  - Technique: use the fixed guard margin to prove
    \(\lambda_{\min}\ge P^{-d_{\mathrm{step}}}\), then treat project-and-park
    as a finite event rather than a gradient step.
  - Supporting reference: *Beyond Lazy Training for Over-parameterized Tensor
    Decomposition* (arXiv:2010.11356), for finite refresh and homogeneous
    growth patterns; perspective_2/idea_2/technical_survey.md, for the
    equality-only cap failure diagnosis.
  - Why it may help: the guard supplies raw radius slack independent of the
    unknown distance to the activation cap, while the event budget keeps the
    induced tensor perturbation summable.
- Disposition: selected
- Branch notes: This is a new guarded protocol, not a theorem wrapper from the
  parent source. The selection is justified by the explicit failure evidence
  from perspective_2/idea_2/proof_sketch_review.md; all asymmetric
  promotion, persistence, chart, and rate claims remain branch-local proof
  obligations.

### Framework 2: Smoothed Khatri--Rao conditioning and structured random probes

- Source papers: *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* (NeurIPS 2025,
  https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html);
  *Smoothed Analysis of Tensor Decompositions* (arXiv:1311.3651);
  *New Tools for Smoothed Analysis: Least Singular Value Bounds for Random
  Matrices with Dependent Entries* (arXiv:2405.01517).
- Applicability to current branch: These sources support the exact asymmetric
  Khatri--Rao identities, normalized perturbation conditioning, and dependent
  polynomial anti-concentration tools needed for the instance event and fresh
  tape blocks. D1's quadratic span and algebraic/spectral recovery are not
  imported as the iterative theorem.
- Proof roadmap:
  1. Transfer the \(1/64\) base pair-Gram margin to \(1/32\) realized margins
     with simultaneous Gaussian tails.
  2. Use the triple Gram to control target norm, noncancellation, and the
     residual decomposition on an active channel chart.
  3. Apply a current-notation conditional anti-concentration lemma to each
     adaptive fresh tape block.
- Key lemmas / ingredients: normalized Gaussian matrix concentration,
  Schur-multiplier contraction, hierarchical polynomial anti-concentration,
  and Khatri--Rao matricization identities.
- Main transfer challenges: The cited conditioning results are static; they do
  not prove dynamic channel assignment or protected persistence. Any cited
  result must be wrapped with current-object mapping, source-convention
  compatibility, and the exact residual-score interface.
- Potential repair techniques and supporting references:
  - Technique: split instance conditioning, tape anti-concentration, and
    trajectory promotion into separate bridge steps with separate confidence
    budgets.
  - Supporting reference: *New Tools for Smoothed Analysis...*
    (arXiv:2405.01517), for dependent-entry anti-concentration only.
  - Why it may help: the fresh tape residual is a low-degree polynomial in an
    independent block conditional on the past, matching the tool's dependence
    interface after an explicit object map.
- Disposition: backup
- Branch notes: This is a viable instance/algebra component, not an end-to-end
  framework. ALS conclusions are not used as GD proof authority.

### Framework 3: Regular balanced CP chart and local PL refinement

- Source papers: *Local Convergence of the Alternating Least Squares Algorithm
  for Canonical Tensor Approximation* (DOI:10.1137/110843587);
  perspective_2/idea_1/technical_survey.md.
- Applicability to current branch: A direct balanced-gauge Jacobian calculation
  can use realized triple-Gram conditioning to establish a local error bound
  around one protected representative per target channel. The cited local ALS
  result is motivation only; it does not provide a GD basin-entry wrapper.
- Proof roadmap:
  1. Define an active chart with an injective signed channel assignment and a
     positive representative mass.
  2. Prove a current-notation Jacobian lower bound and dominate the nonlinear
     chart remainder.
  3. Show project/reset/pruning defects are below the chart radius and derive
     PL contraction under protected guarded Armijo steps.
- Key lemmas / ingredients: balanced CP Jacobian, quotient sign/permutation
  handling, inverse-function/error-bound estimates, and Lipschitz-gradient
  descent.
- Main transfer challenges: The chart is a generated output, not an assumption.
  Split or cancelling protected components and frozen probationary zeros must
  be transferred to the same tensor target. The \(B_{\mathrm{disc}}\) residual
  must be dominated at the chart scale, and no positive error floor is allowed.
- Potential repair techniques and supporting references:
  - Technique: derive a signed cluster-to-representative map in the persistence
    step, then use it as the exact object map for the Jacobian.
  - Supporting reference: *Local Convergence of the Alternating Least Squares
    Algorithm for Canonical Tensor Approximation*
    (DOI:10.1137/110843587), for local nondegeneracy structure only.
  - Why it may help: it separates local geometry from the global promotion
    mechanism and makes the pruning residual an explicit same-target bridge.
- Disposition: backup
- Branch notes: This component is viable only after the selected guarded
  dynamics has produced its chart and persistence certificates.
