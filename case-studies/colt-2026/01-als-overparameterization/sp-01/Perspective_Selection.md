# Perspective_Selection.md

## Gaps from Literature

1. Gap: No verified theorem gives random-initialization global convergence for the rank-\(k\) third-order asymmetric CP least-squares objective with strictly subquadratic algorithmic rank in the source Gaussian-smoothed model, where \(r\ll n\), \(\rho=1/\operatorname{poly}(r)\), and all three modes receive independent \(\mathcal N(0,\rho^2 I/n)\) factor perturbations. The direct parallel-ALS result D1 uses \(k=\Theta(r^2)\) and a full \(r^2\)-dimensional Khatri-Rao/Kronecker span certificate; the component results do not jointly supply the required rank, runtime, relative-Frobenius-error, smoothed-instance, initialization, restart, and base-matrix quantifiers. A source-faithful result must instead prove a sufficient rank \(U(r)\) with \(r<U(r)=o(r^2)\), run in \(\operatorname{poly}(n,r,\log(1/\epsilon))\) time, and attain residual at most \(\epsilon\lVert T\rVert_F\) with high probability over the once-drawn smoothed instance. It must state whether the base matrices are arbitrary or arbitrary well-conditioned and must make any fixed-input initialization success and polynomial-cost restart amplification explicit.

2. Gap: No verified landscape or trajectory theorem connects random initialization to global relative-error recovery for gradient-based optimization of the actual asymmetric CP least-squares objective under arbitrary-base or arbitrary-well-conditioned Gaussian smoothing. Existing landscape, strict-saddle, and feature-learning results concern symmetric, orthogonal, random-factor, modified-objective, local, rank-one, or otherwise restricted settings, while D1 obtains recovery through a one-round quadratic-span ALS certificate. A source-aligned landscape-and-dynamics result must remain end-to-end, use \(r<k=o(r^2)\), retain polynomial runtime and the required relative Frobenius error, and state the smoothed-instance, initialization, restart, and base-class quantifiers. A random-factor or orthogonal restriction is only labeled partial progress, and generated trajectory properties cannot be hidden as primitive assumptions.

## Selected Perspectives

### Perspective 1

- Normalized tuple:
  - analysis_target: global_convergence
  - model_class: third_order_asymmetric_cp_least_squares
  - data_assumption: gaussian_smoothed_factors
  - regime: strictly_subquadratic_overparameterization
  - algorithm: parallel_als
- Focus: Improve the exact quadratic parallel-ALS baseline to the strongest rigorously justified \(U(r)=o(r^2)\) in the source smoothed setting, preferably \(O(r^{1+\beta}\operatorname{polylog}r)\) with \(\beta<1\), while preserving the rank-\(k\) least-squares objective, \(\operatorname{poly}(n,r,\log(1/\epsilon))\) runtime, relative-error guarantee, once-drawn-instance probability, random-initialization/restart protocol, and an explicit arbitrary versus arbitrary-well-conditioned base-matrix interpretation.
- Target gap: Gap 1.

### Perspective 2

- Normalized tuple:
  - analysis_target: optimization_landscape
  - model_class: third_order_asymmetric_cp_least_squares
  - data_assumption: gaussian_smoothed_factors
  - regime: strictly_subquadratic_overparameterization
  - algorithm: gradient_descent
- Focus: Develop a global landscape-and-trajectory theorem for gradient descent on the actual source CP least-squares objective that proceeds from random initialization to the required relative-error output with \(k=o(r^2)\) and polynomial total runtime. Preserve the full smoothed base-class and probability quantifiers; any source-mentioned random-factor or orthogonal specialization, or any additional static checkable condition, must be labeled as partial or conditional progress with the remaining arbitrary-base or arbitrary-well-conditioned gap stated explicitly.
- Target gap: Gap 2.

Each normalized tuple field contains exactly one value.
