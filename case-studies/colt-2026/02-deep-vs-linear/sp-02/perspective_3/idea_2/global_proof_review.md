# Global Proof Review

## Global-Proof Review Identity

- Branch: `perspective_3/idea_2`
- Sketch attempt: 1
- Reviewed setting: `perspective_3/idea_2/setting.md`, SHA-256 `4abbe2abefd18488f3ec1175566fb0c16c903b0e429738fcde74b71bcc6cef88`
- Reviewed sketch: `perspective_3/idea_2/proof_sketch.md`, SHA-256 `109f2014f7e3242369d8ff70b4fbbcb284401f3e231eef40aaabbc95e26e9a41`
- Reviewed sketch review: `perspective_3/idea_2/proof_sketch_review.md`, SHA-256 `27e0be6e65a95376d8941fabc467b1525147d0c5842c2c816022fb58ace2b9e9`; controlled status `ACCEPTED`
- Global proof attempt: 1
- Reviewed global proof: `perspective_3/idea_2/global_proof.md`, SHA-256 `8f3a2602a68b54ca6cb65f93330e45d505c803e1f5cb8cd86c9067e6c6e5767b`
- Reviewed global proof status: `COMPLETE_DRAFT`

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Required Repair Bundle

None

## Contract And Status Audit

Pass. The reviewed artifact contains every required diagnostic section: reviewed-sketch identity, one controlled status, attempted theorem claim, detailed whole-proof draft, theorem-level block map, sketch-step coverage, dependency and assumption audit, citation and tool audit, quantitative dependence audit, scope and closure certificate, generated-output flow, early obstruction analysis, global gaps, diagnostic-boundary note, and suggested routing. It also gives a separate exported-interface audit. `COMPLETE_DRAFT` and `Suggested Routing = None` are aligned.

The draft is substantially more than a repetition of sketch rows. Blocks B1-B6 expose the exact local equations or implications used in composition, including the finite selector partition, loss-correlation equality, matrix-game order, compact finite-intersection identity, score identity, and rate chain. It correctly states that the document is diagnostic only and cannot serve as proof evidence or change an accepted step contract.

## Claim And Sketch Fidelity Audit

Pass. The attempted theorem is the same conditional theorem as `setting.md` and the accepted sketch. It retains one learner fixed before the instance; arbitrary (X); nonempty (H); all distributions that exist; every full-interval nonanticipating valid reply policy; expectation only over learner tape; unrestricted bounded adaptive queries; early stopping; and the exact deterministic common-map target. The map is the static catalog map (phi_G), independent of (D,h,\pi), replies, transcripts, and coins. Only (w_h) is target-dependent.

The proof does not add a response grid, finite transcript tree, exact-expectation oracle restriction, favorable policy, finite-domain hypothesis, or catalog-free claim. It preserves the explicit primitive catalog and budget assumptions and the `conditional` progress type. Acceptance therefore certifies only the finite-terminal-catalog special case. Deriving such a catalog and its polynomial budget from (m) and (\tau) alone, and obtaining the source catalog-free linear implication, remain open exactly as stated in the setting.

The exact/noiseless and boundary baselines are preserved: (\varepsilon=0) gives margin one, (L=1) keeps the unique coordinate, and (m=0) keeps (L\le B). No accepted sketch step, dependency, assumption, output target, mode, metric, exposed dependence, or conclusion has been altered.

## Theorem-Level Structure Audit

Pass. The blocks compose in the accepted acyclic order

\[
\mathrm{B1}\to\mathrm{B2}\to\mathrm{B3}\to\mathrm{B4}\to\mathrm{B5}\to\mathrm{B6}.
\]

B1 produces the finite terminal law and exact mixture interface. B2 converts universal expected accuracy for the same arbitrary policy into a policy-independent best-catalog correlation. B3 applies that bound to every finite-support distribution and performs the only quantifier reversal. B4 performs the only arbitrary-domain upgrade inside the fixed compact simplex. B5 identifies the game score with the catalog-coordinate inner product and obtains strict signs. B6 unfolds the dimension definition and appends the primitive catalog budget. Every accepted sketch step appears once with its correct producer-consumer role, and final assembly uses no additional theorem-facing claim.

The finite game is oriented correctly. With rows (x\in F), columns (i\in[L]), and (A_{xi}=h(x)g_i(x)), B2 yields

\[
\min_{r\in\Delta_F}\max_{i\in[L]} r^TAe_i\ge\rho.
\]

Finite matrix minimax gives

\[
\min_r\max_w r^TAw=\max_w\min_r r^TAw,
\]

and the vertex extrema identify the two outer expressions with (\max_i) and (\min_{x\in F}), respectively. Compactness and continuity give attainment of the maximizing (w). This is exactly the order needed for one mixture working on every point of (F).

## Dependency And Assumption Audit

Pass. The catalog (G), selector (J), tape law, learner, query/reply convention, universal expected accuracy, and polynomial budget are primitive. The terminal law (p), policy-free correlation, finite constraint feasibility, global weight, exact sign certificate, and dimension chain are derived in dependency order. No generated event, invariant, stability condition, boundedness condition, local-validity premise, or recurrence is moved into the theorem assumptions.

The policy-class nonemptiness bridge is valid under the live setting convention. For an actual distribution (D), the rule that returns

\[
\mu_q(D,h)=\mathbb E_D q(x,h(x))
\]

after the currently revealed query is nonanticipating and lies in the full interval (I_q(D,h)) exactly. The basic setup explicitly treats protocol selectors and execution random variables as measurable, so this center selector is covered by the primitive measurability convention. It witnesses only (\Pi(D,h)\ne\varnothing). All mixture and accuracy algebra is first carried out for an arbitrary valid (\pi), so the center rule does not replace or weaken the universal adversarial-policy quantifier. If (X=\varnothing), no distribution exists and B1-B3 are not needed; B4 handles the empty domain directly.

For a fixed arbitrary valid (\pi), the measurable composition (Z=J\circ e) partitions only learner-tape space. Hence the sole stochastic expectation remains (\mathbb E_{U\sim\nu}). Fixing any oracle seed merely produces another deterministic valid policy already covered by the universal policy quantifier; no expectation over oracle randomness is introduced.

## Citation And Tool Audit

Pass. The COLT 2017 and JMLR 2002 papers are used only for protocol and target lineage, not as theorem-critical proof authority. Consequently no external theorem label, version, source-object map, or hypothesis discharge is needed from them.

The theorem-critical tools are standard finite/current-notation tools with adequate interfaces already exposed:

- The finite pushforward uses the live measurable execution (e(U;D,h,\pi)), the measurable finite selector (J), and the exact eventwise identity (\widehat h=g_{J(e)}). Its source and branch conventions coincide, and its loss/correlation residual is zero.
- Binary loss-correlation algebra uses the same (D,h,g_i) as the consumed game payoff. Boundedness and the finite selector partition make every used expectation well defined without an infinite interchange.
- Finite matrix minimax uses nonempty compact finite simplices, a continuous bilinear payoff, the correct row/column convention, and vertex extrema. The draft identifies both equality and attainment; a step-local proof may restate finite minimax or finite LP duality in current notation.
- The compact FIP theorem is applied to closed subsets of the one fixed (\Delta_L\subset\mathbb R^L). It requires no topology, measure, or compactness on (X).
- Coordinate/sign algebra and the dimension-definition step use exactly the produced score and the displayed primitive budget. No transformed or surrogate object requires an additional bridge.

Each tool has a raw-assumption-to-output path, exact consumed interface, boundary branch, and downstream consumer. No theorem-critical citation or wrapper remains unidentified.

## Quantitative Dependence Audit

Pass. The margin exposes (\varepsilon), (\rho=1-2\varepsilon), and (L); the dimension conclusion exposes (\operatorname{dc}(H),L,B,k,m,\tau). There are no hidden constants. (B\ge1) and integer (k\ge1) are displayed fixed family constants with the independence required by `assump:polynomial-catalog-budget`.

The final mode is deterministic and fixed-horizon. The only premise expectation is over learner tape; there is no high-probability conversion, distributional averaging, policy averaging, limiting argument, or all-time upgrade. The metric is the exact pointwise signed margin and the exact deterministic dimension complexity. No auxiliary tolerance, approximation level, or suppressed parameter is introduced.

Every quantitative bridge is exact: (1-2\mathbb E_U\mathcal L\ge1-2\varepsilon=\rho); finite minimax and FIP lose no margin; (\rho>0) excludes sign ties; and

\[
\operatorname{dc}(H)\le L\le B(1+m/\tau^2)^k
\]

is copied without simplification. At (\varepsilon=0) the margin is one. At (m=0) the rate is (L\le B). For every finite, including arbitrarily large, (\tau>0), the leading base term remains. The false boundary-unadjusted rate (Cm/\tau^2) is not asserted.

## Scope And Closure Review

Pass. The certificate covers every theorem-critical block and both baseline obligations. All rows are genuinely `step-local` under the unchanged accepted sketch:

- B1 has a primitive measurable selector/execution source, an exact finite partition relation, no accumulated roundwise defect, and an explicit (m=T=0) trace. The center rule has exact interval membership and uses the live selector-measurability convention.
- B2 has the exact signed source (\rho=1-2\varepsilon), the equality linking the same output law to the same catalog correlations, and convex-average domination. Policy dependence remains only in (p), which is eliminated before B3.
- B3 has the concrete finite-game relation, exact row/column convention, nonempty compact simplices, vertex identities, and attainment. Empty (F) is excluded from (\Delta_F) and handled by (K_{h,\varnothing}=\Delta_L).
- B4 has a noncircular producer path from all finite certificates, closedness, the exact identity (\cap_jK_{h,F_j}=K_{h,\cup_jF_j}), and compact FIP in fixed (\Delta_L). Constraints accumulate by exact intersection with zero finite violation, not by summing defects. Empty (X) gives the direct simplex branch.
- B5 has the exact same-target identity (s_w=\langle w,\phi_G\rangle) and the primitive positive reserve. There is no residual or tie.
- B6 has the exact representation dimension (L), the primitive rate source, and direct transitivity. The catalog-free gap is not mislabeled as local proof work.
- The exact/noiseless and zero-query/large-tolerance rows preserve the original baseline conclusions with active primitive sources and zero residual.

The Noncircular Closure Gate passes: every derived output has an earlier producer, and compactness does not assume the global weight it produces. The Entry-State / Activation Trace Gate passes: zero-query execution still reaches (J), no first update is needed for terminal accuracy, empty (F) and empty (X) take direct branches, and exact learning keeps an active margin-one source. The Scope-Accumulation Compatibility Gate passes because the only arbitrary-cardinality accumulation is the exact closed-set intersection controlled by the finite-union identity and compactness. The Exported Interface Feasibility and Residual-To-Target Adequacy Gates pass with identical source and target objects or exact zero-residual equalities in every row.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Measurable terminal index, (p(D,h,\pi)\in\Delta_L), exact mixtures, and nonempty (\Pi(D,h)) for each actual (D) | Generated finite law and legal correlation input | Primitive measurable learner/execution convention, tape law (\nu), measurable selector (J), exact terminal identity, and center selector | Basic measurability convention plus `assump:finite-horizon-randomized-adaptivity`, `assump:full-adversarial-tolerance`, and `assump:finite-terminal-catalog` | (Z=J(e)\in[L]) gives a finite measurable partition and exact catalog output; (\mu_q\in I_q) gives policy nonemptiness | Same full continuous reply intervals, revealed-query filtration, tape law, and measurable-selector convention as the setting; no response grid or future coin is used | (p_i=\nu\{Z=i\}), (\sum_i p_i=1), and (\mathbb E_Uf(\widehat h)=\sum_i p_if(g_i)); center response (v=\mu_q) | Primitive finite selector equality exports exactly the terminal law and the two bounded functionals consumed by B2; center rule exports only nonemptiness | Produced terminal law is the consumed catalog law; loss and correlation residuals are zero | Adaptive rounds and continuous replies alter event masses only; completion followed by one finite selector creates no accumulated defect | Primitive learner/policy/selector -> B1 -> B2; no accuracy or representation conclusion is assumed | B1/`step_001` produces (p) and mixtures; B2 consumes them | At (m=T=0), (J) still selects an index; (L=1) has mass one; if (X=\varnothing), no (D) is needed and B4 is direct | `step-local` | None |
| Universal policywise mixture correlation and policy-free (\max_i\mathbb E_D[hg_i]\ge\rho) | Structural signed lower bound and finite-game value source | B1 exact mixtures, primitive universal expected accuracy, binary loss identity, and (\rho>1/2) | Derived B1 output plus `assump:universal-expected-accuracy` and `assump:source-parameter-regime` | Accuracy for the same arbitrary policy gives the same-output correlation; a simplex maximum dominates its average | Same (D,h,g_i), binary loss, and tape-only expectation as the setting; oracle tolerance is not replaced by an exact oracle | (\sum_i p_i\mathbb E_D[hg_i]=1-2\mathbb E_U\mathcal L\ge\rho), then (\max_i c_i\ge\sum_i p_ic_i) | Raw (p\in\Delta_L) and accuracy export exactly the payoff for every finite-support (D_r); the maximum no longer depends on (\pi) | Same distribution and functions occur on both sides; zero residual at scale (\rho) | Policy-dependent masses and replies add no error; the statement is pointwise in each valid policy, with no policy or round accumulation | Primitive accuracy + B1 -> B2 -> B3; center policy prevents only vacuity | B2/`step_002` produces the correlation; B3 consumes it for every (D_r) | Holds for every valid (\pi); at (\varepsilon=0), value is one; (m=0,T=0,L=1) need no first query | `step-local` | None |
| (K_{h,F}\ne\varnothing) for every finite (F) | Finite simultaneous feasibility and quantifier reversal | B2 for every (D_r), finite matrix minimax/LP duality, vertex extrema, compact attainment | Accepted derived correlation plus standard finite-dimensional tool in the exact current notation | (\forall r\,\exists i) at value (\rho) becomes (\exists w\,\forall x\in F) at the same value | Rows are (x\in F), columns (i\in[L]), payoff (A_{xi}=h(x)g_i(x)); both simplices are nonempty only in the nonempty-(F) branch | (\min_r\max_i r^TAe_i=\max_w\min_r r^TAw=\max_w\min_x(Aw)_x\ge\rho), with an attained maximum | Correlation for every genuine (D_r) exports one theorem-simplex vector satisfying every finite row; empty (F) exports (K=\Delta_L) directly | Matrix payoff is exactly (h(x)s_w(x)); zero residual and no minimax slack | Best indices and B2 output laws may vary with (r); exact minimax controls that quantifier defect without accumulation | B2 -> B3 -> B4; finite feasibility is produced, not assumed | B3/`step_003` produces all finite (K_{h,F}); B4 consumes them | (F=\varnothing) never forms (\Delta_F); singleton (F), (L=1), and (\rho=1) retain exact attainment | `step-local` | None |
| Global (w_h\in\Delta_L) satisfying all point constraints | Arbitrary-domain membership and scope upgrade | B3 finite certificates, closed affine constraints, exact finite-union identity, compact FIP in fixed (\Delta_L) | Derived B3 outputs plus standard finite-dimensional compactness | FIP for closed subsets of a compact space gives a member of their total intersection; singleton membership gives every point | Compactness is on (\Delta_L\subset\mathbb R^L), not on (X); no sequence, measure, or domain topology is imported | (\cap_jK_{h,F_j}=K_{h,\cup_jF_j}\ne\varnothing\), hence (\cap_{F\text{ finite}}K_{h,F}\ne\varnothing) | Closedness, fixed-simplex compactness, and all finite certificates export the exact theorem weight | Produced and consumed weight is identical; every residual (\rho-h(x)s_{w_h}(x)\le0) | Arbitrarily many constraints are accumulated by exact intersection; finite violation is zero and no signed/additive forcing exists | B3 precedes B4; compactness does not assume global feasibility | B4/`step_004` produces (w_h); B5 consumes it | If (X=\varnothing), the total intersection is (\Delta_L); arbitrary uncountable (X), (L=1), and (\rho=1) are unchanged | `step-local` | None |
| Fixed catalog map and exact strict signs | Structural positive-margin bridge to deterministic representation | Primitive (G), B4 global weight/margin, and (\rho>1/2>0) | `assump:finite-terminal-catalog`, `assump:source-parameter-regime`, and derived B4 output | Positive signed inner product is exactly the product required by (\operatorname{dc}) | Same catalog coordinates and score are used in B3-B5; no transformed object, metric, or sign convention | (\langle w_h,\phi_G(x)\rangle=s_{w_h}(x)) and (h(x)s_{w_h}(x)\ge\rho>0) | Primitive map and exact global weight export one common deterministic map and targetwise weights | Score and consumed inner product coincide; zero residual and the positive margin dominates the tie threshold | Pointwise algebra after the all-domain producer; no new defect or scope accumulation | Primitive (G) + B4 -> B5 -> B6/final | B5/`step_005` produces strict signs; B6 and final theorem consume them | Margin is one at (\varepsilon=0); (L=1) is the unique coordinate; empty (X) is vacuous | `step-local` | None |
| (\operatorname{dc}(H)\le L\le B(1+m/\tau^2)^k) | Explicit structural rate and theorem closure | B5 exact representation, definition of (\operatorname{dc}), and primitive polynomial catalog budget | Derived B5 output plus `assump:polynomial-catalog-budget` | An (L)-coordinate strict map gives the first inequality; the primitive budget gives exactly the second | Same (L,B,k,m,\tau) convention as the setting; no no-base, asymptotic, or catalog-free source is substituted | Direct exact inequality chain (\operatorname{dc}(H)\le L\le B(1+m/\tau^2)^k) | Raw representation and pre-run size condition expose every parameter and no hidden constant | Representation dimension and catalog dimension are the same (L); zero residual or rounding loss | Fixed-horizon direct transitivity; no repeated or limiting defect | B5 + primitive budget -> B6 -> final; budget does not assume representation | B6/`step_006` produces the final chain; final theorem consumes it | At (m=0), (L\le B); every finite large (\tau), (L=1), and (B=1) remain meaningful | `step-local` | None |
| Exact/noiseless margin-one baseline | Baseline invariance obligation | Zero-error premise, exact mixture identity, zero-slack minimax/FIP, and exact score identity | Primitive (\varepsilon=0) specialization plus B1-B5 chain | Every bridge is exact or non-lossy, so margin one reaches the final pointwise score | Same loss, game payoff, simplex, score, and pointwise metric throughout | (\mathbb E\mathcal L=0\Rightarrow\rho=1\Rightarrow\min_x h(x)s_{w_h}(x)\ge1) | Zero error and exact finite catalog law export the original margin-one target, not a positive-margin surrogate | Zero residual at every bridge and required scale exactly one | No stochastic, minimax, compactness, or sign slack accumulates | Primitive zero-error accuracy -> B1 -> B2 -> B3 -> B4 -> B5 | B2-B5 produce the baseline; final margin/sign conclusion consumes it | Mechanism is active at (\varepsilon=0); (L=1), empty (F), and empty (X) do not weaken it | `step-local` | None |
| Zero-query and large-finite-tolerance baseline | Baseline invariance and boundary rate | Selector on complete zero-query execution and primitive leading-base catalog budget | `assump:finite-terminal-catalog`, `assump:polynomial-catalog-budget`, and parameter regime | Terminal factorization needs no query, while the leading base gives a nonzero valid budget at (m=0) | Same fixed-horizon execution and every finite (\tau>0); no (m\ge1) or (\tau\le1) convention is imported | (m=T=0\Rightarrow J(e(U))\in[L]) and (L\le B(1+0/\tau^2)^k=B) | Zero-depth selector and explicit budget export the same law and rate used by the theorem | No missing-update residual; leading base is retained rather than replaced by zero | No transition or forcing term exists; the boundary relation is exact for each finite (\tau) | Primitive selector/budget -> B1 and B6 -> final | B1 produces the zero-depth law; B6 produces the base-correct rate | (m=T=0), (L=1), (B=1), and arbitrarily large finite (\tau) remain defined; false (Cm/\tau^2) is excluded | `step-local` | None |

## Hard-Step Localization Audit

Every unresolved local obligation is `step-local` under the accepted theorem contract.

- `step_001`: recursively instantiate the primitive measurability convention for a fixed valid measurable policy, form the finite partition, and verify center-policy nonanticipation and interval membership. The measurable selector/execution source and exact output interface already exist; the step does not need a new sigma-algebra assumption, response encoding, or policy restriction.
- `step_002`: perform finite expectation algebra and max-over-average for the same arbitrary policy. The signed source (\rho), legal producer (p), and tape-only expectation are already fixed.
- `step_003`: restate or prove finite minimax/LP duality with the displayed row/column convention, verify vertex extrema and attainment, and handle empty (F) separately. No new bridge or changed game interface is needed.
- `step_004`: prove closedness, the finite-union intersection identity, and compact FIP in (\Delta_L). The global output is an exact consequence of already produced finite certificates, not a missing closure source.
- `step_005`: apply the exact score identity and positive reserve. No transformed-object or residual bridge is missing.
- `step_006`: unfold the definition and append the primitive budget. The catalog/budget assumption is explicit; deriving it from query complexity alone is outside this conditional theorem, not deferred local work.

The exact/noiseless, (L=1), zero-query, empty-domain, and large-tolerance checks instantiate these same sources. None requires a changed step target, dependency, assumption, generated-output flow, closure mechanism, theorem mode, metric, exposed dependence, success criterion, or conclusion.

## Early Idea-Failure Screen

- Contract contradiction: None. The proof uses only the explicit finite-catalog conditional theorem and does not consume a property forbidden or absent from the setting.
- Missing mechanism: None. Finite selector factorization, universal accuracy, finite minimax, compact FIP, positive margin, and the primitive budget are concrete sources for B1-B6.
- Source-convention and object-target stress: Pass. All produced laws, payoffs, weights, scores, and dimensions are the exact objects consumed downstream. No population, transformed, weighted, preconditioned, or surrogate object appears.
- Residual and persistent-defect stress: Pass. Each transfer has zero residual or an exact inequality. Adaptive replies change only finite selector masses; finite constraints accumulate by intersection, not additive error.
- Limiting and boundary stress: Pass for (L=1), (m=T=0), (\varepsilon=0), arbitrarily large finite (\tau), empty (F), and empty (X). No mechanism becomes inactive while a false target remains asserted.
- Entry-state trace: Pass. Zero-query executions are terminal inputs to (J); exact-center replies are needed only when a query exists; empty-domain closure uses no distribution or execution.
- Generated-condition provenance: Pass. Every generated output is produced before use along B1-B6; no closure, specialization, or final assembly block invents an output.
- Dependence and mode: Pass. The final claim is deterministic and fixed-horizon with all catalog-rate parameters exposed. No catalog-free, high-probability, asymptotic, or no-base upgrade is made.
- Baseline invariance: Pass. Margin one, exact signs, unique-coordinate behavior, and the leading-base (m=0) rate are preserved.
- Same-setting repair plausibility: No repair is needed. There is no obstruction requiring a global rewrite, new sketch interface, or theorem-contract change.

## Review Rationale

The global diagnostic is contract-complete, faithful, and sufficiently explicit for downstream step work. Its only delicate semantic bridge, policy-class nonemptiness, is supported by the live primitive measurability convention and the exact-center selector, while all accuracy and mixture statements retain the universal arbitrary-policy quantifier and tape-only expectation. The finite minimax and compact FIP mechanisms have the correct objects, order, attainment, producer paths, and boundary branches. Every theorem-critical certificate, exported interface, and generated-output flow is genuinely step-local under the unchanged accepted sketch. Therefore `ACCEPTED` with retry target `None` is the smallest sound decision.
