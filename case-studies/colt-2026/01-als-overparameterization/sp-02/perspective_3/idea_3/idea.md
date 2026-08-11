# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: positive_limit_objective_lower_bound
  - model_class: third_order_cp_least_squares
  - data_assumption: gaussian_smoothed_cp_factors
  - regime: r_lt_k_le_r_to_1_plus_c
  - algorithm: gradient_descent

## Added Dimensions

- Dimension: Apply only the scale repair required by the `idea_2` sketch review. For raw
  coefficient vectors `alpha_i=A^dagger x_i`, `beta_i=B^dagger y_i`, and
  `gamma_i=C^dagger z_i`, define the Gram-only normalized coordinates
  `bar_alpha_i=sqrt(n/r) alpha_i`, `bar_beta_i=sqrt(n/r) beta_i`, and
  `bar_gamma_i=sqrt(n/r) gamma_i`. For the three matrices with columns
  `bar_beta_i tensor bar_gamma_i`, `bar_alpha_i tensor bar_gamma_i`, and
  `bar_alpha_i tensor bar_beta_i`, require every eigenvalue of each Gram matrix to lie in
  `[r^(-20),r^20]`; equivalently, every raw Gram eigenvalue lies in the exact window
  `(r/n)^2 [r^(-20),r^20]`.
- Dimension: Keep the source prose's well-conditioned-base interpretation: after column
  normalization, each deterministic base matrix has singular values in
  `[kappa^(-1),kappa]`, for fixed `kappa>=1`. Use `rho=r^(-q)` for fixed `q>=4` and
  `n>=C(kappa,q) r^4 log r`, with no upper restriction on `n`.
- Dimension: Keep `c=1/4` and every integer `r<k<=floor(r^(5/4))`. Initialize all entries of
  `X_0,Y_0,Z_0` iid `N(0,1/n)`, independently of smoothing, apply product-preserving CP-gauge
  balancing, and run simultaneous full-batch GD with constant step `eta=(n k r)^(-12)` followed
  only by the same balancing retraction. There is no projection, clipping, weight decay,
  sparsification, restart, or early stopping.
- Dimension: Preserve the raw-coordinate tangent-deficit mechanism. Let `S_0` be the span of
  `R^r tensor beta_i tensor gamma_i`, `alpha_i tensor R^r tensor gamma_i`, and
  `alpha_i tensor beta_i tensor R^r` over `i in [k]`. The generated initial event must supply a
  unit `W_0 orthogonal S_0` with
  `<D_r-Dhat_0,W_0> >= delta_0 ||D_r||_F`, where
  `D_r=sum_j e_j tensor e_j tensor e_j`, `Dhat_0=sum_i alpha_i tensor beta_i tensor gamma_i`,
  and `delta_0=1/8`. Normalization does not change `S_0`, because it rescales every displayed
  generator by a nonzero scalar; it is not applied to `D_r`, `Dhat_0`, or the residual metric.
- Dimension: Define `E_init_norm` as realized-factor conditioning intersected with the normalized
  Gram event, the unchanged tangent-deficit event, and the generated initial-size event
  `max_{i,m} ||m_{i,0}||_2<=2`. Gaussian norm concentration derives this size event with
  probability at least `1-r^(-20)` under the declared dimension regime. Define `C_path` only by
  the finite balanced path length
  `E_path=sum_{t>=0} d_bal(theta_(t+1),theta_t) <= E_star`, where
  `E_star=min(1,sqrt(delta_0/(16 C_CP(kappa,3))))`. The initial size event plus this path budget
  imply the all-time column bound `||m_{i,t}||_2<=3`; no separate Gram, norm, or positivity clause
  is hidden in `C_path`. The remaining source gap is a constant lower bound for
  `P(C_path | E_init_norm)`.

## Setting

- Context: For
  `T=sum_{j=1}^r a_j tensor b_j tensor c_j`, optimize
  `F(X,Y,Z)=||T-sum_{i=1}^k x_i tensor y_i tensor z_i||_F^2`. Positive componentwise scalings
  whose product is one leave the represented tensor invariant; the balance retraction only chooses
  the equal-norm representative of this gauge orbit.
- Model: Fix deterministic `bar A,bar B,bar C` in `R^(n x r)` with nonzero column norms in
  `[kappa^(-1),kappa]` and column-normalized singular values in
  `[kappa^(-1),kappa]`. Independently over modes and columns, draw
  `a_j-bar a_j`, `b_j-bar b_j`, and `c_j-bar c_j` from `N(0,rho^2/n I_n)`, with
  `rho=r^(-q)`. The raw coefficient target remains exactly `D_r` for the realized `A,B,C`.
- Data: Probability is joint over the Gaussian smoothing and independent Gaussian initialization.
  The generated initialization event `E_init_norm` includes realized-factor conditioning, the
  normalized Gram window, the tangent deficit, and the initial-size event; its proof target is
  `P(E_init_norm)>=1-r^(-10)` uniformly over all allowed `n,r,k` and deterministic base triples.
  Conditional on realized well-conditioned factors, normalized coefficient vectors have natural
  constant norm scale, so this claim has no hidden `n`-dilution. In raw coordinates the exact same
  Gram claim uses the exposed window `(r/n)^2[r^(-20),r^20]`. Once `E_init_norm` and `C_path` hold,
  the initial-size bound and the path budget give the Taylor-domain bound `R=3` directly.
- Algorithm: From the balanced initialization, update all three modes simultaneously from the old
  iterate by `X_tilde=X_t-eta grad_X F`, `Y_tilde=Y_t-eta grad_Y F`, and
  `Z_tilde=Z_t-eta grad_Z F`, with `eta=(n k r)^(-12)`, and balance every nonzero raw component by
  product-one positive scalings. If a raw component contains an exact zero factor, leave that raw
  triple unchanged; the balance map remains product-preserving and polynomially defined on the
  represented tensor, so no positivity event is added to the conditional certificate.
- Regime: For fixed `kappa,q`, sufficiently large `r`, every
  `n>=C(kappa,q)r^4 log r`, and every `r<k<=floor(r^(5/4))`, the normalized Khatri--Rao matrices
  have `k` columns in `R^(r^2)` at their natural scale. The intended initialization block proves
  their polynomial Gram window, the initial-size event, and then a generator-Gram/projection
  estimate yielding the fixed normal margin against `D_r`. The conditional finite-path block is
  unchanged from `idea_2` except that its sole hypothesis is the finite-length bound.

## Goal

- Theorem type: Scale-correct conditional distributional positive-limit-objective lower bound for
  balanced full-batch gradient descent.
- Informal statement: With probability at least `1-r^(-10)` over the joint smoothed instance and
  Gaussian initialization, `E_init_norm` holds uniformly for every allowed `n` and
  `r<k<=floor(r^(5/4))`. On `E_init_norm intersect C_path`, the balanced GD factors converge
  and satisfy
  `lim_{t->infinity} F(X_t,Y_t,Z_t) >= epsilon_0(kappa) ||T||_F^2 > 0`. The unchanged raw
  coefficient Taylor argument uses `W_0 orthogonal S_0` and
  `C_CP(kappa,3) E_path^2 <= delta_0/16`, and the unchanged exact mode-span projection transfers
  its residual to the physical tensor loss. Consequently,
  `P(failure) >= P(E_init_norm intersect C_path)
  >= (1-r^(-10)) P(C_path | E_init_norm)`. No constant lower bound for the last conditional
  probability is claimed.

## Notes

- Parent foundation papers: "Beyond Lazy Training for Over-parameterized Tensor Decomposition" (NeurIPS 2020); "Smoothed Analysis of Tensor Decompositions" (STOC 2014, DOI:10.1145/2591796.2591887)
- Transfer map: preserves `idea_2`'s balanced fixed-step GD, smoothed conditioning, raw tangent witness, finite-path convergence, Taylor margin, and exact physical-loss bridge; changes only the Gram certificate from a false fixed raw scale to normalized coordinates, with the exact raw factor `(r/n)^2`, and derives the Taylor norm bound from initial Gaussian size plus path length; reuses Khatri--Rao Gram concentration and projection geometry.
- Source alignment: Preserves the third-order CP least-squares objective, Gaussian smoothing with `rho=1/poly(r)`, independent Gaussian initialization, fixed-step balanced GD, every rank in a universal superlinear interval, and convergence to a strictly positive limiting objective. It retains the well-conditioned-base reading, GD-only coverage, and the explicit conditional `C_path` interface; arbitrary bases, ALS, and unconditional constant failure probability remain open.
- Progress type: conditional
- Materiality: Conditional on the same observable finite-path interface, the branch proves the source-relevant positive-limit conclusion at `L(r)=r^(5/4)`. The scale repair removes the dimension-dilution counterexample for unrestricted large `n`, while deriving the only needed all-time norm bound from Gaussian initialization and path length instead of adding redundant trajectory clauses.
- Significance: The repair is the smallest semantic change supported by the binding `IDEA_FAIL`: normalized Grams have constant natural scale, whereas the raw Grams have exactly the exposed `(r/n)^2` scale. It preserves every previously viable deterministic block and turns the contradicted initialization event into a coherent high-probability proof target.
- Feasibility: Gaussian initialization passed through a well-conditioned left inverse gives raw coefficient norm scale `sqrt(r/n)` and normalized coefficient norm scale one; Khatri--Rao columns therefore have raw Gram scale `(r/n)^2` and normalized Gram scale one. Gaussian norm concentration directly derives the initial balanced-column bound `2`; the normalized event is standard/literature-derived random-matrix geometry, while the tangent-deficit projection estimate remains the novel proof obligation. It is directly checkable for coordinate-orthogonal realized factors, invariant under independent Haar rotations, and transfers to normalized iid-Gaussian realized factors through singular-value bounds. In each example, converting back to raw coordinates reproduces the exact `(r/n)^2` window rather than a fixed threshold.
- Consistency: `E_init_norm` and the sole `C_path` finite-length event replace every use of the false raw event and redundant all-time clauses, so the probability accounting and all exposed `n` dependence agree. The initial-size-plus-path implication gives `R=3` before the Taylor bound is used. Normalization is certificate-only: the raw coefficient CP map, `D_r`, `Dhat_0`, `S_0`, `W_0`, `C_CP`, path metric, and physical residual are unchanged, preventing surrogate-target drift. The finite-path event remains explicitly conditional and contains no positive loss, convergence statement, or trapping invariant. This is a minimal repair of `idea_2`, not a duplicate or a weakened conclusion.
