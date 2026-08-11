# Proof Step

## Step Identity

- Sketch attempt: `1`
- Step ID: `step_002`
- Unit attempt: `1`

## Target Step Claim

- Intended claim: Rework Alon's homogeneous-set and endpoint argument for expected empirical loss `<=1/20`, all `epsilon<=1`, and both parities of `M=9n`, yielding a universal positive gap `g_gap` and an adjacent homogeneous-list rise `Omega(g_gap/M)`; retain the active Ramsey lower bound with adjusted universal color constants.
- Depends on: `step_001`.
- Assumptions used: Derived empirical wrapper; source DP interface; no new theorem assumption.
- Technical challenge: Prove rather than assume the `epsilon=1` positive gap; control delta, mesh, parity, and arbitrary outputs.
- Intended proof tool or cited result: Alon active `def:homog`, active `lem:reduction`, active `lem:finiteramsey`/`lem:ramsey`, active Erdos-Rado `thm:ramsey`; direct inequalities.
- Output target: Positive adjacent-list margin and large homogeneous set.
- Rate objective: R1, with expected loss `1/20`, endpoint-uniform constants, and `delta=O(1/(n^2 log(en)))`.

## Step Proof Status

`COMPLETE`

## Allowed Assumptions And Dependencies

- Setting assumptions by stable id: None. This step uses the finite threshold-experiment definitions in `setting.md`, but no theorem-facing `assump:*` condition.
- Accepted dependency proof: `perspective_2/idea_2/proof_steps/step_001/proof.md`, SHA-256 `047122f7212dc9ba45455487658b03015d6b9d67c8d9789120fe8c734fbb6e2e`.
- Accepted dependency review: `perspective_2/idea_2/proof_steps/step_001/review.md`, status `ACCEPTED`, SHA-256 `e6d62bfc54f2e43df1d5d30b55b71f5f0a1ac274413b51e12f6b5d4385a2bb43`.

Assumption-provenance classification:

- Primitive conditions: integers `n>=1`, `N>=2`; `M=9n`; ordered replacement adjacency; `0<epsilon<=1`; `delta>=0`; zero-one empirical loss; and the definitions of `Q_e` and `R_n` in `setting.md`.
- Derived invariants supplied by accepted dependencies: the full-cube restriction `B`; its `M=9n` empirical wrapper `W_B`; `(epsilon,delta)` privacy of `W_B`; the exact identity between wrapper expected empirical loss and `R_n(B,e)`; and the loss-, adjacency-, and arbitrary-output-preserving order reversal `x=N+1-q`.
- Local conditional hypotheses: for the endpoint implication, the candidate satisfies
  \[
  R_n(B,e)\le \frac1{20}
  \quad\text{for every }e\in\mathcal E_{n,N};
  \tag{A1}
  \]
  for the quantitative delta interface,
  \[
  0\le\delta\le
  \frac{a_{\delta,{\rm end}}}{n^2\log(en)},
  \qquad
  a_{\delta,{\rm end}}
  :=\frac{g_{\rm gap}}{8(1+e^{-1})};
  \tag{A2}
  \]
  and the nonvacuous homogeneous-list branch has `N>=M+1`. These are conditions of the local finite-game implication, not new theorem-facing assumptions. The complementary finite boundary `N<=M` is recorded explicitly below and requires no homogeneous-list construction.

No hard prior, neighboring-law family, binary-search conclusion, iterated-log sample lower bound, or later proof-step output is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the accepted `step_001` wrapper and order-reversal conclusions, the conjugated upper-oriented empirical wrapper is `(epsilon,delta)`-DP, has the same expected empirical loss, takes values in the full arbitrary bit cube, and is invariant under every permutation of its `M` input rows. | Places the current proof in the active source orientation and justifies sorting a one-record replacement without an extra privacy charge. |
| `unit_002` | lemma | The numerical constants `g_*=9/(10e)-e/10` and `g_odd=71/(80e)-9e/80` are strictly positive, so `g_gap=min(g_*,g_odd)` is a universal positive constant. | Establishes the endpoint and mesh constant before any later unit uses it. |
| `unit_003` | proposition | For the fixed nearly balanced rank-label template and mesh `gamma=g_gap/(100M)`, a finite coloring of `(M+1)`-subsets using at most `(1+ceil(1/gamma))^(M+1)` colors makes every monochromatic set homogeneous with a list `(p_0,...,p_M)` to error at most `gamma`. | Proves the arbitrary-output homogeneous-list interface, including ranks `0` and `M`, for both parities of `M`. |
| `unit_004` | proposition | Under the finite Erdos-Rado theorem, the coloring in `unit_003` has a homogeneous set satisfying the active lower bound `log_2^(M)(N)/exp(C_R M log(eM))` for a universal `C_R`, whenever the iterated-log expression is in its nonvacuous finite-Ramsey range. | Retains the active Ramsey lower bound with all adjusted color constants exposed. |
| `unit_005` | lemma | Under (A1), every fixed-template `M`-point sample has a negative-side point with positive-prediction marginal at most `theta_M` and a positive-side point with correctness marginal at least `1-theta_M`, where `theta_M=1/10` for even `M` and `theta_M=9/80` for odd `M>=9`. | Converts expected empirical loss `1/20` into parity-uniform side marginals. |
| `unit_006` | proposition | Under `unit_001`, `unit_002`, `unit_003`, `unit_005`, and (A2), one central unused point in an arbitrary ordered `(M+1)`-subset produces two one-record comparisons and list ranks `r_-<r_+` with `p_(r_+)-p_(r_-)>=3g_gap/4`, uniformly for `0<epsilon<=1`. | Proves the endpoint gap, delta and mesh control, sparse-point validity, and one-sided rank boundaries. |
| `unit_007` | proposition | Under `unit_006`, telescoping across at most `M` list increments gives some `i in [M]` with `p_i-p_(i-1)>=3g_gap/(4M)`. | Exports the exact adjacent homogeneous-list rise consumed by `step_003`. |

Atomic step = no. Finite homogeneity, Ramsey extraction, expected-loss side marginals, privacy transfer, endpoint positivity, and telescoping are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: finite private empirical wrapper

- Source: accepted Proposition `Private with-replacement empirical wrapper`, Lemma `Zero-residual empirical-risk identity`, and Proposition `Threshold-convention equivalence` in `step_001`.
- Restated dependency conclusion in current notation: for every full-cube `(epsilon,delta)`-DP `n`-sample kernel `B`, `M=9n`, and ordered threshold-labeled `M`-tuple `D`, the wrapper `W_B` obtained by iid uniform with-replacement row sampling is `(epsilon,delta)`-DP for every `0<epsilon<=1`, and
  \[
  \mathbb E_{g\sim W_B(D)}L_D(g)=R_n(B,e_D)
  \tag{C1}
  \]
  for the corresponding finite experiment `e_D`. Under `x=N+1-q`, the branch threshold `1{q<=t}` becomes the upper-oriented threshold `1{x>=N+1-t}`, with exact preservation of loss, row replacement adjacency, and the full arbitrary-output cube.
- Instantiated objects: the dependency wrapper is the `W_B` used throughout this proof; its conjugate under `x=N+1-q` is denoted `mathsf W` below.
- Assumptions and discharge: `M=9n`, `0<epsilon<=1`, and candidate privacy are exactly the dependency hypotheses; coordinate measurability and the finite-experiment definitions are primitive in `setting.md`; the dependency review is current and `ACCEPTED`.
- Conclusion used: eventwise `(epsilon,delta)` privacy, exact expected empirical loss, and source-orientation equivalence. Row-permutation invariance is not imported from the dependency; it is proved directly in Lemma~\ref{lem:step-002-oriented-wrapper} from the wrapper's finite-mixture formula.
- Non-output boundary: `step_001` supplies no homogeneous set, endpoint margin, Ramsey conclusion, or hard prior.

### Active Alon homogeneous-set definition and finite homogeneous-set lemma

- Source: Alon, Livni, Malliaris, and Moran, *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949, active `ADP.tex` labels `def:homog` and `lem:finiteramsey`/`lem:ramsey`; audited source SHA-256 `5eaeb54287aa8aa89a00ad4b05f9158b56e01450a18e635afeecc4ed4e97128f`. The source header SHA-256 `99af402478d02a1e4e4b8650102e4feb5699779a2ad9f8fd06992cd5e612d801` defines `ignore`, so the duplicate block beginning later in the file is inactive and is not used.
- Restated active definition: for an even source sample size `m`, a set is `m`-homogeneous if there are `p_0,...,p_m` such that, for every increasing balanced threshold-realizable sample `S` from the set and every off-sample point `x` of rank `r=|{z in S_X:z<=x}|`, the positive-prediction marginal differs from `p_r` by at most `1/(100m)`.
- Restated active lemma: every randomized `m`-sample algorithm on a finite ordered domain of size `N` has an `m`-homogeneous subset of size at least `log^(m)(N)/2^(O(m log m))`.
- Current-object mapping: `m` is replaced by `M=9n`; the balanced template is replaced by the fixed nearly balanced template with `s_-=floor(M/2)` zeros followed by `s_+=ceil(M/2)` ones; the source tolerance is replaced by `gamma=g_gap/(100M)`; and the randomized source output is the arbitrary full-cube output of `mathsf W`.
- Conclusion used: the source definition determines the intended list interface and coloring coordinates. The active lemma is not invoked as a black box because it does not state the odd-template or `gamma`-dependent color count. Proposition~\ref{prop:step-002-finite-homogeneity} and Proposition~\ref{prop:step-002-ramsey-extraction} rederive its current-notation conclusion.
- Non-output boundary: these source items do not supply the expected-loss endpoint constants, the `epsilon=1` gap, or the present delta accounting.

### Erdos-Rado finite Ramsey theorem

- Source: Erdos and Rado, *Combinatorial theorems on classifications of subsets of a given set*, Proceedings of the London Mathematical Society, 1952, as quoted in active Alon `thm:ramsey` at `ADP.tex:632-637`.
- Restated statement in current notation: define
  \[
  \operatorname{twr}_1(u)=u,
  \qquad
  \operatorname{twr}_{r+1}(u)=2^{\operatorname{twr}_r(u)}.
  \]
  If integers `s>t>=2` and `q>=2` satisfy
  \[
  N\ge \operatorname{twr}_t(3s q\log_2 q),
  \tag{C2}
  \]
  then every coloring of the `t`-subsets of an `N`-point universe with at most `q` colors has a set of size `s` all of whose `t`-subsets have the same color. Using `log_2` in (C2) is a sufficient version of the active statement under either conventional logarithm base.
- Instantiated objects: `t=M+1`; `q=q_M=(1+ceil(1/gamma))^(M+1)`; the universe is `[N]` in the upper-oriented coordinate; and `s` is the integer selected in Proposition~\ref{prop:step-002-ramsey-extraction}.
- Assumptions and discharge: `M>=9` gives `t>=10`; `q_M` is an integer at least two; the selected nontrivial branch has `s>=M+2>t`; and the tower-size condition follows from `3s q_M log_2 q_M<=log_2^(M)(N)`.
- Conclusion used: existence of a monochromatic set for the finite coloring in Proposition~\ref{prop:step-002-finite-homogeneity}.
- Non-output boundary: the theorem supplies only monochromaticity. It supplies neither homogeneity verification, loss control, privacy transfer, nor an adjacent rise.

### Active Alon endpoint reduction

- Source: active Alon `lem:reduction` and its proof at `ADP.tex:716-748`.
- Restated active conclusion: under the source's even balanced template, its fixed empirical-accuracy constants, `epsilon=0.1`, and source homogeneity mesh, some adjacent entries obey `p_i-p_(i-1)>=1/(4m)`.
- Current-object mapping: `m` is replaced by `M`; high-probability empirical accuracy is replaced by the exact expectation premise (A1); `epsilon=0.1` is replaced by every `0<epsilon<=1`; and odd `M` is permitted.
- Conclusion used: none as a black box. The source identifies the one-record endpoint-transfer mechanism, but Lemma~\ref{lem:step-002-side-marginals}, Proposition~\ref{prop:step-002-endpoint-gap}, and Proposition~\ref{prop:step-002-adjacent-rise} independently prove the required current claim.
- Non-output boundary: the active reduction does not cover `epsilon=1`, odd sample size, the present expected-loss constant, the exact `delta` scale, or the one-sided rank endpoints.

### Internal results used in target assembly

- Lemma~\ref{lem:step-002-oriented-wrapper}: upper-oriented, arbitrary-output, permutation-invariant wrapper.
- Lemma~\ref{lem:step-002-numerical-gap}: universal positive endpoint constants.
- Proposition~\ref{prop:step-002-finite-homogeneity}: finite coloring and homogeneous list.
- Proposition~\ref{prop:step-002-ramsey-extraction}: active-scale homogeneous-set lower bound.
- Lemma~\ref{lem:step-002-side-marginals}: parity-uniform side marginals from expected loss.
- Proposition~\ref{prop:step-002-endpoint-gap}: positive endpoint-uniform list gap.
- Proposition~\ref{prop:step-002-adjacent-rise}: adjacent rise by finite telescoping.

## Local Derivation

### unit_001: lemma

**Lemma (Upper-oriented symmetric empirical wrapper).** \label{lem:step-002-oriented-wrapper}

Statement: Under the accepted `step_001` dependency, let `B` be a full-cube `(epsilon,delta)`-DP `n`-sample kernel, let `M=9n`, and let `W_B` be its accepted empirical wrapper. Define
\[
\psi(q)=N+1-q.
\tag{1}
\]
Conjugating input records and output coordinates by `psi` gives an upper-oriented wrapper `mathsf W` on `M`-row tuples over `[N] x {0,1}`. Then `mathsf W` is `(epsilon,delta)`-DP, has exactly the same empirical zero-one loss as `W_B`, takes values in the full cube `{0,1}^[N]`, and for every row permutation `pi`,
\[
\mathsf W(D)\stackrel{\rm law}=\mathsf W(\pi D).
\tag{2}
\]
Consequently, under (A1), every upper-oriented threshold-realizable tuple `D` satisfies
\[
\mathbb E_{v\sim\mathsf W(D)}L_D(v)\le\frac1{20}.
\tag{3}
\]

Proof / justification:

The accepted threshold-convention proposition maps `q` to `x=psi(q)` and maps the branch target to
\[
\sigma_\vartheta(x)=\mathbf 1\{x\ge\vartheta\},
\qquad
\vartheta=N+1-t.
\tag{4}
\]
The record map is bijective and position preserving, and the output map is the coordinate relabeling
\[
v(x)=g(\psi^{-1}(x)).
\tag{5}
\]
Thus DP, adjacency, zero-one loss, and the full arbitrary-output cube are preserved exactly. Equation (3) follows from (A1) and the accepted zero-residual identity (C1).

It remains to prove (2). The accepted wrapper has the finite-mixture formula
\[
W_B(D)(E)
=\frac1{M^n}\sum_{(k_1,\ldots,k_n)\in[M]^n}
B(d_{k_1},\ldots,d_{k_n})(E).
\tag{6}
\]
If `pi` permutes the rows, the map
\[
(k_1,\ldots,k_n)\longmapsto
(\pi(k_1),\ldots,\pi(k_n))
\]
is a bijection of `[M]^n`. Reindexing the sum in (6) proves
`W_B(D)=W_B(pi D)` as output laws, even when `B` itself is order sensitive. Conjugating by (1) and (5) preserves this equality and proves (2). Therefore a tuple obtained by one record replacement may be sorted before applying homogeneity: privacy compares the original tuple with the unsorted adjacent tuple, while (2) identifies the latter's output law with that of its sorted version. This sorting introduces neither a second replacement nor a composition charge.

### unit_002: lemma

**Lemma (Universal numerical endpoint gap).** \label{lem:step-002-numerical-gap}

Statement: The constants
\[
g_*:=\frac9{10e}-\frac e{10},
\qquad
g_{\rm odd}:=\frac{71}{80e}-\frac{9e}{80},
\qquad
g_{\rm gap}:=\min\{g_*,g_{\rm odd}\}
\tag{N1}
\]
are universal and strictly positive. Moreover `g_gap<1`.

Proof / justification:

For every integer `r>=3`,
\[
r!\ge6\,3^{r-3}.
\]
The inequality is strict for at least one `r>=4`, so
\[
e=1+1+\frac12+\sum_{r=3}^\infty\frac1{r!}
<\frac52+\frac16\sum_{u=0}^\infty3^{-u}
=\frac{11}{4}.
\tag{N2}
\]
In particular `e<3`, and therefore
\[
g_*=\frac{9-e^2}{10e}>0.
\tag{N3}
\]
Also
\[
9e^2<9\left(\frac{11}{4}\right)^2
=\frac{1089}{16}<71,
\tag{N4}
\]
which gives
\[
g_{\rm odd}=\frac{71-9e^2}{80e}>0.
\tag{N5}
\]
Thus `g_gap>0`. Finally, both `g_*<9/(10e)<1` and
`g_odd<71/(80e)<1`, so `g_gap<1`.

### unit_003: proposition

**Proposition (Finite nearly balanced homogeneity coloring).** \label{prop:step-002-finite-homogeneity}

Statement: Under Lemma~\ref{lem:step-002-oriented-wrapper}, let `M>=9`, set
\[
s_-:=\left\lfloor\frac M2\right\rfloor,
\qquad
s_+:=M-s_-,
\tag{7}
\]
and fix the rank-label template consisting of `s_-` zeros followed by `s_+` ones. For any `gamma in (0,1)`, there is a coloring of the `(M+1)`-subsets of `[N]` using at most
\[
q_M(\gamma)
=\left(1+\left\lceil\frac1\gamma\right\rceil\right)^{M+1}
\tag{8}
\]
colors such that every monochromatic set `H` has a list
\[
(p_0,\ldots,p_M)\in[0,1]^{M+1}
\tag{9}
\]
with the following property. If `S` is any increasing `M`-point sample from `H` carrying the fixed template, `x in H\S_X`, and
\[
r=\operatorname{ord}_S(x)
:=|\{z\in S_X:z\le x\}|\in\{0,\ldots,M\},
\tag{10}
\]
then, writing
\[
a_S(x):=\Pr_{v\sim\mathsf W(S)}[v(x)=1],
\tag{11}
\]
one has
\[
|a_S(x)-p_r|\le\gamma.
\tag{12}
\]
This conclusion uses only coordinate marginals and imposes no threshold shape or properness on the output.

Proof / justification:

Put
\[
L=\left\lceil\frac1\gamma\right\rceil,
\qquad
\mathcal G_L=\left\{0,\frac1L,\ldots,1\right\}.
\tag{13}
\]
Round each `u in [0,1]` to a nearest element `Q_gamma(u)` of `mathcal G_L`, breaking ties toward the smaller grid point. Since the grid spacing is `1/L<=gamma`,
\[
|Q_\gamma(u)-u|\le\frac1{2L}\le\gamma.
\tag{14}
\]

For an ordered `(M+1)`-subset
\[
D=\{x_1<\cdots<x_{M+1}\},
\]
let `S^{-i}` be the increasing sample on `D\{x_i}` with the fixed rank-label template (7). Color `D` by
\[
\operatorname{col}(D)
=\bigl(Q_\gamma(a_{S^{-1}}(x_1)),\ldots,
Q_\gamma(a_{S^{-(M+1)}}(x_{M+1}))\bigr).
\tag{15}
\]
Every coordinate has `L+1=1+ceil(1/gamma)` possibilities, proving (8).

Suppose all `(M+1)`-subsets of `H` have the same color
`(c_1,...,c_(M+1))`. Define
\[
p_r=c_{r+1},
\qquad 0\le r\le M.
\tag{16}
\]
Given `S,x` in the statement, the set `D=S_X union {x}` has `x` in position `r+1`, and deleting `x` from `D` gives exactly the sorted fixed-template sample `S`. Thus the `(r+1)`-st coordinate of (15) is `Q_gamma(a_S(x))=p_r`. Equation (14) proves (12).

The cases `r=0` and `r=M` are literal coloring coordinates: the queried point lies before all or after all sample points. No point outside `H`, no arithmetic successor, and no output-shape assumption is used.

### unit_004: proposition

**Proposition (Finite Ramsey extraction with adjusted color constants).** \label{prop:step-002-ramsey-extraction}

Statement: Under Lemma~\ref{lem:step-002-numerical-gap} and Proposition~\ref{prop:step-002-finite-homogeneity}, take
\[
\gamma:=\frac{g_{\rm gap}}{100M},
\qquad
q_M:=q_M(\gamma).
\tag{17}
\]
There is a universal constant `C_R>0`, depending only on the numerical constant `g_gap`, with the following property. Whenever `N>=M+1` and the base-two iterated logarithm
\[
\ell_M(N):=\log_2^{(M)}N
\tag{18}
\]
is defined and at least one, the coloring in Proposition~\ref{prop:step-002-finite-homogeneity} has a monochromatic set `H` satisfying
\[
|H|\ge M+1,
\qquad
|H|\ge
\frac{\ell_M(N)}{\exp(C_R M\log(eM))}.
\tag{19}
\]
The exact finite bound before universal simplification is
\[
|H|\ge
\frac{\ell_M(N)}{6q_M\log_2 q_M}.
\tag{20}
\]

Proof / justification:

Lemma~\ref{lem:step-002-numerical-gap} gives `0<g_gap<1`. Hence `gamma in (0,1)` for `M>=9`, and `q_M>=2` is an integer.

Set
\[
x_R:=\frac{\ell_M(N)}{3q_M\log_2 q_M},
\qquad
s_R:=\lfloor x_R\rfloor.
\tag{21}
\]
If `s_R>=M+2`, instantiate the finite Erdos-Rado theorem with
\[
t=M+1,\qquad q=q_M,\qquad s=s_R.
\]
The required strict inequality `s>t` holds. Moreover,
\[
3s_Rq_M\log_2q_M\le\ell_M(N).
\tag{22}
\]
By the definitions of the tower and iterated logarithm,
\[
\operatorname{twr}_{M+1}(\ell_M(N))=N.
\tag{23}
\]
Monotonicity of the tower, (22), and (23) verify the cited theorem's size hypothesis, so a monochromatic set of size `s_R` exists.

If `s_R<=M+1`, any `(M+1)`-subset is monochromatic because it has only one `(M+1)`-subset to color. Such a set exists because `N>=M+1`. In both branches,
\[
|H|\ge\frac{x_R}{2}
=\frac{\ell_M(N)}{6q_M\log_2q_M}.
\tag{24}
\]
Indeed, in the first branch `floor(x_R)>=x_R/2` since `x_R>=M+2>=2`; in the second branch `x_R<M+2<=2(M+1)` and `|H|=M+1>=x_R/2`. This proves (20), including the finite rounding case omitted by asymptotic notation.

It remains to bound the color denominator. Define the numerical constant
\[
C_g:=2+\frac{100}{g_{\rm gap}}.
\tag{25}
\]
Since `M>=1`,
\[
1+\left\lceil\frac1\gamma\right\rceil
=1+\left\lceil\frac{100M}{g_{\rm gap}}\right\rceil
\le C_gM.
\tag{26}
\]
Therefore
\[
q_M\le(C_gM)^{M+1},
\tag{27}
\]
and, with `A_g:=1+log C_g`,
\[
\log q_M
\le(M+1)(\log C_g+\log M)
\le2A_gM\log(eM).
\tag{28}
\]
Because `q_M>=2`, `log_2q_M<=q_M`, and hence
\[
\begin{aligned}
\log\bigl(6q_M\log_2q_M\bigr)
&\le\log6+2\log q_M\\
&\le\bigl(\log6+4A_g\bigr)M\log(eM).
\end{aligned}
\tag{29}
\]
Thus the explicit universal choice
\[
C_R:=\log6+4(1+\log C_g)
\tag{30}
\]
turns (20) into (19). Every constant in (19) is therefore numerical and learner independent.

For the finite boundary `N<=M`, the domain itself has size at most `M`; the `(M+1)`-subset coloring is empty and no off-sample rank list is needed. The active Ramsey branch used downstream is precisely the nonvacuous `N>=M+1` branch proved above.

### unit_005: lemma

**Lemma (Parity-uniform side marginals at expected loss one twentieth).** \label{lem:step-002-side-marginals}

Statement: Under Lemma~\ref{lem:step-002-oriented-wrapper} and (A1), let
\[
S=((z_1,0),\ldots,(z_{s_-},0),
(z_{s_-+1},1),\ldots,(z_M,1))
\tag{32}
\]
be any increasing fixed-template sample on distinct points. Then there are indices
\[
\ell\in\{1,\ldots,s_-\},
\qquad
j\in\{s_-+1,\ldots,M\}
\tag{33}
\]
such that
\[
a_S(z_\ell)\le\theta_M,
\qquad
a_S(z_j)\ge1-\theta_M,
\tag{34}
\]
where
\[
\theta_M=
\begin{cases}
1/10,&M\text{ even},\\
9/80,&M\text{ odd}.
\end{cases}
\tag{35}
\]
The odd bound holds for every odd `M>=9`.

Proof / justification:

The expected empirical error of `mathsf W` on `S` is
\[
\frac1M\left(
\sum_{i=1}^{s_-}a_S(z_i)
+\sum_{i=s_-+1}^{M}(1-a_S(z_i))
\right)\le\frac1{20}
\tag{36}
\]
by (3). Both sums are nonnegative, so
\[
\min_{i\le s_-}a_S(z_i)
\le\frac{M}{20s_-},
\qquad
\min_{i>s_-}(1-a_S(z_i))
\le\frac{M}{20s_+}.
\tag{37}
\]
If `M` is even, both side sizes are `M/2`, and both right-hand sides equal `1/10`.

If `M=2r+1` is odd, then `r=s_->=4` and `s_+=r+1`. Thus
\[
\frac{M}{20s_-}
=\frac{2r+1}{20r}
=\frac1{10}+\frac1{20r}
\le\frac9{80},
\tag{38}
\]
while
\[
\frac{M}{20s_+}
=\frac{2r+1}{20(r+1)}
<\frac1{10}<\frac9{80}.
\tag{39}
\]
Choosing minimizers in (37) proves (34). At the smallest admitted odd size `M=9`, (38) is exactly `9/80`, so no asymptotic parity claim is being used.

### unit_006: proposition

**Proposition (Endpoint-uniform homogeneous-list gap).** \label{prop:step-002-endpoint-gap}

Statement: Under Lemma~\ref{lem:step-002-numerical-gap}, Lemma~\ref{lem:step-002-oriented-wrapper}, Proposition~\ref{prop:step-002-finite-homogeneity}, Lemma~\ref{lem:step-002-side-marginals}, and (A2), let `H` be any monochromatic set with `|H|>=M+1`, let `(p_0,...,p_M)` be its homogeneous list at mesh `gamma=g_gap/(100M)`, and suppose (A1) holds. Then there are ranks
\[
0\le r_-<r_+\le M
\tag{40}
\]
such that, uniformly for every `0<epsilon<=1`,
\[
p_{r_+}-p_{r_-}
\ge g_{\rm gap}-(1+e^{-1})\delta-2\gamma
\ge\frac{3g_{\rm gap}}4.
\tag{41}
\]
Both constants in (N1) are strictly positive; in particular the gap at the privacy endpoint `epsilon=1` is proved rather than assumed.

Proof / justification:

**1. One unused point and the two realizable replacements.**

Choose any ordered `(M+1)`-subset
\[
h_1<\cdots<h_{M+1}
\tag{42}
\]
of `H`, and leave the central boundary point
\[
x_*:=h_{s_-+1}
\tag{43}
\]
out of the base sample. Write the remaining sorted points as
\[
z_i=
\begin{cases}
h_i,&i\le s_-,\\
h_{i+1},&i>s_-.
\end{cases}
\tag{44}
\]
Give `z_1,...,z_(s_-)` label zero and the remaining points label one. This is the upper-oriented threshold sample whose first positive point is `h_(s_-+2)`. Lemma~\ref{lem:step-002-side-marginals} supplies `ell,j` satisfying (33)-(34).

For the low-side comparison, replace the record `(z_ell,0)` by `(x_*,0)`. After sorting, the resulting sample `S^-` still has exactly `s_-` zeros followed by `s_+` ones and is realized by the upper threshold beginning at `h_(s_-+2)`. The removed point has rank
\[
\operatorname{ord}_{S^-}(z_\ell)=\ell-1.
\tag{45}
\]

For the high-side comparison, replace `(z_j,1)` by `(x_*,1)`. After sorting, the resulting sample `S^+` again has the fixed template and is realized by the upper threshold beginning at `x_*=h_(s_-+1)`. The removed point has rank
\[
\operatorname{ord}_{S^+}(z_j)=j.
\tag{46}
\]
The same unused domain point may carry different labels in the two separate neighboring samples because each sample is independently threshold realizable; no theorem assumption identifies their latent targets.

The direct replacements are one-record replacements of the ordered base tuple but need not remain sorted. Lemma~\ref{lem:step-002-oriented-wrapper} identifies the law on each unsorted adjacent tuple with the law on its sorted version. Hence (45)-(46) use exactly one privacy comparison each. The construction uses only the next available point in the finite ordered set (42); it never assumes that an arithmetic successor such as `x+1` belongs to the domain. It is therefore valid for arbitrarily sparse `H`.

**2. DP transfer and homogeneity.**

Set
\[
r_-:=\ell-1,
\qquad
r_+:=j.
\tag{47}
\]
Since `ell<=s_-<j`, (40) holds. Apply the DP upper inequality to the event that the output predicts one at `z_ell`:
\[
a_{S^-}(z_\ell)
\le e^\epsilon a_S(z_\ell)+\delta
\le e^\epsilon\theta_M+\delta.
\tag{48}
\]
By homogeneity and (45),
\[
p_{r_-}\le e^\epsilon\theta_M+\delta+\gamma.
\tag{49}
\]

For `z_j`, use the DP inequality in the direction from the base sample to its replacement:
\[
a_S(z_j)\le e^\epsilon a_{S^+}(z_j)+\delta.
\]
Thus
\[
a_{S^+}(z_j)
\ge e^{-\epsilon}(a_S(z_j)-\delta)
\ge e^{-\epsilon}(1-\theta_M-\delta),
\tag{50}
\]
and homogeneity with (46) gives
\[
p_{r_+}
\ge e^{-\epsilon}(1-\theta_M-\delta)-\gamma.
\tag{51}
\]
Subtracting (49) from (51),
\[
p_{r_+}-p_{r_-}
\ge
e^{-\epsilon}(1-\theta_M-\delta)
-e^\epsilon\theta_M-\delta-2\gamma.
\tag{52}
\]

**3. The privacy endpoint and its defects.**

The delta condition (A2), `n^2 log(en)>=1`, and `g_gap<1` imply `delta<1/8<1-theta_M`. Therefore the derivative of
\[
F_M(u):=e^{-u}(1-\theta_M-\delta)-e^u\theta_M-\delta
\tag{53}
\]
is
\[
F_M'(u)
=-e^{-u}(1-\theta_M-\delta)-e^u\theta_M<0.
\tag{54}
\]
Thus the worst point of the whole expression, including its delta coefficient, is `u=1`; one must not minimize the multiplicative terms and the additive terms separately. Equations (52)-(54) yield
\[
p_{r_+}-p_{r_-}
\ge
e^{-1}(1-\theta_M)-e\theta_M
-(1+e^{-1})\delta-2\gamma.
\tag{55}
\]

For even `M`, the first two terms in (55) equal
\[
g_* = \frac9{10e}-\frac e{10}
=\frac{9-e^2}{10e}.
\tag{56}
\]
For odd `M`, they equal
\[
g_{\rm odd}
=\frac{71}{80e}-\frac{9e}{80}
=\frac{71-9e^2}{80e}.
\tag{57}
\]
Lemma~\ref{lem:step-002-numerical-gap} proves both expressions strictly positive without decimal approximation. Therefore each parity-specific first term in (55) is at least the universal `g_gap`, and the claimed `epsilon=1` endpoint gap is established rather than postulated.

Using (A2) and `n^2 log(en)>=1`,
\[
(1+e^{-1})\delta\le\frac{g_{\rm gap}}8.
\tag{61}
\]
Also `M>=9` and (17) imply
\[
2\gamma
=\frac{g_{\rm gap}}{50M}
\le\frac{g_{\rm gap}}{450}.
\tag{62}
\]
Substituting (56)-(57) and (61)-(62) into (55), and using Lemma~\ref{lem:step-002-numerical-gap}, gives
\[
p_{r_+}-p_{r_-}
\ge
\left(1-\frac18-\frac1{450}\right)g_{\rm gap}
=\frac{1571}{1800}g_{\rm gap}
>\frac34g_{\rm gap},
\tag{63}
\]
which proves (41). At `delta=0`, the defect in (61) vanishes, so the boundary only improves.

Finally, (45) permits `r_-=0` when `ell=1`, and (46) permits `r_+=M` when `j=M`. Thus both one-sided endpoints of the homogeneous list are genuine cases of the same construction, with no phantom point beyond `H`.

### unit_007: proposition

**Proposition (Adjacent rise from the endpoint-uniform gap).** \label{prop:step-002-adjacent-rise}

Statement: Under Proposition~\ref{prop:step-002-endpoint-gap}, some `i in [M]` satisfies
\[
p_i-p_{i-1}\ge\frac{3g_{\rm gap}}{4M}.
\tag{64}
\]

Proof / justification:

For the ranks `r_-<r_+` from Proposition~\ref{prop:step-002-endpoint-gap},
\[
p_{r_+}-p_{r_-}
=\sum_{i=r_-+1}^{r_+}(p_i-p_{i-1}).
\tag{65}
\]
There are `r_+-r_-<=M` summands. If every summand were smaller than `3g_gap/(4M)`, then the sum in (65) would be smaller than `3g_gap/4`, contradicting (41). Hence (64) holds for some
\[
i\in\{r_-+1,\ldots,r_+\}\subseteq[M].
\]
The proof does not assume monotonicity of the list; it uses only the signed total rise (41). The alternatives `i=1` and `i=M` are allowed because Proposition~\ref{prop:step-002-endpoint-gap} includes `r_-=0` and `r_+=M`.

## Target-Step Assembly

Fix a candidate `n`-sample threshold kernel `B` with `0<epsilon<=1` and assume (A1). The accepted `step_001` dependency supplies its full-cube `(epsilon,delta)`-DP wrapper on `M=9n` rows and the exact equality between wrapper expected empirical loss and `R_n(B,e)`. Lemma~\ref{lem:step-002-oriented-wrapper} conjugates this object to the active upper-threshold orientation, preserves arbitrary outputs, privacy, and loss exactly, and proves the row-permutation invariance needed to sort a one-record replacement without changing its law.

Define the universal numerical constants
\[
g_* = \frac9{10e}-\frac e{10},
\qquad
g_{\rm odd}=\frac{71}{80e}-\frac{9e}{80},
\qquad
g_{\rm gap}=\min\{g_*,g_{\rm odd}\}>0,
\tag{66}
\]
the mesh
\[
\gamma=\frac{g_{\rm gap}}{100M},
\tag{67}
\]
and the endpoint delta constant
\[
a_{\delta,{\rm end}}
=\frac{g_{\rm gap}}{8(1+e^{-1})}>0.
\tag{68}
\]
Proposition~\ref{prop:step-002-finite-homogeneity} gives a finite coloring with at most
\[
q_M=\left(1+\left\lceil\frac{100M}{g_{\rm gap}}\right\rceil\right)^{M+1}
\tag{69}
\]
colors and a homogeneous list on every monochromatic set. Proposition~\ref{prop:step-002-ramsey-extraction}, after independently instantiating the active Erdos-Rado theorem, gives such a set with
\[
|H|\ge
\frac{\log_2^{(M)}N}{\exp(C_RM\log(eM))}
\tag{70}
\]
in the active nonvacuous finite-Ramsey range, where the explicit `C_R` in (30) is universal. This is the active Ramsey lower bound with the odd-template and finer-mesh color constants fully exposed.

On any `(M+1)` points of `H`, Lemma~\ref{lem:step-002-side-marginals} converts expected empirical loss at most `1/20` into side errors `1/10` for even `M` and at most `9/80` for odd `M>=9`. Proposition~\ref{prop:step-002-endpoint-gap} uses one unused threshold-boundary point and exactly two one-record DP comparisons to obtain ranks `r_-<r_+` with
\[
p_{r_+}-p_{r_-}\ge\frac{3g_{\rm gap}}4.
\tag{71}
\]
Its calculation minimizes the full privacy expression at `epsilon=1`, proves both constants in (66) positive, and separately controls the approximate-DP and mesh defects. Proposition~\ref{prop:step-002-adjacent-rise} then yields
\[
p_i-p_{i-1}\ge\frac{3g_{\rm gap}}{4M}
\tag{72}
\]
for some `i in [M]`, including the possible one-sided cases `i=1` and `i=M`.

Applying `psi^{-1}` to `H` and to every queried coordinate returns to the branch threshold coordinates with identical marginals, loss, and replacement adjacency by the accepted dependency. The exported order is the pullback of the upper-oriented order,
\[
q\preceq q'
\quad\Longleftrightarrow\quad
\psi(q)\le\psi(q'),
\]
equivalently the reverse of the natural `q`-order. With this declared order, ranks, the list indexing, and the sign of (72) are unchanged. If one instead writes the image in increasing natural `q`-order, one must reverse the list and the adjacent inequality simultaneously. Thus (66), (70), and (72) are on the exact finite-output coordinates and declared order consumed by `step_003`; no orientation sign is silently changed, and no properization, surrogate loss, hard prior, or later-step conclusion has entered. This proves the exact accepted sketch-row claim.

## Explicit Rate Audit

- Exposed variables: `n`, `N`, `M=9n`, `epsilon`, `delta`, expected empirical loss threshold `1/20`, mesh `gamma`, color count `q_M`, homogeneous-set size, and adjacent margin `3g_gap/(4M)`.
- Hidden constants may depend on: only the explicit numerical constants `g_gap`, `C_g`, and `C_R` defined in (N1), (25), and (30). Since `g_gap` is a fixed positive number, all are universal.
- Hidden constants may not depend on: `n`, `N`, `M`, `epsilon`, `delta`, the candidate kernel, its output representation, the selected threshold, the empirical tuple, the homogeneous set, or parity.
- Fixed quantities: zero-one empirical loss; ordered replacement adjacency; the wrapper ratio `M/n=9`; the fixed nearly balanced rank-label template; and the expectation mode inherited from `step_001`.
- Probability mode: exact expectation over wrapper and candidate-kernel randomness for loss; eventwise two-sided DP for each coordinate event; deterministic finite Ramsey and telescoping conclusions. No high-probability accuracy claim is substituted for (A1).
- Horizon mode: fixed sample. The coloring, Ramsey extraction, two privacy comparisons, and telescoping sum are all finite.
- Norm mode: expected empirical zero-one risk, exactly the `R_n` interface from `setting.md`; the structural output is a coordinate prediction-marginal difference.
- Admissibility conditions and auxiliary tolerances: `n>=1`, `M=9n>=9`, `0<epsilon<=1`, (A1), (A2), and `N>=M+1` for the nonvacuous homogeneous-list construction. Formula (70) additionally uses the ordinary finite-Ramsey range in which `log_2^(M)(N)` is defined and at least one. The finite complement `N<=M` is explicitly separated and requires no homogeneous-list argument.
- Term absorption or simplification inequalities:
  \[
  \frac{M}{20\lfloor M/2\rfloor}\le\frac9{80}
  \quad(M\ge9\text{ odd}),
  \]
  \[
  F_M(\epsilon)\ge F_M(1),
  \qquad
  (1+e^{-1})\delta\le\frac{g_{\rm gap}}8,
  \qquad
  2\gamma\le\frac{g_{\rm gap}}{450},
  \]
  \[
  g_{\rm gap}-\frac{g_{\rm gap}}8-\frac{g_{\rm gap}}{450}
  =\frac{1571}{1800}g_{\rm gap}
  >\frac34g_{\rm gap},
  \]
  and
  \[
  6q_M\log_2q_M\le\exp(C_RM\log(eM)).
  \]
- Probability conversion: None. The premise and conclusion remain in exact expectation mode; DP is used directly on coordinate events.
- Contribution to any Rate Specialization Bridge: this step supplies the endpoint component of the later universal threshold constant. In particular,
  \[
  \delta\le\frac{a_{\delta,{\rm end}}}{n^2\log(en)}
  \]
  is a valid current-step `O(1/(n^2 log(en)))` interface. `step_004` may take the minimum of this explicit constant with its independent product-DP constant, but no such later constant is consumed here.
- Baseline-reduction check: the proof is independent of `k`. At `k=1`, it is the same unrestricted one-chain Alon homogeneous-set mechanism after the fixed `M=9n` wrapper, with expected loss `1/20`, endpoint range `epsilon<=1`, and parity handled by universal constants. It does not replace the one-chain obstruction by a conditional or vanishing-defect surrogate.

## Blockers

None.

## Notation And Assumption Notes

- `M=9n`: `public-facing`; inherited from accepted `step_001` and exported unchanged.
- `B` and `W_B`: `public-facing`; accepted dependency objects. `B` is the full finite restriction and `W_B` is its private empirical wrapper.
- `psi(q)=N+1-q`: `appendix-local`; inherited from the accepted orientation proposition and used only to work in the active upper-threshold order.
- `mathsf W`: `appendix-local`; the conjugated wrapper. Its privacy, loss, arbitrary-output scope, and permutation invariance are proved in Lemma~\ref{lem:step-002-oriented-wrapper}.
- `a_S(x)`: `proof-local`; the coordinate-one marginal in (11), defined directly from `mathsf W`.
- `s_-`, `s_+`, and `theta_M`: `proof-local`; directly defined from `M`, with the odd bound proved in Lemma~\ref{lem:step-002-side-marginals}.
- `g_*`, `g_odd`, and `g_gap`: `public-facing`; fixed numerical constants. Their strict positivity is proved in Lemma~\ref{lem:step-002-numerical-gap}; none is assumed bounded away from zero without proof.
- `a_(delta,end)`: `public-facing`; the universal endpoint-delta constant directly defined from `g_gap` in (68). It is an output for the later minimum defining the full threshold delta constant.
- `gamma=g_gap/(100M)`: `public-facing`; the homogeneity tolerance consumed with the list by `step_003`. Its provenance is the proved gap and the accepted sample size.
- `sigma_vartheta`, `vartheta`, row permutations `pi`, wrapper events `E`, and sampled-index tuples: `proof-local`; orientation and finite-mixture objects used only in Lemma~\ref{lem:step-002-oriented-wrapper}.
- `L`, `G_L`, `Q_gamma`, `col`, generic deletion samples `S^{-i}`, and generic `(M+1)`-sets `D`: `proof-local`; finite quantization objects defined in (13)-(15). Their cardinality and error are proved before use.
- `q_M`: `appendix-local`; the exact finite color bound in (69). Its dependence is only on `M` and the numerical `g_gap`.
- `C_g` and `A_g`: `proof-local`; explicit numerical helpers used only to bound the color denominator.
- `C_R`: `public-facing`; the universal Ramsey denominator constant explicitly defined in (30), not a free `O(1)` quantity.
- `ell_M(N)`, `twr`, `x_R`, and `s_R`: `proof-local`; citation-instantiation objects for the finite Ramsey theorem. Their exact inversion and rounding inequalities are displayed in (21)-(24).
- `H` and `(p_0,...,p_M)`: `public-facing`; generated in this step by the finite coloring and Ramsey propositions. They are not primitive assumptions.
- `h_1,...,h_(M+1)`, `x_*`, `z_i`, `S`, `S^-`, and `S^+`: `proof-local`; finite objects constructed inside Proposition~\ref{prop:step-002-endpoint-gap}. Their realizability, adjacency, sorting, and ranks are proved there.
- `F_M`: `proof-local`; the full privacy-transfer expression in (53), whose monotonicity proves that `epsilon=1` is the worst allowed endpoint.
- `r_-` and `r_+`: `proof-local`; endpoint ranks constructed in (47). The adjacent index `i`: `public-facing`; it is the compact witness exported through (72).
- Expected empirical loss (A1): a local conditional hypothesis corresponding to the negation used in the finite-game lower-bound proof. It is exactly the accepted dependency risk, not a primitive accuracy assumption or a hard-prior conclusion.
- Delta condition (A2): a local quantitative admissibility condition directly checkable from primitive parameters. It controls only the endpoint approximate-DP defect; it does not absorb the mesh, Ramsey, or any later product-DP defect.
- Generated-condition provenance: permutation invariance is proved in `unit_001`; positivity of the numerical gap in `unit_002`; homogeneity and the list in `unit_003`; the large set in `unit_004`; side marginals in `unit_005`; the endpoint gap in `unit_006`; and the adjacent rise in `unit_007`. No generated event, stability condition, boundedness fact, or margin is promoted to a primitive condition.
- Source-orientation note: all source-coordinate objects are transported back by the accepted bijection before export, with the pullback upper order `q preceq q'` iff `psi(q)<=psi(q')`. This order is the reverse natural branch order, so retaining it preserves the rank indices and rise sign. The produced and consumed coordinate marginals are identical, not surrogate quantities.
- Arbitrary-output note: every argument uses only events of the form `{v:v(x)=1}` for `v in {0,1}^[N]`. No threshold shape, properness, representation, or computational property of the output is used.
- Sparse-successor and endpoint note: the proof uses one omitted point from an arbitrary ordered `(M+1)`-subset and proves row-permutation invariance before sorting. It therefore needs neither consecutive integers nor points outside `H`; ranks `0` and `M` are explicitly attained by `ell=1` and `j=M`.
- Diagnostic boundary: `global_proof.md` was read only after confirming that the paired current `global_proof_review.md` has status `ACCEPTED`. Its G2 decomposition suggested the planning split into parity, finite coloring, endpoint transfer, and telescoping. The diagnostic was not used as proof evidence, a cited result, an assumption source, or authority to alter the accepted target claim.
