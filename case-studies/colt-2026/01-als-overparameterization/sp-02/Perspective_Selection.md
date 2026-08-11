# Perspective_Selection.md

## Gaps from Literature

1. Gap: No cited result proves the full source-faithful distributional lower bound for one rigorously defined iterative CP method class containing both a precisely specified ALS variant and a precisely specified gradient-descent variant. The missing theorem must give a universal constant \(c>0\), cover every \(r<k\le r^{1+c}\) in the Gaussian-smoothed factor model with \(\rho=1/\operatorname{poly}(r)\), and prove convergence to a strictly positive objective with constant probability. It must also resolve explicitly the source's arbitrary-versus-well-conditioned base-factor ambiguity and whether probability is over the perturbations, initialization, or their joint law; a bad stationary point, early positive loss, or finite-time slowdown is insufficient.

2. Gap: For random-initialized parallel ALS, the literature provides an \(O(r^2)\)-scale global-convergence upper bound through Khatri--Rao span control, but no matching superlinear failure theorem in the source's smoothed CP model. In particular, no cited result proves that all \(r<k\le r^{1+c}\) converge to positive limiting objective with nonvanishing probability. An ALS-only theorem would be source-aligned algorithm-specific progress, not by itself the brief's literal multi-method full resolution, and it must specify the update schedule, least-squares selection or tie-breaking, initialization law, base-factor quantifier, and probability space.

3. Gap: For random-initialized gradient descent, nearby theory gives positive convergence guarantees for a specified overparameterized tensor-gradient procedure, but no distributional positive-limit-loss lower bound at any source-relevant superlinear threshold in the stated smoothed CP model. The missing theorem must specify the parameterization, step-size or flow convention, normalization or regularization, initialization law, base-factor quantifier, and probability space, and must establish actual convergence to positive objective rather than mere saddle existence, transient loss, or slow convergence. A gradient-descent-only theorem is source-aligned algorithm-specific progress while leaving ALS coverage open.

## Selected Perspectives

### Perspective 1

- Normalized tuple:
  - analysis_target: positive_limit_objective_lower_bound
  - model_class: third_order_cp_least_squares
  - data_assumption: gaussian_smoothed_cp_factors
  - regime: r_lt_k_le_r_to_1_plus_c
  - algorithm: iterative_cp_class_containing_als_and_gd
- Focus: Pursue the literal full-progress lens by defining one nonvacuous iterative-method class that explicitly contains fully specified ALS and gradient-descent updates, then proving a universal-\(c\), constant-probability convergence-to-positive-objective lower bound throughout the source rank range. Downstream ideas must state the base-matrix conditioning interpretation and the perturbation/initialization probability space, preserve random initialization and \(\rho=1/\operatorname{poly}(r)\), and may not extrapolate from one method or assume the trapping event.
- Target gap: Gap 1.

### Perspective 2

- Normalized tuple:
  - analysis_target: positive_limit_objective_lower_bound
  - model_class: third_order_cp_least_squares
  - data_assumption: gaussian_smoothed_cp_factors
  - regime: r_lt_k_le_r_to_1_plus_c
  - algorithm: parallel_als
- Focus: Pursue the strongest source-faithful ALS-specific lower bound, with the exact parallel update, schedule, least-squares selection, initialization, and restart protocol fixed before analysis. The target remains constant-probability convergence to strictly positive objective in the smoothed model over the full superlinear rank interval; random-factor or explicit well-conditioned restrictions must be labeled special-case progress, and landscape or finite-time evidence alone does not suffice.
- Target gap: Gap 2.

### Perspective 3

- Normalized tuple:
  - analysis_target: positive_limit_objective_lower_bound
  - model_class: third_order_cp_least_squares
  - data_assumption: gaussian_smoothed_cp_factors
  - regime: r_lt_k_le_r_to_1_plus_c
  - algorithm: gradient_descent
- Focus: Pursue the strongest source-faithful gradient-descent-specific lower bound for an explicitly parameterized update with fixed step-size, normalization or regularization, initialization, and restart conventions. The target remains constant-probability convergence to strictly positive objective in the smoothed model for every rank in the source interval; any random-only, conditional, or special-base result must retain its residual gap label and cannot be promoted to the full multi-method claim.
- Target gap: Gap 3.

Each normalized tuple field contains exactly one value.
