# Idea

## Perspective Anchor

- Tuple: (analysis_target=deterministic_dimension_complexity_linear_TS_implication, model_class=fully_connected_relu_network_with_S_parameters, data_assumption=universal_all_distribution_all_target_learning_premise, regime=arbitrary_boolean_cube_class_with_epsilon_below_one_quarter, algorithm=gaussian_initialized_logistic_one_sample_sgd_with_latter_half_time_aggregation)
- Fixed source anchor: Perspective 1, Gap 1, full exact target.

## Added Dimensions

- Resolution route: prove the implication by contrapositive using a Euclidean-dimension obstruction, rather than constructing a target-independent feature map from target-specific trajectories.
- Certificate object: encode one complete SGD run by its time-indexed parameter states and update increments, with transcript dimension at most a universal constant times T*S; retain the network's nonlinear readout in the reduction.
- Protocol bridge: establish a stratified, piecewise-analytic reduction from the exact ReLU/logistic one-sample SGD protocol to the Borsuk-Ulam-style Euclidean reduction framework, including activation-boundary and randomization audits.

## Setting

- Context: X={-1,+1}^n and H is an arbitrary binary class H subset of {-1,+1}^X. The deterministic dimension complexity is the least d admitting one feature map phi:X->R^d that sign-represents every h in H.
- Model: the stated fully connected, bias-free ReLU network has depth L, n_0=n, n_L=1, widths n_1,...,n_{L-1}, S=sum_i n_i n_{i-1} trainable weights, and fan-in-scaled independent Gaussian initialization with variance 1/n_{i-1} in layer i.
- Data: one fixed architecture, stepsize eta, and step count T must attain expected classification error at most epsilon<1/4 for every distribution D on X and every h* in H; expectation is over initialization and SGD sampling.
- Algorithm: at every step use one fresh x^(t) sampled from D, the exact logistic loss gradient update specified in the source, and the sign of the sum of outputs from the latter half of the trajectory as the predictor.
- Regime: arbitrary n and H; the architecture, S, positive T, and eta are fixed witnesses of the premise, while D and h* remain universally quantified and the conclusion's constant is independent of eta, epsilon, n, H, and all architecture details. No distribution, margin, width, stability, finite-precision, or hidden generated-event assumption is added.

## Goal

- Theorem type: unconditional exact positive implication.
- Informal statement: there is a universal constant C such that the stated universal expected-error SGD premise implies dc(H) <= C*T*S.

## Notes

- Parent foundation papers: Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent? (COLT 2026); On Reductions and Representations of Learning Problems in Euclidean Spaces (STOC 2025, arXiv:2411.10784)
- Transfer map: preserves every protocol and quantifier from the source problem; reuses the Borsuk-Ulam/Euclidean-reduction obstruction, replacing its stochastic-convex interface by an exact stratified ReLU-SGD transcript and proving the readout bridge rather than assuming a linearized or tangent model.
- Source alignment: preserves the full deterministic dc(H) target, universal (D,h*) premise, Gaussian initialization, one-sample logistic SGD, latter-half aggregation, epsilon<1/4, and dependence only on T*S.
- Progress type: full
- Materiality: a successful contrapositive would rule out every class with dc(H)>C*T*S by producing a violating distribution-target pair, directly closing Gap 1 without a shared-feature construction.
- Significance: the topological obstruction tests the whole continuous transcript and nonlinear readout, avoiding the target-specific minimax factorization and frozen-NTK shortcuts that failed idea_1.
- Feasibility: Borsuk-Ulam dimension obstructions and finite-dimensional reduction arguments are standard/literature-derived from the STOC 2025 framework. The exact-SGD bridge is novel, and its local transcript, stratification, and boundary mechanisms are directly verified in three branch-specific cases: (i) for depth-one linear networks, conditional on a labeled sample history the logistic-SGD state recursion is real-analytic, while the prescribed aggregate is exactly the inner product of sum_{t=ceil(T/2)}^T w_t with x, hence a linear separator in the fixed x-feature space of dimension n<=S; (ii) for one hidden ReLU unit on X={-1,+1} and any fixed T, the two input rays and finite sample, label, and gate histories give an explicit finite stratification on whose open strata every transition and readout is real-analytic; and (iii) for T=1 on a two-point support at arbitrary width, every sampled-point, label, and gate branch gives an explicit piecewise real-analytic, R_exp-definable update/readout map. In (ii) and (iii), an activation-boundary zero set is declared Gaussian-null only when its defining analytic function is not identically zero on the relevant stratum; identically-zero and dead-unit strata are retained as separate cases and their stationary or inactive updates are traced explicitly. Extending these exact local maps to arbitrary depth and proving the STOC-source readout/randomization bridge are proof obligations, not theorem assumptions. They must preserve both randomness sources and handle every ReLU kink stratum; no theorem from the flawed finite-precision random-feature route is used.
- Consistency: no new primitive assumption, initialization, oracle, loss, predictor, distribution restriction, or hidden invariant is added. The transcript-to-Euclidean map, boundary treatment, and randomized-to-obstruction conversion are derived obligations. If the source framework cannot accept the exact piecewise-analytic readout or its boundary strata without changing the theorem contract, this candidate must fail rather than silently linearize SGD.
