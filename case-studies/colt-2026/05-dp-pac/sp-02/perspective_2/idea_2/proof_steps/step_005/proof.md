# Proof Step

## Step Identity

- Sketch attempt: `1`
- Step ID: `step_005`
- Unit attempt: `1`

## Target Step Claim

- Intended claim: Prove compactness and convexity of the finite restricted DP-kernel set, write the correct minimax orientation, and produce an attained learner-independent prior satisfying `(HP)` at exactly `1/20`; prove equivalence with arbitrary-output kernels.
- Depends on: `step_004`.
- Assumptions used: The derived algorithm-wise hardness statement and the primitive finite-game definitions; no hard prior and no later hidden-arm object.
- Technical challenge: Reverse the learner-by-learner quantifiers by finite minimax, prove all compactness and attainment hypotheses rather than assuming them, and preserve the exact arbitrary-output, privacy, experiment-support, and risk interfaces.
- Intended proof tool or cited result: The finite-dimensional von Neumann minimax theorem for continuous bilinear payoffs on nonempty compact convex sets, together with a direct finite-dimensional DP-polytope audit.
- Output target: A prior
  \[
  \Pi_{n,N,\epsilon,\delta}\in\Delta(\mathcal E_{n,N})
  \]
  such that
  \[
  \inf_{B:\,(\epsilon,\delta)\text{-DP}}
  \mathbb E_{e\sim\Pi_{n,N,\epsilon,\delta}}
  [\mathcal R_n(B,e)]\ge\frac1{20}.
  \tag{HP}
  \]
- Rate objective: R1, with no loss in the threshold `1/20`, expectation mode, privacy parameters, finite experiment universe, arbitrary-output scope, or dependence on `n,N,epsilon,delta`.

More explicitly, let the universal constants
\(a_{\rm th},a_\delta,N_{\rm th}\) be those supplied by the accepted
`step_004` dependency. This step proves that whenever
\[
N\ge N_{\rm th},\qquad
n<a_{\rm th}\log^*N,\qquad
0<\epsilon\le1,\qquad
0\le\delta\le\frac{a_\delta}{n^2\log(en)},
\tag{T1}
\]
there exists one prior depending only on
\((n,N,\epsilon,\delta)\), and not on a candidate learner, for which `(HP)` holds against every arbitrary-output threshold-domain kernel.

## Step Proof Status

`COMPLETE`

## Allowed Assumptions And Dependencies

- Setting assumptions by stable id: None. This one-arm finite-game step uses only the definitions of `[N]`, `Q_e`, `mathcal E_(n,N)`, `mathcal R_n`, ordered replacement adjacency, coordinate measurability, and the fixed threshold `1/20` from `setting.md`. It does not use `assump:minor-table`, `assump:unrestricted-private-pac`, or `assump:fixed-parameter-scale`.
- Accepted dependency proof: `perspective_2/idea_2/proof_steps/step_004/proof.md`, SHA-256 `90bcb3550fc7f15c62252762740e611e09e658d937708fe4e2e2bc9b6159ad4e`.
- Accepted dependency review: `perspective_2/idea_2/proof_steps/step_004/review.md`, status `ACCEPTED`, SHA-256 `eb6de6b30abc4981b0fc8ab70a297d2bb559b74c193e426f8dde2f4486b87fd9`.

Assumption-provenance classification:

- Primitive conditions:
  1. Integers `n>=1` and `N>=2`, the scalar privacy range `epsilon>0`, `delta>=0`, and the admissibility conditions (T1).
  2. The finite labeled alphabet, ordered input-sample convention, output coordinate convention, experiment set, experiment distributions, zero-one risk, and replacement adjacency from `setting.md`.
  3. Eventwise `(epsilon,delta)`-DP as a property of a candidate kernel. This is part of the quantified competitor class, not a theorem-facing extra assumption.
- Derived invariants supplied by accepted dependencies:
  1. Proposition~\ref{prop:step-004-hardness} supplies universal `a_th,a_delta,N_th` and, under (T1), the learner-by-learner bound
     \[
     \max_{e\in\mathcal E_{n,N}}\mathcal R_n(B,e)\ge\frac1{20}
     \]
     for every full-cube arbitrary-output `(epsilon,delta)`-DP kernel.
  2. The accepted dependency chain supplies the finite coordinate-restriction interface: arbitrary hypothesis outputs may be pushed forward to the full cube of all binary functions on `[N]`, with exactly the same privacy parameters and every finite-experiment risk.
- Local conditional hypotheses:
  1. A matrix `K` belongs to the finite DP-kernel set defined below. This is a locally quantified strategy, not an assumed generated invariant.
  2. An arbitrary-output kernel is equipped with the accepted measurable restriction map to its `[N]` prediction vector. This is exactly the accepted restriction interface, not a new properness or representation condition.

No prior, average-case hardness conclusion, minimax value, hidden-arm learner, or later proof-step output is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under the primitive finite-game definitions and fixed `n,N,epsilon,delta`, the set of all stochastic matrices satisfying every two-sided eventwise DP inequality is a nonempty compact convex finite-dimensional polytope. | Supplies the learner strategy set and discharges nonemptiness, closedness, boundedness, compactness, and convexity. |
| `unit_002` | proposition | Under the accepted finite restriction interface, every experiment risk is a continuous affine function of the finite kernel, and arbitrary-output DP kernels and finite-cube DP kernels have exactly the same attainable risk vectors. | Supplies the bilinear payoff and proves arbitrary-output equivalence with no privacy, risk, properness, or discretization loss. |
| `unit_003` | proposition | Under Propositions~\ref{prop:step-005-dp-polytope} and~\ref{prop:step-005-risk-restriction}, finite-dimensional von Neumann minimax gives the exact orientation `min_K max_e = max_Pi min_K`; the left minimum, every inner minimum, and the right maximum are attained. | Performs the quantifier reversal and produces an attaining prior candidate. |
| `unit_004` | proposition | Under Proposition~\ref{prop:step-004-hardness} and Proposition~\ref{prop:step-005-minimax}, an attaining prior in `Delta(E_(n,N))` has inner value at least exactly `1/20` against every arbitrary-output DP kernel and is selected only after algorithm-wise hardness is proved. | Establishes `(HP)`, exact support universe, learner independence, and noncircularity. |

Atomic step = no. Finite DP geometry, risk/restriction equivalence, minimax orientation and attainment, and the final hard-prior assembly are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: universal one-arm threshold obstruction

- Source: accepted `step_004` proof/review pair, specifically Proposition~\ref{prop:step-004-hardness}.
- Restated statement in current notation: there are universal constants
  \(a_{\rm th}>0\), \(a_\delta>0\), and \(N_{\rm th}\ge2\) such that, under (T1), every full-cube arbitrary-output `(epsilon,delta)`-DP kernel `K` on ordered `n`-samples satisfies
  \[
  \max_{e\in\mathcal E_{n,N}}r_e(K)\ge\frac1{20}.
  \tag{C1}
  \]
  Here `full-cube arbitrary-output` means that the output is an arbitrary vector in `V_N={0,1}^[N]`; no threshold shape or properness is imposed.
- Instantiated objects: the finite kernel set in Proposition~\ref{prop:step-005-dp-polytope}, the exact experiment set `E_(n,N)`, and the risk `r_e` defined in Proposition~\ref{prop:step-005-risk-restriction}.
- Assumption discharge: (T1) is exactly the dependency's admissibility condition; the kernel set below imposes exactly its ordered-sample, full-cube, eventwise `(epsilon,delta)`-DP interface.
- Conclusion used: the left game value is at least `1/20`.
- Non-output boundary: the dependency proves (C1) learner by learner and explicitly neither assumes nor constructs a prior. It supplies no minimax theorem or average-case conclusion.

### Accepted dependency: arbitrary-output finite restriction

- Source: the finite-restriction interface accepted in the dependency chain and consumed by Proposition~\ref{prop:step-004-hardness}.
- Restated statement in current notation: if an arbitrary hypothesis output has measurable binary evaluations on `[N]`, the measurable map taking the output to its vector of `[N]` evaluations is DP postprocessing and leaves `Q_e`-risk unchanged for every `e in E_(n,N)`. Conversely, every vector in `{0,1}^[N]` is itself an arbitrary binary hypothesis on `[N]`.
- Instantiated objects: the measurable restriction map `rho` and its pushforward kernel in Proposition~\ref{prop:step-005-risk-restriction}.
- Assumption discharge: coordinate evaluations are measurable by `setting.md`; all `Q_e` are supported on `[N]`; the full cube contains every binary prediction vector on that support.
- Conclusion used: the finite game and the arbitrary-output game have the same competitor risk vectors and hence the same prior-average infimum.
- Non-output boundary: this restriction is not a properization and does not assert that outputs are thresholds. It introduces no approximation, discretization, or privacy relaxation.

### Heine-Borel theorem in finite dimension

- Standard theorem: a subset of a finite-dimensional Euclidean space is compact if and only if it is closed and bounded.
- Instantiated object: the finite stochastic-kernel set embedded in
  \(\mathbb R^{|\mathsf S_{n,N}||\mathsf V_N|}\).
- Assumption discharge: Proposition~\ref{prop:step-005-dp-polytope} proves directly that this set is closed and contained in a finite unit cube.
- Conclusion used: compactness of the learner strategy set.

### Finite-dimensional von Neumann minimax theorem

- Standard theorem, restated in the required orientation: if \(X\) and \(Y\) are nonempty compact convex subsets of finite-dimensional real vector spaces and \(F:X\times Y\to\mathbb R\) is continuous and affine in each argument, then
  \[
  \min_{x\in X}\max_{y\in Y}F(x,y)
  =
  \max_{y\in Y}\min_{x\in X}F(x,y).
  \tag{C2}
  \]
  The extrema are attained. For a bilinear payoff, affinity in both arguments supplies the theorem's convexity-concavity hypotheses.
- Instantiated objects:
  \[
  X=\mathcal K_{n,N}^{\epsilon,\delta},
  \qquad
  Y=\Delta(\mathcal E_{n,N}),
  \qquad
  F=\Phi.
  \]
- Assumption discharge: Proposition~\ref{prop:step-005-dp-polytope} proves that `X` is nonempty, compact, and convex; the finite probability simplex `Y` is nonempty, compact, and convex; Proposition~\ref{prop:step-005-risk-restriction} proves that `Phi` is continuous bilinear.
- Conclusion used: the exact equality and orientation in Proposition~\ref{prop:step-005-minimax}. Attainment is also checked directly there, including the outer prior maximum.

### Internal results used in target assembly

- Proposition~\ref{prop:step-005-dp-polytope}: under the primitive finite spaces and fixed privacy parameters, all stochastic rows satisfying both eventwise DP directions form a nonempty compact convex polytope.
- Proposition~\ref{prop:step-005-risk-restriction}: under the accepted coordinate restriction, each `r_e` is continuous affine and arbitrary-output kernels have exactly the same attainable risk vectors as finite-cube kernels.
- Proposition~\ref{prop:step-005-minimax}: under the preceding geometry and affinity results, the exact `min_K max_e = max_Pi min_K` equality holds and all extrema needed by the proof are attained.
- Proposition~\ref{prop:step-005-hard-prior}: under (T1), the accepted algorithm-wise obstruction and attained minimax equality produce a learner-independent prior in `Delta(E_(n,N))` satisfying `(HP)` at `1/20`.

## Local Derivation

### unit_001: proposition

**Proposition (Compact convex polytope of finite private kernels).** \label{prop:step-005-dp-polytope}

Statement: Under the primitive finite-game definitions, fix `n>=1`, `N>=2`, `epsilon>0`, and `delta>=0`. Define the labeled alphabet, ordered input space, unrestricted binary output cube, and experiment universe by
\[
\mathsf Z_N:=[N]\times\{0,1\},
\qquad
\mathsf S_{n,N}:=\mathsf Z_N^n,
\tag{1}
\]
\[
\mathsf V_N:=\{0,1\}^{[N]},
\qquad
\mathsf E_{n,N}:=\mathcal E_{n,N}=[N]\times[N]^{9n}.
\tag{2}
\]
Let `s~s'` mean that the ordered samples `s,s' in S_(n,N)` differ in at most one coordinate. Let
\(\mathcal K_{n,N}^{\epsilon,\delta}\) be the set of arrays
\[
K=(K(v\mid s))_{s\in\mathsf S_{n,N},\,v\in\mathsf V_N}
\tag{3}
\]
satisfying, for every `s`,
\[
K(v\mid s)\ge0
\quad\text{for all }v,
\qquad
\sum_{v\in\mathsf V_N}K(v\mid s)=1,
\tag{4}
\]
and, for every replacement-adjacent pair `s~s'` and every event
\(A\subseteq\mathsf V_N\), both eventwise DP inequalities
\[
\sum_{v\in A}K(v\mid s)
\le
e^\epsilon\sum_{v\in A}K(v\mid s')+\delta,
\tag{5a}
\]
\[
\sum_{v\in A}K(v\mid s')
\le
e^\epsilon\sum_{v\in A}K(v\mid s)+\delta.
\tag{5b}
\]
Then \(\mathcal K_{n,N}^{\epsilon,\delta}\) is a nonempty compact convex polytope in a finite-dimensional Euclidean space.

Proof / justification:

All four sets in (1)--(2) are finite, with
\[
|\mathsf Z_N|=2N,
\qquad
|\mathsf S_{n,N}|=(2N)^n,
\qquad
|\mathsf V_N|=2^N,
\qquad
|\mathsf E_{n,N}|=N^{9n+1}.
\tag{6}
\]
Thus a kernel is a point in
\[
\mathbb R^d,
\qquad
d=(2N)^n2^N<\infty.
\tag{7}
\]
Equations (4), (5a), and (5b) list every stochastic-row and every eventwise privacy requirement explicitly. There are finitely many such constraints: the adjacent-pair set is finite and the finite output cube has only finitely many events.

For nonemptiness, let `v_0 in V_N` be the all-zero vector and define the input-independent deterministic kernel
\[
K_0(v\mid s):=\mathbf 1\{v=v_0\}.
\tag{8}
\]
It satisfies (4). For any event `A`, either both event probabilities in (5a)--(5b) equal one or both equal zero. In the first case
\(1\le e^\epsilon+\delta\); in the second case
\(0\le\delta\). Hence `K_0` is `(epsilon,delta)`-DP. This also verifies nonemptiness at the boundary `delta=0`, including `epsilon=1`.

The row-sum and nonnegativity conditions imply
\[
0\le K(v\mid s)\le1
\quad\text{for every }(s,v),
\tag{9}
\]
so the set is bounded. Every row-sum condition is a closed affine hyperplane, every nonnegativity condition is a closed halfspace, and each of (5a)--(5b) is a closed affine halfspace. Their finite intersection is closed. By the finite-dimensional Heine-Borel theorem, the set is compact. Because it is defined by finitely many affine equalities and inequalities, it is a polytope.

Finally, take `K_1,K_2 in K_(n,N)^(epsilon,delta)` and `lambda in [0,1]`, and put
\[
K_\lambda:=\lambda K_1+(1-\lambda)K_2.
\tag{10}
\]
Nonnegativity and row sums are preserved. For every `s~s'` and `A`,
\[
\begin{aligned}
K_\lambda(A\mid s)
&=\lambda K_1(A\mid s)+(1-\lambda)K_2(A\mid s)\\
&\le
\lambda\bigl(e^\epsilon K_1(A\mid s')+\delta\bigr)
+(1-\lambda)\bigl(e^\epsilon K_2(A\mid s')+\delta\bigr)\\
&=e^\epsilon K_\lambda(A\mid s')+\delta,
\end{aligned}
\tag{11}
\]
and the same calculation with `s,s'` exchanged gives the reverse inequality. Thus `K_lambda` belongs to the set, proving convexity. Notice that the two additive terms combine to
\(\lambda\delta+(1-\lambda)\delta=\delta\), so convexification causes no privacy loss.

### unit_002: proposition

**Proposition (Affine finite risk and exact arbitrary-output restriction).** \label{prop:step-005-risk-restriction}

Statement: Under the primitive experiment definitions and the accepted arbitrary-output finite-restriction interface, for every
\(e=(t,U)\in\mathsf E_{n,N}\), the risk
\(r_e(K)=\mathcal R_n(K,e)\) is a continuous affine function of
\(K\in\mathcal K_{n,N}^{\epsilon,\delta}\). Moreover, pushing an arbitrary-output `(epsilon,delta)`-DP kernel through the accepted `[N]`-coordinate restriction preserves both privacy parameters and every `r_e` exactly, while every finite-cube kernel is itself an allowed arbitrary-output kernel. Consequently, for every prior
\(\Pi\in\Delta(\mathsf E_{n,N})\), the arbitrary-output and finite-cube prior-average infima are equal.

Proof / justification:

Write
\[
U=(u_1,\ldots,u_{9n}).
\]
The experiment distribution, including all multiplicities in `U`, is
\[
Q_e(q,y)
=
\frac1{9n}\sum_{a=1}^{9n}
\mathbf 1\{q=u_a,\ y=\tau_t(u_a)\},
\qquad (q,y)\in\mathsf Z_N.
\tag{12}
\]
For `v in V_N`, define its exact experiment loss
\[
\ell_e(v)
:=L_{Q_e}(v)
=\sum_{(q,y)\in\mathsf Z_N}Q_e(q,y)\mathbf 1\{v(q)\ne y\}
=\frac1{9n}\sum_{a=1}^{9n}
\mathbf 1\{v(u_a)\ne\tau_t(u_a)\}.
\tag{13}
\]
For an ordered sample
\(s=(z_1,\ldots,z_n)\in\mathsf S_{n,N}\), put
\[
Q_e^n(s):=\prod_{i=1}^nQ_e(z_i).
\tag{14}
\]
Then the kernel risk is the finite sum
\[
\begin{aligned}
r_e(K)
&:=\sum_{s\in\mathsf S_{n,N}}Q_e^n(s)
\sum_{v\in\mathsf V_N}K(v\mid s)\ell_e(v)\\
&=\mathbb E_{S\sim Q_e^n,\,V\sim K(S)}[L_{Q_e}(V)]
=\mathcal R_n(K,e).
\end{aligned}
\tag{15}
\]
All coefficients
\(Q_e^n(s)\ell_e(v)\) are fixed once `e` is fixed, so (15) is linear, hence continuous and affine, in the coordinates of `K`. Also
\[
0\le r_e(K)\le1.
\tag{16}
\]

We now apply only the accepted finite restriction. Let an arbitrary-output kernel be
\[
\widetilde B:\mathsf S_{n,N}\rightsquigarrow(\mathsf Y,\mathcal A),
\tag{17}
\]
where its output has measurable binary evaluations on `[N]`. Let
\[
\rho:\mathsf Y\longrightarrow\mathsf V_N,
\qquad
\rho(y)(q):=\text{the prediction of }y\text{ at }q,
\tag{18}
\]
be the accepted restriction map. It is measurable directly from the setting convention: for every `v in V_N`,
\[
\rho^{-1}(\{v\})
=\bigcap_{q\in[N]}
\{y\in\mathsf Y:\rho(y)(q)=v(q)\},
\tag{18a}
\]
a finite intersection of measurable coordinate events, and every subset of the finite cube is a finite union of such singletons. For clarity, eventwise privacy of
`B_tilde` means that for every `s~s'` and every measurable
\(F\in\mathcal A\), both
\[
\widetilde B(F\mid s)
\le e^\epsilon\widetilde B(F\mid s')+\delta,
\qquad
\widetilde B(F\mid s')
\le e^\epsilon\widetilde B(F\mid s)+\delta.
\tag{19}
\]
Define the pushforward finite kernel by
\[
K_\rho(A\mid s)
:=\widetilde B(\rho^{-1}(A)\mid s),
\qquad A\subseteq\mathsf V_N.
\tag{20}
\]
Because `rho` is measurable, substituting
\(F=\rho^{-1}(A)\) into both inequalities in (19) proves exactly (5a)--(5b) for `K_rho`. Thus
\[
K_\rho\in\mathcal K_{n,N}^{\epsilon,\delta}
\tag{21}
\]
with the same `epsilon,delta`; there is no composition, group-privacy, or parameter relaxation.

Every `Q_e` is supported on `[N]`, and its loss depends on an output only through the vector (18). Therefore
\[
\begin{aligned}
\mathcal R_n(\widetilde B,e)
&=\sum_sQ_e^n(s)
\int_{\mathsf Y}\ell_e(\rho(y))\,\widetilde B(dy\mid s)\\
&=\sum_sQ_e^n(s)
\sum_{v\in\mathsf V_N}K_\rho(v\mid s)\ell_e(v)\\
&=r_e(K_\rho).
\end{aligned}
\tag{22}
\]
This is exact even when `U` contains repeated entries and even when the arbitrary hypothesis oscillates completely away from the threshold target.

Conversely, every `K in K_(n,N)^(epsilon,delta)` is already an arbitrary-output kernel by taking the output space to be the full discrete cube
\(\mathsf Y=\mathsf V_N\) and `rho` to be the identity. The cube contains all binary functions on `[N]`, not only thresholds. Hence the pushforward map is onto the finite competitor class relevant to the game.

For a prior `Pi`, define
\[
\Phi(K,\Pi)
:=\sum_{e\in\mathsf E_{n,N}}\Pi(e)r_e(K).
\tag{23}
\]
Equation (22) maps every arbitrary-output competitor to a finite competitor with exactly the same payoff, while the converse realization includes every finite competitor among arbitrary outputs. Therefore
\[
\inf_{\widetilde B:\,(\epsilon,\delta)\text{-DP}}
\mathbb E_{e\sim\Pi}[\mathcal R_n(\widetilde B,e)]
=
\min_{K\in\mathcal K_{n,N}^{\epsilon,\delta}}
\Phi(K,\Pi).
\tag{24}
\]
The right side is a minimum, not merely an infimum, because Proposition~\ref{prop:step-005-dp-polytope} gives compactness and (23) is continuous. Thus arbitrary outputs are handled with exactly the accepted finite restriction and with zero privacy, risk, support, or discretization residual.

### unit_003: proposition

**Proposition (Correctly oriented finite minimax with attainment).** \label{prop:step-005-minimax}

Statement: Under Propositions~\ref{prop:step-005-dp-polytope} and~\ref{prop:step-005-risk-restriction}, let
\(\Delta(\mathsf E_{n,N})\) be the probability simplex on the exact finite experiment set. Then
\[
\boxed{
\min_{K\in\mathcal K_{n,N}^{\epsilon,\delta}}
\max_{e\in\mathsf E_{n,N}}r_e(K)
=
\max_{\Pi\in\Delta(\mathsf E_{n,N})}
\min_{K\in\mathcal K_{n,N}^{\epsilon,\delta}}
\mathbb E_{e\sim\Pi}[r_e(K)]
}
\tag{25}
\]
with the learner minimization on the left and the adversarial prior maximization on the right. The left minimum is attained, the inner minimum is attained for every prior, and the right maximum is attained by at least one prior.

Proof / justification:

The finite simplex is
\[
\Delta(\mathsf E_{n,N})
=
\left\{\Pi\in\mathbb R^{|\mathsf E_{n,N}|}:
\Pi(e)\ge0,\ \sum_e\Pi(e)=1\right\}.
\tag{26}
\]
It is nonempty, compact, and convex. Proposition~\ref{prop:step-005-dp-polytope} gives the same three properties for
\(\mathcal K_{n,N}^{\epsilon,\delta}\). By (23),
\[
\Phi(K,\Pi)=\sum_e\Pi(e)r_e(K)
\tag{27}
\]
is bilinear and continuous: it is linear in `Pi`, and every `r_e` is linear in `K` by (15). Thus all hypotheses of the finite-dimensional von Neumann minimax theorem (C2) are discharged, giving
\[
\min_K\max_\Pi\Phi(K,\Pi)
=
\max_\Pi\min_K\Phi(K,\Pi).
\tag{28}
\]

For each fixed `K`, linearity over the simplex and finiteness of the experiment set give
\[
\max_{\Pi\in\Delta(\mathsf E_{n,N})}\Phi(K,\Pi)
=\max_{e\in\mathsf E_{n,N}}r_e(K),
\tag{29}
\]
and the maximum is attained by a point mass on any maximizing experiment. Substituting (29) into (28) proves exactly (25), including its orientation.

For completeness, all required attainment statements can also be seen directly. The function
\[
K\longmapsto\max_e r_e(K)
\tag{30}
\]
is the maximum of finitely many continuous functions, so it is continuous and attains its minimum on the compact kernel polytope. For each fixed `Pi`, (27) is continuous in `K`, so the inner minimum is attained. Finally, define
\[
g(\Pi):=\min_{K\in\mathcal K_{n,N}^{\epsilon,\delta}}\Phi(K,\Pi).
\tag{31}
\]
Using (16), for any priors `Pi,Pi'`,
\[
\sup_K|\Phi(K,\Pi)-\Phi(K,\Pi')|
\le\sum_{e\in\mathsf E_{n,N}}|\Pi(e)-\Pi'(e)|.
\tag{32}
\]
Taking minima in `K` on both sides in the standard two directions yields
\[
|g(\Pi)-g(\Pi')|
\le\|\Pi-\Pi'\|_1.
\tag{33}
\]
Thus `g` is continuous and attains its maximum on the compact simplex. No measurable-selection or limiting argument is involved.

### unit_004: proposition

**Proposition (Attained learner-independent hard prior).** \label{prop:step-005-hard-prior}

Statement: Under the admissibility conditions (T1), Proposition~\ref{prop:step-004-hardness}, Proposition~\ref{prop:step-005-risk-restriction}, and Proposition~\ref{prop:step-005-minimax}, there exists an attaining prior
\[
\Pi_{n,N,\epsilon,\delta}\in\Delta(\mathcal E_{n,N})
\tag{34}
\]
such that
\[
\inf_{B:\,(\epsilon,\delta)\text{-DP}}
\mathbb E_{e\sim\Pi_{n,N,\epsilon,\delta}}
[\mathcal R_n(B,e)]
\ge\frac1{20}.
\tag{35}
\]
The prior depends only on the fixed game parameters
`n,N,epsilon,delta`, is chosen after the learner-by-learner obstruction is proved, and assigns probability only to the exact experiments
\(e=(t,U)\in[N]\times[N]^{9n}\).

Proof / justification:

Proposition~\ref{prop:step-004-hardness} gives, for every
\(K\in\mathcal K_{n,N}^{\epsilon,\delta}\),
\[
\max_{e\in\mathcal E_{n,N}}r_e(K)\ge\frac1{20}.
\tag{36}
\]
Taking the minimum over the entire compact kernel set preserves the same constant:
\[
\min_{K\in\mathcal K_{n,N}^{\epsilon,\delta}}
\max_{e\in\mathcal E_{n,N}}r_e(K)
\ge\frac1{20}.
\tag{37}
\]
Proposition~\ref{prop:step-005-minimax} now gives an attaining prior
\(\Pi_{n,N,\epsilon,\delta}\) for which
\[
\begin{aligned}
\min_{K\in\mathcal K_{n,N}^{\epsilon,\delta}}
\mathbb E_{e\sim\Pi_{n,N,\epsilon,\delta}}[r_e(K)]
&=
\min_{K\in\mathcal K_{n,N}^{\epsilon,\delta}}
\max_{e\in\mathcal E_{n,N}}r_e(K)\\
&\ge\frac1{20}.
\end{aligned}
\tag{38}
\]
There is no degradation of the threshold: the exact algorithm-wise value in (36) passes through equality (25).

Applying the exact arbitrary-output equality (24) to this same prior turns (38) into
\[
\inf_{B:\,(\epsilon,\delta)\text{-DP}}
\mathbb E_{e\sim\Pi_{n,N,\epsilon,\delta}}
[\mathcal R_n(B,e)]
=
\min_{K\in\mathcal K_{n,N}^{\epsilon,\delta}}
\mathbb E_{e\sim\Pi_{n,N,\epsilon,\delta}}[r_e(K)]
\ge\frac1{20},
\tag{39}
\]
which is `(HP)` with
\(\eta_{\rm th}=1/20\) exactly.

The prior in (34) is a probability vector indexed by precisely
\(\mathcal E_{n,N}=[N]\times[N]^{9n}\). Hence it has no mass on an auxiliary discretization, limiting experiment, changed database size, or different distribution class. As usual for notation
\(\Delta(\mathcal E_{n,N})\), its positive-mass support may be a subset of that exact finite universe; `(HP)` does not require every experiment to receive positive mass.

Finally, the construction is noncircular. Proposition~\ref{prop:step-004-hardness} proves (36) separately for every candidate kernel without mentioning a prior. Only after the entire risk table
\((r_e(K))_{K,e}\) and the full learner strategy set are fixed does minimax select one maximizing prior. The selected probability vector may depend on
`n,N,epsilon,delta`, but it does not depend on a later candidate learner, the hidden-arm learner, the PAC learner `A`, or any randomness generated by those learners. This is the first legal producer of
\(\Pi_{n,N,\epsilon,\delta}\).

## Target-Step Assembly

Fix parameters satisfying (T1). Proposition~\ref{prop:step-005-dp-polytope} defines the learner's finite strategy set using every stochastic-row condition and both eventwise DP inequalities on every ordered replacement-adjacent input pair and every event in the full output cube. The constant kernel proves nonemptiness; finite affine constraints give closedness; stochasticity gives boundedness; Heine-Borel gives compactness; and direct convex combination proves convexity without changing `epsilon` or `delta`.

Proposition~\ref{prop:step-005-risk-restriction} writes each risk as the explicit finite affine sum (15), including the multiplicities in `U`. It then applies precisely the accepted coordinate restriction to push every arbitrary-output DP kernel into the finite cube, proves both privacy inequalities through event preimages, and proves equality of every experiment risk. Because every cube vector is itself an arbitrary binary hypothesis on `[N]`, the restriction is onto the relevant finite competitor class and (24) gives equality of the arbitrary-output and finite-game infima. No threshold properness, representation restriction, approximation, or discretization is introduced.

Proposition~\ref{prop:step-005-minimax} applies the fully restated finite-dimensional von Neumann theorem to the compact convex DP polytope and the exact finite experiment simplex. Its payoff is continuous bilinear, and maximizing over the experiment simplex is exactly maximizing over experiments. Therefore the orientation is
\[
\min_K\max_e r_e(K)
=
\max_\Pi\min_K\mathbb E_{e\sim\Pi}r_e(K),
\]
not the reverse. The learner-side minimum, each fixed-prior inner minimum, and the adversary-side maximum are attained.

The accepted Proposition~\ref{prop:step-004-hardness} lower-bounds the left side by exactly `1/20` before any prior exists. Proposition~\ref{prop:step-005-hard-prior} chooses an attaining prior only afterward, transfers the same value through minimax without loss, and then invokes the exact arbitrary-output equality. This proves `(HP)` for a learner-independent
\(\Pi_{n,N,\epsilon,\delta}\in\Delta(\mathcal E_{n,N})\), supported on no experiments outside the exact finite universe. All privacy parameters, risks, experiment distributions, and the threshold `1/20` are unchanged.

Thus the exact accepted `step_005` sketch-row claim is proved, and the prior is legally available for `step_006` and later consumers.

## Explicit Rate Audit

- Exposed variables: `n`, `N`, `epsilon`, `delta`; the finite cardinalities `(2N)^n`, `2^N`, and `N^(9n+1)`; the universal admissibility constants `a_th,a_delta,N_th`; and the exact hard value `1/20`.
- Hidden constants may depend on: only the universal constants already proved in accepted `step_004`. This step introduces no quantitative hidden constant.
- Hidden constants may not depend on: the candidate kernel, arbitrary output representation, experiment, prior realization, later PAC learner, class `C`, ambient domain `X`, number of arms `k`, or any hidden-arm randomness.
- Fixed quantities: zero-one loss, ordered replacement adjacency, the experiment size `9n`, the full binary output cube, and the expected-risk threshold `eta_th=1/20`.
- Probability mode: expectation jointly over `e~Pi`, `S~Q_e^n`, and kernel randomness. DP is checked eventwise on every adjacent deterministic input pair. No high-probability or conditional statement is introduced.
- Horizon mode: fixed sample and one finite game. There is no repeated, asymptotic, all-time, or stopping-time scope.
- Norm mode: expected zero-one risk `mathcal R_n(B,e)`.
- Admissibility conditions and auxiliary tolerances: exactly (T1); there are no auxiliary tolerances, meshes, product sizes, or limiting parameters in this step.
- Term absorption or simplification inequalities: none. The only quantitative implication is the exact chain
  \[
  \forall K:\ \max_e r_e(K)\ge\frac1{20}
  \Longrightarrow
  \min_K\max_e r_e(K)\ge\frac1{20}
  \Longrightarrow
  \max_\Pi\min_K\mathbb E_\Pi r_e(K)\ge\frac1{20}.
  \]
- Probability conversion: none. Finite minimax changes quantifier order, not probability mode.
- Contribution to any Rate Specialization Bridge: this step exports the exact `(HP)` prior and the same universal `a_th,a_delta,N_th` interface for downstream `n`-to-`m` specialization.
- Baseline-reduction check: this game contains no `k`. At `k=1` downstream it is exactly the one-chain finite threshold obstruction, now in learner-independent prior form. Minimax changes neither the one-chain value nor the arbitrary-output scope, so the inherited `Omega(log^*N)` baseline is preserved rather than weakened to a proper, pure-DP, or learner-dependent statement.

## Blockers

None.

## Notation And Assumption Notes

- `Z_N`, `S_(n,N)`, and `V_N`: `appendix-local`; direct finite expressions from the original `[N]`, label, ordered-sample, and arbitrary-output notation. `V_N` is the full function cube, not a threshold class.
- `E_(n,N)=mathcal E_(n,N)`: `public-facing`; exactly the setting-defined finite experiment universe. Its elements are ordered tuples `(t,U)`, so repeated entries of `U` remain distinct tuple coordinates and are not quotiented away.
- Replacement adjacency `s~s'`: `appendix-local`; exactly the setting's ordered-sample relation of differing in at most one record.
- `K(v|s)` and `K(A|s)`: `appendix-local`; finite stochastic-kernel coordinates and their event sums. All eventwise inequalities are displayed in (5a)--(5b).
- `K_1,K_2,lambda,K_lambda`: `proof-local`; arbitrary convexity witnesses used only in (10)--(11). Their row and privacy constraints are derived from those of `K_1,K_2`.
- `K_(n,N)^(epsilon,delta)`: `appendix-local`; proved nonempty, compact, convex, and polyhedral by Proposition~\ref{prop:step-005-dp-polytope}. Membership is locally quantified, never assumed as a generated theorem invariant.
- `K_0`: `proof-local`; the all-zero input-independent deterministic kernel used only to prove nonemptiness. It is admissible at `delta=0` and `epsilon=1`.
- `d=(2N)^n2^N`: `proof-local`; the exact ambient dimension, directly defined from finite setting quantities.
- `ell_e(v)` and `r_e(K)`: `appendix-local`; direct expansions of the setting-defined zero-one loss and `mathcal R_n`. Their bounds and linearity are proved in (13)--(16).
- `Y,A,B_tilde,F`: `appendix-local`; a generic accepted arbitrary-output measurable representation, its sigma-algebra, its kernel, and a quantified measurable event. They are used only to verify exact restriction equivalence.
- `rho` and `K_rho`: `appendix-local`; precisely the accepted measurable coordinate restriction and its pushforward. Their privacy and risk identities are proved in (20)--(22); they do not constitute a new output assumption.
- `Delta(E_(n,N))`: `public-facing` only through the statement that the prior is a probability distribution on the exact experiment universe.
- `Phi(K,Pi)` and `g(Pi)`: `proof-local`; the bilinear payoff and its attained lower-envelope value. The Lipschitz estimate (33) proves the outer maximum exists.
- `Pi_(n,N,epsilon,delta)`: `public-facing`; the sole exported object. It is an attaining probability vector produced by Proposition~\ref{prop:step-005-hard-prior} and depends only on the four displayed game parameters.
- `a_th,a_delta,N_th`: `public-facing` accepted dependency constants. This step does not alter or reselect them.
- Constant provenance: the only numerical target is `1/20`, inherited exactly from the setting and Proposition~\ref{prop:step-004-hardness}. No new radius, threshold, rate, margin, or bounded quantity is introduced without a displayed definition or proof.
- Assumption provenance: finite spaces and scalar parameter conditions are primitive; algorithm-wise hardness and the coordinate-restriction interface are accepted dependency outputs; compactness, convexity, affinity, minimax equality, attainment, and the prior are proved in this step. No generated event, stability, boundedness, recurrence, or support condition is treated as primitive.
- Exact-support audit: `Pi in Delta(E_(n,N))` means that all mass is assigned within exactly the setting-defined experiment universe and nowhere else. Full positive mass on every experiment is neither asserted nor required by `(HP)`.
- Privacy audit: the finite kernel class uses all labeled inputs, not only realizable samples, and imposes both DP directions for every event. Convexification retains the same additive `delta`, and output restriction is exact postprocessing.
- Arbitrary-output audit: the only reduction is the accepted full-coordinate restriction. Since the cube contains every binary function on `[N]`, arbitrary improper and oscillating outputs remain present; no threshold projection or properization occurs.
- Noncircularity audit: accepted `step_004` supplies the pointwise lower value with no prior. The current minimax step then produces the prior, which is first consumed only by later steps. No learner is used to choose its own hard distribution.
- Boundary audit: deterministic and randomized kernels are both included; `delta=0` and `epsilon=1` preserve nonemptiness and every compactness argument; equal samples permitted by the `at most one record` adjacency convention make (5a)--(5b) trivial special cases; repeated entries in `U` are handled exactly by (12)--(13).
- Diagnostic boundary: `global_proof.md`, SHA-256 `bbd8a4f3a7d579085fbfcbea87beb2dce14d00f99922eb44b694e690460b29b6`, was read only after confirming that paired `global_proof_review.md`, SHA-256 `4723ec97011458d099b944756217c3dcd5e51e64ce7f7cfac4568b68592d5239`, has status `ACCEPTED`. Its G5 block suggested the planning order `finite DP polytope -> affine risk -> minimax orientation and attainment -> arbitrary-output equality -> hard prior`. The diagnostic was not used as proof evidence, a cited result, an assumption source, or authority to alter the target claim, dependencies, support universe, privacy parameters, risk, or constant.
