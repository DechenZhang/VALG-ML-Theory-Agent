# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_011`
- Unit attempt: 2
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof/review SHA-256 pairs:
  - `step_003`:
    `b55c3326656c172d547fc0e26cc17d5ec006ef35a631e7c98934c6bd078d3280` /
    `c39a5a44a4c9e0b6bc33f6ceaa9ce98e5f00c61dc4ee701d301f0f96e8fa51aa`;
  - `step_008`:
    `903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760` /
    `cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b`;
  - `step_010`:
    `f119835bca16b5d87d71cfd4e52f0cd9bddc4d0b2fdfe21a5d9f96146e9a8e98` /
    `46714f79e4b8525356b6f736fd6849f7e58ca6f68c0d06741fde5849a60c8e74`.
- Dependency-refresh trigger: accepted `step_003` attempt 3 repaired the
  universal-versus-arm-specific empty-input law, and accepted `step_010`
  attempt 2 refreshed its own dependency provenance. This attempt preserves
  the accepted seven-unit privacy proof while binding it to those current
  interfaces.
- Prior same-step proof/review SHA-256:
  `4d74815bd98d393bbf1f6645eb3baf852b0c1cd3b0315f8d9740440dd0fd09ef` /
  `32d1f7b5480c011b27b9326d036d7ce9081374105539502d7d6f756ad2417b9a`.
  The controller archive at
  `perspective_2/idea_4/proof_history/sketch_001/step_step_011_attempt_001_dependency_refresh_after_step_003_attempt_003_and_step_010_attempt_002/`
  is provenance only and is not proof evidence.
- Independently checked primary source: Xin Lyu, *Private Learning of
  Littlestone Classes, Revisited*, arXiv:2510.00076v1,
  `<TEMP_ROOT>/lyu-source.bdDyo3/submission/main.tex`, SHA-256
  `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Target Step Claim

- Intended claim: Prove all-input quotient and raw replacement
  \((\varepsilon,\delta)\)-DP for the released output.
- Depends on: `step_003`, `step_008`, `step_010`.
- Assumptions used: Primitive `assump:approximate-dp-regime`; derived
  quotient neighbor/list locality.
- Technical challenge: Adaptive stopping, empty paths, and raw-to-list
  adjacency.
- Intended proof tool or cited result: Lyu privacy lemmas,
  sensitivity-one queries, adaptive composition, and postprocessing.
- Output target: Raw learner DP.
- Rate objective: Explicit two-component privacy allocation.
- Row-local review status: `PENDING`; the binding accepted
  `proof_sketch_review.md`, rather than this row-local field, is the
  acceptance gate.

The controller-expanded obligation is exact and all-input. For every raw
replace-one pair, including arbitrary nonrealizable labels, the proof must
first pass through the recordwise quotient, then prove that at every common
AboveThreshold transcript prefix at most one entire teacher-list coordinate
can change. It must instantiate one sensitivity-one AboveThreshold process
and at most one one-list-private Sparse Sample call, then compose their exact
allocations:

\[
 (\varepsilon_{\rm AT},\delta_{\rm AT})
   =(\varepsilon/4,\delta/2),
 \qquad
 (\varepsilon_{\rm sp},\delta_{\rm SS})
   =(\varepsilon/4,\delta/2),
\tag{1}
\]

Here \(\varepsilon_{\rm sp}:=2\varepsilon_{\rm SS}=\varepsilon/4\) is the
Sparse Sample privacy charge, whereas the exponent parameter of that source
mechanism is \(\varepsilon_{\rm SS}=\varepsilon/8\).

The proof must establish privacy for the released \(H_C\)-valued output for
every measurable event. Empty restrictions and lists, no-call and stage-exhaustion
paths, the Sparse Sample symbol \(\perp\), invalid totalized paths, different
selected stages, list ordering and duplicates, \(N=0\), \(d=0\), the formal
\(k=2\) boundary, and arbitrary improper outputs must all remain in scope.
No realizability condition, \(E_{\rm good}\), mechanism-good event, actual
output event, or empirical/population utility statement may be used to prove
privacy.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions used directly:
  - Assumption~\ref{assump:approximate-dp-regime}:
    \(0<\varepsilon\leq1\) and \(0<\delta<1\), together with the accepted
    deterministic mechanism allocations. The parameters \(\alpha,\beta\)
    may affect the already fixed lists and public dictionary, but neither a
    utility event nor a sampling-distribution hypothesis is used here.
- Derived invariants and interfaces supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-003-coding}, **Measurable coding of
    pointwise restrictions, lists, transcripts, and their laws**, supplies a
    finite measurable AboveThreshold transcript and measurable totalized
    fallback/output coordinates on every quotient input.
  - Accepted Proposition~\ref{prop:step-003-quotient-kernel}, **Quotient
    kernel for every totalized pointwise output law**, supplies the exact
    quotient learner kernel \(K_C\) on all of \(Z_Q^N\), including arbitrary
    labels, duplicates, invalid-source sanitation, and fallback. Its
    arm-specific null clause applies here because the current law is the
    setting-defined VC-Lyu arm: on \(d=0,N=0\), it imports the accepted
    zero-dimensional arm law and gives
    \(K_0(\varnothing,\cdot)=\delta_{\bar c_0}\). The proposition does not
    identify an arbitrary separately supplied empty-input law as Dirac.
  - Accepted Proposition~\ref{prop:step-003-raw-pullback}, **Measurable raw
    pullback of the quotient kernel**, supplies the raw learner kernel

    \[
      A_N(s,E)=K_C(T_N(s),E),
      \qquad E\in\mathcal H_C.
      \tag{2}
    \]

    Universally this gives \(A_0=K_0\); for the current setting-defined
    VC-Lyu null arm, the preceding arm-specific identity therefore gives
    \(A_0=K_0=\delta_{\bar c_0}\).
  - Accepted Lemma~\ref{lem:step-008-stage-map} and
    Proposition~\ref{prop:step-008-essential-lists} supply, for every fixed
    block \(i\) and stage \(r\), a restriction \(H_i^r\) determined only by
    that indexed block and its finite totalized list
    \(\mathcal L_i^r\subseteq H_C\). Empty restrictions are sent to the empty
    list; no source decomposition, DDim, or SOA is evaluated on an empty
    class.
  - Accepted Proposition~\ref{prop:step-008-list-envelope} supplies the
    unconditional all-input cap

    \[
      |\mathcal L_i^r|\leq L
      \qquad(i\in[k],\ 0\leq r\leq d),
      \tag{3}
    \]
    including totalized-empty lists. No eventwise cross-block inclusion from
    Step 008 is used.
  - Accepted Lemma~\ref{lem:step-010-score-support}, **Sensitivity-one
    occurrence scores and finite mechanism support**, supplies the exact
    list-interface statement that replacement of one entire list coordinate
    changes the maximum occurrence query by at most one, and that the Sparse
    Sample support has at most \(kL+1\) elements including \(\perp\). Its
    accepted proof expressly leaves raw-record-to-list locality to this step.
  - The exact mechanism implementation and totalization recorded in accepted
    Step 010 use one first-`Above` prefix, one Sparse Sample call only after a
    selected stage, and the fixed default \(\bar c_0\) on every no-call,
    \(\perp\), exhausted, or residual invalid terminal path. This step uses
    the implementation and source calibration, not Step 010's
    mechanism-good event or actual-output conclusion.
- Accepted dependency artifacts: exactly the six current proof/review files
  identified by the hashes in `## Step Identity`. Every listed review has
  status `ACCEPTED` and matches its current proof artifact.
- Local conditional hypotheses:
  - Units below fix one realization of the data-independent index partition.
    This is proof-local conditioning only; Proposition
    ~\ref{prop:step-011-quotient-dp} averages over its unchanged distribution.
  - The selected-stage Sparse Sample analysis fixes one possible common
    AboveThreshold history. Every such conditional kernel is proved private,
    and Lemma~\ref{lem:step-011-adaptive-composition} removes the
    conditioning. No assertion that neighboring executions select the same
    stage is made.

There are no local conditional hypotheses about realizability, a target
concept, \(E_{\rm good}\), \(E_{\rm mech}\), list nonemptiness, a successful
mechanism output, empirical loss, population loss, or a coupling event.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the setting's recordwise quotient and data-independent fixed-block construction, if raw inputs are replace-one neighbors, their quotient images are equal or replace-one neighbors; for any fixed partition, a quotient replacement changes at most one ordered teacher block, with no change when \(N=0\). | Localizes every raw replacement before any generated list or mechanism is inspected. |
| `unit_002` | proposition | Under accepted Proposition~\ref{prop:step-003-coding}, Lemma~\ref{lem:step-008-stage-map}, Propositions~\ref{prop:step-008-essential-lists} and~\ref{prop:step-008-list-envelope}, and accepted Lemma~\ref{lem:step-010-score-support}, at every stage and every common transcript prefix a quotient replacement changes at most one totalized list coordinate and hence changes the next maximum-occurrence query by at most one; all lists retain cap \(L\). | Proves the missing raw/quotient-record-to-one-list interface, including arbitrary labels, empty and sanitized paths, ordering, and duplicates. |
| `unit_003` | proposition | Under Assumption~\ref{assump:approximate-dp-regime}, Proposition~\ref{prop:step-011-list-locality}, and checked Lyu Lemma 3.2, the finite first-`Above` transcript at a fixed partition is \((\varepsilon/4,\delta/2)\)-DP on every quotient neighboring pair. | Establishes the first exact mechanism component without a per-stage composition cost or a utility event. |
| `unit_004` | proposition | Under Assumption~\ref{assump:approximate-dp-regime}, Proposition~\ref{prop:step-011-list-locality}, and checked Lyu Lemma 3.1, for every possible common AboveThreshold history the selected-stage Sparse Sample followed by totalization is \((\varepsilon/4,\delta/2)\)-DP; no-call and invalid-history continuations are constant and hence \((0,0)\)-DP. | Establishes a uniformly private adaptive second component even when actual neighboring runs select different stages. |
| `unit_005` | lemma | If \(\varepsilon_1,\varepsilon_2\geq0\), \(0\leq\delta_1,\delta_2\leq1\), a finite-transcript first kernel is \((\varepsilon_1,\delta_1)\)-DP, and every history-indexed second kernel is \((\varepsilon_2,\delta_2)\)-DP, then their adaptive joint law is \((\varepsilon_1+\varepsilon_2,\delta_1+\delta_2)\)-DP; every measurable postprocessing has the same guarantee. | Proves the exact sum-\(\delta\) adaptive composition and directionality used here rather than hiding it behind a stage-agreement assumption. |
| `unit_006` | proposition | Under Propositions~\ref{prop:step-011-at-privacy} and~\ref{prop:step-011-sparse-privacy} and Lemma~\ref{lem:step-011-adaptive-composition}, the released quotient kernel, after averaging over the common data-independent partition, is \((\varepsilon/2,\delta)\)-DP on all quotient neighbors. | Composes the two components, treats every fallback as postprocessing, and proves the all-input quotient inequality for arbitrary measurable output events. |
| `unit_007` | proposition | Under accepted Propositions~\ref{prop:step-003-quotient-kernel} and~\ref{prop:step-003-raw-pullback}, Lemma~\ref{lem:step-011-record-locality}, and Proposition~\ref{prop:step-011-quotient-dp}, the raw kernel in (2) is \((\varepsilon/2,\delta)\)-DP and therefore \((\varepsilon,\delta)\)-DP; because this kernel is the setting-defined VC-Lyu arm, the accepted arm-specific \(d=0,N=0\) clause makes its null law \((0,0)\)-DP. | Gives the exact quotient-to-raw pullback, explicitly discharges the arm-specific null premise, and closes all requested boundary cases. |

Atomic step = no. Record transport, all-stage list locality, the two source
privacy mechanisms, adaptive approximate-DP composition, the partition
mixture/output postprocessing, and the raw pullback are independent
nontrivial obligations.

## Cited Result Applications

### Accepted Step 003: measurable quotient and raw kernels

- Restated result: Accepted Propositions
  ~\ref{prop:step-003-coding},
  ~\ref{prop:step-003-quotient-kernel}, and
  ~\ref{prop:step-003-raw-pullback} state that the exact totalized procedure
  has a measurable finite transcript kernel and an \(H_C\)-valued quotient
  kernel \(K_C\) on every quotient input, and that (2) is a Markov kernel on
  every raw input. The input domain includes duplicates and arbitrary labels;
  invalid, empty, no-success, \(\perp\), and fallback statuses are measurable;
  universally, the empty-input pullback satisfies only \(A_0=K_0\). If the
  supplied law is a setting-defined learner arm, the accepted arm-specific
  clause gives \(K_0=A_0=\delta_{\bar c_0}\). The current VC-sensitive law is
  exactly such an arm, so the conditional clause applies; no Dirac conclusion
  is drawn for an arbitrary separately supplied Borel law on \(H_C\).
- Instantiated objects: The current VC-sensitive quotient learner at its
  setting-defined sample size, its AboveThreshold transcript, its optional
  Sparse Sample output, and its released \(H_C\)-valued marginal.
- Assumption discharge: The accepted proof/review pair at the hashes in
  `## Step Identity` discharges countable-discrete input and standard-Borel
  output measurability. This proof uses those exported kernels and event
  sections without reopening a selector or measurability argument.
- Conclusion used: All probability inequalities below are legitimate kernel
  inequalities for every \(E\in\mathcal H_C\), and the final pointwise
  quotient inequality can be pulled back exactly through (2).

### Accepted Step 008: all-input finite stage lists

- Restated result: For the positive branch and every indexed block \(i\),
  accepted Lemma~\ref{lem:step-008-stage-map} defines

  \[
    H_i^r
    =\{\bar h\in\bar C:
       \operatorname{err}_{\bar S_i}(\bar h)
       \leq \rho^{r+1}\gamma\},
    \qquad 0\leq r\leq d,
    \tag{4}
  \]
  from that block alone. Accepted Proposition
  ~\ref{prop:step-008-essential-lists} assigns a fixed finite ordered
  essential-function set to every nonempty restriction and the empty list to
  an empty restriction. Accepted Proposition
  ~\ref{prop:step-008-list-envelope} gives (3) unconditionally.
- Instantiated objects: The same data-independent partition and the same
  \(d+1\) block-local stage lists consumed by AboveThreshold and Sparse
  Sample.
- Assumption discharge: The dependency's finite-Littlestone and source
  premises were discharged in its accepted proof. This step uses only the
  unconditional block-local definition, actual-function list identity,
  empty-list totalization, and cap. It does not use the event-conditional
  cross-block inclusion, DDim descent, common item, or any utility output.
- Conclusion used: Identical ordered block data give identical restrictions,
  fixed decomposition choices, fixed ordered lists, and sanitation outcomes.
  Hence one record replacement can change only the list coordinate of its
  one containing block.

### Accepted Step 010: list-interface sensitivity and mechanism law

- Restated result: Accepted Lemma~\ref{lem:step-010-score-support} states
  that for finite sets \(L_1,\ldots,L_k\subseteq H_C\), each of size at most
  \(L\),

  \[
    q(L_1,\ldots,L_k)
    :=\max_{\bar h\in H_C}
      \sum_{i=1}^k\mathbf 1\{\bar h\in L_i\}
    \tag{5}
  \]
  changes by at most one when one entire list coordinate is replaced. It
  also states that the Sparse Sample support
  \(\bigcup_iL_i\cup\{\perp\}\) is finite of size at most \(kL+1\), with
  a positive finite normalizer, and that an all-empty tuple has score zero.
- Instantiated objects: The sanitized tuple
  \((\mathcal L_1^r,\ldots,\mathcal L_k^r)\) at each stage, including tuples
  with some or all lists empty.
- Assumption discharge: Proposition~\ref{prop:step-011-list-locality} below
  proves the raw/quotient-record-to-one-list premise deliberately left open
  by the accepted Step 010 result. The accepted Step 010 mechanism-good
  event, selected-score lower bound, actual-list output, and realizable
  source-good antecedent are not used.
- Conclusion used: Equation (5) is a legal sensitivity-one query at every
  common prefix, and the selected-stage Sparse Sample law has the exact
  finite source interface on every input.

### Lyu Algorithm 1 and Lemma 3.1: Private Sparse Sample

- Source: Frozen Lyu v1 labels `algo:private sample` and
  `lemma: privacy of sparse sampling`, at the source hash in
  `## Step Identity`.
- Restated statement in current notation: Given an arbitrary domain
  \(\mathcal U\), \(k\geq1\) subsets
  \(L_1,\ldots,L_k\subseteq\mathcal U\), \(\varepsilon_s>0\), and \(B\geq0\),
  define

  \[
    s(u)=|\{i:u\in L_i\}|,
    \quad u\in\bigcup_iL_i,
    \qquad s(\perp)=B,
  \]
  and sample \(z\in\bigcup_iL_i\cup\{\perp\}\) with mass proportional to
  \(\exp(\varepsilon_s s(z))\). If every \(|L_i|\leq L\) and

  \[
    B\geq\frac{10\log(L/\delta_s)}{\varepsilon_s},
    \tag{6}
  \]
  then this global-output-space law is
  \((2\varepsilon_s,\delta_s)\)-DP under addition, removal, or replacement
  of any one entire list coordinate.
- Instantiation: \(\mathcal U=H_C\),

  \[
    \varepsilon_s=\varepsilon_{\rm SS}:=\varepsilon/8,
    \qquad \delta_s=\delta_{\rm SS}:=\delta/2,
  \]
  and the accepted ceiling-defined

  \[
    B=\left\lceil
       \frac{10\log(L/\delta_{\rm SS})}
            {\varepsilon_{\rm SS}}
      \right\rceil.
    \tag{7}
  \]
- Assumption discharge: Equation (3) supplies the cap, (7) implies (6), and
  Proposition~\ref{prop:step-011-list-locality} proves the one-list
  replacement premise at every fixed stage. Empty lists are allowed. Thus
  the exact source conclusion is

  \[
    (2\varepsilon_{\rm SS},\delta_{\rm SS})
    =(\varepsilon/4,\delta/2)\text{-DP}.
    \tag{8}
  \]
- Conclusion used: The selected-stage conditional kernel in Proposition
  ~\ref{prop:step-011-sparse-privacy} satisfies (8) before \(\perp\) is
  mapped to \(\bar c_0\).

### Lyu Algorithm 2 and Lemma 3.2: AboveThreshold

- Source: Frozen Lyu v1 labels `algo: abovethreshold` and
  `lemma: privacy of abovethreshold`, at the source hash in
  `## Step Identity`.
- Restated statement in current notation: For sensitivity-one adaptive
  queries, the Cohen--Lyu AboveThreshold implementation with independent
  \(\operatorname{Lap}(1/\eta)\) query noise and at most \(K\) counted
  crossings is, for every \(\delta_a>0\),

  \[
    \left(
      \eta\,O\!\left(
        \sqrt{K\log(1/\delta_a)}+\log(1/\delta_a)
      \right),
      \delta_a
    \right)\text{-DP}.
    \tag{9}
  \]
  A deterministic finite truncation and release of only a transcript prefix
  are postprocessings of this transcript.
- Instantiation: \(K=1\), \(\delta_a=\delta_{\rm AT}:=\delta/2\), and the
  accepted source constant \(c_{\rm AT}\geq1\) is fixed large enough that
  the first coordinate in (9) is at most

  \[
    c_{\rm AT}\eta
    \left(\sqrt{\log(1/\delta_{\rm AT})}
          +\log(1/\delta_{\rm AT})\right).
    \tag{10}
  \]
  With

  \[
    g_\delta:=\log(4/\delta),
    \qquad
    \eta:=\frac{\varepsilon}
      {4c_{\rm AT}(\sqrt{g_\delta}+g_\delta)},
    \tag{11}
  \]
  and
  \(\log(1/\delta_{\rm AT})=\log(2/\delta)\leq g_\delta\), (10) is at most
  \(\varepsilon/4\).
- Assumption discharge: Proposition~\ref{prop:step-011-list-locality}
  proves sensitivity one for the next query at every common transcript
  prefix, without a success event. The current process counts at most the
  first `Above` and is truncated after the \(d+1\) setting-defined stages.
- Conclusion used: Its finite first-crossing transcript is
  \((\varepsilon/4,\delta/2)\)-DP at each fixed data-independent partition.

No external adaptive-composition theorem is used without proof. Lemma
~\ref{lem:step-011-adaptive-composition} proves the exact finite-transcript
sum-\(\delta\) statement needed below.

## Local Derivation

### unit_001: lemma

**Lemma (Recordwise quotient adjacency and fixed-block localization).**
\(\label{lem:step-011-record-locality}\)
Under the setting's recordwise quotient map and data-independent partition
construction, let \(N\in\mathbb N_0\). If \(s,s'\in Z_X^N\) are replace-one
neighbors, then \(T_N(s)\) and \(T_N(s')\) are equal or replace-one neighbors
in \(Z_Q^N\). If \(\bar s,\bar s'\in Z_Q^N\) are equal or replace-one
neighbors and a fixed partition \(\pi\) assigns the \(N\) coordinate indices
to \(k\) ordered blocks, then equal quotient tuples give equal ordered block
tuples; otherwise the block tuples are equal except possibly at the unique
block containing the changed coordinate. For \(N=0\), all these tuples are
the same empty tuple.

**Proof.** Write

\[
 s=((x_j,y_j))_{j=1}^N,
 \qquad
 s'=((x'_j,y'_j))_{j=1}^N.
\]

If the raw tuples are equal, their quotient images are equal. Otherwise,
there is one index \(j_*\) such that
\((x_j,y_j)=(x'_j,y'_j)\) for every \(j\ne j_*\). Since \(T_N\) acts
coordinatewise,

\[
 T_N(s)_j=(\kappa(x_j),y_j)
          =(\kappa(x'_j),y'_j)=T_N(s')_j
 \qquad(j\ne j_*).
\tag{12}
\]

In this latter case, at \(j_*\) the two quotient records may also coincide,
for example when
the raw points lie in the same evaluation cell and the labels agree. Thus
the quotient tuples are either equal or differ at precisely that one
coordinate. No realizability relation between \(x_j\) and \(y_j\) was used.

Now fix quotient tuples \(\bar s,\bar s'\) and an index partition \(\pi\). If
\(\bar s=\bar s'\), every ordered block projection is identical, so no
changed block need be named. Otherwise, let \(j_*\) be their unique differing
coordinate. Every coordinate belongs to exactly one block; call the block
containing \(j_*\) by \(i_*=i_*(\pi,j_*)\). The
ordered block projection for every \(i\ne i_*\) uses only unchanged
coordinates and is therefore identical under \(\bar s\) and \(\bar s'\).
Only block \(i_*\) can differ, and within it only one ordered record differs.
This conclusion is deterministic conditional on \(\pi\), holds for every
possible changed label, and is unaffected by duplicate records. If \(N=0\),
there is only the empty raw tuple, its empty quotient image, and the unique
empty block state; the assertions are identities. \(\square\)

### unit_002: proposition

**Proposition (All-stage one-list locality and sensitivity at every common
prefix).**
\(\label{prop:step-011-list-locality}\)
Under accepted Proposition~\ref{prop:step-003-coding}, accepted
Lemma~\ref{lem:step-008-stage-map}, accepted Propositions
~\ref{prop:step-008-essential-lists} and
~\ref{prop:step-008-list-envelope}, accepted Lemma
~\ref{lem:step-010-score-support}, and Lemma
~\ref{lem:step-011-record-locality}, suppose \(d\geq1\). Fix a partition
\(\pi\) and quotient neighbors \(\bar s\sim\bar s'\). There is a block
\(i_*\in[k]\) such that, simultaneously for every \(0\leq r\leq d\),

\[
 \mathcal L_i^r(\bar s,\pi)
 =\mathcal L_i^r(\bar s',\pi)
 \qquad(i\ne i_*),
\tag{13}
\]

while both possibly different \(i_*\)-lists are finite subsets of \(H_C\)
of size at most \(L\). Consequently the two stage-\(r\) list tuples differ
by replacement of at most one entire list coordinate, and

\[
 |q_r(\bar s,\pi)-q_r(\bar s',\pi)|\leq1,
 \qquad 0\leq r\leq d,
\tag{14}
\]

where

\[
 q_r(\bar z,\pi)
 :=\max_{\bar h\in H_C}
   \sum_{i=1}^k
   \mathbf1\{\bar h\in\mathcal L_i^r(\bar z,\pi)\}.
\tag{15}
\]

At every common prefix of the stopped AboveThreshold transcript, both
executions request the same next stage \(r\), so (14) is the exact
sensitivity-one adaptive-query condition. The statement includes arbitrary
nonrealizable labels, empty restrictions and lists, pointwise sanitation,
fixed list orderings, repeated encodings, and duplicate functions across
different block lists.

**Proof.** If \(\bar s=\bar s'\), all block data, sanitized lists, and scores
are equal; since the positive branch has \(k\geq2\), choose any
\(i_*\in[k]\), and (13)-(14) follow. Hence assume that the quotient inputs
are strict replace-one neighbors. By
Lemma~\ref{lem:step-011-record-locality}, only the ordered data of their
unique changed block \(i_*\) can differ. Equation (4) shows that \(H_i^r\) is a
function only of the ordered data in block \(i\), the fixed public stage,
and the fixed public thresholds. The binding accepted construction fixes a
decomposition and a list ordering by a lookup on this local quotient-block
state. Therefore identical local states use identical restrictions,
decomposition choices, essential-function sets, and orderings. This proves
(13) for every \(i\ne i_*\) and every stage simultaneously.

If a local restriction is empty, accepted Proposition
~\ref{prop:step-008-essential-lists} assigns that coordinate the empty
list. If a purported local list is nonfinite, outside \(H_C\), oversized, or
otherwise invalid, the accepted totalization sanitizes that one coordinate
to the empty list before either mechanism reads it. This sanitation is
pointwise in the same local block state and therefore cannot change a
second coordinate. For a nonempty valid restriction, the accepted source
construction supplies its finite actual-function set; accepted Proposition
~\ref{prop:step-008-list-envelope} gives (3). Hence both possible
\(i_*\)-lists are legal and capped even though they may be completely
different. No stability of individual candidates is required.

For completeness, fix \(r\) and abbreviate the two list tuples by
\(\mathbf L=(L_1,\ldots,L_k)\) and
\(\mathbf L'=(L'_1,\ldots,L'_k)\). For every \(\bar h\in H_C\), (13) gives

\[
 \left|
  \sum_i\mathbf1\{\bar h\in L_i\}
  -\sum_i\mathbf1\{\bar h\in L'_i\}
 \right|
 =|\mathbf1\{\bar h\in L_{i_*}\}
   -\mathbf1\{\bar h\in L'_{i_*}\}|
 \leq1.
\tag{16}
\]

Taking maxima and applying (16) in each direction proves (14). The maximum
is well-defined even if \(H_C\) is infinite: if the union is nonempty it is
attained on the finite union of lists, and if all lists are empty its value
is zero. An algorithmic ordering is only an encoding of each finite set.
Repeated positions are setified by the accepted list interface, and the
score counts membership in a block list once. The same function appearing
in several different block lists is intentionally counted once per block
and does not affect (16).

Before the first `Above`, a common transcript prefix consists of the same
number \(r\) of preceding `Below` reports, so both executions request the
same setting-defined query \(q_r\). If a prefix is exhausted or invalid, no
further data query is made. Thus every next query at every common prefix is
either the same sensitivity-one function in (14) or a constant no-query
continuation. This argument is pointwise for all quotient inputs and never
uses \(E_{\rm good}\), realizability, or a mechanism-accuracy event.
\(\square\)

### unit_003: proposition

**Proposition (All-input privacy of the stopped AboveThreshold prefix).**
\(\label{prop:step-011-at-privacy}\)
Under Assumption~\ref{assump:approximate-dp-regime}, Proposition
~\ref{prop:step-011-list-locality}, and checked Lyu Lemma 3.2, fix a
data-independent partition \(\pi\). Let \(M_{\rm AT}^{\pi}\) be the finite
transcript kernel that queries \(q_0,\ldots,q_d\) in order, stops at its
first `Above`, and otherwise records exhaustion after stage \(d\). Include
the selected stage or the no-selection tag in the transcript. Then, on all
quotient inputs and for every measurable transcript event \(F\),

\[
 M_{\rm AT}^{\pi}(\bar s,F)
 \leq e^{\varepsilon/4}
       M_{\rm AT}^{\pi}(\bar s',F)+\delta/2
 \qquad(\bar s\sim\bar s').
\tag{17}
\]

The same inequality holds with \(\bar s,\bar s'\) interchanged.

**Proof.** At every common transcript prefix, Proposition
~\ref{prop:step-011-list-locality} gives exactly the sensitivity-one
premise of Lyu Lemma 3.2. The process counts at most one `Above`. Its
termination after at most \(d+1\) queries and its retention of only the
first-crossing prefix are deterministic postprocessings of the source
transcript; neither operation increases privacy loss.

Put \(\delta_{\rm AT}=\delta/2\). The choice (11) and

\[
 \log(1/\delta_{\rm AT})=\log(2/\delta)
 \leq \log(4/\delta)=g_\delta
\]

give, from (10),

\[
\begin{aligned}
 \varepsilon_{\rm AT}
 &\leq c_{\rm AT}\eta
   \left(\sqrt{\log(1/\delta_{\rm AT})}
         +\log(1/\delta_{\rm AT})\right)\\
 &\leq c_{\rm AT}
   \frac{\varepsilon}
        {4c_{\rm AT}(\sqrt{g_\delta}+g_\delta)}
   (\sqrt{g_\delta}+g_\delta)
 =\frac{\varepsilon}{4}.
\end{aligned}
\tag{18}
\]

Lyu Lemma 3.2 therefore gives (17). Its DP statement is for every ordered
neighbor pair and every transcript event. Because replacement adjacency is
symmetric, applying the same statement to the ordered pair
\((\bar s',\bar s)\) gives the reverse inequality; it is not obtained by
algebraically reversing (17). Empty-list scores, arbitrary labels, and an
eventual no-selection transcript are ordinary inputs and outputs of this
same source process. No accuracy condition on its Laplace noises was
conditioned upon. \(\square\)

### unit_004: proposition

**Proposition (Uniform selected-stage Sparse Sample privacy and totalized
no-call continuations).**
\(\label{prop:step-011-sparse-privacy}\)
Under Assumption~\ref{assump:approximate-dp-regime}, Proposition
~\ref{prop:step-011-list-locality}, and checked Lyu Lemma 3.1, fix a
partition \(\pi\) and any possible AboveThreshold history \(t\). Define a
total conditional \(H_C\)-valued kernel \(M_{2,t}^{\pi}\) as follows:

1. if \(t\) selects a stage \(r\in\{0,\ldots,d\}\), apply Sparse Sample to
   the sanitized tuple
   \((\mathcal L_1^r,\ldots,\mathcal L_k^r)\) with (7), then map
   \(\perp\) to \(\bar c_0\) and retain every actual \(H_C\)-item; and
2. if \(t\) records no selection, exhaustion, an out-of-range stage, or an
   invalid/no-call tag, return \(\bar c_0\) deterministically.

Then for every history \(t\), every quotient neighboring pair, and every
\(E\in\mathcal H_C\),

\[
 M_{2,t}^{\pi}(\bar s,E)
 \leq e^{\varepsilon/4}
       M_{2,t}^{\pi}(\bar s',E)+\delta/2.
\tag{19}
\]

This uniform statement does not require the selected stages in two actual
neighboring executions to agree.

**Proof.** First suppose that \(t\) selects the common history-indexed stage
\(r\). Proposition~\ref{prop:step-011-list-locality} says that the two
stage-\(r\) input tuples differ in at most one entire list coordinate, and
(3) bounds every list by \(L\). The ceiling in (7) implies the source
threshold premise (6). Lyu Lemma 3.1 therefore makes the Sparse Sample law
on the fixed global space \(H_C\cup\{\perp\}\)

\[
 (2\varepsilon_{\rm SS},\delta_{\rm SS})
 =(\varepsilon/4,\delta/2)\text{-DP}.
\tag{20}
\]

The deterministic map

\[
 \phi(z):=
 \begin{cases}
 z,&z\in H_C,\\
 \bar c_0,&z=\perp
 \end{cases}
\tag{21}
\]

is measurable. For any \(E\in\mathcal H_C\), the probability after
totalization is the pre-totalization probability of
\(\phi^{-1}(E)\). Applying (20) to this measurable preimage proves (19).
This remains valid when an actual categorical item equals \(\bar c_0\):
the preimage then contains both that actual item and \(\perp\), and
postprocessing still applies to the union.

All stage lists have already been sanitized before the occurrence query and
before Sparse Sample. Thus a private-data-dependent invalid list does not
choose between an unaccounted mechanism and a constant branch: its one
coordinate is replaced by the empty list, and the same source mechanism is
run on the resulting legal tuple. If all selected lists are empty, the
source support is only \(\{\perp\}\), its normalizer is the positive weight
\(e^{\varepsilon_{\rm SS}B}\), and (21) makes the continuation constant.
Partially empty tuples require no special case. A zero normalizer or an
out-of-support categorical outcome has probability zero under the exact
source law; its predeclared fallback is still the same measurable
postprocessing.

If \(t\) is a no-call, exhausted, out-of-range, or invalid history, the
conditional law is \(\delta_{\bar c_0}\) for every input. It is
\((0,0)\)-DP and hence satisfies (19). We define this constant continuation
even for histories having probability zero so that the adaptive family is
total on the whole finite transcript space.

The proof is indexed by a *common value* \(t\) of the first transcript. If
one actual execution selects stage \(r\) and the other selects stage \(r'\),
we never compare \(\mathcal L^r(\bar s)\) directly with
\(\mathcal L^{r'}(\bar s')\). The private first transcript accounts for the
different-history probabilities; for each possible shared history, the
conditional second kernel satisfies (19). This is precisely the interface
used by adaptive composition. No actual-output or good-noise event has been
used. \(\square\)

### unit_005: lemma

**Lemma (Exact finite-transcript adaptive composition and
postprocessing).**
\(\label{lem:step-011-adaptive-composition}\)
Let \(M_1\) be a kernel from a database space to a finite discrete
transcript space \((\mathsf T,2^{\mathsf T})\). For every
\(t\in\mathsf T\), let \(M_{2,t}\)
be a kernel from the same database space to a measurable space
\((\mathsf Y,\mathcal Y)\). Let \(\varepsilon_1,\varepsilon_2\geq0\) and
\(0\leq\delta_1,\delta_2\leq1\). Suppose, for every ordered neighboring pair,
\(M_1\) is \((\varepsilon_1,\delta_1)\)-DP and every \(M_{2,t}\) is
\((\varepsilon_2,\delta_2)\)-DP, uniformly in \(t\). Then the adaptive joint
law

\[
 \mathsf J_x(dt,dy):=M_1(x,dt)M_{2,t}(x,dy)
\tag{22}
\]

is
\((\varepsilon_1+\varepsilon_2,\delta_1+\delta_2)\)-DP. For every
measurable output space \((\mathsf O,\mathcal O)\) and measurable map
\(g:\mathsf T\times\mathsf Y\to\mathsf O\), the
postprocessed law \(g_\#\mathsf J_x\) has the same guarantee.

**Proof.** Fix an ordered neighbor pair \(x\sim x'\). Write \(P,Q\) for
the two first-transcript laws. The one-direction DP inequality is

\[
 P(F)\leq e^{\varepsilon_1}Q(F)+\delta_1
 \qquad(F\subseteq\mathsf T).
\tag{23}
\]

We record an exact submeasure form of (23). With
\(\lambda=P+Q\), let \(p=dP/d\lambda\), \(q=dQ/d\lambda\), and define

\[
 dP^0:=\min\{p,e^{\varepsilon_1}q\}\,d\lambda.
\tag{24}
\]

Then \(P^0\leq P\), \(P^0\leq e^{\varepsilon_1}Q\), and

\[
\begin{aligned}
 P(\mathsf T)-P^0(\mathsf T)
 &=\int(p-e^{\varepsilon_1}q)_+\,d\lambda\\
 &=\sup_{F\subseteq\mathsf T}
   \{P(F)-e^{\varepsilon_1}Q(F)\}
 \leq\delta_1.
\end{aligned}
\tag{25}
\]

For each \(t\in\mathsf T\), apply the same construction to the two
conditional second-output laws

\[
 P_t:=M_{2,t}(x,\cdot),
 \qquad Q_t:=M_{2,t}(x',\cdot).
\]

It yields a subprobability \(P_t^0\leq P_t\) satisfying

\[
 P_t^0\leq e^{\varepsilon_2}Q_t,
 \qquad
 P_t^0(\mathsf Y)\geq1-\delta_2.
\tag{26}
\]

Because \(\mathsf T\) is finite, these finitely many choices form a
measurable history-indexed family without a selection issue. Define the
joint submeasure

\[
 \mathsf J_x^0(dt,dy):=P^0(dt)P_t^0(dy).
\tag{27}
\]

It obeys \(\mathsf J_x^0\leq\mathsf J_x\), and (25)-(26) give

\[
 \mathsf J_x^0(\mathsf T\times\mathsf Y)
 \geq(1-\delta_1)(1-\delta_2)
 \geq1-\delta_1-\delta_2.
\tag{28}
\]

For any measurable \(G\subseteq\mathsf T\times\mathsf Y\), with section
\(G_t:=\{y:(t,y)\in G\}\), (24) and (26) imply

\[
\begin{aligned}
 \mathsf J_x^0(G)
 &=\sum_{t\in\mathsf T}P^0(\{t\})P_t^0(G_t)\\
 &\leq e^{\varepsilon_1+\varepsilon_2}
   \sum_{t\in\mathsf T}Q(\{t\})Q_t(G_t)\\
 &=e^{\varepsilon_1+\varepsilon_2}\mathsf J_{x'}(G).
\end{aligned}
\tag{29}
\]

Since the missing mass of the submeasure in (27) is at most
\(\delta_1+\delta_2\),

\[
\begin{aligned}
 \mathsf J_x(G)
 &\leq \mathsf J_x^0(G)
       +(\mathsf J_x-\mathsf J_x^0)
          (\mathsf T\times\mathsf Y)\\
 &\leq e^{\varepsilon_1+\varepsilon_2}
       \mathsf J_{x'}(G)+\delta_1+\delta_2.
\end{aligned}
\tag{30}
\]

This derivation explains why the additive term is
\(\delta_1+\delta_2\), with no erroneous exponential multiplier. Repeating
it for the reversed ordered pair supplies the reverse DP inequality.

Finally, for a measurable output event \(E\in\mathcal O\),

\[
 (g_\#\mathsf J_x)(E)
 =\mathsf J_x(g^{-1}(E)).
\]

Using \(G=g^{-1}(E)\) in (30) proves the postprocessing statement for every
measurable event. \(\square\)

### unit_006: proposition

**Proposition (All-input quotient privacy after adaptive composition and
partition mixing).**
\(\label{prop:step-011-quotient-dp}\)
Under Assumption~\ref{assump:approximate-dp-regime}, accepted Propositions
~\ref{prop:step-003-coding} and
~\ref{prop:step-003-quotient-kernel}, Propositions
~\ref{prop:step-011-at-privacy} and
~\ref{prop:step-011-sparse-privacy}, and Lemma
~\ref{lem:step-011-adaptive-composition}, the positive-branch released
quotient kernel satisfies, for all quotient replace-one neighbors and all
\(E\in\mathcal H_C\),

\[
 K_C(\bar s,E)
 \leq e^{\varepsilon/2}K_C(\bar s',E)+\delta.
\tag{31}
\]

This holds on every input, without realizability or conditioning on any
generated event.

**Proof.** Fix a partition \(\pi\). Use the finite first transcript

\[
 \mathsf T_{\rm AT}
 =\{t_r:0\leq r\leq d\}\cup\{t_{\rm none}\}
\tag{32}
\]

where \(t_r\) records \(r\) preceding `Below` reports followed by `Above`
at stage \(r\), and \(t_{\rm none}\) records \(d+1\) `Below` reports. Any
predeclared zero-probability invalid transcript tags can be adjoined to this
finite space with the constant continuation of Proposition
~\ref{prop:step-011-sparse-privacy}.

Proposition~\ref{prop:step-011-at-privacy} gives

\[
 (\varepsilon_1,\delta_1)
 =(\varepsilon/4,\delta/2)
\]

for the first kernel. Proposition
~\ref{prop:step-011-sparse-privacy} gives, uniformly for every \(t\),

\[
 (\varepsilon_2,\delta_2)
 =(\varepsilon/4,\delta/2)
\]

for the totalized second kernel; on no-call histories this is a conservative
upper bound on its exact \((0,0)\) cost. Lemma
~\ref{lem:step-011-adaptive-composition} therefore makes the augmented
history/output law

\[
 (\varepsilon_1+\varepsilon_2,
   \delta_1+\delta_2)
 =(\varepsilon/2,\delta)\text{-DP}.
\tag{33}
\]

The released quotient output is a measurable postprocessing: retain the
Sparse Sample \(H_C\)-item on a selected actual outcome and otherwise return
\(\bar c_0\). Accepted Proposition~\ref{prop:step-003-coding} supplies the
measurable status and output coordinates. Lemma
~\ref{lem:step-011-adaptive-composition} therefore proves (31) for the
conditional released kernel \(K_C^{\pi}\).

We explicitly audit every terminal route before removing \(\pi\):

1. An empty restriction is represented by an empty list before either
   mechanism. An all-empty stage still has the legal query value zero.
2. An `Above` on an all-empty or partially empty tuple invokes the same
   private Sparse Sample kernel; an all-empty union returns only \(\perp\),
   which postprocesses to \(\bar c_0\).
3. If no `Above` occurs by stage \(d\), the private first transcript is
   followed by the constant no-call output \(\bar c_0\).
4. A selected Sparse Sample \(\perp\) outcome maps to \(\bar c_0\). An
   actual selected function equal to \(\bar c_0\) may collide in released
   value with this fallback, but collision under a deterministic map cannot
   increase privacy loss.
5. A nonfinite, non-\(H_C\), oversized, or otherwise invalid local list is
   sanitized coordinatewise before querying. Accepted Step 008 guarantees
   that valid nonempty restrictions in fact produce finite capped lists on
   every input, so the remaining structural-invalid tags are unreachable;
   their predeclared constant continuation is harmless.
6. An out-of-range transcript, zero normalizer, or out-of-support mechanism
   outcome has probability zero under the exact finite mechanisms. Its
   totalized value is nevertheless defined and is included in the same
   measurable postprocessing.

Thus no private-data-dependent branch outside the two composed mechanisms
is released. In particular, nothing in this audit assumes that the output
is an actual list item, that the first crossing is accurate, or that a
source-good path occurred.

It remains to average over the uniform data-independent partition. Let
\(\Pi_N\) be its finite set of index partitions and let \(\nu\) be its law,
which is the same for \(\bar s\) and \(\bar s'\). For every fixed
\(\pi\in\Pi_N\), the preceding argument gives

\[
 K_C^{\pi}(\bar s,E)
 \leq e^{\varepsilon/2}K_C^{\pi}(\bar s',E)+\delta.
\tag{34}
\]

Consequently,

\[
\begin{aligned}
 K_C(\bar s,E)
 &=\sum_{\pi\in\Pi_N}\nu(\pi)K_C^{\pi}(\bar s,E)\\
 &\leq e^{\varepsilon/2}
       \sum_{\pi\in\Pi_N}\nu(\pi)K_C^{\pi}(\bar s',E)
       +\delta\sum_{\pi\in\Pi_N}\nu(\pi)\\
 &=e^{\varepsilon/2}K_C(\bar s',E)+\delta.
\end{aligned}
\tag{35}
\]

The additive term is paid once, not once per partition. Mechanism coins are
already integrated inside each conditional kernel. The proof applies to
every quotient input atom, including arbitrary labels and duplicate
records. Since \(E\) was arbitrary in \(\mathcal H_C\), (31) holds for all
measurable outputs, whether proper, improper, default-valued, or outside all
current lists. \(\square\)

### unit_007: proposition

**Proposition (Exact raw pullback, privacy monotonicity, and null-boundary
audit).**
\(\label{prop:step-011-raw-dp}\)
Under Assumption~\ref{assump:approximate-dp-regime}, accepted Propositions
~\ref{prop:step-003-quotient-kernel} and
~\ref{prop:step-003-raw-pullback}, Lemma
~\ref{lem:step-011-record-locality}, and Proposition
~\ref{prop:step-011-quotient-dp}, the setting-defined raw learner kernel
\(A_N\) is \((\varepsilon/2,\delta)\)-DP and hence
\((\varepsilon,\delta)\)-DP for every raw replace-one pair and every
\(E\in\mathcal H_C\). If \(d=0\), the setting instantiates this kernel as
the VC-Lyu no-data arm with \(N=0\); the accepted arm-specific null clause
makes its law exactly \(\delta_{\bar c_0}\), hence \((0,0)\)-DP.

**Proof.** Accepted Proposition~\ref{prop:step-003-raw-pullback} gives the
exact kernel identity (2). Fix raw neighbors \(s\sim s'\) and an arbitrary
\(E\in\mathcal H_C\). Lemma~\ref{lem:step-011-record-locality} leaves two
cases.

If \(T_N(s)=T_N(s')\), then exact pullback gives

\[
 A_N(s,E)=K_C(T_N(s),E)
         =K_C(T_N(s'),E)=A_N(s',E).
\tag{36}
\]

This covers a raw point replacement within one quotient cell when the
label is unchanged. If the labels differ, the quotient records differ and
the next case applies.

Otherwise the quotient images are distinct, and Lemma
~\ref{lem:step-011-record-locality} makes them strict replace-one neighbors.
Proposition
~\ref{prop:step-011-quotient-dp} gives

\[
\begin{aligned}
 A_N(s,E)
 &=K_C(T_N(s),E)\\
 &\leq e^{\varepsilon/2}K_C(T_N(s'),E)+\delta\\
 &=e^{\varepsilon/2}A_N(s',E)+\delta.
\end{aligned}
\tag{37}
\]

Equations (36)-(37) are pointwise for arbitrary labels; neither case uses a
data distribution or target concept. Adjacency is symmetric, so applying
the same two-case proof to the ordered pair \((s',s)\) gives the reverse
inequality. Again, the reverse is not inferred by rearranging an
approximate-DP inequality.

Because \(0<\varepsilon\),
\(e^{\varepsilon/2}\leq e^\varepsilon\). Therefore (37) implies

\[
 A_N(s,E)\leq e^\varepsilon A_N(s',E)+\delta,
\tag{38}
\]

which is exactly the setting's raw replacement-
\((\varepsilon,\delta)\)-DP definition for the released \(H_C\)-valued
output. No decoder is needed for (38); applying the fixed decoder after
release would itself be postprocessing.

For \(d=0\), the setting chooses \(N=0\) and specifies the current law as the
VC-Lyu no-data learner arm. That arm identity discharges the conditional
premise in accepted Proposition~\ref{prop:step-003-quotient-kernel}, whose
arm-specific conclusion is
\(K_0(\varnothing,\cdot)=\delta_{\bar c_0}\). Accepted Proposition
~\ref{prop:step-003-raw-pullback} gives the universal equality \(A_0=K_0\),
so it gives the same Dirac law on the unique empty raw input. Thus all event
probabilities are identical and the kernel is \((0,0)\)-DP; no partition,
AboveThreshold query, or Sparse Sample call exists. The inference uses the
setting-defined arm law, not singleton-input cardinality: an arbitrary
separately supplied probability law on \(H_C\) could be non-Dirac even when
\(d=0,N=0\).

For the formal \(k=2\) positive-branch boundary, the privacy proof remains
well-formed: Lyu Sparse Sample permits every \(k\geq1\), the list cap and
one-coordinate relation remain valid, AboveThreshold counts one crossing,
and no line divides by \(k-1\) or uses the teacher utility margin. Whether
the accepted least-feasible utility calibration actually selects \(k=2\)
is irrelevant to privacy. First-stage selection, stage-\(d\) selection,
different selected stages, no selection, and every fallback have already
been included in the finite transcript composition. This closes every
claimed boundary without changing the mechanism. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-011-record-locality} first proves the exact pointwise
transport required by the target: one raw replacement becomes either no
change or one quotient replacement, and, conditional on a fixed
data-independent index partition, only one ordered block can change.
Proposition~\ref{prop:step-011-list-locality} combines that fact with the
accepted block-local Step 008 restrictions, fixed choices, empty-list
totalization, and cap. It proves simultaneously over all \(d+1\) stages
that only one entire list coordinate can change. The direct membership
calculation then gives sensitivity one for every next maximum-occurrence
query at every common transcript prefix. This derivation holds for arbitrary
labels and does not consume any Step 008 eventwise inclusion.

Proposition~\ref{prop:step-011-at-privacy} applies checked Lyu Lemma 3.2
with \(K=1\), \(\delta_{\rm AT}=\delta/2\), and the exact accepted \(\eta\).
The displayed calculation (18) gives the first allocation
\((\varepsilon/4,\delta/2)\) without multiplying privacy by \(d+1\).
Proposition~\ref{prop:step-011-sparse-privacy} applies checked Lyu Lemma 3.1
at every possible common selected-stage history with
\(\varepsilon_{\rm SS}=\varepsilon/8\),
\(\delta_{\rm SS}=\delta/2\), the exact ceiling \(B\), and one-list
replacement. It gives the second allocation
\((\varepsilon/4,\delta/2)\). No-call and invalid-history continuations are
constant, while \(\perp\) and all other fallbacks are postprocessed to
\(\bar c_0\).

Lemma~\ref{lem:step-011-adaptive-composition} proves, with an explicit
submeasure argument, that these history-dependent kernels compose to

\[
 (\varepsilon/4+\varepsilon/4,
   \delta/2+\delta/2)
 =(\varepsilon/2,\delta)\text{-DP}.
\]

This proof handles differing stopping times and selected stages because it
compares the second kernel only at a common transcript value and charges
the transcript mismatch to the first private kernel. Proposition
~\ref{prop:step-011-quotient-dp} then applies measurable postprocessing and
averages over the common data-independent partition, paying neither a new
privacy term nor a partition multiplier. It yields the all-input quotient
inequality (31) for every \(E\in\mathcal H_C\).

Finally, accepted Propositions~\ref{prop:step-003-quotient-kernel} and
~\ref{prop:step-003-raw-pullback}, together with Proposition
~\ref{prop:step-011-raw-dp}, transfer (31) exactly through \(T_N\).
Equal quotient images give equality of laws; neighboring images use (31).
Thus the raw learner is in fact \((\varepsilon/2,\delta)\)-DP and therefore
has the requested \((\varepsilon,\delta)\) guarantee. The exact
\(d=0,N=0\) branch is \((0,0)\)-DP because the current object is the
setting-defined VC-Lyu arm and therefore satisfies the accepted
arm-specific Dirac premise. These named results prove precisely the
accepted `step_011` row. They prove no empirical utility, population
utility, actual-list output event, or rate theorem.

## Explicit Rate Audit

- Exposed variables:
  \(d,v,\alpha,\beta,\varepsilon,\delta,N,k,m,L,B\), together with
  \(c_{\rm AT},g_\delta,\eta,\varepsilon_{\rm AT},\varepsilon_{\rm SS}\),
  \(\varepsilon_{\rm sp}\), and \(\delta_{\rm AT},\delta_{\rm SS}\).
  Only \(\varepsilon,\delta\) appear in the exported privacy guarantee;
  \(d,v,\alpha,\beta,N,k,m,L,B\) describe the already fixed branch and
  finite mechanism interfaces.
- Hidden constants may depend on: nothing. The sole source constant
  \(c_{\rm AT}\) is universal and is exposed in (10)-(11).
- Hidden constants may not depend on:
  \(X,\Sigma,C,D,c,d,v,\alpha,\beta,\varepsilon,\delta,N,k,m,L,B\), a
  partition, block, stage, list, transcript, input, output, generated event,
  or support set.
- Fixed quantities: For each DP comparison, public parameters and the
  algorithm are fixed. A partition is fixed only inside Units 1-4 and is
  then averaged under its unchanged data-independent law.
- Probability mode: Deterministic distributional DP inequalities for every
  ordered neighboring input pair and every measurable output event. No
  high-probability event, conditioning event, or confidence conversion is
  used.
- Horizon mode: One finite stopped AboveThreshold prefix of at most \(d+1\)
  queries, with at most one counted `Above`, followed by at most one Sparse
  Sample call. The source AboveThreshold lemma handles the whole prefix;
  there is no per-stage composition.
- Norm mode: Replace-one adjacency on labeled datasets and the exact
  measurable-event DP inequality. No risk, norm, empirical metric, or
  population metric is invoked.
- Admissibility conditions and auxiliary tolerances:

  \[
   \delta_{\rm AT}=\delta_{\rm SS}=\delta/2,
   \quad
   \varepsilon_{\rm SS}=\varepsilon/8,
   \quad
   \eta=\frac{\varepsilon}
    {4c_{\rm AT}(\sqrt{\log(4/\delta)}+\log(4/\delta))},
  \]

  together with \(|\mathcal L_i^r|\leq L\) and (7).
- Term absorption or simplification inequalities: No term is hidden or
  absorbed. Equation (18) proves
  \(\varepsilon_{\rm AT}\leq\varepsilon/4\); equation (8) proves
  \(2\varepsilon_{\rm SS}=\varepsilon/4\); adaptive composition gives

  \[
    \varepsilon/4+\varepsilon/4=\varepsilon/2\leq\varepsilon,
    \qquad
    \delta/2+\delta/2=\delta.
  \]
- Probability conversion: None. The partition mixture integrates a
  pointwise DP inequality and retains one additive \(\delta\).
- Contribution to any Rate Specialization Bridge: The exported all-input
  raw \((\varepsilon,\delta)\)-DP interface is consumed by `step_014`; this
  step performs no sample-size simplification.
- Baseline-reduction check: At \(d=0,N=0\), the setting-defined VC-Lyu arm
  reduces exactly to the accepted no-data Dirac law and is \((0,0)\)-DP;
  this does not assert that every arbitrary empty-input law is Dirac. At the
  formal \(k=2\) boundary, all
  privacy statements remain valid with the same allocation. If no Sparse
  Sample call occurs, the second component reduces to a constant mechanism;
  retaining its allocated upper bound is conservative but does not weaken
  the final requested privacy conclusion.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined, public-facing objects:
  \(Z_X,Z_Q,T_N,H_C,\mathcal H_C,K_C,A_N,\bar c_0\) and
  \(d,v,\alpha,\beta,\varepsilon,\delta,N,k,m,L,B\) retain their meanings
  from `setting.md` and the accepted sketch.
- Accepted dependency objects:
  The measurable quotient/transcript/raw kernels are used only through
  Propositions~\ref{prop:step-003-coding},
  ~\ref{prop:step-003-quotient-kernel}, and
  ~\ref{prop:step-003-raw-pullback}. The quotient-kernel result is universal,
  while its Dirac conclusion is used only after the current output law is
  identified as the setting-defined VC-Lyu null arm; the raw-pullback result
  then supplies \(A_0=K_0\). The block restrictions and lists are
  used only through Lemma~\ref{lem:step-008-stage-map} and Propositions
  ~\ref{prop:step-008-essential-lists} and
  ~\ref{prop:step-008-list-envelope}. List-interface sensitivity and support
  are used only through accepted Lemma
  ~\ref{lem:step-010-score-support}.
- Public-facing output proved in this step:
  The sole exported mathematical interface is the raw learner's all-input
  \((\varepsilon,\delta)\)-DP guarantee in Proposition
  ~\ref{prop:step-011-raw-dp}. The stronger
  \((\varepsilon/2,\delta)\) intermediate is exposed only to make the exact
  allocation auditable.
- Appendix-local objects:
  The fixed-partition conditional kernels, the maximum occurrence queries
  \(q_r\), \(K_C^{\pi}\), the partition law \((\Pi_N,\nu)\), the finite
  AboveThreshold transcript, the conditional continuations
  \(M_{2,t}^{\pi}\), and the generic composition objects
  \(\mathsf T,\mathsf Y,\mathsf O,M_1,M_{2,t}\), and \(\mathsf J_x,g\) are
  appendix-local proof interfaces. The mechanism bookkeeping consists of
  \(c_{\rm AT},g_\delta,\eta,\varepsilon_{\rm SS},\varepsilon_{\rm AT}\),
  \(\varepsilon_{\rm sp}\), and \(\delta_{\rm AT},\delta_{\rm SS}\); it is
  appendix-local in this step; only \((\varepsilon,\delta)\) is exported.
- Proof-local objects:
  The changed index \(j_*\), changed block \(i_*\), fixed partition \(\pi\),
  transcript tags \(t_r,t_{\rm none}\), source failure symbol \(\perp\),
  list-tuple abbreviations \(\mathbf L,\mathbf L'\), totalization map \(\phi\),
  event sections \(G,G_t\), and the measure-theoretic abbreviations
  \(P,Q,\lambda,p,q,P^0,P_t,Q_t,P_t^0\) and \(\mathsf J_x^0\) are
  proof-local. None is a theorem assumption or a released coordinate.
- Constant provenance:
  \(g_\delta,\delta_{\rm AT},\delta_{\rm SS},\varepsilon_{\rm SS},\eta\)
  and \(B\) are the exact accepted mechanism dictionary, while
  \(\varepsilon_{\rm AT}\) and
  \(\varepsilon_{\rm sp}=2\varepsilon_{\rm SS}\) denote the two proved
  privacy charges. The universal
  \(c_{\rm AT}\) dominates the source Lemma 3.2 constant and is not fitted
  to data. No new free constant, threshold, margin, radius, or bounded
  quantity is introduced.
- Assumption provenance:
  Assumption~\ref{assump:approximate-dp-regime} is the only primitive
  condition used directly. Quotient kernels, totalized lists, list caps,
  and list-interface sensitivity are accepted derived interfaces. Fixed
  partition and common-history conditions are proof-local conditionings
  removed by mixture and adaptive composition. No generated utility event
  is assumed.
- All-input discipline:
  Equations (13)-(16) use only deterministic block locality and therefore
  hold for arbitrary labels, including nonrealizable samples. Empty and
  invalid local objects are sanitized before querying. No conditioning on
  \(E_{\rm good}\), \(E_{\rm AT}\), \(E_{\rm SS}\), or \(E_{\rm mech}\)
  occurs anywhere in the privacy proof.
- Stopping-time discipline:
  Query sensitivity is checked at every common prefix. Neighboring actual
  transcripts may diverge and select different stages. Lemma
  ~\ref{lem:step-011-adaptive-composition} compares conditional mechanisms
  at each common history and lets the first DP kernel account for history
  divergence; no shared-noise or equal-stopping-time coupling is assumed.
- Approximate-DP directionality:
  Every displayed inequality is proved for an arbitrary ordered pair. The
  reverse inequality is obtained by reapplying the theorem to the reversed
  pair, never by rearranging a one-sided inequality. The submeasure proof
  yields \(\delta_1+\delta_2\) exactly, and mixture/postprocessing add no
  extra term.
- List/object discipline:
  Mathematical lists are finite sets of actual \(H_C\)-functions; fixed
  orderings only encode them. Positional duplicates are removed before the
  membership score, while the same function in different block lists is
  intentionally counted once per block. Sparse Sample permits arbitrary
  replacement of the one affected entire list; no candidate-wise stability
  is asserted or needed.
- Failure/status discipline:
  The symbol \(\perp\notin H_C\) is internal. No-call, exhaustion, \(\perp\),
  and residual invalid outcomes map to \(\bar c_0\). An actual selected item
  equal to \(\bar c_0\) may have the same released value, but this is only a
  many-to-one postprocessing. Arbitrary measurable events containing or
  excluding that value are covered by the same preimage inequality.
- Boundary discipline:
  \(d=0,N=0\) is the exact no-mechanism Dirac branch for the setting-defined
  VC-Lyu arm. This conclusion uses the accepted arm-specific null law and is
  not inferred from the singleton input or imposed on an arbitrary law on
  \(H_C\). On the positive branch,
  first-stage, last-stage, different-stage, no-stage, all-empty, and
  partially empty transcripts are all included. The formal \(k=2\) case
  requires no utility margin and causes no singularity.
- Scope boundary:
  This step proves no mechanism-accuracy event, actual-list output,
  empirical error, population error, PAC guarantee, sample-size bound, or
  claim about the analysis-only occurrence mark. It does not change the
  quotient mechanism or release.
- Global diagnostic boundary:
  The optional `global_proof.md` and `global_proof_review.md` were not read
  or used. No diagnostic statement is evidence, an assumption source, a
  cited result, or authority to change the target claim.
