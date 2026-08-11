# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_008`
- Unit attempt: 1
- Binding setting SHA-256: `13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327`
- Accepted proof-sketch SHA-256: `51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8`
- Accepted proof-sketch-review SHA-256: `98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89`
- Accepted diagnostic global proof/review SHA-256: `dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407` / `fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710`
- Accepted `step_001` proof/review SHA-256: `061c31df9fd9ebb495de80126984df01e0f75a7e8d711b96fb14c6567499b486` / `1c08770404c3d9c8a40ad34913620008d83a573c6c115dc9acfe081c3aa65ca6`
- Accepted `step_005` proof/review SHA-256: `044406cb03ff7ebc62a8c44e317ec731030192eb2f4e585650335feea30e2191` / `189873c0b2f032e76014d9ebb953db45efa3842a7010829750f0afeb25940cff`
- Accepted `step_007` proof/review SHA-256: `ac2b7cf238b2c88552225bb275163a22ba5d83b427f6ec06404ab1b57c9677ce` / `87a0bc9830d9ba85b2789eaa5be179c78cbb71dbd8e92054a5e7b91969043859`
- Frozen primary source checked: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, `submission/main.tex` SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Target Step Claim

- Intended claim: Using the accepted teacher margin, prove the
  AboveThreshold accuracy statements and Sparse Sample effective-domain
  inequality; conclude actual-list output with failure at most
  \(\beta_{\rm AT}+\beta_{\rm SS}\).
- Depends on: `step_001`, `step_005`, `step_007`.
- Assumptions used: Primitive `assump:approximate-dp-regime`; derived
  teacher margin, lists, and common stage.
- Technical challenge: Instantiate every finite mechanism loss without
  reopening the parameter definition.
- Intended proof tool or cited result: Lyu Algorithms 1-2/Lemma 3.1,
  Laplace tails, and exponential-weight utility.
- Output target: Mechanism-good event and actual selected SOA item.
- Rate objective: Consume the already-closed teacher/list/noise quantitative
  interface.
- Row-local review status: PENDING. Acceptance of the sketch is supplied by
  the binding `proof_sketch_review.md`, not by this row-local field.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:approximate-dp-regime`: \(0<\alpha,\beta<1/4\),
    \(0<\varepsilon\le1\), and \(0<\delta<1\). This directly makes all
    accepted mechanism allocations and tail probabilities legal.
  - `assump:finite-littlestone` and `assump:realizable-iid` enter only
    through already-accepted dependency conclusions: finite Littlestone
    dimension underlies the `step_001` list interface and the `step_007`
    structural conclusion, while realizability underlies the latter. This
    step does not reprove or strengthen their consequences.
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\ref{lem:step-001-candidate-legality},
    Lemma~\ref{lem:step-001-list-envelope}, and
    Propositions~\ref{prop:step-001-teacher-existence} and
    \ref{prop:step-001-totality} give the positive-branch allocations
    \[
    \beta_{\rm AT}=\beta_{\rm SS}=\beta/4,
    \qquad
    \eta=\frac{\varepsilon}
      {4c_{\rm AT}(\sqrt{\log(4/\delta)}+\log(4/\delta))},
    \qquad
    \varepsilon_s=\varepsilon/8,
    \tag{1}
    \]
    the exact realized integers \(k\ge2\), \(L=L(k)\), and
    \[
    B=B(k)=\left\lceil
       \frac{10\log(L/\delta_{\rm SS})}{\varepsilon_s}
       \right\rceil,
    \tag{2}
    \]
    the list bounds \(|\mathcal L_i^r|\le L\) for every
    \(i\in[k]\) and \(0\le r\le d\), and the exact tolerances
    \[
    \tau_{\rm AT}=\eta^{-1}\log\frac{d+1}{\beta_{\rm AT}},
    \qquad
    \tau_{\rm SS}(k)=\varepsilon_s^{-1}
       \log\frac{kL+1}{\beta_{\rm SS}}.
    \tag{3}
    \]
    They also give the fixed teacher margin
    \[
    \frac{k}{2}-\tau_{\rm AT}
       \ge B+\tau_{\rm SS}(k)+2,
    \tag{4}
    \]
    and the total procedure with the deterministic threshold \(k/2\),
    external stopping at the first `Above`, exactly one optional Sparse
    Sample call, and defined \(\perp\), default, and exhaustion paths.
  - Accepted Proposition~\ref{prop:step-005-trace-budget} gives the
    generated event \(E_{\rm good}\) and its exact confidence charge
    \[
    \Pr(E_{\rm good}^c)\le\beta_{\rm tr}=\beta/4
    \tag{5}
    \]
    in the accepted conditional and unconditional probability modes.
  - Accepted Proposition~\ref{prop:step-007-finite-termination} gives, for
    every fixed realizable master sample and partition in
    \(E_{\rm good}\), some \(r_\star\in\{0,\ldots,d\}\) and one actual
    function \(f_\star:X\to\{0,1\}\) such that
    \[
    f_\star\in\bigcap_{i=1}^k\mathcal L_i^{r_\star},
    \qquad q_{r_\star}=k.
    \tag{6}
    \]
    The support in (6) is equality of actual functions on \(X\), not a
    master-sample trace equivalence.
- Local conditional hypotheses:
  - The actual-output implication fixes a realizable master sample and
    partition for which the accepted generated event \(E_{\rm good}\)
    holds. This is a conditional use of an accepted derived invariant, not
    a primitive or theorem-facing assumption. Equation (5) is retained in
    the final confidence ledger.
  - No mechanism-noise event, successful transcript, nonfailure event,
    selected-stage support fact, or privacy conclusion is assumed. Those
    mechanism outputs are proved below.

For all local statements below, \(\widehat r\) denotes the first `Above`
stage when it exists. If Sparse Sample is called at stage \(r\), \(V\)
denotes its return and \(s_r\) denotes its exact source score: list-frequency
on an actual union item and \(B\) on \(\perp\). On the actual-output event,
\(\widehat f\) denotes the learner's returned function. These objects are
generated by the mechanisms, not assumed conditions.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Lemma~\ref{lem:step-001-candidate-legality}, accepted Proposition~\ref{prop:step-001-teacher-existence}, and Lyu Algorithm 2, with probability at least \(1-\beta_{\rm AT}\) all \(d+1\) potential query noises simultaneously give both AboveThreshold accuracy directions; in particular, `Above` implies \(q_r\ge k/2-\tau_{\rm AT}\), `Below` implies \(q_r<k/2+\tau_{\rm AT}<k\), a score-\(k\) stage is `Above`, and an empty stage is `Below`. | Fixes the exact plus-noise sign, deterministic threshold, both transcript implications, score-\(k\) detection, and the empty-stage boundary. |
| unit_002 | proposition | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Propositions~\ref{prop:step-001-teacher-existence}, \ref{prop:step-001-totality}, and \ref{prop:step-007-finite-termination}, and Lemma~\ref{lem:step-008-at-accuracy}, if \(E_{\rm good}\) holds and the simultaneous noise event occurs, the externally stopped process has a first `Above` stage \(\widehat r\le r_\star\le d\), and \(q_{\widehat r}\ge B+\tau_{\rm SS}(k)+2\). | Proves first-Above stopping, rules out exhaustion and empty selected lists, and supplies the exact selection margin even for an earlier false positive. |
| unit_003 | lemma | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Lemma~\ref{lem:step-001-list-envelope}, accepted Proposition~\ref{prop:step-001-teacher-existence}, and Lyu Algorithm 1, every current Sparse Sample domain has size at most \(kL+1\), and its exponential weights give \(\Pr[s_r(V)<q_r-\tau_{\rm SS}(k)\mid\mathcal L_1^r,\ldots,\mathcal L_k^r]\le\beta_{\rm SS}\); the same bound holds at the adaptively chosen unique call. | Proves the exact effective-domain inequality and exponential-weight utility independently of Lemma 3.1's privacy conclusion. |
| unit_004 | proposition | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Propositions~\ref{prop:step-001-teacher-existence}, \ref{prop:step-001-totality}, \ref{prop:step-005-trace-budget}, and \ref{prop:step-007-finite-termination}, and Lemma~\ref{lem:step-008-at-accuracy}, Proposition~\ref{prop:step-008-first-above-margin}, and Lemma~\ref{lem:step-008-sparse-utility}, there is a mechanism-good event of failure at most \(\beta_{\rm AT}+\beta_{\rm SS}\); on \(E_{\rm good}\) intersected with this event, the learner outputs one actual function in \(\bigcup_i\mathcal L_i^{\widehat r}\), never \(\perp\), the default, or an exhaustion output. | Assembles actual-function support, all terminal paths, and the exact confidence ledger. |

Atomic step = no. Simultaneous AboveThreshold accuracy, the stopped-process
margin, the Sparse Sample effective-domain tail, and actual-output/confidence
closure are independent nontrivial obligations and are separated above.

## Cited Result Applications

### Accepted `step_001` parameter, list, margin, and totality package

- Source or name: accepted
  Lemma~\ref{lem:step-001-candidate-legality},
  Lemma~\ref{lem:step-001-list-envelope}, and
  Propositions~\ref{prop:step-001-teacher-existence} and
  \ref{prop:step-001-totality}, certified by the matching accepted
  `step_001` review.
- Restated statement in current notation: the \(d=0\) branch uses no
  mechanism. On \(d\ge1\), equations (1)-(4) hold, all lists are finite
  sets of actual functions with \(|\mathcal L_i^r|\le L\), and the total
  procedure queries \(q_0,\ldots,q_d\) sequentially with fixed threshold
  \(k/2\), stops after the first `Above`, calls Sparse Sample once there,
  maps \(\perp\) to the fixed \(h_0\), and maps an all-`Below` transcript
  to \(h_0\).
- Instantiated objects: exactly the accepted realized
  \(k,L,B,\eta,\varepsilon_s,\tau_{\rm AT},\tau_{\rm SS}(k)\), lists,
  queries, and terminal procedure; no candidate parameter or surrogate
  list is introduced.
- Required assumptions and discharge: the accepted dependency discharges
  positive-branch legality and list finiteness. The current use of the
  allocations is under Assumption~\ref{assump:approximate-dp-regime}.
- Conclusion used: the exact margin (4), list bound, mechanism parameters,
  stopping rule, and exhaustive terminal paths.

### Accepted `step_005` trace-event budget

- Source or name: accepted
  Proposition~\ref{prop:step-005-trace-budget}, certified by the matching
  accepted `step_005` review.
- Restated statement in current notation: the exact event consumed by the
  structural source wrapper satisfies (5), pointwise conditionally on each
  indexed sample and jointly after the accepted tower conversion.
- Instantiated objects: the same master sample, fixed random partition, and
  event \(E_{\rm good}\) used by accepted `step_007`.
- Required assumptions and discharge: all trace, ceiling, and probability
  hypotheses were discharged in the accepted dependency. This step uses
  only the completed event budget.
- Conclusion used: \(E_{\rm good}\) is a legal earlier-produced event, and
  its \(\beta_{\rm tr}\) charge can be added once after the conditional
  mechanism calculation.

### Accepted `step_007` actual full-score stage

- Source or name: accepted
  Proposition~\ref{prop:step-007-finite-termination}, certified by the
  matching accepted `step_007` review.
- Restated statement in current notation: under the accepted primitive
  basis and on \(E_{\rm good}\), (6) holds at a queried stage
  \(r_\star\le d\). Thus the exact query defined by
  \[
  q_r=\max_{f\in\cup_i\mathcal L_i^r}
       |\{i:f\in\mathcal L_i^r\}|,
  \qquad\max\varnothing:=0,
  \tag{7}
  \]
  satisfies \(q_{r_\star}=k\), witnessed by one actual function on \(X\).
- Instantiated objects: the same current lists submitted to
  AboveThreshold; there is no trace representative or altered score.
- Required assumptions and discharge: the accepted dependency already
  discharges realizable support, factor-two descent, DDim-zero support, and
  endpoint \(r=d\).
- Conclusion used: a score-\(k\) query is present in the finite submitted
  sequence whenever \(E_{\rm good}\) holds.

### Lyu Algorithm 2: exact AboveThreshold convention

- Source or name: Xin Lyu, arXiv:2510.00076v1, Algorithm 2
  (`algo: abovethreshold`), checked in the frozen source named in Step
  Identity.
- Restated statement in current notation: for deterministic threshold
  \(\theta\), base parameter \(\eta>0\), and a submitted query value
  \(q_r\), the mechanism draws an independent
  \(Z_r\sim\operatorname{Lap}(1/\eta)\) and reports
  \[
  \text{`Above'}\quad\Longleftrightarrow\quad
  q_r+Z_r\ge\theta;
  \qquad
  \text{otherwise it reports `Below'}.
  \tag{8}
  \]
  There is no noise added to \(\theta\). The current procedure sets
  \(\theta=k/2\) and externally stops immediately after the first
  `Above`.
- Required assumptions and discharge: \(\eta>0\) and the finite query
  sequence are supplied by accepted `step_001`. Query sensitivity is a
  privacy hypothesis of Lyu Lemma 3.2 and is not needed for (8) or for the
  current accuracy proof.
- Conclusion used: only the exact comparison, noise sign, independence,
  and scale in (8). No privacy conclusion is claimed in this step.

### Lyu Algorithm 1 and Lemma 3.1: exact Sparse Sample distribution and privacy threshold

- Source or name: the same frozen source, Algorithm 1
  (`algo:private sample`) and Lemma 3.1
  (`lemma: privacy of sparse sampling`).
- Restated statement in current notation: given
  \((\mathcal L_1^r,\ldots,\mathcal L_k^r)\), define
  \[
  s_r(u)=|\{i:u\in\mathcal L_i^r\}|
  \quad(u\in\cup_i\mathcal L_i^r),
  \qquad s_r(\perp)=B.
  \tag{9}
  \]
  Algorithm 1 returns \(V\) in
  \(\cup_i\mathcal L_i^r\cup\{\perp\}\) with
  \[
  \Pr(V=u\mid\mathcal L_1^r,\ldots,\mathcal L_k^r)
  =\frac{e^{\varepsilon_s s_r(u)}}
  {\sum_{w\in\cup_i\mathcal L_i^r\cup\{\perp\}}
   e^{\varepsilon_s s_r(w)}}.
  \tag{10}
  \]
  If every list has size at most \(L\) and
  \(B\ge10\log(L/\delta_{\rm SS})/\varepsilon_s\), Lemma 3.1 gives its
  stated list-coordinate privacy conclusion.
- Required assumptions and discharge: accepted `step_001` gives
  \(|\mathcal L_i^r|\le L\), \(\varepsilon_s>0\),
  \(0<\delta_{\rm SS}<1\), and the exact ceiling (2), hence the numerical
  Lemma 3.1 condition. The list-coordinate adjacency premise belongs to
  `step_009`; it is neither assumed nor needed here.
- Conclusion used: the codomain, failure-symbol score, and exact
  exponential weights (9)-(10). Lemma 3.1 is not used as a nonfailure
  theorem: nonfailure is derived directly in
  Lemma~\ref{lem:step-008-sparse-utility}.

### Direct probability identities and local-result applications

- A random variable \(Z\sim\operatorname{Lap}(1/\eta)\) has density
  \((\eta/2)e^{-\eta|z|}\), so direct integration gives
  \(\Pr(|Z|>t)=e^{-\eta t}\) for \(t\ge0\). This identity is proved and
  instantiated in Lemma~\ref{lem:step-008-at-accuracy}.
- For the finite distribution (10), comparison with one actual maximizer
  of score \(q_r\) gives an effective-domain tail. Its normalizer, domain
  count, and adaptive-stage conditioning are proved in
  Lemma~\ref{lem:step-008-sparse-utility}; no external exponential-
  mechanism utility theorem is invoked.
- Lemma~\ref{lem:step-008-at-accuracy} supplies the simultaneous transcript
  implications used by
  Proposition~\ref{prop:step-008-first-above-margin}.
  That proposition supplies the selected-stage margin used by
  Proposition~\ref{prop:step-008-actual-output}.
  Lemma~\ref{lem:step-008-sparse-utility} supplies the unique-call
  selection event used by the same final proposition.

## Local Derivation

The \(d=0\) branch is already the accepted zero-sample deterministic learner,
so it evaluates no threshold, noise, list, or Sparse Sample expression. Fix
the positive branch \(d\ge1\). For accuracy analysis, pre-sample independent
random variables
\[
Z_0,\ldots,Z_d\stackrel{\rm iid}{\sim}\operatorname{Lap}(1/\eta).
\tag{11}
\]
Using the prefix of (11) until external stopping, and ignoring the remaining
variables, has exactly the same law as drawing each noise when its query is
submitted. This coupling makes all potential first and last stages available
for one finite-union calculation without changing the mechanism.

### unit_001: lemma

**Lemma (Simultaneous two-sided AboveThreshold accuracy).**
\label{lem:step-008-at-accuracy}
Under Assumption~\ref{assump:approximate-dp-regime}, the accepted parameter
conclusions of Lemma~\ref{lem:step-001-candidate-legality} and
Proposition~\ref{prop:step-001-teacher-existence}, and the exact Algorithm 2
convention (8), define
\[
\mathcal E_{\rm AT}:=
\bigcap_{r=0}^d\{|Z_r|\le\tau_{\rm AT}\}.
\tag{12}
\]
Then
\[
\Pr(\mathcal E_{\rm AT}^c)\le\beta_{\rm AT}.
\tag{13}
\]
On \(\mathcal E_{\rm AT}\), simultaneously at every submitted stage,
\[
\begin{array}{rclcrcl}
\text{`Above'}&\Longrightarrow&q_r\ge k/2-\tau_{\rm AT},
&\qquad&
q_r<k/2-\tau_{\rm AT}&\Longrightarrow&\text{`Below'},\\[2pt]
\text{`Below'}&\Longrightarrow&q_r<k/2+\tau_{\rm AT},
&&
q_r\ge k/2+\tau_{\rm AT}&\Longrightarrow&\text{`Above'}.
\end{array}
\tag{14}
\]
Moreover, the accepted margin implies
\[
\frac{k}{2}>\tau_{\rm AT},
\tag{15}
\]
so every score-\(k\) stage is `Above`, every empty-union stage
\((q_r=0)\) is `Below`, and every `Below` stage satisfies \(q_r<k\).

**Proof.** For \(t\ge0\), direct integration of the density in the cited
result application gives
\[
\Pr(|Z_r|>t)=e^{-\eta t}.
\]
The accepted definition of \(\tau_{\rm AT}\) therefore gives
\[
\Pr(|Z_r|>\tau_{\rm AT})
=e^{-\eta\tau_{\rm AT}}
=\frac{\beta_{\rm AT}}{d+1}.
\tag{16}
\]
A union bound over exactly the \(d+1\) potential queries proves (13). It
does not require the process to submit unused post-stopping queries.

Fix a submitted stage and suppose (12) holds. By (8), an `Above` report
means \(q_r+Z_r\ge k/2\). Since \(Z_r\le\tau_{\rm AT}\),
\[
q_r\ge k/2-Z_r\ge k/2-\tau_{\rm AT}.
\tag{17}
\]
Conversely, \(q_r<k/2-\tau_{\rm AT}\) gives
\(q_r+Z_r\le q_r+\tau_{\rm AT}<k/2\), hence `Below`.

A `Below` report is the strict complementary branch of the source test, so
\(q_r+Z_r<k/2\). Since \(Z_r\ge-\tau_{\rm AT}\),
\[
q_r<k/2-Z_r\le k/2+\tau_{\rm AT}.
\tag{18}
\]
Conversely, if \(q_r\ge k/2+\tau_{\rm AT}\), then
\(q_r+Z_r\ge q_r-\tau_{\rm AT}\ge k/2\), and the weak comparison in
(8) reports `Above`. This proves every implication in (14), including the
boundary \(q_r+Z_r=k/2\): equality is `Above`, not `Below`.

By (4),
\[
k/2-\tau_{\rm AT}
\ge B+\tau_{\rm SS}(k)+2>0,
\tag{19}
\]
which proves (15). Thus \(k=2(k/2)>k/2+\tau_{\rm AT}\), so a score-\(k\)
stage is `Above` by (14). If the current union is empty, the accepted
convention gives \(q_r=0<k/2-\tau_{\rm AT}\), hence `Below`. Finally,
(18) and (15) give
\(q_r<k/2+\tau_{\rm AT}<k\) after every `Below`. The signs use the exact
plus-noise test; no noisy-threshold term has been inserted. \(\square\)

### unit_002: proposition

**Proposition (First-Above stopping preserves the teacher margin).**
\label{prop:step-008-first-above-margin}
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Propositions~\ref{prop:step-001-teacher-existence},
\ref{prop:step-001-totality}, and
\ref{prop:step-007-finite-termination}, and
Lemma~\ref{lem:step-008-at-accuracy}, fix a realizable master sample and
partition for which \(E_{\rm good}\) holds. On
\(\mathcal E_{\rm AT}\), the externally stopped process has a first
`Above` stage \(\widehat r\), and
\[
0\le\widehat r\le r_\star\le d,
\qquad
q_{\widehat r}\ge k/2-\tau_{\rm AT}
\ge B+\tau_{\rm SS}(k)+2.
\tag{20}
\]
In particular, \(\cup_i\mathcal L_i^{\widehat r}\ne\varnothing\), its
maximum actual-function score \(q_{\widehat r}\) is attained, no empty
stage is selected, every prior `Below` has \(q_r<k\), and the all-`Below`
exhaustion path is impossible on this event.

**Proof.** Accepted
Proposition~\ref{prop:step-007-finite-termination} supplies (6). Run the
accepted sequential procedure. If an `Above` occurs before stage
\(r_\star\), external stopping defines its first such index as
\(\widehat r<r_\star\). Otherwise the procedure submits every query through
stage \(r_\star\). Lemma~\ref{lem:step-008-at-accuracy} reports the
score-\(k\) query there as `Above`, so in this case
\(\widehat r=r_\star\). This proves existence and the index bounds in
(20), including immediate success at \(r_\star=0\) and final-stage success
at \(r_\star=d\).

At the reported stage, the first implication in (14) gives the first score
bound in (20), and the accepted teacher inequality (4) gives the second.
Thus \(q_{\widehat r}>0\). By the accepted definition (7), a positive
maximum is possible only when the finite union of actual list functions is
nonempty, and then the maximum is attained by an actual function on \(X\).
The empty-stage conclusion also follows directly from the empty case of
Lemma~\ref{lem:step-008-at-accuracy}. Its `Below` conclusion gives
\(q_r<k\) at every submitted earlier stage. Because an `Above` occurs no
later than \(r_\star\le d\), stage exhaustion cannot occur. An earlier
noise-induced `Above` is harmless: (20), rather than score \(k\), is the
only margin needed by Sparse Sample. \(\square\)

### unit_003: lemma

**Lemma (Sparse Sample effective-domain utility).**
\label{lem:step-008-sparse-utility}
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Lemma~\ref{lem:step-001-list-envelope} and
Proposition~\ref{prop:step-001-teacher-existence}, and the exact Algorithm 1
distribution (9)-(10), fix any stage \(0\le r\le d\). Its effective domain
\[
\mathcal U_r:=\bigcup_{i=1}^k\mathcal L_i^r\cup\{\perp\}
\tag{21}
\]
satisfies
\[
|\mathcal U_r|\le kL+1.
\tag{22}
\]
If Algorithm 1 is called at this stage and returns \(V\), then
\[
\Pr\!\left[
s_r(V)<q_r-\tau_{\rm SS}(k)
\,\middle|\,
\mathcal L_1^r,\ldots,\mathcal L_k^r
\right]
\le\beta_{\rm SS}.
\tag{23}
\]
The inequality is uniform in \(r\) and in the fixed list tuple, so it also
holds after conditioning on any AboveThreshold transcript that adaptively
chooses the unique call stage.

**Proof.** The accepted list envelope gives
\[
\left|\bigcup_{i=1}^k\mathcal L_i^r\right|
\le\sum_{i=1}^k|\mathcal L_i^r|
\le kL.
\tag{24}
\]
The failure symbol is distinguished from every actual function, so (24)
gives (22). This count remains valid with duplicate functions across lists;
set union only decreases the left side.

If the actual-function union is empty, then \(q_r=0\), Algorithm 1 returns
the only effective-domain element \(\perp\), and
\[
s_r(\perp)=B\ge0> -\tau_{\rm SS}(k)
=q_r-\tau_{\rm SS}(k).
\]
Thus the event in (23) is empty.

Suppose the union is nonempty. It is finite, so some actual function
\(u_\star\) attains \(s_r(u_\star)=q_r\). Let
\[
\mathcal B_r
:=\{u\in\mathcal U_r:s_r(u)<q_r-\tau_{\rm SS}(k)\}.
\]
Using (10), the denominator is at least
\(e^{\varepsilon_s q_r}\), while each numerator term indexed by
\(\mathcal B_r\) is at most
\(e^{\varepsilon_s(q_r-\tau_{\rm SS}(k))}\). Hence
\[
\begin{aligned}
\Pr(V\in\mathcal B_r\mid\mathcal L_1^r,\ldots,\mathcal L_k^r)
&\le |\mathcal B_r|e^{-\varepsilon_s\tau_{\rm SS}(k)}\\
&\le(kL+1)e^{-\varepsilon_s\tau_{\rm SS}(k)}\\
&=\beta_{\rm SS},
\end{aligned}
\tag{25}
\]
where the last equality is the exact definition (3). This proves (23).

For an adaptive call, condition on the complete AboveThreshold transcript
prefix. It fixes one stage \(r\) and its already-constructed list tuple.
The Sparse Sample randomness is then fresh, and (23) applies with the same
right side for every possible prefix. Taking conditional expectation over
the prefix preserves \(\beta_{\rm SS}\); there is no union over stages
because the accepted procedure calls Algorithm 1 at most once.

Finally, (2) and \(|\mathcal L_i^r|\le L\) also discharge the exact
numerical hypotheses of Lyu Lemma 3.1. That fact is recorded only for the
fixed source interface: (25), not Lemma 3.1's privacy statement, is the
utility and nonfailure argument here. \(\square\)

### unit_004: proposition

**Proposition (One actual current-list output and exact mechanism confidence).**
\label{prop:step-008-actual-output}
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Propositions~\ref{prop:step-001-totality},
\ref{prop:step-001-teacher-existence},
\ref{prop:step-005-trace-budget}, and
\ref{prop:step-007-finite-termination}, together with
Lemma~\ref{lem:step-008-at-accuracy},
Proposition~\ref{prop:step-008-first-above-margin}, and
Lemma~\ref{lem:step-008-sparse-utility}, define
\(\mathcal E_{\rm SS}\) as follows: if the stopped procedure calls Sparse
Sample at stage \(\widehat r\) and its return is \(V\), require
\[
s_{\widehat r}(V)
\ge q_{\widehat r}-\tau_{\rm SS}(k);
\tag{26}
\]
if no call is made, declare \(\mathcal E_{\rm SS}\) to hold. Put
\[
\mathcal E_{\rm mech}:=
\mathcal E_{\rm AT}\cap\mathcal E_{\rm SS}.
\tag{27}
\]
For every fixed input and realized partition,
\[
\Pr(\mathcal E_{\rm mech}^c)
\le\beta_{\rm AT}+\beta_{\rm SS}.
\tag{28}
\]
If, additionally, the input is a realizable master-sample realization and
\(E_{\rm good}\) holds, then on \(\mathcal E_{\rm mech}\) the first
`Above` stage \(\widehat r\) and learner output \(\widehat f\) satisfy
\[
\widehat f=V\in\bigcup_{i=1}^k\mathcal L_i^{\widehat r},
\qquad
s_{\widehat r}(\widehat f)
\ge B+2>B=s_{\widehat r}(\perp).
\tag{29}
\]
Thus \(\widehat f\) is an actual current essential-SOA list function on
\(X\), not \(\perp\), \(h_0\), or a trace surrogate. Conditionally on
every such fixed \(E_{\rm good}\) realization, actual-list output fails
with probability at most \(\beta_{\rm AT}+\beta_{\rm SS}\).

**Proof.** Equation (13) bounds \(\mathcal E_{\rm AT}^c\). Conditional on
any transcript that makes the unique Sparse Sample call,
Lemma~\ref{lem:step-008-sparse-utility} bounds failure of (26) by
\(\beta_{\rm SS}\). With no call, that failure is empty by definition.
Therefore the tower property and a union bound give
\[
\begin{aligned}
\Pr(\mathcal E_{\rm mech}^c)
&\le\Pr(\mathcal E_{\rm AT}^c)
  +\Pr(\mathcal E_{\rm SS}^c)\\
&\le\beta_{\rm AT}+\beta_{\rm SS},
\end{aligned}
\tag{30}
\]
with only one Sparse Sample charge.

Now also fix a realizable sample and partition in \(E_{\rm good}\), and
suppose \(\mathcal E_{\rm mech}\) holds. By
Proposition~\ref{prop:step-008-first-above-margin}, the first `Above` exists
and its query obeys (20). The total procedure therefore calls Algorithm 1
exactly once at \(\widehat r\). Equations (20) and (26) give
\[
\begin{aligned}
s_{\widehat r}(V)
&\ge q_{\widehat r}-\tau_{\rm SS}(k)\\
&\ge k/2-\tau_{\rm AT}-\tau_{\rm SS}(k)\\
&\ge B+2>B.
\end{aligned}
\tag{31}
\]
Algorithm 1 assigns \(\perp\) the exact score \(B\), so (31) proves
\(V\ne\perp\). Its exhaustive source codomain then gives
\(V\in\cup_i\mathcal L_i^{\widehat r}\), and the total procedure outputs
this same actual function rather than the fallback \(h_0\). This proves
(29).

For completeness, every terminal and boundary path is now classified.

1. If stage \(0\) already has score \(k\), it is detected and selected
   immediately. If the first score-\(k\) stage is stage \(d\), it is
   detected when reached; no \(d+1\)-st query is needed.
2. An earlier noise-induced `Above` need not have score \(k\), but (20) and
   (31) still force an actual-list output. Thus first-`Above` stopping loses
   no utility margin.
3. An empty-union stage has \(q_r=0\) and is `Below` on
   \(\mathcal E_{\rm AT}\), so it cannot be the selected stage. This also
   covers empty restrictions and nonempty restrictions with empty essential
   lists.
4. Every earlier `Below` has \(q_r<k\). On \(E_{\rm good}\), the accepted
   score-\(k\) stage prevents an all-`Below` transcript; hence the
   exhaustion/default path can occur only outside
   \(E_{\rm good}\cap\mathcal E_{\rm AT}\).
5. A \(\perp\) return, and hence the corresponding \(h_0\) fallback, can
   occur only outside \(\mathcal E_{\rm SS}\) once
   \(E_{\rm good}\cap\mathcal E_{\rm AT}\) holds. The privacy-ready
   numerical choice of \(B\) alone did not prove this; the strict score
   comparison (31) did.
6. Every item in the union is an actual function on \(X\) by the accepted
   list interface. Neither (10) nor the procedure samples a blockwise
   representative, equivalence class, or master-sample trace.

These cases also cover odd \(k\) (the threshold \(k/2\) may be a
half-integer), equality in the weak `Above` comparison, noises equal to
\(\pm\tau_{\rm AT}\), \(d=1\), \(r_\star=0\), \(r_\star=d\), and the
smallest legal \(k=2\). All comparisons above remain in their displayed
weak or strict direction.

Finally, combine (28) with accepted (5). Under the realizable sample law,
\[
\Pr\bigl(E_{\rm good}^c
 \ \text{or actual-list output fails}\bigr)
\le\beta_{\rm tr}+\beta_{\rm AT}+\beta_{\rm SS}
=\frac{3\beta}{4}.
\tag{32}
\]
The mechanism contribution proved in this step is exactly
\(\beta_{\rm AT}+\beta_{\rm SS}=\beta/2\); (32) records rather than
reassigns the earlier trace charge and leaves
\(\beta_{\rm gen}=\beta/4\) for the accepted downstream generalization
step. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-001-teacher-existence} fixes the exact
realized \(k,L,B,\tau_{\rm AT},\tau_{\rm SS}(k)\) and proves the margin
(4); accepted Proposition~\ref{prop:step-001-totality} fixes the exact
threshold, first-`Above` stopping, one-call rule, and every fallback before
utility is considered. Accepted
Proposition~\ref{prop:step-007-finite-termination} supplies, on the
earlier-generated \(E_{\rm good}\), one actual score-\(k\) function at a
queried stage.

Lemma~\ref{lem:step-008-at-accuracy} proves both AboveThreshold accuracy
directions with the exact test \(q_r+Z_r\ge k/2\): every reported stage has
\(q_r\ge k/2-\tau_{\rm AT}\), every `Below` has
\(q_r<k/2+\tau_{\rm AT}<k\), score \(k\) is detected, and score zero is
not. Proposition~\ref{prop:step-008-first-above-margin} composes this with
the accepted structural stage and external stopping, proving a first report
by stage \(d\) and preserving the full teacher margin even when an earlier
stage reports `Above`.

Lemma~\ref{lem:step-008-sparse-utility} proves
\(|\cup_i\mathcal L_i^r\cup\{\perp\}|\le kL+1\) and directly compares the
exact exponential weights to obtain the loss \(\tau_{\rm SS}(k)\) with
failure \(\beta_{\rm SS}\). It does not confuse Lemma 3.1's privacy
conclusion with utility. Proposition~\ref{prop:step-008-actual-output} then
uses
\[
s_{\widehat r}(V)
\ge q_{\widehat r}-\tau_{\rm SS}(k)
\ge B+2>B=s_{\widehat r}(\perp)
\]
to exclude \(\perp\) and force an actual member of the current list union.
The finite Laplace union and the one conditional Sparse Sample tail give
exactly \(\beta_{\rm AT}+\beta_{\rm SS}\), while accepted
Proposition~\ref{prop:step-005-trace-budget} remains a separate earlier
\(\beta_{\rm tr}\) charge. These named results prove the exact accepted
`step_008` row without reopening the teacher, list, or noise calibration and
without using the global diagnostic as proof evidence.

## Explicit Rate Audit

- Exposed variables: \(d,k,L,B,\eta,\varepsilon_s\), the exact threshold
  \(k/2\), \(\tau_{\rm AT}\), \(\tau_{\rm SS}(k)\), and
  \(\beta_{\rm AT},\beta_{\rm SS}\). The public parameters
  \(d,v,\alpha,\beta,\varepsilon,\delta\) enter only through the accepted
  fixed dictionary; no new auxiliary calibration is introduced.
- Hidden constants may depend on: nothing. This step introduces no hidden
  constant. The inherited \(c_{\rm AT}\) and all teacher/list constants
  are the already-fixed universal constants certified by `step_001`.
- Hidden constants may not depend on: \(X,C,D,c,S,\mathcal P\), any list,
  stage, function, trace, transcript, generated event, or mechanism output,
  nor on any exposed scalar parameter.
- Fixed quantities: for the conditional actual-output claim, the positive-
  branch class, a realizable indexed master sample, its fixed partition,
  and the resulting list/query sequence are fixed. The mechanism randomness
  consists of the AboveThreshold noises and the one optional Sparse Sample
  draw.
- Probability mode: simultaneous high probability over all potential
  AboveThreshold noises and conditional high probability for the fresh
  Sparse Sample draw at the adaptively selected stage. The mechanism-good
  event has failure at most
  \(\beta_{\rm AT}+\beta_{\rm SS}\), uniformly over fixed inputs and
  partitions. Combining with the accepted trace event gives the joint
  ledger (32); no independence between the two mechanism events is assumed
  beyond the source's fresh conditional Sparse Sample randomness.
- Horizon mode: exactly \(d+1\) potential finite queries, external stopping
  at the first `Above`, and at most one Sparse Sample call. Pre-sampling
  unused noises is only a distribution-preserving coupling. There is no
  all-time, asymptotic, or per-stage Sparse Sample conclusion.
- Norm mode: integer frequency score and exact membership in sets of binary
  functions on \(X\). No empirical or population risk norm is asserted in
  this step.
- Admissibility conditions and auxiliary tolerances: \(d\ge1\), \(k\ge2\),
  \(\eta,\varepsilon_s,\tau_{\rm AT},\tau_{\rm SS}(k)>0\),
  \(|\mathcal L_i^r|\le L\), the exact ceiling (2), and the accepted margin
  (4). The \(d=0\) branch bypasses every mechanism expression.
- Term absorption or simplification inequalities: (16) is the exact
  Laplace tail; (17)-(19) prove the two-sided threshold signs and
  \(k/2>\tau_{\rm AT}\); (24)-(25) prove the exact effective-domain loss;
  and (31) proves
  \(q_{\widehat r}-\tau_{\rm SS}(k)\ge B+2>B\). No ceiling, stage factor,
  failure-symbol weight, or logarithm is dropped.
- Probability conversion: one union bound over \(d+1\) Laplace tails; one
  tower conversion over the adaptively chosen unique Sparse Sample call;
  one union bound for (30); and one addition of the already-accepted trace
  charge in (32). The exact four-way allocation remains
  \(\beta/4+\beta/4+\beta/4+\beta/4=\beta\).
- Contribution to any Rate Specialization Bridge: this step consumes the
  closed teacher/list/noise dictionary and proves that its mechanism losses
  cost no samples and no multiplicative stage factor. Elimination of
  \(k,L,B\) into the public \(\Lambda\)-rate remains assigned to
  `step_012`.
- Baseline-reduction check: the exact \(d=0,N=0\) learner is untouched. On
  \(d\ge1\), the source structure of one AboveThreshold process and one
  post-success Sparse Sample call is preserved; immediate and last-stage
  success, \(d=1\), empty stages, and all failure fallbacks retain their
  accepted behavior. No weaker stopped or trace-only surrogate replaces the
  actual-output conclusion.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing objects: the accepted queries \(q_r\); the first reported
  stage \(\widehat r\); the actual selected function \(\widehat f\); and
  the mechanism-good event \(\mathcal E_{\rm mech}\). The only new
  downstream interface is: on \(E_{\rm good}\cap\mathcal E_{\rm mech}\),
  \(\widehat f\in\cup_i\mathcal L_i^{\widehat r}\), with conditional
  mechanism failure at most \(\beta_{\rm AT}+\beta_{\rm SS}\).
- Appendix-local objects: the simultaneous noise event
  \(\mathcal E_{\rm AT}\) and the unique-call utility event
  \(\mathcal E_{\rm SS}\). They are generated and bounded in this step,
  then packaged into \(\mathcal E_{\rm mech}\).
- Proof-local objects: the latent noises \(Z_0,\ldots,Z_d\), deterministic
  threshold \(k/2\), the stage score \(s_r\), effective domain
  \(\mathcal U_r\), bad set \(\mathcal B_r\), Sparse Sample return \(V\),
  and accepted structural witness \((r_\star,f_\star)\). Each is defined
  explicitly in (6)-(12) or (21), and none is exported beyond (29).
- Constant and tolerance provenance: this step introduces no constant,
  radius, threshold, or tolerance. The threshold \(k/2\), scales
  \(\eta,\varepsilon_s\), scores \(B,L\), and tolerances
  \(\tau_{\rm AT},\tau_{\rm SS}(k)\) are the exact accepted `step_001`
  objects. Their quantitative dominance is the accepted teacher margin
  (4), consumed without alteration.
- Assumption provenance: the public parameter ranges are primitive.
  \(E_{\rm good}\) and its probability are supplied by accepted
  `step_005`; actual score-\(k\) support is supplied by accepted `step_007`;
  \(\mathcal E_{\rm AT}\), \(\mathcal E_{\rm SS}\), first-`Above`
  existence, and actual selection are proved here. No generated event,
  transcript, support fact, or nonfailure conclusion is made primitive.
- Privacy/nonfailure boundary: the exact \(B\) satisfies Lyu Lemma 3.1's
  numerical privacy condition, but list-coordinate adjacency and privacy
  remain `step_009` obligations. Lemma 3.1 does not supply nonfailure. The
  current proof obtains nonfailure only from the effective-domain tail and
  strict comparison with \(s_r(\perp)=B\).
- Actual-function boundary: accepted lists and their score-\(k\) witness are
  sets of functions on all of \(X\). Algorithm 1 samples from their set
  union. No prediction trace, error trace, quotient, or chosen list index is
  used as the selected object.
- Entry and terminal boundaries: \(q_0=k\), \(r_\star=d\), \(q_r=0\),
  empty restrictions/lists, an earlier false positive, all `Below`,
  \(\perp\), \(h_0\), and stage exhaustion are handled explicitly in
  Proposition~\ref{prop:step-008-actual-output}. Odd \(k\), threshold
  equality, noise-boundary equality, \(d=1\), and \(k=2\) preserve the
  exact strict/weak inequalities.
- Generated-output flow: accepted `step_001` produces the total mechanism
  and teacher margin; accepted `step_005` produces the trace budget;
  accepted `step_007` produces actual score-\(k\) support; this step produces
  \((\mathcal E_{\rm mech},\widehat r,\widehat f)\) for `step_009`-
  `step_011`. Privacy, exact leaf identity, empirical error, and population
  generalization are not claimed here.
- Diagnostic boundary: the paired `global_proof_review.md` has status
  `ACCEPTED`. The diagnostic's step-relevant planning idea was to separate
  the two AboveThreshold implications, the \(kL+1\) effective-domain tail,
  and strict exclusion of \(\perp\). Every mathematical assertion above was
  independently derived from the setting, accepted dependencies, the frozen
  source mechanisms restated here, and named local results. The diagnostic
  was not used as proof evidence, a cited result, an assumption source, or
  authority to change the target claim.
