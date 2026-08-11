# IDEA_REPORT.md

## Ideas

### Idea 1

- Parent perspective: Perspective 1 - global convergence for parallel ALS on third-order asymmetric CP least squares under Gaussian smoothing and strictly subquadratic overparameterization.
- Branch path: perspective_1/idea_6
- Setting: Cumulatively incoherent near-balanced asymmetric CP bases with source Gaussian smoothing, stationarity-certified same-state Jacobi extreme-start carry-over ALS, and explicit chronological quotient `Refresh_s` assembly at k = Theta(r^(5/3) (log r)^(5/2)).
- Goal: Conditional end-to-end SC-JEP-ALS convergence in polynomial time to arbitrary relative Frobenius error with a well-defined common-product quotient state.
- Notes: Progress type conditional; exact c = 2/3. The branch preserves the source tensor, Gaussian smoothing, random initialization, strictly subquadratic rank, arbitrary relative Frobenius accuracy, polynomial runtime, and separate instance/initialization/restart quantifiers. It remains conditional on cumulative-Gram, near-balanced-weight, and scale restrictions; the remaining source gap is removing those restrictions and proving recovery for unmodified parallel ALS.

### Idea 3

- Parent perspective: Perspective 2 - optimization-landscape and trajectory guarantees for full-space transactional tensor decomposition under Gaussian smoothing and strictly subquadratic overparameterization.
- Branch path: perspective_2/idea_12
- Setting: Two-mode-orthogonal asymmetric CP bases with full-space transactional radial/angular updates, a candidate-relative zero-safe certificate, candidate-relative resolvent J charge, and capture-budgeted numerical forcing at k = Theta(r^(3/2) (log r)^2).
- Goal: Material-partial candidate-relative-resolvent and capture-budgeted reachable-landscape and trajectory convergence in polynomial time to arbitrary relative Frobenius error.
- Notes: Progress type material_partial. The branch preserved the exact objective, full-space procedure, probabilities, runtime, rank, endpoint, and baseline while replacing idea 11's fixed numerical padding with the candidate-relative scale. It was later closed as IDEA_FAIL after five concise-sketch attempts: unrestricted ambient dimension can make every defect-dominating Haar seed super-polynomially rare, and the remaining U3/U5 margin exponents are not implied by the binding assumptions. A new P2 idea slot is opened.

### Idea 4

- Parent perspective: Perspective 2 - optimization-landscape and trajectory guarantees for full-space transactional tensor decomposition under Gaussian smoothing and strictly subquadratic overparameterization.
- Branch path: perspective_2/idea_13
- Setting: Two-mode-orthogonal asymmetric CP bases with Gaussian smoothing, target-blind cyclic residual-gradient power seeding, polynomial-mass scalar order-statistics certification, candidate-relative resolvent/capture ledger, and balanced full-space Armijo refinement at k = Theta(r^(3/2) (log r)^2).
- Goal: Material-partial contraction-seeded reachable-landscape and trajectory convergence in polynomial time to arbitrary relative Frobenius error, with separate instance/tape probabilities and exact/no-floor baseline.
- Notes: Progress type material_partial. The branch replaces idea-12's ambient Haar cap with observable cyclic contractions of the current residual, reusing one scratch slot and a polynomial-mass order-statistics tape; it retains the exact objective, rank, endpoint, candidate-relative ledger, and terminal PL route. It was closed as IDEA_FAIL after the concise five-step sketch exposed a binding certificate obstruction: on the exact orthogonal equal-weight baseline, atom-scale angular curvature divided by the full unresolved residual norm is `O(r^{-1/2})`, so no first label can meet the fixed threshold. The next P2 idea must change or eliminate that certificate normalization while preserving the target and exact/no-floor baseline.

### Idea 2

- Parent perspective: Perspective 1 - global convergence for parallel ALS on third-order asymmetric CP least squares under Gaussian smoothing and strictly subquadratic overparameterization.
- Branch path: perspective_1/idea_7
- Setting: Cumulatively incoherent near-balanced asymmetric CP bases with source Gaussian smoothing, stationarity-certified synchronized frozen-input Jacobi landing followed by cyclic quotient ALS at k = Theta(r^(5/3) (log r)^(5/2)).
- Goal: Conditional end-to-end SL-SC-JEP-ALS convergence in polynomial time to arbitrary relative Frobenius error from a jointly landed exact-span seed.
- Notes: Progress type conditional; exact c = 2/3. The branch preserves the source tensor, Gaussian smoothing, random initialization, strictly subquadratic rank, arbitrary relative Frobenius accuracy, polynomial runtime, restart quantifiers, and exact orthogonal baseline. It changes only the first active transition to a literature-derived frozen-input synchronized Jacobi landing commit, eliminating the unsupported later-call comparator/scale induction before retaining the prior cyclic quotient-refinement proof route.

### Idea 5

- Parent perspective: Perspective 2 - optimization-landscape and trajectory guarantees for full-space transactional tensor decomposition under Gaussian smoothing and strictly subquadratic overparameterization.
- Branch path: perspective_2/idea_14
- Setting: Public block-local asymmetric CP bases with unknown mode-specific block permutations, exact-objective block-triple residual transactions, scale-local residual-decrease/rank-one-isolation gates, and full-space balanced Armijo refinement at k = Theta(r^(3/2) (log r)^2).
- Goal: Material-partial block-local residual-decrease landscape-and-trajectory convergence in polynomial time to arbitrary relative Frobenius error with exact/no-floor baseline.
- Notes: Progress type material_partial. This branch changes the failed idea13 certificate/protocol contract: it uses public O(log r)-dimensional block scans and a candidate-scale local decrease test instead of full-residual-normalized curvature, avoiding the exact orthogonal `sqrt(r)` obstruction and ambient Haar tails. The remaining gap is extension from the explicit block-supported source subclass to arbitrary well-conditioned bases.

### Idea 5

- Parent perspective: Perspective 2 - optimization-landscape and trajectory guarantees for full-space transactional tensor decomposition under Gaussian smoothing and strictly subquadratic overparameterization.
- Branch path: perspective_2/idea_14
- Setting: Public block-local asymmetric CP bases with unknown mode-specific block permutations, exact-objective block-triple residual transactions, scale-local residual-decrease/rank-one-isolation gates, and full-space balanced Armijo refinement at k = Theta(r^(3/2) (log r)^2).
- Goal: Material-partial block-local residual-decrease landscape-and-trajectory convergence in polynomial time to arbitrary relative Frobenius error with exact/no-floor baseline.
- Notes: Progress type material_partial. This branch changes the failed idea13 certificate/protocol contract: it uses public O(log r)-dimensional block scans and a candidate-scale local decrease test instead of full-residual-normalized curvature, avoiding the exact orthogonal `sqrt(r)` obstruction and ambient Haar tails. The remaining gap is extension from the explicit block-supported source subclass to arbitrary well-conditioned bases.
