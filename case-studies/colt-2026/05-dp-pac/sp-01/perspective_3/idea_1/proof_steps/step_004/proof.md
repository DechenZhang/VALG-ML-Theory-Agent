# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Construct a finite-support \(\mu_{N,M}\) over \((t,Q)\)
  such that every source-private randomized one-block kernel has
  prior-averaged expected loss greater than \(\eta=2^{-8}\); prove
  compactness, minimax, and finite support.
- Depends on: `step_003`.
- Assumptions used: The strict one-block hard regime and expected-loss
  conclusion supplied by accepted `step_003`; no hard prior or later
  generated assumption.
- Technical challenge: Treat every randomized improper learner as a finite
  kernel, retain the exact all-event approximate-DP constraints, handle the
  continuum of distributions \(Q\), and reverse the learner/instance
  quantifiers without losing the strict gap or choosing the prior after the
  learner.
- Intended proof tool or cited result: A current-notation finite-dimensional
  kernel polytope, compact bilinear minimax proved from strong separation,
  and exact Caratheodory representation of the payoff coefficient.
- Output target: Public finite hard prior.
- Rate objective: R1, preserving the exact \(N,M\), source privacy cap, and
  strict gap with no approximation slack.
- Row-local review status in the accepted sketch: `PENDING` (the acceptance
  gate is the separate accepted sketch review).

Precisely, let \(b_*,d_*>0\) and \(N_*\ge2\) be the universal constants in
the accepted dependency, and set

\[
\eta:=2^{-8},
\qquad
\bar\delta_M:=\frac{d_*}{M^2\log M}.
\]

For every pair of integers \(N\ge N_*\) and \(M\ge8\) satisfying

\[
M<b_*\log_2^*N,
\tag{H}
\]

there is a finitely supported probability law

\[
\mu_{N,M}\quad\text{on}\quad
\mathcal I_N:=[N+1]\times\Delta([N])
\]

such that every randomized unrestricted map

\[
B:([N]\times\{0,1\})^M\longrightarrow\{0,1\}^{[N]}
\]

which is \((0.1,\bar\delta_M)\)-differentially private under one-row
replacement obeys

\[
\mathbb E_{(t,Q)\sim\mu_{N,M}}
\mathbb E_{\substack{S\sim(Q^{\tau_t})^M\\g\sim B(S)}}
 R_Q(g,\tau_t)
>\eta.
\tag{HP}
\]

The quantifier order is \(\exists\mu_{N,M}\ \forall B\).  In particular,
the law may be fixed and revealed publicly before \(B\) is selected, and
(HP) still covers a learner whose code has \(\mu_{N,M}\) hardwired into it.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Setting technical assumptions: None. This step does not consume
  `assump:candidate-regime`, `assump:central-dp`, or
  `assump:distribution-free-realizable-pac`.
- Primitive conditions:
  - The one-block specialization of the basic definitions in `setting.md`:
    finite ordered domain \([N]\), threshold targets \(\tau_t\) including
    \(t=1,N+1\), labeled laws \(Q^{\tau_t}\), full improper output space
    \(\{0,1\}^{[N]}\), population 0-1 risk, exact iid sample size \(M\), and
    one-row replacement adjacency on arbitrary labeled datasets.
  - The checkable local scalar conditions \(N\ge N_*\), integer \(M\ge8\),
    and (H). They are the admissibility conditions of the accepted
    one-block result, not new theorem-facing assumptions.
- Accepted dependency step proof/review artifacts:
  - `proof_steps/step_003/proof.md`, sketch attempt 1 and unit attempt 1,
    SHA-256
    `81c92218e737c3592f4071b4706eee2b1b8b9288cb9115295d5f840b24271f31`.
  - `proof_steps/step_003/review.md`, whose `Step-Review Status` is
    `ACCEPTED` and whose reviewed hash is the same hash.
  - The exact accepted interface used below is
    Proposition~\ref{prop:step-003-expected-hardness}: under the displayed
    scalar conditions, every randomized unrestricted
    \((0.1,\bar\delta_M)\)-DP one-block learner has some fixed \((t,Q)\)
    with expected population loss strictly greater than \(\eta\).
- Derived conclusions supplied by the accepted dependency: The constants
  \(b_*,d_*,N_*\), the strict pointwise worst-instance statement just
  described, and no learner-independent prior, minimax identity, or
  finite-support conclusion.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: Membership of a kernel in the source-DP
  kernel polytope is used inside the local results. It is exactly the learner
  condition being quantified over, not an assumed generated invariant.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the primitive finite one-block definitions and the inherited source privacy cap, the arrays satisfying row-stochasticity and every exact all-event approximate-DP inequality form a nonempty compact convex polytope, and they encode exactly all randomized unrestricted source-private one-block learners. | Puts all randomized improper learners, including prior-aware code, in one finite compact convex strategy set. |
| `unit_002` | lemma | Under Lemma~\ref{lem:step-004-kernel-polytope} and accepted Proposition~\ref{prop:step-003-expected-hardness}, the exact loss is affine and continuous in the kernel, continuous (not asserted affine) in \((t,Q)\), and the compact worst-instance game has value \(v_{N,M}>\eta\). | Converts learner-wise strict hardness into a uniform strict game gap by compactness. |
| `unit_003` | lemma | For nonempty compact convex finite-dimensional strategy sets and a continuous bilinear payoff, the minimum of the maximum equals the maximum of the minimum, with both extrema attained. | Supplies the exact quantifier swap; its proof explicitly derives minimax from finite-dimensional strong separation. |
| `unit_004` | lemma | For a continuous finite-dimensional coefficient map on a compact instance space, its convex hull is compact and every coefficient in it is represented exactly by at most \(D+1\) instance coefficients. | Supplies compactness of the adversary's mixed-coefficient set and exact finite support without a net or discretization. |
| `unit_005` | proposition | Under Lemmas~\ref{lem:step-004-kernel-polytope}--\ref{lem:step-004-finite-barycenter} and accepted Proposition~\ref{prop:step-003-expected-hardness}, there exists one finite public prior satisfying (HP) for every source-private kernel. | Proves the exact target and records its public quantifier order and boundary coverage. |

Atomic step = no. Kernel encoding, payoff continuity and strict-value
upgrade, minimax, exact support reduction, and target assembly are distinct
nontrivial obligations.

## Cited Result Applications

### Accepted dependency: expected one-block hardness

- Source or name: Accepted
  Proposition~\ref{prop:step-003-expected-hardness} in
  `proof_steps/step_003/proof.md`, certified by the matching accepted review.
- Restated statement in current notation: There are universal
  \(b_*,d_*>0\) and \(N_*\ge2\) such that, for every integer
  \(N\ge N_*\), integer \(M\ge8\) with
  \(M<b_*\log_2^*N\), and every randomized unrestricted one-block map \(B\)
  that is \((0.1,d_*/(M^2\log M))\)-DP under one-row replacement, some
  \((t,Q)\in[N+1]\times\Delta([N])\) satisfies
  \[
  \mathbb E_{\substack{S\sim(Q^{\tau_t})^M\\g\sim B(S)}}
       R_Q(g,\tau_t)>2^{-8}.
  \]
- Instantiated objects: The same fixed \(N,M\), every kernel-realized map
  \(B_K\), and the same threshold/distribution instance space used below.
- Required assumptions and discharge: The three scalar conditions are (H)
  and the displayed target conditions; exact source-cap privacy follows from
  Lemma~\ref{lem:step-004-kernel-polytope}. The output space is the same full
  improper finite space.
- Conclusion used: Every kernel \(K\) has worst-instance payoff strictly
  greater than \(\eta\). No uniform pair or prior is imported.

### Standard result: finite-dimensional strong separation

- Restated statement: If \(A\subset\mathbb R^m\) is nonempty compact and
  convex, \(D\subset\mathbb R^m\) is nonempty closed and convex, and
  \(A\cap D=\varnothing\), then there are a nonzero
  \(\lambda\in\mathbb R^m\) and a scalar \(c\) such that
  \[
  \sup_{z\in D}\langle\lambda,z\rangle
  <c<
  \inf_{u\in A}\langle\lambda,u\rangle,
  \]
  after orienting the separator toward \(A\).
- Instantiated objects: In Lemma~\ref{lem:step-004-compact-minimax},
  \(A=F(X)\) is the compact convex image of a compact convex strategy set,
  and \(D=(-\infty,r]^m\) is closed and convex.
- Required assumptions and discharge: Compactness and convexity of \(F(X)\)
  follow from continuity and affinity of \(F\); disjointness follows from
  \(\max_j F_j(x)>r\) for every \(x\). The set \(D\) is nonempty, closed,
  and convex.
- Conclusion used: The separator has nonnegative coordinates, can be
  normalized to a probability vector, and therefore produces one convex
  mixture of adversary actions whose payoff exceeds \(r\) against every
  learner action.

### Standard result: Caratheodory's theorem

- Restated statement: If \(A\subset\mathbb R^D\), then every point of
  \(\operatorname{conv}(A)\) is a convex combination of at most \(D+1\)
  points of \(A\).
- Instantiated objects: \(A\) is the image of the compact instance space
  under the exact payoff-coefficient map
  \(a_{N,M}:\mathcal I_N\to\mathbb R^D\).
- Required assumptions and discharge: The coefficient space has the finite
  dimension \(D=(2N)^M2^N\). Lemma~\ref{lem:step-004-finite-barycenter}
  includes the affine-dependence elimination proof and uses continuity and
  compactness to prove that the resulting convex hull is compact.
- Conclusion used: The optimizing mixed payoff coefficient is represented
  exactly by at most \(D+1\) actual pairs \((t_j,Q_j)\), with no
  discretization error.

### Elementary finite-dimensional compactness facts

- Restated statement: A closed bounded subset of Euclidean space is compact;
  a continuous real function on a compact set attains its extrema; finite
  products and continuous images of compact sets are compact.
- Instantiated objects: The stochastic-kernel polytope, the simplex
  \(\Delta([N])\), the instance space \(\mathcal I_N\), coefficient images,
  and the extrema defining \(v_{N,M}\).
- Required assumptions and discharge: All ambient spaces below have finite
  explicitly displayed dimensions; closedness, boundedness, and continuity
  are proved in the corresponding local units.
- Conclusion used: Every maximum and minimum appearing in the game is an
  attained extremum rather than only a supremum or infimum.

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Later use in this step |
| ------ | -------------------- | -------------------- | ---------------------- |
| Lemma~\ref{lem:step-004-kernel-polytope} | All randomized unrestricted source-private learners are exactly the points of one nonempty compact convex finite polytope. | Primitive finite domains and exact all-event DP definition. | Defines the learner strategy set for the payoff and minimax arguments. |
| Lemma~\ref{lem:step-004-payoff-value} | The payoff has a continuous finite coefficient representation and the compact pure-adversary game value satisfies \(v_{N,M}>\eta\). | Kernel encoding plus accepted `step_003`. | Provides the strict value to be preserved by minimax and finite support. |
| Lemma~\ref{lem:step-004-compact-minimax} | Compact convex bilinear games admit the exact min-max/max-min equality. | Proved from the checked strong-separation statement. | Reverses the learner and mixed-coefficient quantifiers. |
| Lemma~\ref{lem:step-004-finite-barycenter} | The coefficient hull is compact and every one of its points has an exact \(D+1\)-point representation. | Compact instance space, continuous coefficient map, finite dimension. | Turns the optimizing coefficient into \(\mu_{N,M}\). |
| Proposition~\ref{prop:step-004-finite-hard-prior} | One finite public prior has average expected loss greater than \(\eta\) for every source-private randomized improper kernel. | All four preceding lemmas and the accepted dependency. | Exact target-step export. |

## Local Derivation

### unit_001: lemma

**Lemma (Exact compact polytope of source-private kernels).**
\(\label{lem:step-004-kernel-polytope}\)
Under the primitive finite one-block definitions, let \(d_*>0\), fix
integers \(N\ge2\), \(M\ge8\), and put
\(\bar\delta_M=d_*/(M^2\log M)\). Define

\[
\mathcal S_{N,M}:=([N]\times\{0,1\})^M,
\qquad
\mathcal G_N:=\{0,1\}^{[N]},
\qquad
D:=|\mathcal S_{N,M}|\,|\mathcal G_N|=(2N)^M2^N.
\]

Let \(\mathcal K_{N,M}\subset\mathbb R^D\) consist of the arrays
\(K=(K_{s,g})_{s\in\mathcal S_{N,M},g\in\mathcal G_N}\) satisfying

\[
K_{s,g}\ge0,
\qquad
\sum_{g\in\mathcal G_N}K_{s,g}=1
\quad(s\in\mathcal S_{N,M}),
\tag{6}
\]

and, for every **ordered** adjacent pair \(s\simeq s'\) and every event
\(E\subseteq\mathcal G_N\),

\[
\sum_{g\in E}K_{s,g}
\le
e^{0.1}\sum_{g\in E}K_{s',g}+\bar\delta_M.
\tag{7}
\]

Then \(\mathcal K_{N,M}\) is a nonempty compact convex polytope, and its
points are in exact bijection with the output kernels of randomized
unrestricted \((0.1,\bar\delta_M)\)-DP maps
\(B:\mathcal S_{N,M}\to\mathcal G_N\).

**Proof / justification.**
Both \(\mathcal S_{N,M}\) and \(\mathcal G_N\) are finite. Consequently,
(6) is a finite family of linear equalities and inequalities. Although the
all-event privacy family is large, it is also finite: there are finitely many
ordered adjacent pairs and exactly \(2^{|\mathcal G_N|}\) subsets of the
finite output space. Thus (7) is the **exact** all-event approximate-DP
definition expressed as finitely many closed affine halfspaces. In
particular, no invalid replacement of all-event privacy by singleton-only
constraints is made.

The product of row simplexes defined by (6) is closed and bounded in
\(\mathbb R^D\), hence compact. Intersecting it with the finitely many closed
halfspaces (7) leaves a compact set. All constraints are affine, so the
intersection is convex and is a polytope.

For nonemptiness, fix any \(g_0\in\mathcal G_N\) and set

\[
K^0_{s,g}:=\mathbf 1\{g=g_0\}
\quad\text{for every }s,g.
\]

The output distribution is identical for \(s\) and \(s'\). Hence it is
\((0,0)\)-DP and satisfies (7), including the events containing \(g_0\) and
those not containing it. Thus \(K^0\in\mathcal K_{N,M}\).

If \(B\) is any randomized map, define
\(K_{s,g}=\Pr[B(s)=g]\). Row-stochasticity is (6), and its all-event DP
inequality is exactly (7), so a source-private \(B\) gives a point of
\(\mathcal K_{N,M}\). Conversely, given \(K\in\mathcal K_{N,M}\), on input
\(s\) draw \(g\) from the finite row distribution \((K_{s,g})_g\). This
defines a randomized unrestricted map \(B_K\), and (7) proves its exact
source-cap privacy for every event. The full set \(\mathcal G_N\) includes
every improper, nonmonotone hypothesis.

Only the output law on each input matters to both privacy and the one-call
expected loss. Therefore arbitrary internal randomization is encoded without
loss. Also, if a public object is hardwired into a learner's code, the
resulting map still has one such finite kernel and belongs to
\(\mathcal K_{N,M}\) whenever it satisfies source privacy. If a map is
\((\varepsilon,\delta)\)-DP with
\(0\le\varepsilon\le0.1\) and \(0\le\delta\le\bar\delta_M\), its event
inequality is at most the right side of (7), so its kernel also belongs to
\(\mathcal K_{N,M}\). Thus the polytope includes the exact cap and every
stronger privacy pair below it. \(\square\)

### unit_002: lemma

**Lemma (Continuous payoff geometry and uniform strict game value).**
\(\label{lem:step-004-payoff-value}\)
Under Lemma~\ref{lem:step-004-kernel-polytope} and accepted
Proposition~\ref{prop:step-003-expected-hardness}, fix integers
\(N\ge N_*\), \(M\ge8\) satisfying (H). Give \([N+1]\) the discrete
topology and \(\Delta([N])\) its Euclidean simplex topology, and set
\(\mathcal I_N=[N+1]\times\Delta([N])\). Then:

1. \(\mathcal I_N\) is compact.
2. The expected one-block loss \(\ell_{N,M}(K;t,Q)\) admits a finite
   coefficient representation
   \(\ell_{N,M}(K;t,Q)=\langle K,a_{N,M}(t,Q)\rangle\). It is affine and
   continuous in \(K\), and jointly continuous in \((K,t,Q)\). For fixed
   \(K,t\), its dependence on \(Q\) is generally polynomial of degree at
   most \(M+1\), so only continuity, not affinity in \((t,Q)\), is claimed.
3. The function
   \[
   f_{N,M}(K):=\max_{(t,Q)\in\mathcal I_N}
      \ell_{N,M}(K;t,Q)
   \]
   is continuous on \(\mathcal K_{N,M}\), and the attained value
   \[
   v_{N,M}:=\min_{K\in\mathcal K_{N,M}}f_{N,M}(K)
   \tag{8}
   \]
   satisfies \(v_{N,M}>\eta\).

**Proof / justification.**
The simplex \(\Delta([N])\) is closed and bounded in \(\mathbb R^N\), and
\([N+1]\) is finite. Their product \(\mathcal I_N\) is compact. This includes
every boundary face and every point mass of the simplex.

Write an arbitrary labeled dataset as

\[
s=((x_1,y_1),\ldots,(x_M,y_M))\in\mathcal S_{N,M}.
\]

For \((t,Q)\in\mathcal I_N\) and \(g\in\mathcal G_N\), define

\[
p_{t,Q}(s)
:=\left(\prod_{j=1}^M Q(x_j)\right)
  \mathbf 1\{y_j=\tau_t(x_j)\text{ for every }j\},
\tag{9}
\]

and

\[
r_{t,Q}(g)
:=R_Q(g,\tau_t)
=\sum_{x=1}^N Q(x)\mathbf 1\{g(x)\ne\tau_t(x)\}.
\tag{10}
\]

Thus \(p_{t,Q}\) is exactly the mass function of
\((Q^{\tau_t})^M\), including zero mass on every label-inconsistent
dataset. Define the coefficient vector \(a_{N,M}(t,Q)\in\mathbb R^D\) by

\[
a_{N,M}(t,Q)_{s,g}:=p_{t,Q}(s)r_{t,Q}(g).
\tag{11}
\]

For the learner represented by \(K\), direct expansion of the sample and
output expectations gives

\[
\begin{aligned}
\ell_{N,M}(K;t,Q)
&:=\mathbb E_{\substack{S\sim(Q^{\tau_t})^M\\g\sim B_K(S)}}
       R_Q(g,\tau_t)\\
&=\sum_{s\in\mathcal S_{N,M}}p_{t,Q}(s)
  \sum_{g\in\mathcal G_N}K_{s,g}r_{t,Q}(g)\\
&=\sum_{s,g}K_{s,g}a_{N,M}(t,Q)_{s,g}
=\langle K,a_{N,M}(t,Q)\rangle.
\end{aligned}
\tag{12}
\]

For fixed \(t\), every coordinate in (11) is a polynomial in the coordinates
of \(Q\): (9) has degree \(M\) and (10) has degree one. Hence
\(a_{N,M}\) is continuous on each simplex copy and therefore on the finite
disjoint union \(\mathcal I_N\). Equation (12) is linear, hence affine and
continuous, in \(K\), and is jointly continuous in \((K,t,Q)\). The product
structure in (9) is precisely why no affine dependence on raw \(Q\) is
asserted or needed.

The compact coefficient image
\(a_{N,M}(\mathcal I_N)\) is bounded. Therefore, for any
\(K,K'\in\mathcal K_{N,M}\),

\[
\begin{aligned}
|f_{N,M}(K)-f_{N,M}(K')|
&\le
\max_{(t,Q)\in\mathcal I_N}
  |\langle K-K',a_{N,M}(t,Q)\rangle|\\
&\le \|K-K'\|_2
\max_{(t,Q)\in\mathcal I_N}\|a_{N,M}(t,Q)\|_2.
\end{aligned}
\tag{13}
\]

Thus \(f_{N,M}\) is continuous. Its inner maximum is attained because
\(\mathcal I_N\) is compact, and its minimum in (8) is attained because
\(\mathcal K_{N,M}\) is compact.

Now fix any \(K\in\mathcal K_{N,M}\). By
Lemma~\ref{lem:step-004-kernel-polytope}, \(K\) defines an arbitrary
randomized unrestricted source-private map \(B_K\). Accepted
Proposition~\ref{prop:step-003-expected-hardness} therefore supplies some
\((t,Q)\in\mathcal I_N\) such that
\(\ell_{N,M}(K;t,Q)>\eta\). Hence

\[
f_{N,M}(K)>\eta
\quad\text{for every }K\in\mathcal K_{N,M}.
\tag{14}
\]

Let \(K_*\) attain the minimum in (8). Applying (14) to this actual
minimizer, rather than taking an unattained infimum, yields

\[
v_{N,M}=f_{N,M}(K_*)>\eta.
\tag{15}
\]

This is the required compactness upgrade from learner-by-learner strict
hardness to one uniform strict game value. \(\square\)

### unit_003: lemma

**Lemma (Compact bilinear minimax via finite-dimensional separation).**
\(\label{lem:step-004-compact-minimax}\)
Let \(X\) and \(Y\) be nonempty compact convex subsets of finite-dimensional
real vector spaces, and let \(p:X\times Y\to\mathbb R\) be continuous and
affine in each argument (in particular, a restricted bilinear pairing).
Then both outer extrema below are attained and

\[
\min_{x\in X}\max_{y\in Y}p(x,y)
=
\max_{y\in Y}\min_{x\in X}p(x,y).
\tag{16}
\]

**Proof / justification.**
Continuity on the compact product implies that
\(x\mapsto\max_{y\in Y}p(x,y)\) is continuous; for example, uniform
continuity of \(p\) bounds the change of the maximum by the same uniform
modulus. Hence

\[
\alpha:=\min_{x\in X}\max_{y\in Y}p(x,y)
\]

is attained. The elementary weak minimax inequality gives

\[
\max_{y\in Y}\min_{x\in X}p(x,y)\le\alpha.
\tag{17}
\]

We prove the reverse inequality by separation. Fix any real \(r<\alpha\).
For each \(x\in X\), compactness of \(Y\) supplies some \(y_x\in Y\) with
\(p(x,y_x)>r\). Continuity in \(x\) gives a neighborhood on which this same
strict inequality holds. Compactness of \(X\) yields a finite subcover, so
there are \(y_1,\ldots,y_m\in Y\) such that

\[
\max_{1\le j\le m}p(x,y_j)>r
\quad\text{for every }x\in X.
\tag{18}
\]

Define the affine continuous map

\[
F:X\to\mathbb R^m,
\qquad
F(x)=(p(x,y_1),\ldots,p(x,y_m)),
\]

and the closed convex lower orthant

\[
\mathcal D_r:=(-\infty,r]^m.
\]

The image \(F(X)\) is compact and convex, and (18) says
\(F(X)\cap\mathcal D_r=\varnothing\). Strong separation provides a nonzero
\(\lambda\in\mathbb R^m\) oriented so that

\[
\sup_{z\in\mathcal D_r}\langle\lambda,z\rangle
<
\inf_{x\in X}\langle\lambda,F(x)\rangle.
\tag{19}
\]

Every coordinate of \(\lambda\) must be nonnegative: if
\(\lambda_j<0\), sending the \(j\)-th coordinate of \(z\in\mathcal D_r\)
to \(-\infty\) makes the left side of (19) infinite. Normalize the nonzero
nonnegative vector so that \(\sum_j\lambda_j=1\). Then the left side of
(19) is exactly \(r\), attained at \((r,\ldots,r)\), and hence

\[
\inf_{x\in X}\sum_{j=1}^m\lambda_jp(x,y_j)>r.
\tag{20}
\]

Convexity of \(Y\) puts \(y_r:=\sum_j\lambda_jy_j\) in \(Y\), while
affinity in the second argument turns (20) into

\[
\min_{x\in X}p(x,y_r)>r.
\tag{21}
\]

Choose \(r_q\uparrow\alpha\). Compactness of \(Y\) gives a convergent
subsequence \(y_{r_q}\to y_*\in Y\). For every fixed \(x\in X\), (21) and
continuity give

\[
p(x,y_*)=\lim_q p(x,y_{r_q})\ge\lim_q r_q=\alpha.
\]

Thus \(\min_xp(x,y_*)\ge\alpha\). Together with (17), this proves (16) and
shows that the right-hand maximum is attained at \(y_*\). \(\square\)

### unit_004: lemma

**Lemma (Compact coefficient hull and exact finite barycenters).**
\(\label{lem:step-004-finite-barycenter}\)
Let \(I\) be a nonempty compact space and let \(a:I\to\mathbb R^D\) be
continuous. Then

\[
\mathcal C:=\operatorname{conv}(a(I))
\]

is compact and convex. Moreover, every \(c\in\mathcal C\) has an exact
representation

\[
c=\sum_{j=1}^r\lambda_j a(i_j),
\qquad
1\le r\le D+1,
\quad
\lambda_j\ge0,
\quad
\sum_{j=1}^r\lambda_j=1,
\tag{22}
\]

with \(i_j\in I\). Consequently, for every \(K\in\mathbb R^D\),

\[
\langle K,c\rangle
=\sum_{j=1}^r\lambda_j\langle K,a(i_j)\rangle
\tag{23}
\]

exactly.

**Proof / justification.**
Convexity is immediate from the definition. For the support bound, start
from any finite convex representation
\(c=\sum_{j=1}^q\lambda_ja(i_j)\), which exists by the definition of convex
hull, and first remove every zero-weight term. Thus all remaining
\(\lambda_j>0\). If \(q>D+1\), the points
\(a(i_1),\ldots,a(i_q)\) are affinely dependent. Hence there are scalars
\(\theta_j\), not all zero, such that

\[
\sum_{j=1}^q\theta_j=0,
\qquad
\sum_{j=1}^q\theta_ja(i_j)=0.
\tag{24}
\]

After changing all signs if needed, at least one \(\theta_j>0\). Put

\[
\rho:=\min_{j:\theta_j>0}\frac{\lambda_j}{\theta_j}.
\]

Then \(\lambda'_j=\lambda_j-\rho\theta_j\) are nonnegative, sum to one,
represent the same \(c\) by (24), and at least one formerly positive
coefficient becomes zero. Removing zero coefficients and iterating gives
(22). This is the affine-dependence proof of Caratheodory's theorem.

The representation bound also proves compactness. Pad every representation
to exactly \(D+1\) terms using zero weights. Then \(\mathcal C\) is the
image of the compact set

\[
\Delta([D+1])\times I^{D+1}
\]

under the continuous map
\((\lambda,i_1,\ldots,i_{D+1})\mapsto
\sum_j\lambda_ja(i_j)\). Thus \(\mathcal C\) is compact. Equation (23)
follows from bilinearity of the Euclidean pairing and introduces no
approximation. \(\square\)

### unit_005: proposition

**Proposition (Finite public hard prior for source-private one-block kernels).**
\(\label{prop:step-004-finite-hard-prior}\)
Let \(b_*,d_*>0\) and \(N_*\ge2\) be the constants supplied by accepted
Proposition~\ref{prop:step-003-expected-hardness}. Under that proposition and
Lemmas~\ref{lem:step-004-kernel-polytope}--\ref{lem:step-004-finite-barycenter},
for every integer \(N\ge N_*\) and integer \(M\ge8\) satisfying (H), there
is a probability law \(\mu_{N,M}\) supported on at most

\[
D+1=(2N)^M2^N+1
\tag{25}
\]

pairs in \([N+1]\times\Delta([N])\) such that every randomized unrestricted
\((0.1,d_*/(M^2\log M))\)-DP one-block learner satisfies (HP). The prior is
selected independently of the learner and may be revealed to it.

**Proof / justification.**
Use the coefficient map in (11) and define

\[
\mathcal A_{N,M}:=a_{N,M}(\mathcal I_N),
\qquad
\mathcal C_{N,M}:=\operatorname{conv}(\mathcal A_{N,M}).
\]

Lemma~\ref{lem:step-004-finite-barycenter} makes
\(\mathcal C_{N,M}\) a nonempty compact convex subset of \(\mathbb R^D\).
For every fixed \(K\), linearity of the pairing gives

\[
\max_{c\in\mathcal C_{N,M}}\langle K,c\rangle
=
\max_{a\in\mathcal A_{N,M}}\langle K,a\rangle
=f_{N,M}(K).
\tag{26}
\]

Indeed, a convex combination cannot exceed the largest paired coefficient,
and \(\mathcal A_{N,M}\subseteq\mathcal C_{N,M}\) gives the reverse
inequality.

Apply Lemma~\ref{lem:step-004-compact-minimax} with

\[
X=\mathcal K_{N,M},
\qquad
Y=\mathcal C_{N,M},
\qquad
p(K,c)=\langle K,c\rangle.
\]

The first set is nonempty compact convex by
Lemma~\ref{lem:step-004-kernel-polytope}; the second is nonempty compact
convex by Lemma~\ref{lem:step-004-finite-barycenter}; and the payoff is
continuous bilinear. Thus all hypotheses of the separation-based minimax
theorem are discharged. Equations (8), (15), and (26) yield the exact
quantifier swap

\[
\begin{aligned}
v_{N,M}
&=\min_{K\in\mathcal K_{N,M}}
  \max_{c\in\mathcal C_{N,M}}\langle K,c\rangle\\
&=\max_{c\in\mathcal C_{N,M}}
  \min_{K\in\mathcal K_{N,M}}\langle K,c\rangle
>\eta.
\end{aligned}
\tag{27}
\]

Let \(c_*\in\mathcal C_{N,M}\) attain the maximum in (27). By
Lemma~\ref{lem:step-004-finite-barycenter}, there are
\(r\le D+1\), pairs \((t_j,Q_j)\in\mathcal I_N\), and nonnegative weights
\(\lambda_j\) summing to one such that

\[
c_*=\sum_{j=1}^r\lambda_j a_{N,M}(t_j,Q_j).
\tag{28}
\]

Remove zero weights and merge repeated pairs, and define the finite law

\[
\mu_{N,M}:=\sum_{j=1}^r\lambda_j\,\delta_{(t_j,Q_j)}.
\tag{29}
\]

For every \(K\in\mathcal K_{N,M}\), equations (12), (27), and (28) give

\[
\begin{aligned}
\mathbb E_{(t,Q)\sim\mu_{N,M}}\ell_{N,M}(K;t,Q)
&=\sum_{j=1}^r\lambda_j
  \langle K,a_{N,M}(t_j,Q_j)\rangle\\
&=\langle K,c_*\rangle\\
&\ge\min_{K'\in\mathcal K_{N,M}}\langle K',c_*\rangle\\
&=v_{N,M}>\eta.
\end{aligned}
\tag{30}
\]

The first equality is the exact finite-prior expectation, not an
approximation to a continuum. Lemma~\ref{lem:step-004-kernel-polytope}
identifies every source-private randomized unrestricted \(B\) with one such
\(K\), so (30) is precisely (HP).

The construction of \(\mu_{N,M}\) uses the whole fixed strategy set
\(\mathcal K_{N,M}\), not any selected learner. Once (29) is fixed and made
public, a learner whose program refers to (29) still induces some kernel
\(K\in\mathcal K_{N,M}\) if it is source-private; (30) was proved for every
such kernel after the prior was fixed. Hence prior awareness does not change
the quantifier order.

Finally, no interiority was used. The compact instance space contains
\(t=1,N+1\), every boundary distribution, and every point-mass \(Q\).
Equations (9)--(12) remain polynomial and exact when some \(Q(x)=0\).
Different thresholds that agree on the support of a point mass may give
duplicate coefficient vectors, but duplicates neither invalidate the convex
hull nor change (30). \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-004-kernel-polytope} converts the universal class of
randomized improper one-block learners into the exact nonempty compact convex
kernel polytope, retaining every all-event approximate-DP constraint.
Lemma~\ref{lem:step-004-payoff-value} then writes the exact expected risk as
a finite coefficient pairing. It uses continuity in the compact raw instance
space, not a false affine-in-\(Q\) claim, and applies accepted
Proposition~\ref{prop:step-003-expected-hardness} at the attained worst-learner
minimum to obtain \(v_{N,M}>\eta\).

Lemma~\ref{lem:step-004-compact-minimax} proves the required compact bilinear
quantifier swap from strong separation, with every compactness, convexity,
continuity, and affinity hypothesis checked in the present finite spaces.
Lemma~\ref{lem:step-004-finite-barycenter} makes the coefficient hull compact
and represents its optimizer by at most \((2N)^M2^N+1\) actual instances.
Proposition~\ref{prop:step-004-finite-hard-prior} turns that exact coefficient
identity into the finite law \(\mu_{N,M}\) and proves

\[
\exists\mu_{N,M}\ \forall B:\quad
\mathbb E_{(t,Q)\sim\mu_{N,M}}
\mathbb E_{S,B}R_Q(B(S),\tau_t)>2^{-8}.
\]

This is the exact sketch-row claim. The prior is fixed before and remains
hard for prior-aware learner code; point-mass and boundary distributions are
included; and there is no discretization, limiting argument, product
construction, or later generated assumption.

## Explicit Rate Audit

- Exposed variables: \(N,M\); inherited constants \(b_*,d_*,N_*\); the
  exact source privacy pair
  \((0.1,d_*/(M^2\log M))\); \(L_N=\log_2^*N\); the strict gap
  \(\eta=2^{-8}\); the explicit kernel-coordinate dimension
  \(D=(2N)^M2^N\); and the support bound \(D+1\).
- Hidden constants may depend on: No new hidden constant is introduced.
  The inherited \(b_*,d_*,N_*\) retain their accepted universal provenance.
- Hidden constants may not depend on: \(k,n,N,M\), privacy parameters, the
  learner, the selected support pairs, any later construction, or later
  randomness. The displayed support size is explicit rather than hidden.
- Fixed quantities: For each application, \(N,M\) and the universal source
  constants are fixed first; \(\mu_{N,M}\) is then fixed before the universal
  learner quantifier. The prior may depend on \(N,M\), as its notation states,
  but not on a learner.
- Probability mode: (HP) is an expectation over the finite prior draw, exactly
  \(M\) iid labeled examples conditional on that draw, and the learner's
  internal randomness. The existence and universal-hardness implication are
  deterministic. No simultaneous high-probability event is asserted.
- Horizon mode: Exact fixed sample size \(M\), pointwise in \(M\). There is no
  expected sample size, stopping time, asymptotic-in-\(M\), or repeated-use
  claim.
- Norm mode: Exact one-block population 0-1 risk \(R_Q(g,\tau_t)\), not
  empirical or excess risk.
- Admissibility conditions and auxiliary tolerances: Integers
  \(N\ge N_*\), \(M\ge8\), strict \(M<b_*\log_2^*N\), and exact displayed
  replacement-DP parameters. There is no auxiliary tolerance.
- Term absorption or simplification inequalities: None. The strict chain is
  exact: \(\min_K\max_i\ell=v_{N,M}=\max_c\min_K\langle K,c\rangle>\eta\).
- Probability conversion: None in this step. The accepted dependency already
  supplies expected-loss hardness.
- Contribution to any Rate Specialization Bridge: This step supplies the R1
  finite public hard-prior interface. It does not identify \(M\) with
  \(m_{n,k}\), introduce \(k,n\), or perform any public-rate specialization.
- Baseline-reduction check: The accepted unrestricted randomized improper
  one-block interface is preserved exactly. Equality at the privacy caps,
  \(M=8\), \(N=N_*\), endpoint thresholds, boundary and point-mass
  distributions, and arbitrary prior-aware code remain covered whenever (H)
  holds. No proper projection or weaker non-strict payoff replaces the source
  baseline.

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`: The sole generated interface that must be exported is the
  finite law \(\mu_{N,M}\) and Proposition~\ref{prop:step-004-finite-hard-prior}
  with its strict universal inequality. The level \(\eta=2^{-8}\) and source
  constants are inherited from the accepted dependency.
- `Appendix-local`: \(\mathcal S_{N,M}\), \(\mathcal G_N\),
  \(\mathcal K_{N,M}\), \(\mathcal I_N\), \(p_{t,Q}\), \(r_{t,Q}\),
  \(a_{N,M}\), \(\mathcal A_{N,M}\), \(\mathcal C_{N,M}\), \(D\),
  \(f_{N,M}\), and \(v_{N,M}\) organize the finite-dimensional proof and
  need not appear in the public main theorem.
- `Proof-local`: The separator proof's \(r\), \(y_1,\ldots,y_m\), \(F\),
  \(\mathcal D_r\), \(\lambda\), and approximating sequence \(r_q\), and
  the affine-dependence coefficients \(\theta_j,\rho\), occur only inside
  their local lemmas.
- Constant and bounded-quantity provenance:
  \(\bar\delta_M=d_*/(M^2\log M)\) and \(\eta=2^{-8}\) are inherited exact
  expressions; \(D=(2N)^M2^N\) is derived by counting the primitive finite
  input and output spaces; \(D+1\) is proved by
  Lemma~\ref{lem:step-004-finite-barycenter}; and the margin
  \(v_{N,M}>\eta\) is proved by
  Lemma~\ref{lem:step-004-payoff-value}. No free finite constant or hidden
  slack is introduced.
- Assumption provenance: Source privacy is the explicit local learner
  condition encoded in (7). The kernel polytope, payoff coefficient image,
  uniform value, optimizing coefficient, and hard prior are all proved in
  this step. No generated event, boundedness condition, local-validity
  premise, recurrence, stability statement, or invariant is assumed.
- Continuity and affinity discipline: The payoff is affine in the kernel
  because (12) is a finite pairing. It is continuous in \((t,Q)\) because
  each coefficient is polynomial in \(Q\) on each discrete threshold slice.
  It is not treated as affine in \(Q\); convexification occurs only after
  mapping each raw instance to its finite payoff coefficient.
- Quantifier discipline: Accepted `step_003` states
  \(\forall K\ \exists(t,Q)\). Compactness first makes its strict lower bound
  uniform at the game value; minimax then gives
  \(\exists c_*\ \forall K\); exact Caratheodory representation finally gives
  \(\exists\mu_{N,M}\ \forall K\). The prior is never chosen from a
  learner-dependent witness.
- Boundary discipline: The closed simplex, rather than only its relative
  interior, is used throughout. No likelihood ratio, division by \(Q(x)\),
  or uniqueness of a threshold representation is required.
- Diagnostic boundary: Neither `global_proof.md` nor
  `global_proof_review.md` was read or used. No later step artifact or later
  product/simulation conclusion is used as evidence or as an assumption.

## Self-Audit

### unit_001

- Exactness audit: PASS. Every output event is retained as a separate finite
  DP inequality, and ordered adjacency supplies both directions.
- Scope audit: PASS. Arbitrary randomized, improper, nonmonotone, and
  prior-aware algorithms are kernels in the same finite space.
- Boundary audit: PASS. A constant-output kernel proves nonemptiness even at
  \(M=8\) and at the exact privacy endpoints.

### unit_002

- Continuity audit: PASS. The sample probability has degree \(M\), the risk
  degree one, and their finite product is continuous on the closed simplex;
  no affine-in-\(Q\) statement is used.
- Strictness audit: PASS. The minimum is attained at \(K_*\), so applying the
  pointwise strict dependency at \(K_*\) gives \(v_{N,M}>\eta\), not merely
  \(v_{N,M}\ge\eta\).
- Dependency audit: PASS. The accepted proof hash matches its review, and
  only its exact learner-dependent expected-loss conclusion is consumed.

### unit_003

- Theorem audit: PASS. The minimax equality is proved from a fully restated
  finite-dimensional separation theorem; compactness, convexity, continuity,
  affinity, attainment, and the weak minimax direction are explicit.
- Separation-sign audit: PASS. The unbounded lower orthant forces the
  separator coordinates to be nonnegative, yielding a legal probability
  vector rather than an arbitrary signed combination.

### unit_004

- Support audit: PASS. Affine-dependence elimination gives at most \(D+1\)
  actual coefficient vectors, and the same bound proves compactness of the
  convex hull.
- Approximation audit: PASS. Equation (23) is an identity for every kernel;
  there is no finite net, limiting prior, or loss of the strict margin.

### unit_005

- Quantifier audit: PASS. The displayed order is
  \(\exists\mu_{N,M}\forall B\), and universal kernel coverage includes a
  source-private learner written after reading the public prior.
- Boundary audit: PASS. Endpoint thresholds, simplex faces, point masses, and
  nonunique on-support target representations remain in the exact compact
  instance space.
- Target fidelity: PASS. The proposition proves only the finite public
  one-block hard prior. It imports no later simulator, product, coupling,
  privacy-transfer, or fixed-instance-extraction premise.

- Overall target fidelity: PASS.
- Step Proof Status: `COMPLETE`.
- Blockers: None.
