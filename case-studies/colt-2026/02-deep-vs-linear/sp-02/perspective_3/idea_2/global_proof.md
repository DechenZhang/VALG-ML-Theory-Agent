# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_3/idea_2`.
- Global proof attempt: 1, under sketch attempt 1.
- Setting: `perspective_3/idea_2/setting.md`, SHA-256 `4abbe2abefd18488f3ec1175566fb0c16c903b0e429738fcde74b71bcc6cef88`.
- Reviewed sketch: `perspective_3/idea_2/proof_sketch.md`, sketch attempt 1, SHA-256 `109f2014f7e3242369d8ff70b4fbbcb284401f3e231eef40aaabbc95e26e9a41`.
- Reviewed sketch review: `perspective_3/idea_2/proof_sketch_review.md`, SHA-256 `27e0be6e65a95376d8941fabc467b1525147d0c5842c2c816022fb58ace2b9e9`.
- Sketch review status: `ACCEPTED`, viability score 10, smallest retry target `None`, and retry mode `none`.
- Binding accepted Step IDs and dependencies: `step_001` (no step dependency), `step_002` <- `step_001`, `step_003` <- `step_002`, `step_004` <- `step_003`, `step_005` <- `step_004`, and `step_006` <- `step_005`.
- This diagnostic preserves the accepted conditional theorem, all arbitrary-domain, distribution, target, policy, transcript, and learner-tape quantifiers, the deterministic exact-sign target, the boundary-corrected polynomial catalog budget, and every accepted output interface. It does not add a catalog assumption beyond the setting or replace the conditional result by a catalog-free claim.

## Status

COMPLETE_DRAFT

## Attempted Theorem Claim

This is exact-goal mode. Let \(X\) be an arbitrary domain (possibly empty), let \(H\subseteq\{+1,-1\}^{X}\) be nonempty, and let a single randomized adaptive unrestricted-SQ learner satisfy `assump:source-parameter-regime`, `assump:finite-horizon-randomized-adaptivity`, `assump:bounded-unrestricted-queries`, `assump:full-adversarial-tolerance`, `assump:finite-terminal-catalog`, `assump:universal-expected-accuracy`, and `assump:polynomial-catalog-budget`. Write

\[
\rho=1-2\varepsilon>\frac12,
\qquad
G=\{g_1,\ldots,g_L\},
\qquad
\phi_G(x)=(g_1(x),\ldots,g_L(x)).
\]

The catalog and its selector are fixed before \(D,h,\pi\), replies, and learner coins. For every \(h\in H\), the attempted conclusion is the existence of one \(w_h\in\Delta_L\), depending on \(h\), the fixed catalog, and the fixed accuracy parameter but on no distribution, valid policy, transcript, or tape realization, such that

\[
  \forall x\in X,
  \qquad h(x)\langle w_h,\phi_G(x)\rangle\ge \rho>\frac12.
\]

Consequently the same fixed map is a deterministic common representation and

\[
  \operatorname{dc}(H)\le L
  \le B\left(1+\frac{m}{\tau^2}\right)^k.
\]

The statement is conditional on the static finite terminal catalog and its explicit polynomial budget. It is deterministic, fixed-horizon, exact on the original domain, and uniform over every distribution, target, and full continuous tolerance-valid nonanticipating policy. It does not assert that an arbitrary unrestricted response tree has a finite catalog or that the catalog-free source problem has a polynomial or linear bound.

## Whole-Proof Draft

Fix the learner specification, its tape law \(\nu\), the catalog \(G\), \(m,\tau,\varepsilon,B,k\), and a target \(h\in H\). The feature map is fixed at this point from \(G\) alone; the target-dependent weight will be constructed below. Every use of a distribution or policy is local to the correlation argument and is eliminated before the weight is selected.

### Block B1: Measurable execution and finite terminal law (`step_001`)

Fix an actual distribution \(D\) on \(X\) and a valid policy \(\pi\in\Pi(D,h)\). On the random-tape space define

\[
 Z_{D,h,\pi}(u):=J(e(u;D,h,\pi))\in[L].
\]

The setting declares the execution variables and protocol selectors measurable. The adaptive execution is obtained by recursively composing the measurable taped learner, the revealed transcript, and the measurable nonanticipating selector \(\pi\), and the primitive finite-terminal-catalog condition supplies the final measurable index \(J\). Thus each event \(E_i=\{u:Z_{D,h,\pi}(u)=i\}\) is measurable. The events form a finite partition, so

\[
 p_i(D,h,\pi):=\nu(E_i)\ge0,
 \qquad \sum_{i=1}^L p_i(D,h,\pi)=1.
\]

The selector identity on each event is exact:

\[
 u\in E_i\quad\Longrightarrow\quad
 \widehat h_{u;D,h,\pi}=g_i.
\]

Therefore, for every bounded functional \(f\) of the terminal predictor,

\[
 \mathbb E_{u\sim\nu} f(\widehat h_{u;D,h,\pi})
 =\sum_{i=1}^L p_i(D,h,\pi)f(g_i). \tag{B1.1}
\]

Taking \(f(g)=\mathcal L_{D,h}(g)\) and using the binary loss-correlation identity gives both exact finite mixtures

\[
 \mathbb E_u\mathcal L_{D,h}(\widehat h_{u;D,h,\pi})
 =\sum_i p_i\mathcal L_{D,h}(g_i),
 \qquad
 \mathbb E_u\mathbb E_{x\sim D}[h(x)\widehat h_{u;D,h,\pi}(x)]
 =\sum_i p_i\mathbb E_D[h g_i]. \tag{B1.2}
\]

All expectations are bounded; no response discretization, finite transcript tree, or interchange beyond finite partition algebra is used. Arbitrary real replies, label-independent query components, random query choices, and early stopping can change \(E_i\) and hence \(p\), but cannot create an output outside \(G\). At \(T=0\), \(e(u;D,h,\pi)\) is still a complete execution and \(J\) still has a value. At \(m=0\), the same statement is the empty-transcript case.

The universal accuracy premise would be vacuous if \(\Pi(D,h)\) were empty, so the sketch also supplies a nonemptiness witness whenever \(D\) exists. After each issued query \(q\), return its exact center \(\mu_q(D,h)=\mathbb E_D q(x,h(x))\). It belongs to \(I_q(D,h)\) by definition, depends only on the revealed query/history, and is nonanticipating. Under the setting's blanket measurability convention for protocol selectors and random variables, this center rule is a valid policy. A randomized oracle can be fixed tape-by-tape; the subsequent argument applies to each resulting deterministic policy. This center rule is used only for nonemptiness; (B1.1)-(B1.2) hold for an arbitrary \(\pi\).

### Block B2: Policywise accuracy becomes a policy-free catalog correlation (`step_002`)

For the fixed \(D,h,\pi\), set \(c_i(D,h)=\mathbb E_{x\sim D}[h(x)g_i(x)]\). By (B1.2), the premise \(\mathbb E_u\mathcal L_{D,h}(\widehat h)\le\varepsilon\), and the exact identity \(c_i=1-2\mathcal L_{D,h}(g_i)\),

\[
 \begin{aligned}
 \sum_i p_i c_i
 &=1-2\sum_i p_i\mathcal L_{D,h}(g_i)\\
 &=1-2\mathbb E_u\mathcal L_{D,h}(\widehat h_{u;D,h,\pi})\\
 &\ge 1-2\varepsilon=\rho.
 \end{aligned} \tag{B2.1}
\]

Since \(p\in\Delta_L\), a convex average cannot exceed the maximum coordinate:

\[
 \max_{i\in[L]}c_i(D,h)
 \ge \sum_i p_i c_i(D,h)
 \ge\rho. \tag{B2.2}
\]

This conclusion is independent of \(\pi\), even though the witnessing \(p(D,h,\pi)\) is not. The bound is established for every valid policy first, and the center policy guarantees that there is at least one policy whenever an actual \(D\) exists. Thus (B2.2) holds for every \(D,h\) in the nonempty-domain case and supplies exactly the payoff lower bound needed below. No tolerance error is subtracted: the oracle response appears nowhere in the loss/correlation identity after the terminal output has been factored through \(G\).

At \(\varepsilon=0\), (B2.1) gives value \(1\) exactly. At \(m=0\), \(T=0\), or \(L=1\), the same algebra applies without a first query or a nontrivial simplex. The restriction \(\varepsilon<1/4\) supplies the strict reserve \(\rho>1/2>0\), which will be used only at the sign bridge.

### Block B3: Exact finite minimax and simultaneous finite constraints (`step_003`)

Fix a finite \(F\subseteq X\) and retain the target \(h\). If \(F=\varnothing\), define \(K_{h,F}=\Delta_L\) directly; it is nonempty because \(L\ge1\). Suppose now \(F\ne\varnothing\). For every \(r=(r_x)_{x\in F}\in\Delta_F\), let \(D_r\) be the distribution supported on \(F\) with masses \(r_x\). Applying (B2.2) to \(D_r\) yields

\[
 \max_{i\in[L]}\sum_{x\in F}r_x h(x)g_i(x)\ge\rho. \tag{B3.1}
\]

Define the finite payoff matrix \(A\in\mathbb R^{F\times[L]}\) by \(A_{xi}=h(x)g_i(x)\). Because \(F\) and \([L]\) are nonempty finite sets, \(\Delta_F\) and \(\Delta_L\) are nonempty compact convex simplices, and \(r^TAw\) is bilinear and continuous. The finite matrix minimax theorem (equivalently finite LP strong duality) in this row/column convention gives the exact order reversal

\[
 \begin{aligned}
 \min_{r\in\Delta_F}\max_{i\in[L]}r^TAe_i
 &=\min_{r\in\Delta_F}\max_{w\in\Delta_L}r^TAw\\
 &=\max_{w\in\Delta_L}\min_{r\in\Delta_F}r^TAw\\
 &=\max_{w\in\Delta_L}\min_{x\in F}\sum_{i=1}^Lw_i h(x)g_i(x).
 \end{aligned} \tag{B3.2}
\]

The first equality holds because a linear function of \(w\) over \(\Delta_L\) attains its maximum at a vertex \(e_i\). The last equality holds because, for fixed \(w\), a linear function of \(r\) over \(\Delta_F\) attains its minimum at a vertex \(e_x\). Combining (B3.1) with (B3.2), the right-hand value is at least \(\rho\). The map \(w\mapsto\min_{x\in F}\sum_iw_i h(x)g_i(x)\) is the minimum of finitely many continuous affine functions, hence continuous on compact \(\Delta_L\); its maximum is attained. Choose an attained maximizer \(w^{h,F}\). Then

\[
 h(x)\sum_{i=1}^Lw^{h,F}_i g_i(x)\ge\rho
 \qquad\text{for every }x\in F,
\]

so \(w^{h,F}\in K_{h,F}\) and \(K_{h,F}\ne\varnothing\). The maximizer is a finite-game witness only; it need not equal any policywise output law and is not required to be coherent as \(F\) varies.

### Block B4: Compact finite-intersection globalization on an arbitrary domain (`step_004`)

For fixed \(h\), each constraint set

\[
 K_{h,F}=\{w\in\Delta_L:h(x)\langle w,\phi_G(x)\rangle\ge\rho\text{ for every }x\in F\}
\]

is closed in \(\Delta_L\), being a finite intersection of inverse images of closed half-lines under affine coordinate maps. The parameter space \(\Delta_L\subset\mathbb R^L\) is compact because \(L<\infty\) and \(L\ge1\). For any finite family \(F_1,\ldots,F_n\) of finite subsets of \(X\),

\[
 \bigcap_{j=1}^nK_{h,F_j}=K_{h,\cup_{j=1}^nF_j}. \tag{B4.1}
\]

The union is finite, so Block B3 (or the direct \(F=\varnothing\) case) makes the right-hand side nonempty. Thus the closed family \(\{K_{h,F}:F\subseteq X,\ F\text{ finite}\}\) has the finite-intersection property. Compactness of \(\Delta_L\) gives

\[
 \bigcap_{F\subseteq X,\ F\text{ finite}}K_{h,F}\ne\varnothing. \tag{B4.2}
\]

Choose \(w_h\) in this intersection. For every \(x\in X\), the singleton \(\{x\}\) is finite, so \(w_h\in K_{h,\{x\}}\) and

\[
 h(x)\langle w_h,\phi_G(x)\rangle\ge\rho. \tag{B4.3}
\]

This is the only arbitrary-domain scope upgrade. It does not require a topology or probability measure on \(X\), a sequence of finite witnesses, or a coherent policywise output distribution. If \(X=\varnothing\), the family contains only the empty constraint set (and all constraints are vacuous), its intersection is \(\Delta_L\), and any \(w_h\in\Delta_L\) works; no distribution on \(X\) is invoked.

### Block B5: Exact score-to-sign bridge and common map (`step_005`)

The catalog feature map is primitive and fixed:

\[
 \langle w_h,\phi_G(x)\rangle
 =\sum_{i=1}^Lw_{h,i}g_i(x).
\]

This is exactly the score used in (B4.3), not a transformed or surrogate object. Since \(\rho>1/2>0\), (B4.3) implies

\[
 h(x)=+1\Rightarrow \langle w_h,\phi_G(x)\rangle\ge\rho>0,
 \qquad
 h(x)=-1\Rightarrow \langle w_h,\phi_G(x)\rangle\le-\rho<0.
\]

Therefore \(h(x)\langle w_h,\phi_G(x)\rangle>0\) for every \(x\), with no tie convention. The map \(\phi_G\) depends only on the fixed catalog, while \(w_h\) was selected from constraints involving only \(h,G,\rho\); all \(D,\pi\), replies, transcripts, and tape variables have disappeared. At \(\varepsilon=0\), the same chain retains margin \(1\), not just positivity. At \(L=1\), \(\Delta_L\) has its unique coordinate and the argument is unchanged. For empty \(X\), the sign condition is vacuous.

### Block B6: Dimension and polynomial catalog rate (`step_006`)

The pair \((\phi_G,w_h)\) is a valid deterministic sign representation in dimension \(L\) under the definition of \(\operatorname{dc}(H)\). Since \(H\) is nonempty, the construction is made for every \(h\in H\), and hence

\[
 \operatorname{dc}(H)\le L. \tag{B6.1}
\]

The primitive budget is an exact pre-run inequality with no hidden constants:

\[
 1\le L\le B\left(1+\frac{m}{\tau^2}\right)^k. \tag{B6.2}
\]

Transitivity of (B6.1)-(B6.2) gives the advertised rate. At \(m=0\), this is \(\operatorname{dc}(H)\le L\le B\); for every finite \(\tau>0\), including large \(\tau\), the leading \(1\) remains; \(L=1\) and \(B=1\) are meaningful. No false no-base \(Cm/\tau^2\) specialization is introduced.

### Final assembly

Block B1 legally factors every terminal execution through the fixed finite catalog and exports the exact mixture interface. Block B2 uses the universal expected-error premise for the same arbitrary policy to produce a policy-free correlation lower bound. Block B3 applies that bound to every finite-support distribution and uses the exact finite minimax order to produce one simplex vector for all points of each finite set. Block B4 globalizes those finite certificates in the one fixed compact simplex, preserving the margin and all-domain quantifiers. Blocks B5 and B6 identify the score with the fixed coordinate map, convert its positive signed margin to strict pointwise signs, and append the primitive polynomial catalog budget. All generated outputs are consumed only after their producer and along the accepted acyclic dependency chain; no theorem-facing condition is assumed in place of a derived result.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| --- | --- | --- | --- | --- | --- |
| B1: measurable execution and terminal law | Produce a finite probability vector and exact loss/correlation mixtures for every \(D,h,\pi\), and witness policy-class nonemptiness | `step_001` | None | `assump:finite-horizon-randomized-adaptivity`, `assump:bounded-unrestricted-queries`, `assump:full-adversarial-tolerance`, `assump:finite-terminal-catalog`, setting measurability convention | Step-local verification of recursive execution measurability and center-policy measurability under the stated convention |
| B2: correlation extraction | Convert universal expected accuracy into a \(\pi\)-free catalog payoff lower bound | `step_002` | B1 | `assump:source-parameter-regime`, `assump:universal-expected-accuracy` | Step-local finite mixture algebra and max-over-average inequality |
| B3: finite game exactification | Produce \(K_{h,F}\ne\varnothing\) for every nonempty finite \(F\), with exact minimax order and attainment | `step_003` | B2 | `assump:finite-terminal-catalog`, `assump:universal-expected-accuracy` | Step-local finite minimax/LP-duality derivation and vertex attainment; empty \(F\) direct branch |
| B4: compact FIP globalization | Produce one \(w_h\) satisfying all point constraints on arbitrary \(X\) | `step_004` | B3 | `assump:finite-terminal-catalog` | Step-local closedness, compactness, FIP theorem, and empty-domain branch |
| B5: score-to-sign bridge | Turn the global catalog score into an exact strict-sign witness with a fixed map | `step_005` | B4 | `assump:source-parameter-regime`, `assump:finite-terminal-catalog` | Step-local coordinate identity and two-case sign implication |
| B6: dimension/rate closure | Close \(\operatorname{dc}(H)\le L\le B(1+m/\tau^2)^k\) with all boundary regimes | `step_006` | B5 | `assump:source-parameter-regime`, `assump:polynomial-catalog-budget` | Step-local definition unfolding and exact inequality transitivity |
| Final assembly | State the conditional theorem with its original quantifiers and progress label | Direct assembly after B1-B6 | B6 and all earlier outputs | All seven setting assumptions | None at theorem-diagnostic level |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| --- | --- | --- | --- | --- |
| `step_001` | B1: measurable terminal selector, \(p(D,h,\pi)\in\Delta_L\), exact mixture identities, and nonempty \(\Pi(D,h)\) | No dependency | Define measurable \(Z=J\circ e\); prove finite partition; verify center replies lie in every tolerance interval and preserve nonanticipation; handle \(T=0\), \(m=0\), randomized-policy fixing | Output law is generated, not assumed; all adaptive/query complexity remains inside \(e\) |
| `step_002` | B2: policywise mixture correlation and policy-free best-coordinate lower bound | Consumes B1 | Apply exact \(1-2\mathcal L\) identity; use \(\sum_i p_i=1\) and max-over-average; preserve universal policy quantifier and \(\rho\) exactly | No \(\tau\)-error or probability conversion appears |
| `step_003` | B3: finite \(K_{h,F}\) feasibility and exact minimax quantifier reversal | Consumes B2 for every \(D_r\) | Build \(A_{xi}=h(x)g_i(x)\); derive \(\min_r\max_i=\max_w\min_x\) in the displayed order; prove attainment; route \(F=\varnothing\) directly | The game vector is not identified with a policy output law |
| `step_004` | B4: closed-set FIP and arbitrary-domain global weight | Consumes B3 for every finite union | Prove \(K_{h,F}\) closed; verify finite-intersection union identity; apply compact FIP in \(\Delta_L\); handle \(X=\varnothing\) | Compactness is in fixed finite-dimensional catalog coordinates, not in \(X\) |
| `step_005` | B5: fixed \(\phi_G\), exact margin, strict signs | Consumes B4 | Identify score and inner product; use \(\rho>0\); check \(\varepsilon=0\), \(L=1\), empty \(X\) | Common-map independence is explicit |
| `step_006` | B6 and final quantitative assembly | Consumes B5 and primitive budget | Unfold \(\operatorname{dc}\); append \(L\le B(1+m/\tau^2)^k\) verbatim; check \(m=0\), finite \(\tau\), \(B=1\) | No hidden constant or no-base simplification |

## Dependency And Assumption Audit

| Condition or object | Classification | Producer and use |
| --- | --- | --- |
| \(m,\tau,\varepsilon,\rho,B,k\) ranges and \(\rho>1/2\) | Primitive condition | `assump:source-parameter-regime`; used by B2, B5, B6 |
| Fixed learner, tape law, adaptive unrestricted queries, full tolerance intervals | Primitive conditions | `assump:finite-horizon-randomized-adaptivity`, `assump:bounded-unrestricted-queries`, `assump:full-adversarial-tolerance`; used by B1 |
| Measurability of execution variables, selectors, and random variables | Primitive setting convention | Basic setup and selector clause; used by B1, not inferred from finite support |
| Static \(G\), selector \(J\), \(L\ge1\) | Primitive condition | `assump:finite-terminal-catalog`; used by B1, B3-B6 |
| Universal expected accuracy for every \(D,h,\pi\) | Primitive condition | `assump:universal-expected-accuracy`; used by B2 and then B3 |
| \(p(D,h,\pi)\in\Delta_L\) and exact mixture equations | Accepted derived conclusion | B1, consumed only by B2 |
| Policy-class nonemptiness for an actual \(D\) | Accepted derived conclusion | Center policy in B1; prevents a vacuous universal policy premise |
| Policy-free \(\max_i\mathbb E_D[hg_i]\ge\rho\) | Accepted derived conclusion | B2, instantiated for every \(D_r\) in B3 |
| \(K_{h,F}\ne\varnothing\) for finite \(F\) | Accepted derived conclusion | B3, consumed by B4; not a theorem assumption |
| Global \(w_h\) and all-domain margin | Accepted derived conclusion | B4, consumed by B5 |
| Strict sign representation and dimension chain | Accepted derived conclusions | B5-B6, final assembly |
| A local assumption of finite-game duality or compact FIP | Local proof tool/hypothesis only | Its finite-dimensional hypotheses are checked in B3/B4; it is not exported as a theorem-facing assumption |

No derived invariant, good event, trajectory membership, stability condition, recurrence, or response-tree finiteness is hidden in the attempted theorem assumptions. The only conditional mechanism is the explicitly stated finite terminal catalog and its primitive budget.

## Citation And Tool Audit

The two papers named in the sketch are lineage sources only: COLT 2017 (*A General Characterization of the Statistical Query Complexity*) supports the protocol terminology, and JMLR 2002 (*Limitations of Learning via Embeddings in Euclidean Half Spaces*) supports the target lineage. No theorem-critical conclusion is attributed to either paper, so no external statement label or source-object translation is consumed by this diagnostic.

| Tool or derivation | Current-branch objects and hypotheses | Conclusion needed and affected block | Convention/interface check |
| --- | --- | --- | --- |
| Measurable finite pushforward (direct derivation) | \(Z=J(e(U;D,h,\pi))\in[L]\); measurability is a setting convention; \(J\) is defined on every valid complete execution | \(p_i=\nu(Z=i)\), \(\sum_i p_i=1\), and (B1.1)-(B1.2), B1/`step_001` | Same tape law, execution, policy visibility, and terminal catalog as setting; no response-grid or finite-tree assumption is imported. Center policy uses the same full interval convention. |
| Binary loss-correlation identity (direct algebra) | \(h,g_i\in\{+1,-1\}^X\), \(D\) a distribution | \(\mathcal L_{D,h}(g)=(1-\mathbb E_D[hg])/2\), B2/`step_002` | Exact loss and correlation on the same \(D,h,g_i\); boundedness makes expectations valid. |
| Max dominates a simplex average (standard finite inequality) | \(p\in\Delta_L\), \(c_i\in[-1,1]\) | \(\max_i c_i\ge\sum_i p_i c_i\), B2 | No quantifier or object translation; policy dependence remains only in \(p\). |
| Finite matrix minimax / finite LP strong duality | Nonempty finite \(F,[L]\); \(\Delta_F,\Delta_L\) compact convex; \(A_{xi}=h(x)g_i(x)\); payoff \(r^TAw\) bilinear | Exact equality (B3.2), value attainment, and \(K_{h,F}\ne\varnothing\), B3/`step_003` | Rows are points \(x\), columns are catalog indices \(i\), and the order is \(\min_r\max_i=\max_w\min_x\). A local proof or current-notation restatement must verify these hypotheses; no infinite-game theorem is used. |
| Vertex minimum/maximum on finite simplices | Linear forms \(r\mapsto r^TAw\) and \(w\mapsto r^TAw\) | Replace \(\max_{w\in\Delta_L}\) by \(\max_i\) and \(\min_{r\in\Delta_F}\) by \(\min_x\), B3 | Same finite coordinates and payoff; extrema are attained. |
| Closed-set finite-intersection theorem in compact \(\Delta_L\) | \(K_{h,F}\) closed; every finite union constraint set nonempty; \(\Delta_L\) compact | (B4.2), B4/`step_004` | Compactness is finite-dimensional Heine-Borel; no topology or measure on \(X\) is required. |
| Coordinate identity and strict-sign algebra | \(\phi_G(x)=(g_i(x))_i\), \(w_h\in\Delta_L\), \(h(x)s_{w_h}(x)\ge\rho>0\) | Exact deterministic sign witness, B5/`step_005` | Produced score and consumed inner product are identical; no transformed metric or tie convention. |
| Definition of \(\operatorname{dc}\) and inequality transitivity | B5's \(L\)-coordinate map and primitive budget | B6/final | Exact definition uses one map for all \(h\) and strict pointwise products; \(B,k\) remain explicit. |

These tools are standard finite/current-notation mechanisms whose hypotheses and object mappings are exposed above. Each remains a step-local proof obligation; this diagnostic does not treat a tool name alone as proof evidence.

## Quantitative Dependence Audit

- Exposed variables in the margin claim: \(\varepsilon\) and \(\rho=1-2\varepsilon\), with catalog dimension \(L\). The lower bound is exact and does not hide dependence on \(D,h,\pi\), replies, transcripts, or coins.
- Exposed variables in the dimension claim: \(L,B,k,m,\tau\) and \(\operatorname{dc}(H)\); \(\varepsilon\) remains visible in the separate margin statement. \(B\ge1\) and integer \(k\ge1\) are fixed family constants independent of all instance and execution variables.
- Hidden constants: none. In particular, \(B,k\) are displayed rather than absorbed into an unspecified constant.
- Fixed quantities: the learner specification, tape law, catalog convention, and family constants \(B,k\); \(h\) is fixed only while constructing \(w_h\). No asymptotic limit is taken.
- Probability mode: deterministic conclusion. The premise expectation is only over learner tape \(U\sim\nu\); finite partition algebra removes it. The policy, distribution, and target quantifiers are universal, and no high-probability or expectation conversion is made.
- Horizon mode: fixed finite \(m\), with every stopping depth \(T\le m\), including \(m=0\) and \(T=0\). No all-time or asymptotic upgrade occurs.
- Norm/metric mode: exact pointwise signed scalar margin and exact deterministic dimension complexity; no average, surrogate, or probabilistic embedding metric.
- Auxiliary tolerances: none are introduced. \(\tau\) appears only in the primitive catalog budget; no response approximation or accumulated \(\tau\)-term is generated.
- Public specialization: `step_006` copies \(L\le B(1+m/\tau^2)^k\) verbatim. There is no dropped term, absorption, threshold choice, probability conversion, or simplified corollary requiring a separate rate bridge.
- Baseline reduction: \(\varepsilon=0\) gives \(\rho=1\) and retains the exact margin/sign conclusion; \(m=0\) gives \(L\le B\); \(L=1\) and every finite \(\tau>0\) remain in scope. The leading base term is preserved, and the false \(Cm/\tau^2\) boundary rate is not claimed.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Measurable terminal index, \(p(D,h,\pi)\in\Delta_L\), exact mixture law, and nonempty policy class | Generated output law / producer for correlation | Every actual \(D,h\), every valid \(\pi\), all \(T\le m\) | \(Z=J\circ e\); \(p_i=\nu(Z=i)\); finite partition identity (B1.1) | Primitive measurable \(J\), execution, and tape law; exact terminal factorization | Continuous replies, adaptive queries, random queries, and stopping alter partition masses only | No iterative defect; all rounds are summarized by one completed execution, so the output law is exact for fixed finite horizon | Algebraic coupling / finite disintegration | `assump:finite-terminal-catalog` and setting measurability; \(T=0,m=0\) are included; no response grid is needed | A finite measurable selector exactly supports a finite law and bounded-function mixture | Produced and consumed objects are the same catalog terminal law; residual zero in loss/correlation | `step-local` | Primitive execution/selector precedes \(p\); path B1 -> B2 does not assume accuracy or representation | At \(T=0\) and \(m=0\), \(J\) still returns an index; center reply \(\mu_q\in I_q\) is active whenever a query exists; \(L=1\) is trivial | \(\sum_i p_i=1\) and eventwise equality imply (B1.1)-(B1.2); no defect is accumulated | Measurable tape law, learner, policy, selector \(J\), full intervals | \(p\) and mixture identities | Empty \(X\) needs no distribution; arbitrary continuous reply trees are still accepted; randomized oracle is fixed tape-by-tape | Without finite measurable \(J\), the finite-simplex interface would be unavailable |
| Policywise mixture correlation and \(\max_i\mathbb E_D[hg_i]\ge\rho\) | Signed lower bound / payoff source for finite games | Every \(D,h,\pi\), then policy-free for every \(D,h\) | \(\sum_i p_i c_i=1-2\mathbb E_U\mathcal L(\widehat h)\ge1-2\varepsilon\) and \(\max_i c_i\ge\sum_i p_i c_i\) | Exact reserve \(\rho=1-2\varepsilon>1/2\) | Policy-dependent \(p\), arbitrary replies, and tolerance; none enters as an additive error | Pointwise in \((D,h,\pi)\); no round/policy accumulation | Structural lower comparison and convex-average domination | Primitive universal accuracy plus B1; \(\rho>1/2\) excludes nonpositive-margin boundary | Exact binary algebra has the required signed-correlation content | Same \(D,h,g_i\) occur in source and target; residual zero at scale \(\rho\) | `step-local` | Primitive accuracy and B1 precede B2; path B1 -> B2 -> B3 is acyclic | Zero-query/stationary execution needs no update; \(\varepsilon=0\) gives value 1; center policy only prevents vacuity | \(\max_i c_i\ge\sum_i p_i c_i\ge\rho\) | `assump:universal-expected-accuracy`, parameter regime | Policy-free correlation lower bound | \(m=0,T=0,L=1,\varepsilon=0\), and \(\varepsilon\uparrow1/4\) retain the exact inequality | If \(\rho\le0\), positivity for signs would fail; this is excluded by the primitive range |
| \(K_{h,F}\ne\varnothing\) for each nonempty finite \(F\), with \(K_{h,\varnothing}=\Delta_L\) | Finite simultaneous feasibility / exact quantifier reversal | Fixed \(h\), every finite \(F\subseteq X\) | \(A_{xi}=h(x)g_i(x)\); value chain (B3.1)-(B3.2) | Lower game value \(\rho\) from B2 and finite bilinear minimax | Best catalog index may vary with \(r\); policywise laws need not be coherent | Simultaneity is one finite game; violation on \(F\) is zero rather than summed | Algebraic coupling and structural lower comparison | Finite matrix minimax/LP duality with \(F\ne\varnothing,L\ge1\); empty \(F\) explicitly excluded from \(\Delta_F\) | Current row/column payoff theorem exactly supplies \(\min_r\max_i=\max_w\min_x\) | \(w\in\Delta_L\) has exactly the consumed score \(h(x)s_w(x)\); residual zero | `step-local` | B2 supplies the game value before feasibility; path B2 -> B3 -> B4 is noncircular | \(F=\varnothing\) uses \(\Delta_L\) directly; singleton \(F\), \(L=1\), and \(\rho=1\) attain exactly | \(\min_r\max_i=\max_w\min_x\ge\rho\), and an attained \(w\) satisfies every row | B2 correlation, finite \(F,L\), binary matrix entries | Finite \(K_{h,F}\) certificates | No domain measure on all \(X\) is needed; only finite-support \(D_r\) for nonempty \(F\) | Without finite minimax or B2 for every \(D_r\), one common finite witness need not exist |
| One \(w_h\in\bigcap_{F\ {\rm finite}}K_{h,F}\) with all-domain margin | Global membership / arbitrary-domain scope upgrade | All \(x\in X\), arbitrary cardinality of \(X\) | \(K_{h,F}\) closed and \(\bigcap_jK_{h,F_j}=K_{h,\cup_jF_j}\); compact FIP (B4.1)-(B4.2) | Compact fixed simplex \(\Delta_L\) and exact finite feasibility | Incoherent local witnesses and uncountably many constraints | For nonempty \(F\), the violation \(\delta_F(w)=\max_{x\in F}(\rho-h(x)s_w(x))_+\) has minimum zero; set \(\delta_\varnothing\equiv0\). Exact union identity and compact FIP control the whole family without additive leakage | Algebraic coupling with compact closed-set FIP | Standard finite-dimensional compactness and B3; \(X\) has no required topology; empty \(X\) is direct | Closed-set FIP is exactly adequate for a global member of the same constraint sets | Produced \(w_h\) is consumed unchanged; every target residual \(\rho-h(x)s_{w_h}(x)\le0\) | `step-local` | B3 produces each finite set before B4; compactness does not assume global membership | For \(X=\varnothing\), intersection is \(\Delta_L\); for arbitrary infinite \(X\), no sequence or measure is used; \(L=1,\rho=1\) unchanged | Finite nonempty intersections imply total intersection in compact \(\Delta_L\); singleton sets export every point constraint | B3 finite certificates, finite-dimensional topology | Global \(w_h\) and all-domain margin | Empty and arbitrary uncountable \(X\), \(L=1\), and \(\rho=1\) preserve the exact conclusion | If the parameter set were noncompact or finite feasibility failed, FIP would not give the target; both are excluded by the catalog condition and B3 |
| Fixed coordinate map with \(h(x)\langle w_h,\phi_G(x)\rangle>0\) | Structural positive-margin and exact sign bridge | Every \(h\in H,x\in X\) | \(\langle w_h,\phi_G(x)\rangle=s_{w_h}(x)\), then (B4.3) and \(\rho>0\) | Strict reserve \(\rho>1/2\) and exact coordinate identity | No transformed object, approximation, or tie residual | Pointwise conversion; no accumulated defect | Structural lower comparison | Primitive \(G\), B4, and parameter regime; nonpositive-margin branch excluded by \(\varepsilon<1/4\) | Positive signed score is exactly the claim class required by \(\operatorname{dc}\) | Same score and target inner product; residual zero and threshold is zero | `step-local` | B4 produces margin before B5; B5 is not used to prove B4 | \(\varepsilon=0\) retains margin 1; \(L=1\) and empty \(X\) are exact/vacuous | \(h(x)s_{w_h}(x)\ge\rho>0\Rightarrow h(x)=\operatorname{sign}(s_{w_h}(x))\) | Parameter regime, catalog map, B4 weight | Exact sign certificate | At \(\varepsilon=0\), \(L=1\), and empty \(X\), the margin/sign statement is exact or vacuous as required | If the lower margin vanished, ties/sign failure could occur; primitive \(\rho>1/2\) prevents it |
| \(\operatorname{dc}(H)\le L\le B(1+m/\tau^2)^k\) | Explicit structural rate / final theorem closure | Fixed finite horizon, all allowed \(m,\tau,L,B,k\) | Strict \(L\)-coordinate representation plus primitive catalog inequality | Exact sign representation and leading base \(1\) | A no-base rate has uncontrolled \(m=0\)/large-\(\tau\) behavior and is not used | Fixed-horizon direct inequality chain; no limiting or repeated defect | Algebraic coupling / structural upper comparison | Definition of \(\operatorname{dc}\), B5, and `assump:polynomial-catalog-budget`; catalog-free branch is outside the conditional theorem | An explicit \(L\)-coordinate strict map supplies exactly \(\operatorname{dc}\le L\); the primitive budget supplies only the claimed second inequality | Representation and catalog dimension are the same \(L\); zero residual, rounding, or hidden term | `step-local` | B5 precedes B6; budget is primitive and does not assume representability | At \(m=0\), no update is required and bound is \(L\le B\); every finite \(\tau>0\), \(L=1\), \(B=1\) remain valid | Direct transitivity of two exact inequalities; no absorption | Primitive budget and parameter range | B5 representation, final dimension chain | No-base \(Cm/\tau^2\) and catalog-free conclusions are explicitly excluded | Without the primitive budget, only \(\operatorname{dc}(H)\le L\) follows; this is the stated conditional boundary |
| Exact/noiseless margin-one baseline and zero-query/base-correct rate | Baseline invariance / theorem closure | \(\varepsilon=0\), \(m=0\), \(L=1\), every finite \(\tau>0\) | Same B1-B6 chain with \(\rho=1\) and \(B(1+0/\tau^2)^k=B\) | Zero-error premise, zero-slack minimax/FIP, selector at \(T=0\), leading base term | No baseline remainder is introduced; no no-base simplification is attempted | Equality-preserving, fixed-horizon, and nonaccumulating | Explicitly conditional target plus algebraic transitivity | Primitive zero-error, selector, and catalog budget; no positive-depth or small-\(\tau\) boundary is required | Each source preserves the original exact target, not merely positivity | Every bridge has zero residual; dimension is exactly catalog dimension | `step-local` | Baseline sources precede their consumers; no step assumes the final baseline | At \(m=T=0\), \(J\) remains defined; at large finite \(\tau\), the leading \(1\) remains; \(L=1\) is the unique coordinate | \(1-2\cdot0=1\), minimax/FIP lose no margin, and \(L\le B\) follows verbatim | Zero-error accuracy, finite selector, primitive budget | Baseline margin/sign and rate | The false \(Cm/\tau^2\) claim and catalog removal are outside scope | Without zero-error or the base-correct budget, the inherited baseline would be weakened; both sources are explicit |

Every row has a concrete mechanism source, source-to-claim match, same-target residual check, noncircular producer path, and boundary trace. No row is a category-only all-time argument: the only accumulated family is the finite-constraint family in B4, whose exact union identity and zero-violation finite certificates supply the mechanism-specific control relation.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Measurable \(p(D,h,\pi)\in\Delta_L\) and exact terminal mixture | B1 / `step_001`; primitive \(J,e,\nu\) | Measurable execution and selector, finite \(L\), event partition | Continuous/adaptive replies and stopping affect only event masses; no outside-catalog or approximation defect | Same terminal predictor law and catalog law; residual zero | Finite partition disintegration (B1.1) | Simplex normalization; no positive margin needed | B2 / `step_002` | valid |
| \(\sum_i p_i\mathbb E_D[hg_i]\ge\rho\) and \(\max_i\mathbb E_D[hg_i]\ge\rho\) | B2 / `step_002`; B1 plus accuracy | \(p\in\Delta_L\), binary loss identity, \(\mathbb E_U\mathcal L\le\varepsilon\) | \(p\) is policy-dependent but the maximum is not; tolerance creates no residual | Same \(D,h,g_i\) in source and target, residual zero | \(1-2\mathbb E\mathcal L\ge1-2\varepsilon\), then max dominates average | \(\rho=1-2\varepsilon>1/2\) | B3 for every finite-support \(D_r\) | valid |
| \(K_{h,F}\ne\varnothing\) | B3 / `step_003`; finite minimax | Correlation lower bound for every \(r\in\Delta_F\), finite matrix \(A\), compact simplices | Maximizing index can vary with \(r\); exact minimax, not coherent \(p(r)\), controls this | Game vector is already the consumed \(w\in\Delta_L\), payoff exactly \(h(x)s_w(x)\), residual zero | \(\min_r\max_i=\max_w\min_x\ge\rho\), with attained maximizer | Exact \(\rho\), no minimax slack; empty \(F\) has \(\Delta_L\) directly | B4 / `step_004` | valid |
| Global \(w_h\in\Delta_L\) and \(h(x)s_{w_h}(x)\ge\rho\) for all \(x\) | B4 / `step_004`; compact FIP | Closed \(K_{h,F}\), finite-union identity, compact fixed simplex, B3 certificates | Arbitrary cardinality and incoherent finite witnesses; no additive residual | Produced \(w_h\) is the exact consumed target; every residual \(\rho-hs\le0\) | Finite intersections nonempty imply total intersection; singleton constraints export all points | Exact \(\rho\), compactness costs no slack | B5 / `step_005` | valid |
| Fixed \(\phi_G\) and strict pointwise signs | B5 / `step_005`; primitive \(G\) and B4 | Coordinate identity and \(\rho>0\) | Only possible tie is ruled out by positive margin; no transformed metric | Same score is the theorem inner product, residual zero | \(h(x)\langle w_h,\phi_G(x)\rangle\ge\rho>0\) | \(\rho>1/2\); at \(\varepsilon=0\), 1 | B6 and final theorem | valid |
| \(\operatorname{dc}(H)\le L\le B(1+m/\tau^2)^k\) | B6 / `step_006`; definition and primitive budget | Exact \(L\)-coordinate representation and explicit catalog inequality | No-base rate would have an uncontrolled \(m=0\)/large-\(\tau\) defect; it is not exported | Produced representation dimension equals consumed \(L\), residual zero | Direct transitivity; no absorption or parameter choice | Leading base \(1\), \(B,k\), and \(L\ge1\) | Final theorem | valid |

No exported interface depends on a transformed, weighted, population, baseline, or surrogate object. The only source-supplied output is the primitive catalog/budget, whose convention matches the final rate exactly.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --- | --- | --- | --- | --- | --- |
| Fixed finite catalog \(G\), selector \(J\), and budget | Primitive `assump:finite-terminal-catalog`, `assump:polynomial-catalog-budget` | B1, B3, B5, B6, final theorem | Primitive assumptions -> all named consumers | primitive | valid |
| Measurable terminal index law \(p(D,h,\pi)\) and exact mixtures | B1 / `step_001` | B2; learner randomness is eliminated in final correlation | Primitive execution/selector -> B1 -> B2 | derived | valid |
| Policy-free correlation lower bound | B2 / `step_002` | B3 for each finite-support \(D_r\) | B1 + primitive accuracy -> B2 -> B3 | derived | valid |
| Finite feasibility \(K_{h,F}\ne\varnothing\) | B3 / `step_003` | B4 for every finite \(F\) and finite union | B2 -> B3 -> B4 | derived | valid |
| Global \(w_h\) and all-domain margin | B4 / `step_004` | B5 and final theorem | B3 -> B4 -> B5 | derived | valid |
| Fixed coordinate sign certificate | B5 / `step_005` | B6 and final theorem | Primitive \(G\) + B4 -> B5 -> B6/final | derived | valid |
| Exact polynomial dimension chain | B6 / `step_006` | Final theorem | B5 + primitive budget -> B6 -> final | derived | valid |

There is no consumer-before-producer edge, no generated invariant exported from a late closure, and no missing dependency path.

## Early Obstruction And Repair Plausibility

- Contract and quantifier check: Pass. The attempted theorem remains conditional exactly on the finite catalog and budget, while preserving universal \(D,h,\pi\) quantifiers, arbitrary \(X\), unrestricted bounded queries, continuous tolerance intervals, and learner-tape-only expectation.
- Selector/execution measurability check: Pass under the explicit setting convention that all execution variables and protocol selectors are measurable. The finite index composition \(J\circ e\) is therefore measurable; the exact-center policy is nonanticipating and interval-valid. No response alphabet or finite transcript assumption is smuggled in. If the blanket measurability convention were removed, this would be a sketch/interface defect, but it is present in the live setting and accepted sketch.
- Policywise output-law check: Pass. For each arbitrary valid policy, the finite measurable partition gives the exact law and mixture identities. A randomized oracle is handled tape-by-tape, so no unlicensed expectation over oracle randomness is introduced.
- Correlation/source check: Pass. The same binary loss convention yields (B2.1), and max-over-average removes policy-dependent masses without selecting a favorable policy. The reserve is \(\rho>1/2\), not an unsupported positive approximation.
- Minimax order/attainment check: Pass. For every nonempty finite \(F\), all \(D_r\) are genuine distributions and the matrix convention is explicitly rows \(x\), columns \(i\). Finite minimax gives \(\min_r\max_i=\max_w\min_x\); compactness and continuity attain the maximizing \(w\). The empty-\(F\) branch never forms \(\Delta_F\).
- Compactness/global-scope check: Pass. Every \(K_{h,F}\) is closed and nonempty, finite intersections equal the constraint set for a finite union, and the fixed finite-dimensional \(\Delta_L\) is compact. This is a concrete zero-violation FIP mechanism, not a deferred global-selection claim. Empty \(X\) is vacuous with \(w_h\in\Delta_L\).
- Exact sign and baseline check: Pass. The score and coordinate inner product coincide, \(\rho>0\) excludes ties, and \(\varepsilon=0\) preserves margin 1. \(m=0\), \(T=0\), \(L=1\), \(B=1\), and arbitrary finite \(\tau>0\) retain the original conclusions and leading base term.
- Catalog boundary check: Pass. The primitive catalog condition requires \(L\ge1\), which is necessary for both the selector \(J:e\mapsto[L]\) and nonempty simplex \(\Delta_L\); an empty catalog \(L=0\) is outside the accepted theorem. The smallest allowed catalog \(L=1\) is handled exactly throughout.
- Generated-condition provenance check: Pass. \(p\), correlation, finite feasibility, global weight, sign certificate, and rate are all produced in order; none is assumed as a public derived invariant.
- Scope/dependence check: Pass. No stochastic mode, horizon mode, norm, rate, or parameter dependence is upgraded. The polynomial rate is copied from the primitive budget; the catalog-free open gap remains explicitly outside the theorem.
- Same-setting repair plausibility: No repair is needed. Every remaining obligation is a local instantiation of a mechanism already exposed in the accepted sketch. No changed assumption, algorithm, scope, mode, metric, dependence, success criterion, or theorem-facing source is required.

## Global Gaps And Hard Steps

None.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It is not proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, scope, metric, or conclusion. The future `proof-step` artifacts must independently prove the local units described above, and a current accepted global-proof review is required before downstream consumption.

## Suggested Routing

None

Continue with all six step proofs in dependency order, beginning with `/proof-step step_001`; no sketch repair or global-proof repair is indicated.
