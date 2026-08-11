# Proof Step

## Step Identity

- Sketch attempt: `1`
- Step ID: `step_004`
- Unit attempt: `1`

## Target Step Claim

- Intended claim: Choose finite `D,T`, prove the binary-search disjoint-event contradiction at `epsilon=1` with `D delta<=1/6`, combine the homogeneous-set upper and Ramsey lower bounds, and obtain universal `a_th,a_delta,N_th` such that every DP kernel below `a_th log^*N` has some finite experiment risk at least `1/20`.
- Depends on: `step_001`, `step_002`, and `step_003`.
- Assumptions used: The derived private empirical wrapper, the derived homogeneous set and adjacent rise, the derived one-record family, and the cited finite Ramsey and product-privacy results; no hard prior.
- Technical challenge: Full approximate-DP accumulation, a finite adaptive binary search with disjoint leaves, exact cardinality comparison, and a uniform inversion from iterated logarithms to `log^*N`.
- Intended proof tool or cited result: Alon et al. active `lem:binary`, `lem:prod`, `lem:lbhomog`, active `lem:finiteramsey`/`lem:ramsey`, and active Erdos-Rado `thm:ramsey`; Hoeffding's inequality and finite counting.
- Output target: The learner-by-learner finite-game lower value
  \[
  \max_{e\in\mathcal E_{n,N}}\mathcal R_n(B,e)\ge\frac1{20}
  \]
  and universal constants `a_th,a_delta,N_th`, before any minimax or hard-prior construction.
- Rate objective: R1, exposing `D=O(n^2 log(en))`, `T=O(n^2 log^2(en))`, the endpoint `epsilon=1`, the additive `D delta` budget, and universal constant dependence.

More explicitly, this step proves that there are universal constants
\[
a_{\rm th}>0,\qquad a_\delta>0,\qquad N_{\rm th}\ge2
\tag{T1}
\]
such that, whenever
\[
N\ge N_{\rm th},\qquad
n<a_{\rm th}\log^*N,\qquad
0<\epsilon\le1,\qquad
0\le\delta\le\frac{a_\delta}{n^2\log(en)},
\tag{T2}
\]
every full-cube, arbitrary-output, `(epsilon,delta)`-DP threshold-domain kernel `B` satisfies
\[
\max_{e\in\mathcal E_{n,N}}\mathcal R_n(B,e)\ge\frac1{20}.
\tag{T3}
\]
The conclusion is algorithm-wise. It neither assumes nor produces a prior.

## Step Proof Status

`COMPLETE`

## Allowed Assumptions And Dependencies

- Setting assumptions by stable id: None. This step uses only the finite threshold-experiment definitions, ordered replacement adjacency, coordinate measurability, and the definition of base-two `log^*` from `setting.md`; it does not use any theorem-facing `assump:*` condition.
- Accepted dependency proof: `perspective_2/idea_2/proof_steps/step_001/proof.md`, SHA-256 `047122f7212dc9ba45455487658b03015d6b9d67c8d9789120fe8c734fbb6e2e`.
- Accepted dependency review: `perspective_2/idea_2/proof_steps/step_001/review.md`, status `ACCEPTED`, SHA-256 `e6d62bfc54f2e43df1d5d30b55b71f5f0a1ac274413b51e12f6b5d4385a2bb43`.
- Accepted dependency proof: `perspective_2/idea_2/proof_steps/step_002/proof.md`, SHA-256 `f5f4ea55e366c0ce315f9addaa72052f390f5b6d24481214d3f8538e5a8715e7`.
- Accepted dependency review: `perspective_2/idea_2/proof_steps/step_002/review.md`, status `ACCEPTED`, SHA-256 `ed34067f687d7e6f7c47bfce7b2eb209e26ec36f42f343ddbaf1174cf180b164`.
- Accepted dependency proof: `perspective_2/idea_2/proof_steps/step_003/proof.md`, SHA-256 `5cdf10aba1f0c0605220e786e2e13cb4254f34045dd07414388866a63fab6c5e`.
- Accepted dependency review: `perspective_2/idea_2/proof_steps/step_003/review.md`, status `ACCEPTED`, SHA-256 `63df12d968379ac13df7d3259ecad1ff91328feb12c3c765c93a3232841f8407`.

Assumption-provenance classification:

- Primitive conditions: integers `n>=1`, `N>=2`; `M=9n`; `0<epsilon<=1`; `delta>=0`; ordered replacement adjacency; zero-one empirical risk; finite coordinate measurability; and the definitions of `E_(n,N)`, `Q_e`, `R_n`, and base-two `log^*` in `setting.md`.
- Derived invariants supplied by accepted dependencies:
  1. `step_001` supplies the full-cube restriction, its private `M=9n` empirical wrapper, the exact wrapper-loss identity, and the order/label convention equivalence.
  2. Under the local small-risk premise and its endpoint delta condition, `step_002` supplies the universal `g_gap>0`, `a_(delta,end)>0`, mesh `gamma`, a homogeneous set `H`, its list, the explicit Ramsey lower bound, and an adjacent rise.
  3. `step_003` supplies `a_0=g_gap/100`, `eta=a_0/M`, a block `J` with `|J|=|H|-M+1`, a midpoint `r`, and pairwise `(epsilon,delta)`-indistinguishable laws on the same arbitrary bit cube with the exact off-diagonal margin.
- Local conditional hypotheses:
  1. The candidate kernel `B` is `(epsilon,delta)`-DP. This is an input quantified by (T3), not a theorem-facing extra assumption.
  2. For contradiction,
     \[
     \mathcal R_n(B,e)<\frac1{20}
     \quad\text{for every }e\in\mathcal E_{n,N}.
     \tag{A1}
     \]
     This is exactly the negation of (T3); it is discharged by contradiction.
  3. The quantitative conditions (T2). These are primitive scalar admissibility conditions in the target statement.

No hard prior, minimax value, average-case hardness statement, properness condition, threshold-shaped output condition, or later proof-step output is used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the accepted margin `eta=a_0/M`, for every `M>=9` there are finite universal choices `T=ceil(b_T M^2 log^2(eM))` and `D=ceil(2 eta^(-2) log(6T))` satisfying `T exp(-2D eta^2)<1/3`, `D<=b_D M^2 log(eM)`, and `T log 2>D+log 2`; both choices have the required explicit `n`-scale bounds after `M=9n`. | Produces the finite concentration, likelihood, and rate budgets before the binary argument. |
| `unit_002` | lemma | If `K=|J|>2^(T+1)`, then the ordered coordinate set supports a full depth-`T` search tree with exactly `2^T` nonempty, disjoint leaf intervals, one unqueried representative per leaf, and exactly `T` off-diagonal probes on every representative path. | Supplies exact finite leaf cardinality and excludes diagonal queries. |
| `unit_003` | proposition | Under the accepted off-diagonal margin and Hoeffding's inequality, each representative law reaches its designated leaf with probability at least `1-T exp(-2D eta^2)>=2/3`; adaptivity costs only a union bound over the representative's deterministic ideal path. | Proves correct-path concentration without assuming independence across output coordinates. |
| `unit_004` | proposition | Under active `lem:prod`, `D delta<=1/6`, and `epsilon<=1`, every designated leaf has mass at least `(1/2)e^(-D)` under one fixed reference product law; disjointness and `T log 2>D+log 2` contradict total mass. | Proves the finite binary-search obstruction at the endpoint `epsilon=1`, including additive delta accumulation. |
| `unit_005` | proposition | Under the accepted `step_002` and `step_003` interfaces and (A1), every produced homogeneous set satisfies `|H|<=M-1+2^(T+1)<=exp(C_B M^2 log^2(eM))`. | Gives the current-notation version of active `lem:lbhomog` with exact cardinality. |
| `unit_006` | proposition | Combining the accepted Ramsey lower bound with `unit_005` yields `log_2^(M)N<=exp(C_0 M^2 log^2(eM))` on the same homogeneous set. | Gives the exact finite inequality to be inverted. |
| `unit_007` | lemma | There are universal `b_0>0` and `N_emp` such that, if `N>=N_emp`, `M<log^*N`, and the inequality of `unit_006` holds, then `M>=b_0 log^*N`; all bounded `M` cases are absorbed by an explicit finite maximum in the definition of `N_emp`. | Performs the strict Ramsey-to-`log^*` inversion and records the small-`N` exclusion. |
| `unit_008` | proposition | With explicit `a_delta`, `a_th=b_0/9`, and `N_th=N_emp`, (T2) implies the endpoint and product delta conditions, while `M=9n<b_0 log^*N`; `unit_007` gives the opposite inequality, contradicting (A1). | Exports the algorithm-wise finite-game value and all universal constants. |

Atomic step = no. Product accumulation, adaptive concentration, finite tree counting, Ramsey comparison, iterated-log inversion, and parameter translation are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: private empirical wrapper and exact finite-game loss

- Source: accepted `step_001` proof/review pair.
- Restated conclusion in current notation: for every candidate arbitrary-output `(epsilon,delta)`-DP `n`-sample threshold-domain kernel, coordinate restriction gives a full-cube kernel `B` with no loss or privacy change. With `M=9n`, iid with-replacement sampling from an ordered `M`-row database gives an `(epsilon,delta)`-DP wrapper for every `0<epsilon<=1`, and for every `e=(t,U)`,
  \[
  \mathbb E[L_{D_{t,U}}]=\mathcal R_n(B,e)
  \tag{C1}
  \]
  exactly, including repeated database rows and sampled indices.
- Assumption discharge: `M=9n`, replacement adjacency, coordinate measurability, and `0<epsilon<=1` are primitive here; candidate privacy is the target input.
- Conclusion used: (A1) is exactly an expected empirical-loss premise for the wrapper consumed by `step_002`.
- Non-output boundary: this dependency supplies no homogeneous set, law family, binary event, hardness value, or prior.

### Accepted dependency: homogeneous set, adjacent rise, and Ramsey lower bound

- Source: accepted `step_002` proof/review pair.
- Restated conclusion in current notation: define
  \[
  g_{\rm gap}
  =\min\left\{\frac9{10e}-\frac e{10},
  \frac{71}{80e}-\frac{9e}{80}\right\}>0,
  \qquad
  a_{\delta,{\rm end}}
  =\frac{g_{\rm gap}}{8(1+e^{-1})}.
  \tag{C2}
  \]
  Under (A1), `0<epsilon<=1`,
  \[
  \delta\le\frac{a_{\delta,{\rm end}}}{n^2\log(en)},
  \tag{C3}
  \]
  and the nonvacuous finite-Ramsey entry conditions, there is a homogeneous set `H` with list `(p_0,...,p_M)`, an adjacent rise, and
  \[
  |H|\ge M+1,
  \qquad
  |H|\ge
  \frac{\log_2^{(M)}N}{\exp(C_RM\log(eM))},
  \tag{C4}
  \]
  where `C_R` is an explicit universal constant depending only on the numerical `g_gap`.
- Assumption discharge: (A1) is the local contradiction premise; (C3) will follow from the final choice `a_delta<=a_(delta,end)`; `M=9n>=9`; and the final strict inequality `M<b_0 log^*N` will imply `M<log^*N`, hence `N>=M+1` and that `log_2^(M)N>1` is defined.
- Conclusion used: the same `H` enters the accepted moving-family construction and the lower side of the cardinality comparison.
- Non-output boundary: this dependency supplies neither the product size, search tree, homogeneous-set upper bound, iterated-log inversion, nor algorithm-wise hardness.

### Accepted dependency: pairwise private family with off-diagonal margin

- Source: accepted `step_003` proof/review pair.
- Restated conclusion in current notation: with
  \[
  a_0:=\frac{g_{\rm gap}}{100}>0,
  \qquad
  \eta:=\frac{a_0}{M},
  \tag{C5}
  \]
  the accepted homogeneous set yields an ordered block
  \[
  J=\{1,\ldots,K\},
  \qquad
  K=|J|=|H|-M+1,
  \tag{C6}
  \]
  after its common order-preserving relabeling, a number `r in (eta,1-eta)`, and laws `(P_x)_(x in [K])` on the common arbitrary-output cube `{0,1}^[K]` such that every pair satisfies both `(epsilon,delta)` inequalities and, for `z!=x`,
  \[
  z<x\Longrightarrow
  \mathbb E_{V\sim P_x}[V(z)]\le r-\eta,
  \qquad
  z>x\Longrightarrow
  \mathbb E_{V\sim P_x}[V(z)]\ge r+\eta.
  \tag{C7}
  \]
- Assumption discharge: the homogeneous set, list, adjacent rise, wrapper privacy, (A1), and endpoint delta condition are exactly the accepted dependency inputs; no condition is strengthened here.
- Conclusion used: the laws in (C7) are exactly the product laws and queried coordinates used below. The diagonal `z=x` is deliberately unavailable and will never be probed on a representative's path.
- Non-output boundary: this dependency supplies no product-privacy conclusion, concentration event, search tree, or hardness statement.

### Active Alon `lem:prod`

- Source: Alon, Livni, Malliaris, and Moran, *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949, active `ADP.tex` label `lem:prod`, statement at lines 356--362 and proof in active Appendix `app:prod`; audited active-source SHA-256 `5eaeb54287aa8aa89a00ad4b05f9158b56e01450a18e635afeecc4ed4e97128f`.
- Restated statement: if probability laws `P,Q` satisfy both `(epsilon,delta)` inequalities, then for every integer `D>=1`, their iid product laws `P^D,Q^D` satisfy both `(D epsilon,D delta)` inequalities.
- Additive-delta audit: the active proof decomposes each one-step positive likelihood excess into a measure of total mass at most `delta`, uses a truncation by one, and adds those excess masses across product factors. The conclusion is `D delta`, not a geometric factor and not a second composition applied after product formation.
- Instantiated objects: every pair `P_x,P_y` from (C7), product size `D` from Lemma~\ref{lem:step-004-quantitative-choice}, and every leaf event `E` in the common finite product cube.
- Assumption discharge: pairwise two-sided `(epsilon,delta)` indistinguishability is exactly the accepted `step_003` conclusion; the product samples are iid by construction; `D` is a finite positive integer.
- Conclusion used:
  \[
  P_x^D(E)\le e^{D\epsilon}P_y^D(E)+D\delta
  \tag{C8}
  \]
  and the same inequality with `x,y` exchanged.
- Non-output boundary: the lemma supplies only product privacy. It supplies no correct-path probability, leaf disjointness, or cardinality contradiction.

### Active Alon `lem:binary`

- Source: the same active source, label `lem:binary` at lines 688--704 with proof at lines 775--823.
- Restated active statement: under the source family from active `lem:AtoP`, with pairwise `(0.1,delta)` indistinguishability and off-diagonal margin `1/(10m)`, the family cardinality is at most `2^(10^3 m^2 log^2 m)` when the source delta scale is imposed.
- Current-object mapping: source sample parameter `m` maps to `M`; source family cardinality maps to `K=|J|`; source margin maps to `eta=a_0/M`; source product size and binary depth map to the finite `D,T` below; source sign vectors map coordinatewise to arbitrary `0/1` vectors.
- Assumption and conclusion limits: the source proof uses fixed `epsilon=0.1`, fixed constants, and an informal tie convention and adaptive-path sentence. It is not invoked as a black box. Lemmas~\ref{lem:step-004-quantitative-choice}--\ref{prop:step-004-leaf-contradiction} independently prove the branch statement with a single-valued threshold bit, deterministic representative paths, explicit `epsilon=1` likelihood loss, and exact `D delta` accounting.
- Non-output boundary: the active result does not verbatim supply the branch constants, endpoint privacy range, or final `n`-scale delta constant.

### Active Alon `lem:lbhomog`

- Source: the same active source, label `lem:lbhomog` at lines 602--610.
- Restated active statement: for the source fixed empirical-learning constants, an `m`-homogeneous set of size `k` for an `(0.1,delta)`-DP empirical learner must satisfy
  \[
  k\le2^{O(m^2\log^2m)}.
  \tag{C9}
  \]
- Current-object mapping: source `m` maps to `M=9n`, source homogeneous-set size `k` maps to `|H|`, and source accuracy/privacy conditions map to (A1), the accepted endpoint gap, and the present product budget.
- Assumption and conclusion limits: active `lem:lbhomog` is not invoked as a black box because it does not cover expected loss `1/20`, odd `M`, all `epsilon<=1`, or the branch constants. Proposition~\ref{prop:step-004-homogeneous-upper} is the complete current-notation derivation of its cardinality interface.
- Non-output boundary: the active lemma does not itself produce the Ramsey lower bound or the final one-arm constants.

### Active finite Ramsey results

- Source: the same active source, `lem:finiteramsey`/`lem:ramsey` at lines 590--600 and active Erdos-Rado `thm:ramsey` at lines 632--637.
- Restated active theorem: if integers `s>t>=2`, `q>=2`, and
  \[
  N\ge\operatorname{twr}_t(3sq\log_2q),
  \tag{C10}
  \]
  then every `q`-coloring of the `t`-subsets of an `N`-point universe has a monochromatic `s`-subset.
- Restated active lemma: the active homogeneity coloring and (C10) give an `m`-homogeneous set of size at least `log_2^(m)N/2^(O(m log m))`.
- Current-object mapping and discharge: accepted `step_002` rederived the coloring for `t=M+1`, the odd-compatible fixed template, mesh `gamma=g_gap/(100M)`, and exact color count. It instantiated (C10), handled the floor and small-target branch, and proved (C4) with explicit `C_R`. This step consumes that accepted current-notation conclusion rather than reusing the source asymptotic denominator.
- Activity audit: the duplicate later source block is inside `\ignore{...}` and is not used.
- Non-output boundary: Ramsey supplies only the lower cardinality source. The binary upper bound and inversion are proved locally.

### Hoeffding's inequality for Bernoulli averages

- Standard result: if `Y_1,...,Y_D` are iid random variables in `[0,1]` with mean `mu`, then for every `s>0`,
  \[
  \Pr\left[\frac1D\sum_{d=1}^DY_d-\mu\ge s\right]
  \le e^{-2Ds^2},
  \qquad
  \Pr\left[\frac1D\sum_{d=1}^DY_d-\mu\le-s\right]
  \le e^{-2Ds^2}.
  \tag{C11}
  \]
- Instantiated objects: for a fixed representative law `P_x` and a fixed off-diagonal coordinate `z`, take `Y_d=V_d(z)` for iid `V_d~P_x` and `s=eta`.
- Assumption discharge: independence is across the `D` product draws. No independence across coordinates of one vector is assumed or needed.
- Conclusion used: each fixed ideal-path probe has wrong routing bit with probability at most `e^(-2D eta^2)`.

### Internal results used in target assembly

- Lemma~\ref{lem:step-004-quantitative-choice}: finite `D,T` and all numerical inequalities.
- Lemma~\ref{lem:step-004-search-tree}: exact full binary tree and representatives.
- Proposition~\ref{prop:step-004-correct-path}: adaptive routing succeeds with probability at least `2/3` under each representative law.
- Proposition~\ref{prop:step-004-leaf-contradiction}: reference-law mass contradiction and `K<=2^(T+1)`.
- Proposition~\ref{prop:step-004-homogeneous-upper}: exact homogeneous-set upper bound.
- Proposition~\ref{prop:step-004-ramsey-comparison}: exact iterated-log inequality.
- Lemma~\ref{lem:step-004-logstar-inversion}: uniform `M>=b_0 log^*N` extraction.
- Proposition~\ref{prop:step-004-hardness}: final `n`-scale constant translation and algorithm-wise hardness.

## Local Derivation

### unit_001: lemma

**Lemma (Finite quantitative choice of product size and search depth).** \label{lem:step-004-quantitative-choice}

Statement: Under the accepted constant `a_0>0` from (C5), let `M>=9`,
\[
\eta=\frac{a_0}{M},
\qquad
L_M:=\log(eM),
\qquad
L_0:=\log(9e).
\tag{1}
\]
There are universal constants `b_T>=1` and `b_D>=1`, depending only on the numerical `a_0`, such that the finite integers
\[
T:=\left\lceil b_TM^2L_M^2\right\rceil,
\qquad
D:=\left\lceil2\eta^{-2}\log(6T)\right\rceil
\tag{2}
\]
satisfy
\[
T e^{-2D\eta^2}<\frac13,
\qquad
D\le b_DM^2L_M,
\qquad
T\log2>D+\log2.
\tag{3}
\]
Moreover, with `M=9n`,
\[
D\le81b_D(1+\log9)n^2\log(en),
\tag{4}
\]
and
\[
T\le81(b_T+1)(1+\log9)^2n^2\log^2(en).
\tag{5}
\]

Proof / justification:

For an integer `b>=1`, define
\[
c_D(b):=
2a_0^{-2}\left(4+\frac{\log(6(b+1))}{L_0}\right)+1.
\tag{6}
\]
Because
\[
bL_0\log2-c_D(b)-\frac{\log2}{L_0}
\longrightarrow+\infty
\quad\text{as }b\longrightarrow\infty,
\tag{7}
\]
the following set of positive integers is nonempty. Fix `b_T` to be its least element:
\[
b_TL_0\log2>
c_D(b_T)+\frac{\log2}{L_0}.
\tag{8}
\]
Set
\[
b_D:=c_D(b_T).
\tag{9}
\]
These constants are finite and universal because `a_0` is the accepted fixed numerical constant `g_gap/100`.

Since `M>=9`, one has `L_M>=L_0>1`. From (2),
\[
T\le b_TM^2L_M^2+1
\le(b_T+1)M^2L_M^2.
\tag{10}
\]
Therefore
\[
\begin{aligned}
\log(6T)
&\le\log(6(b_T+1))+2\log M+2\log L_M\\
&\le\left(4+\frac{\log(6(b_T+1))}{L_0}\right)L_M,
\end{aligned}
\tag{11}
\]
where `log M<=L_M`, `log L_M<=L_M`, and `L_M>=L_0` were used. Because `eta^(-2)=a_0^(-2)M^2`, equations (2), (11), and `M^2L_M>=1` give
\[
\begin{aligned}
D
&\le2a_0^{-2}M^2\log(6T)+1\\
&\le
\left[2a_0^{-2}\left(4+\frac{\log(6(b_T+1))}{L_0}\right)+1\right]
M^2L_M\\
&=b_DM^2L_M.
\end{aligned}
\tag{12}
\]

The defining inequality (8) now gives the strict likelihood/counting separation:
\[
\begin{aligned}
T\log2
&\ge b_TM^2L_M^2\log2\\
&\ge b_TL_0\log2\,M^2L_M\\
&>\left(b_D+\frac{\log2}{L_0}\right)M^2L_M\\
&\ge D+\log2.
\end{aligned}
\tag{13}
\]
The last inequality uses (12) and
`log2<=(log2/L_0)M^2L_M`.

For concentration, (2) gives
\[
2D\eta^2\ge4\log(6T).
\tag{14}
\]
Consequently
\[
T e^{-2D\eta^2}
\le\frac{T}{(6T)^4}
=\frac1{1296T^3}
<\frac13.
\tag{15}
\]
This proves (3), including strictness.

Finally, `M=9n` and `log(en)>=1` imply
\[
L_M=\log(9en)
=\log(en)+\log9
\le(1+\log9)\log(en).
\tag{16}
\]
Substituting (16) into (10) and (12) proves (4)--(5). Thus no `O(.)` notation hides a dependence on `n`, `epsilon`, or `delta`.

### unit_002: lemma

**Lemma (Depth-`T` search tree with unqueried leaf representatives).** \label{lem:step-004-search-tree}

Statement: Under the accepted ordered block `J=[K]` in (C6), let `T>=1` be an integer. If
\[
K>2^{T+1},
\tag{17}
\]
then there is a deterministic full binary search tree of depth `T` with the following properties:

1. every node is assigned a nonempty consecutive interval in `[K]`;
2. every internal node queries one coordinate in its interval and removes that coordinate from both child intervals;
3. the left child lies strictly below the query and the right child lies strictly above it;
4. the `2^T` depth-`T` leaf intervals are nonempty and pairwise disjoint;
5. after choosing one representative `x_lambda` in each leaf interval, the path to that leaf has exactly `T` query coordinates, all distinct from `x_lambda`.

Proof / justification:

For `u>=0`, put
\[
s_u:=2^{u+1}-1.
\tag{18}
\]
An interval of size at least `s_u` can support a full subtree with `u` remaining query levels. For `u=0`, retain any one point as a leaf interval. For `u>=1`,
\[
s_u=1+2s_{u-1}.
\tag{19}
\]
Hence an interval of size at least `s_u` contains a query coordinate leaving at least `s_(u-1)` coordinates below it and at least `s_(u-1)` coordinates above it. Assign those two consecutive sides to the children; any extra coordinates may be retained on either side without affecting the lower bound. The query is excluded from both children.

Condition (17) and integrality give
\[
K\ge2^{T+1}+1>s_T.
\tag{20}
\]
Applying the preceding recursion from `u=T` down to `u=0` constructs a full binary tree with exactly `2^T` nonempty leaf intervals. Child intervals of different nodes are disjoint, so the leaves are pairwise disjoint. Every root-to-leaf path makes exactly one query at each of the `T` internal levels. Since each child excludes its parent's query and the representative lies in the final leaf interval, no path query equals its representative. This proves all five claims.

For an observed product sample, route left when the empirical query bit equals one and right when it equals zero. This direction matches (C7): if the target representative is below the query, the query marginal is high; if it is above the query, the query marginal is low.

### unit_003: proposition

**Proposition (Correct adaptive path from fixed-coordinate concentration).** \label{prop:step-004-correct-path}

Statement: Under (C7), Lemma~\ref{lem:step-004-quantitative-choice}, and Lemma~\ref{lem:step-004-search-tree}, draw
\[
V_1,\ldots,V_D\stackrel{\rm iid}{\sim}P_x
\tag{21}
\]
for a leaf representative `x`. For every coordinate `z`, define
\[
\widehat p(z):=\frac1D\sum_{d=1}^D V_d(z),
\qquad
\widehat b(z):=\mathbf 1\{\widehat p(z)\ge r\}.
\tag{22}
\]
Let `E_x` be the event that the routing rule from Lemma~\ref{lem:step-004-search-tree} terminates at the leaf represented by `x`. Then
\[
P_x^D(E_x)
\ge1-T e^{-2D\eta^2}
\ge\frac23.
\tag{23}
\]

Proof / justification:

Fix `x` and its designated leaf. Independently of the random vectors, the tree and `x` determine an ideal path and fixed query coordinates
\[
q_1(x),\ldots,q_T(x).
\tag{24}
\]
Lemma~\ref{lem:step-004-search-tree} gives `q_t(x)!=x` for every `t`.

If `q_t(x)<x`, then (C7) gives
\[
\mu_t:=\mathbb E_{P_x}[V(q_t(x))]\le r-\eta.
\]
The correct branch is right, which corresponds to `widehat b(q_t(x))=0`. Hoeffding's upper-tail inequality gives
\[
P_x^D\!\left[\widehat b(q_t(x))=1\right]
=P_x^D\!\left[\widehat p(q_t(x))\ge r\right]
\le e^{-2D\eta^2}.
\tag{25}
\]
If `q_t(x)>x`, then (C7) gives `mu_t>=r+eta`. The correct branch is left, corresponding to bit one, and Hoeffding's lower-tail inequality gives
\[
P_x^D\!\left[\widehat b(q_t(x))=0\right]
=P_x^D\!\left[\widehat p(q_t(x))<r\right]
\le e^{-2D\eta^2}.
\tag{26}
\]

Let `G_x` be the event that all `T` fixed ideal-path coordinates in (24) have their correct bits. A union bound over these fixed coordinates yields
\[
P_x^D(G_x)\ge1-T e^{-2D\eta^2}.
\tag{27}
\]
No coordinate-independence claim is used: for each fixed coordinate, independence is only across the `D` vectors, and the union bound permits arbitrary dependence among coordinates of one vector.

On `G_x`, induction over the depth shows that the adaptive router visits the ideal node at every level, hence terminates at the designated leaf. Thus `G_x subseteq E_x`. Equation (15) proves
\[
P_x^D(E_x)\ge P_x^D(G_x)>\frac23,
\]
and the weaker displayed bound (23) follows. The convention in (22) is single-valued even when `widehat p(z)=r`.

### unit_004: proposition

**Proposition (Product-private disjoint-leaf contradiction).** \label{prop:step-004-leaf-contradiction}

Statement: Under the accepted pairwise family (C7), Lemma~\ref{lem:step-004-quantitative-choice}, Lemma~\ref{lem:step-004-search-tree}, Proposition~\ref{prop:step-004-correct-path}, and the local condition
\[
D\delta\le\frac16,
\tag{28}
\]
one must have
\[
K\le2^{T+1}.
\tag{29}
\]
This conclusion is valid uniformly for every `0<epsilon<=1`, including `epsilon=1`, and for `delta=0`.

Proof / justification:

Assume for contradiction that `K>2^(T+1)`. Lemma~\ref{lem:step-004-search-tree} gives exactly `2^T` leaf intervals. Choose one representative `x_lambda` per leaf and let `E_lambda` be the event that the deterministic router terminates at that leaf. These events are pairwise disjoint because one product sample follows one binary path and terminates at exactly one leaf.

Proposition~\ref{prop:step-004-correct-path} gives
\[
P_{x_\lambda}^D(E_\lambda)\ge\frac23
\quad\text{for every leaf }\lambda.
\tag{30}
\]
Fix one reference index `y in [K]`, once and for all. Active `lem:prod`, applied to `P_(x_lambda),P_y`, gives
\[
P_{x_\lambda}^D(E_\lambda)
\le e^{D\epsilon}P_y^D(E_\lambda)+D\delta.
\tag{31}
\]
Solving for the reference-law mass and using (28), (30), and `epsilon<=1`,
\[
\begin{aligned}
P_y^D(E_\lambda)
&\ge e^{-D\epsilon}
\left(P_{x_\lambda}^D(E_\lambda)-D\delta\right)\\
&\ge e^{-D\epsilon}\left(\frac23-\frac16\right)\\
&=\frac12e^{-D\epsilon}\\
&\ge\frac12e^{-D}.
\end{aligned}
\tag{32}
\]
This is the required reference-law leaf-mass inequality. The same single law `P_y^D` measures every leaf event. At `epsilon=1` the last bound is exact at the worst endpoint; for `epsilon<1` it improves. At `delta=0`, the additive subtraction in (32) vanishes.

Summing (32) over the `2^T` disjoint leaf events gives
\[
1
\ge\sum_{\lambda=1}^{2^T}P_y^D(E_\lambda)
\ge2^{T-1}e^{-D}.
\tag{33}
\]
But (13) is equivalent to
\[
(T-1)\log2-D>0,
\]
and therefore
\[
2^{T-1}e^{-D}>1,
\tag{34}
\]
contradicting (33). Thus (29) holds.

### unit_005: proposition

**Proposition (Explicit homogeneous-set upper bound).** \label{prop:step-004-homogeneous-upper}

Statement: Under (A1), the accepted `step_002` and `step_003` interfaces, the endpoint delta condition (C3), and the product condition (28), every accepted homogeneous set `H` satisfies
\[
|H|\le M-1+2^{T+1}
\le\exp\!\left(C_BM^2\log^2(eM)\right),
\tag{35}
\]
where the explicit universal constant
\[
C_B:=(b_T+3)\log2
\tag{36}
\]
depends only on the accepted numerical margin.

Proof / justification:

The accepted moving-family identity (C6) is exact:
\[
K=|H|-M+1.
\tag{37}
\]
Proposition~\ref{prop:step-004-leaf-contradiction} gives `K<=2^(T+1)`, proving the first inequality in (35).

Since `b_T>=1`, `M>=9`, and `L_M>1`, equation (2) gives `T>=M^2>=M`. Hence
\[
M-1<2^{T+1},
\]
so
\[
|H|\le2^{T+2}.
\tag{38}
\]
Using (10) and `M^2L_M^2>=1`,
\[
\begin{aligned}
2^{T+2}
&=\exp((T+2)\log2)\\
&\le\exp\!\left(((b_T+1)M^2L_M^2+2)\log2\right)\\
&\le\exp\!\left((b_T+3)\log2\,M^2L_M^2\right).
\end{aligned}
\tag{39}
\]
This proves (35)--(36). It is the current expected-loss, odd-compatible, `epsilon<=1` version of the active `lem:lbhomog` upper bound, with no hidden cardinality term.

### unit_006: proposition

**Proposition (Same-object Ramsey upper/lower comparison).** \label{prop:step-004-ramsey-comparison}

Statement: Under the assumptions of Proposition~\ref{prop:step-004-homogeneous-upper}, suppose also that `N>=M+1` and `log_2^(M)N>1` is defined. Then
\[
\log_2^{(M)}N
\le\exp\!\left(C_0M^2\log^2(eM)\right),
\tag{40}
\]
where
\[
C_0:=C_B+C_R
\tag{41}
\]
is universal.

Proof / justification:

The accepted Ramsey lower bound (C4) and the upper bound (35) concern the same homogeneous set `H`, the same sample size `M`, the same ordered domain, and the same wrapper. Therefore
\[
\frac{\log_2^{(M)}N}{\exp(C_RM\log(eM))}
\le |H|
\le\exp(C_BM^2\log^2(eM)).
\tag{42}
\]
Multiplying by the positive denominator gives
\[
\log_2^{(M)}N
\le\exp\!\left(
C_BM^2L_M^2+C_RML_M
\right).
\tag{43}
\]
Since `M>=9` and `L_M>1`,
\[
ML_M\le M^2L_M^2.
\tag{44}
\]
Substituting (44) into (43) proves (40) with the explicit `C_0` in (41). No color denominator, additive `M`, or binary upper-bound term is dropped by prose.

### unit_007: lemma

**Lemma (Finite inversion to a uniform iterated-log lower bound).** \label{lem:step-004-logstar-inversion}

Statement: Let `C_0` be the universal constant in (41). There are universal constants
\[
b_0:=\frac14,
\qquad
N_{\rm emp}\ge16,
\tag{45}
\]
such that, for every integer `M>=9` and every `N>=N_emp`, if
\[
M<\log^*N
\tag{46}
\]
and (40) holds, then
\[
M\ge b_0\log^*N.
\tag{47}
\]
The definition of `N_emp` below explicitly removes every bounded-`M` and small-`N` exception.

Proof / justification:

Let `ell(x)=log_2 x` and let `ell^*(x)` be its iterated logarithm, exactly the `log^*` convention in `setting.md`. Define
\[
E_M:=\exp\!\left(C_0M^2\log^2(eM)\right).
\tag{48}
\]
Choose `M_0>=9` to be the least integer such that, for every integer `M>=M_0`,
\[
\frac{C_0}{\log2}M^2\log^2(eM)\le2^M
\tag{49}
\]
and
\[
2+\ell^*(M)\le M.
\tag{50}
\]
Such an integer exists because `2^M/(M^2 log^2(eM))` tends to infinity and `ell^*(M)=o(M)`. Equations (49)--(50), rather than an unquantified "large enough" phrase, are the defining threshold conditions.

For every `M>=M_0`, (49) gives
\[
\ell(E_M)
=\frac{C_0}{\log2}M^2\log^2(eM)
\le2^M.
\tag{51}
\]
By monotonicity of `ell^*`,
\[
\ell^*(E_M)
=1+\ell^*(\ell(E_M))
\le1+\ell^*(2^M)
=2+\ell^*(M)
\le M.
\tag{52}
\]

The remaining integers `9<=M<M_0` form a finite set. Define
\[
R_{\rm fin}
:=\max_{9\le M<M_0}
\left(M+\ell^*(E_M)\right),
\tag{53}
\]
with maximum zero if the set is empty. Choose `N_emp>=16` so that
\[
\ell^*(N_{\rm emp})>R_{\rm fin}.
\tag{54}
\]
This is a finite universal choice because `ell^*` is unbounded.

Now assume (46) and (40). Condition (46) implies `ell^(M)(N)>1`, and the defining recursion of `ell^*` gives the exact identity
\[
\ell^*(N)=M+\ell^*(\ell^{(M)}N).
\tag{55}
\]
By (40), monotonicity, and (48),
\[
\ell^*(N)\le M+\ell^*(E_M).
\tag{56}
\]
If `M<M_0`, then (53)--(56) give
\[
\ell^*(N)\le R_{\rm fin},
\]
whereas `N>=N_emp` and (54) give
`ell^*(N)>=ell^*(N_emp)>R_fin`, a contradiction. Thus `M>=M_0`. Equation (52) then turns (56) into
\[
\ell^*(N)\le2M.
\tag{57}
\]
Hence
\[
M\ge\frac12\ell^*(N)>\frac14\ell^*(N)=b_0\log^*N,
\tag{58}
\]
which proves the weaker interface (47) with strict slack. The threshold `N_emp` is the only small-`N` exclusion, and it is universal.

### unit_008: proposition

**Proposition (Universal one-arm threshold obstruction).** \label{prop:step-004-hardness}

Statement: Under the primitive finite-experiment setting and the accepted `step_001`--`step_003` dependencies, define
\[
C_9:=81(1+\log9),
\tag{59}
\]
\[
a_\delta
:=\min\left\{
a_{\delta,{\rm end}},
\frac1{6b_DC_9}
\right\}>0,
\tag{60}
\]
\[
a_{\rm th}:=\frac{b_0}{9}=\frac1{36},
\qquad
N_{\rm th}:=N_{\rm emp}.
\tag{61}
\]
Then (T2) implies (T3) for every arbitrary full-cube `(epsilon,delta)`-DP kernel `B`.

Proof / justification:

All constants in (59)--(61) are universal: `a_(delta,end)` comes from accepted `step_002`; `b_D` from Lemma~\ref{lem:step-004-quantitative-choice}; and `b_0,N_emp` from Lemma~\ref{lem:step-004-logstar-inversion}.

Fix parameters satisfying (T2) and a candidate kernel `B`. Suppose (A1) holds. Since `a_delta<=a_(delta,end)`,
\[
\delta
\le\frac{a_\delta}{n^2\log(en)}
\le\frac{a_{\delta,{\rm end}}}{n^2\log(en)},
\tag{62}
\]
so the accepted endpoint-gap and moving-family dependencies apply once their finite Ramsey entry conditions are checked.

The sample-size premise and `M=9n` give the strict inequality
\[
M=9n
<9a_{\rm th}\log^*N
=b_0\log^*N
=\frac14\log^*N
<\log^*N.
\tag{63}
\]
Thus `log_2^(M)N>1` is defined. Also `log^*N<=N` for `N>=2`, so (63) gives `M<N`; because both are integers,
\[
N\ge M+1.
\tag{64}
\]
Equations (63)--(64) discharge every nonvacuous finite-Ramsey entry condition in accepted `step_002`.

For the product defect, (4), (59), (60), and (T2) give
\[
\begin{aligned}
D\delta
&\le b_DM^2\log(eM)
\frac{a_\delta}{n^2\log(en)}\\
&\le b_DC_9a_\delta\\
&\le\frac16.
\end{aligned}
\tag{65}
\]
The middle inequality is the exact comparison
\[
M^2\log(eM)
=81n^2\log(9en)
\le C_9n^2\log(en),
\tag{66}
\]
already proved through (16). At `delta=0`, the left-hand side of (65) is exactly zero.

The accepted dependencies now produce `H,J,r,(P_x)` under (A1). Lemma~\ref{lem:step-004-quantitative-choice}, Proposition~\ref{prop:step-004-leaf-contradiction}, and Proposition~\ref{prop:step-004-homogeneous-upper} give the homogeneous-set upper bound. Proposition~\ref{prop:step-004-ramsey-comparison} gives (40). Since `N>=N_th=N_emp` and (63) gives `M<log^*N`, Lemma~\ref{lem:step-004-logstar-inversion} gives
\[
M\ge b_0\log^*N.
\tag{67}
\]
But (63) gives the strict opposite inequality
\[
M<b_0\log^*N.
\tag{68}
\]
This contradiction discharges (A1). Therefore there is an experiment `e in E_(n,N)` such that
\[
\mathcal R_n(B,e)\ge\frac1{20},
\]
which is (T3).

The proof used `epsilon<=1` only in the endpoint-uniform accepted gap and in the explicit likelihood comparison `e^(-D epsilon)>=e^(-D)`. Thus `epsilon=1` is included with no limiting argument. Every output remains an arbitrary bit vector; only coordinate averages and events are used. The entire argument is for one fixed candidate kernel and never introduces a prior.

## Target-Step Assembly

Fix a candidate arbitrary-output `(epsilon,delta)`-DP `n`-sample threshold kernel and parameters satisfying (T2). The accepted `step_001` dependency restricts the output to the full cube, preserves privacy and every finite-experiment risk, and converts the local negation of (T3) into the exact expected empirical-loss premise (A1) for the `M=9n` wrapper.

The explicit choice (60) first discharges the endpoint delta condition of accepted `step_002`. The strict sample relation (63) discharges the finite Ramsey entry conditions, so accepted `step_002` produces a homogeneous set with the exact lower bound (C4), and accepted `step_003` produces the same-target family (C7) on a block of exact size `|H|-M+1`.

Lemma~\ref{lem:step-004-quantitative-choice} chooses finite `D,T` and proves, before any event construction,
\[
T e^{-2D\eta^2}<\frac13,
\qquad
D\le b_DM^2\log(eM),
\qquad
T\log2>D+\log2.
\]
Lemma~\ref{lem:step-004-search-tree} gives exactly `2^T` nonempty disjoint leaves whenever the block is too large and leaves one unqueried representative in every leaf. Proposition~\ref{prop:step-004-correct-path} applies Hoeffding only to the `T` fixed coordinates on each representative's ideal path; arbitrary within-vector coordinate dependence is harmless. Thus the correct leaf has representative-law mass at least `2/3`.

Active `lem:prod`, fully instantiated in Proposition~\ref{prop:step-004-leaf-contradiction}, gives the finite product certificate `(D epsilon,D delta)`. Equation (65) caps the adversarial-sign additive defect at `1/6`, and the worst endpoint `epsilon=1` leaves every leaf mass at least `(1/2)e^(-D)` under one fixed reference law. Disjointness and the strict inequality `2^(T-1)e^(-D)>1` force the exact upper bound
\[
|H|\le M-1+2^{T+1}.
\]

Proposition~\ref{prop:step-004-homogeneous-upper} turns this into an explicit exponential bound. Proposition~\ref{prop:step-004-ramsey-comparison} compares it with the accepted Ramsey lower bound on the identical set `H`, retaining the color denominator through `C_R`. Lemma~\ref{lem:step-004-logstar-inversion} handles both unbounded and finitely many bounded `M` cases, yielding `M>=b_0 log^*N` for `N>=N_emp`. Proposition~\ref{prop:step-004-hardness} then uses `M=9n` and the strict premise `n<a_th log^*N` to obtain the contradiction.

Therefore the exact accepted sketch-row claim holds with the universal constants in (60)--(61). The exported object is the algorithm-wise finite-game lower value and its threshold constants. No minimax theorem, learner-independent prior, hidden-arm construction, or hard-prior assumption appears in this step.

## Explicit Rate Audit

- Exposed variables: `n`, `N`, `M=9n`, `epsilon`, `delta`, expected-risk threshold `1/20`, accepted margin `eta=a_0/M`, product size `D`, search depth `T`, homogeneous-set sizes `|H|` and `|J|`, and the public constants `a_th,a_delta,N_th`.
- Hidden constants may depend on: only the explicit universal numerical constants `g_gap`, `a_0`, `a_(delta,end)`, the accepted Ramsey denominator constant `C_R`, and the finite numerical choices `b_T,b_D,C_B,C_0,M_0,N_emp` defined by displayed inequalities in this proof.
- Hidden constants may not depend on: `n`, `N`, `M`, `epsilon`, `delta`, the candidate kernel, its output representation, the selected finite experiment, the homogeneous set, the block, the prior (none exists here), `C`, `X`, `k`, or any later hidden-arm object.
- Fixed quantities: zero-one empirical risk; ordered replacement adjacency; the wrapper ratio `M/n=9`; the fixed loss threshold `1/20`; the accepted nearly balanced template and pullback order.
- Probability mode: exact expected empirical risk for (A1); exact eventwise two-sided DP; iid product probability over `D` output vectors; Hoeffding plus a finite union bound for the correct path; deterministic Ramsey and cardinality conclusions.
- Horizon mode: fixed sample and finite scope. Product accumulation is over exactly `D` draws and routing over exactly `T` probes. There is no all-time, asymptotic, or stopping-time upgrade.
- Norm mode: expected zero-one finite-experiment risk and scalar coordinate-prediction marginals on the common arbitrary-output cube.
- Admissibility conditions and auxiliary tolerances: `n>=1`, `M=9n>=9`, `N>=N_th`, `n<a_th log^*N`, `0<epsilon<=1`, `0<=delta<=a_delta/(n^2 log(en))`, accepted `gamma=g_gap/(100M)`, and `eta=a_0/M`.
- Term absorption or simplification inequalities:
  \[
  \log(6T)\le
  \left(4+\frac{\log(6(b_T+1))}{\log(9e)}\right)\log(eM),
  \]
  \[
  T e^{-2D\eta^2}\le\frac1{1296T^3}<\frac13,
  \]
  \[
  D\delta\le b_DC_9a_\delta\le\frac16,
  \]
  \[
  P_y^D(E_\lambda)
  \ge e^{-D\epsilon}\left(\frac23-\frac16\right)
  \ge\frac12e^{-D},
  \]
  \[
  T\log2>D+\log2
  \Longrightarrow
  2^{T-1}e^{-D}>1,
  \]
  \[
  |H|\le M-1+2^{T+1}
  \le\exp(C_BM^2\log^2(eM)),
  \]
  \[
  \log_2^{(M)}N
  \le\exp(C_0M^2\log^2(eM)),
  \]
  and
  \[
  M=9n<9a_{\rm th}\log^*N=b_0\log^*N,
  \]
  which contradicts the proved inversion `M>=b_0 log^*N`.
- Probability conversion: None between risk modes. The only stochastic conversion is the explicit finite Hoeffding/union-bound estimate (23); no high-probability PAC statement is used in this one-arm step.
- Contribution to any Rate Specialization Bridge: this step exports
  \[
  a_{\rm th}=\frac1{36},
  \qquad
  a_\delta
  =\min\left\{a_{\delta,{\rm end}},
  \frac1{6b_D81(1+\log9)}\right\},
  \qquad
  N_{\rm th}=N_{\rm emp},
  \]
  and the exact algorithm-wise lower value consumed by `step_005` and later parameter specialization.
- Baseline-reduction check: the proof contains no `k` and is exactly the unrestricted one-chain threshold obstruction after the fixed `M=9n` wrapper. At `k=1` downstream, this step therefore preserves the active `Omega(log^*N)` baseline with only the displayed universal wrapper and constant losses; it does not replace it by an average-case, proper-learning, pure-DP, or conditional remainder statement.

## Blockers

None.

## Notation And Assumption Notes

- `M=9n`: `public-facing`; inherited from accepted `step_001` and translated explicitly in (4)--(5), (63), and (66).
- `g_gap`, `a_(delta,end)`, `gamma`, `C_R`, `H`, and its homogeneous list: `public-facing` accepted dependency objects from `step_002`. Their positivity, finite coloring, endpoint privacy range, and Ramsey lower bound were proved there.
- `J`, `K=|J|=|H|-M+1`, `r`, `(P_x)`, `a_0`, and `eta=a_0/M`: `public-facing` accepted dependency objects from `step_003`. Pairwise privacy and the off-diagonal margin were proved there.
- `L_M=log(eM)` and `L_0=log(9e)`: `proof-local`; direct expressions from accepted `M` used to make every logarithmic comparison visible.
- `b_T`: `appendix-local`; the least universal integer satisfying the explicit strict inequality (8). Its existence is proved by (7), and it is independent of all exposed variables.
- `b_D`: `appendix-local`; directly defined from `a_0,b_T,L_0` in (9), and proved to bound `D` in (12).
- `T` and `D`: `appendix-local`; finite integers defined in (2). They are exported only through their rate and control inequalities, not as public theorem parameters.
- `s_u` and the search-tree intervals/queries: `proof-local`; deterministic finite objects constructed in Lemma~\ref{lem:step-004-search-tree}. Nonempty leaves and diagonal exclusion are proved before use.
- `V_d`, `widehat p`, and `widehat b`: `proof-local`; iid product samples and a single-valued empirical coordinate bit. Independence is only across `d`.
- `q_t(x)`, `G_x`, and `E_x`: `proof-local`; fixed ideal-path queries, their correct-bit event, and the adaptive leaf event. `G_x subseteq E_x` is proved by induction, so no adaptive concentration condition is assumed.
- `P_y^D`: `proof-local` reference law; one fixed product law used for all disjoint leaf events. Its lower masses are derived from active `lem:prod`, not assumed.
- `C_B` and `C_0`: `appendix-local`; explicitly defined in (36) and (41) from `b_T,C_R` and proved to bound the binary and Ramsey comparison exponents.
- `E_M`, `M_0`, and `R_fin`: `proof-local`; finite inversion objects. `M_0` is the least integer satisfying the displayed inequalities (49)--(50), and `R_fin` is the exact finite maximum over the remaining `M` values.
- `b_0=1/4` and `N_emp`: `appendix-local`; the uniform log-star inversion constants. `N_emp` is chosen by the explicit finite condition (54), not by silently discarding small `N`.
- `C_9=81(1+log9)`: `appendix-local`; the exact `M`-to-`n` logarithmic comparison constant.
- `a_delta`, `a_th`, and `N_th`: `public-facing`; the minimal interface exported downstream. Their complete provenance is (60)--(61).
- Candidate-kernel privacy: a local conditional target input, not a setting assumption or generated invariant.
- Small-risk premise (A1): a local conditional hypothesis equal to the negation of the target. It is discharged by the strict contradiction (67)--(68).
- Endpoint delta condition, homogeneous set, adjacent rise, block, pairwise laws, and margin: accepted derived outputs, not primitive assumptions.
- Correct-path concentration, product privacy, leaf mass, disjointness, homogeneous upper bound, Ramsey comparison, and log-star inversion: all proved in named local units in this step.
- Boundary audit: `epsilon=1` is the worst likelihood endpoint and is included in (32); `delta=0` removes the leakage term; `M=9n>=9` includes the smallest admitted wrapper; `K<=2^(T+1)` is the exact complement of the tree contradiction; `N<N_th` is explicitly outside the target; and arbitrary oscillating output bit vectors remain allowed.
- Hard-prior audit: no symbol `Pi`, distribution over experiments, minimax theorem, or learner-independent averaging is used. This step ends with the learner-by-learner value needed by `step_005`.
- Citation boundary: active `lem:binary` and `lem:lbhomog` provide mechanism lineage, while the branch constants, tie convention, adaptive path, endpoint privacy, exact cardinality, and inversion are proved locally. Active `lem:prod` is used only after full restatement and exact assumption discharge. The accepted current-notation Ramsey lower bound, not the source asymptotic shorthand, is used in (42).
- Diagnostic boundary: `global_proof.md`, SHA-256 `bbd8a4f3a7d579085fbfcbea87beb2dce14d00f99922eb44b694e690460b29b6`, was read only after confirming that paired `global_proof_review.md`, SHA-256 `4723ec97011458d099b944756217c3dcd5e51e64ce7f7cfac4568b68592d5239`, has status `ACCEPTED`. Its G4 split suggested the planning order `D,T` -> correct path -> product leaf mass -> Ramsey inversion. The diagnostic was not used as proof evidence, a cited result, an assumption source, or authority to alter the target claim, dependencies, constants, or conclusion.
