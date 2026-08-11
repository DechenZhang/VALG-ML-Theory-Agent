# Proof Step

## Step Identity

- Sketch attempt: `1`
- Step ID: `step_003`
- Unit attempt: `1`

## Target Step Claim

- Intended claim: From the adjacent rise, construct on one large homogeneous interval a family of arbitrary-output restriction laws indexed by a moving record, pairwise `(epsilon,delta)`-indistinguishable by exactly one replacement and separated by margin `eta=a_0/M`.
- Depends on: `step_002`.
- Assumptions used: Derived adjacent rise and homogeneous set.
- Technical challenge: Repair source indexing in current notation without changing mechanism; keep every database pair one-record adjacent.
- Intended proof tool or cited result: Alon active `lem:AtoP` and active `lem:reduction`; direct one-record privacy and restriction.
- Output target: Pairwise neighboring family with coordinate margin.
- Rate objective: R1, with explicit `eta=a_0/M` and no privacy loss.

More explicitly, this step proves that the accepted `step_002` output has the following consequence. There is a universal numerical constant
\[
a_0:=\frac{g_{\rm gap}}{100}>0
\tag{T1}
\]
such that, for every accepted homogeneous set `H`, homogeneous list `(p_0,...,p_M)`, and index `i in [M]` satisfying the accepted adjacent rise, there are a nonempty ordered block `J subseteq H`, a number `r in [0,1]`, and laws `(P_x)_(x in J)` on the common arbitrary-output cube `{0,1}^J` for which:

1. `|J|=|H|-M+1`;
2. for every distinct \(x,x'\in J\), \(P_x\) and \(P_{x'}\) satisfy both `(epsilon,delta)` DP inequalities;
3. with `eta=a_0/M`, for every `x,z in J` with `z != x`,
   \[
   z\prec x\Longrightarrow
   \Pr_{v\sim P_x}[v(z)=1]\le r-\eta,
   \qquad
   x\prec z\Longrightarrow
   \Pr_{v\sim P_x}[v(z)=1]\ge r+\eta,
   \tag{T2}
   \]
   where `prec` is the pullback upper-threshold order exported by `step_002`.

No claim is imposed on the diagonal coordinate `z=x`.

## Step Proof Status

`COMPLETE`

## Allowed Assumptions And Dependencies

- Setting assumptions by stable id: None. The proof uses the finite-coordinate measurability, ordered replacement adjacency, and threshold-experiment definitions in `setting.md`, but no theorem-facing `assump:*` condition.
- Accepted dependency proof: `perspective_2/idea_2/proof_steps/step_002/proof.md`, SHA-256 `f5f4ea55e366c0ce315f9addaa72052f390f5b6d24481214d3f8538e5a8715e7`.
- Accepted dependency review: `perspective_2/idea_2/proof_steps/step_002/review.md`, status `ACCEPTED`, SHA-256 `ed34067f687d7e6f7c47bfce7b2eb209e26ec36f42f343ddbaf1174cf180b164`.

Assumption-provenance classification:

- Primitive conditions: integers `n>=1`, `N>=2`; `M=9n`; a finite ordered coordinate domain; ordered replacement adjacency; `0<epsilon<=1`; `delta>=0`; and coordinate-measurable arbitrary bit-valued outputs.
- Derived invariants supplied by the accepted dependency: the full-cube empirical wrapper, its exact `(epsilon,delta)` privacy, the pullback upper order `prec`, a homogeneous set `H` of size at least `M+1`, its list `(p_0,...,p_M)` at mesh `gamma=g_gap/(100M)`, the universal constant `g_gap>0`, and an index `i in [M]` satisfying
  \[
  p_i-p_{i-1}\ge\frac{3g_{\rm gap}}{4M}.
  \tag{A1}
  \]
- Local conditional hypotheses: exactly the conditions under which accepted `step_002` exports these objects, namely its expected-risk premise `(A1)` there, its endpoint-delta condition `(A2)` there, and its nonvacuous homogeneous-set branch. They are not strengthened here and are not promoted to theorem-facing assumptions.

No hard prior, product distribution, binary-search event, algorithm-wise hardness conclusion, or later proof-step output is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under the accepted `step_002` homogeneous set and adjacent index, retaining `i-1` left extremes and `M-i` right extremes leaves an ordered block `J` of size `|H|-M+1`; inserting any `x in J` at the common position `i` gives an `M`-record, distinct-coordinate, threshold-realizable fixed-template sample, and two such samples differ in exactly the record at position `i`. | Constructs the common moving-record database family and audits sample size, labels, tuple distinctness, exact adjacency, and the `i=1,M` layouts. |
| `unit_002` | lemma | Under Proposition~\ref{prop:step-003-fixed-extremes}, every off-diagonal coordinate `z in J\{x}` has rank exactly `i-1` when `z prec x` and exactly `i` when `x prec z`; at `i=1` these are ranks `0,1`, and at `i=M` they are ranks `M-1,M`. | Repairs the source indices and connects the accepted adjacent list entries to the moving family. |
| `unit_003` | proposition | Under the accepted exact privacy of the wrapper and Proposition~\ref{prop:step-003-fixed-extremes}, restricting every output by the same map to `J` gives arbitrary bit-vector laws `(P_x)` that are pairwise exactly `(epsilon,delta)`-indistinguishable, with no composition or parameter change. | Exports the precise privacy interface consumed by `step_004`. |
| `unit_004` | proposition | Under the accepted homogeneity estimate, (A1), and Lemma~\ref{lem:step-003-ranks}, the midpoint `r=(p_i+p_(i-1))/2` and `a_0=g_gap/100` give the left/right inequalities (T2) with `eta=a_0/M`; order-preserving reindexing of `J` gives the usual lower-index/upper-index form without changing the sign. | Proves the exact coordinate margin and audits the pullback orientation, mesh defect, endpoints, and diagonal exclusion. |

Atomic step = no. Database construction, rank calculation, privacy transfer, and quantitative coordinate separation are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: homogeneous list and adjacent rise

- Source: accepted Proposition `Finite nearly balanced homogeneity coloring`, Proposition `Finite Ramsey extraction with adjusted color constants`, and Proposition `Adjacent rise from the endpoint-uniform gap` in `step_002`, together with its accepted upper-oriented wrapper lemma.
- Restated dependency conclusion in current notation: define
  \[
  \psi(q)=N+1-q,
  \qquad
  q\preceq q'\quad\Longleftrightarrow\quad \psi(q)\le\psi(q').
  \tag{C1}
  \]
  Thus `preceq` is the reverse of the natural `q`-order. Let `mathcal W` denote the accepted branch-coordinate wrapper `W_B`, with its rows written in the pullback order. The accepted dependency proves that `mathcal W` is exactly `(epsilon,delta)`-DP and takes values in the full cube `{0,1}^[N]`. It also supplies a set `H subseteq [N]` homogeneous in the order (C1) and a list `(p_0,...,p_M)` such that every `preceq`-increasing, fixed-template `M`-sample `S` from `H` and every `z in H\S_X` obey
  \[
  \left|
  \Pr_{g\sim\mathcal W(S)}[g(z)=1]-p_{\operatorname{ord}^{\preceq}_S(z)}
  \right|\le\gamma,
  \qquad
  \gamma=\frac{g_{\rm gap}}{100M},
  \tag{C2}
  \]
  where
  \[
  \operatorname{ord}^{\preceq}_S(z)
  :=\left|\{u\in S_X:u\preceq z\}\right|.
  \tag{C3}
  \]
  It also supplies an `i in [M]` satisfying (A1), including `i=1` and `i=M` as legal cases.
- Instantiated objects: `mathcal W`, `H`, `(p_0,...,p_M)`, `gamma`, `g_gap`, and `i` are used exactly as restated above.
- Assumptions and discharge: the current proof uses the accepted proof/review pair with matching producer identity and hashes. Its local expected-risk, delta, and nonvacuity conditions are inherited without alteration. Coordinate measurability and replacement adjacency are part of `setting.md`.
- Conclusion used: exact wrapper privacy, arbitrary full-cube output scope, the homogeneity estimate (C2), and the signed adjacent rise (A1).
- Non-output boundary: `step_002` does not supply the block `J`, moving samples, restriction laws, pairwise privacy proof, or coordinate-margin family. Those are proved here.

### Active Alon `lem:reduction`

- Source: Alon, Livni, Malliaris, and Moran, *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949, active `ADP.tex` label `lem:reduction`, statement and proof at lines 716--748; audited source SHA-256 `5eaeb54287aa8aa89a00ad4b05f9158b56e01450a18e635afeecc4ed4e97128f`. The later duplicate block is inside `ignore` and is not used.
- Restated active statement: in the source even-sample homogeneous empirical-learning setup, if `(p_0,...,p_m)` is the homogeneous probability list, then some `i in {1,...,m}` satisfies
  \[
  p_i-p_{i-1}\ge\frac1{4m}.
  \tag{C4}
  \]
- Current-object mapping: source `m` maps to `M=9n`, its upper-oriented ordered domain maps to `(H,preceq)`, and its list maps to the accepted `(p_0,...,p_M)`.
- Assumption discharge and conclusion used: the source statement is not invoked as a black box because its even template, fixed empirical-accuracy constants, `epsilon=0.1`, and source mesh differ from the current branch. Accepted Proposition~\ref{prop:step-002-adjacent-rise} independently proves the exact current interface (A1) for both parities and every `0<epsilon<=1`. Thus `lem:reduction` supplies mechanism lineage only; all mathematical authority for the rise is the accepted dependency.
- Non-output boundary: `lem:reduction` supplies no pairwise family and does not resolve the source proof's endpoint indexing.

### Active Alon `lem:AtoP`

- Source: the same paper and audited active source, label `lem:AtoP` at lines 669--685 with proof at lines 750--770.
- Restated active statement: in the source `lem:lbhomog` setup, let `A` be an `m`-sample `(0.1,delta)`-DP algorithm with `delta<=1/(10^3 m^2 log m)` on an `m`-homogeneous ordered set of size `k`, and suppose `A` empirically learns thresholds with source accuracy `(1/16,1/16)`. Writing `n=k-m`, there is a family `(P_j)_(j<=n)` on `{+1,-1}^n` whose members are pairwise `(0.1,delta)`-indistinguishable and for which some `r in [0,1]` satisfies
  \[
  \Pr_{v\sim P_j}[v(ell)=+1]
  \le r-\frac1{10m}\quad(ell<j),
  \qquad
  \Pr_{v\sim P_j}[v(ell)=+1]
  \ge r+\frac1{10m}\quad(ell>j).
  \tag{C5}
  \]
- Current-object mapping: source `m` maps to `M`; the homogeneous set maps to `H`; source `{+1,-1}` outputs map coordinatewise to `{1,0}`; the output domain maps to the common block `J`; and source fixed privacy maps to the current exact `(epsilon,delta)` parameters.
- Assumption discharge: homogeneity and the signed adjacent rise are supplied by accepted `step_002`; exact wrapper privacy and arbitrary full-cube outputs are also accepted dependency conclusions; fixed-template threshold realizability, common sample size, exact one-position replacement, rank identities, and the output restriction are proved in Propositions~\ref{prop:step-003-fixed-extremes}--\ref{prop:step-003-private-restrictions} and Lemma~\ref{lem:step-003-ranks} below.
- Index repair and conclusion used: the active source statement records the intended moving-record mechanism, but its displayed proof uses an interior-neighbor notation and midpoint indices that do not directly cover `i=1,m` or align with the rise `p_i-p_(i-1)`. The current proof therefore does not import those indices. It keeps `i-1` fixed left extremes and `M-i` fixed right extremes, leaves exactly `|H|-M+1` moving choices, sets `r=(p_i+p_(i-1))/2`, and proves all ranks and inequalities directly. This preserves the mechanism while repairing the indexing and one-sided endpoints.
- Non-output boundary: the source result does not state the current odd-template constants, generic `epsilon`, exact `a_0/M`, or branch pullback-order sign. None of these is attributed to the citation.

### Internal results used in target assembly

- Proposition~\ref{prop:step-003-fixed-extremes}: common fixed-extremes moving databases.
- Lemma~\ref{lem:step-003-ranks}: exact off-diagonal ranks, including one-sided endpoints.
- Proposition~\ref{prop:step-003-private-restrictions}: common-coordinate arbitrary-output laws with exact pairwise privacy.
- Proposition~\ref{prop:step-003-margin}: explicit `a_0/M` separation and orientation-preserving reindexing.

## Local Derivation

### unit_001: proposition

**Proposition (Fixed-extremes moving-record databases).** \label{prop:step-003-fixed-extremes}

Statement: Under the accepted `step_002` dependency, let
\[
H=\{h_1\prec h_2\prec\cdots\prec h_L\},
\qquad L:=|H|\ge M+1,
\tag{1}
\]
and let `i in [M]` satisfy (A1). Put
\[
s_-:=\left\lfloor\frac M2\right\rfloor,
\qquad
\lambda_r:=\mathbf 1\{r>s_-\},
\quad r\in[M].
\tag{2}
\]
Define the `preceq`-interval in `H`
\[
J:=\{h_i,h_{i+1},\ldots,h_{L-M+i}\}.
\tag{3}
\]
For each `x in J`, define the ordered `M`-tuple
\[
S_x=(d_1(x),\ldots,d_M(x)),
\tag{4}
\]
where
\[
d_r(x)=
\begin{cases}
(h_r,\lambda_r),&r<i,\\
(x,\lambda_i),&r=i,\\
(h_{L-M+r},\lambda_r),&r>i.
\end{cases}
\tag{5}
\]
Then `|J|=L-M+1`; every `S_x` has exactly `M` distinct domain coordinates, is `preceq`-increasing and realizable by a branch threshold; and, for every distinct `x,x' in J`, the ordered tuples `S_x,S_x'` differ in exactly the record at position `i`.

Proof / justification:

The left fixed coordinates are
\[
h_1,\ldots,h_{i-1},
\tag{6}
\]
and the right fixed coordinates are
\[
h_{L-M+i+1},\ldots,h_L.
\tag{7}
\]
There are `i-1` coordinates in (6) and `M-i` in (7), hence exactly `M-1` fixed coordinates. The remaining consecutive block of `H` is (3), and
\[
|J|=(L-M+i)-i+1=L-M+1\ge2.
\tag{8}
\]
The three index ranges
\[
\{1,\ldots,i-1\},
\quad
\{i,\ldots,L-M+i\},
\quad
\{L-M+i+1,\ldots,L\}
\tag{9}
\]
are disjoint. Therefore every `x in J` is different from all fixed coordinates, the coordinates in `S_x` are distinct, and (5) is `preceq`-increasing with `x` at the same position `i` for every choice of `x`.

The labels in (2) are zero through rank `s_-` and one from rank `s_-+1` onward. Because `preceq` is the pullback upper order, `u prec u'` means `u>u'` in the natural branch coordinate. If `u_r(x)` is the domain coordinate of `d_r(x)`, choose
\[
t_x:=u_{s_-+1}(x)\in[N].
\tag{10}
\]
For `r<=s_-`, natural-order strictness gives `u_r(x)>t_x`, and hence
\(
\tau_{t_x}(u_r(x))=0=\lambda_r.
\)
For `r>=s_-+1`, it gives `u_r(x)<=t_x`, and hence
\(
\tau_{t_x}(u_r(x))=1=\lambda_r.
\)
Thus `S_x` is exactly threshold-realizable. This argument also covers the possibility that the moving coordinate itself is the first positive point.

For distinct `x,x' in J`, equations (4)--(5) show that every position except `i` contains the same labeled record, whereas position `i` contains `(x,lambda_i)` versus `(x',lambda_i)`. Hence the tuples differ in exactly one replacement. No sorting, permutation, group-privacy comparison, or chain of adjacent databases is used.

At the left endpoint `i=1`, (6) is empty,
\[
J=\{h_1,\ldots,h_{L-M+1}\},
\tag{11}
\]
and all `M-1` fixed records form the suffix (7). At the right endpoint `i=M`, (7) is empty,
\[
J=\{h_M,\ldots,h_L\},
\tag{12}
\]
and all `M-1` fixed records form the prefix (6). Thus the construction never calls for `h_0`, `h_(L+1)`, or any ambient arithmetic successor.

### unit_002: lemma

**Lemma (Exact off-diagonal ranks in the moving block).** \label{lem:step-003-ranks}

Statement: Under Proposition~\ref{prop:step-003-fixed-extremes}, for every `x,z in J` with `z != x`,
\[
\operatorname{ord}^{\preceq}_{S_x}(z)
=
\begin{cases}
i-1,&z\prec x,\\
i,&x\prec z.
\end{cases}
\tag{13}
\]
Consequently, `i=1` gives the one-sided rank pair `0,1`, and `i=M` gives the one-sided rank pair `M-1,M`, whenever the corresponding side contains a query point.

Proof / justification:

Every point of the fixed prefix (6) precedes every point of `J`, and every point of the fixed suffix (7) follows every point of `J`.

If `z prec x`, the only sample coordinates `u` satisfying `u preceq z` are the `i-1` fixed prefix coordinates. The moving point `x` and every fixed suffix coordinate follow `z`. Thus the rank is `i-1`.

If `x prec z`, the `i-1` fixed prefix coordinates and the moving coordinate `x` satisfy `u preceq z`, while every fixed suffix coordinate follows `z`. Thus the rank is `i`.

When `i=1`, the fixed prefix is empty, so the two possible off-diagonal ranks are literally `0` and `1`. When `i=M`, the fixed suffix is empty, so they are literally `M-1` and `M`. If `x` is the first or last point of `J`, one of the two implications in (13) has no eligible `z` and is simply vacuous; no phantom query coordinate is introduced. The diagonal `z=x` lies in the sample and is outside the homogeneity interface, so no rank-based marginal claim is made there.

### unit_003: proposition

**Proposition (Parameter-preserving arbitrary-output restrictions).** \label{prop:step-003-private-restrictions}

Statement: Under the accepted exact `(epsilon,delta)` privacy of `mathcal W` and Proposition~\ref{prop:step-003-fixed-extremes}, let
\[
\rho_J:\{0,1\}^{[N]}\longrightarrow\{0,1\}^J,
\qquad
\rho_J(g)=g|_J,
\tag{14}
\]
and define
\[
P_x:=\operatorname{Law}(\rho_J(g)),
\qquad g\sim\mathcal W(S_x),
\quad x\in J.
\tag{15}
\]
Then, for every distinct `x,x' in J` and every event `E subseteq {0,1}^J`,
\[
P_x(E)\le e^\epsilon P_{x'}(E)+\delta,
\qquad
P_{x'}(E)\le e^\epsilon P_x(E)+\delta.
\tag{16}
\]
The laws in (15) may be supported on arbitrary bit vectors; no threshold shape, monotonicity, properness, representation, or computational restriction is imposed.

Proof / justification:

The finite-coordinate map `rho_J` is measurable by the coordinate-measurability convention in `setting.md`, and it is the same deterministic map for every `x`. For distinct `x,x'`, Proposition~\ref{prop:step-003-fixed-extremes} shows that `S_x,S_x'` are replacement adjacent by exactly one record. Applying the accepted DP inequality to the event `rho_J^(-1)(E)` gives
\[
\begin{aligned}
P_x(E)
&=\Pr_{g\sim\mathcal W(S_x)}[g\in\rho_J^{-1}(E)]\\
&\le e^\epsilon
\Pr_{g\sim\mathcal W(S_{x'})}[g\in\rho_J^{-1}(E)]
+\delta\\
&=e^\epsilon P_{x'}(E)+\delta.
\end{aligned}
\tag{17}
\]
Swapping `x,x'` gives the second inequality in (16). There is one invocation of privacy in each direction and no path through intermediate databases, so neither `epsilon` nor `delta` is composed. Restriction is postprocessing of the accepted full arbitrary-output cube, so it adds no output-shape condition.

### unit_004: proposition

**Proposition (Pullback-oriented coordinate separation).** \label{prop:step-003-margin}

Statement: Under the accepted homogeneity estimate (C2), the adjacent rise (A1), Proposition~\ref{prop:step-003-private-restrictions}, and Lemma~\ref{lem:step-003-ranks}, define
\[
\Delta_i:=p_i-p_{i-1},
\qquad
r:=\frac{p_i+p_{i-1}}2,
\qquad
a_0:=\frac{g_{\rm gap}}{100},
\qquad
\eta:=\frac{a_0}{M}.
\tag{18}
\]
Then `r in (eta,1-eta)`, and for every `x,z in J` with `z != x`, the laws (15) satisfy (T2). If
\[
J=\{j_1\prec\cdots\prec j_K\},
\qquad K=|J|,
\tag{19}
\]
define the order isomorphism and common coordinate relabeling by
\[
\iota(j_\ell)=\ell,
\qquad
(R_\iota v)(s)=v(j_s),
\tag{19a}
\]
and define
\[
\widetilde P_\ell:=(R_\iota)_\# P_{j_\ell},
\qquad \ell\in[K].
\tag{19b}
\]
Then, for all `ell,s in [K]`,
\[
s<\ell
\Longrightarrow
\Pr_{v\sim\widetilde P_\ell}[v(s)=1]\le r-\eta,
\qquad
s>\ell
\Longrightarrow
\Pr_{v\sim\widetilde P_\ell}[v(s)=1]\ge r+\eta.
\tag{20}
\]
The family `(widetilde P_l)_(l in [K])` remains pairwise exactly `(epsilon,delta)`-indistinguishable.

Proof / justification:

For `z prec x`, Lemma~\ref{lem:step-003-ranks} gives rank `i-1`. Since `z` is not a coordinate of `S_x`, (C2) and (15) give
\[
\Pr_{v\sim P_x}[v(z)=1]
\le p_{i-1}+\gamma
=r-\frac{\Delta_i}{2}+\gamma.
\tag{21}
\]
For `x prec z`, the rank is `i`, and the same accepted homogeneity estimate gives
\[
\Pr_{v\sim P_x}[v(z)=1]
\ge p_i-\gamma
=r+\frac{\Delta_i}{2}-\gamma.
\tag{22}
\]
The complete mesh calculation is
\[
\begin{aligned}
\frac{\Delta_i}{2}-\gamma
&\ge
\frac{3g_{\rm gap}}{8M}
-\frac{g_{\rm gap}}{100M}\\
&=\frac{73g_{\rm gap}}{200M}
>\frac{g_{\rm gap}}{100M}
=\frac{a_0}{M}
=\eta.
\end{aligned}
\tag{23}
\]
Substituting (23) into (21)--(22) proves (T2), with strictly more margin than is exported.

Because `p_(i-1)>=0`, `p_i<=1`, and `Delta_i>0`,
\[
r=p_{i-1}+\frac{\Delta_i}{2}
\ge\frac{\Delta_i}{2}>\eta,
\qquad
r=p_i-\frac{\Delta_i}{2}
\le1-\frac{\Delta_i}{2}<1-\eta.
\tag{24}
\]
Thus the two thresholds `r-eta` and `r+eta` lie in `[0,1]`.

The maps in (19a)--(19b) give a common deterministic relabeling of every law and coordinate. Hence Proposition~\ref{prop:step-003-private-restrictions} preserves (16), while `j_s prec j_ell` is equivalent to `s<ell`, proving (20). By (C1),
\[
j_1>j_2>\cdots>j_K
\tag{25}
\]
in the natural branch `q`-order. Therefore listing `J` in increasing natural order would reverse both index inequalities and the left/right clauses. Retaining the pullback order, or reversing the list and the clauses simultaneously, preserves the sign. The construction never treats the natural-order reversal as an additional probabilistic or privacy operation.

For `i=1`, (21) uses `p_0` and (22) uses `p_1`; for `i=M`, they use `p_(M-1)` and `p_M`. These are genuine homogeneous-list coordinates from the accepted dependency. If one side of `x` inside `J` is empty, only that side's universally quantified implication is vacuous. Equation (20), like the source statement, deliberately excludes `s=ell`.

## Target-Step Assembly

Fix every object quantified by the accepted `step_002` conclusion: `n,N,M=9n,epsilon,delta`, the arbitrary-output exact-private wrapper `mathcal W`, the pullback-ordered homogeneous set `H`, its list `(p_0,...,p_M)`, and any `i in [M]` satisfying (A1).

Proposition~\ref{prop:step-003-fixed-extremes} removes exactly `M-1` fixed extremes from movement and leaves the common ordered block
\[
J=\{h_i,\ldots,h_{|H|-M+i}\},
\qquad
|J|=|H|-M+1.
\tag{26}
\]
For every `x in J`, it constructs a threshold-realizable `M`-record tuple `S_x` with the moving record at the same ordered position `i`. Distinct tuples differ in exactly that one record. The proposition explicitly covers the prefix layout `i=1` and suffix layout `i=M`, so no interior-index assumption or phantom endpoint point is used.

Lemma~\ref{lem:step-003-ranks} proves that every off-diagonal `z in J\{x}` sees exactly the two accepted adjacent list ranks: `i-1` to the left of `x` and `i` to the right. Proposition~\ref{prop:step-003-private-restrictions} applies the wrapper's DP guarantee once to each such database pair and then the same restriction map to `J`. It therefore gives common-cube arbitrary-output laws `(P_x)_(x in J)` satisfying both exact `(epsilon,delta)` inequalities, with no composition, group privacy, or parameter degradation.

Finally, Proposition~\ref{prop:step-003-margin} combines the rank identity with accepted homogeneity and the accepted rise. With the universal choice
\[
a_0=\frac{g_{\rm gap}}{100},
\qquad
\eta=\frac{a_0}{M},
\qquad
r=\frac{p_i+p_{i-1}}2,
\tag{27}
\]
the exact inequality (23) proves the two coordinate margins (T2) for every `x,z in J`, `z != x`. Reindexing `J` in the pullback order gives (20), which is the exact lower-index/upper-index family consumed by `step_004`. The arbitrary-output coordinate laws, privacy events, and binary-search coordinates are the same objects; no properized or surrogate family is introduced.

This establishes every quantifier and every part of the accepted `step_003` sketch-row claim.

## Explicit Rate Audit

- Exposed variables: `n`, `N`, `M=9n`, `epsilon`, `delta`, `|H|`, `|J|=|H|-M+1`, the accepted list increment `p_i-p_(i-1)`, mesh `gamma=g_gap/(100M)`, midpoint `r`, universal `a_0=g_gap/100`, and margin `eta=a_0/M`.
- Hidden constants may depend on: only the accepted universal numerical constant `g_gap`.
- Hidden constants may not depend on: `n`, `N`, `M`, `epsilon`, `delta`, the candidate kernel, wrapper randomness, output representation, homogeneous set, adjacent index, moving record, query coordinate, parity, or interval size.
- Fixed quantities: zero-one coordinate predictions, ordered replacement adjacency, the wrapper ratio `M/n=9`, the fixed nearly balanced label template, and the pullback upper order.
- Probability mode: exact coordinate marginals under each output law and eventwise two-sided DP. The block, ranks, and margin inequality are deterministic; no high-probability or expectation conversion occurs in this step.
- Horizon mode: fixed sample of size `M`; every privacy comparison is a single replacement and there is no repeated or asymptotic scope.
- Norm mode: scalar coordinate-prediction marginal separation on the common restriction cube `{0,1}^J`.
- Admissibility conditions and auxiliary tolerances: exactly the accepted `step_002` interface, including `M=9n`, `0<epsilon<=1`, its expected-risk and delta premises, `|H|>=M+1`, `gamma=g_gap/(100M)`, and (A1). No additional delta or epsilon restriction is introduced.
- Term absorption or simplification inequalities:
  \[
  \frac{p_i-p_{i-1}}2-\gamma
  \ge\left(\frac38-\frac1{100}\right)\frac{g_{\rm gap}}M
  =\frac{73g_{\rm gap}}{200M}
  >\frac{g_{\rm gap}}{100M}
  =\frac{a_0}{M}.
  \tag{28}
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: this step exports the exact `eta=a_0/M` interface used to select the product size and binary depth in `step_004`. Privacy remains exactly `(epsilon,delta)`, so there is no privacy term to specialize or absorb here.
- Baseline-reduction check: the construction is independent of `k`. At `k=1`, it is exactly the active one-chain moving-record mechanism on the accepted homogeneous set, with the repaired endpoint-safe indices and only the universal current-branch constant `a_0` replacing the source numerical margin.

## Blockers

None.

## Notation And Assumption Notes

- `M=9n`, `g_gap`, `gamma`, `H`, `(p_0,...,p_M)`, and `i`: `public-facing`; inherited from the accepted `step_002` dependency with their exact provenance and quantifiers.
- `psi(q)=N+1-q` and the pullback order `preceq`: `appendix-local`; inherited from the accepted source-orientation bridge. They preserve coordinates, loss, adjacency, and the sign of the list rise when used together.
- `L=|H|`, the ordered names `h_1,...,h_L`, `s_-`, and the template labels `lambda_r`: `proof-local`; directly defined from accepted objects and `M`.
- The fixed prefix and suffix in (6)--(7), the coordinate records `d_r(x)`, and the tuples `S_x`: `proof-local`; generated and proved distinct, realizable, correctly sized, and exactly adjacent in Proposition~\ref{prop:step-003-fixed-extremes}.
- `J`: `public-facing`; generated by Proposition~\ref{prop:step-003-fixed-extremes}. It is a consecutive block of `H` in the pullback order, not necessarily an arithmetic interval of `[N]`. Its exact size is proved in (8).
- `rho_J`: `proof-local`; the common measurable coordinate-restriction map in (14).
- `(P_x)_(x in J)`: `public-facing`; generated by Proposition~\ref{prop:step-003-private-restrictions}. These are arbitrary bit-vector laws on the same cube `{0,1}^J`, not threshold-output laws.
- `Delta_i`: `proof-local`; the accepted adjacent increment rewritten for the margin calculation.
- `r`: `public-facing`; the midpoint of the two accepted list entries and the routing threshold consumed downstream. Its range `r in (eta,1-eta)` is proved in (24).
- `a_0=g_gap/100`: `public-facing`; a universal constant directly defined from the accepted proved-positive constant `g_gap`. It is not a free margin assumption.
- `eta=a_0/M`: `public-facing`; the exact downstream margin, proved by Proposition~\ref{prop:step-003-margin} rather than assumed.
- The order isomorphism `iota`, common relabeling `R_iota`, and reindexed laws `widetilde P_l`: `appendix-local`; they are explicitly defined in (19a)--(19b) and translate the common ordered block to `[|J|]` without changing privacy or coordinate marginals.
- Assumption provenance: the homogeneous set, list, adjacent rise, and private wrapper are accepted derived outputs. Tuple distinctness, realizability, exact adjacency, rank identities, common-cube privacy, and the margin are all proved in this step. No generated property is treated as primitive or as a local conditional hypothesis.
- Constant provenance: `g_gap` and `gamma` are inherited accepted constants; `a_0` and `eta` are direct expressions from them; the stronger residual margin `73g_gap/(200M)` is proved in (23). No hidden constant is chosen after seeing `H`, `i`, or the kernel.
- Sample-size audit: every `S_x` has exactly `(i-1)+1+(M-i)=M` records. The moving block has exactly `L-M+1` coordinates because only `M-1` coordinates are fixed.
- Replacement-adjacency audit: for `x != x'`, the ordered records agree at every position except `i`; the moving label `lambda_i` is common. The proof uses one DP comparison per direction and no composition.
- Endpoint audit: `i=1` uses an empty prefix and ranks `0,1`; `i=M` uses an empty suffix and ranks `M-1,M`. Empty query sides are handled by vacuous quantification, not extra domain points.
- Orientation audit: `preceq` is reverse natural `q`-order. The low-before/high-after statement is exported in `preceq`; changing to increasing natural order requires reversing both law/coordinate indices and inequality clauses. No sign is changed silently.
- Arbitrary-output audit: only coordinate events `{v:v(z)=1}` and a common finite restriction are used. There is no threshold shape, monotonicity, properness, representation, or computational assumption on output vectors.
- Citation boundary: active Alon `lem:AtoP` and `lem:reduction` were restated and mapped, but their differing constants and source proof indices were not used as proof evidence. The accepted `step_002` result and the four current local units supply all mathematical authority.
- Diagnostic boundary: `global_proof.md` was read only after confirming that the paired current `global_proof_review.md` has status `ACCEPTED`. Its G3 fixed-extremes layout was used as planning context. It was not used as evidence, a cited result, an assumption source, or authority to change the target claim, dependencies, privacy parameters, or margin.
