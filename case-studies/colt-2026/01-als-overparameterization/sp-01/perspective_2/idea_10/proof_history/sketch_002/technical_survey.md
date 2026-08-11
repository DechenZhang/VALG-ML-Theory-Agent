# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization-landscape and gradient-trajectory
  analysis for asymmetric third-order CP least squares.
- Current idea: `perspective_2/idea_10`, initial proof-sketch attempt 1.
- Setting / goal summary: Preserve the exact asymmetric CP objective, the
  balanced full-space transactional procedure, the finite Haar tape, the
  J-aware Neumann ledger, the same-target balanced PL chart, and
  (k=\Theta(r^{3/2}\log^2 r)). Add only the observable commit-time
  protected-span pair-leverage screen `(Lev)`. Derive its raw matched-error
  controls and route every passing certificate to unresolved target mass,
  then close the honest diagonal/off-diagonal J ledger rootwise. The target is
  the unchanged `material_partial`, no-floor, arbitrary-relative-error theorem.

## Candidate Frameworks

### Framework 1: Residual-relative protected-span screening with a J-aware rootwise ledger

- Source papers: *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* (NeurIPS 2025, official
  proceedings page at
  https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html);
  *Beyond Lazy Training for Over-parameterized Tensor Decomposition*
  (arXiv:2010.11356); `perspective_2/idea_9/technical_survey.md`.
- Applicability to current branch: The cited work and prior survey provide
  proof patterns for true-factor-span projection, Khatri--Rao conditioning,
  full-space feature discovery/reinitialization, and the existing J-aware
  source/history analysis. They do not state the present theorem and are not
  wrappers: the observable leverage inequality, the same-target landscape
  route, the symmetric J transition, and the rootwise all-commit sum must be
  derived directly in the current asymmetric convention. The framework is
  close because it leaves the objective, directions, updates, and target
  unchanged; the protected-span projector is queried only by the screen.
- Proof roadmap:
  1. Derive the realized source event, absolute-Gram kernels, transfer gaps,
     statewise Neumann envelope, and guarded source-normal recurrence from the
     nine primitive assumptions and prior accepted-prefix records.
  2. Expand each protected tensor error exactly. Use target-factor proximity
     to the actual protected spans for the first-order pair-leverage bound and
     use quadratic error plus the raw source-normal recurrence for the
     higher-order bound. Prove `(Lev-route)` on both branches and prove that a
     genuine unresolved-atom neighborhood passes the observable screen.
  3. Feed only unresolved-mass dominance into the dual/current-frame
     singleton-or-structural-exchange landscape calculation; then produce
     matching, the exact J update, the two-label audit, the rootwise diagonal
     factorization, and the one-time global ledger before transaction and PL
     assembly.
- Key lemmas / ingredients: stable orthogonal projector onto actual protected
  directions; distance of a matched target factor to that span from `R-euc`;
  exact first-order/higher-order rank-one telescoping; guarded triangular
  source-normal solve; weighted unresolved-mass threshold lemma; biorthogonal
  source coordinates; exact product-sphere Hessian identity; zero-diagonal
  local `z`; rootwise Cauchy--Schwarz; nonnegative Neumann small gain; exact
  rollback; Haar anti-concentration; balanced-target Jacobian/Taylor PL.
- Main transfer challenges: The first-order leverage export must use at least
  two target-mode factors close to actual protected spans without assuming a
  generated span invariant. The higher-order and source-normal terms must stay
  raw when `nu_real` is tiny or zero. Passing `(Lev)` must imply unresolved
  mass in the exact current residual at the scale consumed by the angular
  landscape. The diagonal `J=I+H` terms must be summed over unresolved roots
  before any global label sum, and numerical padding may be counted only once.
- Potential repair techniques and supporting references:
  - Technique: derive source-span and protected-span relations separately,
    using exact tensor telescoping and a triangular normal solve.
  - Supporting reference: *Guarantees for Alternating Least Squares in
    Overparameterized Tensor Decompositions* (NeurIPS 2025), together with
    `perspective_2/idea_9/technical_survey.md`.
  - Why it may help: it supplies the Khatri--Rao/source-span proof pattern while
    leaving the observable protected-span test and its target-side residual
    comparison to a direct current-notation derivation.
  - Technique: retain the exact `J=I+H` diagonal and factor the diagonal
    charge rootwise before summing commits.
  - Supporting reference: `perspective_2/idea_9/technical_survey.md` and the
    branch-local J-aware constructions preserved in `perspective_2/idea_10/setting.md`.
  - Why it may help: it prevents both the lost captured-label term and the
    extra tested-label/commit multiplier exposed by earlier branches.
- Disposition: `selected`.
- Branch notes: This framework removes the exhausted matched-mixture exchange
  producer identified by `perspective_2/idea_9/proof_sketch_review.md`. It
  does not assume exchange, generated matching, screen passage, rowwise
  boundedness, or a lower bound on `nu_real`. The exact orthogonal/noiseless
  baseline has zero actual projector leverage for unresolved atoms, passes the
  conservatively padded screen, and has a zero structural ledger.

### Framework 2: Full-product-sphere strict-saddle transfer

- Source papers: *Escaping From Saddle Points: Online Stochastic Gradient for
  Tensor Decomposition* (COLT 2015, arXiv:1503.02101);
  `perspective_2/idea_9/technical_survey.md`.
- Applicability to current branch: Product-sphere differential identities,
  two-sign negative-curvature escape, and Haar activation fit the transaction
  protocol. The cited symmetric objective does not provide the current
  residual/history or leverage bridge, so this framework is only a downstream
  tool after `(Lev-route)`.
- Proof roadmap:
  1. Consume the selected framework's unresolved-mass output.
  2. Enumerate normalized same-target single-label and pair tangents.
  3. Transfer the resulting certificate/curvature alternative to transaction
     reachability and exact rollback.
- Key lemmas / ingredients: radial root, normalized angular Hessian,
  finite sign-safe tangent family, compact-guard smoothness, and Haar
  anti-concentration.
- Main transfer challenges: A generic strict-saddle statement cannot certify
  the asymmetric current-residual objective or the screen. Every tangent and
  threshold must be checked in the current metric after the raw leverage
  residual terms are dominated.
- Potential repair techniques and supporting references:
  - Technique: direct current-notation product-sphere expansion.
  - Supporting reference: arXiv:1503.02101.
  - Why it may help: it supplies a proof pattern for the negative-curvature
    escape module without becoming a source for the leverage route.
- Disposition: `backup`.
- Branch notes: Retained only for the conditional landscape and transaction
  modules; it is not a source of prefix invariants or target labels.

### Framework 3: Same-target balanced PL refinement

- Source papers: *Local Convergence of the Alternating Least Squares
  Algorithm for Canonical Tensor Approximation* (DOI:10.1137/110843587);
  *On the Global Convergence of Alternating Least Squares for Tensor
  Approximation* (DOI:10.1007/s10589-022-00428-1).
- Applicability to current branch: These papers motivate quotient/gauge-aware
  local conditioning. The branch must use a direct balanced-Jacobian
  derivation at the exact realized target, because its terminal procedure is
  joint balanced gradient descent rather than ALS.
- Proof roadmap:
  1. Prove pair/triple Khatri--Rao conditioning of the exact target Jacobian.
  2. Establish an inverse-polynomial same-target PL chart and factor-distance
     entry from the all-commit `R-euc` records.
  3. Use exact-loss Armijo descent, a first-exit path bound, and a public rate
     specialization to reach arbitrary relative error.
- Key lemmas / ingredients: removal of continuous scaling by balance,
  Jacobian lower bound, Taylor sandwich, PL descent, and first-exit control.
- Main transfer challenges: The actual generally nonorthogonal tuple must
  enter the exact target orbit in full-state Euclidean factor distance. The
  tensor ledger cannot be silently recast as a factor-distance bound.
- Potential repair techniques and supporting references:
  - Technique: direct target-Jacobian/Taylor calculation with an explicit
    weight-scaled radius.
  - Supporting reference: DOI:10.1137/110843587 and
    DOI:10.1007/s10589-022-00428-1.
  - Why it may help: it organizes the local conditioning argument while the
    current proof verifies the exact procedure and metric itself.
- Disposition: `backup`.
- Branch notes: This terminal module is unchanged by the leverage screen and
  depends only on the generated all-commit tuple and exact target geometry.

## Branch Notes

The selected framework is the smallest target-preserving change from idea 9:
one observable screen and a direct residual-relative bridge replace the sole
unsupported exchange producer. No literature result is used as a theorem
wrapper. The exact objective, primitive source class, rank, full-space
procedure, separate probabilities, runtime, rollback, same-target endpoint,
and no-floor baseline remain binding.
