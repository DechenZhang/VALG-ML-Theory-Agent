# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization-landscape and gradient-trajectory
  analysis for asymmetric third-order CP least squares.
- Current idea: `perspective_2/idea_8`, sketch attempt 1. The branch replaces
  idea 7's false H-only tested-label history charge by a symmetric
  diagonal-aware `J = I + H` charge and adds a rootwise block-l2 Neumann
  profile before global accumulation.
- Setting / goal summary: Under the nine primitive assumptions in
  `setting.md`, prove a material-partial theorem at
  `k = Theta(r^(3/2) (log r)^2) = o(r^2)`. The theorem must derive the
  once-drawn instance event, actual-history resolvent, all-commit invariant,
  full-space transactional reachability, separate tape probability,
  same-target local PL entry, polynomial work, and arbitrary relative
  Frobenius accuracy without an additive floor.

## Candidate Frameworks

### Framework 1: J-aware absolute-Gram resolvent with rootwise block control

- Source papers: *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* (NeurIPS 2025,
  https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html);
  *Beyond Lazy Training for Over-parameterized Tensor Decomposition*
  (arXiv:2010.11356); `perspective_2/idea_7/technical_survey.md`;
  `perspective_2/idea_7/proof_sketch_review.md`.
- Applicability to current branch: The static absolute-Gram and Neumann
  prefix is unchanged from idea 7. The new `J` factor occurs only in the
  tested mode and in both the positive product and exact-target baseline, so
  it restores the identity at `ell = p` without adding an off-diagonal
  `O(h^2)` charge. For a fixed unresolved root, the displayed transfer is a
  three-mode block operator; its mode adjacency has norm 2, each diagonal
  coefficient is at most `nu_real + eta_0`, and each restricted `J_M` has
  l2 operator norm at most `1 + sqrt(r) nu_real`. This supplies the proposed
  rootwise contraction from the existing Gram margin rather than from a new
  trajectory assumption.
- Proof roadmap:
  1. Derive the realized event, H/J/K row and column profiles, static source,
     and both l1 and rootwise-l2 transfer gaps.
  2. Prove conditional current-residual isolation and exact certificate
     matching from the statewise Neumann envelope.
  3. Expand a committed error exactly, retain the diagonal identity through
     the symmetric J baseline, derive a rootwise z profile, and factor each
     per-label charge into l2 inner products.
  4. Close the base/transition induction and sum each captured label once to
     obtain `O(r nu_real^3 + r^2 P^(-D_stat))` without an extra root or label
     factor.
  5. Use the resulting invariant for full-Haar transaction reachability,
     finite-tape amplification, same-target chart entry, and no-floor PL
     refinement.
- Key lemmas / ingredients: Gaussian norm and Gram concentration; rowwise
  Cauchy--Schwarz for Hadamard kernels; nonnegative Neumann inversion in l1
  and rootwise block-l2; exact signed multilinear product expansion;
  `1-<u,m> = ||u-m||^2/2` after sign alignment; factorized all-root charge
  summation; strict-saddle analysis of the current residual on the full
  product sphere; and direct balanced-Jacobian coercivity near the exact
  target.
- Main transfer challenges: The source papers do not state the branch's
  transactional theorem, J-aware history recurrence, or same-target PL
  bridge. The proof must therefore derive these in current notation. The
  decisive quantitative risk is that an entrywise estimate would yield
  `O(r^(3/2) nu^3)`; the proof must use the generated rootwise l2 profile and
  factor the `j` and `ell` sums. The zero diagonal of z also requires a
  separate normalization identity at `ell = p`, not hidden numerical
  padding.
- Potential repair techniques and supporting references:
  - Technique: Calibrate `C_eta`, `C_0`, and `C_num` so the certificate lemma
    exports `|delta_p| <= eta_0`, off-diagonal correlation errors at most z,
    and diagonal loss at most `||e_{p,M}||^2/2 <= eta_0`.
  - Supporting reference: `perspective_2/idea_7/proof_sketch_review.md`,
    especially the exact two-label first-transition calculation.
  - Why it may help: It turns the prior counterexample into the leading
    `eta_0 h^2` term of `(J-diag)` while preserving the zero-diagonal stored
    profile and exact baseline cancellation.
- Disposition: `selected`
- Branch notes: The framework is selected because its static prefix has
  traceable lineage and the new dynamic mechanism passes the orthogonal,
  two-label, three-label-chain, longer-chain, and dense/block algebraic
  preflight. These checks are viability evidence only; the branch still
  requires direct proofs of certificate isolation, transaction reachability,
  and terminal local geometry.

### Framework 2: Full-product-sphere strict-saddle transaction analysis

- Source papers: *Beyond Lazy Training for Over-parameterized Tensor
  Decomposition* (arXiv:2010.11356);
  `perspective_2/idea_7/technical_survey.md`.
- Applicability to current branch: A direct score-coordinate analysis of an
  orthogonally decomposable tensor, followed by perturbation through the
  derived current-residual ledger, is compatible with full-space Haar seeds,
  angular-only Hessian testing, radial re-bracketing, and unprojected
  retractions. It cannot by itself produce the history invariant.
- Proof roadmap:
  1. Prove a quantified critical-point dichotomy for the radially reduced
     score on the product sphere.
  2. Transfer the dichotomy to every generated residual using the static and
     accepted-history error budgets.
  3. Combine inverse-polynomial derivative bounds, Armijo decrease,
     two-sign negative-curvature escape, and seed anti-concentration to reach
     an unresolved certificate with inverse-polynomial probability.
- Key lemmas / ingredients: Orthogonal tensor critical-point equations,
  perturbative Hessian separation, compact guard derivative bounds,
  approximate minimum-eigenvector descent, and Haar anti-concentration.
- Main transfer challenges: The analysis must remain uniform over protected
  histories and must show that matched-label basins rejected by separation
  leave at least inverse-polynomial mass for unresolved labels. Generic
  strict-saddle citations are motivational only because they do not match
  the exact radial/angular protocol or its rollback output.
- Potential repair techniques and supporting references:
  - Technique: Prove the required current-notation dichotomy and basin-volume
    lower bound directly, using the generated residual decomposition from
    Framework 1.
  - Supporting reference: `perspective_2/idea_7/technical_survey.md`.
  - Why it may help: It avoids a source-convention mismatch between a generic
    perturbed-gradient theorem and the branch's exact full-space transaction.
- Disposition: `backup`
- Branch notes: This is a downstream module of the selected framework, not a
  substitute for the J-aware recurrence.

### Framework 3: Direct same-target balanced PL refinement

- Source papers: *Local Convergence of the Alternating Least Squares
  Algorithm for Canonical Tensor Approximation*
  (DOI:10.1137/110843587); *On Global Convergence of Alternating Least
  Squares for Tensor Approximation* (DOI:10.1007/s10589-022-00428-1);
  `perspective_2/idea_5/technical_survey.md`.
- Applicability to current branch: Pair/triple Khatri--Rao conditioning and
  balancing plausibly make the exact CP Jacobian injective on the balanced
  active-slot manifold. A direct Taylor argument can then provide a positive
  PL radius and constant around the actual nonorthogonal target orbit. The
  ALS papers motivate local conditioning but do not directly prove the
  branch's gradient/Armijo claim.
- Proof roadmap:
  1. Lower-bound the exact balanced CP Jacobian at the realized target.
  2. Control Jacobian variation in an inverse-polynomial Euclidean factor
     chart and derive PL.
  3. Transfer the actual all-commit tuple, without orthogonalization, into
     that chart and prove first-exit invariance and geometric loss decay.
- Key lemmas / ingredients: Gauge-fixed Jacobian injectivity,
  Khatri--Rao-Gram bounds, finite-orbit alignment, Taylor remainder control,
  Armijo decrease, and path-length control.
- Main transfer challenges: The module is conditional until the discovery
  proof exports the actual committed tuple with a factor-distance error
  smaller than the derived chart radius. It must not substitute a whitened
  or orthogonal reference.
- Potential repair techniques and supporting references:
  - Technique: Use a direct current-notation Jacobian proof and treat the ALS
    results as motivation rather than as theorem-critical wrappers.
  - Supporting reference: `perspective_2/idea_5/technical_survey.md`.
  - Why it may help: It keeps source convention, metric, algorithm, and target
    object identical to the formalized goal.
- Disposition: `backup`
- Branch notes: Reused only after the selected discovery framework produces
  all distinct labels and the quantitative same-target entry bound.

## Attempt-1 Disposition

The static J-aware resolvent and rootwise block-l2 framework is reusable, but
no unconditional end-to-end roadmap is selected for the current formalized
setting. The required uniform `(J-two-label)` upper is contradicted by the
allowed `h=P^(-2D_stat)` first-transition family because additive numerical z
padding contributes an `h P^(-D_stat)` term. The smallest repair is upstream:
replace the local audit by the honest `O(h^4+P^(-D_stat)h+P^(-2D_stat))`
bound (or an equivalent charge definition), while preserving the global
`O(r nu_real^3+r^2P^(-D_stat))` ledger. Adding a new lower bound on h is not
selected because it narrows the source class.
