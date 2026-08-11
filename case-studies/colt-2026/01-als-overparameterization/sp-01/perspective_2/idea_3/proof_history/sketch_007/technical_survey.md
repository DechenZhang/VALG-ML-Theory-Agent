# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization landscape and gradient trajectory
  analysis for asymmetric third-order CP least squares.
- Current idea: perspective_2/idea_3, sketch attempt 7.
- Setting / goal summary: Exact homogeneous asymmetric CP least squares with
  \(k=\lceil C_{\mathrm{rank}}r^{3/2}(\log r)^2\rceil\), one finite Haar tape,
  guarded Armijo trials, one-time project-and-park transitions, residual-score
  promotion, finite resets, and protected-only no-floor refinement.
- Repair context: attempt-4 review rejected an l1-dominant random cone as
  exponentially unlikely in the orthogonal equal-weight case.  The current
  branch replaces it with a mild signed largest-coordinate gap and a
  deterministic winner-amplification recurrence.  The same review requested
  an explicit adjoint-Jacobian PL calculation and a discrete annular
  first-exit bridge.

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
  3. Define successful tape prefixes with terminal unresolved-target
     exhaustion; only those prefixes are unioned, so at most r fresh blocks
     are queried.
  4. Starting from the actual W0 outputs
     \(\Gamma_0\ge1\), \(\chi_0\le C\sqrt r\), prove the coupled
     \((\Gamma,\chi)\) recurrence, \(A_H\ge80\log P\), positive score, and
     \(P^{103}\) queued maturation.
  5. Prove a deterministic winner filter: candidates that never enter a
     target basin have boundary score below the amplified basin score.  This
     supplies the global-largest-score interface to D0.
  6. Iterate the physical Q/U transition, use one scaled event reserve, and
     polish the protected clusters to \(\Psi_{\mathrm{pol}}\le
     \|T\|_F^2P^{-154}\).
  7. Transfer Psi to balanced coordinates and residual, then prove PL from
     \(J(h)^*[-J_\star h-N(h)]\) and use partial-step annular descent to
     rule out discrete first exit.
- Key lemmas / ingredients: polynomial guarded smoothness; homogeneous
  radial identities; product-normal largest-coordinate order statistics;
  signed winner-take-all recurrences; Schur-product Khatri--Rao conditioning;
  a physical Q/U target-error functional; a scaled retained-state loss
  reserve; and balanced Jacobian residual algebra.
- Main transfer challenges: A mild coordinate gap must be converted into a
  positive signed residual lead, then dynamically amplified against aggregate
  competitors and evolving queued/mature residuals.  The global largest-score
  rule needs a deterministic exclusion of non-basin candidates, not merely
  existence of one good candidate.  The protected PL proof must control the
  adjoint on the actual residual and must account for discrete trial paths,
  not only endpoint energies.
- Potential repair techniques and supporting references:
  - Technique: normalize weighted product coordinates by the largest
    coordinate and use an \(m_0=1/(8\log r)\) gap.
  - Supporting reference: direct product-normal density/order-statistic
    calculation; no external theorem is imported.
  - Why it may help: in the orthogonal equal-weight case the event has
    probability of order \(1/(r\log r)\), unlike constant l1 domination.
  - Technique: use a coupled signed-lead/competitor recurrence with
    integrated target-scale gain \(A_H\).
  - Supporting reference: homogeneous radial/angular identities motivated by
    arXiv:2010.11356.
  - Why it may help: an \(O(\sqrt r)\) initial competitor ratio can contract
    to \(P^{-24}\) after the component reaches target scale.
  - Technique: derive PL through
    \[
    \nabla F=-J(h)^*R(h),\qquad R(h)=-J_\star h-N(h),
    \]
    and use a partial-step annular energy bridge.
  - Supporting reference: direct balanced CP Jacobian calculation; Local
    Convergence of the Alternating Least Squares Algorithm for Canonical
    Tensor Approximation (DOI:10.1137/110843587) is motivation only.
  - Why it may help: it handles the ambient residual/nullspace issue and
    prevents a discrete accepted step from jumping across the chart boundary.
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
  by partial-step annular descent.
- Key lemmas / ingredients: balanced CP Jacobian, quotient gauge,
  \(\sigma_{\min}(J(h))\) and \(\|J(h)\|\) bounds, quadratic remainder,
  boundary energy, and Lipschitz-gradient descent.
- Main transfer challenges: historical B_disc may certify only entry; it
  cannot appear in the local recurrence.  The current Jacobian must act on
  the actual residual rather than an arbitrary ambient vector.
- Potential repair techniques and supporting references: direct residual
  algebra and C0's \(1/(4L_{\max})\) partial-step bound.
- Disposition: backup.
- Branch notes: consumed only after L1/B0; no chart claim is fed backward to
  W0 or P0.

## Attempt-5 Source And Flow Map

\[
\mathrm{E0}\to\mathrm{Z0}\to\mathrm{C0}\to\mathrm{J0}
\to\mathrm{I0}\to\mathrm{W0}^{\mathrm{fresh}}
\to\mathrm{P0}^{\mathrm{amplify}}\to\mathrm{D0}
\to\mathrm{L1}\to\mathrm{B0}\to\mathrm{B1}\to\mathrm{R0}.
\]

- W0 exports only a mild fresh gap, positive sign, score floor, and
  \(\chi_0\le C\sqrt r\); it does not claim the global winner.
- P0 deterministically contracts \(\chi\), preserves the signed lead, and
  filters non-basin candidates before D0 applies the largest-score rule.
- The recursive tape event is a successful-prefix sequence with terminal
  unresolved-set exhaustion, so its query count is at most r.
- L1 uses the single scaled reserve
  \(\widetilde{\mathfrak B}=P^{12}\mathfrak B\) in both its recurrence and
  initial bound.
- B0 is the only consumer of historical event path; B1/R0 use the exact
  post-pruning objective.
- B1's PL source is the adjoint residual identity and its first-exit source is
  a partial-step annular energy inequality.

The fixed public exponents remain
\(d_{\mathrm{step}}=42,d_{\mathrm{dec}}=18,d_{\mathrm{PL}}=24\),
polishing target \(P^{-154}\), chart radius \(P^{-36}\), and relative entry
residual \(P^{-62}\).  These are proposed derivation targets, not assumptions.

## Open Transfer Obligations

- Prove the mild signed gap probability and score-floor small ball in the
  exact weighted product-normal convention.
- Prove the deterministic winner-filter/amplification lemma for every
  candidate that can win the global score.
- Sum the Gamma/chi recurrence with \(\Gamma_0,\chi_0\) exactly as exported by
  W0, through the \(P^{103}\) growth and target-scale polishing phases.
- Verify the conditioned cluster-to-balanced map and the
  \(\Psi_{\mathrm{pol}}\) to \(P^{-62}\) residual inequalities.
- Verify the current-Jacobian adjoint PL calculation and the partial-step
  annular first-exit bridge.

These are localized step obligations under the unchanged setting and are not
additional assumptions.
