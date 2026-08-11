# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_011`
- Unit attempt: 1
- Binding setting SHA-256: `13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327`
- Accepted proof-sketch SHA-256: `51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8`
- Accepted proof-sketch-review SHA-256: `98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89`
- Accepted `step_004` proof/review SHA-256: `a7bfbd70ecbd3e68380fe75cdfa668f0dd34b198255823b7156e7d3eb03f709d` / `d20d43002ce30c7e50e0cccb230ff4c3014e2b328d46c96b4a59c2986269ee18`
- Accepted `step_005` proof/review SHA-256: `044406cb03ff7ebc62a8c44e317ec731030192eb2f4e585650335feea30e2191` / `189873c0b2f032e76014d9ebb953db45efa3842a7010829750f0afeb25940cff`
- Accepted `step_008` proof/review SHA-256: `42121742c564d1ac023afd576efc2e2e946a9b447f620d5c7cd087bc76fc8a43` / `c29ea8c6302be8940d7e8f7a9e20180f2dde081dc50a3081eecbd59fb81e329d`
- Accepted `step_010` proof/review SHA-256: `6d918f086bfbc67b2c6ddefb43b245df1d8f331d8f31177fa1e15bd69d40b710` / `e726a63626ae1c74d9461f3dfe43c2968fe962330ce1be0e89f491c5fe435cf7`
- Accepted diagnostic global proof/review SHA-256: `dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407` / `fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710`
- Frozen primary source checked: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, `submission/main.tex` SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Target Step Claim

- Intended claim: Apply exact Lemma 4.2 to
  \(\widehat C_{d+1}\), prove its VC dimension is at most \(d\), apply
  the stated relative VC inequality, and close total utility failure at most
  \(\beta\).
- Depends on: `step_004`, `step_005`, `step_008`, `step_010`.
- Assumptions used: Primitive `assump:realizable-iid`,
  `assump:finite-littlestone`; derived output/event facts.
- Technical challenge: Uniform population control for a data-dependent
  improper output from possibly infinite \(C\).
- Intended proof tool or cited result: Lyu Lemma 4.2/Corollary 5.1 and a
  one-sided relative VC bound.
- Output target: Population error at most \(\alpha\).
- Rate objective:
  \(O([d\log(1/\alpha)+\log(1/\beta)]/\alpha)\)
  generalization threshold.
- Row-local review status: PENDING. Acceptance of the sketch is supplied by
  the binding `proof_sketch_review.md`, not by this row-local field.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:finite-littlestone`: \(C\subseteq\{0,1\}^X\) is nonempty and
    \(d=\operatorname{LD}(C)<\infty\). This supplies the exact ambient
    hypothesis class to Lyu Lemma 4.2 and the direct \(d=0\) boundary
    argument.
  - `assump:realizable-iid`: for each fixed distribution \(D\) and target
    \(c\in C\), the master sample consists of \(n_0\) iid labeled draws
    \((x_u,c(x_u))\). This identifies empirical classification error with
    the empirical measure of the fixed error-set class used below.
  - `assump:approximate-dp-regime`: used only for the already-binding scalar
    range \(0<\alpha,\beta<1/4\) and the legality of the four accepted
    allocations. No privacy conclusion is proved or assumed in this step.
- Derived invariants supplied by accepted dependencies:
  - Accepted Propositions~\ref{prop:step-004-conditional-trace} and
    \ref{prop:step-004-unconditional-trace} give the exact conditional and
    unconditional failure formula for the one event \(E_{\rm good}\), with
    no block-independence premise.
  - Accepted Lemma~\ref{lem:step-005-ceiling-fixed-point} and
    Proposition~\ref{prop:step-005-trace-budget} fix
    \(C_{\rm blk}=2^{20}\), the realized dictionary
    \[
    a=v+\log(4k/\beta),\qquad
    Q=e+\frac{e k d^2a}{\alpha v},\qquad
    m=\left\lceil C_{\rm blk}\frac{d^2a\log Q}{\alpha}\right\rceil,
    \qquad n_0=km,
    \tag{1}
    \]
    on the positive branch, with \(1\le v\le d\), \(k\ge2\), and
    \[
    \Pr(E_{\rm good}^c)\le\beta_{\rm tr}=\beta/4.
    \tag{2}
    \]
  - Accepted Proposition~\ref{prop:step-008-actual-output} gives
    \(\mathcal E_{\rm mech}=\mathcal E_{\rm AT}\cap\mathcal E_{\rm SS}\),
    where, conditionally on every fixed input and partition,
    \[
    \Pr(\mathcal E_{\rm mech}^c)
    \le\beta_{\rm AT}+\beta_{\rm SS}=\beta/2,
    \qquad
    \beta_{\rm AT}=\beta_{\rm SS}=\beta/4.
    \tag{3}
    \]
    On \(E_{\rm good}\cap\mathcal E_{\rm mech}\), its output is an
    actual current-list function on \(X\).
  - Accepted Proposition~\ref{prop:step-010-exact-leaf-witness},
    Lemma~\ref{lem:step-010-parent-master-error}, and
    Lemma~\ref{lem:step-010-irreducible-contradiction} jointly give, on
    \(E_{\rm good}\cap\mathcal E_{\rm mech}\),
    \[
    \widehat f\in\widehat C_{d+1},\qquad
    e_S(\widehat f)\le\alpha/8,
    \tag{4}
    \]
    for the exact fixed family
    \[
    \widehat C_{d+1}:=
    \{\operatorname{SOA}_G:G\subseteq C
      \text{ is }(d+1)\text{-irreducible}\}.
    \tag{5}
    \]
    Membership in (4) is equality of the selected function and
    \(\operatorname{SOA}_G\) on all of \(X\), not trace membership.
- Local conditional hypotheses:
  - The structural and generalization units first fix the positive branch
    \(d\ge1\). The \(d=0\) branch is proved separately rather than being
    inserted into formulas containing \(1/d\), \(1/v\), or \(n_0\).
  - For the generalization argument, \(D\) and \(c\in C\) are arbitrary
    but fixed before sampling. Neither the learner output nor an event
    realization is assumed. The uniform event is proved locally.

The four dependency proof/review pairs have the controller-supplied hashes
and current `ACCEPTED` reviews. The global diagnostic is paired with a
current `ACCEPTED` review and is used only for planning, never as proof
evidence or an assumption source.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:realizable-iid}, if \(d=0\), then \(C\) is a singleton, the setting-defined zero-sample learner outputs the target, and its population error and utility failure probability are both zero. | Routes the exact \(d=0\) boundary without evaluating any positive-branch generalization formula. |
| unit_002 | proposition | Under Assumption~\ref{assump:finite-littlestone} and the checked exact statement of Lyu Lemma 4.2, if \(d\ge1\), then the data-independent family (5), defined with Lyu's fixed SOA tie convention and fixed-SOA irreducibility convention, satisfies \(\operatorname{LD}(\widehat C_{d+1})\le d\) and \(\operatorname{VC}(\widehat C_{d+1})\le d\). | Supplies the exact fixed improper family and proves the structural input to VC generalization. |
| unit_003 | proposition | Let \(\mathcal A\) be a fixed measurable binary set class of VC dimension at most \(d\ge1\). For iid size-\(n\) data, \(0<\eta,\zeta<1\), and \(n\ge1600\eta^{-1}[d\log(16e/\eta)+\log(4/\zeta)]\), with outer probability at least \(1-\zeta\), uniformly \(P(A)\le2P_n(A)+\eta\) for all \(A\in\mathcal A\). | Proves a one-sided relative VC inequality with explicit constants and a \(1/\eta\), rather than \(1/\eta^2\), threshold. |
| unit_004 | lemma | Under Assumption~\ref{assump:approximate-dp-regime}, the accepted positive-branch dictionary (1), and \(\beta_{\rm gen}:=\beta/4\), the actual master size satisfies \(n_0\ge6400\alpha^{-1}[d\log(16e/\alpha)+\log(1/\beta_{\rm gen})]\), which is sufficient to apply Proposition~\ref{prop:step-011-relative-vc} with \(\eta=\alpha/2\) and \(\zeta=\beta_{\rm gen}\). | Verifies the exact relative-VC sample threshold from the accepted ceiling-bearing block calibration. |
| unit_005 | proposition | Under Assumptions~\ref{assump:finite-littlestone}, \ref{assump:realizable-iid}, and \ref{assump:approximate-dp-regime}, accepted Propositions~\ref{prop:step-004-unconditional-trace}, \ref{prop:step-005-trace-budget}, \ref{prop:step-008-actual-output}, and \ref{prop:step-010-exact-leaf-witness}, accepted Lemmas~\ref{lem:step-010-parent-master-error} and \ref{lem:step-010-irreducible-contradiction}, and the preceding local results imply \(\Pr[\operatorname{err}_D(\widehat f,c)>\alpha]\le\beta\), uniformly in \(D\) and \(c\in C\). | Applies the uniform event to the adaptive improper output and charges trace, AboveThreshold, Sparse Sample, and generalization failures exactly once each. |

Atomic step = no. Boundary routing, source-family identification, relative
VC generalization, calibration of its sample threshold, and the final event
ledger are independent nontrivial obligations.

## Cited Result Applications

### Lyu Lemma 4.2: Littlestone dimension of the fixed SOA family

- Source: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*,
  arXiv:2510.00076v1, Lemma 4.2, source label
  `lemma: Ldim-of-SOA`, in the frozen source identified above.
- Restated statement in current notation: if a binary class
  \(H\subseteq\{0,1\}^X\) has \(\operatorname{LD}(H)\le d\), define
  \[
  \widehat H_{d+1}:=
  \{\operatorname{SOA}_G:G\subseteq H
       \text{ is }(d+1)\text{-irreducible}\}.
  \tag{6}
  \]
  Then \(\operatorname{LD}(\widehat H_{d+1})\le d\).
- Exact convention and object map: source \(H\) is the current \(C\), the
  source domain is the current \(X\), and the source integer \(d\) is
  \(\operatorname{LD}(C)\). The source defines
  \(\operatorname{SOA}_G(x)=0\) when
  \(\operatorname{LD}(G|_{(x,0)})=\operatorname{LD}(G)\), and defines it
  to be \(1\) otherwise. Its \((d+1)\)-irreducibility definition labels
  every point in the full restriction sequence by this one fixed function
  \(\operatorname{SOA}_G\); it does not recompute SOA after each
  restriction. Equation (5) uses exactly those conventions.
- Required assumptions and discharge: Assumption~\ref{assump:finite-littlestone}
  gives a binary, possibly infinite \(C\) with
  \(\operatorname{LD}(C)=d<\infty\). No finiteness, properness, or
  data-dependent subclass hypothesis appears in the cited lemma.
- Conclusion used: only
  \(\operatorname{LD}(\widehat C_{d+1})\le d\). The lemma does not supply
  selected-output membership, empirical error, VC generalization, or a
  confidence allocation; (4) supplies the first two and the current local
  proof supplies the latter two.

### Lyu concentration propositions used inside the relative-VC proof

- Source: the same frozen arXiv v1 source, Proposition 1, source label
  `prop:multiplicative-chernoff`, and Proposition 2, source label
  `prop:chernoff-sample-without-replacement`.
- Restated independent-sample statement: for a sum \(Y\) of independent
  binary variables with mean \(\mu\), and \(0<\theta<1\),
  \[
  \Pr(|Y-\mu|>\theta\mu)
  \le\exp(-\theta^2\mu/3).
  \tag{7}
  \]
- Restated without-replacement statement: for a fixed binary population of
  size \(N\), population mean \(\bar z\), and a uniformly sampled subset
  of size \(t\le N\),
  \[
  \Pr\left(\left|\frac1t\sum_{i\in I}z_i-\bar z\right|
      >\theta\bar z\right)
  \le2\exp(-\theta^2t\bar z/3).
  \tag{8}
  \]
- Instantiated objects: (7) is applied to a ghost iid sample with
  \(\theta=1/4\); (8) is applied, conditional on a pooled sample of size
  \(2n\), to its uniformly random size-\(n\) half with
  \(\theta=1/5\).
- Required assumptions and discharge: all indicators are fixed binary
  error-set indicators; the ghost observations are iid, and exchangeability
  of the pooled iid sample makes the first half a uniform subset conditional
  on the pool. No learner mechanism or partition block is involved.
- Conclusion used: the two exponential estimates displayed in the proof of
  Proposition~\ref{prop:step-011-relative-vc}.

### Sauer--Shelah growth bound

- Source or name: Sauer--Shelah lemma.
- Restated statement: if a binary set class has VC dimension at most
  \(d\ge1\), then for every integer \(s\ge d\), its number of distinct
  traces on any \(s\)-point indexed sequence is at most
  \[
  \Pi_{\mathcal A}(s)
  \le\sum_{j=0}^d\binom{s}{j}
  \le(es/d)^d.
  \tag{9}
  \]
- Instantiated objects: \(s=2n\) and the fixed error-set class used in the
  double-sample proof.
- Required assumptions and discharge: Proposition~\ref{prop:step-011-fixed-family}
  gives dimension at most \(d\); the sample threshold below implies
  \(2n\ge d\). Indexed repetitions only reduce the number of traces.
- Conclusion used: the conditional union over a possibly infinite class is
  a finite union over at most \((2en/d)^d\) pooled traces.

### Accepted dependency results

- Accepted Propositions~\ref{prop:step-004-conditional-trace} and
  \ref{prop:step-004-unconditional-trace} state, for the same event
  \(E_{\rm good}\),
  \[
  \Pr(E_{\rm good}^c)
  \le4k\Pi_C(n_0)e^{-c_{\rm tr}m\alpha/d^2}
  \le4k(en_0/v)^ve^{-c_{\rm tr}m\alpha/d^2},
  \qquad c_{\rm tr}=1/3600,
  \tag{10}
  \]
  in the corresponding conditional and unconditional modes. Accepted
  Proposition~\ref{prop:step-005-trace-budget} proves that the last scalar
  in (10) is at most \(\beta_{\rm tr}=\beta/4\). These two results describe
  and budget one trace event; they are not two failure events.
- Accepted Proposition~\ref{prop:step-008-actual-output} states (3), and on
  \(E_{\rm good}\cap\mathcal E_{\rm mech}\) exports the exact actual
  selected function. Its two mechanism charges are
  \(\beta_{\rm AT}=\beta/4\) and \(\beta_{\rm SS}=\beta/4\).
- Accepted Proposition~\ref{prop:step-010-exact-leaf-witness}, together with
  accepted Lemmas~\ref{lem:step-010-parent-master-error} and
  \ref{lem:step-010-irreducible-contradiction}, states (4)-(5). The same
  \(\widehat f\) on all of \(X\) appears in its empirical loss and in the
  present population loss.
- Assumption discharge: (10) needs no iid hypothesis before its final
  specialization; Assumption~\ref{assump:realizable-iid} supplies that
  specialization and the labels used in (4). The accepted mechanism bound
  is uniform conditional on each fixed input and partition, so the tower
  property preserves it without independence.

### Exact boundary on Lyu Corollary 5.1

- Source: the same frozen source, Corollary 5.1, source label
  `coro: PAC learning`.
- Checked statement and prerequisites: the printed corollary says to combine
  the source DP-ERM theorem, Lemma 4.2, and a standard VC generalization
  argument. It states only an asymptotic PAC conclusion; it does not state
  the current four-way confidence allocation, the one-sided inequality, its
  constants, or the current VC-calibrated block threshold.
- Use boundary: Corollary 5.1 is not imported as a proof conclusion. The
  present proof separately checks its relevant prerequisites: exact
  fixed-family membership and empirical error come from accepted
  Proposition~\ref{prop:step-010-exact-leaf-witness} and
  Lemmas~\ref{lem:step-010-parent-master-error} and
  \ref{lem:step-010-irreducible-contradiction}, exact family dimension
  comes from Lemma 4.2, and the population conversion and failure ledger are
  proved below. No source tilde rate, source teacher choice, probability-one
  amplification, or unverified PAC wrapper is used.

### Internal result applications

- Proposition~\ref{prop:step-011-fixed-family} supplies the exact fixed
  family and its VC bound to
  Proposition~\ref{prop:step-011-pac-utility}.
- Proposition~\ref{prop:step-011-relative-vc} supplies the uniform
  population inequality, while
  Lemma~\ref{lem:step-011-generalization-threshold} verifies its numerical
  hypothesis for the actual \(n_0\).
- Proposition~\ref{prop:step-011-boundary} supplies the complete \(d=0\)
  branch. None of these local results assumes a generated event needed by
  the unconditional target.

## Local Derivation

### unit_001: proposition

**Proposition (Exact zero-dimensional utility boundary).**
\label{prop:step-011-boundary}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:realizable-iid}, if \(d=0\), then \(C=\{c_C\}\), the
setting-defined learner uses \(N=0\) and returns \(c_C\), and for every
\(D\) and \(c\in C\),
\[
\operatorname{err}_D(c_C,c)=0,
\qquad
\Pr[\operatorname{err}_D(c_C,c)>\alpha]=0.
\tag{11}
\]

**Proof.** If two functions \(f,g\in C\) were distinct, some
\(x\in X\) would satisfy \(f(x)\ne g(x)\). The depth-one tree whose root
is labeled by \(x\) would then have both its \(0\)- and \(1\)-edges
explained by members of \(C\), contradicting
\(\operatorname{LD}(C)=0\). Nonemptiness therefore makes \(C\) a
singleton. Realizability forces the target to be that one member, so the
setting-defined zero-sample output equals the target pointwise. Equation
(11) follows for every \(D\). No positive-branch parameter, event, or
failure allocation is evaluated. \(\square\)

### unit_002: proposition

**Proposition (Exact fixed improper SOA family has VC dimension at most
\(d\)).**
\label{prop:step-011-fixed-family}
Under Assumption~\ref{assump:finite-littlestone} and the checked exact
statement of Lyu Lemma 4.2, suppose \(d\ge1\). Define
\(\widehat C_{d+1}\) by (5), using the source SOA tie convention and the
source fixed-SOA definition of \((d+1)\)-irreducibility. Then this family
depends only on \((C,d)\), not on \(D,c,S\), the partition, or learner
randomness, and
\[
\operatorname{LD}(\widehat C_{d+1})\le d,
\qquad
\operatorname{VC}(\widehat C_{d+1})\le d.
\tag{12}
\]
The conclusion allows \(C\) and \(\widehat C_{d+1}\) to be infinite and
allows members of \(\widehat C_{d+1}\) to lie outside \(C\).

**Proof.** The exact object and convention checks under (6) discharge every
hypothesis of Lyu Lemma 4.2 with \(H=C\). Its conclusion is the first
inequality in (12).

For completeness, prove the second inequality directly. If
\(x_1,\ldots,x_q\) are VC-shattered by a binary class \(F\), form a
complete depth-\(q\) Littlestone tree by labeling every node at level
\(j\) with \(x_j\). For every root-to-leaf label sequence
\((b_1,\ldots,b_q)\), VC shattering supplies one \(f\in F\) satisfying
\(f(x_j)=b_j\) for all \(j\), so that function explains the path. Thus
\(\operatorname{LD}(F)\ge q\). Taking the largest possible \(q\) gives
\(\operatorname{VC}(F)\le\operatorname{LD}(F)\), and applying this to
\(F=\widehat C_{d+1}\) proves (12).

Definition (5) is made from the fixed ambient class and integer before any
sample is drawn. Its elements are actual binary functions on \(X\), even
when they are improper. Hence neither infinitude nor data-dependent
selection changes the cited object. \(\square\)

### unit_003: proposition

**Proposition (One-sided relative VC inequality).**
\label{prop:step-011-relative-vc}
Let \(\mathcal A\) be a fixed class of measurable subsets of a probability
space with \(\operatorname{VC}(\mathcal A)\le d\), where \(d\ge1\).
Let \(Z_1,\ldots,Z_n\) be iid with law \(P\), and write
\[
P_n(A):=\frac1n\sum_{u=1}^n\mathbf1\{Z_u\in A\}.
\]
For \(0<\eta,\zeta<1\), if
\[
n\ge\frac{1600}{\eta}
\left[d\log\frac{16e}{\eta}+\log\frac4\zeta\right],
\tag{13}
\]
then, with outer probability at least \(1-\zeta\), simultaneously for all
\(A\in\mathcal A\),
\[
P(A)\le2P_n(A)+\eta.
\tag{14}
\]
For classes whose displayed supremum event is measurable, outer probability
in this statement is ordinary probability.

**Proof.** Put \(p_A=P(A)\), and let \(P_n'(A)\) be the empirical measure
of an independent ghost sample \(Z_1',\ldots,Z_n'\). Consider
\[
\mathcal B:=\{\exists A\in\mathcal A:
                  p_A>2P_n(A)+\eta\}.
\tag{15}
\]
Every witness to (15) has \(p_A>\eta\). By (7) with
\(\theta=1/4\), for such a fixed witness,
\[
\Pr\left[P_n'(A)<\frac{3p_A}{4}\right]
\le e^{-np_A/48}
\le e^{-n\eta/48}\le\frac12.
\tag{16}
\]
The last inequality follows from (13), which is much stronger than
\(n\eta\ge48\log2\). Pointwise in the first sample, the conditional ghost
probability that at least one bad witness also satisfies
\(P_n'(A)\ge3p_A/4\) is therefore at least \(1/2\). Integrating this
pointwise statement, with upper integrals if necessary, gives the standard
double-sample implication
\[
\Pr^*(\mathcal B)
\le2\Pr^*\left[\exists A:
 p_A>2P_n(A)+\eta,
 P_n'(A)\ge\frac{3p_A}{4}\right].
\tag{17}
\]

On the event inside (17), let
\[
X:=nP_n(A),\qquad Y:=nP_n'(A),\qquad M:=X+Y.
\]
The two witness inequalities imply
\[
X<\frac{np_A}{2}<\frac23Y,
\qquad
M\ge Y\ge\frac{3np_A}{4}>\frac{3n\eta}{4}.
\tag{18}
\]
In particular, \(X<2M/5\).

Generate the same pair of iid samples by first drawing the pooled indexed
sample of size \(2n\), then choosing a uniformly random size-\(n\) subset
as the first half. Conditional on the pool and on one fixed trace of
\(A\), its pooled number of ones is \(M\), and \(X\) is a
without-replacement sample count with mean \(M/2\). Applying (8) with
population size \(2n\), sample size \(n\), population mean
\(M/(2n)\), and \(\theta=1/5\),
\[
\Pr\left[X<\frac{2M}{5}\mathrel{\Big|}\text{pool}\right]
\le2e^{-M/150}
\le2e^{-n\eta/200},
\tag{19}
\]
where the last inequality uses (18).

The necessary conditions in (18)-(19) depend on \(A\) only through its
binary trace on the pooled sample. By (9), the number of such traces is at
most \(\Pi_{\mathcal A}(2n)\le(2en/d)^d\); condition (13) implies
\(2n\ge d\). A conditional finite union over those traces, followed by
(17), proves
\[
\Pr^*(\mathcal B)
\le4\Pi_{\mathcal A}(2n)e^{-n\eta/200}
\le4\left(\frac{2en}{d}\right)^d e^{-n\eta/200}.
\tag{20}
\]

It remains to verify the claimed threshold rather than leave an implicit
\(d\log n\) term. Set
\[
q:=\log(16e/\eta),\qquad
b:=\log(4/\zeta),\qquad L:=dq+b.
\]
Condition (13) says \(n\eta\ge1600L\). Since
\(q\ge\log(16e)\) and \(\log200\le2q\), and since
\(\log y\le y\) for \(y>0\),
\[
\begin{aligned}
d\log\frac{2en}{d}
&=d\log\frac{3200e}{\eta}
  +d\log\frac{n\eta}{1600d}\\
&\le3dq+\frac{n\eta}{1600}.
\end{aligned}
\tag{21}
\]
Consequently,
\[
d\log\frac{2en}{d}+\log\frac4\zeta
\le3L+\frac{n\eta}{1600}
\le\frac{n\eta}{400}
<\frac{n\eta}{200}.
\tag{22}
\]
Equations (20)-(22) give \(\Pr^*(\mathcal B)\le\zeta\), which is
equivalent to (14). The proof never enumerates the members of
\(\mathcal A\), only their finite pooled traces. \(\square\)

### unit_004: lemma

**Lemma (The accepted master size meets the relative-VC threshold).**
\label{lem:step-011-generalization-threshold}
Under Assumption~\ref{assump:approximate-dp-regime} and the accepted
positive-branch dictionary (1), define
\[
\beta_{\rm gen}:=\frac\beta4,
\qquad C_{\rm gen}:=6400.
\tag{23}
\]
Then
\[
n_0\ge\frac{C_{\rm gen}}{\alpha}
\left[d\log\frac{16e}{\alpha}
      +\log\frac1{\beta_{\rm gen}}\right].
\tag{24}
\]
This implies condition (13) for
\(\eta=\alpha/2\), \(\zeta=\beta_{\rm gen}\).

**Proof.** On the accepted positive branch,
\(1\le v\le d\), \(k\ge2\), \(a\ge1\), and \(0<\alpha<1/4\). From
(1),
\[
Q=e+\frac{ekd^2a}{\alpha v}
\ge e+\frac{2e}{\alpha}>\frac{2e}{\alpha},
\tag{25}
\]
because \(d^2/v\ge d\ge1\). Moreover,
\(\log(2e/\alpha)\ge\log(8e)>\log8\), so
\[
\log\frac{16e}{\alpha}
=\log\frac{2e}{\alpha}+\log8
\le2\log\frac{2e}{\alpha}
\le2\log Q.
\tag{26}
\]
Also
\[
a=v+\log(4k/\beta)
\ge\log(4/\beta)
=\log(1/\beta_{\rm gen}),
\qquad \log Q>1.
\tag{27}
\]
Equations (26)-(27), together with \(d,a\ge1\), give the complete
domination
\[
d\log\frac{16e}{\alpha}
+\log\frac1{\beta_{\rm gen}}
\le3d^2a\log Q.
\tag{28}
\]
Retain the favorable lower side of the exact ceiling in (1):
\[
n_0=km\ge m
\ge C_{\rm blk}\frac{d^2a\log Q}{\alpha}
\ge\frac{2^{20}}{3\alpha}
\left[d\log\frac{16e}{\alpha}
      +\log\frac1{\beta_{\rm gen}}\right].
\tag{29}
\]
Since \(2^{20}>3\cdot6400\), (29) proves (24). Thus no ceiling or
logarithmic term is dropped.

For the final implication, direct substitution into (13) requires
\[
n_0\ge\frac{3200}{\alpha}
\left[d\log\frac{32e}{\alpha}
      +\log\frac4{\beta_{\rm gen}}\right].
\tag{30}
\]
Because \(0<\alpha<1/4\),
\(\log(32e/\alpha)\le2\log(16e/\alpha)\). Because
\(0<\beta_{\rm gen}<1/16\),
\(\log(4/\beta_{\rm gen})\le2\log(1/\beta_{\rm gen})\).
Therefore the right side of (30) is at most the right side of (24), proving
the claim. The argument includes \(d=1\), \(v=1\), and the smallest
admissible confidence boundary. \(\square\)

### unit_005: proposition

**Proposition (Population utility and exact four-charge failure ledger).**
\label{prop:step-011-pac-utility}
Under Assumptions~\ref{assump:finite-littlestone},
\ref{assump:realizable-iid}, and
\ref{assump:approximate-dp-regime}, accepted
Propositions~\ref{prop:step-004-unconditional-trace},
\ref{prop:step-005-trace-budget},
\ref{prop:step-008-actual-output}, and
\ref{prop:step-010-exact-leaf-witness}, accepted
Lemmas~\ref{lem:step-010-parent-master-error} and
\ref{lem:step-010-irreducible-contradiction}, and
Propositions~\ref{prop:step-011-fixed-family} and
\ref{prop:step-011-relative-vc} and
Lemma~\ref{lem:step-011-generalization-threshold}, suppose \(d\ge1\).
Then, for every distribution \(D\) and target \(c\in C\), the output
\(\widehat f\) satisfies
\[
\Pr[\operatorname{err}_D(\widehat f,c)>\alpha]\le\beta,
\tag{31}
\]
where probability is joint over the iid master sample, the random fixed
partition, and all learner randomness.

**Proof.** Fix \(D\) and \(c\in C\) before sampling. Define the fixed
error-set class
\[
\mathcal A_c:=
\{A_f:A_f=\{x\in X:f(x)\ne c(x)\},
          \ f\in\widehat C_{d+1}\}.
\tag{32}
\]
Xor by the fixed target labels is a bijection on every binary trace, so
\[
\operatorname{VC}(\mathcal A_c)
=\operatorname{VC}(\widehat C_{d+1})\le d
\tag{33}
\]
by Proposition~\ref{prop:step-011-fixed-family}. The class is fixed before
the data even though the learner later chooses one of its members
adaptively.

Apply Proposition~\ref{prop:step-011-relative-vc}, whose sample threshold
is verified by Lemma~\ref{lem:step-011-generalization-threshold}, with
\(\eta=\alpha/2\) and \(\zeta=\beta_{\rm gen}=\beta/4\). It produces a
sample-only event \(\mathcal E_{\rm gen}\) whose outer failure probability
is at most \(\beta_{\rm gen}\), and on which, simultaneously for every
\(f\in\widehat C_{d+1}\),
\[
\operatorname{err}_D(f,c)
\le2e_S(f)+\frac\alpha2.
\tag{34}
\]
Realizability is used exactly here to identify
\(e_S(f)=n_0^{-1}\sum_u\mathbf1\{f(x_u)\ne c(x_u)\}\).

On \(E_{\rm good}\cap\mathcal E_{\rm mech}\), accepted
Proposition~\ref{prop:step-010-exact-leaf-witness} and
Lemmas~\ref{lem:step-010-parent-master-error} and
\ref{lem:step-010-irreducible-contradiction} give the same actual output
\(\widehat f\in\widehat C_{d+1}\) and
\(e_S(\widehat f)\le\alpha/8\). Hence, on the intersection with
\(\mathcal E_{\rm gen}\), (34) gives
\[
\operatorname{err}_D(\widehat f,c)
\le2\left(\frac\alpha8\right)+\frac\alpha2
=\frac{3\alpha}{4}<\alpha.
\tag{35}
\]

It remains to charge the complement without assuming independence and
without charging any event twice. The raw formula (10) and its accepted
`step_005` scalar closure concern the same trace event, so that event is
charged once as \(\beta_{\rm tr}\). The accepted event
\(\mathcal E_{\rm mech}=\mathcal E_{\rm AT}\cap\mathcal E_{\rm SS}\)
has exactly one AboveThreshold charge and one unique-call Sparse Sample
charge. Its bound is conditional uniformly over every fixed input and
partition, so the tower property gives the same unconditional two-charge
bound. Therefore (35) implies the event containment
\[
\{\operatorname{err}_D(\widehat f,c)>\alpha\}
\subseteq
E_{\rm good}^c\cup
\mathcal E_{\rm AT}^c\cup
\mathcal E_{\rm SS}^c\cup
\mathcal E_{\rm gen}^c,
\tag{36}
\]
and finite subadditivity gives
\[
\begin{aligned}
\Pr[\operatorname{err}_D(\widehat f,c)>\alpha]
&\le\beta_{\rm tr}+\beta_{\rm AT}
     +\beta_{\rm SS}+\beta_{\rm gen}\\
&=\frac\beta4+\frac\beta4+\frac\beta4+\frac\beta4
=\beta.
\end{aligned}
\tag{37}
\]
Outer probability in the uniform event only strengthens this upper bound;
the final learner-error event is the measurable event in the formalized PAC
goal. Since \(D\) and \(c\) were arbitrary, (31) is uniform over both.
No independence among the sample, partition, and mechanisms was used.
\(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-011-boundary} proves the complete \(d=0\)
route: the unique target is returned with no data and zero error. Thus the
positive-branch divisions, logs, and events are never evaluated there.

Suppose \(d\ge1\). Accepted
Proposition~\ref{prop:step-010-exact-leaf-witness} supplies exact membership
of the selected function in the fixed family (5), under the exact source
fixed-SOA irreducibility convention. Proposition~\ref{prop:step-011-fixed-family}
applies the checked exact Lyu Lemma 4.2 to that same family and proves
\[
\boxed{
\operatorname{LD}(\widehat C_{d+1})\le d,
\qquad
\operatorname{VC}(\widehat C_{d+1})\le d.
}
\tag{38}
\]
This is a data-independent, possibly infinite improper class of actual
functions on \(X\), not a family defined after observing the learner
output.

Proposition~\ref{prop:step-011-relative-vc} proves the explicit one-sided
relative inequality. Lemma~\ref{lem:step-011-generalization-threshold}
uses the actual accepted ceiling-bearing definitions of \(m,n_0,a,Q\) to
verify
\[
\boxed{
n_0\ge\frac{6400}{\alpha}
\left[d\log\frac{16e}{\alpha}
      +\log\frac1{\beta_{\rm gen}}\right],
\qquad \beta_{\rm gen}=\beta/4.
}
\tag{39}
\]
Thus, with generalization failure at most \(\beta/4\), uniformly over the
fixed family,
\[
\operatorname{err}_D(f,c)\le2e_S(f)+\alpha/2.
\tag{40}
\]
Accepted Proposition~\ref{prop:step-010-exact-leaf-witness} and
Lemmas~\ref{lem:step-010-parent-master-error} and
\ref{lem:step-010-irreducible-contradiction} give
\(e_S(\widehat f)\le\alpha/8\) on the already produced trace and
mechanism events, so (40) gives the strict population bound
\(3\alpha/4<\alpha\).

Finally, Proposition~\ref{prop:step-011-pac-utility} combines accepted
Propositions~\ref{prop:step-004-unconditional-trace},
\ref{prop:step-005-trace-budget}, and
\ref{prop:step-008-actual-output} with the local generalization event. It
charges the trace event once, the AboveThreshold event once, the single
Sparse Sample call once, and the generalization event once, for total
failure exactly \(\beta\). These named results prove the exact accepted
`step_011` claim for adaptive improper output, possibly infinite \(C\),
\(d=1\), and the exact \(d=0\) boundary. Corollary 5.1 supplies no
additional unchecked conclusion.

## Explicit Rate Audit

- Exposed variables: the public generalization interface exposes
  \(d,\alpha,\beta,n_0\). Its calibration check also displays the inherited
  \(v,k,a,Q,m\) rather than hiding their role.
- Hidden constants may depend on: nothing. The local constants \(1600\)
  and \(C_{\rm gen}=6400\), and the inherited
  \(C_{\rm blk}=2^{20}\), are numerical universal constants.
- Hidden constants may not depend on: \(X,C,D,c,v,d,\alpha,\beta,
  \varepsilon,\delta\), the sample, partition, output, error class, or a
  generated event.
- Fixed quantities: \(C,D,c,d,\alpha,\beta\) are fixed while taking
  probability over one size-\(n_0\) iid sample; the final conclusion is
  uniform over \(D,c\). No asymptotic limit is used.
- Probability mode: high probability over the iid sample for the uniform
  VC event; joint high probability after finite addition of the partition
  and mechanism charges. Outer probability handles an arbitrary infinite
  class and reduces to ordinary probability whenever the uniform event is
  measurable. The final PAC event is measurable by the formalized goal.
- Horizon mode: one fixed sample of size \(n_0\); no stopping-time,
  all-time, expectation-only, or conditional final theorem.
- Norm mode: empirical and population binary \(0\)-\(1\) error for the
  same selected function and fixed target.
- Admissibility conditions and auxiliary tolerances:
  \(0<\alpha,\beta<1/4\), \(d\ge1\) on the positive branch,
  \(\eta=\alpha/2\), and \(\zeta=\beta_{\rm gen}=\beta/4\). The \(d=0\)
  branch is exact and separate.
- Term absorption or simplification inequalities: equations (21)-(22)
  remove the implicit \(d\log n\) term; (25)-(29) prove that the actual
  block calibration dominates both
  \(d\log(16e/\alpha)\) and \(\log(1/\beta_{\rm gen})\); (30) verifies the
  exact substitution into (13). No ceiling or log term is absorbed by
  prose.
- Probability conversion: equation (17) is the double-sample conversion;
  (19)-(20) are the conditional pooled-trace union; (36)-(37) add exactly
  \(\beta_{\rm tr},\beta_{\rm AT},\beta_{\rm SS},\beta_{\rm gen}\), with
  no independence and no repeated trace charge.
- Contribution to any Rate Specialization Bridge: (39) is the explicit
  \(O([d\log(1/\alpha)+\log(1/\beta)]/\alpha)\) generalization threshold
  required before `step_012` eliminates all auxiliaries. This step does not
  claim the final public \(R_{\rm VC}\) bound.
- Baseline-reduction check: \(d=0\) retains exact zero-sample recovery;
  \(d=1\) and \(v=1\) satisfy every denominator and threshold; empirical
  error zero is covered by (40); infinite \(C\) is handled through pooled
  traces; and no new positive power of \(v\) or finite-cardinality term is
  introduced. At \(v=d\), this generalization bridge is unchanged.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing objects:
  - \(\widehat C_{d+1}\) in (5) is the accepted fixed improper output
    family. It is defined directly from the setting quantities \(C,d\) and
    the checked source conventions.
  - \(\beta_{\rm gen}=\beta/4\) is the accepted sketch allocation, and
    the exported interface is population error at most \(\alpha\) with
    total failure at most \(\beta\).
- Appendix-local objects:
  - \(\mathcal A_c\) is the xor error-set translation of the fixed family
    for one fixed target \(c\); it is eliminated after applying the uniform
    result.
  - \(\mathcal E_{\rm gen}\) is the generated sample-only uniform event
    proved in this step. It is not a theorem assumption.
  - The numerical constants \(1600\) and \(C_{\rm gen}=6400\) are proved
    sufficient by Propositions~\ref{prop:step-011-relative-vc} and
    Lemma~\ref{lem:step-011-generalization-threshold}; they are not free
    bounded quantities.
- Proof-local objects:
  - \(P_n,P_n',p_A,X,Y,M,q,b,L\) and the ghost and pooled samples occur
    only inside the proof of the relative-VC proposition and are eliminated
    from its conclusion.
- Inherited objects and constants:
  - \(E_{\rm good},\mathcal E_{\rm AT},\mathcal E_{\rm SS},
    \mathcal E_{\rm mech}\) are accepted derived events from `step_004`,
    `step_005`, and `step_008`; none is primitive or conditionally assumed
    in the final conclusion.
  - \(a,Q,m,n_0,k,C_{\rm blk}\) are the exact accepted dependency objects
    in (1). Their lower bounds in (25)-(29) are derived here rather than
    assumed.
- Assumption provenance:
  - Fixed-family dimension is derived in this step from
    Assumption~\ref{assump:finite-littlestone} and checked Lyu Lemma 4.2.
  - The iid sample law and equality of empirical loss with error-set
    empirical measure come only from
    Assumption~\ref{assump:realizable-iid}.
  - The alpha/beta boundary and allocation legality come from
    Assumption~\ref{assump:approximate-dp-regime} and the accepted
    dependencies. No privacy property is used in population conversion.
- Diagnostic boundary: the paired `global_proof.md` and
  `global_proof_review.md` were verified current, and the review status is
  `ACCEPTED`. The diagnostic suggested the planning decomposition into exact
  family dimension, relative VC, sample-threshold verification, and failure
  assembly. Every one of those claims is independently proved above; the
  diagnostic is not evidence, a cited result, an assumption source, or
  authority to change the target claim.
