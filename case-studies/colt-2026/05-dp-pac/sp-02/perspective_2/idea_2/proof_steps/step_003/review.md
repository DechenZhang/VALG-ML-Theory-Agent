# Proof Step Review

## Step Review Identity

- Sketch attempt: `1`
- Step ID: `step_003`
- Unit attempt: `1`
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_003/proof.md`, SHA-256 `5cdf10aba1f0c0605220e786e2e13cb4254f34045dd07414388866a63fab6c5e`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Fixed-extremes moving-record databases

- Statement fidelity: The proposition proves the exact database interface required by the accepted sketch row. It keeps `i-1` fixed prefix records and `M-i` fixed suffix records, leaves the common block `J={h_i,...,h_(L-M+i)}`, places the moving record at ordered tuple position `i`, and states the exact size `|J|=L-M+1`.
- Proof validity: The three index ranges are disjoint and contain `(i-1)+(L-M+1)+(M-i)=L` coordinates. Every `S_x` therefore has exactly `M` distinct coordinates and the same fixed-template labels. In the pullback order, the coordinates are naturally decreasing; choosing the threshold at tuple coordinate `u_(s_-+1)(x)` gives label zero before that position and label one from that position onward, so every tuple is threshold-realizable. For `x != x'`, all ordered records agree except `(x,lambda_i)` versus `(x',lambda_i)` at position `i`, establishing exact one-record replacement adjacency.
- Cited-result and assumption audit: The only imported mathematical inputs are the current accepted `step_002` homogeneous set, pullback order, and adjacent index. Active Alon `lem:AtoP` is used only as mechanism lineage; its source proof's interior indexing is not imported. No theorem-facing assumption, properness condition, arithmetic-successor condition, or later-step output is added.
- Rigor checklist: Sample size, tuple-position identity, fixed labels, threshold choice, distinctness, quantifiers over every `x in J`, and the natural-order/pullback-order conversion are explicit. Since `L>=M+1`, `|J|>=2`, so the pairwise family is nonvacuous.
- Local adversarial test: At `L=M+1`, the moving block has exactly two points. At `i=1`, the prefix is empty and all fixed records form the suffix; at `i=M`, the suffix is empty and all fixed records form the prefix. Arbitrarily sparse coordinates and movement across the full block do not change the fixed tuple positions or require points outside `H`.
- Contribution to target step: It constructs the common family of threshold-realizable databases whose exact pairwise adjacency drives the privacy transfer.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact off-diagonal ranks in the moving block

- Statement fidelity: The lemma establishes exactly the two homogeneous-list ranks needed for the accepted rise: rank `i-1` for `z prec x` and rank `i` for `x prec z`, with no claim on the sampled diagonal coordinate `z=x`.
- Proof validity: Every fixed prefix point precedes all of `J`, and every fixed suffix point follows all of `J`. Thus a query before the moving point counts precisely the `i-1` prefix coordinates, while a query after it additionally counts the moving coordinate. No other sample coordinate can enter either count.
- Cited-result and assumption audit: The rank definition is the accepted `step_002` pullback-order rank, and the database layout is supplied by Proposition~\ref{prop:step-003-fixed-extremes}. No source-paper index or unstated monotonicity premise is used.
- Rigor checklist: The proof handles all `x,z in J` with `z != x`, correctly treats empty query sides as vacuous, and keeps the diagonal outside the off-sample homogeneity interface.
- Local adversarial test: For `i=1`, the genuine ranks are `0` and `1`; for `i=M`, they are `M-1` and `M`. When `x` is the first or last point of `J`, the missing side is vacuous rather than supplied by a phantom endpoint.
- Contribution to target step: It identifies the exact accepted list entries `p_(i-1)` and `p_i` governing every off-diagonal coordinate of the moving family.
- Verdict: PASS
- Repair direction: None.

### unit_003: Parameter-preserving arbitrary-output restrictions

- Statement fidelity: The proposition exports laws on the same cube `{0,1}^J` and proves both ordered `(epsilon,delta)` inequalities for every distinct pair. This is the exact privacy and arbitrary-output interface required by `step_004`.
- Proof validity: The restriction `rho_J` is a common deterministic measurable map. Since `S_x` and `S_x'` differ at exactly tuple position `i`, applying the wrapper's eventwise DP inequality to `rho_J^(-1)(E)` gives the first direction; swapping the ordered pair gives the second. Each direction uses one replacement comparison, with no intermediate database, composition, or group-privacy factor.
- Cited-result and assumption audit: Exact wrapper privacy and full-cube output scope are current accepted `step_002` conclusions. Coordinate measurability comes directly from `setting.md`. Restriction is postprocessing and does not assume threshold-shaped, monotone, proper, representable, or computationally bounded outputs.
- Rigor checklist: The event quantifier covers every subset of the finite common cube, the same output-coordinate map is used for every family member, and the privacy parameters remain exactly `(epsilon,delta)`.
- Local adversarial test: Even if the unrestricted output oscillates arbitrarily on `J`, the pushforward law is well-defined and the two DP directions still follow from the same adjacent ordered tuples. No conclusion depends on the moving coordinate's output bit.
- Contribution to target step: It supplies the pairwise one-record-indistinguishable arbitrary-output family on the coordinates later queried by binary search.
- Verdict: PASS
- Repair direction: None.

### unit_004: Pullback-oriented coordinate separation

- Statement fidelity: The proposition proves the required off-diagonal left/right separation with the exact public choices `r=(p_i+p_(i-1))/2`, `a_0=g_gap/100`, and `eta=a_0/M`, and it exports the equivalent lower-index/upper-index form after one common order-preserving relabeling.
- Proof validity: Homogeneity applies because every queried `z in J\{x}` is outside `S_x`. The rank lemma gives the upper bound `p_(i-1)+gamma` on the left and the lower bound `p_i-gamma` on the right. From the accepted rise and `gamma=g_gap/(100M)`,
  \[
  \frac{p_i-p_{i-1}}2-\gamma
  \ge \frac{73g_{\rm gap}}{200M}
  >\frac{g_{\rm gap}}{100M}=\eta.
  \]
  Hence both requested inequalities hold with strict slack. Since `0<=p_(i-1)<p_i<=1`, the midpoint satisfies `eta<r<1-eta`.
- Cited-result and assumption audit: The active source labels were checked against source SHA-256 `5eaeb54287aa8aa89a00ad4b05f9158b56e01450a18e635afeecc4ed4e97128f`: active `lem:AtoP` is at `ADP.tex:669-685`, its proof at `750-770`, and `lem:reduction` at `716-720`. The source supplies lineage only. The current proof correctly avoids the source proof's mismatched interior indices and derives the endpoint-safe ranks and margin from the accepted `step_002` statements.
- Rigor checklist: The mesh and gap constants have explicit provenance, all quantifiers exclude only the diagonal, and the endpoint entries `p_0,p_1,p_(M-1),p_M` are genuine accepted list coordinates. The common relabeling preserves both privacy and coordinate marginals.
- Local adversarial test: At `i=1` the calculation uses `p_0,p_1`; at `i=M` it uses `p_(M-1),p_M`. Because `preceq` is reverse natural `q`-order, listing `J` by `preceq` gives low marginals at lower indices and high marginals at higher indices. Listing by natural order would reverse both the indices and clauses; the proof does not reverse only one side and therefore preserves the sign.
- Contribution to target step: It turns the accepted adjacent list rise into the exact margin `eta=a_0/M` on the same common-cube laws consumed downstream.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial claim is omitted from the local lemma map. Fixed-extreme counting, tuple distinctness, threshold realizability, tuple-position identity, and endpoint layouts are contained in unit_001; all off-diagonal and endpoint rank calculations are in unit_002; common-cube measurability, arbitrary-output restriction, and both DP directions are in unit_003; and the midpoint range, mesh domination, exact margin, pullback sign, endpoint entries, and common reindexing are in unit_004. The target assembly introduces no additional lemma. `global_proof.md` and other global diagnostics are not used as proof evidence.

## Target Claim Audit

The proof establishes the exact accepted `step_003` claim under the unchanged accepted `step_002` interface. For every accepted homogeneous set `H`, list `(p_0,...,p_M)`, and adjacent-rise index `i`, it constructs a common block `J` with `|J|=|H|-M+1`, laws `(P_x)_(x in J)` on `{0,1}^J`, both pairwise `(epsilon,delta)` inequalities for every distinct ordered pair, and the two off-diagonal coordinate inequalities with the universal exact margin `eta=a_0/M`. It covers `i=1`, `i=M`, `L=M+1`, first/last moving points, sparse coordinates, `delta=0`, `epsilon=1`, and arbitrary improper outputs. No diagonal assertion, hard prior, product-law conclusion, binary-search conclusion, or stronger privacy/accuracy premise is introduced.

## Explicit Rate Audit

This step is rate-bearing and satisfies the explicit-rate interface. It exposes `n,N,M=9n,epsilon,delta,|H|,|J|`, the accepted rise, `gamma=g_gap/(100M)`, `r`, `a_0=g_gap/100`, and `eta=a_0/M`. The only hidden dependence is on the already proved universal numerical constant `g_gap`; no constant depends on the kernel, privacy parameters, output representation, parity, interval, moving point, or query coordinate. Zero-one coordinate marginals and ordered replacement adjacency are fixed; the probability mode is exact marginal probability plus eventwise two-sided DP; the horizon is one fixed `M`-record sample and one replacement comparison per direction; and the norm mode is scalar coordinate-marginal separation. The displayed inequality proves the only term absorption, there is no probability conversion, and privacy is exported without loss. The construction is independent of `k` and preserves the accepted one-chain baseline at `k=1`.

## Notation Surface Audit

All helper objects have visible provenance and appropriate scope. The public-facing interface is limited to inherited `M,g_gap,gamma,H,(p_0,...,p_M),i`, the new block `J`, laws `(P_x)`, midpoint `r`, constant `a_0`, and margin `eta`. Fixed extremes, tuple records, `rho_J`, and `Delta_i` remain proof-local; `psi`, `preceq`, `iota`, `R_iota`, and the reindexed laws are appendix-local translation devices. The proof exports no unnecessary helper dictionary. The current adjacent-rise tag `(A1)` and the dependency-local expected-risk tag `(A1)` are explicitly distinguished by scope and do not alter the accepted assumption interface.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-003-fixed-extremes} constructs the exact adjacent database family, Lemma~\ref{lem:step-003-ranks} identifies ranks `i-1/i`, Proposition~\ref{prop:step-003-private-restrictions} transfers exact privacy to one common arbitrary-output cube, and Proposition~\ref{prop:step-003-margin} applies the accepted homogeneity estimate and adjacent rise to obtain `eta=a_0/M`. These named results jointly imply every quantified clause of the target. The output laws, queried coordinates, privacy events, and margin coordinates are identical objects rather than surrogate or properized outputs, and the pullback order is retained through assembly so the rise sign is unchanged.

## Review Rationale

`ACCEPTED` is the smallest sound status. All four local units are self-contained relative to the accepted dependency, mathematically valid, and jointly prove the unchanged sketch-row interface. The highest-risk points all pass: exact source-label mapping without reliance on the source's faulty indices, fixed extremes and moving-record placement, endpoint ranks, ordered tuple identity, one-record adjacency in both DP directions, common-cube arbitrary-output restriction, pullback-order sign, exact mesh arithmetic and margin `eta=a_0/M`, full quantifier and boundary coverage, explicit-rate preservation, and named-result assembly. No local proof, dependency, or sketch repair is required.
