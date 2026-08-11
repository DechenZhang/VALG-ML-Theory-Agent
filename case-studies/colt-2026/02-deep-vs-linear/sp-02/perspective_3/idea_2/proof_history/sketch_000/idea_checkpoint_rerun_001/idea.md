# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: other_adaptive_response_tree_sign_rank_bound
  - model_class: binary_hypothesis_class
  - data_assumption: universal_distribution_target_pair
  - regime: tolerance_adversarial_oracle
  - algorithm: adaptive_randomized_unrestricted_sq

## Added Dimensions

- CSQ child protocol: Restrict every node of the retained adaptive randomized
  response tree to a correlation query
  `q_z(x,y) = y f_z(x)` with `f_z:X->[-1,1]`.  Replies are still arbitrary
  real values in the full tolerance slab, and the same learner must work for
  every distribution, target, and tolerance-valid response policy.  This is an
  explicit CSQ subfamily of the fixed unrestricted-SQ anchor, not a favorable-
  oracle or response-grid reduction.
- Source-certified margin interface: Use the distribution-independent weak-CSQ
  to margin representation theorem of Feldman (STOC 2008) as an explicit
  conditional interface whose hypotheses include the randomized expected-edge
  guarantee and the adversarial-tolerance CSQ convention.  The interface
  supplies a source-compatible separable Hilbert space `K`, a shared map
  `psi:X->K` with `||psi(x)||<=1`, unit (or norm-at-most-one) vectors `u_h` for
  `h in H`, and a margin `gamma>0` such that
  `h(x)<u_h,psi(x)> >= gamma` for every `x`.  The interface is a cited
  source-derived obligation, not an assumed deterministic finite sign map.
- Shared random projection: Apply the margin-to-probabilistic-dimension random
  projection interface of Kamath et al. (COLT 2020) in its Hilbert-space
  convention.  Draw `R:K->R^d` before seeing `(D,h)`, all oracle replies, or
  learner coins, set `phi_R(x)=R psi(x)`, and use `R u_h` as the comparison
  weight.  Pairwise subgaussian concentration transfers the Hilbert margin to
  expected 0/1 error without an exact annihilating probability or a cross-
  branch pivot energy argument.
- Target and rate repair: Target the source-endorsed probabilistic dimension
  `dc_alpha` for an explicit `0<alpha<1/2`, with
  `d = max{1,ceil(c gamma^(-2) log(2/alpha))}`.  The conditional source
  interface includes
  `gamma^(-1) <= P_CSQ(m,tau^(-1),(1-2 epsilon)^(-1))`, where the fixed
  universal polynomial `P_CSQ` is normalized to be at least one.  This gives
  a domain-independent polynomial bound in the displayed parameters.  The
  explicit base term handles singleton and zero-query boundaries; no claim of
  `C m/tau^2` or exact deterministic `dc` is made.

## Setting

- Context: Let `X` be an arbitrary domain and `H` be a binary class in
  `{+1,-1}^X`.  In addition to the exact deterministic dimension in the
  source problem, use the source's probabilistic dimension `dc_alpha(H)`: a
  single law over maps `phi:X->R^d` must satisfy, for every distribution `D`
  and target `h`,
  `E_phi[ inf_w Pr_{x~D}[h(x)<w,phi(x)> < 0] ] <= alpha`.
  The map law is chosen before `D` and `h`.
- Model: A fixed randomized adaptive learner has at most `m` CSQ nodes,
  each query of the form `y f_z(x)` with `|f_z(x)|<=1`; the response at a
  node may be any value within `tau` of `E_D[f_z(x)h(x)]`.  The learner's
  expected binary loss is at most `epsilon<1/4` for every `D`, every `h`, and
  every such adversarial response policy.  The branch additionally carries
  the explicit source-compatible Hilbert margin certificate `(K,psi,{u_h},
  gamma)` described above, with `gamma^(-1)` bounded by the fixed polynomial
  `P_CSQ(m,tau^(-1),(1-2 epsilon)^(-1))` under the standard normalized CSQ
  tolerance convention.
- Data: No support, finiteness, compactness, margin attainment, or domain-size
  assumption is added.  The margin certificate is a conditional, cited
  interface and may live in an infinite-dimensional Hilbert space; it is not
  promoted to an unconditional public conclusion.
- Algorithm: The learner remains adaptive and randomized and is evaluated
  against the full continuous adversarial tolerance slabs.  The representation
  post-processing samples `R` independently of the instance and uses the
  standard subgaussian inner-product concentration bound to obtain the stated
  `dc_alpha` map law.  No nearest-grid reply, complete response-grid replay,
  exact-expectation oracle, or selected favorable branch is used.
- Regime: Arbitrary (possibly infinite) `X`, finite `m`, `0<tau<=1`, and
  `0<alpha<1/2`; the CSQ-to-margin source is invoked in its standard normalized
  tolerance range.  The theorem keeps the universal distribution-target
  quantifiers and expectation over learner coins, but explicitly labels the
  CSQ restriction, normalized tolerance regime, positive-`alpha` target, and
  source-margin interface as a partial/conditional scope.

## Goal

- Theorem type: Conditional source-endorsed probabilistic-dimension bound for
  an adaptive adversarial CSQ response tree.
- Informal statement: Assuming the source-compatible CSQ margin interface,
  prove that for every `0<alpha<1/2`,
  `dc_alpha(H) <= max{1,ceil(c gamma^(-2) log(2/alpha))}`; after substituting
  the cited margin bound, obtain
  `dc_alpha(H) <= max{1,ceil(c P_CSQ(m,tau^(-1),
  (1-2 epsilon)^(-1))^2 log(2/alpha))}` with no dependence on `X`, `D`, or
  `h`.  For `epsilon>0`, taking `alpha=epsilon` gives the source's
  `dc_{C epsilon}` relaxation with `C=1`; the `epsilon=0` exact deterministic
  case remains outside this target.  The exact unrestricted-SQ deterministic
  `C m/tau^2` implication is deliberately left open.

## Notes

- Parent foundation papers: Evolvability from Learning Algorithms (STOC 2008); Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity (COLT 2020)
- Transfer map: preserves universal adaptive randomized tolerance-slab semantics on the CSQ subfamily; changes exact deterministic sign rank to `dc_alpha`; reuses the CSQ-to-margin and random-projection interfaces, with no response grid, overlap pivots, or branch-energy closure.
- Source alignment: Arbitrary domains, one learner for all distribution-target pairs, adversarial tolerance responses, and expectation over learner coins are retained; the CSQ-only child restriction, positive-`alpha` probabilistic target, and cited margin certificate are explicit target-changing conditions, so this is not presented as the full unrestricted deterministic implication.
- Progress type: conditional
- Materiality: This gives a domain-independent probabilistic-dimension theorem for the unresolved correlation-query subfamily and converts the known CSQ geometry into a finite-dimensional map law.  It directly isolates the remaining gap to unrestricted label-independent query components, exact deterministic signs, and the linear `m/tau^2` rate rather than repeating the response-grid construction.
- Significance: The random projection is shared before the instance and controls every distribution only through the margin concentration inequality; it avoids the prior branch's false exact probability annihilator and its unsupported cross-witness energy budget.  The result is a source-endorsed relaxation with a concrete quantitative bridge, not a favorable-oracle or fixed-distribution statement.
- Feasibility: The CSQ-to-margin interface is standard/literature-derived from Feldman (2008) under the explicitly stated randomized expected-edge and tolerance conventions; the margin-to-probabilistic-dimension projection and its subgaussian inner-product concentration are literature-derived from Kamath et al. (2020) and can be restated in current notation.  Interface checks include (i) the constant class `{+1,-1}` with `q(x,y)=y`, `tau<1`, `psi(x)=1`, and `gamma=1`; (ii) all labelings of `X={x_1,...,x_K}` with `K` coordinate CSQs, where `tau<=epsilon/K` gives loss at most `K tau<=epsilon` and the normalized one-hot map has margin `1/sqrt(K)`; and (iii) any bounded-margin halfspace class whose correlation learner satisfies the cited CSQ theorem.  These examples also verify that the map law is instance-independent and that the projection error integrates over arbitrary `D`.
- Consistency: `R` and `psi` are fixed independently of `D`, `h`, replies, and coins, while `u_h` may depend only on `h`; concentration gives `Pr_R[h(x)<Ru_h,Rpsi(x)> <= 0] <= 2 exp(-c d gamma^2)` pointwise and hence the required expected loss after integrating `D`.  The exposed variables are `m`, `tau`, `epsilon`, `gamma`, and `alpha`; `c` is universal, `P_CSQ` is the fixed cited-source polynomial, and neither has hidden dependence on `X`, `H`, `D`, `h`, replies, or coins.  The probability mode is expectation over the pre-instance projection law, the horizon is finite `m`, and the norms are the stated Hilbert and Euclidean norms.  The explicit base term removes the singleton and `m=0` rate contradiction, and the target does not rely on exact annihilation, generated invariants, a finite response alphabet, or a hidden domain-size parameter.  The unrestricted-SQ/non-CSQ and exact deterministic gaps remain explicit rather than being silently claimed solved.
