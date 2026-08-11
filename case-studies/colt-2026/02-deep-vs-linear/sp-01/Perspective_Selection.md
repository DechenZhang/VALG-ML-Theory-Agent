# Perspective_Selection.md

## Gaps from Literature

1. Gap: No verified theorem or counterexample resolves the exact deterministic linear implication for the source protocol: if one fixed fully connected ReLU architecture with `S` parameters, fan-in-scaled independent Gaussian initialization, constant stepsize, logistic one-sample SGD for `T` steps, and the prescribed latter-half time-aggregated predictor attains expected error at most `epsilon < 1/4` for every input distribution `D` and every `h* in H`, then `dc(H) <= C T S` for a universal constant `C`. The expectation is over initialization and SGD sampling. A negative resolution must satisfy this same universal premise and make `dc(H)/(TS)` unbounded. This is the `full` source target; fixed-distribution separations, altered oracles, and randomized dimension notions do not resolve it.

2. Gap: Under the same exact architecture, initialization, logistic one-sample SGD update, time-aggregated predictor, and universal quantifiers over `(D,h*)`, no verified deterministic bound `dc(H) <= poly(S,T)` is known. This source-endorsed relaxation is `material_partial` unless an exact-premise construction rules out every polynomial bound, which would also refute the linear conjecture. An upper bound with hidden dependence on `n`, `eta`, a selected distribution, or an altered learning oracle does not fill this gap.

3. Gap: Under the same exact distribution-independent ReLU/SGD premise, no verified bound with explicit `(S,T)` dependence is known for the probabilistic dimension complexity `dc_{C epsilon}(H)`. The required feature-map distribution must be chosen independently of the later pair `(D,h*)` and work in the order `exists P, for all D, for all h*`. This randomized approximate conclusion is only `material_partial`: it neither supplies the deterministic feature map nor proves the exact `C T S` target. The adjacent confident-dimension target `dc^{1/2}(H)` is also partial residual context, not an interchangeable second value in this perspective.

## Selected Perspectives

### Perspective 1

- Normalized tuple:
  - analysis_target: `deterministic_dimension_complexity_linear_TS_implication`
  - model_class: `fully_connected_relu_network_with_S_parameters`
  - data_assumption: `universal_all_distribution_all_target_learning_premise`
  - regime: `arbitrary_boolean_cube_class_with_epsilon_below_one_quarter`
  - algorithm: `gaussian_initialized_logistic_one_sample_sgd_with_latter_half_time_aggregation`
- Focus: `full`. Prefer a source-faithful proof or disproof of the exact implication before any weakening: the same fully connected ReLU architecture, constant stepsize, and step count must work for every `D` and every `h* in H`; weights have the stated independent fan-in-scaled Gaussian initialization; each update uses one fresh sample and logistic loss; prediction is the sign of the sum of outputs over the latter half of the trajectory; and expectation is over both initialization and sampling. The conclusion is the deterministic target `dc(H) <= C T S` with universal `C` and no hidden dependence. A counterexample must preserve all of these premise quantifiers and protocol details.
- Target gap: Gap 1.

### Perspective 2

- Normalized tuple:
  - analysis_target: `deterministic_dimension_complexity_explicit_polynomial_ST_bound`
  - model_class: `fully_connected_relu_network_with_S_parameters`
  - data_assumption: `universal_all_distribution_all_target_learning_premise`
  - regime: `arbitrary_boolean_cube_class_with_epsilon_below_one_quarter`
  - algorithm: `gaussian_initialized_logistic_one_sample_sgd_with_latter_half_time_aggregation`
- Focus: `material_partial`. Preserve the exact ReLU architecture, Gaussian initialization, logistic one-sample SGD trajectory, latter-half time-aggregated predictor, expectation mode, and universal quantifiers over `D` and `h*`, but seek an explicit deterministic `poly(S,T)` upper bound instead of `C T S`. This lens must not be presented as a full positive resolution; the remaining gap is the linear `C T S` dependence. Conversely, an exact-premise superpolynomial lower bound would constitute a full negative resolution and must be labeled accordingly rather than as merely polynomial partial progress.
- Target gap: Gap 2.

### Perspective 3

- Normalized tuple:
  - analysis_target: `probabilistic_dimension_complexity_at_C_epsilon_with_explicit_ST_dependence`
  - model_class: `fully_connected_relu_network_with_S_parameters`
  - data_assumption: `universal_all_distribution_all_target_learning_premise`
  - regime: `arbitrary_boolean_cube_class_with_epsilon_below_one_quarter`
  - algorithm: `gaussian_initialized_logistic_one_sample_sgd_with_latter_half_time_aggregation`
- Focus: `material_partial`. Starting from the exact source premise, seek a distribution over feature maps of explicitly bounded dimension that witnesses `dc_{C epsilon}(H)`, with the feature-map distribution fixed before and uniformly valid for every `D` and `h*`. The exact network, Gaussian initialization, logistic one-sample updates, `T`-step trajectory, and latter-half time-aggregated predictor remain premise-critical. This randomized approximate target does not establish deterministic `dc(H) <= C T S`; any altered-oracle transfer, conditional bridge, or obstruction used to study it remains explicitly partial or residual unless it rigorously recovers the exact deterministic conclusion.
- Target gap: Gap 3.

Each normalized tuple field contains exactly one value.
