# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_009
- Unit attempt: 1
- Binding setting SHA-256:
  a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4
- Binding proof-sketch SHA-256:
  cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7
- Binding proof-sketch-review SHA-256:
  302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789
- Accepted dependency proof/review SHA-256 (step_008):
  903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760 /
  cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b
- Independently checked primary source: Xin Lyu, *Private Learning of
  Littlestone Classes, Revisited*, arXiv:2510.00076v1,
  `<TEMP_ROOT>/lyu-source.bdDyo3/submission/main.tex`, SHA-256
  b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.

## Target Step Claim

- Intended claim: Prove finite DDim descent and a score-\(k\) common actual
  quotient function by stage \(d\).
- Depends on: step_008.
- Assumptions used: Primitive `assump:finite-littlestone` and
  `assump:realizable-iid`; derived inclusion/lists.
- Technical challenge: Signed one-unit potential drop and DDim-zero
  support.
- Intended proof tool or cited result: Lyu Lemma 4.3 and Corollary 4.1
  Items 2-4.
- Output target: Common-stage producer.
- Rate objective: No additional stage sample factor.
- Row-local review status: PENDING. The binding acceptance gate is the
  ACCEPTED proof-sketch review, not this row-local field.

More explicitly, on the positive branch \(d\geq1\), use the restrictions,
parameters, and actual essential-function lists produced by the accepted
dependency:

\[
 H_i^r
 =\{\bar h\in\bar C:
       \operatorname{err}_{\bar S_i}(\bar h)
       \leq\rho^{r+1}\gamma\},
 \qquad
 p_r=2^rn_0d,
 \qquad
 \mathcal L_i^r=\operatorname{Ess}_{p_r,d}(H_i^r),
 \tag{1}
\]

for \(i\in[k]\) and \(r\in\{0,\ldots,d\}\), with the dependency's
empty-restriction totalization understood. On every realizable quotient
sample, all restrictions in (1) will be proved nonempty before any DDim is
defined. Conditional on the derived event \(E_{\mathrm{good}}\), this step
must prove that there are \(r_*\in\{0,\ldots,d\}\) and one actual function
\(\bar f_*\in H_C\) such that

\[
 \bar f_*\in\bigcap_{i=1}^k\mathcal L_i^{r_*}.
 \tag{2}
\]

Equivalently, the maximum teacher-occurrence score at stage \(r_*\) is
exactly \(k\). The conclusion in (2) is structural and conditional on the
already generated \(E_{\mathrm{good}}\); this step does not analyze an
AboveThreshold report, Sparse Sample, mechanism noise, privacy, empirical
error, population error, or a new sampling event.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:finite-littlestone}: \(C\neq\varnothing\) and
    \(d=\operatorname{LD}(C)<\infty\). This proof treats the positive
    branch \(d\geq1\); the setting's \(d=0\) branch is the exact no-data
    singleton bypass.
  - Assumption~\ref{assump:realizable-iid}: for utility, an arbitrary
    \(D\) and arbitrary \(c\in C\) generate records
    \((x,c(x))\), independently with \(x\sim D\). The proof uses only the
    pointwise label consistency supplied by realizability. It uses neither
    independence nor a distributional tail bound.
  - The setting-defined positive-branch objects \(k\geq2\), \(n_0=km\),
    the quotient target \(\bar c\), the fixed blocks, and the stage range
    \(r=0,\ldots,d\) are definitions, not added assumptions.
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\ref{lem:step-008-stage-map} and
    Propositions~\ref{prop:step-008-decompositions},
    \ref{prop:step-008-essential-lists}, and
    \ref{prop:step-008-boundaries} supply the endpoint-complete
    restrictions, positive integer scales, finite optimal decompositions,
    actual essential-function lists, and correct empty-state convention.
  - Accepted Proposition~\ref{prop:step-008-inclusion} supplies, on the
    already generated event \(E_{\mathrm{good}}\),
    \[
      H_{i_*}^{r+1}\subseteq\bigcap_{i=1}^k H_i^r
      \quad(0\leq r<d,\ i_*\in[k]).
      \tag{3}
    \]
  - Accepted Proposition~\ref{prop:step-008-transition} supplies the exact
    factor-two DDim comparison and equality-only actual-SOA identity for
    the pair
    \[
      (\mathcal G,\mathcal H,2p,p)
      =(H_{i_*}^{r+1},H_i^r,p_{r+1},p_r).
      \tag{4}
    \]
- Local conditional hypotheses:
  - Occurrence of \(E_{\mathrm{good}}\) is used only in the transition,
    descent, and termination units. It remains a derived event, not a
    primitive theorem assumption. Its confidence charge is not repeated
    here.
  - A particular realized sample is used only after its zero-error target
    property is derived in Lemma~\ref{lem:step-009-legal-state} from
    Assumption~\ref{assump:realizable-iid}. Restriction nonemptiness is not
    assumed.
  - No DDim is assigned to an empty outer restriction. The arbitrary-input
    totalized empty-list path remains defined but is outside this
    realizable structural conclusion.
- Accepted dependency artifacts:
  - `perspective_2/idea_4/proof_steps/step_008/proof.md` and `review.md`,
    with the hashes above and review status ACCEPTED.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:realizable-iid}, accepted Lemma~\ref{lem:step-008-stage-map}, and accepted Propositions~\ref{prop:step-008-decompositions} and \ref{prop:step-008-essential-lists}, if \(d\ge1\) and \(\bar S\) is generated from a target \(\bar c\), then \(\bar c\in H_i^r\) for every \(i,r\); hence all DDim values are legally defined, integer-valued in \(\{0,\ldots,d\}\), and the stage potential \(M_r\) and maximum actual-function score \(q_r\) below are attained with \(0\le M_r\le d\) and \(0\le q_r\le k\). | Derives realizable nonemptiness and defines the potential and score on correct domains rather than assigning a DDim to an empty class. |
| unit_002 | proposition | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:realizable-iid}, accepted Propositions~\ref{prop:step-008-inclusion}, \ref{prop:step-008-decompositions}, and \ref{prop:step-008-transition}, and Lemma~\ref{lem:step-009-legal-state}, if \(E_{\mathrm{good}}\) occurs, \(0\le r<d\), and \(M_{r+1}=M_r\), then one actual function in \(H_C\) is essential to every current block, so \(q_r=k\). | Uses one arbitrary next optimal tree/maximum leaf against every arbitrary current optimal tree, closing the nonunique-tree and actual-function equality obligation. |
| unit_003 | proposition | Under the assumptions and accepted dependency results of Proposition~\ref{prop:step-009-equality-common}, if \(E_{\mathrm{good}}\) occurs, \(0\le r<d\), and \(q_r<k\), then \(M_{r+1}\le M_r-1\). | Converts the exact factor-two weak comparisons against every current block into a signed one-unit integer drop. |
| unit_004 | proposition | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:realizable-iid}, accepted Proposition~\ref{prop:step-008-essential-lists}, Lyu Corollary 4.1 Item 4, and Lemma~\ref{lem:step-009-legal-state}, if \(M_r=0\) at any stage \(0\le r\le d\), then the realizable target \(\bar c\) belongs to every list and \(q_r=k\). | Supplies nonvacuous support at potential zero; nonnegativity alone is not used as a substitute for a common item. |
| unit_005 | proposition | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:realizable-iid}, Lemma~\ref{lem:step-009-legal-state}, and Propositions~\ref{prop:step-009-unit-drop} and \ref{prop:step-009-zero-support}, if \(E_{\mathrm{good}}\) occurs, then some \(r_*\le M_0\le d\) has \(q_{r_*}=k\), and an attaining actual \(\bar f_*\in H_C\) lies in all \(k\) stage lists. This includes \(M_0=0\), \(d=1\), and success first appearing at the last stage. | Sums the finite one-unit budget across at most \(d\) transitions and produces exactly the common-stage interface consumed downstream. |

Atomic step = no. Realizable nonemptiness, equality-to-commonality, strict
integer descent, zero-potential support, and finite-horizon termination are
independent theorem-critical obligations.

## Cited Result Applications

### Accepted dependency: endpoint-complete restrictions and legal DDim objects

Accepted Lemma~\ref{lem:step-008-stage-map} states in current notation that,
for \(d\ge1\),

\[
 H_i^r
 =\{\bar h\in\bar C:
       \operatorname{err}_{\bar S_i}(\bar h)
       \leq\rho^{r+1}\gamma\},
 \qquad
 p_r=2^rn_0d,
 \qquad 0\le r\le d,
 \tag{5}
\]

and \(p_{r+1}=2p_r\) for \(0\le r<d\). Every nonempty \(H_i^r\) has
Littlestone dimension at most \(d\), and if one actual
\(\bar c^\star\in\bar C\) has zero error on every block, then it belongs to
every restriction. The present proof discharges that last condition from
realizability in Lemma~\ref{lem:step-009-legal-state}; it does not assume
restriction nonemptiness.

Accepted Proposition~\ref{prop:step-008-decompositions} states that every
nonempty \(H_i^r\) at every positive integer scale \(p_r\) admits a finite
optimal \((p_r,d)\)-decomposition. Consequently,

\[
 D_{i,r}:=\operatorname{DDim}_{p_r,d}(H_i^r)
 \in\{0,1,\ldots,d\}
 \tag{6}
\]

whenever \(H_i^r\ne\varnothing\), and an optimal tree has a leaf whose
Littlestone dimension equals \(D_{i,r}\). This supplies both integer
provenance and the maximum-leaf existence used below; no finiteness of
\(Q_C\), \(\bar C\), or \(H_i^r\) is assumed.

### Accepted dependency: exact eventwise inclusion

Accepted Proposition~\ref{prop:step-008-inclusion} states exactly (3) for
every \(r<d\) and every \(i_*\), conditional on the one already generated
\(E_{\mathrm{good}}\). Its proof used the two exact full-sample/block-error
branches upstream. This step consumes only (3). It does not repeat a stage
union, make a block-independence claim, or change the event's probability.

### Lyu Lemma 4.3 and its accepted current-notation wrapper

The frozen v1 source's Lemma 4.3 (`lemma: p-decomposition`) states the
following. Let nonempty binary classes
\(\mathcal G\subseteq\mathcal H\) have Littlestone dimension at most \(d\),
and choose arbitrary optimal \((2p,d)\)- and \((p,d)\)-decompositions of
\(\mathcal G\) and \(\mathcal H\). Then

\[
 \operatorname{DDim}_{2p,d}(\mathcal G)
 \leq\operatorname{DDim}_{p,d}(\mathcal H).
 \tag{7}
\]

If both sides equal \(t\), then for every dimension-\(t\) leaf
\(\mathcal G_v\) in the arbitrarily chosen first tree and for the
arbitrarily chosen second tree, there is a dimension-\(t\) leaf
\(\mathcal H_u\) satisfying

\[
 \operatorname{SOA}_{\mathcal H_u}
 =\operatorname{SOA}_{\mathcal G_v}
 \quad\text{as functions on the whole domain}.
 \tag{8}
\]

Accepted Proposition~\ref{prop:step-008-transition} checks every source
hypothesis for the current quotient objects: on \(E_{\mathrm{good}}\), use
only

\[
 \mathcal G=H_{i_*}^{r+1},\qquad
 \mathcal H=H_i^r,\qquad
 (2p,p)=(p_{r+1},p_r).
 \tag{9}
\]

Nonemptiness comes from Lemma~\ref{lem:step-009-legal-state}; inclusion
comes from (3); the Littlestone bounds and arbitrary optimal trees come
from the accepted dependency; and \(p_{r+1}=2p_r\) is exact. Thus (7)-(8)
apply without a same-scale substitution. The source domain is translated
literally to \(Q_C\), and (8) is pointwise equality of actual elements of
\(H_C\), not equality of empirical traces.

### Lyu Definition 4.3 and Corollary 4.1 Items 2-4

The frozen v1 source's Definition 4.3 says that an actual function
\(f:Q_C\to\{0,1\}\) is \((p,d)\)-essential to a nonempty class
\(\mathcal H\), whose DDim is \(t\), precisely when every optimal
\((p,d)\)-decomposition of \(\mathcal H\) has a dimension-\(t\) leaf with
SOA exactly \(f\). Accepted Proposition
~\ref{prop:step-008-essential-lists} translates this definition to

\[
 \mathcal L_i^r=\operatorname{Ess}_{p_r,d}(H_i^r)
 \tag{10}
\]

for nonempty restrictions and makes each list a finite set of actual
functions in \(H_C\).

The same source Corollary 4.1 states, in current notation:

2. if nonempty \(\mathcal G\subseteq\mathcal H\) have the same
   \((p,d)\)-DDim, every \((p,d)\)-essential function of \(\mathcal G\) is
   essential to \(\mathcal H\);
3. if
   \(\operatorname{DDim}_{2p,d}(\mathcal H)
      =\operatorname{DDim}_{p,d}(\mathcal H)\), then at least one
   \((p,d)\)-essential function exists; and
4. if \(\operatorname{DDim}_{p,d}(\mathcal H)=0\), then \(\mathcal H\) is
   finite and
   \(\operatorname{Ess}_{p,d}(\mathcal H)=\mathcal H\).

Item 4 is applied directly in Proposition
~\ref{prop:step-009-zero-support}. Item 2 is consistent with the accepted
same-scale inheritance interface. Item 3 is not used as an unjustified
existence shortcut: in the transition argument the next class is measured
at \(p_{r+1}=2p_r\), and equality of that class's DDim at the additional
scale \(2p_{r+1}\) is not available. Instead, Proposition
~\ref{prop:step-009-equality-common} uses the stronger, exactly applicable
arbitrary-tree conclusion (8) to construct one current-stage common
essential function.

### Local-result applications

- Lemma~\ref{lem:step-009-legal-state} derives nonemptiness before defining
  \(D_{i,r}\) and supplies attained integer potentials and scores.
- Proposition~\ref{prop:step-009-equality-common} uses (7)-(8) to show that
  equality of consecutive maximum potentials forces \(q_r=k\).
- Proposition~\ref{prop:step-009-unit-drop} takes the contrapositive of
  that equality case only after displaying the comparison against every
  current block, and then uses integrality for a one-unit drop.
- Proposition~\ref{prop:step-009-zero-support} uses Corollary 4.1 Item 4
  and the realizable target, rather than nonnegativity alone, to produce
  common support.
- Proposition~\ref{prop:step-009-termination} composes the one-unit drops
  over at most \(M_0\le d\) transitions and invokes zero support at the
  terminal stage.

## Local Derivation

### unit_001: lemma

**Lemma (Legal realizable stage state, potential, and actual-function
score).**
\(\label{lem:step-009-legal-state}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:realizable-iid} and accepted
Lemma~\ref{lem:step-008-stage-map} and
Propositions~\ref{prop:step-008-decompositions} and
\ref{prop:step-008-essential-lists}, suppose \(d\ge1\), fix arbitrary
\(D\) and \(c\in C\), and let the raw master sample be generated as

\[
 S=((x_j,c(x_j)))_{j=1}^{n_0},
 \qquad x_1,\ldots,x_{n_0}\stackrel{\mathrm{iid}}{\sim}D.
 \tag{11}
\]

Let \(\bar S=T_{n_0}(S)\), let \(\bar c\in\bar C\) be induced by \(c\),
and use the fixed blocks of \(\bar S\). Then

\[
 \operatorname{err}_{\bar S_i}(\bar c)=0,
 \qquad
 \bar c\in H_i^r
 \quad(i\in[k],\ 0\le r\le d).
 \tag{12}
\]

In particular, every \(H_i^r\) is nonempty. It is therefore legal to
define, only on this realizable path,

\[
 D_{i,r}:=\operatorname{DDim}_{p_r,d}(H_i^r),
 \qquad
 M_r:=\max_{i\in[k]}D_{i,r}.
 \tag{13}
\]

These maxima are attained and

\[
 D_{i,r},M_r\in\{0,1,\ldots,d\}.
 \tag{14}
\]

For every actual quotient function \(\bar f\in H_C\), define its
stage-\(r\) teacher-occurrence score and the maximum score by

\[
 s_r(\bar f):=
 \bigl|\{i\in[k]:\bar f\in\mathcal L_i^r\}\bigr|,
 \qquad
 q_r:=\max_{\bar f\in H_C}s_r(\bar f).
 \tag{15}
\]

The maximum in (15) is attained, \(q_r\in\{0,1,\ldots,k\}\), and

\[
 q_r=k
 \quad\Longleftrightarrow\quad
 \text{there is an actual }\bar f\in H_C
 \text{ with }\bar f\in\bigcap_{i=1}^k\mathcal L_i^r.
 \tag{16}
\]

**Proof.**
For every generated record in (11), put \(q_j=\kappa(x_j)\). By the
definition of the induced quotient concept,

\[
 c(x_j)=\bar c(\kappa(x_j))=\bar c(q_j).
\]

Thus \(\bar c\) makes no error on any record and hence no error on any
block, proving the first assertion in (12). The thresholds
\(\rho^{r+1}\gamma\) in (5) are positive on the positive branch, so the
second assertion in (12) follows. This derives nonemptiness from the
realizable labels; it does not treat nonemptiness as a primitive or
generated-event assumption. Independence in (11) is not used in this
pointwise implication.

The accepted decomposition proposition now applies to every nonempty
restriction and gives (6), so (13) is defined on the finite nonempty index
set \([k]\), its maximum is attained, and (14) follows.

Each list in (10) consists of actual elements of \(H_C\). For any
\(\bar f\in H_C\), (15) counts block indices rather than leaf duplicates,
so \(s_r(\bar f)\in\{0,\ldots,k\}\). The space \(H_C\) is nonempty. Hence
the nonempty set of attained integer scores is a subset of the finite set
\(\{0,\ldots,k\}\) and has a largest attained value. This remains true if
every list is empty: then every score is zero. Finally, a score equals
\(k\) exactly when the same actual function is present in every one of the
\(k\) set-valued lists, proving (16). \(\square\)

### unit_002: proposition

**Proposition (Equality of consecutive maxima forces one common actual
SOA).**
\(\label{prop:step-009-equality-common}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:realizable-iid}, accepted
Propositions~\ref{prop:step-008-inclusion},
\ref{prop:step-008-decompositions}, and
\ref{prop:step-008-transition}, Lyu Lemma 4.3, and
Lemma~\ref{lem:step-009-legal-state}, suppose \(E_{\mathrm{good}}\) occurs,
\(0\le r<d\), and

\[
 M_{r+1}=M_r=:t.
 \tag{17}
\]

Then there is one actual function \(\bar f\in H_C\) that is
\((p_r,d)\)-essential to every \(H_i^r\). Consequently,

\[
 \bar f\in\bigcap_{i=1}^k\mathcal L_i^r
 \qquad\text{and}\qquad q_r=k.
 \tag{18}
\]

**Proof.**
Because \([k]\) is finite and every next-stage DDim is defined by
Lemma~\ref{lem:step-009-legal-state}, choose

\[
 i_*\in\operatorname*{arg\,max}_{j\in[k]}D_{j,r+1},
 \qquad
 D_{i_*,r+1}=M_{r+1}=t.
 \tag{19}
\]

The same lemma gives \(H_{i_*}^{r+1}\ne\varnothing\), and the accepted
eventwise inclusion gives

\[
 H_{i_*}^{r+1}\subseteq H_i^r
 \quad\text{for every }i\in[k].
 \tag{20}
\]

For every current block \(i\), apply the exact factor-two comparison with
the objects in (9). Equations (7), (17), and (19), together with the
definition of \(M_r\), give the two-sided comparison

\[
 t=M_{r+1}=D_{i_*,r+1}
 \le D_{i,r}
 \le M_r=t
 \quad\text{for every }i\in[k].
 \tag{21}
\]

Thus every quantity in (21) equals \(t\). Notice that the factor-two
comparison was made against every current block, not only a current
maximizer.

Now fix one arbitrary optimal \((p_{r+1},d)\)-decomposition
\(T_*\) of \(H_{i_*}^{r+1}\), and in that tree fix one arbitrary leaf
\(v_*\) whose Littlestone dimension equals its degree \(t\). Such a leaf
exists because the accepted dependency supplies a finite optimal tree
whose degree is the maximum leaf dimension. Define the actual pointwise
function

\[
 \bar f:=\operatorname{SOA}_{(H_{i_*}^{r+1})_{v_*}}
 \in H_C.
 \tag{22}
\]

The function in (22) may be improper, meaning \(\bar f\notin\bar C\); no
properness assertion is needed.

Fix a block \(i\in[k]\), and then fix an arbitrary optimal
\((p_r,d)\)-decomposition \(T_i\) of \(H_i^r\). Pair this arbitrary current
tree with the fixed next tree \(T_*\). The source Lemma 4.3 explicitly
allows arbitrarily chosen optimal trees. Its equality premise holds by
(21), so its second conclusion, applied to the fixed arbitrary maximum
leaf \(v_*\), produces a dimension-\(t\) leaf \(u_i\) of \(T_i\) with

\[
 \operatorname{SOA}_{(H_i^r)_{u_i}}=\bar f
 \quad\text{pointwise on all of }Q_C.
 \tag{23}
\]

Because \(T_i\) was arbitrary, Definition 4.3 says that the one function
\(\bar f\) in (22) is \((p_r,d)\)-essential to \(H_i^r\). The next tree
\(T_*\), the next maximum leaf \(v_*\), and hence \(\bar f\) were held
fixed while \(i\) and \(T_i\) varied. Therefore the same actual function
is essential to every current block. By (10), it lies in every
\(\mathcal L_i^r\), and (16) gives \(q_r=k\).

This proof does not assert that \(\bar f\) is essential to the next-stage
class: one maximum leaf of one fixed next optimal tree is sufficient. That
distinction avoids assuming the extra same-class, two-scale equality
required by Corollary 4.1 Item 3. \(\square\)

### unit_003: proposition

**Proposition (Below-common-score stages cause one-unit DDim descent).**
\(\label{prop:step-009-unit-drop}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:realizable-iid}, accepted
Propositions~\ref{prop:step-008-inclusion} and
\ref{prop:step-008-transition}, Lemma~\ref{lem:step-009-legal-state}, and
Proposition~\ref{prop:step-009-equality-common}, suppose
\(E_{\mathrm{good}}\) occurs, \(0\le r<d\), and

\[
 q_r<k.
 \tag{24}
\]

Then

\[
 M_{r+1}\le M_r-1.
 \tag{25}
\]

**Proof.**
Choose a next-stage maximizer \(i_*\) exactly as in (19). For every
current block \(i\), realizable nonemptiness, (3), and the exact pair
\((p_{r+1},p_r)=(2p_r,p_r)\) discharge the factor-two comparison. Hence

\[
 M_{r+1}=D_{i_*,r+1}
 \le D_{i,r}
 \le M_r
 \quad\text{for every }i\in[k].
 \tag{26}
\]

In particular, \(M_{r+1}\le M_r\). If equality held, Proposition
~\ref{prop:step-009-equality-common} would give \(q_r=k\), contradicting
(24). Therefore

\[
 M_{r+1}<M_r.
 \tag{27}
\]

By (14), both sides are integers. Thus strict inequality (27), rather than
mere nonincrease, is exactly the signed one-unit bound (25). There is no
additive defect, stochastic forcing, or approximation term in this
recurrence. \(\square\)

### unit_004: proposition

**Proposition (DDim-zero support contains the realizable target in every
list).**
\(\label{prop:step-009-zero-support}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:realizable-iid}, accepted
Proposition~\ref{prop:step-008-essential-lists}, the checked Lyu
Corollary 4.1 Item 4, and Lemma~\ref{lem:step-009-legal-state}, fix any
stage \(r\in\{0,\ldots,d\}\). If

\[
 M_r=0,
 \tag{28}
\]

then

\[
 \bar c\in\bigcap_{i=1}^k\mathcal L_i^r,
 \qquad q_r=k.
 \tag{29}
\]

**Proof.**
Every \(D_{i,r}\) is a nonnegative integer and is at most \(M_r\). Thus
(28) gives

\[
 \operatorname{DDim}_{p_r,d}(H_i^r)=D_{i,r}=0
 \quad\text{for every }i\in[k].
 \tag{30}
\]

Lemma~\ref{lem:step-009-legal-state} proved that every \(H_i^r\) is
nonempty and that \(\bar c\in H_i^r\). Therefore the nonempty-class premise
of Corollary 4.1 Item 4 is discharged separately for every block. That item
and the accepted list definition give

\[
 \mathcal L_i^r
 =\operatorname{Ess}_{p_r,d}(H_i^r)
 =H_i^r
 \quad\text{for every }i\in[k].
 \tag{31}
\]

Combining target membership with (31) proves (29), and (16) gives the
score statement. In particular, the common item is supplied by the
realizable target and Item 4; it is not inferred from potential
nonnegativity alone. \(\square\)

### unit_005: proposition

**Proposition (Finite DDim budget produces a score-\(k\) stage by stage
\(d\)).**
\(\label{prop:step-009-termination}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:realizable-iid}, Lemma~\ref{lem:step-009-legal-state}, and
Propositions~\ref{prop:step-009-unit-drop} and
\ref{prop:step-009-zero-support}, suppose \(d\ge1\) and
\(E_{\mathrm{good}}\) occurs. Then there is a stage

\[
 r_*\in\{0,1,\ldots,M_0\}\subseteq\{0,1,\ldots,d\}
 \tag{32}
\]

and an actual quotient function \(\bar f_*\in H_C\) such that

\[
 q_{r_*}=k,
 \qquad
 \bar f_*\in\bigcap_{i=1}^k\mathcal L_i^{r_*}.
 \tag{33}
\]

The function \(\bar f_*\) is an actual member of the stage lists; it may
be an improper SOA function unless the zero-potential branch selects the
target \(\bar c\).

**Proof.**
By (14), let

\[
 \tau:=M_0\in\{0,1,\ldots,d\}.
 \tag{34}
\]

If \(\tau=0\), Proposition~\ref{prop:step-009-zero-support} applied at
stage (0) gives \(q_0=k\), so take \(r_*=0\).

Now suppose \(\tau\ge1\). If some \(r<\tau\) already satisfies \(q_r=k\),
take the least such \(r\). Otherwise,

\[
 q_r<k\quad\text{for every }r=0,1,\ldots,\tau-1.
 \tag{35}
\]

Because \(\tau\le d\), every index in (35) is a legal transition index:
\(r\le\tau-1\le d-1\). Proposition
~\ref{prop:step-009-unit-drop} therefore applies successively and gives,
by induction,

\[
 M_j\le M_0-j=\tau-j
 \quad(j=0,1,\ldots,\tau).
 \tag{36}
\]

At \(j=\tau\), (36) gives \(M_\tau\le0\). Nonnegativity in (14) gives
\(M_\tau=0\), so Proposition~\ref{prop:step-009-zero-support} yields

\[
 q_\tau=k,
 \qquad
 \bar c\in\bigcap_i\mathcal L_i^\tau.
 \tag{37}
\]

Take \(r_*=\tau\) and \(\bar f_*=\bar c\). Together with the earlier-success
case and (16), this proves (32)-(33).

The boundary traces are exact:

1. If \(M_0=0\), no transition is taken and stage (0) succeeds by (31).
2. If \(d=1\), then \(M_0\in\{0,1\}\). The first case succeeds at stage
   (0); in the second case, either stage (0) already has score \(k\),
   or the sole legal transition \(r=0\) gives \(M_1=0\) and stage (1)
   succeeds.
3. If \(M_0=d\) and every earlier stage has score below \(k\), (36) uses
   exactly the \(d\) transitions \(r=0,\ldots,d-1\) and reaches
   \(M_d=0\). Corollary 4.1 Item 4 is then applied at the last defined
   stage \(d\). No \(H_i^{d+1}\), \(M_{d+1}\), or transition out of stage
   \(d\) is introduced.
4. On nonrealizable arbitrary inputs, some restrictions may be empty; the
   accepted dependency assigns them empty lists without evaluating DDim or
   SOA. This proposition makes no common-stage utility claim on those
   paths. On the realizable path, (12) proves nonemptiness at all \(d+1\)
   stages before the recurrence begins.
5. In the equality case used inside the descent proof, nonunique optimal
   trees are handled by fixing an arbitrary next tree/maximum leaf and
   quantifying over every arbitrary current tree. The resulting common
   object is the same actual function on \(Q_C\), even when it is
   improper.

Finally, the induction is deterministic conditional on the one
simultaneous event \(E_{\mathrm{good}}\). It draws no new data, introduces
no union over stages, invokes no mechanism report or noise variable, and
multiplies no sample or confidence bound by \(d+1\). \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-009-legal-state} first derives the missing entry fact:
for every sample actually generated from \(c\), the quotient target
\(\bar c\) has zero error on every teacher block and therefore belongs to
every \(H_i^r\). This makes all quantities

\[
 D_{i,r}=\operatorname{DDim}_{p_r,d}(H_i^r),
 \qquad M_r=\max_iD_{i,r}
\]

legal on their nonempty domains and integer-valued in
\(\{0,\ldots,d\}\). The same lemma defines the exact actual-function
occurrence query \(q_r\) and proves that \(q_r=k\) is equivalent to one
actual function lying in all \(k\) lists.

For each transition \(r<d\), choose a next-stage maximizer \(i_*\).
The accepted interleaving inclusion and the exact factor-two source pair
give, against every current block,

\[
 M_{r+1}=D_{i_*,r+1}\le D_{i,r}\le M_r.
\]

Proposition~\ref{prop:step-009-equality-common} proves that equality of the
outer terms forces a common current-stage actual SOA. It does so with the
full source quantifiers: one arbitrary optimal next tree and one arbitrary
maximum leaf define a single function, and Lemma 4.3 maps that same
function into every arbitrary optimal current tree of every block. Hence
it is essential to every current class and has score \(k\). Therefore,
when \(q_r<k\), Proposition~\ref{prop:step-009-unit-drop} gives the strict
integer recurrence

\[
 M_{r+1}\le M_r-1.
\]

Proposition~\ref{prop:step-009-zero-support} separately supplies the
terminal mechanism source: at \(M_r=0\), Corollary 4.1 Item 4 makes each
list equal its nonempty restriction, and the already proved common target
\(\bar c\) belongs to all lists. Thus zero potential implies score \(k\)
for a concrete actual function.

Finally, Proposition~\ref{prop:step-009-termination} starts at the integer
\(M_0\le d\), charges one unit for every score-below-\(k\) stage, and after
at most \(M_0\) transitions reaches either an earlier common stage or a
zero-potential stage. It produces \(r_*\le M_0\le d\) and
\(\bar f_*\in\cap_i\mathcal L_i^{r_*}\). Its boundary trace covers
\(M_0=0\), \(d=1\), and first success at stage \(d\), while preserving the
accepted empty arbitrary-input totalization and making no utility claim on
that path.

These named results prove exactly the accepted step_009 claim: finite DDim
descent and a score-\(k\) common actual quotient function by stage \(d\),
conditional on realizability and the derived \(E_{\mathrm{good}}\)/list
interface. They export only the common-stage producer to step_010. They do
not prove mechanism accuracy, actual mechanism selection, privacy,
empirical utility, population utility, or any rate specialization.

## Explicit Rate Audit

- Exposed variables: the structural quantities \(d,k,r,p_r,D_{i,r},M_r\)
  and \(q_r\). The output uses at most \(M_0\le d\) transitions and exactly
  the already defined \(d+1\) stages.
- Hidden constants may depend on: None. The descent charge is exactly one.
- Hidden constants may not depend on:
  \(X,\Sigma,C,\bar C,Q_C,D,c\), the realized sample, partition,
  restriction, optimal tree, leaf, list, event realization, mechanism
  transcript, or output.
- Fixed quantities: Conditional on one realizable sample, its fixed block
  partition, and \(E_{\mathrm{good}}\), all restrictions, lists, scores,
  and DDim values are fixed structural objects.
- Probability mode: Deterministic conditional on the accepted generated
  event \(E_{\mathrm{good}}\); realizable label consistency holds by the
  sampling model. This step performs no probability conversion and adds no
  confidence charge.
- Horizon mode: Finite horizon \(r=0,\ldots,d\), with exactly \(d\) possible
  transitions \(r=0,\ldots,d-1\). There is no stopping-time, all-time, or
  asymptotic upgrade.
- Norm mode: The only empirical quantity used is exact block zero-one error
  to derive target membership. DDim, essentiality, SOA equality, and score
  are exact combinatorial/function identities, not norm approximations.
- Admissibility conditions and auxiliary tolerances:
  \(d\ge1\), the accepted positive-branch stage dictionary, realizable
  labels, and occurrence of the derived \(E_{\mathrm{good}}\). No new
  tolerance or threshold is introduced.
- Term absorption or simplification inequalities:
  \[
    M_{r+1}<M_r,\quad M_{r+1},M_r\in\mathbb Z
    \Longrightarrow M_{r+1}\le M_r-1,
  \]
  and
  \[
    M_j\le M_0-j,\qquad 0\le M_0\le d.
  \]
  No term is dropped or absorbed.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: No new sample factor.
  The proof reuses the same master sample, same \(k\) teacher blocks, and
  one simultaneous \(E_{\mathrm{good}}\) interface at all stages; it does
  not union bound over the \(d+1\) stages.
- Baseline-reduction check: At \(d=1\), there are exactly two stages and at
  most one unit drop. The setting's \(d=0\) branch bypasses this positive
  structural construction and retains its exact no-data singleton output.
  The cases \(v=d\), finite/infinite \(C\), and finite/countably infinite
  \(Q_C\) do not enter the recurrence and incur no loss.

## Blockers

None.

## Notation And Assumption Notes

- Appendix-local exported objects:
  \(q_r\), the produced stage \(r_*\), and the actual common function
  \(\bar f_*\). This is the minimal common-stage interface needed by
  step_010. It asserts list membership only; it does not expose a mechanism
  transcript or selected output.
- Proof-local objects:
  \(D_{i,r},M_r,s_r(\bar f),i_*,t,T_*,v_*,T_i,u_i\), and
  \(\tau=M_0\). They organize the finite-potential proof and are not public
  theorem parameters. The target \(\bar c\) and restrictions, scales, and
  lists are setting-defined or inherited dependency objects rather than
  new helpers.
- Public-facing helper objects: None are introduced.
- Helper-object provenance:
  \(D_{i,r}\) is defined from the accepted dependency's DDim on a
  nonempty restriction; \(M_r\) is a maximum over the finite nonempty set
  \([k]\); \(s_r\) is the exact block-membership count in accepted lists;
  and \(q_r\) is an attained maximum over the nonempty actual-function
  space \(H_C\). Their ranges are proved in
  Lemma~\ref{lem:step-009-legal-state}. The witnesses \(i_*\), \(T_*\),
  \(v_*\), \(T_i\), and \(u_i\) exist by finite index maximization, accepted
  optimal-decomposition existence, maximum-leaf attainment, and the
  checked source Lemma 4.3.
- Constant and rate provenance:
  No new numerical constant, radius, tolerance, confidence level, or
  sampling rate is introduced. The unit descent is proved from strict
  inequality plus integer-valued DDim; the finite budget is the proved
  \(M_0\le d\).
- Assumption provenance:
  finite Littlestone dimension and realizable iid sampling are primitive.
  \(E_{\mathrm{good}}\), restrictions, lists, optimal decompositions,
  factor-two comparison, and actual-SOA identities are accepted derived
  interfaces. Zero block error, restriction nonemptiness, attained
  potential/score ranges, equality-to-commonality, strict descent, zero
  support, and termination are proved in this step. Event membership is an
  explicit local conditional hypothesis, not a primitive condition.
- Empty-state discipline:
  on arbitrary nonrealizable input, accepted totalization assigns an empty
  list to an empty restriction and evaluates no DDim or SOA there. The
  definitions (13)-(15) used by the descent theorem are made only after
  realizability proves every restriction nonempty. Thus an empty class is
  never assigned DDim zero. The score formula itself remains meaningful for
  empty totalized lists, but no arbitrary-input common-stage conclusion is
  inferred from it.
- Actual-object and properness discipline:
  all scores count actual functions in \(H_C\), and every equality from
  Lemma 4.3 is pointwise on all of \(Q_C\). The equality-case witness may be
  an improper SOA function and is not replaced by an empirical trace or a
  representative. At DDim zero, Corollary 4.1 Item 4 instead supplies the
  proper quotient target \(\bar c\in\bar C\).
- Nonuniqueness discipline:
  Proposition~\ref{prop:step-009-equality-common} fixes one arbitrary next
  optimal tree and arbitrary maximum leaf, then quantifies over each block
  and every arbitrary current optimal tree. The same fixed SOA function
  therefore meets Definition 4.3's universal quantifier for every current
  list. No preferred decomposition or selector is assumed.
- Scope and accumulation discipline:
  the only recurrence defect is a score-below-\(k\) stage, and its exact
  charge is one unit of the nonnegative integer potential. The budget is
  \(M_0\le d\), so at most \(d\) transitions occur. There is no persistent
  additive forcing, mechanism-noise term, stagewise failure event, or
  sample multiplication.
- Producer-consumer discipline:
  step_008 legally produces (3)-(10) before this proof consumes them. This
  step produces only (32)-(33) for step_010. Mechanism reports/noise and the
  actual selected output remain for step_010; privacy, empirical utility,
  and PAC conversion remain for their assigned later steps.
- Diagnostic and evidence boundary:
  no global-proof diagnostic was read or used. No prior same-step artifact,
  prior idea branch, proof_history artifact, unrelated proof step, tracker,
  worker log, final artifact, or accepted-results artifact was used as
  proof evidence.
