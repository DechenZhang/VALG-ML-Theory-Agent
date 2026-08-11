# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: other_adaptive_response_tree_sign_rank_bound
  - model_class: binary_hypothesis_class
  - data_assumption: universal_distribution_target_pair
  - regime: tolerance_adversarial_oracle
  - algorithm: adaptive_randomized_unrestricted_sq

## Added Dimensions

- Finite terminal-output catalog: Require the learner specification to expose
  one finite, instance-independent catalog
  `G={g_1,...,g_L}` of binary functions on `X` such that every complete
  execution of every random tape and every tolerance-valid continuous reply
  transcript terminates with one member of `G`.  Queries and the transcript
  tree remain fully unrestricted and adaptive; only the terminal predictor is
  factored through this catalog.  The catalog is a static protocol object, not
  a representation assumption about `H`.
- Polynomial catalog budget: Add the checkable protocol bound
  `1 <= L <= B (1+m/tau^2)^k`, where `B>=1` and the integer `k>=1` are fixed
  family constants independent of `X`, `H`, `m`, `tau`, `epsilon`, the input
  distribution, the target, replies, and learner coins.  The leading `1`
  repairs the singleton, zero-query, and large-tolerance rate boundaries
  without changing the unrestricted tolerance semantics.
- Finite-simplex exactification: For each target `h`, use the universal
  expected-error premise and the finite output catalog to obtain, for every
  distribution `D`, a catalog member with correlation at least
  `rho=1-2 epsilon>1/2`.  Apply finite matrix minimax on every finite subset of
  `X`, then compactness of the fixed simplex `Delta_L`, to choose one mixture
  `lambda_h` whose score has `h(x) sum_i lambda_{h,i} g_i(x) >= rho` at every
  point.  This is a finite-dimensional common-map producer and does not use an
  exact annihilating probability, a changing witness measure, or a branch
  energy budget.
- Deterministic exact feature map: Set
  `phi(x)=(g_1(x),...,g_L(x))` and `w_h=lambda_h`.  The positive minimax
  margin gives strict signs on the original arbitrary domain, so
  `dc(H)<=L<=B(1+m/tau^2)^k`.  The theorem is conditional on the catalog
  factorization and is a polynomial exact-dimension special case, not a claim
  that every unrestricted response tree has such a catalog.

## Setting

- Context: Let `X` be an arbitrary domain and `H` a nonempty binary class in
  `{+1,-1}^X`.  The dimension complexity is the least `d` for one map
  `phi:X->R^d` and target-dependent weights with strict pointwise signs.
  The branch adds a finite catalog `G` only as a property of the learner's
  possible terminal predictors.
- Model: A fixed randomized adaptive learner makes at most `m` bounded SQ
  queries, with each query chosen from the complete preceding real-valued
  transcript and random tape.  A response at every node may be any value
  within `tau` of the corresponding population expectation.  There is an
  explicit selector from every complete valid execution to one of the catalog
  functions `g_i`; no finite response alphabet, favorable response, or exact
  expectation is assumed.
- Data: For every distribution `D` on `X`, every target `h` in `H`, and every
  adaptive tolerance-valid oracle policy, the learner's expectation over its
  own randomness satisfies
  `E[L_{D,h}(output)] <= epsilon` with `0<=epsilon<1/4`.  The catalog is fixed
  before `D`, `h`, replies, and coins and may contain functions outside `H`.
- Algorithm: The query family remains unrestricted (including label-independent
  components), adaptive, randomized, and tolerance-adversarial.  The proof
  uses only the finite output support and universal accuracy: for any fixed
  valid policy, the output distribution is supported on `G`, so some member has
  correlation at least `rho=1-2 epsilon`; the policy is not selected as a
  favorable oracle and the final map is independent of it.
- Regime: Arbitrary, possibly infinite `X`; integer `m>=0`; every `tau>0`;
  `0<=epsilon<1/4`; and catalog constants `B,k` fixed independently of all
  problem and protocol parameters.  The result has deterministic exact-sign,
  finite-horizon, domain-independent scope, while the finite-catalog condition
  and polynomial catalog budget are explicitly conditional refinements.

## Goal

- Theorem type: Conditional finite-output response-tree exact sign-rank theorem
  with a polynomial dimension corollary.
- Informal statement: If the universal adversarial-tolerance SQ learner has an
  explicit terminal catalog `G` of size `L` satisfying
  `L<=B(1+m/tau^2)^k`, then there is one deterministic map
  `phi(x)=(g_1(x),...,g_L(x))` and, for every `h`, a weight vector
  `w_h` in the simplex such that
  `h(x) * dot(w_h,phi(x)) >= 1-2 epsilon` for all `x`.  Consequently
  `dc(H)<=L<=B(1+m/tau^2)^k`, with no dependence on the domain, distribution,
  target, valid reply policy, or learner coins.  Removing the terminal-catalog
  condition while retaining a boundary-corrected linear rate remains open;
  the literal no-base `C m/tau^2` rate is not asserted on zero-query or
  large-tolerance boundary regimes.

## Notes

- Parent foundation papers: A General Characterization of the Statistical Query Complexity (COLT 2017); Limitations of Learning via Embeddings in Euclidean Half Spaces (JMLR 2002)
- Transfer map: preserves the full randomized adaptive unrestricted-SQ and adversarial-tolerance premise; changes the unconstrained response-tree target to an explicit finite-terminal-catalog condition and a polynomial exact-dimension bound; reuses finite minimax and common Euclidean sign-map construction.
- Source alignment: Arbitrary domains, one learner for every distribution-target pair, all tolerance-valid responses, expectation over learner coins, and exact deterministic signs are preserved.  The finite catalog and polynomial budget are explicit conditional refinements, and the bound is polynomial with a base term rather than the source's unconditional linear rate.
- Progress type: conditional
- Materiality: This is a domain-independent deterministic polynomial special case for unrestricted adaptive response trees.  It directly isolates terminal-output diversity as a sufficient response-tree compression interface and leaves the unresolved question of deriving such a catalog bound from `m` and `tau` alone.
- Significance: The finite-simplex minimax bridge supplies a common strict separator on an arbitrary domain without an exact annihilator or any cross-branch energy charge.  Unlike a CSQ-margin probabilistic relaxation or a response-grid construction, this result keeps label-independent query components, adversarial continuous replies, and the exact deterministic target.
- Feasibility: Finite-output response protocols and finite hypothesis pools are standard checkable special cases of response-tree/SQ models (Feldman 2017); the finite matrix minimax step and coordinate sign embedding are standard sign-rank tools (Ben-David et al. 2002).  The catalog requirement is a primitive, pre-instance, directly checkable protocol condition and is strictly weaker than assuming a representation of `H`: catalog membership alone says nothing about representing `H`, while universal accuracy supplies the target-dependent mixture weights.  Concrete checks are: (i) a fixed pool of `K` hypotheses selected by arbitrary adaptive SQ queries, giving `L=K`; (ii) a singleton constant class with a zero-query learner and one fixed correct output, valid for `m=0` and every `tau>0`; (iii) the two-constant class learned exactly from one label-mean SQ when `0<tau<1`, with `L=2`; and (iv) a two-round tree with arbitrary real replies and four terminal labels, where all continuous branches still factor through `L=4`.
- Consistency: For fixed `h` and any finite-support distribution on a finite `F subset X`, the premise implies `max_i E_D[h g_i]>=rho`; finite minimax gives a simplex mixture with margin `rho` on `F`.  The closed constraints on the compact simplex `Delta_L` have the finite-intersection property, yielding one `w_h` for all of arbitrary `X`.  Thus the producer-consumer path is catalog -> correlation gap -> finite minimax -> compactness -> exact map, with no generated invariant, exact probability barycenter, changing norm, or accumulated branch defect.  The rate exposes `m`, `tau`, `epsilon`, `L`, `B`, and `k`; `B,k` are fixed family constants, the theorem is deterministic at fixed horizon `m`, and hidden constants have no domain or target dependence.  The leading base term handles singleton, zero-query, and large-tolerance boundaries, while removal of the catalog condition and a catalog-free boundary-corrected linear bound remain explicit gaps.
