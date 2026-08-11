# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove: (i) pullback is a bijection \(\bar C_i\to C_i\) preserving all finite label patterns, \(\operatorname{VC}(\bar C_i)=1\), and \(\operatorname{LD}(\bar C_i)=d_i\); (ii) \(\operatorname{VC}(C)=k\), \(\operatorname{LD}(C)=\sum_i d_i\), and finite \(\log\lvert C\rvert=\sum_i\log\lvert C_i\rvert\); (iii) \(s_i\ge2\), \(s_i\le r_i+2\), \(M\ge2k\); and (iv) \(\mathcal H^\oplus\) is standard Borel, decoding is measurable, and quotient/raw factor/global risks agree exactly and measurably.
- Depends on: None.
- Assumptions used: Primitive: `assump:canonical-product`, `assump:vc-one-factors`, `assump:countably-coded-evaluation`.
- Technical challenge: Preserve Littlestone trees through quotient collisions and prove the product upper LD inequality without importing ordering/cardinality; expose exact risk measurability on countably many cells.
- Intended proof tool or cited result: Direct evaluation-pattern bijection; concatenated trees and factorwise online prediction; countable-product standard-Borel facts; monotone limits of finite evaluation sums.
- Output target: Quotient/product structural certificate used by all later steps.
- Rate objective: Structural-parameter explicit: exact \(k,d_i,s_i,M\) dependence; deterministic, fixed-sample convention; exact \(0\)-\(1\) risk; no hidden constants/cardinality.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:canonical-product}: \(X=\bigsqcup_{i=1}^kX_i\), with finite \(k\ge1\), and restriction is a bijection \(C\to\prod_i C_i\).
  - Assumption~\ref{assump:vc-one-factors}: each \(C_i\) is nonconstant, \(\operatorname{VC}(C_i)=1\), and \(d_i=\operatorname{LD}(C_i)<\infty\).
  - Assumption~\ref{assump:countably-coded-evaluation}: each \(Q_i\) is finite or countable, \(X_i\in\Sigma\), and every quotient cell \(\kappa_i^{-1}(\{q\})\) is measurable.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts: None; the binding row has no dependencies.

The target is unconditional under the three primitive structural assumptions. No generated event, learner property, boundedness condition, or measurable-selector hypothesis is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:vc-one-factors} and \ref{assump:countably-coded-evaluation}, quotient pullback is a bijection \(\bar C_i\to C_i\), preserves every finite evaluation pattern and every finite Littlestone tree, and hence preserves factor VC and Littlestone dimensions. | Handles quotient collisions and proves all factor quotient identities. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors}, the disjoint full product has \(\operatorname{VC}(C)=k\); its cardinality is the finite product of factor cardinalities, yielding the stated logarithmic identity when all factors are finite. | Proves product VC and the exact finite-cardinality clause. |
| `unit_003` | lemma | For any nonempty binary class of finite Littlestone dimension \(d\), a rank-based predictor makes at most \(d\) mistakes on every realizable sequence, without an order or cardinality assumption. | Supplies the local tool for the product Littlestone upper bound. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors}, and using Lemma~\ref{lem:step-001-rank-predictor}, \(\operatorname{LD}(C)=\sum_i d_i\). | Proves both product LD inequalities, including constant-factor and \(k=1\) boundaries. |
| `unit_005` | lemma | Under Assumption~\ref{assump:vc-one-factors}, the accepted definitions \(r_i=\log_2^*d_i\), \(s_i=1+\log_2^*(d_i+1)\), and \(M=\sum_i s_i\) satisfy \(s_i\ge2\), \(s_i\le r_i+2\), and \(M\ge2k\). | Proves every scalar comparison in the binding row. |
| `unit_006` | lemma | Under Assumptions~\ref{assump:canonical-product} and \ref{assump:countably-coded-evaluation}, every \((\mathcal H_i,\mathscr H_i)\) and their finite product are standard Borel; joint evaluation and the finite-evaluation-cylinder decoder are measurable; every decoded hypothesis is \(\Sigma\)-measurable. | Establishes the exact legal output convention. |
| `unit_007` | lemma | Under Assumptions~\ref{assump:canonical-product} and \ref{assump:countably-coded-evaluation}, and Lemma~\ref{lem:step-001-quotient-invariance}, quotient, raw-factor, and global risks agree by an exact countable-cell formula, and these risks are measurable functions of the quotient output. | Proves the zero-residual risk bridge, including zero-mass factors and arbitrary-support distributions. |

Atomic step = no. The seven units isolate independent quotient, combinatorial-dimension, scalar, measurable-space, and risk obligations.

## Cited Result Applications

No external paper result is used in this step. In particular, neither the accepted global diagnostic nor a literature theorem is proof authority here. The two standard-looking ingredients -- the finite-LD rank predictor and the standard-Borel structure of a countable binary product -- are proved directly in `unit_003` and `unit_006`.

The local results used later in this step or in the target assembly are restated here in current notation:

| Result | Restated statement and instantiated objects | Assumption discharge | Conclusion used |
| ------ | ------------------------------------------- | -------------------- | --------------- |
| Lemma~\ref{lem:step-001-quotient-invariance} | For \(\mathsf P_i\bar h=\bar h\circ\kappa_i\), \(\mathsf P_i:\bar C_i\to C_i\) is bijective and preserves finite patterns and finite mistake trees. | Evaluation equivalence and quotient surjectivity come from the setting and Assumption~\ref{assump:countably-coded-evaluation}; factor dimensions come from Assumption~\ref{assump:vc-one-factors}. | Exact factor VC/LD and target pullback. |
| Lemma~\ref{lem:step-001-vc-cardinality} | Full independent restriction tuples shatter one chosen point per VC-one factor, no \(k+1\)-point set is shattered, and finite factor cardinalities multiply. | Full-product surjectivity is Assumption~\ref{assump:canonical-product}; factor VC is Assumption~\ref{assump:vc-one-factors}. | \(\operatorname{VC}(C)=k\) and finite log-cardinality identity. |
| Lemma~\ref{lem:step-001-rank-predictor} | A nonempty class \(H\) with finite \(\operatorname{LD}(H)=d\) has a binary rank predictor with realizable mistake bound \(d\). | This is proved for an arbitrary class; no setting assumption, order, finiteness, or selection theorem is used. | Product LD upper bound. |
| Proposition~\ref{prop:step-001-product-littlestone} | The disjoint full product satisfies \(\operatorname{LD}(C)=\sum_i d_i\). | Factor depths are from Assumption~\ref{assump:vc-one-factors}; tuple realization is Assumption~\ref{assump:canonical-product}; the upper bound uses Lemma~\ref{lem:step-001-rank-predictor}. | Exact product LD identity. |
| Lemma~\ref{lem:step-001-logstar} | \(s_i\ge2\), \(s_i\le r_i+2\), and \(M\ge2k\). | \(d_i\ge1\) follows from factor VC one in Assumption~\ref{assump:vc-one-factors}; all other quantities are binding definitions. | Scalar structural interface for later rate steps. |
| Lemma~\ref{lem:step-001-output-measurability} | Countable binary output products are standard Borel, their evaluation map is jointly measurable, and decoding is measurable in the setting's finite-cylinder sense. | Countability and measurable cells are Assumption~\ref{assump:countably-coded-evaluation}; finite \(k\) and the measurable partition are Assumption~\ref{assump:canonical-product}. | Legal quotient output and raw decoding. |
| Lemma~\ref{lem:step-001-risk-pullback} | For every fixed target and probability measure, factor pullback and global decoding preserve exact \(0\)-\(1\) risk, whose output dependence is measurable. | The class pullback is Lemma~\ref{lem:step-001-quotient-invariance}; cells and the finite partition are supplied by the two structural assumptions. | Exact factor/global risk interface. |

## Local Derivation

### unit_001: lemma

**Lemma (Evaluation-quotient invariance).** \(\label{lem:step-001-quotient-invariance}\)

Statement:
Under Assumptions~\ref{assump:vc-one-factors} and \ref{assump:countably-coded-evaluation}, for every \(i\), define pullback on all quotient hypotheses by
\[
\mathsf P_i:\mathcal H_i\longrightarrow\{0,1\}^{X_i},
\qquad
\mathsf P_i(\bar h_i)=\bar h_i\circ\kappa_i.
\]
Then \(\mathsf P_i:\bar C_i\to C_i\) is a bijection. For every finite raw tuple \(x_1,\ldots,x_m\in X_i\),
\[
\bigl\{(\bar c_i(\kappa_i(x_1)),\ldots,
          \bar c_i(\kappa_i(x_m))):\bar c_i\in\bar C_i\bigr\}
=
\bigl\{(c_i(x_1),\ldots,c_i(x_m)):c_i\in C_i\bigr\}.
\tag{1}
\]
Conversely, for every finite quotient tuple \(q_1,\ldots,q_m\in Q_i\), choosing any representatives \(x_j\in\kappa_i^{-1}(\{q_j\})\) gives the same equality with \(q_j\) in place of \(\kappa_i(x_j)\). Moreover, raw and quotient classes shatter exactly the same finite depths of Littlestone trees after nodewise quotienting or representative choice. Consequently,
\[
\operatorname{VC}(\bar C_i)=\operatorname{VC}(C_i)=1,
\qquad
\operatorname{LD}(\bar C_i)=\operatorname{LD}(C_i)=d_i.
\tag{2}
\]

Proof / justification:
By the definition of \(\equiv_i\), every \(c_i\in C_i\) is constant on each fiber of \(\kappa_i\). Hence it has a unique function \(\bar c_i:Q_i\to\{0,1\}\) with \(c_i=\bar c_i\circ\kappa_i\). This proves surjectivity of \(\mathsf P_i:\bar C_i\to C_i\). If \(\bar c_i\ne\bar c_i'\), they differ at some \(q\in Q_i\). Surjectivity of the quotient map supplies \(x\in\kappa_i^{-1}(\{q\})\), and the pullbacks differ at \(x\). Thus pullback is injective.

Equation (1) follows immediately from this bijection. For quotient points, choose one representative for each of the finitely many occurrences and apply (1). This is only finite set-theoretic choice; it is not a measurable section and supplies no generated selector.

This also handles quotient collisions exactly. If \(\kappa_i(x_j)=\kappa_i(x_\ell)\), all concepts in \(C_i\) give the same label at \(x_j,x_\ell\). Thus a requested pattern assigning different labels to these two occurrences is absent on both sides of (1), while every consistent pattern occurs on one side exactly when it occurs on the other. No pattern is lost or added.

Finite-pattern equality proves equality of VC dimensions. For Littlestone dimension, take any finite complete binary instance tree shattered by \(C_i\) and replace every node label \(x\) by \(\kappa_i(x)\). Every root-to-leaf bit string remains realized by the quotient representative of the raw concept that realized it. A repeated quotient label with conflicting bits on one root-to-leaf path cannot occur in a shattered raw tree, since equivalent raw points have identical labels under every concept. Thus quotient collisions do not invalidate the tree.

Conversely, a finite quotient tree has finitely many nodes. Choose a raw representative for each node label and replace quotient labels nodewise. Every quotient concept realizing a path pulls back to a raw concept realizing the representative path. Therefore the two classes shatter the same finite tree depths. Assumption~\ref{assump:vc-one-factors} now gives (2).

### unit_002: lemma

**Lemma (VC dimension and finite cardinality of the disjoint full product).** \(\label{lem:step-001-vc-cardinality}\)

Statement:
Under Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors},
\[
\operatorname{VC}(C)=k.
\tag{3}
\]
The restriction bijection also gives the cardinal identity
\[
|C|=\prod_{i=1}^k|C_i|.
\tag{4}
\]
In particular, if every \(C_i\) is finite, then
\[
\log|C|=\sum_{i=1}^k\log|C_i|.
\tag{5}
\]
If at least one factor is infinite, then \(C\) is infinite and no finite-real logarithmic identity is asserted.

Proof / justification:
Since \(\operatorname{VC}(C_i)=1\), choose a point \(x_i\in X_i\) whose singleton is shattered by \(C_i\). For each vector \(b=(b_1,\ldots,b_k)\in\{0,1\}^k\), choose \(c_i^{b_i}\in C_i\) with \(c_i^{b_i}(x_i)=b_i\). Assumption~\ref{assump:canonical-product} supplies a unique \(c\in C\) with these factor restrictions. Hence \(\{x_1,\ldots,x_k\}\) is shattered and \(\operatorname{VC}(C)\ge k\).

Conversely, any set of \(k+1\) distinct points contains two points in the same block \(X_i\). If the whole set were shattered by \(C\), those two points would be shattered by the restriction class \(C_i\), contradicting \(\operatorname{VC}(C_i)=1\). This proves (3).

Equation (4) is exactly the cardinality of the product in the restriction bijection from Assumption~\ref{assump:canonical-product}. For finite factors, the product is a positive finite integer, so taking the fixed natural logarithm gives (5). If some \(C_i\) is infinite, fixing one concept in every other nonempty factor injects \(C_i\) into \(C\), so \(C\) is infinite. The proof of (3), and all later dimension arguments, remain valid without finite class cardinality.

The assumption that a factor is nonconstant is a statement about the class, not about every member. Constant-valued concepts may belong to \(C_i\). In the boundary case \(Q_i\) is a singleton and \(C_i\) realizes both constant labels, that singleton is still shattered and the argument above applies. A genuinely singleton factor class would have VC and Littlestone contribution zero and is excluded by Assumption~\ref{assump:vc-one-factors}; the product constructions below nevertheless treat such a zero-contribution factor correctly.

### unit_003: lemma

**Lemma (Rank predictor for a finite-Littlestone class).** \(\label{lem:step-001-rank-predictor}\)

Statement:
Let \(H\subseteq\{0,1\}^Y\) be nonempty with finite \(\operatorname{LD}(H)=d\in\mathbb N_0\). There is a deterministic online predictor that, on every finite sequence realizable by one \(h\in H\), makes at most \(d\) mistakes. The construction uses only the two Littlestone ranks at the queried point and requires no ordering of \(Y\) or \(H\), no finite cardinality, and no selected hypothesis.

Proof / justification:
Adopt the proof-local convention \(\operatorname{LD}(\varnothing)=-1\). At any time let \(V\subseteq H\) be the nonempty version class consistent with all observed labeled examples. For a query \(x\in Y\), put
\[
V_b(x):=\{h\in V:h(x)=b\},\qquad b\in\{0,1\}.
\]
If \(a=\operatorname{LD}(V)\), both child classes cannot have Littlestone dimension at least \(a\): otherwise a depth-\(a\) shattered tree below each of the two root labels at \(x\) would form a depth-\(a+1\) tree shattered by \(V\), contrary to the definition of \(a\). Therefore
\[
\min_{b\in\{0,1\}}\operatorname{LD}(V_b(x))\le a-1.
\tag{6}
\]

Predict the bit whose child class has larger Littlestone dimension, breaking equality in favor of \(0\). If the prediction is wrong, the realized child is the smaller-ranked child; by (6), the new nonempty version class has rank at most \(a-1\). Correct predictions never increase rank because the new version class is a subclass of \(V\). Starting at rank \(d\), there can therefore be at most \(d\) mistakes. At rank zero, at most one child is nonempty at every query, so a realizable next label cannot cause another mistake. Only a comparison of two integers is used.

### unit_004: proposition

**Proposition (Additivity of Littlestone dimension for a disjoint full product).** \(\label{prop:step-001-product-littlestone}\)

Statement:
Under Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors}, and using Lemma~\ref{lem:step-001-rank-predictor},
\[
\operatorname{LD}(C)=\sum_{i=1}^k d_i.
\tag{7}
\]
This equality uses no order on any \(X_i\), no order on any \(C_i\), and no cardinality assumption.

Proof / justification:
For the lower bound, choose for each \(i\) a complete depth-\(d_i\) tree shattered by \(C_i\). Starting with the factor-1 tree, attach a copy of the factor-2 tree at every leaf, then a copy of the factor-3 tree at every new leaf, and so on through factor \(k\). The resulting tree has depth \(\sum_i d_i\). Along any root-to-leaf path, the segment in block \(i\) is realized by some \(c_i\in C_i\); Assumption~\ref{assump:canonical-product} combines these choices into one \(c\in C\) realizing the whole path. Thus
\[
\operatorname{LD}(C)\ge\sum_i d_i.
\tag{8}
\]
The displayed index order is merely a way to concatenate finitely many trees; it imposes no order on instances or concepts.

For the upper bound, run one copy of the predictor from Lemma~\ref{lem:step-001-rank-predictor} for each factor. When the next global instance lies in \(X_i\), use and update only predictor \(i\). If the global labeled sequence is realizable by \(c\in C\), the subsequence routed to block \(i\) is realizable by \(c|_{X_i}\in C_i\), so predictor \(i\) makes at most \(d_i\) mistakes. The global predictor consequently makes at most \(\sum_i d_i\) mistakes.

If \(C\) shattered a tree of depth \(\sum_i d_i+1\), traverse that tree adaptively by taking, at every node, the edge opposite to this global predictor's bit. Shattering supplies a single \(c\in C\) realizing the completed path, while the predictor makes a mistake at every level. This contradicts its realizable mistake bound. Hence
\[
\operatorname{LD}(C)\le\sum_i d_i,
\tag{9}
\]
and (7) follows.

If a factor class were singleton with Littlestone dimension zero, its concatenated segment would have depth zero and its predictor would make no mistakes, so both arguments retain a zero contribution. Under the binding VC-one assumption every factor instead has \(d_i\ge1\). When \(k=1\), (8) and (9) reduce identically to \(\operatorname{LD}(C)=d_1\).

### unit_005: lemma

**Lemma (Log-star and aggregate-size comparisons).** \(\label{lem:step-001-logstar}\)

Statement:
Under Assumption~\ref{assump:vc-one-factors}, with the accepted sketch notation
\[
r_i:=\log_2^*d_i,
\qquad
s_i:=1+\log_2^*(d_i+1),
\qquad
M:=\sum_{i=1}^k s_i=M_\oplus(C),
\]
one has, for every \(i\),
\[
s_i\ge2,
\qquad
s_i\le r_i+2,
\qquad
M\ge2k.
\tag{10}
\]

Proof / justification:
Since \(\operatorname{VC}(C_i)=1\), a depth-one Littlestone tree is shattered, so \(d_i\ge1\). Therefore \(d_i+1\ge2\), and at least one base-two logarithm is needed to reach a value at most one. Hence \(s_i=1+\log_2^*(d_i+1)\ge2\).

For \(t\ge1\), the stopping time \(\log_2^*t\) is nondecreasing: if \(1\le a\le b\), every defined iterated logarithm is order preserving until one input has already reached the stopping set \((0,1]\), so the smaller input cannot require more iterations. For every integer \(d\ge1\),
\[
\log_2(d+1)\le d,
\tag{11}
\]
because \(2^d\ge d+1\) (with equality at \(d=1\), and induction thereafter). Using the defining recursion of log-star and its monotonicity,
\[
\log_2^*(d_i+1)
=1+\log_2^*\!\bigl(\log_2(d_i+1)\bigr)
\le1+\log_2^*d_i
=r_i+1.
\tag{12}
\]
Adding one gives \(s_i\le r_i+2\). Summing \(s_i\ge2\) over the finite set of factors gives \(M\ge2k\).

At the smallest allowed dimension \(d_i=1\), these comparisons are exact at the relevant endpoint:
\[
r_i=\log_2^*1=0,
\qquad
s_i=1+\log_2^*2=2.
\tag{13}
\]

### unit_006: lemma

**Lemma (Standard-Borel quotient output and measurable decoding).** \(\label{lem:step-001-output-measurability}\)

Statement:
Under Assumptions~\ref{assump:canonical-product} and \ref{assump:countably-coded-evaluation}, each \((\mathcal H_i,\mathscr H_i)=(\{0,1\}^{Q_i},\mathscr H_i)\) is standard Borel, and so is the finite product \((\mathcal H^\oplus,\mathscr H^\oplus)\). The evaluation map
\[
E:\mathcal H^\oplus\times X\to\{0,1\},
\qquad
E(\bar h,x)=\bar h_i(\kappa_i(x))\quad(x\in X_i),
\tag{14}
\]
is \((\mathscr H^\oplus\otimes\Sigma)\)-measurable. Consequently every decoded \(h_{\bar h}=E(\bar h,\cdot)\) is \(\Sigma\)-measurable, and \(\bar h\mapsto h_{\bar h}\) is measurable under the finite-evaluation-cylinder convention of the setting.

Proof / justification:
If \(Q_i\) is finite, \(\mathcal H_i\) is a finite discrete measurable space. If \(Q_i\) is countably infinite, enumerate it as \(q_{i,1},q_{i,2},\ldots\) and put
\[
\Delta_i(\bar h,\bar g)
:=\sum_{m=1}^{\infty}2^{-m}
  \mathbf 1\{\bar h(q_{i,m})\ne\bar g(q_{i,m})\}.
\tag{15}
\]
The metric topology is exactly the product topology: fixing finitely many coordinates gives a clopen cylinder, and agreement on a sufficiently long initial segment makes the metric tail arbitrarily small. The metric is complete because a Cauchy sequence is eventually constant in each coordinate and converges to the coordinatewise limit. It is separable because functions that vanish beyond a finite initial segment form a countable dense set. Thus this topology is Polish, and its Borel sigma-field is exactly the sigma-field generated by finite evaluation cylinders, namely \(\mathscr H_i\). Hence \((\mathcal H_i,\mathscr H_i)\) is standard Borel.

For the global output, the disjoint coordinate set
\[
\widetilde Q:=\bigsqcup_{i=1}^k(\{i\}\times Q_i)
\]
is finite or countable. The coordinate-relabeling bijection
\[
(\bar h_1,\ldots,\bar h_k)
\longmapsto
\bigl((i,q)\mapsto\bar h_i(q)\bigr)
\]
identifies \(\mathcal H^\oplus\) with \(\{0,1\}^{\widetilde Q}\). Both sigma-fields are generated by the same coordinate evaluations, so this is a Borel isomorphism. The preceding metric argument proves that \(\mathcal H^\oplus\) is standard Borel.

For joint evaluation, the inverse image of \(\{1\}\) under (14) is
\[
E^{-1}(\{1\})
=\bigcup_{i=1}^k\ \bigcup_{q\in Q_i}
\{\bar h:\bar h_i(q)=1\}
\times\kappa_i^{-1}(\{q\}).
\tag{16}
\]
Every output set in (16) is an evaluation cylinder. Every raw cell is in \(\Sigma_i\), and because \(X_i\in\Sigma\), it is also a member of \(\Sigma\). The union is countable, proving joint measurability. For a fixed \(\bar h\),
\[
h_{\bar h}^{-1}(\{1\})
=\bigcup_{i=1}^k\ \bigcup_{q:\bar h_i(q)=1}
\kappa_i^{-1}(\{q\})\in\Sigma,
\tag{17}
\]
so the decoded hypothesis is measurable.

Finally, for fixed \(x_1,\ldots,x_m\in X\) and \(b\in\{0,1\}^m\), the decoder's inverse image of the finite-evaluation cylinder with label vector \(b\) is the finite intersection
\[
\bigcap_{j=1}^m
\{\bar h:\bar h_{i(j)}(\kappa_{i(j)}(x_j))=b_j\},
\tag{18}
\]
where \(i(j)\) is the unique block containing \(x_j\). This lies in \(\mathscr H^\oplus\). Equation (18) proves precisely the decoder measurability required by the setting, without imposing a stronger or unspecified sigma-field on all raw hypotheses.

### unit_007: lemma

**Lemma (Exact measurable quotient-to-raw risk pullback).** \(\label{lem:step-001-risk-pullback}\)

Statement:
Under Assumptions~\ref{assump:canonical-product} and \ref{assump:countably-coded-evaluation}, and Lemma~\ref{lem:step-001-quotient-invariance}, fix any target \(c=(c_1,\ldots,c_k)\in C\), its quotient representatives \(\bar c_i\), any probability measure \(D\) on \((X,\Sigma)\), and any \(\bar h\in\mathcal H^\oplus\). If \(\rho_i=D(X_i)>0\), then
\[
\Pr_{x\sim D_i}
 [\mathsf P_i(\bar h_i)(x)\ne c_i(x)]
=
\Pr_{q\sim\bar D_i}
 [\bar h_i(q)\ne\bar c_i(q)]
=
\sum_{q\in Q_i}D_i(\kappa_i^{-1}(\{q\}))
 \mathbf 1\{\bar h_i(q)\ne\bar c_i(q)\}.
\tag{19}
\]
Globally,
\[
\begin{aligned}
R_D(h_{\bar h},c)
&=\sum_{i:\rho_i>0}\rho_i
  \Pr_{q\sim\bar D_i}
  [\bar h_i(q)\ne\bar c_i(q)]\\
&=\sum_{i=1}^k\sum_{q\in Q_i}
  D(\kappa_i^{-1}(\{q\}))
  \mathbf 1\{\bar h_i(q)\ne\bar c_i(q)\}.
\end{aligned}
\tag{20}
\]
Each factor risk in (19) and the global risk in (20) is a measurable function of the quotient output. The equalities hold for arbitrary-support \(D\), and a factor with \(\rho_i=0\) contributes exactly zero without requiring \(D_i\) to be defined.

Proof / justification:
Lemma~\ref{lem:step-001-quotient-invariance} gives
\[
c_i(x)=\bar c_i(\kappa_i(x)),
\qquad
\mathsf P_i(\bar h_i)(x)=\bar h_i(\kappa_i(x)).
\]
Thus the raw mistake indicator is the pullback through \(\kappa_i\) of the quotient mistake indicator. The definition \(\bar D_i=(\kappa_i)_\#D_i\) gives the first equality in (19). Since \(Q_i\) is finite or countable and discrete, countable additivity gives the last equality.

The blocks partition \(X\), so the global mistake set is the disjoint union of its intersections with the blocks. Applying countable additivity first across the finite blocks and then across each block's quotient cells gives the second line of (20). When \(\rho_i>0\),
\[
D(\kappa_i^{-1}(\{q\}))
=\rho_iD_i(\kappa_i^{-1}(\{q\})),
\]
which gives the first line. When \(\rho_i=0\), every cell in \(X_i\) has \(D\)-mass zero, so its entire second-line contribution vanishes; no conditional distribution is invoked.

For measurability, fix an enumeration of each \(Q_i\). Every summand in (19) or (20) is a fixed nonnegative coefficient times the indicator of
\[
\{\bar h:\bar h_i(q)\ne\bar c_i(q)\},
\]
which is an evaluation cylinder in \(\mathscr H^\oplus\). The partial sums over the first finitely many cells are measurable and increase pointwise to the displayed risk. A pointwise limit of real-valued measurable functions is measurable. Since \(k\) is finite, the global sum is measurable as well. In particular every threshold event formed from these risks is measurable. There is no quotient-to-raw approximation term: (19) and (20) are exact equalities.

## Target-Step Assembly

Lemma~\ref{lem:step-001-quotient-invariance} proves the binding row's pullback bijection, finite-pattern preservation through collisions, and the exact factor identities \(\operatorname{VC}(\bar C_i)=1\) and \(\operatorname{LD}(\bar C_i)=d_i\). Lemma~\ref{lem:step-001-vc-cardinality} proves \(\operatorname{VC}(C)=k\) and the finite log-cardinality identity, while explicitly leaving infinite classes outside only the finite-real logarithm clause. Lemma~\ref{lem:step-001-rank-predictor} and Proposition~\ref{prop:step-001-product-littlestone} jointly prove \(\operatorname{LD}(C)=\sum_i d_i\) without ordering or cardinality assumptions. Lemma~\ref{lem:step-001-logstar} proves all three scalar inequalities.

Lemma~\ref{lem:step-001-output-measurability} gives the standard-Borel product output, jointly measurable evaluation, measurable raw hypotheses, and exactly the decoder measurability required by the finite-cylinder output convention. Lemma~\ref{lem:step-001-risk-pullback} then gives exact quotient/raw-factor/global risk equality and measurability through monotone finite-cell partial sums. These results compose without any dependency artifact or external theorem.

The required boundary cases are included in the named results:

- Quotient collisions preserve precisely the consistent finite patterns and trees by Lemma~\ref{lem:step-001-quotient-invariance}; no measurable representative map is used.
- The product Littlestone upper bound uses only binary rank comparisons and factor routing, not an order or a finite class representation.
- Countably infinite cells are handled by monotone measurable partial sums; finite quotients are the finite special case.
- Assumption~\ref{assump:vc-one-factors} excludes genuinely singleton factors but permits constant-valued concepts and the two-constant-concept, one-cell factor. Zero-dimensional singleton factors would contribute zero to the product arguments if present.
- At \(k=1\), every product, output, and risk expression is exactly its sole-factor expression.
- At \(d_i=1\), \(r_i=0\) and \(s_i=2\), so no endpoint is omitted.
- Infinite \(C_i\) and uncountable \(\mathcal H_i\) are allowed: only \(Q_i\) is required countable, and the cardinality logarithm is asserted only for finite factor classes.
- A zero-mass factor contributes zero in (20), without defining a conditional law on that factor.

Thus every component of the exact target step claim is proved under precisely its allowed primitive assumptions.

## Explicit Rate Audit

- Exposed variables: \(k\), \((d_i,r_i,s_i,Q_i)_i\), and \(M=M_\oplus(C)\); for the exact risk interface, \((\rho_i,D_i,\bar D_i)_i\), the fixed target \(c\), and quotient output \(\bar h\).
- Hidden constants may depend on: None; all statements are exact.
- Hidden constants may not depend on: \(X,\Sigma,C,k,d_i,|C_i|,|Q_i|,D,\rho_i\), or any learner/privacy/sample parameter.
- Fixed quantities: the setting's natural-log and base-two iterated-log conventions and the finite factor indexing.
- Probability mode: deterministic structural and measurable-space identities, pointwise for every fixed \(c,D,\bar h\). No high-probability conversion occurs in this step.
- Horizon mode: static/fixed-sample convention; no sample size, recursion, asymptotic limit, or uniform-in-candidate statement is introduced.
- Norm mode: exact distributional binary \(0\)-\(1\) risk.
- Admissibility conditions and auxiliary tolerances: exactly Assumptions~\ref{assump:canonical-product}, \ref{assump:vc-one-factors}, and \ref{assump:countably-coded-evaluation}; no auxiliary tolerance.
- Term absorption or simplification inequalities: None. Equations (10)--(13) are exact structural comparisons, not asymptotic absorptions.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: Lemma~\ref{lem:step-001-logstar} exports \(s_i\le r_i+2\) and \(M\ge2k\) for later lower calibration and ceiling absorption, with no cardinality dependence.
- Baseline-reduction check: for \(k=1\), \(C=C_1\) through the restriction bijection, \(\operatorname{VC}(C)=1\), \(\operatorname{LD}(C)=d_1\), \(M=s_1\), \(\mathcal H^\oplus=\mathcal H_1\), and (20) is exactly the one-factor quotient/raw risk identity. No conservative loss is introduced.

## Blockers

None

## Notation And Assumption Notes

- `Public-facing`: \(r_i=\log_2^*d_i\) and \(M=M_\oplus(C)\) are accepted-sketch aliases for setting quantities. The pullback \(\mathsf P_i(\bar h_i)=\bar h_i\circ\kappa_i\) is the minimal public structural map needed to express quotient-to-raw equality. It is directly defined from the primitive quotient map; it is not a selected representative.
- `Public-facing`: the conclusions \(\operatorname{VC}(C)=k\), \(\operatorname{LD}(C)=\sum_i d_i\), \(s_i\ge2\), \(s_i\le r_i+2\), \(M\ge2k\), standard-Borel output, measurable decoding, and equations (19)--(20) are the exported interface. No other helper is exported.
- `Proof-local`: \(V_b(x)\), the convention \(\operatorname{LD}(\varnothing)=-1\), and the rank predictor occur only in Lemma~\ref{lem:step-001-rank-predictor}. They are locally defined/proved objects, not assumptions or downstream conditions.
- `Proof-local`: the enumeration \((q_{i,m})_m\), metric \(\Delta_i\), and disjoint coordinate set \(\widetilde Q\) occur only in the proof that the already-defined output sigma-fields are standard Borel. Their existence follows directly from finite/countable \(Q_i\); they introduce no cardinality parameter or constant.
- `Proof-local`: finite representatives chosen in Lemma~\ref{lem:step-001-quotient-invariance} are chosen only for the finitely many nodes of one finite pattern or tree. No global or measurable section is constructed or assumed.
- Constant provenance: no new numerical constant, radius, threshold, rate, margin, or boundedness parameter is introduced. The weights in the risk sum are the setting-defined cell masses \(D(\kappa_i^{-1}(\{q\}))\), and their total is one by countable additivity.
- Assumption provenance: all quotient identities, dimension equalities, scalar comparisons, output-space facts, decoding facts, and risk measurability statements are derived in this step from the three primitive assumptions. There are no accepted dependency invariants and no local conditional hypotheses used by the target assembly.
- Diagnostic boundary: the paired `global_proof.md` and `global_proof_review.md` were read only after verifying SHA-256 values `a52f1ff37024c621941fb30aa5b2f95633e56d45947fa928f6e14e121e87e5e5` and `17fca51224903071cd28879f9e382b2e3d9ecf3d5ce7b2abf897e0668eba0c48`, and the review status `ACCEPTED`. Their step-relevant suggestions -- factorwise rank prediction and monotone countable-cell sums -- were used only to plan local units and were independently proved above. Neither global artifact is evidence, a cited result, an assumption source, or authority to change the binding row.
