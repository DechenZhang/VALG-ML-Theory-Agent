# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_006`
- Unit attempt: 1
- Binding setting SHA-256: `13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327`
- Accepted proof sketch SHA-256: `51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8`
- Accepted proof-sketch review SHA-256: `98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89`
- Accepted dependency Proposition~\ref{prop:step-004-conditional-trace} proof/review SHA-256: `a7bfbd70ecbd3e68380fe75cdfa668f0dd34b198255823b7156e7d3eb03f709d` / `d20d43002ce30c7e50e0cccb230ff4c3014e2b328d46c96b4a59c2986269ee18`
- Accepted dependency Proposition~\ref{prop:step-005-trace-budget} proof/review SHA-256: `044406cb03ff7ebc62a8c44e317ec731030192eb2f4e585650335feea30e2191` / `189873c0b2f032e76014d9ebb953db45efa3842a7010829750f0afeb25940cff`
- Diagnostic global proof/review SHA-256: `dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407` / `fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710`

## Target Step Claim

- Intended claim: Prove the exact source/current map (S-H)--(B-map),
  cross-block inclusion, the Lemma 4.3 pairing (Pair), list envelope,
  actual-function essential identity, and (Irred), including empty and
  DDim-zero boundaries.
- Depends on: accepted Propositions~\ref{prop:step-004-conditional-trace},
  \ref{prop:step-004-unconditional-trace}, and
  \ref{prop:step-005-trace-budget}, together with the accepted
  positive-branch parameter interface recorded in
  Lemma~\ref{lem:step-005-ceiling-fixed-point}.
- Assumptions used: primitive `assump:finite-littlestone`; derived
  \(E_{\rm good}\).
- Technical challenge: Discharge the factor-two convention and every cited
  wrapper before downstream use.
- Intended proof tool or cited result: Lyu Definition 4.2, Lemmas 4.1 and
  4.3, Definition 4.3, Corollary 4.1, and the source threshold algebra.
- Output target: Source-compatible restrictions, lists, exact leaf witnesses,
  and irreducibility.
- Rate objective: Expose
  \(\log L\le d\log p_d+d^2\log 2\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:finite-littlestone`: \(C\subseteq\{0,1\}^X\) is nonempty,
    \(X\) is nonempty, and \(d=\operatorname{LD}(C)<\infty\). On the
    positive branch, \(d\ge1\) and every nonempty subclass of \(C\) has
    Littlestone dimension at most \(d\).
  - `assump:realizable-iid` is not used in this step. In particular, no
    target concept is assumed to belong to every \(H_i^r\). That later fact
    is what will make all utility-path classes nonempty.
  - `assump:approximate-dp-regime` is not invoked independently. The exact
    positive-branch scalar legality and event budget needed here are already
    conclusions recorded in the accepted dependencies.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-004-conditional-trace} defines the exact
    simultaneous event \(E_{\rm good}\) and gives its conditional trace
    bound for every indexed labeled sample.
  - Proposition~\ref{prop:step-004-unconditional-trace} gives the matching
    unconditional interface under any measurable sample law.
  - Proposition~\ref{prop:step-005-trace-budget} proves, with
    \(\beta_{\rm tr}=\beta/4\),
    \[
    \Pr_{\mathcal P}(E_{\rm good}^c\mid S)\le\beta_{\rm tr}
    \quad\text{for every fixed }S,
    \qquad
    \Pr(E_{\rm good}^c)\le\beta_{\rm tr}.
    \]
  - The accepted positive-branch package used in
    Lemma~\ref{lem:step-005-ceiling-fixed-point} supplies positive integers
    \(k,m,n_0=km\), with \(k\ge2\), and hence \(n_0\ge2\). It also supplies
    the legal branch \(d\ge1\).
- Local conditional hypotheses:
  - The deterministic inclusion result conditions on a fixed indexed input,
    a fixed realized partition, and membership in the already-produced event
    \(E_{\rm good}\). Event membership is not promoted to a primitive
    theorem condition.
  - Lyu's decomposition, SOA, DDim, essentiality, and irreducibility results
    are invoked only when the class to which they are applied is nonempty.
    For arbitrary inputs, an empty class receives the totalized empty list
    and no source DDim or SOA assertion is made about it.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumption~\ref{assump:finite-littlestone} and the accepted positive-branch parameter interface in Lemma~\ref{lem:step-005-ceiling-fixed-point}, if \(d\ge1\), then the endpoint-totalized source classes and current classes satisfy \(H_{i,{\rm src}}^s=\{h\in C:e_i(h)\le\rho^s\gamma\}\) for \(1\le s\le d+1\), \(H_i^r=H_{i,{\rm src}}^{r+1}\), \(p_r=2^rn_0d=\frac12p_{r+1,{\rm src}}\), and \(p_{r+1}=2p_r\). | Establishes (S-H), (B-map), and the exact half-scale convention without asserting literal source-list identity. |
| unit_002 | lemma | Under Assumption~\ref{assump:finite-littlestone}, Proposition~\ref{prop:step-006-source-map}, and the local condition \(E_{\rm good}\), if \(0\le r<d\), then \(H_i^{r+1}\subseteq\bigcap_{i'=1}^kH_{i'}^r\) for every \(i\), including \(d=1\) and vacuous empty-class cases. | Proves the exact source threshold inclusion needed before Lemma 4.3 can be invoked. |
| unit_003 | proposition | Under Assumption~\ref{assump:finite-littlestone} and Proposition~\ref{prop:step-006-source-map}, define \(\mathcal L_i^r=\varnothing\) when \(H_i^r=\varnothing\), and otherwise define it as Lyu's exact set of \((p_r,d)\)-essential actual functions. Then every list element has the exact Definition 4.3 leaf-SOA identity on \(X\), \(|\mathcal L_i^r|\le p_r^d2^{d^2}\le L:=p_d^d2^{d^2}\), and \(\log L=d\log p_d+d^2\log2\). The exact same-\(p\), equal-\((2p,p)\), and nonempty DDim-zero clauses of Corollary 4.1 also hold, while the empty list remains total. | Exports finite actual-function lists, their exact witnesses, all Corollary 4.1 boundaries, and the required logarithmic envelope for possibly infinite \(C\). |
| unit_004 | proposition | Under Assumption~\ref{assump:finite-littlestone}, Propositions~\ref{prop:step-006-source-map} and \ref{prop:step-006-essential-lists}, and Lemma~\ref{lem:step-006-cross-block-inclusion}, if \(E_{\rm good}\), \(0\le r<d\), and \(H_{i_*}^{r+1}\ne\varnothing\), then Lyu Lemma 4.3 applies with \((\mathcal G,\mathcal H,2p,p)=(H_{i_*}^{r+1},H_i^r,p_{r+1},p_r)\). It gives the exact DDim comparison; under equality, every top leaf of an arbitrarily fixed optimal decomposition of \(H_{i_*}^{r+1}\) has an SOA function that is exactly \((p_r,d)\)-essential to \(H_i^r\), with equality on all of \(X\). | Establishes (Pair) and the exact equality-to-essentiality wrapper without proving the later potential descent or common-item claim. |
| unit_005 | lemma | Under Assumption~\ref{assump:finite-littlestone}, Proposition~\ref{prop:step-006-source-map}, and the accepted positive-branch parameter interface, every degree-attaining leaf \(\mathcal G\) of dimension \(t\) in an optimal \((p_r,d)\)-decomposition of a nonempty \(H_i^r\) is \(K=p_r2^{d-t}\)-irreducible, where \(K\ge p_0=n_0d\ge\max\{n_0,d+1\}\); hence it is both \(n_0\)- and \((d+1)\)-irreducible. | Proves (Irred), including the half-scale \(r=0\), \(d=1\), and shorter-sequence monotonicity checks. |

Atomic step = no. The endpoint convention, event-to-inclusion algebra,
essential-list interface, factor-two theorem instantiation, and leaf-scale
lower bound are logically independent obligations.

## Cited Result Applications

### Exact source identity and stage display

- Source: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*,
  arXiv:2510.00076v1. The checked arXiv v1 source archive has SHA-256
  `1b70f9de20e75e5684cd2495b36e30420e25f6d46f8220c585dfd019a682b301`;
  its top-level `submission/main.tex` has SHA-256
  `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.
- Source-version audit: in the v1 TeX, the PAC proof displays
  \[
  H_i^j=\{h:\operatorname{err}_{S_i}(h)
  \le(1-1/(2d))^j\alpha_{\rm src}\}
  \quad(j\in[d]),
  \]
  but the immediately following algorithm explicitly runs stages
  \(j=1,\ldots,d+1\) and uses \(H_i^j\). Thus the \(d+1\) endpoint is
  consumed by the source algorithm but omitted from the displayed domain.
  The current formula at that endpoint is an explicit same-formula wrapper,
  not a claim that v1 separately states an endpoint theorem.
- Current-object map: source \(\mathcal X,\mathcal H,n,\alpha_{\rm src}\)
  map to \(X,C,n_0,\gamma\). The source scale display
  \(p_j=2^jnd\) maps to \(p_{s,{\rm src}}=2^sn_0d\).
- Conclusion used: only the exact threshold formula and literal source scale
  are read from this display. All current half-scale legality is proved below
  from results that are uniform over positive integer \(p\).

### Lyu Definition 4.2 (`def: p-decomposition`)

- Restated statement in current notation: for positive integers \(p,d\) and
  a nonempty class \(H\subseteq\{0,1\}^X\) with
  \(\operatorname{LD}(H)\le d\), a valid \((p,d)\)-decomposition is a finite
  restriction tree. At a node \(v\), let \(H_v\) be the class restricted by
  the edge-labeled examples on the root-to-\(v\) path. Every internal node
  obeys
  \[
  \operatorname{depth}(v)
  \le p(2^{d-\operatorname{LD}(H_v)+1}-1),
  \]
  while every leaf \(\ell\) obeys
  \[
  \operatorname{depth}(\ell)
  \le p(2^{d-\operatorname{LD}(H_\ell)}-1)
  \]
  and \(H_\ell\) is
  \(p2^{d-\operatorname{LD}(H_\ell)}\)-irreducible. The tree degree is the
  maximum leaf Littlestone dimension, \(\operatorname{DDim}_{p,d}(H)\) is
  the minimum degree, and a minimizing tree is optimal. The immediately
  following source Claim `claim: exist decomposition` supplies a valid tree;
  because degrees are integer-valued in a finite range, an optimum exists.
- Irreducibility convention: for a nonempty \(G\), its source SOA is the
  function
  \[
  \operatorname{SOA}_G(x)=0
  \quad\Longleftrightarrow\quad
  \operatorname{LD}(G|_{(x,0)})=\operatorname{LD}(G),
  \]
  and \(G\) is \(q\)-irreducible when every length-\(q\) point sequence,
  labeled by this same function, leaves Littlestone dimension unchanged.
- Instantiated objects: \(H=H_i^r\), \(p=p_r\), and the setting's ambient
  \(d\), only when \(H_i^r\ne\varnothing\).
- Assumption discharge: Proposition~\ref{prop:step-006-source-map} gives
  \(p_r\in\mathbb N\); Assumption~\ref{assump:finite-littlestone} gives
  \(\operatorname{LD}(H_i^r)\le d\).
- Conclusion used: exact optimal leaves and their irreducibility scale. No
  definition is applied to a totalized empty class.

### Lyu Lemma 4.1 (`lemma: number of leaves`)

- Restated statement: every valid \((p,d)\)-decomposition of a class of
  Littlestone dimension at most \(d\) has at most \(p^d2^{d^2}\) leaves.
- Instantiated objects: \(p=p_r\), \(H=H_i^r\ne\varnothing\), including
  possibly infinite \(H_i^r\).
- Assumption discharge: exactly the Definition 4.2 checks above.
- Conclusion used: the finite list envelope. The lemma bounds leaves, not
  sample traces and not the cardinality of the original class.

### Lyu Lemma 4.3 (`lemma: p-decomposition`)

- Restated statement: let nonempty \(G\subseteq H\) have Littlestone
  dimension at most \(d\). For arbitrarily chosen optimal
  \((2p,d)\)- and \((p,d)\)-decompositions \(\{G_v\}\) and \(\{H_u\}\),
  \[
  \operatorname{DDim}_{2p,d}(G)
  \le\operatorname{DDim}_{p,d}(H).
  \]
  If both sides equal \(t\), then for every leaf \(G_v\) with
  \(\operatorname{LD}(G_v)=t\), there is a leaf \(H_u\) with
  \(\operatorname{LD}(H_u)=t\) and
  \(\operatorname{SOA}_{G_v}=\operatorname{SOA}_{H_u}\) as functions on
  \(X\).
- Instantiated objects: \(p=p_r\),
  \(G=H_{i_*}^{r+1}\subseteq H_i^r=H\), and
  \(2p_r=p_{r+1}\).
- Assumption discharge: Lemma~\ref{lem:step-006-cross-block-inclusion}
  supplies inclusion on \(E_{\rm good}\); nonemptiness of \(G\) is a local
  conditional hypothesis and then forces nonemptiness of \(H\); ambient
  dimension and integer scales come from the setting and
  Proposition~\ref{prop:step-006-source-map}.
- Conclusion used: exact factor-two DDim comparison and exact SOA identity.
  The lemma does not by itself assert a plateau, common item, or dimension
  drop; those are later consumers.

### Lyu Definition 4.3 (`def: essential hypothesis`)

- Restated statement: for nonempty \(H\), let
  \(t=\operatorname{DDim}_{p,d}(H)\). An actual function
  \(f:X\to\{0,1\}\) is \((p,d)\)-essential to \(H\) exactly when, in every
  optimal \((p,d)\)-decomposition of \(H\), some leaf \(H_\ell\) satisfies
  \[
  \operatorname{LD}(H_\ell)=t,
  \qquad \operatorname{SOA}_{H_\ell}\equiv f
  \quad\text{on all of }X.
  \]
- Instantiated objects: \(H=H_i^r\ne\varnothing\), \(p=p_r\), and the
  source SOA tie convention just restated.
- Conclusion used: list elements are actual functions with exact leaf
  witnesses. Equality on only \(S\), on a block, or on an error trace is not
  a source conclusion and is not used.

### Lyu Corollary 4.1 (`coro: essential hypotheses`)

- Restated statement in current notation, with all four items retained:
  for nonempty \(H\) and \(t=\operatorname{DDim}_{p,d}(H)\),
  1. \(H\) has at most \(p^d2^{d^2}\) \((p,d)\)-essential functions;
  2. if nonempty \(G\subseteq H\) and
     \(\operatorname{DDim}_{p,d}(G)=\operatorname{DDim}_{p,d}(H)\), every
     \((p,d)\)-essential function of \(G\) is \((p,d)\)-essential to \(H\);
  3. if
     \(\operatorname{DDim}_{2p,d}(H)=\operatorname{DDim}_{p,d}(H)\), then
     \(H\) has at least one \((p,d)\)-essential function;
  4. if \(t=0\), then \(H\) is finite and its essential functions are
     exactly all functions in \(H\).
- Instantiated objects: \(H=H_i^r\ne\varnothing\), \(p=p_r\), and, where an
  item calls for it, a nonempty subclass \(G\).
- Assumption discharge: the same Definition 4.2 checks above.
- Conclusion used and non-output boundaries: Item 1 supplies the list bound;
  Item 4 supplies the exact nonempty DDim-zero identity. Item 2 is a
  same-\(p\) statement and is not used to erase the factor-two stage
  convention. Item 3 requires equality of the \(2p\)- and \(p\)-DDim of the
  same class and is not used to infer support from DDim nonnegativity alone.

### Accepted trace-event dependencies

- Source or name: accepted
  Propositions~\ref{prop:step-004-conditional-trace},
  \ref{prop:step-004-unconditional-trace}, and
  \ref{prop:step-005-trace-budget}, certified by their matching reviews.
- Restated statement: with \(e_S,e_i,\gamma=\alpha/16\), the exact event is
  \[
  E_{\rm good}:=\bigcap_{h\in C}\bigcap_{i=1}^k
  \left(
  \{e_S(h)>\gamma/3\Rightarrow
    |e_i(h)-e_S(h)|\le e_S(h)/(5d)\}
  \cap
  \{e_S(h)\le\gamma/3\Rightarrow e_i(h)\le\gamma/2\}
  \right).
  \tag{1}
  \]
  For every fixed indexed input, its conditional partition failure is at
  most \(\beta_{\rm tr}=\beta/4\), and the same bound holds jointly after
  integrating over any measurable sample law.
- Instantiated objects: exactly the current master error and all \(k\) block
  errors. Repeated points retain their indexed coordinates.
- Assumption discharge: the accepted dependency proofs discharge the trace
  quotient, finite union, fixed point, and scalar ranges. No block
  independence, realizability, or current source-class nonemptiness is part
  of (1).
- Conclusion used: (1) is the sole generated condition in the inclusion
  proof, and its probability budget remains unchanged.

## Local Derivation

On the \(d=0\) branch none of the positive-branch objects in this step is
evaluated. In the remainder fix \(d\ge1\), an arbitrary indexed labeled input
\(S=((x_u,y_u))_{u=1}^{n_0}\), and a realized partition with block index sets
\(I_1,\ldots,I_k\). Write

\[
e_S(h):=\frac1{n_0}\sum_{u=1}^{n_0}{\bf1}\{h(x_u)\ne y_u\},
\qquad
e_i(h):=\frac1m\sum_{u\in I_i}{\bf1}\{h(x_u)\ne y_u\},
\tag{2}
\]

and put

\[
\rho:=1-\frac1{2d},\qquad \gamma:=\frac\alpha{16}.
\tag{3}
\]

### unit_001: proposition

**Proposition (Exact endpoint and half-scale source map).**
\label{prop:step-006-source-map}
Under Assumption~\ref{assump:finite-littlestone} and the accepted
positive-branch parameter interface recorded in
Lemma~\ref{lem:step-005-ceiling-fixed-point}, if \(d\ge1\), then for every
\(i\in[k]\) the endpoint-totalized source classes and scales are

\[
H_{i,{\rm src}}^s
:=\{h\in C:e_i(h)\le\rho^s\gamma\},
\qquad
p_{s,{\rm src}}:=2^sn_0d,
\qquad 1\le s\le d+1.
\tag{4}
\]

The current branch objects are exactly

\[
H_i^r:=H_{i,{\rm src}}^{r+1}
=\{h\in C:e_i(h)\le\rho^{r+1}\gamma\},
\qquad
p_r:=2^rn_0d=\frac12p_{r+1,{\rm src}},
\qquad 0\le r\le d.
\tag{5}
\]

In particular, for every \(0\le r<d\),

\[
p_{r+1}=2p_r.
\tag{6}
\]

Equations (4)--(6) are the exact (S-H), (B-map), and consecutive-scale
interfaces. They do not identify the current \((H_i^r,p_r)\) with the
source's literal same-stage pair
\((H_{i,{\rm src}}^{r+1},p_{r+1,{\rm src}})\).

**Proof.** The source-version audit shows that (4) for \(s\le d\) is Lyu
v1's displayed threshold formula after the exact translation
\(\alpha_{\rm src}=\gamma\). The source algorithm uses stage \(d+1\), so
the first formula in (4) at \(s=d+1\) is the accepted same-formula endpoint
totalization. It is a definition and invokes no endpoint theorem.

The binding branch definition is (5). Direct substitution gives

\[
\frac12p_{r+1,{\rm src}}
=\frac12\,2^{r+1}n_0d
=2^rn_0d=p_r,
\]

and the same calculation with consecutive current indices gives (6).
The accepted positive-branch package makes \(n_0,d\) positive integers, so
every \(p_r\) is a positive integer. Finally \(H_i^r\subseteq C\), hence
every nonempty \(H_i^r\) has Littlestone dimension at most \(d\) by
Assumption~\ref{assump:finite-littlestone}. These are exactly the legality
conditions used later. \(\square\)

### unit_002: lemma

**Lemma (Cross-block geometric-threshold inclusion).**
\label{lem:step-006-cross-block-inclusion}
Under Assumption~\ref{assump:finite-littlestone} and
Proposition~\ref{prop:step-006-source-map}, fix any indexed input and
partition for which \(E_{\rm good}\) in (1) holds. Then, for every
\(0\le r<d\) and every \(i,i'\in[k]\),

\[
H_i^{r+1}\subseteq H_{i'}^r,
\qquad\text{and hence}\qquad
H_i^{r+1}\subseteq\bigcap_{i'=1}^kH_{i'}^r.
\tag{7}
\]

This includes the case \(d=1,r=0\), and it is valid vacuously if
\(H_i^{r+1}=\varnothing\).

**Proof.** Fix \(h\in H_i^{r+1}\). By (5),

\[
e_i(h)\le\rho^{r+2}\gamma.
\tag{8}
\]

There are exactly two guarded branches in (1).

If \(e_S(h)\le\gamma/3\), then (1) gives
\(e_{i'}(h)\le\gamma/2\). For \(0\le x\le1\), induction on \(j\) gives
\((1-x)^j\ge1-jx\): multiplying the induction hypothesis by \(1-x\)
adds the nonnegative term \(jx^2\). With \(x=1/(2d)\) and \(j=d\),

\[
\rho^d=\left(1-\frac1{2d}\right)^d\ge\frac12.
\tag{9}
\]

Since \(r+1\le d\) and \(0<\rho\le1\), (9) yields

\[
e_{i'}(h)\le\frac\gamma2
\le\rho^d\gamma
\le\rho^{r+1}\gamma.
\tag{10}
\]

If \(e_S(h)>\gamma/3\), put \(a_d:=1/(5d)\) within this proof. The two
relative-deviation clauses in (1) give

\[
(1-a_d)e_S(h)\le e_i(h),
\qquad
e_{i'}(h)\le(1+a_d)e_S(h).
\tag{11}
\]

Because \(a_d<1\), (8)--(11) imply

\[
e_{i'}(h)
\le\frac{1+a_d}{1-a_d}e_i(h)
\le\frac{1+a_d}{1-a_d}\rho^{r+2}\gamma.
\tag{12}
\]

The last factor is at most \(\rho^{r+1}\gamma\), since

\[
(1-a_d)-(1+a_d)\rho
=\frac1{10d}+\frac1{10d^2}>0.
\tag{13}
\]

Thus (12) gives the desired membership in \(H_{i'}^r\). The argument holds
for every (i'), proving (7). When \(d=1,r=0\), (9) is equality
\(\rho=1/2\), while (13) remains strictly positive, so both branches still
close. \(\square\)

### unit_003: proposition

**Proposition (Exact essential-function lists and source boundaries).**
\label{prop:step-006-essential-lists}
Under Assumption~\ref{assump:finite-littlestone} and
Proposition~\ref{prop:step-006-source-map}, define, for \(0\le r\le d\),

\[
\mathcal L_i^r:=
\begin{cases}
\varnothing,&H_i^r=\varnothing,\\
\operatorname{Ess}_{p_r,d}(H_i^r),&H_i^r\ne\varnothing,
\end{cases}
\tag{14}
\]

where the second line is the exact actual-function set in Lyu Definition
4.3. Then all of the following hold.

1. If \(H_i^r\ne\varnothing\), every \(f\in\mathcal L_i^r\) has the
   following exact identity: in every optimal \((p_r,d)\)-decomposition of
   \(H_i^r\), there is a degree-attaining leaf \(G\subseteq H_i^r\) such
   that
   \[
   \operatorname{SOA}_G\equiv f\quad\text{on }X.
   \tag{15}
   \]
2. For
   \[
   L_r:=p_r^d2^{d^2},
   \qquad L:=L_d=p_d^d2^{d^2},
   \tag{16}
   \]
   one has
   \[
   |\mathcal L_i^r|\le L_r\le L,
   \qquad
   \left|\bigcup_{i=1}^k\mathcal L_i^r\right|\le kL,
   \qquad
   \log L=d\log p_d+d^2\log2.
   \tag{17}
   \]
3. For nonempty \(G\subseteq H\) with ambient Littlestone dimension at most
   \(d\), the exact Corollary 4.1 wrappers are
   \[
   \operatorname{DDim}_{p,d}(G)=\operatorname{DDim}_{p,d}(H)
   \Longrightarrow
   \operatorname{Ess}_{p,d}(G)\subseteq
   \operatorname{Ess}_{p,d}(H),
   \tag{18}
   \]
   and
   \[
   \operatorname{DDim}_{2p,d}(H)=\operatorname{DDim}_{p,d}(H)
   \Longrightarrow
   \operatorname{Ess}_{p,d}(H)\ne\varnothing.
   \tag{19}
   \]
4. If \(H_i^r\ne\varnothing\) and
   \(\operatorname{DDim}_{p_r,d}(H_i^r)=0\), then
   \[
   H_i^r\text{ is finite},
   \qquad \mathcal L_i^r=H_i^r
   \quad\text{as sets of functions on }X.
   \tag{20}
   \]
   If \(H_i^r=\varnothing\), (14), rather than (20), is the total definition.

**Proof.** Fix a nonempty \(H_i^r\). Proposition~\ref{prop:step-006-source-map}
and Assumption~\ref{assump:finite-littlestone} discharge the positive-integer
and ambient-dimension hypotheses of Lyu Definition 4.2. Its admissible set is
nonempty by the checked source existence claim, so an optimal decomposition
exists. Statement (15) is exactly Definition 4.3 translated to current
notation, including its quantifier over every optimal decomposition and its
identity of actual functions.

Fix one optimal decomposition. Every essential function must equal the SOA
of at least one degree-attaining leaf of this fixed tree. Distinct essential
functions cannot be assigned to the same leaf, because one leaf has one SOA
function. Lyu Lemma 4.1 bounds all leaves by \(p_r^d2^{d^2}=L_r\), proving
the first inequality in (17). Since \(r\le d\), (5) gives \(p_r\le p_d\),
so \(L_r\le L\). A finite union has cardinality at most the sum of its
cardinalities, giving the union bound in (17); duplicates across blocks only
decrease it. Taking the logarithm of the exact positive expression in (16)
gives the last equality in (17), and in particular the row's requested
upper bound holds with equality.

Equations (18) and (19) are precisely Items 2 and 3 of Lyu Corollary 4.1.
Their displayed hypotheses are retained: (18) is same-scale, while (19)
compares the same class at \(2p\) and \(p\). Equation (20) is exactly Item 4.
No source claim is applied when \(H_i^r\) is empty.

Neither Definition 4.3 nor the leaf count assumes that \(C\) or \(H_i^r\)
is finite. Thus (17) remains valid for infinite \(C\). Moreover, (15) and
(20) compare functions on all of \(X\). Two distinct functions having the
same master-sample trace remain distinct list elements if both are essential;
multiple occurrences of the same function are set-deduplicated. No trace
representative is selected. \(\square\)

### unit_004: proposition

**Proposition (Factor-two decomposition pairing and exact essentiality).**
\label{prop:step-006-factor-two}
Under Assumption~\ref{assump:finite-littlestone},
Propositions~\ref{prop:step-006-source-map} and
\ref{prop:step-006-essential-lists}, and
Lemma~\ref{lem:step-006-cross-block-inclusion}, suppose \(E_{\rm good}\)
holds. Fix \(0\le r<d\), \(i_*,i\in[k]\), and assume
\(H_{i_*}^{r+1}\ne\varnothing\). Then

\[
\mathcal G:=H_{i_*}^{r+1}\subseteq H_i^r=: \mathcal H,
\qquad
(2p,d)=(p_{r+1},d),
\qquad
(p,d)=(p_r,d),
\tag{21}
\]

is an exact admissible instantiation of Lyu Lemma 4.3. Consequently,

\[
\operatorname{DDim}_{p_{r+1},d}(H_{i_*}^{r+1})
\le
\operatorname{DDim}_{p_r,d}(H_i^r).
\tag{22}
\]

If both sides of (22) equal \(t\), fix any optimal
\((p_{r+1},d)\)-decomposition of \(H_{i_*}^{r+1}\) and any leaf \(G_v\) in
it with \(\operatorname{LD}(G_v)=t\). Then the actual function

\[
f:=\operatorname{SOA}_{G_v}:X\to\{0,1\}
\tag{23}
\]

satisfies

\[
f\in\operatorname{Ess}_{p_r,d}(H_i^r)=\mathcal L_i^r.
\tag{24}
\]

More explicitly, every optimal \((p_r,d)\)-decomposition of \(H_i^r\)
has a dimension-\(t\) leaf \(H_u\) for which

\[
\operatorname{SOA}_{H_u}\equiv f
\quad\text{on every }x\in X.
\tag{25}
\]

**Proof.** Lemma~\ref{lem:step-006-cross-block-inclusion} gives the class
inclusion in (21). Since the left class is nonempty, the right class is also
nonempty. Both are subclasses of \(C\) and hence have Littlestone dimension
at most \(d\). Proposition~\ref{prop:step-006-source-map} gives
\(p_{r+1}=2p_r\) with \(p_r\in\mathbb N\). Every hypothesis of Lyu Lemma
4.3 is therefore discharged exactly, proving (22).

Now assume equality at \(t\) and keep the chosen left decomposition and leaf
\(G_v\) fixed. Let an optimal \((p_r,d)\)-decomposition of \(H_i^r\) be
arbitrary. Lyu Lemma 4.3 applies to this arbitrary pair of optimal
decompositions and produces a dimension-\(t\) leaf \(H_u\) satisfying (25).
Because the right decomposition was arbitrary, Definition 4.3 says exactly
that the function \(f\) in (23) is \((p_r,d)\)-essential to \(H_i^r\),
which is (24) by (14). This proves actual-function essentiality; equality on
the indexed sample alone would not prove (24) and was never used.

If \(H_{i_*}^{r+1}=\varnothing\), its list is already totalized as empty and
no DDim, SOA, or source-lemma claim is made. The proposition does not infer a
plateau, a score, a common item, or a strict dimension drop. \(\square\)

### unit_005: lemma

**Lemma (Leaf lower scale and inherited irreducibility).**
\label{lem:step-006-leaf-irreducibility}
Under Assumption~\ref{assump:finite-littlestone},
Proposition~\ref{prop:step-006-source-map}, and the accepted positive-branch
parameter interface, fix \(0\le r\le d\), a nonempty \(H_i^r\), an optimal
\((p_r,d)\)-decomposition, and a degree-attaining leaf
\(G\subseteq H_i^r\) with \(t=\operatorname{LD}(G)\). Then \(G\) is

\[
K:=p_r2^{d-t}\text{-irreducible},
\tag{26}
\]

and

\[
K\ge p_0=n_0d\ge\max\{n_0,d+1\}.
\tag{27}
\]

Consequently \(G\) is both \(n_0\)-irreducible and
\((d+1)\)-irreducible.

**Proof.** The leaf clause of checked Lyu Definition 4.2 gives (26)
directly. Since \(0\le t\le d\), \(2^{d-t}\ge1\); since \(r\ge0\),
\(p_r\ge p_0\). Hence

\[
K=p_r2^{d-t}\ge p_r\ge p_0=n_0d.
\tag{28}
\]

The accepted positive-branch parameter package gives \(n_0=km\) with
\(k\ge2\) and \(m\ge1\), so \(n_0\ge2\). Because \(d\ge1\),

\[
n_0d\ge n_0,
\qquad
n_0d\ge2d\ge d+1,
\tag{29}
\]

which proves (27).

It remains to verify the shorter-length wrapper rather than silently change
the source irreducibility parameter. Let a nonempty class \(F\) be
\(K\)-irreducible and let \(1\le\ell\le K\). Given arbitrary points
\(x_1,\ldots,x_\ell\), extend them to \(x_1,\ldots,x_K\) by repeating any
fixed point of the nonempty domain \(X\). Let \(F_j\) be the restriction of
\(F\) by the first \(j\) labels
\(\operatorname{SOA}_F(x_1),\ldots,\operatorname{SOA}_F(x_j)\). Then
\(F_K\subseteq F_\ell\subseteq F\), so monotonicity of Littlestone
dimension under inclusion and \(K\)-irreducibility give

\[
\operatorname{LD}(F)
=\operatorname{LD}(F_K)
\le\operatorname{LD}(F_\ell)
\le\operatorname{LD}(F).
\tag{30}
\]

Thus equality holds throughout, proving \(\ell\)-irreducibility. Apply this
with \(F=G\), \(\ell=n_0\), and \(\ell=d+1\), which are both at most \(K\)
by (27).

At \(d=1,r=0\), the first scale is \(p_0=n_0\), the consecutive pair is
\((p_1,p_0)=(2n_0,n_0)\), and (29) gives \(p_0=n_0\ge2=d+1\). Thus the
smallest permitted dimension and first current stage lose neither required
irreducibility interface. \(\square\)

## Target-Step Assembly

The exact current/source convention is established by
Proposition~\ref{prop:step-006-source-map}. It explicitly totalizes Lyu
v1's consumed \(d+1\) endpoint and proves

\[
H_i^r=H_{i,{\rm src}}^{r+1},
\qquad
p_r=\tfrac12p_{r+1,{\rm src}},
\qquad
p_{r+1}=2p_r,
\tag{31}
\]

so no literal source-pair identity is asserted. Accepted
Proposition~\ref{prop:step-005-trace-budget} supplies the generated event
\(E_{\rm good}\) with conditional and unconditional failure at most
\(\beta/4\). On that event,
Lemma~\ref{lem:step-006-cross-block-inclusion} proves, for every
\(0\le r<d\),

\[
H_i^{r+1}\subseteq\bigcap_{i'=1}^kH_{i'}^r
\tag{32}
\]

in both the high- and low-master-error branches.

For every arbitrary input, Proposition~\ref{prop:step-006-essential-lists}
defines empty-class lists as empty. For every nonempty current class, it
instantiates exactly Lyu Definition 4.2, Lemma 4.1, Definition 4.3, and all
four clauses of Corollary 4.1. In particular, list membership has an exact
degree-attaining leaf witness with equality as functions on \(X\),

\[
|\mathcal L_i^r|\le p_r^d2^{d^2}\le L,
\qquad
\log L=d\log p_d+d^2\log2,
\tag{33}
\]

and a nonempty DDim-zero class satisfies
\(\mathcal L_i^r=H_i^r\) exactly. This conclusion remains valid for infinite
\(C\) and does not quotient duplicate traces.

Whenever the left class in (32) is nonempty,
Proposition~\ref{prop:step-006-factor-two} checks every hypothesis of Lyu
Lemma 4.3 using the exact pair

\[
(\mathcal G,\mathcal H,2p,p)
=(H_{i_*}^{r+1},H_i^r,p_{r+1},p_r).
\tag{Pair}
\]

It exports both the DDim comparison and, under equality, the same actual SOA
function in every optimal right decomposition, hence exact current-list
essentiality. It does not take the later step of forming a potential or
claiming a common item.

Finally, Lemma~\ref{lem:step-006-leaf-irreducibility} applies to every
degree-attaining leaf witness and proves

\[
p_r2^{d-t}\ge p_0=n_0d\ge\max\{n_0,d+1\},
\tag{Irred}
\]

together with the explicit shorter-sequence argument. Thus every exact leaf
SOA witness exported here has the \(n_0\)- and \((d+1)\)-irreducibility
interfaces required by later steps. Equations (31)--(33), (Pair), and
(Irred), with the empty/nonempty split above, prove exactly the accepted
`step_006` row and no later selection, privacy, empirical-error, or PAC
claim.

## Explicit Rate Audit

- Exposed variables: \(d,r,p_r,p_d,n_0,k\), the exact list cardinalities,
  and \(L=p_d^d2^{d^2}\). The event interface retains
  \(\beta_{\rm tr}=\beta/4\).
- Hidden constants may depend on: None. The source list bound has coefficient
  one and the logarithmic identity is exact.
- Hidden constants may not depend on: \((d,v,\alpha,\beta,\varepsilon,
  \delta,k,m,n_0,r,C,X,S,\mathcal P)\), any class, list, leaf, trace, or
  event.
- Fixed quantities: for the deterministic structural conclusions, the
  indexed input and realized partition are fixed. For the probability
  interface, the public parameters and input are fixed before partition
  randomness.
- Probability mode: the map, lists, source wrappers, and irreducibility are
  deterministic. Inclusion is conditional on the generated
  \(E_{\rm good}\), whose accepted failure bound is pointwise conditional
  over the partition and also joint unconditional after the tower
  conversion. No expectation or independence upgrade occurs here.
- Horizon mode: one fixed master input, \(d+1\) current stages
  \(r=0,\ldots,d\), and the \(d\) exact transitions \(r<d\).
- Norm mode: scalar empirical binary error in (2), exact equality of binary
  functions on \(X\), and Littlestone/decomposition dimensions. No
  population metric is used.
- Admissibility conditions and auxiliary tolerances: \(d\ge1\),
  \(p_r\in\mathbb N\), \(0\le r\le d\), and nonempty classes for source
  DDim/SOA uses. The only tolerance is the inherited
  \(\gamma=\alpha/16\); no new tolerance is introduced.
- Term absorption or simplification inequalities: the complete threshold
  relations are (9)--(13); the complete list simplification is
  \(p_r\le p_d\); and the complete irreducibility scale relations are
  (28)--(29). No term is dropped by asymptotic notation.
- Probability conversion: None performed here. The accepted conditional and
  unconditional interfaces are preserved verbatim.
- Contribution to any Rate Specialization Bridge: (33) exports exactly
  \(\log L=d\log p_d+d^2\log2\) for later mechanism and teacher
  substitutions. It introduces no \(\log|C|\) and no trace-dependent hidden
  factor.
- Baseline-reduction check: at \(d=1\), the sole transition is
  \((p_1,p_0)=(2n_0,n_0)\), the low-error threshold inequality is tight at
  \(\rho=1/2\), and \(p_0\ge d+1\). At \(r=0\), the half-scale start already
  reaches both irreducibility targets. The \(d=0\) learner bypasses all these
  formulas. No source conclusion is weakened.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing, setting/sketch-defined objects: \((e_S,e_i,\gamma,
  E_{\rm good},\rho,H_{i,{\rm src}}^s,p_{s,{\rm src}},H_i^r,p_r,
  \operatorname{SOA},\operatorname{DDim},\operatorname{Ess})\), and
  \(\mathcal L_i^r\). They are exact setting expressions or checked source
  objects translated to current notation. Their minimal downstream interface
  is (31)--(33), (Pair), and (Irred).
- Public-facing envelope: \(L_r=p_r^d2^{d^2}\) and
  \(L=L_d=p_d^d2^{d^2}\) are defined directly from setting/sketch quantities
  and proved sufficient by
  Proposition~\ref{prop:step-006-essential-lists}; they are not free bounded
  constants.
- Appendix-local objects: an optimal decomposition tree, its restricted leaf
  classes, a degree-attaining leaf \(G\), its dimension \(t\), and
  \(K=p_r2^{d-t}\). Definition 4.2 supplies the first objects, while
  Lemma~\ref{lem:step-006-leaf-irreducibility} proves the bound on \(K\).
  Only the exact leaf witness and its two irreducibility conclusions are
  exported.
- Proof-local notation: \(a_d=1/(5d)\) is confined to the high-error branch
  of Lemma~\ref{lem:step-006-cross-block-inclusion}; \((\mathcal G,
  \mathcal H,p)\) in (21) only translate the source Lemma 4.3 arguments. None
  enters the downstream parameter surface.
- Constant provenance: \(1/(2d)\), \(1/(5d)\), and the factor two are fixed
  by the accepted source-threshold and stage conventions. The list factor
  \(2^{d^2}\) is the exact Lyu Lemma 4.1 conclusion. No new numerical,
  universal, radius, margin, or threshold constant is chosen.
- Assumption provenance: finite Littlestone dimension is primitive.
  Positive integer legality and \(n_0\ge2\) are accepted dependency outputs.
  Membership in \(E_{\rm good}\) is a derived generated condition from
  Propositions~\ref{prop:step-004-conditional-trace} and
  \ref{prop:step-005-trace-budget}, used only conditionally in the inclusion
  lemma. Nonemptiness is a local conditional hypothesis for each source
  invocation, never a theorem-facing assumption and never inferred on an
  arbitrary input.
- Empty and DDim-zero boundary: an empty \(H_i^r\) has list
  \(\varnothing\) by (14), and no SOA/DDim statement is attached to it. A
  nonempty class of DDim zero has the exact list \(H_i^r\) by (20), but this
  step does not assert that different blocks share an item. Later
  realizability, not this step, supplies utility-path common membership.
- Infinite-class and duplicate-trace boundary: source decomposition results
  use only finite Littlestone dimension. Lists contain actual functions, so
  infinite \(C\), repeated sample points, and distinct functions with the
  same trace do not alter (15)--(17).
- Generated-output flow: accepted Propositions~\ref{prop:step-004-conditional-trace}
  and \ref{prop:step-005-trace-budget} produce the event before
  Lemma~\ref{lem:step-006-cross-block-inclusion} consumes it. This step then
  produces inclusion, exact lists, factor-two comparison, exact leaf SOA
  identities, and irreducibility before any later structural, privacy,
  selection, or PAC consumer.
- Source audit boundary: every external statement used above was checked
  against arXiv:2510.00076v1 and its exact source labels. The endpoint is
  explicitly identified as a wrapper; the current list is explicitly
  identified as a half-scale variant; no source statement is credited with
  either non-output.
- Diagnostic boundary: the paired `global_proof_review.md` has status
  `ACCEPTED`. The only step-relevant diagnostic ideas used for planning were
  to split the two threshold branches, retain the exact \((2p_r,p_r)\) pair,
  and totalize empty inputs. Every mathematical assertion above was proved
  independently from the setting, accepted dependencies, and checked source
  results. The diagnostic was not used as evidence, a cited result, an
  assumption source, or authority to alter the target claim.
