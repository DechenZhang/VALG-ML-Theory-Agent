# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For each factor, construct the specified fixed permutation-symmetrized fully totalized quotient-first Yan transition rule as a Markov kernel
  \[
  (Q_i\times\{0,1\})^{q_i}\rightsquigarrow(\mathcal H_i,\mathscr H_i);
  \]
  prove replacement-\((\varepsilon/2,\delta/2)\)-DP on every input; prove that on every unpadded realizable iid quotient sample its risk is at most \(1/64\) except with probability at most \(1/4096\); and prove that the complete internal sample threshold is at most the exact \(q_i\), including \(d_i=1\).
- Depends on: `step_001`.
- Assumptions used: Primitive: `assump:vc-one-factors`, `assump:countably-coded-evaluation`, and `assump:global-privacy-range`; derived: the accepted `step_001` quotient-dimension, output-space, scalar, and exact-risk conclusions.
- Technical challenge: Totalize every partial source branch inside the privacy proof; turn countable-discrete legality into a kernel; prove replacement privacy for a leaving and entering summary; prove improper-core VC closure; remove the raw \((t+2)\beta\) confidence fixed point while retaining the squared-log quota; and cover the positive \(TD+1\) endpoint and all boundary regimes.
- Intended proof tool or cited result: Yan, arXiv:2505.06581v2, exact source components `thm:learn vc`, the unlabeled threshold-dimension comparison, `thm:private median`, `def: k-bounded`, `lem:choosing mechanism`, the reference transform/order material, `alg:improperlearner`, `lem:order in h`, `lem:order of y`, and the final comparison argument; BNSV, arXiv:1504.07553, `alg:choosing`, `lem:CMprivacy`, and `lem:CMutility`; direct transformed-quotient order geometry, countable positive-support totalization, improper-core VC closure, Hoeffding, and explicit quota arithmetic. Yan's printed `thm:privacy-OPTPrivateLearner`, its unlabeled all-block-good lemma, and its raw final confidence corollary are not consumed.
- Output target: Exact measurable factor kernel/privacy/utility certificate, with source conventions and nonoutput boundaries recorded.
- Rate objective: Expose \(d_i,s_i,q_i,\varepsilon,\delta\) and fixed \(\alpha_{\rm fac}=1/64\), \(\beta_{\rm fac}=1/4096\); fixed-factor high-probability utility, pointwise replacement privacy, exact quotient risk, universal hidden constants only, and no padding utility.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:vc-one-factors}: every factor is nonconstant, has VC dimension one, and has finite \(d_i=\operatorname{LD}(C_i)\).
  - Assumption~\ref{assump:countably-coded-evaluation}: \(Q_i\) is finite or countable and discrete, and quotient cells are measurable.
  - Assumption~\ref{assump:global-privacy-range}: \(0<\varepsilon\le1/10\) and \(0<\delta<1\).
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\ref{lem:step-001-quotient-invariance}: \(\operatorname{VC}(\bar C_i)=1\) and \(\operatorname{LD}(\bar C_i)=d_i\), with exact pullback of finite patterns.
  - Accepted Lemma~\ref{lem:step-001-logstar}: \(s_i\ge2\), including \(s_i=2\) at \(d_i=1\).
  - Accepted Lemma~\ref{lem:step-001-output-measurability}: \((\mathcal H_i,\mathscr H_i)\) is standard Borel.
  - Accepted Lemma~\ref{lem:step-001-risk-pullback}: quotient and raw factor risks agree exactly and are measurable.
- Local conditional hypotheses: None.
- Accepted dependency artifacts:
  - `perspective_1/idea_3/proof_steps/step_001/proof.md`, SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a`.
  - `perspective_1/idea_3/proof_steps/step_001/review.md`, SHA-256 `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, with status `ACCEPTED`.

No version-space, core, selector, order, bounded-growth, good-block, kernel, or privacy property is treated as primitive. Each is either checked from a cited result at its exact interface or proved below.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:vc-one-factors} and \ref{assump:countably-coded-evaluation} and the accepted quotient-dimension dependency, reference XOR followed by its own evaluation quotient yields a finite-height VC-one poset whose nonempty transformed positive sets and nonempty version-space cores are finite principal upsets, with height at most \(2^{d_i+1}\). | Makes Yan's order/tree objects total without an ordering, finite-domain, or representative assumption and covers the \(TD+1\) endpoint. |
| `unit_002` | lemma | Under the objects proved in Lemma~\ref{lem:step-002-order-geometry}, every totalized block core gives an empirically consistent possibly improper hypothesis, and the class of all such core indicators plus zero has VC dimension at most one. | Replaces Yan's unsupported proper-core step by the exact improper-core generalization interface. |
| `unit_003` | lemma | The BNSV choosing rule, totalized by returning \(\bot\) on empty positive support, remains replacement-\((\varepsilon_c,\delta_c)\)-DP for a countable solution space whenever every score has finite positive support and one replacement removes at most one unit score and adds at most one unit score; its `lem:CMutility` bound is unchanged. | Handles leaving/entering summaries, empty support, sentinels, and countably many possible layer points at the exact privacy cost. |
| `unit_004` | lemma | There are frozen universal constants for which the block count, block size, private-median threshold, choosing slack, Hoeffding confidence, and complete internal sample use \(N_i\) satisfy \(N_i\le q_i\) for every allowed \(d_i,\varepsilon,\delta\), including \(d_i=1\). | Proves the exact quota bridge and removes both the raw confidence fixed point and informal logarithmic absorption. |
| `unit_005` | proposition | Under the three primitive assumptions, the explicitly defined symmetrized and totalized factor transition rule is a permutation-invariant Markov kernel from exactly \(q_i\) quotient records into \((\mathcal H_i,\mathscr H_i)\). | Establishes totality and countable-discrete kernel measurability on every realizable or nonrealizable input. |
| `unit_006` | proposition | Under the same assumptions and the checked Yan/BNSV private components, the factor kernel is replacement-\((\varepsilon/2,\delta/2)\)-DP on all length-\(q_i\) inputs. | Proves the exact all-input factor privacy interface by adaptive composition and data-independent symmetrization. |
| `unit_007` | lemma | On iid realizable blocks, core hypotheses are independently bad with marginal probability at most \(1/48\), and fewer than \(t_i/12\) are bad except with probability at most \(1/16384\). | Supplies fixed-confidence bad-block control without a union bound over all blocks. |
| `unit_008` | proposition | Combining the two private-median sides, positive choosing score, and one good opposite-side core gives transformed and original quotient risk at most \(1/64\), with total failure probability at most \(1/4096\). | Proves the exact unpadded factor utility and reference-XOR zero-residual bridge. |

Atomic step = no. The eight units separate the order geometry, improper-core generalization, exact replacement mechanism, numerical calibration, kernel legality, privacy, bad-block concentration, and final utility implications.

## Cited Result Applications

All source labels below were checked in the v2 source bundle for Yan, whose `00README.json` records version 2 and whose top-level source is `main.tex`, and in the source of arXiv:1504.07553 for BNSV.

| Result | Restated statement in current notation | Instantiated objects and assumption discharge | Conclusion used |
| ------ | --------------------------------------- | --------------------------------------------- | --------------- |
| Accepted `step_001` quotient certificate | For the fixed factor, \(\bar C_i\subseteq\{0,1\}^{Q_i}\) has VC dimension one and Littlestone dimension \(d_i\); \(Q_i\) is finite/countable discrete; \(\mathcal H_i\) is standard Borel; quotient risk pulls back exactly. | The accepted proof/review hashes are listed above. Assumptions~\ref{assump:vc-one-factors} and \ref{assump:countably-coded-evaluation} discharge its factor inputs. | Starting dimensions, legal output space, \(s_i\ge2\), and exact risk at the end. |
| Yan `thm:learn vc` | If a class \(\mathcal K\) has VC dimension at most one, \(L\ge \frac{48}{a}(10\log(48e/a)+\log(5/b))\), and \(T\) is iid, then the probability that two members of \(\mathcal K\) have empirical disagreement at most \(a/10\) but population disagreement at least \(a\) is at most \(b\). | \(\mathcal K=\mathcal K_i\) from Lemma~\ref{lem:step-002-core-vc}, \(a=1/64\), \(b=1/48\), one member is the transformed target and the other is the block-core indicator; their empirical disagreement is zero. The domain is countable discrete, so the displayed event is measurable. | Each block core has risk at most \(1/64\) except with probability at most \(1/48\). |
| Yan unlabeled threshold-dimension comparison immediately before `cor: threshold dimension and littlestone dimension` | For a binary class of Littlestone dimension \(d\), its threshold dimension is at most \(2^{d+1}\). | Reference XOR and the transformed evaluation quotient preserve finite label trees by Lemma~\ref{lem:step-002-order-geometry}, so the current transformed class has Littlestone dimension \(d_i\). | The current order height is finite and at most \(2^{d_i+1}\). Only the printed upper inequality is used. |
| Yan `thm:private median` | On a finite ordered domain of size \(m\), there is a replacement-\((\varepsilon_m,\delta_m)\)-DP kernel which returns a \(1/3\)-median except with probability \(b\), provided the input count exceeds a threshold bounded above by a universal constant times \(\log_2^*m\,\varepsilon_m^{-1}\log^2(e\log_2^*m/(b\delta_m))\). | The ordered domain is the integer set \(\{0,\ldots,H_i\}\), where \(H_i\) is proved finite. Parameters are \(b=1/16384\), \(\varepsilon_m=\varepsilon/4\), and \(\delta_m=\delta/4\). Lemma~\ref{lem:step-002-calibration} verifies the threshold. | A private depth \(z\) having at least \(t_i/6\) block depths on each side. |
| Yan reference transform, `def:order`, `lem: must comparable`, and the transform/tree material | XOR by a fixed reference preserves errors and finite pattern dimensions; with zero in a VC-one class, positive points of one concept form a chain in the implication order, and order chains produce thresholds. | These statements are rederived for the current quotient objects, including a second evaluation quotient and inactive coordinates, in Lemma~\ref{lem:step-002-order-geometry}. Yan's `alg:maketree` is not assumed to terminate or to choose elements on a countable domain. | Source-faithful order geometry with no hidden selection or finite-domain premise. |
| Yan `def: k-bounded` and `lem:choosing mechanism` | Yan records the bounded-growth choosing interface used by `alg:improperlearner`, but its displayed utility formula is not used as an independently complete statement. | The exact algorithm, replacement privacy proof, and utility constants are taken from the cited BNSV source in the next row and translated by Lemma~\ref{lem:step-002-countable-choosing}. | Source-label fidelity for Yan's second private component without duplicating or strengthening its printed statement. |
| BNSV `alg:choosing`, `lem:CMprivacy`, and `lem:CMutility` | For a 1-bounded-growth quality score, Algorithm `alg:choosing` is replacement-\((\varepsilon_c,\delta_c)\)-DP and, on a database of \(t\) summaries, returns score at least \(\operatorname{OPT}-\frac{16}{\varepsilon_c}\log(4t/(b\varepsilon_c\delta_c))\) except with probability \(b\). BNSV defines neighboring fixed-size databases by one-row replacement. | The quality is the multiplicity histogram of one layer summary per block. A replacement changes a leaving summary and an entering summary, so every coordinate changes by at most one and each directional support difference has size at most one. The countable finite-positive-support extension and empty-support branch are proved in Lemma~\ref{lem:step-002-countable-choosing}. | Exact second-stage privacy and positive-score utility at parameters \(b=1/16384\), \(\varepsilon_c=\varepsilon/4\), \(\delta_c=\delta/4\). |
| Sequential basic composition and postprocessing (Yan `thm:composition`, `thm:post-processing`) | Releasing an \((\varepsilon_m,\delta_m)\)-DP value and then, conditionally on it, applying a kernel that is \((\varepsilon_c,\delta_c)\)-DP for every fixed released value gives \((\varepsilon_m+\varepsilon_c,\delta_m+\delta_c)\)-DP; measurable postprocessing does not increase privacy loss. | First output is depth \(z\); the fixed-\(z\) second kernel is either constant when \(z=0\) or the totalized choosing kernel. The final quotient hypothesis is postprocessing. | Factor privacy \((\varepsilon/2,\delta/2)\). |
| Hoeffding's inequality for independent bounded variables | If independent \(X_b\in[0,1]\) satisfy \(\sum_b\mathbb E X_b\le\gamma t\), then \(\Pr[\sum_bX_b\ge at]\le\exp(-2t(a-\gamma)^2)\) for \(a>\gamma\). | Bad-core indicators from disjoint iid blocks, \(\gamma=1/48\), and \(a=1/12\). | Failure probability at most \(e^{-t_i/128}\le1/16384\). |

Source exclusions are material. Yan's `thm:privacy-OPTPrivateLearner` asserts sensitivity for its partial summaries without handling empty cores, inconsistent inputs, or a replacement's leaving and entering summaries, so it is not proof evidence here. Its unlabeled all-\(h_j\)-good lemma and final \((t+2)\beta\) corollary are likewise not used. The proof below uses only the labeled components just restated and supplies every missing wrapper directly.

The local results used later in this step are also restated before use:

| Local result | Restated statement and assumption basis | Later use |
| ------------ | ---------------------------------------- | --------- |
| Lemma~\ref{lem:step-002-order-geometry} (`unit_001`) | From Assumptions~\ref{assump:vc-one-factors}, \ref{assump:countably-coded-evaluation}, and accepted quotient invariance, the reference-transformed secondary quotient is a finite-height VC-one poset; positive sets and nonempty cores are finite principal upsets with unique integer-depth points. | Core VC closure, summary definition, calibration, kernel totality, and the two-sided utility comparison. |
| Lemma~\ref{lem:step-002-core-vc} (`unit_002`) | Under Lemma~\ref{lem:step-002-order-geometry}, the target and every realizable block-core indicator lie in one fixed class of VC dimension at most one and agree on the block. | Yan `thm:learn vc` in the marginal core bound. |
| Lemma~\ref{lem:step-002-countable-choosing} (`unit_003`) | For a countable finite-positive-support histogram, one-summary replacement and the total empty-support branch satisfy the exact BNSV privacy and utility interfaces. | Definition of the fixed kernel, its all-input privacy proof, and positive-score utility. |
| Lemma~\ref{lem:step-002-calibration} (`unit_004`) | Under the factor/privacy assumptions and the preceding height bound, the frozen internal counts satisfy the private-median, Hoeffding, choosing-slack, and exact \(N_i\le q_i\) inequalities. | Legal subsampling length and every source-threshold/probability check. |
| Proposition~\ref{prop:step-002-kernel} (`unit_005`) | Under the primitive assumptions, accepted output legality, and Lemmas~\ref{lem:step-002-order-geometry}--\ref{lem:step-002-calibration}, the explicit total symmetrized rule is a Markov kernel on exactly \(q_i\) records. | Privacy and utility propositions. |
| Proposition~\ref{prop:step-002-factor-privacy} (`unit_006`) | Under Proposition~\ref{prop:step-002-kernel}, a common-permutation one-block coupling plus the two checked private components gives all-input replacement-\((\varepsilon/2,\delta/2)\)-DP. | Exact target assembly and downstream factor interface. |
| Lemma~\ref{lem:step-002-good-cores} (`unit_007`) | On iid realizable blocks, the fixed-VC core argument and Hoeffding leave fewer than \(t_i/12\) bad cores except with probability \(\eta\). | Opposite-side good witness in factor utility. |
| Proposition~\ref{prop:step-002-factor-utility} (`unit_008`) | Under the three primitive assumptions and the preceding local results, median, choosing, and a good shallow core imply exact quotient risk at most \(1/64\) except with probability at most \(1/4096\). | Exact target assembly and downstream PAC interface. |

## Local Derivation

### unit_001: lemma

**Lemma (Reference-transformed quotient order geometry).** \(\label{lem:step-002-order-geometry}\)

Statement:
Under Assumptions~\ref{assump:vc-one-factors} and \ref{assump:countably-coded-evaluation} and accepted Lemma~\ref{lem:step-001-quotient-invariance}, fix a factor \(i\) and the pre-data reference \(\bar f_i^\circ\in\bar C_i\). There is a finite-height partially ordered active transformed quotient \((U_i^+,\preceq_i)\) such that:

1. the transformed class has VC dimension one and Littlestone dimension \(d_i\);
2. every transformed concept's nonempty positive set is a finite principal upset;
3. every nonempty intersection of transformed positive sets is a finite principal upset;
4. if \(H_i\) is the maximum strict-chain length, then
   \[
   1\le H_i\le \operatorname{TD}(\bar C_i\mathbin\triangle\bar f_i^\circ)
   \le2^{d_i+1};
   \tag{1}
   \]
5. each principal upset contains exactly one point of every integer depth from one through the depth of its minimum.

Proof / justification:
For \(\bar c\in\bar C_i\), define on \(Q_i\)
\[
g_{\bar c}(q):=\bar c(q)\oplus\bar f_i^\circ(q),
\qquad
\mathcal G_i:=\{g_{\bar c}:\bar c\in\bar C_i\}.
\tag{2}
\]
XOR by a fixed function is a bijection on every finite label vector and on every binary instance tree, with the requested edge bits XORed nodewise. It therefore preserves VC and Littlestone dimensions. In particular,
\[
\operatorname{VC}(\mathcal G_i)=1,
\qquad
\operatorname{LD}(\mathcal G_i)=d_i,
\qquad
0=g_{\bar f_i^\circ}\in\mathcal G_i.
\tag{3}
\]

The transform can identify two quotient coordinates even when \(\bar C_i\) did not. To avoid importing Yan's point-distinguishability convention, put
\[
q\sim_iq'
\quad\Longleftrightarrow\quad
g(q)=g(q')\ \hbox{for every }g\in\mathcal G_i,
\tag{4}
\]
let \(U_i=Q_i/{\sim_i}\), and write \(\pi_i:Q_i\to U_i\). Since \(Q_i\) is finite or countable, so is \(U_i\); every \(g\) descends uniquely to \(U_i\). Quotienting by (4) preserves every finite pattern and finite Littlestone tree by the same two-way representative argument as accepted Lemma~\ref{lem:step-001-quotient-invariance}. Thus (3) still holds on \(U_i\).

Let
\[
U_i^+:=\{u\in U_i:\text{some }g\in\mathcal G_i\text{ has }g(u)=1\}.
\tag{5}
\]
All transformed concepts are identically zero on \(U_i\setminus U_i^+\). Nonconstancy of \(\bar C_i\) gives a concept different from \(\bar f_i^\circ\), so \(U_i^+\ne\varnothing\). Define
\[
u\preceq_iv
\quad\Longleftrightarrow\quad
\bigl(g(u)=1\Longrightarrow g(v)=1\bigr)
\quad\hbox{for every }g\in\mathcal G_i.
\tag{6}
\]
Reflexivity and transitivity are immediate. If both \(u\preceq_iv\) and \(v\preceq_iu\), all transformed concepts agree at \(u,v\), and (4) gives \(u=v\). Hence (6) is a partial order.

If \(u,v\) are incomparable, failure of the two implications supplies transformed concepts realizing \((1,0)\) and \((0,1)\) on \((u,v)\), while the zero concept realizes \((0,0)\). No transformed concept can realize \((1,1)\), since that would shatter \(\{u,v\}\) and contradict (3). Consequently every positive set
\[
P_g:=\{u\in U_i^+:g(u)=1\}
\tag{7}
\]
is a chain. It is also an upset by (6).

Every strict chain \(u_1\prec_i\cdots\prec_iu_r\) gives a threshold pattern of length \(r\). Active membership gives a concept which is one on \(u_1\), hence on the entire chain. For \(j\ge2\), strictness of \(u_{j-1}\prec_iu_j\) gives a concept which is zero on \(u_{j-1}\) and one on \(u_j\); implication along the chain makes it zero before \(j\) and one from \(j\) onward. Thus \(r\le\operatorname{TD}(\mathcal G_i)\). The checked unlabeled Yan comparison and (3) give the last inequality in (1). In particular every chain is finite, and the largest achievable integer length \(H_i\) exists. The first inequality in (1) follows from \(U_i^+\ne\varnothing\).

For \(u\in U_i^+\), let
\[
I_i(u):=\{v\in U_i^+:u\preceq_iv\},
\qquad
\ell_i(u):=|I_i(u)|.
\tag{8}
\]
Choose a transformed concept with value one at \(u\). It is one on all of \(I_i(u)\), so the incomparability argument shows that \(I_i(u)\) is a chain. It has at most \(H_i\) elements. Any chain starting at \(u\) is contained in \(I_i(u)\), while \(I_i(u)\) itself is such a chain; hence \(\ell_i(u)\) is exactly the maximum chain length starting at \(u\). In the finite total order \(I_i(u)\), its successive elements have suffix sizes \(\ell_i(u),\ell_i(u)-1,\ldots,1\). This proves the unique-point-at-each-depth assertion.

Finally, if \(\varnothing\ne V\subseteq\mathcal G_i\), then
\[
B(V):=\bigcap_{g\in V}P_g
\tag{9}
\]
is an upset and is contained in the finite chain \(P_{g_0}\) for any \(g_0\in V\). If nonempty, it has a unique minimum \(u_V\), and upward closure gives \(B(V)=I_i(u_V)\). This proves all claims. No source tree-construction algorithm, cover selector, or order on a countable set has been assumed.

### unit_002: lemma

**Lemma (Improper version-core class has VC dimension at most one).** \(\label{lem:step-002-core-vc}\)

Statement:
Under Lemma~\ref{lem:step-002-order-geometry}, define
\[
\mathcal K_i
:=
\{\mathbf1_{B(V)}:\varnothing\ne V\subseteq\mathcal G_i\}
\cup\{0\},
\tag{10}
\]
where every member is zero on \(U_i\setminus U_i^+\). Then \(\operatorname{VC}(\mathcal K_i)\le1\), every transformed target belongs to \(\mathcal K_i\), and for every realizable labeled block the totalized version-core indicator belongs to \(\mathcal K_i\) and has zero empirical error against the target.

Proof / justification:
Take two distinct active points \(u,v\). If they are comparable, say \(u\preceq_iv\), every core is an upset and therefore cannot realize \((1,0)\) on \((u,v)\). If they are incomparable, every nonempty core is contained in the positive set of any one of its defining concepts, and no transformed concept is one on both points by Lemma~\ref{lem:step-002-order-geometry}; hence no core realizes \((1,1)\). The zero function does not restore either missing pattern. A pair involving an inactive coordinate cannot be shattered because every member of \(\mathcal K_i\) is zero there. Thus no two-point set is shattered.

For \(g_*\in\mathcal G_i\), its positive set is \(B(\{g_*\})\); if that set is empty, \(g_*=0\). Therefore \(g_*\in\mathcal K_i\).

For a finite transformed labeled block \(T\), let
\[
V(T):=\{g\in\mathcal G_i:g\text{ agrees with every record of }T\}.
\tag{11}
\]
Totalize by setting \(B_T=\varnothing\) when \(V(T)=\varnothing\), and otherwise set \(B_T=B(V(T))\). On a realizable block, \(g_*\in V(T)\), so the version space is nonempty. If a block record has label one, every consistent concept labels its coordinate one and the coordinate lies in \(B_T\). If it has label zero, the consistent target labels it zero and it cannot lie in the intersection \(B_T\). Thus \(\mathbf1_{B_T}\) agrees with every record. This proves the empirical-error claim without asserting that the core indicator is proper.

### unit_003: lemma

**Lemma (Countable positive-support replacement choosing rule).** \(\label{lem:step-002-countable-choosing}\)

Statement:
Let \(F\) be finite or countable, let a database \(D=(v_1,\ldots,v_t)\) take values in \(F\cup\{\bot\}\), and define
\[
q(D,f):=\sum_{b=1}^t\mathbf1\{v_b=f\},\qquad f\in F.
\tag{12}
\]
Run BNSV `alg:choosing` on this score, interpreting its exponential-mechanism support as the finite set \(G(D)=\{f:q(D,f)>0\}\), and return \(\bot\) immediately if \(G(D)=\varnothing\). For \(0<\varepsilon_c\le2\) and \(\delta_c>0\), this total rule is replacement-\((\varepsilon_c,\delta_c)\)-DP. Moreover, with probability at least \(1-b\), its output \(\hat f\) satisfies
\[
q(D,\hat f)
\ge \operatorname{OPT}(D)
-\frac{16}{\varepsilon_c}
 \log\!\left(\frac{4t}{b\varepsilon_c\delta_c}\right)
\tag{13}
\]
whenever the right side is positive; in particular the output is then not \(\bot\).

Proof / justification:
For addition adjacency, one added non-sentinel summary increases exactly one score by one, while an added sentinel changes no score. Thus (12) is 1-bounded-growth in BNSV's `def: k-bounded` sense. For fixed-size replacement, writing neighboring databases as a common \((t-1)\)-multiset plus a leaving and an entering summary shows
\[
q(D',f)-q(D,f)=\mathbf1\{f=v_{\rm in}\}-\mathbf1\{f=v_{\rm out}\}.
\tag{14}
\]
Therefore every coordinate has sensitivity one, \(\operatorname{OPT}\) has sensitivity one, and each directional set difference \(G(D)\setminus G(D')\) and \(G(D')\setminus G(D)\) has size at most one.

BNSV defines privacy for fixed-size one-row replacement and the proof of `lem:CMprivacy` uses exactly the three properties just listed: sensitivity one of \(\operatorname{OPT}\), sensitivity one of each score, and at most \(k\) newly positive outputs in each direction. Its normalizing sums are only over \(G(D)\) and \(G(D')\). Those sets have at most \(t\) elements here, even when \(F\) is countably infinite, so every line of that proof remains a finite sum and applies to every measurable subset of the countable output space.

If \(G(D)=\varnothing\), then \(\operatorname{OPT}(D)=0\). The immediate-\(\bot\) totalization removes only the otherwise undefined exponential-mechanism branch. Against a replacement neighbor, every nonbottom output is a newly positive score-one output; BNSV's low-\(\operatorname{OPT}\) case bounds the total probability of such outputs by \(\delta_c\). The reverse inequality for the bottom event follows from the same noisy-threshold bound (and is only made easier by assigning all remaining mass to \(\bot\)). Thus the exact privacy conclusion includes empty support and sentinel transitions.

The proof of BNSV `lem:CMutility` also sums only over \(G(D)\) and uses \(|G(D)|\le t\). It is unchanged in the countable extension. When the right side of (13) is positive, returning \(\bot\), whose score is defined as zero, violates (13); hence a successful output is a genuine positive-support solution.

### unit_004: lemma

**Lemma (Explicit internal calibration and exact quota domination).** \(\label{lem:step-002-calibration}\)

Statement:
Under Assumptions~\ref{assump:vc-one-factors} and \ref{assump:global-privacy-range}, there are frozen universal constants \(L_*\), \(C_T\), and \(K_*\) such that the following calibration works for every factor:
\[
\eta:=\frac1{16384},\quad
\gamma:=\frac1{48},\quad
\varepsilon_m=\varepsilon_c:=\frac\varepsilon4,\quad
\delta_m=\delta_c:=\frac\delta4,
\tag{15}
\]
\[
L_*:=\left\lceil
\frac{48}{1/64}
\left(10\log\frac{48e}{1/64}+\log\frac5\gamma\right)
\right\rceil,
\tag{16}
\]
\[
\Lambda_i:=\log\frac{e s_i}{\varepsilon\delta},
\qquad
\Xi_i:=\frac{s_i}{\varepsilon}\Lambda_i^2,
\qquad
t_i:=\lceil C_T\Xi_i\rceil,
\qquad
N_i:=L_*t_i.
\tag{17}
\]
The count \(t_i\) exceeds the Yan private-median threshold on \(\{0,\ldots,H_i\}\), satisfies
\[
e^{-t_i/128}\le\eta,
\qquad
\frac{16}{\varepsilon_c}
\log\!\left(\frac{4t_i}{\eta\varepsilon_c\delta_c}\right)
\le\frac{t_i}{12},
\tag{18}
\]
and, whenever the setting's universal Yan constant is fixed with \(K_Y\ge K_*\),
\[
N_i\le
\left\lceil K_Y\frac{s_i}{\varepsilon}
\log^2\!\left(\frac{e s_i}{\varepsilon\delta}\right)\right\rceil
=q_i.
\tag{19}
\]
These statements include \(d_i=1\).

Proof / justification:
Let \(C_{PM}\) be a universal constant which realizes the big-O bound in Yan `thm:private median` at median accuracy \(1/3\), after changing logarithm bases by a universal factor. Put
\[
\Lambda_0:=\log(20e),
\qquad
c_1:=1+\frac{\log((3/5)/\eta)}{\Lambda_0}.
\tag{20}
\]
Choose \(C_T\) to be the least positive integer satisfying the three fixed numerical/source-constant inequalities
\[
\begin{split}
C_T&>6C_{PM}c_1^2,\\
20C_T\Lambda_0^2&\ge128\log(1/\eta),\\
C_T&\ge\frac{384}{\Lambda_0}
\left(3+\frac{\log(64(C_T+1)/(\eta e))}{\Lambda_0}\right).
\end{split}
\tag{21}
\]
Such an integer exists because the left side in the last inequality is linear in \(C_T\), while its right side grows logarithmically. This freezes one universal numerical constant; it is not an exposed-parameter fixed point. Finally put
\[
K_*:=L_*(C_T+1).
\tag{22}
\]

Let \(u_i=\log_2^*(H_i+1)\). From Lemma~\ref{lem:step-002-order-geometry},
\[
H_i+1\le2^{d_i+1}+1.
\]
Using the log-star recursion, monotonicity, \(d_i+2\le2(d_i+1)\), and
\(\log_2^*(2x)\le1+\log_2^*x\) for \(x\ge2\),
\[
u_i
\le1+\log_2^*(d_i+2)
\le2+\log_2^*(d_i+1)
=s_i+1
\le\frac32s_i.
\tag{23}
\]
The last inequality uses accepted \(s_i\ge2\). This calculation gives \(u_i\le3\) at the endpoint \(d_i=1\), where \(s_i=2\) and \(H_i+1\le5\); no zero-domain or \(\log^*1\) shortcut occurs.

Assumption~\ref{assump:global-privacy-range} and \(s_i\ge2\) give
\[
\Lambda_i\ge\Lambda_0,
\qquad
\Xi_i\ge20\Lambda_0^2>1.
\tag{24}
\]
Moreover, by (23) and \(\varepsilon\le1/10\),
\[
\begin{aligned}
\log\frac{e u_i}{\eta\delta_m}
&=\log\frac{4e u_i}{\eta\delta}\\
&=\Lambda_i+
  \log\frac{4u_i\varepsilon}{\eta s_i}
\le\Lambda_i+\log\frac{3/5}{\eta}
\le c_1\Lambda_i.
\end{aligned}
\tag{25}
\]
Thus Yan's private-median threshold is at most
\[
C_{PM}\frac{u_i}{\varepsilon_m}
\log^2\frac{e u_i}{\eta\delta_m}
\le6C_{PM}c_1^2\Xi_i
<C_T\Xi_i\le t_i,
\tag{26}
\]
which also handles the source theorem's strict sample inequality.

The first two lines of (21), (24), and \(t_i\ge C_T\Xi_i\) imply
\[
t_i\ge128\log(1/\eta),
\]
proving the first inequality in (18). For the choosing term, (24) gives
\(t_i\le(C_T+1)\Xi_i\). Since \(\log(1/\varepsilon)\le\Lambda_i\) and
\(2\log\Lambda_i\le\Lambda_i\) for \(\Lambda_i\ge\Lambda_0\),
\[
\begin{aligned}
\log\frac{4t_i}{\eta\varepsilon_c\delta_c}
&\le
\log\frac{64(C_T+1)s_i\Lambda_i^2}
              {\eta\varepsilon^2\delta}\\
&\le
\left(3+
\frac{\log(64(C_T+1)/(\eta e))}{\Lambda_0}
\right)\Lambda_i.
\end{aligned}
\tag{27}
\]
Because \(s_i\Lambda_i\ge2\Lambda_0\), the last line of (21) yields
\[
\frac{t_i}{12}
\ge\frac{C_Ts_i\Lambda_i^2}{12\varepsilon}
\ge\frac{64}{\varepsilon}
\log\frac{4t_i}{\eta\varepsilon_c\delta_c}
=\frac{16}{\varepsilon_c}
\log\frac{4t_i}{\eta\varepsilon_c\delta_c},
\]
which is the second inequality in (18).

Finally, since \(\Xi_i>1\),
\[
N_i=L_*t_i
\le L_*(C_T\Xi_i+1)
\le L_*(C_T+1)\Xi_i
=K_*\Xi_i.
\tag{28}
\]
If \(K_Y\ge K_*\), then \(N_i\le K_Y\Xi_i\le\lceil K_Y\Xi_i\rceil=q_i\), proving (19) with the exact setting ceiling.

### unit_005: proposition

**Proposition (The fixed totalized Yan quotient transition is a measurable kernel).** \(\label{prop:step-002-kernel}\)

Statement:
Under Assumptions~\ref{assump:vc-one-factors}, \ref{assump:countably-coded-evaluation}, and \ref{assump:global-privacy-range}, accepted Lemmas~\ref{lem:step-001-output-measurability} and \ref{lem:step-001-logstar}, and Lemmas~\ref{lem:step-002-order-geometry}--\ref{lem:step-002-calibration}, the following rule defines a fixed permutation-invariant Markov kernel
\[
\bar A_i^{\rm Yan}:
(Q_i\times\{0,1\})^{q_i}
\rightsquigarrow(\mathcal H_i,\mathscr H_i)
\tag{29}
\]
on every input, including inconsistent and nonrealizable inputs.

Proof / justification:
Freeze the setting's reference \(\bar f_i^\circ\), enumeration of \(Q_i\), the induced first-occurrence enumeration of \(U_i\), fixed implementations of the cited private-median and BNSV kernels, and all tie/fallback conventions before seeing data. On input
\(\bar T=((q_j,b_j))_{j=1}^{q_i}\), sample a uniformly random permutation of its \(q_i\) positions, keep the first \(N_i\le q_i\) records, and divide them into \(t_i\) consecutive blocks of size \(L_*\).

Transform a record by
\[
(q,b)\longmapsto
(\pi_i(q),b\oplus\bar f_i^\circ(q)).
\tag{30}
\]
For each transformed block \(T_b\), form its version space (11), totalized core \(B_b\), and depth
\[
a_b:=
\begin{cases}
0,&B_b=\varnothing,\\
\ell_i(u_b),&B_b=I_i(u_b)\ne\varnothing.
\end{cases}
\tag{31}
\]
Run Yan `thm:private median` on \((a_1,\ldots,a_{t_i})\) over the fixed ordered domain \(\{0,1,\ldots,H_i\}\), obtaining \(z\). If \(z=0\), output \(\bar f_i^\circ\).

For fixed \(z\ge1\), define the total block summary
\[
p_z(T_b):=
\begin{cases}
\text{the unique }u\in B_b\text{ with }\ell_i(u)=z,
   &a_b\ge z,\\
\bot,&a_b<z.
\end{cases}
\tag{32}
\]
Existence and uniqueness in the first branch are Lemma~\ref{lem:step-002-order-geometry}. Apply the totalized choosing rule of Lemma~\ref{lem:step-002-countable-choosing} to these \(t_i\) summaries with solution set
\(F_z=\{u\in U_i^+:\ell_i(u)=z\}\). If it returns \(\bot\), output \(\bar f_i^\circ\). If it returns \(\hat u\), output
\[
\bar h_{\hat u}(q)
:=\bar f_i^\circ(q)
\oplus
\mathbf1\{\pi_i(q)\in I_i(\hat u)\},
\qquad q\in Q_i.
\tag{33}
\]
This is a member of \(\mathcal H_i\), whether or not it is proper.

Every branch is now total. An empty or inconsistent version space has \(B_b=\varnothing\), an empty core has depth zero, a missing layer has summary \(\bot\), an empty choosing support returns \(\bot\), and every private-component failure or off-utility output is mapped by (33) or to the fixed reference. No data-dependent representative or tie rule remains unspecified.

The input space in (29) is finite or countable with its discrete sigma-field. For every \(E\in\mathscr H_i\), the function \(\bar T\mapsto\bar A_i^{\rm Yan}(\bar T,E)\) is therefore measurable, regardless of the internal set-theoretic complexity of version spaces or cores. For each fixed input, the finite sequence of cited kernels and deterministic maps defines a probability measure on the standard-Borel output space from accepted Lemma~\ref{lem:step-001-output-measurability}. Hence (29) is a Markov kernel. Finally, applying any deterministic permutation to the input merely composes the sampled uniform permutation with a fixed permutation; its law remains uniform. Thus the transition rule is permutation invariant.

### unit_006: proposition

**Proposition (All-input replacement privacy of the factor kernel).** \(\label{prop:step-002-factor-privacy}\)

Statement:
Under the assumptions and construction of Proposition~\ref{prop:step-002-kernel}, \(\bar A_i^{\rm Yan}\) is replacement-\((\varepsilon/2,\delta/2)\)-DP on every pair of adjacent inputs in \((Q_i\times\{0,1\})^{q_i}\), including nonrealizable inputs and every totalization branch.

Proof / justification:
Couple the data-independent uniform permutation identically on two inputs differing in one record. If the changed position is not among the first \(N_i\), every used block is identical. If it is used, exactly one of the \(t_i\) blocks changes by one-record replacement; no other block changes. The depth vector (31) consequently changes in at most one coordinate. Yan `thm:private median`, instantiated as checked above, makes the released depth \(z\) replacement-\((\varepsilon_m,\delta_m)\)-DP on arbitrary numeric input vectors.

Condition on any fixed value of \(z\). At \(z=0\), the second-stage output is the fixed reference and is \((0,0)\)-DP. At \(z\ge1\), only the changed block's summary (32) can change. Equation (14) then describes the score change exactly, including transitions from a leaving point to an entering point, from or to \(\bot\), and between two non-sentinel points. Lemma~\ref{lem:step-002-countable-choosing} gives replacement-\((\varepsilon_c,\delta_c)\)-DP for every such fixed \(z\), including empty support.

Adaptive basic composition followed by the postprocessing (33) gives
\[
(\varepsilon_m+\varepsilon_c,\delta_m+\delta_c)
=\left(\frac\varepsilon2,\frac\delta2\right).
\tag{34}
\]
The inequality holds for each fixed permutation coupling. Integrating over the common data-independent permutation preserves it. The argument never invokes consistency, realizability, nonempty cores, a successful private event, or utility, so (34) holds on the entire input space and for every \(E\in\mathscr H_i\).

### unit_007: lemma

**Lemma (Fixed-marginal core control and bad-block concentration).** \(\label{lem:step-002-good-cores}\)

Statement:
Under Assumptions~\ref{assump:vc-one-factors} and \ref{assump:countably-coded-evaluation}, fix any target \(\bar c_i\in\bar C_i\) and any probability measure \(\bar D_i\) on \(Q_i\). For the iid realizable input and the symmetrized blocks in Proposition~\ref{prop:step-002-kernel}, let \(h_b^\circ=\mathbf1_{B_b}\) be the transformed core indicator and call block \(b\) bad when its transformed population risk against
\(g_*=\bar c_i\oplus\bar f_i^\circ\) exceeds \(1/64\). Then
\[
\Pr[b\text{ is bad}]\le\frac1{48}
\tag{35}
\]
for every block, the bad indicators are independent, and
\[
\Pr\left[\#\{b:b\text{ is bad}\}\ge\frac{t_i}{12}\right]
\le e^{-t_i/128}\le\eta.
\tag{36}
\]

Proof / justification:
A uniform permutation and restriction of an iid sequence is again an iid sequence; the \(t_i\) disjoint length-\(L_*\) blocks are mutually independent. Transforming by (30) maps their common distribution to a distribution on countable \(U_i\), and the labels are given by the fixed transformed target \(g_*\).

By Lemma~\ref{lem:step-002-core-vc}, both \(g_*\) and \(h_b^\circ\) lie in the fixed class \(\mathcal K_i\) of VC dimension at most one, and their empirical disagreement on block \(b\) is zero. The definition (16) of \(L_*\) discharges Yan `thm:learn vc` with accuracy \(1/64\) and confidence \(1/48\), proving (35). This is a marginal statement with a fixed confidence independent of \(t_i\); no substitution of \(\beta/(t_i+2)\) occurs.

Each bad indicator is a function of one block, so the indicators are independent. Their expectations sum to at most \(t_i/48\). Hoeffding with threshold \(t_i/12\) gives
\[
\Pr\left[\sum_{b=1}^{t_i}\mathbf1\{b\text{ bad}\}
\ge\frac{t_i}{12}\right]
\le
\exp\left(-2t_i\left(\frac1{12}-\frac1{48}\right)^2\right)
=e^{-t_i/128}.
\]
The first inequality in (18) proves the last part of (36).

### unit_008: proposition

**Proposition (Exact unpadded fixed-confidence factor utility).** \(\label{prop:step-002-factor-utility}\)

Statement:
Under Assumptions~\ref{assump:vc-one-factors}, \ref{assump:countably-coded-evaluation}, and \ref{assump:global-privacy-range}, for every target \(\bar c_i\in\bar C_i\) and every probability measure \(\bar D_i\) on \(Q_i\), if the full input to \(\bar A_i^{\rm Yan}\) consists of \(q_i\) iid records labeled by \(\bar c_i\), then
\[
\Pr\left[
\Pr_{q\sim\bar D_i}
\bigl[\bar A_i^{\rm Yan}(\bar T)(q)\ne\bar c_i(q)\bigr]
\le\frac1{64}
\right]
\ge1-\frac1{4096}.
\tag{37}
\]
The probability is over the iid sample, symmetrization, and all internal randomness. No padded or nonrealizable utility statement is asserted.

Proof / justification:
On a realizable transformed block, \(g_*\in V(T_b)\), so
\[
B_b\subseteq P_{g_*},
\qquad
h_b^\circ\le g_*\quad\hbox{pointwise}.
\tag{38}
\]
All nonempty \(B_b\) are therefore principal upsets whose minima lie on the single finite chain \(P_{g_*}\). Along that chain, depth \(\ell_i\) is one-to-one and reverses the order: a deeper point has larger depth.

Intersect the following three events:

1. the private median is a \(1/3\)-median of \((a_b)_b\), which fails with probability at most \(\eta\) by (26);
2. fewer than \(t_i/12\) blocks are bad, which fails with probability at most \(\eta\) by Lemma~\ref{lem:step-002-good-cores};
3. when \(z\ge1\), the choosing rule satisfies (13), which fails with probability at most \(\eta\).

On the first event there are at least \(t_i/6\) indices with \(a_b\ge z\) and at least \(t_i/6\) indices with \(a_b\le z\).

If \(z=0\), the second collection consists of blocks with empty cores. Since it has at least \(t_i/6\) members and fewer than \(t_i/12\) blocks are bad, one such block is good. The mechanism outputs transformed hypothesis zero, equal to that block's core hypothesis, and its risk is at most \(1/64\). This also covers the reference target \(g_*=0\): then every core is empty and a successful median must return zero.

Suppose \(z\ge1\). Every block with \(a_b\ge z\) has a unique layer-\(z\) point by Lemma~\ref{lem:step-002-order-geometry}. Since all its cores lie in the target chain, all these layer points equal one point \(u_z^*\). Hence the maximum histogram score is at least \(t_i/6\). Equations (13) and (18) give a selected point of score at least
\[
\frac{t_i}{6}-\frac{t_i}{12}=\frac{t_i}{12}>0.
\tag{39}
\]
Thus the output is not \(\bot\). A positive score means the selected point lies in some core and hence in \(P_{g_*}\); uniqueness at depth \(z\) forces it to be \(u_z^*\). The transformed output is therefore
\[
h_{\rm out}^\circ=\mathbf1_{I_i(u_z^*)}\le g_*.
\tag{40}
\]

Among the at least \(t_i/6\) blocks with \(a_b\le z\), fewer than \(t_i/12\) can be bad, so choose a good one, say \(b_0\). If its core is empty, its indicator is zero. Otherwise its minimum has depth at most \(z\) on the target chain, so its principal upset is contained in \(I_i(u_z^*)\). In both cases,
\[
h_{b_0}^\circ\le h_{\rm out}^\circ\le g_*.
\tag{41}
\]
For binary functions ordered as in (41), disagreement with \(g_*\) is monotone in the reverse direction. Therefore
\[
\Pr[h_{\rm out}^\circ\ne g_*]
\le\Pr[h_{b_0}^\circ\ne g_*]
\le\frac1{64}.
\tag{42}
\]

Reference XOR cancels pointwise:
\[
\mathbf1\{\bar f_i^\circ(q)\oplus h_{\rm out}^\circ(\pi_i(q))
       \ne\bar c_i(q)\}
=
\mathbf1\{h_{\rm out}^\circ(\pi_i(q))\ne g_*(\pi_i(q))\}.
\tag{43}
\]
The secondary quotient \(\pi_i\) also preserves this indicator exactly, so (42) is the quotient risk in (37). Accepted Lemma~\ref{lem:step-001-risk-pullback} would further pull it to raw factor risk with zero residual.

Finally, the union bound over the three displayed mechanism/concentration events gives
\[
3\eta=\frac3{16384}<\frac1{4096}.
\tag{44}
\]
This proves (37). Notice that confidence \(1/48\) was used only for each block's fixed marginal in (35), and Hoeffding replaced the source's \(t_i/48\) union bound. Thus there is no \((t_i+2)\beta_{\rm raw}\) confidence equation and no extra logarithm in the quota.

## Target-Step Assembly

Lemma~\ref{lem:step-002-order-geometry} constructs the reference-transformed evaluation quotient and proves all order, finite-height, threshold-dimension, positive-endpoint, and principal-core properties directly. It uses the checked Yan threshold comparison only after accepted `step_001` and direct XOR/quotient arguments establish the exact current objects. Lemma~\ref{lem:step-002-core-vc} proves the improper-core class has VC dimension at most one and that every realizable block core is empirically consistent; it does not assume a proper core or consume Yan's unsupported all-block-good assertion.

Lemma~\ref{lem:step-002-countable-choosing} audits BNSV's replacement definition and proof against the exact histogram identity (14), extends it only to countable solution sets with finite positive support, and totalizes empty support. Lemma~\ref{lem:step-002-calibration} freezes all internal constants, verifies private-median size, Hoeffding confidence, choosing slack, and the exact ceiling inequality \(N_i\le q_i\). Equations (23)--(28) explicitly include \(d_i=1\), arbitrary \(0<\delta<1\), and \(0<\varepsilon\le1/10\).

Proposition~\ref{prop:step-002-kernel} then defines the requested fixed permutation-symmetrized, fully totalized rule on exactly \(q_i\) records and proves Markov-kernel measurability from the countable-discrete input and accepted standard-Borel output. Proposition~\ref{prop:step-002-factor-privacy} proves replacement-\((\varepsilon/2,\delta/2)\)-DP on every input through a one-changed-block coupling, private median, the exact leaving/entering choosing proof, adaptive composition, and postprocessing. Every inconsistent version space, empty core, zero layer, sentinel transition, empty support, and nonrealizable input lies inside that proof.

Finally, Lemma~\ref{lem:step-002-good-cores} and Proposition~\ref{prop:step-002-factor-utility} give risk at most \(1/64\) except with probability below \(1/4096\) on unpadded iid realizable quotient data. The two median sides have distinct roles: the deep side supplies a positive choosing score, and the shallow side supplies a good opposite-side core which dominates the output error. XOR and both quotient maps preserve the error indicator exactly. These eight named results jointly establish every clause of the binding `step_002` row without changing the target or adding an assumption.

## Explicit Rate Audit

- Exposed variables: \(d_i\), \(s_i=1+\log_2^*(d_i+1)\), \(q_i\), \(\varepsilon\), \(\delta\), and the setting-fixed \(\alpha_{\rm fac}=1/64\), \(\beta_{\rm fac}=1/4096\).
- Hidden constants may depend on: only the universal constant in Yan `thm:private median`, the fixed numerical VC-generalization constants in Yan `thm:learn vc`, the fixed BNSV constants 4, 8, and 16, and the displayed fixed accuracy/confidence/privacy split. Equivalently, they are the frozen universal \(L_*\), \(C_T\), and \(K_*\) in (16), (21), and (22).
- Hidden constants may not depend on: \(X,\Sigma,C,i,k,d_i,s_i,|C_i|,|Q_i|,|U_i|\), the target, distribution, support, \(q_i\), \(\varepsilon\), or \(\delta\).
- Fixed quantities: natural logarithm, base-two log-star, \(1/64\), \(1/4096\), \(\gamma=1/48\), \(\eta=1/16384\), and the equal internal privacy split \((\varepsilon/4,\delta/4)\) between median and choosing.
- Probability mode: factor utility is high probability over one iid length-\(q_i\) sample and all factor randomness; privacy is pointwise for every adjacent input and every measurable output event. The core marginal, median, choosing, and Hoeffding failures are separately displayed.
- Horizon mode: one fixed factor invocation on exactly \(q_i\) records. There is no asymptotic, all-time, or cross-factor accumulation.
- Norm mode: exact distributional binary \(0\)-\(1\) risk on \(\bar D_i\), with exact raw pullback available from accepted `step_001`.
- Admissibility conditions and auxiliary tolerances: exactly Assumptions~\ref{assump:vc-one-factors}, \ref{assump:countably-coded-evaluation}, and \ref{assump:global-privacy-range}; no padding utility. The only proof-local tolerances are fixed \(\gamma,\eta\).
- Term absorption or simplification inequalities: (23) bounds the positive \(TD+1\) log-star by \(s_i+1\); (25)--(26) dominate the private-median threshold; (27) and the last line of (21) dominate the choosing logarithm by \(t_i/12\); (28) proves the ceiling-safe \(N_i\le q_i\). No term is dropped by asymptotic prose.
- Probability conversion: (35) is a fixed marginal bound, (36) converts it to a bad-count event by Hoeffding, and (44) combines exactly three failure events. In particular \(3/16384<1/4096\).
- Contribution to any Rate Specialization Bridge: Lemma~\ref{lem:step-002-calibration} is the factor-level bridge from source/internal requirements to the public quota \(q_i\), retaining \(s_i,\varepsilon,\delta\) and squared-log dependence.
- Baseline-reduction check: at \(k=1\), this is the same quotient-first reference-transformed Yan factor construction, now made total and measurable, using one quota \(q_1\), the same fixed privacy allocation, and no cross-factor step. The subsampled internal threshold is at most \(q_1\), and the retained unused iid records do not alter its quota order or risk guarantee. At \(d_1=1\), \(s_1=2\), \(H_1+1\le5\), and every displayed calibration remains valid; no weaker finite-support or proper learner replaces the baseline.

## Blockers

None

## Notation And Assumption Notes

- `Public-facing`: only the kernel \(\bar A_i^{\rm Yan}\), its exact input length \(q_i\), privacy \((\varepsilon/2,\delta/2)\), and utility \((1/64,1/4096)\) are exported. The setting-defined \(d_i,s_i,\varepsilon,\delta,K_Y\) retain their original meanings.
- `Appendix-local`: the transformed class \(\mathcal G_i\), secondary quotient \(U_i\), active set \(U_i^+\), implication order \(\preceq_i\), principal upset \(I_i(u)\), depth \(\ell_i(u)\), and height \(H_i\) package the source order geometry. They are all derived in Lemma~\ref{lem:step-002-order-geometry} from the setting reference and accepted quotient class; none is an assumption.
- `Proof-local`: \(\mathcal K_i,V(T),B_T,a_b,p_z,F_z\), the bad-block indicators, and the median/choosing success events are generated objects. Version/core totality is proved in Lemmas~\ref{lem:step-002-order-geometry} and \ref{lem:step-002-core-vc}; their realized goodness is used only on the proved events in Lemma~\ref{lem:step-002-good-cores} and Proposition~\ref{prop:step-002-factor-utility}.
- `Proof-local`: \(\gamma=1/48\), \(\eta=1/16384\), \(L_*\), \(C_{PM}\), \(C_T\), \(K_*\), \(\Lambda_i\), \(\Xi_i\), \(t_i\), and \(N_i\) are the calibration package. Their provenance is: \(\gamma,\eta\) are fixed numerical choices; \(L_*\) is the explicit Yan VC threshold (16); \(C_{PM}\) is the universal constant in the restated Yan private-median theorem; \(C_T\) is the least integer satisfying the explicit universal conditions (21); \(K_*\) is defined in (22); and the remaining quantities are direct expressions in setting variables. No free bounded constant is introduced.
- Assumption provenance: finite VC/LD and factor nonconstancy are primitive in Assumption~\ref{assump:vc-one-factors}; countability/discreteness and legal output measurability are primitive or accepted consequences of Assumption~\ref{assump:countably-coded-evaluation}; the numerical privacy range is primitive in Assumption~\ref{assump:global-privacy-range}. All transformed-order, core, bounded-growth, bad-count, median-side, output, and privacy facts are derived here.
- Cited-object translation: Yan's domain becomes the secondary transformed quotient \(U_i\); its distance is \(\ell_i\); its root is the total depth-zero/zero-hypothesis branch; its deterministic set is the version core \(B_T\); and its selected path hypothesis is (33). BNSV's database is the list of block summaries (32), its solution set is \(F_z\), and its quality is the multiplicity score (12).
- Source convention and nonoutputs: Yan arXiv:2505.06581v2 is used at the exact labels listed in `## Cited Result Applications`. Yan's printed privacy theorem, partial tree-construction algorithm as an existence authority, unlabeled all-block-good statement, and raw final confidence corollary are not used. BNSV's source explicitly uses fixed-size replacement adjacency; equation (14) verifies its hypotheses for both the leaving and entering summaries.
- Measurability boundary: no standard-Borel property of the raw space \((X_i,\Sigma_i)\), measurable representative section, measurable concept selector, or measurable version-space multifunction is assumed. Fixed-length quotient input is countable discrete, which is exactly why every total transition probability is measurable.
- Padding boundary: Proposition~\ref{prop:step-002-factor-utility} applies only when the factor receives \(q_i\) iid realizable records. Later routing may consume it only on the no-padding event. Privacy and kernel legality, by contrast, hold for every padded, inconsistent, or nonrealizable input.
- Diagnostic boundary: `global_proof.md` and `global_proof_review.md` were not read or used in this proof. No global diagnostic statement is evidence, a cited result, an assumption source, or authority to alter the binding claim.
