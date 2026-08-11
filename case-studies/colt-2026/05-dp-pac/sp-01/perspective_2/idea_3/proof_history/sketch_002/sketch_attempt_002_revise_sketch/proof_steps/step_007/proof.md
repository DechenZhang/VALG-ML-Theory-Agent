# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_007`
- Unit attempt: 1
- Binding setting SHA-256: `13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327`
- Accepted proof sketch SHA-256: `51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8`
- Accepted proof-sketch review SHA-256: `98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89`
- Accepted dependency proof/review SHA-256: `3a761879525b3a4832fcfaa0b119a9307b7c027594271fd20e392ffbb1bc464f` / `331d52e75329220d7fa686561708c7e91dbf261704597893d8e5da5d83bd3303`
- Diagnostic global proof/review SHA-256: `dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407` / `fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710`

## Target Step Claim

- Intended claim: Prove that every accurately `Below` stage causes
  \(M_{r+1}\le M_r-1\), unless an actual function has score \(k\), and prove
  score \(k\) at DDim zero using Corollary 4.1 Item 4 and the common target.
- Depends on: `step_006`.
- Assumptions used: primitive `assump:realizable-iid`,
  `assump:finite-littlestone`; derived inclusion/lists.
- Technical challenge: Exact same-function support and zero-DDim termination.
- Intended proof tool or cited result: Lyu Lemma 4.3 and Corollary 4.1
  Items 2-4.
- Output target: Finite potential certificate and score-\(k\) stage by
  \(r=d\).
- Rate objective: No multiplicative stage sample factor.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:finite-littlestone`: \(C\subseteq\{0,1\}^X\) is nonempty and
    \(d=\operatorname{LD}(C)<\infty\). This step is on the positive branch
    \(d\ge1\); every nonempty subclass used below has Littlestone dimension
    at most \(d\).
  - `assump:realizable-iid`: utility is evaluated for a fixed
    \(c\in C\) and a master sample drawn from \(P_{D,c}^{n_0}\). Thus every
    realized labeled record obeys \(y_u=c(x_u)\); the resulting membership
    of \(c\) in the generated restrictions is proved in this step.
  - `assump:approximate-dp-regime` is not used independently. Positivity
    and integer legality of the positive-branch parameters are already part
    of the accepted dependency interface.
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_006` proof and review supply
    Proposition~\ref{prop:step-006-source-map},
    Lemma~\ref{lem:step-006-cross-block-inclusion},
    Proposition~\ref{prop:step-006-essential-lists}, and
    Proposition~\ref{prop:step-006-factor-two}.
  - In particular, on the already-generated event \(E_{\rm good}\), for
    \(0\le r<d\),
    \[
    H_{i_*}^{r+1}\subseteq H_i^r,\qquad p_{r+1}=2p_r,
    \]
    and the accepted factor-two proposition gives both the DDim comparison
    and, under equality, essentiality of one identical SOA function on all
    of \(X\).
  - For every nonempty \(H_i^r\), its list
    \(\mathcal L_i^r=\operatorname{Ess}_{p_r,d}(H_i^r)\) is a finite set of
    actual functions on \(X\). If its DDim is zero, the accepted Item-4
    interface gives \(\mathcal L_i^r=H_i^r\).
- Local conditional hypotheses:
  - The structural derivation fixes a realizable labeled master sample, a
    realized partition, and membership in the accepted generated event
    \(E_{\rm good}\). This event is not promoted to a primitive condition.
  - For the phrase "accurately `Below`", write
    \(\mathsf{AccBelow}_r\) for a stage-\(r\) `Below` report accompanied by
    the later mechanism-accuracy certificate \(q_r<k\). Only this implication
    is used here. Establishing the noise event that supplies the certificate
    belongs to `step_008`; it is neither assumed for the unconditional
    structural existence argument nor proved here.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:realizable-iid} and accepted Propositions~\ref{prop:step-006-source-map} and \ref{prop:step-006-essential-lists}, for every realizable master-sample realization and every \(0\le r\le d\), all \(H_i^r\) are nonempty, and \(q_r=k\) holds exactly when one actual function on \(X\) belongs to every \(\mathcal L_i^r\). | Establishes legal DDim values and exact same-function score semantics. |
| unit_002 | proposition | Under Assumption~\ref{assump:finite-littlestone}, Proposition~\ref{prop:step-007-support-semantics}, and accepted Proposition~\ref{prop:step-006-factor-two}, if \(E_{\rm good}\) holds and \(0\le r<d\), then \(M_{r+1}\le M_r\); if \(M_{r+1}=M_r>0\), one identical actual SOA function belongs to every current list, so \(q_r=k\). | Turns a positive DDim plateau into exact common support. |
| unit_003 | lemma | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:realizable-iid}, Proposition~\ref{prop:step-007-support-semantics}, and accepted Proposition~\ref{prop:step-006-essential-lists}, if \(M_r=0\) for any \(0\le r\le d\), then the common target \(c\) itself belongs to every \(\mathcal L_i^r\), hence \(q_r=k\). | Supplies the zero-DDim mechanism source, including the endpoint \(r=d\). |
| unit_004 | lemma | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:realizable-iid}, Propositions~\ref{prop:step-007-support-semantics} and \ref{prop:step-007-positive-plateau}, and Lemma~\ref{lem:step-007-zero-ddim}, if \(E_{\rm good}\), \(0\le r<d\), and no actual function has score \(k\) at stage \(r\), then \(M_{r+1}\le M_r-1\). In particular the same conclusion holds under \(\mathsf{AccBelow}_r\). | Gives the signed one-unit recurrence with no additive defect. |
| unit_005 | proposition | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:realizable-iid}, Proposition~\ref{prop:step-007-support-semantics}, and Lemmas~\ref{lem:step-007-zero-ddim} and \ref{lem:step-007-strict-descent}, if \(E_{\rm good}\), then some \(r_\star\in\{0,\ldots,d\}\) and one actual function \(f_\star\) satisfy \(f_\star\in\bigcap_i\mathcal L_i^{r_\star}\) and \(q_{r_\star}=k\); indeed \(r_\star\le M_0\le d\). | Closes finite termination, the \(M_0=0\) and \(M_d=0\) cases, and the stage-\(d\) endpoint. |

Atomic step = no. Realizable support, positive plateau support, the zero-DDim
case, strict signed descent, and finite endpoint assembly are independent
nontrivial obligations.

## Cited Result Applications

### Accepted `step_006` structural dependency

- Source or name: accepted `step_006` proof
  (SHA-256
  `3a761879525b3a4832fcfaa0b119a9307b7c027594271fd20e392ffbb1bc464f`),
  certified by its matching accepted review (SHA-256
  `331d52e75329220d7fa686561708c7e91dbf261704597893d8e5da5d83bd3303`).
- Restated statement in current notation: on \(E_{\rm good}\), for every
  \(0\le r<d\), every \(i_*,i\in[k]\), and every nonempty
  \(H_{i_*}^{r+1}\),
  \[
  H_{i_*}^{r+1}\subseteq H_i^r,\qquad p_{r+1}=2p_r,
  \tag{1}
  \]
  \[
  \operatorname{DDim}_{p_{r+1},d}(H_{i_*}^{r+1})
  \le
  \operatorname{DDim}_{p_r,d}(H_i^r).
  \tag{2}
  \]
  If both sides of (2) equal \(t\), then after fixing any optimal
  \((p_{r+1},d)\)-decomposition of \(H_{i_*}^{r+1}\) and any
  dimension-\(t\) leaf \(G\), the single actual function
  \(f=\operatorname{SOA}_G:X\to\{0,1\}\) belongs to
  \(\mathcal L_i^r\). This holds for every \(i\), with equality of functions
  on all of \(X\).
  For every nonempty current class \(H_i^r\), the same accepted dependency
  also supplies an optimal finite decomposition whose degree lies in
  \(\{0,\ldots,d\}\), a finite list
  \(\mathcal L_i^r=\operatorname{Ess}_{p_r,d}(H_i^r)\) of actual functions,
  and the zero-DDim identity
  \[
  \operatorname{DDim}_{p_r,d}(H_i^r)=0
  \Longrightarrow
  \mathcal L_i^r=H_i^r.
  \]
- Instantiated objects: \(i_*\) is an index attaining \(M_{r+1}\), while
  \(i\) ranges over all current blocks. The same fixed left decomposition,
  leaf, and function \(f\) are retained as \(i\) varies.
- Required assumptions and discharge: \(E_{\rm good}\) gives the accepted
  inclusion; realizability proved below gives nonemptiness; the accepted
  source map gives \(p_{r+1}=2p_r\); and
  Assumption~\ref{assump:finite-littlestone} supplies the ambient dimension
  bound.
- Conclusion used: (2) proves monotonicity of \(M_r\), and its equality
  clause proves common actual-function support at a positive plateau.

### Lyu Lemma 4.3

- Source or name: Xin Lyu, *Private Learning of Littlestone Classes,
  Revisited*, arXiv:2510.00076v1, Lemma 4.3
  (`lemma: p-decomposition`), as source-checked and translated by the
  accepted dependency and its review.
- Restated statement: if nonempty \(G\subseteq H\), both classes have
  Littlestone dimension at most \(d\), and optimal decompositions use
  scales \(2p\) for \(G\) and \(p\) for \(H\), then
  \[
  \operatorname{DDim}_{2p,d}(G)
  \le\operatorname{DDim}_{p,d}(H).
  \]
  Under equality at \(t\), every dimension-\(t\) leaf of an arbitrarily
  fixed optimal left decomposition has, in every arbitrarily chosen optimal
  right decomposition, a dimension-\(t\) leaf with exactly the same SOA
  function on \(X\).
- Object map: \((G,H,2p,p)=(H_{i_*}^{r+1},H_i^r,p_{r+1},p_r)\).
- Assumption discharge and conclusion used: all hypotheses and the
  equality-to-essentiality quantifier have already been checked in
  Proposition~\ref{prop:step-006-factor-two}. The current step consumes that
  certified wrapper; it does not use the diagnostic global proof as
  evidence.

### Lyu Corollary 4.1, Items 2-4

- Source or name: the same arXiv v1 source, Corollary 4.1
  (`coro: essential hypotheses`), as checked in the accepted dependency.
- Restated statement for nonempty classes:
  - Item 2: if \(G\subseteq H\) and
     \(\operatorname{DDim}_{p,d}(G)=\operatorname{DDim}_{p,d}(H)\), then
     \(\operatorname{Ess}_{p,d}(G)\subseteq
     \operatorname{Ess}_{p,d}(H)\);
  - Item 3: if
     \(\operatorname{DDim}_{2p,d}(H)=
     \operatorname{DDim}_{p,d}(H)\), then
     \(\operatorname{Ess}_{p,d}(H)\ne\varnothing\);
  - Item 4: if \(\operatorname{DDim}_{p,d}(H)=0\), then \(H\) is finite and
     \(\operatorname{Ess}_{p,d}(H)=H\) as sets of actual functions.
- Instantiated objects: \(H=H_i^r\), \(p=p_r\). Item 4 is applied after
  \(M_r=0\) forces every current block DDim to be zero.
- Assumption discharge: Proposition~\ref{prop:step-007-support-semantics}
  proves every utility-path \(H_i^r\) is nonempty. The accepted dependency
  supplies integer scales, ambient dimension, and exact current lists.
- Conclusion used and non-output boundary: Item 4 places the same target
  \(c\) in every current list. Items 2 and 3 retain their exact same-class
  and same-scale hypotheses; neither is used to erase the factor-two stage
  interface or to manufacture generic common support. Positive-plateau
  support instead uses the exact Lemma 4.3 wrapper above.

### Local-result applications

- Under Assumptions~\ref{assump:finite-littlestone} and
  \ref{assump:realizable-iid} and the accepted source-map/list conclusions,
  Proposition~\ref{prop:step-007-support-semantics} supplies nonemptiness and
  the equivalence between \(q_r=k\) and one actual function lying in all
  lists. The realizable label identity and accepted list interface discharge
  its hypotheses. It is used by every later local result.
- On \(E_{\rm good}\), under the accepted factor-two comparison and
  Proposition~\ref{prop:step-007-support-semantics},
  Proposition~\ref{prop:step-007-positive-plateau} supplies DDim
  monotonicity and the positive-plateau alternative. It is used by
  Lemma~\ref{lem:step-007-strict-descent}.
- Under the two primitive assumptions, the support proposition, and the
  accepted Item-4 interface, Lemma~\ref{lem:step-007-zero-ddim} supplies the
  zero-potential alternative. It is used by
  Lemma~\ref{lem:step-007-strict-descent} and
  Proposition~\ref{prop:step-007-finite-termination}.
- On \(E_{\rm good}\), the positive-plateau and zero-potential alternatives
  discharge the hypotheses of Lemma~\ref{lem:step-007-strict-descent},
  which supplies the one-unit recurrence. It is iterated only across the
  finite transition set \(r=0,\ldots,d-1\) in
  Proposition~\ref{prop:step-007-finite-termination}.

## Local Derivation

The \(d=0\) learner is already discharged by the setting's zero-sample
branch, so none of the stage objects below is evaluated there. Fix \(d\ge1\),
a target \(c\in C\), a realizable labeled master-sample realization
\[
S=((x_u,c(x_u)))_{u=1}^{n_0},
\tag{3}
\]
a realized fixed partition into \(k\) blocks, and a realization for which
\(E_{\rm good}\) holds.

For every \(0\le r\le d\), use the sketch-defined score
\[
\operatorname{sc}_r(f)
:=
\bigl|\{i\in[k]:f\in\mathcal L_i^r\}\bigr|,
\qquad
q_r:=
\max_{f\in\cup_i\mathcal L_i^r}\operatorname{sc}_r(f),
\qquad
\max\varnothing:=0,
\tag{4}
\]
and define the integer potential
\[
M_r:=\max_{i\in[k]}
\operatorname{DDim}_{p_r,d}(H_i^r).
\tag{5}
\]

### unit_001: proposition

**Proposition (Realizable support and exact score semantics).**
\label{prop:step-007-support-semantics}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:realizable-iid} and accepted
Propositions~\ref{prop:step-006-source-map} and
\ref{prop:step-006-essential-lists}, fix a positive-branch realizable
master-sample realization as in (3). Then, for every \(0\le r\le d\) and
every \(i\in[k]\),
\[
c\in H_i^r,
\tag{6}
\]
so every \(H_i^r\) is nonempty and every DDim in (5) is defined. Moreover,
\[
q_r=k
\quad\Longleftrightarrow\quad
\text{there exists one actual function }f:X\to\{0,1\}
\text{ with }f\in\bigcap_{i=1}^k\mathcal L_i^r.
\tag{7}
\]
The function in (7) is a single function on \(X\), not a family of
blockwise or trace-equivalent representatives.

**Proof.** Every record in every block has label \(c(x_u)\), hence
\(e_i(c)=0\). The accepted source map gives
\[
H_i^r=\{h\in C:e_i(h)\le\rho^{r+1}\gamma\}.
\]
Its accepted positive-branch parameter interface has
\(\rho^{r+1}\gamma\ge0\). Since \(c\in C\), (6) follows.

Every \(\mathcal L_i^r\) is, by the accepted exact-list proposition, a
finite set of actual binary functions on \(X\). Thus the union in (4) is
finite and its maximum is attained whenever it is nonempty. Each score is
at most \(k\). If one \(f\) lies in all \(k\) lists, then
\(\operatorname{sc}_r(f)=k\), so \(q_r=k\). Conversely, if \(q_r=k\), an
actual union-list member attaining the maximum belongs to exactly \(k\) of
the \(k\) indexed lists, hence to all of them. This is (7). Exact
actual-function identity is inherited from the accepted list definition;
sample-trace equality never enters the argument. \(\square\)

### unit_002: proposition

**Proposition (A positive DDim plateau forces a common actual function).**
\label{prop:step-007-positive-plateau}
Under Assumption~\ref{assump:finite-littlestone},
Proposition~\ref{prop:step-007-support-semantics}, and the accepted
factor-two conclusion
Proposition~\ref{prop:step-006-factor-two}, suppose \(E_{\rm good}\) holds.
Then
\[
0\le M_r\le d\qquad(0\le r\le d)
\tag{8}
\]
and, for every \(0\le r<d\),
\[
M_{r+1}\le M_r.
\tag{9}
\]
If, for such an \(r\),
\[
M_{r+1}=M_r=t>0,
\tag{10}
\]
then there is one actual function \(f:X\to\{0,1\}\) satisfying
\[
f\in\bigcap_{i=1}^k\mathcal L_i^r,
\qquad q_r=k.
\tag{11}
\]

**Proof.** Every \(H_i^r\) is nonempty by
Proposition~\ref{prop:step-007-support-semantics}. Its decomposition
dimension is the minimum of integer decomposition degrees, and each such
degree is a maximum of leaf Littlestone dimensions in
\(\{0,\ldots,d\}\). The accepted decomposition interface supplies an
optimum. This proves (8).

Fix \(0\le r<d\) and choose \(i_*\in[k]\) attaining \(M_{r+1}\). For every
\(i\in[k]\), (2) gives
\[
M_{r+1}
=\operatorname{DDim}_{p_{r+1},d}(H_{i_*}^{r+1})
\le\operatorname{DDim}_{p_r,d}(H_i^r)
\le M_r.
\tag{12}
\]
This proves (9).

Now assume (10). The two outer terms of (12) both equal \(t\), so for every
\(i\),
\[
\operatorname{DDim}_{p_r,d}(H_i^r)=t.
\tag{13}
\]
Fix once and for all one optimal \((p_{r+1},d)\)-decomposition of
\(H_{i_*}^{r+1}\), choose one of its degree-attaining
dimension-\(t\) leaves \(G\), and set
\[
f:=\operatorname{SOA}_G.
\tag{14}
\]
For each \(i\), apply the accepted factor-two equality conclusion to the
same fixed left decomposition and the same fixed leaf \(G\). Equations
(10) and (13) discharge its equality hypothesis and give
\[
f\in\operatorname{Ess}_{p_r,d}(H_i^r)=\mathcal L_i^r.
\tag{15}
\]
The source conclusion used in (15) is equality of the SOA functions at
every point of \(X\). Therefore the \(f\) in (15) is literally the same
actual function for all \(i\), not one chosen representative per list.
Equation (11) now follows from
Proposition~\ref{prop:step-007-support-semantics}. \(\square\)

### unit_003: lemma

**Lemma (Zero DDim exposes the common realizable target).**
\label{lem:step-007-zero-ddim}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:realizable-iid},
Proposition~\ref{prop:step-007-support-semantics}, and the accepted
Item-4 conclusion in
Proposition~\ref{prop:step-006-essential-lists}, if
\[
M_r=0
\tag{16}
\]
for any \(0\le r\le d\), then
\[
c\in\bigcap_{i=1}^k\mathcal L_i^r,
\qquad q_r=k.
\tag{17}
\]

**Proof.** Every DDim in (5) is a nonnegative integer. Hence (16) implies
\[
\operatorname{DDim}_{p_r,d}(H_i^r)=0
\qquad\text{for every }i\in[k].
\tag{18}
\]
Proposition~\ref{prop:step-007-support-semantics} gives
\(c\in H_i^r\) and in particular shows that \(H_i^r\) is nonempty. The
accepted Corollary 4.1 Item-4 interface therefore applies and yields
\[
\mathcal L_i^r
=\operatorname{Ess}_{p_r,d}(H_i^r)
=H_i^r
\tag{19}
\]
as sets of actual functions on all of \(X\). Thus the same target function
\(c\) belongs to every list. Equation (17) follows from the exact score
semantics (7). This argument applies without change at the endpoint
\(r=d\). \(\square\)

### unit_004: lemma

**Lemma (Strict signed descent in the absence of common support).**
\label{lem:step-007-strict-descent}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:realizable-iid},
Propositions~\ref{prop:step-007-support-semantics} and
\ref{prop:step-007-positive-plateau}, and
Lemma~\ref{lem:step-007-zero-ddim}, suppose \(E_{\rm good}\) holds. For
every transition index \(0\le r<d\), if no actual function has score \(k\)
at stage \(r\), equivalently if \(q_r<k\), then
\[
M_{r+1}\le M_r-1.
\tag{20}
\]
Consequently, the same conclusion holds whenever
\(\mathsf{AccBelow}_r\) holds.

**Proof.** If \(M_r=0\), Lemma~\ref{lem:step-007-zero-ddim} would give
\(q_r=k\), contrary to the hypothesis. Thus \(M_r\ge1\).
Proposition~\ref{prop:step-007-positive-plateau} gives
\(M_{r+1}\le M_r\). Equality would be a positive plateau and the same
proposition would again give \(q_r=k\). Therefore
\[
M_{r+1}<M_r.
\tag{21}
\]
Both sides are integers, so (21) is exactly (20). There is no defect,
forcing, or probability term in this recurrence.

By definition of the local conditional interface,
\(\mathsf{AccBelow}_r\) includes the correctness certificate \(q_r<k\).
Thus (20) applies. A bare `Below` transcript without that later
certificate is not used as proof evidence here. \(\square\)

### unit_005: proposition

**Proposition (Finite DDim budget produces a full-score stage).**
\label{prop:step-007-finite-termination}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:realizable-iid},
Proposition~\ref{prop:step-007-support-semantics}, and
Lemmas~\ref{lem:step-007-zero-ddim} and
\ref{lem:step-007-strict-descent}, suppose \(E_{\rm good}\) holds. Then
there exist
\[
r_\star\in\{0,\ldots,d\},
\qquad
f_\star:X\to\{0,1\},
\tag{22}
\]
such that
\[
r_\star\le M_0\le d,
\qquad
f_\star\in\bigcap_{i=1}^k\mathcal L_i^{r_\star},
\qquad
q_{r_\star}=k.
\tag{23}
\]
Only the \(d\) transition indices \(0,\ldots,d-1\) are used; stage \(d\)
is the final queried endpoint.

**Proof.** Put \(s:=M_0\). By (8), \(s\in\{0,\ldots,d\}\).

If \(s=0\), Lemma~\ref{lem:step-007-zero-ddim} gives \(q_0=k\), and
Proposition~\ref{prop:step-007-support-semantics} supplies the actual common
function. Thus (23) holds with \(r_\star=0\). This is the \(M_0=0\)
entry case; no transition is taken.

Now suppose \(1\le s\le d\). If \(q_j=k\) at some \(j<s\), choose the first
such \(j\) and use
Proposition~\ref{prop:step-007-support-semantics} to obtain \(f_\star\).
Otherwise \(q_j<k\) for every \(j=0,\ldots,s-1\). These are all legal
transition indices because \(s-1\le d-1\). Repeated application of
Lemma~\ref{lem:step-007-strict-descent} gives, by induction,
\[
M_j\le M_0-j=s-j
\qquad(0\le j\le s).
\tag{24}
\]
At \(j=s\), (8) and (24) force \(M_s=0\). Hence
Lemma~\ref{lem:step-007-zero-ddim} gives \(q_s=k\), with the common actual
function \(f_\star=c\). Taking \(r_\star=s\) proves (23).

In the maximal case \(s=d\), if none of stages \(0,\ldots,d-1\) has score
\(k\), (24) yields \(M_d=0\), and Item 4 gives score \(k\) at stage \(d\).
There is no \(M_{d+1}\) and no transition after this endpoint. More
generally, whenever \(M_d=0\), Lemma~\ref{lem:step-007-zero-ddim} directly
gives \(q_d=k\).

For \(d=1\), there are exactly stages \(0,1\) and the one transition
\(r=0\). If \(M_0=0\), stage \(0\) has score \(k\). If \(M_0=1\), either
stage \(0\) has score \(k\), or (20) gives \(M_1=0\) and stage \(1\) has
score \(k\). Thus the smallest positive dimension and both signed endpoints
are included. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-007-support-semantics} first derives, rather than
assumes, nonemptiness of every utility-path restriction from the realizable
target. It also proves that a full score means one identical actual function
on \(X\) lies in all \(k\) current lists.

For each transition \(0\le r<d\),
Proposition~\ref{prop:step-007-positive-plateau} applies the accepted exact
\((p_{r+1},p_r)=(2p_r,p_r)\) wrapper. It proves \(M_{r+1}\le M_r\), and
shows that equality at a positive value produces one fixed leaf SOA function
essential to every current class. Lemma~\ref{lem:step-007-zero-ddim} handles
the omitted boundary: at \(M_r=0\), accepted Corollary 4.1 Item 4 makes each
list equal its nonempty class, so the same realizable target \(c\) has score
\(k\).

These two alternatives give
Lemma~\ref{lem:step-007-strict-descent}: whenever there is no actual
score-\(k\) function, and hence at every accurately `Below` stage,
\[
M_{r+1}\le M_r-1.
\]
Finally, Proposition~\ref{prop:step-007-finite-termination} spends at most
the integer budget \(M_0\le d\). It handles \(M_0=0\) immediately and, in
the worst case, obtains \(M_d=0\) after the \(d\) legal transitions, then
uses the stage-\(d\) Item-4 conclusion. Thus some
\(r_\star\in\{0,\ldots,d\}\) has a score-\(k\) actual function, proving the
exact accepted `step_007` row.

## Explicit Rate Audit

- Exposed variables: \(d,k,r,M_r,q_r\), with the exact stage set
  \(\{0,\ldots,d\}\) and transition set \(\{0,\ldots,d-1\}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on:
  \(d,v,\alpha,\beta,\varepsilon,\delta,k,m,n_0,C,X,D,c,S,\mathcal P\),
  any restriction, list, function, decomposition, or event.
- Fixed quantities: the positive-branch class, target, realizable indexed
  master sample, fixed partition, and the accepted event realization are
  fixed throughout the deterministic structural argument.
- Probability mode: deterministic conditional implication on the already
  generated \(E_{\rm good}\) and a realizable sample realization. This step
  introduces no failure event, union bound, expectation, or probability-mode
  conversion.
- Horizon mode: exactly \(d+1\) finite queried stages and \(d\) finite
  transitions. No all-time or asymptotic statement is made.
- Norm mode: integer decomposition dimension, set membership of actual
  binary functions, and equality of functions on all of \(X\). No empirical
  or population risk bound is changed here.
- Admissibility conditions and auxiliary tolerances: \(d\ge1\), nonempty
  realizable-path restrictions, and \(E_{\rm good}\) for the accepted
  cross-stage comparison. No new tolerance, margin, radius, or threshold is
  introduced.
- Term absorption or simplification inequalities: the only accumulated
  relation is the exact signed bound
  \[
  M_j\le M_0-j\le d-j
  \]
  while no earlier score-\(k\) stage exists. No term is absorbed or hidden.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: the stage iteration is
  purely structural. All \(d+1\) lists use the same master sample and the
  same fixed \(k\) blocks. No fresh samples are drawn, no block is replicated,
  and \(n_0\) is not multiplied by \(d\) or \(d+1\). The scale
  \(p_r=2^rn_0d\) is an inherited decomposition parameter, not an additional
  sample count.
- Baseline-reduction check: \(M_0=0\) gives immediate support; \(M_d=0\)
  gives endpoint support; and \(d=1\) uses one transition and at most two
  queries. The \(d=0\) zero-sample learner bypasses this positive-branch
  argument unchanged.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing, sketch-defined objects: the exact lists
  \(\mathcal L_i^r\) and query values \(q_r\). The minimal new downstream
  interface is the existence of \((r_\star,f_\star)\) in (22)-(23);
  \(r_\star\) and \(f_\star\) are classified as `public-facing`.
- Appendix-local objects: \(M_r\) in (5) is the accepted sketch's finite
  DDim potential. Its range and recurrence are proved by
  Propositions~\ref{prop:step-007-positive-plateau} and
  \ref{prop:step-007-finite-termination}; it is not a free bounded quantity.
  The fixed degree-attaining leaf \(G\) and its function
  \(f=\operatorname{SOA}_G\) in (14) are accepted decomposition objects
  instantiated inside Proposition~\ref{prop:step-007-positive-plateau}.
  Only the conclusion that one actual function is common is exported.
- Proof-local objects:
  \(\operatorname{sc}_r(f)\), \(i_*\), the plateau value \(t\), the initial
  budget \(s=M_0\), and \(\mathsf{AccBelow}_r\).
  The score only expands the sketch-defined \(q_r\); \(i_*,t,s\) are finite
  bookkeeping choices. The accurate-`Below` symbol is only a local
  conditional interface and is not exported as a theorem assumption.
- Setting-derived and accepted dependency objects: \(c,S,e_i,\rho,\gamma\)
  are the target, realized master sample, block-error expression, and exact
  stage-threshold quantities from the setting/sketch and accepted source
  map. The objects \(E_{\rm good},H_i^r,p_r\),
  \(\operatorname{DDim}_{p_r,d}\), and \(\mathcal L_i^r\) are translated
  accepted `step_006` objects. Their source convention, factor-two map,
  nonempty-class domain, and actual-function equality were certified by the
  accepted dependency review.
- Constant provenance: this step introduces no numerical or universal
  constants. The unit decrement in (20) follows from strict inequality
  between integers; the budget \(d\) is the setting's Littlestone dimension.
- Assumption provenance: finite Littlestone dimension and realizable iid
  sampling are primitive. The realized relation \(y_u=c(x_u)\), and hence
  \(c\in H_i^r\), is derived in
  Proposition~\ref{prop:step-007-support-semantics}. Membership in
  \(E_{\rm good}\), cross-block inclusion, exact lists, and factor-two
  comparison are accepted derived interfaces. No generated support,
  termination, mechanism-noise event, or selected output is treated as
  primitive.
- Empty-class boundary: the arbitrary-input procedure may have empty
  restrictions, but this utility-path step proves all restrictions nonempty
  before defining \(M_r\). It makes no DDim claim about a totalized empty
  class and does not narrow the separate all-input privacy scope.
- Same-function boundary: both the positive-plateau function and the
  zero-DDim target are actual maps \(X\to\{0,1\}\). No sample trace, list
  index, quotient class, or block-dependent representative is substituted.
- Endpoint bookkeeping: queried stages are \(0,\ldots,d\), transition
  indices are \(0,\ldots,d-1\), and the final zero case is evaluated at
  \(M_d\). No \(H_i^{d+1}\), \(p_{d+1}\), or \(M_{d+1}\) is consumed.
- Generated-output flow: accepted `step_006` inclusion and exact lists
  precede the current potential argument. This step exports a score-\(k\)
  actual function and its stage for `step_008` and exact common support for
  `step_010`; it proves no mechanism accuracy or selected-output claim.
- Diagnostic boundary: the paired global proof review has status
  `ACCEPTED`. Its step-relevant planning note was the proposed finite
  signed DDim budget and the need to separate positive plateaus from the
  Item-4 zero case. Every assertion above was independently derived from the
  setting and the accepted `step_006` interface. The diagnostic was not
  used as proof evidence, a cited result, an assumption source, or authority
  to alter the target claim.
