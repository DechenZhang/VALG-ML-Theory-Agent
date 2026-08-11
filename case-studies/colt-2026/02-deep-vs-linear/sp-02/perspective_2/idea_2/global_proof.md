# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_2`.
- Global proof attempt: 1, matching the open `global | global | 1` row in `proof_tracker.md`.
- Goal mode: exact-goal mode for the approved conditional theorem.
- Setting: `perspective_2/idea_2/setting.md`, SHA-256 `844f6ed4c5fa34972e32a74f65f60c61b19f6af59b26ebbfffb38aa410875df6`.
- Reviewed sketch: `perspective_2/idea_2/proof_sketch.md`, sketch attempt 1, SHA-256 `b981eece9a51e3968410632ac713321293f892825cf6a2b40c278ceed50b7a16`.
- Reviewed sketch review: `perspective_2/idea_2/proof_sketch_review.md`, SHA-256 `bff3dbb2c01739f228db4726d345fbc159c8c12af1bd64fab6f9c5540de2b6f3`.
- Sketch review status: `ACCEPTED`, with viability score 9, retry target `None`, and no repair bundle.
- Binding accepted Step IDs: `step_001`, `step_002`, `step_003`, `step_004`, `step_005`, and `step_006`.
- This diagnostic preserves their claims, dependencies, assumptions, output targets, quantitative objectives, boundary branches, generated-output flows, and source-progress labeling unchanged.

## Status

COMPLETE_DRAFT

## Attempted Theorem Claim

Fix numerical constants \(B\ge 1\) and \(k\ge 1\). Let the arbitrary, possibly empty or infinite domain \(\mathcal X\), the binary class \(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\), the parameters
\[
m\in\mathbb N_0,\qquad \tau>0,\qquad
\varepsilon\in[0,1/4),\qquad \rho=1-2\varepsilon>1/2,
\]
and the fixed randomized adaptive unrestricted-SQ learner \(A\) satisfy `assump:parameter-regime`, `assump:adaptive-sq-interface`, `assump:universal-adversarial-guarantee`, and `assump:mean-response-rank`. The accuracy premise is pointwise in every distribution \(\mathcal D\), target \(h\), and deterministic complete \(\tau\)-valid public-transcript response rule \(R\); its sole expectation is over the learner seed \(U\sim\mu_A\).

For every \(R\in\mathfrak R_A^{\mathrm{all}}\), define
\[
F_R(x)=\mathbb E_U[g_{U,R}(x)],\qquad
V_A=\operatorname{span}_{\mathbb R}\{F_R:R\in\mathfrak R_A^{\mathrm{all}}\},
\qquad r_A=\dim V_A.
\]
The primitive rank certificate states exactly
\[
r_A\le B(1+m/\tau^2)^k<\infty.
\]
The attempted conclusion is that one basis \(\psi_1,\ldots,\psi_{r_A}\) of this all-rule mean-response space can be fixed before every learning instance, and that
\[
\varphi_A(x)=(\psi_1(x),\ldots,\psi_{r_A}(x))
\]
satisfies, for every \(h\in\mathcal H\),
\[
\exists w_h\in\mathbb R^{r_A}\quad
\forall x\in\mathcal X:\qquad
h(x)\langle w_h,\varphi_A(x)\rangle\ge \rho>\frac12>0.
\]
Consequently the scores have deterministic exact sign with no ties and
\[
\operatorname{dc}(\mathcal H)
\le r_A
\le B(1+m/\tau^2)^k.
\]
The feature map depends only on the fixed learner, seed law, query budget and tolerance, complete-response interface, and basis choice. It does not depend on \(\mathcal D\), \(h\), a valid response policy, or realized learner coins; only \(w_h\) may depend on \(h\). The conclusion is deterministic, arbitrary-domain, fixed-finite-horizon, and exact pointwise. It has no probability qualifier, domain-size term, or hidden constant.

The source-progress type remains `conditional`: `assump:mean-response-rank` is an explicit added primitive certificate and the resulting dependence is polynomial rather than the source target's universal linear dependence. The theorem fully closes this approved conditional target, but it does not derive the rank certificate from \(m,\tau\) alone and does not claim to solve the original unconditional implication.

## Whole-Proof Draft

Fix all primitive theorem data and all-rule protocol objects before selecting a distribution, target, valid response rule, or seed. Blocks B1 and B2 build a single finite-dimensional function body from every complete response rule. After that fixed body is available, fix an arbitrary target \(h\) and use B3 separately for every distribution needed downstream. B4 changes the distribution/function quantifier order on each finite subset without changing the body. B5 upgrades finite simultaneous feasibility to an arbitrary domain inside that same compact body. B6 takes exact basis coordinates and inserts the primitive rank inequality. Empty and zero-dimensional branches remain inside the same argument and are never passed to a theorem requiring a nonempty simplex.

### Block B1: The all-rule mean-response space and fixed coordinates (`step_001`)

The family \(\mathfrak R_A^{\mathrm{all}}\) is nonempty. If \(m>0\), assigning reply zero to every admitted public query-bearing history defines a deterministic complete rule because \(0\in I_\tau=[-1-\tau,1+\tau]\); this rule need not be valid for a particular instance. If \(m=0\), the setting supplies the unique empty response rule.

For fixed \(R\), the terminal predictor \(g_{U,R}\) is binary, so boundedness and the setting's measurability convention give
\[
-1\le F_R(x)=\mathbb E_U[g_{U,R}(x)]\le 1
\quad\text{for every }x\in\mathcal X.
\]
The definitions of \(F_R,V_A,r_A\) use all complete public-transcript rules and average only the fixed learner seed. They neither select a valid rule for a later \((\mathcal D,h)\) nor take the span of individual \(g_{u,R}\). The primitive rank assumption makes \(V_A\) finite-dimensional before any instance is chosen.

Choose a basis \(\psi_1,\ldots,\psi_{r_A}\) once, using the empty basis if \(r_A=0\), and set \(\varphi_A=(\psi_1,\ldots,\psi_{r_A})\). For every \(f\in V_A\), a unique \(w(f)\in\mathbb R^{r_A}\) satisfies
\[
f=\sum_{j=1}^{r_A}w(f)_j\psi_j,\qquad
f(x)=\langle w(f),\varphi_A(x)\rangle
\quad\text{for every }x.
\]
This is an exact same-function identity. Define, in the unique finite-dimensional topology of \(V_A\),
\[
K_A=\overline{\operatorname{conv}}
\{F_R:R\in\mathfrak R_A^{\mathrm{all}}\}\subseteq V_A.
\]
The body is nonempty and convex, is fixed before every instance, and contains every raw \(F_R\), including each later exact-center response.

### Block B2: Evaluation-coordinate compactness in the fixed body (`step_002`)

Suppose \(r_A>0\). For each \(x\in\mathcal X\), let \(\delta_x(f)=f(x)\). These evaluations separate points of \(V_A\). Hence their span is \(V_A^*\): otherwise its annihilator in finite-dimensional \(V_A\) would contain a nonzero function vanishing at every \(x\), a contradiction.

Choose \(z_1,\ldots,z_{r_A}\in\mathcal X\) so that \(\delta_{z_1},\ldots,\delta_{z_{r_A}}\) form a basis of \(V_A^*\), and define
\[
E_Z(f)=(f(z_1),\ldots,f(z_{r_A})).
\]
This linear map has zero kernel and equal-dimensional domain and codomain, so it is an isomorphism. The norm
\[
\|f\|_Z=\|E_Z(f)\|_\infty
\]
induces the fixed finite-dimensional topology. Since \(E_Z(F_R)\in[-1,1]^{r_A}\), the convex hull and its closure are bounded. The body \(K_A\) is closed by definition, so finite-dimensional Heine--Borel makes it compact; closure preserves convexity.

Every evaluation is continuous in the same topology because
\[
\delta_x=(\delta_x\circ E_Z^{-1})\circ E_Z
\]
and \(\delta_x\circ E_Z^{-1}\) is linear on \(\mathbb R^{r_A}\). If \(r_A=0\), then \(V_A=K_A=\{0\}\), the empty evaluation map gives the unique zero-dimensional topology, and every point evaluation is the zero continuous functional. If \(\mathcal X=\varnothing\), this branch is forced because \(\mathbb R^{\mathcal X}=\{0\}\); no nonexistent evaluation point is selected.

### Block B3: A legal exact-center rule and seed-only positive correlation (`step_003`)

Take \(h\in\mathcal H\) and \(\mathcal D\in\mathcal P(\mathcal X)\). On every admitted public query-bearing history ending in \(q_t\), define
\[
R^0_{\mathcal D,h}(q_1,v_1,\ldots,q_t)
=\mathbb E_{x\sim\mathcal D}q_t(x,h(x)).
\]
The assignment is deterministic and complete, uses only the public query/transcript, and does not inspect the hidden seed. Since \(q_t\in[-1,1]\), every reply lies in \([-1,1]\subseteq I_\tau\) for every \(\tau>0\). Its validity deviation is zero at every history reached by every seed. Thus
\[
R^0_{\mathcal D,h}\in
\mathfrak R_{A,\tau}(\mathcal D,h)
\subseteq\mathfrak R_A^{\mathrm{all}}.
\]
This is one rule covered by the every-valid-policy premise, not a replacement oracle model or an average over replies.

Apply the universal guarantee. Boundedness and the primitive measurability convention justify exchanging seed and data expectations. Since \(h,g\in\{-1,+1\}\),
\[
h(x)g_{U,R^0}(x)=1-2\mathbf 1\{g_{U,R^0}(x)\ne h(x)\}.
\]
Therefore
\[
\begin{aligned}
\mathbb E_{\mathcal D}[hF_{R^0_{\mathcal D,h}}]
&=\mathbb E_U\mathbb E_{\mathcal D}[hg_{U,R^0_{\mathcal D,h}}]\\
&=1-2\mathbb E_U\mathcal L_{\mathcal D,h}(g_{U,R^0_{\mathcal D,h}})\\
&\ge1-2\varepsilon=\rho.
\end{aligned}
\]
The witness is a raw member of the all-rule family, hence belongs to the already fixed \(K_A\). The sole quantitative defect is \(2\varepsilon\); tolerance, policy-averaging, and seed-selection residuals are zero.

If \(\mathcal X,\mathcal H\ne\varnothing\), choose \(x\in\mathcal X\), \(h\in\mathcal H\), and \(\mathcal D=\delta_x\). Then
\[
h(x)F_{R^0_{\delta_x,h}}(x)\ge\rho>0,
\]
so \(V_A\ne\{0\}\) and \(r_A\ge1\). Thus \(r_A=0\) can coexist with the premises only when a pointwise target branch is vacuous. At \(m=0\), the exact-center rule is the unique empty rule and the terminal identity requires no query-round argument. At \(\varepsilon=0\), the correlation is exactly one.

### Block B4: Finite simultaneous margin through Sion minimax (`step_004`)

Fix \(h\in\mathcal H\) and nonempty finite \(S\subseteq\mathcal X\). For \(p\in\Delta(S)\) and \(f\in K_A\), set
\[
L_h(f,p)=\sum_{x\in S}p(x)h(x)f(x).
\]
The sets \(K_A\) and \(\Delta(S)\) are nonempty compact convex subsets of finite-dimensional real spaces. The payoff is continuous affine in each variable, hence upper semicontinuous/quasiconcave in the maximizing variable and lower semicontinuous/quasiconvex in the minimizing variable. Maurice Sion, *On General Minimax Theorems* (1958), Theorem 3.4, DOI `10.2140/pjm.1958.8.171`, therefore gives in max-min orientation (or after applying the displayed source convention to \(-L_h\))
\[
\max_{f\in K_A}\min_{p\in\Delta(S)}L_h(f,p)
=\min_{p\in\Delta(S)}\max_{f\in K_A}L_h(f,p).
\]
Compactness and continuity justify extrema notation; Sion supplies the order equality, not compactness or the lower bound.

For each \(p\), regard it as its finitely supported law on \(\mathcal X\). B3 gives \(F_{R^0_{p,h}}\in K_A\) with \(L_h(F_{R^0_{p,h}},p)\ge\rho\). The witness may vary with \(p\), but \(K_A,V_A,\varphi_A\) do not. Hence
\[
\min_{p\in\Delta(S)}\max_{f\in K_A}L_h(f,p)\ge\rho.
\]
For fixed \(f\), linearity on the simplex gives
\[
\min_{p\in\Delta(S)}L_h(f,p)=\min_{x\in S}h(x)f(x).
\]
Thus
\[
\max_{f\in K_A}\min_{x\in S}h(x)f(x)\ge\rho.
\]
The finite minimum of continuous evaluations is continuous in \(f\), so compactness supplies \(f_{h,S}\in K_A\) attaining this bound. Singleton \(S\) reduces to the point-mass case. Empty \(S\) is not sent through minimax and enters only as the empty intersection in B5. At \(\varepsilon=0\), the threshold remains one.

### Block B5: Compact finite-intersection exactification (`step_005`)

For fixed \(h\), define
\[
C_{h,x}=\{f\in K_A:h(x)f(x)\ge\rho\}.
\]
Each set is closed because point evaluation is continuous. B4 makes every nonempty finite intersection nonempty, while the empty subfamily intersects to \(K_A\ne\varnothing\). Hence the family has the finite-intersection property.

If the full intersection were empty, the relatively open complements \(K_A\setminus C_{h,x}\) would cover compact \(K_A\). A finite subcover would contradict the corresponding finite intersection. Therefore
\[
f_h\in\bigcap_{x\in\mathcal X}C_{h,x}\subseteq K_A\subseteq V_A
\]
exists and satisfies
\[
h(x)f_h(x)\ge\rho\quad\text{for every }x\in\mathcal X.
\]
This handles arbitrary, including uncountable, domain cardinality. All constraints concern the identical function, topology, evaluations, and closed threshold, so the arbitrary-family residual is zero. For \(\mathcal X=\varnothing\), the indexed family is empty, its intersection is \(K_A\), and the pointwise conclusion is vacuous.

### Block B6: Exact basis transfer and polynomial closure (`step_006`)

Expand \(f_h=\sum_j(w_h)_j\psi_j\). B1 gives
\[
\langle w_h,\varphi_A(x)\rangle=f_h(x),
\]
so
\[
h(x)\langle w_h,\varphi_A(x)\rangle
=h(x)f_h(x)\ge\rho>1/2>0.
\]
The map is common to every target, and only \(w_h\) changes. The definition of dimension complexity makes \(d=r_A\) admissible, and the primitive rank certificate gives
\[
\operatorname{dc}(\mathcal H)\le r_A\le B(1+m/\tau^2)^k.
\]
No term is simplified or hidden.

If \(\mathcal H=\varnothing\) or \(\mathcal X=\varnothing\), \(d=0\) satisfies the vacuous sign requirement. If both are nonempty, B3 already gives \(r_A\ge1\). At \(m=0\), the bound is \(r_A\le B\); at \(\varepsilon=0\), the margin is one; at \(B=1,k=1\), the bound is exactly \(1+m/\tau^2\); every \(\tau>0\) remains covered.

### Assembly

B1-B2 produce one pre-instance finite-dimensional compact body and exact coordinate map. B3 places, for every distribution-target pair, an exact-center seed-averaged response in that body with correlation at least \(\rho\). B4 exchanges the finite distribution/function quantifiers inside the fixed body. B5 preserves the closed threshold over an arbitrary domain. B6 transfers the same-function witness through an exact basis identity and appends the primitive rank inequality. Every generated object is produced before use, every dependency follows the accepted graph, and no transfer changes the object, policy, randomness, metric, scope, or threshold. This proves the attempted conditional theorem at diagnostic level.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| B1: all-rule space and fixed coordinates | Produces the pre-instance mean-response family, finite space, basis, map, and raw body | `step_001` | None | `assump:parameter-regime`, `assump:adaptive-sq-interface`, `assump:mean-response-rank` | None |
| B2: evaluation compactness | Proves one compact convex \(K_A\) and continuity of every point evaluation | `step_002` | B1 | `assump:adaptive-sq-interface`, `assump:mean-response-rank` | None |
| B3: exact-center correlation | Produces a fixed-body witness with lower correlation \(\rho\) for every distribution-target pair and excludes zero rank on nonempty branches | `step_003` | B1 | `assump:parameter-regime`, `assump:adaptive-sq-interface`, `assump:universal-adversarial-guarantee` | None |
| B4: finite minimax | Converts distributionwise witnesses to one exact-margin function on each nonempty finite \(S\) | `step_004` | B2, B3 | Earlier primitive assumptions through accepted dependencies | None |
| B5: arbitrary-domain exactification | Uses closed constraints and compact FIP to produce one \(f_h\) valid on all of \(\mathcal X\) | `step_005` | B2, B4 | No new theorem-facing assumption | None |
| B6: coordinates and rate | Gives target weights, strict exact signs, dimension complexity, polynomial rate, and boundary specializations | `step_006` | B1, B3, B5 | `assump:parameter-regime`, `assump:mean-response-rank` | None |
| Final assembly | Concatenates B1-B6 under the exact formalized quantifiers and conditional source-progress label | direct assembly | B1-B6 | Exactly the four primitive setting assumptions | None |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | B1 | Root producer for B2, B3, and B6 | Formalize complete-rule nonemptiness, all-rule/seed-average conventions, finite basis selection, and exact coordinate identity | Covers \(m=0\), \(r_A=0\), empty domain/class, and pre-instance independence |
| `step_002` | B2 | Consumes `step_001`; produces compactness for `step_004`/`step_005` and evaluation continuity for `step_005` | Prove evaluations span \(V_A^*\), select \(E_Z\), derive boundedness, invoke finite-dimensional Heine--Borel, and handle \(r_A=0\) | Coordinate isomorphism is of the same functions, not a surrogate representation |
| `step_003` | B3 | Consumes `step_001`; produces correlation for `step_004` and rank-boundary control for `step_006` | Check exact-center completeness/publicness/validity, justify expectation interchange, prove signed loss identity, and apply point-mass boundary stress | Preserves every-valid-policy semantics and seed-only expectation |
| `step_004` | B4 | Consumes `step_002` and `step_003`; produces finite witnesses for `step_005` | Discharge Sion Theorem 3.4 hypotheses and orientation, prove the simplex minimum identity, and prove attainment | Exact-center witness may vary with \(p\), while \(K_A,V_A,\varphi_A\) remain fixed |
| `step_005` | B5 | Consumes `step_002` and `step_004`; produces global \(f_h\) for `step_006` | Prove constraint sets closed, verify empty/nonempty finite intersections, and give the compact open-cover contradiction | Uses an arbitrary family in one compact real body, with no sequentiality or margin loss |
| `step_006` | B6 and final assembly | Consumes `step_001`, `step_003`, and `step_005` | Take exact basis coordinates, apply the definition of \(\operatorname{dc}\), append the rank bound, and separate vacuous/zero-rank branches | Preserves exact \(m=0,\varepsilon=0,B=1,k=1\) specializations and all \(\tau>0\) |

All listed obligations are lemma-sized derivations under unchanged accepted interfaces. They are not unresolved global links and do not alter the `COMPLETE_DRAFT` status.

## Dependency And Assumption Audit

- **Primitive conditions:** The public theorem uses only `assump:parameter-regime`, `assump:adaptive-sq-interface`, `assump:universal-adversarial-guarantee`, and `assump:mean-response-rank`. The last is openly theorem-facing because this is an approved conditional result.
- **Accepted derived conclusions:** B1 derives the common family, finite space, basis, map, and body definition. B2 derives compactness and evaluation continuity. B3 derives exact-center membership, correlation, and nonzero rank in nonempty branches. B4 derives finite simultaneous feasibility. B5 derives global membership. B6 derives coordinates and the final dimension chain.
- **Local conditional hypotheses:** None. The finite-set argument fixes \(h,S,p\) only inside its proof and discharges all their properties from theorem scope. No generated invariant is promoted to a public assumption.
- **Missing derived-condition bridges:** None. Compactness, exact-center validity, finite simultaneous feasibility, and global membership are outputs, not assumptions.
- **Quantifier order:** The learner and all-rule body are fixed before \(\mathcal D,h,R,U\). The premise remains universal over every valid deterministic complete response rule. The proof invokes it for one exact-center rule for each \((\mathcal D,h)\), and for one such rule for each finite-support \(p\) inside B4. This variation occurs only inside fixed \(K_A\). The feature map remains common; only \(f_h,w_h\) depend on \(h\).
- **Randomness:** The only averaging is over \(U\sim\mu_A\) in \(F_R\) and the primitive expected loss. No response-policy randomization, favorable seed, confidence event, or distribution over valid replies is introduced.
- **Measurability:** The bounded expectation interchange in B3 is covered by the primitive protocol measurability/existence convention. No new function-space probability law or pushforward is used.
- **Boundary dependencies:** The proof invokes \(\mathcal D\) and nonempty simplices only when \(\mathcal X\ne\varnothing\). The point-mass rank exclusion is consumed by B6 only in the nonempty-domain/nonempty-class branch.

No dependency cycle, hidden assumption, or missing provenance bridge remains.

## Citation And Tool Audit

| Source or tool | Current-branch objects and convention | Assumptions discharged | Conclusion needed and interface match | Known non-outputs / affected block |
| -------------- | ------------------------------------- | ---------------------- | ------------------------------------- | ---------------------------------- |
| Finite-dimensional dual separation and evaluation coordinates, restated directly | \(V_A\subseteq\mathbb R^{\mathcal X}\), exact point evaluations \(\delta_x\), no function transform | Finite dimension from `assump:mean-response-rank`; evaluations separate functions by definition | \(\operatorname{span}\{\delta_x\}=V_A^*\), hence evaluation isomorphism \(E_Z\), with exact same-function coordinates | Does not supply positivity or compactness by itself; B2 / `step_002` |
| Finite-dimensional Heine--Borel and continuity of linear functionals, restated in current notation | Norm \(\lVert f\rVert_Z=\lVert E_Zf\rVert_\infty\) on \(V_A\) | Raw bound \(E_Z(F_R)\in[-1,1]^{r_A}\), defining closedness, finite dimension | Closed plus bounded gives compact \(K_A\); every \(\delta_x\circ E_Z^{-1}\) is continuous | Does not supply a lower margin or finite feasibility; B2 / `step_002` |
| Bounded Fubini/linearity and binary signed-loss identity, direct | Same \(U,\mathcal D,h,g_{U,R^0}\) and loss convention as the setting | Primitive measurability/existence, bounded binary integrand, exact-center validity | \(\mathbb E_{\mathcal D}[hF_{R^0}]=1-2\mathbb E_U\mathcal L\ge\rho\) in the exact consumed function interface | No policy averaging or pathwise claim; B3 / `step_003` |
| Maurice Sion, *On General Minimax Theorems*, Pacific J. Math. 8(1) (1958), Theorem 3.4, DOI `10.2140/pjm.1958.8.171` | Maximizing \(f\in K_A\subset V_A\), minimizing \(p\in\Delta(S)\subset\mathbb R^S\), payoff \(L_h(f,p)\); real convex topological spaces in source and branch | \(K_A\) nonempty compact convex; \(\Delta(S)\) nonempty compact convex; payoff continuous affine with required semicontinuity and quasi-concavity/quasi-convexity | Exact \(\max_f\min_pL_h=\min_p\max_fL_h\); use \(-L_h\) if needed to match displayed source sign convention | Does not supply fixed body, per-\(p\) lower witness, attainment, simplex identity, or FIP; B4 / `step_004` |
| Finite-simplex extreme-point identity, direct | Values \(a_x=h(x)f(x)\) on nonempty finite \(S\) | \(p\in\Delta(S)\) | \(\min_p\sum_xp(x)a_x=\min_xa_x\), exactly in pointwise margin interface | Does not globalize to arbitrary \(\mathcal X\); B4 / `step_004` |
| Compact finite-intersection theorem, proved by open-complement finite subcover | Closed \(C_{h,x}\subseteq K_A\) in the same topology | Compact \(K_A\) and all finite intersections nonempty | One \(f_h\in\bigcap_xC_{h,x}\) for an arbitrary family, at unchanged \(\rho\) | Does not create finite feasibility or positivity; B5 / `step_005` |
| Basis-coordinate algebra and dimension-complexity definition, direct | Same \(f_h\in V_A\), fixed basis, pointwise score, exact-sign definition | B1 basis, B5 margin, B3 boundary exclusion, primitive rank inequality | Zero-residual score identity and \(\operatorname{dc}(\mathcal H)\le r_A\le B(1+m/\tau^2)^k\) | Does not derive the primitive rank certificate; B6 / `step_006` |

The parent SQ and dimension-complexity papers provide conventions recorded in `setting.md`; no theorem from them is an unverified proof mechanism here. The sole theorem-critical external theorem is Sion's, whose source identity, exact label, locator, object mapping, hypotheses, orientation, conclusion interface, and non-outputs are exposed above.

## Quantitative Dependence Audit

- **Exposed variables:** \(r_A,B,k,m,\tau,\varepsilon,\rho=1-2\varepsilon\), \(\operatorname{dc}(\mathcal H)\), and the pointwise score. There is no domain-cardinality dependence.
- **Hidden constants:** None. The exact chain is \(\operatorname{dc}(\mathcal H)\le r_A\le B(1+m/\tau^2)^k\).
- **Fixed quantities and allowed dependence:** \(B,k\) are fixed numerical protocol-family constants independent of all domain, class, learner-instance, distribution, target, policy, and seed choices. For a theorem instance, \(A,\mu_A,m,\tau\), and the complete-response interface are fixed before instances. The basis may depend only on these fixed objects.
- **Probability mode:** Deterministic conclusion. Seed expectation is internal to \(F_R\) and the primitive guarantee. No high-probability, almost-sure, policy-average, or confidence conversion occurs.
- **Horizon mode:** Fixed finite upper horizon \(m\). No horizon-uniform, all-time, stopping-time, or asymptotic upgrade is claimed.
- **Norm or metric mode:** Exact integer dimension and pointwise signed score \(h(x)\langle w_h,\varphi_A(x)\rangle\ge\rho\). Every transfer is equality in this interface.
- **Auxiliary tolerances:** None. The SQ tolerance \(\tau\) appears in the protocol/rank certificate; the exact-center rule has zero tolerance residual.
- **Public specialization bridge:** B6 uses exact substitution only. No term is dropped, dominated, or absorbed.
- **Baseline invariance:** At \(m=0\), the exact theorem specializes to \(r_A\le B\). At \(\varepsilon=0\), every bridge preserves margin one. At \(B=1,k=1\), the bound is exactly \(1+m/\tau^2\). Every \(\tau>0\) is covered. Empty domain/class branches retain the vacuous exact-sign conclusion.
- **Source-progress dependence:** The polynomial \(B,k\) dependence and static rank premise remain explicit conditional changes. They are not suppressed or presented as a universal linear theorem.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------------------------------ | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ---------------------------------- | -------------------------- | ---------------------------------------- | ------------------------------------- | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Fixed all-rule family, finite \(V_A\), basis, and \(\varphi_A\) | Generated common object and pre-instance representation interface | All complete rules and all later instances; static fixed-horizon scope | \(R\mapsto g_{U,R}\mapsto F_R\mapsto V_A\mapsto(\psi_j,\varphi_A)\), with \(f(x)=\langle w(f),\varphi_A(x)\rangle\) | Exhaustion over every complete public rule and primitive finite rank | Instance dependence of particular valid rules; seed-specific terminal span; real adaptive histories | Static exact construction; no iterative forcing or accumulated residual | algebraic coupling and structural lower/upper comparison | `assump:adaptive-sq-interface` and `assump:mean-response-rank`; zero/empty rule gives nonemptiness; infinite rank is outside this conditional target | All-rule exhaustion contains every later exact-center rule; finite rank supplies the claimed coordinate interface, not positivity | Produced functions and consumed scores are identical under basis expansion; pointwise residual zero | `step-local` | Primitive interface/rank -> B1 -> B2/B3/B6; no separator or representation is assumed | At \(m=0\), the empty rule immediately produces \(F_R\); no first query is needed | Exact definitions and basis equality; no approximation or absorption | Fixed learner, seed law, finite horizon, complete-response convention, finite-rank certificate | \(F_R,V_A,r_A,\psi_j,\varphi_A,K_A\) definition | Empty \(\mathcal X\) gives \(V_A=\{0\}\); empty \(\mathcal H\) makes target use vacuous; \(m=0\) is active | Without all-rule exhaustion or finite rank, a common finite map need not exist |
| Compact convex \(K_A\) and continuous evaluations | Structural boundedness/compactness and topology interface for minimax/FIP | Entire fixed body and every point evaluation; one topological closure | \(E_Z(F_R)\in[-1,1]^{r_A}\); \(K_A\) closed/bounded in \(\lVert\cdot\rVert_Z\); \(\delta_x=(\delta_x\circ E_Z^{-1})E_Z\) | Finite dimension and binary-output bound | Arbitrary-basis coefficient growth; infinite-dimensional noncompactness | Topological closure only; boundedness is uniform and limits stay in the closed body, so accumulated defect is zero | structural lower/upper comparison | B1 plus binary range from `assump:adaptive-sq-interface`; \(r_A=0\) direct; infinite rank excluded by primitive certificate | Upper bounds are used exactly for compactness/continuity, never as a lower-margin source | \(E_Z\) is an isomorphism of the same functions; point values transfer exactly | `step-local` | B1 -> evaluation isomorphism -> B2 -> B4/B5; no global witness is assumed | No update; at \(r_A=0\), \(K_A=\{0\}\) is immediately compact | Evaluation separation gives isomorphism; cube bound plus finite-dimensional closedness gives compactness | Finite rank, binary terminal range | Fixed \(K_A\), norm, continuous evaluations | Empty domain forces \(r_A=0\); no evaluation point is selected there | Without finite dimension, pointwise boundedness need not yield the needed compact topology |
| Exact-center legality, correlation \(\ge\rho\), and nonzero-rank boundary | Positive lower/sign source and response-quantifier discharge | Every \(\mathcal D,h\), every reached seed path, at most \(m\) rounds | Exact reply deviation zero; \(\mathbb E_{\mathcal D}[hF_{R^0}]=1-2\mathbb E_U\mathcal L\ge\rho\) | Universal loss guarantee and binary signed identity | Error \(2\varepsilon\); tolerance, policy, and seed-selection defects zero | Each of at most \(m\) validity checks has zero defect; no cross-round sum or all-time claim | algebraic coupling and structural lower/upper comparison | Parameter/interface/universal-guarantee assumptions; empty domain/class excluded only when \(\mathcal D,h\) are invoked | Signed loss identity supplies exactly positive lower correlation; \(\rho>1/2\) prevents source vanishing | \(F_{R^0}\) is the exact raw function consumed in \(K_A\); tolerance/correlation residual zero | `step-local` | Primitive guarantee -> legal exact-center rule -> B3 -> B4/B6; no separator assumed | At \(m=0\) or immediate stop, empty/no-used replies give terminal identity; point mass activates source before rank use | \(1-2\mathbb E_U\mathcal L\ge1-2\varepsilon=\rho\); each reply has deviation zero | Parameter regime, public query, universal guarantee | Exact-center rule, fixed-body witness, correlation, rank exclusion | All \(\tau>0\), \(\varepsilon=0\), \(m=0\); point masses force \(r_A\ge1\) in nonempty branch | Without universal accuracy, positive correlation and exact signs can fail |
| Finite simultaneous witness \(f_{h,S}\) | Minimax scope conversion and finite structural margin | Every target and nonempty finite \(S\subseteq\mathcal X\) | \(\forall p,\max_fL_h(f,p)\ge\rho\); Sion gives \(\max_f\min_pL_h=\min_p\max_fL_h\); simplex minimum equals point minimum | Uniform B3 lower bound and exact minimax equality | Exact-center witness varies with \(p\); no body, approximation, sampling, tolerance, or probability defect | Finite aggregation only; constraints couple exactly through \(\Delta(S)\), with zero accumulated residual | algebraic coupling and structural lower/upper comparison | B2 body, B3 correlation, Sion (1958) Theorem 3.4 with discharged hypotheses; empty \(S\) excluded here | Sion supplies quantifier equality while B3 supplies positivity; source roles match claim classes | Witness lies in same \(K_A\subset V_A\), same evaluations and threshold; zero basis-transfer residual | `step-local` | B2+B3 -> B4 -> B5; finite feasibility is produced, not assumed | Singleton \(S\) reduces to point-mass correlation; no empty-simplex use | \(\forall p,\max_fL\ge\rho\Rightarrow\min_p\max_fL\ge\rho=\max_f\min_pL\) | Compactness, finite simplex, universal correlation | \(f_{h,S}\) and finite intersection feasibility | Singleton, arbitrary finite nonempty \(S\), and \(\rho=1\) handled exactly | Without compactness/convexity or minimax equality, distributionwise witnesses need not be simultaneous |
| Global \(f_h\) at all points | Arbitrary-family scope upgrade and exact global membership | Arbitrary, including uncountable, \(\mathcal X\) | \(C_{h,S}=\bigcap_{x\in S}C_{h,x}\ne\varnothing\) for every finite \(S\); compact FIP gives full intersection | Fixed compact \(K_A\), closed evaluations, exact finite feasibility at \(\rho\) | Arbitrary index cardinality and sequential insufficiency; forcing/residual identically zero | Exact arbitrary-family accumulation: every finite intersection nonempty; compactness controls whole family by finite-subcover contradiction | structural lower/upper comparison | B2 compactness/continuity and B4 finite witnesses; empty subfamily starts at \(K_A\ne\varnothing\) | Compact FIP has exactly arbitrary-family membership content; positivity comes upstream from B3/B4 | Finite/global constraints use identical function, pointwise interface, threshold; residual zero | `step-local` | B2+B4 -> B5 -> B6; neither input assumes global feasibility | Empty subfamily is \(K_A\); first singleton feasible by B4; empty domain has full intersection \(K_A\) | Empty total intersection would yield a finite subcover contradicting finite feasibility | Fixed compact body, continuous evaluations | Closed \(C_{h,x}\), finite witnesses, global \(f_h\) | Empty, infinite, uncountable domains; \(\rho=1\) unchanged | Without fixed-body compactness or finite feasibility, finite restrictions need not globalize |
| Exact weights, strict signs, and polynomial dimension | Exact target transfer, quantitative specialization, baseline preservation, final closure | Every target and point; deterministic fixed-horizon conclusion | \(f_h=\sum_j(w_h)_j\psi_j\Rightarrow\langle w_h,\varphi_A(x)\rangle=f_h(x)\); append dimension chain | B5 margin \(\rho>1/2\), exact basis equality, primitive rank bound | Possible ties, target-dependent map, hidden constants, domain terms; all absent | Static assembly; arbitrary-domain accumulation closed upstream with zero residual; no dropped term or mode conversion | algebraic coupling and structural lower/upper comparison | B1 basis, B3 boundary exclusion, B5 witness, parameter and rank assumptions | Exact positive same-score equality supplies strict signs; rank source supplies exactly displayed rate | \(f_h\) and score agree pointwise; residual zero at required \(\rho\) scale | `step-local` | B1+B3+B5 -> B6 -> final theorem; rank bounds response space and does not assume \(\operatorname{dc}\) | No update; vacuous branches use \(d=0\), nonempty branches have \(r_A\ge1\) first | \(h\langle w_h,\varphi_A\rangle=hf_h\ge\rho>0\), then exact inequality chain | Parameter regime, rank certificate | Fixed map, global \(f_h\), target coordinates | Empty domain/class, \(r_A=0\), \(m=0\), \(\varepsilon=0\), \(B=1,k=1\), all \(\tau>0\) | Without positive margin, basis identity, or finite rank, exact sign or polynomial dimension could fail |

Every row is `step-local`; there is no `sketch/interface defect` or `idea/theorem-contract defect`. No recursive, all-time, stochastic, or persistent-error obligation is hidden. Repeated response validity has identically zero per-round defect. Arbitrary-family scope has the concrete finite-intersection relation and finite-subcover contradiction at unchanged threshold.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| Fixed \(V_A\), basis, \(\varphi_A\), raw body | B1 / `step_001` / all-rule construction | Complete public-response interface, seed law, binary outputs, finite rank | Particular-rule instance dependence controlled by all-rule exhaustion; individual-predictor span unused | Same-function basis identity; zero residual | Exact definitions and finite basis expansion | Primitive finite rank | B2, B3, B6, final map | valid |
| Compact convex \(K_A\), continuous evaluations | B2 / `step_002` / evaluation isomorphism and Heine--Borel | Finite rank, separating evaluations, \(\lvert F_R(z_i)\rvert\le1\), closure | Arbitrary-basis coefficient growth controlled by \(E_Z\); infinite-dimensional defect excluded | Same functions under \(E_Z\); point values exact | Cube bound plus closed/bounded finite-dimensional compactness | Closedness and binary coordinate bound; no positivity claim | B4, B5 | valid |
| Exact-center correlation witness | B3 / `step_003` / universal guarantee and binary identity | Public query, population center, every \(\tau>0\), every-valid-rule guarantee | Error \(2\varepsilon\) controlled; tolerance zero; no policy/seed-selection residual | \(F_{R^0}\) is exactly the function consumed by \(K_A,L_h\) | \(1-2\mathbb E_U\mathcal L\ge1-2\varepsilon=\rho\) | Universal guarantee and \(\rho>1/2\) | B4; B6 boundary | valid |
| Finite simultaneous \(f_{h,S}\) | B4 / `step_004` / Sion plus simplex identity | Compact convex body, finite simplex, per-\(p\) exact-center witness | Witness variation controlled inside fixed-body max; no approximation/probability defect | Same body, function, evaluations, threshold; zero coordinate residual | Exact minimax and \(\min_pL=\min_xhf(x)\) | Uniform B3 threshold \(\rho\) | B5 | valid |
| Global \(f_h\) | B5 / `step_005` / compact FIP | Fixed compact body, continuous evaluations, finite intersections | Arbitrary cardinality controlled by compactness; no margin loss | Finite/global constraints use identical objects and metric | Empty subfamily gives \(K_A\); finite feasibility plus compactness gives full intersection | Same \(\rho\); no slack | B6 | valid |
| Exact weights and polynomial dimension theorem | B6 / `step_006` / basis identity and primitive rank | Fixed basis/map, global \(f_h\), \(\rho>1/2\), rank certificate | Ties, hidden constants, probability/domain terms, target-dependent map absent | \(f_h-\langle w_h,\varphi_A\rangle\equiv0\) | Exact score equality and exact dimension chain | Positive \(\rho\) and primitive rank | Final theorem | valid |

Every export is supported by primitive or earlier-derived controls under accepted dependencies. No transformed, weighted, preconditioned, population-surrogate, baseline-surrogate, or wrong-metric object requires another bridge.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| All-rule family, \(F_R,V_A,r_A\), basis, \(\varphi_A\) | B1 / `step_001` from interface and rank assumptions | B2 topology; B3 raw membership; B6/final coordinates and dimension | Primitive -> `step_001` -> listed consumers | derived | valid |
| Compact \(K_A\), continuous evaluations | B2 / `step_002` from B1 and binary bounds | B4 minimax/attainment; B5 closed constraints/FIP | `step_001` -> `step_002` -> `step_004`/`step_005` | derived | valid |
| Exact-center legality, \(F_{R^0}\in K_A\), correlation, rank exclusion | B3 / `step_003` from universal accuracy and B1 | B4 per-\(p\) witnesses; B6 nonempty zero-rank handling | Primitive + `step_001` -> `step_003` -> `step_004`/`step_006` | derived | valid |
| Finite witness \(f_{h,S}\) | B4 / `step_004` from B2/B3 and Sion | B5 finite-intersection feasibility | `step_002` + `step_003` -> `step_004` -> `step_005` | derived | valid |
| Global exact-margin \(f_h\) | B5 / `step_005` from B2/B4 and compact FIP | B6 target coordinates and signs | `step_002` + `step_004` -> `step_005` -> `step_006` | derived | valid |
| \(w_h\), exact sign certificate, polynomial dimension bound | B6 / `step_006` from B1/B3/B5 and primitive rank | Final theorem | `step_001` + `step_003` + `step_005` -> `step_006` -> assembly | derived | valid |

No theorem-facing generated output is consumed before its producer, exported through a missing dependency, or supplied by a surrogate object. Final theorem assumptions remain primitive.

## Early Obstruction And Repair Plausibility

- **Contract contradiction:** None. The rank certificate is explicit and does not assert a representation of \(\mathcal H\). No fifth assumption was added.
- **Mechanism witness:** Complete. Finite rank plus binary range supplies compactness; universal loss control through the binary identity supplies positivity; Sion supplies finite quantifier exchange; compact FIP supplies arbitrary-family scope; basis equality supplies exact target transfer.
- **Source-to-claim adequacy:** Passed. Upper boundedness is never used for positivity. The lower source is \(1-2\mathbb E_U\mathcal L\ge\rho>1/2\).
- **Residual/export feasibility:** Passed. Evaluation coordinates, minimax witnesses, finite/global constraints, and basis scores concern the same functions and threshold. Every transfer residual is zero; only \(2\varepsilon\) remains and is explicitly controlled.
- **Sion preflight:** Passed at diagnostic level with stable source, exact label/DOI, current-object mapping, compact-convex and continuity hypotheses, correct max-min orientation, and explicit non-outputs.
- **Generated provenance/noncircularity:** Passed. Body precedes correlation/minimax; correlation precedes finite feasibility; finite feasibility precedes FIP; global witness precedes coordinates.
- **Scope accumulation:** Passed. Exact-center replies have zero validity defect. Arbitrary domain points are controlled by finite intersections at one closed threshold and a finite-subcover contradiction.
- **Boundary stress:** Passed for \(m=0\), immediate stopping, empty \(\mathcal X\), empty \(\mathcal H\), \(r_A=0\), singleton \(S\), empty finite subfamily, all \(\tau>0\), \(\varepsilon=0\), \(B=1\), \(k=1\). Point-mass correlation excludes the only false nonempty zero-dimensional branch.
- **Mode/dependence:** No upgrade. The result is deterministic, fixed-horizon, exact pointwise, arbitrary-domain, polynomial, and explicitly conditional.
- **Source-progress fidelity:** The result is labeled `conditional` and material. Deriving rank from \(m,\tau\) and recovering the unconditional linear result remain open.
- **Same-setting repair plausibility:** No repair is needed. There is no candidate sketch/interface or idea/theorem-contract defect.

## Global Gaps And Hard Steps

None.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic guidance only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, generated-output interface, quantitative objective, boundary exclusion, theorem scope, or conclusion. Each local derivation and cited-result application must be independently proved or discharged by corresponding `/proof-step` and accepted `/proof-step-review` artifacts.

## Suggested Routing

None

Continue with all six proof steps in accepted dependency order, beginning with `/proof-step step_001`; the controller must first obtain an accepted `/global-proof-review` for this diagnostic.
