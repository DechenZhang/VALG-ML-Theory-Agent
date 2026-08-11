# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: other_adaptive_response_tree_sign_rank_bound
  - model_class: binary_hypothesis_class
  - data_assumption: universal_distribution_target_pair
  - regime: tolerance_adversarial_oracle
  - algorithm: adaptive_randomized_unrestricted_sq

## Added Dimensions

- Response-tree normal form: expose a complete seed-indexed, depth-`m` tree whose node `z` carries the unrestricted query `q_z`, the decomposition `q_z(x,y) = a_z(x) + y b_z(x)` with `|a_z| + |b_z| <= 1`, and the full real tolerance slab of legal replies. Continuous reply values and every valid adaptive oracle policy remain in the tree; no grid or favorable-response reduction is made.
- Overlap-coupling pivot rule: couple two target/distribution executions whenever their current reply slabs overlap, and add a normalized node residual (or terminal-readout residual) to a common pivot list only when overlap is impossible. Prove a branch-uniform tree-energy inequality charging each independent pivot by `tau^2` and charging at most a constant per query, rather than counting the potentially infinite leaves.
- Exact sign-rank extraction: if a target is not sign-represented by the current pivot span, use finite-dimensional separation to obtain a finite-support distribution that annihilates that span, then run the learner with a tolerance-valid coupling policy. Show that the resulting non-overlap pivots strictly enlarge the span; termination at `O(m/tau^2)` pivots yields one target-independent coordinate map and strict signs for every target.

## Setting

- Context: Let `X` be arbitrary and `H` be a binary class contained in `{+1,-1}^X`. The sign matrix is `M(x,h) = h(x)`, and `dc(H)` is the least dimension of one feature map `phi:X -> R^d` for which every `h` in `H` is the exact sign of a linear functional on `phi(x)`.
- Model: A fixed randomized learner has a random tape `u`. For every `u`, every node `z = (u,v_{<t})` of its adaptive transcript tree carries a query `q_z:X x {+1,-1} -> [-1,1]`, and every leaf carries the learner's binary predictor. For a distribution `P` and target `h`, the legal reply set at `z` is the interval of values within `tau` of `E_P[q_z(x,h(x))]`. The response-tree compression and exactification statements are to be derived, not assumed.
- Data: The same learner uses at most `m` queries and, for every `P`, every `h` in `H`, and every adaptive policy selecting a reply from each legal interval, its output `h_hat` satisfies `E_u[L_{P,h}(h_hat)] <= epsilon`, where `0 <= epsilon < 1/4`.
- Algorithm: Query choice may depend on the complete preceding real-valued transcript and the random tape; oracle responses may be adversarially selected inside their tolerance intervals. The proof may use `q = a_q + y b_q` and common-response couplings, but it may not replace the oracle by exact expectations or restrict queries to CSQs.
- Regime: `m` is finite, `tau > 0`, the domain may be infinite, and no finite encoding, margin, support, or domain-size parameter is available. The final feature map must be deterministic and independent of `P`, `h`, all replies, and learner coins; the constant in the `O(m/tau^2)` bound is universal.

## Goal

- Theorem type: Unconditional adversarial-response-tree exact sign-rank compression theorem.
- Informal statement: Prove that the stated universal randomized adaptive SQ premise implies that there is one deterministic feature map `phi:X -> R^d`, independent of the distribution, target, valid oracle policy, and learner random tape, with `d <= C m/tau^2` for a universal `C`, such that every `h` in `H` has a vector `w_h` with `h(x) = sign(<w_h,phi(x)>)` for every `x` in `X`.

## Notes

- Parent foundation papers: A General Characterization of the Statistical Query Complexity (COLT 2017); Limitations of Learning via Embeddings in Euclidean Half Spaces (JMLR 2002)
- Transfer map: preserves the first paper's randomized, adaptive, adversarial-tolerance response geometry and the second paper's exact common Euclidean sign representation; changes distribution-specific discrimination into a branch-uniform tolerance-slab pivot factorization and reuses separation/minimax only as derived bridges.
- Source alignment: Preserves arbitrary domains, one learner for every distribution and target, every tolerance-valid response policy, unrestricted bounded queries, expectation over learner coins, `epsilon < 1/4`, deterministic exact `dc`, and the domain-independent `C m/tau^2` rate; no source-endorsed weakening is used.
- Progress type: full
- Materiality: The tree-energy and overlap-coupling lemma would compress all adaptive branches into the exact sign-rank bound requested in Gap 3, directly closing the unresolved unrestricted-SQ implication rather than proving a CSQ, fixed-distribution, probabilistic, or approximate surrogate.
- Significance: The route treats the learner as a continuous adversarial response tree and controls branch proliferation by a quantitative energy charge, so it addresses the missing adaptivity/tolerance step that transcript averaging and relaxed random-feature embeddings leave open.
- Feasibility: Query decomposition, adversarial-oracle coupling, randomized SQ minimax, and finite-dimensional separation are standard or literature-derived. The branch-uniform tree-energy lemma, its conversion of overlap failure into a strict pointwise separator, and the all-domain exactification are novel derived obligations, not assumptions. Concrete checks are: (i) the antipodal two-concept class `{h,-h}` with the one query `q(x,y) = y h(x)` and `tau < 1`, where the two slabs are disjoint and one pivot gives `phi = h`; (ii) a finite class `{h_1,...,h_K}` using the nonadaptive queries `q_i(x,y) = y h_i(x)` with `tau <= epsilon`, where arbitrary distributions and replies select a predictor of error at most `tau`, the common dictionary has `K = m` coordinates, and basis extraction is exact; and (iii) a two-round finite response tree whose node queries and terminal predictors lie in a fixed `K`-dimensional function dictionary, where Gram-Schmidt energy counts `K` pivots despite all four leaves and remains unchanged under randomized query order. These examples verify slab overlap, adversarial replies, adaptivity, and coin averaging without claiming the general lemma.
- Consistency: No grid, exact-expectation oracle, favorable response, fixed distribution, CSQ restriction, or hidden response-tree span is assumed. Pivot selection, finite-support separating distributions, accumulated energy bounds, generated coupling conditions, and the final strict-margin/sign bridge are explicit proof obligations; if any requires a theorem-contract change, this full candidate must be rejected rather than silently weakened. The construction uses functions on the original arbitrary domain and does not import domain-size dependence or a relaxed dimension notion.
