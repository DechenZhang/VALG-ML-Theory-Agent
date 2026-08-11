# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove quotient routing, first-prefix/padding, product-kernel formation, and decoding are measurable; prove one global replacement affects at most two factor multisets by one replacement each after symmetrization; conclude the tuple/decoded rule is \((\varepsilon,\delta)\)-DP for every adjacent labeled dataset and every measurable output event.
- Depends on: `step_001`, `step_002`.
- Assumptions used: Primitive: `assump:canonical-product`, `assump:countably-coded-evaluation`, `assump:global-privacy-range`; derived: the accepted `step_002` factor kernels.
- Technical challenge: Ordered prefix shifts must be coupled as one multiset replacement, including padding and cross-block moves; composition must handle joint product events.
- Intended proof tool or cited result: Direct finite routing-map proof; permutation coupling; basic composition and postprocessing for standard-Borel kernels.
- Output target: Exact global Markov-kernel and privacy interface.
- Rate objective: Upper kernel/PAC objective: pointwise privacy, fixed sample, no \(k\) dependence beyond support two; exact output convention.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:canonical-product}: \(X=\bigsqcup_{i=1}^kX_i\) is a finite disjoint whole-domain partition.
  - Assumption~\ref{assump:countably-coded-evaluation}: every \(X_i\) is measurable, every \(Q_i\) is finite or countable discrete, and \(\kappa_i:(X_i,\Sigma_i)\to(Q_i,2^{Q_i})\) is measurable.
  - Assumption~\ref{assump:global-privacy-range}: \(0<\varepsilon\le1/10\) and \(0<\delta<1\), with the setting-defined factor split \((\varepsilon_{\rm fac},\delta_{\rm fac})=(\varepsilon/2,\delta/2)\).
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\ref{lem:step-001-output-measurability}: each \((\mathcal H_i,\mathscr H_i)\) and the finite product \((\mathcal H^\oplus,\mathscr H^\oplus)\) are standard Borel, and the piecewise decoder is measurable in the finite-evaluation-cylinder convention.
  - Accepted Lemma~\ref{lem:step-001-risk-pullback}: for every fixed target and distribution, decoded quotient risk is an exact \(\mathscr H^\oplus\)-measurable function.
  - Accepted Proposition~\ref{prop:step-002-kernel}: for every factor, \(\bar A_i^{\rm Yan}\) is a permutation-invariant Markov kernel from \((Q_i\times\{0,1\})^{q_i}\) to \((\mathcal H_i,\mathscr H_i)\), total on all inputs.
  - Accepted Proposition~\ref{prop:step-002-factor-privacy}: this factor kernel is replacement-\((\varepsilon/2,\delta/2)\)-DP on every length-\(q_i\) input, including padded, inconsistent, and nonrealizable inputs.
- Local conditional hypotheses: None.
- Accepted dependency artifacts:
  - `perspective_1/idea_3/proof_steps/step_001/proof.md`, SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a`.
  - `perspective_1/idea_3/proof_steps/step_001/review.md`, SHA-256 `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, with status `ACCEPTED`.
  - `perspective_1/idea_3/proof_steps/step_002/proof.md`, SHA-256 `6a5a9661acf92353ad5ddb01a502d596bb890cd3c19906fd8b951c3d3fae142e`.
  - `perspective_1/idea_3/proof_steps/step_002/review.md`, SHA-256 `d2e4430b129d0751ec576d5978c6d25c96c1ea69942f8b79481abe43ee927c68`, with status `ACCEPTED`.

No routed-prefix stability, affected-factor support, product-kernel legality, or global privacy conclusion is assumed. Each is derived below. Factor utility is not used in this step.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:canonical-product} and \ref{assump:countably-coded-evaluation}, for every fixed \(n\), quotient routing, factor counts, selection of the first \(q_i\) routed records, and padding by the fixed record are measurable maps on \(Z^n\). | Proves the complete deterministic preprocessing is legal on the raw labeled sample space. |
| `unit_002` | lemma | For any finite ordered list, a one-entry replacement, deletion, or insertion changes the multiset of its padded length-\(q\) prefix by at most one replacement, and the two resulting tuples can be permuted to be equal or ordered replacement-adjacent. | Isolates every prefix shift and shortage/full padding transition. |
| `unit_003` | proposition | Under Assumption~\ref{assump:canonical-product}, Lemma~\ref{lem:step-003-padded-prefix}, and accepted Proposition~\ref{prop:step-002-kernel}, one global replacement changes at most two routed factor laws, and for each changed factor the two factor inputs can be permuted to one-entry replacement neighbors. | Produces the exact support-two adjacency certificate, including same-block, cross-block, outside-prefix, and padding cases. |
| `unit_004` | proposition | Under the two structural assumptions, accepted output measurability, accepted factor-kernel legality, and Lemma~\ref{lem:step-003-routing-measurability}, the independently randomized factor rules form a Markov kernel into \((\mathcal H^\oplus,\mathscr H^\oplus)\), and deterministic decoding gives a measurable postprocessed rule. | Proves product-kernel formation and the exact tuple/decoded output convention for arbitrary measurable events. |
| `unit_005` | proposition | Under Assumption~\ref{assump:global-privacy-range}, accepted factor privacy, and Propositions~\ref{prop:step-003-support-two} and \ref{prop:step-003-product-kernel}, the tuple kernel and every measurable decoded postprocessing are replacement-\((\varepsilon,\delta)\)-DP on all labeled inputs; the proof applies directly to every joint tuple event and uses at most two factor costs. | Closes the exact pointwise global privacy claim without a \(k\)-fold composition term. |

Atomic step = no. The five units separate deterministic measurability, the list-level prefix fact, global adjacency routing, product-kernel legality, and arbitrary-event approximate-DP composition.

## Cited Result Applications

No external paper theorem is used in this step. The accepted dependency results and the two standard measure-theoretic facts used below are restated at their exact current-notation interfaces.

| Result | Restated statement and instantiated objects | Assumption discharge | Conclusion used |
| ------ | ------------------------------------------- | -------------------- | --------------- |
| Accepted Lemma~\ref{lem:step-001-output-measurability} | For the finite family of finite-or-countable quotients, \(\mathcal H^\oplus=\prod_i\{0,1\}^{Q_i}\) with its product evaluation sigma-field is standard Borel, and \(\bar h\mapsto h_{\bar h}\) pulls every finite raw-evaluation cylinder back to an event of \(\mathscr H^\oplus\). | Its accepted proof/review hashes are listed above; Assumptions~\ref{assump:canonical-product} and \ref{assump:countably-coded-evaluation} are exactly its measurable-space inputs. | Legal tuple codomain and measurable decoding in Proposition~\ref{prop:step-003-product-kernel}. |
| Accepted Lemma~\ref{lem:step-001-risk-pullback} | For fixed \(c,D\), \(\bar h\mapsto R_D(h_{\bar h},c)\) is \(\mathscr H^\oplus\)-measurable and equals the exact quotient-cell risk sum. | Same accepted dependency; no distribution support or balance condition is needed. | Confirms that the routed tuple output retains the setting's exact measurable risk-event convention. |
| Accepted Proposition~\ref{prop:step-002-kernel} | For each \(i\), \(\bar A_i^{\rm Yan}\) is a total Markov kernel on the countable discrete length-\(q_i\) input and is invariant under every input permutation. | Accepted `step_002`; all source and totalization obligations were discharged there. | Composition with measurable routing, and conversion of multiset adjacency into ordered adjacency. |
| Accepted Proposition~\ref{prop:step-002-factor-privacy} | If two ordered length-\(q_i\) quotient-record tuples differ in at most one coordinate, then for every \(E_i\in\mathscr H_i\), their output laws satisfy both ordered replacement-DP inequalities with parameters \((\varepsilon/2,\delta/2)\). | Replacement adjacency is symmetric, and the accepted proposition covers every input rather than only realizable or unpadded inputs. | Factorwise law comparison on the affected set in Proposition~\ref{prop:step-003-joint-composition}. |
| Finite-product kernel theorem and Dynkin extension | A finite family of kernels \(K_i:E\rightsquigarrow H_i\) has a product kernel \(K:E\rightsquigarrow\prod_iH_i\) satisfying \(K(s,\prod_iE_i)=\prod_iK_i(s,E_i)\). Measurability for every event in the product sigma-field follows because the events with measurable section probability form a Dynkin system containing the generating measurable rectangles. | The family has finite size \(k\); each routed factor rule is a kernel; the target sigma-field is exactly \(\bigotimes_i\mathscr H_i\). The instantiated proof is given in Proposition~\ref{prop:step-003-product-kernel}. | Formation of one kernel for arbitrary joint tuple events, not only rectangles. |
| Radon--Nikodym and hockey-stick identity | For probability measures \(P,Q\), \(\lambda=P+Q\), densities \(p=dP/d\lambda,q=dQ/d\lambda\), and \(a\ge1\), \(\sup_E(P(E)-aQ(E))=\int(p-aq)_+\,d\lambda\). | Every pair of factor output laws is dominated by its finite measure sum. The positive-density set attains the supremum. | Constructs large-mass mutually dominated submeasures and proves exact additive-\(\delta\) composition for every measurable product event. |

The local results used later in this step are restated here before use:

| Local result | Restated statement and assumption basis | Later use |
| ------------ | ---------------------------------------- | --------- |
| Lemma~\ref{lem:step-003-routing-measurability} (`unit_001`) | The setting's raw-to-quotient route, count, first-occurrence coordinates, padded factor tuples, and their finite product are measurable under the two structural assumptions. | Defines the routed factor kernels and global product kernel. |
| Lemma~\ref{lem:step-003-padded-prefix} (`unit_002`) | Replacement, insertion, or deletion in an ordered list causes at most one replacement in the padded prefix multiset, after which permutations align all common occurrences. | Converts one global replacement into factorwise ordered adjacency. |
| Proposition~\ref{prop:step-003-support-two} (`unit_003`) | One same-block change affects at most one factor; one cross-block change is one deletion and one insertion and affects at most two factors. Every changed factor input is adjacent after permutation. | Supplies the only privacy-loss support used in final composition. |
| Proposition~\ref{prop:step-003-product-kernel} (`unit_004`) | Measurable routed factor kernels have an independent product Markov kernel on \(\mathcal H^\oplus\), and the accepted decoder is measurable postprocessing. | Supplies the joint output measures in final composition. |
| Proposition~\ref{prop:step-003-joint-composition} (`unit_005`) | Accepted factor DP tensorizes over the support-two affected set to global \((\varepsilon,\delta)\)-DP for every event, and postprocessing preserves the inequality. | Supplies the exact target privacy conclusion. |

## Local Derivation

### unit_001: lemma

**Lemma (Measurable quotient routing and padded prefixes).** \(\label{lem:step-003-routing-measurability}\)

Statement:
Under Assumptions~\ref{assump:canonical-product} and \ref{assump:countably-coded-evaluation}, fix \(n\in\mathbb N\). For every factor \(i\), the count \(J_i:Z^n\to\{0,\ldots,n\}\), the first-\(q_i\)-records-and-padding map
\[
\bar T_i:Z^n\longrightarrow (Q_i\times\{0,1\})^{q_i},
\tag{1}
\]
and the finite product \(\bar T=(\bar T_1,\ldots,\bar T_k)\) are measurable. This statement holds for every labeled input, independently of realizability.

Proof / justification:
Put \(Y_i:=Q_i\times\{0,1\}\), with its countable discrete sigma-field, and adjoin one symbol \(\dagger_i\notin Y_i\). Define the total one-record routing map
\[
\varphi_i(x,y):=
\begin{cases}
(\kappa_i(x),y),&x\in X_i,\\
\dagger_i,&x\notin X_i.
\end{cases}
\tag{2}
\]
For any subset \(A\subseteq Y_i\cup\{\dagger_i\}\), its inverse image is the union of the countably many measurable cells
\[
\kappa_i^{-1}(\{q\})\times\{b\},
\qquad (q,b)\in A\cap Y_i,
\]
together, when \(\dagger_i\in A\), with \((X\setminus X_i)\times\{0,1\}\). Thus \(\varphi_i\) is measurable. In particular
\[
J_i(S)=\sum_{j=1}^n\mathbf 1\{\varphi_i(z_j)\ne\dagger_i\},
\qquad S=(z_1,\ldots,z_n),
\tag{3}
\]
is measurable.

For \(1\le r\le q_i\) and \(1\le j\le n\), let
\[
F_{i,r,j}:=
\left\{S:\varphi_i(z_j)\ne\dagger_i,
\ \sum_{\ell<j}\mathbf 1\{\varphi_i(z_\ell)\ne\dagger_i\}=r-1\right\}.
\tag{4}
\]
This is the event that position \(j\) is the \(r\)-th record routed to factor \(i\), and it is measurable by (2). The \(r\)-th coordinate of (1) is
\[
\bar T_{i,r}(S)=
\begin{cases}
\varphi_i(z_j),&S\in F_{i,r,j}\text{ for the unique such }j,\\
\bar z_i^\circ,&J_i(S)<r.
\end{cases}
\tag{5}
\]
For each \(u\in Y_i\),
\[
\{\bar T_{i,r}=u\}
=\left(\{J_i<r\}\cap\{\bar z_i^\circ=u\}\right)
\cup\bigcup_{j=1}^n
\left(F_{i,r,j}\cap\{\varphi_i(z_j)=u\}\right),
\tag{6}
\]
where the first set is empty when \(u\ne\bar z_i^\circ\). Equation (6) is measurable. Since \(Y_i\) is countable discrete, this proves coordinate measurability and hence measurability of \(\bar T_i\). A finite product of these maps is measurable, proving the claim. The proof uses only record values and fixed padding; no target or consistency event appears.

### unit_002: lemma

**Lemma (One-edit stability of a padded prefix multiset).** \(\label{lem:step-003-padded-prefix}\)

Statement:
Let \(Y\) be any set, fix \(q\ge1\) and \(p\in Y\), and for a finite list \(w=(w_1,\ldots,w_J)\) define
\[
\operatorname{Pad}_{q,p}(w)
:=(w_1,\ldots,w_{\min\{J,q\}},
\underbrace{p,\ldots,p}_{q-\min\{J,q\}\text{ copies}})\in Y^q.
\tag{7}
\]
If \(w'\) is obtained from \(w\) by replacing one entry, deleting one entry, or inserting one entry, then the multisets of \(\operatorname{Pad}_{q,p}(w)\) and \(\operatorname{Pad}_{q,p}(w')\) are equal or differ by one multiset replacement. Consequently there are permutations of the two length-\(q\) tuples which make them equal or make them differ in exactly one coordinate.

Proof / justification:
Write \([v]\) for the multiset of a finite list \(v\). The complete case calculation is as follows; a displayed arrow names the sole multiset replacement.

| Edit to \(w\) | Position/length case | Change to the padded-prefix multiset |
| --- | --- | --- |
| Replace \(w_r\) by \(v\) | \(r>q\) | None |
| Replace \(w_r\) by \(v\) | \(r\le q\) | \(w_r\mapsto v\) |
| Delete \(w_r\) | \(r>q\) | None |
| Delete \(w_r\) | \(r\le q\) and \(J\ge q+1\) | \(w_r\mapsto w_{q+1}\) |
| Delete \(w_r\) | \(r\le q\) and \(J\le q\) | \(w_r\mapsto p\) |
| Insert \(v\) at rank \(r\) | \(r>q\) | None |
| Insert \(v\) at rank \(r\le q\) and \(J\ge q\) | \(w_q\mapsto v\) |
| Insert \(v\) at rank \(r\le q\) and \(J<q\) | \(p\mapsto v\) |

For example, after deleting \(w_r\) with \(r\le q<J\), the shifted entries \(w_{r+1},\ldots,w_q\) occur in both multisets; only \(w_r\) leaves and \(w_{q+1}\) enters. When the old list does not extend past the prefix, one new padding copy enters instead. The insertion cases are the reverse calculation. This proves the multiset assertion, including all full/shortage transitions and coincidences where the named leaving and entering values are equal.

If two size-\(q\) multisets differ by at most one replacement, their multiset intersection, counted with multiplicity, has size at least \(q-1\). Enumerate these common occurrences in the same first \(q-1\) positions of the two tuples and place the possible unmatched occurrences last. The corresponding permutations make the tuples equal or ordered replacement-adjacent.

### unit_003: proposition

**Proposition (Support-two symmetrized adjacency of routed inputs).** \(\label{prop:step-003-support-two}\)

Statement:
Under Assumption~\ref{assump:canonical-product}, Lemma~\ref{lem:step-003-padded-prefix}, and accepted Proposition~\ref{prop:step-002-kernel}, let \(S,S'\in Z^n\) differ by replacement of one labeled record. There is a set \(I(S,S')\subseteq\{1,\ldots,k\}\) with \(|I(S,S')|\le2\) such that:

1. for \(i\notin I(S,S')\), the multisets of \(\bar T_i(S)\) and \(\bar T_i(S')\) are equal;
2. for \(i\in I(S,S')\), there are permutations \(\sigma_i,\sigma_i'\) for which \(\sigma_i\bar T_i(S)\) and \(\sigma_i'\bar T_i(S')\) differ in exactly one coordinate; and
3. the factor output laws are unchanged by those permutations.

The conclusion covers arbitrary labels, a changed row outside a selected prefix, same-block and cross-block moves, and every padding/full boundary.

Proof / justification:
Suppose the changed position contains \(z=(x,y)\) in \(S\) and \(z'=(x',y')\) in \(S'\). Assumption~\ref{assump:canonical-product} gives unique indices \(a,b\) with \(x\in X_a\) and \(x'\in X_b\). For each factor \(i\), let \(R_i(S)\) be the ordered list, in global sample order, of all routed quotient records \((\kappa_i(x_j),y_j)\) whose raw instances lie in \(X_i\). Then \(\bar T_i(S)\) is exactly \(\operatorname{Pad}_{q_i,\bar z_i^\circ}(R_i(S))\).

If \(a=b\), all lists except \(R_a\) are identical. In \(R_a\), the old routed record is replaced by the new one at the same local rank. Lemma~\ref{lem:step-003-padded-prefix} shows that the selected multiset is unchanged when this rank exceeds \(q_a\), and otherwise changes by one replacement. Thus one may take \(I\subseteq\{a\}\).

Suppose \(a\ne b\). For every \(i\notin\{a,b\}\), \(R_i(S)=R_i(S')\). The list \(R_a(S')\) is obtained from \(R_a(S)\) by deleting the old routed record, while \(R_b(S')\) is obtained from \(R_b(S)\) by inserting the new routed record at the rank determined by its unchanged global position. Lemma~\ref{lem:step-003-padded-prefix} gives at most one multiset replacement in each list. More explicitly:

- a deletion inside a full prefix replaces the deleted record by the next real record, when one exists, and otherwise by one padding record;
- a deletion from a short prefix replaces the deleted record by padding;
- an insertion into a full prefix replaces the old last selected record by the entering record;
- an insertion into a short prefix replaces one padding copy by the entering record; and
- a deletion or insertion after the first \(q_i\) real records changes nothing.

Thus one may take \(I\subseteq\{a,b\}\), so \(|I|\le2\). Lemma~\ref{lem:step-003-padded-prefix} also supplies permutations aligning all common multiset occurrences and leaving at most one unequal coordinate. Accepted Proposition~\ref{prop:step-002-kernel} says that \(\bar A_i^{\rm Yan}\) is permutation invariant, so for all \(E_i\in\mathscr H_i\),
\[
\bar A_i^{\rm Yan}(\bar T_i(S),E_i)
=\bar A_i^{\rm Yan}(\sigma_i\bar T_i(S),E_i),
\quad
\bar A_i^{\rm Yan}(\bar T_i(S'),E_i)
=\bar A_i^{\rm Yan}(\sigma_i'\bar T_i(S'),E_i).
\tag{8}
\]
These permutations are a pairwise proof coupling for the fixed adjacent pair \(S,S'\); no data-dependent measurable choice of a permutation is part of the learner.
Padding records and arbitrary labels are elements of the same total factor input space, so no realizability or no-padding premise is needed. At \(k=1\), necessarily \(a=b=1\), and at most the sole factor changes.

### unit_004: proposition

**Proposition (Measurable routed product kernel and decoder).** \(\label{prop:step-003-product-kernel}\)

Statement:
Under Assumptions~\ref{assump:canonical-product} and \ref{assump:countably-coded-evaluation}, accepted Lemmas~\ref{lem:step-001-output-measurability} and \ref{lem:step-001-risk-pullback}, accepted Proposition~\ref{prop:step-002-kernel}, and Lemma~\ref{lem:step-003-routing-measurability}, the formula
\[
\bar A_n^{\oplus,Q}(S,d\bar h)
:=\bigotimes_{i=1}^k
\bar A_i^{\rm Yan}(\bar T_i(S),d\bar h_i)
\tag{9}
\]
defines a Markov kernel from \((Z^n,(\Sigma\otimes2^{\{0,1\}})^{\otimes n})\) into \((\mathcal H^\oplus,\mathscr H^\oplus)\). Its factor coordinates have independent internal randomness. The piecewise map \(\bar h\mapsto h_{\bar h}\) is measurable for the setting's finite-evaluation-cylinder convention, so its pushforward is a decoded Markov kernel. For every fixed \(c,D\), the displayed risk events of the setting are measurable events of the tuple output.

Proof / justification:
For each factor and \(E_i\in\mathscr H_i\),
\[
S\longmapsto
K_i(S,E_i):=\bar A_i^{\rm Yan}(\bar T_i(S),E_i)
\tag{10}
\]
is measurable: \(\bar T_i\) is measurable by Lemma~\ref{lem:step-003-routing-measurability}, and the accepted factor rule is a Markov kernel. For fixed \(S\), the finite product of the probability measures \(K_i(S,\cdot)\) exists on \(\mathscr H^\oplus=\bigotimes_i\mathscr H_i\), and on a measurable rectangle it equals
\[
\bar A_n^{\oplus,Q}\left(S,\prod_{i=1}^kE_i\right)
=\prod_{i=1}^kK_i(S,E_i).
\tag{11}
\]
This is measurable in \(S\).

For completeness, let \(\mathcal D\) be the family of all \(E\in\mathscr H^\oplus\) for which \(S\mapsto\bar A_n^{\oplus,Q}(S,E)\) is measurable. It contains the whole space, is closed under complements because
\[
\bar A_n^{\oplus,Q}(S,E^c)=1-\bar A_n^{\oplus,Q}(S,E),
\]
and is closed under countable disjoint unions by pointwise convergence of partial sums. Hence \(\mathcal D\) is a Dynkin system. Measurable rectangles form a pi-system, are contained in \(\mathcal D\) by (11), and generate \(\mathscr H^\oplus\). The pi-lambda theorem gives \(\mathcal D=\mathscr H^\oplus\), proving that (9) is a Markov kernel for arbitrary joint events.

Let \(\mathcal H_\Sigma\) denote the set of \(\Sigma\)-measurable binary hypotheses and let \(\mathscr G_{\rm ev}\) be the sigma-field generated by their finite-evaluation cylinders. Accepted Lemma~\ref{lem:step-001-output-measurability} proves that
\[
\mathrm{Dec}:\mathcal H^\oplus\to\mathcal H_\Sigma,
\qquad \mathrm{Dec}(\bar h)=h_{\bar h},
\tag{12}
\]
is measurable. Therefore
\[
\bar A_n^{\oplus,\mathrm{dec}}(S,G)
:=\bar A_n^{\oplus,Q}(S,\mathrm{Dec}^{-1}(G)),
\qquad G\in\mathscr G_{\rm ev},
\tag{13}
\]
is a Markov kernel. Accepted Lemma~\ref{lem:step-001-risk-pullback} separately proves that, for each fixed target \(c\), distribution \(D\), and threshold \(t\),
\[
\{\bar h:R_D(h_{\bar h},c)\le t\}\in\mathscr H^\oplus.
\tag{14}
\]
Thus the tuple kernel is exactly the legal learner output in the setting, with a measurable decoder and measurable displayed risk event; no raw-space standard-Borel assumption is introduced.

### unit_005: proposition

**Proposition (Support-two composition for arbitrary joint output events).** \(\label{prop:step-003-joint-composition}\)

Statement:
Under Assumption~\ref{assump:global-privacy-range}, accepted Proposition~\ref{prop:step-002-factor-privacy}, and Propositions~\ref{prop:step-003-support-two} and \ref{prop:step-003-product-kernel}, for every \(n\in\mathbb N\), every adjacent \(S,S'\in Z^n\), and every \(E\in\mathscr H^\oplus\),
\[
\bar A_n^{\oplus,Q}(S,E)
\le e^\varepsilon\bar A_n^{\oplus,Q}(S',E)+\delta.
\tag{15}
\]
The same pointwise inequality holds for every event of any measurable deterministic postprocessing, including the decoded rule (13). The bound uses at most two factor privacy costs and has no additional dependence on \(k\).

Proof / justification:
Fix adjacent \(S,S'\) and let \(I=I(S,S')\) be the affected set from Proposition~\ref{prop:step-003-support-two}; put \(m=|I|\le2\). For each factor define probability measures on \((\mathcal H_i,\mathscr H_i)\) by
\[
\mu_i:=\bar A_i^{\rm Yan}(\bar T_i(S),\cdot),
\qquad
\nu_i:=\bar A_i^{\rm Yan}(\bar T_i(S'),\cdot).
\tag{16}
\]
For \(i\notin I\), permutation invariance gives \(\mu_i=\nu_i\). For \(i\in I\), equation (8) and accepted Proposition~\ref{prop:step-002-factor-privacy} give, for every \(B\in\mathscr H_i\),
\[
\mu_i(B)\le a\nu_i(B)+d,
\qquad
\nu_i(B)\le a\mu_i(B)+d,
\quad
a:=e^{\varepsilon/2},\quad d:=\delta/2.
\tag{17}
\]
Both directions hold because ordered replacement adjacency is symmetric.

We prove composition directly on the full product sigma-field. For \(i\in I\), let \(\lambda_i=\mu_i+\nu_i\), and write \(u_i=d\mu_i/d\lambda_i\) and \(v_i=d\nu_i/d\lambda_i\). The hockey-stick identity and (17) give
\[
\int(u_i-av_i)_+\,d\lambda_i\le d,
\qquad
\int(v_i-au_i)_+\,d\lambda_i\le d.
\tag{18}
\]
Define finite subprobability measures \(\mu_i^0,\nu_i^0\) by the densities
\[
u_i^0:=\min\{u_i,av_i\},
\qquad
v_i^0:=\min\{v_i,au_i\}.
\tag{19}
\]
Then \(\mu_i^0\le\mu_i\), \(\nu_i^0\le\nu_i\), and (18) gives
\[
\mu_i^0(\mathcal H_i)\ge1-d,
\qquad
\nu_i^0(\mathcal H_i)\ge1-d.
\tag{20}
\]
Moreover, pointwise
\[
u_i^0\le a v_i^0,
\qquad
v_i^0\le a u_i^0.
\tag{21}
\]
Indeed, for the first inequality, if \(v_i^0=v_i\), it follows from \(u_i^0\le av_i\); if \(v_i^0=au_i\), then \(av_i^0=a^2u_i\ge u_i\ge u_i^0\). The second inequality is symmetric.

For \(i\notin I\), set \(\mu_i^0=\nu_i^0=\mu_i\). Form the finite product measures
\[
\mu=\bigotimes_{i=1}^k\mu_i,
\quad
\nu=\bigotimes_{i=1}^k\nu_i,
\quad
\mu^0=\bigotimes_{i=1}^k\mu_i^0,
\quad
\nu^0=\bigotimes_{i=1}^k\nu_i^0.
\tag{22}
\]
On the affected coordinates, take the product dominating measure \(\bigotimes_{i\in I}\lambda_i\); unchanged coordinates carry their common probability measure. The corresponding product densities are products of the coordinate densities. Thus \(u_i^0\le u_i\), \(v_i^0\le v_i\), and (21) prove respectively \(\mu^0\le\mu\), \(\nu^0\le\nu\), and \(\mu^0\le a^m\nu^0\). Also, by (20),
\[
\mu^0(\mathcal H^\oplus)
=\prod_{i\in I}\mu_i^0(\mathcal H_i)
\ge(1-d)^m\ge1-md.
\tag{23}
\]
Therefore, for every joint event \(E\in\mathscr H^\oplus\), not merely for a rectangle,
\[
\begin{aligned}
\mu(E)
&\le \mu^0(E)+1-\mu^0(\mathcal H^\oplus)\\
&\le a^m\nu^0(E)+md\\
&\le e^{m\varepsilon/2}\nu(E)+m\delta/2\\
&\le e^\varepsilon\nu(E)+\delta,
\end{aligned}
\tag{24}
\]
because \(m\le2\). By (9), \(\mu\) and \(\nu\) are exactly the two global output laws, so (24) is (15). The case \(m=0\) is equality, the case \(m=1\) retains the stronger factor parameters, and the case \(m=2\) uses each factor budget exactly once. No union bound or composition over the remaining \(k-m\) identical factors occurs.

Finally, for any measurable deterministic map \(g\) and any measurable event \(G\) in its codomain, apply (15) to \(E=g^{-1}(G)\). This proves postprocessing directly. Taking \(g=\mathrm{Dec}\) gives the decoded claim. Since the factor privacy interface covered arbitrary inputs, every step above remains valid for nonrealizable labels and padding records.

## Target-Step Assembly

Lemma~\ref{lem:step-003-routing-measurability} proves that raw block membership, quotient coding, factor counts, every first-prefix coordinate, padding, and the combined routing map are measurable on each fixed sample space \(Z^n\). Lemma~\ref{lem:step-003-padded-prefix} proves the exact list-level fact needed when deletion or insertion shifts an ordered prefix: after passing to multisets there is only one leaving and one entering value, including a next real record or a padding record at the full/short boundary.

Proposition~\ref{prop:step-003-support-two} applies that lemma to a global replacement. A same-block replacement changes at most one factor input; a cross-block replacement is one deletion from the leaving factor and one insertion into the entering factor, so at most two factor multisets change. The accepted permutation invariance aligns each changed multiset pair into ordered one-coordinate neighbors before accepted factor privacy is invoked. The argument explicitly includes selected and unselected changed rows, arbitrary labels, and every shortage/full transition.

Proposition~\ref{prop:step-003-product-kernel} composes the measurable routed factor kernels into the exact independently randomized tuple kernel (9), proves kernel measurability for all events of \(\mathscr H^\oplus\), and uses the accepted decoder and risk-pullback results to establish the required decoded output convention. Proposition~\ref{prop:step-003-joint-composition} then proves the DP inequality for every joint tuple event by constructing high-mass mutually dominated factor submeasures. Because only the affected set is truncated and its size is at most two, the exact cost is at most
\[
\left(2\cdot\frac\varepsilon2,2\cdot\frac\delta2\right)
=(\varepsilon,\delta),
\tag{25}
\]
independently of \(k\). Measurable decoding is deterministic postprocessing. These five named results establish every clause of the binding `step_003` row under exactly the allowed assumptions and accepted dependencies.

## Explicit Rate Audit

- Exposed variables: fixed sample size \(n\), factor count \(k\), quotas \((q_i)_i\), and privacy parameters \(\varepsilon,\delta\).
- Hidden constants may depend on: None in this step; every privacy parameter and affected-factor count is exact.
- Hidden constants may not depend on: \(X,\Sigma,C,k,(q_i)_i,n,\varepsilon,\delta\), targets, distributions, labels, quotient cardinalities, or support sizes.
- Fixed quantities: the setting's padding records, quotient maps, factor privacy split \((\varepsilon/2,\delta/2)\), and independent factor-randomness convention.
- Probability mode: privacy is pointwise for every ordered pair of adjacent fixed datasets and every measurable tuple or decoded event. No sample-distribution averaging or utility probability occurs.
- Horizon mode: one fixed sample size \(n\) and one invocation; no asymptotic, recursive, all-time, or uniform-in-candidate upgrade.
- Norm mode: approximate-DP event inequalities on \(\mathscr H^\oplus\), with exact measurable decoded \(0\)-\(1\) risk events inherited from accepted `step_001`.
- Admissibility conditions and auxiliary tolerances: exactly Assumptions~\ref{assump:canonical-product}, \ref{assump:countably-coded-evaluation}, and \ref{assump:global-privacy-range}, plus the two accepted dependency interfaces; no auxiliary tolerance.
- Term absorption or simplification inequalities: for \(m=|I|\le2\), \(m\varepsilon/2\le\varepsilon\) and \(m\delta/2\le\delta\). Equation (23) proves the additive failure mass by \((1-\delta/2)^m\ge1-m\delta/2\); no factor-count term is dropped.
- Probability conversion: None. Equations (18)--(24) are deterministic inequalities between the two fixed output laws.
- Contribution to any Rate Specialization Bridge: exports a global privacy cost independent of \(k\) beyond the exact support-two certificate; it introduces no sample-complexity or quota loss.
- Baseline-reduction check: at \(k=1\), every global replacement is same-block, so the tuple kernel is the sole routed factor kernel and is actually \((\varepsilon/2,\delta/2)\)-DP, hence \((\varepsilon,\delta)\)-DP. When \(n\ge q_1\), \(J_1=n\) and routing is the unpadded first-\(q_1\) call to the same quotient-first Yan rule. No cross-factor cost or surrogate output is introduced.

## Blockers

None

## Notation And Assumption Notes

- `Public-facing`: \(\bar A_n^{\oplus,Q}\) is the setting-specified routed tuple kernel, and \(\bar A_n^{\oplus,\mathrm{dec}}\) denotes only its deterministic decoded pushforward. The exported interface is measurability plus all-input replacement-\((\varepsilon,\delta)\)-DP, with affected-factor support at most two. These objects are derived in Propositions~\ref{prop:step-003-product-kernel} and \ref{prop:step-003-joint-composition}.
- `Appendix-local`: \(Y_i=Q_i\times\{0,1\}\), the total route \(\varphi_i\), the ordered routed list \(R_i(S)\), and \(\operatorname{Pad}_{q,p}\) express the setting's routing and padding operation. They are direct expressions in setting objects, not new assumptions or theorem-facing parameters.
- `Appendix-local`: \(\mathcal H_\Sigma\) and \(\mathscr G_{\rm ev}\) record the setting's finite-evaluation decoder convention. The actual learner output remains the accepted standard-Borel tuple space, where accepted `step_001` also makes every displayed fixed-\(c,D\) risk event measurable.
- `Proof-local`: \(F_{i,r,j}\), multiset brackets, the affected set \(I(S,S')\), its size \(m\), factor output laws \(\mu_i,\nu_i\), their dominating measures and densities, and the truncated submeasures \(\mu_i^0,\nu_i^0\) are local proof bookkeeping. Each is defined before use and none is exported.
- Constant provenance: \(a=e^{\varepsilon/2}\) and \(d=\delta/2\) are direct expressions of the setting-defined factor privacy split. The only structural bound is the proved integer \(m\le2\). No free constant, threshold, margin, radius, or cardinality parameter is introduced.
- Assumption provenance: block disjointness and whole-domain routing are primitive in Assumption~\ref{assump:canonical-product}; block/cell measurability and countable discrete quotient routing are primitive in Assumption~\ref{assump:countably-coded-evaluation}; the privacy range is primitive in Assumption~\ref{assump:global-privacy-range}. Factor totality, permutation invariance, and all-input privacy are accepted derived outputs of `step_002`. Routed-prefix stability, support two, global kernel legality, and global privacy are proved in this step.
- Boundary audit: same-block replacements, cross-block moves, deleted/inserted rows before and after the quota, \(J_i<q_i\), \(J_i=q_i\), \(J_i>q_i\), padding values equal to real records, arbitrary and inconsistent labels, \(m=0,1,2\), and \(k=1\) are all included. The construction never invokes factor utility on padded data.
- Diagnostic boundary: the paired `global_proof.md` and `global_proof_review.md` were read only after verifying SHA-256 values `a52f1ff37024c621941fb30aa5b2f95633e56d45947fa928f6e14e121e87e5e5` and `17fca51224903071cd28879f9e382b2e3d9ecf3d5ce7b2abf897e0668eba0c48`, and the review status `ACCEPTED`. Their step-relevant planning suggestion -- align prefix multisets and compose only the two affected factor laws -- is independently proved in Lemma~\ref{lem:step-003-padded-prefix} and Propositions~\ref{prop:step-003-support-two} and \ref{prop:step-003-joint-composition}. Neither diagnostic artifact is evidence, a cited result, an assumption source, or authority to change the binding claim.
