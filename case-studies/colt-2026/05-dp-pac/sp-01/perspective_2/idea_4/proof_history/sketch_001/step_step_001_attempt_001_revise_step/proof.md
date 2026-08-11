# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

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
| `unit_002` | lemma | Under Assumptions~\ref{assump:finite-littlestone} and~\ref{assump:approximate-dp-regime}, if \(d\ge1\), then \(1\le v\le d\), every scalar in the positive-branch candidate dictionary is well-defined for every integer \(t\ge2\), Lyu's essential-list formula gives the cap \(L(t)\), and the stated Sparse Sample and AboveThreshold allocations satisfy their exact source-side calibration conditions. | Establishes legality and source-convention compatibility of the full candidate dictionary before choosing \(k\). |
| `unit_003` | lemma | Under Assumptions~\ref{assump:finite-littlestone} and~\ref{assump:approximate-dp-regime}, if \(d\ge1\), then every public candidate \(t_C=\lceil C d^2\ell\Lambda^2/\varepsilon\rceil\), \(C\ge1\), has explicit ceiling-aware logarithmic bounds on \(t_C,m(t_C),n(t_C),Q(t_C),L(t_C)\), and the complete teacher defect is at most \(A_{\rm def}(1+\log C)d^2\ell\Lambda^2/\varepsilon\). | Solves the apparent \(t,m,n,L,B\) circularity by bounding a tuple defined for a candidate \(t\), without assuming feasibility. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:finite-littlestone} and~\ref{assump:approximate-dp-regime}, if \(d\ge1\), then the explicitly defined finite universal \(C_{\rm teach}\) makes \(\bar k=\lceil C_{\rm teach}d^2\ell\Lambda^2/\varepsilon\rceil\) feasible, the least feasible \(k\) exists, and \(2\le k\le\bar k\le2C_{\rm teach}d^2\ell\Lambda^2/\varepsilon\), with the exact teacher margin and all ceilings retained. | Proves noncircular activation and exposes the \(d^2/\varepsilon\) teacher dependence. |
| `unit_005` | proposition | Under Assumptions~\ref{assump:finite-littlestone} and~\ref{assump:approximate-dp-regime} and Proposition~\ref{prop:step-001-teacher}, the quotient procedure can be fixed before sampling so that empty restrictions, source failures, malformed or empty lists, invalid transcripts, no-success exhaustion, the Sparse Sample failure symbol, and every residual mechanism failure have a defined continuation or terminal output; every terminal failure/fallback returns the fixed \(\bar c_0\), while every source-valid successful path is unchanged. | Produces the exact total pointwise procedure consumed downstream, without using a random event or a later theorem conclusion. |

## Cited Result Applications

The source checked for every item in this section is Xin Lyu, *Private
Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1. The checked
official source file is `submission/main.tex`, SHA-256
`b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

### Lyu Corollary 4.1, `coro: essential hypotheses`

- Source statement used: If \(\mathcal H\) is a class,
  \(s=\operatorname{DDim}_{p,d}(\mathcal H)\), and a function is called
  \((p,d)\)-essential exactly when it occurs as an SOA hypothesis at an
  \(s\)-dimensional leaf of every optimal \((p,d)\)-decomposition, then
  there are at most
  \[
  p^d2^{d^2}
  \]
  \((p,d)\)-essential hypotheses. Corollary 4.1 has three additional items
  (inheritance at equal decomposition dimension, existence when the
  \((2p,d)\) and \((p,d)\) dimensions agree, and exact support at dimension
  zero); none of those additional items is used in this step.
- Current objects: At a later source stage \(r\), a nonempty quotient
  restriction \(H_i^r\subseteq\bar C\) is the source class, and
  \(p=p_r(t):=2^rn(t)d\). Its set of actual quotient-function essential
  hypotheses is denoted \(\mathcal L_i^r\subseteq H_C\).
- Assumption discharge: For \(d\ge1\), \(p_r(t)\) is a positive integer and
  the source corollary is pointwise in the class and in \(p\). The existence,
  exact identity, and measurability of later lists are not inferred here.
  If the restriction is empty, this step defines its totalized list to be
  empty instead of applying the corollary.
- Conclusion used:
  \[
  |\mathcal L_i^r|
  \le p_r(t)^d2^{d^2}
  \le p_d(t)^d2^{d^2}=:L(t).
  \tag{ListCap}
  \]
  Thus \(L(t)\) is a valid common cap whenever the downstream source-valid
  lists are constructed; it is not an assumed generated list.

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
- Assumption discharge and conclusion used: Equation (ListCap) supplies the
  size premise on source-valid paths, and
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

### unit_002: lemma

**Lemma (Legal positive-branch dictionary and source calibration).**
\(\label{lem:step-001-calibration}\)
Under Assumptions~\ref{assump:finite-littlestone}
and~\ref{assump:approximate-dp-regime}, if \(d\ge1\), then
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
Moreover, (ListCap), the exact Sparse Sample threshold, the
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
(ListCap) is precisely the checked application of Lyu Corollary 4.1. The
definition of \(B(t)\) is at least Lyu's exact threshold, including when its
unrounded value is an integer, so the checked list-level privacy cost is
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
and~\ref{assump:approximate-dp-regime} and
Proposition~\ref{prop:step-001-teacher}, the positive-dimensional
pointwise quotient procedure can be specified before the master sample,
partition, source events, or mechanism coins are drawn so that it returns an
element of \(H_C\) on every labeled quotient input and every internal path.
The completion preserves every source-valid successful path, gives every
empty or source-failure state a defined list/transcript continuation, and
sends every terminal mechanism-failure, no-success, or residual fallback
path to the setting-defined \(\bar c_0\).

**Proof.** Fix the tuple (2.1)-(2.6), (4.4), and (4.6)-(4.7), the default
\(\bar c_0\), and deterministic tie-breaking conventions once and for all.
For every state on which a partial source routine returns one or more valid
objects, fix one returned object; for a finite essential set, fix an ordering.
Identical local states are assigned identical choices. This is a pointwise
definition only. Its measurable-kernel realization on the countable quotient
input is the target of `step_003`, not an assumption or conclusion here.

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
| A source decomposition/list routine is undefined, returns no source-valid object, or fails a declared validity check. | Record an internal source-failure token and use the empty list at that local coordinate. |
| A purported list is not a finite subset of \(H_C\) or violates the already checked cap \(L\). | Treat it as a source failure and use the empty list. Source-valid lists are unchanged by (ListCap). |
| All lists at a stage are empty. | Define the maximum occurrence score to be \(0\) and continue the fixed stage transcript. |
| AboveThreshold reports no Above outcome in stages \(0,\ldots,d\), its transcript is invalid, or it names no legal stage. | Output \(\bar c_0\). |
| A legal stage is named and Sparse Sample returns an actual \(\bar h\in\bigcup_i\mathcal L_i^r\). | Output that same \(\bar h\in H_C\). |
| Sparse Sample returns \(\perp\), returns outside its declared support, has no valid normalization, or any remaining mechanism operation fails. | Output \(\bar c_0\). |
| Any path reaches stage exhaustion or an otherwise unclassified terminal state. | Output \(\bar c_0\). |

For finite capped lists, (SparseLaw) in fact always has a positive finite
normalizer because the \(\perp\) weight is positive; its listed failure
completion is included to make the pointwise program total independently of
that later path verification. Empty and failed coordinates cannot change a
source-valid successful path, because on such a path every cited routine
returns its prescribed valid object, (ListCap) holds, AboveThreshold names a
legal stage, and Sparse Sample returns an actual union item.

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

On the \(d\ge1\) branch, Lemma~\ref{lem:step-001-calibration} proves
\(1\le v\le d\), defines every confidence, privacy, block, list, failure,
and mechanism tolerance for each candidate integer \(t\ge2\), and checks the
exact Lyu list and Sparse Sample formulas in the current quotient
conventions. Lemma~\ref{lem:step-001-envelope} retains both ceilings and
proves a finite logarithmic envelope for the complete coupled tuple before
assuming a feasible teacher. Proposition~\ref{prop:step-001-teacher} then
gives the concrete finite public witness (4.2), proves its margin, takes the
least feasible integer only after nonemptiness is known, fixes
\((k,m,n_0,N,p_r,L,B)\), and exports the explicit bound (4.5), whose leading
teacher dependence is \(d^2/\varepsilon\). Finally,
Proposition~\ref{prop:step-001-totalization} fixes every empty,
source-failure, mechanism-failure, no-success, and fallback outcome before
any random event while preserving all valid source paths.

These five results prove exactly the target row. They do not claim the later
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
  envelope; downstream statements need only (4.4)-(4.7).
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
  dimension range, scalar feasibility, and totalization are proved in this
  step from the two named primitive assumptions. Source-valid lists,
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
