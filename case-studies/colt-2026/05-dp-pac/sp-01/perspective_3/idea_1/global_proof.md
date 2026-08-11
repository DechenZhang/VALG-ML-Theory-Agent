# Global Proof

## Reviewed Sketch Identity

- Branch path: `perspective_3/idea_1`.
- Global producer attempt: 1 under sketch attempt 1.
- Reviewed `proof_sketch.md`: sketch attempt 1, initial mode, 16-step set `step_001` through `step_016`, SHA-256 `56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1`.
- Reviewed `proof_sketch_review.md`: SHA-256 `ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b`.
- Review confirmation: `Sketch Review Status = ACCEPTED`, viability score 9, smallest retry target `None`, retry mode `none`.
- Binding: this diagnostic keeps the accepted claims, Step IDs, dependencies, assumptions, output targets, rate objectives, generated-output flows, constants, and exact-goal scope unchanged.

## Status

PARTIAL_BLOCKED

The theorem-level interfaces compose without a detected sketch or theorem-contract defect. The unresolved obligations are the accepted, source-supported local derivations, most notably the exact ALMM wrapper, the compact minimax/finite-support argument, the overflow arithmetic, and the executable-simulator coupling and privacy audit. Every such obligation is classified `step-local` below and has a concrete mechanism witness under the unchanged sketch.

## Attempted Theorem Claim

Goal mode: `exact-goal mode`.

There are absolute constants

\[
a,c_\delta,\varepsilon_0>0,\qquad
\alpha_0,\beta_0\in(0,1/2),\qquad N_0\in\mathbb Z_{\ge2},
\]

chosen once before all candidate parameters, such that the following holds. For every integer \(k\ge2\), \(N\ge N_0\), and \(n\ge1\), every \(0<\varepsilon\le\varepsilon_0\) and

\[
0<\delta\le
\min\left\{
\frac1{n\log(n+1)},
\frac{c_\delta}{m_{n,k}^2\log(m_{n,k}+1)}
\right\},
\qquad
m_{n,k}=\max\left\{8,\left\lceil\frac{4n}{k}\right\rceil\right\},
\]

and every randomized, computationally unrestricted, possibly improper map

\[
A:(X_{k,N}\times\{0,1\})^n\longrightarrow\{0,1\}^{X_{k,N}},
\]

if \(A\) satisfies `assump:central-dp` under one-row replacement and `assump:distribution-free-realizable-pac` with constants \((\alpha_0,\beta_0)\), then

\[
n\ge a k\log_2^*N.
\]

The conclusion is a deterministic, fixed-size, pointwise-in-\((k,N,n,\varepsilon,\delta,A)\) implication. PAC probability is over the exact iid sample and the internal randomness of \(A\); all risks are population 0-1 risks. No properness, efficiency, average-instance PAC premise, expected sample size, or stopping-time qualification is introduced.

The accepted constants can be chosen from the one-block wrapper as

\[
\varepsilon_0=0.1,\qquad
\alpha_0=\beta_0=2^{-13},\qquad
a=\frac{b_*}{16},\qquad
0<c_\delta\le d_*,
\]

with \(N_0\ge N_*\) fixed so that \(b_*\log_2^*N\ge16\) for all \(N\ge N_0\). Here \(b_*,d_*,N_*\) are the absolute wrapper constants assigned to `step_002`; their existence, not a numerical value, is the consumed ALMM interface.

On \(k=r\), \(N=\operatorname{Tow}_2(r)\), for all sufficiently large \(r\), the same theorem must specialize to

\[
n\ge ar^2
=\Omega\!\left(\operatorname{VC}(C_{r,N})\log_2^*\operatorname{LD}(C_{r,N})\right),
\]

with constants independent of \(r,k,N,n,\varepsilon,\delta\). This remains a `material_partial` result: it does not claim a universal characterization, the source milestone \(\operatorname{VC}\,2^{\log_2^*\operatorname{LD}}\), or an \(\Omega(\log|C|)\) lower bound.

## Whole-Proof Draft

Write

\[
L=L_N=\log_2^*N,\qquad
M=m_{n,k}=\max\{8,\lceil4n/k\rceil\},\qquad
\eta=2^{-8}.
\]

The draft has eight dependency-ordered theorem blocks. Within them, the 16 accepted sketch transitions are exposed individually.

### Block G1: exact structure of the tagged product (`step_001`)

**Transition 01 (`step_001`).** On one tag, the \(N+1\) parameters \(t\in[N+1]\) give distinct cuts: adjacent thresholds disagree at the intervening point, while \(t=1\) and \(t=N+1\) are respectively the all-one and all-zero functions. Independence across tags therefore gives

\[
|C_{k,N}|=(N+1)^k.
\]

One point from each tag is shattered, since its label is independently set by choosing the corresponding threshold immediately below or above that point. Conversely, among any \(k+1\) distinct tagged points, two have the same tag; ordering them as \(x<y\), the labeling \((1,0)\) is impossible for the increasing cut \(\tau_t\). Hence \(\operatorname{VC}(C_{k,N})=k\).

For one tag, a complete binary mistake tree of depth \(d\) needs at least \(2^d\) distinct cuts, so \(d\le\lfloor\log_2(N+1)\rfloor\). A balanced binary-search tree on the \(N+1\) threshold parameters attains this depth. Concatenating one such tree for each independent tag gives the product lower bound. For the upper bound, run an optimal one-tag realizable online strategy separately on each tag and charge each mistake to the queried tag; the total charge is at most the sum of the \(k\) one-tag budgets. Thus

\[
\operatorname{LD}(C_{k,N})=k\lfloor\log_2(N+1)\rfloor.
\]

This finite charge is nonrecursive and includes endpoint thresholds.

### Block G2: unrestricted one-block hardness and expected loss (`step_002`-`step_003`)

**Transition 02 (`step_002`).** The accepted current-notation wrapper to Alon--Livni--Malliaris--Moran (ALMM), arXiv:1806.00949v3, Section 2, `thm:main`, together with the Section 3 PAC/privacy definitions, is the following quantified implication. There exist absolute \(b_*,d_*>0\) and \(N_*\ge2\) such that, for every \(N\ge N_*\), integer \(m\ge8\), and randomized kernel

\[
B:([N]\times\{0,1\})^m\to\{0,1\}^{[N]},
\]

if \(B\) is \((0.1,\delta_B)\)-DP for replacement adjacency with

\[
\delta_B\le \Delta_m:=\frac{d_*}{m^2\log m}
\]

and for every \(t\in[N+1]\) and every \(Q\in\Delta([N])\),

\[
\Pr_{D\sim(Q^{\tau_t})^m,B}
\left[R_Q(B(D),\tau_t)\le\frac1{16}\right]
\ge\frac{15}{16},
\]

then \(m\ge b_*\log_2^*N\). The source permits arbitrary randomized, improper hypotheses; uses exact iid sample size, population 0-1 loss, and one-example replacement privacy; and supplies no hard prior or later simulation interface. The order/label translations are bijective isometries, and the source threshold family embeds in \(\{\tau_t:t\in[N+1]\}\), so no proper decoder or surrogate target is introduced. A local proof must quote the source statement exactly and discharge this wrapper; this diagnostic does not promote the citation to proof evidence.

**Transition 03 (`step_003`).** Fix \(N\ge N_*\), \(M\ge8\), and suppose \(M<b_*L\). For any \((0.1,\Delta_M)\)-DP kernel \(B\), the contrapositive of the wrapper produces \((t,Q)\) for which

\[
\Pr\left(R_Q(B(D),\tau_t)>\frac1{16}\right)>\frac1{16}.
\]

Since the loss is in \([0,1]\),

\[
\ell_M(B;t,Q)
:=\mathbb E_{D,B}R_Q(B(D),\tau_t)
\ge
\mathbb E\left[R_Q(B(D),\tau_t)
\mathbf1\left\{R_Q(B(D),\tau_t)>\frac1{16}\right\}\right]
>\frac1{16}\cdot\frac1{16}=\eta.
\]

The strict \(2^{-8}\) gap, rather than an unsupported \(1/16\) expectation gap, is the linear payoff passed to minimax.

### Block G3: compact minimax and hard-prior order (`step_004`)

**Transition 04 (`step_004`).** Let

\[
\mathcal D_M=([N]\times\{0,1\})^M,
\qquad
\mathcal G_N=\{0,1\}^{[N]},
\]

both finite, and represent a randomized learner by the coordinates \(b_{D,g}=\Pr(B(D)=g)\). Let \(\mathcal K_{N,M}\) be the set of row-stochastic kernels satisfying every \((0.1,\Delta_M)\)-DP inequality on adjacent \(D,D'\). Nonnegativity, row-sum, and finitely many event inequalities make \(\mathcal K_{N,M}\) a nonempty compact convex polytope; a constant-output kernel witnesses nonemptiness.

Let the compact instance space be

\[
\mathcal I_N=[N+1]\times\Delta([N]).
\]

For \(z=(t,Q)\), the payoff has the explicit finite form

\[
\ell_M(B;z)=
\sum_{D=((x_s,y_s))_{s=1}^M}
\left(\prod_{s=1}^M Q(x_s)\mathbf1\{y_s=\tau_t(x_s)\}\right)
\sum_{g\in\mathcal G_N}b_{D,g}
\sum_{x\in[N]}Q(x)\mathbf1\{g(x)\ne\tau_t(x)\}.
\]

It is affine in \(B\) and continuous in \(z\). Consequently

\[
f(B)=\max_{z\in\mathcal I_N}\ell_M(B;z)
\]

is continuous on compact \(\mathcal K_{N,M}\). Transition 03 gives \(f(B)>\eta\) for every \(B\); therefore the attained value

\[
v_{N,M}:=\min_{B\in\mathcal K_{N,M}}f(B)
\]

satisfies \(v_{N,M}>\eta\), not merely \(v_{N,M}\ge\eta\).

For \(\nu\in\mathcal P(\mathcal I_N)\), set

\[
F(B,\nu)=\int_{\mathcal I_N}\ell_M(B;z)\,d\nu(z).
\]

Compact-convex minimax, applied to \(\mathcal K_{N,M}\) and the compact convex probability-measure space on \(\mathcal I_N\), gives

\[
v_{N,M}
=\min_B\max_\nu F(B,\nu)
=\max_\nu\min_B F(B,\nu).
\]

Choose an optimizer \(\nu_*\). If \(D_0=|\mathcal D_M||\mathcal G_N|\) and \(a(z)\in\mathbb R^{D_0}\) is the coefficient vector satisfying \(\ell_M(B;z)=\langle a(z),b\rangle\), then \(\bar a=\int a(z)d\nu_*(z)\) lies in the finite-dimensional convex hull of \(a(\mathcal I_N)\). Caratheodory yields points \(z_1,\ldots,z_s\), \(s\le D_0+1\), and weights \(w_j\) with

\[
\bar a=\sum_{j=1}^s w_j a(z_j).
\]

The finite prior

\[
\mu_{N,M}=\sum_{j=1}^s w_j\delta_{z_j}
\]

therefore has exactly the same payoff against every \(B\), and hence

\[
\boxed{
\forall B\in\mathcal K_{N,M},\quad
\mathbb E_{(t,Q)\sim\mu_{N,M}}
\ell_M(B;t,Q)>\eta.}
\]

The quantifier order is essential: \(\mu_{N,M}\) is selected using only \((N,M)\) and the source-private kernel class, and then the inequality holds for every kernel, including a later kernel whose code contains \(\mu_{N,M}\). There is no simulator-dependent choice of the prior and no discretization residual.

### Block G4: candidate calibration and the pointwise PAC upper bound (`step_005`-`step_006`)

**Transition 05 (`step_005`).** Fix

\[
a=b_*/16,\quad \varepsilon_0=0.1,\quad
0<c_\delta\le d_*,\quad
\alpha_0=\beta_0=2^{-13},
\]

and choose \(N_0\ge N_*\) so \(b_*L\ge16\) whenever \(N\ge N_0\). Under the contradiction hypothesis \(n<akL\),

\[
\frac{4n}{k}<\frac{b_*L}{4}.
\]

Writing \(x=b_*L\ge16\),

\[
\left\lceil\frac{4n}{k}\right\rceil
<\frac{x}{4}+1\le\frac{5x}{16}<x,
\qquad 8<x,
\]

so \(M<b_*L\). Moreover, `assump:candidate-regime` gives

\[
\varepsilon\le0.1,
\qquad
\delta\le\frac{c_\delta}{M^2\log(M+1)}
\le\frac{d_*}{M^2\log M}=\Delta_M.
\]

The distinct condition \(\delta\le1/[n\log(n+1)]\) remains part of the public candidate regime even though this proof uses the second conjunct for the source cap. The floor \(M=8\), the ceiling, and the natural-log denominator are all discharged without changing candidate \(n\).

**Transition 06 (`step_006`).** For any fixed vector \(\boldsymbol z=((t_i,Q_i))_{i=1}^k\), define

\[
P_{\boldsymbol Q}(i,x)=\frac1kQ_i(x),
\qquad c_{\boldsymbol t}(i,x)=\tau_{t_i}(x).
\]

This is a fixed realizable instance. Put

\[
\Phi(\boldsymbol z)=
\mathbb E_{S\sim(P_{\boldsymbol Q}^{c_{\boldsymbol t}})^n,A}
R_{P_{\boldsymbol Q}}(A(S),c_{\boldsymbol t}).
\]

The pointwise PAC premise and \(0\le R\le1\) imply

\[
\Phi(\boldsymbol z)
\le \alpha_0(1-\beta_0)+\beta_0
\le\alpha_0+\beta_0=2^{-12}.
\]

This bound is proved for every fixed \(\boldsymbol z\) before any averaging under \(\mu_{N,M}^k\); the analysis-side prior never replaces the theorem's universal fixed-instance quantifier.

### Block G5: arbitrary-output restriction and the ideal experiment (`step_007`-`step_008`)

**Transition 07 (`step_007`).** For \(j\in[k]\) and arbitrary \(h\in\{0,1\}^{X_{k,N}}\), define

\[
D_jh(x)=h(j,x),\qquad
e_j(h;t_j,Q_j)=R_{Q_j}(D_jh,\tau_{t_j}).
\]

Then \(D_jh\in\{0,1\}^{[N]}\), regardless of monotonicity, and

\[
R_{P_{\boldsymbol Q}}(h,c_{\boldsymbol t})
=\frac1k\sum_{i=1}^k e_i(h;t_i,Q_i).
\]

Thus the one-block output consumed by ALMM is an exact improper restriction, not a projection or decoder.

**Transition 08 (`step_008`).** Define the ideal experiment by drawing

\[
J\sim\operatorname{Unif}[k],\qquad
Z_i=(t_i,Q_i)\stackrel{\mathrm{iid}}\sim\mu_{N,M}quad(i\in[k]),
\]

with \(J\) independent of the vector, then drawing \(I_1,\ldots,I_n\stackrel{\mathrm{iid}}\sim\operatorname{Unif}[k]\), \(X_s\sim Q_{I_s}\) conditionally independently, and

\[
S^{\mathrm{id}}_s=((I_s,X_s),\tau_{t_{I_s}}(X_s)).
\]

Conditional on \(\boldsymbol Z\), \(S^{\mathrm{id}}\sim(P_{\boldsymbol Q}^{c_{\boldsymbol t}})^n\). Let \(H=A(S^{\mathrm{id}})\). The pair \((\boldsymbol Z,S^{\mathrm{id}},H)\) does not depend on \(J\), so conditioning on all three and averaging only over \(J\) gives

\[
\mathbb E[e_J(H;t_J,Q_J)\mid \boldsymbol Z,S^{\mathrm{id}},H]
=\frac1k\sum_{i=1}^ke_i(H;t_i,Q_i)
=R_{P_{\boldsymbol Q}}(H,c_{\boldsymbol t}).
\]

This is the exact average-risk identity for arbitrary tag-asymmetric randomized \(A\). No exchangeability of the learner is assumed; only the independent uniform hidden coordinate and iid instance vector are used.

### Block G6: overflow, executable simulation, coupling, and privacy (`step_009`-`step_012`)

**Transition 09 (`step_009`).** In either experiment let

\[
U=\sum_{s=1}^n\mathbf1\{I_s=J\},\qquad \lambda=n/k.
\]

Conditionally on every \(J\), and hence unconditionally, \(U\sim\operatorname{Bin}(n,1/k)\). If \(\lambda\le2\), then \(M=8\), and falling-factorial Markov gives

\[
\Pr(U>M)=\Pr(U\ge9)
\le\frac{\mathbb E(U)_9}{9!}
=\frac{(n)_9}{k^9 9!}
\le\frac{\lambda^9}{9!}
\le\frac{2^9}{9!}<2^{-9}.
\]

If \(\lambda>2\), set \(j=\lceil4\lambda\rceil=M\ge9\). Then

\[
\Pr(U>M)
\le\frac{\mathbb E(U)_{j+1}}{(j+1)!}
\le\frac{\lambda^{j+1}}{(j+1)!}
\le f_j:=\frac{(j/4)^{j+1}}{(j+1)!}.
\]

For \(j\ge9\),

\[
\frac{f_{j+1}}{f_j}
=\frac{j+1}{4(j+2)}\left(1+\frac1j\right)^{j+1}<1,
\]

and direct integer arithmetic gives

\[
f_j\le f_9=\frac{(9/4)^{10}}{10!}<2^{-10}<2^{-9}.
\]

Denote \(p_{\mathrm{ov}}=\Pr(U>M)\); uniformly,

\[
\boxed{p_{\mathrm{ov}}<2^{-9}.}
\]

When \(k=2\) or \(3\), \(M\ge n\), so \(p_{\mathrm{ov}}=0\). When \(n<k\), the \(M=8\) branch applies. Thus the budget certificate covers every advertised boundary.

**Transition 10 (`step_010`).** With \(\mu=\mu_{N,M}\) already fixed, construct a one-block kernel \(B_{A,\mu}\) on an arbitrary input

\[
D=((W_\ell,Y_\ell))_{\ell=1}^M\in([N]\times\{0,1\})^M.
\]

It samples \(J\), the nonhidden instances \(Z_i=(t_i,Q_i)\sim\mu\) for \(i\ne J\), and the global tags \(I_1,\ldots,I_n\). If \(U>M\), it reads no input row, does not call \(A\), and returns a fixed \(g_0\in\{0,1\}^{[N]}\). If \(U\le M\), enumerate the positions with \(I_s=J\) increasingly. At the \(\ell\)-th such position insert \(((J,W_\ell),Y_\ell)\); at a position tagged \(i\ne J\), independently draw \(X_s\sim Q_i\) and insert \(((i,X_s),\tau_{t_i}(X_s))\). Call \(A\) on the resulting exact size-\(n\) dataset and return \(D_JA(S^{\mathrm{act}})\).

This is a total randomized kernel on all labeled inputs. It does not need the hidden \(t\) or \(Q\): hidden labels arrive in \(D\). On nonoverflow executions, input row \(\ell\) has exactly one image if \(\ell\le U\), and no image otherwise. On overflow, every row has no image. This is the pathwise one-use invariant.

**Transition 11 (`step_011`).** In the prior-averaged risk of \(B_{A,\mu}\), draw the hidden \(Z_J=(t_J,Q_J)\sim\mu\) and couple its input \(D\) to the first \(M\) records of an infinite iid sequence from \(Q_J^{\tau_{t_J}}\). Share \(J\), all \(Z_i\), tags, nonhidden samples, and \(A\)'s coins with the ideal experiment, using later hidden records only in the ideal experiment. On \(\{U\le M\}\),

\[
S^{\mathrm{act}}=S^{\mathrm{id}}
\quad\text{and}\quad
D_JA(S^{\mathrm{act}})=D_JA(S^{\mathrm{id}}).
\]

For the actual and ideal selected losses \(L_{\mathrm{act}},L_{\mathrm{id}}\in[0,1]\), this pathwise identity gives

\[
L_{\mathrm{id}}\ge L_{\mathrm{act}}-\mathbf1\{U>M\},
\qquad
\mathbb E L_{\mathrm{id}}
\ge\mathbb E L_{\mathrm{act}}-p_{\mathrm{ov}}.
\]

There is no conditioning claim about the sample law. The ideal iid law is constructed directly, equality is asserted only off overflow, and the sole residual is charged once.

**Transition 12 (`step_012`).** Fix all preprocessing randomness of \(B_{A,\mu}\) except the internal coins of \(A\), and compare adjacent one-block inputs \(D\simeq D'\) differing in row \(\ell\). On overflow, the outputs coincide. Off overflow, if \(\ell>U\), the two global datasets coincide; if \(\ell\le U\), they differ in exactly the \(\ell\)-th hidden-tag occurrence and nowhere else. This remains true when both the feature and label are replaced and when the input is not realizable. Therefore the fixed-seed preprocessing maps adjacent inputs to equal or replacement-adjacent global datasets.

For every one-block output event \(E\), `assump:central-dp` for \(A\), followed by restriction postprocessing, yields seedwise

\[
\Pr(B_{A,\mu}(D)\in E\mid\rho)
\le e^\varepsilon
\Pr(B_{A,\mu}(D')\in E\mid\rho)+\delta.
\]

Averaging over the common input-independent seed \(\rho\) preserves the same single \(\delta\), so \(B_{A,\mu}\) is exactly \((\varepsilon,\delta)\)-DP. Transition 05 and parameter monotonicity then give

\[
(\varepsilon,\delta)\preceq(0.1,\Delta_M),
\]

placing the simulator in \(\mathcal K_{N,M}\) without composition, group privacy, or an overflow multiplier.

### Block G7: transfer, fixed extraction, and theorem closure (`step_013`-`step_015`)

**Transition 13 (`step_013`).** Apply the hard-prior inequality from Transition 04 to the now-certified simulator:

\[
\mathbb E L_{\mathrm{act}}>\eta=2^{-8}.
\]

The coupling and overflow certificate give

\[
\mathbb E L_{\mathrm{id}}
>2^{-8}-p_{\mathrm{ov}}
>2^{-8}-2^{-9}=2^{-9}.
\]

Under prior averaging, the construction order \(J\), hidden \(Z_J\sim\mu\), nonhidden \(Z_i\sim\mu\) is distributionally the same as an iid vector \(\boldsymbol Z\sim\mu^k\) independent of \(J\). Transition 08 therefore identifies the left-hand side with exact expected product risk:

\[
\boxed{
\mathbb E_{\boldsymbol Z\sim\mu^k}
\Phi(\boldsymbol Z)>2^{-9}.}
\]

No term other than overflow is lost: restriction, ideal sample law, exchangeability, and privacy are exact interfaces.

**Transition 14 (`step_014`).** The prior \(\mu\) has finite support, so \(\mu^k\) is a finite convex combination. The displayed strict average lower bound implies the existence of one fixed vector \(\boldsymbol z^*=((t_i^*,Q_i^*))_{i=1}^k\) such that

\[
\Phi(\boldsymbol z^*)>2^{-9}.
\]

For this identical fixed \(P_{\boldsymbol Q^*}\), target \(c_{\boldsymbol t^*}\), sample size \(n\), learner \(A\), and population-risk metric, Transition 06 gives

\[
\Phi(\boldsymbol z^*)\le2^{-12},
\]

a contradiction. The fixed instance may depend on the candidate \(A\), which is permitted by a lower-bound proof; it is selected before applying the pointwise PAC inequality to that fixed instance, and no analysis-side randomness remains.

**Transition 15 (`step_015`).** For an arbitrary candidate satisfying the three primitive assumptions, assume \(n<akL\). Transition 05 puts the exact \(M\) and privacy parameters in the hard regime, Transitions 04 and 10-13 produce the average product lower bound, and Transition 14 contradicts the candidate's pointwise PAC guarantee. Therefore the assumption is impossible and

\[
n\ge ak\log_2^*N.
\]

The implication remains pointwise and nonasymptotic; all choices of constants precede the universal candidate quantifiers.

### Block G8: tower-diagonal specialization (`step_016`)

**Transition 16 (`step_016`).** Let \(k=r\), \(N=T_r=\operatorname{Tow}_2(r)\). The declared recursion gives exactly

\[
\log_2^*T_r=r,
\qquad
\left\lfloor\log_2(T_r+1)\right\rfloor=T_{r-1}.
\]

Transitions 01 and 15 yield

\[
n\ge ar^2,
\quad
\operatorname{VC}(C_{r,T_r})=r,
\quad
\operatorname{LD}(C_{r,T_r})=rT_{r-1},
\quad
|C_{r,T_r}|=(T_r+1)^r.
\]

For \(r\ge2\),

\[
T_{r-1}\le rT_{r-1}\le T_r,
\]

so monotonicity of \(\log_2^*\) gives \(r-1\le\log_2^*(rT_{r-1})\le r\), hence \(\log_2^*\operatorname{LD}=\Theta(r)\). Also \(\log|C|=r\log(T_r+1)=\Theta(rT_{r-1})\). Excluding only the finitely many \(r\) with \(T_r<N_0\),

\[
n=\Omega(r^2)
=\Omega\!\left(\operatorname{VC}(C_{r,T_r})
\log_2^*\operatorname{LD}(C_{r,T_r})\right).
\]

The existing additive scale is \(\Theta(r)\), while the proved scale is quadratic; the stronger exponential and cardinality milestones remain open.

### Assembly

G1 supplies the exact structural interpretation. G2 turns the unrestricted ALMM impossibility into a strict expected-loss game. G3 changes the order of quantifiers once, selecting a finite prior before any simulator. G4 converts the negated target into the exact one-block source regime and records a pointwise PAC upper bound. G5 identifies an arbitrary product output with an exact hidden-coordinate restriction in an ideal iid experiment. G6 constructs an executable finite-input kernel, pays one strictly controlled overflow residual, and proves exact one-use privacy. G7 applies the prior to that kernel, restores the exact product risk, extracts a fixed instance, and closes the contradiction. G8 performs only deterministic tower arithmetic. Thus the accepted blocks compose to the exact theorem; the remaining work is local proof certification of the interfaces already displayed, not a missing theorem-level bridge.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G1: tagged-product structure | Exact VC, LD, cardinality and endpoint baseline | `step_001` | Primitive class definition | None beyond the fixed class | Formalize exact one-tag LD tree and additive product upper/lower proof; `step-local` |
| G2: one-block hardness | Unrestricted source wrapper and strict expected-risk gap | `step_002`, `step_003` | G1 only as accepted dependency; ALMM source | No new theorem assumption; source hypotheses are discharged later | Quote and verify the exact source statement and current-notation wrapper; prove the strict expectation conversion; `step-local` |
| G3: uniform finite hard prior | Select one prior before all simulators | `step_004` | G2 gap, finite kernel representation | None | Prove compactness, continuity, minimax equality, attainment, and exact Caratheodory support; `step-local` |
| G4: admissibility and PAC upper bound | Enter source regime and preserve fixed-instance PAC quantifier | `step_005`, `step_006` | G2 constants, G3 prior for accepted dependency order | `assump:candidate-regime`, `assump:distribution-free-realizable-pac` | Check all strict ceiling/log inequalities and expectation split; `step-local` |
| G5: ideal hidden coordinate | Exact improper restriction and average product-risk identity | `step_007`, `step_008` | G3 prior | Primitive output-space definition | Formalize joint independence and conditional expectation without learner symmetry; `step-local` |
| G6: executable transfer | Binomial tail, one-use kernel, exact coupling, exact DP | `step_009`-`step_012` | G3-G5 outputs and G4 parameter certificate | `assump:central-dp`, `assump:candidate-regime` | Verify factorial arithmetic, total simulator definition, no-overflow coupling, seedwise adjacency, mixture DP, and monotonicity; all `step-local` |
| G7: contradiction | Transfer the hard gap, extract a fixed instance, prove R1 | `step_013`-`step_015` | G3-G6 outputs | All three primitive assumptions through dependencies | Check strict numerical ledger and fixed-vector extraction; `step-local` |
| G8: public specialization | Prove R2 and state remaining source gap | `step_016` | G1, G7 | None | Verify tower/log-star inequalities and fixed initial-index exclusion; `step-local` |
| Final assembly | Quantifier closure and exact-goal statement | Direct assembly role | G1-G8 | Exactly the three stable assumption IDs | No new lemma or bridge permitted; assemble only after local steps are independently accepted |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | G1, then G8/final interpretation | Producer for `step_016` | Distinct cuts, VC upper/lower, exact one-tag LD, product LD additivity | Endpoint cuts retained |
| `step_002` | G2 source wrapper | Producer for `step_003`, `step_005` | Exact ALMM statement, source locator, arbitrary-output and replacement-DP convention map, constants and nonoutputs | Sole external lower source |
| `step_003` | G2 expected-loss transition | `step_002 -> step_003 -> step_004` | Contrapositive quantifiers and strict bounded-loss inequality | Gap is exactly \(\eta=2^{-8}\) |
| `step_004` | G3 hard-prior construction | Producer for `step_006`, `step_008`, `step_010`, `step_013` | Kernel polytope, continuous payoff, uniform strict value, Sion/separation, finite support | Prior must precede simulator |
| `step_005` | G4 scalar calibration | Source constants and `assump:candidate-regime` to G6/G7 | Ceiling/floor/log inequalities, fixed constant choices, both delta conjuncts | Exact candidate \(M\), not expected size |
| `step_006` | G4 pointwise PAC upper bound | Producer for `step_014` | Realizability and success/failure expectation split for every fixed vector | Must precede analysis-side averaging |
| `step_007` | G5 restriction | Producer for `step_008`, `step_010`, `step_011`, `step_013` | Exact output/risk identity for arbitrary hypotheses | No proper decoder |
| `step_008` | G5 ideal experiment | Producer for `step_011`, `step_013` | Iid vector, independence of \(J\), iid product sample, conditional average-risk identity | Learner may be tag-asymmetric |
| `step_009` | G6 overflow certificate | Producer for `step_010`, `step_011`, `step_013` | Binomial law, two factorial-moment cases, decreasing scalar sequence | Includes \(k=2,3\), \(n<k\), \(M=8\) |
| `step_010` | G6 executable simulator | Producer for `step_011`, `step_012` | Total kernel, input-free abort, exact row construction, one-use invariant | Defined on nonrealizable adjacent inputs |
| `step_011` | G6 actual/ideal bridge | Producer for `step_013` | Infinite-sequence coupling and pathwise bounded-loss inequality | Sole residual \(p_{\mathrm{ov}}\) |
| `step_012` | G6 privacy certificate | Producer for `step_013` | Fixed-seed one-row map, postprocessing, common mixture, parameter monotonicity | No composition or group privacy |
| `step_013` | G7 average product lower bound | Producer for `step_014` | Instantiate prior for simulator, subtract overflow once, invoke exact exchangeability | Strict lower bound \(>2^{-9}\) |
| `step_014` | G7 fixed extraction | Producer for `step_015` | Finite-average maximum principle and same-object PAC comparison | Removes all instance randomness |
| `step_015` | G7 exact R1 closure | Producer for `step_016` and final theorem | Universal candidate quantifiers and contradiction discharge | Exact \(n\ge akL_N\) |
| `step_016` | G8 R2 specialization | Final public corollary | Tower inverse, floor, LD log-star bounds, cardinality scale | Constants independent of \(r\) |

## Dependency And Assumption Audit

The only theorem-facing primitive conditions are:

| Condition | Provenance class | Where consumed | Audit result |
| --------- | ---------------- | -------------- | ------------ |
| `assump:candidate-regime` | primitive condition | `step_005`, `step_012`, `step_015` | Checkable before the run; both delta conjuncts remain public; only the second supplies the ALMM cap |
| `assump:central-dp` | primitive condition | `step_012`, then `step_013` | Exact one-row replacement privacy on all labeled datasets; simulator privacy is derived, not assumed |
| `assump:distribution-free-realizable-pac` | primitive condition | `step_006`, `step_014` | Applied separately to every fixed product instance; no Bayesian or average-case substitution |

The theorem-facing generated objects and conditions are all assigned legal producers: source constants (`step_002`), expected-loss gap (`step_003`), finite prior (`step_004`), hard-regime certificate (`step_005`), fixed-instance PAC upper bound (`step_006`), restriction (`step_007`), ideal iid/exchangeability certificate (`step_008`), binomial/overflow certificate (`step_009`), simulator and one-use invariant (`step_010`), coupling (`step_011`), simulator DP (`step_012`), average product lower bound (`step_013`), fixed hard vector (`step_014`), public R1 (`step_015`), and R2 (`step_016`). Each consumer depends on its producer.

Local conditional hypotheses occur only inside diagnostic subarguments: fixing a kernel \(B\), an instance \((t,Q)\), a vector \(\boldsymbol z\), a preprocessing seed, or the event \(U\le M\). None becomes a public theorem assumption. The hard-regime inequality \(M<b_*L\) is derived under the contradiction hypothesis and discharged at closure. No missing derived-condition bridge was found.

The accepted dependency graph is respected exactly, including accepted dependencies that are stronger than logical necessity (for example `step_006` records `step_004` and `step_005`). No step consumes the prior, overflow event, one-use property, DP certificate, or fixed hard instance before production.

## Citation And Tool Audit

| Source or tool | Current-branch objects and role | Assumptions / preflight to discharge | Conclusion needed and convention compatibility | Affected blocks / Step IDs | Diagnostic status |
| -------------- | ------------------------------- | ------------------------------------ | ---------------------------------------------- | -------------------------- | ----------------- |
| ALMM, arXiv:1806.00949v3, Section 2 `thm:main`; Section 3 definitions | One-block domain \([N]\), exact size \(M\), threshold-realizable \(Q^{\tau_t}\), arbitrary output \(g\), population risk, replacement-DP kernel | Verify source version/label and constants; randomized possibly improper learner; exact iid size; error/failure \((1/16,1/16)\); \(\varepsilon=0.1\); \(\delta\le d_*/(M^2\log M)\); \(N\ge N_*\), \(M\ge8\) | Wrapper conclusion \(M\ge b_*\log_2^*N\). Order bijection, label bijection/complement, optional reversal, and log-base constants preserve objects, metric, adjacency, and improper scope. Endpoint enlargement cannot weaken impossibility. Known nonoutputs: no prior, game, simulator, coupling, or fixed hard instance | G2/G4; `step_002`, `step_003`, `step_005` | Valid diagnostic discharge path; exact quotation remains `step-local` proof work |
| Compactness of finite stochastic kernels and DP constraints | Coordinates \(b_{D,g}\), kernel set \(\mathcal K_{N,M}\) | Finite input/output sets; all-event DP constraints reduce to finitely many linear inequalities; row stochasticity; constant kernel nonempty | Nonempty compact convex polytope in the exact branch replacement convention | G3; `step_004` | Current-notation direct derivation exposed; local proof required |
| Compact-convex minimax (Sion or equivalent separation) | \(F(B,\nu)=\int\ell(B;z)d\nu\) on \(\mathcal K_{N,M}\times\mathcal P(\mathcal I_N)\) | Compact convex domains; weak compactness of probability measures on compact \(\mathcal I_N\); continuity; affine/convex-concave payoff | \(\min_B\max_\nu F=\max_\nu\min_BF\) for the same payoff and exact strict value | G3; `step_004` | Exact hypotheses and output interface identified; theorem statement/proof must be included locally |
| Caratheodory's theorem | Payoff coefficient vectors \(a(t,Q)\in\mathbb R^{D_0}\) | Continuous compact image; barycenter lies in its finite-dimensional convex hull | Finite support of size at most \(D_0+1\), preserving every kernel payoff exactly | G3; `step_004` | No approximation or target residual; local proof/application required |
| Littlestone tree / realizable mistake-bound equivalence | One-tag thresholds and disjoint product | Exact threshold order, finite class, one-tag optimal strategy, disjoint tag queries | One-tag LD \(\lfloor\log_2(N+1)\rfloor\); concatenated lower tree and summed upper budget | G1/G8; `step_001`, `step_016` | Can be proved directly in current notation; no incompatible external convention |
| Falling-factorial Markov bound | \(U\sim\mathrm{Bin}(n,1/k)\) | \(\mathbf1\{U\ge q\}\le(U)_q/q!\); \(\mathbb E(U)_q=(n)_q/k^q\); integer ceiling cases | Uniform \(p_{\mathrm{ov}}<2^{-9}\) for exact event \(U>M\) | G6; `step_009` | Direct derivation and scalar checks exposed; local proof required |
| DP postprocessing, common input-independent mixtures, and parameter monotonicity | Simulator preprocessing, \(A\), restriction \(D_J\) | Fixed seed maps adjacent inputs to equal/adjacent global datasets; do not fix \(A\)'s coins; seed law independent of input; \(\varepsilon\le0.1\), \(\delta\le\Delta_M\) | Exact simulator \((\varepsilon,\delta)\)-DP, then membership in \(\mathcal K_{N,M}\) | G6/G7; `step_012`, `step_013` | Derived in exact replacement convention; local event-level proof required |
| Conditional expectation / finite-average maximum principle | Independent \(J\), iid vector, finite \(\mu^k\) | Full ideal output law independent of \(J\); weights nonnegative and sum to one | Exact selected-risk/product-risk identity and one fixed vector above the average threshold | G5/G7; `step_008`, `step_014` | Same objects and population metric; no source mismatch |
| Direct tower arithmetic | \(T_r\), \(\log_2^*\), VC, LD, cardinality | Exact recursion and floor convention; fixed initial-index exclusion | \(L_{T_r}=r\), \(\log_2^*(rT_{r-1})=\Theta(r)\), public \(\Omega(r^2)\) | G8; `step_016` | Exact setting convention; local arithmetic proof required |

No cited source is used for a conclusion it does not supply. In particular, ALMM supplies only the unrestricted one-block lower bound; compact minimax, finite support, overflow, exchangeability, simulation, privacy transfer, and extraction are current-branch derivations.

## Quantitative Dependence Audit

- Exposed variables: \(k,N,n,\varepsilon,\delta\), \(M=\max\{8,\lceil4n/k\rceil\}\), \(L_N=\log_2^*N\), \(\operatorname{VC}\), \(\operatorname{LD}\), \(|C|\), and diagonal parameter \(r\).
- Fixed source/theorem constants: \(b_*,d_*,N_*\), \(a=b_*/16\), \(\varepsilon_0=0.1\), \(0<c_\delta\le d_*\), \(\alpha_0=\beta_0=2^{-13}\), and a fixed \(N_0\) with \(N_0\ge N_*\) and \(b_*\log_2^*N\ge16\) for all \(N\ge N_0\).
- Hidden constants: every \(\Omega\) or \(\Theta\) constant may depend only on those fixed absolute constants and not on \(r,k,N,n,\varepsilon,\delta,A\), the prior support point, or simulator randomness.
- Probability mode: final implication deterministic; candidate PAC high probability over iid data and \(A\)'s coins; intermediate lower bounds in expectation; fixed instance extracted before contradiction. No high-probability claim is silently upgraded from expectation.
- Horizon mode: exact fixed candidate size \(n\) and exact simulator input size \(M\); no expected-size, stopping-time, horizon-uniform, all-time, or limit-in-\(n\) statement. The diagonal is a deterministic \(r\to\infty\) specialization after fixed \(N_0\).
- Norm/metric mode: population 0-1 risk throughout. Restriction, coupling, source wrapper, product decomposition, and fixed extraction use this identical metric.
- Candidate privacy bridge:
  \[
  \delta\le\frac{c_\delta}{M^2\log(M+1)}
  \le\frac{d_*}{M^2\log M}=\Delta_M,
  \qquad \varepsilon\le0.1.
  \]
  The separate \(1/[n\log(n+1)]\) conjunct is retained in the theorem.
- Sample-budget bridge: under \(n<(b_*/16)kL_N\) and \(b_*L_N\ge16\), both \(8\) and \(\lceil4n/k\rceil\) are strictly less than \(b_*L_N\), hence \(M<b_*L_N\).
- Numerical loss ledger:
  \[
  \eta=(1/16)^2=2^{-8},\qquad
  p_{\mathrm{ov}}<2^{-9},\qquad
  \eta-p_{\mathrm{ov}}>2^{-9},\qquad
  \alpha_0+\beta_0=2^{-12}.
  \]
  Therefore the fixed-instance contradiction has strict slack \(2^{-9}>2^{-12}\).
- Overflow dependence: \(U\sim\mathrm{Bin}(n,1/k)\), with exact two-case bounds at \(n/k\le2\) and \(>2\); no asymptotic Chernoff constant is hidden.
- Public specialization bridge: \(L_{T_r}=r\), \(\operatorname{VC}=r\), \(\operatorname{LD}=rT_{r-1}\), \(r-1\le\log_2^*\operatorname{LD}\le r\), and \(\log|C|=\Theta(rT_{r-1})\); only finitely many indices below \(N_0\) are excluded.
- Baseline invariance: the arbitrary-improper ALMM interface, endpoint thresholds, exact nonoverflow simulation, central replacement adjacency, exact candidate delta conjunction, and fixed-instance PAC quantifier are preserved. At \(U=0\) the two sample constructions agree; at \(k=2,3\) overflow is impossible. No weaker stopped, conditional, proper, Bayesian, or remainder-only surrogate replaces the target.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ----------------------------------- | ---------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Exact VC/LD/cardinality certificate (`step_001`) | Structural lower/upper identities; interprets R2 | Finite \(k\ge2,N\ge N_0\) | \(\lvert C\rvert=(N+1)^k\), VC \(=k\), LD \(=kd_N\), \(d_N=\lfloor\log_2(N+1)\rfloor\) | Independent parameters on disjoint tags; balanced one-tag trees | Endpoint duplication, same-tag VC obstruction, possible LD nonadditivity | Finite sum of \(k\) one-tag budgets; each online mistake has one tag and total charge \(\le kd_N\) | structural lower/upper comparison; reserve/ledger under declared scope | Primitive class definition; endpoints included, no boundary exclusion | Independent lower witnesses and per-tag upper strategies have exactly the needed shattering/mistake content | Exact class and exact quantities are consumed; no transformed object or residual | `step-local` | Direct producer `step_001`; only consumers `step_016`/assembly; no final conclusion assumed | No trajectory; endpoint check: \(t=1,N+1\) give distinct all-one/all-zero functions | Concatenate lower trees; sum upper budgets | Tagged class definition and finite threshold order | One-tag trees and strategies derived locally | \(k=2\), \(N=N_0\), both endpoints work | Structural specialization would have no valid public parameter scale |
| ALMM wrapper (`step_002`) | Cited unrestricted lower source | One exact size \(M\ge8\), \(N\ge N_*\) | PAC \((1/16,1/16)\) + \((0.1,\Delta_M)\)-DP \(\Rightarrow M\ge b_*L\) | Source \(\Omega(\log^*N)\) improper threshold impossibility | Label/order/log conventions; endpoint enlargement; implicit constants | One fixed-size use; no privacy composition or repeated defect | structural lower/upper comparison | ALMM arXiv:1806.00949v3 `thm:main`; source regime excludes only \(N<N_*\), \(M<8\) | Source explicitly covers randomized arbitrary hypotheses, iid population loss, replacement DP | Source \([N]\), \(M\), \(Q,t\), and risk are the same consumed objects after bijective isometry; no residual | `step-local` | Source fixed before expected gap, prior, and simulator; dependencies `step_002 -> step_003/005` | All-same-label/endpoint enlargement does not deactivate source; hard instance may be interior | Stronger privacy and larger target family preserve impossibility | Source hypotheses plus exact branch conventions | Wrapper constants \(b_*,d_*,N_*\) | \(M=8\), smaller \(\varepsilon,\delta\), arbitrary outputs handled | Without verified unrestricted source content, every later lower mechanism is unsupported |
| Expected-loss gap (`step_003`) | Mode conversion; linear minimax payoff | One fixed \((N,M,B)\) in hard regime | \(\Pr(R>1/16)>1/16\Rightarrow\mathbb ER>2^{-8}\) | Positive source failure probability and loss threshold | Intentional factor \(1/16\); easy instances with zero loss | Single expectation; no accumulated defect | structural lower/upper comparison | Accepted wrapper output plus \(0\le R\le1\); no boundary excluded | A lower-tail event supplies positive lower/sign content, not merely an upper bound | Same \(R_Q(B(D),\tau_t)\) is used by minimax; zero residual | `step-local` | `step_002 -> step_003 -> step_004`; no prior assumed | Constant/randomized kernel included; worst instance remains available if another instance is easy | \(R\mathbf1_{\{R>1/16\}}>(1/16)\mathbf1_{\{R>1/16\}}\) | Source failure event | \(\eta=2^{-8}\) | Zero-risk boundary instances do not affect supremum | Without strict gap, minimax could yield a vacuous prior |
| Finite hard prior (`step_004`) | Quantifier swap and generated adversary | Fixed finite \(N,M\), all source-private kernels | \(v=\min_B\max_z\ell=\max_\mu\min_B\mathbb E_\mu\ell>\eta\); coefficient barycenter has finite support | Compact kernel polytope and strict uniform game value | Continuum of \(Q\); randomized kernels; possible algorithm-prior circularity | One finite convex combination; no repeated or approximation defect | structural lower/upper comparison; algebraic coupling | Primitive finite kernel spaces + accepted gap + compact minimax + Caratheodory; point masses included | Minimax supplies a lower bound uniform over the exact kernel class; Caratheodory preserves that functional exactly | Produced \(\mu\)-averaged exact one-block risk is consumed by simulator hardness; every residual is zero | `step-local` | Gap produced before prior; prior fixed before simulator; universal \(B\) quantifier then includes simulator | Constant kernel makes strategy set nonempty; point-mass \(Q\) and nonunique threshold representations included | Compact attainment makes pointwise strictness uniform; exact coefficient equality preserves margin | Finite data/output spaces and source-private DP inequalities | \(v_{N,M}\), optimizer, finite \(\mu_{N,M}\) | Null/degenerate \(Q\) stays inside compact instance space | An algorithm-dependent post-simulator instance would be circular and unusable |
| Hard-regime certificate (`step_005`) | Quantitative admissibility bridge | Every candidate under negated R1 | \(n<(b_*/16)kL\Rightarrow M<b_*L\), \((\varepsilon,\delta)\preceq(0.1,\Delta_M)\) | Fixed \(N_0\), fourfold budget, source constants | Ceiling +1, floor 8, \(\log(M+1)\), small \(n/k\) | Single scalar specialization; no stochastic accumulation | algebraic coupling; structural lower/upper comparison | `assump:candidate-regime` and source constants; excludes only \(N<N_0\) already outside theorem | Available scalar lower \(b_*L\ge16\) dominates both floor and rounding defects | Exact candidate \(M,\varepsilon,\delta\) are consumed; no expected-size transfer | `step-local` | Primitive scalar conditions and source constants precede simulator/source application | At \(n=1\) or \(n<k\), \(M=8<b_*L\) by fixed \(N_0\) | \(\lceil4n/k\rceil<x/4+1\le5x/16<x\); delta denominator/source monotonicity | Candidate inequalities | Derived \(M,L,\Delta_M\) | \(k=2\), \(N=N_0\), \(M=8\) handled | Source hardness might not apply, invalidating the prior |
| Fixed-instance PAC upper bound (`step_006`) | Upper comparison for contradiction | Every fixed product vector and exact sample size \(n\) | \(\Phi(\boldsymbol z)\le\alpha_0(1-\beta_0)+\beta_0\le2^{-12}\) | Universal distribution-free PAC premise | Failure event contributes at most one; random hypotheses | One fixed expectation; later finite averaging only after pointwise proof | structural lower/upper comparison | `assump:distribution-free-realizable-pac`; no product vector excluded | Premise has exact fixed-distribution, realizable, arbitrary-output content needed | Same \(P_{\boldsymbol Q},c_{\boldsymbol t}\), \(n\), and population risk are compared in `step_014`; zero residual | `step-local` | Primitive PAC -> `step_006 -> step_014`; prior average not assumed | Endpoint and point-mass product instance is already realizable and theorem-covered | Split success/failure and use \(R\le1\) | Universal PAC condition | \(\Phi(\boldsymbol z)\) upper interface | Degenerate blocks and randomized \(A\) covered | An average-only upper bound would not discharge fixed-instance PAC |
| Exact restriction (`step_007`) | Improper one-block output interface | Every \(j\) and arbitrary \(h\) | \(D_jh(x)=h(j,x)\), \(R_Q(D_jh,\tau_t)=e_j(h)\) | Full improper hypothesis space and tagged domain | Nonmonotonicity and off-support behavior, intentionally irrelevant | One postprocessing operation | algebraic coupling | Primitive output-space definition; no branch excluded | ALMM accepts the exact arbitrary function produced; no proper/support source required | Produced and consumed one-block hypothesis are identical; risk residual zero | `step-local` | Direct producer before ideal/simulator consumers | Constant, oscillating, or randomized output restricts legally | Evaluation identity on tag \(j\) | Full output space | Restriction map \(D_j\) | Point-mass \(Q\) and endpoints covered | A proper decoder may not exist and cannot replace this interface |
| Ideal iid/exchangeability certificate (`step_008`) | Generated product law and average-risk identity | One finite \(k\), exact iid vector/sample | \(\boldsymbol Z\sim\mu^k\perp J\); \(\mathbb E[e_J\mid\boldsymbol Z,S,H]=k^{-1}\sum e_i=R_P\) | Independent uniform hidden coordinate and equal tag weights | Tag-asymmetric \(A\), unequal \(Q_i\), random output | Finite average over exactly \(k\) coordinates; no persistent defect | algebraic coupling | Derived finite prior + primitive uniform tag construction; no symmetry assumption | Independence supplies the exact averaging content; not an upper-bound surrogate | Selected loss transfers to exact product population risk with equality in the same metric | `step-local` | `step_004 + step_007 -> step_008`; output consumed later only | At \(U=0\), \(J\) remains independent and identity still holds | Condition on all non-\(J\) randomness, then average uniform \(J\) | Uniform tags and product definition | Iid instance vector, ideal sample/output | \(k=2,3\), deliberate tag asymmetry, endpoints handled | A fixed or data-dependent hidden tag could concentrate all error elsewhere |
| Overflow certificate (`step_009`) | Finite-budget tail and sole transfer slack | Exact \(n,k,M\), one finite tag sequence | \(U\sim\mathrm{Bin}(n,1/k)\), \(p_{ov}<2^{-9}\) via order 9 or \(M+1\) factorial moment | Fourfold mean budget and floor 8 | Upper binomial tail; ceiling; small mean | Accumulated defect is nonnegative count \(U\); exact factorial moment controls the one event, charged once, finite over \(n\) trials | reserve/ledger under declared scope; summable control | Primitive iid uniform tags; all \(n,k\) branches handled, none excluded | Factorial moment has exact tail-control content at the required positive scale | Produced probability controls a \([0,1]\)-loss residual one-for-one; required margin \(2^{-9}\), all residual dominated strictly | `step-local` | Tag law produces tail before simulator/coupling; no use of desired risk result | \(U=0\) spends zero rows; \(U>M\) triggers input-free branch before consumption | \(1_{U\ge q}\le(U)_q/q!\); explicit scalar sequence decreases | \(n,k,M\) and tag law | \(p_{ov}\) | \(k=2,3\): zero overflow; \(n<k\): floor branch | An uncontrolled tail could consume the full \(2^{-8}\) hard gap |
| Executable one-use simulator (`step_010`) | Generated kernel and adjacency invariant | Exact input size \(M\), output dataset size \(n\) | Row \(\ell\) maps to the \(\ell\)-th hidden occurrence iff \(\ell\le U\le M\); overflow maps no row | Predrawn tags and input-supplied hidden labeled records | Unknown hidden \(t,Q\), unused rows, overflow, arbitrary labels | Finite ledger: each input row charged zero or one time; total images \(U\le M\); overflow charge zero | algebraic coupling; reserve/ledger under declared scope | Derived prior/restriction/tail and primitive preprocessing; overflow branch explicitly handles boundary | One-use source has exact support/adjacency content, not merely a size upper bound | Off overflow, produced global rows equal ideal target rows; only overflow residual is deferred and sourced by `step_009` | `step-local` | Prior and tags exist first; one-use produced before privacy/coupling consumers | \(U=0\): call \(A\) on nonhidden rows only; \(U>M\): no read/no call | Deterministic occurrence indexing prevents reuse | Input dataset, fixed \(A\), branch definition | Prior, tags, one-use map | Corrupt/nonrealizable adjacent row, unused row, endpoints handled | Reuse would require group privacy and corrupt exact iid transfer |
| Actual-to-ideal coupling (`step_011`) | Baseline-preserving residual bridge | One finite experiment | On \(U\le M\), datasets/outputs equal; \(L_{id}\ge L_{act}-1_{U>M}\) | Shared infinite hidden sequence and all other randomness | Sole overflow indicator, sign adversarial but bounded | Single one-shot residual; expectation charge \(p_{ov}\), no recurrence | algebraic coupling; summable control | Derived simulator and tail; overflow explicitly charged rather than excluded | Pathwise identity supplies exact equality content off overflow | Actual restriction and ideal restriction are identical in population-risk metric off event; sole residual source `step_009` is below required scale | `step-local` | `step_009 + step_010 -> step_011`; no conditional iid assumption | \(U=0\): exact equality; first hidden use takes first input record; overflow claims no equality | Bounded loss absorbs one event indicator | Risk range \([0,1]\) | Coupled datasets, \(p_{ov}\) | \(k=2,3\): equality everywhere | Additional unlisted simulation residuals would break the margin/interface |
| Exact simulator DP (`step_012`) | Generated privacy certificate | All adjacent size-\(M\) labeled inputs, one invocation | Fixed seed maps neighbors to equal/adjacent size-\(n\) datasets; integrate \(A\)'s DP inequality once | Pathwise one-use invariant and primitive DP of \(A\) | Random seed, overflow, unused row, arbitrary label replacement | One adjacency charge; no composition, accumulation, or repeated delta | algebraic coupling; projection/nonexpansive maintenance | `assump:central-dp` + derived one-use; input-independent seed; no realizability restriction on neighbors | One-row map has exact adjacency content needed for DP; postprocessing/mixture preserve claim class | Produced \((\varepsilon,\delta)\) is exact interface; scalar monotonicity gives consumed \((0.1,\Delta_M)\), residual zero | `step-local` | One-use produced before DP; hard prior produced independently before simulator | Overflow/\(U=0\)/unused changed row gives identical outputs; first used row changes exactly one global row | Seedwise DP inequality; integration adds one \(\delta\), not a multiple | A's replacement DP | One-use map and parameter certificate | Feature+label replacement and nonrealizable input covered | More than one image row would change privacy parameters and theorem rate |
| Average product lower bound (`step_013`) | Theorem-critical lower transfer | One prior-averaged fixed-size experiment | \(E L_{act}>2^{-8}\), \(EL_{id}\ge EL_{act}-p_{ov}\), \(EL_{id}=E\Phi\) | Uniform hard-prior gap | Sole negative defect \(p_{ov}<2^{-9}\) | One signed subtraction; defect occurs once and is strictly absorbed | algebraic coupling; summable control; structural lower/upper comparison | Derived prior, ideal identity, tail, coupling, DP; all boundaries inherited | Positive lower source \(2^{-8}\) dominates the exact opposing defect | Produced exact product population risk is consumed by extraction; residual relation \(2^{-8}-p_{ov}>2^{-9}\) dominates every term | `step-local` | All producer paths end before `step_013`; no output supports its own source | Unobserved hidden tag does not deactivate prior hardness; simulator remains a kernel | \(2^{-8}-p_{ov}>2^{-9}\) | Primitive DP/PAC setting through dependencies | Prior, simulator DP, coupling, exchangeability, tail | \(k=2,3\): no residual; \(n<k\) included | If overflow reached \(2^{-8}\), lower transfer would be vacuous |
| Fixed extraction/PAC contradiction (`step_014`) | Removes analysis-side randomness | Finite support \(\mu^k\), one fixed candidate | \(E_{\mu^k}\Phi>2^{-9}\Rightarrow\exists\boldsymbol z^*: \Phi(\boldsymbol z^*)>2^{-9}>2^{-12}\) | Finite convex average and universal fixed-instance PAC upper | Instance averaging; sample/A randomness remains | One finite extraction; no accumulated defect | structural lower/upper comparison | Derived finite prior/lower bound and primitive PAC upper; no vector excluded | Maximum principle gives existence, while PAC supplies exact upper claim for same object | Produced vector and consumed theorem instance identical in distribution, target, size, and risk; zero extraction residual | `step-local` | `step_006 + step_013 -> step_014`; fixed vector precedes contradiction | Extracted vector may be endpoint/point-mass; PAC remains active | Compare same \(\Phi(\boldsymbol z^*)\) to strict constants | Universal PAC premise | Finite prior and average lower bound | Randomized \(A\), nonunique instance representations covered | A Bayesian-only conclusion would not contradict distribution-free PAC |
| Exact R1 closure (`step_015`) | Final nonasymptotic implication | All quantified candidates in approved regime | Negated \(n<akL\) activates hard regime and contradiction; conclude \(n\ge akL\) | Fixed positive \(a=b_*/16\) and complete dependency chain | Floors, ceilings, privacy cap, overflow, PAC failure contribution | Pointwise one-shot contradiction; no repeated scope | algebraic coupling; structural lower/upper comparison | Primitive assumptions plus all accepted derived controls; outside-regime cases explicitly not claimed | Dependency chain supplies lower and upper statements for the same candidate/object | Exact public \(n,k,N\) and rate, no surrogate/remainder | `step-local` | Final conclusion not used upstream | Smallest \(n=1\), \(M=8\) already covered before closure | Law of contradiction with every negation consequence discharged | Three stable assumption IDs | All outputs `step_002`-`step_014` | \(k=2,N=N_0\) included | Any missing dependency would force sketch repair rather than conditional closure |
| Tower specialization (`step_016`) | Quantitative R2 and baseline comparison | Deterministic diagonal \(r\to\infty\) after fixed index | \(L_{T_r}=r\), LD \(=rT_{r-1}\), \(r-1\le\log_2^*LD\le r\) | Exact tower recursion and structural identities | Floor, +1, finitely many initial \(r\) | Finite iterated-log chain; each iteration follows exact recursion, no stochastic defect | structural lower/upper comparison | Primitive tower convention + derived R1/G1; exclude only \(T_r<N_0\) | Tower provides exact growth/lower content, not generic asymptotics | Same class sequence and sample bound; deterministic re-expression, zero target residual | `step-local` | `step_001 + step_015 -> step_016`; no corollary used upstream | \(r=2\) checks conventions; first admissible \(r\) begins theorem use | \(T_{r-1}\le rT_{r-1}\le T_r\) and monotone log-star | Tower definition | Structural identities and R1 | Constants stay independent of \(r\) | Mixing \(\log\) with \(\log^*\) would give a false public comparison |

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| Exact \(\lvert C\rvert\), VC, LD identities | G1 / `step_001` | Class definition, ordered cuts, disjoint tags | Endpoints/floor/additivity all directly controlled; none persistent | Exact same class/quantities; no transfer residual | Distinct cuts; one point/tag; balanced trees; summed mistake ledger | Independent tag parameters and finite one-tag budgets | `step_016`, assembly | `valid` diagnostic interface; local proof pending |
| ALMM wrapper \((b_*,d_*,N_*)\) | G2 / `step_002` / cited source | Source theorem and definitions; bijective order/label map | Implicit constants/conventions fixed in wrapper; source supplies none of later outputs | Same one-block object, exact size, risk, output scope, adjacency | Stronger privacy and enlarged target family preserve impossibility | Source \(\Omega/O\) constants | `step_003`, `step_005` | `valid` discharge path; exact source restatement pending |
| Expected game gap \(>2^{-8}\) | G2 / `step_003` | Source failure event and bounded loss | Controlled factor \(1/16\); no unknown term | Exact payoff consumed by minimax | \(ER>(1/16)P(R>1/16)>2^{-8}\) | Source error/failure constants | `step_004` | `valid`; direct proof pending |
| Finite prior \(\mu_{N,M}\) hard for all kernels | G3 / `step_004` | Compact DP polytope, compact instance space, continuous affine payoff, strict value | Continuum of \(Q\) eliminated exactly; no approximation/uncontrolled class | Exact prior-averaged one-block risk; no surrogate | Minimax equality plus exact coefficient-vector Caratheodory | Uniform compact value \(v>2^{-8}\) | `step_006`, `step_008`, `step_010`, `step_013` | `valid`; hardest local derivation |
| Hard-regime/source-cap certificate | G4 / `step_005` | Negated R1, candidate regime, source constants | Ceiling, floor, log denominator controlled; first delta conjunct fixed but unused | Exact \(M,\varepsilon,\delta\) consumed by kernel class | Explicit strict scalar inequalities and privacy monotonicity | \(b_*L\ge16\), \(c_\delta\le d_*\) | `step_010`, `step_012`, `step_015` | `valid`; scalar proof pending |
| Pointwise PAC upper \(\Phi(\boldsymbol z)\le2^{-12}\) | G4 / `step_006` | Universal fixed-instance PAC and \(R\le1\) | PAC failure event only; controlled by \(\beta_0\) | Identical fixed product object later extracted | Success/failure split | \(\alpha_0=\beta_0=2^{-13}\) | `step_014` | `valid`; no averaged-PAC defect |
| Exact arbitrary-output restriction | G5 / `step_007` | Full hypothesis space and tagged domain | Nonmonotonicity/off-support behavior irrelevant, not silently controlled | Identical one-block function and risk | Direct coordinate restriction | ALMM improper-output scope | `step_008`, `step_010`, `step_011`, `step_013` | `valid`; zero residual |
| Ideal iid law and selected/product risk equality | G5 / `step_008` | Iid prior vector, independent uniform \(J\), uniform tags | Learner asymmetry and unequal blocks averaged exactly | Same product population risk; zero residual | Conditional average over independent \(J\) | Equal tag weights \(1/k\) | `step_011`, `step_013` | `valid`; independence proof pending |
| Overflow \(p_{ov}<2^{-9}\) | G6 / `step_009` | Exact binomial factorial moments | Sole tail defect controlled; no persistent/uncontrolled error | A \([0,1]\)-loss residual is at most \(p_{ov}\) at required scale | Two-case factorial inequalities | Fourfold mean budget and floor 8 | `step_010`, `step_011`, `step_013` | `valid`; arithmetic proof pending |
| Total one-use simulator | G6 / `step_010` | Fixed prior, tags, input rows, nonhidden samplers, restriction | Overflow isolated; unused rows benign; unknown hidden law need not be known | Exact ideal rows off overflow; sole target residual already assigned | Occurrence-index injection uses every row at most once | Budget \(M\) and abort branch | `step_011`, `step_012` | `valid`; construction proof pending |
| Actual/ideal risk bridge | G6 / `step_011` | Shared infinite sequence and exact one-use simulator | Only \(1_{U>M}\), controlled by `step_009` | Same output/risk off overflow; every residual dominated | \(L_{id}\ge L_{act}-1_{ov}\) | Overflow slack | `step_013` | `valid`; no hidden conditioning residual |
| Exact simulator DP and source membership | G6 / `step_012` | A's DP, fixed-seed adjacency map, postprocessing, common mixture, parameter certificate | No composition/group/privacy defect; zero uncontrolled term | Exact \((\varepsilon,\delta)\) to exact consumed \((0.1,\Delta_M)\) interface | Seedwise inequality, integrate once, monotone parameters | One-use property and source cap | `step_013` | `valid`; event-level proof pending |
| Average product risk \(>2^{-9}\) | G7 / `step_013` | Prior gap, simulator membership, coupling, ideal equality | Sole overflow term strictly dominated; all others zero | Exact product population risk consumed by extraction | \(2^{-8}-p_{ov}>2^{-9}\) | Hard gap minus overflow slack | `step_014` | `valid`; algebraic assembly pending |
| Fixed hard vector and contradiction | G7 / `step_014` | Finite prior average and pointwise PAC upper | Analysis-side averaging removed exactly | Same fixed \(P,c,n,A,R\); zero residual | Finite maximum principle; \(2^{-9}>2^{-12}\) | Strict numerical gap | `step_015` | `valid`; extraction proof pending |
| Public R1 \(n\ge akL_N\) | G7 / `step_015` | Negated target plus complete dependency chain | No dropped term or changed scope | Exact theorem variables/rate | Contradiction | \(a=b_*/16\), fixed \(N_0\) | `step_016`, assembly | `valid`; quantifier closure pending |
| Tower R2 \(\Omega(r^2)\) | G8 / `step_016` | R1, exact structural identities, tower convention | Only finitely many initial indices; no hidden \(r\)-term | Same class sequence/risk theorem | Exact log-star inverse and deterministic comparisons | Fixed theorem constants | final corollary | `valid`; arithmetic proof pending |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Structural identity certificate | G1 / `step_001` | G8 / `step_016`; final interpretation | `step_001 -> step_016 -> final` | derived | valid |
| Source wrapper constants and unrestricted interface | G2 / `step_002` from ALMM | `step_003`, `step_005`; final constant choice | `step_002 -> step_003/step_005` | derived | valid diagnostic source path; local citation proof pending |
| Strict expected-loss game gap \(\eta=2^{-8}\) | G2 / `step_003` | G3 / `step_004` | `step_002 -> step_003 -> step_004` | derived | valid |
| Finite public hard prior \(\mu_{N,M}\) | G3 / `step_004` | `step_006`, G5/`step_008`, G6/`step_010`, G7/`step_013` | `step_003 -> step_004 -> each consumer` | derived | valid; producer precedes simulator |
| Hard-regime and source-parameter certificate | G4 / `step_005` | `step_010`, `step_012`, `step_015` | `assump:candidate-regime + step_002 -> step_005 -> consumers` | derived | valid |
| Pointwise fixed-instance PAC upper bound | G4 / `step_006` | G7 / `step_014` | `assump:distribution-free-realizable-pac -> step_006 -> step_014` | derived | valid; pointwise before averaging |
| Exact one-block restriction | G5 / `step_007` | `step_008`, `step_010`, `step_011`, `step_013` | `step_007 -> consumers` | derived | valid |
| Ideal iid product and exchangeability identity | G5 / `step_008` | `step_011`, `step_013` | `step_004 + step_007 -> step_008 -> consumers` | derived | valid |
| Binomial usage and overflow certificate | G6 / `step_009` | `step_010`, `step_011`, `step_013` | `step_005 + step_008 -> step_009 -> consumers` | derived | valid |
| Executable simulator and one-use invariant | G6 / `step_010` | `step_011`, `step_012` | `step_004 + step_005 + step_007 + step_009 -> step_010` | derived | valid |
| Actual-to-ideal coupling inequality | G6 / `step_011` | G7 / `step_013` | `step_008 + step_009 + step_010 -> step_011 -> step_013` | derived | valid |
| Exact simulator DP/source-private membership | G6 / `step_012` | G7 / `step_013` | `assump:central-dp + step_005 + step_010 -> step_012 -> step_013` | derived | valid |
| Average product-risk lower bound | G7 / `step_013` | `step_014` | `step_004 + step_008 + step_009 + step_011 + step_012 -> step_013 -> step_014` | derived | valid |
| Fixed hard product vector and contradiction | G7 / `step_014` | `step_015` | `step_006 + step_013 -> step_014 -> step_015` | derived | valid |
| Exact public lower bound R1 | G7 / `step_015` | G8 / `step_016`; final theorem | `step_005 + step_014 -> step_015 -> step_016/final` | derived | valid |
| Tower-diagonal R2 specialization | G8 / `step_016` | final corollary/interpretation | `step_001 + step_015 -> step_016 -> final` | derived | valid |

Every theorem-facing generated output has an earlier producer, a legal dependency path, and an exact consumer interface. No closure, specialization, or assembly block is being used as an unsupported producer.

## Early Obstruction And Repair Plausibility

- Contract contradiction screen: none. The attempted claim matches `setting.md` exactly, including the arbitrary improper output space, fixed sample size, replacement adjacency, both candidate-delta terms, population risk, universal fixed-instance PAC premise, and `material_partial` interpretation.
- Theorem-critical mechanism screen: passed at diagnostic granularity. Lower/sign content comes from the strict ALMM failure gap; uniformity comes from compact minimax; average product risk comes from independent uniform hiding; finite executability comes from factorial tail control and one-use injection; privacy comes from a pathwise one-row map; theorem closure comes from a strict lower/upper numerical clash.
- Source-to-claim screen: the accepted ALMM wrapper is adequate only because it is unrestricted/improper and uses the exact loss, fixed-size iid, and replacement conventions. `step_002` must still provide the exact source statement; if that local verification failed, it would expose a source-interface obstruction rather than permit a proper-only replacement.
- Residual-to-target screen: every bridge is on the same object and population-risk metric except actual-to-ideal simulation, whose exact residual is \(p_{ov}\). That residual is sourced by `step_009` and strictly dominated at the required scale. There is no transformed, weighted, population-surrogate, or reference-object mismatch.
- Exported-interface screen: raw controls, defect classes, thresholds, and consumers are explicit for all 16 outputs. In particular, the delta threshold controls privacy only, the factorial estimate controls only overflow, and neither is used to suppress unrelated defects.
- Limiting/boundary screen: endpoint thresholds, point-mass \(Q\), \(k=2,3\), \(n<k\), \(M=8\), \(U=0\), overflow, unused changed rows, arbitrary feature-label replacements, nonrealizable adjacent datasets, asymmetric/nonmonotone hypotheses, and the first tower indices are covered. No allowed state leaves a claimed mechanism inactive while its conclusion remains false.
- Entry-state trace: at \(U=0\), no input row is read and ideal/actual datasets agree; for \(1\le U\le M\), the first transition uses input row 1 at the first hidden occurrence and each later row once; for \(U>M\), the kernel aborts before reading input or calling \(A\). Thus one-use adjacency and coupling are available before privacy/risk transfer consume them.
- Scope-accumulation screen: there is no recursive or all-time closure. The only accumulated objects are the finite per-tag mistake ledger, the finite binomial count, the finite row-use ledger, and a single overflow loss. Their concrete finite budgets and signs are displayed in the certificate.
- Mode/dependence screen: no expectation-to-high-probability upgrade, expected-size substitution, privacy composition, asymptotic-in-\(n\) step, or hidden candidate dependence occurs. The tower step is a separate deterministic specialization.
- Baseline invariance screen: the unrestricted improper source theorem, endpoint members, exact no-overflow experiment, fixed-instance PAC quantifier, and exact R1 conclusion are preserved. Showing only that overflow vanishes would not suffice; the diagnostic instead proves equality off overflow and a strict target-side margin.
- Same-setting repair plausibility: all presently unresolved obligations are local derivations under existing sources and interfaces. No step claim, dependency, assumption, output target, generated flow, mechanism source, boundary exclusion, metric, mode, or theorem conclusion needs alteration. If a local proof refutes one of these displayed interfaces, the smallest route must be reassessed by the later reviewer; this producer does not silently revise the accepted sketch.
- Candidate idea-level obstruction: none identified at obstruction level.

## Global Gaps And Hard Steps

All unresolved items below are `step-local`; none is a missing theorem-level bridge.

1. **`step_004` (hardest): compact minimax and exact finite support.** Provisional local units: (i) a kernel-polytope lemma including all-event replacement-DP constraints and nonemptiness; (ii) a payoff continuity/affinity lemma with the displayed polynomial; (iii) a uniform-gap proposition using compact attainment; (iv) a minimax application with every topological hypothesis stated; and (v) a Caratheodory lemma on payoff coefficients. Mechanism witness: the strict compact value \(v_{N,M}>2^{-8}\) is the positive source, compact-convex minimax is the quantifier-swap relation, and coefficient equality removes the continuum without residual. Point-mass and degenerate \(Q\)'s remain in scope.
2. **`step_002`: exact unrestricted ALMM wrapper.** Provisional local units: (i) verbatim source theorem/definition restatement with version and label; (ii) order, label, output-space, risk, iid-size, and replacement-adjacency map; (iii) extraction of existential \(b_*,d_*,N_*\); and (iv) known-nonoutput statement. Mechanism witness: the source's improper \(\Omega(\log^*N)\) lower bound supplies the required positive hardness. A proper-only or pure-DP source would be inadequate.
3. **`step_009`: uniform overflow arithmetic.** Provisional local units: binomial-law lemma, falling-factorial identity, small-mean calculation, large-mean decreasing-sequence calculation, and boundary corollary. Mechanism witness: the fourfold mean reserve plus floor 8 controls the sole nonnegative count; \(p_{ov}<2^{-9}\) is strictly below the transfer margin and is charged only once.
4. **`step_008`: hidden-coordinate independence.** Provisional local units: joint-law factorization showing \(\boldsymbol Z\sim\mu^k\) independently of \(J\), conditional iid product-sample lemma, deterministic risk decomposition, and conditional-expectation identity. Mechanism witness: independent uniform \(J\) supplies exact averaging even for asymmetric \(A\); no symmetry or observation event is needed.
5. **`step_010`-`step_012`: executable experiment, coupling, and privacy.** Provisional local units: total simulator definition on arbitrary labeled inputs; occurrence-index one-use invariant; infinite-hidden-sequence coupling; bounded-loss bridge; fixed-seed adjacency lemma; event-level postprocessing/mixture DP lemma; and parameter-monotonicity corollary. Mechanism witness: each input row has at most one image, actual and ideal datasets are identical on \(U\le M\), and overflow is input-independent. The first-update trace \(U=0,1,\ldots,M,>M\) is explicit.
6. **`step_001` and `step_016`: exact structural/tower endpoints.** Provisional local units: one-tag LD lemma, tagged-product additivity proposition, tower inverse lemma, and log-star sandwich. Mechanism witness: disjoint tag budgets and exact tower recursion; the only diagonal exclusion is the finite fixed \(N_0\) prefix.

The easier scalar, expectation, restriction, transfer, extraction, and final-closure steps (`step_003`, `step_005`-`step_007`, `step_013`-`step_015`) still require independent local proof artifacts, but their theorem-level inequalities and source interfaces are fully displayed above.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, generated-output flow, rate objective, mechanism, scope, or conclusion. Every local unit and cited-result application described here must be independently proved or discharged by the corresponding `/proof-step` and accepted review before proof assembly.

## Suggested Routing

None

Continue with all accepted steps. As diagnostic guidance, prioritize `/proof-step step_004`, followed by `/proof-step step_002`, `/proof-step step_009`, and the simulator chain `/proof-step step_010` through `/proof-step step_012`; dependency acceptance still governs the actual execution order.
