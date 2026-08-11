# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization landscape and gradient trajectory
  analysis for asymmetric third-order CP least squares.
- Current idea: perspective_2/idea_3, sketch attempt 9.
- Setting / goal summary: Exact homogeneous asymmetric CP least squares with
  \(k=\lceil C_{\mathrm{rank}}r^{3/2}(\log r)^2\rceil\), one finite Haar tape,
  guarded Armijo trials, one-time project-and-park transitions, residual-score
  promotion, finite resets, and protected-only no-floor refinement.
- Repair context: attempt-4 review rejected an l1-dominant random cone as
  exponentially unlikely in the orthogonal equal-weight case.  Attempts 5-8
  exposed queued conditioning, full-score omission, gap-insensitive purity,
  and a false reverse-Armijo cap.  Attempt 9 uses clear-only epochs followed
  by an independent reset, a joint full residual-score/cancellation event,
  an \(m_0\)-sensitive purity potential, and the defined \(\eta_{\max}\)
  endpoint displacement for first exit.

## Candidate Frameworks

### Framework 1: Mild-gap homogeneous promotion with deterministic amplification

- Source papers: Beyond Lazy Training for Over-parameterized Tensor
  Decomposition (arXiv:2010.11356);
  perspective_2/idea_2/technical_survey.md;
  perspective_2/idea_1/technical_survey.md.
- Applicability to current branch: The parent source motivates homogeneous
  cubic activation, small initialization, mode switching, and finite refresh,
  but it does not prove this asymmetric guarded protocol.  The selected
  framework uses a random event only to obtain a positive signed
  largest-coordinate gap together with a signed full-score cancellation
  window
  \[
  z_{ij}\ge q_0,\qquad
  z_{ij}\ge(1+m_0)\max_{\ell\ne j}|z_{i\ell}|,\qquad
  m_0=(8\log(2r))^{-1},
  \]
  and
  \[
  \left|\sum_{\ell\ne j}z_{i\ell}+\eta_i\right|
  \le {m_0\over8}z_{ij}.
  \]
  A gap-sensitive winner/purity recurrence then preserves this margin during
  the pre-parking updates.  It does not ask one product-normal coordinate to
  dominate an l1 sum of \(r-1\) coordinates; it controls the signed aggregate
  that actually appears in the protocol score.
- Proof roadmap:
  1. Derive E0/Z0 and the guarded raw/retained-state C0 reserve.
  2. Prove a direct product-normal order-statistic lemma for the mild signed
     gap and score floor, with block failure at most \(r^{-24}\).
  3. Treat a Q-nonempty epoch as clear-only: the seed-to-\(\theta\) time
     exceeds the \(P^{103}\) queue-clear time, so no candidate qualifies.
     Reset after clearing and avoid any post-update freshness claim.
  4. At the independent reset, write the exact score
     \(S=\sum_{j\in U}z_j+\eta\), and prove a joint signed cancellation,
     coordinate-gap, and all-candidate potential event under the
     heteroscedastic product-chaos law.
  5. Define successful tape prefixes with terminal unresolved-target
     exhaustion; only those prefixes are unioned, so at most r fresh blocks
     are queried.
  6. Starting from the W0 full-score margin and initial potential, prove
     matching radial bounds, \(B_{\mathrm{park}}\ge(20/3)\log P\), and an
     \(m_0\)-weighted purity/score recurrence whose internal target is
     \(m_0/4\).
  7. Prove the score-potential dichotomy for every probationary candidate:
     a non-basin candidate has boundary score at most
     \(q_0(1+m_0/2)\), while the full-score basin candidate reaches
     \(q_0(1+3m_0/4)\).  This supplies the
     global-largest-score interface to D0.
  8. Iterate the physical Q/U transition, use one scaled event reserve, and
     polish the protected clusters to \(\Psi_{\mathrm{pol}}\le
     \|T\|_F^2P^{-154}\).
  9. Transfer Psi to balanced coordinates and residual, then prove PL from
     \(J(h)^*[-J_\star h-N(h)]\) and use the defined \(\eta_{\max}\) endpoint
     displacement with an actual annular energy bound to rule out first exit.
- Key lemmas / ingredients: polynomial guarded smoothness; homogeneous
  two-sided radial/angular identities; heteroscedastic product-chaos
  full-score cancellation and largest-coordinate order statistics at an
  independent reset; gap-sensitive winner/purity potentials; Schur-product
  Khatri--Rao conditioning; a physical Q/U target-error functional; a scaled
  retained-state loss reserve; and balanced Jacobian residual algebra.
- Main transfer challenges: The clear-only epoch must be discharged from the
  fixed simultaneous protocol and the next reset must expose the actual full
  score.  The signed cancellation event must transfer that score to a target
  with a gap-sensitive initial potential, and the simultaneous dynamics must
  preserve the \(m_0\)-scale comparison for every candidate.  The protected
  PL proof must use the defined eta ceiling and an annular endpoint argument,
  not a reverse-Armijo assertion.
- Potential repair techniques and supporting references:
  - Technique: normalize weighted product coordinates by the largest
    coordinate and use an \(m_0=1/(8\log r)\) gap.
  - Supporting reference: direct product-normal density/order-statistic
    calculation; no external theorem is imported.
  - Why it may help: in the orthogonal equal-weight case the event has
    probability of order \(1/(r\log r)\), unlike constant l1 domination.
  - Technique: use a full-score signed-lead recurrence with a
    gap-sensitive purity potential and integrated pre-parking angular gain
    \(B_{\mathrm{park}}\), alongside matching radial upper/lower bounds.
  - Supporting reference: homogeneous radial/angular identities motivated by
    arXiv:2010.11356.
  - Why it may help: an \(m_0\)-scale initial purity is preserved through the
    fixed parking radius without claiming gap-independent polynomial
    contraction or using post-promotion target-scale updates.
  - Technique: treat Q-nonempty epochs as clear-only and query only after the
    next independent reset; use a full residual product-chaos event.
  - Supporting reference: direct protocol time-scale comparison and
    product-chaos small-ball calculation; no external theorem is imported.
  - Why it may help: it handles all unresolved coordinates in the actual
    score and avoids any unsupported law comparison after simultaneous updates.
  - Technique: define an initial potential combining score excess, aggregate
    cancellation, and coordinate gap, then prove an \(m_0\)-weighted
    recurrence for every candidate.
  - Supporting reference: direct balanced CP Gram expansion in the current
    notation.
  - Why it may help: it turns existence of one mild-gap block into the
    all-candidate interface required by the largest-score promotion rule.
  - Technique: derive PL through
    \[
    \nabla F=-J(h)^*R(h),\qquad R(h)=-J_\star h-N(h),
    \]
    and use the defined \(\eta_{\max}\) endpoint displacement plus an annular
    energy bridge.
  - Supporting reference: direct balanced CP Jacobian calculation; Local
    Convergence of the Alternating Least Squares Algorithm for Canonical
    Tensor Approximation (DOI:10.1137/110843587) is motivation only.
  - Why it may help: it handles the ambient residual/nullspace issue and
    prevents a discrete accepted step from jumping across the chart boundary
    without assuming descent for an unverified larger partial path.
- Disposition: selected.
- Branch notes: This is a novel guarded composition, not a theorem wrapper.
  Every dynamic claim remains a current-notation direct obligation.

### Framework 2: Smoothed Khatri--Rao conditioning and structured probes

- Source papers: Guarantees for Alternating Least Squares in Overparameterized
  Tensor Decompositions (NeurIPS 2025); Smoothed Analysis of Tensor
  Decompositions (arXiv:1311.3651); New Tools for Smoothed Analysis:
  Least Singular Value Bounds for Random Matrices with Dependent Entries
  (arXiv:2405.01517).
- Applicability to current branch: These sources motivate E0 normalized
  Gaussian concentration, Khatri--Rao identities, and product-polynomial
  small-ball calculations.  They do not provide the dynamic winner filter,
  persistence, or guarded GD theorem.
- Proof roadmap: transfer the base \(1/64\) margin to \(1/32\), map fresh
  Haar coordinates to weighted residual scores, and allocate the conditional
  probability only along successful tape prefixes.
- Key lemmas / ingredients: normalized Gaussian matrix concentration,
  Schur-product contraction, dependent low-degree small-ball bounds, and
  Khatri--Rao matricization.
- Main transfer challenges: static normalized factors must be mapped to the
  adaptive A/Q/U residual and the exact score convention.
- Potential repair techniques and supporting references: use current-object
  wrappers and separate instance/tape confidence budgets; the cited papers
  are supporting references only.
- Disposition: backup.
- Branch notes: no ALS conclusion is imported as GD authority.

### Framework 3: Balanced CP chart and exact local PL

- Source papers: Local Convergence of the Alternating Least Squares Algorithm
  for Canonical Tensor Approximation (DOI:10.1137/110843587);
  perspective_2/idea_1/technical_survey.md.
- Applicability to current branch: the cited ALS result motivates gauge,
  sign/permutation, and local CP nondegeneracy structure.  The branch proves
  its own protected GD chart after burn-in and pruning.
- Proof roadmap: use the signed cluster output to map to Z0, derive current
  Jacobian bounds on the full \(P^{-36}\) chart, expand
  \(R=-J_\star h-N\), derive \(\|J(h)^*R\|\) directly, and close first exit
  from the defined \(\eta_{\max}\) endpoint displacement and annular energy.
- Key lemmas / ingredients: balanced CP Jacobian, quotient gauge,
  \(\sigma_{\min}(J(h))\) and \(\|J(h)\|\) bounds, quadratic remainder,
  boundary energy, and Lipschitz-gradient descent.
- Main transfer challenges: historical B_disc may certify only entry; it
  cannot appear in the local recurrence.  The current Jacobian must act on
  the actual residual rather than an arbitrary ambient vector.
- Potential repair techniques and supporting references: direct residual
  algebra, the defined \(\eta_{\max}\) endpoint cap, and C0's
  \(1/(4L_{\max})\) feasibility bound.
- Disposition: backup.
- Branch notes: consumed only after L1/B0; no chart claim is fed backward to
  W0 or P0.

## Attempt-9 Source And Flow Map

\[
\mathrm{E0}\to\mathrm{Z0}\to\mathrm{C0}\to\mathrm{J0}
\to\mathrm{I0}\to\mathrm{clear\!-\!only}
\to\mathrm{reset}^{\mathrm{fresh}}\to\mathrm{W0}^{\mathrm{full\ score}}
\to\mathrm{P0}^{\mathrm{gap\ potential}}\to\mathrm{D0}
\to\mathrm{L1}\to\mathrm{B0}\to\mathrm{B1}\to\mathrm{R0}.
\]

- A Q-nonempty epoch is clear-only: the \(P^{103}\) queue time is shorter
  than the \(P^{114}\) seed-to-\(\theta\) time, so no promotion can qualify.
  The next reset restores an independent fresh block.
- W0 exports the exact full score
  \(S=\sum_{j\in U}z_j+\eta\), a signed cancellation window, a coordinate
  gap, and the all-candidate initial potential budget; it does not claim the
  global winner.
- P0 uses two-sided radial bounds to obtain
  \(B_{\mathrm{park}}\ge(20/3)\log P\), preserves an \(m_0/4\) purity target
  with gap-sensitive contraction, and filters every non-basin candidate
  before D0 applies the largest-score rule.
- The recursive tape event is a successful-prefix sequence with terminal
  unresolved-set exhaustion, so its query count is at most r.
- L1 uses the single scaled reserve
  \(\widetilde{\mathfrak B}=P^{12}\mathfrak B\) in both its recurrence and
  initial bound.
- B0 is the only consumer of historical event path; B1/R0 use the exact
  post-pruning objective.
- B1's PL source is the explicit adjoint residual identity and its first-exit
  source is the defined \(\eta_{\max}\) endpoint displacement plus an annular
  energy inequality.

The fixed public exponents remain
\(d_{\mathrm{step}}=42,d_{\mathrm{dec}}=18,d_{\mathrm{PL}}=24\),
polishing target \(P^{-154}\), chart radius \(P^{-36}\), and relative entry
residual \(P^{-62}\).  These are proposed derivation targets, not assumptions.

## Open Transfer Obligations

- Verify the heteroscedastic full residual-score/cancellation event at the
  independent reset, including all unresolved coordinates and the
  all-candidate W0-budget dichotomy.
- Verify the two-sided radial recurrence, the exact
  \(B_{\mathrm{park}}\ge(20/3)\log P\) lower bound, and the lead/chi
  constants through the first parking boundary.
- Verify the gap-sensitive initial-potential score/purity lemma for every
  candidate that can win the global score, including the clear-only time
  separation.
- Sum the full-score/purity recurrence with its \(m_0\)-scale margin through
  queued \(P^{103}\) maturation and target-scale polishing.
- Verify the conditioned cluster-to-balanced map and the
  \(\Psi_{\mathrm{pol}}\) to \(P^{-62}\) residual inequalities.
- Verify the current-Jacobian adjoint PL calculation, the explicit
  \(2\eta_{\max}P^8\le1/8\) scale check, and the annular first-exit bridge.

These are localized step obligations under the unchanged setting and are not
additional assumptions.
