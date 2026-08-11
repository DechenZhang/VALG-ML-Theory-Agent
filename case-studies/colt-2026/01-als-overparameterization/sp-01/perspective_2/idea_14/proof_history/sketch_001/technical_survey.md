# Technical Survey

## Current Idea Branch

- Perspective: `perspective_2` (optimization-landscape view of asymmetric CP least squares)
- Current idea: `idea_14` (public block-local exact-loss transactions with a scale-local gate)
- Setting / goal summary: public disjoint (d=\Theta(\log r)) blocks, unknown mode permutations, small Gaussian leakage, exact balanced CP loss, finite block restart tape, (k=\Theta(r^{3/2}\log^2 r)), and a same-target relative-Frobenius endpoint with the exact `rho=0` baseline.

## Candidate Frameworks

### Framework 1: Exact restricted rank-one transaction plus balanced Armijo

- Source papers: *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions*; *Escaping From Saddle Points: Online Stochastic Gradient for Tensor Decomposition* (COLT 2015)
- Applicability to current branch: The parent works motivate rank-one activation, strict-saddle escape, and Armijo-style descent.  The current branch restricts the scratch factors to a public (d)-block and evaluates the exact CP loss, so the angular probability is polynomial in (r) rather than in ambient (n).  The transaction gate and rollback are new branch-local interfaces.
- Proof roadmap:
  1. Expand the exact restricted loss around a rank-one principal block plus leakage and bound its block-scale Hessian.
  2. Use a (d)-dimensional angular cap and a radial solve from (g=\delta) to obtain a candidate with a polynomial restart mass and explicit local decrease.
  3. Use disjoint-support ledger bookkeeping to enter a balanced chart for the exact realized target, then integrate the local PL/Armijo recurrence.
- Key lemmas / ingredients: rank-one tensor gradient identities; sphere-cap volume in dimension (d); dyadic Armijo decrease under a local Hessian bound; balanced chart/Jacobian perturbation; finite objective telescope.
- Main transfer challenges: proving the candidate-relative gate from the exact loss rather than a block surrogate; controlling projected-to-realized target error; keeping the restart mass independent of (n); handling all (r^3) triples and rollback prefixes.
- Potential repair techniques and supporting references:
  - Technique: local rank-one perturbation and strict-saddle decomposition on the block product sphere.
  - Supporting reference: *Escaping From Saddle Points: Online Stochastic Gradient for Tensor Decomposition* (COLT 2015).
  - Why it may help: the source supplies the rank-one activation pattern; direct differentiation in the present block coordinates supplies the missing exact-loss and scale-local details.
- Disposition: `selected`
- Branch notes: This is the only framework that directly matches the approved public-block/local-transaction contract and its `rho=0` specialization.

### Framework 2: Candidate-relative resolvent/capture ledger

- Source papers: `perspective_2/idea_13/technical_survey.md`; *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions*
- Applicability to current branch: A candidate-relative ledger is useful for accumulating finite transaction errors, but the present public disjoint blocks make a resolvent unnecessary for activation.  It is retained as a backup if candidate errors couple after release.
- Proof roadmap:
  1. Define a residual-to-target operator for each accepted block candidate.
  2. Charge the candidate error to the exact objective decrease and telescope over at most (r) commits.
  3. Convert the resulting raw ledger to the balanced target chart.
- Key lemmas / ingredients: finite-rank perturbation bounds, objective telescoping, typed prefix transitions, and target-orbit matching.
- Main transfer challenges: no surrogate operator may replace the exact loss; any resolvent must preserve the full-target Frobenius metric.
- Potential repair techniques and supporting references:
  - Technique: split raw projected-atom error from Gaussian leakage before any norm simplification.
  - Supporting reference: `perspective_2/idea_13/proof_sketch.md`.
  - Why it may help: it records an explicit residual-to-target bridge and finite-prefix charge discipline.
- Disposition: `backup`
- Branch notes: Use only if the direct disjoint-support ledger in Framework 1 is insufficient; it must not introduce a new algorithmic input.

### Framework 3: Direct balanced CP local-PL chart

- Source papers: `perspective_2/idea_13/proof_sketch.md`; *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions*
- Applicability to current branch: Once one representative per matching block is available, the realized factors are a small perturbation of a block-orthogonal target.  A direct balanced Jacobian calculation can therefore produce a same-target chart without assuming chart membership.  This framework is terminal-only and does not solve activation.
- Proof roadmap:
  1. Lower-bound the target Jacobian/Gram margin from the generated block and Gaussian reserves.
  2. Transfer released-slot distance to the exact target orbit and define \(\varrho_{\rm PL}\).
  3. Apply balanced Armijo descent until the relative residual target is met.
- Key lemmas / ingredients: balanced gauge normalization, target-orbit quotient, Jacobian singular-value continuity, local PL inequality, Armijo integration.
- Main transfer challenges: the produced block-projected factors are not the final realized factors; the leakage residual must be dominated at the chart scale, and exact rho=0 behavior must remain visible.
- Potential repair techniques and supporting references:
  - Technique: two-bracket projected-to-realized residual decomposition.
  - Supporting reference: `perspective_2/idea_13/proof_sketch.md`.
  - Why it may help: it keeps surrogate-to-target residuals explicit rather than treating the projected tensor as the theorem target.
- Disposition: `backup`
- Branch notes: This framework is used as the terminal block of the selected roadmap, but its activation claims are not imported.
