# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization landscape and full-space
  gradient trajectories for asymmetric third-order CP least squares.
- Current idea: `perspective_2/idea_12`, sketch attempt 5 (revise_sketch).
- Setting / goal summary: Preserve the exact asymmetric CP objective,
  Gaussian-smoothed two-mode-orthogonal source, target-blind full-space
  transaction, finite Haar tape, subquadratic rank, separate instance/tape
  probabilities, and same-target balanced PL endpoint.  Replace the failed
  fixed numerical padding by the accepted candidate's zero-safe residual-relative
  `e_I(q)` source and retain a raw J-aware capture ledger.

## Candidate Frameworks

### Framework 1: Candidate-relative transfer resolvent and rootwise capture ledger

- Source papers: *Guarantees for Alternating Least Squares in Overparameterized
  Tensor Decompositions* (NeurIPS 2025, proceedings hash
  `70791f20a907b7f7cb2ad8ade32486b2`); *Orthogonalized ALS: A Theoretically
  Principled Tensor Decomposition Algorithm for Practical Use*; and the
  prior same-perspective artifact `perspective_2/idea_10/technical_survey.md`.
- Applicability to current branch: The sources provide Khatri--Rao/Gram
  conditioning, balanced tensor coordinates, and finite discovery/PL proof
  patterns.  The current branch derives the asymmetric two-mode contraction,
  candidate-relative nonnegative transfer majorant, analysis-only assignment,
  and exact J diagonal charge directly in the current notation.  No cited
  source is used as a theorem wrapper.
- Proof roadmap:
  1. Use Gaussian concentration and the two orthogonal source modes to derive
     the realized event, `R-src`, pair/triple reserves, and `two-mode`.
  2. After an observable certificate, form the `e_I(q)`-padded transfer
     majorant, prove its 1/4 small-gain bound, and apply a finite Neumann
     resolvent to obtain `Raw-J-rel`.
  3. Use exact multilinear expansion, zero-diagonal J coordinates, objective
     decrease, and rollback to close a finite raw ledger and feed the
     target-blind tape/PL modules.
- Key lemmas / ingredients: normalized Gram Schur bounds; two-mode score
  isolation; nonnegative Neumann series; radial/angular certificate errors;
  exact tensor increment and `J(p,p)=1` diagonal audit; monotone capture
  potential; Haar small-ball amplification; balanced target Jacobian and PL.
- Main transfer challenges: prove the certificate dichotomy without source
  labels; keep every adaptive `e_I` term raw when `nu_real` is zero or tiny;
  establish a legal producer path for the resolvent row and activation window;
  transfer actual committed slots, rather than a projected or surrogate tuple,
  into the same-target PL chart.
- Potential repair techniques and supporting references:
  - Technique: rootwise absolute-Gram factorization before summing commits.
  - Supporting reference: `perspective_2/idea_10/technical_survey.md`.
  - Why it may help: it preserves the captured-label diagonal and prevents a
    tested-label or commit multiplier in the ledger.
  - Technique: direct balanced target-Jacobian/Taylor calculation.
  - Supporting reference: *Orthogonalized ALS: A Theoretically Principled
    Tensor Decomposition Algorithm for Practical Use*.
  - Why it may help: it supplies a compatible local-conditioning organization
    while the current proof checks the exact full-space objective and metric.
- Disposition: `selected`.
- Branch notes: This is a material-partial two-mode-orthogonal child.  It does
  not use protected projections, matched-mixture exchange, source-label
  queries, a fixed pad, or `E_lb` absorption.  The exact `H=e=0` branch has
  zero generated source and no terminal floor.

### Framework 2: Full product-sphere strict-saddle transaction

- Source papers: *Escaping From Saddle Points: Online Stochastic Gradient for
  Tensor Decomposition* (COLT 2015, arXiv:1503.02101); and
  `perspective_2/idea_10/technical_survey.md`.
- Applicability to current branch: Product-sphere Hessian identities,
  two-sign negative-curvature escape, compact guards, and Haar activation fit
  the transaction protocol.  They do not provide the current residual-relative
  row or prefix ledger, so this framework is downstream only.
- Proof roadmap:
  1. Consume the candidate-relative certificate and two-mode isolation output.
  2. Verify the current asymmetric Hessian and radial conventions locally.
  3. Use the guarded two-sign flow and exact rollback to produce the activation
     window required by the tape step.
- Key lemmas / ingredients: normalized angular Hessian, radial bracketing,
  sign-safe tangent trial, and compact-guard smoothness.
- Main transfer challenges: source conventions and current residual/history
  terms must be checked directly; no generic strict-saddle statement supplies
  target matching.
- Potential repair techniques and supporting references:
  - Technique: current-notation product-sphere Taylor expansion.
  - Supporting reference: arXiv:1503.02101.
  - Why it may help: it supplies a local negative-curvature escape template.
- Disposition: `backup`.
- Branch notes: Not a source for generated labels, ledger closure, or PL entry.

### Framework 3: Same-target balanced PL refinement

- Source papers: *Local Convergence of the Alternating Least Squares Algorithm
  for Canonical Tensor Approximation* (DOI:10.1137/110843587);
  *On the Global Convergence of Alternating Least Squares for Tensor
  Approximation* (DOI:10.1007/s10589-022-00428-1).
- Applicability to current branch: These sources motivate quotient-aware local
  conditioning.  The branch proves its own balanced full-space Jacobian and
  Armijo PL statement because the terminal procedure is joint gradient descent
  on the exact asymmetric loss.
- Proof roadmap:
  1. Derive pair/triple Gram conditioning for the realized exact target.
  2. Convert all-commit actual factor errors to an orbit-radius entry.
  3. Apply first-exit PL/Armijo descent and specialize the logarithmic horizon.
- Key lemmas / ingredients: balancing removes scale gauge, Jacobian lower
  bound, Taylor sandwich, and geometric Armijo decrease.
- Main transfer challenges: the ledger is not silently treated as a factor
  distance; object-target compatibility is checked in the actual balanced
  coordinates.
- Potential repair techniques and supporting references:
  - Technique: direct weight-scaled target-Jacobian/Taylor calculation.
  - Supporting reference: DOI:10.1137/110843587.
  - Why it may help: it organizes the local chart proof without changing the
    current objective or terminal metric.
- Disposition: `backup`.
- Branch notes: This terminal framework is unchanged by the relative-resolvent
  repair and consumes only the generated all-commit output.

## Branch Notes

The live proof sketch is now attempt 5 (revise_sketch). The selected
candidate-relative framework and concise seven-row graph are unchanged. This
repair uses one adaptive defect scale \(a_\star\) for the selector, seed slab,
radial/angular widths, Haar mass, tape length, and guarded path, while keeping
the raw chi ledger explicit. The polynomial branch is stated only when
\(a_\star\le a_{\max}\), \(a_\star\ge(nr)^{-c_\star}\), and
\(n a_\star^2\le C_{\rm mass}\log(nr)\); otherwise the super-polynomial Haar
mass is an explicit unrestricted-\(n\) blocker routed to idea revision. The
archived attempt-4 survey remains history only.

Framework 1 is selected because it is the shortest target-preserving route
from the repaired idea setting to the four-block `(S)--(T)--(B)--(P)` chain.
Frameworks 2 and 3 remain local backup tools.  All generated objects have
explicit producers in `proof_sketch.md`; no literature result is treated as a
primitive assumption or as a substitute for the raw candidate-relative
interface.
