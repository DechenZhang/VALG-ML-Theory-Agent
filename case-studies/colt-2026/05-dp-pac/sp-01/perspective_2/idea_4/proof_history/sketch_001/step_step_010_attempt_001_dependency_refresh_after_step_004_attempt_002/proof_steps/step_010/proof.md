# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_010`
- Unit attempt: 1
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof/review SHA-256 pairs:
  - `step_001`:
    `0cd51e748813399f1c1e80bc659200d37f96aa013c97e75eda2adeaf74c5d530` /
    `83fee520299e99482863c0e2fe5b905f9b8a1aef70cfcb8b933decbdffe19b7c`;
  - `step_004`:
    `dde324f382fb084af67f773a97140eb205597d15f7ab9d83e13605bf62b80cc8` /
    `254e4b8ef32bae1676cfb9512e4987bfdf81b629c38b193d4787dcf192b82fa0`;
  - `step_009`:
    `b5c2dd0c3c737d906881e324a6aaacb4d958be8f288106b067a58b980cebbe52` /
    `71be50c1a5f40c03d5d64dd767a3ba948f2aed385cbdc3375b33ffdd4a5fc5c0`.
- Independently checked primary source: Xin Lyu, *Private Learning of
  Littlestone Classes, Revisited*, arXiv:2510.00076v1,
  `<TEMP_ROOT>/lyu-source.bdDyo3/submission/main.tex`, SHA-256
  `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.
- Diagnostic planning pair, not proof evidence: `global_proof.md` SHA-256
  `bbb47a7e0753c47fc073d71b9e8e5b0a74d40d79aad7e22c1e8d7bf44c687784`
  and accepted `global_proof_review.md` SHA-256
  `490e6b89ecd229a41dac2b24c82bb277cbacfd66acff00f4f5c82fc58ac7cf09`.

## Target Step Claim

- Intended claim: Instantiate AboveThreshold and Sparse Sample, prove the
  mechanism-good event, and show the output is an actual list item rather
  than fallback.
- Depends on: `step_001`, `step_004`, `step_009`.
- Assumptions used: Primitive `assump:approximate-dp-regime`; derived
  margin/lists.
- Technical challenge: Effective-domain failure symbol and adaptive stage
  selection.
- Intended proof tool or cited result: Lyu Algorithms 1-2 and Lemmas
  3.1-3.2; Laplace/exponential-weight tails.
- Output target: Actual selected quotient output and mechanism ledger.
- Rate objective: Consume only allowed logarithms.
- Row-local review status: `PENDING`; acceptance of the sketch is supplied
  by the binding `proof_sketch_review.md`, not by this row-local field.

More explicitly, on the positive-dimensional branch \(d\geq1\), let

\[
 \mathcal L_i^r\subseteq H_C,
 \qquad i\in[k],\quad r\in\{0,\ldots,d\},
\]

be the current totalized stage lists. On the realizable source-good paths
covered by accepted Proposition~\ref{prop:step-009-termination}, these are
the exact current essential lists and some stage has a common actual
function of score \(k\). This step must run one stopped AboveThreshold
transcript over the \(d+1\) occurrence queries and exactly one Sparse Sample
call after its first `Above`. It must prove, using only the accepted teacher
margin and fresh mechanism randomness, that except on probability at most

\[
 \beta_{\rm AT}+\beta_{\rm SS}=\beta/2,
\]

the selected Sparse Sample outcome belongs literally to
\(\bigcup_{i=1}^k\mathcal L_i^{\widehat r}\). Every fallback path remains
defined, but no fallback is reclassified as an actual candidate. The claim
is mechanism utility only: all-input raw privacy, empirical error, and
population error remain later obligations.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions used directly:
  - Assumption~\ref{assump:approximate-dp-regime}:
    \(0<\alpha,\beta<1/4\), \(0<\varepsilon\leq1\), and
    \(0<\delta<1\). This step uses the positivity of the parameters and the
    accepted deterministic allocations. It does not use or assert the
    later asymptotic \(N\delta\to0\) statement.
- Derived invariants and interfaces supplied by accepted dependencies:
  - Accepted Lemma~\ref{lem:step-001-calibration} supplies the exact
    quantities

    \[
      \beta_{\rm AT}=\beta_{\rm SS}=\beta/4,
      \quad \varepsilon_{\rm SS}=\varepsilon/8,
      \quad
      \tau_{\rm AT}=\eta^{-1}\log((d+1)/\beta_{\rm AT}),
    \]

    the exact list cap \(L\), the Sparse Sample failure score \(B\), and

    \[
      \tau_{\rm SS}
      =\varepsilon_{\rm SS}^{-1}
        \log((kL+1)/\beta_{\rm SS}).
      \tag{1}
    \]

    It also supplies the source Sparse Sample law and the conditional list
    cap \(|\mathcal L_i^r|\leq L\) for every exact or totalized-empty current
    list.
  - Accepted Proposition~\ref{prop:step-001-teacher} supplies the fixed
    public least feasible \(k\), the realized tuple
    \((m,n_0,p_r,L,B)\), and the exact teacher inequality

    \[
      \frac{k}{2}-\tau_{\rm AT}
      \geq B+\tau_{\rm SS}+2.
      \tag{2}
    \]
  - Accepted Proposition~\ref{prop:step-001-totalization} supplies one
    stopped AboveThreshold process with threshold \(k/2\), one Sparse
    Sample call after the first legal `Above`, sanitized lists of size at
    most \(L\), and the complete deterministic fallback table.
  - Accepted Lemma~\ref{lem:step-009-legal-state} supplies, on every
    realizable path, exact current lists of actual functions and the
    attained occurrence queries

    \[
      s_r(\bar h):=|\{i\in[k]:\bar h\in\mathcal L_i^r\}|,
      \qquad q_r:=\max_{\bar h\in H_C}s_r(\bar h)
      \in\{0,\ldots,k\}.
      \tag{3}
    \]
  - Accepted Proposition~\ref{prop:step-009-termination} supplies,
    conditional on the already generated \(E_{\rm good}\), a stage
    \(r^\circ\in\{0,\ldots,d\}\) and an actual
    \(\bar f^\circ\in H_C\) such that

    \[
      \bar f^\circ\in\bigcap_{i=1}^k\mathcal L_i^{r^\circ},
      \qquad q_{r^\circ}=k.
      \tag{4}
    \]

    This accepted conclusion already carries its stated finite-Littlestone,
    realizability, and source-good antecedents; this step does not promote
    those generated facts to primitive conditions.
  - Accepted Lemma~\ref{lem:step-004-occurrence} and
    Propositions~\ref{prop:step-004-lift} and
    \ref{prop:step-004-projection} supply the actual/fallback transcript
    status, the finite positive occurrence set on an actual path, the
    marked law, and its exact projection to the released \(K_C\) law.
- Local conditional hypotheses:
  - The mechanism analysis fixes an arbitrary realizable quotient sample
    and partition for which the accepted antecedent \(E_{\rm good}\) holds.
    This is only the conditional input to (4). The resulting mechanism tail
    is uniform over every such fixed path, so later steps may integrate it;
    this step does not charge or reprove the probability of
    \(E_{\rm good}\).
  - No mechanism-good event, actual selected item, nonfallback status,
    privacy conclusion, empirical-error certificate, or population-error
    certificate is assumed. They are either proved below or expressly left
    to later steps.

The accepted dependency artifacts are exactly the six proof/review files
identified by the hashes in `## Step Identity`, and every dependency review
has status `ACCEPTED` for sketch attempt 1.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under accepted Lemma~\ref{lem:step-001-calibration}, accepted Proposition~\ref{prop:step-001-totalization}, and accepted Lemma~\ref{lem:step-009-legal-state}, each current maximum-occurrence query has sensitivity one under replacement of one list coordinate; every current list tuple has union size at most \(kL\), and Sparse Sample has effective support size at most \(kL+1\), including its distinguished failure symbol. | Discharges the exact query-sensitivity and finite-domain/list-envelope obligations without claiming raw-record adjacency or privacy. |
| `unit_002` | proposition | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Proposition~\ref{prop:step-001-teacher}, accepted Proposition~\ref{prop:step-009-termination}, and Lemma~\ref{lem:step-010-score-support}, one stopped AboveThreshold transcript has a simultaneous noise event of failure probability at most \(\beta_{\rm AT}\); on that event it cannot select an all-empty stage, it detects every score-\(k\) stage, it has a legal first selected stage \(\widehat r\), and \(q_{\widehat r}\geq B+\tau_{\rm SS}+2\). | Handles adaptivity, `Below` accuracy, safe false positives, and first/last-stage detection with one confidence charge. |
| `unit_003` | lemma | Under the selected-score conclusion of Proposition~\ref{prop:step-010-abovethreshold}, Lyu's exact Sparse Sample law on the selected current lists has a score-utility event of conditional failure probability at most \(\beta_{\rm SS}\); its exact failure-symbol mass is at most \(e^{-2\varepsilon_{\rm SS}}\beta_{\rm SS}/(kL+1)\), and on the score-utility event its output is an actual member of a selected-stage list. | Uses the finite effective domain and exact exponential weights to exclude \(\perp\) and every mechanism fallback on the source-valid selected call. |
| `unit_004` | proposition | Under Propositions~\ref{prop:step-010-abovethreshold} and \ref{lem:step-010-sparse-output}, accepted Proposition~\ref{prop:step-001-totalization}, and accepted Step 004's marked-law results, the mechanism-good event fails with probability at most \(\beta_{\rm AT}+\beta_{\rm SS}=\beta/2\); on it the released quotient output is literally in \(\mathcal L_i^{\widehat r}\) for some \(i\), is nonfallback even if its value is \(\bar c_0\), and has a positive occurrence mark whose projection is the unchanged released law. | Assembles the exact target output, total-fallback audit, confidence ledger, and no-overclaim boundary without a stage sample factor. |

Atomic step = no. Sensitivity and support size, adaptive threshold accuracy,
the exponential-weight tail, and the final output/fallback/mark ledger are
independent nontrivial obligations.

## Cited Result Applications

The external source for every item below is the frozen Xin Lyu v1 file
identified in `## Step Identity`. The mechanism statements were checked
directly at labels `algo:private sample`,
`lemma: privacy of sparse sampling`, `algo: abovethreshold`, and
`lemma: privacy of abovethreshold`.

### Lyu Algorithm 1, `algo:private sample`, and Lemma 3.1,
`lemma: privacy of sparse sampling`

- Restated algorithm in current notation: Given an arbitrary domain
  \(\mathcal U\), lists
  \(\mathcal L_1,\ldots,\mathcal L_k\subseteq\mathcal U\), a parameter
  \(\varepsilon_s>0\), and \(B\geq0\), put

  \[
    s(u)=|\{i:u\in\mathcal L_i\}|,
    \quad u\in\bigcup_i\mathcal L_i,
    \qquad s(\perp)=B,
  \]

  and sample from
  \(\bigcup_i\mathcal L_i\cup\{\perp\}\) with probability proportional to

  \[
    \exp(\varepsilon_s s(u)).
    \tag{5}
  \]

  The source exponent has no factor \(1/2\), and \(\perp\) is a separate
  support point with score exactly \(B\).
- Restated privacy lemma: If every list has size at most \(L\) and

  \[
    B\geq10\log(L/\delta_s)/\varepsilon_s,
  \]

  then the law is \((2\varepsilon_s,\delta_s)\)-DP for addition, removal,
  or replacement of one entire list coordinate.
- Instantiated objects: \(\mathcal U=H_C\),
  \(\varepsilon_s=\varepsilon_{\rm SS}\),
  \(\delta_s=\delta_{\rm SS}\), and the selected tuple
  \((\mathcal L_1^{\widehat r},\ldots,
    \mathcal L_k^{\widehat r})\).
- Assumption discharge: Accepted Lemma~\ref{lem:step-001-calibration}
  supplies \(|\mathcal L_i^r|\leq L\), the exact ceiling-defined \(B\), and
  the source calibration. Lemma~\ref{lem:step-010-score-support} below
  proves the effective support bound. Lemma 3.1's privacy conclusion is not
  used to claim raw privacy in this step: raw-record-to-one-list adjacency
  remains for `step_011`.
- Conclusion used: Only the exact categorical law (5), its distinguished
  failure score, and its finite selected support are used in the utility
  calculation below. The commented source utility statement is not invoked.

### Lyu Algorithm 2, `algo: abovethreshold`, and Lemma 3.2,
`lemma: privacy of abovethreshold`

- Restated algorithm in current notation: On each received query \(q_r\),
  draw a fresh independent \(Z_r\sim\operatorname{Lap}(1/\eta)\) and report
  `Above` exactly when

  \[
    q_r+Z_r\geq k/2;
    \tag{6}
  \]

  otherwise report `Below`. The current totalized procedure stops at its
  first `Above`, so it is the first-crossing prefix of the source process.
- Restated privacy lemma: For sensitivity-one adaptive queries and at most
  \(K\) counted crossings, the source privacy cost is

  \[
    \left(
      \eta\,O(\sqrt{K\log(1/\delta_a)}+\log(1/\delta_a)),
      \delta_a
    \right).
  \]

  The source also permits the stated Above/Below symmetry and concurrent
  composition.
- Instantiated objects: One first-crossing process, \(K=1\), threshold
  \(k/2\), noise parameter \(\eta\), and the at most \(d+1\) queries in
  (3).
- Assumption discharge: Lemma~\ref{lem:step-010-score-support} proves
  sensitivity one for replacement of one list coordinate. Accepted
  Lemma~\ref{lem:step-001-calibration} supplies the conditional source
  allocation. This is not a raw-input sensitivity proof and therefore does
  not establish the target learner's DP claim; that remains exactly the
  `step_011` obligation.
- Conclusion used: The exact independent Laplace tests in (6) are used for
  mechanism utility. No privacy conclusion is exported from this artifact.

### Accepted Step 001 applications

- Accepted Lemma~\ref{lem:step-001-calibration}, **Legal positive-branch
  dictionary and source calibration**, is restated in (1) and supplies the
  list cap and exact tail identities

  \[
    (d+1)e^{-\eta\tau_{\rm AT}}=\beta_{\rm AT},
    \qquad
    (kL+1)e^{-\varepsilon_{\rm SS}\tau_{\rm SS}}
    =\beta_{\rm SS}.
    \tag{7}
  \]
- Accepted Proposition~\ref{prop:step-001-teacher}, **Finite public teacher
  witness and least feasible count**, supplies exactly (2), with every
  ceiling retained.
- Accepted Proposition~\ref{prop:step-001-totalization}, **Pre-sampling
  totalization of the quotient procedure**, supplies the exact stopped
  transcript, selected-stage call, and all fallback paths. It supplies no
  mechanism-success conclusion; exclusion of fallback is proved below.

### Accepted Step 009 applications

- Accepted Lemma~\ref{lem:step-009-legal-state}, **Legal realizable stage
  state, potential, and actual-function score**, supplies the attained
  scores (3), exact actual-function list membership, and the all-empty value
  \(q_r=0\).
- Accepted Proposition~\ref{prop:step-009-termination}, **Finite DDim
  budget produces a score-\(k\) stage by stage \(d\)**, supplies (4) on the
  accepted source-good antecedent. It incurs no mechanism randomness,
  confidence charge, new sample, or stage multiplier.

### Accepted Step 004 applications

- Accepted Lemma~\ref{lem:step-004-occurrence}, **Measurable finite
  producer-block occurrence set**, says that a transcript classified as an
  actual Sparse Sample outcome has a nonempty finite set of producer blocks
  whose all-stage unions contain the output.
- Accepted Proposition~\ref{prop:step-004-lift}, **Marked lift of the exact
  quotient output law**, supplies the analysis-only marked kernel.
- Accepted Proposition~\ref{prop:step-004-projection}, **Exact released
  projection and zero privacy residual**, says that summing out the mark
  returns exactly \(K_C\). It does not assert that the marked pair is
  private, and neither does this step.

The two probability inequalities used below are proved directly from the
displayed densities/weights: the two-sided tail of
\(\operatorname{Lap}(1/\eta)\) is integrated explicitly, and the Sparse
Sample tail is a finite sum divided by a denominator containing a
maximum-score item. No additional external probability theorem is invoked.

## Local Derivation

### unit_001: lemma

**Lemma (Sensitivity-one occurrence scores and finite mechanism support).**
\(\label{lem:step-010-score-support}\)
Under accepted Lemma~\ref{lem:step-001-calibration}, accepted
Proposition~\ref{prop:step-001-totalization}, and accepted
Lemma~\ref{lem:step-009-legal-state}, fix any stage
\(r\in\{0,\ldots,d\}\). For a tuple
\(\mathbf L=(L_1,\ldots,L_k)\) of current sanitized lists, define

\[
 s_{\mathbf L}(\bar h)
 :=\sum_{i=1}^k\mathbf1\{\bar h\in L_i\},
 \qquad
 q(\mathbf L):=\max_{\bar h\in H_C}s_{\mathbf L}(\bar h).
 \tag{8}
\]

Then:

1. if \(\mathbf L\) and \(\mathbf L'\) differ in at most one entire list
   coordinate, then

   \[
     |q(\mathbf L)-q(\mathbf L')|\leq1;
     \tag{9}
   \]
2. every current list has size at most \(L\), so

   \[
     U(\mathbf L):=\bigcup_{i=1}^kL_i,
     \qquad |U(\mathbf L)|\leq kL;
     \tag{10}
   \]
3. the Sparse Sample support
   \(U(\mathbf L)\cup\{\perp\}\) has size at most \(kL+1\), is finite even
   when \(H_C\) is infinite, and has a positive finite normalizer under
   (5); and
4. if all lists are empty, then \(q(\mathbf L)=0\).

These are list-interface statements only. In particular, (9) does not
claim that one raw record replacement changes only one current list.

**Proof.** If \(\mathbf L\) and \(\mathbf L'\) differ only at coordinate
\(i_0\), then for every \(\bar h\in H_C\),

\[
 |s_{\mathbf L}(\bar h)-s_{\mathbf L'}(\bar h)|
 =|\mathbf1\{\bar h\in L_{i_0}\}
   -\mathbf1\{\bar h\in L'_{i_0}\}|
 \leq1.
 \tag{11}
\]

Consequently,

\[
 q(\mathbf L)
 =\max_{\bar h}s_{\mathbf L}(\bar h)
 \leq\max_{\bar h}(s_{\mathbf L'}(\bar h)+1)
 =q(\mathbf L')+1.
\]

Interchanging the tuples proves (9). This proof remains valid for ordered
list encodings and repeated positions because the score uses set
membership, not positional multiplicity.

At an adaptive transcript prefix consisting of \(r\) preceding `Below`
reports, both compared executions request the same stage-\(r\) query. Thus
(9) is the required sensitivity-one statement for every next query
conditioned on a common transcript prefix. It is still only a statement at
the list-tuple interface; proving that a raw replacement induces the
required one-list relation is deliberately left to `step_011`.

Accepted Lemma~\ref{lem:step-001-calibration} bounds every exact current
list by \(L\), while accepted
Proposition~\ref{prop:step-001-totalization} replaces every invalid,
nonfinite, non-\(H_C\), or oversized purported list by the empty list. Thus
the same cap holds on every totalized path. The finite union bound gives
(10), and adjoining one distinguished symbol gives support size at most
\(kL+1\). Every score is finite and belongs to \([0,k]\), so every
exponential weight in (5) is finite. The \(\perp\) weight
\(e^{\varepsilon_{\rm SS}B}\) is strictly positive; hence the finite sum of
weights is positive and finite, proving the normalizer claim. If every
list is empty, each summand in (8) is zero for every \(\bar h\), so the
maximum is zero. \(\square\)

### unit_002: proposition

**Proposition (One AboveThreshold transcript selects a score-separated
stage).**
\(\label{prop:step-010-abovethreshold}\)
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Proposition~\ref{prop:step-001-teacher}, accepted
Proposition~\ref{prop:step-009-termination}, and
Lemma~\ref{lem:step-010-score-support}, fix an arbitrary realizable
source-good path on which (4) holds. Realize in advance independent

\[
 Z_0,\ldots,Z_d\sim\operatorname{Lap}(1/\eta)
\]

and run the one first-crossing transcript (6). Define

\[
 E_{\rm AT}:=\bigcap_{r=0}^d\{|Z_r|\leq\tau_{\rm AT}\}.
 \tag{12}
\]

Then

\[
 \Pr(E_{\rm AT}^c)\leq\beta_{\rm AT}.
 \tag{13}
\]

On \(E_{\rm AT}\):

1. every reported `Below` stage satisfies \(q_r<k\);
2. every stage with \(q_r=k\) is reported `Above` if reached;
3. the stopped transcript has a first legal selected stage
   \(\widehat r\in\{0,\ldots,d\}\); and
4. its true selected score obeys

   \[
     q_{\widehat r}
     \geq\frac{k}{2}-\tau_{\rm AT}
     \geq B+\tau_{\rm SS}+2.
     \tag{14}
   \]

Thus an early `Above` at a stage with score below \(k\) is a safe false
positive rather than a mechanism failure: (14) is still sufficient for the
Sparse Sample call. An all-empty stage cannot be selected on
\(E_{\rm AT}\). Immediate score-\(k\) success is selected at stage \(0\),
and a first score-\(k\) stage at \(d\) is either reached and selected or is
preceded by an already safe false positive.

**Proof.** A random variable
\(Z\sim\operatorname{Lap}(1/\eta)\) has density
\((\eta/2)e^{-\eta|z|}\). Direct integration gives, for \(t\geq0\),

\[
 \Pr(|Z|>t)
 =2\int_t^\infty\frac{\eta}{2}e^{-\eta z}\,dz
 =e^{-\eta t}.
 \tag{15}
\]

There are at most \(d+1\) queries. Sampling all possible noises in advance
does not alter the adaptive stopped transcript, and a union bound with (7)
gives

\[
 \Pr(E_{\rm AT}^c)
 \leq(d+1)e^{-\eta\tau_{\rm AT}}
 =\beta_{\rm AT},
\]

which proves (13). No independence among stages is needed for this union
bound, although the source tests are independent.

The teacher margin (2) has a strictly positive right-hand side, so

\[
 \tau_{\rm AT}<k/2.
 \tag{16}
\]

If the process reports `Below` at stage \(r\), the exact threshold rule (6)
gives \(q_r+Z_r<k/2\). On \(E_{\rm AT}\),

\[
 q_r<k/2-Z_r\leq k/2+\tau_{\rm AT}<k,
 \tag{17}
\]

proving the first assertion. If \(q_r=k\), then on the same event

\[
 q_r+Z_r\geq k-\tau_{\rm AT}>k/2,
 \tag{18}
\]

so that stage is reported `Above`. Accepted
Proposition~\ref{prop:step-009-termination} supplies at least one such stage
by stage \(d\). Therefore the stopped transcript has a first legal `Above`
no later than a score-\(k\) stage, proving existence of \(\widehat r\) and
excluding no-success exhaustion.

At the selected stage, the `Above` inequality and
\(Z_{\widehat r}\leq\tau_{\rm AT}\) give

\[
 q_{\widehat r}
 \geq k/2-Z_{\widehat r}
 \geq k/2-\tau_{\rm AT}.
\]

Combining this with (2) proves (14). If all lists at a stage are empty,
Lemma~\ref{lem:step-010-score-support} gives \(q_r=0\), and (16) yields

\[
 q_r+Z_r\leq\tau_{\rm AT}<k/2;
\]

hence that stage must report `Below` on \(E_{\rm AT}\). This also proves
the empty-stage boundary.

For the endpoint audit, let \(r_{\min}\) be the least stage with score
\(k\), which exists by (4). If \(r_{\min}=0\), (18) selects the first query.
If \(r_{\min}=d\), then either a previous query reports `Above`, in which
case (14) makes it a safe selected stage, or all previous reports are
`Below` and (18) selects stage \(d\). Thus the transcript uses one sequence
of at most \(d+1\) queries and no per-stage success event. \(\square\)

### unit_003: lemma

**Lemma (Sparse Sample score tail and exclusion of the failure symbol).**
\(\label{lem:step-010-sparse-output}\)
Under Lyu Algorithm 1 as restated in (5), accepted
Lemma~\ref{lem:step-001-calibration}, and
Proposition~\ref{prop:step-010-abovethreshold}, condition on an arbitrary
source-good path, a transcript in \(E_{\rm AT}\), its selected stage
\(\widehat r\), and the selected current list tuple. Put

\[
 U_{\widehat r}:=\bigcup_{i=1}^k\mathcal L_i^{\widehat r},
 \qquad q:=q_{\widehat r},
\]

and let \(W\in U_{\widehat r}\cup\{\perp\}\) be the Sparse Sample outcome,
with \(s(\perp)=B\). Define

\[
 E_{\rm SS}:=\{s(W)\geq q-\tau_{\rm SS}\}.
 \tag{19}
\]

Then, uniformly over every such selected tuple,

\[
 \Pr(E_{\rm SS}^c\mid
       \text{selected lists and AboveThreshold transcript})
 \leq\beta_{\rm SS}.
 \tag{20}
\]

Moreover,

\[
 \Pr(W=\perp\mid
       \text{selected lists and AboveThreshold transcript})
 \leq
 e^{-2\varepsilon_{\rm SS}}
 \frac{\beta_{\rm SS}}{kL+1}
 \leq\beta_{\rm SS},
 \tag{21}
\]

and on \(E_{\rm SS}\),

\[
 W\in U_{\widehat r},
 \qquad
 W\in\mathcal L_i^{\widehat r}
 \text{ for at least one }i\in[k].
 \tag{22}
\]

Thus \(W\) is an actual current list member. It is an element of \(H_C\)
but need not be in \(\bar C\).

**Proof.** Equation (14) gives

\[
 q\geq B+\tau_{\rm SS}+2>0.
 \tag{23}
\]

Therefore \(U_{\widehat r}\) is nonempty and contains an attained
maximum-score item \(\bar h_*\) with \(s(\bar h_*)=q\). By
Lemma~\ref{lem:step-010-score-support}, the complete support has at most
\(kL+1\) points. Let

\[
 \mathcal B
 :=\{z\in U_{\widehat r}\cup\{\perp\}:
          s(z)<q-\tau_{\rm SS}\}.
\]

Under the exact law (5), the denominator contains the term
\(e^{\varepsilon_{\rm SS}q}\) of \(\bar h_*\), while every point in
\(\mathcal B\) has weight at most
\(e^{\varepsilon_{\rm SS}(q-\tau_{\rm SS})}\). Hence

\[
\begin{aligned}
 \Pr(E_{\rm SS}^c\mid\text{selected state})
 &=\frac{\sum_{z\in\mathcal B}
             e^{\varepsilon_{\rm SS}s(z)}}
          {e^{\varepsilon_{\rm SS}B}
           +\sum_{u\in U_{\widehat r}}
              e^{\varepsilon_{\rm SS}s(u)}}\\
 &\leq |\mathcal B|e^{-\varepsilon_{\rm SS}\tau_{\rm SS}}\\
 &\leq(kL+1)e^{-\varepsilon_{\rm SS}\tau_{\rm SS}}\\
 &=\beta_{\rm SS},
\end{aligned}
 \tag{24}
\]

where the last equality is (7). This is the full finite-effective-domain
tail; it charges low-score actual items as well as \(\perp\) and does not
invoke the source's commented utility statement.

For the exact failure-symbol mass, the same maximum-score denominator term
gives

\[
\begin{aligned}
 \Pr(W=\perp\mid\text{selected state})
 &=\frac{e^{\varepsilon_{\rm SS}B}}
         {e^{\varepsilon_{\rm SS}B}
          +\sum_{u\in U_{\widehat r}}
             e^{\varepsilon_{\rm SS}s(u)}}\\
 &\leq e^{-\varepsilon_{\rm SS}(q-B)}\\
 &\leq e^{-\varepsilon_{\rm SS}(\tau_{\rm SS}+2)}\\
 &=e^{-2\varepsilon_{\rm SS}}
   \frac{\beta_{\rm SS}}{kL+1},
\end{aligned}
 \tag{25}
\]

which proves (21) without dropping the extra teacher slack.

Finally, (23) gives

\[
 q-\tau_{\rm SS}\geq B+2>B=s(\perp).
 \tag{26}
\]

Thus \(E_{\rm SS}\) is incompatible with \(W=\perp\). By the exact support
of (5), \(W\ne\perp\) implies \(W\in U_{\widehat r}\), proving (22). The
current lists contain actual quotient functions in \(H_C\); an essential
SOA may be improper, so no conclusion \(W\in\bar C\) is made. \(\square\)

### unit_004: proposition

**Proposition (Mechanism-good event, actual selected item, and exact
fallback ledger).**
\(\label{prop:step-010-mechanism-good}\)
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Propositions~\ref{prop:step-001-totalization},
\ref{prop:step-004-lift}, and \ref{prop:step-004-projection}, accepted
Lemma~\ref{lem:step-004-occurrence}, and
Proposition~\ref{prop:step-010-abovethreshold} and
Lemma~\ref{lem:step-010-sparse-output}, define on a realizable source-good
path

\[
 E_{\rm mech}:=E_{\rm AT}\cap E_{\rm SS},
 \tag{27}
\]

where \(E_{\rm SS}\) is declared false if no legal selected Sparse Sample
call occurs. Then, conditional on any fixed realizable sample and partition
for which the accepted \(E_{\rm good}\) antecedent holds,

\[
 \Pr(E_{\rm mech}^c\mid\bar S,\mathcal P,E_{\rm good})
 \leq\beta_{\rm AT}+\beta_{\rm SS}
 =\frac{\beta}{2}.
 \tag{28}
\]

On \(E_{\rm mech}\), there are a selected stage
\(\widehat r\in\{0,\ldots,d\}\), a producer \(i\in[k]\), and a terminal
quotient output \(\bar H\in H_C\) such that

\[
 \bar H\in\mathcal L_i^{\widehat r}
 \subseteq\mathcal G_i
 :=\bigcup_{r=0}^d\mathcal L_i^r.
 \tag{29}
\]

The transcript is in the accepted actual-output status event, not a
fallback status. Under the marked lift its occurrence set is nonempty,
\(J\in[k]\), and \(\bar H\in\mathcal G_J\); summing out \(J\) gives exactly
the same released \(K_C\) law. These statements remain status-correct if
the actual selected value happens to equal the default \(\bar c_0\).

**Proof.** Proposition~\ref{prop:step-010-abovethreshold} gives (13) and,
on \(E_{\rm AT}\), a legal selected tuple satisfying (14). Conditional on
every possible selected tuple and preceding AboveThreshold transcript,
Lemma~\ref{lem:step-010-sparse-output} gives (20). Therefore the tower
property and a union bound yield

\[
\begin{aligned}
 \Pr(E_{\rm mech}^c\mid\bar S,\mathcal P,E_{\rm good})
 &\leq\Pr(E_{\rm AT}^c)
   +\Pr(E_{\rm AT}\cap E_{\rm SS}^c
        \mid\bar S,\mathcal P,E_{\rm good})\\
 &\leq\beta_{\rm AT}+\beta_{\rm SS}.
\end{aligned}
 \tag{30}
\]

This argument is uniform over the adaptively selected stage; it does not
multiply \(\beta_{\rm SS}\) by \(d+1\). Equation (1) and the accepted
allocation give the final equality in (28).

On \(E_{\rm mech}\), equation (22) supplies a producer \(i\) and proves the
first inclusion in (29); the second is the definition of the producer's
all-stage union. The source-valid selected tuple is finite, its normalizer
is positive and finite by Lemma~\ref{lem:step-010-score-support}, and the
outcome lies in the exact categorical support. Consequently none of the
following totalized terminal branches occurs on \(E_{\rm mech}\):

1. an all-empty selected-stage tuple (excluded already by (14));
2. no `Above` or stage exhaustion (excluded by (18)); an invalid report or
   a named stage outside \(\{0,\ldots,d\}\) has probability zero under the
   exact finite threshold transcript (6);
3. a nonfinite, non-\(H_C\), oversized, or otherwise invalid selected list
   (the accepted exact current lists pass the sanitizer and obey the cap);
4. an invalid or zero Sparse Sample normalizer (excluded by finiteness and
   the positive \(\perp\) weight);
5. the failure symbol \(\perp\) (excluded by (26));
6. an out-of-support outcome or residual mechanism failure (the exact
   finite categorical law has support only
   \(U_{\widehat r}\cup\{\perp\}\)); or
7. the no-success or default terminal output as a status path.

Thus accepted Proposition~\ref{prop:step-001-totalization} returns the same
actual \(\bar H=W\) rather than invoking \(\bar c_0\) as fallback. If
\(W=\bar c_0\) as a function, its categorical actual status, not its value,
still distinguishes it from fallback.

Accepted Lemma~\ref{lem:step-004-occurrence} now applies to this actual
transcript and gives a nonempty finite producer occurrence set. The marked
kernel chooses \(J\) only from that set, so \(J\in[k]\) and
\(\bar H\in\mathcal G_J\). Accepted
Proposition~\ref{prop:step-004-projection} then removes the analysis-only
mark with exact equality of the released marginal. No privacy statement for
\((\bar H,J)\) is made.

The boundary cases do not create a hidden branch or factor:

- If the first score-\(k\) stage is \(0\), it is selected immediately on
  \(E_{\rm AT}\). If it first occurs at \(d\), the process either safely
  selects an earlier false positive or selects stage \(d\).
- If a queried stage has all lists empty, it reports `Below` on
  \(E_{\rm AT}\). Empty lists in only some blocks are harmless; the selected
  score in (14) still supplies an actual maximum-score item.
- The candidate dictionary is defined at \(t=2\), and all sensitivity,
  support, and marking formulas remain well-formed there. For the realized
  least feasible teacher, however, \(k=2\) is impossible: (2) would require
  \(1-\tau_{\rm AT}\geq B+\tau_{\rm SS}+2\), whose left side is less than
  (1) and whose right side is greater than (2). Thus no proof line
  silently divides by \(k-1\) or assumes a nonexistent feasible \(k=2\)
  mechanism path.
- The output may be improper. Actual membership means membership in a
  current \(H_C\)-valued essential list, not membership in \(\bar C\).

There is one master sample, one fixed block partition reused at all stages,
one AboveThreshold transcript, and one Sparse Sample call. The only stage
multiplicity in this step is the \(d+1\) Laplace union already present
inside \(\tau_{\rm AT}\); no sample factor, privacy composition, or
additional confidence share is introduced. \(\square\)

## Target-Step Assembly

Accepted Lemma~\ref{lem:step-001-calibration} and
Proposition~\ref{prop:step-001-teacher} provide the exact source parameters,
list cap, confidence identities, and teacher margin. Accepted
Proposition~\ref{prop:step-001-totalization} provides the one-transcript,
one-call procedure and every fallback branch. Lemma
~\ref{lem:step-010-score-support} proves directly that the maximum
occurrence query is sensitivity one at the list interface and that every
Sparse Sample effective support is finite of size at most \(kL+1\), even
though \(H_C\) can be infinite.

Accepted Proposition~\ref{prop:step-009-termination} supplies a literal
score-\(k\) actual function at some current stage, conditional on its
accepted realizable source-good antecedent. Proposition
~\ref{prop:step-010-abovethreshold} realizes all \(d+1\) possible Laplace
noises within one stopped process. Its simultaneous event costs exactly one
\(\beta_{\rm AT}\) share, makes every `Below` report structurally accurate
enough \((q_r<k)\), detects a score-\(k\) stage, and gives the selected-stage
lower bound

\[
 q_{\widehat r}\geq k/2-\tau_{\rm AT}
 \geq B+\tau_{\rm SS}+2.
\]

Thus empty stages cannot be selected on the good-noise event, while an
early false positive remains safe.

Lemma~\ref{lem:step-010-sparse-output} then applies the exact source
exponential weights to the one selected finite support. Its maximum-score
denominator term and support size give

\[
 \Pr[s(W)<q_{\widehat r}-\tau_{\rm SS}]
 \leq(kL+1)e^{-\varepsilon_{\rm SS}\tau_{\rm SS}}
 =\beta_{\rm SS},
\]

and the teacher margin puts the failure symbol's score strictly below the
accepted output-score threshold. Hence the good Sparse Sample outcome is
literally in one selected current list, not merely equal to a trace or a
fallback value.

Proposition~\ref{prop:step-010-mechanism-good} composes these two finite
tails by conditioning on the single selected list tuple and obtains the
mechanism ledger

\[
 \Pr(E_{\rm mech}^c\mid\bar S,\mathcal P,E_{\rm good})
 \leq\beta_{\rm AT}+\beta_{\rm SS}=\beta/2.
\]

It audits every totalized branch and proves (29). Accepted
Lemma~\ref{lem:step-004-occurrence} turns actual selected-stage membership
into a nonempty all-stage producer occurrence set, while accepted
Proposition~\ref{prop:step-004-projection} confirms that the analysis-only
mark changes no released mass.

These named results prove exactly the accepted Step 010 row: one adaptive
AboveThreshold transcript and one Sparse Sample call produce, on a derived
mechanism-good event, an actual current quotient-list member rather than
fallback. They do not establish raw adjacency, raw or quotient DP,
empirical error, population error, or a public sample-complexity theorem.

## Explicit Rate Audit

- Exposed variables: \(d,k,L,B,\eta,\varepsilon_{\rm SS},
  \beta_{\rm AT},\beta_{\rm SS},\tau_{\rm AT},\tau_{\rm SS}\), all of
  which are fixed accepted expressions in
  \(d,v,\alpha,\beta,\varepsilon,\delta\). No new structural power is
  introduced.
- Hidden constants may depend on: None in the mechanism tail. The exact
  constants and source constants inside the accepted parameter dictionary
  retain their already reviewed universal provenance.
- Hidden constants may not depend on: \(X,\Sigma,C,D,c,|C|\), the sample,
  partition, stage, list tuple, selected output, event realization, or
  support set.
- Fixed quantities: The tail is uniform after fixing an arbitrary
  realizable sample and partition in the accepted \(E_{\rm good}\)
  antecedent. The parameters and all current lists are then fixed before
  the fresh mechanism coins are analyzed.
- Probability mode: Conditional high probability over the one
  AboveThreshold noise sequence and the one Sparse Sample draw. Equation
  (28) is uniform over every fixed source-good path and can later be
  integrated. It is not an unconditional PAC statement and does not charge
  \(\beta_{\rm tr}\) or \(\beta_{\rm gen}\).
- Horizon mode: One stopped transcript of at most \(d+1\) queries and one
  post-selection Sparse Sample call. There is no per-stage process, sample,
  or Sparse Sample confidence multiplication.
- Norm mode: No statistical norm or risk is bounded. The controlled
  quantities are exact integer list-occurrence scores and categorical
  output membership.
- Admissibility conditions and auxiliary tolerances: Exactly the accepted
  positive branch, the list cap, the score-\(k\) dependency output, and the
  teacher inequality (2). The only tolerances are the accepted
  \(\tau_{\rm AT}\) and \(\tau_{\rm SS}\).
- Term absorption or simplification inequalities: No term is absorbed by
  prose. The complete chain is

  \[
    q_{\widehat r}
    \geq k/2-\tau_{\rm AT}
    \geq B+\tau_{\rm SS}+2,
  \]


  \[
    (d+1)e^{-\eta\tau_{\rm AT}}=\beta_{\rm AT},
    \qquad
    (kL+1)e^{-\varepsilon_{\rm SS}\tau_{\rm SS}}
      =\beta_{\rm SS},
  \]

  and the exact \(\perp\)-mass inequality (25).
- Probability conversion: A union bound for the \(d+1\) noises and a tower
  over the one adaptively selected finite list tuple give
  \(\beta_{\rm AT}+\beta_{\rm SS}=\beta/2\). No independence of partition
  blocks and no union over Sparse Sample calls is asserted.
- Contribution to any Rate Specialization Bridge: The step consumes only
  \(\log((d+1)/\beta_{\rm AT})\) and
  \(\log((kL+1)/\beta_{\rm SS})\), exactly as already present in the
  accepted dictionary. Elimination of \(k,L,B\) and the public
  \(R_{\rm VC}\) bound remain for `step_014`.
- Baseline-reduction check: The \(d=0\) branch bypasses all mechanisms and
  retains the accepted exact no-data output. On \(d\geq1\), first-stage and
  last-stage success use the same transcript and confidence share. The
  realized margin excludes \(k=2\) rather than using a false boundary path.
  Improper actual outputs remain allowed. No conclusion depends on
  \(v=d\), finite class cardinality, or the small-\(\delta\) asymptotic
  schedule.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined and accepted dependency objects: \(H_C,\bar C,\bar c_0,
  d,k,L,B,\eta,\varepsilon_{\rm SS},\beta_{\rm AT},\beta_{\rm SS},
  \tau_{\rm AT},\tau_{\rm SS}\), the current lists
  \(\mathcal L_i^r\), the totalized released law \(K_C\), and the marked law
  \(\widetilde K_C\) retain their existing meanings.
- Appendix-local exported objects: the selected stage \(\widehat r\), the
  mechanism-good event \(E_{\rm mech}\), and the exact actual-output
  conclusion (29). These are the minimal interfaces consumed by later
  empirical-utility and finite-reconstruction steps; they are not public
  theorem assumptions.
- Proof-local objects: a generic list tuple \(\mathbf L\), its union
  \(U(\mathbf L)\), the scores \(s_{\mathbf L}\) and \(q(\mathbf L)\), the
  noises \(Z_r\), \(E_{\rm AT}\), the selected Sparse Sample outcome \(W\),
  the bad support set \(\mathcal B\), and \(E_{\rm SS}\). They expose the
  mechanism calculation and are not exported to the final theorem.
- Helper-object surface: No new public-facing helper is introduced. The
  only downstream interface is the appendix-local event/output package in
  Proposition~\ref{prop:step-010-mechanism-good}.
- Constant and threshold provenance: No new numerical constant, list cap,
  failure score, margin, or tolerance is chosen. \(L,B,\eta,
  \varepsilon_{\rm SS},\tau_{\rm AT},\tau_{\rm SS}\) are inherited from
  accepted Step 001; the extra slack (2) is exactly the accepted teacher
  margin. The ranges \(q_r\in\{0,\ldots,k\}\),
  \(|U_r|\leq kL\), and support size at most \(kL+1\) are proved or
  inherited as named results.
- Assumption provenance: The approximate-DP parameter regime is primitive.
  Totalized lists, list caps, the teacher margin, the score-\(k\) source
  stage, the actual/fallback status, marked law, and projection are accepted
  derived interfaces. Sensitivity one at the list interface, finite support,
  \(E_{\rm AT}\), selected-score separation, \(E_{\rm SS}\),
  \(E_{\rm mech}\), actual current-list membership, and exclusion of every
  fallback path are proved in this step. \(E_{\rm good}\) is only the local
  conditional antecedent of the accepted Step 009 output.
- Adaptive transcript discipline: All possible \(d+1\) noises may be
  sampled in advance, but the algorithm queries them in order and stops at
  the first `Above`. The Sparse Sample tail is conditioned on the one
  realized selected tuple and then integrated. There is no assumption that
  selected stages agree on neighboring raw inputs and no privacy conclusion
  from that conditioning.
- Failure/status discipline: \(\perp\) is a distinguished symbol outside
  \(H_C\) with score \(B\). A genuine categorical outcome equal in value to
  \(\bar c_0\) remains actual; a fallback with the same value remains
  nonactual and mark (0). Value equality never replaces transcript status.
- Empty-list and boundary discipline: all-empty stages have score zero and
  cannot pass on \(E_{\rm AT}\); partially empty tuples obey the same cap and
  score formulas. The exact teacher margin rules out a realized feasible
  \(k=2\), while the candidate dictionary and Step 004 mark remain
  well-defined at that formal boundary. First and last stages are both
  covered by the same stopped transcript.
- Output discipline: An actual list member lies in \(H_C\) and may be an
  improper SOA. This step proves no membership in \(\bar C\), no empirical
  error, and no population error.
- Privacy boundary: Lemma~\ref{lem:step-010-score-support} proves only
  list-coordinate sensitivity. Lyu Lemmas 3.1-3.2 are restated with their
  source hypotheses, but raw-record/list locality, adaptive raw-input
  composition, and the final \((\varepsilon,\delta)\)-DP conclusion are not
  proved here. The analysis-only marked pair is not claimed private.
- Global diagnostic boundary: The paired diagnostic review is `ACCEPTED` at
  the hashes in `## Step Identity`. Its Block G suggestion -- use one
  simultaneous Laplace event, the exact selected-score lower bound, and a
  finite exponential-weight tail -- was used only to plan the local units.
  Every formula above was independently derived from accepted dependencies
  and the frozen Lyu v1 statements. The diagnostic was not used as proof
  evidence, a cited result, an assumption source, or authority to change
  the target claim.
