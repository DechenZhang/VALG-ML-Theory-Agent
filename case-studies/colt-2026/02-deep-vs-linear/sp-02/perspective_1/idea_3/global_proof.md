# Global Proof

## Reviewed Sketch Identity

- Branch path: `perspective_1/idea_3`
- Sketch attempt: 1
- Global unit attempt: 1
- Reviewed `setting.md` SHA-256: `a77db70b5e184b062eabd7b32b21c1f0010c2e7122cd6c4ed4c2d277ff0e7587`
- Reviewed `proof_sketch.md` SHA-256: `ec48a538bbde2f7a738402d2625a54eecfbb48693d25bed97f9abea9f61450da`
- Reviewed `proof_sketch_review.md` SHA-256: `c361b0ab9490ece4367691052d05a1e6340259818ae1e63f5e463bbe1c750172`
- Sketch review status: `ACCEPTED`
- Sketch viability score: 9

The reviewed hashes agree with the binding identities supplied for this run. The accepted review concerns sketch attempt 1 and accepts exactly the sketch used below.

## Status

COMPLETE_DRAFT

## Attempted Theorem Claim

This branch is in **exact-goal mode** for the conditional theorem stated in `setting.md`. It is not an attempted proof of the unconditional linear implication in the parent open problem.

Assume `assump:sq-parameter-regime`, `assump:universal-adversarial-sq`, and `assump:canonical-rounded-output-catalog`. Thus
\[
m\in\mathbb N_0,\qquad \tau>0,\qquad 0\leq\varepsilon<\frac14,
\qquad B\geq1,\qquad k\in\mathbb N,\ k\geq1,
\]
one fixed randomized adaptive unrestricted-SQ learner uses at most \(m\) tolerance-\(\tau\) queries and has expected binary risk at most \(\varepsilon\) for every distribution, every target, and every tolerance-valid adversarial policy, and the one proof-only canonical rounded policy has a pre-instance terminal catalog
\[
\mathcal C_A^\rho=(g_1,\ldots,g_L),
\qquad
1\leq L\leq B\left(1+\frac{m}{\tau^2}\right)^k.
\]
The catalog restriction applies only to actual executions under that canonical policy; no restriction is imposed on outputs under other valid policies or invalid prescribed reply strings.

The attempted conclusion is the exact statement
\[
\phi(x):=(g_1(x),\ldots,g_L(x)),
\]
where this one deterministic feature map is fixed independently of the current distribution, target, policy, replies, and random tape, and
\[
\forall h\in\mathcal H\ \exists w_h\in\Delta_L\ \forall x\in\mathcal X,
\qquad
h(x)\langle w_h,\phi(x)\rangle
\geq 1-2\varepsilon>\frac12>0.
\]
Consequently,
\[
\operatorname{dc}(\mathcal H)\leq L
\leq B\left(1+\frac{m}{\tau^2}\right)^k.
\]
The scope is arbitrary, possibly empty or infinite \(\mathcal X\), arbitrary \(\mathcal H\subseteq\{\pm1\}^{\mathcal X}\), arbitrary random-tape probability spaces including nonatomic ones, fixed finite horizon at most \(m\), expected risk only over learner randomness in the premise, and a deterministic pointwise exact-sign conclusion. All dependence on \(m,\tau,\varepsilon,L,B,k\) is displayed; there are no hidden constants and no domain-size dependence.

## Whole-Proof Draft

Write
\[
K:=\lceil1/\tau\rceil,
\qquad
G:=\{-1+2j/K:0\leq j\leq K\},
\qquad
\rho_\varepsilon:=1-2\varepsilon.
\]
Since \(\varepsilon<1/4\), \(\rho_\varepsilon>1/2\). The proof consists of five dependency-ordered blocks followed by direct assembly.

### Block B1: the canonical policy is an actual valid execution

Fix a distribution-target pair \((\mathcal D,h)\) and a tape \(r\). At a reached query \(q_t\), including a query selected using the entire tape and all preceding replies, put
\[
v_t:=\mathbb E_{x\sim\mathcal D}q_t(x,h(x)).
\]
The query range is \([-1,1]\), hence \(v_t\in[-1,1]\). The grid spacing is \(2/K\), so the fixed nearest-grid map satisfies
\[
a_t:=\rho(v_t),
\qquad
|a_t-v_t|\leq\frac1K\leq\tau,
\]
where the final inequality follows from \(K=\lceil1/\tau\rceil\geq1/\tau\). This is exactly the additive tolerance convention in the setting.

The check is inductive only in the sense needed to define the reached adaptive execution. The empty prefix is valid. After a valid reached prefix determines the next query, the displayed calculation validates the next reply. There is no accumulated-error premise: if the execution reaches \(T\leq m\) queries, then each coordinate obeys \(|a_t-v_t|\leq\tau\), equivalently \(\max_{t\leq T}|a_t-v_t|\leq\tau\); no bound on \(\sum_t|a_t-v_t|\) is required. Early stopping is harmless, and for \(m=0\) the empty interaction is already an actual valid execution.

Therefore \(\mathcal O^\rho_{\mathcal D,h}\) is a tolerance-valid policy on every reached history. Only now is the antecedent of `assump:canonical-rounded-output-catalog` activated, giving, for every tape,
\[
G_r:=A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)
\in\{g_1,\ldots,g_L\}
\]
as equality of functions on \(\mathcal X\). This block neither evaluates an invalid synthetic transcript nor says anything about outputs under a different valid policy.

### Block B2: finite scalar-loss range gives a catalog correlation witness

Continue with fixed \((\mathcal D,h)\), and define only the scalar actual-run loss
\[
Z(r):=\mathcal L_{\mathcal D,h}(G_r).
\]
By `assump:universal-adversarial-sq` and Block B1, \(Z:\Omega\to[0,1]\) is measurable and
\[
\mathbb E_\mu Z\leq\varepsilon.
\]
Block B1 also implies that the scalar range
\[
S:=Z(\Omega)
\]
is a nonempty finite subset of the set of at most \(L\) catalog-risk values. Nonemptiness follows because a probability space has total mass one and therefore has a nonempty underlying set. Let \(s_*:=\min S\). This minimum is an attained scalar range value, so there is some \(r_*\in\Omega\) with \(Z(r_*)=s_*\), and catalog membership supplies some \(i_*\in[L]\) with \(G_{r_*}=g_{i_*}\). Since \(Z\geq s_*\) pointwise,
\[
s_*\leq\mathbb E_\mu Z\leq\varepsilon.
\]
Thus
\[
\mathcal L_{\mathcal D,h}(g_{i_*})=s_*\leq\varepsilon.
\]

This derivation integrates only the primitive measurable scalar \(Z\). It never defines, selects, or integrates a map \(r\mapsto i(r)\); it does not require the sets \(\{r:G_r=g_i\}\) to be measurable; and it does not require the selected catalog value to occur with positive probability. The finite scalar range, rather than a measurable output selector, supplies attainment.

For binary \(g_{i_*}\) and \(h\), pointwise
\[
h(x)g_{i_*}(x)
=1-2\mathbf 1\{g_{i_*}(x)\neq h(x)\}.
\]
The same-function, same-distribution identity therefore gives
\[
\mathbb E_{x\sim\mathcal D}[h(x)g_{i_*}(x)]
=1-2\mathcal L_{\mathcal D,h}(g_{i_*})
\geq1-2\varepsilon=\rho_\varepsilon.
\]
There is no transfer residual. At \(\varepsilon=0\), the nonnegative finite-range variable has \(s_*=0\), so this block exports correlation exactly one.

### Block B3: finite minimax gives one separator on each finite set

Fix \(h\in\mathcal H\) and a nonempty finite set \(F\subseteq\mathcal X\). Define
\[
A\in\mathbb R^{F\times L},
\qquad
A_{x i}:=h(x)g_i(x),
\]
and let \(\Delta_F\) be the simplex of probability vectors indexed by \(F\). For each \(p\in\Delta_F\), the finitely supported law \(\mathcal D_p\) with masses \(p_x\) is a legitimate instance of the every-distribution premise. Block B2, applied to \((\mathcal D_p,h)\), yields an index \(i(p)\) such that
\[
p^TAe_{i(p)}
=\sum_{x\in F}p_xh(x)g_{i(p)}(x)
\geq\rho_\varepsilon.
\]
Consequently,
\[
\min_{p\in\Delta_F}\max_{i\in[L]}p^TAe_i
\geq\rho_\varepsilon. \tag{1}
\]

Use the continuous bilinear payoff \(f(w,p):=p^TAw\) on the nonempty compact convex simplices \(\Delta_L\) and \(\Delta_F\). Sion (1958), Theorem 3.4, specialized to these finite-dimensional objects, gives the correctly oriented equality
\[
\max_{w\in\Delta_L}\min_{p\in\Delta_F}p^TAw
=\min_{p\in\Delta_F}\max_{w\in\Delta_L}p^TAw. \tag{2}
\]
For fixed \(p\), affinity in \(w\) gives
\[
\max_{w\in\Delta_L}p^TAw=\max_{i\in[L]}p^TAe_i,
\]
and, for fixed \(w\), affinity in \(p\) gives
\[
\min_{p\in\Delta_F}p^TAw=\min_{x\in F}(Aw)_x.
\]
Combining these extreme-point identities with (1) and (2) yields
\[
\max_{w\in\Delta_L}\min_{x\in F}(Aw)_x
=\min_{p\in\Delta_F}\max_{i\in[L]}p^TAe_i
\geq\rho_\varepsilon. \tag{3}
\]
The continuous function \(w\mapsto\min_{x\in F}(Aw)_x\) attains its maximum on compact \(\Delta_L\). Hence there is \(w_{h,F}\in\Delta_L\) such that
\[
\forall x\in F,
\qquad
h(x)\sum_{i=1}^Lw_{h,F,i}g_i(x)
=(Aw_{h,F})_x\geq\rho_\varepsilon. \tag{4}
\]
The distribution player is the outer minimizer and the catalog-mixture player is the outer maximizer. The best pure catalog index may vary arbitrarily with \(p\); minimax, not a selector for that index, performs the quantifier reversal. All payoffs are finite sums, so no measurability or limiting issue is introduced. If \(F=\varnothing\), (4) is vacuous and any point of nonempty \(\Delta_L\) is a witness; minimax is not invoked.

### Block B4: the fixed-simplex arbitrary-family FIP gives a global separator

Fix \(h\in\mathcal H\). For each \(x\in\mathcal X\), define the constraint set
\[
C_{h,x}:=
\left\{w\in\Delta_L:
h(x)\sum_{i=1}^Lw_i g_i(x)\geq\rho_\varepsilon
\right\}.
\]
The simplex \(\Delta_L\) is closed and bounded in \(\mathbb R^L\), hence compact by Heine--Borel. Each \(C_{h,x}\) is closed in this same simplex because it is the inverse image of the closed ray \([\rho_\varepsilon,\infty)\) under a continuous linear functional.

For every nonempty finite \(F\subseteq\mathcal X\), (4) states exactly that
\[
\bigcap_{x\in F}C_{h,x}\neq\varnothing.
\]
For the empty finite subfamily, the intersection is \(\Delta_L\neq\varnothing\), using \(L\geq1\). Thus the arbitrary family \(\{C_{h,x}:x\in\mathcal X\}\) has the finite-intersection property in one fixed compact space. To verify the arbitrary-cardinality implication directly, suppose its total intersection were empty. Then the open complements \(\{\Delta_L\setminus C_{h,x}:x\in\mathcal X\}\) would cover \(\Delta_L\). Compactness would provide a finite subcover indexed by some finite \(F\), forcing \(\cap_{x\in F}C_{h,x}=\varnothing\), a contradiction. Therefore
\[
\bigcap_{x\in\mathcal X}C_{h,x}\neq\varnothing.
\]
Choose \(w_h\) in this intersection. It satisfies
\[
\forall x\in\mathcal X,
\qquad
h(x)\sum_{i=1}^Lw_{h,i}g_i(x)\geq\rho_\varepsilon. \tag{5}
\]
This is not a sequential limit and does not require a topology on \(\mathcal X\), a compatible choice of the finite witnesses, or a countability assumption. The finite and global constraints are identical closed constraints at the same threshold, so the accumulated residual over the arbitrary family is exactly zero. If \(\mathcal X=\varnothing\), the total intersection is by convention \(\Delta_L\), and any \(w_h\) works.

### Block B5: exact coordinates close signs and the polynomial rate

The ordered catalog is fixed before the current instance, so
\[
\phi(x):=(g_1(x),\ldots,g_L(x))
\]
is one deterministic feature map shared by the entire class. For the target-dependent weight from Block B4,
\[
\langle w_h,\phi(x)\rangle
=\sum_{i=1}^Lw_{h,i}g_i(x)
\]
coordinate by coordinate. Hence (5) is exactly
\[
h(x)\langle w_h,\phi(x)\rangle
\geq\rho_\varepsilon=1-2\varepsilon>\frac12>0
\qquad(x\in\mathcal X). \tag{6}
\]
There is no surrogate object, change of metric, or residual between the produced mixture and the consumed Euclidean score. Strict positivity excludes sign ties. The definition of deterministic exact dimension complexity, with \(u_h=w_h\), now gives
\[
\operatorname{dc}(\mathcal H)\leq L.
\]
Direct substitution of the primitive catalog-size certificate yields
\[
\operatorname{dc}(\mathcal H)
\leq L
\leq B\left(1+\frac m{\tau^2}\right)^k. \tag{7}
\]
No term is dropped, dominated, or hidden.

### Assembly and quantifier closure

The logical flow is
\[
\begin{aligned}
&\text{primitive grid/query conventions}
\Longrightarrow \text{actual canonical execution and catalog membership},\\
&\forall(\mathcal D,h)\ \exists i(\mathcal D,h):
\mathbb E_{\mathcal D}[hg_i]\geq\rho_\varepsilon,\\
&\forall h\ \forall F\subseteq\mathcal X\text{ finite}\
\exists w_{h,F}\ \forall x\in F:
h(x)\sum_iw_{h,F,i}g_i(x)\geq\rho_\varepsilon,\\
&\forall h\ \exists w_h\ \forall x\in\mathcal X:
h(x)\sum_iw_{h,i}g_i(x)\geq\rho_\varepsilon.
\end{aligned}
\]
Although Block B2 is instantiated separately for every \(\mathcal D_p\), minimax removes \(p\), and compactness removes \(F\). The resulting \(w_h\) depends only on \(h\) and the fixed catalog, not on a distribution, policy, response sequence, or tape. The map \(\phi\) depends only on the pre-instance catalog and is shared by all targets.

All baseline branches close in the same proof. If \(m=0\), Block B1 uses the actual empty interaction and (7) gives \(L\leq B\). If \(\varepsilon=0\), Blocks B2--B4 preserve margin exactly one. If \(L=1\), every simplex argument uses the singleton simplex. Duplicate catalog functions create duplicate coordinates but do not affect any equality. Every finite \(\tau>0\), including \(\tau\geq1\), obeys \(1/K\leq\tau\). Nonatomic tape spaces are harmless because only \(Z\) is integrated. If \(\mathcal H=\varnothing\) or \(\mathcal X=\varnothing\), the exact-sign quantifiers are vacuous and \(\operatorname{dc}(\mathcal H)=0\); the displayed \(L\)-dimensional map remains a valid, possibly nonminimal, witness. The cases \(B=1\) and \(k=1\) require no specialization. This completes the theorem-level derivation.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| B1: canonical execution legality and catalog activation | Establishes the only learner execution used by the proof and activates canonical-only membership | `step_001` | Fixed grid, reached bounded query, current exact center | `assump:sq-parameter-regime`, bounded-query and adaptive-policy conventions in `assump:universal-adversarial-sq`, membership implication in `assump:canonical-rounded-output-catalog` | None |
| B2: finite scalar-loss extraction and correlation | Produces a catalog best response for every distribution-target pair without a measurable output selector | `step_002` | B1 actual execution and membership; primitive measurable expected-risk bound | All three setting assumptions, with policy validity supplied by B1 | None |
| B3: finite minimax separator | Converts every finitely supported distribution's best response into one mixture working on a fixed finite set | `step_003` | B2 correlation for every \(\mathcal D_p\); finite matrix \(A\); Sion equality and simplex extreme points | `assump:sq-parameter-regime`; the universal premise is consumed through B2 | None |
| B4: arbitrary-family compactness closure | Produces one target weight working on all points of an arbitrary domain | `step_004` | B3 finite feasibility; fixed \(L\geq1\); closed constraints in compact \(\Delta_L\) | `assump:canonical-rounded-output-catalog` for finite nonempty simplex | None |
| B5: coordinate and rate closure | Converts the global mixture into the exact common-map sign representation and dimension bound | `step_005` | B1 fixed catalog data; B4 global weight; positive margin; primitive size inequality | `assump:sq-parameter-regime`, `assump:canonical-rounded-output-catalog` | None |
| Final assembly | Closes quantifiers, object independence, conditional progress label, and all boundary cases | Direct assembly of B1--B5 | B1 -> B2 -> B3 -> B4 -> B5 and direct B1 -> B5 catalog edge | Exactly the three binding assumptions | None |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | B1 and the fixed-catalog input to B5 | No prior step; exports validity to `step_002` and catalog identity/size to `step_005` | Check \(v_t\in[-1,1]\), nearest-grid radius, \(1/K\leq\tau\), reached-history induction, early stopping, \(m=0\), and exact membership activation | Canonical-policy-only; no synthetic or other-policy output claim |
| `step_002` | B2 | Consumes the actual execution and terminal membership from `step_001`; exports correlation to `step_003` | Prove the finite scalar range is nonempty and attained, compare its minimum with \(\mathbb EZ\), identify an occurring catalog function, and apply the exact binary identity without an index selector | Handles nonatomic tapes and \(\varepsilon=0\) |
| `step_003` | B3 | Consumes `step_002` for every finite-support \(\mathcal D_p\); exports finite feasibility to `step_004` | Map Sion's hypotheses, preserve min/max orientation, prove both simplex extreme-point identities and attainment, and split off \(F=\varnothing\) | Finite sums only; no topology or measurability on \(F\) is needed |
| `step_004` | B4 | Consumes every finite separator from `step_003`; exports \(w_h\) to `step_005` | Prove compactness and closedness, verify the empty finite intersection, and give the arbitrary-family finite-subcover contradiction | One fixed \(\Delta_L\), zero threshold loss, no sequential argument |
| `step_005` | B5 and final assembly | Consumes fixed catalog data from `step_001` and global weights from `step_004` | Check exact coordinate identity, target/map dependence, strict positivity, the definition of \(\operatorname{dc}\), direct catalog-size substitution, and empty/baseline branches | No hidden constant, rate specialization, or domain-size term |

## Dependency And Assumption Audit

| Theorem-facing condition | Classification | Provenance and exact role | Consumers | Audit result |
| ------------------------ | -------------- | ------------------------- | --------- | ------------ |
| Parameter ranges for \(m,\tau,\varepsilon,B,k\), and fixed finite horizon | Primitive condition | `assump:sq-parameter-regime` | B1, B2, B3, B5, final rate | Valid; no range is narrowed |
| Universal expected-risk guarantee for every valid policy | Primitive condition | `assump:universal-adversarial-sq`; instantiated only after B1 proves the canonical policy valid | B2 | Valid; no favorable-policy or exact-expectation learner access is assumed |
| Pre-instance ordered canonical-output catalog and its size | Primitive condition | `assump:canonical-rounded-output-catalog`; membership is conditional on an actual canonical execution | B1 activates membership; B5 uses order, functions, and size | Valid; not strengthened to other policies or invalid branches |
| Canonical reached-query validity | Accepted-sketch derived conclusion | B1 derives \(\lvert\rho(v_t)-v_t\rvert\leq1/K\leq\tau\) before any risk/catalog consumption | B1 membership activation and B2 | Valid and noncircular |
| Actual terminal membership for every tape | Accepted-sketch derived conclusion obtained by instantiating a primitive implication | B1 combines derived validity with the primitive catalog clause | B2 and B5 | Valid; exact equality of functions |
| Low-risk occurring catalog function and correlation lower bound | Accepted-sketch derived conclusion | B2 derives it from the measurable scalar loss and finite actual range | B3 | Valid; not hidden in the catalog assumption |
| Finite simultaneous separator | Accepted-sketch derived conclusion | B3 derives it from B2 for all finitely supported laws and finite minimax | B4 | Valid; no compatibility between different finite witnesses is assumed |
| Global separator \(w_h\) | Accepted-sketch derived conclusion | B4 derives it from finite feasibility and compact FIP | B5 | Valid; not assumed as an admissibility condition |
| Exact sign map and dimension rate | Accepted-sketch derived conclusion | B5 uses exact object identity and the primitive size bound | Final theorem | Valid |
| Finite-set context, fixed target, and fixed distribution used inside blocks | Local conditional hypotheses | Quantifier-local objects introduced only to prove universally quantified conclusions | Their respective blocks only | Valid; none appears as a public theorem assumption |
| Missing generated-object, event, invariant, stability, boundedness, membership, or recurrence bridge | Missing derived-condition bridge | None | None | None missing |

No random feature-map law, measurable output-index selector, finite-support tape approximation, all-policy catalog, generated stability event, recurrence, basin condition, or mean-response rank is assumed or consumed.

## Citation And Tool Audit

| Source or tool | Current-branch objects | Assumptions to discharge | Conclusion needed | Source/convention and object-target compatibility | Affected block / Step ID |
| -------------- | ---------------------- | ------------------------ | ----------------- | ------------------------------------------------- | ------------------------ |
| Maurice Sion, *On General Minimax Theorems*, Pacific J. Math. 8 (1958), Theorem 3.4, DOI `10.2140/pjm.1958.8.171` | \(X=\Delta_L\), \(Y=\Delta_F\), \(f(w,p)=p^TAw\), with \(F\neq\varnothing\) and \(L\geq1\) | Both domains are nonempty compact convex finite-dimensional simplices; \(f\) is real-valued, continuous, affine and hence quasi-concave/quasi-convex in the required variables | Exactly \(\max_w\min_p f=\min_p\max_w f\) | The branch uses the same Euclidean coordinates and payoff on both sides; because bilinearity supplies both convexity orientations, the maximizing-mixture/minimizing-distribution convention matches. The source does not supply catalog existence, correlation, extreme-point identities, FIP, or theorem closure; those are separately derived. No wrapper or surrogate-target bridge remains. | B3 / `step_003` |
| Simplex extreme-point identities | Finite vectors \(p\in\Delta_F\), \(w\in\Delta_L\), matrix \(A\) | Finite nonempty index sets and affine objective | \(\max_w p^TAw=\max_i p^TAe_i\) and \(\min_p p^TAw=\min_x(Aw)_x\) | Direct current-notation derivation: a convex combination is bounded by the corresponding maximum/minimum, with equality at a vertex. Exact branch convention, zero residual, and empty \(F\) excluded before use. | B3 / `step_003` |
| Heine--Borel compactness | \(\Delta_L\subset\mathbb R^L\) | Finite \(L\geq1\); simplex closed and bounded | Compactness of the one fixed simplex | Standard finite-dimensional Euclidean convention exactly matches the branch. No compactness of \(\mathcal X\) is claimed or needed. | B4 / `step_004` |
| Closed-set finite-intersection theorem | Arbitrary family \(\{C_{h,x}\}_{x\in\mathcal X}\) in compact \(\Delta_L\) | Each set closed; every finite intersection nonempty | Nonempty total intersection for an arbitrary index set | Proved directly in current notation by taking open complements and a finite subcover. It uses the same sets and same threshold, so no source-convention or target-object transfer is present. | B4 / `step_004` |
| Monotonicity of integration and finite-range minimum | Measurable scalar \(Z:\Omega\to[0,1]\) with finite nonempty range | Probability space, scalar measurability, pointwise \(Z\geq\min Z(\Omega)\) | \(\min Z(\Omega)\leq\mathbb EZ\) | Direct measure-theoretic derivation in the branch convention. It does not use measurability of output-index fibers or a pushforward output law. | B2 / `step_002` |
| Binary risk-correlation identity | Same \(h,g_i,\mathcal D\) on both sides | \(h,g_i\in\{\pm1\}^{\mathcal X}\), standard risk defined on the actual output | \(\mathbb E[hg_i]=1-2\mathcal L(g_i)\) | Pointwise current-notation equality; same function and target, zero transfer residual. | B2 / `step_002` |
| Definition of deterministic dimension complexity | Fixed \(\phi:\mathcal X\to\mathbb R^L\), weights \(w_h\), pointwise strict signed score | One shared map and strict positivity for every target and point | \(\operatorname{dc}(\mathcal H)\leq L\) | Exact setting definition, with \(u_h=w_h\). Empty class/domain are checked separately and have minimal dimension zero. | B5 / `step_005` |

The COLT 2026 open-problem paper, Feldman (2017), and Ben-David et al. (2002) provide model and target context in the survey, but no theorem statement from them is used as proof authority in this derivation. No unverified theorem label or external source supplies a generated output.

## Quantitative Dependence Audit

- **Exposed variables:** \(m,\tau,\varepsilon,L,B,k\). The exact margin is \(1-2\varepsilon\); the exact dimension chain is \(\operatorname{dc}(\mathcal H)\leq L\leq B(1+m/\tau^2)^k\).
- **Hidden constants:** None. In particular, no hidden factor may depend on an exposed variable, \(\mathcal X\), \(\mathcal H\), \(\mathcal D\), \(h\), a policy, replies, tape law, or catalog multiplicity.
- **Fixed quantities:** The certified learner \(A\), fixed nearest-grid tie rule \(\rho\), ordered pre-instance catalog \(\mathcal C_A^\rho\), and family constants \(B,k\). The latter remain visible in the bound. The catalog is fixed before all current instance and tape quantifiers.
- **Probability mode:** The assumption is an expectation over learner tape on each actual valid execution. B2 eliminates this expectation by deterministic finite-range existence. The conclusion is deterministic and pointwise; there is no high-probability, almost-sure, or event-conditional statement and no union bound.
- **Horizon mode:** Fixed finite upper bound \(m\), including \(m=0\). Canonical validity is checked separately at each reached query and is not upgraded to an all-time or horizon-uniform claim.
- **Norm or metric mode:** Absolute response error for oracle validity; binary risk and signed correlation for B2; exact finite matrix payoff for B3; pointwise signed Euclidean score for B4--B5; deterministic exact sign dimension for the conclusion. No norm or metric is changed silently.
- **Auxiliary quantities:** \(K=\lceil1/\tau\rceil\) and \(\rho_\varepsilon=1-2\varepsilon\). They are eliminated through the exact inequalities \(1/K\leq\tau\) and \(\rho_\varepsilon>1/2\). No free tolerance remains.
- **Public specialization:** There is no technical-to-public simplification. The proof exports the exact margin and the primitive catalog-size bound. No absorption, asymptotic threshold, or probability conversion is used.
- **Source-direction boundary:** The result is the exact conditional polynomial theorem in `setting.md`. It neither claims the unconditional universal-constant rate \(Cm/\tau^2\) nor derives the catalog certificate from \((m,\tau)\). Removing the certificate is a theorem-contract change, not a hidden proof obligation here.
- **Baseline invariance:** At \(m=0\), the actual empty execution gives \(L\leq B\); at \(\varepsilon=0\), the margin is exactly one; at \(L=1\), the singleton simplex is retained; at \(B=1\) or \(k=1\), the displayed bound specializes literally; and arbitrary \(\tau>0\), duplicate coordinates, nonatomic tapes, and empty or infinite domains remain covered. No weaker remainder, stopped statement, average representation, or probabilistic feature map replaces the target.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ---------------------------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ---------------------------------- | -------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Actual canonical-policy validity and terminal catalog membership | Generated local-validity and membership certificate enabling every later learner use | Every reached query on each canonical run, at most fixed \(m\), for every \((\mathcal D,h,r)\) | \(v_t=\mathbb E q_t\in[-1,1]\), \(a_t=\rho(v_t)\), \(\lvert a_t-v_t\rvert\leq1/K\leq\tau\); valid prefix plus this inequality yields a valid next prefix; then the primitive membership implication applies | Grid covering radius \(1/K\) and the primitive actual-canonical-run catalog clause | Per-query rounding residual; adaptive changes in later queries. Invalid synthetic and noncanonical-policy outputs are uncontrolled but have no consumer | Coordinatewise locally absorbed, not summed: for reached length \(T\leq m\), \(\max_{t\leq T}\lvert a_t-v_t\rvert\leq\tau\). SQ validity has no cumulative forcing term | Structural upper comparison plus algebraic coupling to the primitive membership implication | `assump:sq-parameter-regime`, bounded-query convention, and `assump:canonical-rounded-output-catalog`; no allowed \(\tau>0\) or \(m=0\) branch is excluded | Absolute-error source proves exactly tolerance validity; exact actual-run antecedent then supplies function membership, not merely size control | Produced reply versus same-center tolerance interval: residual \(\leq\tau\) in absolute error; produced terminal function versus catalog member: equality, residual zero; both meet exact consumed scales | `step-local` | Primitive parameter/query facts -> B1 validity -> primitive membership -> B2/B5; no low-risk or separator conclusion is assumed | \(m=0\): empty execution is valid and membership applies. First reached query: center is in \([-1,1]\), so the first reply is valid before any risk premise is consumed | \(K\geq1/\tau\Rightarrow1/K\leq\tau\), independently at every reached query | Parameter range, bounded queries, fixed \(\rho\), catalog implication | Actual valid prefix and instantiated terminal membership | \(\tau\geq1\), ties, early stop, tape-dependent queries, and nonatomic tapes all pass | Without validity, neither universal risk nor catalog membership can be invoked; without membership, B2 has no finite range |
| An occurring catalog function with risk \(\leq\varepsilon\) and correlation \(\geq\rho_\varepsilon\) | Positive lower-bound certificate feeding every finite game | Separately for every distribution-target pair; static in tape expectation | \(S=Z(\Omega)\) finite nonempty, \(s_*=\min S\), \(Z\geq s_*\), hence \(s_*\leq\mathbb EZ\leq\varepsilon\); then \(\mathbb E[hg]=1-2\mathcal L(g)\) | Primitive expected-risk bound, B1 finite actual terminal range, and exact binary identity | Nonatomic tapes, nonmeasurable index fibers, zero-mass output values; none enters the scalar integral. Error contribution is exactly \(2\varepsilon\) | Static, no accumulated defect. The minimum is an attained range value even if its fiber has zero measure; no limiting infimum is used | Structural lower/upper comparison and algebraic coupling | `assump:universal-adversarial-sq` instantiated through B1 plus finite catalog membership; no tape-atomicity or selector assumption | An upper expectation bound plus finite attained range is adequate for existence of a low scalar value; the binary identity supplies the required positive correlation type | Produced risk and consumed correlation concern the same actual catalog function and same \((\mathcal D,h)\); exact residual relation \(\text{corr}=1-2\text{risk}\), every residual dominated at scale \(\rho_\varepsilon\) | `step-local` | B1 produces actual membership; primitive expectation bounds \(Z\); scalar minimum produces low risk; only then B3 consumes correlation | No iterative update. For \(m=0\), use the no-query loss. For \(\varepsilon=0\), \(s_*=0\) and correlation one before minimax | \(s_*\leq\mathbb EZ\leq\varepsilon\Rightarrow1-2s_*\geq1-2\varepsilon\) exactly | Measurable actual loss and expectation bound | B1 membership, low-risk range value, correlation witness | \(L=1\), duplicate functions, nonatomic tape, zero-mass fibers, \(m=0\), and \(\varepsilon=0\) pass | Without finite attained range, an infimum at \(\varepsilon\) need not be attained by an output; without the risk bound, no positive game value follows |
| Finite simultaneous separator \(w_{h,F}\) | Finite minimax and quantifier-conversion certificate | Every target and every finite \(F\); minimax only for nonempty \(F\) | \(\forall p:\max_i p^TAe_i\geq\rho_\varepsilon\), and \(\min_p\max_i p^TAe_i=\max_w\min_x(Aw)_x\) | B2 uniform per-\(p\) lower bound; Sion's exact bilinear minmax equality; simplex vertices | Best index varies with \(p\); no approximation, stochastic, or matrix residual | Exact finite scope. Payoffs are finite sums; repeating for different \(F\) introduces no summed defect because B4 consumes exact finite feasibility | Algebraic coupling and structural lower comparison | B2 plus Sion (1958), Theorem 3.4, under mapped finite-simplex conventions; \(F=\varnothing\) is handled vacuously rather than passed to the source | Sion supplies exactly order equality; B2 supplies the positive lower value. Neither source is merely an upper bound or generic compactness claim | Produced payoff \((Aw)_x\) equals consumed signed score \(h(x)\sum_iw_ig_i(x)\) in the same pointwise metric; zero residual at threshold \(\rho_\varepsilon\) | `step-local` | B2 -> per-\(p\) best response -> Sion and extreme points -> B3 finite separator -> B4; simultaneous feasibility is not assumed | Singleton \(F\): point mass is the only distribution and the mixture certificate is active. Empty \(F\): any \(w\in\Delta_L\) works without minimax | Equations (1)--(4): left game value \(\geq\rho_\varepsilon\), exact equality, and attained maximum give every point constraint | Finite \(L\), every-distribution premise through B2 | Per-distribution correlation and finite separator | \(L=1\), duplicate columns, zero weights, singleton/empty \(F\), and \(\varepsilon=0\) pass | Without minimax equality, varying pure best responses do not imply one simultaneous mixture |
| Global separator \(w_h\) on arbitrary \(\mathcal X\) | Arbitrary-family theorem closure preserving all pointwise margins | Every target and all points of an empty, finite, countable, or uncountable domain | Closed \(C_{h,x}\subseteq\Delta_L\); \(\forall F\) finite, \(\cap_{x\in F}C_{h,x}\neq\varnothing\); compact FIP implies \(\cap_{x\in\mathcal X}C_{h,x}\neq\varnothing\) | Fixed compact finite-dimensional simplex, exact B3 finite feasibility, and closed constraints at one threshold | Arbitrary cardinality, incompatible separately chosen finite witnesses, and possible sequential-limit failure; residual is identically zero | Arbitrary-family exact closure: accumulated residual/forcing is zero with controlled sign. If total feasibility failed, one finite subfamily would already fail by a finite-subcover contradiction; no infinite sum or budget is used | Structural lower/upper comparison via closed-set FIP in a fixed compact space | Primitive finite \(L\geq1\), Heine--Borel, and B3. No topology on \(\mathcal X\), sequential compactness, or compatibility of finite witnesses is assumed | Exact finite feasibility for the same closed constraints is precisely the FIP source needed for global feasibility | Produced finite constraints and consumed global constraints use identical \(g_i,h,w\), point evaluation, simplex, and threshold; zero residual and no surrogate target | `step-local` | Primitive \(L\) gives compact \(\Delta_L\); B3 independently produces every finite intersection; FIP produces total intersection before B5 | Empty subfamily has intersection \(\Delta_L\); first singleton is feasible by B3. If \(\mathcal X=\varnothing\), the total intersection is \(\Delta_L\) and no transition is needed | \(\forall F\text{ finite}:\cap_{x\in F}C_{h,x}\neq\varnothing\Rightarrow\cap_{x\in\mathcal X}C_{h,x}\neq\varnothing\), proved by finite-subcover contradiction | \(L\geq1\), fixed catalog and threshold | B3 finite intersections; B4 global weight | Empty through uncountable domains, \(L=1\), duplicates, and threshold one pass | Without one fixed compact space or closed exact constraints, finite feasibility need not globalize without loss |
| Exact pointwise sign representation | Structural positive-margin closure yielding the common deterministic map | Every target and point; deterministic final mode | \(\langle w_h,\phi(x)\rangle=\sum_iw_{h,i}g_i(x)\), combined with B4 margin | Exact coordinate identity and \(\rho_\varepsilon>1/2>0\) | Possible sign ties, target-dependent map, transformed-object residual; all are absent | Static assembly; B4 already closed arbitrary scope with zero defect | Algebraic coupling and structural lower comparison | B4 global separator and pre-instance catalog order; empty target/domain quantifiers are handled vacuously | Positive lower bound has the exact sign/coercivity content needed; it is not inferred from boundedness alone | Produced mixture and consumed Euclidean score are the same function pointwise; residual zero is dominated by strict margin \(\rho_\varepsilon\) | `step-local` | B1 fixes coordinates; B4 produces \(w_h\); B5 applies exact identity. Representation is not assumed by the catalog | No update. For nonempty scope the positive margin exists before signs are asserted; empty class/domain is already vacuous | \(h(x)\langle w_h,\phi(x)\rangle\geq1-2\varepsilon>0\) directly | Pre-instance catalog, \(\varepsilon<1/4\) | Global \(w_h\) and margin | \(\varepsilon=0\), \(L=1\), duplicates, empty/infinite domains, and nonatomic tapes pass | If the positive margin or exact object identity vanished, sign ties or a surrogate-only conclusion could remain |
| Exact polynomial dimension rate and baseline specializations | Quantitative theorem closure and baseline invariance certificate | Fixed finite horizon, deterministic exact dimension, all allowed parameter boundaries | Common \(L\)-coordinate sign map implies \(\operatorname{dc}\leq L\); primitive certificate gives \(L\leq B(1+m/\tau^2)^k\) | Definition of \(\operatorname{dc}\), B5 strict signs, and primitive size inequality | Hidden constants, domain-size terms, dropped dependence, probability conversion; all absent | Static direct chain; no accumulated defect, limit, or absorption | Algebraic coupling and structural upper comparison | `assump:canonical-rounded-output-catalog`, `assump:sq-parameter-regime`, and exact B5 sign map; no allowed parameter branch is excluded | A shared exact sign map is exactly the source required for the deterministic dimension upper bound | Produced map is the consumed dimension witness; residual zero. The catalog-size inequality is consumed literally, with no simplification residual | `step-local` | Primitive size bound plus B1 fixed map and B4/B5 signs -> dimension definition -> final theorem | \(m=0\): actual no-query route gives \(L\leq B\). \(\varepsilon=0\): margin one. Empty class/domain: dimension zero | \(\operatorname{dc}(\mathcal H)\leq L\leq B(1+m/\tau^2)^k\) by direct substitution | Exact parameter and catalog bounds | Exact shared-map sign certificate | \(m=0\), \(\varepsilon=0\), \(B=1\), \(k=1\), \(L=1\), all \(\tau>0\), and empty/infinite domains pass | Without the common-map sign certificate, \(\operatorname{dc}\leq L\) fails; without the primitive size bound, the polynomial rate is unavailable |

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| Actual tolerance-valid canonical execution and exact terminal membership | B1 / `step_001`; direct branch-convention derivation and primitive catalog implication | Bounded query center, \(K=\lceil1/\tau\rceil\), grid radius \(1/K\), fixed tie rule, at most \(m\) reached queries, primitive actual-run membership clause | Rounding error controlled per query; adaptivity is not an additive defect. Invalid synthetic branches and noncanonical valid-policy outputs are uncontrolled but deliberately have no consumer | Reply \(\rho(v)\) versus same-center tolerance interval in absolute error: \(\leq1/K\leq\tau\). Terminal output versus catalog object: equality as functions, zero residual | Validate each reached response, then instantiate the exact catalog antecedent; no policy conversion, cumulative bound, or transcript replay | Grid covering radius and primitive membership implication | B2; fixed catalog/map data and size also feed B5 | valid |
| An occurring \(g_i\) with risk \(\leq\varepsilon\) and correlation \(\geq\rho_\varepsilon\) | B2 / `step_002` | Measurable bounded scalar \(Z\), \(\mathbb EZ\leq\varepsilon\), and finite nonempty \(Z(\Omega)\) from B1 | Error scale \(2\varepsilon\) is exposed. Index-fiber measurability, atomlessness, and positive fiber mass are not controlled and not needed; never-occurring catalog values are unused | Same output function, target, and distribution; exact relation \(\operatorname{corr}=1-2\operatorname{risk}\), zero transfer residual | \(\min Z(\Omega)\leq\mathbb EZ\leq\varepsilon\), then exact binary affine conversion | Universal risk bound plus finite attained scalar range | B3 for every finite-support \(\mathcal D_p\) | valid |
| Finite separator \(w_{h,F}\in\Delta_L\) at unchanged margin | B3 / `step_003`; Sion (1958), Theorem 3.4, plus direct vertex identities | For every \(p\), B2 gives \(\max_i p^TAe_i\geq\rho_\varepsilon\); finite compact convex simplices; continuous bilinear payoff | Variation of best index with \(p\) is controlled by minimax; empty \(F\) is handled vacuously; no approximation, measurability, or persistent matrix defect | \((Aw)_x\) is exactly the consumed pointwise signed score, with zero residual at the same threshold | \(\min_p\max_i p^TAe_i=\max_w\min_x(Aw)_x\geq\rho_\varepsilon\), with the maximum attained | B2 positive game value and exact minimax equality | B4 | valid |
| Global \(w_h\in\Delta_L\) for all points of arbitrary \(\mathcal X\) | B4 / `step_004`; Heine--Borel and direct closed-set FIP proof | Fixed compact \(\Delta_L\), closed \(C_{h,x}\), and every finite intersection from B3 | Arbitrary cardinality and incompatibility of chosen finite witnesses are controlled by FIP; no sequence is used; residual is zero | Finite and global constraints are literally the same sets, weights, pointwise scores, and threshold | Empty total intersection would give a finite open subcover and contradict B3 finite feasibility | Closed unchanged threshold \(\rho_\varepsilon\), compact fixed simplex | B5 | valid |
| Exact common feature map and strict pointwise signs | B5 / `step_005`; direct coordinate identity | Fixed ordered catalog, B4 global weights, and \(\rho_\varepsilon>1/2\) | Sign ties, target-dependent coordinates, transformed objects, and metric mismatch are absent; duplicates are benign | Produced mixture equals consumed Euclidean score pointwise; residual zero, strictly below the available positive margin | Substitute the coordinate definition into B4 with no loss | Exact B4 margin and \(\varepsilon<1/4\) | Final sign representation and dimension definition | valid |
| \(\operatorname{dc}(\mathcal H)\leq L\leq B(1+m/\tau^2)^k\) | B5 / `step_005`; dimension definition and primitive catalog bound | Shared exact \(L\)-coordinate map, target weights, strict signs, and exact size inequality | No hidden constant, domain-size term, probability term, empirical defect, or dropped dependence | The produced map is exactly the dimension witness; the size inequality is transferred literally, with zero residual | Apply the definition and direct substitution; no domination or absorption | Strict margin for the first inequality and primitive catalog certificate for the second | Final theorem | valid |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Reached-query validity of \(\mathcal O^\rho_{\mathcal D,h}\) | B1 / `step_001`, from primitive grid and bounded-query conventions | B1 catalog activation and B2 universal-risk instantiation | Primitive parameter/query facts -> B1 validity -> catalog/risk antecedents | derived | valid; source convention is the same additive tolerance, and reply residual is \(\leq\tau\) |
| Exact actual terminal membership in \(\mathcal C_A^\rho\) | B1 / `step_001`, by applying the primitive membership implication after validity | B2 finite scalar range; B5 fixed coordinates and size | Primitive catalog clause + B1 validity -> membership -> B2 and B5 | derived | valid; this instantiates a primitive implication on a derived valid execution, terminal-object residual is zero, and no other-policy output is consumed |
| Low-risk occurring catalog value | B2 / `step_002`, finite-range scalar minimum | B2 correlation conversion and B3 | B1 membership + primitive expected-risk bound -> scalar minimum -> low-risk \(g_i\) | derived | valid; no measurable index selector or positive-mass fiber is required |
| Per-distribution catalog correlation \(\geq\rho_\varepsilon\) | B2 / `step_002`, exact binary identity | B3 for every \(\mathcal D_p\) | Low-risk same function -> exact correlation -> B3 game lower bound | derived | valid; same-function residual is zero |
| Finite simultaneous separator \(w_{h,F}\) | B3 / `step_003`, finite minimax | B4 finite-intersection premise | B2 for all \(p\) -> Sion and vertex identities -> B3 -> B4 | derived | valid; produced payoff is the consumed pointwise score |
| Global separator \(w_h\) | B4 / `step_004`, compact fixed-simplex FIP | B5 exact coordinate closure | B3 every finite intersection -> B4 total intersection -> B5 | derived | valid; arbitrary-family closure uses identical constraints and zero residual |
| Exact sign certificate and common map | B5 / `step_005`, exact coordinates and B4 | Dimension definition and final theorem | B1 fixed catalog + B4 global weight -> B5 sign identity -> final theorem | derived | valid; map is pre-instance and only weights depend on \(h\) |
| Explicit dimension chain | B5 / `step_005`, exact sign witness plus primitive catalog-size bound | Final conditional theorem | B5 sign certificate + primitive \(L\) bound -> final rate | derived | valid; no specialization, hidden constant, or dependence loss |

Outputs under noncanonical valid policies and prescribed tolerance-invalid strings have no producer requirement because they have no consumer anywhere in the attempted theorem. This is an explicit scope boundary, not a missing flow.

## Early Obstruction And Repair Plausibility

- **Contract contradiction:** None. The attempted theorem is exactly the conditional polynomial claim in `setting.md`, including the canonical-valid-policy-only catalog restriction. It does not present the result as the unconditional linear solution to the parent problem.
- **Theorem-critical mechanisms:** Every mechanism is already sourced under the accepted sketch: grid covering radius for validity, finite attained scalar range for low-risk existence, Sion's exact finite minimax equality for quantifier reversal, closed-set FIP in a fixed compact simplex for arbitrary-domain closure, and exact coordinate identity plus positive margin and the primitive size bound for final closure.
- **Source-to-claim and source conventions:** The rounding calculation uses the branch's additive tolerance and bounded-query convention. Sion is used only on the exact finite simplices and bilinear payoff and supplies only the order equality. FIP is proved on the unchanged simplex and constraint family. No upper bound is misused as a positivity source: positive game value comes from the actual risk guarantee and finite range, and strict sign comes from \(1-2\varepsilon>1/2\).
- **Residual-to-target adequacy:** The sole nonzero residual is response rounding, bounded by \(1/K\leq\tau\) in the oracle's consumed absolute-error metric. Every later bridge has zero residual: output-to-catalog membership is function equality; risk-to-correlation is an exact identity; matrix payoff is the same signed score; finite and global constraints are identical; mixture and Euclidean score coincide coordinatewise; and the catalog-size inequality is substituted literally.
- **Generated-condition provenance and noncircularity:** Validity precedes catalog/risk use; membership precedes the finite-range argument; correlation precedes minimax; finite feasibility precedes FIP; the global weight precedes sign closure. No target conclusion or generated invariant is assumed by its producer.
- **Scope and accumulation:** Per-query tolerance errors are not summed by the SQ definition. The finite game is exact. Arbitrary-family globalization has identically zero residual and uses a finite-subcover contradiction, not a sequence or an unproved compatibility invariant. No persistent, adversarial-sign, or unbounded accumulated defect occurs.
- **Entry and boundary stress:** The \(m=0\) execution is actual before membership/risk is used; the first reached rounded reply is valid before any downstream premise; \(\varepsilon=0\) activates the scalar minimum and gives margin one; empty \(F\), \(\mathcal X\), or \(\mathcal H\) are handled without invoking nonexistent distributions or minimax; and \(L=1\), duplicates, all finite \(\tau>0\), nonatomic tapes, \(B=1\), and \(k=1\) preserve the original conclusion.
- **Mode and dependence upgrade:** None. An expectation premise is converted to deterministic existence through a finite attained range, not a probabilistic mode upgrade. The proof remains fixed-horizon and exact pointwise. Every \(m,\tau,\varepsilon,L,B,k\) dependence is retained.
- **Same-setting repair plausibility:** No repair is needed. Each local step has a concrete unchanged interface and a nonvacuous mechanism source. Removing or deriving the primitive catalog certificate would change the theorem contract and is expressly outside this conditional branch, but that open issue is not a defect in the attempted theorem.

No `sketch/interface defect` or `idea/theorem-contract defect` is present in the accepted conditional theorem route.

## Global Gaps And Hard Steps

None. At theorem-diagnostic granularity, all five accepted steps have concrete, source-adequate, scope-compatible interfaces and compose to the exact conditional goal. Each step still requires its independent proof artifact and review before it can serve as proof evidence, but no unresolved mathematical link or routing blocker is exposed here.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, generated-output flow, theorem scope, dependence, or conclusion.

## Suggested Routing

None

Continue with all five proof steps in dependency order, `step_001` through `step_005`; no step requires priority repair before local proof work.
