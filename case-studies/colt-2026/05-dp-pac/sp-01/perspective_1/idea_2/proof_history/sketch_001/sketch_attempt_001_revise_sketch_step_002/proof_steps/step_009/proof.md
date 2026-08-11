# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_009
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every factor/budget satisfying `step_008`'s strict
  subcritical inequality, produce a finite hard prior \(\nu_i\) on realizable
  pairs \((c_i,D_i)\) such that every eligible improper factor learner has
  prior-average expected risk strictly greater than \(1/8\); define \(\nu_i\)
  for every remaining factor as a point mass on a fixed realizable pair.
- Dependencies: step_008.
- Assumptions used: The derived ALMM expected-risk wrapper from step_008 and
  primitive factor nonconstancy/nonemptiness from
  `assump:vc-one-factors`. The privacy-parameter range is the primitive
  condition `assump:global-privacy-range`.
- Technical challenge: Remove algorithm dependence from the hard factor task
  while retaining arbitrary improper outputs, replacement-DP constraints on
  all inputs (including nonrealizable inputs), exact expected population risk,
  and a strict \(1/8\) gap.
- Intended proof tool or cited result: The fixed finite Shelah threshold game
  constructed in step_008; a finite-dimensional all-event approximate-DP
  kernel polytope; exact restriction and extension maps for arbitrary
  hypotheses; compact attainment; and an inline finite-dimensional
  minimax/separation argument.
- Output target: A legal all-factor family of finitely supported priors,
  learner-independent and fixed before every downstream simulator, with the
  strict hard-factor guarantee exactly where step_008 applies and no hardness
  claim elsewhere.
- Rate objective: No loss in the \(1/8\) floor or in the exact factor budget;
  fixed-sample expectation mode and finite probability support.
- Row-local review status: PENDING in the accepted sketch; sketch-level
  acceptance is supplied by `proof_sketch_review.md`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:vc-one-factors`: for every factor,
    \(C_i\subseteq\{0,1\}^{X_i}\) is nonconstant, has VC dimension one, and
    has finite \(d_i=\operatorname{LD}(C_i)\). In particular, \(C_i\) and
    \(X_i\) are nonempty.
  - `assump:global-privacy-range`: \(0<\varepsilon\le0.1\) and
    \(0<\delta<1\). The hard game is formed at \((0.1,\delta)\); any
    \((\varepsilon,\delta)\)-DP learner with \(\varepsilon\le0.1\) is
    eligible by privacy monotonicity.
- Derived invariants supplied by accepted dependencies:
  - The accepted step_008 proof exports universal constants
    \(a_{\mathrm L},c_\delta>0\) and the strict unrestricted factor floor.
  - Its Lemma~\ref{lem:step-008-threshold-map} fixes, independently of the
    learner, a finite Shelah threshold witness inside each active factor.
  - Its Lemmas~\ref{lem:step-008-resampling} and
    \ref{lem:step-008-privacy}, Proposition~\ref{prop:step-008-almm-expected},
    and Proposition~\ref{prop:step-008-factor-floor} supply the exact
    expected-loss, all-input privacy, source lower, and quantitative bridge
    used below.
- Local conditional hypotheses: In `unit_003`, one finite private kernel is
  temporarily assumed to have loss at most \(1/8\) on every finite threshold
  task. The accepted step_008 argument contradicts this hypothesis; it is not
  exported.
- Accepted dependency artifacts:
  - `perspective_1/idea_2/proof_steps/step_008/proof.md`, SHA-256
    `c635279729b9d3217edaf06918c024801499e36a4d77164a94eee2a6e803bb6c`.
  - `perspective_1/idea_2/proof_steps/step_008/review.md`, SHA-256
    `82f84395d042fffd880229a35e6d17969990515b9255c0ccce7626a2b4af5cc7`,
    status `ACCEPTED`, sketch attempt 1, step attempt 2.

No properness, finite cardinality of the ambient factor, ordering of the
ambient domain, learner-dependent task choice, high-probability utility, or
privacy restriction to realizable inputs is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\ref{assump:vc-one-factors}, the accepted step_008 threshold witness, and the strict step_008 parameter conditions, a fixed factor has a finite set of realizable empirical tasks whose affine kernel payoff is exactly expected population risk and which covers every realizable \(N\)-row threshold database used by step_008. | Defines the finite adversary action set without changing the risk target. |
| unit_002 | proposition | Under Assumptions~\ref{assump:vc-one-factors} and~\ref{assump:global-privacy-range}, randomized kernels from every finite labeled \(m\)-database, including nonrealizable ones, to every binary witness-label vector form a nonempty compact convex all-event \((0.1,\delta)\)-DP polytope; restriction of any unrestricted learner and rowwise-retraction extension of any such kernel preserve privacy and finite-task risk exactly. | Makes the finite learner action set exact rather than a relaxation or a proper-learning restriction. |
| unit_003 | proposition | Under the accepted step_008 results and its strict subcritical conditions, every kernel in the finite private polytope has maximum loss strictly greater than \(1/8\) on the finite task set. | Localizes the accepted factor hardness to one fixed finite task universe. |
| unit_004 | lemma | For the compact finite game from the preceding units, compact attainment preserves the pointwise strict gap, and an inline nearest-point separation argument produces a finitely supported prior \(\nu_i\) whose average payoff is strictly greater than \(1/8\) for every private kernel. | Reverses the quantifiers from \(\forall B\,\exists\theta\) to \(\exists\nu_i\,\forall B\) without losing strictness. |
| unit_005 | proposition | Under Assumption~\ref{assump:vc-one-factors} and the preceding local results, every active factor receives the fixed hard prior and every remaining factor receives a point mass on a fixed realizable pair; the resulting finite family is fixed before, and may be public to, every later learner or simulator. | Exports exactly the all-factor prior family required downstream, with no false hardness claim on inactive factors. |

## Cited Result Applications

### Accepted dependency results

| Result | Restated statement in current notation | Object mapping and assumption discharge | Conclusion used / known nonoutputs |
| ------ | --------------------------------------- | --------------------------------------- | ---------------------------------- |
| Accepted step_008, Lemma~\ref{lem:step-008-threshold-map} | For a factor with \(d=\operatorname{LD}(C_i)\), \(T=\lfloor\log_2d\rfloor\), and active \(T\ge1\), there are fixed points \(x_1,\ldots,x_T\in X_i\) and fixed concepts \(c_1,\ldots,c_T\in C_i\) with \(c_a(x_b)=1\) iff \(a\le b\), up to one fixed order/label reversal. The rowwise source-label map preserves replacement adjacency on every input, and output restriction/relabeling preserves loss on realizable threshold databases exactly. | The fixed factor and its \(d\) are the current objects. The witness is chosen before any learner. The active conditions in `unit_001` imply the accepted proof's \(T\ge2\) regime. | The fixed finite witness and exact source/factor interface. It does not itself supply a hard prior. |
| Accepted step_008, Lemma~\ref{lem:step-008-resampling} | If an \(m\)-sample factor learner has expected population risk at most \(1/8\) on the uniform row law of a realizable \(N\)-database, then drawing \(m\) rows with replacement and running the learner has expected empirical loss at most \(1/8\) on that database; population and empirical losses agree pointwise. | Every task in `unit_001` is precisely a target together with such a uniform row distribution, counting multiplicity. | Exact conversion from a finite-task payoff to the expected empirical-loss premise used by the source proof. |
| Accepted step_008, Lemma~\ref{lem:step-008-privacy} | For \(N=2\lceil9m/2\rceil\), with-replacement preprocessing of an all-input \((0.1,\delta)\)-DP \(m\)-sample mechanism is \((0.1,\delta)\)-DP on every \(N\)-row database; \(N\) is even and \(9m\le N\le10m\). | `unit_002` extends every finite kernel to an all-input factor learner, so the accepted lemma applies, including to nonrealizable adjacent databases. | Exact all-input wrapper privacy and size bounds; no group-privacy surrogate is used. |
| Accepted step_008, Proposition~\ref{prop:step-008-almm-expected} | There are universal \(b_0>0\) and \(c_0=10^{-4}\) such that every even \(N\ge72\) arbitrary-output threshold mechanism that is \((0.1,c_0/(N^2\log N))\)-DP on all inputs and has expected empirical loss at most \(1/8\) on every realizable threshold database satisfies \(N\ge b_0\log_2^*T\). | `unit_003` supplies the same finite ordered domain, arbitrary binary output vectors, all-input replacement privacy, and expected-loss premise. | The quantitative threshold contradiction. It is an expected-loss result, not the weaker formal PAC corollary. |
| Accepted step_008, Proposition~\ref{prop:step-008-factor-floor} | With \(c_\delta=c_0/200\) and \(a_{\mathrm L}=\min\{1,b_0/20\}\), the conditions \(m\ge8\), \(\delta\le c_\delta/[m^2\log(m+1)]\), and \(m<a_{\mathrm L}\log_2^*d\) imply the denominator bridge \(\delta\le c_0/(N^2\log N)\), the witness bridge \(\log_2^*T\ge\tfrac12\log_2^*d\), and a contradiction to \(N\ge b_0\log_2^*T\) because \(N\le10m\). | The same \(m,d,\delta,N,T\) are used in `unit_003`. Its finite-task premise supplies exactly the wrapper premise that the accepted proof previously obtained from a global worst-case-risk hypothesis. | The constants and strict quantitative closure only. This step does not cite the proposition as if it already produced a prior. |

### Local results consumed later in this step

| Result | Restated statement and assumptions | Conclusion used |
| ------ | ------------------------------------ | --------------- |
| Lemma~\ref{lem:step-009-finite-tasks} | Under the active parameter conditions and the accepted fixed threshold witness, the finite set \(\Theta\) consists of realizable factor tasks, covers every uniform \(N\)-row threshold law, and has an affine payoff equal to exact expected population risk. | Defines the adversary actions and loss used by every later local result. |
| Proposition~\ref{prop:step-009-kernel-polytope} | Under the two named setting assumptions, the all-event private-kernel set \(\mathscr K\) is nonempty, compact, and convex, and finite-kernel/full-learner restriction and extension preserve privacy and task losses exactly. | Supplies the compact learner action set and transfers its final prior guarantee to every unrestricted learner. |
| Proposition~\ref{prop:step-009-finite-floor} | Under the accepted dependency and strict step_008 conditions, every \(K\in\mathscr K\) obeys \(\max_{\theta\in\Theta}L(K,\theta)>1/8\). | Supplies the pointwise strict gap before compact minimax. |
| Lemma~\ref{lem:step-009-strict-minimax} | For the finite affine game, there is \(\nu\in\Delta(\Theta)\) with \(\min_{K\in\mathscr K}\mathbb E_{\theta\sim\nu}L(K,\theta)>1/8\). | Supplies the learner-independent finite hard prior. |
| Proposition~\ref{prop:step-009-all-factor-priors} | Active factors receive the hard prior and inactive factors receive a realizable point mass; every prior is fixed before later algorithms. | Exact target-step output. |

No external paper is cited anew in this step. The only nontrivial source
interface is the current accepted step_008 dependency. The finite-dimensional
minimax statement is proved inline in `unit_004`, rather than invoked by name.

## Local Derivation

Fix a factor and abbreviate \(C_i,X_i,d_i\) by
\(C_{\mathrm f},X_{\mathrm f},d\). Fix an integer factor budget \(m\) and
the current \(\delta\). For the hard construction assume

\[
m\ge8,\qquad
0<\delta\le\frac{c_\delta}{m^2\log(m+1)},\qquad
m<a_{\mathrm L}\log_2^*d.
\tag{9.1}
\]

The symbols introduced below are local to this fixed factor and budget until
`unit_005` restores factor subscripts.

### unit_001: lemma

**Lemma (Finite realizable threshold-task universe).**
\(\label{lem:step-009-finite-tasks}\)

Statement: Under Assumption~\ref{assump:vc-one-factors}, the accepted
Lemma~\ref{lem:step-008-threshold-map}, and (9.1), there is a fixed finite set
\(\Theta\) of realizable pairs \((c,D)\in C_{\mathrm f}\times
\mathcal P(X_{\mathrm f})\) with the following properties.

1. Every \(N\)-row database on the accepted finite threshold witness that is
   realizable by its threshold subclass has a uniform row law appearing in
   \(\Theta\), with multiplicity retained.
2. For every randomized kernel from labeled \(m\)-databases on the witness to
   binary output vectors on the witness, the payoff against
   \(\theta\in\Theta\) is affine in the kernel and equals the learner's exact
   expected population risk on \(\theta\).

Proof / justification:

Use the accepted dependency definitions

\[
N:=2\left\lceil\frac{9m}{2}\right\rceil,
\qquad T:=\left\lfloor\log_2d\right\rfloor.
\tag{9.2}
\]

The active calculation in Proposition~\ref{prop:step-008-factor-floor} gives
\(T\ge2\). Lemma~\ref{lem:step-008-threshold-map} fixes distinct points
\(x_1,\ldots,x_T\in X_{\mathrm f}\) and concepts
\(c_1,\ldots,c_T\in C_{\mathrm f}\) such that, after the one fixed source
orientation if needed,

\[
c_a(x_b)=1\quad\Longleftrightarrow\quad a\le b.
\tag{9.3}
\]

Neither the points nor the concepts depend on a learner.

Let

\[
\mathcal Q_{N,T}
:=\left\{q=(q_1,\ldots,q_T)\in\mathbb N_0^T:
\sum_{b=1}^Tq_b=N\right\},
\qquad
D_q(\{x_b\}):=\frac{q_b}{N}.
\tag{9.4}
\]

Regard \(D_q\) as a distribution on \(X_{\mathrm f}\) supported on the
witness points, and define

\[
\Theta:=\{\theta_{a,q}:=(c_a,D_q):
a\in[T],\ q\in\mathcal Q_{N,T}\}.
\tag{9.5}
\]

Every pair is realizable by construction. Moreover,

\[
|\Theta|
=T\binom{N+T-1}{T-1}<\infty.
\tag{9.6}
\]

An ordered \(N\)-row database on the witness realizable by \(c_a\) has a
unique count vector \(q\in\mathcal Q_{N,T}\), and its uniform row law is
exactly \(D_q\). Conversely, any \((a,q)\) is represented by any ordering of
the multiset having \(q_b\) copies of \((x_b,c_a(x_b))\). Thus (9.5) covers
all realizable databases consumed by the accepted threshold proof, including
repeated rows.

For the finite learner game put

\[
\mathcal Z_m:=\bigl(\{x_1,\ldots,x_T\}\times\{0,1\}\bigr)^m,
\qquad
\mathcal Y_T:=\{0,1\}^T.
\tag{9.7}
\]

Both are finite. For \(v=(v_1,\ldots,v_T)\in\mathcal Y_T\), define its exact
task risk

\[
r_{a,q}(v):=\sum_{b=1}^T\frac{q_b}{N}
\mathbf1\{v_b\ne c_a(x_b)\}.
\tag{9.8}
\]

Let \(P_{a,q}^{m}(z)\) be the probability of the ordered labeled database
\(z\in\mathcal Z_m\) under \((D_q)_{c_a}^m\). For any randomized kernel
\(K=(K(v\mid z))_{z,v}\), set

\[
L(K,\theta_{a,q})
:=\sum_{z\in\mathcal Z_m}P_{a,q}^{m}(z)
\sum_{v\in\mathcal Y_T}K(v\mid z)r_{a,q}(v).
\tag{9.9}
\]

This is a finite linear expression in the coordinates of \(K\), hence is
affine and continuous. If a learner on input \(z\) outputs a vector with law
\(K(\cdot\mid z)\), then (9.8) is its pointwise population risk under
\(D_q\), so (9.9) is exactly

\[
\mathbb E_{S\sim(D_q)_{c_a}^m,\,K}
R_{D_q}(K(S),c_a).
\tag{9.10}
\]

There is no empirical/population residual in (9.10). \(\square\)

### unit_002: proposition

**Proposition (Exact compact polytope of unrestricted private kernels).**
\(\label{prop:step-009-kernel-polytope}\)

Statement: Under Assumptions~\ref{assump:vc-one-factors}
and~\ref{assump:global-privacy-range}, and with the finite spaces in
Lemma~\ref{lem:step-009-finite-tasks}, let \(\mathscr K=\mathscr K(m,\delta)\)
be the set of all stochastic kernels \(K:\mathcal Z_m\rightsquigarrow
\mathcal Y_T\) satisfying, for every ordered replacement-adjacent pair
\(z,z'\in\mathcal Z_m\) and every event \(E\subseteq\mathcal Y_T\),

\[
\sum_{v\in E}K(v\mid z)
\le e^{0.1}\sum_{v\in E}K(v\mid z')+\delta.
\tag{9.11}
\]

Both orientations of each adjacent pair are included. Then \(\mathscr K\) is
a nonempty compact convex finite-dimensional polytope. Furthermore:

1. restricting and vector-postprocessing any unrestricted all-input
   \((0.1,\delta)\)-DP factor learner gives an element of \(\mathscr K\) and
   preserves every payoff (9.9) exactly;
2. every \(K\in\mathscr K\) extends, by a fixed rowwise input retraction and
   fixed output extension, to an unrestricted all-input
   \((0.1,\delta)\)-DP factor learner, again preserving every payoff (9.9)
   exactly.

Proof / justification:

The coordinates of a kernel obey

\[
K(v\mid z)\ge0,\qquad
\sum_{v\in\mathcal Y_T}K(v\mid z)=1
\quad(z\in\mathcal Z_m).
\tag{9.12}
\]

There are finitely many coordinates, adjacent ordered pairs, and events
\(E\subseteq\mathcal Y_T\). Hence (9.11)--(9.12) define an intersection of
finitely many closed affine halfspaces and hyperplanes inside a finite
product of probability simplices. The set is convex, closed, and bounded,
so it is compact. It is nonempty: a kernel that returns one fixed vector
\(v^\circ\) on every input satisfies (9.11) with equality before the
additive \(\delta\) term.

For the restriction direction, let \(B\) be any randomized factor learner
defined on all of \((X_{\mathrm f}\times\{0,1\})^m\), private for every
replacement-adjacent pair, and allowed to output any binary hypothesis
\(h:X_{\mathrm f}\to\{0,1\}\). Define

\[
K_B(v\mid z)
:=\Pr_B\bigl[(B(z)(x_1),\ldots,B(z)(x_T))=v\bigr].
\tag{9.13}
\]

For each \(E\subseteq\mathcal Y_T\), the event in (9.13) is the preimage of
\(E\) under deterministic output restriction. The DP event inequality for
\(B\) therefore gives (9.11), including when \(z\) or \(z'\) is
nonrealizable. Thus \(K_B\in\mathscr K\). Since every \(D_q\) is supported
on the witness, (9.8) gives the pointwise identity

\[
R_{D_q}(B(z),c_a)
=r_{a,q}\bigl((B(z)(x_1),\ldots,B(z)(x_T))\bigr),
\tag{9.14}
\]

and consequently

\[
L(K_B,\theta_{a,q})
=\mathbb E_{S\sim(D_q)_{c_a}^m,\,B}R_{D_q}(B(S),c_a).
\tag{9.15}
\]

This handles arbitrary improper hypotheses: only their finite evaluation
vector is postprocessed, and no membership in \(C_{\mathrm f}\) is required.

For the extension direction, fix the already available point \(x_1\) and
define a row map on every labeled factor row by

\[
\rho(x,y):=
\begin{cases}
(x,y),&x\in\{x_1,\ldots,x_T\},\\
(x_1,y),&x\notin\{x_1,\ldots,x_T\}.
\end{cases}
\tag{9.16}
\]

Apply \(\rho\) independently in every database coordinate. If two full
factor databases differ by one replacement, their images under
\(\rho^{\otimes m}\) are equal or differ by one replacement. For each
\(v\in\mathcal Y_T\), define a full binary hypothesis

\[
h_v(x_b):=v_b\quad(b\in[T]),
\qquad h_v(x):=0\quad
(x\notin\{x_1,\ldots,x_T\}).
\tag{9.17}
\]

Given any \(K\in\mathscr K\), define \(B_K\) on an arbitrary full input
\(S\) by sampling \(v\sim K(\cdot\mid\rho^{\otimes m}(S))\) and returning
\(h_v\). For any measurable event \(F\) in the full hypothesis output space,
its intersection with the finite support \(\{h_v:v\in\mathcal Y_T\}\)
corresponds to the event

\[
E_F:=\{v\in\mathcal Y_T:h_v\in F\}.
\]

If the retracted inputs agree, the output laws agree. If they are adjacent,
(9.11) applied to \(E_F\) gives the full DP inequality. Therefore \(B_K\) is
\((0.1,\delta)\)-DP on arbitrary, including nonrealizable, factor inputs.
On every task \(\theta_{a,q}\), \(\rho\) is the identity almost surely and
the pointwise risk of \(h_v\) is (9.8), whence

\[
\mathbb E_{S\sim(D_q)_{c_a}^m,\,B_K}R_{D_q}(B_K(S),c_a)
=L(K,\theta_{a,q}).
\tag{9.18}
\]

Thus the polytope contains neither too few nor spurious finite private
mechanisms for the task game. A learner with
\((\varepsilon,\delta)\)-privacy for \(\varepsilon\le0.1\) enters the same
polytope by privacy monotonicity. \(\square\)

### unit_003: proposition

**Proposition (Strict finite-task floor for every private kernel).**
\(\label{prop:step-009-finite-floor}\)

Statement: Under Assumptions~\ref{assump:vc-one-factors}
and~\ref{assump:global-privacy-range}, the accepted step_008 results, and
the strict conditions (9.1), every \(K\in\mathscr K\) satisfies

\[
\max_{\theta\in\Theta}L(K,\theta)>\frac18.
\tag{9.19}
\]

Proof / justification:

Fix \(K\in\mathscr K\) and suppose for contradiction that

\[
L(K,\theta_{a,q})\le\frac18
\qquad\text{for every }(a,q)\in[T]\times\mathcal Q_{N,T}.
\tag{9.20}
\]

Use Proposition~\ref{prop:step-009-kernel-polytope} to extend \(K\) to the
all-input unrestricted improper learner \(B_K\). Consider any ordered
\(N\)-row database \(Z\) on the witness that is realizable by the threshold
concept \(c_a\), and let \(q\) be its count vector. If \(m\) rows are sampled
independently with replacement from \(Z\), their labeled law is exactly
\((D_q)_{c_a}^m\), even when the learner is order-sensitive. By (9.18), the
expected population risk on that law is \(L(K,\theta_{a,q})\); by the
pointwise row-distribution identity in
Lemma~\ref{lem:step-008-resampling}, it is also the wrapper's expected
empirical loss on \(Z\). Hence (9.20) supplies

\[
\mathbb E L_Z(\widetilde B_{K,N}(Z))\le\frac18
\tag{9.21}
\]

for every realizable threshold database \(Z\), where
\(\widetilde B_{K,N}\) is the accepted even ninefold wrapper applied to
\(B_K\).

Proposition~\ref{prop:step-009-kernel-polytope} proves that \(B_K\) is
\((0.1,\delta)\)-DP on all factor inputs, not merely on the support of a
task. Lemma~\ref{lem:step-008-privacy} therefore makes
\(\widetilde B_{K,N}\) \((0.1,\delta)\)-DP on every labeled \(N\)-database.
The accepted quantitative calculation gives

\[
9m\le N\le10m,\qquad N\ge72,
\tag{9.22}
\]

and, because \(c_\delta=c_0/200\),

\[
N^2\log N\le200m^2\log(m+1),
\qquad
\delta\le\frac{c_0}{N^2\log N}.
\tag{9.23}
\]

Lemma~\ref{lem:step-008-threshold-map} applies its complete rowwise source
map to this wrapper. The input map handles every nonrealizable source
database, output restriction permits every improper vector, and the loss map
turns (9.21) into the exact source expected-loss premise. Therefore
Proposition~\ref{prop:step-008-almm-expected} yields

\[
N\ge b_0\log_2^*T.
\tag{9.24}
\]

Put \(r=\log_2^*d\). The strict active regime in (9.1) is exactly the one in
which the accepted threshold-size calculation proves

\[
\log_2^*T\ge\frac r2.
\tag{9.25}
\]

Combining (9.22), (9.24), and (9.25) gives

\[
m\ge\frac N{10}
\ge\frac{b_0}{10}\log_2^*T
\ge\frac{b_0}{20}\log_2^*d
\ge a_{\mathrm L}\log_2^*d,
\tag{9.26}
\]

contrary to (9.1). Thus (9.20) is impossible, which proves the strict
finite-task statement (9.19). Notice that the task set was fixed before
\(K\); the contradiction did not choose new witness points, concepts, or
distributions outside \(\Theta\). \(\square\)

### unit_004: lemma

**Lemma (Strict finite minimax and learner-independent hard prior).**
\(\label{lem:step-009-strict-minimax}\)

Statement: Under Lemma~\ref{lem:step-009-finite-tasks} and
Propositions~\ref{prop:step-009-kernel-polytope}
and~\ref{prop:step-009-finite-floor}, there is a probability law
\(\nu\in\Delta(\Theta)\) such that

\[
\min_{K\in\mathscr K}
\mathbb E_{\theta\sim\nu}L(K,\theta)>\frac18.
\tag{9.27}
\]

The support of \(\nu\) is finite and contained in the fixed realizable task
set \(\Theta\).

Proof / justification:

Enumerate \(\Theta=\{\theta_1,\ldots,\theta_J\}\), where by (9.6)

\[
J=T\binom{N+T-1}{T-1}.
\tag{9.28}
\]

Because every payoff is affine and continuous and \(\mathscr K\) is compact,
the function

\[
g(K):=\max_{1\le j\le J}L(K,\theta_j)
\]

is continuous and attains its minimum. Define

\[
\alpha:=\min_{K\in\mathscr K}g(K).
\tag{9.29}
\]

Proposition~\ref{prop:step-009-finite-floor} gives \(g(K)>1/8\) at every
\(K\). In particular, at a minimizer \(K_*\),

\[
\alpha=g(K_*)>\frac18.
\tag{9.30}
\]

This attainment is the step that preserves strictness; pointwise strictness
alone on a noncompact learner set would not suffice.

For completeness, we now derive the finite minimax direction directly. Let

\[
\mathscr R:=
\{(L(K,\theta_1),\ldots,L(K,\theta_J)):K\in\mathscr K\}
\subseteq[0,1]^J.
\tag{9.31}
\]

The set \(\mathscr R\) is compact and convex because \(\mathscr K\) is
compact and convex and the risk-vector map is affine. Fix any \(s<\alpha\)
and set

\[
\mathscr C_s:=(-\infty,s]^J.
\]

The definition of \(\alpha\) implies
\(\mathscr R\cap\mathscr C_s=\varnothing\). Choose a closest pair
\(r^*\in\mathscr R\), \(u^*\in\mathscr C_s\). Such a pair exists because
\(\mathscr R\) is compact and \(\mathscr C_s\) is closed; their distance is
positive. The Euclidean projection of \(r^*\) onto the lower orthant is

\[
u_j^*=\min\{r_j^*,s\},
\qquad
w:=r^*-u^*\in[0,\infty)^J\setminus\{0\}.
\tag{9.32}
\]

For any \(r\in\mathscr R\), convexity makes
\(r_\lambda=(1-\lambda)r^*+\lambda r\) feasible. The closest-pair property
gives \(\|r_\lambda-u^*\|_2^2\ge\|r^*-u^*\|_2^2\) for
\(0\le\lambda\le1\). Taking the right derivative at zero yields

\[
w\cdot(r-r^*)\ge0.
\tag{9.33}
\]

Whenever \(w_j>0\), (9.32) has \(u_j^*=s\); coordinates with \(w_j=0\)
contribute nothing. Consequently (9.33) implies, for every
\(r\in\mathscr R\),

\[
w\cdot r
\ge w\cdot r^*
=w\cdot u^*+\|w\|_2^2
=s\sum_{j=1}^Jw_j+\|w\|_2^2.
\tag{9.34}
\]

Normalize \(w\) to \(\nu^{(s)}_j=w_j/\sum_\ell w_\ell\). Then
\(\nu^{(s)}\in\Delta_J\), and (9.34) proves

\[
\sum_{j=1}^J\nu_j^{(s)}L(K,\theta_j)>s
\qquad\text{for every }K\in\mathscr K.
\tag{9.35}
\]

Take a sequence \(s_\ell\uparrow\alpha\). Compactness of the finite simplex
gives a convergent subsequence
\(\nu^{(s_\ell)}\to\nu\in\Delta_J\). Passing to the limit in the finite sum
in (9.35), for each \(K\), gives

\[
\sum_{j=1}^J\nu_jL(K,\theta_j)\ge\alpha
\qquad\text{for every }K\in\mathscr K.
\tag{9.36}
\]

The reverse minimax inequality is immediate because every convex average is
at most the maximum coordinate. Thus the same derivation also proves

\[
\max_{\mu\in\Delta_J}\min_{K\in\mathscr K}
\sum_{j=1}^J\mu_jL(K,\theta_j)
=\min_{K\in\mathscr K}\max_{1\le j\le J}L(K,\theta_j)
=\alpha.
\tag{9.37}
\]

Equations (9.30) and (9.36) prove (9.27). Interpreting the finite vector
\(\nu=(\nu_1,\ldots,\nu_J)\) as a law on \(\Theta\) gives support size at
most \(J\), with every support point realizable. The law depends only on the
fixed factor, \(m,\delta\), the fixed threshold witness, and the complete
private-kernel game; it does not depend on a learner chosen later. \(\square\)

### unit_005: proposition

**Proposition (All-factor finite prior family with exact quantifier order).**
\(\label{prop:step-009-all-factor-priors}\)

Statement: Under Assumption~\ref{assump:vc-one-factors},
Assumption~\ref{assump:global-privacy-range}, the accepted step_008
dependency, and Lemma~\ref{lem:step-009-strict-minimax}, fix a candidate
integer \(n\ge1\), set \(m_i:=m_{n,i}\) as in `setting.md`, and fix the
current \(\delta\). For each factor satisfying

\[
m_i\ge8,\qquad
0<\delta\le\frac{c_\delta}{m_i^2\log(m_i+1)},\qquad
m_i<a_{\mathrm L}\log_2^*d_i,
\tag{9.38}
\]

there is a finitely supported law \(\nu_i\) on realizable pairs
\((c_i,D_i)\) such that every unrestricted improper
\((0.1,\delta)\)-DP \(m_i\)-sample factor learner \(B\) satisfies

\[
\mathbb E_{(c_i,D_i)\sim\nu_i}
\mathbb E_{S\sim(D_i)_{c_i}^{m_i},\,B}
R_{D_i}(B(S),c_i)>\frac18.
\tag{9.39}
\]

For every remaining factor, there is a finitely supported law \(\nu_i\),
namely a point mass on one fixed realizable pair, and no hardness conclusion
is asserted for it. All \(\nu_i\) are fixed before every downstream learner
or simulator and may be public.

Proof / justification:

If factor \(i\) satisfies (9.38), run `unit_001`--`unit_004` with
\(C_{\mathrm f}=C_i\), \(m=m_i\), and \(d=d_i\), and call the resulting law
\(\nu_i\). For any eligible learner \(B\),
Proposition~\ref{prop:step-009-kernel-polytope} gives
\(K_B\in\mathscr K(m_i,\delta)\) and the exact identity (9.15). Therefore
Lemma~\ref{lem:step-009-strict-minimax} gives

\[
\begin{aligned}
&\mathbb E_{(c_i,D_i)\sim\nu_i}
\mathbb E_{S\sim(D_i)_{c_i}^{m_i},\,B}
R_{D_i}(B(S),c_i)\\
&\qquad
=\mathbb E_{\theta\sim\nu_i}L(K_B,\theta)
\ge\alpha_i>\frac18,
\end{aligned}
\tag{9.40}
\]

where \(\alpha_i\) is the attained finite-game value (9.29) for this factor.
This proves (9.39), including for an improper learner selected after seeing
\(\nu_i\). A learner that is \((\varepsilon,\delta)\)-DP with
\(\varepsilon\le0.1\) also satisfies (9.39), because it is
\((0.1,\delta)\)-DP.

Now suppose factor \(i\) does not satisfy all three conditions in (9.38).
By nonconstancy in Assumption~\ref{assump:vc-one-factors}, choose once and
for all \(c_i^\circ\in C_i\) and \(x_i^\circ\in X_i\). Let

\[
D_i^\circ(\{x_i^\circ\}):=1,
\qquad
\nu_i(\{(c_i^\circ,D_i^\circ)\}):=1.
\tag{9.41}
\]

This is a one-point law on a realizable factor task. Equation (9.41) merely
completes the all-factor family; no analogue of (9.39) is claimed or used on
this branch.

There are finitely many factors. Each hard prior is selected from the entire
compact private-kernel game, rather than in response to one learner, and each
baseline prior is fixed by (9.41). Hence the whole family
\((\nu_i)_{i=1}^k\), and therefore its finite product law, can be fixed
simultaneously before any downstream simulator is defined. Public revelation
does not change (9.40), whose quantifier order is

\[
\exists\nu_i\quad\forall\text{ eligible }B.
\]

This step constructs the individual finite laws only; it does not yet sample
their product or construct a hidden-factor learner. \(\square\)

## Target-Step Assembly

Fix any factor and budget satisfying the strict step_008 conditions.
Lemma~\ref{lem:step-009-finite-tasks} takes the learner-independent Shelah
witness already fixed by the accepted dependency and forms the finite set of
all uniform \(N\)-row realizable threshold tasks. Its payoff is affine and is
exactly expected distributional 0-1 risk.

Proposition~\ref{prop:step-009-kernel-polytope} imposes every
replacement-DP event inequality on all finite labeled inputs, including
nonrealizable ones. It proves compactness and gives both directions of the
object map: arbitrary hypotheses restrict to binary witness vectors without
loss on task supports, and every finite kernel extends by a rowwise
retraction to an all-input unrestricted improper factor learner. Thus the
finite learner set has exactly the privacy and output scope needed by the
accepted dependency.

Proposition~\ref{prop:step-009-finite-floor} then applies the accepted
resampling, all-input privacy, threshold-map, expected-loss, and quantitative
bridge results. If one finite kernel had loss at most \(1/8\) on all fixed
tasks, its extension would produce the precise expected empirical-loss
mechanism ruled out by step_008. Consequently every kernel has finite-task
maximum strictly greater than \(1/8\).

Lemma~\ref{lem:step-009-strict-minimax} first uses compact attainment to turn
that pointwise strict statement into a game value
\(\alpha_i>1/8\), then proves the finite minimax direction inline by
nearest-point separation from lower orthants. It produces a finite law
\(\nu_i\) before any learner, and every private kernel has
\(\nu_i\)-average loss at least \(\alpha_i>1/8\).
Proposition~\ref{prop:step-009-all-factor-priors} transfers this exact payoff
back to every eligible unrestricted learner and assigns every inactive factor
a point mass on one fixed realizable pair with no hardness claim. This is the
exact accepted step_009 claim and exports only the finite all-factor prior
family consumed by steps 012 and 013.

## Explicit Rate Audit

- Exposed variables: factor Littlestone dimension \(d_i\), factor sample
  budget \(m_i\), privacy parameter \(\delta\), fixed
  \(\varepsilon=0.1\), and expected distributional 0-1 risk.
- Hidden constants may depend on: only the accepted universal step_008
  constants \(a_{\mathrm L},c_\delta,b_0,c_0\) and the fixed natural-log,
  base-two-log-star, binary-label, and replacement-adjacency conventions.
- Hidden constants may not depend on: \(C_i,X_i,d_i,m_i,\delta\), ambient
  factor cardinality, learner, target, distribution, factor count, global
  sample size, or any later simulator.
- Fixed quantities: risk threshold \(1/8\), privacy epsilon \(0.1\), and the
  accepted even wrapper \(N=2\lceil9m_i/2\rceil\).
- Probability mode: expectation over the i.i.d. factor sample, learner
  randomness, and then the finite task prior. The prior is deterministic once
  selected. No tail event or confidence conversion is introduced.
- Horizon mode: fixed factor budget \(m_i\), candidate-wise. The construction
  makes no uniform-in-budget, asymptotic, or stopping-time claim.
- Norm mode: exact distributional 0-1 risk \(R_{D_i}\). Uniform empirical
  task laws are used only through the accepted exact equality with this risk.
- Admissibility conditions and auxiliary tolerances: exactly (9.38). There is
  no new tolerance. The finite game value \(\alpha_i>1/8\) is derived, not
  assumed, and is not exported as a public rate parameter.
- Term absorption or simplification inequalities: None beyond the accepted
  step_008 bridges reproduced in (9.22)--(9.26). Minimax causes no loss:
  (9.36)--(9.37) preserve the attained value \(\alpha_i\).
- Probability conversion: None. All identities and averaging operations are
  finite, and expected population risk remains the consumed metric.
- Contribution to any Rate Specialization Bridge: Exports a finite prior at
  the exact budget and exact \(1/8\) strict floor required by the later
  hidden-factor reduction, with no learner-dependent task selection.
- Baseline-reduction check: For one active factor the construction is the
  finite minimax form of the accepted one-factor ALMM lower mechanism. For an
  inactive factor, including \(d_i=1\), the point-mass completion makes no
  unsupported hardness assertion; the separate VC argument handles such
  factors in the final lower theorem.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing objects.** The minimal new public-facing object is the
  finitely supported prior \(\nu_i\) on realizable factor pairs. Its exported
  interface is exactly (9.39) on active factors and only realizability on
  inactive factors. The budgets \(m_i\), dimensions \(d_i\), privacy
  parameter \(\delta\), and risks are setting/sketch objects.
- **Appendix-local objects.** For each active factor,
  \(N=2\lceil9m_i/2\rceil\), \(T=\lfloor\log_2d_i\rfloor\), the fixed
  witness points and concepts, \(\mathcal Q_{N,T}\), \(D_q\), \(\Theta\),
  \(\mathcal Z_m\), \(\mathcal Y_T\), \(\mathscr K\), and the attained game
  value \(\alpha_i\) are appendix-local. They are defined from setting
  quantities and accepted dependency objects, not introduced as assumptions.
- **Proof-local objects.** The payoff \(L\), vector risk \(r_{a,q}\), labeled
  input law \(P_{a,q}^m\), restriction kernel \(K_B\), row retraction
  \(\rho\), full extensions \(h_v,B_K\), risk-vector image \(\mathscr R\),
  lower orthants \(\mathscr C_s\), closest points \(r^*,u^*\), separator
  \(w\), and approximating simplex points \(\nu^{(s)}\) are proof-local.
  Their privacy, risk, compactness, or separation properties are proved in
  named local units.
- **Constant provenance.** The constants \(a_{\mathrm L},c_\delta,b_0,c_0\)
  are inherited from the accepted step_008 proof. The finite cardinality
  \(T\binom{N+T-1}{T-1}\) follows directly from weak compositions. The game
  margin \(\alpha_i-1/8>0\) is proved by compact attainment in
  Lemma~\ref{lem:step-009-strict-minimax}; it is not a free uniform constant.
- **Assumption provenance.** Factor nonemptiness and finite Littlestone
  dimension are primitive. The threshold witness and constants are accepted
  dependency outputs. The finite task family, private-kernel polytope,
  extension learner, strict game value, separator, and prior are generated
  and proved in this step. The temporary all-task loss bound (9.20) is a local
  contradiction hypothesis discharged in `unit_003`. No generated object or
  hardness event is promoted to a primitive assumption.
- **Adjacency and arbitrary outputs.** Equation (9.11) includes every event
  and both orientations for every adjacent pair in the complete finite input
  space, including nonrealizable inputs. Equations (9.13)--(9.18) prove both
  restriction and extension. Thus compactness is not obtained by omitting
  privacy constraints, and finite output vectors do not impose properness or
  alter risk on the task supports.
- **Quantifier order and downstream surface.** The separator is chosen from
  the whole compact kernel polytope, so \(\nu_i\) is fixed before every later
  learner and can be public. Only \(\nu_i\) is exported; the finite game and
  separation bookkeeping remain local. Product sampling and hidden-factor
  simulation are deliberately deferred to their accepted later steps.
- **Boundary cases.** The active conditions force \(T\ge2\), so the finite
  witness and retraction point exist. Equality in the delta bound is retained.
  Infinite ambient \(X_i\) or \(C_i\) causes no problem because inputs and
  outputs are retracted/restricted only for the finite game. Every inactive
  regime, including small \(d_i\), receives the realizable point mass (9.41)
  and no hardness claim.
- **Diagnostic boundary.** The paired global diagnostic was not used as proof
  evidence, a cited result, an assumption source, or authority to alter the
  target. Every mathematical input above is in `setting.md`, the accepted
  sketch row, or the current accepted step_008 proof/review pair.
