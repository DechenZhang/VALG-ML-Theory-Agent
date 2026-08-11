# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: positive_limit_objective_lower_bound
  - model_class: third_order_cp_least_squares
  - data_assumption: gaussian_smoothed_cp_factors
  - regime: r_lt_k_le_r_to_1_plus_c
  - algorithm: gradient_descent

## Added Dimensions

- Dimension: Use the source prose's well-conditioned-base interpretation: after column
  normalization, each deterministic base matrix has all singular values in
  `[kappa^(-1),kappa]`, for a fixed `kappa>=1`. The perturbation scale is `rho=r^(-q)` for a fixed
  `q>=4`, and `n>=C(kappa,q) r^4 log r`.
- Dimension: Fix the universal exponent `c=1/4` and cover every integer
  `r<k<=floor(r^(5/4))`. The theorem is for one precisely specified balanced full-batch GD map,
  not for ALS or an undefined iterative-method class.
- Dimension: Initialize every entry of `X_0,Y_0,Z_0` independently as `N(0,1/n)`, independently
  of the smoothing, and balance each rank-one column by positive CP-gauge scalings. Run simultaneous
  full-batch GD with the constant step `eta=(n k r)^(-12)`; after every raw step, apply only the
  same product-preserving balance retraction. There is no projection, clipping, weight decay,
  sparsification, restart, or early stopping.
- Dimension: In coefficient coordinates of the realized factor spans, require a checkable initial
  Khatri--Rao tangent deficit. If `alpha_i=A^dagger x_i`, `beta_i=B^dagger y_i`, and
  `gamma_i=C^dagger z_i`, let `S_0` be the span of
  `R^r tensor beta_i tensor gamma_i`, `alpha_i tensor R^r tensor gamma_i`, and
  `alpha_i tensor beta_i tensor R^r` over `i in [k]`. The initial certificate supplies a unit
  `W_0 orthogonal S_0` with
  `<D_r-Dhat_0,W_0> >= delta_0 ||D_r||_F`, where
  `D_r=sum_j e_j tensor e_j tensor e_j`, `Dhat_0=sum_i alpha_i tensor beta_i tensor gamma_i`,
  and `delta_0=1/8`.
- Dimension: Make the positive-limit theorem conditional only on an a posteriori, factor-level
  path certificate. The initial coefficient Khatri--Rao Gram matrices must have eigenvalues in
  `[r^(-20),r^20]`, all balanced iterates must have column norms at most `R=r^4`, and the total
  gauge-fixed path energy
  `E_path=sum_{t>=0} d_bal(theta_(t+1),theta_t)` must be at most
  `E_star=min(1,sqrt(delta_0/(16 C_CP(kappa,R))))`, where `C_CP(kappa,R)` is the explicit
  operator-norm bound on the quadratic remainder of the coefficient CP map on that balanced set.
  This certificate contains no residual lower bound, bad-basin membership, convergence claim, or
  limiting-objective condition.

## Setting

- Context: Let
  `T=sum_{j=1}^r a_j tensor b_j tensor c_j` and
  `F(X,Y,Z)=||T-sum_{i=1}^k x_i tensor y_i tensor z_i||_F^2`. The represented tensor is unchanged
  by positive rescalings of a component whose three scale factors have product one. The balance
  retraction uses this gauge only to set the three factor norms of each nonzero component equal to
  their geometric mean.
- Model: Fix deterministic `bar A,bar B,bar C` in `R^(n x r)` satisfying the stated fixed-`kappa`
  column-normalized conditioning condition. Independently over all modes and columns, draw
  `a_j-bar a_j`, `b_j-bar b_j`, and `c_j-bar c_j` from `N(0,rho^2/n I_n)` with `rho=r^(-q)`.
  The coefficient reduction uses the realized left inverses of `A,B,C`; smoothing therefore
  perturbs their conditioning but does not replace the target core `D_r` by a surrogate core.
- Data: Probability is over the Gaussian smoothing and the independent iid Gaussian factor
  initialization jointly. The intended initial-deficit lemma proves, rather than assumes, that the
  realized factors are well conditioned and the stated `W_0` and initial Gram bounds exist with
  probability at least `1-r^(-10)`. The positive-limit statement is conditional on the separately
  named path-certificate event `C_path`; proving `P(C_path)` is the explicit remaining probability
  gap.
- Algorithm: From the balanced initialization, compute all three raw gradients at the old iterate,
  set `X_tilde=X_t-eta grad_X F`, `Y_tilde=Y_t-eta grad_Y F`, and
  `Z_tilde=Z_t-eta grad_Z F` with `eta=(n k r)^(-12)`, then apply the product-preserving balance
  retraction componentwise to obtain `(X_(t+1),Y_(t+1),Z_(t+1))`. If a raw component contains an
  exact zero factor, leave that raw triple unchanged; this is a null event under the continuous
  initialization and is excluded explicitly by `C_path`. All three modes and every component are
  updated at every iteration.
- Regime: For fixed `kappa` and `q>=4`, sufficiently large `r`, and every
  `r<k<=floor(r^(5/4))`, the random initial tangent occupies only an `O(k r)`-dimensional part of
  the `r^3` coefficient space. Gaussian subspace anti-concentration is used to produce the constant
  normal margin `delta_0`; the conditional path budget then keeps the trajectory within the
  explicit second-order neighborhood in which that normal margin cannot be erased.

## Goal

- Theorem type: Conditional distributional positive-limit-objective lower bound for balanced
  full-batch gradient descent.
- Informal statement: With probability at least `1-r^(-10)` over the joint smoothed instance and
  Gaussian initialization, the initial Khatri--Rao Gram and dual-deficit certificate holds. On its
  intersection with `C_path`, the balanced GD iterates converge in factor space and satisfy
  `lim_{t->infinity} F(X_t,Y_t,Z_t) >= epsilon_0(kappa) ||T||_F^2 > 0`, uniformly for every
  `r<k<=floor(r^(5/4))`. The proof uses `W_0 orthogonal S_0` to cancel the first-order change of the
  coefficient CP map and bounds every remaining change by
  `C_CP(kappa,R) E_path^2 <= delta_0/16`; finite path energy gives convergence, and the surviving
  normal component gives the positive objective. Thus the theorem yields the unconditional bound
  `P(failure)>=P(initial certificate intersect C_path)`, but it does not claim a constant failure
  probability until a separate argument proves `P(C_path | initial certificate)>=p_0>0`.

## Notes

- Parent foundation papers: "Beyond Lazy Training for Over-parameterized Tensor Decomposition" (NeurIPS 2020); "Smoothed Analysis of Tensor Decompositions" (STOC 2014, DOI:10.1145/2591796.2591887)
- Transfer map: adapts D2's random-initialized overparameterized tensor-gradient viewpoint and preserves D6's Gaussian-smoothed factor geometry; changes the unsupported all-time low-correlation trap into a conditional normal-space certificate; reuses Khatri--Rao Jacobians, standard CP gauge balancing, Gaussian anti-concentration, and a second-order CP Taylor bound.
- Source alignment: Preserves the third-order CP least-squares objective, Gaussian smoothing with `rho=1/poly(r)`, independent Gaussian initialization, a fixed positive step, every rank in a universal superlinear interval, and actual convergence to a strictly positive limiting objective. It explicitly chooses the well-conditioned-base reading, covers GD only, and conditions on `C_path`; the arbitrary-base, ALS, and constant unconditional failure-probability requirements remain open.
- Progress type: conditional
- Materiality: Conditional on one observable certificate that does not state the desired loss or limit, the branch proves exactly the source-relevant positive-limit conclusion at `L(r)=r^(5/4)`. It reduces the missing distributional theorem to the sharply localized task of proving a constant lower bound for `P(C_path)` rather than hiding trajectory control inside an assumed bad basin.
- Significance: This is stronger and more source-aligned than the prior gauge obstruction: it reaches the requested asymptotic failure conclusion for ordinary balanced full-batch GD while marking the single unresolved probability interface. A full candidate was rejected because no current source supplies that interface unconditionally.
- Feasibility: The simultaneous gradient, CP gauge balance, Khatri--Rao Jacobian, Gaussian initialization, smoothed conditioning, and analytic/Taylor bounds are standard or literature-derived. The novel conditional interface is directly checkable in three branch-specific regimes: for coordinate-orthogonal realized factors `S_0` is an explicit random subspace and the normal margin is a finite-dimensional SVD calculation; independent Haar rotations preserve the calculation; and normalized iid Gaussian realized factors transfer it through standard singular-value bounds. For any recorded trajectory, the Gram, norm, and `E_path` clauses are numerically and symbolically checkable without knowing its limiting loss. The unresolved work is their constant-probability verification under the full random trajectory, not the deterministic implication from the certificate.
- Consistency: The path certificate is an explicitly conditional generated hypothesis, not a primitive claim presented as unconditional, and it neither assumes positive loss nor names a trapping invariant. The product-preserving retraction does not change the objective, all modes learn with a nonsummable constant step, and no component is frozen or killed. The second-order witness argument is noncircular: initial normality removes the linear CP variation, the certified factor displacement controls the explicit quadratic remainder, and only then is a residual floor derived. This idea replaces, rather than relabels, the failed all-time low-correlation mechanism and the gauge-only obstruction.
