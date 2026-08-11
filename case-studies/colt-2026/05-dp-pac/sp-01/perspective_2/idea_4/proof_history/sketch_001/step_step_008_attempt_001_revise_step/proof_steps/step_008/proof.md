# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_008
- Unit attempt: 1
- Binding setting SHA-256:
  a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4
- Binding proof-sketch SHA-256:
  cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7
- Binding proof-sketch-review SHA-256:
  302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789
- Accepted dependency proof/review SHA-256 (step_006):
  5177f69ab096c7afcb360bbb2d016461fe16fc334c3eb39f2353945f56c7cf7b /
  3ea50da72012b8307579c24a6a56d25d9c5cab9e90e82cf91e7603879e452e76
- Accepted dependency proof/review SHA-256 (step_007):
  f8da4dbdc8ee467385d1a04b64904f31ea93215443cb260ba05e1cdeb9cd34f1 /
  6c4dee49c2466974c1f6f1e46e2e9d790a933abaad85e85b8b52bc654ba0b5e1
- Checked primary source: Xin Lyu, Private Learning of Littlestone
  Classes, Revisited, arXiv:2510.00076v1,
  <TEMP_ROOT>/lyu-source.bdDyo3/submission/main.tex, SHA-256
  b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.

## Target Step Claim

- Intended claim: Prove the exact source/current stage map, factor-two
  Lemma 4.3 pairing, essential-list envelope, actual SOA identities, and
  irreducibility scales on the quotient.
- Depends on: step_006, step_007.
- Assumptions used: Primitive assump:finite-littlestone; derived
  \(E_{\mathrm{good}}\).
- Technical challenge: Source stage indexing and object-convention
  compatibility.
- Intended proof tool or cited result: Lyu Definitions 4.2/4.3,
  Lemmas 4.1/4.3, and Corollary 4.1.
- Output target: Quotient restrictions, lists, leaf witnesses, and
  irreducibility.
- Rate objective: Keep \(\log L\) explicit.
- Row-local review status: PENDING. The binding acceptance gate is the
  ACCEPTED proof-sketch review, not this row-local field.

More explicitly, on the positive branch \(d\geq 1\), put

\[
 \gamma:=\alpha/16,\qquad
 a_d:=\frac{1}{5d},\qquad
 \rho:=1-\frac{1}{2d}.
\tag{1}
\]

For an indexed quotient master sample \(\bar S\), its block
\(\bar S_i\), and \(\bar h\in\bar C\), write

\[
 e(\bar h):=\operatorname{err}_{\bar S}(\bar h),
 \qquad
 e_i(\bar h):=\operatorname{err}_{\bar S_i}(\bar h).
\tag{2}
\]

The endpoint-complete current restrictions and structural parameters are

\[
 H_i^r:=\{\bar h\in\bar C:e_i(\bar h)\leq
                  \rho^{r+1}\gamma\},
 \qquad
 p_r:=2^r n_0d,
 \qquad 0\leq r\leq d.
\tag{3}
\]

This proof must establish the exact source map, the eventwise inclusions,
the pointwise totalized essential lists, the exact factor-two source
instantiation, and the finite leaf/list and irreducibility interfaces in
(3). It does not establish DDim descent, a common-score stage, mechanism
success, privacy, empirical utility, or PAC utility.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:finite-littlestone}: \(C\) is nonempty and
    \(d=\operatorname{LD}(C)<\infty\). The present proof treats the
    positive branch \(d\geq1\); the setting's \(d=0\) branch bypasses all
    restrictions, decompositions, and lists considered here.
  - The setting-defined quotient objects \(Q_C,\bar C,H_C\), indexed
    blocks, and deterministic positive-branch integer dictionary are
    definitions, not extra assumptions. In particular,
    \(k\geq2\), \(m\geq1\), and \(n_0=km\) are fixed before the sample and
    imply \(n_0\geq2\).
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-006-good-event} defines the exact
    generated event \(E_{\mathrm{good}}\). On that event, simultaneously
    for every \(\bar h\in\bar C\) and \(i\in[k]\),
    \[
    \begin{cases}
    (1-a_d)e(\bar h)\leq e_i(\bar h)
       \leq(1+a_d)e(\bar h),
       &e(\bar h)>\gamma/3,\\
    0\leq e_i(\bar h)\leq\gamma/2,
       &e(\bar h)\leq\gamma/3.
    \end{cases}
    \tag{4}
    \]
    This is the exact accepted two-branch event, including the equality
    convention at \(\gamma/3\).
  - Accepted Proposition~\ref{prop:step-007-tower} supplies
    \(\Pr(E_{\mathrm{good}}^c)\leq\beta_{\mathrm{tr}}=\beta/4\)
    under the setting's sample/partition law. This probability statement
    is recorded for provenance; the structural implications below are
    deterministic conditional on membership in the derived event.
- Local conditional hypotheses:
  - Membership in \(E_{\mathrm{good}}\) is assumed only inside the
    eventwise inclusion and transition propositions. It is not promoted to
    a primitive theorem assumption.
  - A nonempty restriction is required only where Lyu's SOA and
    decomposition statements are invoked. Empty outer restrictions are
    assigned the empty list by the setting's arbitrary-input totalization,
    and no DDim or SOA value is assigned to an empty class.
  - The existence of a zero-block-error concept is used only in a
    separately stated conditional implication proving nonemptiness. It is
    not assumed in the target-step assembly. In later realizable
    consumers, that condition is derived from the labeled sample.
- Accepted dependency artifacts:
  - perspective_2/idea_4/proof_steps/step_006/proof.md and review.md,
    with the hashes above and review status ACCEPTED.
  - perspective_2/idea_4/proof_steps/step_007/proof.md and review.md,
    with the hashes above and review status ACCEPTED.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\ref{assump:finite-littlestone} and the setting's positive branch, the source restrictions extend through source stage \(d+1\), \(H_i^r=H_{i,\mathrm{src}}^{r+1}\) and \(p_r=p_{r+1,\mathrm{src}}/2\) for every \(0\le r\le d\), \(p_{r+1}=2p_r\) for every transition, and every nonempty \(H_i^r\) has Littlestone dimension at most \(d\). | Resolves the printed display/algorithm endpoint convention and discharges the source dimension and integer premises. |
| unit_002 | proposition | Under Assumption~\ref{assump:finite-littlestone}, accepted Proposition~\ref{prop:step-006-good-event}, and Lemma~\ref{lem:step-008-stage-map}, if \(d\ge1\) and \(E_{\mathrm{good}}\) occurs, then \(H_{i_*}^{r+1}\subseteq\bigcap_iH_i^r\) for every \(0\le r<d\) and \(i_*\in[k]\), using the exact high-branch inequality \(\frac{1+a_d}{1-a_d}\rho\le1\) and the low-branch bound \(\rho^d\ge1/2\). | Supplies the exact cross-block inclusion required before every Lemma 4.3 use. |
| unit_003 | proposition | Under Assumption~\ref{assump:finite-littlestone}, Lemma~\ref{lem:step-008-stage-map}, Lyu Definition 4.2, its valid-decomposition existence claim, and Lemma 4.1, every nonempty current restriction and positive integer \(p\) admits a finite optimal \((p,d)\)-decomposition; every such tree has at most \(p^d2^{d^2}\) leaves, and a leaf of dimension \(t\) is \(p2^{d-t}\)-irreducible. | Establishes pointwise existence, optimal attainment, leaf finiteness, and leaf witnesses without a class-cardinality premise. |
| unit_004 | proposition | Under Assumption~\ref{assump:finite-littlestone}, Lemma~\ref{lem:step-008-stage-map}, Propositions~\ref{prop:step-008-inclusion} and \ref{prop:step-008-decompositions}, and Lyu Lemma 4.3, if \(H_{i_*}^{r+1}\ne\varnothing\), then the lemma is instantiated only with \(\mathcal G=H_{i_*}^{r+1}\), \(\mathcal H=H_i^r\), and \((2p,p)=(p_{r+1},p_r)\); it gives the correctly directed DDim inequality and, only under equal DDim, exact pointwise SOA equality and cross-stage essential-list inheritance. | Provides the factor-two bridge and preserves the actual-function and equal-DDim premises. |
| unit_005 | proposition | Under Assumption~\ref{assump:finite-littlestone}, Proposition~\ref{prop:step-008-decompositions}, Lyu Definition 4.3, and Corollary 4.1, the totalized current essential list is a finite set of actual functions, has size at most \(p^d2^{d^2}\), and satisfies all four source corollary clauses on nonempty classes; an empty outer restriction is totalized to the empty list, while a nonempty class's source essential set may also be empty. | Discharges the essential-list definition, finiteness, DDim-zero case, and absence of any finite-\(\bar C\) assumption. |
| unit_006 | proposition | Under Assumption~\ref{assump:finite-littlestone} and Proposition~\ref{prop:step-008-essential-lists}, every stage list obeys \(|\mathcal L_i^r|\le p_r^d2^{d^2}\le L(k)\), where the authoritative dictionary gives \(L(k)=p_d^d2^{d^2}\), and \(\log L(k)=d\log n_0+d\log d+2d^2\log2\); hence each block's all-stage union has size at most \((d+1)L(k)\). | Proves the list envelope with no hidden power or logarithm. |
| unit_007 | proposition | Under Assumption~\ref{assump:finite-littlestone} and Propositions~\ref{prop:step-008-decompositions} and \ref{prop:step-008-essential-lists}, every actual essential item has, in every optimal current decomposition, an exact maximal-leaf witness \(\bar f=\operatorname{SOA}_{\mathcal G}\), and \(\mathcal G\) is \(p_r2^{d-t}\)-irreducible with \(p_r2^{d-t}\ge p_0=n_0d\ge\max\{n_0,d+1\}\). | Exports the exact SOA object and both later irreducibility scales. |
| unit_008 | proposition | Under Assumption~\ref{assump:finite-littlestone}, Lemma~\ref{lem:step-008-stage-map}, and Propositions~\ref{prop:step-008-inclusion}, \ref{prop:step-008-decompositions}, \ref{prop:step-008-transition}, \ref{prop:step-008-essential-lists}, \ref{prop:step-008-list-envelope}, and \ref{prop:step-008-leaf-scale}, the first transition, endpoint, empty restriction/list, DDim zero, \(d=1\), infinite countable-quotient class, \(v=d\), duplicate-trace, nonunique-decomposition, and actual-function-versus-trace boundaries all preserve the stated interfaces. | Closes all required boundary and convention audits without proving a later descent or utility claim. |

Atomic step = no. The endpoint map, eventwise inclusion, decomposition
existence, cited factor-two comparison, essential-list construction,
dictionary envelope, irreducible leaf export, and boundary totalization are
independent audit obligations.

## Cited Result Applications

### Accepted dependency: exact source event

Accepted Proposition~\ref{prop:step-006-good-event} states (4) for the
actual quotient functions in \(\bar C\), their full indexed master-sample
errors, and every block error. The proposition obtains a finite event by
grouping equal empirical traces, but its conclusion is simultaneous for
every actual \(\bar h\in\bar C\). Thus a trace is only an indexing device
for the finite union; no trace representative replaces \(\bar h\).
Proposition~\ref{prop:step-008-inclusion} uses exactly (4).

Accepted Proposition~\ref{prop:step-007-tower} states that the same event,
with no stage union and no block-independence assertion, has unconditional
failure probability at most \(\beta/4\). No probability conversion is
repeated in this proof.

### Lyu Definition 4.1: irreducibility

For a nonempty binary class \(\mathcal A\) on \(Q_C\) and
\(q\in\mathbb N\), \(\mathcal A\) is \(q\)-irreducible if, for every
\(q\)-tuple \(x_1,\ldots,x_q\in Q_C\),

\[
 \operatorname{LD}\!\left(
 \mathcal A|_{(x_1,\operatorname{SOA}_{\mathcal A}(x_1)),\ldots,
                    (x_q,\operatorname{SOA}_{\mathcal A}(x_q))}
 \right)
 =\operatorname{LD}(\mathcal A).
\tag{5}
\]

The source domain is replaced literally by \(Q_C\); the SOA in (5) is the
actual pointwise binary function on \(Q_C\). This definition is used in
Definition 4.2 and Proposition~\ref{prop:step-008-leaf-scale}.

### Lyu Definition 4.2: valid \((p,d)\)-decomposition and DDim

Let \(p,d\in\mathbb N\) and let a nonempty
\(\mathcal A\subseteq\{0,1\}^{Q_C}\) satisfy
\(\operatorname{LD}(\mathcal A)\le d\). A \((p,d)\)-decomposition is a
not-necessarily-complete binary restriction tree. Each node \(u\), at
depth \(|\sigma_u|\), represents
\(\mathcal A_u:=\mathcal A|_{\sigma_u}\). It is valid when every node obeys

\[
 \operatorname{depth}(u)
 \le p\bigl(2^{d-\operatorname{LD}(\mathcal A_u)+1}-1\bigr),
\tag{6}
\]

and every leaf \(\ell\) obeys

\[
 \operatorname{depth}(\ell)
 \le p\bigl(2^{d-\operatorname{LD}(\mathcal A_\ell)}-1\bigr),
 \qquad
 \mathcal A_\ell\text{ is }
 p2^{d-\operatorname{LD}(\mathcal A_\ell)}
 \text{-irreducible}.
\tag{7}
\]

The degree is the largest leaf Littlestone dimension, and

\[
 \operatorname{DDim}_{p,d}(\mathcal A)
 :=\min\{\operatorname{degree}(T):T\text{ is valid}\}.
\tag{8}
\]

An optimal decomposition attains (8), and need not be unique. The
dimension premise and optimal attainment for current restrictions are
discharged in Propositions~\ref{prop:step-008-decompositions} and
\ref{prop:step-008-boundaries}; no definition is imposed on an empty outer
restriction.

### Lyu existence claim following Definition 4.2

For every \(p,d,\mathcal A\) satisfying Definition 4.2, a valid
\((p,d)\)-decomposition exists. The source constructs it by greedy finite
restriction paths. Its depth bounds are finite, so the resulting binary
tree is finite. For the current application, \(p\) is a positive integer,
\(\mathcal A\) is a nonempty current restriction, and
\(\operatorname{LD}(\mathcal A)\le d\) is proved locally. This claim is
used only in Proposition~\ref{prop:step-008-decompositions}.

### Lyu Lemma 4.1: number of leaves

If \(\mathcal A\) has Littlestone dimension at most \(d\), every valid
\((p,d)\)-decomposition tree of \(\mathcal A\) has at most

\[
 p^d2^{d^2}
\tag{9}
\]

leaves. The statement has no finite-domain or finite-class hypothesis.
Propositions~\ref{prop:step-008-decompositions} and
\ref{prop:step-008-essential-lists} use (9).

### Lyu Lemma 4.3: factor-two comparison

Let nonempty \(\mathcal G\subseteq\mathcal H\) have Littlestone dimension
at most \(d\). For arbitrarily chosen optimal \((2p,d)\)- and
\((p,d)\)-decompositions \(\{\mathcal G_v\}\) and
\(\{\mathcal H_u\}\), respectively,

\[
 \operatorname{DDim}_{2p,d}(\mathcal G)
 \le \operatorname{DDim}_{p,d}(\mathcal H).
\tag{10}
\]

Only under the additional premise

\[
 \operatorname{DDim}_{2p,d}(\mathcal G)
 =\operatorname{DDim}_{p,d}(\mathcal H)=t,
\tag{11}
\]

then every leaf \(\mathcal G_v\) of dimension \(t\) has a leaf
\(\mathcal H_u\) of dimension \(t\) satisfying the exact pointwise
identity

\[
 \operatorname{SOA}_{\mathcal H_u}
 =\operatorname{SOA}_{\mathcal G_v}
 \quad\text{as functions }Q_C\to\{0,1\}.
\tag{12}
\]

This proof instantiates (10)-(12) only as specified in
Proposition~\ref{prop:step-008-transition}. It never reverses (10), never
uses (12) without (11), and never replaces (12) by equality of empirical
traces.

### Lyu Definition 4.3: essential hypothesis

For nonempty \(\mathcal A\), put
\(t=\operatorname{DDim}_{p,d}(\mathcal A)\). An actual function
\(f:Q_C\to\{0,1\}\) is \((p,d)\)-essential to \(\mathcal A\) if, for every
optimal \((p,d)\)-decomposition \(\{\mathcal A_\ell\}\), some leaf satisfies

\[
 \operatorname{LD}(\mathcal A_\ell)=t,
 \qquad
 \operatorname{SOA}_{\mathcal A_\ell}=f
 \quad\text{pointwise on }Q_C.
\tag{13}
\]

The quantifier is over all optimal decompositions. It is not a choice of
one preferred tree, and it is not an empirical-trace definition.

### Lyu Corollary 4.1: essential hypotheses

For nonempty \(\mathcal A\) and
\(t=\operatorname{DDim}_{p,d}(\mathcal A)\):

1. there are at most \(p^d2^{d^2}\) \((p,d)\)-essential functions;
2. if nonempty \(\mathcal G\subseteq\mathcal H\) have the same
   \((p,d)\)-DDim, every \((p,d)\)-essential function of \(\mathcal G\)
   is \((p,d)\)-essential to \(\mathcal H\);
3. if
   \(\operatorname{DDim}_{2p,d}(\mathcal A)
     =\operatorname{DDim}_{p,d}(\mathcal A)=t\),
   at least one \((p,d)\)-essential function exists; and
4. if \(t=0\), then \(\mathcal A\) is finite and its essential functions
   are exactly the members of \(\mathcal A\).

All four clauses are preserved in current quotient notation in
Proposition~\ref{prop:step-008-essential-lists}. Only the pointwise
structural and size interfaces assigned to this step are assembled here;
the DDim descent and common-support uses of these clauses remain outside
this proof.

### Local-result applications

- Lemma~\ref{lem:step-008-stage-map} supplies the exact endpoint and
  factor-two parameter identities and the \(\operatorname{LD}\le d\)
  premise for every later source application.
- Proposition~\ref{prop:step-008-inclusion} supplies the sole class
  inclusion used in Proposition~\ref{prop:step-008-transition}.
- Proposition~\ref{prop:step-008-decompositions} supplies optimal trees,
  finite leaves, and valid leaf irreducibility for the essential-list and
  leaf-scale propositions.
- Proposition~\ref{prop:step-008-transition} supplies only the DDim
  comparison and equal-DDim actual-function inheritance exported to the
  later structural consumer.
- Proposition~\ref{prop:step-008-essential-lists} supplies the list-size
  input to Proposition~\ref{prop:step-008-list-envelope} and the leaf
  witness premise to Proposition~\ref{prop:step-008-leaf-scale}.
- Propositions~\ref{prop:step-008-list-envelope} and
  \ref{prop:step-008-leaf-scale} supply the finite multiplicity and
  irreducibility interfaces summarized in the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Endpoint-complete source/current stage and dimension map).**
\(\label{lem:step-008-stage-map}\)
Under Assumption~\ref{assump:finite-littlestone} and the setting's
positive branch \(d\ge1\), define \(\rho,\gamma,H_i^r,p_r\) by (1)-(3).
Resolve the source endpoint by defining, for every \(i\in[k]\),

\[
 H_{i,\mathrm{src}}^s
 :=\{\bar h\in\bar C:e_i(\bar h)\le\rho^s\gamma\},
 \qquad
 p_{s,\mathrm{src}}:=2^s n_0d,
 \qquad 1\le s\le d+1.
\tag{14}
\]

Then, for every \(0\le r\le d\),

\[
 H_i^r=H_{i,\mathrm{src}}^{r+1},
 \qquad
 p_r=2^rn_0d=\frac{p_{r+1,\mathrm{src}}}{2},
\tag{15}
\]

and, for every \(0\le r<d\),

\[
 p_{r+1}=2p_r.
\tag{16}
\]

Every nonempty \(H_i^r\) is a binary class on \(Q_C\) with
\(\operatorname{LD}(H_i^r)\le d\), and every \(p_r\) is a positive integer.
Moreover, if an actual \(\bar c^\star\in\bar C\) has
\(e_i(\bar c^\star)=0\) for every \(i\), then
\(\bar c^\star\in H_i^r\) for all \(i,r\); hence all current restrictions
are nonempty under that explicit condition.

**Proof.**
The frozen source first motivates the range through \(j\le d+1\), then in
the theorem proof prints the restriction display for \(j\in[d]\), but its
algorithm immediately operates in \(d+1\) stages and consumes
\(H_i^{d+1}\). Thus the source's operational endpoint convention is the
same formula at \(s=d+1\). Equation (14) makes that necessary endpoint
explicit; it does not introduce an additional stage or a new threshold.

Substituting \(s=r+1\) in (14) and comparing with (3) proves both identities
in (15). Equation (16) is the exact computation
\[
 p_{r+1}=2^{r+1}n_0d=2(2^rn_0d)=2p_r.
\]
In particular, the current \((p_r,d)\)-essential list on
\(H_i^r=H_{i,\mathrm{src}}^{r+1}\) is not mislabeled as the source
algorithm's literal stage-\(r+1\) list: its parameter is exactly one half
of \(p_{r+1,\mathrm{src}}\). The source structural statements are uniform
in the positive integer \(p\), and (16) is the exact \((2p,p)\) pairing
used below.

It remains to discharge the dimension premise on the quotient without
assuming class finiteness. Suppose \(\bar C\) Littlestone-shatters a finite
binary tree of depth \(s\) whose nodes are labeled by elements of \(Q_C\).
For each of the finitely many node labels \(q\), choose an
\(x_q\in X\) with \(\kappa(x_q)=q\). Replacing every node label \(q\) by
\(x_q\) gives a tree shattered by \(C\), because each witnessing
\(\bar c\) is induced by the corresponding \(c\) and
\(\bar c(q)=c(x_q)\). Hence \(s\le\operatorname{LD}(C)=d\), so
\(\operatorname{LD}(\bar C)\le d\). Monotonicity under subclasses gives
\(\operatorname{LD}(H_i^r)\le d\) whenever the outer restriction is
nonempty. Finally, \(n_0,d\in\mathbb N\) on this branch, so \(p_r\in
\mathbb N\). If \(e_i(\bar c^\star)=0\), positivity of
\(\rho^{r+1}\gamma\) makes the last membership assertion immediate. This
last statement is a proved conditional implication, not a realizability
assumption. \(\square\)

### unit_002: proposition

**Proposition (Exact eventwise interleaving inclusion).**
\(\label{prop:step-008-inclusion}\)
Under Assumption~\ref{assump:finite-littlestone}, accepted
Proposition~\ref{prop:step-006-good-event}, and
Lemma~\ref{lem:step-008-stage-map}, suppose \(d\ge1\) and the exact derived
event \(E_{\mathrm{good}}\) occurs. Then, for every
\(r\in\{0,\ldots,d-1\}\) and every \(i_*\in[k]\),

\[
 H_{i_*}^{r+1}\subseteq\bigcap_{i=1}^k H_i^r.
\tag{17}
\]

This conclusion holds whether or not either side is empty.

**Proof.**
Fix \(r<d\), \(i_*\), and
\(\bar h\in H_{i_*}^{r+1}\). By (3),

\[
 e_{i_*}(\bar h)\le\rho^{r+2}\gamma.
\tag{18}
\]

First suppose \(e(\bar h)>\gamma/3\). The high-master-error clause of the
exact accepted event gives, for every \(i\),

\[
 e_i(\bar h)\le(1+a_d)e(\bar h),
 \qquad
 e_{i_*}(\bar h)\ge(1-a_d)e(\bar h).
\tag{19}
\]

Since \(1-a_d>0\), (18)-(19) imply

\[
 e_i(\bar h)
 \le \frac{1+a_d}{1-a_d}e_{i_*}(\bar h)
 \le \frac{1+a_d}{1-a_d}\rho^{r+2}\gamma.
\tag{20}
\]

The exact scalar inequality requested by the source bridge is

\[
 \frac{1+a_d}{1-a_d}\rho\le1.
\tag{21}
\]

Indeed,

\[
\begin{aligned}
 (1-a_d)-\rho(1+a_d)
 &=\frac{1}{2d}-\frac{1}{5d}
      \left(2-\frac{1}{2d}\right)\\
 &=\frac{d+1}{10d^2}>0.
\end{aligned}
\tag{22}
\]

Both denominators in (21) are positive, so (22) proves (21), and (20)
becomes \(e_i(\bar h)\le\rho^{r+1}\gamma\).

Now suppose \(e(\bar h)\le\gamma/3\). The low-master-error clause of the
same accepted event gives \(e_i(\bar h)\le\gamma/2\) for every \(i\).
For \(x\in[0,1]\) and an integer \(s\ge1\), the elementary inequality
\((1-x)^s\ge1-sx\) follows by induction: after the base case, multiplication
of the induction hypothesis by \(1-x\ge0\) gives
\[
 (1-x)^{s+1}\ge(1-sx)(1-x)
 =1-(s+1)x+sx^2\ge1-(s+1)x.
\]
Taking \(x=1/(2d)\) and \(s=d\) gives

\[
 \rho^d=\left(1-\frac{1}{2d}\right)^d
 \ge1-\frac{d}{2d}=\frac12.
\tag{23}
\]

Because \(r+1\le d\) and \(0<\rho<1\),
\(\rho^{r+1}\ge\rho^d\ge1/2\). Therefore

\[
 e_i(\bar h)\le\gamma/2\le\rho^{r+1}\gamma.
\tag{24}
\]

In both branches \(\bar h\in H_i^r\) for every \(i\), proving (17).
If \(H_{i_*}^{r+1}\) is empty, (17) is vacuous, so the proof never assumes
nonemptiness or a generated success event. \(\square\)

### unit_003: proposition

**Proposition (Finite optimal decompositions for current restrictions).**
\(\label{prop:step-008-decompositions}\)
Under Assumption~\ref{assump:finite-littlestone},
Lemma~\ref{lem:step-008-stage-map}, the checked current-notation versions
of Lyu Definition 4.2, its valid-decomposition existence claim, and
Lyu Lemma 4.1, let \(\mathcal A\) be any nonempty current restriction
\(H_i^r\), and let \(p\in\mathbb N\). Then:

1. at least one finite valid \((p,d)\)-decomposition of \(\mathcal A\)
   exists;
2. an optimal \((p,d)\)-decomposition exists, although it need not be
   unique;
3. every valid or optimal tree has at most \(p^d2^{d^2}\) leaves; and
4. if a nonempty leaf \(\mathcal A_\ell\) has
   \(t=\operatorname{LD}(\mathcal A_\ell)\), then it is
   \(p2^{d-t}\)-irreducible.

None of these conclusions assumes that \(Q_C,\bar C\), or
\(\mathcal A\) is finite.

**Proof.**
Lemma~\ref{lem:step-008-stage-map} gives
\(\operatorname{LD}(\mathcal A)\le d\). Together with \(p,d\in\mathbb N\)
and nonemptiness, this discharges every premise of the source existence
claim, which supplies a valid tree. In its greedy construction, only
nonempty reducible leaves are expanded. Every such node has Littlestone
dimension at least zero, so (6) bounds its depth by
\[
 B:=p(2^{d+1}-1).
\]
An empty child is never expanded. Hence the constructed binary tree has
depth at most \(B+1\), and therefore at most
\(2^{B+2}-1\) nodes. In particular, the produced valid tree is finite; no
cardinality of \(\mathcal A\) enters this conclusion.

Let
\[
 \mathscr D
 :=\{\operatorname{degree}(T):T\text{ is a valid }(p,d)
                         \text{-decomposition of }\mathcal A\}.
\]
The existence claim makes \(\mathscr D\) nonempty. Its values are integers
between \(0\) and \(d\): the tree covers the nonempty root class, so some
leaf is nonempty, and every nonempty leaf is a subclass of
\(\mathcal A\). Hence the finite set of possible integer degrees has a
least attained value \(t\), and a tree whose degree equals \(t\) is
optimal. This proves optimal attainment without compactness, enumeration,
or a cardinality assumption on \(\mathcal A\). It also leaves arbitrary
nonuniqueness intact.

Lyu Lemma 4.1 gives the leaf count (9) for every valid tree. Finally, the
last clause is exactly the leaf condition (7) in the source definition.
\(\square\)

### unit_004: proposition

**Proposition (Exact factor-two transition and actual SOA inheritance).**
\(\label{prop:step-008-transition}\)
Under Assumption~\ref{assump:finite-littlestone},
Lemma~\ref{lem:step-008-stage-map},
Propositions~\ref{prop:step-008-inclusion} and
\ref{prop:step-008-decompositions}, and the checked Lyu Lemma 4.3, suppose
\(E_{\mathrm{good}}\) occurs. Fix \(0\le r<d\) and \(i_*,i\in[k]\).
If \(H_{i_*}^{r+1}\ne\varnothing\), then \(H_i^r\ne\varnothing\), and the
only Lemma 4.3 instantiation made here is

\[
 \mathcal G=H_{i_*}^{r+1},\qquad
 \mathcal H=H_i^r,\qquad
 (2p,p)=(p_{r+1},p_r).
\tag{25}
\]

It yields

\[
 \operatorname{DDim}_{p_{r+1},d}(H_{i_*}^{r+1})
 \le
 \operatorname{DDim}_{p_r,d}(H_i^r).
\tag{26}
\]

If the two sides in (26) are both equal to \(t\), then, for every
arbitrarily chosen optimal \((p_{r+1},d)\)-decomposition of
\(H_{i_*}^{r+1}\), every dimension-\(t\) leaf \(\mathcal G_v\), and every
arbitrarily chosen optimal \((p_r,d)\)-decomposition of \(H_i^r\), there
is a dimension-\(t\) leaf \(\mathcal H_u\) satisfying

\[
 \operatorname{SOA}_{\mathcal H_u}
 =\operatorname{SOA}_{\mathcal G_v}
 \quad\text{pointwise on }Q_C.
\tag{27}
\]

Consequently, under that same equal-DDim premise only,

\[
 \operatorname{Ess}_{p_{r+1},d}(H_{i_*}^{r+1})
 \subseteq
 \operatorname{Ess}_{p_r,d}(H_i^r),
\tag{28}
\]

where \(\operatorname{Ess}_{p,d}\) denotes the actual essential-function
set of Definition 4.3.

**Proof.**
Proposition~\ref{prop:step-008-inclusion} gives
\(H_{i_*}^{r+1}\subseteq H_i^r\); thus nonemptiness of the former proves
nonemptiness of the latter. Proposition
~\ref{prop:step-008-decompositions} supplies both arbitrary optimal trees,
and Lemma~\ref{lem:step-008-stage-map} supplies their
\(\operatorname{LD}\le d\) premises. Equation (16) gives
\[
 p_{r+1}=2p_r,
\]
so (25) is literally the source pair \((2p,p)\), with no same-scale
substitution. Lyu Lemma 4.3 now gives (26) in the displayed direction.
Its second conclusion is conditional on equality, and under precisely that
premise it gives (27) as equality of actual SOA functions, not merely
equality on \(\bar S\) or a block.

For (28), let \(f\) be essential to \(H_{i_*}^{r+1}\), and fix an
arbitrary optimal \((p_r,d)\)-decomposition of \(H_i^r\). Choose any
optimal \((p_{r+1},d)\)-decomposition of \(H_{i_*}^{r+1}\). By essentiality,
some dimension-\(t\) leaf \(\mathcal G_v\) has
\(\operatorname{SOA}_{\mathcal G_v}=f\). Equation (27) produces a
dimension-\(t\) leaf in the arbitrary \(H_i^r\) tree with the same actual
function \(f\). Since the \(H_i^r\) tree was arbitrary, Definition 4.3 says
that \(f\) is essential to \(H_i^r\). This proves (28).

No conclusion stronger than (26) is drawn when the DDim values are unequal.
In particular, this proposition does not turn (26) into a strict decrease
and does not prove the later finite-potential descent. \(\square\)

### unit_005: proposition

**Proposition (Finite actual essential lists and the full source
corollary).**
\(\label{prop:step-008-essential-lists}\)
Under Assumption~\ref{assump:finite-littlestone},
Proposition~\ref{prop:step-008-decompositions}, Lyu Definition 4.3, and
Lyu Corollary 4.1, define, for \(0\le r\le d\),

\[
\mathcal L_i^r:=
 \begin{cases}
 \operatorname{Ess}_{p_r,d}(H_i^r),&H_i^r\ne\varnothing,\\
 \varnothing,&H_i^r=\varnothing.
 \end{cases}
\tag{29}
\]

The setting's pre-fixed deterministic ordering of this finite set is the
algorithmic list ordering. The mathematical set and every function identity
below are independent of that ordering.

For a nonempty \(H_i^r\), this is a finite set of actual functions
\(Q_C\to\{0,1\}\), and

\[
 |\mathcal L_i^r|\le p_r^d2^{d^2}.
\tag{30}
\]

More generally, for all nonempty quotient classes to which the source
corollary applies, its four conclusions remain exactly:

1. the bound (30);
2. same-\((p,d)\), same-DDim inheritance from a subclass to a superclass;
3. nonemptiness of the \((p,d)\)-essential set when
   \(\operatorname{DDim}_{2p,d}=\operatorname{DDim}_{p,d}\); and
4. if \(\operatorname{DDim}_{p,d}(\mathcal A)=0\), then
   \(\mathcal A\) is finite and
   \(\operatorname{Ess}_{p,d}(\mathcal A)=\mathcal A\).

The last clause is never applied to an empty class, and (29) does not
identify an empty restriction with DDim zero.

**Proof.**
For nonempty \(H_i^r\), Proposition
~\ref{prop:step-008-decompositions} supplies an optimal decomposition.
Definition 4.3 makes every essential item an actual SOA function of a
maximal-dimensional leaf in every optimal decomposition. Fix just one such
tree. Every essential function must occur among its maximal-leaf SOA
functions. The tree has at most \(p_r^d2^{d^2}\) leaves, so this one finite
set contains every essential function and proves (30). Duplicate SOA
functions at different leaves only reduce the set cardinality.

This argument also explains why no cardinality assumption on \(H_i^r\) or
\(\bar C\) is present: a possibly infinite intersection over optimal trees
is contained in the finite SOA set of any one fixed optimal tree. The
remaining three conclusions are the checked source Corollary 4.1 after
replacing its domain by \(Q_C\). All its hypotheses are discharged by
nonemptiness, Proposition~\ref{prop:step-008-decompositions}, and the
explicit DDim premises in the respective clauses.

If \(H_i^r=\varnothing\), (29) is instead the setting's predetermined
arbitrary-input totalization. No source SOA or decomposition is evaluated.
If \(H_i^r\ne\varnothing\), its essential set may nevertheless be empty
unless a source existence clause applies; the algorithmic empty-list path
is totalized in that case as well. Thus neither class nonemptiness nor list
nonemptiness is smuggled into the proof. \(\square\)

### unit_006: proposition

**Proposition (Authoritative stage-list envelope).**
\(\label{prop:step-008-list-envelope}\)
Under Assumption~\ref{assump:finite-littlestone} and
Proposition~\ref{prop:step-008-essential-lists}, use the accepted
positive-branch dictionary

\[
 p_d=p_d(k)=2^dn_0d,\qquad
 L(k):=p_d(k)^d2^{d^2}.
\tag{31}
\]

Then, for every \(i\in[k]\) and \(0\le r\le d\),

\[
 |\mathcal L_i^r|
 \le p_r^d2^{d^2}
 \le p_d^d2^{d^2}
 =L(k).
\tag{32}
\]

The logarithm is exactly

\[
 \log L(k)
 =d\log n_0+d\log d+2d^2\log2.
\tag{33}
\]

For the actual all-stage set
\(\mathcal G_i:=\bigcup_{r=0}^d\mathcal L_i^r\),

\[
 |\mathcal G_i|\le(d+1)L(k).
\tag{34}
\]

**Proof.**
Equation (30) proves the first inequality in (32), including the
totalized-empty case. For \(0\le r\le d\),
\[
 p_r=2^rn_0d\le2^dn_0d=p_d.
\]
Since \(d\ge1\), raising both positive sides to the \(d\)-th power and
multiplying by \(2^{d^2}\) proves the second inequality and the equality
with the authoritative definition (31). There is no additional factor,
power, asymptotic comparison, or absorbed logarithm.

Expanding (31) gives
\[
\begin{aligned}
 \log L(k)
 &=d\log(2^dn_0d)+d^2\log2\\
 &=d\log n_0+d\log d+2d^2\log2,
\end{aligned}
\]
which is (33). Finally, subadditivity of cardinality for a union of the
exactly \(d+1\) stage sets and (32) gives (34). Duplicates across stages
or within different leaf witnesses can only decrease the union size.
\(\square\)

### unit_007: proposition

**Proposition (Exact essential-leaf identity and irreducibility export).**
\(\label{prop:step-008-leaf-scale}\)
Under Assumption~\ref{assump:finite-littlestone} and
Propositions~\ref{prop:step-008-decompositions} and
\ref{prop:step-008-essential-lists}, fix \(i,r\) and
\(\bar f\in\mathcal L_i^r\). Then \(H_i^r\ne\varnothing\), and in every
optimal \((p_r,d)\)-decomposition of \(H_i^r\) there is a leaf
\(\mathcal A_\ell\) such that, with

\[
 t:=\operatorname{DDim}_{p_r,d}(H_i^r)
   =\operatorname{LD}(\mathcal A_\ell),
\tag{35}
\]

one has the exact actual-function identity

\[
 \bar f=\operatorname{SOA}_{\mathcal A_\ell}
 \quad\text{on all of }Q_C,
\tag{36}
\]

and \(\mathcal A_\ell\) is
\(p_r2^{d-t}\)-irreducible. Its scale satisfies

\[
 p_r2^{d-t}\ge p_0=n_0d\ge\max\{n_0,d+1\}.
\tag{37}
\]

Consequently, the same leaf is both \(n_0\)-irreducible and
\((d+1)\)-irreducible.

**Proof.**
Membership in the first case of (29) and Definition 4.3 give (35)-(36) in
every optimal decomposition. The SOA is a function in \(H_C\); it need not
belong to \(\bar C\), so the identity preserves the source's potentially
improper actual output rather than silently asserting properness.
The valid-leaf clause (7) gives
\(p_r2^{d-t}\)-irreducibility.

Because \(0\le t\le d\), \(2^{d-t}\ge1\). Because \(r\ge0\),
\(p_r=2^rp_0\ge p_0\). Hence the first inequality in (37) follows.
On the positive branch \(d\ge1\), so \(n_0d\ge n_0\). Also
\(n_0=km\ge2\), whence
\[
 n_0d\ge2d\ge d+1.
\]
This proves all of (37).

For completeness, \(K\)-irreducibility implies \(q\)-irreducibility for
every \(1\le q\le K\). Given a \(q\)-tuple, extend it to length \(K\) by
repeating any point of the nonempty domain \(Q_C\). If restriction by the
first \(q\) SOA-labeled points lowered Littlestone dimension, further
restrictions could not increase it, contradicting \(K\)-irreducibility.
Apply this observation with
\(K=p_r2^{d-t}\) and \(q=n_0,d+1\).

The two exported scales have distinct later roles. The \(n_0\) scale is
the input reserved for the later full-master-sample empirical
contradiction, and the \(d+1\) scale places the exact SOA function in the
later fixed irreducible-SOA family. This proposition supplies those
interfaces only; it does not prove either later empirical or fixed-family
conclusion. \(\square\)

### unit_008: proposition

**Proposition (Boundary, totalization, and object-integrity audit).**
\(\label{prop:step-008-boundaries}\)
Under Assumption~\ref{assump:finite-littlestone},
Lemma~\ref{lem:step-008-stage-map}, and
Propositions~\ref{prop:step-008-inclusion},
\ref{prop:step-008-decompositions}, \ref{prop:step-008-transition},
\ref{prop:step-008-essential-lists},
\ref{prop:step-008-list-envelope}, and
\ref{prop:step-008-leaf-scale},
the following boundary conclusions hold.

1. The first transition is \(r=0\):
   \(H_{i_*}^{1}\subseteq\cap_iH_i^0\) and the exact source pair is
   \((p_1,p_0)=(2n_0d,n_0d)\).
2. The last current restriction is
   \(H_i^d=H_{i,\mathrm{src}}^{d+1}\). It is used as the endpoint stage;
   no undefined \(H_i^{d+1}\) or transition beyond \(r=d-1\) is claimed.
3. If an arbitrary-input restriction is empty, its list is empty and no
   DDim, SOA, decomposition, or source lemma is evaluated for it. If a
   zero-error actual concept exists, Lemma~\ref{lem:step-008-stage-map}
   proves all restrictions nonempty rather than assuming that fact.
4. DDim zero is considered only for a nonempty class and gives exactly the
   finite-class/list identity in Corollary 4.1; it is not a synonym for an
   empty restriction.
5. At \(d=1\), the map has current stages \(r=0,1\), the only transition
   uses the source endpoint \(s=2\), \(\rho=1/2\), and every inequality,
   leaf scale, and list bound above remains valid.
6. The proof permits finite or countably infinite \(Q_C\) and arbitrary
   possibly infinite \(\bar C\). Its finite lists come from finite trees,
   not from enumerating or bounding \(|\bar C|\).
7. The specialization \(v=d\) changes none of the structural statements:
   \(v\) does not appear in (14)-(37), except indirectly in already fixed
   public parameters.
8. Duplicate empirical traces do not identify actual concepts or SOA
   functions. They only deduplicate the accepted finite union defining
   \(E_{\mathrm{good}}\).
9. Optimal decompositions need not be unique. Essentiality quantifies over
   every optimal tree, while Lemma 4.3 applies to arbitrary chosen optimal
   trees and preserves the exact actual function.

**Proof.**
Item 1 is (16)-(17) at \(r=0\). Item 2 is (15) at \(r=d\) together with the
range \(r<d\) in Propositions~\ref{prop:step-008-inclusion} and
\ref{prop:step-008-transition}. Item 3 is the piecewise definition (29)
and the proved zero-error implication in Lemma
~\ref{lem:step-008-stage-map}; no realized event or mechanism success is
used. Item 4 is Proposition~\ref{prop:step-008-essential-lists}.

For Item 5, when \(d=1\), (22) remains strict, (23) is equality,
\(p_0=n_0\), \(p_1=2n_0\), and
\(p_r2^{1-t}\ge n_0\ge2=d+1\). Thus the smallest positive dimension loses
no endpoint or scale. Items 6 and 9 follow from the cardinality-free source
statements and the finite-tree arguments in Propositions
~\ref{prop:step-008-decompositions} and
\ref{prop:step-008-essential-lists}. Item 7 is immediate from inspecting
the exact displayed interfaces. Item 8 follows because (4) holds for each
actual function sharing a trace, while (12), (13), (27), and (36) are
pointwise equalities on all of \(Q_C\).

These checks establish no strict DDim drop, common list item, mechanism
event, selected output, privacy inequality, empirical error, or population
error. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-008-stage-map} resolves the source's printed endpoint
omission using its explicit \(d+1\)-stage algorithm and proves, for every
\(0\le r\le d\),

\[
 H_i^r=H_{i,\mathrm{src}}^{r+1},
 \qquad
 p_r=2^rn_0d=p_{r+1,\mathrm{src}}/2.
\]

It also proves the source-required \(\operatorname{LD}\le d\) condition
directly on the quotient. Proposition~\ref{prop:step-008-inclusion} then
uses both exact branches of the accepted generated event. The high branch
is closed by the displayed inequality
\[
 \frac{1+a_d}{1-a_d}\rho\le1,
\]
and the low branch by
\(\gamma/2\le\rho^d\gamma\le\rho^{r+1}\gamma\). Thus it proves exactly
\[
 H_{i_*}^{r+1}\subseteq\bigcap_iH_i^r
 \quad(0\le r<d).
\]

Proposition~\ref{prop:step-008-decompositions} discharges Definition 4.2,
the valid-decomposition existence claim, optimal attainment, Lemma 4.1,
and leaf irreducibility pointwise for every nonempty current restriction.
Proposition~\ref{prop:step-008-transition} then invokes Lemma 4.3 only with
\[
 (\mathcal G,\mathcal H,2p,p)
 =(H_{i_*}^{r+1},H_i^r,p_{r+1},p_r).
\]
It preserves the direction of the DDim inequality and uses the leaf SOA
identity only under exact DDim equality. The resulting equality is of
actual functions on \(Q_C\), and under the same premise it yields the
correct cross-stage essential-list inheritance.

Proposition~\ref{prop:step-008-essential-lists} discharges Definition 4.3
and all four clauses of Corollary 4.1, defines the empty outer-restriction
path without assigning it a DDim, and proves finite actual lists without
assuming \(\bar C\) finite. Proposition
~\ref{prop:step-008-list-envelope} applies the authoritative dictionary
without hiding a power:
\[
 |\mathcal L_i^r|\le p_r^d2^{d^2}
 \le p_d^d2^{d^2}=L(k),
 \qquad
 |\mathcal G_i|\le(d+1)L(k),
\]
with the exact logarithm (33).

Finally, Proposition~\ref{prop:step-008-leaf-scale} gives every essential
actual function an exact maximal-leaf SOA witness and exports
\[
 p_r2^{d-t}\ge p_0=n_0d\ge\max\{n_0,d+1\}.
\]
Proposition~\ref{prop:step-008-boundaries} verifies every requested
endpoint, empty, zero-dimensional, smallest-\(d\), infinite-class,
\(v=d\), duplicate-trace, nonuniqueness, and actual-function boundary.

These named results prove exactly the accepted step_008 claim. They export
cross-block inclusion, exact lists and SOA witnesses, finite list
multiplicity, the factor-two DDim comparison interface, and the two
irreducibility scales to step_009, step_010, step_012, and step_013. They
do not prove the step_009 descent, a common-score stage, or any later
mechanism, privacy, empirical-error, holdout, or PAC conclusion.

## Explicit Rate Audit

- Exposed variables: \(d,k,m,n_0,r,p_r,L(k),\alpha,\beta\), with
  \(\gamma=\alpha/16\), \(a_d=1/(5d)\), and
  \(\rho=1-1/(2d)\). The structural rate-bearing outputs are
  \(p_r^d2^{d^2}\), \(L(k)=p_d^d2^{d^2}\),
  \((d+1)L(k)\), and the leaf scale \(p_r2^{d-t}\).
- Hidden constants may depend on: None. Every numerical factor in this
  step is displayed.
- Hidden constants may not depend on:
  \(X,\Sigma,C,\bar C,Q_C,D,c\), a restriction, decomposition, leaf,
  list, trace, partition, stage, event realization, mechanism transcript,
  or output.
- Fixed quantities: All structural conclusions are pointwise at the exact
  public dictionary. Conditional on \(E_{\mathrm{good}}\), the sample,
  partition, restrictions, and errors are fixed.
- Probability mode: Deterministic conditional-on-the-derived-event for
  (17) and its source consequences. Accepted step_007 already supplies
  \(\Pr(E_{\mathrm{good}}^c)\le\beta/4\); this proof adds no union,
  independence claim, or confidence loss.
- Horizon mode: Exactly \(d+1\) finite current stages \(r=0,\ldots,d\)
  and exactly \(d\) transitions \(r=0,\ldots,d-1\). There is no all-time,
  stopping-time, or asymptotic upgrade.
- Norm mode: Full-master and block empirical binary zero-one errors in
  (2)-(4). The DDim, SOA, and irreducibility outputs are exact structural
  objects, not metric approximations.
- Admissibility conditions and auxiliary tolerances:
  \(d\ge1\), \(k\ge2\), \(m\ge1\), \(n_0=km\), positive integer
  \(p_r=2^rn_0d\), exact \(\gamma,a_d,\rho\), and the nonempty-class
  premise only for cited SOA/decomposition results. Empty outer
  restrictions use (29).
- Term absorption or simplification inequalities:
  \[
  (1-a_d)-\rho(1+a_d)=\frac{d+1}{10d^2}>0,
  \]
  \[
  \rho^d\ge1/2,\qquad
  p_r^d2^{d^2}\le p_d^d2^{d^2}=L(k),
  \]
  \[
  p_r2^{d-t}\ge n_0d\ge\max\{n_0,d+1\}.
  \]
  No term is absorbed by prose.
- Probability conversion: None locally. The accepted dependency's
  unconditional \(\beta/4\) charge is merely carried as provenance.
- Contribution to any Rate Specialization Bridge: The exact finite-list
  input is
  \[
  \log L(k)=d\log n_0+d\log d+2d^2\log2.
  \]
  Later mechanism and reconstruction steps may consume this expression,
  but no public sample-rate simplification is made here.
- Baseline-reduction check: At \(d=1\), there is one exact factor-two
  transition and the endpoint and irreducibility scales remain valid. At
  \(v=d\), the structural dictionary and list/leaf inequalities are
  unchanged, so this step introduces no extra \(v\)- or \(d\)-power.
  The \(d=0\) branch is the setting's exact no-data bypass.

## Blockers

None.

## Notation And Assumption Notes

- Appendix-local exported objects:
  \(H_i^r,p_r,\mathcal L_i^r,\mathcal G_i\), the fixed optimal
  decomposition trees and leaf witnesses, and the exact DDim/SOA and
  irreducibility interfaces. They are exported only to later proof steps,
  not to the public main-theorem statement.
- Inherited appendix-local objects:
  \(E_{\mathrm{good}},\gamma=\alpha/16,a_d=1/(5d)\). Their definitions and
  event probability are accepted dependency outputs, not primitive
  assumptions.
- Proof-local objects:
  \(H_{i,\mathrm{src}}^s,p_{s,\mathrm{src}}\) are used only to audit the
  endpoint/source map; \(e,e_i,\rho,\mathscr D,\mathcal A,\mathcal G,
  \mathcal H,\mathcal A_\ell,\mathcal G_v,\mathcal H_u,t\) are scoped to
  the corresponding derivations. The generic
  \(\operatorname{Ess}_{p,d}\) notation is the current-notation restatement
  of source Definition 4.3.
- Public-facing helper objects: None are newly introduced. The only
  downstream interface is the appendix-level restriction/list/leaf package
  already required by the accepted sketch.
- Constant provenance:
  \(\gamma,a_d,\rho,p_r,L(k)\) are direct formulas in setting/sketch
  quantities; no free finite constant, threshold, radius, or bounded
  quantity is introduced. The list and irreducibility bounds are proved by
  Propositions~\ref{prop:step-008-list-envelope} and
  \ref{prop:step-008-leaf-scale}.
- Assumption provenance:
  finite Littlestone dimension is primitive. The event and its confidence
  charge are accepted derived outputs. Cross-block inclusion,
  decomposition existence and optimal attainment, list finiteness,
  actual-function identities, and scale bounds are proved in this step.
  Event membership and nonemptiness occur only as explicit local
  conditions. A zero-error witness implies nonemptiness by a named lemma;
  realizable nonemptiness is not treated as primitive.
- Empty-state discipline:
  an empty outer restriction receives the empty list before source
  evaluation. A nonempty class can also have an empty essential set.
  Neither case is relabeled as DDim zero, and neither list nonemptiness nor
  mechanism success is assumed.
- Source-convention discipline:
  the source display's omitted \(H_i^{d+1}\) endpoint is resolved from the
  same formula required by its explicit \(d+1\)-stage algorithm. The
  current parameter is recorded as half the correspondingly indexed source
  parameter, so current lists are not falsely called literal source-stage
  lists. Every Lemma 4.3 application uses the exact current
  \((p_{r+1},p_r)=(2p_r,p_r)\) pair.
- Actual-object discipline:
  traces only make the accepted event's union finite. Restrictions contain
  actual members of \(\bar C\); essential lists contain actual functions in
  \(H_C\); and every SOA equality is pointwise on \(Q_C\). Duplicate traces
  and duplicate leaf SOAs never create a representative substitution.
- Cardinality and choice discipline:
  source decomposition existence and the leaf bound are cardinality-free.
  Essential lists are finite because they lie inside the leaf-SOA set of
  any one finite optimal tree. Each finite set admits the setting's
  pre-fixed pointwise ordering; no enumeration of \(\bar C\) is used.
  Nonunique optimal trees are allowed, and Definition 4.3 retains its
  universal quantifier over them.
- Producer-consumer discipline:
  step_009 may consume (17), (26), (28), and Corollary 4.1 for its separate
  descent proof; step_010 may consume (32)-(34); step_012 may consume
  (36)-(37); and step_013 may consume (34). No conclusion assigned to any
  of those consumers is proved here.
- Diagnostic and evidence boundary:
  no global-proof diagnostic was read or used. No prior same-step artifact,
  prior idea branch, proof_history artifact, unrelated proof step, tracker,
  worker log, final artifact, or accepted-results artifact was used as
  proof evidence.
