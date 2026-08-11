# Proof Sketch

## Formalized Setting

Let \(\mathcal X\) be arbitrary and \(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\). One fixed randomized learner \(A\), with seed law \(\mu_A\), makes at most \(m\ge1\) adaptive unrestricted statistical queries of tolerance \(\tau\in(0,1]\) and returns a binary predictor. For every distribution \(\mathcal D\), target \(h\in\mathcal H\), and tolerance-valid adaptive response strategy \(R\),
\[
\mathbb E_U\mathcal L_{\mathcal D,h}(\widehat h_{A,U,R})\le\varepsilon,
\qquad 0\le\varepsilon<\tfrac14.
\]
The response strategy is adversarial and is not averaged. The response-complete operator \(\Psi_A\) contains both label channels of every query at every seed/transcript node and every possible terminal predictor. It is determined by \(A,m,\tau\), not by a theorem-instance distribution, target, response path, or realized seed.

This is exact-goal mode. The only primitive assumptions are `assump:parameter-regime`, `assump:adaptive-sq-interface`, and `assump:universal-adversarial-guarantee`. Point-mass payoff, finite strict separation, a separator-preserving quotient, its rank bound, and arbitrary-domain exactification are derived obligations.

## Formalized Goal

Prove that a universal numerical constant \(C\) exists such that the primitive assumptions imply one deterministic map \(\varphi_A:\mathcal X\to\mathbb R^d\), with
\[
d\le C\frac m{\tau^2},
\qquad
\forall h\in\mathcal H\ \exists w_h\in\mathbb R^d\ \forall x\in\mathcal X,
\quad h(x)\langle w_h,\varphi_A(x)\rangle>0.
\]
The conclusion is unconditional, deterministic, fixed-horizon, and exact-sign. The map is shared by the full class and is independent of distributions, targets, legal replies, and learner coins.

## Sketch Identity

- Sketch attempt: 1
- Retry mode: Initial run
- Goal mode: Exact-goal mode

## Proof Roadmap

No viable full proof roadmap is selected. The technical survey supports the following finite-dimensional prefix but finds no theorem-critical source for either bridge needed to reach the exact goal.

1. The point-mass specialization is valid: for every \(x,h\), and every legal point-mass response strategy,
   \[
   \mathbb E_U[h(x)\widehat h_{A,U,R}(x)]
   =1-2\mathbb E_U\mathcal L_{\delta_x,h}(\widehat h_{A,U,R})
   \ge1-2\varepsilon>\tfrac12.
   \]
2. Simultaneous finite-restriction strict separation is supportable without an unverified minimax upgrade. Fix finite \(S\) and \(h\). If no \(\lambda\in E_{A,S}^*\) is positive on every signed column \(h(x)\Psi_A(x)\), Gordan's alternative gives coefficients \(\alpha_x\ge0\), not all zero, with \(\sum_{x\in S}\alpha_xh(x)\Psi_A(x)=0\). After normalization these coefficients define \(\mathcal D\) on \(S\). Every terminal-predictor coordinate then satisfies \(\mathbb E_{\mathcal D}[h g_\ell]=0\), so every possible realized leaf has loss \(1/2\), contradicting `assump:universal-adversarial-guarantee`. Thus a strict \(\lambda_{h,S}\) exists for every \((h,S)\), with common uncompressed columns \(\Psi_A|_S\).
3. The proposed tolerance-energy quotient is unsupported. The primitive bounds yield only \(0\le\Delta(\nu,x)\le2\) and hence a bound of order \(m\) along one depth-\(m\) execution. They do not yield one injection or potential charging retained directions across incomparable response branches, seeds, targets, and Gordan witness distributions. Nor do they show that the terminal-coordinate functionals \(\lambda_{h,S}\) annihilate a common kernel selected from query-channel gaps. Therefore the exact separator-preserving quotient and \(O(m/\tau^2)\) rank export have no legal producer.
4. Conditional on such a quotient, finite-restriction strict representation would be immediate: \(x\mapsto\pi_S\Psi_A(x)\) and descended \(\bar\lambda_{h,S}\) give strict signs. This conditional algebra does not discharge the missing quotient.
5. Independently, separately chosen finite quotients do not supply a deterministic map on an arbitrary domain. Strict sign inequalities are open and have no uniform margin, so the usual compact finite-intersection argument is unavailable. More sharply, for a linearly ordered set \(X\) of cardinality greater than \(|\mathbb R|\), the class of distinct threshold cuts has dimension at most two on every finite restriction, while no finite-dimensional real feature map can realize the whole class because \(\mathbb R^d\) has only \(|\mathbb R|\) weight vectors. Thus finite-restriction dimension alone is not a valid arbitrary-domain compactness interface. The response-complete certificate would need a coherent global quotient or another source-specific global bridge; neither is supplied.

Because items 3 and 5 are theorem-critical and not step-local, the workflow contract forbids turning them into generic future hard steps. Accordingly, `## Sketch Steps` is `None`, and the exact defects are recorded in `## Blockers`.

## Rate Objectives

- Objective type: Structural-parameter explicit, deterministic fixed-horizon exactification.
- Exposed variables: \(m\) and \(\tau\) in \(d\le C m/\tau^2\); \(\varepsilon\) only through the primitive regime \(0\le\varepsilon<1/4\).
- Hidden constants may depend on: Nothing; \(C\) must be numerical and universal.
- Hidden constants may not depend on: \(\mathcal X,\mathcal H,m,\tau,\varepsilon,\mathcal D,h\), the oracle strategy or replies, the seed law, or a realized seed.
- Fixed quantities: The learner \(A\) and parameters \(m,\tau,\varepsilon\) are fixed before quantifying over \(\mathcal D,h,R\); the output map may depend only on \(A,m,\tau\).
- Probability mode: Deterministic conclusion; the premise is expectation over \(U\) only and is uniform over \(\mathcal D,h,R\).
- Horizon mode: Fixed horizon of at most \(m\) adaptive queries; no asymptotic or stopping-time upgrade.
- Norm mode: Exact strict sign representation, equivalently deterministic dimension complexity; no margin, approximate risk, probabilistic dimension, or confident-dimension substitution.
- Required bridge or simplification obligations: A branch-uniform separator-preserving compression with an explicit common charge relation \(c_0\tau^2 D\le\sum_{j\le D}\mathrm{charge}_j\le C_0m\), followed by a coherent arbitrary-domain real exactification. Neither bridge currently has a producer.
- Baseline invariance obligations: Exact signs and one deterministic common map must remain exact under every specialization. At \(\tau=1\), all two label-conditioned point-mass tolerance intervals overlap; a common-response coupling shows that two targets cannot disagree at any point, so \(\mathcal H\) contains at most one distinct function and \(d\le1\). Since \(m\ge1\), this is compatible with \(Cm/\tau^2\) for \(C\ge1\). This boundary fact does not provide the missing mechanism for \(0<\tau<1\).

## Assumption Provenance Objectives

- Point-mass payoff: Derived from `assump:universal-adversarial-guarantee` specialized to \(\delta_x\), together with `assump:parameter-regime`; no new condition.
- Response-complete operator: Derived deterministically from `assump:adaptive-sq-interface`; its full undiscretized node and leaf sets are not finite-rank assumptions.
- Finite strict separator: Derived from the primitive universal-distribution guarantee and Gordan's finite-dimensional alternative as described in the roadmap. It is indexed by \((h,S)\) and is not a primitive common-quotient condition.
- Common separator-preserving quotient and rank certificate: Required derived output. There is no primitive or accepted-derived source for a common kernel, retained-direction charging map, or branch-uniform energy potential. Treating it as admissibility would violate the Assumption Provenance Contract.
- Coherent global real map: Required derived output. Finite maps \(\pi_S\Psi_A|_S\) are local generated objects; no earlier source proves compatibility under inclusions \(S\subseteq T\), a uniform closed margin, or a single global quotient. Treating coherence as an assumption would change the unconditional target.

## Mechanism-Source And Boundary Stress

The identifiers below name diagnostic candidate obligations only. They are not activated sketch steps because the full dependency graph is blocked.

- Step ID: `step_001` (diagnostic supportable prefix)
- Claim class: Point-mass strict payoff.
- Theorem role: Supplies a local robustness check and records the strict \(\varepsilon<1/4\) gap.
- Mechanism source: Direct specialization of `assump:universal-adversarial-guarantee` under the loss-correlation identity, with `assump:parameter-regime`.
- Source-to-claim adequacy: Exact convention match: \(\mathcal L_{\delta_x,h}(g)=\mathbf1\{g(x)\ne h(x)\}\), hence \(h(x)g(x)=1-2\mathbf1\{g(x)\ne h(x)\}\). The guarantee holds for every legal response strategy and averages only over \(U\).
- Residual-to-target adequacy: N/A; this is an exact identity on the same point, target, and predictor.
- Key positive/control term or structural source: \(1-2\varepsilon>1/2\).
- Opposing defect terms: Only \(2\varepsilon\), controlled by the primitive strict inequality \(\varepsilon<1/4\).
- Closure/dominance/absorption relation: \(1-2\mathbb E L\ge1-2\varepsilon>1/2\).
- Accumulation behavior / scope compatibility: No accumulation; the statement is pointwise in \((x,h,R)\).
- Obligation locality classification: `step-local`.
- Noncircular closure status: N/A; no generated closure is consumed.
- Entry-state / first-update stress result: At a zero-query terminal leaf the same identity applies; otherwise any legal first response remains covered because the premise is uniform over response strategies.
- Baseline conclusion preserved: Exact correctness correlation is retained, not replaced by approximate representation.
- Producer-consumer provenance: Primitive assumptions -> point-mass payoff; it can audit, but is not needed as the sole producer of the finite Gordan separator.
- Null or boundary regime tested: \(\varepsilon=0\), \(\varepsilon\uparrow1/4\), \(m=1\), and \(\tau=1\) all preserve strictness; at the excluded value \(\varepsilon=1/4\), the displayed lower bound is only \(1/2\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without the strict error premise there is no strict payoff.
- Repair route if source is unsupported: N/A; the source is primitive and adequate.

- Step ID: `step_002` (diagnostic supportable prefix)
- Claim class: Simultaneous finite-restriction strict separation for the common uncompressed operator.
- Theorem role: Produces \(\lambda_{h,S}\in E_{A,S}^*\) for every finite \(S\) and target \(h\).
- Mechanism source: Direct finite-dimensional Gordan alternative plus the terminal-predictor coordinates of \(\Psi_A\), `assump:adaptive-sq-interface`, and `assump:universal-adversarial-guarantee`.
- Source-to-claim adequacy: In the exact current convention, failure of one functional strictly positive on all \(h(x)\Psi_A(x)\), \(x\in S\), yields \(\alpha\ge0\), \(\alpha\ne0\), with signed-column sum zero. Normalizing \(\alpha\) gives a finite-support \(\mathcal D\). Every terminal coordinate then has correlation zero, so every response strategy and every realized seed ends at a predictor of loss \(1/2>\varepsilon\). This contradicts the primitive guarantee without fixing favorable coins or replies.
- Residual-to-target adequacy: Exact same-object relation: the produced functional acts on \(\Psi_A(x)\), the same columns consumed by the finite strict-sign claim. There is no transform residual at this stage.
- Key positive/control term or structural source: The contradiction gap \(1/2-\varepsilon>1/4\).
- Opposing defect terms: None after the exact signed-column dependence; every leaf correlation is exactly zero.
- Closure/dominance/absorption relation: Gordan alternative plus \(\mathcal L=(1-\mathbb E[hg])/2=1/2\).
- Accumulation behavior / scope compatibility: Finite in \(S\); no iteration or branch accumulation. All terminal branches are covered simultaneously by coordinates, not union-bounded.
- Obligation locality classification: `step-local` as a finite-restriction prefix.
- Noncircular closure status: The producer is the primitive learner guarantee and theorem of the alternative; strict separation is not assumed.
- Entry-state / first-update stress result: If the learner stops immediately, its terminal predictor is still one of the coordinates and has zero correlation under the dual witness, so the contradiction already fires. Otherwise every legal trajectory ends at a covered terminal coordinate.
- Baseline conclusion preserved: The result is strict finite exact sign separation, not a positive-margin theorem assumption.
- Producer-consumer provenance: Primitive operator and guarantee -> finite Gordan separator; intended consumers would be the quotient and finite-map stages, but the quotient consumer lacks a valid interface.
- Null or boundary regime tested: Empty \(S\) is vacuous; repeated columns with opposite required signs trigger the dual witness and are excluded by the guarantee; \(\tau=1\) is consistent with the stronger singleton-class boundary argument.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without terminal coordinates or the all-distributions guarantee, the dual distribution would not contradict learning.
- Repair route if source is unsupported: N/A; the finite claim is supported.

- Step ID: `step_003` (blocked candidate)
- Claim class: Separator-preserving common quotient with structural lower charge and rank \(O(m/\tau^2)\).
- Theorem role: Sole proposed producer of the theorem's finite-dimensional common feature interface and explicit rate.
- Mechanism source: Proposed tolerance-gap charging from bounded query channels and depth \(m\); no cited or directly derived branch-uniform potential is available.
- Source-to-claim adequacy: Failed. The raw fact \(\Delta(\nu,x)\le2\) supports \(\sum_{t\text{ on one path}}\Delta_t^2\le4m\), but the claimed directions may come from incomparable nodes, different seeds, targets, finite sets, and Gordan witness distributions. No injection maps all retained directions to one path, and the COLT 2017 SQ characterization does not conclude an exact separator-preserving sign-rank quotient.
- Residual-to-target adequacy: Failed. The produced raw controls concern query-channel gaps; the consumed objects are arbitrary terminal-coordinate separators \(\lambda_{h,S}\). No decomposition proves that these functionals annihilate one common kernel or that query-gap residuals dominate the lost terminal-separator component.
- Key positive/control term or structural source: The desired lower charge \(c_0\tau^2\) per independent retained direction is not derived.
- Opposing defect terms: Unbounded multiplicity over branches and seeds; target- and \(S\)-dependent separators; terminal-output components unrelated to query gaps; continuous response prefixes.
- Closure/dominance/absorption relation: Missing. The required relation \(c_0\tau^2D\le\sum_j\mathrm{charge}_j\le C_0m\) has neither a common summation domain nor a common potential.
- Accumulation behavior / scope compatibility: Unsupported. Pathwise depth is finite-budgeted only per execution; the requested aggregate is over mutually incompatible executions and has no finite global budget.
- Obligation locality classification: `idea/theorem-contract defect` for this full idea: repair requires adding a new theorem-critical branch-uniform compression source not supported by the setting, examples, or cited results, rather than instantiating an existing interface.
- Noncircular closure status: Failed. Defining retained directions as those needed by all separators already presupposes the low-dimensional common quotient the step must prove.
- Entry-state / first-update stress result: At the root, different seeds may issue unrelated first queries. Even when every individual trajectory has one charged node (for example \(m=1\)), there is no primitive bound on the number of seed-indexed or target-witness directions collected globally.
- Baseline conclusion preserved: The desired exact quotient would preserve strict signs, but no weaker approximate/probabilistic quotient is an allowed substitute.
- Producer-consumer provenance: No legal producer; intended consumers are finite representation, globalization, and final assembly.
- Null or boundary regime tested: \(m=1\) does not turn a per-seed path bound into a seed-uniform rank bound. At \(\tau=1\), the class is trivial by overlap coupling, but this special boundary mechanism does not extend to \(0<\tau<1\). As \(\tau\downarrow0\), the allowed rank grows, but the absent common-potential relation remains absent.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without this source, the uncompressed response-complete operator can have arbitrarily many coordinates and the theorem's \(O(m/\tau^2)\) dimension conclusion is unavailable.
- Repair route if source is unsupported: `/subagent-idea-generator`; a same-sketch decomposition cannot manufacture the missing common compression mechanism.

- Step ID: `step_004` (blocked conditional consequence)
- Claim class: Finite strict sign representation after quotient.
- Theorem role: Would convert a valid quotient into \(x\mapsto\pi_S\Psi_A(x)\) and descended target functionals.
- Mechanism source: Elementary quotient duality, conditional on the exact output of blocked `step_003`.
- Source-to-claim adequacy: The algebra is exact if every \(\lambda_{h,S}=\bar\lambda_{h,S}\circ\pi_S\). That factorization is not available.
- Residual-to-target adequacy: Would be exact with zero residual under the stated factorization; presently there is no produced quotient to compare with the consumed target.
- Key positive/control term or structural source: Strict positivity of \(\lambda_{h,S}(\Psi_A(x))\).
- Opposing defect terms: Any component of \(\lambda_{h,S}\) lost in \(\ker\pi_S\); it is uncontrolled because descent is unproved.
- Closure/dominance/absorption relation: Exact equality under the missing factorization; no approximate loss is permitted.
- Accumulation behavior / scope compatibility: Finite \(S\), no accumulation.
- Obligation locality classification: `sketch/interface defect` downstream of the idea-level compression defect.
- Noncircular closure status: Blocked by dependency; it cannot declare the quotient as an admissibility condition.
- Entry-state / first-update stress result: N/A; this is static linear algebra.
- Baseline conclusion preserved: Conditional output is strict exact sign representation.
- Producer-consumer provenance: `step_002` plus missing `step_003` -> finite map; intended consumer is arbitrary-domain exactification.
- Null or boundary regime tested: Zero-dimensional quotient cannot represent a nonempty nonconstant class; the conditional equality exposes this rather than hiding it.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes; strict separators need not descend.
- Repair route if source is unsupported: Repair the rank-compression idea, not this algebraic consequence.

- Step ID: `step_005` (blocked candidate)
- Claim class: Arbitrary-domain simultaneous exactification over \(\mathbb R\).
- Theorem role: Converts finite-restriction maps into one deterministic common map for all \(x\) and \(h\).
- Mechanism source: Proposed finite-restriction compactness using pre-compression strict certificates; no compact closed parameter space, coherent quotient system, or source theorem is supplied.
- Source-to-claim adequacy: Failed. Strict inequalities define open constraints, finite maps and quotient kernels may vary with \(S\), and ordinary compactness does not preserve strictness without a normalized positive margin. Logical compactness would at best produce a representation over an unspecified real-closed extension, not the required \(\mathbb R^d\) map.
- Residual-to-target adequacy: Failed. The produced objects are unrelated finite maps \(\varphi_S\); the consumed target is one global \(\varphi_A\). There is no equality, restriction compatibility, or residual bound between \(\varphi_T|_S\) and \(\varphi_S\).
- Key positive/control term or structural source: A coherent global quotient or closed positive-margin normalization would be needed; neither is available or allowed as a new premise.
- Opposing defect terms: Vanishing finite margins, incompatible kernels/bases, arbitrary domain cardinality, and lack of a real-valued global parameter limit.
- Closure/dominance/absorption relation: Missing. No finite-intersection family of closed subsets of a compact real parameter space has been constructed.
- Accumulation behavior / scope compatibility: Unsupported across the directed family of finite subsets. Local strictness may vanish and local choices need not be projectively compatible.
- Obligation locality classification: `idea/theorem-contract defect` for the proposed finite-quotient-plus-compactness route. Repair by a cardinality or margin assumption would change the theorem; repair by a coherent global quotient would require a new unsupported theorem-critical mechanism.
- Noncircular closure status: Failed. Choosing a compatible family of quotients is equivalent to supplying the missing global representation interface.
- Entry-state / first-update stress result: For a linearly ordered \(X\) with \(|X|>|\mathbb R|\), every finite restriction of the threshold-cut class has a two-dimensional strict representation, but the full class has more than \(|\mathbb R|\) distinct functions and hence cannot be indexed by weights in any fixed \(\mathbb R^d\). Thus the proposed finite-restriction entry state can hold while the global conclusion is false.
- Baseline conclusion preserved: No approximate, non-Archimedean, cardinality-restricted, or uniform-margin surrogate preserves the stated arbitrary-domain real exact conclusion.
- Producer-consumer provenance: Finite maps would be produced conditionally by `step_004`; no legal producer maps them to the global theorem output.
- Null or boundary regime tested: The obstruction is present even at fixed finite local dimension and exact local signs. Finite \(\mathcal X\) would remove this globalization issue but would change the theorem scope.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes; local representability alone does not imply the required global real representation.
- Repair route if source is unsupported: `/subagent-idea-generator`; a new coherent global construction must replace the unsupported compactness assertion without changing the exact target.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Point-mass payoff \(\mathbb E_U[h(x)\widehat h(x)]>1/2\) | Primitive assumptions; diagnostic `step_001` | Expected point-mass loss at most \(\varepsilon\) | Controlled: \(2\varepsilon\); uncontrolled: none | Exact loss-correlation identity on the same object | \(1-2\mathbb E L\ge1-2\varepsilon>1/2\) | `assump:parameter-regime` | Finite-separation audit | None |
| Finite strict separator \(\lambda_{h,S}\) on common \(\Psi_A|_S\) | Gordan direct derivation; diagnostic `step_002` | All terminal coordinates and universal guarantee for the dual finite-support distribution | Controlled: exact zero correlations under a dual dependence; uncontrolled: none at the uncompressed level | Same columns and same strict-sign target; zero transfer residual | Dual dependence implies loss \(1/2>\varepsilon\), contradiction | Strict gap \(1/2-\varepsilon>0\) | Intended quotient and finite representation | None for the uncompressed finite interface |
| Common separator-preserving quotient with \(d_S\le Cm/\tau^2\) | No legal producer; blocked `step_003` | Per-node \(0\le\Delta\le2\), at most \(m\) nodes per execution | Controlled: one-path depth; uncontrolled: branch/seed/target/witness multiplicity and terminal-functional components | Missing query-gap-to-terminal-separator transfer and common-kernel equality | Desired \(c_0\tau^2D\le C_0m\) is not derived | No positive per-direction charge source | Finite maps, globalization, final rate | Idea/theorem-contract blocker |
| Finite map \(x\mapsto\pi_S\Psi_A(x)\) with strict descended signs | Conditional `step_004` | Finite separators plus a quotient, if produced | Uncontrolled: separator mass on \(\ker\pi_S\) | Exact only under unproved factorization \(\lambda=\bar\lambda\circ\pi_S\) | Equality, not approximation, is required | Strictness from `step_002` conditional on descent | Globalization | Blocked by missing quotient |
| One global deterministic \(\varphi_A:\mathcal X\to\mathbb R^d\) | No legal producer; blocked `step_005` | Separately chosen finite maps, conditionally | Uncontrolled: incompatibility, vanishing margins, cardinality, non-real limits | No same-target bridge from local maps to one global real map | No closed compact finite-intersection or coherent quotient relation | None; a uniform margin is forbidden as an added premise | Final theorem | Idea/theorem-contract blocker |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Response-complete operator \(\Psi_A\) | `assump:adaptive-sq-interface` by deterministic construction | Diagnostic `step_002`; intended `step_003` | Common pre-compression column map | Primitive interface -> operator -> finite separation | `derived` | None at the uncompressed level |
| Point-mass strict payoff | Diagnostic `step_001` from primitive guarantee | Robustness audit | Confirms strict local correlation under all legal point-mass replies | Primitive guarantee -> payoff | `derived` | None |
| Family \(\{\lambda_{h,S}\}\) of finite strict separators | Diagnostic `step_002` | Intended `step_003` and `step_004` | Strict exact signs before compression | Operator + universal guarantee -> Gordan alternative -> separator | `derived` | No flow from these target-dependent functionals to a common quotient |
| Common quotient and rank certificate | No producer | `step_004`, `step_005`, final theorem | Dimension \(O(m/\tau^2)\) | Missing | `derived` | No branch-uniform energy source, common kernel, or separator-descent path |
| Finite quotient maps | Conditional `step_004` | `step_005` | Local exact representations | Separator + missing quotient -> finite map | `derived` | Producer is blocked; maps also lack inter-set coherence |
| Global map \(\varphi_A\) | No producer | Final assembly | Exact deterministic dimension bound | Missing finite-to-global bridge | `derived` | No coherent global quotient or valid strict compactness interface |

## Sketch Steps

None

## Dependency Notes

The supportable prefix would be acyclic: the primitive response-complete construction and learner guarantee produce the point-mass identity and finite Gordan separator. A quotient would then have to consume those separators, a finite-map step would consume the quotient, and globalization would consume a coherent family or a global quotient. The graph cannot be activated because the quotient node and globalization node have no legal producers. Making later steps conditional on those missing outputs would not prove the unconditional exact goal and would hide derived invariants as assumptions.

## Blockers

1. **Missing common rank-compression source (`idea/theorem-contract defect`).** Bounded depth controls tolerance gaps only along one execution. The roadmap needs a single target-independent injection or potential that charges every retained direction across incomparable continuous branches, seeds, targets, finite restrictions, and dual witness distributions, with a concrete inequality \(c_0\tau^2D\le C_0m\). No primitive condition, cited theorem, direct derivation, or example supplies that relation. Adding it as a lemma without a mechanism source would merely restate the open problem.
2. **Missing separator-descent interface (`idea/theorem-contract defect`).** The supported finite separators may use arbitrary terminal-predictor coordinates. There is no raw-control-to-output argument showing that all such functionals vanish on one query-gap-defined kernel, no residual decomposition transferring query-channel control to terminal separators, and no source for the exact factorization \(\lambda_{h,S}=\bar\lambda_{h,S}\circ\pi_S\). Thus the claimed quotient is not separator-preserving on the available evidence.
3. **Invalid generic arbitrary-domain compactness bridge (`idea/theorem-contract defect`).** Separate bounded-dimensional strict representations of all finite restrictions do not by themselves yield one real representation on an arbitrary domain. Strict constraints are open, local margins may vanish, and quotient choices need not be coherent. The threshold-cut cardinality example shows the local-to-global implication is false in this generality. A uniform margin or cardinality restriction changes the theorem; a coherent global quotient would be a new unsupported theorem-critical mechanism.
4. **No traceable source closes either defect.** The COLT 2017 SQ characterization supplies adversarial-oracle minimax geometry but no exact sign-rank quotient, and the JMLR 2002 dimension-complexity work supplies the target representation language but no SQ-to-dimension compression or arbitrary-domain exactification theorem. Probabilistic/approximate representation results change the target and cannot preserve this branch's full progress type.
