# Proof Sketch

## Formalized Setting

Let \(\mathcal X\) be arbitrary, \(\mathcal H\subseteq\{+1,-1\}^{\mathcal X}\), and use the losses from `setting.md`. Under `assump:sq-parameter-regime`, set
\[
K=\lceil1/\tau\rceil,\qquad
G=\{-1+2j/K:0\le j\le K\},\qquad
N=\lvert G\rvert^m=(K+1)^m.
\]
Let \(\rho:[-1,1]\to G\) be the fixed nearest-grid map. Under `assump:universal-adversarial-sq`, \(A\) is fixed before the instance, its complete tape is \(R\sim\mu\), and its expected binary loss is at most \(\varepsilon\) for every \((\mathcal D,h)\) and every tolerance-valid adaptive oracle policy.

For fixed tape \(r\) and \(z\in G^m\), replay \(A_r\) with replies \(z\) and pad suffixes after early stopping by the fixed grid value \(-1\in G\) to obtain \(g_{r,z}:\mathcal X\to\{+1,-1\}\). Define
\[
\phi_r(x)=(g_{r,z}(x))_{z\in G^m}\in\mathbb R^N,
\qquad \mathsf P_A=\operatorname{Law}(\phi_R).
\]
For each \((\mathcal D,h)\), the canonical oracle replies \(\rho(\mathbb E_{\mathcal D}q(x,h(x)))\); its recursively generated, suffix-padded transcript on tape \(r\) is \(z^{\mathcal D,h,r}\in G^m\).

## Formalized Goal

Prove under exactly the two setting assumptions that the pre-instance law \(\mathsf P_A\) satisfies, simultaneously for every \((\mathcal D,h)\),
\[
\mathbb E_{\Phi\sim\mathsf P_A}
\left[\inf_{w\in\mathbb R^N}
L_{\mathrm{tie}}(\mathcal D,h,x\mapsto\langle w,\Phi(x)\rangle)\right]
\le\varepsilon,
\]
with the sharper comparison chain in `setting.md`, and consequently
\[
\operatorname{dc}^{\mathrm{tie}}_{\varepsilon}(\mathcal H)
\le (\lceil1/\tau\rceil+1)^m.
\]

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

Use the selected framework, "Rounded finite response-tree one-hot embedding," from `technical_survey.md`. First certify the rounded canonical oracle query by query. Next enumerate the finite rounded response tree for each complete tape and push the resulting feature map through the tape law. Then show that the canonical path's one-hot coordinate is exactly the learner's binary output, including after early stopping. Finally compare the pointwise infimum with this coordinate, use the pushforward expectation identity and the learner guarantee, and count coordinates. No compression, minimax, derandomization, continuity argument, or external theorem is needed.

## Rate Objectives

- Theorem target: Exact expected-risk and dimension bound for the tie-penalized probabilistic representation.
- Objective type: fixed-horizon, exponential-in-\(m\), structural-parameter explicit, and tolerance explicit.
- Exposed variables: \(m\in\mathbb N_0\), \(\tau>0\), \(\varepsilon\in[0,1/4)\), \(K=\lceil1/\tau\rceil\), and \(N=(K+1)^m\).
- Hidden constants may depend on: None; both displayed bounds are exact.
- Hidden constants may not depend on: \(\mathcal X\), \(\lvert\mathcal X\rvert\), \(\mathcal H\), \(\mathcal D\), \(h\), the tape, or the transcript. There are no hidden constants.
- Fixed quantities: The domain, class, learner \(A\), and tape law \(\mu\) are fixed before the instance; the result is simultaneous over \((\mathcal D,h)\).
- Probability mode: Expectation only over \(R\sim\mu\), equivalently \(\Phi\sim\mathsf P_A\), with the oracle premise pointwise for every valid policy. No high-probability or conditioning conversion occurs.
- Horizon mode: Fixed finite horizon of at most \(m\) adaptive queries; no unbounded-horizon upgrade is claimed.
- Norm mode: Tie-penalized \(0\)-\(1\) risk for real scores and binary \(0\)-\(1\) risk for the selected binary coordinate; no vector norm or margin is used.
- Required bridge or simplification obligations: Prove \(\lvert\rho(u)-u\rvert\le1/K\le\tau\), \(\lvert G\rvert=K+1\), and \(\lvert G^m\rvert=(K+1)^m\), including \(m=0\); establish exact replay and pushforward identities; and do not drop or absorb any term.
- Baseline invariance obligations: Preserve exactly \(L_{\mathrm{tie}}=L_{\mathrm{bin}}\) on binary scores. When \(\varepsilon=0\), obtain expected tie loss zero with no rounding remainder.

## Assumption Provenance Objectives

- Valid canonical oracle and transcript: derived in `step_001` from the query range and primitive conditions `assump:sq-parameter-regime` and `assump:universal-adversarial-sq`.
- Response-tree map and pre-instance law: derived in `step_002` from the fixed learner, complete tape, finite budget, binary output, and finite grid. Independence from \((\mathcal D,h)\) is an output, not an assumption.
- Canonical coordinate and loss bridge: derived in `step_003` from `step_001` and `step_002` plus the primitive binary-output convention. No path-matching, nonzero-score, or tie-free fact is assumed.
- Final certificate: derived in `step_004` from `step_001`--`step_003` and the universal adversarial-oracle guarantee. No favorable-oracle, exact-expectation, finite-domain, or generated-event hypothesis is introduced.
- Conditional lemmas: None.

## Mechanism-Source And Boundary Stress

### `step_001`: Canonical oracle validity

- Step ID: `step_001`
- Claim class: Generated-condition validity for a finite adaptive SQ transcript.
- Theorem role: Produces the valid oracle used by the learner guarantee and the path consumed by `step_003`.
- Mechanism source: Direct derivation in the exact branch convention. Query range gives \(u=\mathbb E q\in[-1,1]\); the endpoint-covering grid has spacing \(2/K\), nearest-grid radius \(1/K\), and \(K=\lceil1/\tau\rceil\) gives \(1/K\le\tau\).
- Source-to-claim adequacy: The same absolute-error tolerance, query normalization, and population expectation occur in `assump:universal-adversarial-sq`. The bound applies after every adaptive prefix.
- Residual-to-target adequacy: Produced reply \(\rho(u)\) is compared with legal-reply target \(u\) in absolute error. The only residual is \(\rho(u)-u\), fully controlled by \(1/K\le\tau\); no residual is uncontrolled.
- Key positive/control term or structural source: Grid half-spacing \(1/K\) and primitive threshold \(\tau\).
- Opposing defect terms: Rounding discrepancy only; midpoint choice can change its sign but not its magnitude.
- Closure/dominance/absorption relation: \(\lvert\rho(u)-u\rvert\le1/K\le\tau\) at each queried node; nothing is absorbed into risk.
- Accumulation behavior / scope compatibility: Oracle validity is querywise, not a sum. At most \(m\) independently valid replies are generated, so rounding errors do not accumulate.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Query range and grid geometry produce validity before the guarantee is consumed; dependency paths are `step_001` to `step_003` and `step_004`.
- Entry-state / first-update stress result: If \(m=0\), the path is the unique empty string and validity is vacuous. Otherwise the first expectation lies in \([-1,1]\) and its rounded reply is valid before the next query. For \(\tau\ge1\), \(K=1\) and radius one remains valid.
- Baseline conclusion preserved: N/A; the binary/tie and zero-error baselines are handled in `step_003` and `step_004`.
- Producer-consumer provenance: Produces \(\mathcal O^\rho_{\mathcal D,h}\) and \(z^{\mathcal D,h,r}\); consumed by `step_003` and `step_004`.
- Null or boundary regime tested: \(m=0\), \(\tau\ge1\), \(u=\pm1\), and midpoint rounding ties. The case \(\tau=0\) is excluded by the primitive parameter regime.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If radius exceeded \(\tau\), the policy could be invalid and the learner guarantee unavailable.
- Repair route if source is unsupported: None.

### `step_002`: Pre-instance response-tree map

- Step ID: `step_002`
- Claim class: Structural generated-object construction and exact dimension count.
- Theorem role: Produces the pre-instance feature-map law required by the dimension definition.
- Mechanism source: Direct construction. A complete tape makes the protocol deterministic; finite \(G^m\) enumerates every rounded reply string; padding by the fixed value \(-1\in G\) makes every coordinate total; and pushforward through \(\mu\) produces \(\mathsf P_A\).
- Source-to-claim adequacy: The learner and tape law are fixed before \((\mathcal D,h)\), while \(\tau>0\) and finite \(m\) make \(G^m\) finite. Adaptivity changes coordinate contents, not the common index set.
- Residual-to-target adequacy: Produced \(\phi_r\) is exactly the downstream feature map, and \(\mathsf P_A\) is exactly its pushforward law. No transform or surrogate is used; object residual is zero.
- Key positive/control term or structural source: Exhaustive indexing by \(G^m\) and the pre-instance complete-tape law.
- Opposing defect terms: Missing branches, undefined early-stop suffixes, or instance dependence. Enumeration, padding, and the fixed law eliminate them; duplicate coordinates are harmless.
- Closure/dominance/absorption relation: Every rounded path is one coordinate and \(\lvert G^m\rvert=(K+1)^m\); no approximation is used.
- Accumulation behavior / scope compatibility: Finite exhaustive construction with no numerical defect; \(G^0\) is the singleton empty string.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Primitive learner data and the `step_001` grid produce the map before any risk conclusion; path is `step_001` to `step_002` to `step_003` to `step_004`.
- Entry-state / first-update stress result: At \(m=0\), each tape already yields a terminal predictor, \(\phi_r\) has one empty-string coordinate, and \(N=1\). At positive depth, each taped prefix determines a unique next query or output.
- Baseline conclusion preserved: N/A; this constructs the randomized map in the formalized target and makes no deterministic exactification claim.
- Producer-consumer provenance: Produces \(g_{r,z}\), \(\phi_r\), \(\mathsf P_A\), and \(N\); consumed by `step_003`, `step_004`, and final assembly.
- Null or boundary regime tested: \(m=0\), stopping at any prefix, duplicate predictors, and arbitrary or infinite \(\mathcal X\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without complete-tape replay, padding, or pre-instance fixation, the coordinate or admissible law could fail to exist.
- Repair route if source is unsupported: None.

### `step_003`: Exact coordinate and tie-loss bridge

- Step ID: `step_003`
- Claim class: Exact object-target, nonzero-coordinate, and binary-to-tie loss bridge.
- Theorem role: Connects the feature map to the actual learner output without simulation or tie residual.
- Mechanism source: Direct current-notation derivation. Actual and replayed runs start from the same taped state; equality of each reply prefix gives the same next query, and replay supplies the canonical reply. Padding preserves an output after stopping. The canonical standard basis vector selects this coordinate.
- Source-to-claim adequacy: Finite prefix induction gives \(g_{r,z^{\mathcal D,h,r}}=A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\) as binary functions. Since output and target lie in \(\{+1,-1\}\), their product never vanishes, so the events with product at most zero and below zero coincide.
- Residual-to-target adequacy: Produced score \(\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\rangle\) equals the consumed learner output pointwise. Score residual and tie-risk-to-binary-risk residual are both zero in the theorem interface.
- Key positive/control term or structural source: One-hot coefficient one on a binary coordinate, giving a nonzero score everywhere.
- Opposing defect terms: Adaptive path mismatch, suffix ambiguity, and score ties; prefix induction, padding, and binary range eliminate them.
- Closure/dominance/absorption relation: Coordinate equality, actual-output equality, and loss-event equality are exact.
- Accumulation behavior / scope compatibility: Prefix discrepancy satisfies the zero-forcing induction "agreement through round \(t-1\) implies agreement at round \(t\)." No defect accumulates.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_001` produces the path and `step_002` the coordinates before this step; replay does not assume the risk conclusion.
- Entry-state / first-update stress result: Taped states agree at the empty prefix; the first query and reply agree. If \(m=0\) or stopping occurs at the root, the terminal outputs agree without an update and \(e_{\emptyset}\in\mathbb R^1\) selects it.
- Baseline conclusion preserved: Exactly \(L_{\mathrm{tie}}(\mathcal D,h,g)=L_{\mathrm{bin}}(\mathcal D,h,g)\) for the selected binary coordinate. The zero weight has tie loss one but is not the comparison witness.
- Producer-consumer provenance: Consumes outputs of `step_001` and `step_002`; produces the comparison weight and exact loss certificate for `step_004`.
- Null or boundary regime tested: \(m=0\), immediate or intermediate stopping, midpoint grid ties, zero learner error, and the zero-weight alternative.
- Target conclusion false or theorem-critical obstruction present if source vanishes: A zero-valued or mismatched coordinate could add tie loss or disconnect the learner guarantee; exact binary selection excludes this.
- Repair route if source is unsupported: None.

### `step_004`: Expectation and dimension assembly

- Step ID: `step_004`
- Claim class: Final theorem closure and explicit quantitative bridge.
- Theorem role: Converts the three constructed interfaces into the simultaneous expected-risk and dimension bounds.
- Mechanism source: For each fixed \((\mathcal D,h,r)\), the infimum is at most loss at the `step_003` basis vector. Pushforward by \(r\mapsto\phi_r\) converts expectation under \(\mathsf P_A\) to expectation under \(\mu\). The `step_001` oracle is valid, so the universal adversarial-oracle guarantee applies.
- Source-to-claim adequacy: The pointwise comparison has the target tie-risk interface; the pushforward has the target randomness mode; and the primitive guarantee has the actual binary-output interface supplied by `step_003`. The basis vector may depend on \((\mathcal D,h,r)\) because it is used only to upper-bound the pointwise infimum inside the expectation; the same \(\mathsf P_A\) still works for every instance.
- Residual-to-target adequacy: Score, learner output, and losses are connected by zero-residual equalities. The only inequalities are the legal candidate-weight comparison and the primitive upper bound at scale \(\varepsilon\).
- Key positive/control term or structural source: Pointwise infimum domination and the universal expected-loss guarantee.
- Opposing defect terms: Instance-dependent map law, invalid oracle, favorable-oracle-only semantics, tie surcharge, expectation mismatch, or wrong count; `step_001`--`step_003` exclude them.
- Closure/dominance/absorption relation:
  \[
  \mathbb E_{\Phi\sim\mathsf P_A}\inf_w L_{\mathrm{tie}}(\mathcal D,h,\langle w,\Phi\rangle)
  \le \mathbb E_R L_{\mathrm{bin}}(\mathcal D,h,A_R^{\mathcal O^\rho_{\mathcal D,h}})
  \le \varepsilon,
  \]
  and independently \(\phi_r:\mathcal X\to\mathbb R^N\) with \(N=\lvert G^m\rvert=(K+1)^m\). No term is absorbed.
- Accumulation behavior / scope compatibility: There is no iterative defect or union bound. Expectation is taken once over the pre-instance tape law, while universality over instances is pointwise.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The dependency path is `step_001`, `step_002`, `step_003`, then `step_004`; no producer assumes the final conclusion.
- Entry-state / first-update stress result: At \(m=0\), the empty coordinate gives the same chain and the no-query guarantee applies. At \(\varepsilon=0\), nonnegativity and the exact chain yield expected tie loss zero.
- Baseline conclusion preserved: The source binary risk appears unchanged in the chain; exact/no-error behavior has no rounding remainder because rounding only selects a valid policy.
- Producer-consumer provenance: Consumes all preceding outputs and produces the theorem-facing risk certificate and dimension bound for final assembly.
- Null or boundary regime tested: \(m=0\), \(\varepsilon=0\), every \(\tau>0\) including \(\tau\ge1\), arbitrary domains, and noninjective tape-to-map pushforward. If two tapes yield the same map but different valid witness coordinates, the same pointwise infimum is below each tape-specific candidate loss, so the expectation inequality is unchanged.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without every-valid-oracle semantics or pointwise placement of the weight inside the infimum, the final implication would not follow.
- Repair route if source is unsupported: None.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Valid canonical policy and padded transcript | `step_001`, direct derivation in the setting's absolute-tolerance/query-range convention | Query range, \(K=\lceil1/\tau\rceil\), endpoint grid, fixed rounding, finite horizon | Rounding is controlled; no empirical or stochastic defect; padding is not an oracle reply | Reply \(\rho(u)\) targets expectation \(u\) in the same absolute-error interface; sole residual is at most \(1/K\le\tau\) | Querywise radius bound; no cross-round sum | Primitive \(\tau\) and radius \(1/K\) | `step_003`, `step_004` | None |
| Pre-instance law \(\mathsf P_A\) in dimension \(N=(K+1)^m\) | `step_002`, direct construction in the same complete-tape/adaptive-protocol convention | Fixed learner/tape law, deterministic replay, finite tree, binary output, fixed \(-1\) padding | Enumeration and padding control adaptivity/stopping; duplicates harmless; no instance input | Produced and consumed maps are identical in the theorem interface; pushforward is exact; residual zero | Each rounded path has a coordinate; \(\lvert G^m\rvert=(K+1)^m\), including \(\lvert G^0\rvert=1\) | Finite grid and fixed tape law | `step_003`, `step_004`, final theorem | None |
| Canonical one-hot score/output and tie/binary loss identity | `step_003`, direct prefix induction in the same tape, path-order, padding, and binary-output convention | Valid path, total map, deterministic taped replay, binary output | Prefix induction, padding, and binary range control path, stopping, and tie defects | Score and learner output agree pointwise in the consumed risk interface; both target-side residuals are zero | Exact replay, coordinate, and event equalities | Coefficient one and binary range | `step_004` | None |
| Expected risk and dimension-complexity certificate | `step_004`, direct assembly in the setting's pointwise-infimum and tape-expectation convention | Earlier interfaces and universal expected-loss bound | No rounding-risk, confidence, domain-size, tie, or asymptotic defect remains | Pushforward is exact and comparison residual is zero at target scale \(\varepsilon\) | Pointwise infimum comparison, expectation, primitive risk bound, exact count | Primitive \(\varepsilon\); no extra slack | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Valid canonical oracle and padded transcript | `step_001` from query range and grid geometry in the same absolute-tolerance convention | `step_003`, `step_004` | Selects a represented branch and licenses the learner guarantee | `step_001` to `step_003`; `step_001` to `step_004` | derived | None |
| Predictors, maps, pre-instance law, and exact count | `step_002` from fixed complete-tape replay, fixed padding, and the `step_001` grid | `step_003`, `step_004`, final assembly | Supplies the exact map object consumed by the randomized feature definition | `step_001` to `step_002` to `step_003` to `step_004` | derived | None |
| Basis weight and exact score/output/loss certificate | `step_003` from same-convention taped prefix induction on `step_001` and `step_002` outputs | `step_004` | Supplies the pointwise infimum witness and zero-residual risk transfer | `step_001` and `step_002` to `step_003` to `step_004` | derived | None |
| Expected tie-risk and dimension certificate | `step_004` from all earlier same-interface outputs and `assump:universal-adversarial-sq` | Final assembly | Establishes the exact formalized goal, including \(m=0\) and \(\varepsilon=0\) | `step_001` to `step_002` to `step_003` to `step_004` | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | For all \(u\in[-1,1]\), \(\lvert\rho(u)-u\rvert\le1/K\le\tau\). Thus the canonical policy is tolerance-valid and generates a unique padded path, empty when \(m=0\). | None | `assump:sq-parameter-regime`; `assump:universal-adversarial-sq` | Preserve adversarial adaptive semantics and handle \(\tau\ge1\), endpoints, midpoint ties, and zero queries without accumulating error. | Direct grid geometry and finite recursion; no cited theorem. | Legal canonical oracle and transcript. | Exact tolerance interface \(1/\lceil1/\tau\rceil\le\tau\), fixed finite horizon, no hidden dependence. | PENDING |
| `step_002` | Replay and padding define every \(g_{r,z}\), hence \(\phi_r\) and a pre-instance pushforward law in exact dimension \(N=(K+1)^m\), with \(N=1\) at \(m=0\). | `step_001` | `assump:sq-parameter-regime`; `assump:universal-adversarial-sq` | Resolve adaptivity and stopping while preserving pre-instance quantifier order on arbitrary domains. | Complete-tape determinization, exhaustive enumeration, padding, and pushforward; no cited theorem. | Exact random feature map, law, and count. | Exact structural rate \((\lceil1/\tau\rceil+1)^m\), no hidden constant or domain dependence. | PENDING |
| `step_003` | On the canonical path, replayed predictor, actual learner output, and selected coordinate agree pointwise; its tie loss equals binary loss. | `step_001`, `step_002` | `assump:universal-adversarial-sq` | Establish exact adaptive path matching and eliminate score ties without a margin assumption. | Finite prefix induction, coordinate definition, and binary loss-event identity; no cited theorem. | Zero-residual comparison certificate. | None. | PENDING |
| `step_004` | Compare the infimum with the basis weight, transfer pushforward expectation, invoke the valid-oracle learner guarantee, and apply the definition to obtain expected tie risk at most \(\varepsilon\) and dimension at most \(N\). | `step_001`, `step_002`, `step_003` | `assump:sq-parameter-regime`; `assump:universal-adversarial-sq` | Preserve pre-instance law, pointwise weight choice, expectation mode, universality, tie handling, and exact count. | Infimum comparison, pushforward identity, primitive guarantee, and definition; no cited theorem. | Exact formalized theorem, including \(m=0\) and \(\varepsilon=0\). | Assemble exact risk \(\varepsilon\) and dimension \((\lceil1/\tau\rceil+1)^m\), with no simplification or additive term. | PENDING |

## Dependency Notes

The graph is acyclic: `step_001` has no dependency; `step_002` uses its grid; `step_003` consumes the canonical path and map; and `step_004` consumes all three earlier interfaces. Every edge points to an earlier stable ID. For arbitrary \((\mathcal D,h)\), assembly applies the pointwise certificate tape by tape, takes pushforward expectation, invokes the learner guarantee for the valid canonical oracle, and uses the exact dimension count. Since \(\mathsf P_A\) was constructed without the instance, the same law works simultaneously for all instances.

## Blockers

None.
