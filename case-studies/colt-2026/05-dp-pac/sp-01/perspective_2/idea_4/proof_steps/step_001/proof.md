# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 2

## Target Step Claim

- Intended claim: Prove the \(d=0\) branch, define the exact positive-branch
  allocations and least feasible teacher count, prove the \(\bar k\) witness
  and teacher margin, and totalize every source failure/fallback path.
- Depends on: None.
- Assumptions used: Primitive `assump:finite-littlestone` and
  `assump:approximate-dp-regime`.
- Technical challenge: Couple \(k,m,n_0,L,B\) without circular dependence and
  preserve boundaries.
- Intended proof tool or cited result: Direct scalar inequalities; Lyu
  `coro: essential hypotheses`, `lemma: privacy of sparse sampling`; source
  mechanism definitions.
- Output target: Exact public parameter tuple and total procedure.
- Rate objective: Close all auxiliary logarithms and expose the
  \(d^2/\varepsilon\) teacher dependence.
- Row-local review status: `PENDING` (the accepted
  `proof_sketch_review.md`, not this row, is the acceptance gate).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:finite-littlestone`: \(C\ne\varnothing\) and
    \(d=\operatorname{LD}(C)<\infty\).
  - `assump:approximate-dp-regime`:
    \(0<\alpha,\beta<1/4\), \(0<\varepsilon\le1\), and
    \(0<\delta<1\). The additional small-\(\delta\) convention in that
    assumption is an asymptotic convention for the later source-facing rate
    comparison; it is not used to construct the learner at any fixed
    allowed \(\delta\).
- Derived invariants supplied by accepted dependencies: None; the target row
  has no dependencies.
- Local conditional hypotheses: None in the target conclusion. The cited
  source statements are instantiated only after all of their local
  hypotheses are checked below. In particular, no generated list, good
  event, sensitivity fact, mechanism-success event, kernel property, privacy
  conclusion, or PAC conclusion is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:finite-littlestone}, if \(d=0\), then \(C\) and \(\bar C\) are singletons, and the \(N=0\) deterministic quotient law is a \((0,0)\)-DP Markov kernel with zero population error for every allowed target and distribution. | Proves the exact null-dimensional baseline in the required output, privacy, and PAC modes. |
| `unit_006` | lemma | Under Assumption~\ref{assump:finite-littlestone}, if \(d\ge1\), then every class \(\mathcal H\subseteq\bar C\), including every source restriction \(H_i^r\), satisfies \(\operatorname{LD}(\mathcal H)\le d\). | Pulls finite quotient Littlestone trees back to \(X\) and supplies the class-dimension premise needed for Lyu's decomposition and essential-list result without using `step_002`. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:finite-littlestone} and~\ref{assump:approximate-dp-regime} and Lemma~\ref{lem:step-001-quotient-ld}, if \(d\ge1\), then \(1\le v\le d\), every scalar in the positive-branch candidate dictionary is well-defined for every integer \(t\ge2\), and, whenever \(H_i^r\subseteq\bar C\) is nonempty and \(\mathcal L_i^r\) is exactly its Lyu \((p_r(t),d)\)-essential list, \(|\mathcal L_i^r|\le p_r(t)^d2^{d^2}\le L(t)\); empty restrictions use the empty list. Conditional on those exact or totalized-empty lists, the stated Sparse Sample and AboveThreshold allocations satisfy their exact source-side calibration conditions. | Establishes legality, locally discharges the exact source list-cap premises, and checks source-convention compatibility of the full candidate dictionary before choosing \(k\). |
| `unit_003` | lemma | Under Assumptions~\ref{assump:finite-littlestone} and~\ref{assump:approximate-dp-regime}, if \(d\ge1\), then every public candidate \(t_C=\lceil C d^2\ell\Lambda^2/\varepsilon\rceil\), \(C\ge1\), has explicit ceiling-aware logarithmic bounds on \(t_C,m(t_C),n(t_C),Q(t_C),L(t_C)\), and the complete teacher defect is at most \(A_{\rm def}(1+\log C)d^2\ell\Lambda^2/\varepsilon\). | Solves the apparent \(t,m,n,L,B\) circularity by bounding a tuple defined for a candidate \(t\), without assuming feasibility. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:finite-littlestone} and~\ref{assump:approximate-dp-regime}, if \(d\ge1\), then the explicitly defined finite universal \(C_{\rm teach}\) makes \(\bar k=\lceil C_{\rm teach}d^2\ell\Lambda^2/\varepsilon\rceil\) feasible, the least feasible \(k\) exists, and \(2\le k\le\bar k\le2C_{\rm teach}d^2\ell\Lambda^2/\varepsilon\), with the exact teacher margin and all ceilings retained. | Proves noncircular activation and exposes the \(d^2/\varepsilon\) teacher dependence. |
| `unit_005` | proposition | Under Assumptions~\ref{assump:finite-littlestone} and~\ref{assump:approximate-dp-regime}, Lemma~\ref{lem:step-001-calibration}, and Proposition~\ref{prop:step-001-teacher}, the quotient procedure can be fixed before sampling so that empty restrictions receive empty lists; every invalid, nonfinite, non-\(H_C\), or oversized purported list is replaced by the empty list; invalid transcripts, no-success exhaustion, the Sparse Sample failure symbol, and every residual mechanism failure have a defined continuation or terminal output; every terminal failure/fallback returns the fixed \(\bar c_0\), while every exact source-valid successful path is unchanged. | Produces the exact total pointwise procedure consumed downstream, without using a random event or a later theorem conclusion. |

## Cited Result Applications

The source checked for every item in this section is Xin Lyu, *Private
Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1. The checked
official source file is `submission/main.tex`, SHA-256
`b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

### Lyu Corollary 4.1, `coro: essential hypotheses`

- Exact source hypotheses and definition: Lyu Definition 4.2 first fixes
  positive integers \(p,d\in\mathbb N\) and a hypothesis class
  \(\mathcal H\) satisfying
  \(\operatorname{LD}(\mathcal H)\le d\), and then defines valid and optimal
  \((p,d)\)-decompositions and
  \(t=\operatorname{DDim}_{p,d}(\mathcal H)\). Definition 4.3 calls a
  function \(f\) \((p,d)\)-essential to \(\mathcal H\) precisely when, for
  every optimal \((p,d)\)-decomposition
  \(\{\mathcal H_\ell\}_{\ell}\), there is a leaf \(\ell\) with
  \(\operatorname{LD}(\mathcal H_\ell)=t\) and
  \(\operatorname{SOA}_{\mathcal H_\ell}\equiv f\). Here \(t\) is local to
  the source statement and is unrelated to the candidate teacher-count
  variable used below. Under these hypotheses and this definition, which
  quantifies over every optimal decomposition, Corollary 4.1 Item 1 states
  that there are at most
  \[
  p^d2^{d^2}
  \]
  \((p,d)\)-essential hypotheses. Corollary 4.1 has three further items;
  none is used in this step.
- Current objects: Returning to the candidate teacher-count variable
  \(t\ge2\), at a later source stage \(0\le r\le d\), a nonempty quotient
  restriction \(H_i^r\subseteq\bar C\) is the source class and
  \(p=p_r(t):=2^rn(t)d\). The exact list \(\mathcal L_i^r\) is an ordering
  without repetition of all its Lyu \((p_r(t),d)\)-essential quotient
  hypotheses, hence consists of elements of \(H_C\).
- Assumption discharge: On the positive branch, \(d\) is a positive integer,
  and (2.4) makes every \(p_r(t)\) a positive integer. By
  Lemma~\ref{lem:step-001-quotient-ld}, every
  \(H_i^r\subseteq\bar C\) satisfies
  \(\operatorname{LD}(H_i^r)\le d\). Thus every source premise is discharged
  for a nonempty restriction before the corollary is applied. The list's
  exact identity is a stated local condition here, not an inferred generated
  object; its later construction and measurability are not claimed. For an
  empty restriction, the corollary is not applied and the totalized list is
  defined to be empty.
- Conclusion used: Since \(0\le r\le d\),
  \[
  |\mathcal L_i^r|
  \le p_r(t)^d2^{d^2}
  \le p_d(t)^d2^{d^2}=:L(t).
  \]
  The same bound holds for a totalized empty list. Thus \(L(t)\) is a valid
  common cap conditional on the exact source-list interface; it is not an
  assumption that those generated lists already exist.

### Lyu Algorithm 1 and Lemma 3.1, `algo:private sample` and
`lemma: privacy of sparse sampling`

- Exact source algorithm: Given an arbitrary domain \(\mathcal U\), an
  integer number of lists \(t\ge1\), subsets
  \(\mathcal L_1,\ldots,\mathcal L_t\subseteq\mathcal U\), a parameter
  \(\varepsilon_s>0\), and \(B\ge0\), define
  \[
  s(u)=|\{i:u\in\mathcal L_i\}|\quad
  (u\in\textstyle\bigcup_i\mathcal L_i),
  \qquad s(\perp)=B,
  \]
  and output \(w\in(\bigcup_i\mathcal L_i)\cup\{\perp\}\) with
  \[
  \Pr[w=u]
  =\frac{e^{\varepsilon_s s(u)}}
  {e^{\varepsilon_s B}+
    \sum_{z\in\cup_i\mathcal L_i}e^{\varepsilon_s s(z)}}.
  \tag{SparseLaw}
  \]
  The source exponent is \(\varepsilon_s s(u)\), with no factor \(1/2\),
  and the failure symbol is an additional support point of score exactly
  \(B\).
- Exact source privacy statement: If every list has size at most \(L\) and
  \[
  B\ge \frac{10\log(L/\delta_s)}{\varepsilon_s},
  \tag{SparsePrivacyThreshold}
  \]
  then the algorithm is \((2\varepsilon_s,\delta_s)\)-DP with respect to
  addition, removal, or replacement of one entire list coordinate.
- Current objects: \(\mathcal U=H_C\), \(t\) is a candidate teacher count,
  the lists are actual quotient-function lists, their common scalar cap is
  \(L(t)\), \(\varepsilon_s=\varepsilon_{\rm SS}=\varepsilon/8\), and
  \(\delta_s=\delta_{\rm SS}=\delta/2\).
- Assumption discharge and conclusion used: The conditional list bound in
  Lemma~\ref{lem:step-001-calibration} supplies the size premise on exact
  source-valid or totalized-empty paths, and
  \[
  B(t):=\left\lceil
  \frac{10\log(L(t)/\delta_{\rm SS})}{\varepsilon_{\rm SS}}
  \right\rceil
  \]
  satisfies (SparsePrivacyThreshold) without deleting its ceiling. Hence the
  source mechanism reserves exactly
  \[
  (2\varepsilon_{\rm SS},\delta_{\rm SS})
  =(\varepsilon/4,\delta/2)
  \]
  at the one-list adjacency interface. Raw-record-to-one-list adjacency is
  not supplied by Lyu's lemma and is not claimed in this step.

### Lyu Algorithm 2 and Lemma 3.2, `algo: abovethreshold` and
`lemma: privacy of abovethreshold`

- Source statement: For sensitivity-one adaptive queries, the source
  AboveThreshold process compares each query plus an independent
  \(\operatorname{Lap}(1/\eta)\) variable with its threshold. Its privacy
  cost with at most \(K\) reported crossings is
  \[
  \left(
  \eta\,O\!\left(\sqrt{K\log(1/\delta_a)}
       +\log(1/\delta_a)\right),\delta_a
  \right).
  \tag{ATPrivacy}
  \]
  The source also permits exchanging the roles of Above and Below and permits
  interleaving with other private mechanisms through concurrent composition.
- Current objects: The current process is stopped at its first Above report,
  so it is a stopped \(K=1\) instance, run over at most \(d+1\) stage-score
  queries with threshold \(k/2\). Fix a universal \(c_{\rm AT}\ge1\) that
  upper-bounds the implicit source constant in (ATPrivacy) for \(K=1\).
- Assumption discharge and conclusion used: With
  \(\delta_a=\delta_{\rm AT}=\delta/2\) and
  \(g_\delta=\log(4/\delta)\ge\log(1/\delta_a)\), the choice
  \[
  \eta=\frac{\varepsilon}
  {4c_{\rm AT}(\sqrt{g_\delta}+g_\delta)}
  \]
  makes the source-side cost at most
  \((\varepsilon/4,\delta/2)\), conditional on the later proof that the
  current queries have sensitivity one. This step reserves the allocation;
  it does not assume query sensitivity or infer raw-input privacy.

No other external result is used. In particular, the positive-branch
dimension inequalities and every scalar bound below are proved directly.

## Local Derivation

### unit_001: proposition

**Proposition (Exact zero-dimensional law).**
\(\label{prop:step-001-zero}\)
Under Assumption~\ref{assump:finite-littlestone}, if \(d=0\), then \(C\)
and \(\bar C\) are singletons. With \(N=0\), the law that releases their
unique quotient concept is a Markov kernel into \((H_C,\mathcal H_C)\), is
\((0,0)\)-DP for replace-one raw adjacency, and has population binary error
zero for every probability measure \(D\) and every \(c\in C\).

**Proof.** Suppose two concepts \(c,c'\in C\) were distinct. There would be
an \(x\in X\) with \(c(x)\ne c'(x)\). A depth-one Littlestone tree whose
root is labeled by \(x\) would then have both binary branches realized by
members of \(C\), which would imply \(\operatorname{LD}(C)\ge1\). Thus
\(d=0\) forces every member of the nonempty set \(C\) to be the same
function; hence \(C=\{c_0\}\) and \(\bar C=\{\bar c_0\}\).

The input space \(Z_X^0\) consists of the single empty data set. Define
\(A_0(\varnothing,E)=\mathbf1\{\bar c_0\in E\}\) for
\(E\in\mathcal H_C\). This is the Dirac probability measure at
\(\bar c_0\), and every coordinate of a kernel on a singleton input is
measurable. The only replace-one comparison at sample size zero compares the
empty input with itself, so the two output laws are identical and the kernel
is \((0,0)\)-DP, hence also \((\varepsilon,\delta)\)-DP for every allowed
positive \((\varepsilon,\delta)\). Finally,
\[
\operatorname{Dec}_C(\bar c_0)(x)
=\bar c_0(\kappa(x))=c_0(x)
\quad\text{for every }x\in X,
\]
so the error is identically zero and the event that it exceeds \(\alpha\)
has probability zero, uniformly in \(D\). No positive-branch parameter,
source mechanism, failure event, or small-\(\delta\) schedule is activated.
\(\square\)

### unit_006: lemma

**Lemma (Quotient restrictions inherit the raw Littlestone bound).**
\(\label{lem:step-001-quotient-ld}\)
Under Assumption~\ref{assump:finite-littlestone}, if \(d\ge1\), then every
hypothesis class \(\mathcal H\subseteq\bar C\), including the empty class,
satisfies
\[
\operatorname{LD}(\mathcal H)\le d.
\tag{QuotientLDBound}
\]
In particular, every source restriction \(H_i^r\subseteq\bar C\) formed by
the positive-dimensional pointwise quotient procedure satisfies the class-
dimension premise in Lyu Definition 4.2.

**Proof.** The empty class shatters no positive-depth Littlestone tree, so
under either standard empty-class dimension convention its dimension is
strictly less than one and hence at most \(d\). Now let
\(\mathcal H\ne\varnothing\), let \(s\ge1\), and suppose a
finite depth-\(s\) Littlestone tree \(T_Q\), whose nodes are labeled in
\(Q_C\), is shattered by \(\mathcal H\). Index a node at depth \(j-1\) by
the preceding edge string \(b_{<j}\in\{0,1\}^{j-1}\), and write its label
as \(q_{b_{<j}}\).

For each of the finitely many node occurrences, choose an arbitrary
representative
\[
x_{b_{<j}}\in\kappa^{-1}(\{q_{b_{<j}}\}).
\]
Every such fiber is nonempty because \(\kappa\) is the quotient map. Replace
the label of each node occurrence by its chosen representative, leaving the
tree and all edge labels unchanged; call the resulting \(X\)-labeled tree
\(T_X\). This uses only finitely many existential choices and does not
define a selector or a measurable object.

Fix an arbitrary path \(b=(b_1,\ldots,b_s)\in\{0,1\}^s\). Since \(T_Q\)
is shattered, there is \(\bar h_b\in\mathcal H\) such that
\[
\bar h_b(q_{b_{<j}})=b_j\qquad(1\le j\le s).
\tag{6.1}
\]
Because \(\mathcal H\subseteq\bar C\), choose \(c_b\in C\) with
\(\bar c_b=\bar h_b\). The quotient factorization in the definition of
\(\bar c_b\) gives, at every node on the path,
\[
c_b(x_{b_{<j}})
=\bar c_b(\kappa(x_{b_{<j}}))
=\bar h_b(q_{b_{<j}})
=b_j.
\tag{6.2}
\]
Thus \(c_b\) realizes path \(b\) in \(T_X\). Since \(b\) was arbitrary,
\(C\) shatters \(T_X\), so \(s\le\operatorname{LD}(C)=d\).

Repeated quotient labels and representative collisions cause no loss in
this pullback. If two node occurrences have the same quotient label, their
chosen representatives may coincide or may be different points of the same
fiber; by the definition of \(\equiv_C\), every \(c\in C\) is constant on
that entire fiber, so (6.2) is unchanged. Moreover, if the same quotient
label occurs twice on one path, a conflicting pair of edge labels could not
be realized by any function on \(Q_C\), and hence could not occur on a path
of the shattered tree \(T_Q\). Representatives of distinct quotient labels
cannot collide because a point has a unique \(\kappa\)-image. Therefore the
argument permits arbitrary fibers, repeated labels, and all possible
representative coincidences. Since every finite shattered depth \(s\) is at
most \(d\), (QuotientLDBound) follows. \(\square\)

### unit_002: lemma

**Lemma (Legal positive-branch dictionary and source calibration).**
\(\label{lem:step-001-calibration}\)
Under Assumptions~\ref{assump:finite-littlestone}
and~\ref{assump:approximate-dp-regime} and
Lemma~\ref{lem:step-001-quotient-ld}, if \(d\ge1\), then
\(1\le v\le d\). For every integer \(t\ge2\), all of the following
quantities are finite and lie in their displayed domains:
\[
\gamma:=\alpha/16,
\qquad
\beta_{\rm tr}=\beta_{\rm AT}=\beta_{\rm SS}=\beta_{\rm gen}:=\beta/4,
\qquad
\delta_{\rm AT}=\delta_{\rm SS}:=\delta/2,
\tag{2.1}
\]
\[
g_\delta:=\log(4/\delta),
\qquad
\eta:=\frac{\varepsilon}
{4c_{\rm AT}(\sqrt{g_\delta}+g_\delta)},
\qquad
\varepsilon_{\rm SS}:=\varepsilon/8,
\tag{2.2}
\]
\[
a(t):=v+\log(4t/\beta),
\qquad
Q(t):=e+\frac{etd^2a(t)}{\alpha v},
\tag{2.3}
\]
\[
m(t):=\left\lceil
C_{\rm blk}\frac{d^2}{\alpha}a(t)\log Q(t)
\right\rceil,
\qquad n(t):=tm(t),
\qquad p_r(t):=2^rn(t)d\quad(0\le r\le d),
\tag{2.4}
\]
\[
L(t):=p_d(t)^d2^{d^2},
\qquad
B(t):=\left\lceil
\frac{10\log(L(t)/\delta_{\rm SS})}{\varepsilon_{\rm SS}}
\right\rceil,
\tag{2.5}
\]
\[
\tau_{\rm AT}:=\eta^{-1}
\log((d+1)/\beta_{\rm AT}),
\qquad
\tau_{\rm SS}(t):=\varepsilon_{\rm SS}^{-1}
\log((tL(t)+1)/\beta_{\rm SS}).
\tag{2.6}
\]
For every \(0\le r\le d\) and \(1\le i\le t\), if
\(H_i^r\subseteq\bar C\) is nonempty, then
\(p_r(t),d\in\mathbb N\) and
\(\operatorname{LD}(H_i^r)\le d\). Consequently, if
\(\mathcal L_i^r\) is exactly an ordering without repetition of all Lyu
\((p_r(t),d)\)-essential hypotheses of \(H_i^r\), then
\[
|\mathcal L_i^r|
\le p_r(t)^d2^{d^2}
\le p_d(t)^d2^{d^2}
=L(t).
\tag{ListCap}
\]
If \(H_i^r=\varnothing\), define \(\mathcal L_i^r:=\varnothing\), and
(ListCap) still holds. Conditional on each stage input list being one of
these exact source-valid lists or a totalized empty-restriction list, the
exact Sparse Sample threshold, the
\((\varepsilon/4,\delta/2)\) Sparse Sample allocation, and the
\((\varepsilon/4,\delta/2)\) conditional AboveThreshold allocation all hold
with the current quotient objects and source conventions. The deterministic
confidence calibrations satisfy
\[
(d+1)e^{-\eta\tau_{\rm AT}}=\beta_{\rm AT},
\qquad
(tL(t)+1)e^{-\varepsilon_{\rm SS}\tau_{\rm SS}(t)}=\beta_{\rm SS}.
\tag{2.7}
\]

**Proof.** A VC-shattered set of size \(s\) yields a complete depth-\(s\)
Littlestone tree by querying those \(s\) points in one fixed order; every
binary root-to-leaf labeling is realized because the set is VC-shattered.
Thus \(v\le d\). Conversely, \(d\ge1\) supplies a shattered depth-one tree,
so two concepts give opposite labels at its root and that singleton is
VC-shattered. Hence \(v\ge1\).

The parameter ranges give \(g_\delta>\log4>1\), \(\eta>0\),
\(\varepsilon_{\rm SS}>0\), \(a(t)>0\), and \(Q(t)>e\). Therefore
\(m(t),n(t),p_r(t),L(t)\) are positive integers, \(B(t)\) is a nonnegative
integer, and both tolerances in (2.6) are finite and positive. Equation
(QuotientLDBound) gives
\(\operatorname{LD}(H_i^r)\le d\) for every nonempty
\(H_i^r\subseteq\bar C\). Together with the positive integrality of
\(p_r(t)\) and \(d\), this discharges all hypotheses of Lyu Definition 4.2
and Corollary 4.1. Thus an exact essential list obeys the first inequality
in (ListCap); the second follows from \(r\le d\), hence
\(p_r(t)\le p_d(t)\). A totalized empty-restriction list has cardinality zero
and obeys the same bound without invoking the source corollary.

The definition of \(B(t)\) is at least Lyu's exact threshold for every such
exact or totalized-empty list, including when its unrounded value is an
integer, so the checked list-level privacy cost is
\((2\varepsilon_{\rm SS},\delta_{\rm SS})
=(\varepsilon/4,\delta/2)\). The checked \(K=1\) AboveThreshold statement
and \(g_\delta\ge\log(2/\delta)=\log(1/\delta_{\rm AT})\) give its stated
conditional allocation. Finally, (2.7) follows by substituting (2.6); no
probabilistic event is assumed in this algebra. \(\square\)

### unit_003: lemma

**Lemma (Ceiling-aware candidate envelope).**
\(\label{lem:step-001-envelope}\)
Under Assumptions~\ref{assump:finite-littlestone}
and~\ref{assump:approximate-dp-regime}, suppose \(d\ge1\), and use the
dictionary of Lemma~\ref{lem:step-001-calibration}. Define
\[
\ell:=\log\frac{64}{\delta\beta},
\qquad
R_T:=\frac{d^2\ell\Lambda^2}{\varepsilon},
\qquad
A_{\log}:=80+\log(1+C_{\rm blk}),
\tag{3.1}
\]
and, for a universal scalar \(C\ge1\),
\[
u_C:=1+\log C,
\qquad t_C:=\lceil CR_T\rceil.
\tag{3.2}
\]
Then
\[
\begin{aligned}
\log t_C&\le A_{\log}u_C\Lambda,&
\log Q(t_C)&\le A_{\log}u_C\Lambda,\\
\log m(t_C)&\le A_{\log}u_C\Lambda,&
\log n(t_C)&\le A_{\log}u_C\Lambda,\\
\log L(t_C)&\le A_{\log}u_Cd^2\Lambda.
\end{aligned}
\tag{3.3}
\]
If
\[
A_{\rm def}:=256(A_{\log}+c_{\rm AT}+1),
\tag{3.4}
\]
then the entire defect opposing the teacher score obeys
\[
\tau_{\rm AT}+B(t_C)+\tau_{\rm SS}(t_C)
\le A_{\rm def}u_CR_T.
\tag{3.5}
\]

**Proof.** First, \(\ell>\log256>5\), \(\Lambda\ge1\), and
\(R_T>5\). The definition of \(\Lambda\) gives
\[
\log d,\ \log v,\ \log(1/\alpha),\ \log(1/\beta),\
\log(1/\varepsilon)\le\Lambda.
\tag{3.6}
\]
It also gives
\(\log(e/\delta)\le e^\Lambda\). Consequently
\[
\ell
=\log64+\log(1/\delta)+\log(1/\beta)
\le 7e^\Lambda,
\qquad
\log\ell\le3\Lambda.
\tag{3.7}
\]
Here the last inequality uses \(\Lambda\ge1\). Therefore
\[
\log R_T
=2\log d+\log\ell+2\log\Lambda+\log(1/\varepsilon)
\le8\Lambda.
\tag{3.8}
\]

Because \(CR_T\ge1\), the ceiling in (3.2) gives
\(CR_T\le t_C\le2CR_T\), not an asymptotic replacement. Hence
\[
\log t_C\le\log2+\log C+\log R_T\le9u_C\Lambda.
\tag{3.9}
\]
Using \(1\le v\le d\), (3.6), and (3.9),
\[
\log(4t_C/\beta)\le12u_C\Lambda,
\qquad
\log a(t_C)\le6u_C\Lambda.
\tag{3.10}
\]
For the second inequality, use
\(\log(x+y)\le\log2+\max\{\log x,\log y\}\), followed by
\(\log u_C\le u_C\) and \(\log\Lambda\le\Lambda\).

Writing \(x=t_Cd^2a(t_C)/(\alpha v)>0\),
\(Q(t_C)=e(1+x)\) and
\(\log(1+x)\le\log2+\max\{0,\log x\}\). Equations (3.6), (3.9),
and (3.10) give
\[
1\le\log Q(t_C)\le20u_C\Lambda.
\tag{3.11}
\]
The unrounded block expression
\(d^2\alpha^{-1}a(t_C)\log Q(t_C)\) is greater than one. Therefore the
ceiling is retained through
\[
m(t_C)
\le(1+C_{\rm blk})d^2\alpha^{-1}a(t_C)\log Q(t_C).
\]
Taking logarithms and using
\(\log\log Q(t_C)\le\log Q(t_C)\) yields
\[
\log m(t_C)
\le(29+\log(1+C_{\rm blk}))u_C\Lambda.
\tag{3.12}
\]
Combining (3.9) and (3.12) bounds \(\log n(t_C)\) by
\((38+\log(1+C_{\rm blk}))u_C\Lambda\). Finally, the exact list formula,
with no ceiling or power suppressed, is
\[
\begin{aligned}
\log L(t_C)
&=d\log(2^dn(t_C)d)+d^2\log2\\
&=2d^2\log2+d\log n(t_C)+d\log d\\
&\le(41+\log(1+C_{\rm blk}))u_Cd^2\Lambda.
\end{aligned}
\tag{3.13}
\]
The definition of \(A_{\log}\) makes every inequality in (3.3) follow
from (3.9), (3.11), (3.12), and (3.13).

It remains to bound the three teacher defects. Since
\(\varepsilon_{\rm SS}=\varepsilon/8\) and
\(\delta_{\rm SS}=\delta/2\), the retained ceiling gives
\[
\begin{aligned}
B(t_C)
&\le1+\frac{80}{\varepsilon}
   \left(\log L(t_C)+\log(2/\delta)\right)\\
&\le161A_{\log}u_CR_T,
\end{aligned}
\tag{3.14}
\]
where \(\log(2/\delta)\le\ell\) and each displayed summand, including the
ceiling remainder \(1\), is bounded by its corresponding multiple of
\(R_T=d^2\ell\Lambda^2/\varepsilon\).

Because \(t_CL(t_C)\ge2\),
\[
\begin{aligned}
\tau_{\rm SS}(t_C)
&\le\frac8\varepsilon
 \left(\log(8/\beta)+\log t_C+\log L(t_C)\right)\\
&\le24A_{\log}u_CR_T.
\end{aligned}
\tag{3.15}
\]
For AboveThreshold, \(g_\delta>1\), so
\(\sqrt{g_\delta}+g_\delta\le2g_\delta\le2\ell\), while
\[
\log(4(d+1)/\beta)
\le\log4+\log(d+1)+\log(1/\beta)\le4\Lambda.
\]
Thus
\[
\tau_{\rm AT}
\le\frac{32c_{\rm AT}\ell\Lambda}{\varepsilon}
\le32c_{\rm AT}R_T.
\tag{3.16}
\]
Summing (3.14)-(3.16) and using (3.4) proves (3.5). Notice that the
candidate tuple was fully defined before any feasibility statement was
used; this is the noncircular part of the argument. \(\square\)

### unit_004: proposition

**Proposition (Finite public teacher witness and least feasible count).**
\(\label{prop:step-001-teacher}\)
Under Assumptions~\ref{assump:finite-littlestone}
and~\ref{assump:approximate-dp-regime}, suppose \(d\ge1\). With
\(A_{\log}\) and \(A_{\rm def}\) from
Lemma~\ref{lem:step-001-envelope}, fix the concrete finite universal
constant
\[
C_{\rm teach}:=2^{12}A_{\rm def}^2
\tag{4.1}
\]
and define
\[
\bar k:=\left\lceil
C_{\rm teach}
\frac{d^2\log(64/(\delta\beta))\Lambda^2}{\varepsilon}
\right\rceil.
\tag{4.2}
\]
Then \(\bar k\ge2\) and
\[
\frac{\bar k}{2}-\tau_{\rm AT}
\ge B(\bar k)+\tau_{\rm SS}(\bar k)+2.
\tag{4.3}
\]
Consequently the exact least feasible teacher count
\[
k:=\min\left\{t\in\mathbb Z:t\ge2,\quad
\frac t2-\tau_{\rm AT}
\ge B(t)+\tau_{\rm SS}(t)+2\right\}
\tag{4.4}
\]
exists and satisfies
\[
2\le k\le\bar k
\le2C_{\rm teach}
\frac{d^2\log(64/(\delta\beta))\Lambda^2}{\varepsilon}.
\tag{4.5}
\]
After this deterministic minimization, define exactly
\[
m:=m(k),\qquad n_0:=km(k),\qquad N:=n_0,
\qquad p_r:=2^rn_0d\ (0\le r\le d),
\tag{4.6}
\]
\[
L:=p_d^d2^{d^2}=L(k),qquad B:=B(k),
\qquad \tau_{\rm SS}:=\tau_{\rm SS}(k).
\tag{4.7}
\]
These are finite public quantities, all integer ceilings from (2.4), (2.5),
and (4.2) are retained, and
\[
p_0=n_0d\ge\max\{n_0,d+1\}.
\tag{4.8}
\]

**Proof.** Put \(C=C_{\rm teach}\) in
Lemma~\ref{lem:step-001-envelope}. Since \(A_{\rm def}\ge1\),
\[
1+\log C_{\rm teach}
=1+12\log2+2\log A_{\rm def}
\le15A_{\rm def}.
\]
Therefore
\[
A_{\rm def}(1+\log C_{\rm teach})
\le15A_{\rm def}^2
\le\frac{C_{\rm teach}}4.
\tag{4.9}
\]
Equations (3.5) and (4.9) imply
\[
\tau_{\rm AT}+B(\bar k)+\tau_{\rm SS}(\bar k)
\le\frac{C_{\rm teach}R_T}{4}.
\tag{4.10}
\]
Also \(C_{\rm teach}R_T/4>2\), while
\(\bar k/2\ge C_{\rm teach}R_T/2\). Thus
\[
\frac{\bar k}{2}
\ge\tau_{\rm AT}+B(\bar k)+\tau_{\rm SS}(\bar k)+2,
\]
which is (4.3). The feasible set in (4.4) is a nonempty subset of the
integers bounded below by two, so its least element exists and is no larger
than \(\bar k\). Since \(C_{\rm teach}R_T\ge1\), the ceiling in (4.2) gives
\(\bar k\le C_{\rm teach}R_T+1\le2C_{\rm teach}R_T\), proving (4.5).

All objects in (4.6)-(4.7) are now evaluated at a fixed public integer
\(k\); there is no remaining equation in which \(k\) is defined using a
quantity that itself awaits the choice of \(k\). Finally, \(n_0\ge k\ge2\)
and \(d\ge1\), so \(p_0=n_0d\ge n_0\). Also
\(n_0d\ge2d\ge d+1\), proving (4.8). \(\square\)

### unit_005: proposition

**Proposition (Pre-sampling totalization of the quotient procedure).**
\(\label{prop:step-001-totalization}\)
Under Assumptions~\ref{assump:finite-littlestone}
and~\ref{assump:approximate-dp-regime},
Lemma~\ref{lem:step-001-calibration}, and
Proposition~\ref{prop:step-001-teacher}, the positive-dimensional
pointwise quotient procedure can be specified before the master sample,
partition, source events, or mechanism coins are drawn so that it returns an
element of \(H_C\) on every labeled quotient input and every internal path.
The completion assigns the empty list to every empty restriction; preserves
every exact source-valid list and successful path; replaces every invalid,
nonfinite, non-\(H_C\), or oversized purported list by the empty list; gives
every remaining source-failure state a defined transcript continuation; and
sends every terminal mechanism-failure, no-success, or residual fallback
path to the setting-defined \(\bar c_0\).

**Proof.** Fix the tuple (2.1)-(2.6), (4.4), and (4.6)-(4.7), the default
\(\bar c_0\), and deterministic tie-breaking conventions once and for all.
For every nonempty restriction on which the source routine supplies valid
objects, fix one optimal decomposition and an ordering without repetition of
its exact essential set. By (ListCap), every such exact list is finite, lies
in \(H_C\), and has cardinality at most \(L\); hence the cap and finiteness
checks below never change it, whether that exact list is empty or nonempty.
Every empty restriction is assigned the empty list directly. Identical local
states are assigned identical choices. This is a pointwise definition only.
Its measurable-kernel realization on the countable quotient input is the
target of `step_003`, not an assumption or conclusion here.

For a totalized list tuple at stage \(r\), define its occurrence score by
\[
q_r:=
\begin{cases}
\displaystyle\max_{\bar h\in\cup_{i=1}^k\mathcal L_i^r}
|\{i:\bar h\in\mathcal L_i^r\}|,
&\bigcup_{i=1}^k\mathcal L_i^r\ne\varnothing,\\[4pt]
0,&\bigcup_{i=1}^k\mathcal L_i^r=\varnothing.
\end{cases}
\tag{5.1}
\]
Feed \(q_0,\ldots,q_d\), in order, to one stopped source
AboveThreshold process with threshold \(k/2\), noise scale \(1/\eta\), and
the fixed first-success rule. At the first legal Above stage \(r_*\), invoke
the exact law (SparseLaw) on
\((\mathcal L_1^{r_*},\ldots,\mathcal L_k^{r_*})\) with parameters
\((\varepsilon_{\rm SS},B)\). If it returns an actual union item, return
that item; otherwise use the terminal convention below.

Complete the procedure by the following fixed table.

| Partial or failed path | Totalized action |
| --- | --- |
| A stage restriction is empty. | Its essential list is defined to be \(\varnothing\). |
| A source decomposition/list routine is undefined, returns no exact source-valid object, or fails a declared validity check. | Record an internal source-failure token and use the empty list at that local coordinate. |
| A purported list is invalid, nonfinite, contains an object outside \(H_C\), or has cardinality greater than \(L\). | Treat it as a source failure and use the empty list. Exact source-valid lists are finite \(H_C\)-lists satisfying (ListCap), so this sanitization never changes them. |
| All lists at a stage are empty. | Define the maximum occurrence score to be \(0\) and continue the fixed stage transcript. |
| AboveThreshold reports no Above outcome in stages \(0,\ldots,d\), its transcript is invalid, or it names no legal stage. | Output \(\bar c_0\). |
| A legal stage is named and Sparse Sample returns an actual \(\bar h\in\bigcup_i\mathcal L_i^r\). | Output that same \(\bar h\in H_C\). |
| Sparse Sample returns \(\perp\), returns outside its declared support, has no valid normalization, or any remaining mechanism operation fails. | Output \(\bar c_0\). |
| Any path reaches stage exhaustion or an otherwise unclassified terminal state. | Output \(\bar c_0\). |

For finite capped lists, (SparseLaw) in fact always has a positive finite
normalizer because the \(\perp\) weight is positive; its listed failure
completion is included to make the pointwise program total independently of
that later path verification. On an exact source-valid path, every nonempty
restriction's exact list satisfies (ListCap), every empty restriction already
has the prescribed empty list, AboveThreshold names a legal stage, and Sparse
Sample returns an actual union item. Thus neither the finite/cap sanitizer nor
any fallback changes that path. Conversely, any invalid, nonfinite,
non-\(H_C\), or oversized purported list is totalized to the empty list, so
it cannot leave the pointwise procedure undefined.

The partition rule is also fixed before data: after the complete quotient
master sample is obtained, draw one data-independent uniform partition into
the \(k\) indexed blocks of size \(m\), and reuse that same partition at all
\(d+1\) stages. The table itself, all tie breaking, all thresholds, and the
fallback output are fixed before this draw. Thus no good event, realizability
condition, mechanism-success event, privacy conclusion, PAC conclusion, or
event-dependent choice is used to define the law. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-001-zero} proves the complete \(d=0\) branch:
the exact sample size is zero, the output is the unique quotient concept,
the kernel is deterministic, privacy is \((0,0)\), and the uniform PAC
failure probability is zero.

On the \(d\ge1\) branch,
Lemma~\ref{lem:step-001-quotient-ld} pulls every finite quotient
Littlestone tree back to \(X\) and proves
\(\operatorname{LD}(H_i^r)\le d\) for every current restriction, including
all repeated-label and arbitrary-fiber cases. With that exact class premise
available, Lemma~\ref{lem:step-001-calibration} proves \(1\le v\le d\),
defines every confidence, privacy, block, list, failure, and mechanism
tolerance for each candidate integer \(t\ge2\), and checks the exact Lyu
essential-list cap and Sparse Sample formulas in the current quotient
conventions. Lemma~\ref{lem:step-001-envelope} retains both ceilings and
proves a finite logarithmic envelope for the complete coupled tuple before
assuming a feasible teacher. Proposition~\ref{prop:step-001-teacher} then
gives the concrete finite public witness (4.2), proves its margin, takes the
least feasible integer only after nonemptiness is known, fixes
\((k,m,n_0,N,p_r,L,B)\), and exports the explicit bound (4.5), whose leading
teacher dependence is \(d^2/\varepsilon\). Finally,
Proposition~\ref{prop:step-001-totalization} fixes every empty,
source-failure, mechanism-failure, no-success, and fallback outcome before
any random event while preserving all exact source-valid paths.

These six results prove exactly the target row. They do not claim the later
quotient measurability, raw one-record/one-list adjacency, positive-branch
mechanism-good event, raw \((\varepsilon,\delta)\)-DP theorem, or positive-
branch PAC theorem.

## Explicit Rate Audit

- Exposed variables: \(d,v,\alpha,\beta,\varepsilon,\delta\). The teacher
  bound is
  \[
  k\le2C_{\rm teach}
  \frac{d^2\log(64/(\delta\beta))\Lambda^2}{\varepsilon}.
  \]
- Hidden constants may depend on: Only the fixed universal block constant
  \(C_{\rm blk}\) and the universal source constant \(c_{\rm AT}\); the
  displayed definitions of \(A_{\log},A_{\rm def},C_{\rm teach}\) make this
  dependence explicit. Because both source constants are universal, all
  resulting constants are universal.
- Hidden constants may not depend on: \(X,\Sigma,C,D,c,|C|\), \(d,v\), any
  learning/privacy/confidence parameter, a sample, partition, restriction,
  decomposition, list, event, transcript, output, or generated support set.
- Fixed quantities: None for finite-parameter validity. In particular, the
  construction and (4.5) hold for every fixed \(0<\delta<1\).
- Probability mode: Parameter feasibility and totalization are deterministic.
  The four confidence shares sum exactly to \(\beta\). The \(d=0\) PAC
  statement is deterministic and uniform over \(D,c\). Positive-branch
  confidence events are not asserted in this step.
- Horizon mode: Fixed-sample. It is \(N=0\) for \(d=0\), and the exact
  positive-branch horizon is \(N=n_0=km(k)\).
- Norm mode: Population binary zero-one error for the exact \(d=0\) branch.
  No positive-branch risk estimate is made here.
- Admissibility conditions and auxiliary tolerances: Exactly
  \(0<\alpha,\beta<1/4\), \(0<\varepsilon\le1\), \(0<\delta<1\), and, on
  the positive branch, \(d\ge1\), \(1\le v\le d\), \(t\ge2\), with
  \(\gamma,\beta_* ,\delta_*,\eta,\varepsilon_{\rm SS},\tau_{\rm AT}\),
  and \(\tau_{\rm SS}\) exactly as in (2.1)-(2.6).
- Term absorption or simplification inequalities: Equations (3.3),
  (3.5), (4.9), and (4.10) give the full ceiling-aware domination. The only
  final ceiling simplification is the proved inequality
  \(\lceil C_{\rm teach}R_T\rceil\le2C_{\rm teach}R_T\), valid because
  \(C_{\rm teach}R_T\ge1\).
- Probability conversion: The reserved confidence shares satisfy
  \(\beta_{\rm tr}+\beta_{\rm AT}+\beta_{\rm SS}+\beta_{\rm gen}=\beta\).
  The source-side privacy reservations are
  \((\varepsilon/4,\delta/2)\) for AboveThreshold, conditional on later
  sensitivity discharge, and \((\varepsilon/4,\delta/2)\) for Sparse
  Sample at one-list adjacency. Their raw-input composition is deliberately
  deferred.
- Contribution to any Rate Specialization Bridge: This step exports the
  exact teacher inequality and the first public bound needed by `step_014`.
  It does not multiply by the block size or state the final
  \(R_{\rm VC}\) rate.
- Baseline-reduction check: At \(d=0\), the positive formula is bypassed and
  the original exact no-data, zero-error, \((0,0)\)-DP conclusion is
  recovered, not weakened to a remainder. At \(d\ge1\), all finite-parameter
  statements allow arbitrary \(0<\delta<1\). The additional condition
  \(N\delta\to0\) belongs only to the later asymptotic source-facing
  comparison and is neither assumed nor claimed here. The \(v=d\)
  specialization changes none of the teacher construction; the final
  \(d^5\) sample-scale comparison is a later multiplication/rate obligation.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined, public-facing objects: \(d,v,\alpha,\beta,\varepsilon,
  \delta,\Lambda,Q_C,H_C,\bar C,\bar c_0\), and the decoder are copied from
  `setting.md` without changed meaning.
- Public-facing objects defined in this step: \(\gamma\), the four
  \(\beta\)-shares, the two \(\delta\)-shares, \(g_\delta,\eta,
  \varepsilon_{\rm SS}\), the candidate functions
  \(a(t),Q(t),m(t),n(t),p_r(t),L(t),B(t),\tau_{\rm SS}(t)\), the fixed
  \(\tau_{\rm AT}\), the witness \(\bar k\), the least feasible \(k\),
  and the realized tuple \(m,n_0,N,p_r,L,B\). Each is a direct expression
  in primitive setting quantities and checked universal source constants.
- Appendix-local objects: \(\ell=\log(64/(\delta\beta))\),
  \(R_T=d^2\ell\Lambda^2/\varepsilon\), and
  \(C_{\rm teach}\). They package the public witness proof and teacher
  envelope; downstream statements need only (4.4)-(4.7). The structural
  bound (QuotientLDBound) is also appendix-local: it certifies Lyu's class
  premise but does not export a new main-theorem assumption.
- Pulled-back-tree provenance: For a universally quantified finite quotient
  tree \(T_Q\), the tree \(T_X\) and the representatives
  \(x_{b_{<j}}\in\kappa^{-1}(\{q_{b_{<j}}\})\) in
  Lemma~\ref{lem:step-001-quotient-ld} are proof-local witnesses. Only
  finitely many representatives are chosen, arbitrarily and independently
  of any data. They define no global section of \(\kappa\), measurable
  selector, learner state, or generated event. Repeated quotient labels may
  use coincident or different same-fiber representatives; fiber constancy of
  every \(c\in C\) makes all such choices equivalent, while distinct fibers
  cannot share a representative.
- Proof-local objects: \(u_C,A_{\log},A_{\rm def}\), the generic candidate
  \(t_C\), the internal source-failure token, and the totalization table.
  They are not exported as theorem assumptions or generated invariants.
- Constant provenance: \(C_{\rm blk}>0\) is the fixed universal block
  constant in the setting. The universal \(c_{\rm AT}\ge1\) is chosen from
  the checked implicit constant in Lyu Lemma 3.2 for the stopped \(K=1\)
  source process. Then \(A_{\log},A_{\rm def},C_{\rm teach}\) are explicit
  formulas in those two universal constants. No bounded constant is chosen
  after seeing data or after observing an event.
- Assumption provenance: The singleton conclusion, positive-branch
  dimension range, quotient-restriction Littlestone bound, conditional exact
  essential-list cap, scalar feasibility, and totalization are proved in
  this step from the two named primitive assumptions and the checked source
  statement. Source-valid list existence and exact identity,
  sensitivity-one queries, raw one-list locality, good events, actual
  mechanism success, measurable kernels, DP, and PAC utility are generated
  objects for later steps and are not primitive conditions here.
- Output and mode boundary: The total pointwise procedure always outputs in
  \(H_C\) and may be improper. Only the \(d=0\) branch receives a completed
  raw-kernel/DP/PAC proof in this step. The positive branch receives exact
  source-side list and privacy calibrations, not a completed raw privacy or
  PAC conclusion.
- Global diagnostic boundary: The accepted optional pair was checked at
  SHA-256
  `bbb47a7e0753c47fc073d71b9e8e5b0a74d40d79aad7e22c1e8d7bf44c687784`
  (`global_proof.md`) and
  `490e6b89ecd229a41dac2b24c82bb277cbacfd66acff00f4f5c82fc58ac7cf09`
  (`global_proof_review.md`), whose review status is `ACCEPTED`. Its
  step-relevant diagnostic suggestion was to bound a fully defined candidate
  tuple before taking the least feasible teacher. That suggestion was used
  only for planning. Every inequality above was derived locally and every
  external statement was checked in the frozen Lyu source; the diagnostic
  was not used as evidence, a cited result, an assumption source, or
  authority to alter the target claim.
