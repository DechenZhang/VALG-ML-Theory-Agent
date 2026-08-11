# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization-landscape and gradient-trajectory
  analysis for asymmetric third-order CP least squares.
- Current idea: `perspective_2/idea_9`, sketch attempt 5.
- Setting / goal summary: Preserve the exact asymmetric CP objective,
  full-space transactional probes, J-aware Neumann ledger, finite tape,
  same-target balanced PL chart, and `k=Theta(r^(3/2)(log r)^2)`.  The repair
  adds a generated full-history source-normal exclusion bridge before the
  current-residual landscape step; no primitive assumption or algorithmic
  interface is changed.

## Candidate Frameworks

### Framework 1: J-aware resolvent with a source-normal triangular bridge

- Source papers: *Guarantees for Alternating Least Squares in Overparameterized
  Tensor Decompositions* (NeurIPS 2025, official proceedings page at
  https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html);
  *Beyond Lazy Training for Over-parameterized Tensor Decomposition*
  (arXiv:2010.11356); `perspective_2/idea_8/technical_survey.md`.
- Applicability to current branch: The cited works supply proof patterns for
  true-factor-span projection, Khatri--Rao conditioning, and control of
  components orthogonal to a source span.  Their procedures/objectives differ,
  so they are provenance only.  In current notation, the exact post-commit
  normal equation from the certificate has unit diagonal and off-diagonal
  coefficients equal to pair correlations of distinct matched slots.  The
  realized pair-Gram margin and `R-euc` make this triangular system a
  small-gain recurrence.  Projecting the residual onto the three full source
  spans leaves every `A_I` target-frame contraction unchanged exactly.
- Key lemmas / ingredients: pair-Khatri--Rao row sums; post-fit radial and
  angular residual identity; finite triangular Neumann inversion; projector
  telescoping for a rank-one slot; score/gradient/Hessian perturbation by a
  product-spectral residual; the existing J-aware absolute-Gram resolvent and
  rootwise global charge.
- Main transfer challenges: A cited ALS or symmetric-tensor theorem cannot be
  used as a wrapper for the current unprojected transaction.  The proof must
  derive the normal equations in the current asymmetric convention, retain the
  numerical forcing `e Lambda_nor`, and compare the resulting `B_perp` with
  both `P^(-D_cap/2)` and `P^(-D_gap)` rather than relying on a structural
  smallness statement.
- Potential repair techniques and supporting references: Use the exact
  contraction identity and the pair-Gram/Khatri--Rao conditioning ingredient
  highlighted by the NeurIPS 2025 baseline; use the source-span invariant
  decomposition described in arXiv:2010.11356 as a proof-organization guide,
  then verify every hypothesis and conclusion directly in the current setting.
- Proof roadmap: `step_001--002` derive source spans and pair gaps;
  `step_003` derives `Theta` and local `z`; `step_003b` derives
  `(SE-perp)` and `(SE-scale)` from prior accepted records;
  `step_004--005` prove projected/full landscape transfer and matching;
  `step_006--009` close J charges and the temporal induction; later steps
  retain the existing transaction, tape, chart, and rate modules.
- Disposition: selected.
- Branch notes: This is the smallest same-setting repair of the archived
  invisible rank-one certificate obstruction.  The source-normal forcing is
  numerical only; structural in-span history remains in the existing
  `A_I/Theta_I` interface.  The exact orthogonal/noiseless baseline gives a
  zero normal recurrence and is preserved.

### Framework 2: Full-product-sphere strict-saddle transfer

- Source papers: *Escaping From Saddle Points: Online Stochastic Gradient for
  Tensor Decomposition* (COLT 2015, arXiv:1503.02101);
  `perspective_2/idea_8/technical_survey.md`.
- Applicability to current branch: The product-sphere differential identities,
  two-sign negative-curvature escape, and Haar activation analysis are close
  to the transaction protocol.  The cited objective and symmetric setting do
  not provide the current residual or history bridge.
- Key lemmas / ingredients: exact radial root, mixed-support exchange
  direction, normalized angular Hessian, compact guard smoothness, and
  polynomial Haar anti-concentration.
- Main transfer challenges: Must consume `(SE-perp)` and the existing
  target-frame `Theta` interface; a generic strict-saddle citation cannot
  certify the current asymmetric CP objective or the rollback output.
- Potential repair techniques and supporting references: Direct current-
  notation product-sphere expansion, with the cited paper used only for the
  negative-curvature proof pattern.
- Proof roadmap: downstream `steps_004,010,011` after the selected bridge.
- Disposition: backup.
- Branch notes: Retained as a downstream framework, not a source of the
  generated history invariant.

### Framework 3: Same-target balanced PL refinement

- Source papers: *Local Convergence of the Alternating Least Squares Algorithm
  for Canonical Tensor Approximation* (DOI:10.1137/110843587);
  *On the Global Convergence of Alternating Least Squares for Tensor
  Approximation* (DOI:10.1007/s10589-022-00428-1).
- Applicability to current branch: These papers motivate quotient/gauge-aware
  local conditioning.  The branch uses a direct balanced-Jacobian derivation
  at the exact realized target, so no cited result is used as a theorem
  wrapper.
- Key lemmas / ingredients: pair/triple Khatri--Rao Gram lower bound, removal
  of continuous scaling by balance, Taylor sandwich, PL descent, and first-
  exit path control.
- Main transfer challenges: The actual generally nonorthogonal committed tuple
  must enter the exact target chart through `R-euc`; a projected or whitened
  surrogate is not acceptable.
- Potential repair techniques and supporting references: Direct current-
  notation Jacobian/Taylor calculation, retaining the cited ALS results only
  as local-conditioning provenance.
- Proof roadmap: `steps_013--016` after discovery.
- Disposition: backup.
- Branch notes: Unchanged from idea 8 and independent of the new source-normal
  bridge except through the all-commit output.

## Branch Notes

The selected framework repairs only the missing pre-landscape producer exposed
by `perspective_2/idea_9/proof_steps/step_004/review.md`.  It does not promote
the full-history bound, a good prefix, or a capture comparison to a primitive
assumption.  The exact target, objective, probabilities, rank, metric,
rollback protocol, and baseline specialization remain unchanged.
