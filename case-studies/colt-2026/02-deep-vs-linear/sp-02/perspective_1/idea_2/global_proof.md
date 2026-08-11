# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_2`.
- Global proof attempt: 2, matching the open `global | global | 2` row in `proof_tracker.md`.
- Triggering review: `perspective_1/idea_2/global_proof_review.md`, SHA-256 `46bac9df97c42ab755521a0d52ed1cd46f0a80439a7ff3ae728ec4c1f8f5dd1d`, with controlled status `REVISE_GLOBAL` for attempt 1.
- Goal mode: exact-goal mode.
- Setting: `perspective_1/idea_2/setting.md`, SHA-256 `af030e20283e9e27a4ac51dc4330b1d60674421f4ce9998f65d55a8ab0d7663d`.
- Reviewed sketch: `perspective_1/idea_2/proof_sketch.md`, sketch attempt 1, SHA-256 `6a69b27451fc87c6d40fb879f3a11602c8135de50236b7d4c019149840bf225a`.
- Reviewed sketch review: `perspective_1/idea_2/proof_sketch_review.md`, SHA-256 `5a1c69aa4a3f2e23cd897e1b12bc8ea37c5c7ae3de8f8aafc3459e12dc4f4f3d`.
- Sketch review status: `ACCEPTED`, with viability score 10 and no repair bundle.
- Binding accepted Step IDs: `step_001`, `step_002`, `step_003`, and `step_004`.
- This diagnostic keeps their claims, dependencies, assumptions, output targets, quantitative objectives, and generated-output interfaces unchanged.

## Status

COMPLETE_DRAFT

## Attempted Theorem Claim

Under `assump:sq-parameter-regime` and `assump:universal-adversarial-sq`, let
\[
K=\lceil 1/\tau\rceil,\qquad
G=\{-1+2j/K:0\le j\le K\},\qquad
N=\lvert G\rvert^m=(K+1)^m,
\]
and let \(\mathsf P_A\) be the law of the response-tree feature map \(\phi_R\) defined in `setting.md`. The law is fixed by \(A\), its complete-tape law \(\mu\), \(m\), \(\tau\), the fixed nearest-grid rule \(\rho\), and the fixed padding convention, before any pair \((\mathcal D,h)\) is chosen.

The exact attempted conclusion is that, simultaneously for every distribution \(\mathcal D\) on the arbitrary domain \(\mathcal X\) and every \(h\in\mathcal H\),
\[
\begin{aligned}
&\mathbb E_{\Phi\sim\mathsf P_A}
 \left[\inf_{w\in\mathbb R^N}
 L_{\mathrm{tie}}\bigl(\mathcal D,h,
 x\mapsto\langle w,\Phi(x)\rangle\bigr)\right]\\
&\quad\le
\mathbb E_{R\sim\mu}
 L_{\mathrm{tie}}\bigl(\mathcal D,h,g_{R,z^{\mathcal D,h,R}}\bigr)\\
&\quad=
\mathbb E_{R\sim\mu}
 L_{\mathrm{bin}}\bigl(\mathcal D,h,
 A_R^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\bigr)
\le\varepsilon.
\end{aligned}
\]
Consequently,
\[
\operatorname{dc}^{\mathrm{tie}}_{\varepsilon}(\mathcal H)
\le (\lceil1/\tau\rceil+1)^m.
\]

This is a fixed-finite-horizon statement. Its only outer randomness is the learner tape \(R\sim\mu\), equivalently \(\Phi\sim\mathsf P_A\); the guarantee is otherwise pointwise in \((\mathcal D,h)\) and in the choice of tolerance-valid oracle policy. The risk scale \(\varepsilon\) and dimension \((\lceil1/\tau\rceil+1)^m\) are exact, with no hidden constants or remainder. The branch remains a `material_partial` result and does not claim deterministic exact representation or polynomial response-tree compression.

## Whole-Proof Draft

Fix the learner \(A\), complete-tape law \(\mu\), and parameters satisfying the two primitive setting assumptions. Before choosing an instance, define \(K\), the grid \(G\), and the fixed rounding rule \(\rho\), then construct every complete-tape response-tree map \(\phi_r\), their pushforward law \(\mathsf P_A\), and the dimension \(N\) as detailed in B2; none of these objects uses \((\mathcal D,h)\). Then fix an arbitrary pair \((\mathcal D,h)\) and instantiate the canonical oracle \(\mathcal O^\rho_{\mathcal D,h}\) and its tape-dependent padded path \(z^{\mathcal D,h,r}\), whose validity is established in B1. The blocks remain displayed in the accepted Step-ID order B1-B6: B2 consumes only the pre-instance grid component of B1, not its per-instance oracle or path. Since the same pre-instance law is used and the subsequent argument needs no special property of the arbitrary pair, the final conclusion is simultaneous over all pairs.

### Block B1: Grid geometry and a legal canonical oracle (`step_001`)

Because \(\tau>0\), \(K=\lceil1/\tau\rceil\) is an integer at least one. The grid points
\(g_j=-1+2j/K\), \(0\le j\le K\), are distinct, include both endpoints of \([-1,1]\), and have adjacent spacing \(2/K\). Every \(u\in[-1,1]\) lies either at a grid point or in an interval \([g_j,g_{j+1}]\). Hence its nearest grid point is at distance at most half the spacing:
\[
\lvert\rho(u)-u\rvert
\le \frac{1}{K}.
\]
Moreover \(K\ge 1/\tau\), so inversion of positive quantities gives
\[
\frac1K\le\tau.
\]
The fixed tie-breaking rule at interval midpoints affects only the sign of the rounding residual, not this magnitude bound.

At any adaptive round of any taped execution, the current unrestricted SQ query \(q\) takes values in \([-1,1]\). Therefore
\[
u_q:=\mathbb E_{x\sim\mathcal D}q(x,h(x))\in[-1,1]
\]
and the canonical reply \(a_q=\rho(u_q)\) satisfies
\[
\lvert a_q-u_q\rvert\le 1/K\le\tau.
\]
This check is conditional on the current transcript and applies separately at every node reached by the adaptive protocol. Oracle legality is querywise: the tolerance definition does not add the residuals across rounds, so there is no \(m/K\) term and no accumulated risk error. Recursively applying this deterministic reply rule produces a unique actual reply prefix for each complete tape \(r\). If the protocol stops after \(s<m\) replies, appending the fixed value \(-1\in G\) only forms an index in \(G^m\); those suffix values are never supplied as further oracle replies. For \(m=0\), the transcript is the unique empty string and oracle validity is vacuous.

Thus \(\mathcal O^\rho_{\mathcal D,h}\) is an adaptive tolerance-valid policy in exactly the convention of `assump:universal-adversarial-sq`, and `step_001` exports both this legal policy and its unique padded transcript \(z^{\mathcal D,h,r}\).

### Block B2: Complete response-tree maps and a pre-instance law (`step_002`)

Fix a complete tape \(r\). Conditioning on this tape removes all learner randomness: the next query, stopping decision, and terminal predictor are deterministic functions of the preceding replies. For every full string \(z=(z_1,\ldots,z_m)\in G^m\), replay this deterministic protocol and supply \(z_t\) at its \(t\)-th query. If it stops after a prefix, retain its terminal binary predictor for every continuation of that prefix. This defines a total binary predictor
\[
g_{r,z}:\mathcal X\to\{+1,-1\}
\]
for every \(z\in G^m\), including strings whose suffix is never read.

The grid has exactly \(K+1\) points because the indices \(j=0,\ldots,K\) are distinct. Therefore
\[
\lvert G^m\rvert=\lvert G\rvert^m=(K+1)^m=N.
\]
This product convention includes \(G^0=\{\emptyset\}\) and \(N=1\) when \(m=0\). After fixing one common lexicographic ordering of \(G^m\), define
\[
\phi_r(x)=\bigl(g_{r,z}(x)\bigr)_{z\in G^m}
\in\{+1,-1\}^N\subset\mathbb R^N.
\]
The feature map is total even on an infinite domain because each coordinate is the terminal predictor returned by the fixed taped protocol; no enumeration of \(\mathcal X\) is used.

Now push the complete-tape law forward through \(r\mapsto\phi_r\):
\[
\mathsf P_A=(r\mapsto\phi_r)_{\#}\mu.
\]
The construction uses only the fixed learner, tape law, grid, response budget, ordering, and padding convention. It never uses \(\mathcal D\), \(h\), or a realized canonical transcript. Consequently \(\mathsf P_A\) is a single pre-instance law of maps into \(\mathbb R^N\), as required by the definition of \(\operatorname{dc}^{\mathrm{tie}}_\varepsilon\). Duplicate predictors, duplicate coordinates, or distinct tapes with the same \(\phi_r\) do not affect totality, dimension, or the pushforward law.

### Block B3: Zero-defect adaptive replay (`step_003`)

Fix the already arbitrary pair \((\mathcal D,h)\) and a tape \(r\). Compare two deterministic executions with the same initial taped state:

1. the actual interaction of \(A_r\) with \(\mathcal O^\rho_{\mathcal D,h}\); and
2. the replay defining \(g_{r,z^{\mathcal D,h,r}}\).

Let \(S_t^{\mathrm{act}}\) and \(S_t^{\mathrm{rep}}\) denote their states after \(t\) replies, up to the first stopping time, and let
\[
\Delta_t=\mathbf 1\{S_t^{\mathrm{act}}\ne S_t^{\mathrm{rep}}\}.
\]
Initially \(\Delta_0=0\). If \(\Delta_{t-1}=0\) and neither run has stopped, determinism of the taped protocol makes both runs issue the same current query \(q_t\). By the recursive definition of \(z^{\mathcal D,h,r}\), the actual canonical reply and the replayed reply are both
\[
z_t^{\mathcal D,h,r}
=\rho\!\left(\mathbb E_{x\sim\mathcal D}q_t(x,h(x))\right).
\]
Thus \(S_t^{\mathrm{act}}=S_t^{\mathrm{rep}}\), giving the zero-forcing recurrence
\[
\Delta_0=0,\qquad \Delta_t\le\Delta_{t-1}\quad\text{for each executed }t\in\{1,\ldots,m\}.
\]
Hence \(\Delta_t=0\) throughout the executed prefix. The same state equality also gives the same stopping decision and terminal predictor. Once the common run stops, the replay coordinate ignores all suffix symbols, so padding cannot change that predictor. Therefore, as functions on \(\mathcal X\),
\[
g_{r,z^{\mathcal D,h,r}}
=A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h).
\]
If \(m=0\) or the learner stops at the root, the equality holds directly from the common initial taped state, without an update.

The recurrence has no forcing term: adaptive path mismatch is exactly zero rather than small. Its all-round scope is finite and supported before the output equality is consumed. This is the noncircular mechanism connecting the generated transcript from B1 and the response-tree coordinates from B2.

### Block B4: One-hot selection and the exact tie-loss bridge (`step_003`)

Let \(e_z\in\mathbb R^N\) denote the standard basis vector indexed by \(z\in G^m\). The coordinate definition gives, pointwise in \(x\),
\[
\left\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\right\rangle
=g_{r,z^{\mathcal D,h,r}}(x)
=A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)(x).
\]
This is an identity for the exact feature map consumed by the theorem, not for a transformed or surrogate map. The score is always in \(\{+1,-1\}\), so it is never zero. Since \(h(x)\in\{+1,-1\}\), their product lies in \(\{+1,-1\}\), and hence
\[
\{x:g_{r,z^{\mathcal D,h,r}}(x)h(x)\le0\}
=\{x:g_{r,z^{\mathcal D,h,r}}(x)h(x)<0\}.
\]
Taking \(\mathcal D\)-probabilities yields the exact baseline bridge
\[
\begin{aligned}
L_{\mathrm{tie}}\bigl(\mathcal D,h,
x\mapsto\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\rangle\bigr)
&=L_{\mathrm{tie}}\bigl(\mathcal D,h,g_{r,z^{\mathcal D,h,r}}\bigr)\\
&=L_{\mathrm{bin}}\bigl(\mathcal D,h,
A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\bigr).
\end{aligned}
\]
There is no tie surcharge and no margin assumption. In particular, the fact that the zero weight has tie loss one is irrelevant: the comparison uses a nonzero one-hot weight selecting a binary coordinate. The equality also preserves the exact/no-error baseline when \(\varepsilon=0\).

### Block B5: Pointwise infimum and pushforward expectation (`step_004`)

For the fixed pair \((\mathcal D,h)\), define the nonnegative functional
\[
F_{\mathcal D,h}(\phi)
:=\inf_{w\in\mathbb R^N}
L_{\mathrm{tie}}\bigl(\mathcal D,h,
x\mapsto\langle w,\phi(x)\rangle\bigr).
\]
By the defining pushforward identity for \(\mathsf P_A\),
\[
\mathbb E_{\Phi\sim\mathsf P_A}F_{\mathcal D,h}(\Phi)
=\mathbb E_{R\sim\mu}F_{\mathcal D,h}(\phi_R).
\]
For every fixed tape \(r\), the vector \(e_{z^{\mathcal D,h,r}}\) is an admissible candidate in the pointwise infimum, so
\[
F_{\mathcal D,h}(\phi_r)
\le
L_{\mathrm{tie}}\bigl(\mathcal D,h,
x\mapsto\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\rangle\bigr).
\]
The candidate may depend on \((\mathcal D,h,r)\) because the infimum is evaluated separately for each realized feature map inside the expectation. No common weight across instances or tapes is asserted. Also, no measurable inverse from a feature map to a tape is needed. If \(\phi_r=\phi_{r'}\) but the canonical paths use different coordinates, the same number \(F_{\mathcal D,h}(\phi_r)\) is separately at most the loss of each legal candidate. Thus noninjective fibers of \(r\mapsto\phi_r\) create no residual or selection obstruction.

Combining the tape-wise comparison with B4 and integrating gives
\[
\begin{aligned}
\mathbb E_{\Phi\sim\mathsf P_A}F_{\mathcal D,h}(\Phi)
&\le \mathbb E_{R\sim\mu}
L_{\mathrm{tie}}\bigl(\mathcal D,h,g_{R,z^{\mathcal D,h,R}}\bigr)\\
&=\mathbb E_{R\sim\mu}
L_{\mathrm{bin}}\bigl(\mathcal D,h,
A_R^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\bigr).
\end{aligned}
\]
Both transfers are exact. The only inequality is evaluation of an infimum at an available basis vector.

### Block B6: Universal-oracle closure and dimension (`step_004`)

B1 proves that \(\mathcal O^\rho_{\mathcal D,h}\) is a tolerance-valid adaptive oracle policy. The universal premise therefore applies to this policy for the fixed pair \((\mathcal D,h)\):
\[
\mathbb E_{R\sim\mu}
L_{\mathrm{bin}}\bigl(\mathcal D,h,
A_R^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\bigr)
\le\varepsilon.
\]
Substitution into B5 proves the full comparison chain in the attempted theorem. Nothing requires a favorable oracle: the canonical rounded oracle is merely one member of the every-valid-oracle quantifier in `assump:universal-adversarial-sq`.

Because B2 constructed one law \(\mathsf P_A\) on maps \(\mathcal X\to\mathbb R^N\) before the instance and the argument holds for the arbitrary pair \((\mathcal D,h)\),
\[
\sup_{\mathcal D}\sup_{h\in\mathcal H}
\mathbb E_{\Phi\sim\mathsf P_A}F_{\mathcal D,h}(\Phi)
\le\varepsilon.
\]
The definition of \(\operatorname{dc}^{\mathrm{tie}}_\varepsilon(\mathcal H)\) then gives
\[
\operatorname{dc}^{\mathrm{tie}}_\varepsilon(\mathcal H)
\le N=(K+1)^m=(\lceil1/\tau\rceil+1)^m.
\]
When \(m=0\), the unique empty-string coordinate gives \(N=1\) and the same argument uses the learner's no-query terminal predictor. When \(\varepsilon=0\), nonnegativity together with the exact comparison chain gives expected tie loss zero; rounding contributes no risk remainder because it is used only to certify oracle legality.

### Assembly

B1 produces the legal canonical policy and its generated path. B2 independently produces the complete response-tree map law and count. B3 consumes both outputs and proves exact adaptive replay. B4 converts replay into a nonzero binary coordinate and preserves tie/binary loss exactly. B5 places that coordinate below the pointwise infimum and moves the feature-map expectation back to the tape law. B6 invokes the primitive every-valid-oracle guarantee and the definition of tie-penalized probabilistic dimension. Every arrow follows a declared dependency, and every approximation is either bounded at the exact consumed tolerance scale or is an equality. The accepted four-step roadmap therefore closes the exact formalized theorem at theorem-diagnostic granularity.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| B1: Grid geometry and canonical oracle | Produces a legal oracle and unique padded path | `step_001` | Definitions of unrestricted queries, \(K,G,\rho\) | `assump:sq-parameter-regime`; query and adaptive-oracle convention from `assump:universal-adversarial-sq` | None |
| B2: Response-tree maps and law | Produces \(g_{r,z}\), \(\phi_r\), \(\mathsf P_A\), and exact \(N\) before the instance | `step_002` | B1 grid; fixed complete tape and finite query budget | `assump:sq-parameter-regime`; `assump:universal-adversarial-sq` | None |
| B3: Adaptive replay | Identifies the represented canonical branch with the actual taped run | `step_003` | B1 path; B2 replay tree | Deterministic taped protocol from `assump:universal-adversarial-sq` | None |
| B4: Coordinate and tie bridge | Exports a one-hot weight, exact score equality, and exact tie/binary equality | `step_003` | B2 feature map; B3 replay identity | Binary target and binary terminal-output convention | None |
| B5: Infimum and pushforward | Converts tape-wise coordinate certificates into the target expected pointwise-infimum comparison | `step_004` | B2 law; B4 candidate and loss identity | No new assumption; uses definitions of infimum and pushforward law | None |
| B6: Risk and dimension closure | Applies the learner premise and dimension definition | `step_004` plus final assembly | B1 legal policy; B2 count; B5 comparison | `assump:sq-parameter-regime`; `assump:universal-adversarial-sq` | None |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | B1; supplies legal policy/path to B3 and B6 | No prior Step ID | Prove grid covering radius, \(1/K\le\tau\), querywise validity, unique finite recursion, padding, and \(m=0\) case | No accumulated tolerance error and no cited theorem |
| `step_002` | B2; supplies map/law/count to B3-B6 | Consumes B1 grid only | Prove deterministic replay totality, early-stop suffix invariance, pre-instance fixation, pushforward construction, and \(\lvert G^m\rvert=(K+1)^m\) including \(m=0\) | Arbitrary \(\mathcal X\) and duplicate coordinates/tapes are harmless |
| `step_003` | B3 and B4; supplies exact comparison certificate to B5 | Consumes `step_001` and `step_002` | Prove zero-defect prefix induction, stopping agreement, basis-coordinate identity, nonzero binary score, and tie/binary event equality | Preserves the exact/no-error baseline |
| `step_004` | B5, B6, and final assembly | Consumes `step_001`, `step_002`, and `step_003` | Prove pointwise infimum comparison, pushforward expectation, duplicate-fiber handling, universal-oracle instantiation, exact quantifiers, and dimension conclusion | No term absorption, mode upgrade, or hidden dependence |

## Dependency And Assumption Audit

The accepted dependency graph is acyclic: `step_001` -> `step_002` -> `step_003` -> `step_004`, together with the accepted direct edges from `step_001` to `step_003` and `step_004`, and from `step_002` to `step_004`. The whole-proof blocks preserve that order.

| Condition or object | Provenance classification | Producer or source | Consumers | Audit result |
| ------------------- | ------------------------- | ------------------ | --------- | ------------ |
| \(m\in\mathbb N_0\), \(\tau>0\), \(\varepsilon\in[0,1/4)\) | primitive condition | `assump:sq-parameter-regime` | B1, B2, B6 | Used without strengthening |
| Fixed learner \(A\), complete-tape law \(\mu\), at most \(m\) unrestricted queries, binary output, and every-valid-oracle expected-risk guarantee | primitive condition | `assump:universal-adversarial-sq` | B1-B6 | Used with the same quantifiers and randomness mode |
| Canonical oracle validity and padded transcript | derived invariant/generated output | `step_001` / B1 | `step_003`, `step_004` / B3, B6 | Proved before use from query range and grid geometry |
| Total response-tree maps, shared law, and coordinate count | derived generated object | `step_002` / B2 | `step_003`, `step_004`, assembly / B3-B6 | Pre-instance independence is a conclusion, not an assumption |
| Actual-run/replay identity | derived invariant | `step_003` / B3 | B4, `step_004` | Proved by a noncircular zero-defect recurrence |
| Basis score and tie/binary equality | derived comparison certificate | `step_003` / B4 | `step_004` / B5-B6 | Binary range supplies the no-tie source |
| Expected-risk and dimension certificate | derived theorem conclusion | `step_004` / B5-B6 | Final theorem | Uses only accepted prior outputs and primitive guarantee |

Fixing \((\mathcal D,h,r)\), a current round, or a prefix inside a derivation is a local universal instantiation, not a theorem-facing conditional hypothesis. There are no conditional theorem assumptions and no missing derived-condition bridge. In particular, oracle validity, map independence, path matching, bounded horizon, nonzero score, and tie-free comparison are not moved into the final theorem assumptions.

## Citation And Tool Audit

No external theorem, cited paper result, or source wrapper is used as proof authority. The following direct or definition-level tools are nevertheless audited because they supply theorem-critical interfaces.

| Tool or derivation | Current-branch objects and exact convention | Raw assumptions to discharge | Conclusion needed | Convention and object-target compatibility | Affected block / Step ID |
| ------------------ | ------------------------------------------- | ---------------------------- | ----------------- | ------------------------------------------ | ------------------------ |
| Endpoint-grid covering calculation | \([-1,1]\), spacing \(2/K\), nearest-grid map with fixed midpoint rule, absolute SQ error | \(\tau>0\), \(K=\lceil1/\tau\rceil\), query range \([-1,1]\) | \(\lvert\rho(u)-u\rvert\le1/K\le\tau\) for every current query | Exact same query normalization, population expectation, and absolute-tolerance interface; endpoint and midpoint branches handled | B1 / `step_001` |
| Complete-tape determinization and finite response-tree construction | Same algorithm, tape, response order, stopping rule, fixed \(-1\) suffix padding, common \(G^m\) index | Fixed \(A,\mu\), finite \(m\), finite \(G\), binary terminal output | Total \(g_{r,z}\), exact \(\phi_r\), pre-instance \(\mathsf P_A\) | Produced maps are exactly the consumed maps; no surrogate, metric change, or instance input | B2 / `step_002` |
| Finite prefix induction | Actual canonical run and replay use the same tape and canonical reply string | B1 path, B2 total replay, taped determinism | Equality of queries, replies, stopping decisions, and terminal predictors | Same initial state, procedure, query convention, and padding; root-stop and \(m=0\) branches handled | B3 / `step_003` |
| Standard-basis coordinate identity and binary event algebra | \(e_z\), \(\phi_r\), binary predictor and binary target under tie event \(\le0\) and binary event \(<0\) | B2 coordinate definition, B3 output identity, binary ranges | Exact score equality and \(L_{\mathrm{tie}}=L_{\mathrm{bin}}\) | Same score, target, distribution, and risk events; zero residual and no margin assumption | B4 / `step_003` |
| Pointwise infimum comparison | Infimum over all \(w\in\mathbb R^N\) is inside the map expectation | B4 provides an admissible basis vector for each tape | \(F(\phi_r)\) is at most the selected-coordinate loss | Candidate dependence on instance/tape is allowed by the pointwise infimum; duplicate fibers need no inverse selection | B5 / `step_004` |
| Pushforward expectation identity | \(\mathsf P_A=(r\mapsto\phi_r)_{\#}\mu\), same functional \(F_{\mathcal D,h}\) as in the target | B2 pushforward law | \(\mathbb E_{\Phi\sim\mathsf P_A}F(\Phi)=\mathbb E_R F(\phi_R)\) | Exact randomness and object interface; no probability or conditioning conversion | B5 / `step_004` |
| Finite-product count and dimension definition | Common coordinate set \(G^m\), including the empty product | \(\lvert G\rvert=K+1\), \(m\in\mathbb N_0\), shared risk certificate | \(N=(K+1)^m\) and \(\operatorname{dc}^{\mathrm{tie}}_\varepsilon\le N\) | Exact target dimension and tie-risk definition; no hidden constants or compression claim | B2, B6 / `step_002`, `step_004` |

All direct derivations are in the current setting convention. Their raw-assumption-to-output paths are displayed in B1-B6, so no theorem-critical source identity, label, wrapper, source-convention bridge, or cited-result hypothesis remains to be checked.

## Quantitative Dependence Audit

- Exposed variables: \(m\in\mathbb N_0\), \(\tau>0\), \(\varepsilon\in[0,1/4)\), \(K=\lceil1/\tau\rceil\), and \(N=(K+1)^m\).
- Exact risk dependence: the expected tie risk is at most the same \(\varepsilon\) appearing in the learner premise. Rounding creates no additive risk term.
- Exact dimension dependence: \(N=(\lceil1/\tau\rceil+1)^m\), with \(N=1\) at \(m=0\).
- Hidden constants: none. No constant may depend on \(\mathcal X\), \(\lvert\mathcal X\rvert\), \(\mathcal H\), \(\mathcal D\), \(h\), the tape, or the transcript.
- Fixed quantities: \(\mathcal X\), \(\mathcal H\), \(A\), \(\mu\), \(m\), \(\tau\), \(\rho\), response-tree ordering, and padding convention are fixed before the instance. The bound is then simultaneous over \((\mathcal D,h)\).
- Probability mode: deterministic oracle rounding and expectation only over \(R\sim\mu\), equivalently \(\Phi\sim\mathsf P_A\). The population risk itself integrates \(x\sim\mathcal D\). There is no confidence parameter, high-probability event, union bound, or conditioning conversion.
- Horizon mode: fixed finite horizon of at most \(m\) adaptive queries. No all-time or asymptotic upgrade is made.
- Norm or metric mode: tie-penalized \(0\)-\(1\) risk for real scores and binary \(0\)-\(1\) risk for the selected binary predictor. No vector norm, surrogate metric, margin, or excess-risk conversion is used.
- Auxiliary tolerances: none beyond the primitive SQ tolerance \(\tau\). The grid radius is the explicit quantity \(1/K\le\tau\).
- Public specialization or simplification: none. Every equality and inequality in the final chain is retained, so no term is dropped, dominated, or absorbed.
- Baseline-reduction obligation: for every binary coordinate, \(L_{\mathrm{tie}}=L_{\mathrm{bin}}\) exactly. At \(\varepsilon=0\), the same chain yields expected tie loss zero, not a positive rounding remainder or stopped surrogate.
- Boundary checks: \(m=0\), \(\tau\ge1\), endpoint expectations, midpoint rounding ties, early stopping, duplicate feature maps, and \(\varepsilon=0\) all preserve the displayed dependence.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------------------------------ | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ---------------------------------- | -------------------------- | ---------------------------------------- | ------------------------------------- | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Canonical rounded oracle and padded transcript | Generated-condition validity; licenses the learner premise and produces the canonical path | Every reached query for every \((\mathcal D,h,r)\), at most \(m\) rounds | For current \(u_t=\mathbb E q_t\), \(\lvert\rho(u_t)-u_t\rvert\le1/K\le\tau\); recurse until stopping, then pad only the index | Grid half-spacing \(1/K\) and primitive tolerance \(\tau\) | Signed rounding residual; midpoint sign arbitrary; no defect from unread padding | Querywise legality, not additive; the residual is checked separately at each of finitely many rounds and never enters risk | structural lower/upper comparison | `assump:sq-parameter-regime`, query range from `assump:universal-adversarial-sq`, direct grid geometry; excludes only \(\tau=0\), already outside the setting | An absolute covering-radius bound supplies exactly the absolute oracle-tolerance claim in the same query convention | Produced reply targets the same population expectation in absolute error; sole residual is dominated by \(1/K\le\tau\) | `step-local` | Range/grid are available before the path and before B6; B1 -> B3 and B1 -> B6, with no use of final risk | At \(m=0\), no reply is needed; otherwise the first \(u_1\in[-1,1]\) is rounded legally before round 2 | \(K\ge1/\tau\Rightarrow1/K\le\tau\), independently at every node | \(m,\tau\); bounded-query and adaptive-policy conventions | Legal policy and unique padded \(z^{\mathcal D,h,r}\) | Handles \(\tau\ge1\), \(u=\pm1\), midpoint ties, early stopping, and \(m=0\) | If radius exceeded \(\tau\), the policy might be invalid and B6 could not invoke the learner premise |
| Total response-tree map, pre-instance law, and exact count | Structural generated object; supplies the probabilistic representation and dimension interface | Every tape \(r\), every \(z\in G^m\), arbitrary \(\mathcal X\) | \(g_{r,z}\) is deterministic replay output; \(\phi_r=(g_{r,z})_{z\in G^m}\); \(\mathsf P_A=(r\mapsto\phi_r)_{\#}\mu\); \(\lvert G^m\rvert=(K+1)^m\) | Exhaustive finite indexing, complete-tape determinism, and fixed suffix convention | Missing branches, suffix ambiguity, duplicate predictors/maps, or instance leakage | Finite exact construction; no repeated numerical defect or forcing term; empty product is a singleton | algebraic coupling and structural lower/upper comparison | Fixed \(A,\mu,m,\tau,G\), binary terminal output, and direct construction; no finite-domain assumption | Enumeration supplies exactly every rounded branch and complete-tape replay supplies exactly one terminal predictor per coordinate | Produced maps and law are the consumed maps and law; no transform, surrogate, or object residual | `step-local` | Fixed learner/tape/grid produce B2 before path matching or risk; B2 -> B3 -> B4 -> B5 -> B6 | At \(m=0\), the taped learner's root output is the unique empty-string coordinate and \(N=1\) | Distinct grid indices give \(\lvert G\rvert=K+1\); finite-product equality gives \(N\); pushforward fixes the law | Fixed learner, tape law, finite horizon, binary output, grid | \(g_{r,z}\), \(\phi_r\), \(\mathsf P_A\), \(N\) | Handles root/intermediate stopping, duplicate coordinates, duplicate map fibers, and infinite \(\mathcal X\) | Without total replay, padding, or pre-instance fixation, the coordinate law required by the theorem could be missing or instance-dependent |
| Exact adaptive replay | Generated invariant and object-target identity; connects the canonical branch to the learner output | All executed rounds up to the finite stopping time, for every \((\mathcal D,h,r)\) | State mismatch indicator satisfies \(\Delta_0=0\) and \(\Delta_t\le\Delta_{t-1}\); therefore \(\Delta_t=0\) and terminal outputs agree | Same complete tape, deterministic transition rule, and same canonical reply at each common prefix | Potential adaptive prefix mismatch; unread suffix values after stopping | Contractive zero-defect recurrence; accumulated mismatch remains zero because there is no forcing term and scope is at most \(m\) | self-contraction and algebraic coupling | Deterministic taped protocol plus B1 path and B2 replay tree; no randomized state remains after conditioning on \(r\) | Equality of deterministic states supplies exactly equality of next query, stop decision, and terminal predictor | Produced replay predictor equals the consumed actual predictor pointwise; residual is zero in the theorem risk interface | `step-local` | B1 and B2 are available before induction; the recurrence does not assume loss or final risk | Empty-prefix states agree; first query/reply agree if present; at root stopping or \(m=0\), outputs already agree | \(\Delta_t\le\Delta_{t-1}\) with \(\Delta_0=0\); no one-step charge or forcing term exists | Complete tape and deterministic protocol | Valid canonical path and total replay tree | Handles \(m=0\), immediate/intermediate stopping, midpoint-selected paths, and maximum depth | A nonzero mismatch could select the wrong coordinate and disconnect the represented score from the learner guarantee |
| One-hot binary score, tie/binary identity, and zero-error baseline | Exact object-target bridge and Baseline Invariance Obligation | Every \(x\), tape \(r\), and instance \((\mathcal D,h)\); includes \(\varepsilon=0\) | \(\langle e_z,\phi_r(x)\rangle=g_{r,z}(x)\in\{+1,-1\}\); thus \(gh\in\{+1,-1\}\) and \(\{gh\le0\}=\{gh<0\}\) | Standard-basis coefficient one and binary ranges of predictor and target | Path/score residual and potential zero-score tie | Source-excluded: coordinate selection is exact and binary, so no tie defect exists or accumulates | algebraic coupling | B2 coordinate definition, B3 replay identity, primitive binary target/output; the zero weight is allowed but not selected | A nonzero binary source has exactly the sign content needed to equate the two loss events | Produced score is the consumed learner output in the same risk metric; score and risk residuals are zero | `step-local` | B2 and B3 produce the binary coordinate before B5 consumes its loss | At \(m=0\), \(e_{\emptyset}\) selects the binary root output; at \(\varepsilon=0\), equality is stationary and exact | Pointwise score equality implies exact event equality, with no margin or absorption | Binary target and binary terminal-output convention | Basis weight and replayed output | Handles zero learner error, zero-weight alternative, stopping, and all binary labels | A zero-valued or surrogate score could create tie loss and weaken the inherited baseline |
| Pointwise infimum and pushforward bridge | Quantifier/randomness closure; transfers tape-wise certificates to the target functional | Every fixed instance, then expectation over the fixed tape/map law | \(F(\phi_r)\le L_{\mathrm{tie}}(\langle e_{z_r},\phi_r\rangle)\) and \(\mathbb E_{\Phi\sim\mathsf P_A}F(\Phi)=\mathbb E_R F(\phi_R)\) | Availability of an admissible basis vector and defining pushforward identity | Possible instance/tape dependence of the weight and noninjective tape-to-map fibers | One expectation only; no repeated defect, union bound, selection residual, or mode conversion | structural lower/upper comparison and algebraic coupling | Definitions of pointwise infimum and pushforward, with B2 law and B4 candidate; no shared-weight requirement | Infimum comparison supplies exactly an upper bound, while pushforward supplies exactly the target randomness mode | Candidate score is the exact target-side score; duplicate fibers give multiple legal upper bounds on the same infimum, so residual is zero | `step-local` | B2 law and B4 candidate precede B5; neither uses the final expected-risk bound | For \(m=0\), the unique basis vector is available; no tape recovery is needed at the first expectation | Evaluate infimum at \(e_{z_r}\), then integrate the tape-wise inequality and use the pushforward equality | Definition of infimum and probability law | \(\mathsf P_A\), basis score/loss certificate | Handles duplicate map fibers, tape-dependent paths, arbitrary instances, and root stopping | If the infimum were outside the expectation or a common weight were required, the accepted comparison would not establish the target |
| Final expected-risk and dimension certificate | Theorem closure and exact quantitative specialization | Simultaneous over every \((\mathcal D,h)\), fixed finite horizon, expectation over \(R\) or \(\Phi\) | \(\mathbb E_\Phi F(\Phi)\le\mathbb E_R L_{\mathrm{bin}}(A_R^{\mathcal O^\rho})\le\varepsilon\); \(N=(\lceil1/\tau\rceil+1)^m\) | Every-valid-oracle learner guarantee, exact earlier bridges, and exact count | Invalid-oracle, tie, map-dependence, expectation-mode, count, or hidden-remainder defects | No accumulated risk term, limit, union bound, or asymptotic passage; closure is a single exact chain | structural lower/upper comparison and algebraic coupling | Primitive universal learner guarantee plus B1-B5; only \(\tau=0\) is excluded by the declared setting | The premise has the same policy class, binary output, instance quantifiers, expectation mode, and \(\varepsilon\) scale | Every transfer is zero-residual except rounding, already fully dominated in the oracle interface; no risk residual remains | `step-local` | B1-B5 produce every consumed interface before B6 invokes the premise and definition | At \(m=0\), no-query output closes the chain; at \(\varepsilon=0\), nonnegativity and exact equality give zero expected tie loss | Substitute the valid policy into the universal bound and use the definition with the one shared law in exact dimension \(N\) | Both stable setting assumptions | All outputs of `step_001`-`step_003` and B5 comparison | Handles every finite \(\tau>0\), \(m=0\), \(\varepsilon=0\), infinite domains, and noninjective pushforward | Without every-valid-oracle semantics, exact tie bridge, or pre-instance law, the final theorem would require a changed premise or conclusion |

Every certificate row is `step-local`; there is no `sketch/interface defect` or `idea/theorem-contract defect`. The two accumulated interfaces are concrete: query legality is checked independently at each round and is not summed, while replay mismatch obeys the zero-forcing recurrence \(\Delta_t\le\Delta_{t-1}\) from \(\Delta_0=0\). Thus no persistent, adversarial-sign, or unbudgeted forcing term is deferred to later proof work.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| Valid canonical policy and padded transcript | B1 / `step_001` / direct grid derivation | \(\tau>0\), bounded query, \(K,G,\rho\), finite \(m\) | Rounding magnitude controlled by \(1/K\); midpoint sign harmless; no empirical or stochastic term; padding is unread | Reply and target expectation use the same absolute-error interface; sole residual is \(\rho(u)-u\), dominated by \(\tau\) | \(\lvert\rho(u)-u\rvert\le1/K\le\tau\) querywise; no cross-round absorption | Primitive \(\tau\) and grid radius \(1/K\) | B3 / `step_003`; B6 / `step_004` | valid |
| Total pre-instance map law in dimension \(N\) | B2 / `step_002` / direct response-tree construction | Fixed \(A,\mu\), complete-tape determinism, finite \(G^m\), binary output, padding | Enumeration controls missing branches; padding controls suffix ambiguity; duplicates harmless; no instance leakage | Produced maps/law are exactly the consumed maps/law; no transform or surrogate; object residual zero | One coordinate per \(z\in G^m\); \(\lvert G^m\rvert=(K+1)^m\); exact pushforward | Finite grid and fixed tape law; no additional margin | B3-B6 and final dimension definition | valid |
| Canonical binary basis score and exact loss certificate | B3-B4 / `step_003` / prefix induction and basis algebra | B1 legal path, B2 total map, deterministic taped protocol, binary ranges | Prefix mismatch has zero forcing; padding unread; score-tie class source-excluded; no uncontrolled residual | Basis score equals actual learner output pointwise in the consumed risk interface; tie/binary residual zero | \(\Delta_0=0\), \(\Delta_t\le\Delta_{t-1}\); coordinate and loss-event equalities exact | Same tape and replies; coefficient one; binary range | B5-B6 / `step_004` | valid |
| Expected pointwise-infimum comparison | B5 / `step_004` / infimum and pushforward definitions | Shared law from B2 and exact per-tape candidate from B4 | Tape-dependent candidate and duplicate fibers are controlled by tape-wise infimum comparison; no measurability inverse or shared weight needed | Candidate is in the exact target space \(\mathbb R^N\) and produces the exact learner score; zero transfer residual | \(F(\phi_r)\le L(e_{z_r},\phi_r)\), then exact pushforward expectation | Availability of each standard basis vector; no slack | B6 and final theorem | valid |
| Simultaneous risk and dimension bound | B6 / `step_004` / primitive learner guarantee and dimension definition | B1-B5 interfaces, every-valid-oracle premise, exact coordinate count | No favorable-oracle, tie, confidence, domain-size, horizon, or hidden-constant defect remains | Same instance, policy, randomness, loss, and target scale; rounding is already discharged solely as oracle legality | Exact chain to \(\varepsilon\) and exact count \((\lceil1/\tau\rceil+1)^m\); no simplification | Primitive \(\varepsilon\); no extra threshold or slack | Final attempted theorem | valid |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Tolerance-valid \(\mathcal O^\rho_{\mathcal D,h}\) and padded \(z^{\mathcal D,h,r}\) | B1 / `step_001`, from query range and grid geometry | B3 / `step_003` for replay; B6 / `step_004` for the learner premise | `step_001` -> `step_003`; `step_001` -> `step_004` | derived | valid |
| \(g_{r,z}\), \(\phi_r\), \(\mathsf P_A\), and \(N\) | B2 / `step_002`, from complete-tape replay, exhaustive indexing, padding, and pushforward | B3-B5 / `step_003`, `step_004`; B6 and final dimension use | `step_001` -> `step_002` -> `step_003` -> `step_004`, with accepted direct use by `step_004` | derived | valid |
| Exact actual/replay identity | B3 / `step_003`, from B1 path and B2 replay tree | B4 and B5 / `step_003`, `step_004` | `step_001` + `step_002` -> `step_003` -> `step_004` | derived | valid |
| Basis weight, binary score, and exact tie/binary loss certificate | B4 / `step_003`, from coordinate definition, replay, and binary ranges | B5-B6 / `step_004`, then final theorem | `step_002` + B3 -> B4 -> `step_004` | derived | valid |
| Expected tie-risk and dimension certificate | B5-B6 / `step_004`, from all prior outputs and the universal learner guarantee | Final attempted theorem and the definition of \(\operatorname{dc}^{\mathrm{tie}}_\varepsilon\) | `step_001` + `step_002` + `step_003` -> `step_004` -> final assembly | derived | valid |

No theorem-facing generated output is consumed before its producer, exported through an undeclared dependency, or supplied by a surrogate object. All final theorem assumptions remain primitive.

## Early Obstruction And Repair Plausibility

- Contract contradiction check: none. The attempted claim is the exact setting goal and retains the branch's `material_partial` scope without claiming the parent problem's deterministic or polynomial-dimensional target.
- Theorem-critical mechanism check: each of the six certificate obligations has a nonvacuous source of the correct claim class. Grid radius supplies oracle legality, complete-tape enumeration supplies total map availability, taped determinism supplies path identity, binary range supplies no-tie sign content, pointwise infimum and pushforward supply the quantifier transfer, and the universal learner premise supplies risk closure.
- Source-convention and object-target check: all derivations use the same query normalization, absolute tolerance, algorithm, tape, path ordering, padding, feature map, target, and loss conventions as the setting. No transformed, weighted, whitened, population, no-error, or reference surrogate is transferred into a different target.
- Residual-to-target check: rounding residual is controlled in the exact oracle interface by \(1/K\le\tau\). Map, replay, coordinate, loss, and expectation transfers have zero residual. No empirical, fixed, persistent, event-level, irreducible, or wrong-scale residual is left.
- Exported-interface check: raw controls and exact dominance/equality relations are present for the policy, map law, replay certificate, pointwise-infimum comparison, and final theorem. No new bridge, threshold, dependency, or output target is needed.
- Generated-condition provenance check: oracle validity, path existence, map independence, replay agreement, no-tie score, and final risk certificate are all derived by named accepted steps before use. No generated fact is hidden in the theorem assumptions.
- Scope and accumulation check: tolerance legality is querywise and never summed; replay mismatch has the explicit zero-forcing recurrence \(\Delta_t\le\Delta_{t-1}\), \(\Delta_0=0\); all other transfers are one-shot equalities or comparisons. There is no persistent forcing, union bound, horizon upgrade, or limiting interchange.
- Entry and boundary stress: at \(m=0\), the empty path and sole root coordinate close the theorem; at a positive first round, grid legality precedes every consumer and actual/replay states remain equal. The argument also handles \(\tau\ge1\), endpoint expectations, midpoint ties, immediate stopping, duplicate map fibers, infinite domains, and \(\varepsilon=0\).
- Baseline invariance check: the selected coordinate is binary, so tie and binary losses agree exactly. The zero-error specialization gives expected tie loss zero, not a weakened remainder-only conclusion.
- Dependence and mode check: exact \(m,\tau,\varepsilon\) dependence, fixed finite horizon, expectation over learner tape only, and tie-risk mode are preserved. No hidden constants, probability upgrade, simplification bridge, or dropped term appears.
- Same-setting repair plausibility: no repair is required. There is no evidence of a `sketch/interface defect` or candidate `idea/theorem-contract defect`, and no primitive assumption, procedure, scope, mode, metric, exposed dependence, success criterion, mechanism source, or conclusion needs to change.

## Global Gaps And Hard Steps

None.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic guidance only. It cannot be consumed as proof evidence, a cited result, an assumption source, a substitute for independently accepted step proofs, or authority to change any accepted sketch-step claim, dependency, assumption, output target, quantitative objective, or generated-output interface.

## Suggested Routing

None

Continue with all four proof steps in accepted dependency order, beginning with `/proof-step step_001`; the controller must first obtain an accepted `/global-proof-review` for this diagnostic.
