# Idea

## Perspective Anchor

- Tuple: `analysis_target=other_exact_monic_baseline_recovery; model_class=one_dimensional_affine_pfaffian_evaluation_families; data_assumption=cube_supported_joint_density_capped_lower_coefficients; regime=exact_monic_polynomial_specialization; algorithm=moving_affine_hyperplane_analysis`

## Added Dimensions

- Primitive nondegeneracy: for the affine family `phi_alpha(theta)=b(theta)+<alpha,F(theta)>`, require only that `(b(theta),F(theta))` is never the zero vector. Equivalently, there is no coefficient-independent forced root; points where `F(theta)=0` and `b(theta) != 0` are allowed because they are root-free.
- Root-feasible charting: set `K_R={theta: |b(theta)| <= R ||F(theta)||_1}`. For `F_j(theta) != 0`, define
  \[
  V_j(\theta)=\left|\left(\frac{b}{F_j}\right)'(\theta)\right|+R\sum_{i\ne j}\left|\left(\frac{F_i}{F_j}\right)'(\theta)\right|,
  \qquad
  \Gamma_{\rm piv}(b,F;R)=\sup_{\theta\in K_R}\min_{j:F_j(\theta)\ne0}V_j(\theta),
  \]
  with `Gamma_piv=0` when `K_R` is empty. This is a static, pre-sampling coordinate-chart condition, not an assumed anti-concentration conclusion. Compactness, `C^1` regularity, and primitive nondegeneracy make it finite, while its magnitude retains metric rescaling.
- Adaptive sweep: use a measurable tie-broken partition of `K_R` by the minimizing pivot coordinate, rather than requiring one coordinate to stay nonzero globally. Exhaust each chart by `|F_j| >= 1/m`; this handles chart boundaries without a lower-bound assumption on a prescribed coordinate.
- Baseline charts: for the monic family, pivot on the random constant coefficient on `|theta| <= 1` and on the random degree-`d-1` coefficient on `|theta| > 1`. The partition is in the parameter `theta`, so the sweep incurs no factor for the number of charts.

## Setting

- Context: `b,F_1,...,F_N` are `C^1` Pfaffian functions on a compact interval `Theta` sharing the Balcan--Nguyen--Sharma (2025) triangular chain convention: `eta_j'=P_j(theta,eta_1,...,eta_j)`, `q` is the chain length, `M=max_j deg(P_j)`, and the ambient parameter dimension is `p=1`. Writing `b=Q_0(theta,eta)` and `F_i=Q_i(theta,eta)`, record the source random-vector degree `Delta_rnd=max_{1<=i<=N} deg(Q_i)` and the affine envelope degree `Delta_aff=max_{0<=i<=N} deg(Q_i)`; this explicitly maps the deterministic offset into the same output-degree convention without treating it as random. When `q=0`, use the vacuous-chain convention `M=0`.
- Model: `phi_alpha(theta)=b(theta)+sum_{i=1}^N alpha_i F_i(theta)` with `(b(theta),F(theta)) != 0` for every `theta in Theta`. A root with `alpha in [-R,R]^N` can occur only on `K_R`; on that compact set at least one random coordinate is nonzero, so the adaptive coordinate ratios defining `Gamma_piv` are available.
- Data: for `R>0`, `alpha` has any Lebesgue density `f_mu` supported on `[-R,R]^N` with `||f_mu||_infinity <= kappa`; coordinates may be arbitrarily correlated. Set `A=(2R)^N kappa`.
- Algorithm: on pivot chart `j`, write `beta=alpha_{-j}` and solve the root equation as
  \[
  \alpha_j=T_j(\theta,\beta)
  =-\frac{b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)}{F_j(\theta)}.
  \]
  Apply the area formula to `(theta,beta) -> (beta,T_j(theta,beta))` on the subset where `|T_j| <= R`. Its Jacobian is `|partial_theta T_j| <= V_j(theta)`. Union-area subadditivity handles multiple and tangent roots, and the disjoint `theta`-chart partition makes the chart integrals sum to at most `Gamma_piv |I|` rather than an `N Gamma_piv |I|` union bound.
- Regime: the claim is uniform over all admissible laws and every positive-length interval `I subseteq Theta`, with exact bound `kappa(2R)^(N-1) Gamma_piv |I| = A Gamma_piv |I|/(2R)`. There is no hidden constant and no direct dependence on `q,M,Delta_aff`; all unresolved analytic scale dependence is exposed in `Gamma_piv`.

## Goal

- Theorem type: Affine coordinate-pivot sweep theorem with exact monic-polynomial specialization.
- Informal statement: Prove
  \[
  \sup_{\mu}\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:\phi_\alpha(\theta)=0\right]
  \le \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
  \]
  for every positive-length `I`. For Counter-example 1, `b=0`, `F=(1,theta/delta)`, and `R=1` give `Gamma_piv=1/delta`, quantitatively exposing the necessary scale. For an integer `d>=1`, `b(theta)=theta^d` and `F(theta)=(1,theta,...,theta^(d-1))`; the two baseline charts give
  \[
  V_{\rm const}(\theta)\le d+R\sum_{k=1}^{d-1}k
  \quad (|\theta|\le1),
  \qquad
  V_{\rm top}(\theta)\le1+R\sum_{m=1}^{d-1}\frac{m}{|\theta|^{m+1}}
  \quad (|\theta|>1).
  \]
  Hence `Gamma_piv <= d+R d(d-1)/2`, and the same theorem, with only the `d` lower coefficients random, yields exactly `kappa(2R)^(d-1)(d+R d(d-1)/2)|I|` for every bounded interval. Under the stated affine convention this specialization has `q=0`, `M=0`, random-vector degree `Delta_rnd=d-1`, affine envelope degree `Delta_aff=d`, `N=d`, and `A=(2R)^d kappa`.

## Notes

- Parent foundation papers: *Semi-bandit Optimization in the Dispersed Setting* (arXiv:1904.09014); *Level Sets and Extrema of Random Processes and Fields* (DOI:10.1002/9780470434642)
- Transfer map: preserves the lower-dimensional bounded-density affine coefficient model; changes polynomial-specific fixed charts to adaptive Pfaffian coordinate charts; reuses the area-formula Jacobian and cube-fiber sweep.
- Source alignment: preserves arbitrary correlated joint-density-capped lower coefficients, law- and interval-uniformity, the Balcan `q,M,Delta` convention, explicit `N,R,kappa,A` and conditioning dependence, quantitative `theta/delta` accounting, and internal exact affine recovery with the deterministic leading term outside the random density. It does not claim a general polynomial instance-complexity bound for `Gamma_piv`.
- Progress type: material_partial
- Materiality: This directly closes the selected Gap 3 interface: one affine theorem both handles translated hyperplanes and specializes to the exact Theorem 2 constant without a singular leading-coefficient law or an independent baseline proof. The remaining full-source gap is to bound `Gamma_piv` polynomially from meaningful Pfaffian instance data beyond the polynomial specialization.
- Significance: Adaptive pivoting uses the weakest pointwise exclusion compatible with finite interval anti-concentration--no forced root--instead of imposing a globally nonzero coordinate, uniform transversality, coefficient independence, or a lower norm bound.
- Feasibility: The coordinate-fiber sweep and no-forced-root condition are literature-derived from Balcan et al. (2020), while the exhaustion and area-formula treatment are standard. The proof route is explicit: restrict to `K_R`, partition by pivots, apply the chart Jacobian bound, sum over disjoint parameter charts, and apply the density cap. A `full` candidate is unsupported because the surveyed Pfaffian count and decomposition results do not control metric chart speed, Counter-example 1 rules out `q,M,Delta`-only control, and directly assuming a polynomial bound for `Gamma_piv` would not provide the required primitive-source derivation.
- Consistency: The nondegeneracy and chart-speed quantities depend only on the fixed affine family and support radius, so they are primitive and checkable before sampling. The theorem assumes neither its root estimate nor a generated invariant, permits all coefficient correlations, and makes the affine baseline a genuine specialization. Its coordinate-fiber target is distinct from a homogeneous central-section theorem or a representation-specific complexity certificate.
