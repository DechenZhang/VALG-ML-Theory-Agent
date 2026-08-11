# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization landscape and gradient trajectory
  analysis for asymmetric third-order CP least squares.
- Current idea: perspective_2/idea_3, sketch attempt 8.
- Setting / goal summary: Exact homogeneous asymmetric CP least squares with
  \(k=\lceil C_{\mathrm{rank}}r^{3/2}(\log r)^2\rceil\), one finite Haar tape,
  guarded Armijo trials, one-time project-and-park transitions, residual-score
  promotion, finite resets, and protected-only no-floor refinement.
- Repair context: attempt-4 review rejected an l1-dominant random cone as
  exponentially unlikely in the orthogonal equal-weight case.  Attempts 5-7
  replaced it with a mild signed largest-coordinate gap, but exposed queued
  conditioning and pre-parking-time gaps.  Attempt 8 clears the queued
  residual before the fresh query, uses a heteroscedastic product-normal
  wrapper, adds two-sided radial bounds and a score-barrier filter, and
  derives the adjoint-Jacobian PL and accepted-step annular bridge explicitly.

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
  largest-coordinate gap
  \[
  z_{ij}\ge q_0,\qquad
  z_{ij}\ge(1+m_0)\max_{\ell\ne j}|z_{i\ell}|,\qquad
  m_0=(8\log(2r))^{-1},
  \]
  with aggregate competitor ratio at most \(C\sqrt r\).  A deterministic
  winner-take-all recurrence then contracts this ratio during the \(H\)
  updates.  It does not ask one product-normal coordinate to dominate an
  l1 sum of \(r-1\) coordinates.
- Proof roadmap:
  1. Derive E0/Z0 and the guarded raw/retained-state C0 reserve.
  2. Prove a direct product-normal order-statistic lemma for the mild signed
     gap and score floor, with block failure at most \(r^{-24}\).
  3. Clear a queued target for at most \(P^{103}\) steps, couple the
     probationary directions back to their independent Haar seeds, and prove
     the weighted mild-gap probability uniformly over \(\tau\)-imbalance.
  4. Define successful tape prefixes with terminal unresolved-target
     exhaustion; only those prefixes are unioned, so at most r fresh blocks
     are queried.
  5. Starting from the actual W0 outputs
     \(\Gamma_0\ge1\), \(\chi_0\le C\sqrt r\), prove matching radial bounds,
     \(B_{\mathrm{park}}\ge(20/3)\log P\), the lead/chi recurrence, and
     \(P^{103}\) queued maturation.
  6. Prove the score-barrier dichotomy for every probationary candidate:
     a non-basin candidate has boundary score at most \(3q_0/8\), while the
     amplified basin candidate reaches \(q_0\).  This supplies the
     global-largest-score interface to D0.
  7. Iterate the physical Q/U transition, use one scaled event reserve, and
     polish the protected clusters to \(\Psi_{\mathrm{pol}}\le
     \|T\|_F^2P^{-154}\).
  8. Transfer Psi to balanced coordinates and residual, then prove PL from
     \(J(h)^*[-J_\star h-N(h)]\) and use the generated accepted-step cap with
     annular displacement to rule out discrete first exit.
- Key lemmas / ingredients: polynomial guarded smoothness; homogeneous
  two-sided radial/angular identities; heteroscedastic product-normal
  largest-coordinate order statistics after queued clearing; signed
  winner-take-all and score-barrier recurrences; deferred-decision coupling;
  Schur-product Khatri--Rao conditioning; a physical Q/U target-error
  functional; a scaled retained-state loss reserve; and balanced Jacobian
  residual algebra.
- Main transfer challenges: The queued-clear coupling must preserve the
  weighted fresh-gap probability under adaptive directions.  The mild
  coordinate gap must then be converted into a positive signed residual lead,
  amplified through a two-sided pre-parking time, and separated from every
  mixed candidate by the score barrier.  The protected PL proof must control
  the adjoint on the actual residual and use an accepted-step displacement
  bound, not an unsupported partial-path premise.
- Potential repair techniques and supporting references:
  - Technique: normalize weighted product coordinates by the largest
    coordinate and use an \(m_0=1/(8\log r)\) gap.
  - Supporting reference: direct product-normal density/order-statistic
    calculation; no external theorem is imported.
  - Why it may help: in the orthogonal equal-weight case the event has
    probability of order \(1/(r\log r)\), unlike constant l1 domination.
  - Technique: use a coupled signed-lead/competitor recurrence with
    integrated pre-parking angular gain \(B_{\mathrm{park}}\) and matching
    radial upper/lower bounds.
  - Supporting reference: homogeneous radial/angular identities motivated by
    arXiv:2010.11356.
  - Why it may help: an \(O(\sqrt r)\) initial competitor ratio contracts to
    \(P^{-4}\) before the fixed parking boundary, without using post-promotion
    target-scale updates.
  - Technique: clear the queued target before the fresh query and use a
    deferred-decision coupling for the probationary directions.
  - Supporting reference: direct filtration/coupling calculation in the
    current Haar-tape protocol; no external theorem is imported.
  - Why it may help: it removes the large queued projection from the
    product-normal small-ball event while preserving one-tape independence up
    to a \(P^{-40}\) error.
  - Technique: define a mixedness potential and prove a score-barrier
    recurrence for all candidates outside the target basin.
  - Supporting reference: direct balanced CP Gram expansion in the current
    notation.
  - Why it may help: it turns existence of one mild-gap block into the
    all-candidate interface required by the largest-score promotion rule.
  - Technique: derive PL through
    \[
    \nabla F=-J(h)^*R(h),\qquad R(h)=-J_\star h-N(h),
    \]
    and use an accepted-step cap plus annular energy bridge.
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
  by the accepted-step cap and annular displacement.
- Key lemmas / ingredients: balanced CP Jacobian, quotient gauge,
  \(\sigma_{\min}(J(h))\) and \(\|J(h)\|\) bounds, quadratic remainder,
  boundary energy, and Lipschitz-gradient descent.
- Main transfer challenges: historical B_disc may certify only entry; it
  cannot appear in the local recurrence.  The current Jacobian must act on
  the actual residual rather than an arbitrary ambient vector.
- Potential repair techniques and supporting references: direct residual
  algebra, the generated \(\eta_{\max}\) step cap, and C0's
  \(1/(4L_{\max})\) feasibility bound.
- Disposition: backup.
- Branch notes: consumed only after L1/B0; no chart claim is fed backward to
  W0 or P0.

## Attempt-8 Source And Flow Map

\[
\mathrm{E0}\to\mathrm{Z0}\to\mathrm{C0}\to\mathrm{J0}
\to\mathrm{I0}\to\mathrm{Q\!-\!clear}
\to\mathrm{W0}^{\mathrm{weighted\ fresh}}
\to\mathrm{P0}^{\mathrm{radial/filter}}\to\mathrm{D0}
\to\mathrm{L1}\to\mathrm{B0}\to\mathrm{B1}\to\mathrm{R0}.
\]

- Q-clear removes the queued residual to \(P^{-40}\) target units and couples
  the probationary direction to its independent Haar seed at \(P^{-40}\)
  total variation cost.
- W0 exports only a weighted mild fresh gap, positive sign, score floor, and
  \(\chi_0\le C\sqrt r\); it does not claim the global winner.
- P0 uses two-sided radial bounds to obtain
  \(B_{\mathrm{park}}\ge(20/3)\log P\), contracts \(\chi\) to \(P^{-4}\),
  preserves the signed lead, and filters every non-basin candidate before D0
  applies the largest-score rule.
- The recursive tape event is a successful-prefix sequence with terminal
  unresolved-set exhaustion, so its query count is at most r.
- L1 uses the single scaled reserve
  \(\widetilde{\mathfrak B}=P^{12}\mathfrak B\) in both its recurrence and
  initial bound.
- B0 is the only consumer of historical event path; B1/R0 use the exact
  post-pruning objective.
- B1's PL source is the explicit adjoint residual identity and its first-exit
  source is the generated accepted-step cap plus an annular energy inequality.

The fixed public exponents remain
\(d_{\mathrm{step}}=42,d_{\mathrm{dec}}=18,d_{\mathrm{PL}}=24\),
polishing target \(P^{-154}\), chart radius \(P^{-36}\), and relative entry
residual \(P^{-62}\).  These are proposed derivation targets, not assumptions.

## Open Transfer Obligations

- Verify the heteroscedastic weighted product-normal gap and score-floor
  calculation after queued clearing, including the deferred-decision
  \(P^{-40}\) coupling cost.
- Verify the two-sided radial recurrence, the exact
  \(B_{\mathrm{park}}\ge(20/3)\log P\) lower bound, and the lead/chi
  constants through the first parking boundary.
- Verify the deterministic mixedness score-barrier lemma for every candidate
  that can win the global score.
- Sum the lead/chi recurrence with \(\Gamma_0,\chi_0\) exactly as exported by
  W0, through queued \(P^{103}\) maturation and target-scale polishing.
- Verify the conditioned cluster-to-balanced map and the
  \(\Psi_{\mathrm{pol}}\) to \(P^{-62}\) residual inequalities.
- Verify the current-Jacobian adjoint PL calculation, the generated
  accepted-step cap, and the annular first-exit bridge.

These are localized step obligations under the unchanged setting and are not
additional assumptions.
