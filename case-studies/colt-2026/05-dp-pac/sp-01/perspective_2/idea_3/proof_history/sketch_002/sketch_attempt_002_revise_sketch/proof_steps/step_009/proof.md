# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_009`
- Unit attempt: 1
- Binding setting SHA-256: `13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327`
- Accepted proof-sketch SHA-256: `51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8`
- Accepted proof-sketch-review SHA-256: `98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89`
- Accepted diagnostic/review SHA-256: `dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407` / `fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710`
- Accepted `step_001` proof/review SHA-256: `061c31df9fd9ebb495de80126984df01e0f75a7e8d711b96fb14c6567499b486` / `1c08770404c3d9c8a40ad34913620008d83a573c6c115dc9acfe081c3aa65ca6`
- Accepted `step_006` proof/review SHA-256: `3a761879525b3a4832fcfaa0b119a9307b7c027594271fd20e392ffbb1bc464f` / `331d52e75329220d7fa686561708c7e91dbf261704597893d8e5da5d83bd3303`

## Target Step Claim

- Intended claim: For every fixed partition and transcript, prove
  \((\mathrm{RawList})\), then prove the total procedure is
  \((\varepsilon,\delta)\)-DP on every labeled neighboring pair.
- Depends on: accepted `step_001` and `step_006`.
- Assumptions used: primitive `assump:approximate-dp-regime`; no utility
  event.
- Technical challenge: raw replacement, adaptive stopping, empty paths,
  \(\perp\), and stage exhaustion.
- Intended proof tool or cited result: Lyu Lemmas 3.1--3.2,
  adaptive/concurrent composition, postprocessing, and data-independent
  mixtures.
- Output target: end-to-end all-input DP.
- Rate objective: explicit privacy allocation with no stage power.
- Row-local review status: PENDING. Sketch acceptance is supplied by the
  binding `proof_sketch_review.md`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:approximate-dp-regime`: \(0<\alpha,\beta<1/4\),
    \(0<\varepsilon\le1\), and \(0<\delta<1\). The privacy derivation uses
    only the last two ranges, but it keeps the accepted parameter package
    unchanged.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-001-boundary-entry} supplies the
    deterministic zero-sample \(d=0\) learner and the legal positive branch.
  - Accepted Propositions~\ref{prop:step-001-teacher-existence} and
    \ref{prop:step-001-totality} supply the fixed public allocations
    \[
    \delta_{\rm AT}=\delta_{\rm SS}=\delta/2,\qquad
    \varepsilon_s=\varepsilon/8,
    \]
    the accepted \(\eta,k,m,n_0,L,B\), the data-independent default
    \(h_0\), one fixed-block AboveThreshold process, at most one Sparse
    Sample call, and a defined output on every arbitrary labeled input and
    every terminal path.
  - Accepted Proposition~\ref{prop:step-006-essential-lists} supplies, for
    every arbitrary input and every stage, the exact totalized lists
    \(\mathcal L_i^r\) of actual functions, with empty restrictions mapped
    to empty lists and
    \[
    |\mathcal L_i^r|\le L=p_d^d2^{d^2}.
    \]
    No membership in \(E_{\rm good}\) is needed for this list definition or
    envelope.
- Local conditional hypotheses: None. Fixing a partition, an ordered
  neighboring pair, or a transcript is part of universal quantification in
  the local results, not an added theorem condition.

No realizability, iid sampling, trace event, list-support event, common-item
event, mechanism-accuracy event, or population-generalization event is used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumption~\ref{assump:approximate-dp-regime} and accepted Propositions~\ref{prop:step-001-totality} and \ref{prop:step-006-essential-lists}, for every fixed ordered block partition \(P\), every ordered raw-record replacement pair \(s,s'\), every stage, and every transcript prefix reaching that stage, the list tuples differ in at most the unique coordinate containing the replaced raw index. | Proves the exact all-input \((\mathrm{RawList})\) interface. |
| unit_002 | lemma | Under Proposition~\ref{prop:step-009-raw-list}, every fixed-partition max-frequency stage query has raw replacement sensitivity at most one, including empty-list stages. | Supplies the exact query hypothesis of Lyu Lemma 3.2 without a per-stage privacy sum. |
| unit_003 | proposition | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Proposition~\ref{prop:step-001-teacher-existence}, and Lemma~\ref{lem:step-009-score-sensitivity}, the whole externally stopped AboveThreshold transcript is \((\varepsilon/4,\delta/2)\)-DP for every fixed partition. | Applies the exact Lyu Lemma 3.2 wrapper to the complete adaptive prefix. |
| unit_004 | proposition | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Propositions~\ref{prop:step-001-teacher-existence}, \ref{prop:step-001-totality}, and \ref{prop:step-006-essential-lists}, and Proposition~\ref{prop:step-009-raw-list}, for every fixed transcript the optional post-transcript mechanism is \((\varepsilon/4,\delta/2)\)-DP: it is one Sparse Sample call after a first Above and the fixed default after exhaustion. | Applies Lyu Lemma 3.1 to the exact one-coordinate list replacement and totalizes no-call, \(\perp\), and default paths. |
| unit_005 | proposition | Under Propositions~\ref{prop:step-009-at-privacy} and \ref{prop:step-009-conditional-sparse}, adaptive/concurrent composition and postprocessing make the complete fixed-partition learner \((\varepsilon/2,\delta)\)-DP, without requiring neighboring executions to realize the same transcript. | Closes transcript divergence, adaptive stopping, and all fixed-partition terminal paths. |
| unit_006 | proposition | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Proposition~\ref{prop:step-001-boundary-entry}, and Proposition~\ref{prop:step-009-fixed-partition}, averaging over the data-independent random partition preserves \((\varepsilon/2,\delta)\)-DP; together with the \(d=0\) branch, the advertised learner is \((\varepsilon,\delta)\)-DP on every labeled neighboring pair. | Exports end-to-end all-input privacy and the exact boundary case. |

Atomic step = no. Raw block locality, score sensitivity, interactive transcript
privacy, the transcript-indexed optional call, adaptive composition, and the
partition mixture are independent nontrivial obligations.

## Cited Result Applications

### Accepted `step_001` dependency

- Source or name: accepted Propositions~\ref{prop:step-001-boundary-entry},
  \ref{prop:step-001-teacher-existence}, and
  \ref{prop:step-001-totality}, proof/review hashes recorded in the identity
  above.
- Restated statement in current notation: the \(d=0\) learner has no input
  records and returns its unique concept deterministically. On the
  \(d\ge1\) branch, all scalar parameters are public and legal, one
  data-independent uniform permutation of the \(n_0=km\) indices creates
  \(k\) blocks of size \(m\), and the total learner submits the scores
  \(q_0,\ldots,q_d\) to one AboveThreshold process, stops at the first
  Above, calls Sparse Sample exactly once at that stage, maps \(\perp\) to
  the fixed \(h_0\), and otherwise maps all-Below exhaustion to \(h_0\).
  Its fixed privacy parameters obey
  \[
  g_\delta=\log(4/\delta),\qquad
  \eta=\frac{\varepsilon}
  {4c_{\rm AT}(\sqrt{g_\delta}+g_\delta)},\qquad
  \varepsilon_s=\varepsilon/8,
  \tag{1}
  \]
  \[
  \delta_{\rm AT}=\delta_{\rm SS}=\delta/2,qquad
  B=\left\lceil\frac{10\log(L/\delta_{\rm SS})}
  {\varepsilon_s}\right\rceil.
  \tag{2}
  \]
- Instantiated objects: exactly the branch learner and parameter tuple fixed
  in the accepted sketch. There is no substitute threshold, list, default,
  or stopping rule.
- Assumption discharge: Assumption~\ref{assump:approximate-dp-regime}
  gives positive legal privacy parameters. The remaining legality and every
  terminal behavior are accepted dependency conclusions.
- Conclusion used: totality, exact allocations, the one-call bound, and the
  deterministic \(d=0\) branch. The dependency did not assert raw
  sensitivity or positive-branch privacy; those are proved below.

### Accepted `step_006` dependency

- Source or name: accepted Proposition~\ref{prop:step-006-essential-lists},
  proof/review hashes recorded above.
- Restated statement in current notation: for every stage \(0\le r\le d\)
  and block \(i\),
  \[
  \mathcal L_i^r=
  \begin{cases}
  \varnothing,&H_i^r=\varnothing,\\
  \operatorname{Ess}_{p_r,d}(H_i^r),&H_i^r\ne\varnothing,
  \end{cases}
  \qquad |\mathcal L_i^r|\le L.
  \tag{3}
  \]
  These are sets of actual functions on \(X\), not trace representatives.
- Instantiated objects: the exact lists in the total arbitrary-input
  learner, including lists generated from nonrealizable and inconsistently
  labeled blocks.
- Assumption discharge: this is an accepted dependency conclusion. Its
  deterministic definition and envelope do not require the utility event
  \(E_{\rm good}\).
- Conclusion used: (3), the fact that the list is a deterministic functional
  of the current block-defined class and public parameters, and the uniform
  size bound needed by Lyu Lemma 3.1. No DDim, inclusion, or utility output
  is used in this step.

### Lyu Algorithm 1 and Lemma 3.1

- Source identity: Xin Lyu, *Private Learning of Littlestone Classes,
  Revisited*, arXiv:2510.00076v1. The checked frozen
  `submission/main.tex` has SHA-256
  `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.
  The exact source labels are Algorithm 1
  (`algo:private sample`) and Lemma 3.1
  (`lemma: privacy of sparse sampling`).
- Restated statement in current notation: given a fixed universe \(\mathcal U\),
  \(k\) lists \(\mathcal L_1,\ldots,\mathcal L_k\subseteq\mathcal U\)
  of size at most \(L\), exponent parameter \(e_s>0\), and failure-symbol
  score \(B_s\), Algorithm 1 outputs an item in
  \(\bigcup_i\mathcal L_i\) or \(\perp\). If
  \[
  B_s\ge \frac{10\log(L/\delta_s)}{e_s},
  \tag{4}
  \]
  then its output law is \((2e_s,\delta_s)\)-DP with respect to addition,
  removal, or replacement of one entire list coordinate.
- Current-object map: \(\mathcal U=\{0,1\}^X\),
  \(e_s=\varepsilon_s\), \(\delta_s=\delta_{\rm SS}\),
  \(B_s=B\), and the input tuple is \(F_r^P(s)\). Proposition
  \ref{prop:step-009-raw-list} supplies exact one-coordinate replacement;
  accepted Proposition~\ref{prop:step-006-essential-lists} supplies the
  size promise; (2) supplies (4).
- Source-convention compatibility: the source adjacency object is a tuple of
  sets over an arbitrary, possibly unbounded universe. The current lists are
  exactly such sets of actual functions, and the raw-to-list map produces
  the source's replacement adjacency, not a trace or support surrogate.
- Conclusion used: one selected-stage call is
  \((2\varepsilon_s,\delta_{\rm SS})=(\varepsilon/4,\delta/2)\)-DP.
  The source lemma does not itself prove raw-record locality, choose the
  stage, exclude \(\perp\), or totalize a no-call path.

### Lyu Algorithm 2 and Lemma 3.2

- Source identity and labels: the same frozen arXiv v1 source, Algorithm 2
  (`algo: abovethreshold`) and Lemma 3.2
  (`lemma: privacy of abovethreshold`).
- Restated statement in current notation: if every query sent to Algorithm 2
  has sensitivity at most one, then for every \(\delta_a>0\), a process with
  base parameter \(e_a\) and positive-report budget \(K\) is
  \[
  \left(e_a\,O\!\left(\sqrt{K\log(1/\delta_a)}
  +\log(1/\delta_a)\right),\delta_a\right)\text{-DP}.
  \tag{5}
  \]
  The accepted current wrapper fixes a universal \(c_{\rm AT}\ge1\) so
  that, for \(K=1\), the first coordinate is at most
  \[
  c_{\rm AT}e_a
  \left(\sqrt{\log(2/\delta_a)}+\log(2/\delta_a)\right).
  \tag{6}
  \]
  The source remarks immediately after Lemma 3.2 that its transcript may be
  interleaved with other private mechanisms and cites concurrent-composition
  theorems for treating the accounting sequentially.
- Current-object map: the private data is the ordered labeled raw input with
  fixed public partition \(P\); the query at stage \(r\) is \(q_r^P\);
  the public threshold is \(k/2\); \(K=1\); \(e_a=\eta\); and
  \(\delta_a=\delta_{\rm AT}\). Lemma
  \ref{lem:step-009-score-sensitivity} discharges sensitivity for every
  query and every prefix.
- Source-convention compatibility: each \(q_r^P\) is a fixed function of an
  arbitrary ordered raw dataset once \(P,C,r\), and the public parameters
  are fixed. Its sensitivity is for the same one-record replacement
  adjacency used in the setting. The theorem controls the whole interactive
  transcript, not one isolated stage.
- Conclusion used: the stopped transcript is
  \((\varepsilon/4,\delta/2)\)-DP. Lemma 3.2 supplies no list-adjacency or
  optional-Sparse-Sample conclusion.

### Adaptive/concurrent composition and postprocessing

- Source or name: standard basic adaptive composition for approximate DP,
  together with the concurrent interactive extension cited by Lyu directly
  after Lemma 3.2 (Vadhan--Wang 2021, Lyu 2022, and Vadhan--Zhang 2023).
- Restated statement: let a first interactive mechanism have transcript
  \(T\) and be \((\varepsilon_1,\delta_1)\)-DP. For every fixed possible
  transcript \(t\), let the next kernel \(K_t\), as a function of the same
  private input, be \((\varepsilon_2,\delta_2)\)-DP with uniform parameters.
  The adaptive joint release \((T,Z)\), where
  \(Z\sim K_T\), is
  \((\varepsilon_1+\varepsilon_2,\delta_1+\delta_2)\)-DP. This statement
  compares the full joint laws and does not assume that neighboring
  executions realize the same transcript. The concurrent theorem gives the
  same sequential accounting when constituent interactive mechanisms are
  interleaved. Any data-independent measurable function of a DP release is
  DP with the same parameters.
- Instantiated objects: \(T\) is the first-Above/all-Below transcript from
  Proposition~\ref{prop:step-009-at-privacy}; \(K_t\) is the one-call or
  no-call kernel from Proposition~\ref{prop:step-009-conditional-sparse}.
  In the present learner, Sparse Sample starts only after the
  AboveThreshold interaction has stopped, so ordinary adaptive composition
  already suffices; the cited concurrent result covers the stronger source
  interleaving convention as well.
- Assumption discharge: both constituent guarantees hold for every ordered
  neighboring raw pair with parameters independent of \(t\). There is one
  optional second call, and all subsequent maps, including
  \(\perp\mapsto h_0\) and projection away from the transcript, are
  data-independent postprocessing.
- Conclusion used: the fixed-partition learner is
  \((\varepsilon/2,\delta)\)-DP.

### Internal result applications

- Proposition~\ref{prop:step-009-raw-list} supplies exact one-list
  replacement to Lemma~\ref{lem:step-009-score-sensitivity} and to every
  fixed-transcript Sparse Sample kernel.
- Lemma~\ref{lem:step-009-score-sensitivity} supplies the query hypothesis
  of Proposition~\ref{prop:step-009-at-privacy}.
- Propositions~\ref{prop:step-009-at-privacy} and
  \ref{prop:step-009-conditional-sparse} supply the two uniform adaptive
  mechanisms composed by Proposition~\ref{prop:step-009-fixed-partition}.
- Proposition~\ref{prop:step-009-fixed-partition} supplies the pointwise-in-
  \(P\) inequality averaged by Proposition~\ref{prop:step-009-mixture}.

## Local Derivation

### unit_001: proposition

**Proposition (Ordered raw replacement changes one list coordinate).**
\label{prop:step-009-raw-list}
Under Assumption~\ref{assump:approximate-dp-regime} and accepted
Propositions~\ref{prop:step-001-totality} and
\ref{prop:step-006-essential-lists}, suppose \(d\ge1\). Fix an ordered
partition
\[
P=(I_1,\ldots,I_k),\qquad [n_0]=\bigsqcup_{i=1}^k I_i,qquad |I_i|=m,
\]
of the raw indices. If ordered labeled datasets \(s,s'\) differ only at
index \(u\), and \(b=b_P(u)\) is the unique block with \(u\in I_b\), then
for every \(0\le r\le d\),
\[
F_r^P(s)_i=F_r^P(s')_i\quad(i\ne b),
\qquad
F_r^P(s):=(\mathcal L_1^r(s),\ldots,\mathcal L_k^r(s)).
\tag{7}
\]
Thus \(F_r^P(s)\) and \(F_r^P(s')\) are adjacent by replacement of at most
one list coordinate. Equation (7) holds at every fixed transcript prefix at
which stage \(r\) is queried, including arbitrary-label, empty-restriction,
and empty-list inputs.

**Proof.** For \(i\ne b\), every indexed labeled record in block \(I_i\)
is identical under \(s\) and \(s'\). Hence, for every function \(h\in C\),
\[
\frac1m\sum_{j\in I_i}{\bf1}\{h(x_j)\ne y_j\}
=
\frac1m\sum_{j\in I_i}{\bf1}\{h(x'_j)\ne y'_j\}.
\tag{8}
\]
The threshold \(\rho^{r+1}\gamma\) is public and identical in both
executions, so (8) gives
\[
H_i^r(s)=H_i^r(s')\qquad(i\ne b).
\tag{9}
\]
The scale \(p_r\), ambient dimension parameter \(d\), and fixed source SOA
tie convention are also public and identical. By the exact accepted list
definition (3), equality in (9) therefore gives equality of the corresponding
essential-function sets. If the common class is empty, both lists are the
totalized empty list; if it is nonempty, both lists are the same deterministic
set \(\operatorname{Ess}_{p_r,d}(H_i^r)\). This proves (7).

The affected list at coordinate \(b\) may change arbitrarily, including
between empty and nonempty. That is exactly one-coordinate replacement, so no
control of the amount of change inside that list is required. The lists are
defined before and independently of the AboveThreshold randomness, hence the
same conclusion holds for every fixed transcript prefix that reaches stage
\(r\). No relation between the labels and any member of \(C\) was used.
\(\square\)

### unit_002: lemma

**Lemma (Sensitivity one of every max-frequency query).**
\label{lem:step-009-score-sensitivity}
Under Proposition~\ref{prop:step-009-raw-list}, for every fixed partition
\(P\), every ordered neighboring pair \(s,s'\), every
\(0\le r\le d\), and every transcript prefix reaching stage \(r\),
\[
|q_r^P(s)-q_r^P(s')|\le1.
\tag{10}
\]
This includes the case in which one or both stage unions are empty and the
accepted convention gives \(q_r=0\).

**Proof.** For every function \(f:X\to\{0,1\}\), extend the stage frequency
by zero outside the finite union of lists and write
\[
\nu_r^{P,s}(f):=\sum_{i=1}^k
{\bf1}\{f\in\mathcal L_i^r(s)\}.
\tag{11}
\]
Proposition~\ref{prop:step-009-raw-list} says that all summands except
possibly the one indexed by \(b=b_P(u)\) agree under \(s\) and \(s'\).
Therefore, simultaneously for every \(f\),
\[
|\nu_r^{P,s}(f)-\nu_r^{P,s'}(f)|
=\left|{\bf1}\{f\in\mathcal L_b^r(s)\}
-{\bf1}\{f\in\mathcal L_b^r(s')\}\right|\le1.
\tag{12}
\]
Every list is finite by the accepted dependency, so each frequency has finite
support and its maximum exists unless every list is empty; in the latter case
the accepted maximum is zero. From (12),
\[
q_r^P(s)=\max_f\nu_r^{P,s}(f)
\le \max_f\nu_r^{P,s'}(f)+1=q_r^P(s')+1,
\]
where the same inequality is immediate if the left union is empty. Swapping
\(s,s'\) proves (10). Duplicate occurrences of one actual function across
blocks are exactly what (11) counts, while duplicate sample traces never
enter the argument. \(\square\)

### unit_003: proposition

**Proposition (Privacy of the complete stopped AboveThreshold transcript).**
\label{prop:step-009-at-privacy}
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Proposition~\ref{prop:step-001-teacher-existence}, and
Lemma~\ref{lem:step-009-score-sensitivity}, fix any partition \(P\). The
complete transcript \(T_P(s)\) obtained by submitting
\(q_0^P,\ldots,q_d^P\) to one Lyu Algorithm 2 process with base parameter
\(\eta\), public threshold \(k/2\), positive-report budget one, external
stopping at the first Above, and finite exhaustion after stage \(d\), is
\[
(\varepsilon/4,\delta/2)\text{-DP}
\tag{13}
\]
as a mechanism of the arbitrary ordered labeled input \(s\).

**Proof.** Once \(P\) is fixed, each \(q_r^P\) is a fixed raw-dataset query.
Lemma~\ref{lem:step-009-score-sensitivity} gives replacement sensitivity at
most one for every such query and, in particular, at every adaptively reached
prefix. Lyu Lemma 3.2 therefore applies to the one process rather than to
each of its \(d+1\) possible query calls separately.

With \(\delta_{\rm AT}=\delta/2\), the exact logarithm in the accepted
wrapper (6) is
\[
\log(2/\delta_{\rm AT})=\log(4/\delta)=g_\delta.
\tag{14}
\]
Using (1), its first privacy coordinate is at most
\[
c_{\rm AT}\eta(\sqrt{g_\delta}+g_\delta)
=\frac{\varepsilon}{4}.
\tag{15}
\]
The positive-report budget is one. Externally retaining only the prefix
through the first Above is postprocessing of the interactive transcript; if
no Above occurs, retaining the finite \(d+1\)-report prefix is likewise a
fixed truncation. Thus (14)--(15) and Lemma 3.2 prove (13).

An empty stage has the defined query value zero, so it needs no separate
source convention. The formula has no multiplicative or additive privacy
power in \(d+1\): all reports belong to the single Lemma 3.2 process with
budget one. \(\square\)

### unit_004: proposition

**Proposition (Uniform privacy of the transcript-indexed optional call).**
\label{prop:step-009-conditional-sparse}
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Propositions~\ref{prop:step-001-teacher-existence},
\ref{prop:step-001-totality}, and
\ref{prop:step-006-essential-lists}, and
Proposition~\ref{prop:step-009-raw-list}, fix any partition \(P\). For every
fixed possible stopped transcript \(t\), define a raw-input kernel
\(K_t^P\) as follows:

- if \(t\) has its first Above at \(r_*\in\{0,\ldots,d\}\), run Lyu
  Algorithm 1 once on \(F_{r_*}^P(s)\) with
  \((\varepsilon_s,B)\), return an actual sampled function unchanged, and
  map \(\perp\) to \(h_0\);
- if \(t\) is the all-Below transcript through stage \(d\), make no Sparse
  Sample call and return \(h_0\).

Then every \(K_t^P\), uniformly over \(t\), is
\[
(\varepsilon/4,\delta/2)\text{-DP}
\tag{16}
\]
as a mechanism of every arbitrary ordered labeled input.

**Proof.** First suppose \(t\) selects \(r_*\). Accepted Proposition
\ref{prop:step-006-essential-lists} gives
\(|\mathcal L_i^{r_*}(s)|\le L\) for every block and every arbitrary input,
including empty lists. Proposition~\ref{prop:step-009-raw-list} gives exact
replacement of at most one list coordinate between neighboring raw inputs.
Finally, (2) gives
\[
B\ge \frac{10\log(L/\delta_{\rm SS})}{\varepsilon_s}.
\tag{17}
\]
Every hypothesis of Lyu Lemma 3.1 is now discharged on the exact list tuple,
so the Algorithm 1 output in
\(\bigcup_i\mathcal L_i^{r_*}\cup\{\perp\}\) is
\[
(2\varepsilon_s,\delta_{\rm SS})
=(\varepsilon/4,\delta/2)\text{-DP}.
\tag{18}
\]
The map that fixes every actual function and sends \(\perp\) to the
data-independent \(h_0\) is postprocessing, so it preserves (18). If all
lists are empty, Algorithm 1 has only \(\perp\) in its codomain and the same
argument remains valid. This covers immediate Above at \(r_*=0\), Above at
the final stage, and every intermediate first-Above transcript.

For the all-Below transcript, \(K_t^P\) is the constant mechanism \(h_0\),
hence is \((0,0)\)-DP and therefore also satisfies (16). Thus stage
exhaustion and the no-call path share the uniform parameters required by
adaptive composition. \(\square\)

### unit_005: proposition

**Proposition (Fixed-partition end-to-end privacy under transcript divergence).**
\label{prop:step-009-fixed-partition}
Under Propositions~\ref{prop:step-009-at-privacy} and
\ref{prop:step-009-conditional-sparse}, for every fixed partition \(P\),
the complete positive-dimensional learner, including its stopping stage,
optional Sparse Sample output, failure-symbol fallback, all-Below fallback,
and stage exhaustion, is
\[
(\varepsilon/2,\delta)\text{-DP}
\tag{19}
\]
on every ordered neighboring pair of labeled inputs.

**Proof.** Proposition~\ref{prop:step-009-at-privacy} makes the first
interactive transcript \((\varepsilon/4,\delta/2)\)-DP. For every fixed
possible value \(t\) of that transcript, Proposition
\ref{prop:step-009-conditional-sparse} makes the ensuing raw-input kernel
\(K_t^P\) uniformly \((\varepsilon/4,\delta/2)\)-DP. Basic adaptive
composition therefore makes the joint release of the transcript and the
kernel output
\[
\left(\frac\varepsilon4+\frac\varepsilon4,
\frac\delta2+\frac\delta2\right)
=(\varepsilon/2,\delta)\text{-DP}.
\tag{20}
\]
The theorem applies to the joint laws directly. It does not condition the
two neighboring executions on obtaining a common random transcript, so one
execution may stop immediately while the other continues or stops at a
different stage. For each fixed transcript value, the corresponding kernel
was nevertheless checked on both raw inputs in Proposition
\ref{prop:step-009-conditional-sparse}; this is the exact hypothesis needed
for adaptive composition.

The learner's released hypothesis is a deterministic projection of the
joint pair. The maps from actual items or \(\perp\) to the released function,
and from the exhausted transcript to \(h_0\), are already included and are
data-independent postprocessing. Projecting away the transcript preserves
(20), proving (19). If the interaction is viewed in the more general source
convention as interleaved, the concurrent composition theorem cited after
Lyu Lemma 3.2 gives the same sequential accounting; in the present procedure
the optional call occurs only after stopping, so no stronger theorem is
needed. \(\square\)

### unit_006: proposition

**Proposition (Data-independent partition mixture and all-input privacy).**
\label{prop:step-009-mixture}
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Proposition~\ref{prop:step-001-boundary-entry}, and
Proposition~\ref{prop:step-009-fixed-partition}, the total learner
\(A_C^{\rm VC\text{-}Lyu}\) is \((\varepsilon,\delta)\)-DP on every
ordered labeled neighboring pair, including nonrealizable pairs. More
strongly, its positive-dimensional branch is
\((\varepsilon/2,\delta)\)-DP.

**Proof.** On the \(d\ge1\) branch, let \(\pi\) be the common distribution
of the ordered block partition induced by the uniform random permutation.
It is independent of the labeled data. Write \(A_P\) for the fixed-partition
mechanism of Proposition~\ref{prop:step-009-fixed-partition}. For any
ordered neighboring \(s,s'\) and measurable output event \(E\), Proposition
\ref{prop:step-009-fixed-partition} holds for every fixed \(P\), so
\[
\begin{aligned}
\Pr[A_C^{\rm VC\text{-}Lyu}(s)\in E]
&=\int \Pr[A_P(s)\in E]\cdot\pi(dP)\\
&\le\int\left(e^{\varepsilon/2}\Pr[A_P(s')\in E]+\delta\right)\pi(dP)\\
&=e^{\varepsilon/2}\Pr[A_C^{\rm VC\text{-}Lyu}(s')\in E]+\delta.
\end{aligned}
\tag{21}
\]
Thus averaging over the partition does not add privacy loss. The argument
uses the same partition only inside the pointwise inequality; (21) is an
inequality between the actual independently randomized output laws.

On the \(d=0\) branch, the accepted learner has \(N=0\) and returns the
unique \(c_C\) deterministically, so it is \((0,0)\)-DP. Finally,
\(e^{\varepsilon/2}\le e^\varepsilon\) because \(\varepsilon>0\). Hence
both branches satisfy the advertised \((\varepsilon,\delta)\) inequality.
No line used realizability or any utility event. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-009-raw-list} proves the exact accepted
\((\mathrm{RawList})\) statement for every fixed partition, raw index,
stage, and transcript prefix on arbitrary labeled inputs. It identifies the
same unique affected block at all stages. Lemma
\ref{lem:step-009-score-sensitivity} converts that exact one-coordinate
interface into sensitivity one for every max-frequency query, with empty
unions handled by the defined zero score.

Proposition~\ref{prop:step-009-at-privacy} then instantiates the exact Lyu
Lemma 3.2 source label and accepted \(\eta\)-wrapper on the entire stopped
transcript. It obtains \((\varepsilon/4,\delta/2)\) once for the one process,
not once per stage. For every possible transcript, Proposition
\ref{prop:step-009-conditional-sparse} checks the exact Lyu Lemma 3.1 list
size, threshold, and replacement hypotheses. It gives one optional
\((\varepsilon/4,\delta/2)\) call, with immediate Above, final-stage Above,
all-empty inputs, \(\perp\), no Above, and exhaustion all totalized.

Proposition~\ref{prop:step-009-fixed-partition} uses adaptive/concurrent
composition to compare full neighboring transcript laws, including divergent
stopping stages, and obtains \((\varepsilon/2,\delta)\) before
postprocessing. Proposition~\ref{prop:step-009-mixture} averages the exact
fixed-partition inequality over the common data-independent partition,
incorporates the deterministic \(d=0\) branch, and weakens only the first
privacy coordinate from \(\varepsilon/2\) to the advertised \(\varepsilon\).
These named results prove the exact `step_009` row without a utility event,
a stage power, or evidence from the global diagnostic.

## Explicit Rate Audit

- Exposed variables: the privacy conclusion exposes \(\varepsilon,\delta\).
  The fixed interaction has stages \(0,\ldots,d\), and the accepted list
  admissibility uses \(k,L,B\), but none contributes a positive stage or
  structural power to the privacy loss.
- Hidden constants may depend on: only the fixed universal
  \(c_{\rm AT}\) already present in the accepted Lemma 3.2 wrapper.
- Hidden constants may not depend on: \(d,v,\alpha,\beta,\varepsilon,\delta\),
  \(X,C\), any input, label, partition, block, stage, restriction, list,
  transcript, stopping stage, decomposition, or output.
- Fixed quantities: for (13)--(20), \(C\), the public parameters, and the
  partition \(P\) are fixed. Equation (21) then averages over the exact
  data-independent law of \(P\).
- Probability mode: differential privacy of output laws for every fixed
  ordered neighboring pair, over all partition, AboveThreshold, and Sparse
  Sample randomness. This is not a high-probability or conditional-on-
  utility-event statement.
- Horizon mode: one finite interactive transcript of at most \(d+1\)
  reports, externally stopped at the first Above, followed by at most one
  Sparse Sample call. Lyu Lemma 3.2 accounts for the full transcript with
  positive-report budget one; there is no naive \(d+1\) composition.
- Norm mode: the measurable-output-event likelihood inequality defining
  \((\varepsilon,\delta)\)-DP. No empirical or population risk is used.
- Admissibility conditions and auxiliary tolerances: (1)--(2), sensitivity
  one from (10), list size at most \(L\), and threshold inequality (17).
- Term absorption or simplification inequalities:
  \[
  c_{\rm AT}\eta(\sqrt{g_\delta}+g_\delta)=\varepsilon/4,
  \qquad 2\varepsilon_s=\varepsilon/4,
  \]
  \[
  (\varepsilon/4,\delta/2)+(\varepsilon/4,\delta/2)
  =(\varepsilon/2,\delta),
  \qquad e^{\varepsilon/2}\le e^\varepsilon.
  \]
  No \(d\)-dependent term is dropped or hidden.
- Probability conversion: only the pointwise data-independent mixture (21)
  and DP postprocessing are used. There is no union bound and no confidence
  budget enters privacy.
- Contribution to any Rate Specialization Bridge: this step exports the
  exact all-input privacy interface consumed by `step_012`; it contributes no
  sample-size simplification.
- Baseline-reduction check: \(d=0\) remains the exact deterministic
  zero-sample learner. At \(d=1\), empty or nonempty first-stage inputs,
  immediate Above, final-stage Above, and all-Below exhaustion use the same
  constant privacy allocation. The successful realizable source path is
  unchanged, while the added defaults are postprocessing only.

## Blockers

None

## Notation And Assumption Notes

- Public-facing: only the final conclusion that
  \(A_C^{\rm VC\text{-}Lyu}\) is all-input
  \((\varepsilon,\delta)\)-DP. The stronger
  \((\varepsilon/2,\delta)\) positive-branch bound is an appendix-facing
  proof interface, not a changed advertised privacy parameter.
- Appendix-local: the fixed-partition list map \(F_r^P\), stopped transcript
  \(T_P\), transcript-indexed kernel \(K_t^P\), and fixed-partition learner
  \(A_P\). The first is defined in the accepted sketch; the remaining three
  package the adaptive-composition proof and are eliminated by (21).
- Proof-local: the affected-block index \(b_P(u)\), the extended frequency
  \(\nu_r^{P,s}(f)\), and the partition law \(\pi\). Each is defined from an
  ordered raw index, accepted lists, or the learner's data-independent
  randomization and is used only in its local derivation.
- Inherited public parameters: \(g_\delta,\eta,\varepsilon_s,
  \delta_{\rm AT},\delta_{\rm SS},k,m,n_0,L,B,h_0\) are accepted
  `step_001` objects. No new constant, threshold, margin, rate, or failure
  allocation is introduced here.
- Inherited generated objects: \(H_i^r\) and \(\mathcal L_i^r\) are accepted
  exact arbitrary-input objects from `step_001` and `step_006`. Their
  block-local equality is proved in Proposition
  \ref{prop:step-009-raw-list}; it is not assumed.
- Assumption provenance: the only primitive condition used independently is
  Assumption~\ref{assump:approximate-dp-regime}. Totality, finite list size,
  public parameter legality, and the \(d=0\) branch are accepted dependency
  conclusions. RawList, score sensitivity, transcript privacy, conditional
  sampler privacy, and the mixture inequality are proved in this step. There
  are no local conditional hypotheses exported to the target assembly.
- Arbitrary-input boundary: equations (7)--(21) apply to arbitrary labels,
  repeated domain points, empty restrictions, empty lists, an immediate
  Above, no Above, a last-stage Above, \(\perp\), the fixed default, and stage
  exhaustion. Realizability is never invoked.
- Source-version boundary: both Lyu privacy lemmas were checked against
  arXiv:2510.00076v1 at the exact labels listed above and the frozen source
  hash in this artifact. Lemma 3.1 is used only after the current raw input is
  mapped to its exact one-list replacement object. Lemma 3.2 is used only
  after every current raw query is proved sensitivity one. Neither source
  statement is credited with those current wrappers.
- Diagnostic boundary: the paired `global_proof_review.md` has status
  `ACCEPTED`. The diagnostic's Block F suggested organizing the argument as
  RawList, score sensitivity, per-transcript optional-call privacy, adaptive
  composition, and a partition mixture. Every mathematical statement here
  was independently established from the setting, accepted dependencies,
  checked source results, and named local units. The diagnostic was not used
  as proof evidence, a cited result, an assumption source, or authority to
  change the target claim.
