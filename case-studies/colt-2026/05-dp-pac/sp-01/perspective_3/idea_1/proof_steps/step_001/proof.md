# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove
  \[
  \lvert C_{k,N}\rvert=(N+1)^k,\qquad
  \operatorname{VC}(C_{k,N})=k,\qquad
  \operatorname{LD}(C_{k,N})
    =k\lfloor\log_2(N+1)\rfloor,
  \]
  including endpoint cuts and exact Littlestone-dimension additivity.
- Depends on: None.
- Assumptions used: Primitive class definitions; no technical assumption.
- Technical challenge: Exact Littlestone lower and upper bounds on a disjoint tagged product.
- Intended proof tool or cited result: Direct shattering, a binary-search mistake tree, and per-tag online mistake-budget derivations.
- Output target: Structural identity certificate.
- Rate objective: R2, exact dependence on \(k,N\).
- Row-local review status in the accepted sketch: `PENDING` (the acceptance gate is the separate accepted sketch review).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic setting conditions \(k\ge 2\) and \(N\ge 2\).
  - The setting definitions
    \[
    X_{k,N}=[k]\times[N],\qquad
    \tau_t(x)=\mathbf 1\{x\ge t\},\qquad
    C_{k,N}=\{c_{\boldsymbol t}:\boldsymbol t\in[N+1]^k\},
    \]
    where \(c_{\boldsymbol t}(i,x)=\tau_{t_i}(x)\).
  - The standard complete binary mistake-tree definition of \(\operatorname{LD}\), restated explicitly below.
- Technical assumptions from `setting.md`: None. In particular, none of `assump:candidate-regime`, `assump:central-dp`, or `assump:distribution-free-realizable-pac` is used.
- Accepted dependency step proof/review artifacts: None; the accepted sketch lists no dependency for this first step.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None at the target level. Lemma~\ref{lem:step-001-mistake-to-ld} is a general conditional implication, and its online-strategy hypothesis is proved for \(C_{k,N}\) by Lemma~\ref{lem:step-001-product-budget} before it is used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the primitive tagged-threshold definitions with \(k\ge2,N\ge2\), the \(N+1\) one-tag cuts are pairwise distinct, the parameter map \(\boldsymbol t\mapsto c_{\boldsymbol t}\) is injective, and \(\lvert C_{k,N}\rvert=(N+1)^k\). | Exact cardinality and endpoint check. |
| `unit_002` | lemma | Under the same primitive definitions, \(C_{k,N}\) shatters one point on every tag and no set of \(k+1\) points, so \(\operatorname{VC}(C_{k,N})=k\). | Exact VC identity. |
| `unit_003` | lemma | Under the primitive one-tag threshold definition and Lemma~\ref{lem:step-001-cardinality}, if \(d_N=\lfloor\log_2(N+1)\rfloor\), then the one-tag class has Littlestone dimension \(d_N\) and admits a deterministic realizable online strategy with at most \(d_N\) mistakes. | Exact one-tag lower/upper tree bounds and the per-tag budget used in the product upper bound. |
| `unit_004` | lemma | Under the primitive product definition and Lemma~\ref{lem:step-001-one-tag-ld}, concatenating one depth-\(d_N\) tree on each of the \(k\) tags gives a depth-\(kd_N\) tree shattered by \(C_{k,N}\). | Product Littlestone lower bound. |
| `unit_005` | lemma | Under the primitive product definition and the one-tag strategy in Lemma~\ref{lem:step-001-one-tag-ld}, running one version-space strategy per tag makes at most \(kd_N\) mistakes on every \(C_{k,N}\)-realizable sequence. | Exact additive online mistake budget. |
| `unit_006` | lemma | For any binary class, if a deterministic online rule makes at most \(B\) mistakes on every realizable sequence, then the class has Littlestone dimension at most \(B\). | Self-contained bridge from the product budget to the product LD upper bound. |
| `unit_007` | proposition | Under the primitive product definition and Lemmas~\ref{lem:step-001-product-lower}, \ref{lem:step-001-product-budget}, and \ref{lem:step-001-mistake-to-ld}, \(\operatorname{LD}(C_{k,N})=kd_N\). | Packages the exact product Littlestone identity for export. |

Atomic step = no. Cardinality, VC dimension, one-tag tree depth, product lower-tree concatenation, product online budget, and the mistake-budget-to-tree implication are logically independent audit units.

## Cited Result Applications

No paper result, external theorem, or dependency-step result is used. In particular, Littlestone additivity is not cited; both directions are proved below in the branch notation.

The local results used later in this step have the following checked interfaces.

| Result | Restated statement in current notation | Required basis and discharge | Conclusion used later |
| ------ | --------------------------------------- | ---------------------------- | --------------------- |
| Lemma~\ref{lem:step-001-cardinality} | The cuts \(\tau_t\), \(t\in[N+1]\), are distinct and \(\lvert C_{k,N}\rvert=(N+1)^k\). | Directly from \(\tau_t(x)=\mathbf1\{x\ge t\}\), with \(N\ge2\). | Supplies the one-tag concept count and the target cardinality. |
| Lemma~\ref{lem:step-001-vc} | \(\operatorname{VC}(C_{k,N})=k\). | Directly from the independent tags and monotonicity of every \(\tau_t\). | Supplies the target VC identity. |
| Lemma~\ref{lem:step-001-one-tag-ld} | The one-tag class has LD \(d_N\) and a realizable mistake budget \(d_N\). | The count from Lemma~\ref{lem:step-001-cardinality}; the lower tree and online rule are constructed locally. | Supplies the tree copied in Lemma~\ref{lem:step-001-product-lower} and the per-tag strategy in Lemma~\ref{lem:step-001-product-budget}. |
| Lemma~\ref{lem:step-001-product-lower} | \(\operatorname{LD}(C_{k,N})\ge kd_N\). | The one-tag shattered tree and coordinate independence in the displayed definition of \(C_{k,N}\). | Lower half of Proposition~\ref{prop:step-001-product-ld}. |
| Lemma~\ref{lem:step-001-product-budget} | A deterministic product rule has at most \(kd_N\) mistakes on every \(C_{k,N}\)-realizable sequence. | The one-tag strategy is run independently on each observed tag. | Discharges the conditional hypothesis of Lemma~\ref{lem:step-001-mistake-to-ld}. |
| Lemma~\ref{lem:step-001-mistake-to-ld} | A realizable mistake bound \(B\) implies LD at most \(B\). | Proved by walking down a putative depth-\(B+1\) shattered tree against the rule's prediction. | Converts Lemma~\ref{lem:step-001-product-budget} into the product upper bound. |
| Proposition~\ref{prop:step-001-product-ld} | \(\operatorname{LD}(C_{k,N})=kd_N\). | The preceding lower bound and mistake-budget upper bound. | Supplies the target LD identity. |

## Local Derivation

We use the following explicit convention. A complete binary instance tree of depth \(D\) over a domain \(\mathcal X\) has an instance \(x_\sigma\in\mathcal X\) at every node \(\sigma\in\{0,1\}^{<D}\). A binary class \(H\subseteq\{0,1\}^{\mathcal X}\) shatters the tree if, for every \(b=(b_1,\ldots,b_D)\in\{0,1\}^D\), there is \(h_b\in H\) such that

\[
h_b(x_{b_{<r}})=b_r\qquad(1\le r\le D),
\]

where \(b_{<r}=(b_1,\ldots,b_{r-1})\). The Littlestone dimension is the largest shattered depth. This is the convention used throughout the proof; no tree/mistake equivalence is assumed without proof.

### unit_001: lemma

**Lemma (Distinct tagged cuts and exact cardinality).** \(\label{lem:step-001-cardinality}\)
Under the primitive tagged-threshold definitions with integers \(k\ge2\) and \(N\ge2\), the functions \(\tau_t\), \(t\in[N+1]\), are pairwise distinct, the parameterization \(\boldsymbol t\mapsto c_{\boldsymbol t}\) is injective, and

\[
\lvert C_{k,N}\rvert=(N+1)^k.
\]

**Proof / justification.**
If \(t<s\) in \([N+1]\), then \(t\le N\), so \(x=t\) is a valid point of \([N]\). At that point,

\[
\tau_t(t)=1,\qquad \tau_s(t)=0.
\]

Thus all \(N+1\) cuts are distinct. This comparison includes the endpoints: \(\tau_1\equiv1\) and \(\tau_{N+1}\equiv0\) on \([N]\), and they disagree at every point.

If \(\boldsymbol t\ne\boldsymbol s\), choose a tag \(i\) for which \(t_i\ne s_i\). The preceding one-tag argument supplies an \(x\in[N]\) with \(\tau_{t_i}(x)\ne\tau_{s_i}(x)\), hence

\[
c_{\boldsymbol t}(i,x)\ne c_{\boldsymbol s}(i,x).
\]

The parameter map is therefore injective. It is surjective onto \(C_{k,N}\) by the class definition, and its domain has size \((N+1)^k\), proving the formula. \(\square\)

### unit_002: lemma

**Lemma (VC dimension of the tagged threshold product).** \(\label{lem:step-001-vc}\)
Under the primitive tagged-threshold definitions with integers \(k\ge2\) and \(N\ge2\),

\[
\operatorname{VC}(C_{k,N})=k.
\]

**Proof / justification.**
For the lower bound, consider

\[
S=\{(i,1):i\in[k]\}.
\]

Given arbitrary desired labels \(b_1,\ldots,b_k\in\{0,1\}\), set

\[
t_i=\begin{cases}
1,&b_i=1,\\
2,&b_i=0.
\end{cases}
\]

Both choices lie in \([N+1]\) because \(N\ge2\), and \(\tau_{t_i}(1)=b_i\). Hence \(S\) is shattered and \(\operatorname{VC}(C_{k,N})\ge k\).

For the upper bound, any set of \(k+1\) distinct points of \([k]\times[N]\) contains two points \((i,x)\) and \((i,y)\) on the same tag. Relabel them so that \(x<y\). For every threshold \(t_i\),

\[
\tau_{t_i}(x)=1\quad\Longrightarrow\quad x\ge t_i
\quad\Longrightarrow\quad y\ge t_i
\quad\Longrightarrow\quad \tau_{t_i}(y)=1.
\]

Thus the labeling \((1,0)\) on these two points cannot be realized by any member of \(C_{k,N}\). No \((k+1)\)-point set is shattered, so \(\operatorname{VC}(C_{k,N})\le k\). \(\square\)

### unit_003: lemma

**Lemma (Exact one-tag Littlestone dimension and halving budget).** \(\label{lem:step-001-one-tag-ld}\)
Under the primitive one-tag definition

\[
T_N=\{\tau_t:t\in[N+1]\}\subseteq\{0,1\}^{[N]},
\]

with \(N\ge2\), and Lemma~\ref{lem:step-001-cardinality}, define

\[
q=N+1,\qquad d_N=\lfloor\log_2 q\rfloor.
\]

Then \(T_N\) shatters a complete binary instance tree of depth \(d_N\), shatters no tree of depth greater than \(d_N\), and admits a deterministic online prediction rule that makes at most \(d_N\) mistakes on every finite labeled sequence realizable by \(T_N\). Consequently,

\[
\operatorname{LD}(T_N)=d_N.
\]

**Proof / justification.**
First, suppose \(T_N\) shatters a tree of depth \(D\). Choose one witnessing concept for each of the \(2^D\) root-to-leaf label sequences. Two different label sequences first diverge at some common node and prescribe opposite labels to the same queried point there. Their witnessing concepts must therefore be different. Lemma~\ref{lem:step-001-cardinality} gives exactly \(q\) distinct one-tag concepts, so

\[
2^D\le q,
\]

and hence \(D\le\lfloor\log_2q\rfloor=d_N\).

For the matching lower bound, put \(m=2^{d_N}\), so \(m\le q=N+1\) and \(m-1\le N\). We construct a depth-\(d_N\) tree using only the thresholds \(t\in[m]\). At a node whose surviving threshold set is a consecutive interval

\[
I=\{a,a+1,\ldots,a+2^s-1\}
\]

of size \(2^s\), where \(s\ge1\), query

\[
x_I=a+2^{s-1}-1.
\]

This is a valid point of \([N]\): throughout the construction \(1\le x_I\le m-1\le N\). On the edge labeled \(1\), retain the lower half \(\{a,\ldots,x_I\}\); on the edge labeled \(0\), retain the upper half \(\{x_I+1,\ldots,a+2^s-1\}\). In the first case every retained threshold obeys \(t\le x_I\) and therefore \(\tau_t(x_I)=1\); in the second case every retained threshold obeys \(t>x_I\) and therefore \(\tau_t(x_I)=0\). Starting from \(I=[m]\), every root-to-leaf path leaves a singleton after exactly \(d_N\) splits, and that singleton threshold realizes every edge label on the path. The constructed tree is therefore shattered.

It remains to record the online interface needed for the product upper bound. Maintain the version space \(V\subseteq T_N\) of concepts consistent with all previously revealed examples, starting from \(V=T_N\). At a query \(x\), predict a label having the larger number of concepts in

\[
V_y(x)=\{\tau\in V:\tau(x)=y\},\qquad y\in\{0,1\},
\]

with an arbitrary fixed tie rule. After the true label \(y\) is revealed, replace \(V\) by \(V_y(x)\). On a realizable sequence, the realizing threshold remains in \(V\), so \(V\) never becomes empty. Whenever the prediction is wrong, the surviving side has cardinality at most half the previous cardinality. If \(r\) mistakes occur, then

\[
1\le \lvert V\rvert\le q\,2^{-r},
\]

so \(2^r\le q\) and therefore \(r\le d_N\). This also covers the endpoint targets \(t=1\) and \(t=N+1\): each belongs to the initial version space and remains present whenever it is the realizing target. \(\square\)

### unit_004: lemma

**Lemma (Concatenated tagged trees give the product lower bound).** \(\label{lem:step-001-product-lower}\)
Under the primitive definition of \(C_{k,N}\), with \(k\ge2,N\ge2\), and the depth-\(d_N\) one-tag tree from Lemma~\ref{lem:step-001-one-tag-ld}, the product class shatters a complete tree of depth \(kd_N\). Hence

\[
\operatorname{LD}(C_{k,N})\ge kd_N.
\]

**Proof / justification.**
Attach a copy of the one-tag tree on tag \(1\) first. Below every leaf attach a copy on tag \(2\), and continue through tag \(k\). Equivalently, split any path label vector \(b\in\{0,1\}^{kd_N}\) into consecutive blocks

\[
b=(b^{(1)},\ldots,b^{(k)}),\qquad b^{(i)}\in\{0,1\}^{d_N}.
\]

During block \(i\), if the corresponding one-tag copy queries \(x\in[N]\), the product tree queries \((i,x)\). By Lemma~\ref{lem:step-001-one-tag-ld}, for each block \(b^{(i)}\) there is a threshold \(t_i\in[N+1]\) whose one-tag labels realize that entire block. Because the coordinates \(t_1,\ldots,t_k\) are independent in the defining parameter set \([N+1]^k\), the single product concept \(c_{(t_1,\ldots,t_k)}\) realizes all \(k\) blocks of the chosen path. Every length-\(kd_N\) path is therefore realized, proving the stated lower bound. \(\square\)

### unit_005: lemma

**Lemma (Summed per-tag realizable mistake budget).** \(\label{lem:step-001-product-budget}\)
Under the primitive definition of \(C_{k,N}\), with \(k\ge2,N\ge2\), and the one-tag online rule of Lemma~\ref{lem:step-001-one-tag-ld}, there is a deterministic online rule that makes at most \(kd_N\) mistakes on every finite sequence realizable by \(C_{k,N}\).

**Proof / justification.**
Maintain \(k\) independent one-tag version spaces \(V_1,\ldots,V_k\), each initialized to \(T_N\). When the current instance is \((i,x)\), use the one-tag halving rule based only on \(V_i\), reveal the resulting prediction, and update only \(V_i\) after observing the label.

If the full sequence is realized by \(c_{\boldsymbol t}\), then the subsequence on tag \(i\) is realized by \(\tau_{t_i}\). Lemma~\ref{lem:step-001-one-tag-ld} therefore bounds the number \(M_i\) of mistakes charged to tag \(i\) by \(d_N\). Each global mistake occurs on exactly one tag and is charged exactly once, so

\[
M_{\mathrm{total}}=\sum_{i=1}^k M_i
\le\sum_{i=1}^k d_N
=kd_N.
\]

There is no cross-tag condition to maintain: observations on tag \(i\) constrain only \(t_i\). The same argument includes \(k=2\) and includes any coordinate whose realizing threshold is either endpoint. \(\square\)

### unit_006: lemma

**Lemma (A realizable mistake budget upper-bounds Littlestone dimension).** \(\label{lem:step-001-mistake-to-ld}\)
Let \(H\subseteq\{0,1\}^{\mathcal X}\) be any binary class and let \(B\in\mathbb Z_{\ge0}\). If a deterministic online prediction rule makes at most \(B\) mistakes on every finite labeled sequence realizable by \(H\), then

\[
\operatorname{LD}(H)\le B.
\]

**Proof / justification.**
Suppose instead that \(H\) shatters a complete tree of depth \(B+1\). Starting at its root, present the instance at the current node to the rule. If the rule predicts \(p\in\{0,1\}\), reveal the label \(1-p\) and descend along that edge. Repeat for all \(B+1\) levels. By construction the rule makes a mistake at every level. By shattering, the resulting root-to-leaf labeled sequence is realized by some single member of \(H\). This is a realizable sequence with \(B+1\) mistakes, contradicting the assumed budget. \(\square\)

### unit_007: proposition

**Proposition (Exact Littlestone dimension of the tagged product).** \(\label{prop:step-001-product-ld}\)
Under the primitive tagged-threshold definitions with integers \(k\ge2,N\ge2\), and Lemmas~\ref{lem:step-001-product-lower}, \ref{lem:step-001-product-budget}, and \ref{lem:step-001-mistake-to-ld},

\[
\operatorname{LD}(C_{k,N})
=k\lfloor\log_2(N+1)\rfloor.
\]

**Proof / justification.**
Lemma~\ref{lem:step-001-product-lower} gives

\[
\operatorname{LD}(C_{k,N})\ge kd_N.
\]

Lemma~\ref{lem:step-001-product-budget} constructs a deterministic rule with realizable mistake budget \(kd_N\). Applying Lemma~\ref{lem:step-001-mistake-to-ld} with \(H=C_{k,N}\) and \(B=kd_N\) gives

\[
\operatorname{LD}(C_{k,N})\le kd_N.
\]

The bounds agree, and \(d_N=\lfloor\log_2(N+1)\rfloor\). \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-001-cardinality} proves, for the exact parameterized class in `setting.md`, that

\[
\lvert C_{k,N}\rvert=(N+1)^k.
\]

Lemma~\ref{lem:step-001-vc} proves on the same tagged domain that

\[
\operatorname{VC}(C_{k,N})=k.
\]

For Littlestone dimension, Lemma~\ref{lem:step-001-one-tag-ld} proves both the exact one-tag tree depth and the one-tag realizable mistake budget. Lemma~\ref{lem:step-001-product-lower} concatenates the one-tag trees to obtain the lower bound, while Lemma~\ref{lem:step-001-product-budget} sums the independent tag budgets and Lemma~\ref{lem:step-001-mistake-to-ld} converts that constructed budget into the matching upper bound. Proposition~\ref{prop:step-001-product-ld} therefore proves

\[
\operatorname{LD}(C_{k,N})
=k\lfloor\log_2(N+1)\rfloor.
\]

These are exactly the three identities in the accepted sketch row. The endpoint members are explicitly preserved: \(t=1\) is all one, \(t=N+1\) is all zero, the two functions are distinct, and both remain legal targets in every version-space argument. For \(k=2\), the lower construction concatenates exactly two one-tag trees and the upper ledger sums exactly two budgets. For \(N=N_0\), the setting has \(N_0\ge2\), and every binary-search query satisfies \(x\le2^{d_N}-1\le N\); no large-\(N\) limit is used. No claim from `step_016`, including the tower specialization, is used or proved here.

## Explicit Rate Audit

- Exposed variables: \(k,N\), together with the exact outputs \(\lvert C_{k,N}\rvert\), \(\operatorname{VC}(C_{k,N})\), and \(\operatorname{LD}(C_{k,N})\).
- Hidden constants may depend on: None; all three formulas are exact.
- Hidden constants may not depend on: \(k,N\), or any later learner, privacy, risk, or tower parameter.
- Fixed quantities: The binary label convention, the tagged domain, and the complete binary mistake-tree convention.
- Probability mode: Deterministic; no random object, event, expectation, or confidence parameter occurs.
- Horizon mode: Finite combinatorial depth and finite online sequences; no asymptotic, stopping-time, or all-time claim occurs.
- Norm mode: Exact cardinality, VC shattering dimension, and Littlestone mistake-tree dimension; no risk norm is used.
- Admissibility conditions and auxiliary tolerances: Only \(k\ge2,N\ge2\); there is no auxiliary tolerance.
- Term absorption or simplification inequalities: None. The only floor is derived exactly from \(2^D\le N+1\), and the product bounds agree exactly.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports the exact structural identities consumed by R2. The tower substitution and all \(r\)-asymptotics are deliberately left to `step_016`.
- Baseline-reduction check: At \(k=2\) the formulas remain \((N+1)^2\), VC \(2\), and LD \(2\lfloor\log_2(N+1)\rfloor\). At the boundary \(N=N_0\ge2\) the same exact proof applies. The endpoint cuts \(t=1,N+1\) are retained rather than removed or identified, so the one-tag cardinality and every product formula use the original class without a conservative loss.

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`: No new helper notation is exported. The public interface is only
  \[
  \lvert C_{k,N}\rvert=(N+1)^k,\qquad
  \operatorname{VC}(C_{k,N})=k,\qquad
  \operatorname{LD}(C_{k,N})=k\lfloor\log_2(N+1)\rfloor,
  \]
  in the original setting notation.
- `Appendix-local`: \(T_N=\{\tau_t:t\in[N+1]\}\), \(q=N+1\), and \(d_N=\lfloor\log_2q\rfloor\). Each is directly defined from setting objects and introduces no free constant or assumption.
- `Proof-local`: Binary path prefixes, the consecutive threshold intervals \(I\), the split points \(x_I\), the threshold subset \([2^{d_N}]\), and the version spaces \(V,V_1,\ldots,V_k\). Their validity, nonemptiness, sizes, and query ranges are proved in the corresponding local units; none is a theorem-facing condition.
- Constant provenance: \(q\) and \(d_N\) are exact expressions in \(N\); the product budget \(kd_N\) is proved by Lemma~\ref{lem:step-001-product-budget}. No unspecified constant, radius, threshold, margin, or bounded quantity is introduced.
- Assumption provenance: The only primitive inputs are the class/domain definitions and \(k\ge2,N\ge2\). Tree shattering, version-space nonemptiness, and mistake bounds are derived locally. There is no generated event, invariant, stability condition, or local hypothesis used as a theorem assumption.
- Endpoint and distinctness scope: If \(t<s\), the witness point \(x=t\) is always valid because \(t\le N\). Thus the argument also covers \(t=1\) and \(s=N+1\). When \(N+1\) is a power of two, the lower tree uses the endpoint threshold \(N+1\) but never queries outside \([N]\); otherwise it uses a subset of the legal thresholds, which is sufficient for the lower bound.
- Diagnostic boundary: The paired `global_proof.md` and `global_proof_review.md` were read only after confirming that the review status is `ACCEPTED`. Their step-relevant suggestion of a balanced one-tag tree, concatenated lower trees, and a summed per-tag budget was used only to plan the proof. Every such statement is derived independently above; the diagnostic is not evidence, a cited result, an assumption source, or authority to alter the accepted target claim.
