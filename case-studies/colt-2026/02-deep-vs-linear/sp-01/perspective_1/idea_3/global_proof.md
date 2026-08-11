# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_3`.
- Sketch attempt: `1`.
- Reviewed setting: `perspective_1/idea_3/setting.md`, SHA-256 `41b4fe863423828b96d1adef0bcd66e1fbf09f9c6258d71d6eb0c2d064767ddd`.
- Reviewed sketch: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6cfa97961bfca0d27ea1134521445aa3454a10fc3871f139551b4133769f56cd`.
- Reviewed sketch review: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `489e604e39d02a75afb42b07460d0c967eadf530caa0d7e359ba60934d176252`.
- Sketch-review status: `ACCEPTED` (score 9; smallest retry target `None`).
- Reviewed roadmap identity: `step_001` finite exact-gradient envelope; `step_002` all-history closed-tube containment; `step_003` ball-wide gate invariance; `step_004` exact initialization-gate path expansion and latter-half score equality; `step_005` pointwise best-linear-risk comparison; `step_006` unconditional pushforward/event-charge closure; `step_007` path-count and $2\varepsilon$ specialization.
- No prior `global_proof_review.md` repair bundle is present for this attempt. The accepted sketch is binding; this artifact does not alter its assumptions, Step IDs, outputs, or target.

## Status

COMPLETE_DRAFT

Every theorem-level bridge closes at diagnostic granularity under the unchanged conditional setting. The remaining work is local derivation of the seven accepted step claims. No global gap, missing producer, unsupported mode conversion, or theorem-contract change is exposed.

## Attempted Theorem Claim

Goal mode: exact-goal mode for the explicitly conditional branch in `setting.md`.

Fix the architecture, $S,L,L_0$, horizon $T$, stepsize $\eta$, error parameters, initialization law, and source conventions $(s_0,\kappa)$ before every later $(\mathcal D,h)$. Under the four primitive assumptions

- `assump:fixed-source-witnesses`, including $0\le\varepsilon<1/4$, $T\ge1$, and fixed source protocol;
- `assump:universal-expected-success`, namely the joint initialization/sample expectation of the prescribed latter-half classifier error is at most $\varepsilon$ for every $(\mathcal D,h)$;
- `assump:constant-depth`, $1\le L\le L_0$ for a universal constant $L_0$; and
- `assump:robust-tube`, $r>0$, $0\le\delta_0\le\varepsilon$, and $\Pr_{\theta^{(0)}}(E_r)\ge1-\delta_0$,

prove with the one target- and distribution-independent law

\[
\mathcal P_{\rm gate}=\operatorname{Law}_{\theta^{(0)}}(\varphi_{\theta^{(0)}})
\]

that, for every $\mathcal D\in\Delta(\mathcal X)$ and $h\in\mathcal H$,

\[
\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}
 \left[\inf_{w\in\mathbb R^{d_{\rm path}}}
 R_{\mathcal D,h}(w,\varphi)\right]
 \le \varepsilon+\delta_0.
\]

Consequently,

\[
\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
 \le d_{\rm path}\le S^{L_0},
 \qquad
\operatorname{dc}_{2\varepsilon}(\mathcal H)\le S^{L_0}.
\]

The theorem is conditional progress, not a resolution of the unconditional source target. The exposed dependence is exact: $d_{\rm path}$, $S^{L_0}$, $\varepsilon$, and $\delta_0$ appear explicitly; $L_0$ is universal, and no hidden multiplicative constant is used.

## Whole-Proof Draft

### Block G1: finite exact full-gradient envelope (`step_001`)

Fix an initialization $\theta^{(0)}$ and a finite $r>0$. Put
\[
B:=\max\{1,\|\theta^{(0)}\|_\infty+r\}.
\]
Every $\theta\in B_\infty(\theta^{(0)},r)$ has every weight coordinate bounded by $B$. Define $a_0=1$ and, for $1\le\ell\le L-1$,
\[
a_\ell:=n_{\ell-1}B a_{\ell-1}.
\]
Since $|x_i|=1$, induction through the exact forward equations gives
\[
\lvert z_{\ell,j}(\theta,x)\rvert\le a_\ell,\qquad
\lvert u_{\ell,j}(\theta,x)\rvert\le a_\ell
\]
for all hidden layers, inputs, and parameters in the ball. In particular $|f_\theta(x)|$ is finite.

For the exact fixed-$\kappa$ selected derivative, the logistic output factor obeys
\[
\left|\frac{\partial}{\partial f}\ell(yf)\right|
=\frac{1}{1+e^{yf}}\le1.
\]
Set $b_L=1$, and recursively set
\[
b_\ell:=n_{\ell+1}B b_{\ell+1},\qquad 1\le\ell\le L-1.
\]
The selected ReLU factor obeys $0\le\rho_\kappa\le1$, so the back-propagated coordinate at hidden layer $\ell$ has magnitude at most $b_\ell$: the recursion sums at most $n_{\ell+1}$ terms, each bounded by $B b_{\ell+1}$. Thus every coordinate of the exact full gradient at layer $\ell$ is bounded by
\[
\left|[\nabla^{(\kappa)}_\theta\ell(yf_\theta(x))]_{\ell,jk}\right|
\le b_\ell a_{\ell-1},\qquad a_0=1.
\]
This includes the output layer and every coordinate, and uses no continuity of the selector at a kink. Therefore
\[
G_r(\theta^{(0)})\le C_r:=\max_{1\le\ell\le L}b_\ell a_{\ell-1}<\infty.
\]
When $L=1$, $a_0=b_1=1$, so $G_r\le1$ exactly. This is a direct bound on the exact coordinate-supremum object used in $E_r$, not an extra uniform architecture assumption.

### Block G2: noncircular all-history closed-ball containment (`step_002`)

Work on a fixed initialization satisfying $E_r$. The event gives $\eta T G_r\le r$, and G1 gives $G_r<\infty$. Consider an arbitrary labeled history $(x^{(t)},y^{(t)})_{t=0}^{T-1}$, not only a likely history generated from a distribution. Define
\[
D_t:=\|\theta^{(t)}-\theta^{(0)}\|_\infty.
\]
The base state has $D_0=0$. If $D_t\le t\eta G_r\le r$, then $\theta^{(t)}$ is in the closed ball on which $G_r$ is defined. Hence the exact selected gradient at that state and current label has sup norm at most $G_r$, and the update gives
\[
D_{t+1}
\le D_t+\eta\|\nabla^{(\kappa)}_\theta
 \ell(y^{(t)}f_{\theta^{(t)}}(x^{(t)}))\|_\infty
\le (t+1)\eta G_r.
\]
Induction yields $D_t\le t\eta G_r\le T\eta G_r\le r$ for every $0\le t\le T$, for every labeled history. The use of the ball supremum is noncircular: membership at time $t$ is the induction hypothesis, and the recurrence proves membership at time $t+1$. Equality at $r$ is allowed because the ball is closed. This covers maximal outward updates, zero gradients, $T=1$, and terminal equality $T\eta G_r=r$.

This exports a derived invariant, rather than treating the static event $E_r$ as if it already asserted trajectory containment.

### Block G3: positive-margin gate constancy (`step_003`)

Still on $E_r$, fix $x\in\mathcal X$, hidden layer $\ell<L$, and coordinate $j$. The map $\theta\mapsto u_{\ell,j}(\theta,x)$ is continuous because it is obtained by composing affine maps and continuous ReLUs. By $M_r>0$, its absolute value is at least $M_r$ throughout the ball. The ball is convex. If the sign at any $\theta$ in the ball differed from the sign at $\theta^{(0)}$, the line segment between those points and the intermediate value theorem would produce a parameter with $u_{\ell,j}=0$, contradicting the margin. Consequently,
\[
\mathbf 1\{u_{\ell,j}(\theta,x)>0\}
=\mathbf 1\{u_{\ell,j}(\theta^{(0)},x)>0\}
\]
for every parameter in the ball, every input, and every hidden gate. G2 transfers this identity to every iterate and every labeled history. The fixed kink selector $\kappa$ never needs to resolve a hidden zero on $E_r$; it remains part of the source protocol and is handled in G1. If $L=1$, there are no hidden gates, $M_r=+\infty$, and this block is vacuous while the exact linear case is retained.

The potential gate-crossing defect is source-excluded on $E_r$, not merely bounded by an approximation term. The $M_r=0$ regime remains in $E_r^c$ and is handled only by the final one-time charge.

### Block G4: exact path expansion and tie-preserving latter-half score (`step_004`)

For a path $p=(i_0,\ldots,i_{L-1})\in\mathcal I_{\rm path}$, define
\[
c_p(\theta):=(\theta_L)_{1,i_{L-1}}
 \prod_{\ell=1}^{L-1}(\theta_\ell)_{i_\ell,i_{\ell-1}}.
\]
On $E_r$, G3 permits replacing each hidden ReLU by its strict initialization gate times its preactivation. Recursive expansion of the exact bias-free forward equations then gives
\[
f_\theta(x)
=\sum_{p\in\mathcal I_{\rm path}}c_p(\theta)
 \left[x_{i_0}\prod_{\ell=1}^{L-1}
 \mathbf 1\{u_{\ell,i_\ell}(\theta^{(0)},x)>0\}\right]
=\langle c(\theta),\varphi_{\theta^{(0)}}(x)\rangle.
\]
For $L=1$, the path is just $i_0$, the empty gate product is one, and this reduces to $f_\theta(x)=\langle\theta_1{}_{1,:},x\rangle$. For a complete labeled sample history $\omega$, define
\[
w_\omega:=\sum_{t=\lceil T/2\rceil}^{T}c(\theta^{(t)}(\omega)).
\]
Summing the exact identities yields
\[
A_{\mathcal D,h}(x;\omega)
=\sum_{t=\lceil T/2\rceil}^{T}f_{\theta^{(t)}(\omega)}(x)
=\langle w_\omega,\varphi_{\theta^{(0)}}(x)\rangle.
\]
This is scalar equality, not only agreement away from a margin. It preserves $\operatorname{sign}_{s_0}$ when the aggregate is zero, when path weights cancel, and at $T=1$ (where the prescribed sum contains state $t=1$). Moving weights and sample/target dependence are wholly retained in $w_\omega$; they do not alter the feature map.

### Block G5: pointwise infimum-before-expectation risk transfer (`step_005`)

Fix $(\mathcal D,h)$ and an initialization $\theta^{(0)}\in E_r$ before drawing the training sample path. Define
\[
F_{\mathcal D,h}(\theta^{(0)}):=\inf_{w\in\mathbb R^{d_{\rm path}}}
 R_{\mathcal D,h}(w,\varphi_{\theta^{(0)}}).
\]
For every realized history $\omega$, G4 supplies a feasible $w_\omega$, so
\[
F_{\mathcal D,h}(\theta^{(0)})
\le R_{\mathcal D,h}(w_\omega,\varphi_{\theta^{(0)}})
=\mathcal L_{\mathcal D,h}(\widehat h_{\mathcal D,h};\omega).
\]
The infimum is taken before the sample-path average and is never exchanged with expectation. Averaging this pointwise inequality over $\omega\sim\mathcal D^T$, conditional on the initialization, gives
\[
F_{\mathcal D,h}(\theta^{(0)})
\le \mathbb E_{\omega\mid\theta^{(0)}}
 [\mathcal L_{\mathcal D,h}(\widehat h_{\mathcal D,h};\omega)]
\quad\text{for every }\theta^{(0)}\in E_r.
\]
All risks lie in $[0,1]$. The candidate $w_\omega$ is path-dependent only inside this feasible-candidate comparison and is not exported as a target-independent optimizer. Nonattainment of the infimum causes no issue. Exact score equality from G4 makes the risk metrics and tie rule identical on both sides.

### Block G6: finite gate-map measurability and unconditional event closure (`step_006`)

The map $\theta^{(0)}\mapsto\varphi_{\theta^{(0)}}$ is Borel: each coordinate is a finite product of a fixed input sign and indicators of continuous preactivations. Since $\mathcal X$ and $\mathcal I_{\rm path}$ are finite, its range is a finite subset of $\{-1,0,+1\}^{\mathcal X\times\mathcal I_{\rm path}}$. Thus $F_{\mathcal D,h}$ depends only on the generated map, is measurable without choosing a measurable optimizer, and the pushforward identity is exact:
\[
\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}
 \left[\inf_wR_{\mathcal D,h}(w,\varphi)\right]
=\mathbb E_{\theta^{(0)}}F_{\mathcal D,h}(\theta^{(0)}).
\]
The pushforward law is unconditional and fixed before $(\mathcal D,h)$; initializations inducing duplicate maps retain their total mass, and maps on $E_r^c$ are not discarded.

For fixed $(\mathcal D,h)$, split the last expectation:
\[
\begin{aligned}
\mathbb E F
&=\mathbb E[\mathbf 1_{E_r}F]
 +\mathbb E[\mathbf 1_{E_r^c}F]\\
&\le\mathbb E[\mathbf 1_{E_r}F]+\Pr(E_r^c)\\
&\le \mathbb E\left[\mathbf 1_{E_r}
       \mathbb E_{\omega\mid\theta^{(0)}}\mathcal L(\omega)\right]
       +\delta_0\\
&=\mathbb E[\mathbf 1_{E_r}\mathcal L(\omega)]+\delta_0\\
&\le \mathbb E\mathcal L(\omega)+\delta_0
 \le \varepsilon+\delta_0.
\end{aligned}
\]
The equality is the tower property; bounded nonnegative loss also permits Tonelli. The final inequality is exactly `assump:universal-expected-success`. The complement contribution is an adversarial but unit-bounded residual of mass at most $\delta_0$, charged once rather than union-bounded over histories. Because $E_r$ is initialization-only, this argument does not condition or reselect the feature law.

### Block G7: dimension and public error specialization (`step_007`)

For $0\le\ell\le L-1$, positivity of $n_{\ell+1}$ and the summand in $S$ give
\[
n_\ell\le n_{\ell+1}n_\ell\le S.
\]
Hence
\[
d_{\rm path}=\prod_{\ell=0}^{L-1}n_\ell
\le S^L\le S^{L_0},
\]
where the second inequality uses $S\ge1$ and $L\le L_0$. G6 witnesses the dimension $d_{\rm path}$, so
\[
\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
\le d_{\rm path}\le S^{L_0}.
\]
Finally $0\le\delta_0\le\varepsilon$ implies $\varepsilon+\delta_0\le2\varepsilon$. Any law satisfying the defining inequality at the smaller threshold also satisfies it at $2\varepsilon$, hence
\[
\operatorname{dc}_{2\varepsilon}(\mathcal H)
\le\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
\le S^{L_0}.
\]
At $L=1$, $d_{\rm path}=n_0=S$; at $S=1$, all inequalities are equalities; and at $\varepsilon=\delta_0=0$, the threshold remains zero. No stochastic, horizon, or dimension term is dropped.

### Assembly

The dependency order is acyclic:
\[
\text{primitive static ball and event}
\to G_r\to\text{all-history containment}
\to\text{fixed gates}\to\text{exact path scores}
\to\text{conditional best-risk comparison}
\to\text{unconditional gate-law witness}
\to\text{dimension and }2\varepsilon\text{ bounds}.
\]
G1 derives the finite envelope before G2 invokes it. G2 proves membership before G3 consumes the ball margin. G3 produces the initialization gate signature before G4 expands the network. G4 produces a feasible coefficient before G5 takes the path-independent infimum. G6 retains the full pushforward law and charges exactly $E_r^c$, then G7 performs only deterministic arithmetic. Thus no generated condition is assumed before its producer, and the final existential law precedes both universal quantifiers over $(\mathcal D,h)$.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| --- | --- | --- | --- | --- | --- |
| G1: exact-gradient envelope | Supplies a finite exact $G_r$ for the static tube budget | `step_001` | Architecture, finite ball, logistic derivative, fixed $\kappa$ | `assump:fixed-source-witnesses`; finite $r$ from `assump:robust-tube` | None globally; local forward/backward coordinate induction and $L=1$ specialization |
| G2: all-history containment | Derives the trajectory invariant required for gate transfer | `step_002` | G1 and event inequality $\eta T G_r\le r$ | `assump:fixed-source-witnesses`, `assump:robust-tube` | None globally; local closed-ball induction for every history |
| G3: gate stability | Produces one initialization gate signature for all inputs and states | `step_003` | G2, $M_r>0$, continuity and connectedness | `assump:robust-tube` | None globally; local IVT argument and gate-free branch |
| G4: exact path interface | Produces per-iterate and aggregate coefficients in the fixed map | `step_004` | G2, G3, exact network equations | `assump:fixed-source-witnesses` | None globally; local path expansion, indexing, and ties |
| G5: conditional risk transfer | Bounds the fixed-feature infimum by conditional SGD risk | `step_005` | G4 and risk definition | `assump:fixed-source-witnesses` | None globally; local pointwise order before expectation |
| G6: law and event closure | Produces the unconditional gate-law witness at $\varepsilon+\delta_0$ | `step_006` | G5, finite pushforward, $F\in[0,1]$, primitive expectation/probability controls | `assump:universal-expected-success`, `assump:robust-tube`, `assump:fixed-source-witnesses` | None globally; local measurability, tower identity, and one-time charge |
| G7: specialization | Converts path dimension and error threshold to $S^{L_0}$ and $2\varepsilon$ | `step_007`, assembly | G6, positive widths, $L\le L_0$, $\delta_0\le\varepsilon$ | `assump:constant-depth`, `assump:robust-tube` | None globally; local integer and monotonicity checks |
| Baseline/progress boundary | Preserves exact specializations and the conditional label | Assembly across G3--G7 | Exact algebra and event split | All four assumptions and fixed $(s_0,\kappa)$ | None; unconditional deterministic source target remains outside scope |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| --- | --- | --- | --- | --- |
| `step_001` | G1 | None | Define $B,a_\ell,b_\ell$, bound every exact selected gradient coordinate, and show $G_r<\infty$, $G_r\le1$ for $L=1$ | Selector discontinuity is irrelevant because only $0\le\rho_\kappa\le1$ is used |
| `step_002` | G2 | Consumes G1 | Define $D_t$, invoke the ball supremum only after membership, and prove $D_t\le t\eta G_r\le r$ for every history | Finite-budget recurrence is the noncircular closure |
| `step_003` | G3 | Consumes G2 and $M_r>0$ | Apply continuity/IVT on the ball; transfer strict gates to every iterate; handle $L=1$ | Margin is static event data, not a hidden trajectory assumption |
| `step_004` | G4 | Consumes G2--G3 | Expand every path with current weights and initialization gates, sum $t=\lceil T/2\rceil,\ldots,T$, and preserve ties | Moving coefficients are not exported as features |
| `step_005` | G5 | Consumes G4 | Define $F$ before sample averaging, compare pointwise to every $w_\omega$, then average | No attainment or measurable optimizer is required |
| `step_006` | G6 | Consumes G5 and primitive event/learner controls | Prove finite-map measurability and pushforward equality; split $E_r/E_r^c$; apply tower and unit-risk bound | Preserves $\exists\mathcal P\ \forall\mathcal D\ \forall h$ |
| `step_007` | G7 | Consumes G6 | Show $n_\ell\le S$, multiply factors, use $L\le L_0$, and apply threshold monotonicity | Includes $L=1,S=1,\varepsilon=0,\delta_0=\varepsilon$ boundaries |

## Dependency And Assumption Audit

- `assump:fixed-source-witnesses`, `assump:universal-expected-success`, `assump:constant-depth`, and `assump:robust-tube` are primitive conditions. They are fixed before the trajectory, sample path, distribution, and target in the senses stated in `setting.md`.
- The event components $M_r>0$ and $\eta T G_r\le r$ are primitive event predicates used only after restricting the local argument to $E_r$; the theorem assumes only the event probability, not the resulting trajectory or gate properties.
- Finiteness of $G_r$ is a derived static conclusion of G1. It is not smuggled into `assump:robust-tube`.
- Ball membership, gate constancy, path coefficients, aggregate equality, the conditional $F$-bound, measurability/pushforward identity, and the final feature-law inequality are derived outputs of G2--G6.
- The phrase "on $E_r$" denotes an explicitly conditional local argument. G6 discharges that condition for the unconditional law by retaining $E_r^c$ and charging it; no conditional hypothesis becomes a public unconditional assumption.
- There is no missing derived-condition bridge. The dependency path is primitive event and architecture -> G1 -> G2 -> G3 -> G4 -> G5 -> G6 -> G7.

## Citation And Tool Audit

No external theorem is used as proof authority. The parent COLT papers identify the protocol and motivation only; all theorem-critical interfaces are derived in current notation.

| Source/tool | Current objects and assumptions | Needed conclusion and compatibility | Affected block |
| --- | --- | --- | --- |
| Direct forward recurrence | Bias-free ReLU equations, $\lvert x_i\rvert=1$, coordinate bound $B$, finite widths | $\lvert z_{\ell,j}\rvert\le a_\ell$ in the same coordinates and norm as $G_r$; no smoothness assumption | G1 / `step_001` |
| Direct fixed-$\kappa$ backpropagation | Exact selector $\rho_\kappa\in[0,1]$, logistic loss, all-layer gradient | Exact selected gradient coordinate bound $b_\ell a_{\ell-1}$, including kinks | G1 / `step_001` |
| Triangle inequality and finite induction | Exact update, closed coordinate ball, $\eta T G_r\le r$ | All-history $D_t\le t\eta G_r$ with the same center, radius, and sup norm | G2 / `step_002` |
| Continuity, convexity, IVT | Exact forward preactivations, connected ball, $M_r>0$ | Strict gate signs equal initialization signs under the same $>0$ convention | G3 / `step_003` |
| Finite path algebra | $\sigma(a)=1\{a>0\}a$ away from zero and G3 gate identity | Exact scalar output/aggregate in the same feature map, no surrogate | G4 / `step_004` |
| Elementary infimum order | $F=\inf_wR(w,\varphi)$, feasible $w_\omega$, bounded risk | Pointwise $F\le R(w_\omega,\varphi)$ before expectation | G5 / `step_005` |
| Finite-space measurability and pushforward | Finite domain/path index, Borel strict indicators | $F$ factors through the finite gate-map range and expectations agree | G6 / `step_006` |
| Tower property/Tonelli | $E_r$ initialization-only; bounded nonnegative loss | Exact conditional-to-joint identity and legal event split | G6 / `step_006` |
| Integer arithmetic and threshold monotonicity | Positive widths, parameter-count sum, $L\le L_0$, $\delta_0\le\varepsilon$ | $d_{\rm path}\le S^L\le S^{L_0}$ and $\operatorname{dc}_{2\varepsilon}\le\operatorname{dc}_{\varepsilon+\delta_0}$ | G7 / `step_007` |

Every tool uses the setting's exact input domain, strict tie convention, coordinate norm, finite horizon, and probability mode. No cited result has an unverified label, object mismatch, hidden convention translation, or wrapper obligation.

## Quantitative Dependence Audit

### RO-1: expected probabilistic-representation error

- Exposed variables: $\varepsilon,\delta_0,T,\eta,r$, $M_r,G_r$, $s_0,\kappa$, and $d_{\rm path}$. The final error is exactly $\varepsilon+\delta_0$; admissibility exposes $T\eta G_r\le r$.
- Hidden constants: none. In particular no constant depends on $n,\mathcal H,\mathcal D,h,S,T,\eta,r,L$, widths, $\varepsilon,\delta_0,s_0,\kappa$, or realized paths.
- Fixed quantities: architecture, initialization law, $L,L_0,T,\eta,r,\varepsilon,\delta_0,s_0,\kappa$ are fixed before $(\mathcal D,h)$; the same law is used for every pair.
- Probability mode: the learner premise is joint expectation over initialization and $T$ iid samples; the tube premise is initialization-only probability $1-\delta_0$; the conclusion is expectation under the unconditional pushforward law.
- Horizon mode: fixed finite $T$, with states $0,\ldots,T$ and the latter-half sum including $t=T$.
- Norm/metric mode: coordinate sup norm for tube/gradient, exact scalar equality for path transfer, and tie-resolved strict $0$-$1$ risk for learner and representation.
- Probability bridge: G6 contributes exactly $\Pr(E_r^c)\le\delta_0$, once; it does not union-bound over histories or change the law.

### RO-2: polynomial dimension and $2\varepsilon$ specialization

- Exposed variables: $d_{\rm path},S,L,L_0,\varepsilon,\delta_0$; $L_0$ is a fixed universal integer and the exponent is not hidden.
- Hidden constants: none; no $T,\eta,r$, width, or problem-dependent factor is suppressed in $S^{L_0}$.
- Fixed quantities and modes: inherit RO-1; G7 adds only deterministic integer arithmetic and threshold inclusion.
- Specialization bridge: each $n_\ell\le S$, so $d_{\rm path}\le S^L\le S^{L_0}$; $\varepsilon+\delta_0\le2\varepsilon$, and the same law remains admissible at the larger threshold.
- Baseline checks: $L=1$ gives $d_{\rm path}=n_0=S$; $S=1$ gives equality; $\delta_0=0$ removes the event penalty; $\varepsilon=\delta_0=0$ preserves zero threshold. The theorem is not upgraded to the unconditional deterministic source claim.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $G_r<\infty$ | Static exact-gradient boundedness; activates tube budget | Every finite closed ball for the fixed architecture | $G_r\le\max_\ell b_\ell a_{\ell-1}$ with $a_0=1$, $a_\ell=n_{\ell-1}Ba_{\ell-1}$, $b_L=1$, $b_\ell=n_{\ell+1}Bb_{\ell+1}$ | Finite coordinate box, $\lvert\ell'\rvert\le1$, $0\le\rho_\kappa\le1$ | Width/depth products may be large but finite; no continuity defect | Static; no temporal accumulation | Structural upper comparison | Direct current-notation derivation; kinks, zero weights, $\kappa=0,1$, finite $r$ included | Exact selected gradient and coordinate norm match $G_r$ | Produced bound is consumed $G_r$; residual zero | step-local | Primitive ball/architecture -> G1; no trajectory fact used | At initialization, including kinks, bound holds; $L=1$ gives $G_r\le1$ | Each coordinate bound implies finite supremum | Architecture and logistic controls | $B,a,b,C_r$ | Zero weights and kink selectors do not invalidate upper bound | Without finite $G_r$, event budget cannot drive containment |
| $D_t\le t\eta G_r\le r$ for all $t\le T$ | Generated invariant / membership | Fixed finite horizon $0,\ldots,T$, on $E_r$ | $D_0=0$, $D_{t+1}\le D_t+\eta G_r$ whenever $D_t\le r$ | $\eta T G_r\le r$ | Arbitrary-sign increments, charged by $\eta G_r$ | Accumulated forcing $\sum_{q<t}\eta G_r=t\eta G_r$; adversarial sign but finite terminal budget | Reserve/ledger under declared finite scope; first-exit induction | G1 plus primitive event; closed boundary allowed | Exact iterate, center, radius, and sup norm match consumer | Residual $D_t$ dominated by target radius $r$ | step-local | Base $D_0=0$; membership licenses ball supremum and proves next state | $D_1\le\eta G_r\le r$; equality $T\eta G_r=r$ legal; zero gradient stationary | Induction gives $(t+1)\eta G_r\le r$ | Primitive event budget | All-history membership | $T=1$, maximal outward motion, terminal equality pass | Without finite budget, iterate may leave validity region |
| Initialization gate signature constant on ball | Structural sign/nondegeneracy and local-validity invariant | All inputs, hidden coordinates, contained states on $E_r$ | Continuity on line segments; sign change would make $u=0$ | $M_r>0$ | Potential sign crossing; kink convention only matters at zero | Source-excluded throughout finite horizon; no gate defect accumulates | Structural lower comparison plus connectedness/IVT | Primitive margin; $M_r=0$ excluded on $E_r$ and charged on complement; $L=1$ gate-free | Margin rules out a zero of exact consumed preactivation | Strict indicators equal feature indicators; residual zero | step-local | Margin available before G3; G2 independently produces containment | Initialization signs nonzero; first update and ball boundary stable | Opposite signs imply IVT zero, contradicting $M_r>0$ | $M_r>0$ and G2 membership | Fixed gate signature | $L=1$, $M_r=+\infty$, complement explicit | If margin vanishes, gates may change |
| Exact per-iterate path expansion and $A=\langle w_\omega,\varphi\rangle$ | Exact representation interface and tie preservation | All latter-half states and inputs on $E_r$ | $f_\theta(x)=\sum_p c_p(\theta)\varphi_p(x)$; $w_\omega=\sum_t c(\theta^{(t)}(\omega))$ | Algebraic coupling of fixed gates and current weights | Moving weights/path dependence stay in coefficients; no approximation | Finite exact sum; zero residual term by term | Algebraic coupling / exact equality | G3 plus exact no-bias network; $L=1$, zero weights, arbitrary $\kappa$ covered | Same scalar output, coordinates, and strict gate convention | Score residual identically zero, including zero score | step-local | G2/G3 produce state/gates before G4 | Formula holds at $t=0$, first update, $T=1$; cancellation preserves $s_0$ | Recursive expansion and finite summation | Fixed gates and current weights | $c(\theta),w_\omega$ | Gate-free and tie branches pass | Without fixed gates, feature residual uncontrolled |
| $F\le\mathbb E_{\omega\mid\theta^{(0)}}\mathcal L$ on $E_r$ | Conditional mode/risk transfer | Fixed $(\mathcal D,h,\theta^{(0)})$; sample expectation after initialization | $F=\inf_wR(w,\varphi)\le R(w_\omega,\varphi)=\mathcal L_\omega$ pointwise | Exact feasible coefficient and infimum order | $w_\omega$ depends on path/target but is not exported | No structural accumulation; bounded path averaging | Pointwise feasible-candidate domination | Direct order fact with same fresh risk and tie convention; no attainment required | Exact score equality transfers same risk metric | Residual zero; no transformed object | step-local | $F$ defined before sampling; G4 produces candidate first | Deterministic path, zero score, nonattained infimum, $T=1$ valid | Infimum no larger than every candidate, then expectation | G4 exact score | $F$ and candidates | No boundary failure | Without exact candidate equality, score transfer may fail |
| Finite measurable gate-map law and pushforward identity | Generated-law interface | Unconditional Gaussian initialization; finite domain/path index | Gate map Borel with finite range; $F$ factors through it | Continuous preactivations and Borel strict indicators | Duplicate maps and zero coordinates retained | Static pushforward; no temporal accumulation | Finite-law factorization | Direct finite-space derivation with exact strict gates; all maps including $E_r^c$ remain | Produced feature exactly consumed by $R,F$ | Expectation identity residual zero | step-local | Initialization -> map -> finite $F$; no optimizer selector | Repeated maps, $L=1$, zero features measurable | Pushforward expectation equals initialization expectation | Finite domain and initialization | $\mathcal P_{\rm gate},F$ | Complement not reweighted | Without measurability, dc expectation not identified |
| $\mathbb EF\le\varepsilon+\delta_0$ | Final closure / probability conversion | Unconditional initialization; each fixed $(\mathcal D,h)$ | $\mathbb EF\le\mathbb E[1_E\mathcal L]+\Pr(E^c)\le\varepsilon+\delta_0$ | G5, learner premise, event mass | Arbitrary $E^c$ behavior bounded by one | Complement one-time, not iterated; stable residual zero | Stopping/conditioning plus one-time reserve charge | $E_r$ initialization-only and fixed before samples; complement charged | Same risk/law/sample convention; exact tower relation | Unstable residual $\le\delta_0$; all other residuals zero | step-local | G5 precedes split; event independent of sample path | Event before first sample; $\delta_0=0$ removes charge; $\varepsilon=0$ valid | $\mathbb E[1_E\mathbb E(\mathcal L\mid\theta^0)]=\mathbb E[1_E\mathcal L]\le\varepsilon$ | Universal expected success and tube probability | Unconditional law witness | Complement predictors bounded by one | Without initialization-only event, law closure may fail |
| $d_{\rm path}\le S^{L_0}$ and $\operatorname{dc}_{2\varepsilon}\le S^{L_0}$ | Quantitative specialization | Positive widths, $L\le L_0$, $\delta_0\le\varepsilon$ | $n_\ell\le n_{\ell+1}n_\ell\le S$; multiply; threshold inclusion | Integer comparison and dc monotonicity | None beyond finite products | Finite multiplication and direct threshold transfer | Direct arithmetic under primitive depth/error restrictions | Positive widths and the actual summands of $S$ supply every factor bound; the same law supplies threshold monotonicity | Exact path dimension and same law consumed; no hidden factor | No residual or dropped term | step-local | G6 produces witness before arithmetic | $L=1,S=1,\delta_0=\varepsilon,\varepsilon=0$ preserve equalities | $d_{\rm path}\le S^L\le S^{L_0}$ and $\varepsilon+\delta_0\le2\varepsilon$ | Positive widths, $S$, constant depth | Path dimension/threshold | No boundary failure | Without constant depth, $S^L$ need not be fixed polynomial |
| Baseline invariance and conditional progress boundary | Public-claim integrity | $L=1$, $\delta_0=0$, zero scores, $S=1$, $\varepsilon=0$ | Exact G3--G7 identities and event split | Gate-free algebra, zero residual, vanishing complement charge | No weaker stopped/approximate surrogate | Finite exact specialization | Explicitly conditional target plus baseline reduction | Fixed source protocol/tie rule retained; broader regime explicitly excluded | Produced objects equal consumed baselines | All baseline residuals zero | step-local | Baselines checked after producers, not assumed | $D_0\to D_1$, stationary zero-gradient, $L=1$, zero-score ties pass | Exact equalities preserve baselines | Fixed conventions and prior blocks | Baseline identities and progress label | Unconditional deterministic target out of scope | Weakening baseline violates contract |

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Finite exact $G_r$ | G1 / `step_001` | Finite ball, $B$, $\lvert x_i\rvert=1$, logistic derivative, $0\le\rho_\kappa\le1$ | Width/depth products finite; no uncontrolled term | Exact selected gradient in same coordinate sup norm; zero residual | $G_r\le\max_\ell b_\ell a_{\ell-1}$ | $B=\max(1,\|\theta^0\|_\infty+r)$ | G2 and event interface | valid |
| All-history radius membership | G2 / `step_002` | Exact update, finite $G_r$, $T\eta G_r\le r$ | Arbitrary-sign increments controlled individually | Same vector, center, radius, norm | $D_{t+1}\le D_t+\eta G_r$, $D_t\le t\eta G_r\le r$ | Static event budget | G3, G4, G5 | valid |
| Fixed strict gate signature | G3 / `step_003` | $M_r>0$, continuity, connected ball, G2 | Gate crossing excluded on $E_r$; complement later charged | Exact indicators in $\varphi_{\theta^0}$; zero residual | Opposite signs force a zero, contradicting margin | $M_r$ | G4 | valid |
| Per-iterate and aggregate coefficient | G4 / `step_004` | Fixed gates, exact current weights, finite path set | Sample/target dependence remains in coefficient; no feature defect | Exact scalar score under same feature/tie convention | Recursive identity and finite summation | Equality itself | G5 | valid |
| Conditional fixed-feature risk bound | G5 / `step_005` | G4 candidate for every path, path-independent infimum, bounded risk | Candidate path dependence is local only; no optimizer exported | Same $(\mathcal D,h)$, fresh risk, strict loss, tie metric | $F\le R(w_\omega,\varphi)=\mathcal L_\omega$ before averaging | Feasible set $\mathbb R^{d_{\rm path}}$ | G6 | valid |
| Finite pushforward identity | G6 / `step_006` | Borel finite gate map and unconditional Gaussian law | Duplicate and complement maps retained | Same feature object on both sides; zero transfer residual | $F$ factors through $\varphi$ | Finite range | G6 split/final witness | valid |
| Unconditional representation witness | G6 / `step_006` | G5 on $E_r$, $F\le1$, $\Pr(E_r^c)\le\delta_0$, learner expectation $\le\varepsilon$ | Only $E_r^c$ uncontrolled, bounded by one and mass $\delta_0$ | Stable residual zero; complement residual at most $\delta_0$ | $\mathbb EF\le\mathbb E[1_E\mathcal L]+\Pr(E^c)\le\varepsilon+\delta_0$ | Unit-risk bound and event probability | dc witness and G7 | valid |
| $S^{L_0}$ dimension and $2\varepsilon$ bridge | G7 / `step_007` | Positive widths, parameter-count sum, $L\le L_0$, $\delta_0\le\varepsilon$ | None | Exact path dimension and enlarged threshold | $n_\ell\le S$, $S^L\le S^{L_0}$, $\varepsilon+\delta_0\le2\varepsilon$ | Primitive ranges | Final theorem | valid |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --- | --- | --- | --- | --- | --- |
| Finite $G_r$ | G1 / `step_001`, direct exact-gradient derivation | G2 / `step_002`; activate event budget | Primitives -> G1 -> G2 | derived | valid |
| All-history $D_t\le r$ | G2 / `step_002` | G3, G4, G5; stable-event closure | Event + G1 -> G2 -> consumers | derived | valid |
| Initialization gate invariance | G3 / `step_003` | G4; exact feature representation | $M_r>0$ + G2 -> G3 -> G4 | derived | valid |
| Current path coefficients and $w_\omega$ | G4 / `step_004` | G5; feasible-risk comparison | G2 + G3 -> G4 -> G5 | derived | valid |
| Conditional $F$-risk inequality | G5 / `step_005` | G6; stable contribution | G4 -> G5 -> G6 | derived | valid |
| Finite gate-map measurability/pushforward | G6 / `step_006`, direct finite-space derivation | G6 event split and final dc witness | Initialization -> gate map -> finite $F$ -> pushforward | derived | valid |
| Unconditional $\mathcal P_{\rm gate}$ witness | G6 / `step_006` | G7 and final theorem | Primitives + G1--G5 -> G6 -> witness | derived | valid |
| Path count and $2\varepsilon$ specialization | G7 / `step_007` | Final theorem | G6 + positive widths/depth/error ranges -> G7 | derived | valid |

No generated output is consumed before its producer, and no path-dependent coefficient is exported as the feature law.

## Early Obstruction And Repair Plausibility

- Contract consistency: attempted claim, source conventions, probability mode, horizon, metric, and progress label agree with `setting.md`; the branch is explicitly conditional. No target-changing repair is indicated.
- Mechanism witness gate: G1 has a direct finite forward/backward source; G2 has the concrete recurrence $D_{t+1}\le D_t+\eta G_r$ and terminal reserve $T\eta G_r\le r$; G3 has the positive margin/IVT source; G4 has exact algebra; G5 has pointwise infimum order; G6 has the unit-risk/event-mass split; G7 has direct integer comparison. None is only a category label or future-step promise.
- Assumption provenance: the static event is not treated as a generated trajectory invariant. Every generated condition has a producer before consumption. No missing derived-condition bridge appears.
- Exported interfaces: each downstream object is exact under the same norm, score, tie rule, feature coordinates, law, and threshold. The only uncontrolled defect class is $E_r^c$, with an explicit source and additive scale.
- Scope accumulation: the only adversarial accumulated forcing is $\sum_{q<t}\eta G_r$, controlled for exactly $t\le T$ by the finite reserve. Gate defects are source-excluded while contained; path residuals are identically zero; the event complement is charged once.
- Boundary and entry traces: $D_0=0$, $D_1\le\eta G_r$, $T=1$, $L=1$, $S=1$, zero gradients, zero path weights, zero aggregate scores, $M_r=0$ on the complement, $\delta_0=0$, and $\varepsilon=0$ are handled. The closed boundary $D_T=r$ is legal.
- Source-convention and object compatibility: selected gradients use the fixed $\kappa$; gates use the same strict $>0$ indicator as the feature map; risks use the same strict product test and $s_0$ tie label; pushforward consumes the exact generated map, not a surrogate.
- Same-setting repair plausibility: none is required. Any failure in a later local proof would route to the corresponding `/proof-step` under the unchanged sketch. A failure requiring new assumptions, changed target, or removal of the event charge would be a reviewer-level sketch/idea issue, but none is visible here.
- Source/progress boundary: the result does not claim the unconditional deterministic $C T S$ source conclusion, general depth, or exactification on $E_r^c$. Those remain explicit residual gaps of the broader problem, not hidden assumptions of this branch.

## Global Gaps And Hard Steps

None. The seven local derivations remain to be independently proved by their step workers, but each has an unchanged Step ID, concrete mechanism witness, exported interface, scope, and boundary checks. They are not global blockers.

## Diagnostic Boundary Note

This file is a theorem-level diagnostic only. It is not proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, theorem scope, probability mode, metric, or progress label. Every local derivation and cited-tool check must be independently supplied by its corresponding proof-step artifact and review.

## Suggested Routing

None

Continue with all seven `/proof-step` units under the accepted sketch; diagnostic priority may begin with `/proof-step step_001` and `/proof-step step_002` because their outputs feed every downstream block.
