# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: step_001
- Unit attempt: 1
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted diagnostic SHA-256: dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407
- Accepted diagnostic-review SHA-256: fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710

## Target Step Claim

- Intended claim: Prove the exact \(d=0\) branch; for \(d\ge1\), prove
  \(1\le v\le d\), nonemptiness/minimality of (Teacher),
  (LogClosure)-(MarginBound), \(k\le\bar k\), \(n_0\ge v\), integer
  legality, the fixed allocations, and totality of every
  empty/list/exhaustion/\(\perp\)/default path.
- Depends on: None.
- Assumptions used: Primitive assump:finite-littlestone and
  assump:approximate-dp-regime.
- Technical challenge: Pin the coupled teacher parameter before any consumer
  while preserving the boundary and realizable source path.
- Intended proof tool or cited result: Direct LD/VC facts, deterministic DP,
  Lyu Corollary 4.1's universal finite list envelope, monotone scalar
  inequalities, and the roadmap definitions.
- Output target: Boundary learner, exact teacher/envelope/margin, legal
  parameter dictionary, and total algorithm.
- Rate objective: Close all teacher/list/noise logarithms and fixed internal
  allocations.
- Row-local review status: PENDING. Acceptance of the sketch is supplied by
  the binding proof_sketch_review.md, not by this row-local field.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:finite-littlestone: \(C\subseteq\{0,1\}^X\) is nonempty and
    \(d=\operatorname{LD}(C)<\infty\), with
    \(v=\operatorname{VC}(C)\).
  - assump:approximate-dp-regime:
    \(0<\alpha,\beta<1/4\), \(0<\varepsilon\le1\), and
    \(0<\delta<1\).
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts: None. This is the first step in
  the accepted dependency graph.

The constants \(C_{\rm blk}\ge1\) and \(c_{\rm AT}\ge1\) are the fixed
universal constants already permitted by the accepted sketch. Enlarging
\(C_{\rm blk}\) to at least one is harmless because the setting leaves this
universal calibration constant to be chosen sufficiently large. No
realizability, generated event, list-membership fact, sensitivity fact, or
privacy conclusion is assumed in this step.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumption~\ref{assump:finite-littlestone}, \(d=0\) gives the exact zero-sample singleton learner, while \(d\ge1\) gives \(1\le v\le d\). | Closes the boundary branch and makes every positive-branch denominator legal. |
| unit_002 | lemma | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:approximate-dp-regime}, on the \(d\ge1\) branch all allocations and every candidate scalar in (BL)-(Noise) are finite and legal, the integer-valued candidate maps are monotone, and \(n(t)\ge v\) for every integer \(t\ge2\). | Supplies the fixed allocations, candidate dictionary, ceiling legality, and pre-minimization sample lower bound. |
| unit_003 | lemma | Under Assumptions~\ref{assump:finite-littlestone}, \ref{assump:approximate-dp-regime}, and Lemma~\ref{lem:step-001-candidate-legality}, for \(\bar k_c=\lceil c d^2G\lambda^2/\varepsilon\rceil\) with any fixed universal \(c\ge1\), \(\log\bar k_c\) and \(\log n(\bar k_c)\) are bounded by universal multiples of \((1+\log c)\lambda\), with every ceiling retained. | Proves the ceiling-aware \(n(\bar k)\) part of (LogClosure). |
| unit_004 | lemma | Under Assumptions~\ref{assump:finite-littlestone}, \ref{assump:approximate-dp-regime}, Lemmas~\ref{lem:step-001-candidate-legality}, \ref{lem:step-001-log-closure}, and Lyu Corollary 4.1 Item 1, the exact envelope is \(p^d2^{d^2}\); hence all accepted half-scale stage lists are bounded by \(L(t)=p_d(t)^d2^{d^2}\), and \(\log L(\bar k_c)\le A_1(1+\log c)d^2\lambda\). | Restates and discharges the exact list interface and completes (LogClosure). |
| unit_005 | proposition | Under Assumptions~\ref{assump:finite-littlestone}, \ref{assump:approximate-dp-regime}, and Lemmas~\ref{lem:step-001-log-closure}-\ref{lem:step-001-list-envelope}, the exact losses satisfy \(\tau_{\rm AT}+B(\bar k_c)+\tau_{\rm SS}(\bar k_c)\le A_2(1+\log c)d^2G\lambda^2/\varepsilon\). | Proves (MarginBound), including Lyu Lemma 3.1's exact \(10\log(L/\delta_s)/\varepsilon_s\) threshold and all ceilings. |
| unit_006 | proposition | Under Assumptions~\ref{assump:finite-littlestone}, \ref{assump:approximate-dp-regime}, and Proposition~\ref{prop:step-001-margin}, one universal \(C_{\rm teach}\) makes \(\bar k\) feasible; the feasible set in (Teacher) is nonempty, its least member \(k\) exists, \(2\le k\le\bar k\), all realized parameters are legal integers, and \(n_0\ge v\). | Closes feasible-witness existence, exact minimality, the public envelope, and realized integer legality. |
| unit_007 | proposition | Under Assumptions~\ref{assump:finite-littlestone}, \ref{assump:approximate-dp-regime}, and Proposition~\ref{prop:step-001-teacher-existence}, the accepted half-scale learner is a total map on every labeled input, including empty restrictions/lists, immediate Above, all Below, \(\perp\), exhaustion, and both fallback paths. | Exports the exact legal total algorithm without changing the accepted stage/list interface. |

## Cited Result Applications

### Lyu Corollary 4.1, Item 1: exact numerical list envelope

- Source or name: Xin Lyu, *Private Learning of Littlestone Classes,
  Revisited*, arXiv:2510.00076v1, Definition 4.3 and Corollary 4.1 Item 1.
- Restated statement in current notation: if
  \(\varnothing\ne H\subseteq\{0,1\}^X\) has
  \(\operatorname{LD}(H)\le d\), \(p\in\mathbb N\), and
  \(\operatorname{Ess}_{p,d}(H)\) is the source's set of actual
  \((p,d)\)-essential SOA functions, then
  \[
  \bigl|\operatorname{Ess}_{p,d}(H)\bigr|\le p^d2^{d^2}.
  \tag{C4.1-1}
  \]
  The objects counted are functions on \(X\), not sample-trace
  representatives.
- Instantiated objects: \(H=H_i^r\subseteq C\) and
  \(p=p_r(t)=2^rn(t)d\), for \(r=0,\ldots,d\). The total extension sets the
  list to \(\varnothing\) when \(H_i^r=\varnothing\).
- Required assumptions and discharge: on the positive branch,
  \(d\in\mathbb N\) by
  Proposition~\ref{prop:step-001-boundary-entry};
  \(p_r(t)\) is a positive integer by
  Lemma~\ref{lem:step-001-candidate-legality}; and
  \(H_i^r\subseteq C\) implies
  \(\operatorname{LD}(H_i^r)\le d\). Empty \(H_i^r\) is handled directly
  and has list size zero.
- Conclusion used here: since \(p_r(t)\le p_d(t)\), every stage list has
  size at most \(L(t)=p_d(t)^d2^{d^2}\). No transfer, support, or zero-DDim
  conclusion from Corollary 4.1 Items 2-4 is used in this step.

### Lyu Algorithm 1 and Lemma 3.1: exact Sparse Sample threshold

- Source or name: the same paper, Algorithm 1 and Lemma 3.1.
- Restated statement in current notation: for a tuple of finite lists, each
  of cardinality at most \(L\ge1\), Algorithm 1 with exponent parameter
  \(\varepsilon_s>0\) and integer failure-symbol score \(B\) has output in
  the union of the actual list functions together with \(\perp\). Under
  replacement of one list coordinate, its source privacy conclusion is
  \((2\varepsilon_s,\delta_s)\)-DP provided
  \[
  0<\delta_s<1,
  \qquad
  B\ge \frac{10\log(L/\delta_s)}{\varepsilon_s}.
  \tag{L3.1}
  \]
- Instantiated objects: for every candidate \(t\ge2\),
  \(L=L(t)\), \(\delta_s=\delta_{\rm SS}=\delta/2\),
  \(\varepsilon_s=\varepsilon/8\), and
  \[
  B(t)=\left\lceil
  \frac{10\log(L(t)/\delta_{\rm SS})}{\varepsilon_s}
  \right\rceil.
  \]
- Required assumptions and discharge used here:
  Lemma~\ref{lem:step-001-candidate-legality} gives
  \(L(t)\in\mathbb N\), \(L(t)\ge1\),
  \(0<\delta_{\rm SS}<1\), and \(\varepsilon_s>0\). The ceiling gives the
  exact inequality (L3.1), not an asymptotic substitute. The one-list
  replacement premise is not needed for this scalar construction and no
  privacy conclusion is claimed here; that generated adjacency premise is
  assigned to step_009.
- Conclusions used here: the exact numerical definition of \(B(t)\) and the
  exhaustive actual-function-or-\(\perp\) output range used in the totality
  proof.

### Lyu Lemma 3.2: accepted AboveThreshold allocation wrapper

The accepted sketch fixes a universal \(c_{\rm AT}\ge1\) so that a
sensitivity-one, one-positive-report prefix with base parameter \(\eta\) and
failure parameter \(\delta_{\rm AT}\) has privacy cost at most
\[
\left(c_{\rm AT}\eta
  \left(\sqrt{\log(2/\delta_{\rm AT})}
       +\log(2/\delta_{\rm AT})\right),
  \delta_{\rm AT}\right).
\]
With \(\delta_{\rm AT}=\delta/2\) and the accepted definition of \(\eta\),
the first coordinate equals \(\varepsilon/4\). This step uses that wrapper
only to fix the public allocation and finite noise scale; sensitivity and
privacy are not inferred here.

### Internal result applications

- Proposition~\ref{prop:step-001-boundary-entry} supplies the legal
  split \(d=0\) or \(d\ge1,1\le v\le d\) to every later local result.
- Lemma~\ref{lem:step-001-candidate-legality} supplies all scalar domains
  and integer objects used by Lemmas~\ref{lem:step-001-log-closure} and
  \ref{lem:step-001-list-envelope}.
- Lemmas~\ref{lem:step-001-log-closure} and
  \ref{lem:step-001-list-envelope} supply the exact logarithms used by
  Proposition~\ref{prop:step-001-margin}.
- Proposition~\ref{prop:step-001-margin} supplies the defect bound used
  by Proposition~\ref{prop:step-001-teacher-existence}.
- Proposition~\ref{prop:step-001-teacher-existence} supplies the fixed
  realized dictionary used by
  Proposition~\ref{prop:step-001-totality}.

## Local Derivation

### unit_001: proposition

**Proposition (Boundary and positive-dimensional entry).**
\label{prop:step-001-boundary-entry}
Under Assumption~\ref{assump:finite-littlestone}, if \(d=0\), then
\(v=0\), \(C\) consists of a unique function \(c_C\), and the learner that
uses \(N=0\) and returns \(c_C\) deterministically is \((0,0)\)-DP and has
zero population error against every \(c\in C\). If \(d\ge1\), then
\(1\le v\le d\).

**Proof.** Suppose \(f,g\in C\) are distinct. There is \(x\in X\) with
\(f(x)\ne g(x)\), so both labels occur at \(x\). The one-node tree labelled
by \(x\) is Littlestone-shattered, and hence \(d\ge1\). Its contrapositive
shows that a nonempty class with \(d=0\) has exactly one member \(c_C\). A
singleton class shatters no one-point set, so \(v=0\).

There is only one length-zero input. Returning \(c_C\) on it is deterministic,
so the output laws on every neighboring pair of length-zero datasets are
identical; this is \((0,0)\)-DP. For every distribution \(D\) and every
\(c\in C\), uniqueness gives \(c=c_C\), whence
\(\operatorname{err}_D(c_C,c)=0\). In particular, no expression containing
\(1/v\), no positive sample size, and no mechanism is evaluated on this
branch.

Now suppose \(d\ge1\). A depth-one Littlestone-shattered tree supplies a
point on which both labels occur, so \(v\ge1\). If a set
\(\{x_1,\ldots,x_s\}\) is VC-shattered, form a complete binary tree of depth
\(s\) whose node at level \(j\) is labelled by \(x_j\), independently of the
previous labels. VC shattering supplies a concept for every root-to-leaf
label sequence, so this tree is Littlestone-shattered. Thus every shattered
set has size at most \(d\), and \(v\le d\). This proves the positive-branch
claim. \(\square\)

### unit_002: lemma

**Lemma (Candidate and allocation legality).**
\label{lem:step-001-candidate-legality}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime}, assume \(d\ge1\), and hence
\(1\le v\le d\) by
Proposition~\ref{prop:step-001-boundary-entry}. Define
\[
\beta_{\rm tr}=\beta_{\rm AT}=\beta_{\rm SS}=\beta_{\rm gen}=\beta/4,
\qquad
\delta_{\rm AT}=\delta_{\rm SS}=\delta/2,
\tag{1}
\]
\[
g_\delta=\log(4/\delta),\qquad
\eta=\frac{\varepsilon}
 {4c_{\rm AT}(\sqrt{g_\delta}+g_\delta)},
\qquad
\varepsilon_s=\varepsilon/8.
\tag{2}
\]
For every integer \(t\ge2\), define
\[
\begin{aligned}
a(t)&=v+\log(4t/\beta),\\
Q(t)&=e+\frac{etd^2a(t)}{\alpha v},\\
m(t)&=\left\lceil C_{\rm blk}\frac{d^2}{\alpha}
             a(t)\log Q(t)\right\rceil,\\
n(t)&=tm(t),\qquad p_d(t)=2^dn(t)d,\\
L(t)&=p_d(t)^d2^{d^2},\\
B(t)&=\left\lceil
 \frac{10\log(L(t)/\delta_{\rm SS})}{\varepsilon_s}
 \right\rceil,\\
\tau_{\rm AT}&=\eta^{-1}\log\frac{d+1}{\beta_{\rm AT}},\\
\tau_{\rm SS}(t)&=\varepsilon_s^{-1}
 \log\frac{tL(t)+1}{\beta_{\rm SS}}.
\end{aligned}
\tag{3}
\]
Then every displayed logarithm is finite and has positive argument, \(\eta\)
and \(\varepsilon_s\) are positive, \(m(t),n(t),p_d(t),L(t),B(t)\) are
positive integers, and the maps in (3) are nondecreasing in integer
\(t\ge2\) (strictly where no ceiling can flatten them). Moreover,
\[
n(t)\ge v,
\tag{4}
\]
and the allocations obey
\[
\sum_{u\in\{{\rm tr,AT,SS,gen}\}}\beta_u=\beta,
\qquad
\delta_{\rm AT}+\delta_{\rm SS}=\delta,
\qquad
2\varepsilon_s=\varepsilon/4,
\tag{5}
\]
as well as
\[
c_{\rm AT}\eta(\sqrt{g_\delta}+g_\delta)=\varepsilon/4.
\tag{6}
\]

**Proof.** The parameter ranges give
\(0<\beta_u<1\), \(0<\delta_{\rm AT},\delta_{\rm SS}<1\),
\(g_\delta>\log4>0\), \(\eta>0\), and \(\varepsilon_s>0\). Since
\(v\ge1\), the denominator \(\alpha v\) in \(Q(t)\) is positive. In fact,
\(a(t)\ge v\ge1\) and \(Q(t)>e\), so \(\log Q(t)>1\). Also
\(p_d(t)\ge1\), \(L(t)\ge1\), and
\(\delta_{\rm SS}<1\); hence \(\log(L(t)/\delta_{\rm SS})>0\). The other
logarithm arguments in (3) are also greater than one. Thus the ceilings in
(3) produce positive integers.

The function \(a(t)\) is increasing, so \(t a(t)\), \(Q(t)\),
\(a(t)\log Q(t)\), and their positive scalar multiples are increasing.
The ceiling map is nondecreasing. It follows successively that \(m(t)\),
\(n(t)=tm(t)\), \(p_d(t)\), \(L(t)\), \(B(t)\), and
\(\tau_{\rm SS}(t)\) are nondecreasing. No claim is made here that the
teacher feasibility predicate itself is monotone.

Because \(C_{\rm blk}\ge1\), \(d\ge1\), \(\alpha^{-1}>4\),
\(a(t)\ge v\), and \(\log Q(t)>1\),
\[
m(t)\ge C_{\rm blk}\frac{d^2}{\alpha}a(t)\log Q(t)>4v.
\]
Consequently \(n(t)=tm(t)>8v\ge v\), which proves (4), including \(v=1\).
The identities (5) follow directly from (1), while (6) follows by
substituting (2). Every allocation is fixed independently of the data and of
all later generated events. \(\square\)

### unit_003: lemma

**Lemma (Ceiling-aware teacher-candidate log closure).**
\label{lem:step-001-log-closure}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime}, on the \(d\ge1\) branch and under
Lemma~\ref{lem:step-001-candidate-legality}, put
\[
G=\log\frac{64}{\delta\beta},
\qquad
\lambda=\Lambda(d,v,\alpha,\beta,\varepsilon,\delta),
\qquad
H_*:=\frac{d^2G\lambda^2}{\varepsilon}.
\tag{7}
\]
For every fixed universal \(c\ge1\), let
\[
\bar k_c=\lceil cH_*\rceil.
\tag{8}
\]
There is a universal \(A_0\ge1\), depending only on the already-fixed
universal \(C_{\rm blk}\), such that
\[
\log\bar k_c\le A_0(1+\log c)\lambda,
\qquad
\log n(\bar k_c)\le A_0(1+\log c)\lambda.
\tag{9}
\]
The constants do not depend on \(d,v,\alpha,\beta,\varepsilon,\delta\).

**Proof.** By definition, \(\lambda\ge1\), and each of
\[
\log d,\quad \log v,\quad \log(1/\alpha),\quad
\log(1/\beta),\quad \log(1/\varepsilon),\quad \log\lambda
\tag{10}
\]
is at most a universal multiple of \(\lambda\); for \(\log\lambda\), use
\(\log x\le x\) for \(x\ge1\). The less immediate term is \(G\). Write
\(u_\delta=\log(e/\delta)\). Since
\[
G=\log64+\log(1/\delta)+\log(1/\beta)
 \le \log64+u_\delta+\beta^{-1},
\]
the elementary inequality
\(\log(x+y+z)\le\log3+\max\{\log x,\log y,\log z\}\) gives
\[
\log G\le A\lambda
\tag{11}
\]
for a universal \(A\): the definition of \(\lambda\) contains both
\(\log(e+u_\delta)\) and \(\log(e+\beta^{-1})\). Notice also that
\(G>\log256>1\), because \(\delta<1\) and \(\beta<1/4\). Hence \(H_*>1\).

The ceiling inequality \(\lceil x\rceil\le2x\) for \(x\ge1\) yields
\[
\begin{aligned}
\log\bar k_c
&\le \log(2c)+2\log d+\log G+2\log\lambda
       +\log(1/\varepsilon)\\
&\le A_0(1+\log c)\lambda,
\end{aligned}
\tag{12}
\]
after increasing a universal \(A_0\).

Let \(R_c=\log(4\bar k_c/\beta)\). Equations (10) and (12) imply
\(R_c\le A(1+\log c)\lambda\), and, since \(v\ge1\),
\[
1\le \frac{a(\bar k_c)}v
=1+\frac{R_c}{v}
\le1+R_c.
\tag{13}
\]
Thus both \(\log(a(\bar k_c)/v)\) and
\(\log a(\bar k_c)=\log v+\log(a(\bar k_c)/v)\) are at most
\(A(1+\log c)\lambda\).

Set \(y=\bar k_c d^2a(\bar k_c)/(\alpha v)>1\). Since
\(Q(\bar k_c)=e(1+y)\),
\[
\begin{aligned}
\log Q(\bar k_c)
&=1+\log(1+y)\\
&\le1+\log2+\log\bar k_c+2\log d
  +\log\frac{a(\bar k_c)}v+\log(1/\alpha)\\
&\le A(1+\log c)\lambda.
\end{aligned}
\tag{14}
\]
Finally, put
\(z=C_{\rm blk}d^2a(\bar k_c)\log Q(\bar k_c)/\alpha\). The parameter
ranges and \(C_{\rm blk}\ge1\) give \(z>1\), so
\(m(\bar k_c)=\lceil z\rceil\le2z\). Consequently
\[
\begin{aligned}
\log m(\bar k_c)
&\le \log(2C_{\rm blk})+2\log d+\log(1/\alpha)
 +\log a(\bar k_c)+\log\log Q(\bar k_c)\\
&\le A(1+\log c)\lambda.
\end{aligned}
\tag{15}
\]
Here \(\log Q(\bar k_c)>1\), and (14) bounds
\(\log\log Q(\bar k_c)\) after another universal enlargement. Combining
(12) and (15) with
\(\log n(\bar k_c)=\log\bar k_c+\log m(\bar k_c)\) proves (9), with every
ceiling still present. \(\square\)

### unit_004: lemma

**Lemma (Exact essential-list envelope).**
\label{lem:step-001-list-envelope}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime}, the positive-branch conclusion of
Proposition~\ref{prop:step-001-boundary-entry}, the candidate legality
of Lemma~\ref{lem:step-001-candidate-legality}, and the log closure of
Lemma~\ref{lem:step-001-log-closure}, define
\[
p_r(t)=2^rn(t)d,\qquad r=0,\ldots,d.
\tag{16}
\]
For every \(H\subseteq C\), define the total list map
\[
\mathcal L_{p_r(t),d}(H)=
\begin{cases}
\operatorname{Ess}_{p_r(t),d}(H),&H\ne\varnothing,\\
\varnothing,&H=\varnothing.
\end{cases}
\tag{17}
\]
Then the exact numerical interface (C4.1-1) gives
\[
|\mathcal L_{p_r(t),d}(H)|
\le p_r(t)^d2^{d^2}
\le p_d(t)^d2^{d^2}=L(t).
\tag{18}
\]
Moreover, for \(\bar k_c\) from
Lemma~\ref{lem:step-001-log-closure}, there is a universal \(A_1\ge1\),
depending only on the fixed universal \(C_{\rm blk}\), such that
\[
\log L(\bar k_c)
\le A_1(1+\log c)d^2\lambda.
\tag{19}
\]

**Proof.** If \(H=\varnothing\), (18) is immediate. Otherwise
\(\operatorname{LD}(H)\le\operatorname{LD}(C)=d\) and \(p_r(t)\) is a
positive integer. Corollary 4.1 Item 1 therefore gives the first inequality
in (18). The second follows from \(r\le d\), hence \(p_r(t)\le p_d(t)\).

The definition of \(L(t)\), without any asymptotic replacement, gives
\[
\begin{aligned}
\log L(t)
&=d\log(2^dn(t)d)+d^2\log2\\
&=d\log n(t)+d\log d+2d^2\log2.
\end{aligned}
\tag{20}
\]
Apply Lemma~\ref{lem:step-001-log-closure} at \(t=\bar k_c\), use
\(\log d\le\lambda\), \(d\le d^2\), and \(\lambda\ge1\), and absorb the
fixed \(\log2\) terms. This proves (19). In particular, (20) exposes rather
than hides both occurrences of the \(d^2\log2\) contribution. \(\square\)

### unit_005: proposition

**Proposition (Exact teacher/noise margin).**
\label{prop:step-001-margin}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime}, on the \(d\ge1\) branch and with
\(\bar k_c\) as in Lemma~\ref{lem:step-001-log-closure}, there is a
universal \(A_2\ge1\), depending only on the fixed universal
\(C_{\rm blk}\) and \(c_{\rm AT}\), such that for every fixed universal
\(c\ge1\),
\[
\tau_{\rm AT}+B(\bar k_c)+\tau_{\rm SS}(\bar k_c)
\le A_2(1+\log c)\frac{d^2G\lambda^2}{\varepsilon}.
\tag{21}
\]
This is the exact (MarginBound), including all three logarithmic losses and
the ceiling in \(B\).

**Proof.** First, \(g_\delta=\log(4/\delta)>1\), so
\(\sqrt{g_\delta}\le g_\delta\), and \(g_\delta\le G\). Therefore
\[
\eta^{-1}=\frac{4c_{\rm AT}}\varepsilon
 (\sqrt{g_\delta}+g_\delta)
\le\frac{8c_{\rm AT}G}{\varepsilon}.
\tag{22}
\]
Also
\[
\log\frac{d+1}{\beta_{\rm AT}}
=\log\frac{4(d+1)}\beta
\le \log8+\log d+\log(1/\beta)
\le A\lambda.
\tag{23}
\]
Thus
\[
\tau_{\rm AT}\le A\frac{G\lambda}{\varepsilon}
\le A\frac{d^2G\lambda^2}{\varepsilon}.
\tag{24}
\]

Next, the exact Lemma 3.1 threshold and
\(\varepsilon_s=\varepsilon/8\), \(\delta_{\rm SS}=\delta/2\) give
\[
\begin{aligned}
B(\bar k_c)
&\le \frac{80}{\varepsilon}
 \left(\log L(\bar k_c)+\log(2/\delta)\right)+1\\
&\le \frac{80}{\varepsilon}
 \left(A_1(1+\log c)d^2\lambda+G\right)+1.
\end{aligned}
\tag{25}
\]
Because \(d\ge1\), \(G>1\), \(\lambda\ge1\), and
\(\varepsilon\le1\), each term on the last line is at most a universal
multiple of
\((1+\log c)d^2G\lambda^2/\varepsilon\). This explicitly absorbs the
ceiling's additive one.

Finally, \(\bar k_cL(\bar k_c)\ge1\), so
\[
\begin{aligned}
\tau_{\rm SS}(\bar k_c)
&=\frac8\varepsilon
 \log\frac{\bar k_cL(\bar k_c)+1}{\beta/4}\\
&\le\frac8\varepsilon
 \left(\log2+\log\bar k_c+\log L(\bar k_c)
       +\log(4/\beta)\right)\\
&\le A(1+\log c)\frac{d^2\lambda}{\varepsilon}\\
&\le A(1+\log c)\frac{d^2G\lambda^2}{\varepsilon},
\end{aligned}
\tag{26}
\]
where Lemmas~\ref{lem:step-001-log-closure} and
\ref{lem:step-001-list-envelope} justify the third line. Summing
(24)-(26), and fixing \(A_2\ge1\), proves (21). \(\square\)

### unit_006: proposition

**Proposition (Feasible witness, least teacher, and realized dictionary).**
\label{prop:step-001-teacher-existence}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime}, on the \(d\ge1\) branch there are
fixed universal constants \(C_{\rm teach},C_1,C_2,C_3,C_4\ge1\) such that,
with
\[
\bar k=\left\lceil C_{\rm teach}
 \frac{d^2G\lambda^2}{\varepsilon}\right\rceil,
\tag{27}
\]
one has
\[
\log\bar k\le C_1\lambda,
\qquad
\log n(\bar k)\le C_2\lambda,
\qquad
\log L(\bar k)\le C_3d^2\lambda,
\tag{28}
\]
\[
\tau_{\rm AT}+B(\bar k)+\tau_{\rm SS}(\bar k)
\le C_4\frac{d^2G\lambda^2}{\varepsilon},
\tag{29}
\]
and
\[
\frac{\bar k}{2}-\tau_{\rm AT}
\ge B(\bar k)+\tau_{\rm SS}(\bar k)+2.
\tag{30}
\]
Consequently the exact set
\[
\mathcal F=\left\{t\in\mathbb N:t\ge2,
\quad \frac t2-\tau_{\rm AT}
\ge B(t)+\tau_{\rm SS}(t)+2\right\}
\tag{31}
\]
is nonempty, and its least member
\[
k=\min\mathcal F
\tag{32}
\]
is a well-defined integer satisfying \(2\le k\le\bar k\). For every
integer \(2\le t<k\), the reverse strict inequality holds. With
\[
a=a(k),\quad Q=Q(k),\quad m=m(k),\quad n_0=n(k)=km,
\quad N=n_0,
\tag{33}
\]
\[
p_r=2^rn_0d\ (r=0,\ldots,d),\qquad
L=L(k),\qquad B=B(k),
\tag{34}
\]
all sample counts, stage scales, \(L\), and \(B\) are positive integers,
\(n_0\ge v\), and
\[
n_0d\ge\max\{n_0,d+1\}.
\tag{35}
\]
This exact least-feasible integer is the accepted implementation denoted
\(k_{\rm Lyu}(d,\beta,\varepsilon,\delta)\) in the setting; its permitted
\(\alpha\)-dependence occurs only through the displayed logarithms in
\(n(t)\) and \(L(t)\).

**Proof.** Proposition~\ref{prop:step-001-margin} supplies a universal
\(A_2\ge1\) for which the right side of (21) is
\(A_2(1+\log c)H_*\). Since
\[
\frac{c}{1+\log c}\longrightarrow\infty,
\]
one may choose and then freeze a universal \(C_{\rm teach}\ge1\) so large
that
\[
C_{\rm teach}>4A_2(1+\log C_{\rm teach}).
\tag{36}
\]
Set \(C_4=A_2(1+\log C_{\rm teach})\), and freeze the constants from
Lemmas~\ref{lem:step-001-log-closure} and
\ref{lem:step-001-list-envelope} at \(c=C_{\rm teach}\) as
\(C_1,C_2,C_3\). These are universal constants, not quantities depending on
the exposed parameters. Equations (28) and (29) are then exactly (9), (19),
and (21).

Recall \(H_*=d^2G\lambda^2/\varepsilon>\log256>2\). From the ceiling in
(27), (36), and \(C_4\ge1\),
\[
\frac{\bar k}{2}
\ge\frac{C_{\rm teach}H_*}{2}
>2C_4H_*
\ge C_4H_*+2.
\tag{37}
\]
Combining (37) with (29) proves (30), including the additive margin two.
Thus \(\bar k\in\mathcal F\); in particular, \(\bar k\ge2\), and
\(\mathcal F\ne\varnothing\). The well-ordering principle gives the exact
least integer \(k=\min\mathcal F\), and
\(\bar k\in\mathcal F\) gives \(k\le\bar k\). Minimality means precisely
that, for every integer \(2\le t<k\),
\[
\frac t2-\tau_{\rm AT}<B(t)+\tau_{\rm SS}(t)+2.
\tag{38}
\]
No upward-closed feasibility assertion is needed.

Lemma~\ref{lem:step-001-candidate-legality}, evaluated at this \(k\),
proves all integer claims in (33)-(34) and \(n_0=n(k)\ge v\). Since
\(k\ge2\) and \(m\ge1\), \(n_0\ge2\). Thus \(d\ge1\) gives
\(n_0d\ge n_0\) and
\(n_0d\ge2d\ge d+1\), proving (35). This also covers the sharp entry
case \(d=v=1\): then \(p_0=n_0\ge2\), \(p_1=2n_0\), and every denominator
and integer stage is legal. \(\square\)

### unit_007: proposition

**Proposition (Total arbitrary-input learner with the accepted half-scale interface).**
\label{prop:step-001-totality}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime}, use the exact \(d=0\) learner from
Proposition~\ref{prop:step-001-boundary-entry}. On the \(d\ge1\)
branch, use the realized dictionary of
Proposition~\ref{prop:step-001-teacher-existence}, set
\[
\gamma=\alpha/16,
\qquad
\rho=1-\frac1{2d},
\tag{39}
\]
and fix once and for all an arbitrary \(h_0\in C\). The following procedure
is a total map from every ordered labeled input
\(s\in(X\times\{0,1\})^{n_0}\), realizable or not, to a binary function on
\(X\), and it preserves exactly the accepted stage/list interface
\[
H_i^r=\left\{h\in C:
 \operatorname{err}_{S_i}(h)\le\rho^{r+1}\gamma\right\},
\qquad
p_r=2^rn_0d,
\qquad r=0,\ldots,d.
\tag{40}
\]

**Proof.** Nonemptiness of \(C\) permits a data-independent choice
\(h_0\in C\). For an arbitrary input \(s\), draw one data-independent uniform
permutation of its \(n_0=km\) indices and split the permuted indices into
exactly \(k\) blocks \(S_1,\ldots,S_k\) of size \(m\). This partition exists
because all three numbers are positive integers and \(n_0=km\). It is drawn
once and reused at every stage. Also \(d\ge1\) gives
\(\rho\in[1/2,1)\), so every threshold in (40) is a finite nonnegative real.

For each \(r=0,\ldots,d\) and \(i=1,\ldots,k\), define \(H_i^r\) by (40),
using, for the index set \(I_i\) of block \(S_i\), the exact empirical error
\[
\operatorname{err}_{S_i}(h)
=\frac1m\sum_{u\in I_i}{\bf1}\{h(x_u)\ne y_u\}.
\]
Define
\[
\mathcal L_i^r=
\begin{cases}
\operatorname{Ess}_{p_r,d}(H_i^r),&H_i^r\ne\varnothing,\\
\varnothing,&H_i^r=\varnothing.
\end{cases}
\tag{41}
\]
These are exact actual-function essential-SOA lists. No trace quotient is
taken: the source's fixed SOA tie convention and its quantification over
optimal decompositions are retained unchanged. Lemma~\ref{lem:step-001-list-envelope} shows that every list is
finite and has size at most \(L=L(k)\), including the direct size-zero empty
case. Define
\[
q_r=\max_{f\in\bigcup_{i=1}^k\mathcal L_i^r}
 \bigl|\{i:f\in\mathcal L_i^r\}\bigr|,
\qquad \max\varnothing:=0.
\tag{42}
\]
Thus \(q_r\) is defined even if every restriction or every list at a stage is
empty.

Submit the finite sequence \(q_0,\ldots,q_d\), in this order, to one Lyu
Algorithm 2 process with base parameter \(\eta\), threshold \(k/2\), and
counter budget one. Stop externally after its first Above report. There are
only \(d+1\) stages, so exactly one of the following exhaustive transcript
cases occurs.

1. The first Above occurs at a unique \(r_*\in\{0,\ldots,d\}\). Invoke
   Lyu Algorithm 1 exactly once on
   \((\mathcal L_1^{r_*},\ldots,\mathcal L_k^{r_*})\) with parameters
   \((\varepsilon_s,B(k))\). By the exact Algorithm 1 codomain, its return is
   either an actual function in the union of these lists or \(\perp\). In the
   first case, output that actual function; in the second, output \(h_0\).
2. Every report from stages \(0,\ldots,d\) is Below. After stage \(d\),
   output \(h_0\).

These cases include immediate Above at \(r=0\), Above only at the last
stage, all-Below exhaustion, and every \(\perp\) return. If immediate Above
occurs while all first-stage lists are empty, Algorithm 1 has no actual
union-list item and its exhaustive codomain leaves \(\perp\), which again
maps to \(h_0\). A nonempty restriction may also have an empty essential
list; (41)-(42) handle it identically. Repeated sample points and arbitrary
or inconsistent labels do not affect any definition. All outputs are
functions \(X\to\{0,1\}\), because both \(h_0\) and every actual list item
have that type.

The procedure makes at most one Sparse Sample call and has a specified output
after every terminal path. It agrees with the source procedure on the
successful path and only supplies its fixed \(h_0\) default on omitted
failure paths. In particular, (40) retains the accepted half-scale
\(p_r=2^rn_0d\) together with the \(r+1\) threshold class; it does not replace
the list by the source's literal \(2p_r\)-scale list. No utility event,
support assertion, sensitivity assertion, or privacy conclusion is needed
for totality. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-001-boundary-entry} proves the exact \(d=0\)
zero-sample branch and the legal \(d\ge1,1\le v\le d\) entry.
Lemma~\ref{lem:step-001-candidate-legality} fixes all allocations, proves
every candidate expression and ceiling legal, and already gives
\(n(t)\ge v\). Lemma~\ref{lem:step-001-log-closure} proves the
ceiling-aware \(\log\bar k\) and \(\log n(\bar k)\) estimates.
Lemma~\ref{lem:step-001-list-envelope}, using exactly Corollary 4.1 Item
1, proves the source list envelope and its exact logarithm.
Proposition~\ref{prop:step-001-margin}, using exactly the Lemma 3.1
threshold, bounds the AboveThreshold, failure-symbol, and effective-domain
losses without dropping a ceiling or logarithm.

Proposition~\ref{prop:step-001-teacher-existence} chooses one universal
\(C_{\rm teach}\), proves \(\bar k\) feasible with the required margin two,
and therefore proves nonemptiness and exact least-candidate minimality of
(Teacher), \(k\le\bar k\), \(n_0\ge v\), and all realized integer and scale
claims. Proposition~\ref{prop:step-001-totality} then instantiates this
same tuple, with no surrogate parameters, into the exact accepted half-scale
stage/list learner and exhausts every arbitrary-input terminal path. These
seven results jointly prove the exact accepted step_001 row. No statement
from the global diagnostic is used in this assembly.

## Explicit Rate Audit

- Exposed variables: \(d,v,\alpha,\beta,\varepsilon,\delta\).
- Hidden constants may depend on: nothing. \(C_{\rm blk}\),
  \(c_{\rm AT}\), \(C_{\rm teach}\), \(A_0,A_1,A_2\), and
  \(C_1,\ldots,C_4\) are fixed universal numerical constants.
- Hidden constants may not depend on: \(X,C,D,c,|C|\), any sample,
  partition, restriction, decomposition, list, support set, stage, generated
  event, or mechanism output.
- Fixed quantities: none. The candidate \(t\), the witness constant \(c\),
  and all candidate maps are eliminated when \(c=C_{\rm teach}\) and
  \(k=\min\mathcal F\) are fixed.
- Probability mode: the scalar and totality conclusions are deterministic.
  The \(d=0\) learner has identical deterministic output laws. The four
  utility allocations sum exactly to \(\beta\); this step does not assert the
  later events that consume them.
- Horizon mode: fixed sample with the finite stage set
  \(\{0,\ldots,d\}\), one AboveThreshold process, and at most one Sparse
  Sample call.
- Norm mode: no norm is used in the scalar closure. The boundary conclusion
  is exact population binary \(0\)-\(1\) error zero.
- Admissibility conditions and auxiliary tolerances: all parameter ranges
  are those of assump:approximate-dp-regime; \(d\ge1\) implies
  \(1\le v\le d\); \(\gamma=\alpha/16\),
  \(\rho=1-1/(2d)\), and every allocation is displayed explicitly.
- Term absorption or simplification inequalities: (12)-(15) retain the
  ceilings in \(\bar k\) and \(m\); (20) is the exact list logarithm;
  (22)-(26) separately dominate AboveThreshold, Lemma 3.1, Sparse Sample,
  confidence, and ceiling terms; (36)-(37) prove the final linear-over-log
  domination and the additive margin two.
- Probability conversion: only the exact budget identities (5) are made in
  this step. No union bound or privacy composition is claimed prematurely.
- Contribution to any Rate Specialization Bridge:
  \[
  k\le\bar k
  =\left\lceil C_{\rm teach}
  \frac{d^2\log(64/(\delta\beta))\Lambda^2}{\varepsilon}\right\rceil,
  \]
  together with (28)-(29), is the exact teacher/list/noise interface consumed
  by later trace and public-rate steps.
- Baseline-reduction check: \(d=0\) remains the exact \(N=0\) learner, not a
  positive-sample surrogate. The positive dictionary remains legal at
  \(d=v=1\), for arbitrarily small positive
  \(\alpha,\beta,\delta\), and at \(v=d\); no parameter is silently fixed or
  removed.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing: the branchwise learner; \(\gamma,\rho\); all allocations;
  \(\eta,\varepsilon_s\); the exact integer \(k\); its realized tuple
  \(a,Q,m,n_0,N,p_r,L,B\); \(\tau_{\rm AT},\tau_{\rm SS}(k)\); the explicit
  witness \(\bar k\); the stage classes \(H_i^r\), exact actual-function lists
  \(\mathcal L_i^r\), scores \(q_r\), fixed default \(h_0\), stopping rule,
  and terminal outputs. Every one is defined directly from setting quantities
  and the accepted sketch, or proved legal in this step.
- Appendix-local: the candidate maps
  \(a(t),Q(t),m(t),n(t),p_d(t),L(t),B(t),\tau_{\rm SS}(t)\), the feasible set
  \(\mathcal F\), \(G\), and the constants
  \(A_0,A_1,A_2,C_1,\ldots,C_4\). They package the noncircular
  least-candidate proof and export only \(k,\bar k\), (28), and (29).
- Proof-local: \(H_*=d^2G\lambda^2/\varepsilon\), \(u_\delta\), \(R_c\),
  \(y\), and \(z\). Each is an abbreviation for a displayed expression and
  is eliminated within its local proof.
- Constant provenance: \(C_{\rm blk}\) and \(c_{\rm AT}\) are fixed universal
  constants in the accepted sketch. \(C_{\rm teach}\) is proved to exist by
  (36). All remaining constants arise from the displayed elementary scalar
  inequalities and depend only on those already-fixed universal constants.
- Assumption provenance: the only primitive conditions used are the two
  allowed setting assumptions. Boundary uniqueness, positive \(v\), scalar
  boundedness, list finiteness, teacher feasibility, integer legality, and
  totality are all proved here. No generated event or derived invariant is
  used as a local conditional hypothesis.
- Source-interface boundary: Corollary 4.1 is used only for its exact Item 1
  envelope. Lemma 3.1 is used only for its exact numerical threshold and
  output codomain. List transfer/support, raw adjacency, mechanism accuracy,
  and privacy remain later generated obligations.
- Diagnostic boundary: the paired global_proof_review.md has status ACCEPTED.
  The diagnostic's Block A suggested organizing the scalar closure around a
  feasible public witness and an exhaustive terminal-path check. Every
  mathematical claim above was independently derived from the setting,
  accepted sketch, checked source interfaces restated here, and earlier local
  units. The diagnostic was not used as proof evidence, a cited result, an
  assumption source, or authority to change the target claim.
