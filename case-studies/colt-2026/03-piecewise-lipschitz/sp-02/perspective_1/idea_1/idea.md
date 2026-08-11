# Idea

## Perspective Anchor

- Tuple: `(analysis_target=other_uniform_interval_root_anti_concentration, model_class=nonvanishing_one_dimensional_pfaffian_vectors, data_assumption=cube_supported_joint_density_capped_coefficients, regime=uniform_over_laws_and_positive_length_intervals, algorithm=projective_hyperplane_sweep)`

## Added Dimensions

- Anchored presentation: write `Theta=[c-h,c+h]`, `h>0`, set `x=(theta-c)/h`, and take the source feature vector to be `F(theta)=G(x)` with the literal projective anchor `G_1(x)=1`. Thus nonvanishing is produced by a primitive normalization rather than by an assumed lower bound on `||G||_2`.
- Coefficient-and-range certificate: require the common Pfaffian chain to stay in the unit box on `x in [-1,1]`, and expose the `l_1` coefficient budgets `B_P` for its derivative polynomials and `B_Q` for the output polynomials. These are static representation data, not a bound on the desired projective speed.
- Affine baseline interface: include in the same swept-hyperplane area theorem a coordinate-pivot formula for `F_0(theta)+<alpha,F(theta)>`; it keeps the deterministic leading term outside the random vector and admits the exact monic specialization.

## Setting

- Context: Use the Balcan--Nguyen--Sharma (2025) convention exactly in the normalized coordinate `x`: a triangular chain `(eta_1,...,eta_q)` satisfies `eta_j'(x)=P_j(x,eta_1,...,eta_j)` with `deg(P_j)<=M`, and `G_i(x)=Q_i(x,eta_1,...,eta_q)` with `deg(Q_i)<=Delta`. The ambient parameter dimension is `p=1`. Require `|eta_j(x)|<=1` on `[-1,1]`, define `B_P=max_j ||coeff(P_j)||_1` (and `B_P=0` if `q=0`), and define `B_Q=max_i ||coeff(Q_i)||_1`; the anchor is `Q_1=1`. Under `x=(theta-c)/h`, `q,M,Delta` are unchanged and differentiation in `theta` contributes exactly the exposed factor `h^(-1)`.
- Model: The central family is `phi_alpha(theta)=<alpha,F(theta)>` with `F(theta)=G((theta-c)/h)`. Since `G_1=1`, `||F(theta)||_2>=1` and `gamma_F=F/||F||_2` is defined everywhere. For the baseline clause, let `phi_alpha^aff(theta)=F_0(theta)+<alpha,F(theta)>`; for a measurable partition `I=union_j E_j` with `F_j != 0` on `E_j`, set `T_j(theta,beta)=-F_0(theta)/F_j(theta)-sum_{i != j} beta_i F_i(theta)/F_j(theta)` for `beta in [-R,R]^(N-1)`.
- Data: `alpha` has any Lebesgue density `f_mu` supported on `[-R,R]^N` with `||f_mu||_infinity<=kappa`; coordinates may be arbitrarily correlated. Set `A=(2R)^N kappa`.
- Algorithm: Use the area formula for the coefficient-space union swept by the central hyperplanes `gamma_F(theta)^perp`. Its normal velocity is `|<gamma_F'(theta),a>|`, and Ball's cube-section theorem controls every section. For the affine clause use the area formula for `(theta,beta) -> (beta,T_j(theta,beta))`, whose Jacobian is `|partial_theta T_j|`; exhaust each pivot set by `E_{j,m}={theta in E_j: |F_j(theta)|>=1/m}` before sending `m` to infinity. Union-area multiplicity handles tangent and multiple roots; identically-zero coefficient families form a proper affine subspace and hence have probability zero.
- Regime: The bound is ordinary probability for each law, deterministic in the feature presentation, Euclidean in projective speed, and uniform over every admissible `mu` and every positive-length `I subseteq Theta`. The exposed instance tuple is `(q,M,Delta,N,R,kappa,A,B_P,B_Q,h^(-1))`; there are no hidden constants, no confidence parameter, and no dependence on the chosen law or interval.

## Goal

- Theorem type: Anchored coefficient-normalized Pfaffian hyperplane-sweep theorem with exact affine-monic recovery.
- Informal statement: First derive, directly from the primitive presentation,
  `|dG_i/dx| <= Delta B_Q(1+q B_P)`,
  `Gamma_proj(F) <= sqrt(N) Delta B_Q(1+q B_P)/h`,
  using `d(G/||G||_2)/dx=(I-gamma_G gamma_G^T)G'/||G||_2` and the anchor `||G||_2>=1`. Combine this with the swept-set area formula and Ball's sharp central-section bound to prove
  `C_D^Pf <= A sqrt(N/2) Gamma_proj(F) <= A N Delta B_Q(1+q B_P)/(sqrt(2) h)`.
  Thus every new conditioning quantity is polynomially bounded in the declared raw instance data, while `M` is explicitly present with degree-zero dependence because the unit-box coefficient envelope controls every degree-`M` chain polynomial by `B_P`. In the same theorem prove the affine chart inequality
  `Pr_mu[exists theta in I: F_0(theta)+<alpha,F(theta)>=0] <= kappa sum_j int_{E_j} int_{[-R,R]^(N-1)} |partial_theta T_j(theta,beta)| dbeta dtheta`.
  For `p_alpha(theta)=theta^d+sum_{k=0}^{d-1} alpha_k theta^k`, pivot on `alpha_0` when `|theta|<=1` and on `alpha_{d-1}` when `|theta|>1`. The chart velocities are at most `d+R sum_{k=1}^{d-1}k` and `1+R sum_{k=0}^{d-2}(d-1-k)`, respectively, so this general affine clause itself gives exactly
  `Pr_mu[exists theta in I: p_alpha(theta)=0] <= kappa(2R)^(d-1)(d+R d(d-1)/2)|I|`
  for every bounded interval `I`, with only the `d` lower coefficients random. The specialization has `q=0`, `M=0`, augmented `Delta=d`, `N=d`, and `A=(2R)^d kappa`. Finally, Counter-example 1 has `h=1`, `q=0`, `Delta=1`, `N=2`, and `B_Q=1/delta`, so the theorem's constant grows as `1/delta`, matching the required scale of the exact lower bound `1/(4 delta)`.

## Notes

- Parent foundation papers: *How Many Zeros of a Random Polynomial Are Real?* (DOI:10.1090/S0273-0979-1995-00571-9); *Semi-bandit Optimization in the Dispersed Setting* (arXiv:1904.09014)
- Transfer map: preserves the normalized central sweep and bounded-density affine pivot geometry; changes the uncontrolled projective-speed hypothesis to an anchored unit-range Pfaffian presentation; reuses the area formula, Ball's section bound, and coordinate-chart Jacobians.
- Source alignment: preserves the Balcan `q,Delta,M` convention, arbitrary correlated full joint densities, all-law/all-interval uniformity, explicit `N,R,kappa,A` and conditioning dependence, Counter-example 1's metric scale, and exact internal affine recovery of Theorem 2 without a singular random leading coordinate. The full claim is for the declared anchored, unit-range, coefficient-controlled normalization; it does not assert that every raw Pfaffian presentation can be converted to this form with polynomial budgets.
- Progress type: full
- Materiality: supplies a natural normalization for a declared nontrivial Pfaffian regime and proves, rather than assumes, polynomial control of its projective conditioning in raw coefficient, chain-range, and domain-scale data; the same theorem supplies the mandatory polynomial baseline.
- Significance: unlike the prior `Gamma_proj<infinity` fallback, the theorem closes the conditioning-growth interface. The constant anchor avoids the unsupported lower-margin parameter needed by a generic coefficient-envelope candidate, while the presentation covers more than an exponential-only subclass.
- Feasibility: the area and affine mechanisms are literature-derived. The anchored unit-range certificate is novel example-verified and directly checkable for several branch-specific regimes: monomial dictionaries `(1,x,...,x^d)` have `q=0,B_Q=1`; Counter-example 1 has `B_Q=1/delta`; normalized exponentials `(1,exp(b_i x-|b_i|))_i` have unit-range chains and `B_P=max_i |b_i|`; logistic dictionaries `(1,(1+exp(-b_i x))^(-1))_i` have `eta_i'=b_i eta_i(1-eta_i)` and `B_P<=2 max_i|b_i|`. The derivative bound is an elementary chain-rule consequence of these primitive data.
- Consistency: the theorem does not assume `Gamma_proj`, an interval root estimate, or a generated invariant. The anchor produces nonvanishing, the unit-box condition makes coefficient `l_1` budgets source-adequate for derivative control, `h^(-1)` records coordinate rescaling, and `B_Q=1/delta` prevents Counter-example 1 from evading the bound. The affine chart clause is part of the same area theorem, so monic recovery is a specialization rather than an independent citation or proof.
