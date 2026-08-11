# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 2

## Target Step Claim

- Intended claim: Establish universal \(a_{\rm L},c_\delta>0\) such that an unrestricted replacement-\((0.1,\delta)\)-DP factor learner with \(m\ge8\), \(\delta\le c_\delta/(m^2\log(m+1))\), and expected risk \(\le1/8\) on every realizable task must satisfy \(m\ge a_{\rm L}\log_2^*d_i\). Fix a finite Shelah task universe supporting the contrapositive strict \(>1/8\) floor.
- Depends on: `step_001`.
- Assumptions used: Primitive: `assump:vc-one-factors`, `assump:global-privacy-range`; derived: quotient/original dimension equality and finite-evaluation output legality.
- Technical challenge: The printed PAC corollary is not prior-ready; verify exact labels, resampling adjacency/privacy, expected-loss premise, arbitrary improper outputs, finite witness, \(m=8\), and log-star/delta translations.
- Intended proof tool or cited result: ALMM arXiv:1806.00949v3 `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, `thm:ADPimpliesLD`; BNSV Lemma 5.9; direct uniform-database risk identity.
- Output target: ALMM expected-risk factor wrapper and fixed finite task universe.
- Rate objective: Candidate lower objective: explicit \(m,d_i,\delta\), fixed-factor expected-risk impossibility, exact \(0\)-\(1\) risk; universal constants; no uniform-candidate claim.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:vc-one-factors}: \(C_i\) is nonconstant, \(\operatorname{VC}(C_i)=1\), and \(d_i=\operatorname{LD}(C_i)<\infty\).
  - Assumption~\ref{assump:global-privacy-range}: \(0<\varepsilon\le0.1\). In this step the source interface is stated at \(\varepsilon=0.1\); any learner with smaller \(\varepsilon\) is also \((0.1,\delta)\)-DP by monotonicity.
- Derived structural conclusions supplied by the accepted dependency:
  - The accepted proof and review of `step_001` (proof SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a`, review status `ACCEPTED`) supply Lemma~\ref{lem:step-001-quotient-invariance}: \(\operatorname{LD}(\bar C_i)=\operatorname{LD}(C_i)=d_i\), with exact preservation of all finite evaluation patterns.
  - The same dependency supplies Lemma~\ref{lem:step-001-output-measurability} and Lemma~\ref{lem:step-001-risk-pullback}: quotient outputs and pullbacks are legal measurable hypotheses, and quotient/raw \(0\)-\(1\) risks agree exactly. Measurability of finite evaluations of an otherwise unrestricted learner is separately part of the target local output convention below.
- Local conditional hypotheses:
  - A fixed integer \(m\ge8\) and a fixed \(\delta>0\) satisfying the displayed numerical bound proved below.
  - A factor learner \(A:(X_i\times\{0,1\})^m\rightsquigarrow(\Omega,\mathscr F)\) that is replacement-\((0.1,\delta)\)-DP on all labeled inputs, including nonrealizable inputs, and whose decoder has measurable finite-evaluation cylinders.
  - For the forward implication only, \(A\) has expected distributional risk at most \(1/8\), over its iid sample and internal randomness, on every realizable factor task. The proof actually consumes this condition only on the finite task universe constructed below.

The learner's privacy and expected-risk properties are local hypotheses of the target implication, not primitive setting assumptions or generated invariants. No properness, finite ambient domain, finite ambient output class, or quotient-coded-output condition is imposed.

Throughout this artifact, \(\ln\) denotes the setting's natural logarithm \(\log\), and \([t]:=\{1,\ldots,t\}\) for a positive integer \(t\). For a labeled database \(U=((u_a,y_a))_{a=1}^N\) and a decoded binary hypothesis \(h\), define
\[
L_U(h):=\frac1N\sum_{a=1}^N\mathbf1\{h(u_a)\ne y_a\}.
\]
When \(y_a=c(u_a)\) for every \(a\), the notation \(L_U(h,c)\) denotes the same quantity and only records the target.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | For a finite ordered threshold domain of size \(t\), if even \(N\ge72\) and an arbitrary-output algorithm is replacement-\((0.1,\eta)\)-DP on all \(N\)-row inputs with \(\eta\le1/(1000N^2\log_2N)\), and has expected empirical loss at most \(1/8\) on every realizable \(N\)-row threshold database, then \(N\ge a_0\log_2^*t\) for a universal \(a_0>0\). | Extracts the exact expected-loss source interface without using the printed PAC corollary as a black box. |
| `unit_002` | lemma | Under Assumption~\ref{assump:vc-one-factors} and Lemma~\ref{lem:step-001-quotient-invariance}, each factor has a fixed finite Shelah threshold witness of length \(t_i=\max\{1,\lfloor\ln d_i\rfloor\}\); for every \(m\), its uniform row-counting tasks form a finite learner-independent universe \(\mathfrak T_{i,m}\), and when \(r_i=\log_2^*d_i\ge8\), \(\log_2^*t_i\ge r_i-2\). | Produces the exact finite tasks and the LD-to-threshold log-star bridge. |
| `unit_003` | lemma | For a total arbitrary-output factor learner that is replacement-\((0.1,\delta)\)-DP on all \(m\)-row inputs and has measurable finite evaluations, if \(m\ge8\) and \(0<\delta\le(\ln2)/(200000m^2\ln(m+1))\), then resampling into the least even \(N_m\ge9m\) produces an empirical learner with \(\varepsilon_m'\le1/15\), \(\delta_m'<\delta\le1/(1000N_m^2\log_2N_m)\), and exact expected empirical/population risk equality on \(\mathfrak T_{i,m}\), including \(m=8\). | Discharges BNSV replacement resampling, arbitrary outputs, the expected-risk identity, delta translation, and the floor-eight boundary. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:vc-one-factors} and~\ref{assump:global-privacy-range}, Lemma~\ref{lem:step-001-quotient-invariance}, Proposition~\ref{prop:step-008-almm-expected}, Lemma~\ref{lem:step-008-shelah-tasks}, and Lemma~\ref{lem:step-008-resampling}, every total arbitrary-output replacement-\((0.1,\delta)\)-DP factor learner with measurable finite evaluations, \(m\ge8\), \(0<\delta\le c_\delta/(m^2\ln(m+1))\), and expected risk at most \(1/8\) on every realizable task satisfies \(m\ge a_{\rm L}\log_2^*d_i\); contrapositively, failure of that inequality forces strict expected risk greater than \(1/8\) on a task in the finite universe \(\mathfrak T_{i,m}\) supplied by Lemma~\ref{lem:step-008-shelah-tasks}. | Assembles the exact target claim and exports the strict finite-task floor. |

Atomic step = no. The source-proof adaptation, finite witness, resampling calculation, and final parameter translation are independent theorem-critical obligations.

## Cited Result Applications

### Accepted dependency `step_001`

- Source: accepted `step_001` proof and matching accepted review, at the hashes listed above.
- Restated current-notation interface: quotient pullback is a bijection \(\bar C_i\to C_i\) preserving every finite label pattern and finite Littlestone tree, so \(\operatorname{LD}(\bar C_i)=d_i\); quotient/raw risk agrees exactly. The target's unrestricted finite-cylinder output convention, rather than the dependency, makes the finite evaluation map of \(A\) measurable.
- Instantiated objects: \(C_i,\bar C_i,Q_i,\kappa_i\), the finite witness points \((q_{i,j})_j\), chosen raw representatives \((x_{i,j})_j\), and the factor decoder of \(A\).
- Assumption discharge: Assumption~\ref{assump:vc-one-factors} and the accepted dependency provide the dimensions; the dependency's output-measurability and risk lemmas provide the finite restriction and pullback interfaces.
- Conclusion used: the ALMM witness may be built on \(\bar C_i\), pulled back to an actual finite realizable task inside \(C_i\), and evaluated measurably even when the learner is improper.

### ALMM arXiv:1806.00949v3

The following labels and roles were checked in ALMM arXiv:1806.00949v3, primary source `ADP.tex` with SHA-256 `5eaeb54287aa8aa89a00ad4b05f9158b56e01450a18e635afeecc4ed4e97128f`.

1. `thm:shelah` states that if a binary class has Littlestone dimension at least \(d\), then it contains \(\lfloor\log d\rfloor\) thresholds: there are finitely many points \(x_1,\ldots,x_t\) and hypotheses \(h_1,\ldots,h_t\) with \(h_\ell(x_j)=+1\) iff \(\ell\le j\). The converse direction is also stated but is not used here. The paper leaves the base of its unadorned \(\log\) implicit. Taking only \(\lfloor\ln d\rfloor\) points is valid whether that source logarithm is natural or base two, and the explicit base-two log-star translation is proved locally.
2. `thm:main` is the printed PAC theorem: on a finite ordered threshold domain of cardinality \(t\), a possibly improper \((1/16,1/16)\)-accurate learner with sample size \(N\), replacement privacy \((0.1,O(1/(N^2\log N)))\), must have \(N=\Omega(\log^*t)\). It is not directly used as an expected-risk theorem.
3. `lem:bun` is ALMM's restatement of BNSV Lemma 5.9. For \(\varepsilon<1\), it converts an \((\varepsilon,\delta)\)-DP \((\alpha,\beta)\)-PAC learner using \(m\) samples into an empirical learner using \(9m\) samples with the same displayed privacy and accuracy parameters. Its printed high-probability conclusion is not used as the expected-risk premise.
4. `lem:finiteramsey`/`lem:ramsey`, in current notation, applies to the arbitrary randomized map \(B\) on \(N\)-row samples over the ordered \(t\)-point set \(V\). There is a universal \(C_R\) and a subset \(K\subseteq V\) of cardinality
   \[
   |K|\ge
   \frac{\log_2^{(N)}t}{2^{C_RN\log_2N}}
   \]
   whenever the displayed iterate is above the stopping range. There are \(p_0,\ldots,p_N\in[0,1]\) such that, for every increasing balanced threshold-labeled database \(U\) on \(N\) distinct points of \(K\) and every \(v\in K\setminus U_X\) with exactly \(j\) database points at or below \(v\),
   \[
   \left|\Pr[B(U)(v)=1]-p_j\right|\le\frac1{100N}.
   \]
   The result needs neither privacy nor utility and uses only the finitely many output-coordinate marginals, so the arbitrary bit-vector output of \(B\) is admissible. A change from the source's fixed logarithm base to base two is absorbed into \(C_R\).
5. `lem:reduction`, in the same notation, concludes that some \(1\le j\le N\) satisfies
   \[
   p_j-p_{j-1}\ge\frac1{4N}.
   \]
   The printed empirical-PAC premise enters its proof only through
   \[
   \mathbb E L_U(B(U))\le
   (1-1/16)(1/16)+(1/16)\cdot1\le1/8,
   \]
   on one balanced realizable database. Condition (2) below supplies this inequality directly. The remainder of the reduction uses expected accuracy \(7/8\), one replacement-privacy comparison, and the \(1/(100N)\) homogeneity error; \(\eta\le1/(1000N^2\log_2N)<0.001\) discharges its only delta estimate.
6. `lem:AtoP`, after the jump has been obtained, uses no accuracy premise. If \(k>N\), put \(n=k-N\) (the proof below invokes this interface only in the nontrivial branch \(k>2N+1\)). It supplies distributions \(P_1,\ldots,P_n\) on the full finite cube \(\{0,1\}^n\) and an \(r\in[0,1]\) such that every pair is \((0.1,\eta)\)-indistinguishable and
   \[
   \Pr_{z\sim P_a}[z(b)=1]\le r-\frac1{10N}\quad(b<a),
   \qquad
   \Pr_{z\sim P_a}[z(b)=1]\ge r+\frac1{10N}\quad(b>a).
   \]
   Here \(P_a\) is the law of the unrestricted output of \(B\), restricted to an ordered interval of \(n\) unused points, on a balanced database whose one movable row is placed at position \(a\). Any two such databases differ in that single row. Thus all-input replacement privacy supplies indistinguishability, and arbitrary improper outputs give arbitrary cube vectors rather than threshold vectors.
7. `lem:prod`, the product-composition result used inside the binary argument, says that \((0.1,\eta)\)-indistinguishable \(P_a,P_b\) have \(D\)-fold products that are \((0.1D,D\eta)\)-indistinguishable for every integer \(D\ge1\). It is applied only to the finite-cube distributions just described.
8. `lem:binary`, in current base-two notation, says that the family in item 6 cannot have
   \[
   n>2^{1000N^2(\log_2N)^2}
   \]
   when \(N\ge72\) and \(\eta\le1/(1000N^2\log_2N)\). Its binary-search events, repetition count, product-composition use, and the exact estimate on \(D\eta\) are reproduced in Proposition~\ref{prop:step-008-almm-expected}; this supplies an individual discharge of the displayed delta cap rather than an appeal to the lemma label alone.
9. `lem:lbhomog` is the composition of items 5--8. In the source it assumes empirical \((1/16,1/16)\)-accuracy. Inspecting its proof shows that this premise is used only by `lem:reduction` to obtain expected empirical loss at most \(1/8\). With condition (2) substituted at that single line, the exact current-notation conclusion is
   \[
   |K|\le N+2^{1000N^2(\log_2N)^2}
   \le2^{C_HN^2(\log_2N)^2}
   \]
   where one may take the universal value \(C_H=1001\). If \(|K|\le2N+1\), this bound is immediate and the finite-cube construction is not invoked.
10. `thm:ADPimpliesLD` is the printed PAC corollary obtained by composing `thm:shelah` and `thm:main`. It confirms the source's arbitrary-class and possibly-improper scope, but its PAC premise is not used as authority for the expected-risk wrapper.

Source-convention mapping:

- ALMM uses labels \(\{-1,+1\}\), while the branch uses \(\{0,1\}\). The fixed bijection \(b\mapsto2b-1\) preserves equality, mistakes, adjacency, and every DP inequality.
- ALMM Definition `def:private` uses fixed-size samples that disagree in one example, exactly replacement adjacency.
- ALMM algorithms output arbitrary functions on the domain and the text explicitly emphasizes that `thm:main` may be improper. Restricting a branch output to the finite Shelah witness therefore preserves, rather than narrows, the source scope relevant to the proof.
- The proof of `thm:main` fixes the concrete empirical privacy scale \(1/(1000N^2\log N)\). Proposition~\ref{prop:step-008-almm-expected} performs the binary-search delta calculation directly at \(1/(1000N^2\log_2N)\), so no ambiguity in the source's unbased logarithm is used to strengthen the claim.

### BNSV Lemma 5.9 and its resampling lemma

- Source identity: Bun--Nissim--Stemmer--Vadhan, arXiv:1504.07553 (the original source is v1); primary source `thresholds.tex` has SHA-256 `26ef98af700bd48d71c16eec61e8309c403222a1845a2097da5c31b5d3d7e318`, and the rendered source identifies the result as Lemma 5.9.
- Exact printed Lemma 5.9: an \((\varepsilon,\delta)\)-DP \((\alpha,\beta)\)-accurate PAC learner of sample size \(m\) yields an \((\varepsilon,\delta)\)-DP \((\alpha,\beta)\)-accurate empirical learner of sample size \(9m\); properness is preserved if present, but is not required.
- Exact privacy calculation used in its proof: the immediately preceding source lemma labeled `lem:secrecy-of-the-sample` assumes \(\varepsilon\le1\) and \(N\ge2m\). On an input database of size \(N\), sample \(m\) row indices independently with replacement and run an \((\varepsilon,\delta)\)-DP algorithm on the resulting \(m\)-row database. The result is replacement-\((\widetilde\varepsilon,\widetilde\delta)\)-DP with
  \[
  \widetilde\varepsilon=\frac{6\varepsilon m}{N},
  \qquad
  \widetilde\delta=
  \exp\!\left(\frac{6\varepsilon m}{N}\right)
  \frac{4m}{N}\,\delta.
  \tag{1}
  \]
- Resampling adjacency: for adjacent \(N\)-row databases differing in the last row, the proof conditions on the multiplicity \(K\) with which that index is sampled. Conditional resampled inputs differ in exactly \(K\) positions; iterating replacement privacy gives \(q_K\le e^{K\varepsilon}q_0+(e^{K\varepsilon}-1)(e^\varepsilon-1)^{-1}\delta\), and binomial averaging yields (1). Repeated sampling is therefore included, not silently treated as one replacement.
- Instantiated objects: \(\varepsilon=0.1\), base learner sample size \(m\), empirical database size \(N_m\), arbitrary labeled databases over the finite raw Shelah witness, and the postprocessed finite evaluation vector.
- Assumption discharge: \(0.1\le1\); \(N_m\ge9m\ge2m\); branch privacy holds on every labeled input; finite evaluation restriction is measurable by the accepted dependency.
- Conclusion used: the resampled empirical learner has exactly the parameters in (1). The statement/formula distinction is explicit: Lemma 5.9 is the PAC-to-empirical result, while (1) is the labeled source lemma invoked in its proof.

## Local Derivation

### unit_001: proposition

**Proposition (Expected empirical ALMM threshold obstruction).** \(\label{prop:step-008-almm-expected}\)

Statement:
There is a universal constant \(a_0>0\) with the following property. Let \(V\) be a finite totally ordered set of size \(t\), let \(N\ge72\) be even, and let
\[
B:(V\times\{0,1\})^N\rightsquigarrow\{0,1\}^{V}
\]
be an arbitrary-output randomized algorithm. If

1. \(B\) is replacement-\((0.1,\eta)\)-DP on all labeled databases;
2. \(\eta\le1/(1000N^2\log_2N)\); and
3. for every threshold target \(c\) on \(V\) and every \(N\)-row database \(U\) labeled by \(c\),
   \[
   \mathbb E_{B}L_U(B(U),c)\le\frac18,
   \tag{2}
   \]

then
\[
N\ge a_0\log_2^*t.
\tag{3}
\]
The conclusion permits every output bit vector, not only threshold vectors.

Proof / justification:
This is the expected-loss adaptation of the checked proof of ALMM `thm:main`, not an invocation of its printed PAC statement. We restate and discharge every active internal interface in the notation of this proposition.

For an \(N\)-row database \(U\) and \(v\in V\), put
\[
b_U(v):=\Pr[B(U)(v)=1].
\]
For an increasing database \(U\) on distinct ordered points, let \(\operatorname{ord}_U(v)\) be the number of its instance coordinates at or below \(v\). A subset \(K\subseteq V\) is \(N\)-homogeneous for \(B\) when there are \(p_0,\ldots,p_N\in[0,1]\) such that every increasing balanced threshold-labeled \(U\) on \(N\) distinct points of \(K\) and every \(v\in K\setminus U_X\) satisfy
\[
\left|b_U(v)-p_{\operatorname{ord}_U(v)}\right|
\le\frac1{100N}.
\tag{2a}
\]

**ALMM `lem:finiteramsey`/`lem:ramsey`, fully instantiated.** There is a universal constant \(C_R\) such that every randomized \(N\)-sample algorithm on an ordered \(t\)-point domain has an \(N\)-homogeneous subset \(K\) with
\[
k:=|K|\ge
\frac{\log_2^{(N)}t}{2^{C_RN\log_2N}}
\tag{2b}
\]
whenever \(\log_2^*t>N\), so that the iterate in (2b) remains above the stopping range. To obtain (2a), the source colors each \((N+1)\)-subset by its \(N+1\) output marginals rounded to multiples of \(1/(100N)\); there are at most \((100N+1)^{N+1}\) colors. Its finite hypergraph Ramsey bound gives (2b), after changing the fixed logarithm base and enlarging \(C_R\). This result requires only a randomized mapping and finitely many coordinate marginals. The present \(B\), including every improper bit-vector output, therefore satisfies its hypotheses; privacy, realizability off the canonical balanced databases, and condition (2) are not used here.

**ALMM `lem:reduction`, with its sole utility input exposed.** In the nontrivial branch in which \(K\) is large enough for the source's balanced construction, its probability list satisfies
\[
\exists j\in\{1,\ldots,N\}:
p_j-p_{j-1}\ge\frac1{4N}.
\tag{2c}
\]
Indeed, choose the balanced increasing realizable database \(U\) used by the source. Condition (2), applied to this particular database and target, gives
\[
\frac78
\le \mathbb E[1-L_U(B(U),c)]
=\frac1N\sum_{a\le N/2}(1-b_U(u_a))
 +\frac1N\sum_{a>N/2}b_U(u_a).
\tag{2d}
\]
Consequently some positive sample coordinate has marginal at least \(3/4\), and some negative sample coordinate has marginal at most \(1/4\). Replace the selected coordinate by the adjacent unused point chosen in the ALMM construction, retaining its label. For the high marginal, reverse replacement privacy gives
\[
b_{U'}(u_a)
\ge e^{-0.1}(b_U(u_a)-\eta)
\ge e^{-0.1}(3/4-\eta)>2/3;
\tag{2e}
\]
for the low marginal, forward privacy gives
\[
b_{U''}(u_a)
\le e^{0.1}b_U(u_a)+\eta
\le e^{0.1}/4+\eta<1/3.
\tag{2f}
\]
Both strict numerical bounds follow from \(N\ge72\) and
\[
\eta\le\frac1{1000N^2\log_2N}<0.001.
\tag{2g}
\]
The removed points are outside the modified databases, so (2a) maps (2e)--(2f) to two entries of the same probability list: the upper entry is at least \(2/3-1/(100N)\), and the lower entry is at most \(1/3+1/(100N)\). Their ordered index gap is at most \(N\). Telescoping therefore gives one consecutive increment at least
\[
\frac1N\left(\frac13-\frac1{50N}\right)
\ge\frac1{4N},
\]
which is (2c). This proves the expected-loss-adapted reduction. In the printed proof the empirical \((1/16,1/16)\)-PAC premise is used only to derive \(\mathbb E L_U\le(15/16)(1/16)+(1/16)\le1/8\), the premise already supplied by (2). No PAC event or failure parameter is used in (2d)--(2g) or anywhere after (2c).

**ALMM `lem:AtoP`, fully instantiated.** Suppose \(k>2N+1\), put \(n=k-N\), and use the index in (2c). The source chooses a balanced realizable database whose one movable coordinate leaves an ordered interval \(J\subseteq K\) of exactly \(n\) unused points. For each \(a\in[n]\), let \(U_a\) place that movable row at the \(a\)-th point of \(J\), with every other row fixed, and let \(P_a\) be the law on \(\{0,1\}^n\) obtained by restricting \(B(U_a)\) to \(J\) and identifying \(J\) increasingly with \([n]\). Then

1. every \(P_a,P_{a'}\) are \((0.1,\eta)\)-indistinguishable, because \(U_a,U_{a'}\) differ in exactly the one movable row; and
2. for \(r=(p_{j-1}+p_j)/2\), homogeneity and (2c) give, for every \(a,b\in[n]\),
   \[
   \Pr_{z\sim P_a}[z(b)=1]\le r-\frac1{10N}\qquad(b<a),
   \qquad
   \Pr_{z\sim P_a}[z(b)=1]\ge r+\frac1{10N}\qquad(b>a).
   \tag{2h}
   \]

For item 2, the jump \(1/(4N)\), less the two homogeneity errors, leaves at least \(1/(4N)-2/(100N)>1/(5N)\) between the two sides; taking their midpoint leaves the displayed \(1/(10N)\) margin. This construction uses only (2c), homogeneity, and replacement privacy. It neither invokes condition (2) again nor assumes the output is a threshold: restriction of an arbitrary output produces an arbitrary member of the full finite cube. Privacy is legal even if an intermediate input is nonrealizable because hypothesis 1 holds on all labeled databases.

**ALMM `lem:binary` and `lem:prod`, with the delta discharge.** The exact current-notation binary conclusion is
\[
n\le2^{1000N^2(\log_2N)^2}
\tag{2i}
\]
for every family satisfying item 1 and (2h) under (2g). Here is the quantitative source argument, included to discharge the cap rather than cite its label. Write \(L=\log_2N\), and suppose contrary to (2i) that \(n>2^{1000N^2L^2}\). Set
\[
T:=\left\lfloor1000N^2L^2\right\rfloor-1,
\qquad
D:=\left\lceil50N^2\ln(6T)\right\rceil.
\tag{2j}
\]
For \(D\) independent cube vectors, threshold each coordinate's empirical fraction of ones at \(r\), assigning ties deterministically to zero, and perform \(T\) binary-search decisions. Because \(n>2^{T+1}\), every one of the \(2^T\) terminal intervals contains at least two indices. Choose in each interval a representative \(a\) not equal to any coordinate queried on its path, and let \(E_a\) be the event that the search follows that path. These \(2^T\) events are disjoint. Under \(P_a^D\), every queried coordinate \(b\ne a\) has its mean at distance at least \(1/(10N)\) from \(r\) on the side that leads toward \(a\). Hoeffding's inequality and a union bound give
\[
P_a^D(E_a)
\ge1-T\exp\left(-\frac{D}{50N^2}\right)
\ge\frac56.
\tag{2k}
\]

ALMM `lem:prod` states that pairwise \((0.1,\eta)\)-indistinguishability implies pairwise \((0.1D,D\eta)\)-indistinguishability of the \(D\)-fold products. The choice (2j) and (2g) give the individual additive-privacy discharge
\[
\begin{aligned}
D\eta
&\le
\frac{\ln(6T)}{20L}
+\frac1{1000N^2L}\\
&\le
\frac{\ln(6000)+2\ln N+2\ln L}{20L}
+\frac1{1000N^2L}
<\frac15.
\end{aligned}
\tag{2l}
\]
The last inequality holds at \(N=72\), and its left side decreases thereafter: \(\ln N/L=\ln2\) is constant, while \(1/L\) and \(\ln L/L\) decrease for \(L\ge\log_2 72>e\). Thus, for any fixed product law \(P_b^D\), product indistinguishability and (2k) imply
\[
P_b^D(E_a)
\ge e^{-0.1D}\bigl(P_a^D(E_a)-D\eta\bigr)
>\frac12e^{-0.1D}.
\tag{2m}
\]
Also \(\ln(6T)\le3.4L\) for \(N\ge72\), by the same displayed monotonicity calculation, so \(0.1D\le17N^2L+0.1\). Since
\[
(T-1)\ln2\ge
\bigl(1000N^2L^2-3\bigr)\ln2
>17N^2L+0.1,
\]
the disjoint events contradict total mass:
\[
1\ge\sum_aP_b^D(E_a)
>2^T\frac12e^{-0.1D}>1.
\]
This proves (2i). The argument uses only the finite-cube marginal gap, pairwise privacy, and the displayed delta cap; neither empirical nor population utility appears.

**ALMM `lem:lbhomog`, with the small-set branch.** Its expected-loss-adapted hypotheses are precisely that \(K\) is \(N\)-homogeneous as in (2a), \(B\) satisfies hypothesis 1 and the delta cap (2g), and condition (2) holds on every threshold-labeled \(N\)-row database. Set \(C_H=1001\). Under these hypotheses, if \(k\le2N+1\), then \(k\le2^{C_HN^2L^2}\) is immediate. Otherwise the balanced reduction and movable-interval construction above apply. Equations (2c), (2h), and (2i) yield
\[
k=N+n
\le N+2^{1000N^2L^2}
\le2^{C_HN^2L^2}.
\tag{2n}
\]
This is precisely the conclusion of `lem:lbhomog`, with its printed empirical-PAC hypothesis replaced at its unique utility line by condition (2). All remaining hypotheses are discharged separately: (2a) supplies homogeneity, hypothesis 1 supplies every privacy comparison, and hypothesis 2 supplies (2g) and (2l).

**Completion of the active reduction chain.** If \(\log_2^*t\le N\), (3) holds after taking \(a_0\le1\). Otherwise combine the homogeneous-set lower bound (2b) with (2n):
\[
\log_2^{(N)}t
\le k\,2^{C_RNL}
\le2^{C_1N^2L^2}
\tag{2o}
\]
for a universal \(C_1\). At most \(\log_2^*(2^{C_1N^2L^2})+O(1)=\log_2^*N+O(1)\) further base-two logarithms reduce the right side to at most one. Hence
\[
\log_2^*t\le N+\log_2^*N+O(1)\le C_2N
\]
for a universal \(C_2\) and every \(N\ge72\). Taking \(a_0=1/C_2\), and decreasing it if needed for the finitely many base-conversion endpoints, proves (3).

Evenness is used only to form the balanced databases in the reduction. Relabeling \(0,1\) as \(-1,+1\) preserves loss, adjacency, every marginal, and every privacy inequality. `lem:finiteramsey`, `lem:AtoP`, `lem:prod`, and `lem:binary` inspect only finite coordinate marginals or finite restrictions of the output. Thus every step remains valid for arbitrary improper bit vectors, and the empirical-PAC premise has been eliminated exactly at its sole point of use rather than inferred from expected loss.

### unit_002: lemma

**Lemma (Finite Shelah tasks and the base-two log-star bridge).** \(\label{lem:step-008-shelah-tasks}\)

Statement:
Under Assumption~\ref{assump:vc-one-factors} and Lemma~\ref{lem:step-001-quotient-invariance}, fix a factor \(i\), put
\[
r_i:=\log_2^*d_i,
\qquad
t_i:=\max\{1,\lfloor\ln d_i\rfloor\}.
\tag{4}
\]
There are fixed quotient points \(q_{i,1},\ldots,q_{i,t_i}\in Q_i\), quotient concepts \(\bar c_{i,1},\ldots,\bar c_{i,t_i}\in\bar C_i\), and raw representatives \(x_{i,j}\in\kappa_i^{-1}(\{q_{i,j}\})\) such that
\[
\bar c_{i,\ell}(q_{i,j})=c_{i,\ell}(x_{i,j})
=\mathbf1\{\ell\le j\},
\qquad
c_{i,\ell}:=\bar c_{i,\ell}\circ\kappa_i\in C_i.
\tag{5}
\]
For a fixed \(m\ge8\), let \(N_m\) be the least even integer at least \(9m\). For \(\mathbf j=(j_1,\ldots,j_{N_m})\in[t_i]^{N_m}\), define
\[
\mu_{i,\mathbf j}:=\frac{1}{N_m}\sum_{a=1}^{N_m}\delta_{x_{i,j_a}}.
\tag{6}
\]
Then
\[
\mathfrak T_{i,m}:=
\{(c_{i,\ell},\mu_{i,\mathbf j}):
  \ell\in[t_i],\ \mathbf j\in[t_i]^{N_m}\}
\tag{7}
\]
is a finite, learner-independent universe of realizable factor tasks. Moreover, if \(r_i\ge8\), then
\[
\log_2^*t_i\ge r_i-2.
\tag{8}
\]

Proof / justification:
Lemma~\ref{lem:step-001-quotient-invariance} gives \(\operatorname{LD}(\bar C_i)=d_i\). ALMM `thm:shelah` supplies a finite threshold pattern of length \(\lfloor\log d_i\rfloor\). If the source's unadorned logarithm is natural, (4) is exactly no larger than that length; if it is base two, \(\ln d_i\le\log_2d_i\), so a prefix of the source witness has length \(t_i\). When \(\lfloor\ln d_i\rfloor=0\), nonconstancy supplies a quotient point with both labels available; choosing a concept with label one gives the length-one instance of (5). Pullback and finite raw representative choice are legal by Lemma~\ref{lem:step-001-quotient-invariance} and require no measurable global section.

Each measure in (6) is a probability measure on \((X_i,\Sigma_i)\), even when raw singletons are not measurable as sets: a Dirac measure \(\delta_x(A)=\mathbf1_A(x)\) is defined on every measurable space. Its target is the setting-measurable concept \(c_{i,\ell}\), so every pair in (7) is a legal realizable task. The universe has at most \(t_i^{N_m+1}\) elements and is fixed using only the factor, the source witness, and \(m\), before any learner is supplied.

It remains to prove (8) in the setting's exact convention. Let \(x=\log_2d_i\). If \(r_i\ge8\), then certainly \(d_i>1024\), hence \(x>10\). Since \(x\ln2>2\),
\[
t_i=\lfloor x\ln2\rfloor
\ge\frac{\ln2}{2}x.
\tag{9}
\]
At \(x=10\), \((\ln2)x/2>\log_2x\), and the derivative of the left side is \(\ln2/2\), while the derivative of \(\log_2x\) is \(1/(x\ln2)<\ln2/2\) for every \(x\ge10\). Thus (9) gives \(t_i\ge\log_2x\). Monotonicity and two applications of the defining log-star recursion now yield
\[
\log_2^*t_i
\ge\log_2^*(\log_2x)
=\log_2^*x-1
=r_i-2,
\]
which proves (8). This calculation explicitly absorbs both the Shelah logarithm and the additional threshold-domain logarithm; it does not identify \(\log^*d_i\) with \(\log^*t_i\) without the displayed shift.

### unit_003: lemma

**Lemma (Replacement-private resampling with exact empirical-risk identity).** \(\label{lem:step-008-resampling}\)

Statement:
Fix the factor and finite witness from Lemma~\ref{lem:step-008-shelah-tasks}. Let \(m\ge8\), let \(\delta>0\), and let
\[
A:(X_i\times\{0,1\})^m\rightsquigarrow(\Omega,\mathscr F)
\]
be total and replacement-\((0.1,\delta)\)-DP on every labeled \(m\)-row input, with a decoded binary hypothesis whose finite-evaluation cylinders are measurable. Define \(N_m\) as in Lemma~\ref{lem:step-008-shelah-tasks}, and set
\[
c_\delta:=\frac{\ln2}{200000}.
\tag{10}
\]
If
\[
0<\delta\le\frac{c_\delta}{m^2\ln(m+1)},
\tag{11}
\]
then the following algorithm \(B_{i,m}\) is well-defined on every labeled \(N_m\)-row database over the raw witness. Sample \(m\) row indices independently and uniformly with replacement, run \(A\) on those \(m\) labeled raw rows, and output the vector of the decoded hypothesis's labels on \((x_{i,1},\ldots,x_{i,t_i})\). It is replacement-\((\varepsilon_m',\delta_m')\)-DP, where
\[
\varepsilon_m'=\frac{0.6m}{N_m}\le\frac1{15},
\qquad
\delta_m'=
e^{0.6m/N_m}\frac{4m}{N_m}\delta
<\delta
\le\frac1{1000N_m^2\log_2N_m}.
\tag{12}
\]
For every task \((c_{i,\ell},\mu_{i,\mathbf j})\in\mathfrak T_{i,m}\), if
\[
U_{i,\ell,\mathbf j}:=
\bigl((x_{i,j_a},c_{i,\ell}(x_{i,j_a}))\bigr)_{a=1}^{N_m},
\]
then
\[
\mathbb E L_{U_{i,\ell,\mathbf j}}
 \bigl(B_{i,m}(U_{i,\ell,\mathbf j}),c_{i,\ell}\bigr)
=
\mathbb E_{S\sim(\mu_{i,\mathbf j})_{c_{i,\ell}}^m,A}
 R_{\mu_{i,\mathbf j}}(h_{A(S)},c_{i,\ell}).
\tag{13}
\]
At the boundary \(m=8\), \(N_m=72\), so every displayed source condition remains valid.

Proof / justification:
The finite evaluation vector is measurable by the target's finite-evaluation-cylinder hypothesis; this is compatible with the quotient decoder established by Lemma~\ref{lem:step-001-output-measurability}. It can be an arbitrary bit vector and need not represent a member of the threshold subclass. The algorithm is total on nonrealizable inputs because \(A\) is total there and the resampling rule does not test realizability.

We have
\[
9m\le N_m\le9m+1\le10m.
\tag{14}
\]
In particular \(N_m\ge2m\), so the BNSV source lemma used in Lemma 5.9 applies to replacement-adjacent databases, including all multiplicities of the replaced row. Substituting \(\varepsilon=0.1\) in (1) gives the two parameters in (12). From \(N_m\ge9m\),
\[
\varepsilon_m'\le\frac{0.6}{9}=\frac1{15}.
\]
For \(0\le y<1\), the exponential series gives \(e^y\le(1-y)^{-1}\). Hence
\[
e^{0.6m/N_m}\frac{4m}{N_m}
\le e^{1/15}\frac49
\le\frac{15}{14}\frac49
=\frac{10}{21}<1,
\tag{15}
\]
which proves \(\delta_m'<\delta\). Thus \(B_{i,m}\), originally \((\varepsilon_m',\delta_m')\)-DP, may also be regarded as \((0.1,\delta_m')\)-DP.

For the ALMM delta scale, \(m\ge8\) implies
\[
10m\le(m+1)^2.
\tag{16}
\]
Equations (14)--(16) give
\[
N_m^2\log_2N_m
=\frac{N_m^2\ln N_m}{\ln2}
\le\frac{100m^2\,2\ln(m+1)}{\ln2}.
\tag{17}
\]
Inverting (17) and using (10)--(11),
\[
\delta_m'<\delta
\le\frac{\ln2}{200000m^2\ln(m+1)}
\le\frac1{1000N_m^2\log_2N_m},
\]
which is the last part of (12). At \(m=8\), \(9m=72\) is already even, so \(N_m=72\) and, exactly,
\[
\varepsilon_8'=\frac{0.6\cdot8}{72}=\frac1{15},
\qquad
\delta_8'=e^{1/15}\frac49\delta\le\frac{10}{21}\delta<\delta.
\]
Thus (14), the BNSV condition \(N_m\ge2m\), the balanced-database convention, (15), and (17) all hold at the boundary without an open endpoint or an appeal to larger \(m\).

Finally, conditional on the fixed database \(U_{i,\ell,\mathbf j}\), its with-replacement resample is exactly an iid sample from \((\mu_{i,\mathbf j})_{c_{i,\ell}}\). For every decoded output \(h\), pointwise and before expectation,
\[
L_{U_{i,\ell,\mathbf j}}(h,c_{i,\ell})
=\frac1{N_m}\sum_{a=1}^{N_m}
 \mathbf1\{h(x_{i,j_a})\ne c_{i,\ell}(x_{i,j_a})\}
=R_{\mu_{i,\mathbf j}}(h,c_{i,\ell}).
\tag{18}
\]
Taking expectation over the sampled indices and learner randomness proves (13). Repeated database rows are counted with their multiplicities on both sides, so there is no empirical-to-population residual.

### unit_004: proposition

**Proposition (Unrestricted expected-risk factor floor).** \(\label{prop:step-008-factor-floor}\)

Statement:
Under Assumptions~\ref{assump:vc-one-factors} and~\ref{assump:global-privacy-range}, Lemma~\ref{lem:step-001-quotient-invariance}, Proposition~\ref{prop:step-008-almm-expected}, Lemma~\ref{lem:step-008-shelah-tasks}, and Lemma~\ref{lem:step-008-resampling}, fix a factor \(i\), let \(m\ge8\), let \(\delta>0\), and let
\[
A:(X_i\times\{0,1\})^m\rightsquigarrow(\Omega,\mathscr F)
\]
be total and replacement-\((0.1,\delta)\)-DP on all labeled inputs, with a decoded binary hypothesis whose finite-evaluation cylinders are measurable. Let \(a_0\) be from Proposition~\ref{prop:step-008-almm-expected} and define
\[
a_{\rm L}:=\min\left\{1,\frac{a_0}{20}\right\},
\qquad
c_\delta:=\frac{\ln2}{200000}.
\tag{19}
\]
If \(m\ge8\), \(\delta\le c_\delta/(m^2\ln(m+1))\), and \(A\) has expected risk at most \(1/8\) on every realizable factor task, then
\[
m\ge a_{\rm L}\log_2^*d_i.
\tag{20}
\]
More strongly, for the fixed finite universe \(\mathfrak T_{i,m}\) supplied by Lemma~\ref{lem:step-008-shelah-tasks},
\[
m<a_{\rm L}\log_2^*d_i
\quad\Longrightarrow\quad
\exists(c,D)\in\mathfrak T_{i,m}:
\mathbb E_{S\sim D_c^m,A}R_D(h_{A(S)},c)>\frac18.
\tag{21}
\]

Proof / justification:
Write \(r_i=\log_2^*d_i\). If \(r_i<8\), then \(m\ge8>r_i\), and (20) follows from \(a_{\rm L}\le1\).

Now suppose \(r_i\ge8\). If the learner has expected risk at most \(1/8\) on every realizable task, it has that bound on every member of the finite subfamily \(\mathfrak T_{i,m}\). Lemma~\ref{lem:step-008-resampling} therefore constructs an even-\(N_m\) arbitrary-output empirical threshold learner satisfying all hypotheses of Proposition~\ref{prop:step-008-almm-expected}. Using that proposition, Lemma~\ref{lem:step-008-shelah-tasks}, and \(N_m\le10m\),
\[
10m\ge N_m
\ge a_0\log_2^*t_i
\ge a_0(r_i-2)
\ge\frac{a_0}{2}r_i.
\tag{22}
\]
Thus \(m\ge(a_0/20)r_i\ge a_{\rm L}r_i\), proving (20).

For (21), suppose instead that \(m<a_{\rm L}r_i\). The small-\(r_i\) case is impossible by \(m\ge8\) and \(a_{\rm L}\le1\). In the remaining case, if every task in \(\mathfrak T_{i,m}\) had expected risk at most \(1/8\), the same derivation (22) would contradict the strict hypothesis. Therefore not all of the finitely many task losses are at most \(1/8\). Logical negation gives one task with loss strictly greater than \(1/8\), exactly as displayed in (21). The universe was fixed before \(A\), so this is not a learner-dependent witness construction.

## Target-Step Assembly

Proposition~\ref{prop:step-008-almm-expected} verifies the theorem-critical source interface at the level actually consumed by the ALMM proof: even empirical sample size, replacement privacy on all inputs, arbitrary improper output, exact delta scale, and expected empirical loss \(1/8\). It explicitly treats ALMM's printed PAC theorem and `thm:ADPimpliesLD` as nonoutputs for this wrapper and identifies `lem:reduction` as the sole utility entry point.

Lemma~\ref{lem:step-008-shelah-tasks}, using Lemma~\ref{lem:step-001-quotient-invariance} and ALMM `thm:shelah`, fixes a finite learner-independent family of realizable uniform-database tasks and proves the base-two log-star shift. Lemma~\ref{lem:step-008-resampling} then instantiates the exact BNSV with-replacement calculation used in Lemma 5.9, including repeated selection of the replaced row, all-input replacement adjacency, finite-evaluation postprocessing, exact expected-risk equality, \(m=8\), and the natural-log candidate cap to base-two ALMM delta translation.

Proposition~\ref{prop:step-008-factor-floor} composes those results and proves the exact sketch-row implication with the universal constants in (19). Its contrapositive (21) is strict and is supported by the fixed finite Shelah task universe. No properness, ambient finiteness, quotient-output restriction, PAC-to-expectation reversal, or uniform-in-candidate assertion is introduced.

## Explicit Rate Audit

- Exposed variables: the fixed factor index \(i\), \(d_i\), \(r_i=\log_2^*d_i\), witness length \(t_i\), factor sample size \(m\), even empirical size \(N_m\), and \(\delta\).
- Hidden constants may depend on: only the universal constant \(a_0\), itself obtained from the checked Ramsey/homogeneous-set constants \(C_R,C_H,C_1,C_2\), and fixed numerical/logarithm conventions.
- Hidden constants may not depend on: \(X,\Sigma,C,i,k,d_i,C_i,Q_i,|Q_i|\), the learner, target, distribution, \(m\), \(\varepsilon\), or \(\delta\).
- Fixed quantities: source privacy level \(0.1\), expected-risk threshold \(1/8\), the source empirical delta coefficient \(1000\), and natural/base-two logarithm conventions.
- Probability mode: expected exact \(0\)-\(1\) risk over an iid sample and learner randomness; the contrapositive is a worst-case strict expected-risk statement. No PAC tail event is claimed in this step.
- Horizon mode: one fixed factor and one fixed sample size \(m\); the constants are universal, but there is no simultaneous or uniform-in-candidate event.
- Norm mode: exact distributional binary \(0\)-\(1\) risk, equal pointwise to empirical row-counting loss in (18).
- Admissibility conditions and auxiliary tolerances: \(m\ge8\), \(0<\delta\le c_\delta/(m^2\ln(m+1))\), replacement-\((0.1,\delta)\)-DP on all inputs, and the local expected-risk premise. There is no auxiliary tolerance.
- Term absorption or simplification inequalities: (8)--(9) prove the Shelah/log-star shift; (14)--(17) prove the even-rounding, privacy, and delta absorptions; (22) proves the final constant absorption. No term is dropped by asymptotic prose.
- Probability conversion: none. The proof follows the ALMM expected-loss line directly and does not infer the source PAC guarantee from expected risk.
- Contribution to any Rate Specialization Bridge: exports universal \(a_{\rm L}=\min\{1,a_0/20\}\) and the valid conservative choice \(c_\delta=\ln2/200000\) for later candidate calibration.
- Baseline-reduction check: at \(k=1\), the construction is the same unrestricted one-factor ALMM threshold obstruction after finite Shelah restriction and BNSV resampling. The intermediate conclusion is an expected-risk floor because that is this step's exact downstream interface; it is strict on a finite task family and does not replace the final PAC baseline. The accepted sketch assigns the later expectation-to-PAC-event conversion to `step_014`.

## Blockers

None

## Notation And Assumption Notes

- `Public-facing`: \(a_{\rm L}\) and \(c_\delta\) in (19) are the minimal universal constants exported to `step_009`. Their provenance is, respectively, the checked ALMM constant plus explicit factor-10/additive-log-star absorption, and the direct delta calculation (17).
- `Public-facing`: \(\mathfrak T_{i,m}\) is the finite learner-independent task universe exported to `step_010`; its points, targets, and row-counting measures are all constructed in Lemma~\ref{lem:step-008-shelah-tasks}. No task is selected after observing a learner.
- `Appendix-local`: \(a_0\), \(t_i\), the finite Shelah points/concepts, their raw representatives, and \(N_m\) package the source proof and finite-game interface. The witness is finite, while the ambient factor and output spaces may be infinite.
- `Proof-local`: \(\varepsilon_m',\delta_m'\), the sequence \(\mathbf j\), database \(U_{i,\ell,\mathbf j}\), and variable \(x=\log_2d_i\) are used only to prove the wrapper and its parameter translations.
- `Proof-local`: in Proposition~\ref{prop:step-008-almm-expected}, \(b_U(v)\), the homogeneous set \(K\) and its probability list \((p_j)_{j=0}^N\), the cube distributions \((P_a)_{a=1}^n\), their midpoint \(r\), and the binary-search quantities \(L,T,D,E_a\) restate the checked ALMM proof in current notation. They are derived from the proposition's finite threshold instance and are not assumptions or downstream objects.
- `Proof-local constants`: \(C_R,C_H,C_1,C_2\) name successive universal constants in the finite Ramsey bound, homogeneous-set upper bound, their composition, and the final iterated-log comparison. Only their package \(a_0=1/C_2\) leaves Proposition~\ref{prop:step-008-almm-expected}.
- `Proof-local notation`: \([t]=\{1,\ldots,t\}\), \(L_U\), and the alias \(\ln=\log\) are defined before use and introduce no assumption or hidden parameter.
- Constant provenance: \(C_R\) is the universal constant in the restated finite Ramsey bound; \(C_H=1001\) combines the explicit binary exponent with the small-homogeneous-set branch; \(C_1\) combines \(C_R,C_H\), and \(C_2\) bounds the remaining iterated logarithms. The definition \(a_0=1/C_2\) packages these checked source constants. The coefficient \(50\) in (2j) is the displayed Hoeffding choice, and \(3.4\) is proved by the monotonic estimate following (2l). The coefficient \(1000\) is the exact conservative scale fixed in the proof of ALMM `thm:main`; \(9\), \(6\), and \(4\) are the exact BNSV resampling constants; \(72\) is the derived value \(N_8=9\cdot8\); \(200000=1000\cdot200\) comes from the explicit bound in (17). No free bounded constant is introduced.
- Assumption provenance: the finite witness and task universe are proved locally from the primitive factor condition and accepted quotient invariance. Measurable restriction and exact risk pullback are accepted dependency conclusions. Resampling privacy and expected empirical loss are proved locally. The learner's all-input DP and expected-risk properties remain only the stated local hypotheses of the target implication.
- Source nonoutput boundaries: ALMM `thm:main`, `lem:bun`, and `thm:ADPimpliesLD` have PAC premises and are not cited as if they stated the expected-risk result. BNSV Lemma 5.9 states the \(9m\) PAC-to-empirical reduction; the exact formula (1) is in its proof's cited source lemma `lem:secrecy-of-the-sample`. These distinctions are part of the proof, not blockers.
- No global proof diagnostic or `proof_history` artifact was read or used.
