# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove \(\operatorname{VC}(C)=k\), \(\operatorname{LD}(C)=\sum_i d_i\), and, when all factors are finite, \(\log\lvert C\rvert=\sum_i\log\lvert C_i\rvert\); also record \(d_i\ge1\), \(s_i\ge2\), \(k\le M/2\), and \(s_i\le r_i+2\).
- Dependencies: None.
- Assumptions used: Primitive: `assump:canonical-product`, `assump:vc-one-factors`.
- Technical challenge: Obtain both directions of LD additivity without assuming a chosen online algorithm is optimal globally.
- Intended proof tool or cited result: Direct shattered-set projection/product argument; concatenated mistake trees for the lower LD inequality; product of factor optimal mistake-bound learners for the upper inequality.
- Output target: Exact structural identity package.
- Rate objective: Structural parameters are exact; no hidden constant or probability mode.
- Row-local review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by `proof_sketch_review.md`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:canonical-product`: \(X=\bigsqcup_{i=1}^kX_i\) for finite \(k\ge1\), and the restriction map is a bijection \(C\to\prod_{i=1}^k C_i\).
  - `assump:vc-one-factors`: every \(C_i\) is nonconstant, has \(\operatorname{VC}(C_i)=1\), and has finite \(d_i=\operatorname{LD}(C_i)\).
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency step proof/review artifacts: None; this is the first step.

No privacy, distributional, cardinality-finiteness, or learner-output restriction is added as an assumption. Finiteness of all \(C_i\) is used only inside the explicitly conditional cardinality clause.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors}, \(\operatorname{VC}(C)=k\). | Proves both directions of the global VC identity. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors}, \(\operatorname{LD}(C)\ge\sum_{i=1}^k d_i\). | Supplies the concatenated-tree lower inequality. |
| `unit_003` | lemma | Under Assumption~\ref{assump:vc-one-factors}, for every factor \(i\) there is a deterministic online predictor making at most \(d_i\) mistakes on every \(C_i\)-realizable finite sequence. | Proves, rather than cites, the factor mistake-budget interface needed for the LD upper inequality. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors} and Lemma~\ref{lem:step-001-factor-mistake}, \(\operatorname{LD}(C)\le\sum_{i=1}^k d_i\). | Supplies the factorwise mistake-budget upper inequality. |
| `unit_005` | lemma | Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors}, if every \(C_i\) is finite, then \(\log|C|=\sum_{i=1}^k\log|C_i|\). | Proves exactly the finite-cardinality clause and no infinite-cardinality analogue. |
| `unit_006` | lemma | Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors}, with \(r_i=\log^*d_i\) and \(M=M_{\oplus}(C)=\sum_i s_i\), one has \(d_i\ge1\), \(s_i\ge2\), \(k\le M/2\), and \(s_i\le r_i+2\) for every \(i\). | Supplies all exact scalar inequalities consumed downstream. |

## Cited Result Applications

No external paper result, named standard theorem, or dependency-step result is used. The complete-tree definition of Littlestone dimension is restated below, and the finite-LD mistake strategy is proved locally rather than cited.

The local results used later in this step are as follows.

| Result | Restated statement and assumptions | Conclusion used | Assumption discharge and use |
| ------ | ------------------------------------ | --------------- | ---------------------------- |
| Lemma~\ref{lem:step-001-vc-product} | Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors}, the disjoint full product has VC dimension \(k\). | \(\operatorname{VC}(C)=k\). | Disjointness, full-product surjectivity, nonconstancy, and factor VC-one are primitive; used in the target assembly. |
| Lemma~\ref{lem:step-001-ld-lower} | Under the same two assumptions, concatenating factor-shattered trees gives a global shattered tree. | \(\operatorname{LD}(C)\ge\sum_i d_i\). | Finite \(k\), finite factor LD, and full-product surjectivity are primitive; used in the target assembly. |
| Lemma~\ref{lem:step-001-factor-mistake} | Under Assumption~\ref{assump:vc-one-factors}, each finite-LD factor admits a deterministic version-space predictor with at most \(d_i\) mistakes. | Per-factor mistake budget \(d_i\). | Finite \(d_i\) is primitive; the strategy and its dimension-drop proof are local; used by Proposition~\ref{prop:step-001-ld-upper}. |
| Proposition~\ref{prop:step-001-ld-upper} | Under both primitive assumptions and Lemma~\ref{lem:step-001-factor-mistake}, routing queries to the factor predictors bounds every realizable global sequence. | \(\operatorname{LD}(C)\le\sum_i d_i\). | The partition and factor realizability come from the restriction bijection; used in the target assembly. |
| Lemma~\ref{lem:step-001-finite-cardinality} | Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors}, conditional on all factors being finite, the restriction bijection multiplies positive cardinalities. | \(\log|C|=\sum_i\log|C_i|\). | Nonconstancy makes every cardinality positive; factor finiteness is a local condition only for this clause; used in the target assembly. |
| Lemma~\ref{lem:step-001-structural-scales} | Under both primitive assumptions, nonconstancy and the base-two log-star definition imply the four scalar inequalities. | \(d_i\ge1\), \(s_i\ge2\), \(k\le M/2\), and \(s_i\le r_i+2\). | All quantities are setting-defined or accepted-sketch aliases; used in the target assembly. |

## Local Derivation

We use the following definition explicitly. A complete binary instance tree of depth \(t\) has an instance of the relevant domain at each internal node and two outgoing edges labeled \(0\) and \(1\). A class \(H\) shatters the tree if, for every root-to-leaf path, some \(h\in H\) assigns to every queried node on that path the label of the traversed edge. Then \(\operatorname{LD}(H)\) is the largest shattered depth (or infinity). Thus no online-learning characterization of Littlestone dimension is being assumed.

### unit_001: lemma

**Lemma (VC dimension of a disjoint full product).** \(\label{lem:step-001-vc-product}\)

Statement: Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors},
\[
\operatorname{VC}(C)=k.
\]

Proof / justification:

For every \(i\), nonconstancy of \(C_i\) gives concepts \(c_i^{(0)},c_i^{(1)}\in C_i\) and a point \(x_i\in X_i\) on which they disagree. Rename the two concepts so that \(c_i^{(b)}(x_i)=b\) for \(b\in\{0,1\}\). The points \(x_1,\ldots,x_k\) are distinct because the blocks are disjoint. Given any \(b=(b_1,\ldots,b_k)\in\{0,1\}^k\), full-product surjectivity supplies a concept \(c\in C\) whose restriction to \(X_i\) is \(c_i^{(b_i)}\) for every \(i\). Hence \(c(x_i)=b_i\), so \(\{x_1,\ldots,x_k\}\) is shattered and \(\operatorname{VC}(C)\ge k\).

Conversely, let \(S\subseteq X\) be any finite set shattered by \(C\). For a fixed \(i\), every labeling of \(S\cap X_i\) can be extended arbitrarily to a labeling of all of \(S\). A concept in \(C\) realizing that extended labeling restricts to a member of \(C_i\) realizing the original labeling of \(S\cap X_i\). Therefore \(S\cap X_i\) is shattered by \(C_i\), and \(\operatorname{VC}(C_i)=1\) gives \(|S\cap X_i|\le1\). Since the blocks partition the whole domain,
\[
|S|=\sum_{i=1}^k |S\cap X_i|\le k.
\]
Thus \(\operatorname{VC}(C)\le k\), proving the equality. \(\square\)

### unit_002: lemma

**Lemma (Concatenated-tree lower bound).** \(\label{lem:step-001-ld-lower}\)

Statement: Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors},
\[
\operatorname{LD}(C)\ge \sum_{i=1}^k d_i.
\]

Proof / justification:

For each \(i\), the identity \(d_i=\operatorname{LD}(C_i)<\infty\) supplies a complete binary tree \(\mathcal T_i\) of depth \(d_i\), with internal nodes in \(X_i\), shattered by \(C_i\). Construct a complete tree \(\mathcal T\) by starting with \(\mathcal T_1\), attaching a fresh copy of \(\mathcal T_2\) below every leaf, then attaching a fresh copy of \(\mathcal T_3\) below every resulting leaf, and continuing through factor \(k\). Because \(k\) is finite, \(\mathcal T\) has depth exactly \(\sum_{i=1}^k d_i\).

Fix any root-to-leaf path of \(\mathcal T\). Its segment inside the copies of \(\mathcal T_i\) is a path shattered by \(C_i\), so there is a concept \(c_i\in C_i\) matching all edge labels on that segment. The restriction bijection in Assumption~\ref{assump:canonical-product} supplies a single \(c\in C\) with \(c|_{X_i}=c_i\) simultaneously for every \(i\). This \(c\) matches every edge label on the full path. Since the path was arbitrary, \(C\) shatters \(\mathcal T\), proving the lower bound. \(\square\)

### unit_003: lemma

**Lemma (Finite Littlestone dimension gives the exact factor mistake budget).** \(\label{lem:step-001-factor-mistake}\)

Statement: Under Assumption~\ref{assump:vc-one-factors}, for each \(i\) there exists a deterministic online predictor \(\mathcal A_i\) that makes at most \(d_i\) mistakes on every finite sequence \((x_t,c_i(x_t))\) with \(x_t\in X_i\) and fixed \(c_i\in C_i\).

Proof / justification:

Fix \(i\). For every nonempty version class \(V\subseteq C_i\), write \(\ell(V)=\operatorname{LD}(V)\), and use the proof-local convention \(\ell(\varnothing)=-1\). Any tree shattered by \(V\) is also shattered by \(C_i\), so \(0\le\ell(V)\le d_i<\infty\). On a query \(x\in X_i\), let
\[
V_b(x):=\{h\in V:h(x)=b\},\qquad b\in\{0,1\}.
\]
The predictor outputs a label \(b\) maximizing \(\ell(V_b(x))\), with a fixed deterministic rule for ties, and after observing the true label \(y\) replaces \(V\) by \(V_y(x)\).

Suppose the predictor makes a mistake while the current nonempty version class has \(\ell(V)=q\). The realized branch \(V_y(x)\) remains nonempty. If it had \(\ell(V_y(x))=q\), then the predicted branch would have dimension at least \(q\) by the maximizing rule. Attaching depth-\(q\) trees shattered by the two branches below a root labeled by \(x\) would produce a depth-\(q+1\) tree shattered by \(V\), contradicting \(\ell(V)=q\). Consequently every mistake changes the maintained version class from dimension \(q\) to dimension at most \(q-1\).

Initially the dimension is \(d_i\). On a sequence labeled by a fixed \(c_i\in C_i\), that target remains in the maintained version class after every update, so the version class never becomes empty and never has dimension \(-1\). There can therefore be at most \(d_i\) strict integer drops caused by mistakes. This proves the stated budget without invoking an external online-learning theorem. \(\square\)

### unit_004: proposition

**Proposition (Factorwise mistake budgets upper-bound product Littlestone dimension).** \(\label{prop:step-001-ld-upper}\)

Statement: Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors} and Lemma~\ref{lem:step-001-factor-mistake},
\[
\operatorname{LD}(C)\le \sum_{i=1}^k d_i.
\]

Proof / justification:

Run the predictor from Lemma~\ref{lem:step-001-factor-mistake} separately on each block. When a global query \(x\in X\) arrives, the disjoint whole-domain partition determines its unique block \(X_i\); predict with \(\mathcal A_i\) and update only that factor predictor. If a global labeled sequence is realized by \(c\in C\), its subsequence in block \(X_i\) is realized by \(c|_{X_i}\in C_i\). The factor predictor therefore makes at most \(d_i\) mistakes, and the global predictor makes at most \(\sum_i d_i\) mistakes in total.

To turn this proved mistake bound into the desired tree upper bound without citing a characterization theorem, suppose for contradiction that \(C\) shattered a complete tree of depth \(1+\sum_i d_i\). Traverse this tree online. At each node, after the global predictor announces its label, take the edge with the opposite label. The tree is shattered, so the complete path produced this way is realized by some \(c\in C\). The global predictor has nevertheless made a mistake at every one of the \(1+\sum_i d_i\) nodes, contradicting its proved budget. Hence no such tree exists and the asserted upper bound follows. \(\square\)

### unit_005: lemma

**Lemma (Finite cardinality of a Cartesian product).** \(\label{lem:step-001-finite-cardinality}\)

Statement: Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors}, if every \(C_i\) is finite, then
\[
\log|C|=\sum_{i=1}^k\log|C_i|.
\]

Proof / justification:

The restriction map in Assumption~\ref{assump:canonical-product} is a bijection from \(C\) onto \(\prod_{i=1}^k C_i\). Assumption~\ref{assump:vc-one-factors} makes each factor nonconstant, hence \(|C_i|\ge2\), so all logarithms below are defined. When all factors are finite, and because \(k\) is finite, the bijection gives the integer identity
\[
|C|=\prod_{i=1}^k |C_i|.
\]
Taking the natural logarithm yields the displayed sum. If at least one factor is infinite, this proof makes no assertion involving a real-valued logarithm of its cardinality; that boundary is deliberately outside the target clause. For \(k=1\), the bijection simply gives \(|C|=|C_1|\). \(\square\)

### unit_006: lemma

**Lemma (Exact structural scale inequalities).** \(\label{lem:step-001-structural-scales}\)

Statement: Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors}, define, in the accepted-sketch notation,
\[
r_i:=\log^*d_i,\qquad
s_i:=1+\log^*(d_i+1),\qquad
M:=M_{\oplus}(C)=\sum_{j=1}^k s_j.
\]
Then, for every \(i\),
\[
d_i\ge1,qquad s_i\ge2,qquad s_i\le r_i+2,
\]
and consequently \(k\le M/2\).

Proof / justification:

Nonconstancy of \(C_i\) gives a point at which two factor concepts disagree. The depth-one tree rooted at that point is shattered by \(C_i\), so \(d_i=\operatorname{LD}(C_i)\ge1\). It follows that \(d_i+1>1\). By the definition of the base-two iterated logarithm, zero iterations cannot bring \(d_i+1\) to a value at most one, whence \(\log^*(d_i+1)\ge1\) and \(s_i\ge2\). Summing gives
\[
M=\sum_{i=1}^k s_i\ge2k,
\]
which is equivalent to \(k\le M/2\).

It remains to compare the two log-star arguments. The defining stopping time is monotone: if \(0<a\le b\), then \(\log^*a\le\log^*b\), because while both iterated values exceed one the increasing map \(\log_2\) preserves their order, and if the smaller value reaches at most one earlier its stopping time is already no larger. Also, for every integer \(d\ge1\), induction gives \(2^d\ge d+1\), hence \(\log_2(d+1)\le d\). Using the recurrence \(\log^*t=1+\log^*(\log_2t)\) for \(t>1\),
\[
\log^*(d_i+1)
=1+\log^*\!\bigl(\log_2(d_i+1)\bigr)
\le1+\log^*d_i
=r_i+1.
\]
Therefore \(s_i=1+\log^*(d_i+1)\le r_i+2\). The argument includes the boundary \(d_i=1\), where \(r_i=0\) and \(s_i=2\). \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-001-vc-product} gives the exact identity \(\operatorname{VC}(C)=k\). Lemma~\ref{lem:step-001-ld-lower} and Proposition~\ref{prop:step-001-ld-upper}, the latter based on the locally proved factor strategy in Lemma~\ref{lem:step-001-factor-mistake}, give the two opposite inequalities
\[
\sum_{i=1}^k d_i\le\operatorname{LD}(C)\le\sum_{i=1}^k d_i,
\]
and hence \(\operatorname{LD}(C)=\sum_i d_i\). Lemma~\ref{lem:step-001-finite-cardinality} gives \(\log|C|=\sum_i\log|C_i|\) under exactly the target's local condition that all factors are finite, while making no cardinality claim otherwise. Lemma~\ref{lem:step-001-structural-scales} gives \(d_i\ge1\), \(s_i\ge2\), \(k\le M/2\), and \(s_i\le r_i+2\). Together these named results prove the exact accepted `step_001` structural package.

For \(k=1\), the two dimension equalities reduce exactly to \(\operatorname{VC}(C)=\operatorname{VC}(C_1)=1\) and \(\operatorname{LD}(C)=d_1\), and the finite-cardinality clause reduces to the restriction bijection with \(C_1\). Thus the one-factor boundary is preserved without a surrogate or loss.

## Explicit Rate Audit

None. This step is not rate-bearing: every exported statement is an exact equality or displayed deterministic inequality, with no hidden constant, probability mode, horizon mode, norm conversion, auxiliary tolerance, term absorption, or baseline-rate specialization.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing objects.** \(X_i,C_i,d_i,s_i,M_{\oplus}(C)\) are defined in `setting.md`. The accepted sketch's \(r_i=\log^*d_i\) and \(M=M_{\oplus}(C)\) are public-facing abbreviations directly defined from those setting quantities; \(\log^*\) always uses the setting's base-two convention, while \(\log\) in the finite-cardinality identity is the setting's natural logarithm.
- **Proof-local objects.** The trees \(\mathcal T_i,\mathcal T\), version classes \(V,V_b(x)\), dimension bookkeeping function \(\ell\), factor predictors \(\mathcal A_i\), and the routed global predictor are proof-local witnesses constructed in the named local units. None is exported as a theorem assumption or downstream interface.
- **Appendix-local objects.** None beyond the paper-ready local lemmas and proposition themselves.
- **Constant provenance.** The convention \(\ell(\varnothing)=-1\) is proof-local bookkeeping used only to express strict dimension drops. The constants \(1\), \(2\), and \(1/2\) in the exported inequalities follow exactly from nonconstancy and the definitions of \(s_i\) and \(M\); no free or hidden constant is introduced.
- **Assumption provenance.** The only primitive conditions used are `assump:canonical-product` and `assump:vc-one-factors`. The shattered sets, concatenated tree, version spaces, predictors, and all inequalities are proved in this step. There is no generated event, stability condition, boundedness premise, recurrence, or local conditional hypothesis.
- **Full-product boundary.** Full Cartesian surjectivity is used explicitly to combine independently chosen factor witnesses in the VC lower bound and along every concatenated-tree path. Disjointness and coverage of the whole domain are used in the VC upper bound and routed predictor. The fineness of the canonical partition is not needed beyond supplying this exact primitive product representation.
- **Cardinality boundary.** The dimension identities and scalar inequalities do not require finite factor cardinality. Finiteness is introduced only as the local antecedent of Lemma~\ref{lem:step-001-finite-cardinality}; no \(\log|C_i|\) term is asserted or consumed for an infinite factor.
- **Diagnostic boundary.** The paired `global_proof_review.md` was checked and has status `ACCEPTED`. Its step-relevant suggestions--concatenated factor trees and a factorwise mistake-budget predictor--were used only as planning context. The derivations above independently prove both interfaces; `global_proof.md` is not evidence, a cited result, an assumption source, or authority to change the target claim.
