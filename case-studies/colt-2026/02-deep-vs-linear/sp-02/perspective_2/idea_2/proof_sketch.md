# Proof Sketch

## Formalized Setting

Let \(A\) be the fixed randomized adaptive unrestricted-SQ learner, with all learner randomness represented by \(U\sim\mu_A\), and let \(\mathfrak R_A^{\mathrm{all}}\) be the deterministic complete public-transcript response rules from `setting.md`. For each such rule set
\[
F_R(x)=\mathbb E_U[g_{U,R}(x)],\qquad
V_A=\operatorname{span}_{\mathbb R}\{F_R:R\in\mathfrak R_A^{\mathrm{all}}\},
\]
and, under `assump:mean-response-rank`, write \(r_A=\dim V_A<\infty\). Fix a basis \(\psi_1,\ldots,\psi_{r_A}\), define
\[
\varphi_A(x)=(\psi_1(x),\ldots,\psi_{r_A}(x)),
\qquad
K_A=\overline{\operatorname{conv}}\{F_R:R\in\mathfrak R_A^{\mathrm{all}}\}
\]
in the finite-dimensional topology of \(V_A\), and put \(\rho=1-2\varepsilon\). The four primitive assumptions are `assump:parameter-regime`, `assump:adaptive-sq-interface`, `assump:universal-adversarial-guarantee`, and `assump:mean-response-rank`.

The branch is in exact-goal mode for its approved conditional theorem. The rank certificate is a declared primitive condition; compactness, exact-center correlation, finite simultaneous margins, the global target witness, and the weights are derived outputs.
The parent SQ and dimension-complexity papers supply protocol and target conventions, not the rank inequality: `assump:mean-response-rank` is the approved novel primitive supported by the concrete examples in `idea.md`, and this proof does not claim to derive it from \(m,\tau\) alone.

## Formalized Goal

Prove that the basis, hence \(\varphi_A\), can be fixed from \(A,\mu_A,m,\tau\), and the complete-response interface before any \(\mathcal D,h,R\), or seed is selected, and that for every \(h\in\mathcal H\) there is \(w_h\in\mathbb R^{r_A}\) such that
\[
h(x)\langle w_h,\varphi_A(x)\rangle\ge \rho>\frac12>0
\quad\text{for every }x\in\mathcal X.
\]
Consequently,
\[
\operatorname{dc}(\mathcal H)\le r_A
\le B\bigl(1+m/\tau^2\bigr)^k.
\]
The claim is deterministic, exact-sign, arbitrary-domain, and conditional only on the four stated primitive assumptions; it has no probability qualifier, domain-size dependence, or hidden constant.

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

Use Framework 1 from `technical_survey.md`: fixed finite-dimensional response body, minimax, and compact finite-intersection exactification. First construct all response-space objects from the fixed learner and prove compactness in one evaluation-coordinate norm. Next instantiate, for each \((\mathcal D,h)\), the deterministic exact-center complete rule; the every-valid-rule premise gives a seed-averaged correlation at least \(\rho\). On a nonempty finite \(S\), apply Sion's finite-dimensional minimax theorem to the fixed body \(K_A\) and \(\Delta(S)\), allowing the exact-center witness to vary with \(p\) but not allowing the body, space, or feature map to vary. The resulting closed signed-margin subsets of \(K_A\) have the finite-intersection property, so compactness gives one \(f_h\in V_A\) satisfying all points of an arbitrary domain. Basis coordinates yield \(w_h\), exact signs, and the displayed primitive rank bound.

This route directly removes all three failures of `perspective_2/idea_1`: common rank is primitive and pre-instance, every separator lies in the same body so no kernel descent is needed, and arbitrary-domain exactification uses closed subsets of one compact real body rather than unrelated finite maps.

## Rate Objectives

### Objective R1: Static polynomial dimension

- Objective type: structural-parameter explicit, fixed-horizon.
- Exposed variables: \(r_A,B,k,m,\tau\), through \(r_A\le B(1+m/\tau^2)^k\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\mathcal X,\mathcal H,A,m,\tau,\varepsilon,\mathcal D,h,R,U\), or domain cardinality; there are no hidden constants.
- Fixed quantities: \(B\ge1\) and \(k\ge1\) are fixed numerical protocol-family constants as stated in `assump:parameter-regime`; for a theorem instance, \(A,\mu_A,m,\tau\), and its complete-response interface are fixed before \(\mathcal D,h,R,U\).
- Probability mode: deterministic. Seed averaging defines \(F_R\) inside the construction and leaves no probabilistic theorem conclusion.
- Horizon mode: fixed finite upper horizon \(m\in\mathbb N_0\); no all-time or horizon-uniform upgrade is claimed.
- Norm mode: exact integer dimension \(\operatorname{dc}(\mathcal H)\) and finite-dimensional rank \(r_A\).
- Required bridge or simplification obligations: Step `step_006` must concatenate the exact inequalities \(\operatorname{dc}(\mathcal H)\le r_A\) and \(r_A\le B(1+m/\tau^2)^k\) without asymptotic notation, dropped terms, or a hidden constant.
- Baseline invariance obligations: At \(m=0\), the same formula gives \(r_A\le B\); no query-round lemma may be invoked. Arbitrarily large \(\tau>0\), \(B=1\), and \(k=1\) remain covered exactly.

### Objective R2: Uniform exact signed margin

- Objective type: structural-parameter explicit and exact/noiseless-specialization explicit.
- Exposed variables: \(\varepsilon\) through \(\rho=1-2\varepsilon\in(1/2,1]\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: Any theorem object or parameter.
- Fixed quantities: The fixed feature map \(\varphi_A\) is held fixed while \(h\) varies; only \(w_h\) changes.
- Probability mode: deterministic pointwise conclusion; the only expectation is the learner-seed average used to form \(F_R\).
- Horizon mode: static conclusion after an interaction of at most \(m\) queries.
- Norm mode: pointwise signed-score inequality \(\inf_{x\in\mathcal X}h(x)\langle w_h,\varphi_A(x)\rangle\ge\rho\), with the empty infimum/sign constraint treated vacuously.
- Required bridge or simplification obligations: `step_003` proves the exact loss-correlation identity, `step_004` preserves \(\rho\) through minimax, `step_005` preserves it through closed-set compactness, and `step_006` transfers it with zero coordinate residual.
- Baseline invariance obligations: At \(\varepsilon=0\), the same chain gives margin \(1\), not merely a positive or approximate margin. Strict signs follow for every allowed \(\varepsilon<1/4\), with no tie convention.

## Assumption Provenance Objectives

- **Fixed response space, basis, and feature map:** Derived in `step_001` from `assump:adaptive-sq-interface` and `assump:mean-response-rank`; they are not representation assumptions about \(\mathcal H\).
- **Compactness and continuous evaluations of \(K_A\):** Derived in `step_002` from finite rank and the primitive binary-output bound. No bounded-coefficient or compactness premise is added.
- **Exact-center legality and correlation:** Derived in `step_003` from `assump:parameter-regime`, `assump:adaptive-sq-interface`, and `assump:universal-adversarial-guarantee`. Exact-center replies are one universally covered deterministic rule, not a theorem-facing exact-oracle assumption.
- **Finite simultaneous margin:** Derived in `step_004` from the outputs of `step_002` and `step_003` via a fully discharged compact-convex minimax theorem. The distribution-dependent response witness is local to the inner maximization.
- **Arbitrary-domain witness \(f_h\):** Derived in `step_005` from compactness and the finite-intersection property. Global membership is never assumed as an admissibility condition.
- **Weights and dimension bound:** Derived in `step_006` from `step_001`, `step_005`, and the primitive numerical rank certificate. There are no conditional local hypotheses and no unproved generated invariant in the public theorem.

## Mechanism-Source And Boundary Stress

### `step_001`

- Step ID: `step_001`
- Claim class: Fixed generated-object construction and pre-instance independence.
- Theorem role: Produces the one common function space and coordinate map used by every later target and distribution.
- Mechanism source: Direct current-notation construction from `assump:adaptive-sq-interface` and `assump:mean-response-rank`. The convention is exactly the setting's deterministic complete rule on public query-bearing histories, hidden seed \(U\), binary terminal predictor \(g_{U,R}\), and seed average \(F_R\). The constant-zero reply on every admitted history shows \(\mathfrak R_A^{\mathrm{all}}\ne\varnothing\) when \(m>0\); for \(m=0\) the unique empty rule does so. Finite rank permits a basis chosen before any instance.
- Source-to-claim adequacy: The all-rule definition gives an exact inclusion for every later exact-center rule, even though that rule depends on \((\mathcal D,h)\). Neither the basis nor \(V_A\) uses a valid-policy choice, a target, a distribution, or a realized seed. The raw-assumption-to-output path is \((A,\mu_A,m,\tau,\text{complete interface})\mapsto\mathfrak R_A^{\mathrm{all}}\mapsto\{F_R\}\mapsto V_A\mapsto(\psi_j,\varphi_A)\).
- Residual-to-target adequacy: For any later \(f=\sum_jw_j\psi_j\in V_A\), the produced coordinate object and consumed score obey the exact same-target identity \(f(x)=\langle w,\varphi_A(x)\rangle\); residual is zero in the pointwise theorem interface.
- Key positive/control term or structural source: Exhaustion over all complete deterministic response rules and the finite-rank certificate.
- Opposing defect terms: Possible dependence of a particular valid rule on \((\mathcal D,h)\), seed-dependent queries, real-valued adaptive transcripts, and the much larger span of individual \(g_{u,R}\). These do not alter the all-rule mean family; no claim is made about individual-predictor rank.
- Closure/dominance/absorption relation: Exact set inclusion \(R^0_{\mathcal D,h}\in\mathfrak R_A^{\mathrm{all}}\) once legality is proved in `step_003`, and exact basis expansion in \(V_A\); there is no approximation to absorb.
- Accumulation behavior / scope compatibility: Static, not accumulated. The complete rule is defined at all admitted histories at once, so unreachable histories and at most \(m\) adaptive rounds create no iterative defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Noncircular producer path `assump:adaptive-sq-interface` + `assump:mean-response-rank` -> `step_001` -> all later steps; no separator or final representation is assumed in defining \(V_A\).
- Entry-state / first-update stress result: At \(m=0\) the empty rule immediately produces \(g_{u,R}\) and \(F_R\), so the construction is active without a first query. For immediate stopping at positive \(m\), the same definition applies.
- Baseline conclusion preserved: The zero-query specialization retains the exact same map-and-sign target; only the primitive bound specializes to \(r_A\le B\).
- Producer-consumer provenance: Producer `step_001`; \(V_A\) and its basis are consumed by `step_002`, `step_005`, and `step_006`; \(K_A\)'s raw generating family is consumed by `step_002` and `step_003`.
- Null or boundary regime tested: \(m=0\), \(r_A=0\), \(\mathcal X=\varnothing\), and \(\mathcal H=\varnothing\). If \(\mathcal X=\varnothing\), every terminal function is the zero function and \(r_A=0\); if \(\mathcal H=\varnothing\), the representation demand is vacuous.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without the all-rule fixed family or finite-rank certificate, no common finite map follows. Both are primitive in this conditional theorem.
- Repair route if source is unsupported: None; the sources are explicit primitive assumptions and direct definitions.

### `step_002`

- Step ID: `step_002`
- Claim class: Fixed-space compactness, boundedness, and continuity of all point evaluations.
- Theorem role: Supplies the compact body required by finite minimax and arbitrary-domain finite-intersection closure.
- Mechanism source: Direct finite-dimensional linear algebra and Heine--Borel in the exact setting convention. Since evaluations \(\delta_x:f\mapsto f(x)\) separate points of \(V_A\), their span is \(V_A^*\); select \(r_A\) of them as a dual basis, giving an injective linear isomorphism \(E_Z:V_A\to\mathbb R^{r_A}\). Binary outputs give \(|F_R(z_i)|\le1\). For \(r_A=0\), use the unique zero-dimensional topology and empty evaluation map.
- Source-to-claim adequacy: In the norm \(\|f\|_Z=\|E_Zf\|_\infty\), the generating family and its convex hull are bounded; the defining closure is closed. Closed and bounded subsets of a finite-dimensional normed space are compact. For any \(x\), \(\delta_x\circ E_Z^{-1}\) is a linear functional on \(\mathbb R^{r_A}\), hence \(\delta_x\) is continuous. This proves precisely the topology and evaluation interface later consumed.
- Residual-to-target adequacy: \(E_Z\) is only a coordinate isomorphism of the same functions in \(V_A\). The inverse restores each point value exactly, so there is no surrogate object or residual between \(K_A\) and later signed evaluations.
- Key positive/control term or structural source: Finite dimension plus the pointwise binary bound \(|F_R|\le1\).
- Opposing defect terms: An arbitrary prechosen basis can have unbounded coefficients, and pointwise boundedness alone would not compactify an infinite-dimensional family. The evaluation isomorphism controls the former; `assump:mean-response-rank` excludes the latter.
- Closure/dominance/absorption relation: \(E_Z(\{F_R\})\subseteq[-1,1]^{r_A}\), hence \(K_A\) is closed and bounded in \(\|\cdot\|_Z\); no defect is absorbed.
- Accumulation behavior / scope compatibility: The only limiting scope is topological closure. Its accumulated defect is zero because limits remain in the closed body, and every evaluation is continuous in the same finite-dimensional topology.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Primitive finite rank and binary range -> `step_001` -> evaluation isomorphism -> compact \(K_A\); `step_005` consumes compactness only afterward. Compactness does not assume the global target witness.
- Entry-state / first-update stress result: No iterative update is used. At \(r_A=0\), \(V_A=K_A=\{0\}\), which is compact, and all evaluations are the zero functional.
- Baseline conclusion preserved: At \(m=0\) and \(\varepsilon=0\), the same compactness proof applies unchanged.
- Producer-consumer provenance: Producer `step_002`; compactness is consumed by `step_004` and `step_005`, and evaluation continuity is consumed by `step_005`.
- Null or boundary regime tested: \(r_A=0\) and empty \(\mathcal X\); no selection of evaluation points is attempted in the zero-dimensional branch.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Infinite-dimensional pointwise bounded sets need not be compact in the needed topology; the primitive finite-rank source rules out that regime.
- Repair route if source is unsupported: None.

### `step_003`

- Step ID: `step_003`
- Claim class: Exact positive correlation, response-quantifier discharge, and nondegeneracy.
- Theorem role: Converts universal SQ accuracy into a \(\rho\)-margin witness in the fixed body for every distribution-target pair.
- Mechanism source: `assump:universal-adversarial-guarantee` applied to the exact-center deterministic complete rule. On every admitted public query-bearing history, define \(R^0_{\mathcal D,h}\) by the population expectation of the displayed public query. The reply lies in \([-1,1]\subseteq I_\tau\) for every \(\tau>0\), uses no hidden seed beyond the public query, and has zero tolerance error on every path reached by every seed. Thus it is one member of \(\mathfrak R_{A,\tau}(\mathcal D,h)\), not a replacement oracle model.
- Source-to-claim adequacy: With the setting's same predictor, target, loss, and seed law,
  \[
  \mathbb E_{\mathcal D}[hF_{R^0}]
  =\mathbb E_{U,x}[h(x)g_{U,R^0}(x)]
  =1-2\mathbb E_U\mathcal L_{\mathcal D,h}(g_{U,R^0})
  \ge1-2\varepsilon=\rho.
  \]
  Measurability/existence is supplied by `assump:adaptive-sq-interface`. No averaging over rules or oracle replies occurs.
- Residual-to-target adequacy: The produced object is exactly \(F_{R^0}\in\{F_R:R\in\mathfrak R_A^{\mathrm{all}}\}\subseteq K_A\), the same function consumed by minimax. The loss-correlation identity has zero residual; the only quantitative defect is the controlled \(2\varepsilon\).
- Key positive/control term or structural source: Unit correct-label payoff minus twice the expected error, giving \(\rho>1/2\).
- Opposing defect terms: Learner error contributes \(2\varepsilon\). Tolerance contributes no defect because the selected rule returns the exact center while remaining legal for every positive \(\tau\). Adaptive and seed-dependent queries contribute no defect because completeness is historywise and validity is checked for every reached seed.
- Closure/dominance/absorption relation: \(1-2\mathbb E_U\mathcal L\ge1-2\varepsilon=\rho\); `assump:parameter-regime` gives \(\rho>1/2\).
- Accumulation behavior / scope compatibility: At most \(m\) response-validity checks occur, each with exactly zero deviation; there is no additive tolerance accumulation and no all-time claim.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Primitive universal guarantee -> legal exact-center rule -> correlation. It does not assume a separator, compactness conclusion, or final representation.
- Entry-state / first-update stress result: If \(m=0\) or the learner stops immediately, \(R^0\) is the empty/no-used-response rule and the same terminal loss-correlation identity holds. If \(\mathcal X,\mathcal H\ne\varnothing\), choosing \(\mathcal D=\delta_x\) gives \(h(x)F_{R^0}(x)\ge\rho>0\), hence \(F_{R^0}\ne0\) and \(r_A\ge1\); thus the allowed \(r_A=0\) branch cannot coexist with all nonempty premises.
- Baseline conclusion preserved: At \(\varepsilon=0\), the identity yields correlation \(1\) exactly. No remainder replaces the noiseless conclusion.
- Producer-consumer provenance: Producer `step_003`; per-distribution witnesses and the correlation bound are consumed by `step_004`; the nonzero-rank boundary fact is consumed by `step_006`.
- Null or boundary regime tested: \(m=0\), immediate stopping, arbitrary \(\tau>0\), \(\varepsilon=0\), \(\varepsilon\uparrow1/4\), and \(r_A=0\). Empty \(\mathcal X\) has no distribution and empty \(\mathcal H\) has no target, so the correlation assertion is invoked only when both relevant objects exist.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without the universal guarantee the positive correlation can vanish. The guarantee is primitive; with it, the source remains at least \(\rho>1/2\) in every allowed nonempty regime.
- Repair route if source is unsupported: None.

### `step_004`

- Step ID: `step_004`
- Claim class: Finite simultaneous positive margin by minimax.
- Theorem role: Converts distributionwise witnesses into one function that handles every point of a fixed finite set.
- Mechanism source: Sion, *On General Minimax Theorems* (Pacific J. Math. 8(1), 1958), Theorem 3.4, DOI:10.2140/pjm.1958.8.171, instantiated with \(K_A\), \(\Delta(S)\), and \(L_h(f,p)=\sum_{x\in S}p(x)h(x)f(x)\). Hypothesis discharge is pointwise: `step_002` gives compact convex \(K_A\); nonempty finite \(S\) gives nonempty compact convex \(\Delta(S)\); for fixed \(p\), \(L_h(\cdot,p)\) is continuous affine and hence upper semicontinuous/quasiconcave; for fixed \(f\), \(L_h(f,\cdot)\) is continuous affine and hence lower semicontinuous/quasiconvex. The topology is exactly the finite-dimensional topology used by the source hypotheses. Applying Theorem 3.4 in max-min orientation (equivalently to \(-L_h\)) yields \(\max_f\min_pL_h=\min_p\max_fL_h\).
- Source-to-claim adequacy: Identify each \(p\in\Delta(S)\) with its finitely supported probability law on \(\mathcal X\), which is available by the basic setup. Then `step_003` applied to \(\mathcal D=p\) produces \(F_{R^0_{p,h}}\in K_A\) with \(L_h(F_{R^0_{p,h}},p)\ge\rho\). Hence \(\min_p\max_fL_h(f,p)\ge\rho\). Minimax gives \(\max_f\min_pL_h(f,p)\ge\rho\), and linearity on the simplex gives \(\min_pL_h(f,p)=\min_{x\in S}h(x)f(x)\). Compactness attains the maximum. Known non-outputs of Sion's theorem are explicit: it supplies only the order equality, not the fixed body, compactness, per-\(p\) correlation, attainment, or arbitrary-domain closure; those interfaces come from `step_002`, `step_003`, and `step_005`, so no wrapper obligation remains hidden.
- Residual-to-target adequacy: The produced \(f_{h,S}\) and consumed pointwise scores are in the same fixed \(K_A\) and use the theorem's point evaluations. Although \(f_{h,S}\) need not equal a raw learner response, the theorem consumes a function in \(V_A\), not a terminal predictor; every element of \(K_A\subseteq V_A\) has the exact basis-score identity from `step_001`. The transfer therefore leaves zero residual at the required scale \(\rho\).
- Key positive/control term or structural source: The uniform per-\(p\) lower bound \(\rho\) from `step_003` and exact minimax equality.
- Opposing defect terms: The exact-center rule and witness may vary with \(p\). This variation is confined inside \(\max_{f\in K_A}\); \(K_A,V_A\), and \(\varphi_A\) do not vary. There are no sampling, tolerance, closure, or probability defects.
- Closure/dominance/absorption relation: \(\forall p,\max_fL_h(f,p)\ge\rho\Rightarrow\min_p\max_fL_h(f,p)\ge\rho=\max_f\min_pL_h(f,p)\).
- Accumulation behavior / scope compatibility: Scope is one finite nonempty \(S\); there is no recursive accumulation. The finitely many point constraints are aggregated exactly by the simplex, with zero defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_002` supplies compactness and `step_003` supplies each distributionwise witness before minimax; `step_004` produces, rather than assumes, finite simultaneous feasibility.
- Entry-state / first-update stress result: For a singleton \(S=\{x\}\), the simplex is a point and the conclusion reduces exactly to the point-mass correlation. The empty set is not passed to minimax; its constraint is handled as the empty intersection in `step_005`.
- Baseline conclusion preserved: At \(\varepsilon=0\), \(\rho=1\) is unchanged by the minimax equality.
- Producer-consumer provenance: Producer `step_004`; every \(f_{h,S}\) certifies finite intersections consumed by `step_005`.
- Null or boundary regime tested: Singleton \(S\), arbitrary nonempty finite \(S\), \(\rho=1\), and the logically separate empty-\(S\) case.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without compactness/convexity or minimax equality, per-distribution witnesses need not be simultaneous. Both sources are discharged by earlier steps and the cited theorem.
- Repair route if source is unsupported: None.

### `step_005`

- Step ID: `step_005`
- Claim class: Arbitrary-domain scope upgrade and exact global membership.
- Theorem role: Produces one \(f_h\) with the same positive margin on every point of an arbitrary, possibly uncountable domain.
- Mechanism source: Direct finite-intersection characterization of compactness in the exact body from `step_002`. For fixed \(h\), point-evaluation continuity makes
  \(C_{h,x}=\{f\in K_A:h(x)f(x)\ge\rho\}\) closed in \(K_A\). For every nonempty finite \(S\), `step_004` puts \(f_{h,S}\) in \(\bigcap_{x\in S}C_{h,x}\); the empty subfamily has intersection \(K_A\ne\varnothing\).
- Source-to-claim adequacy: The finite-intersection implication is proved directly in the current topology: if \(\bigcap_{x\in\mathcal X}C_{h,x}=\varnothing\), then the relatively open complements \(K_A\setminus C_{h,x}\) cover compact \(K_A\); a finite subcover would make the corresponding finite intersection empty, contradicting `step_004` (or \(K_A\ne\varnothing\) for the empty subfamily). Every set lies in the same fixed compact real space, so one \(f_h\in\bigcap_{x\in\mathcal X}C_{h,x}\) exists. This direct proof supplies exactly the arbitrary-family conclusion and no unrelated extension or representation theorem.
- Residual-to-target adequacy: Finite and global constraints evaluate the same function object in the same pointwise theorem interface and at the same threshold \(\rho\). There is no limit of unrelated maps, basis change, extension field, or approximation residual.
- Key positive/control term or structural source: The closed uniform-margin constraint \(h(x)f(x)\ge\rho\) inside compact \(K_A\).
- Opposing defect terms: Arbitrary cardinality of \(\mathcal X\), possible failure of sequential arguments on uncountable index sets, and loss of strictness under limits. The full finite-intersection theorem handles arbitrary families, and the closed fixed threshold \(\rho>0\) prevents loss of sign.
- Closure/dominance/absorption relation: Every finite intersection is nonempty at the exact threshold \(\rho\); compactness gives the total intersection nonempty. The accumulated defect is identically zero, not merely summable or asymptotically small.
- Accumulation behavior / scope compatibility: This is an arbitrary-family limiting scope. Controlled quantity: all signed evaluations. Local interface: \(C_{h,S}=\bigcap_{x\in S}C_{h,x}\ne\varnothing\). Forcing/residual: zero with controlled sign. Mechanism-specific control relation: compactness plus the finite-intersection property. It is valid for the entire declared arbitrary-domain scope, not only sequences or finite horizons.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Noncircular path `step_002` (fixed compact body) + `step_004` (all finite intersections) -> `step_005` (global intersection) -> `step_006`. Neither input assumes a global separator or compatible family of finite feature maps.
- Entry-state / first-update stress result: The empty finite subfamily has intersection \(K_A\), which is nonempty by `step_001`; the first singleton constraint is feasible by `step_004`. If \(\mathcal X=\varnothing\), the full indexed intersection is just \(K_A\), and the sign requirement is vacuous.
- Baseline conclusion preserved: At \(\varepsilon=0\), the closed sets use threshold \(1\), so the global output preserves margin \(1\) exactly.
- Producer-consumer provenance: Producer `step_005`; \(f_h\) is consumed by `step_006` for basis coordinates and exact signs.
- Null or boundary regime tested: Empty and arbitrarily large \(\mathcal X\), uncountable index families, and \(\rho=1\). The prior threshold-cut counterexample is inapplicable because this proof uses one fixed compact function body with a common positive margin, not merely bounded finite-restriction dimension.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without fixed-body compactness or the uniform closed threshold, finite feasibility need not globalize. Both sources are derived under the current setting.
- Repair route if source is unsupported: None.

### `step_006`

- Step ID: `step_006`
- Claim class: Exact-sign transfer, quantitative specialization, and final theorem closure.
- Theorem role: Converts \(f_h\) into target weights for the pre-instance map and proves the explicit polynomial dimension statement.
- Mechanism source: Direct basis-coordinate identity from `step_001`, global signed margin from `step_005`, and primitive `assump:mean-response-rank`. If \(f_h=\sum_{j=1}^{r_A}(w_h)_j\psi_j\), then \(\langle w_h,\varphi_A(x)\rangle=f_h(x)\) for every \(x\).
- Source-to-claim adequacy: Exact coordinate equality transfers the same claim type, scope, and pointwise metric. `step_005` gives \(h(x)f_h(x)\ge\rho>1/2\), so there is no zero score and the definition of \(\operatorname{dc}\) gives \(\operatorname{dc}(\mathcal H)\le r_A\). The rank certificate then gives the displayed bound with no simplification loss.
- Residual-to-target adequacy: Produced object \(f_h\), consumed score \(\langle w_h,\varphi_A\rangle\), theorem metric pointwise equality; residual \(f_h(x)-\langle w_h,\varphi_A(x)\rangle=0\) for all \(x\), dominated exactly at the required positive scale \(\rho\).
- Key positive/control term or structural source: \(\rho>1/2\) and exact basis equality.
- Opposing defect terms: Potential sign ties, hidden constants, target-dependent maps, and domain-size terms. Zero residual plus \(\rho>0\) excludes ties; only \(w_h\) depends on \(h\); the two displayed rank inequalities contain every quantitative term.
- Closure/dominance/absorption relation: \(h(x)\langle w_h,\varphi_A(x)\rangle=h(x)f_h(x)\ge\rho\), followed by \(\operatorname{dc}(\mathcal H)\le r_A\le B(1+m/\tau^2)^k\). No term is dropped or absorbed.
- Accumulation behavior / scope compatibility: Static final assembly; all arbitrary-domain accumulation was closed in `step_005` with zero defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The map is produced in `step_001`, independently of targets; the target witness is produced in `step_005`; only then are coordinates taken. The primitive rank certificate bounds the ambient response family, not \(\operatorname{dc}(\mathcal H)\), so the final dimension conclusion is not assumed.
- Entry-state / first-update stress result: No update is needed. If \(\mathcal X=\varnothing\) or \(\mathcal H=\varnothing\), the exact-sign requirement is vacuous and \(\operatorname{dc}(\mathcal H)=0\). If both are nonempty, `step_003` ensures \(r_A\ge1\), so the zero-dimensional false-sign boundary cannot occur. At \(m=0\), the unique empty response rule flows through the same construction and the rate is \(r_A\le B\).
- Baseline conclusion preserved: For \(\varepsilon=0\), the final margin is exactly \(1\); for \(B=1,k=1\), the bound is exactly \(1+m/\tau^2\). No approximate or probabilistic surrogate replaces exact dimension.
- Producer-consumer provenance: Producers `step_001`, `step_003`, and `step_005`; consumer is final theorem assembly.
- Null or boundary regime tested: Empty \(\mathcal X\), empty \(\mathcal H\), \(r_A=0\), \(m=0\), arbitrary \(\tau>0\), \(\varepsilon=0\), \(B=1\), and \(k=1\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: If the margin source vanished, exact signs could fail; if the rank source vanished, finite dimension could fail. Both sources are explicit and already produced/primitive.
- Repair route if source is unsupported: None.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Fixed \(V_A\), basis, and pre-instance \(\varphi_A\) | `step_001` | Complete public-response interface, seed law, binary terminal outputs, and primitive finite rank | Distribution/target dependence of particular rules is controlled by taking all complete rules; seed-specific terminal span is deliberately uncontrolled and unused | Same-target coordinate identity \(f(x)=\langle w,\varphi_A(x)\rangle\) for every \(f\in V_A\); zero residual | Exact definitions and basis expansion; no approximation | Finite rank from `assump:mean-response-rank` | `step_002`, `step_005`, `step_006` | None |
| Compact convex \(K_A\) and continuous evaluations | `step_002` | \(r_A<\infty\), evaluations separate \(V_A\), and \(\lvert F_R(z_i)\rvert\le1\) | Arbitrary-basis coefficient growth is controlled by \(E_Z\); infinite-dimensional noncompactness is excluded by the rank certificate | \(E_Z\) is an isomorphism of the same functions; all point values transfer exactly | \(E_Z(\{F_R\})\subseteq[-1,1]^{r_A}\); closed + bounded in finite dimension implies compact | Closedness from the defining closure; boundedness from binary outputs | `step_004`, `step_005` | None |
| Exact-center witness \(F_{R^0_{\mathcal D,h}}\in K_A\) with \(\mathbb E_{\mathcal D}[hF]\ge\rho\) | `step_003` | Public query, population expectation, \(\tau>0\), and every-valid-rule guarantee | Error defect \(2\varepsilon\) is controlled; tolerance defect is exactly zero; no oracle-policy averaging or seed selection | Produced \(F_{R^0}\) is exactly the function consumed by minimax; error-correlation residual is zero | \(1-2\mathbb E_U\mathcal L\ge1-2\varepsilon=\rho\) | `assump:universal-adversarial-guarantee` and \(\rho>1/2\) | `step_004` | None |
| Finite simultaneous witness \(f_{h,S}\in K_A\) with \(\min_{x\in S}h(x)f_{h,S}(x)\ge\rho\) | `step_004` | Compact convex \(K_A\), finite simplex, and one exact-center witness for each \(p\) | Variation of \(R^0_{p,h}\) with \(p\) is controlled inside the fixed-body maximization; all approximation defects are zero | Same fixed function body, pointwise metric, and threshold; zero residual | Sion minimax equality plus \(\min_{p\in\Delta(S)}L(f,p)=\min_{x\in S}h(x)f(x)\) | Uniform \(\rho\) from `step_003` | `step_005` | None |
| Global \(f_h\in K_A\) with \(h(x)f_h(x)\ge\rho\) for all \(x\) | `step_005` | Fixed compact \(K_A\), continuous evaluations, and all finite simultaneous witnesses | Domain cardinality and nonsequential scope are handled by the arbitrary-family FIP; limiting margin loss is zero because constraints are closed at fixed \(\rho\) | Finite and global constraints concern the same functions and evaluations; zero residual | \(C_{h,S}\ne\varnothing\) for every finite \(S\), hence \(\bigcap_{x\in\mathcal X}C_{h,x}\ne\varnothing\) | Same \(\rho>1/2\); no new slack | `step_006` | None |
| Exact weights and public polynomial dimension bound | `step_006` | Fixed basis, global \(f_h\), \(\rho>1/2\), and primitive rank inequality | Tie defect is excluded by positive margin; hidden/domain/probability terms are absent | \(f_h-\langle w_h,\varphi_A\rangle\equiv0\), so every residual is dominated at scale \(\rho\) | Exact score equality and exact inequality chain \(\operatorname{dc}\le r_A\le B(1+m/\tau^2)^k\) | \(\rho=1-2\varepsilon>1/2\) and the primitive rank certificate | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| All-rule mean family, \(V_A\), fixed basis, and \(\varphi_A\) | `step_001`, direct from `assump:adaptive-sq-interface` and `assump:mean-response-rank` under the exact public-rule/seed-average convention | `step_002`, `step_003`, `step_006` | Supplies the common target-independent feature map and ambient rank | Primitive assumptions -> `step_001` -> listed consumers | derived | None |
| Compact \(K_A\) and continuous point evaluations | `step_002`, by evaluation-coordinate isomorphism and finite-dimensional Heine--Borel | `step_004`, `step_005` | Supplies minimax attainment and arbitrary-domain compact closure | `step_001` -> `step_002` -> `step_004`/`step_005` | derived | None |
| Exact-center legality and correlation \(\ge\rho\) | `step_003`, from the universal guarantee and exact loss-correlation identity | `step_004`; nonzero-rank boundary also used by `step_006` | Supplies the positive margin source for finite minimax and excludes \(r_A=0\) in the nonempty regime | Primitive assumptions + `step_001` -> `step_003` -> consumers | derived | None |
| Finite simultaneous witness \(f_{h,S}\) | `step_004`, Maurice Sion, *On General Minimax Theorems* (1958), Theorem 3.4, DOI:10.2140/pjm.1958.8.171; objects are fixed \(K_A\), \(\Delta(S)\), and continuous affine \(L_h\), hypotheses come from `step_002`/`step_003`, and the theorem supplies only order equality | `step_005` | Proves every finite intersection of signed-margin constraint sets is nonempty | `step_002`,`step_003` -> `step_004` -> `step_005` | derived | None |
| Global exact-margin witness \(f_h\) | `step_005`, compact finite-intersection theorem in the same \(K_A\) | `step_006` | Supplies one function for all points of the arbitrary domain | `step_002`,`step_004` -> `step_005` -> `step_006` | derived | None |
| Target weight \(w_h\), exact sign certificate, and bound \(\operatorname{dc}(\mathcal H)\le r_A\le B(1+m/\tau^2)^k\) | `step_006`, exact basis coordinates plus primitive rank certificate | Final assembly | Is the formalized theorem conclusion | `step_001`,`step_003`,`step_005` -> `step_006` -> final theorem | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | Construct \(\mathfrak R_A^{\mathrm{all}},F_R,V_A,r_A\), a fixed basis, and \(\varphi_A\); prove nonemptiness and exact pre-instance independence, including the empty-rule convention at \(m=0\). | None | Primitive `assump:parameter-regime`, `assump:adaptive-sq-interface`, `assump:mean-response-rank` | Keep complete-rule quantifiers public-transcript based and distinguish the mean-response span from individual terminal predictors; cover empty and zero-query branches. | Direct current-notation construction and finite-dimensional basis selection; exact convention and raw-assumption path fixed in the mechanism witness. | One fixed finite-dimensional response space and feature map, before \(\mathcal D,h,R,U\). | R1: retain exact exposed \(B,k,m,\tau\) dependence and the \(m=0\) specialization. | PENDING |
| `step_002` | For \(r_A>0\), select evaluation points making \(E_Z\) injective, prove \(K_A\) compact convex in \(V_A\), and prove every point evaluation continuous; prove the same statements directly for \(r_A=0\). | `step_001` | Primitive `assump:adaptive-sq-interface`, `assump:mean-response-rank`; derived fixed space from `step_001` | Obtain boundedness in a fixed finite-dimensional norm without assuming coefficient bounds; identify the precise closure topology. | Evaluation functionals span \(V_A^*\); finite-dimensional norm equivalence and Heine--Borel, restated in current notation. | Compact fixed body \(K_A\) with continuous evaluations and zero object-transfer residual. | None | PENDING |
| `step_003` | For every \((\mathcal D,h)\), prove the exact-center rule is deterministic, complete, public, and valid for every reached seed path; derive \(\mathbb E_{\mathcal D}[hF_{R^0}]\ge\rho\), and show nonempty \(\mathcal X,\mathcal H\) force \(r_A\ge1\). | `step_001` | Primitive `assump:parameter-regime`, `assump:adaptive-sq-interface`, `assump:universal-adversarial-guarantee`; derived all-rule inclusion from `step_001` | Preserve the every-valid-policy quantifier and seed-only expectation; handle \(m=0\), arbitrary \(\tau>0\), and point masses without introducing oracle randomness. | Direct legality check, Fubini/linearity under the setting's measurability premise, and \(hg=1-2\mathbf1\{g\ne h\}\). | Per-distribution fixed-body witness with exact correlation \(\rho\), plus the zero-rank boundary exclusion. | R2: exact \(\rho=1-2\varepsilon\), including \(\varepsilon=0\), with zero tolerance residual. | PENDING |
| `step_004` | For every \(h\) and nonempty finite \(S\), prove \(\max_{f\in K_A}\min_{x\in S}h(x)f(x)\ge\rho\) and select \(f_{h,S}\in K_A\) attaining it. | `step_002`, `step_003` | Primitive `assump:parameter-regime`, `assump:universal-adversarial-guarantee`; derived compactness and correlation from dependencies | Justify minimax order exactly while allowing the exact-center witness to vary with \(p\) but keeping \(K_A,V_A,\varphi_A\) fixed. | Sion (1958), Theorem 3.4, DOI:10.2140/pjm.1958.8.171, with explicit object mapping and hypothesis discharge; simplex extreme-point identity. | Exact simultaneous \(\rho\)-margin on every nonempty finite restriction. | R2: preserve \(\rho\) exactly through minimax; no probability or approximation conversion. | PENDING |
| `step_005` | For every \(h\), prove the closed sets \(C_{h,x}\) have the finite-intersection property in the one fixed compact \(K_A\), including the empty subfamily, and obtain \(f_h\) satisfying all points of arbitrary \(\mathcal X\). | `step_002`, `step_004` | Derived compactness/evaluation continuity from `step_002` and finite feasibility from `step_004`; no new theorem-facing assumption | Upgrade finite feasibility to arbitrary cardinality without unrelated finite maps, sequentiality, margin loss, or a hidden compatibility assumption. | Standard finite-intersection characterization of compactness, proved/applied in current notation to closed subsets of the same \(K_A\). | Global \(f_h\in K_A\) with \(h(x)f_h(x)\ge\rho\) for every \(x\). | R2: zero-residual arbitrary-domain scope bridge at the unchanged threshold \(\rho\). | PENDING |
| `step_006` | Expand each \(f_h\) in the fixed basis, prove exact scores and strict signs, handle empty \(\mathcal X/\mathcal H\) and \(r_A=0\), and derive \(\operatorname{dc}(\mathcal H)\le r_A\le B(1+m/\tau^2)^k\). | `step_001`, `step_003`, `step_005` | Primitive `assump:parameter-regime`, `assump:mean-response-rank`; derived map, boundary exclusion, and global witnesses from dependencies | Preserve map independence and exact signs while exposing every quantitative dependency and all degenerate branches. | Exact basis-coordinate algebra and the definition of dimension complexity; direct substitution of the primitive rank certificate. | Full conditional static mean-response-rank theorem. | R1 and R2: exact public inequalities, no hidden constants, and exact \(m=0,\varepsilon=0,B=1,k=1\) specializations. | PENDING |

## Dependency Notes

The graph is acyclic: `step_001` first produces the fixed objects; `step_002` and `step_003` independently derive compactness and correlation; `step_004` consumes both; `step_005` consumes compactness and finite feasibility; and `step_006` consumes only earlier map, boundary, and global-witness outputs. Every dependency points to a smaller step ID.

Assembly is exact. `step_003` places one distribution-dependent exact-center witness in the fixed body; `step_004` changes quantifier order inside that body; `step_005` changes finite point scope to arbitrary point scope using compactness of that same body; and `step_006` changes function coordinates to scores by equality. No stage changes the learner, chooses a favorable seed or arbitrary valid response, averages over policies, varies the feature map, or introduces a residual. The only target-dependent generated objects are \(f_h\) and its coordinates \(w_h\), and each is produced after the common map is fixed.

## Blockers

None.
