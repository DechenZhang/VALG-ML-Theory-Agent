# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 2
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`

## Target Step Claim

- Intended claim: Prove bijective quotient factorization,
  \(\operatorname{VC}(\bar C)=v\), \(\operatorname{LD}(\bar C)=d\),
  \(T_N\) measurability and neighbor preservation, pushforward sampling, and
  the exact decoder-risk identity.
- Depends on: None.
- Assumptions used: Primitive
  `assump:finite-littlestone`,
  `assump:countable-evaluation-quotient`, and `assump:realizable-iid`.
- Technical challenge: Preserve the combinatorial dimensions and the raw
  target under arbitrary quotient fibers and potentially improper outputs.
- Intended proof tool or cited result: Direct quotient, tree, and shattering
  derivations, together with direct pushforward-measure identities.
- Output target: The quotient/source object map and the exact raw-risk bridge.
- Rate objective: None.
- Sketch-row review status: `PENDING`; acceptance of the sketch is supplied by
  the binding `ACCEPTED` proof-sketch review, not by this row-local field.

The controller-expanded target additionally requires all finite-sample maps,
including \(T_0\), to be handled; same-cell replacements and arbitrary labels
to be included in the neighbor proof; the standard-Borel output and
countable-discrete conventions to be explicit; and all measurability proofs
to proceed by countable cell or cylinder arguments without a measurable
selector.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:finite-littlestone`: \(C\) is nonempty and
    \(d=\operatorname{LD}(C)<\infty\). This is used for the stated value of
    \(d\) and for the exact \(d=0\) boundary.
  - `assump:countable-evaluation-quotient`: \(Q_C\) is finite or countably
    infinite and each quotient cell is in \(\Sigma\). This is the sole source
    of the measurable quotient and countable output coding.
  - `assump:realizable-iid`: utility samples have law \(P_{D,c}^N\) for an
    arbitrary probability measure \(D\) and arbitrary \(c\in C\). This is
    used only for the iid pushforward statement, not for adjacency.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts: None.

All quotient factorization, dimension preservation, data transport,
pushforward, and risk statements below are derived outputs. None is promoted
to an additional assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:countable-evaluation-quotient}, the evaluation relation defines a nonempty finite-or-countable quotient, \(\kappa\) is measurable, \(c\mapsto\bar c\) is a bijection, and every concept and decoded quotient hypothesis is measurable. | Constructs the exact quotient/factorization interface without a selector. |
| `unit_002` | proposition | Under Assumption~\ref{assump:countable-evaluation-quotient} and Proposition~\ref{prop:step-002-factorization}, \(Q_C\), \(Z_Q\), and \(Z_Q^N\) are countable discrete standard-Borel spaces and \((H_C,\mathcal H_C)\) is standard Borel with its stated cylinder sigma-field. | Fixes the input/output measurable-space conventions. |
| `unit_003` | lemma | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:countable-evaluation-quotient} and Proposition~\ref{prop:step-002-factorization}, finite shattered sets transfer in both directions with equal cardinality, so \(\operatorname{VC}(\bar C)=\operatorname{VC}(C)=v\). | Preserves VC dimension exactly. |
| `unit_004` | lemma | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:countable-evaluation-quotient} and Proposition~\ref{prop:step-002-factorization}, finite shattered Littlestone trees transfer in both directions at the same depth, so \(\operatorname{LD}(\bar C)=\operatorname{LD}(C)=d\); if \(d=0\), both classes are singletons and \(v=0\). | Preserves Littlestone dimension and the no-data boundary. |
| `unit_005` | proposition | Under Assumption~\ref{assump:countable-evaluation-quotient} and Propositions~\ref{prop:step-002-factorization}--\ref{prop:step-002-borel}, the one-record map and every \(T_N\), \(N\in\mathbb N_0\), are measurable, and any raw replace-one pair maps either to equality or to a quotient replace-one pair, for arbitrary labels. | Supplies the measurable raw-to-quotient data and adjacency bridge. |
| `unit_006` | proposition | Under Assumptions~\ref{assump:countable-evaluation-quotient} and \ref{assump:realizable-iid} and Propositions~\ref{prop:step-002-factorization} and \ref{prop:step-002-record-map}, \((T_N)_\#P_{D,c}^N=P_{\bar D,\bar c}^N\) for every \(D,c,N\). | Transfers realizable iid sampling exactly. |
| `unit_007` | proposition | Under Assumption~\ref{assump:countable-evaluation-quotient} and Propositions~\ref{prop:step-002-factorization}--\ref{prop:step-002-borel}, every \(\bar h\in H_C\), including improper outputs, has a measurable decoder and satisfies the exact measurable-risk identity \(\operatorname{err}_D(\operatorname{Dec}_C(\bar h),c)=\operatorname{err}_{\bar D}(\bar h,\bar c)\). | Gives the zero-residual object-target and population-risk bridge. |

Atomic step = no. The quotient construction, two dimension identities,
record measurability/adjacency, product-law transport, and risk transfer are
independent audit obligations and are separated above.

## Cited Result Applications

No paper result, accepted dependency result, or unproved standard theorem is
used. In particular, the standard-Borel assertion is proved directly by a
complete separable metric in Proposition~\ref{prop:step-002-borel}, and the
finite-product pushforward is checked on atoms in
Proposition~\ref{prop:step-002-iid-pushforward}.

The internal application ledger is:

| Result | Assumptions and instantiated objects | Exact conclusion used later | Assumption discharge and use |
| --- | --- | --- | --- |
| Proposition~\ref{prop:step-002-factorization} | The setting's \(X,\Sigma,C,Q_C\) under Assumption~\ref{assump:countable-evaluation-quotient} | Measurable \(\kappa\), bijective \(C\leftrightarrow\bar C\), measurable factorizations | Measurable cells and countability are primitive; used in all later local results. |
| Proposition~\ref{prop:step-002-borel} | The same finite/countable \(Q_C\), \(Z_Q\), and \(H_C\) | Exact discrete and product sigma-fields; standard-Borel output | Countability comes from the primitive assumption; used for cylinders in the record and risk results. |
| Lemma~\ref{lem:step-002-vc} | Raw and quotient finite shattering witnesses | \(\operatorname{VC}(\bar C)=v\) | The factorization proposition supplies the class bijection; used in target assembly. |
| Lemma~\ref{lem:step-002-ld} | Raw and quotient complete binary trees | \(\operatorname{LD}(\bar C)=d\) and the \(d=0\) singleton conclusion | Nonemptiness and finite \(d\) come from Assumption~\ref{assump:finite-littlestone}; used in target assembly and the boundary audit. |
| Proposition~\ref{prop:step-002-record-map} | The record map on \(Z_X\) and its finite coordinate powers | Measurable \(T_N\) and exact equal-or-replace-one transport | Quotient-cell measurability is primitive; used in iid transport and target assembly. |
| Proposition~\ref{prop:step-002-iid-pushforward} | Arbitrary \(D,c,N\) in the realizable iid mode | \((T_N)_\#P_{D,c}^N=P_{\bar D,\bar c}^N\) | Assumption~\ref{assump:realizable-iid} supplies the sampling mode; used in target assembly. |
| Proposition~\ref{prop:step-002-risk} | Arbitrary \(D,c\) and every \(\bar h\in H_C\) | Exact decoded-risk equality and measurable risk functional | The factorization and cylinder propositions discharge measurability; used in target assembly. |

## Local Derivation

### unit_001: proposition

**Proposition (Measurable evaluation factorization).**
\(\label{prop:step-002-factorization}\)
Under Assumption~\ref{assump:countable-evaluation-quotient}, for the nonempty
class \(C\) in the formalized basic setup, the relation
\[
x\equiv_Cx'\quad\Longleftrightarrow\quad
c(x)=c(x')\quad\hbox{for every }c\in C
\]
is an equivalence relation. Its quotient \(Q_C\) is nonempty and finite or
countably infinite, the canonical surjection
\(\kappa(x)=[x]_{\equiv_C}\) is measurable into \((Q_C,2^{Q_C})\), and
\[
\Phi:C\longrightarrow\bar C,\qquad \Phi(c)=\bar c,
\quad \bar c(\kappa(x))=c(x),
\]
is a bijection. Moreover, every \(c\in C\) and every decoded hypothesis
\(\operatorname{Dec}_C(\bar h)=\bar h\circ\kappa\),
\(\bar h\in H_C\), is \(\Sigma/2^{\{0,1\}}\)-measurable.

**Proof.** Reflexivity, symmetry, and transitivity follow coordinatewise from
equality of the evaluation vector \((c(x))_{c\in C}\), so the relation is an
equivalence relation. Since \(X\ne\varnothing\), its quotient is nonempty,
and its finite-or-countable cardinality is exactly the first clause of
Assumption~\ref{assump:countable-evaluation-quotient}. The quotient map is
surjective by construction.

For every \(A\subseteq Q_C\),
\[
\kappa^{-1}(A)=\bigcup_{q\in A}\kappa^{-1}(\{q\}).
\tag{1}
\]
The union is finite or countable, and each cell belongs to \(\Sigma\) by the
assumption. Hence \(\kappa\) is measurable. This is a direct cell argument;
it makes no choice of a representative of any cell.

If \(\kappa(x)=\kappa(x')\), then \(c(x)=c(x')\) for every \(c\in C\), so
\(\bar c(\kappa(x)):=c(x)\) is well-defined. Surjectivity of \(\Phi\) is the
definition of \(\bar C\). If \(\Phi(c)=\Phi(c')\), then for every \(x\in X\),
\[
c(x)=\bar c(\kappa(x))=\bar c'(\kappa(x))=c'(x),
\]
and therefore \(c=c'\) as functions. Thus \(\Phi\) is injective and hence
bijective.

Every map from the discrete space \(Q_C\) to \(\{0,1\}\) is measurable. More
explicitly, for \(b\in\{0,1\}\),
\[
c^{-1}(\{b\})
=\bigcup_{q:\bar c(q)=b}\kappa^{-1}(\{q\}),
\qquad
(\bar h\circ\kappa)^{-1}(\{b\})
=\bigcup_{q:\bar h(q)=b}\kappa^{-1}(\{q\}).
\tag{2}
\]
Both are countable unions of measurable cells. Thus the originally given
concepts and every possibly improper decoded output are measurable. The
argument uses the values of a quotient function on cells, never a selector
from the cells. \(\square\)

### unit_002: proposition

**Proposition (Countable quotient and output Borel structure).**
\(\label{prop:step-002-borel}\)
Under Assumption~\ref{assump:countable-evaluation-quotient} and
Proposition~\ref{prop:step-002-factorization}, \(Q_C\),
\(Z_Q=Q_C\times\{0,1\}\), and \(Z_Q^N\) for every
\(N\in\mathbb N_0\) are countable discrete standard-Borel spaces (with
\(Z_Q^0\) the one-point empty-tuple space). The output measurable space
\[
(H_C,\mathcal H_C)
=\left(\{0,1\}^{Q_C},\bigotimes_{q\in Q_C}2^{\{0,1\}}\right)
\]
is standard Borel, and \(\mathcal H_C\) is generated by the finite-coordinate
cylinders. In particular, each coordinate evaluation
\(e_q(\bar h)=\bar h(q)\) is measurable.

**Proof.** A finite or countably infinite discrete space is Polish under the
discrete metric: the metric is complete, and the whole countable space is a
countable dense set. Hence \(Q_C\), \(Z_Q\), and every finite power \(Z_Q^N\)
are standard Borel. Their Borel sigma-fields are their full power sets. For
\(N=0\), the only point is the empty tuple.

If \(Q_C\) is finite, then \(H_C\) is finite discrete and the conclusion is
immediate. If \(Q_C\) is countably infinite, fix an enumeration
\(Q_C=\{q_1,q_2,\ldots\}\) and put
\[
\rho(\bar h,\bar g)
:=\sum_{j=1}^{\infty}2^{-j}
  |\bar h(q_j)-\bar g(q_j)|.
\tag{3}
\]
A \(\rho\)-Cauchy sequence is eventually constant in each coordinate; the
coordinatewise limit belongs to \(H_C\), and the tail of the series in (3)
shows convergence to it. Thus \(\rho\) is complete. Functions that vanish
outside a finite initial segment form a countable dense subset. The topology
of \(\rho\) is exactly the product topology: fixing finitely many coordinates
gives a clopen cylinder, and sufficiently long initial-coordinate agreement
makes the tail in (3) arbitrarily small. Consequently this topology is
Polish and its Borel sigma-field is precisely the sigma-field generated by
finite-coordinate cylinders, namely \(\mathcal H_C\). Each \(e_q\) is a
coordinate map and therefore measurable. The enumeration is only an
enumeration of the already formed quotient; no raw representative is chosen.
\(\square\)

### unit_003: lemma

**Lemma (VC dimension is invariant under the evaluation quotient).**
\(\label{lem:step-002-vc}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:countable-evaluation-quotient} and
Proposition~\ref{prop:step-002-factorization}, a finite subset of \(X\) is
shattered by \(C\) only if its quotient image has the same cardinality and is
shattered by \(\bar C\); conversely, every finite subset of \(Q_C\) shattered
by \(\bar C\) has a same-cardinality raw lift shattered by \(C\). Therefore
\[
\operatorname{VC}(\bar C)=\operatorname{VC}(C)=v.
\tag{4}
\]

**Proof.** Let \(S=\{x_1,\ldots,x_s\}\subseteq X\) be shattered by \(C\). If
two distinct points \(x_i,x_j\) had \(\kappa(x_i)=\kappa(x_j)\), shattering
would provide a concept taking value \(0\) at one and \(1\) at the other,
contrary to the definition of \(\equiv_C\). Hence \(\kappa\) is injective on
\(S\), so \(|\kappa(S)|=s\). Given any labeling
\(\ell:\kappa(S)\to\{0,1\}\), shattering of \(S\) supplies a \(c\in C\)
with \(c(x)=\ell(\kappa(x))\) on \(S\). Its image \(\bar c=\Phi(c)\) realizes
\(\ell\) on \(\kappa(S)\). Thus \(\kappa(S)\) is shattered by \(\bar C\).

Conversely, let \(A=\{q_1,\ldots,q_s\}\subseteq Q_C\) be shattered by
\(\bar C\). For these finitely many cells, choose one
\(x_i\in\kappa^{-1}(\{q_i\})\). The points are distinct because the cells are
disjoint. For any labeling of \(\{x_1,\ldots,x_s\}\), use the same labels on
\(A\); quotient shattering supplies \(\bar c\in\bar C\), and the unique
\(c=\Phi^{-1}(\bar c)\) realizes the raw labels. Thus the raw lift is
shattered. Only finitely many representatives are chosen for this one
combinatorial witness; no representative map on \(Q_C\), measurable or
otherwise, is constructed. The attainable finite shattering cardinalities
are the same in both classes, proving (4). \(\square\)

### unit_004: lemma

**Lemma (Littlestone dimension is invariant under the evaluation quotient).**
\(\label{lem:step-002-ld}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:countable-evaluation-quotient} and
Proposition~\ref{prop:step-002-factorization}, a finite complete binary tree
is shattered by \(C\) if and only if a tree of the same depth obtained by
quotienting or finitely lifting its node labels is shattered by \(\bar C\).
Consequently,
\[
\operatorname{LD}(\bar C)=\operatorname{LD}(C)=d.
\tag{5}
\]
If \(d=0\), then \(C\) and \(\bar C\) are singletons and \(v=0\).

**Proof.** A complete binary \(X\)-labeled tree of depth \(t\) is a family
\((x_\sigma)_{\sigma\in\{0,1\}^{<t}}\). It is shattered by \(C\) when, for
each \(b=(b_1,\ldots,b_t)\in\{0,1\}^t\), some \(c_b\in C\) satisfies
\[
c_b(x_{b_{<r}})=b_r,
\qquad r=1,\ldots,t,
\tag{6}
\]
where \(b_{<r}=(b_1,\ldots,b_{r-1})\).

Suppose the raw tree is shattered and set
\(q_\sigma:=\kappa(x_\sigma)\). For each path \(b\), the quotient concept
\(\Phi(c_b)\) satisfies
\[
\Phi(c_b)(q_{b_{<r}})=c_b(x_{b_{<r}})=b_r,
\]
so the quotient-labeled tree is shattered. If one's tree convention requires
distinct instances along a path, that condition is automatic. Indeed, if a
quotient label repeated at two nodes on a root-to-node path, extend the path
at the later node using the bit opposite to the bit taken at the earlier
node. Equation (6) would then require one concept to assign two values to the
same quotient cell, a contradiction. Repetitions across incomparable
branches are harmless and are allowed by the usual tree definition.

Conversely, let \((q_\sigma)_{\sigma\in\{0,1\}^{<t}}\) be a quotient tree
shattered by \(\bar C\). It has only \(2^t-1\) nodes. Choose, separately for
these finitely many nodes, an \(x_\sigma\in\kappa^{-1}(\{q_\sigma\})\). For
each path, choose the witnessing \(\bar c_b\in\bar C\) and let
\(c_b=\Phi^{-1}(\bar c_b)\). Then
\[
c_b(x_{b_{<r}})=\bar c_b(q_{b_{<r}})=b_r,
\]
so the lifted raw tree is shattered at the same depth. Again, this finite
witness lift is not a global selector. The same finite depths are attainable
on both sides, proving (5).

Finally suppose \(d=0\). If two members \(c_0,c_1\in C\) were distinct, they
would disagree at some \(x\). Because the labels are binary, the one-node
tree labeled by \(x\) would have both branch labels realized and hence would
be shattered, contradicting \(d=0\). Nonemptiness therefore makes \(C\) a
singleton, and the bijection \(\Phi\) makes \(\bar C\) a singleton. A
singleton binary class shatters no one-point set, so Lemma~\ref{lem:step-002-vc}
gives \(v=0\). Notice that \(Q_C\) itself need not be a singleton: the unique
concept may take both binary values, in which case it has two evaluation
cells. \(\square\)

### unit_005: proposition

**Proposition (Measurable record transport and replacement adjacency).**
\(\label{prop:step-002-record-map}\)
Under Assumption~\ref{assump:countable-evaluation-quotient} and
Propositions~\ref{prop:step-002-factorization}--\ref{prop:step-002-borel},
the one-record map
\[
t:Z_X\to Z_Q,\qquad t(x,y)=(\kappa(x),y),
\tag{7}
\]
and every data map \(T_N=t^N\), \(N\in\mathbb N_0\), are measurable. If
\(s,s'\in Z_X^N\) differ in at most one coordinate, then their images are
equal or differ in exactly one coordinate. This conclusion holds on every
raw labeled input, including arbitrary nonrealizable labels and same-cell
replacements.

**Proof.** For each atom \((q,b)\in Z_Q\),
\[
t^{-1}(\{(q,b)\})=\kappa^{-1}(\{q\})\times\{b\}
\in\Sigma\otimes2^{\{0,1\}}.
\tag{8}
\]
The codomain \(Z_Q\) is countable discrete, so the preimage of an arbitrary
subset is a countable union of the sets in (8). Thus \(t\) is measurable.
For \(N\ge1\), the preimage of an atom of \(Z_Q^N\) is the measurable
rectangle
\[
T_N^{-1}\!\left(
 \left\{((q_r,b_r))_{r=1}^N\right\}
\right)
=\prod_{r=1}^N
  \bigl(\kappa^{-1}(\{q_r\})\times\{b_r\}\bigr).
\tag{9}
\]
Since \(Z_Q^N\) is countable discrete, another countable-union argument
proves measurability of \(T_N\). For \(N=0\), \(T_0\) is the unique map
between one-point empty-tuple spaces and is measurable.

If \(s=s'\), their images are equal. Otherwise, if \(s\) and \(s'\) differ
only at coordinate \(j\), all image coordinates
other than \(j\) agree. At coordinate \(j\), replacing \((x,y)\) by
\((x',y')\) has the following exhaustive behavior:

- if \(\kappa(x)=\kappa(x')\) and \(y=y'\), the quotient record is unchanged,
  so the full image datasets are equal;
- if \(\kappa(x)=\kappa(x')\) and \(y\ne y'\), only the quotient label at
  coordinate \(j\) changes;
- if \(\kappa(x)\ne\kappa(x')\), only coordinate \(j\) changes, regardless of
  the two labels.

Thus the images are equal or strict replace-one neighbors and, under the
setting's "differ in at most one coordinate" convention, are always
replace-one neighbors. No realizability condition was used. \(\square\)

### unit_006: proposition

**Proposition (Exact realizable iid pushforward).**
\(\label{prop:step-002-iid-pushforward}\)
Under Assumptions~\ref{assump:countable-evaluation-quotient} and
\ref{assump:realizable-iid}, Proposition~\ref{prop:step-002-factorization},
and Proposition~\ref{prop:step-002-record-map}, for every probability measure
\(D\) on \((X,\Sigma)\), every \(c\in C\), and every
\(N\in\mathbb N_0\),
\[
t_\#P_{D,c}=P_{\bar D,\bar c},
\qquad
(T_N)_\#P_{D,c}^N=P_{\bar D,\bar c}^N,
\quad \bar D=\kappa_\#D,
\tag{10}
\]
where \(\bar c=\Phi(c)\).

**Proof.** Proposition~\ref{prop:step-002-factorization} shows that \(c\) is
measurable. Hence \(x\mapsto(x,c(x))\) is measurable: the preimage of a
generating rectangle \(A\times\{b\}\) is
\(A\cap c^{-1}(\{b\})\). Thus \(P_{D,c}\) is well-defined. Likewise,
\(q\mapsto(q,\bar c(q))\) is measurable on the discrete quotient, so
\(P_{\bar D,\bar c}\) is well-defined. For each atom
\((q,b)\in Z_Q\),
\[
\begin{aligned}
(t_\#P_{D,c})(\{(q,b)\})
&=D\{x:\kappa(x)=q,\ c(x)=b\}\\
&=\mathbf 1\{b=\bar c(q)\}\,D(\kappa^{-1}(\{q\}))\\
&=\mathbf 1\{b=\bar c(q)\}\,\bar D(\{q\})
=P_{\bar D,\bar c}(\{(q,b)\}).
\end{aligned}
\tag{11}
\]
The second equality uses that \(c\) is exactly constant with value
\(\bar c(q)\) on the whole fiber \(\kappa^{-1}(\{q\})\). Equality on atoms
implies equality on all subsets of the countable discrete space \(Z_Q\).

For \(N\ge1\), evaluate both sides of the second identity in (10) on an atom
\(((q_r,b_r))_{r=1}^N\). By (9), the product-measure formula, and (11), its
probability under the left side is
\[
\prod_{r=1}^N
P_{D,c}\bigl(t^{-1}(\{(q_r,b_r)\})\bigr)
=\prod_{r=1}^N P_{\bar D,\bar c}(\{(q_r,b_r)\}),
\tag{12}
\]
which is its probability under \(P_{\bar D,\bar c}^N\). Since \(Z_Q^N\) is
countable discrete, atomwise equality proves equality of the measures.
Equation (12) also shows directly that deterministic quotienting preserves
iid sampling even when several raw draws lie in the same fiber or produce
repeated quotient records. For \(N=0\), both sides are the point mass at the
empty tuple. \(\square\)

### unit_007: proposition

**Proposition (Exact risk transfer for every quotient output).**
\(\label{prop:step-002-risk}\)
Under Assumption~\ref{assump:countable-evaluation-quotient} and
Propositions~\ref{prop:step-002-factorization}--\ref{prop:step-002-borel},
for every probability measure \(D\) on \((X,\Sigma)\), every \(c\in C\),
and every \(\bar h\in H_C\), with no requirement that
\(\bar h\in\bar C\), the disagreement sets are measurable and
\[
\operatorname{err}_D(\operatorname{Dec}_C(\bar h),c)
=\operatorname{err}_{\bar D}(\bar h,\bar c),
\qquad \bar D=\kappa_\#D,\quad \bar c=\Phi(c).
\tag{13}
\]
For fixed \(D,c\), the common value in (13), viewed as a function of
\(\bar h\in(H_C,\mathcal H_C)\), is measurable.

**Proof.** Define the quotient disagreement set
\[
A_{\bar h,\bar c}:=\{q\in Q_C:\bar h(q)\ne\bar c(q)\}.
\tag{14}
\]
It is measurable because \(Q_C\) is discrete. Proposition~\ref{prop:step-002-factorization}
gives \(c=\bar c\circ\kappa\) and a measurable decoder, and therefore
\[
\{x:\operatorname{Dec}_C(\bar h)(x)\ne c(x)\}
=\kappa^{-1}(A_{\bar h,\bar c}).
\tag{15}
\]
Taking \(D\)-measure and using the definition of pushforward gives
\[
\begin{aligned}
\operatorname{err}_D(\operatorname{Dec}_C(\bar h),c)
&=D(\kappa^{-1}(A_{\bar h,\bar c}))\\
&=(\kappa_\#D)(A_{\bar h,\bar c})
=\bar D\{q:\bar h(q)\ne\bar c(q)\}\\
&=\operatorname{err}_{\bar D}(\bar h,\bar c),
\end{aligned}
\]
which proves (13) with no fiber-size, injectivity, propriety, or support
condition.

For measurability in \(\bar h\), the finite-\(Q_C\) case is a finite sum of
coordinate-cylinder indicators. In the countably infinite case, use the
enumeration from Proposition~\ref{prop:step-002-borel}. Then the right side
of (13) is the pointwise increasing limit
\[
\lim_{J\to\infty}
\sum_{j=1}^J \bar D(\{q_j\})
\mathbf 1\{\bar h(q_j)\ne\bar c(q_j)\}.
\tag{16}
\]
Each partial sum is \(\mathcal H_C\)-measurable because it depends on finitely
many coordinate evaluations. Hence the limit is measurable. Equation (16)
uses quotient atoms and cylinders only; it does not select a raw point from
any fiber. Also, for every fixed \(x\in X\), the output-coordinate map
\(\bar h\mapsto\operatorname{Dec}_C(\bar h)(x)=e_{\kappa(x)}(\bar h)\) is
\(\mathcal H_C\)-measurable by Proposition~\ref{prop:step-002-borel}.
\(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-002-factorization} constructs the canonical
evaluation quotient and the bijection \(\Phi:C\leftrightarrow\bar C\), while
also deriving measurability of all raw concepts and every decoded quotient
output. Proposition~\ref{prop:step-002-borel} establishes the exact
countable-discrete input spaces and standard-Borel product output required by
the setting. Lemma~\ref{lem:step-002-vc} and
Lemma~\ref{lem:step-002-ld} transfer, in both directions, every finite VC
witness and every finite Littlestone-tree witness, proving
\(\operatorname{VC}(\bar C)=v\) and \(\operatorname{LD}(\bar C)=d\), with
the singleton-class conclusion at \(d=0\).

Proposition~\ref{prop:step-002-record-map} proves measurability of the record
map and every \(T_N\) by atom/cylinder preimages, and proves exact
equal-or-replace-one transport for same-cell changes, label changes, and all
other arbitrary raw replacements. Proposition~\ref{prop:step-002-iid-pushforward}
then proves the realizable iid product-law identity for every finite sample
size, including zero. Finally, Proposition~\ref{prop:step-002-risk} identifies
the raw disagreement set as the preimage of the quotient disagreement set
and proves the exact population-risk equality for every \(\bar h\in H_C\),
including improper outputs and arbitrary fibers. These named results jointly
prove every clause of the exact sketch row and the controller-expanded
target. No accepted dependency or global diagnostic statement is used as
mathematical authority.

## Provenance Audit

- Setting claims used as primitives: only the three stable assumptions listed
  in `## Allowed Assumptions And Dependencies` and the basic definitions of
  \(Q_C,\kappa,\bar C,H_C,T_N,P_{D,c},P_{\bar D,\bar c}\), and the two risks.
- Derived here: quotient-map measurability; concept and decoder
  measurability; the class bijection; all standard-Borel/cylinder facts;
  VC/LD equality; the \(d=0\) singleton conclusion; every \(T_N\) interface;
  neighbor transport; iid pushforward; risk measurability and equality.
- Accepted dependency claims: None.
- External theorem or paper claims: None.
- Selector boundary: finite representatives are chosen only inside one fixed
  finite VC or tree witness. No map choosing a representative from every
  quotient cell is defined or used in a measurable argument.
- Generated-object provenance: there is no event, learner output law,
  stability condition, or local invariant assumed in this step. An
  individual \(\bar h\) is universally quantified over the setting-defined
  output space.

## Explicit Rate Audit

None. This is a structural and exact-measure-transport step. It introduces no
rate, hidden constant, approximation, confidence conversion, horizon
upgrade, auxiliary tolerance, or term absorption. Its probability statement
is the exact fixed-\(N\) product-law identity (10), and its norm is exact
binary population error in (13).

## Boundary And Degeneracy Audit

| Boundary | Resolution |
| --- | --- |
| \(d=0\) | Lemma~\ref{lem:step-002-ld} proves that nonempty \(C\) and \(\bar C\) are singletons and \(v=0\). The quotient may still have two cells. The setting's unique no-data output is the target itself and has zero decoded risk. |
| Empty sample \(N=0\) | \(Z_X^0\) and \(Z_Q^0\) are one-point empty-tuple spaces; \(T_0\) is measurable, adjacency collapses to equality, and both product laws in (10) are the same point mass. |
| Non-singleton or repeated fibers | Cell unions prove measurability without choosing representatives. Multiple raw observations in one fiber may collapse to repeated quotient records, but (11)--(12) preserve their iid product law exactly. |
| Same-cell raw replacement | With the same label it maps to equality; with a changed label it maps to one quotient-record replacement. |
| Arbitrary labels / nonrealizable privacy inputs | Proposition~\ref{prop:step-002-record-map} does not use \(y=c(x)\); every label pair is covered. Realizability enters only Proposition~\ref{prop:step-002-iid-pushforward}. |
| Finite quotient | Every quotient data space and \(H_C\) is finite discrete; all sums and cylinder arguments are finite. |
| Countably infinite quotient | Countable cell unions, countable atom unions, the complete separable metric (3), and the monotone cylinder sum (16) establish every required measurable interface. |
| Potentially improper output | Proposition~\ref{prop:step-002-risk} quantifies over all \(H_C\), not only \(\bar C\); decoder measurability and exact risk need only fiberwise constancy of the target. |
| Finite witness lifts | The VC and tree converse directions make only finitely many witness-local choices. They do not create a global or measurable selector. |

## Blockers

None.

## Notation And Assumption Notes

- \(\Phi(c)=\bar c\) is the only new public-facing symbol. It names the
  setting-defined factorization map and is proved bijective in
  Proposition~\ref{prop:step-002-factorization}. This is a set-theoretic
  bijection; no sigma-field or measurable-selector structure on \(C\) is
  asserted or needed.
- The one-record abbreviation \(t(x,y)=(\kappa(x),y)\) is proof-local;
  \(T_N=t^N\) is the setting-defined public-facing data map.
- The enumeration \((q_j)\), metric \(\rho\), tree node labels
  \((x_\sigma),(q_\sigma)\), and disagreement set
  \(A_{\bar h,\bar c}\) are proof-local. The enumeration indexes quotient
  atoms only and is not a selector from raw fibers.
- All other objects are setting-defined and public-facing:
  \(Q_C,\kappa,\bar C,H_C,\mathcal H_C,\operatorname{Dec}_C,\bar D\), the
  two labeled laws, and the two population risks.
- No new constant, threshold, rate, margin, admissibility parameter, event,
  bounded quantity, or invariant is introduced.
- Assumption provenance is exact: countability and measurable cells are
  primitive under `assump:countable-evaluation-quotient`; finite
  Littlestone dimension and nonemptiness are primitive under
  `assump:finite-littlestone`; realizable iid sampling is primitive under
  `assump:realizable-iid`. Every other condition used is proved in a named
  local result.
- The optional `global_proof.md` was read only after its paired
  `global_proof_review.md` was verified current and `ACCEPTED` at SHA-256
  `490e6b89ecd229a41dac2b24c82bb277cbacfd66acff00f4f5c82fc58ac7cf09`.
  Its step-relevant planning suggestion was to organize the proof through
  cell unions, finite shattering/tree lifts, atomwise pushforwards, and the
  preimage identity for risk. Every one of those arguments is derived above
  from the setting. The diagnostic was not used as evidence, a cited result,
  an assumption source, or authority to alter the target claim.
