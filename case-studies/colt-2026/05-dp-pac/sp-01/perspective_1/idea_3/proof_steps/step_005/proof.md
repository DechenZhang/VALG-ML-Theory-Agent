# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Show \(\mathsf B_i,W_{\rm bad}\) are measurable,
  \[
  \mathbb E W_{\rm bad}
  \le \frac{128Q_{\oplus}}{n}+e^{-16}+\frac1{4096},
  \]
  and
  \[
  R_D\le\frac1{64}+W_{\rm bad}.
  \]
  Choose a universal \(C_{\rm up}\) so
  \(n\ge\lceil C_{\rm up}Q_{\oplus}\rceil\) implies the exact
  \((1/16,1/16)\) global PAC guarantee for every \(c,D\).
- Depends on: `step_002`, `step_004`.
- Assumptions used: Primitive: `assump:canonical-product`,
  `assump:countably-coded-evaluation`, and
  `assump:global-privacy-range`; derived: the accepted factor
  kernel/utility and weighted-shortage certificates.
- Technical challenge: Conditional first-prefix iid law, measurable risk
  events, and weighted factor failures must be combined without output
  independence or union bounds.
- Intended proof tool or cited result: Conditional iid/exchangeability,
  exact risk identity, finite linearity, and Markov's inequality at
  \(3/64\).
- Output target: Global arbitrary-distribution PAC certificate and a
  universal \(C_{\rm up}\).
- Rate objective: Upper kernel/PAC objective: explicit \(n,Q_{\oplus}\),
  high-probability \(15/16\), fixed-sample exact risk; hidden constants
  universal and no balance/support/cardinality dependence.
- Binding row review status: `PENDING` in the accepted sketch;
  sketch-level acceptance is supplied by the separate accepted sketch
  review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:canonical-product}: the finitely many blocks form
    a disjoint partition of the whole domain and every target is a full
    factor tuple.
  - Assumption~\ref{assump:countably-coded-evaluation}: every \(X_i\) and
    quotient cell is measurable, \(Q_i\) is finite or countable discrete,
    and \(\kappa_i:X_i\to Q_i\) is measurable.
  - Assumption~\ref{assump:global-privacy-range}: the parameters are in the
    range on which the accepted factor kernel and utility certificate was
    proved.
- Derived invariants and interfaces supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-002-kernel}: for every factor,
    \(\bar A_i^{\rm Yan}\) is a permutation-invariant Markov kernel from
    exactly \(q_i\) quotient records to
    \((\mathcal H_i,\mathscr H_i)\), on every padded, inconsistent, or
    nonrealizable input.
  - Accepted Proposition~\ref{prop:step-002-factor-utility}: on \(q_i\)
    iid realizable records from any quotient factor distribution, the
    factor risk is at most \(1/64\) except with probability at most
    \(1/4096\), with both the sample and all factor-kernel randomness in
    that probability. No utility is asserted for padded data.
  - Accepted Proposition~\ref{prop:step-004-weighted-shortage}:
    \[
    \mathbb E W_{\rm short}
    \le \frac{128Q_{\oplus}}n+e^{-16}
    \]
    for every target and arbitrary distribution; if \(k=1\) and
    \(n\ge q_1\), then \(W_{\rm short}=0\) pointwise.
- Local conditional hypotheses: None. Conditioning on a positive-probability
  finite block-position atom below is a proof device, not an assumption
  exported to the theorem.
- Accepted dependency artifacts:
  - `perspective_1/idea_3/proof_steps/step_002/proof.md`, SHA-256
    `6a5a9661acf92353ad5ddb01a502d596bb890cd3c19906fd8b951c3d3fae142e`.
  - `perspective_1/idea_3/proof_steps/step_002/review.md`, SHA-256
    `d2e4430b129d0751ec576d5978c6d25c96c1ea69942f8b79481abe43ee927c68`,
    with status `ACCEPTED` for sketch attempt 1 and unit attempt 2.
  - `perspective_1/idea_3/proof_steps/step_004/proof.md`, SHA-256
    `fa018c266c2e8f1b689da53f8002c8cddbea40504231fdabca1f6af0939e5a84`.
  - `perspective_1/idea_3/proof_steps/step_004/review.md`, SHA-256
    `b3b558ed2b5bb7235326026cb9b0f2b5fe99d55308ecad0b6271593743cef17d`,
    with status `ACCEPTED` for sketch attempt 1 and unit attempt 3.

The routed prefixes, factor-risk events, bad-factor events, and bad mass are
generated objects. None is treated as a primitive condition. In particular,
no all-quotas-met event, positive block-mass condition, finite raw support,
or independence among bad-factor events is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:canonical-product} and \ref{assump:countably-coded-evaluation} and accepted Proposition~\ref{prop:step-002-kernel}, for every fixed \(n,c,D\), the routed prefix maps, factor-risk maps, events \(\mathsf B_i\), and \(W_{\rm bad}\) are measurable in the joint sample/learner-output experiment, and \(0\le W_{\rm bad}\le1\). | Establishes every event and expectation used later, with learner randomness explicit. |
| `unit_002` | lemma | Under the same primitive assumptions and accepted Proposition~\ref{prop:step-002-factor-utility}, for every \(i\) with \(\rho_i>0\), conditional on any positive-probability block-position vector having at least \(q_i\) occurrences of block \(i\), the first \(q_i\) routed labeled quotient records are iid from \((\bar D_i)_{\bar c_i}\), and their factor-output failure probability is at most \(1/4096\); shortage and \(\rho_i=0\) are handled separately. | Supplies the exact conditional marginal factor-utility interface without a regular conditional law on the raw space. |
| `unit_003` | proposition | Under the primitive assumptions, accepted Proposition~\ref{prop:step-004-weighted-shortage}, and Lemmas~\ref{lem:step-005-measurable-bad-mass} and \ref{lem:step-005-prefix-iid}, \(\mathbb EW_{\rm bad}\le128Q_{\oplus}/n+e^{-16}+1/4096\). | Combines shortage and factor failure by finite weighted linearity, without factor-output independence or a union bound. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:canonical-product} and \ref{assump:countably-coded-evaluation} and Lemma~\ref{lem:step-005-measurable-bad-mass}, the exact decoded risk satisfies \(R_D\le1/64+W_{\rm bad}\) pointwise for every sample and learner output. | Transfers weighted local goodness to the exact global risk, including shortage and zero-mass cases. |
| `unit_005` | proposition | Under the three primitive assumptions, the two accepted dependency interfaces, and Propositions~\ref{prop:step-005-weighted-bad-mass} and \ref{prop:step-005-risk-domination}, the universal choice \(C_{\rm up}=65536\) yields the exact \((1/16,1/16)\) PAC guarantee; when \(k=1\), the construction directly retains the stronger accepted factor guarantee with no shortage. | Proves every numerical absorption, the Markov threshold, the final probability conversion, and the one-factor baseline. |

Atomic step = no. Measurability, conditional sampling, expectation accounting,
pointwise risk comparison, and numerical high-probability closure are distinct
nontrivial obligations.

## Cited Result Applications

No external paper result is newly used in this step. The elementary
conditioning identity and Markov bound are proved directly below. The only
imported mathematical interfaces are the two accepted dependency steps.

| Result | Restated statement in current notation | Assumption discharge | Conclusion used |
| ------ | --------------------------------------- | -------------------- | --------------- |
| Accepted Proposition~\ref{prop:step-002-kernel} | Writing \(K_i(t,\cdot)=\bar A_i^{\rm Yan}(t,\cdot)\), \(K_i\) is a Markov kernel from \((Q_i\times\{0,1\})^{q_i}\) to \((\mathcal H_i,\mathscr H_i)\) on every input. | Its current proof and matching accepted review have the hashes listed above; the present factor objects and privacy range are exactly those in its statement. | Composition with the measurable routed input and construction of the joint sample/output law. |
| Accepted Proposition~\ref{prop:step-002-factor-utility} | For every \(\bar c_i\in\bar C_i\), probability measure \(\bar D_i\) on \(Q_i\), and \(T\sim((\bar D_i)_{\bar c_i})^{q_i}\), if \(\bar H_i\mid T\sim K_i(T,\cdot)\), then \(\Pr[R_{\bar D_i}(\bar H_i,\bar c_i)>1/64]\le1/4096\). | The accepted result covers arbitrary quotient distributions, includes all sample and internal randomness, and requires only that the input be unpadded iid realizable data. Lemma~\ref{lem:step-005-prefix-iid} proves precisely that premise on each consumed block-position atom. | Conditional factor-failure bound on the no-shortage branch. |
| Accepted Proposition~\ref{prop:step-004-weighted-shortage} | For the same masses, counts, and quotas, \(\mathbb EW_{\rm short}\le128Q_{\oplus}/n+e^{-16}\), with \(W_{\rm short}=0\) pointwise for \(k=1,n\ge q_1\). | Its current proof and matching accepted review have the hashes listed above. Its quantifiers are every target, arbitrary \(D\), and every fixed \(n\). | The complete padding/shortage contribution to \(\mathbb EW_{\rm bad}\) and the exact one-factor baseline. |
| Lemma~\ref{lem:step-005-measurable-bad-mass} (`unit_001`) | The routed inputs, joint output experiment, factor risks, bad events, and bad mass are measurable and \(W_{\rm bad}\in[0,1]\). | Proved from the primitive measurable quotient structure and the accepted factor kernels. | Legal conditioning, expectation, exact risk event, and Markov conversion. |
| Lemma~\ref{lem:step-005-prefix-iid} (`unit_002`) | On every positive-probability position atom with no shortage for factor \(i\), its routed prefix has the exact iid labeled quotient law and its conditional marginal failure probability is at most \(1/4096\). | Proved by an elementary product-measure calculation and the accepted factor utility interface. | Marginal failure probability in Proposition~\ref{prop:step-005-weighted-bad-mass}. |
| Proposition~\ref{prop:step-005-weighted-bad-mass} (`unit_003`) | \(\mathbb EW_{\rm bad}\le128Q_{\oplus}/n+e^{-16}+1/4096\). | Uses only the preceding two local lemmas and the accepted shortage proposition. | Numerical PAC bridge. |
| Proposition~\ref{prop:step-005-risk-domination} (`unit_004`) | Pointwise, \(R_D(h_{\bar H},c)\le1/64+W_{\rm bad}\). | Uses the exact disjoint-factor risk decomposition and the definition of \(\mathsf B_i\). | Inclusion of the global failure event in a single bad-mass threshold event. |
| Proposition~\ref{prop:step-005-pac-closure} (`unit_005`) | \(C_{\rm up}=65536\) makes the expectation strictly smaller than \(3/1024\), and direct Markov arithmetic gives global failure probability below \(1/16\). | The sample threshold and all numerical comparisons are verified in the proposition. | Exact target-step conclusion and one-factor baseline. |

## Local Derivation

### unit_001: lemma

**Lemma (Measurability of routed bad-factor mass).**
\(\label{lem:step-005-measurable-bad-mass}\)

Statement:
Under Assumptions~\ref{assump:canonical-product} and
\ref{assump:countably-coded-evaluation} and accepted
Proposition~\ref{prop:step-002-kernel}, fix any \(n\in\mathbb N\), target
\(c\in C\), and probability measure \(D\) on \((X,\Sigma)\). In the joint
experiment consisting of \(S\sim D_c^n\) and the specified routed factor
outputs, every \(J_i\), routed input \(\bar T_i(S)\), factor risk, and event
\(\mathsf B_i\) is measurable. Consequently \(W_{\rm bad}\) is measurable,
integrable, and satisfies
\[
0\le W_{\rm bad}\le1.
\tag{1}
\]

Proof / justification:
Assumption~\ref{assump:countably-coded-evaluation} gives \(X_i\in\Sigma\)
and makes \(\kappa_i:X_i\to Q_i\) measurable into the finite or countable
discrete quotient. Hence
\[
J_i(S)=\sum_{j=1}^n\mathbf1\{x_j\in X_i\}
\tag{2}
\]
is measurable on \(Z^n\).

For \(1\le r\le q_i\) and \(1\le j\le n\), let
\[
E_{i,r,j}:=
\left\{x_j\in X_i,
\ \sum_{\ell<j}\mathbf1\{x_\ell\in X_i\}=r-1\right\}.
\tag{3}
\]
These are measurable and, for fixed \(i,r\), disjoint in \(j\). On
\(E_{i,r,j}\), the \(r\)-th routed record is
\((\kappa_i(x_j),y_j)\); on the measurable complement
\(\{J_i<r\}\), it is the fixed padding record \(\bar z_i^\circ\).
Finite measurable pasting therefore makes every routed coordinate
measurable into the countable discrete space \(Q_i\times\{0,1\}\). Thus
\[
\bar T_i:Z^n\longrightarrow(Q_i\times\{0,1\})^{q_i}
\tag{4}
\]
is measurable. This establishes measurability for the ordered first prefix
itself, not merely for a symmetrized multiset.

Write
\[
K_i(t,E):=\bar A_i^{\rm Yan}(t,E),
\qquad E\in\mathscr H_i.
\tag{5}
\]
Accepted Proposition~\ref{prop:step-002-kernel} and (4) make
\(S\mapsto K_i(\bar T_i(S),E)\) measurable. The prescribed separate
factor randomizations define the finite product kernel
\[
K^\oplus(S,d\bar h)
:=\bigotimes_{i=1}^kK_i(\bar T_i(S),d\bar h_i)
\tag{6}
\]
on \((\mathcal H^\oplus,\mathscr H^\oplus)\). To check rather than assume
kernel legality, for every measurable rectangle \(E_1\times\cdots\times E_k\)
the transition probability in (6) is the finite product
\(\prod_iK_i(\bar T_i(S),E_i)\), hence is measurable in \(S\). The
measurable rectangles form a pi-system generating \(\mathscr H^\oplus\).
The collection of events for which the transition probability is
measurable is a Dynkin system: it contains the whole space, is closed under
complements, and is closed under countable disjoint unions by pointwise
summation. The pi-lambda theorem therefore puts the whole product
sigma-field in that collection. For each fixed \(S\), (6) is the ordinary
finite product probability measure. Therefore
\[
\mathbb P_{c,D,n}(dS,d\bar h)
:=D_c^n(dS)K^\oplus(S,d\bar h)
\tag{7}
\]
is a well-defined joint sample/output law. Let \(\bar H_i\) denote its
\(i\)-th output coordinate. The only property of (6) used later is the
conditional marginal identity
\[
\mathbb P_{c,D,n}(\bar H_i\in E\mid S)
=K_i(\bar T_i(S),E).
\tag{8}
\]
No later probability of an intersection of factor events is factored, so
the utility proof does not use factor-output independence.

Fix \(i\) with \(\rho_i>0\). Enumerate \(Q_i\) as
\(q_{i,1},q_{i,2},\ldots\), stopping if it is finite, and define the exact
factor-risk map
\[
r_i(\bar h_i)
:=\Pr_{q\sim\bar D_i}
   [\bar h_i(q)\ne\bar c_i(q)]
=\sum_{m}\bar D_i(\{q_{i,m}\})
  \mathbf1\{\bar h_i(q_{i,m})\ne\bar c_i(q_{i,m})\}.
\tag{9}
\]
Every finite partial sum is \(\mathscr H_i\)-measurable because coordinate
evaluations generate \(\mathscr H_i\), and (9) is its nondecreasing
pointwise limit. Hence \(r_i\) and the event
\(\{r_i(\bar H_i)>1/64\}\) are measurable. This argument uses only the
countable quotient; it does not require the raw distribution \(D_i\) to
have finite or countable support.

On the joint space (7), the setting's event is equivalently
\[
\mathsf B_i
=\{J_i<q_i\}
 \cup
 \left(\{J_i\ge q_i\}
       \cap\{r_i(\bar H_i)>1/64\}\right)
\quad(\rho_i>0),
\tag{10}
\]
and \(\mathsf B_i=\varnothing\) when \(\rho_i=0\). Thus every
\(\mathsf B_i\) is measurable. Assumption~\ref{assump:canonical-product}
and block measurability give \(\sum_i\rho_i=1\). Therefore the finite sum
\[
W_{\rm bad}=\sum_{i=1}^k\rho_i\mathbf1_{\mathsf B_i}
\tag{11}
\]
is measurable and obeys (1). In particular it is integrable over both the
iid sample and all learner randomness.

### unit_002: lemma

**Lemma (Conditional iid law of every unpadded first prefix).**
\(\label{lem:step-005-prefix-iid}\)

Statement:
Under Assumptions~\ref{assump:canonical-product} and
\ref{assump:countably-coded-evaluation} and accepted
Proposition~\ref{prop:step-002-factor-utility}, fix any \(n,c,D\) and the
joint experiment of Lemma~\ref{lem:step-005-measurable-bad-mass}. For every
factor \(i\) with \(\rho_i>0\), conditional on any positive-probability
block-position vector containing at least \(q_i\) occurrences of \(i\),
the unpadded input \(\bar T_i\) has law
\(((\bar D_i)_{\bar c_i})^{q_i}\). Moreover,
\[
\Pr\!\left[r_i(\bar H_i)>\frac1{64}
  \ \middle|\ \text{that block-position vector}\right]
\le\frac1{4096}.
\tag{12}
\]
If the vector has fewer than \(q_i\) occurrences, the prefix is padded and
no factor-utility assertion is made. If \(\rho_i=0\), neither \(D_i\) nor
\(\bar D_i\) is formed and \(\mathsf B_i=\varnothing\) by definition.

Proof / justification:
Let \(G_j\in\{1,\ldots,k\}\) be the unique block index such that
\(x_j\in X_{G_j}\), and put \(G=(G_1,\ldots,G_n)\). This is a measurable
finite-valued random vector. For
\(a=(a_1,\ldots,a_n)\in\{1,\ldots,k\}^n\), iid sampling gives
\[
\Pr(G=a)=\prod_{j=1}^n\rho_{a_j}.
\tag{13}
\]
Suppose (13) is positive. Then every \(\rho_{a_j}>0\), so each involved
conditional distribution is defined. For measurable
\(E_j\subseteq X_{a_j}\), product sampling gives
\[
\begin{aligned}
&\Pr(x_1\in E_1,\ldots,x_n\in E_n\mid G=a)\\
&\qquad=
\frac{\prod_{j=1}^nD(E_j)}{\prod_{j=1}^n\rho_{a_j}}
=\prod_{j=1}^nD_{a_j}(E_j).
\end{aligned}
\tag{14}
\]
The same identity for general measurable coordinate sets follows after
intersecting them with the prescribed blocks. Equality on measurable
rectangles identifies the full conditional product law. This is ordinary
conditioning on one atom of a finite partition; no regular conditional
probability or standard-Borel property of the raw spaces is invoked.

Fix \(i\) with \(\rho_i>0\). Define the labeled quotient law
\[
\nu_i
:=\left(q\mapsto(q,\bar c_i(q))\right)_\#\bar D_i
=:(\bar D_i)_{\bar c_i}
\quad\text{on }Q_i\times\{0,1\}.
\tag{15}
\]
For a positive-probability atom \(\{G=a\}\), (14), deterministic target
labels, and measurable quotient pushforward show that the routed records at
the positions \(j\) with \(a_j=i\) are mutually independent with common
law \(\nu_i\). If their number is at least \(q_i\), their first \(q_i\)
positions are deterministic functions of \(a\). Consequently
\[
\mathcal L(\bar T_i\mid G=a)=\nu_i^{q_i}.
\tag{16}
\]
In particular, conditioning on the positions does not condition on the
within-block observations or on learner randomness.

By the conditional marginal identity (8), after \(\bar T_i=t\) is fixed,
all factor learner randomness has law \(K_i(t,\cdot)\). Thus (16) yields
\[
\begin{aligned}
&\Pr\left(r_i(\bar H_i)>\frac1{64}\mid G=a\right)\\
&\quad=
\int K_i\!\left(
 t,\left\{\bar h_i:r_i(\bar h_i)>\frac1{64}\right\}
 \right)\nu_i^{q_i}(dt)
\le\frac1{4096},
\end{aligned}
\tag{17}
\]
where the last inequality is exactly accepted
Proposition~\ref{prop:step-002-factor-utility}. Equation (17) integrates
both the iid factor prefix and every internal random choice of the factor
kernel. Other factor samples and outputs are not conditioned to be good and
no relation among their failure events is used.

If \(a\) has fewer than \(q_i\) occurrences of \(i\), the definition of
\(\bar T_i\) inserts at least one padding record, so the accepted utility
premise is unavailable; precisely this entire branch lies in
\(\{J_i<q_i\}\subseteq\mathsf B_i\). Finally, if \(\rho_i=0\), (13) shows
that every atom containing \(i\) has probability zero. The setting avoids
an undefined conditional distribution by declaring \(\mathsf B_i\) empty,
and its weight in every risk sum is zero. This proves all parts of the
statement.

### unit_003: proposition

**Proposition (Weighted bad-mass expectation without factor unions).**
\(\label{prop:step-005-weighted-bad-mass}\)

Statement:
Under Assumptions~\ref{assump:canonical-product},
\ref{assump:countably-coded-evaluation}, and
\ref{assump:global-privacy-range}, accepted
Propositions~\ref{prop:step-002-factor-utility} and
\ref{prop:step-004-weighted-shortage}, and
Lemmas~\ref{lem:step-005-measurable-bad-mass} and
\ref{lem:step-005-prefix-iid}, for every \(n\in\mathbb N\), target
\(c\in C\), and probability measure \(D\),
\[
\mathbb E W_{\rm bad}
\le
\frac{128Q_{\oplus}}n+e^{-16}+\frac1{4096}.
\tag{18}
\]
The expectation is jointly over \(S\sim D_c^n\) and all learner
randomness. No independence among the factor outputs or bad events and no
union bound over factors is required.

Proof / justification:
For \(\rho_i>0\), let
\[
F_i:=\left\{J_i\ge q_i,
\ r_i(\bar H_i)>\frac1{64}\right\}.
\tag{19}
\]
The two events \(\{J_i<q_i\}\) and \(F_i\) are disjoint, and (10) gives
\[
\Pr(\mathsf B_i)=\Pr(J_i<q_i)+\Pr(F_i).
\tag{20}
\]
Sum (17) over the finitely many positive-probability atoms of \(G\) having
at least \(q_i\) occurrences of \(i\). This gives
\[
\begin{aligned}
\Pr(F_i)
&=\sum_{\substack{a:\Pr(G=a)>0\\
                   |\{j:a_j=i\}|\ge q_i}}
  \Pr(G=a)
  \Pr\left(r_i(\bar H_i)>\frac1{64}\mid G=a\right)\\
&\le\frac1{4096}
  \sum_{\substack{a:\Pr(G=a)>0\\
                   |\{j:a_j=i\}|\ge q_i}}
  \Pr(G=a)\\
&=\frac1{4096}\Pr(J_i\ge q_i)
\le\frac1{4096}.
\end{aligned}
\tag{21}
\]
This is a marginal calculation for one factor. It does not estimate
\(\Pr(\bigcup_iF_i)\), multiply factor probabilities, or assert that two
factor outputs are independent.

For \(\rho_i=0\), \(\mathsf B_i=\varnothing\) and hence
\(\rho_i\Pr(\mathsf B_i)=0\) exactly. Lemma~\ref{lem:step-005-measurable-bad-mass}
gives integrability, so finite linearity, (20)--(21), and
\(\sum_{i:\rho_i>0}\rho_i=1\) imply
\[
\begin{aligned}
\mathbb EW_{\rm bad}
&=\sum_{i=1}^k\rho_i\Pr(\mathsf B_i)\\
&\le
  \sum_{i=1}^k\rho_i\Pr(J_i<q_i)
  +\frac1{4096}\sum_{i:\rho_i>0}\rho_i\\
&=\mathbb EW_{\rm short}+\frac1{4096}.
\end{aligned}
\tag{22}
\]
Accepted Proposition~\ref{prop:step-004-weighted-shortage} substitutes
\[
\mathbb EW_{\rm short}
\le\frac{128Q_{\oplus}}n+e^{-16}
\tag{23}
\]
into (22), proving (18). Each shortage or factor failure is charged once by
its exact risk weight; arbitrarily many tiny-mass factors cause no
additional probability term.

### unit_004: proposition

**Proposition (Pointwise domination of exact global risk).**
\(\label{prop:step-005-risk-domination}\)

Statement:
Under Assumptions~\ref{assump:canonical-product} and
\ref{assump:countably-coded-evaluation} and
Lemma~\ref{lem:step-005-measurable-bad-mass}, for every fixed \(n,c,D\)
and every sample/output pair in the joint experiment,
\[
R_D(h_{\bar H},c)
\le\frac1{64}+W_{\rm bad}.
\tag{24}
\]
The displayed global risk is a measurable random variable. The inequality
holds on shortages and for arbitrary factor outputs; it is not conditional
on a simultaneous all-factor good event.

Proof / justification:
For each \(i\) with \(\rho_i>0\), the definition (10) has the following
pointwise consequence. If \(\mathsf B_i\) does not occur, then
\(J_i\ge q_i\) and
\(r_i(\bar H_i)\le1/64\). If \(\mathsf B_i\) occurs, the trivial binary-risk
bound is \(r_i(\bar H_i)\le1\). Thus in both cases
\[
r_i(\bar H_i)
\le
\frac1{64}\mathbf1_{\mathsf B_i^c}
+\mathbf1_{\mathsf B_i}
=\frac1{64}+\frac{63}{64}\mathbf1_{\mathsf B_i}
\le\frac1{64}+\mathbf1_{\mathsf B_i}.
\tag{25}
\]
No utility theorem is being applied pointwise in (25); local goodness is
true by the definition of the complement of the measurable bad event.

For every fixed quotient tuple \(\bar h\), disjointness of the blocks,
conditional distribution within each positive-mass block, deterministic
target labels, and quotient pushforward give the exact identity
\[
\begin{aligned}
R_D(h_{\bar h},c)
&=\sum_{i:\rho_i>0}
  D\bigl(\{x\in X_i:h_{\bar h}(x)\ne c(x)\}\bigr)\\
&=\sum_{i:\rho_i>0}\rho_i
  \Pr_{q\sim\bar D_i}
  [\bar h_i(q)\ne\bar c_i(q)]\\
&=\sum_{i:\rho_i>0}\rho_i r_i(\bar h_i).
\end{aligned}
\tag{26}
\]
This is an equality for arbitrary raw support, not a finite-support
approximation. By (9) and finite summation, (26) also shows that the global
risk is measurable as a function of \(\bar H\).

Apply (25) in (26), use
\(\sum_{i:\rho_i>0}\rho_i=1\), and recall that zero-mass factors have
zero weight and empty bad event. Then
\[
\begin{aligned}
R_D(h_{\bar H},c)
&\le
\sum_{i:\rho_i>0}\rho_i
\left(\frac1{64}+\mathbf1_{\mathsf B_i}\right)\\
&=\frac1{64}
 +\sum_{i=1}^k\rho_i\mathbf1_{\mathsf B_i}
=\frac1{64}+W_{\rm bad},
\end{aligned}
\]
which is (24). This proof never requires all factors to be good
simultaneously.

### unit_005: proposition

**Proposition (Universal numerical PAC closure and one-factor baseline).**
\(\label{prop:step-005-pac-closure}\)

Statement:
Under Assumptions~\ref{assump:canonical-product},
\ref{assump:countably-coded-evaluation}, and
\ref{assump:global-privacy-range}, accepted
Propositions~\ref{prop:step-002-factor-utility} and
\ref{prop:step-004-weighted-shortage}, and
Propositions~\ref{prop:step-005-weighted-bad-mass} and
\ref{prop:step-005-risk-domination}, set
\[
C_{\rm up}:=65536=2^{16}.
\tag{27}
\]
For every target \(c\in C\), probability measure \(D\) on
\((X,\Sigma)\), and integer
\(n\ge\lceil C_{\rm up}Q_{\oplus}\rceil\),
\[
\Pr_{S\sim D_c^n,\,\bar A_n^{\oplus,Q}}
\left[R_D(h_{\bar A_n^{\oplus,Q}(S)},c)\le\frac1{16}\right]
\ge\frac{15}{16}.
\tag{28}
\]
If \(k=1\), then at the same threshold there is no shortage and the
construction directly satisfies the stronger factor baseline
\[
\Pr\left[R_D(h_{\bar H_1},c)\le\frac1{64}\right]
\ge1-\frac1{4096}.
\tag{29}
\]

Proof / justification:
Let \(Q=Q_{\oplus}\). Since
\(n\ge\lceil C_{\rm up}Q\rceil\ge C_{\rm up}Q\), Proposition~\ref{prop:step-005-weighted-bad-mass}
gives
\[
\mathbb EW_{\rm bad}
\le\frac{128}{65536}+e^{-16}+\frac1{4096}.
\tag{30}
\]
The natural exponential satisfies \(e>2\), for example from
\(e=\sum_{m=0}^\infty1/m!>1+1\). Hence
\[
e^{-16}<2^{-16}=\frac1{65536}.
\tag{31}
\]
Putting every term in (30) over denominator \(65536\) yields the explicit
strict comparison
\[
\mathbb EW_{\rm bad}
<\frac{128+1+16}{65536}
=\frac{145}{65536}
<\frac{192}{65536}
=\frac3{1024}.
\tag{32}
\]
Thus no term has been absorbed by an unspecified large-constant argument.

For completeness, the Markov step follows from the pointwise inequality
\[
\mathbf1\left\{W_{\rm bad}>\frac3{64}\right\}
\le\frac{W_{\rm bad}}{3/64},
\tag{33}
\]
valid because \(W_{\rm bad}\ge0\). Taking expectations and using (32),
\[
\Pr\left(W_{\rm bad}>\frac3{64}\right)
\le\frac{64}{3}\mathbb EW_{\rm bad}
<\frac{64}{3}\frac3{1024}
=\frac1{16}.
\tag{34}
\]
Proposition~\ref{prop:step-005-risk-domination} gives the exact event
inclusion
\[
\left\{R_D(h_{\bar H},c)>\frac1{16}\right\}
\subseteq
\left\{W_{\rm bad}>\frac1{16}-\frac1{64}\right\}
=\left\{W_{\rm bad}>\frac3{64}\right\}.
\tag{35}
\]
The inequalities are strict at the correct boundary: if
\(W_{\rm bad}=3/64\), (24) gives risk at most \(1/16\), which is a success
under the setting's closed good event. Equations (34)--(35) therefore give
failure probability strictly below \(1/16\), and hence success probability
strictly above, in particular at least, \(15/16\). This proves (28) with
all randomness in (7) included.

It remains to preserve rather than merely dominate the one-factor
baseline. If \(k=1\), then \(X_1=X\), \(\rho_1=1\), and \(J_1=n\) for
every sample realization. Since \(C_{\rm up}\ge1\) and
\(Q_{\oplus}=q_1\), the threshold in the statement implies \(n\ge q_1\).
Thus the routed input is the first \(q_1\) records of the iid sample with
no padding. Those records are iid from the labeled quotient law even when
the raw distribution has arbitrary support. Accepted
Proposition~\ref{prop:step-002-factor-utility} applies directly, and the
exact identity (26) is now
\(R_D(h_{\bar H_1},c)=r_1(\bar H_1)\). This proves (29). The generic
shortage bound, weighted Markov relaxation, and any cross-factor event are
unnecessary in this specialization, so the construction remains the same
measurable quotient-first Yan factor learner on a quota-length iid prefix.

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-002-kernel} supplies the total
factor kernels used to define the learner outputs, and accepted
Proposition~\ref{prop:step-002-factor-utility} supplies exactly the
unpadded iid marginal guarantee. Lemma~\ref{lem:step-005-measurable-bad-mass}
first proves that ordered routing, the joint sample/output experiment,
factor risks, \(\mathsf B_i\), \(W_{\rm bad}\), and the eventual risk event
are measurable. It does not assume measurability of a data-dependent risk
event or version-space object.

Lemma~\ref{lem:step-005-prefix-iid} then conditions only on atoms of the
finite block-position vector. On every positive-probability no-shortage
atom it proves that the first \(q_i\) routed records have exactly the iid
labeled quotient law required by the accepted factor utility proposition;
it never forms \(D_i\) at \(\rho_i=0\), and it assigns the whole shortage
branch to \(\mathsf B_i\). This explicitly discharges the factor-utility
premise with both sample and learner randomness visible.

Proposition~\ref{prop:step-005-weighted-bad-mass} combines those marginal
bounds with accepted Proposition~\ref{prop:step-004-weighted-shortage} by
finite weighted linearity:
\[
\mathbb EW_{\rm bad}
\le\mathbb EW_{\rm short}+\frac1{4096}
\le\frac{128Q_{\oplus}}n+e^{-16}+\frac1{4096}.
\]
There is no probability of an all-factor event, no multiplication of
factor probabilities, and no union bound over \(i\). Proposition~\ref{prop:step-005-risk-domination}
independently proves the pointwise exact-risk comparison
\(R_D\le1/64+W_{\rm bad}\), with every padded or failed factor charged once
by its distributional mass.

Finally, Proposition~\ref{prop:step-005-pac-closure} chooses the explicit
universal value \(C_{\rm up}=65536\), proves
\(\mathbb EW_{\rm bad}<3/1024\), proves Markov's inequality at the exact
threshold \(3/64\), and obtains the required global failure probability
below \(1/16\). It separately recovers the no-shortage direct factor
utility statement when \(k=1\). These five local results and the two
accepted dependencies establish every clause of the binding `step_005`
row without changing its assumptions, scope, metric, or constants.

## Explicit Rate Audit

- Exposed variables: \(n\), \(k\), \((\rho_i,J_i,q_i,Q_i)_i\),
  \(Q_{\oplus}\), the factor risks, \(W_{\rm short}\),
  \(W_{\rm bad}\), and the fixed factor/global accuracy and confidence
  values \(1/64,1/4096,1/16\).
- Hidden constants may depend on: None in this step. The exported constant is
  explicitly \(C_{\rm up}=65536\). The accepted quota constant \(K_Y\)
  is already contained in the setting-defined \(q_i\) and is not modified.
- Hidden constants may not depend on: \(X,\Sigma,C,k,d_i,s_i,|C_i|,|Q_i|\),
  the target, \(D\), its support, \((\rho_i)_i\), \(n\), \(\varepsilon\),
  or \(\delta\).
- Fixed quantities: natural logarithm/exponential conventions,
  \(\alpha_{\rm fac}=1/64\), \(\beta_{\rm fac}=1/4096\), and the global
  target \((\alpha_0,\beta_0)=(1/16,1/16)\).
- Probability mode: (18) is expectation over the iid sample and all learner
  randomness; (28) is high probability over the same joint experiment.
  Conditional statements in Lemma~\ref{lem:step-005-prefix-iid} are only on
  positive-probability finite position atoms. No output-event independence
  is used.
- Horizon mode: one fixed sample size \(n\). There is no asymptotic,
  all-time, horizon-uniform, stopping-time, or uniform-in-candidate claim.
- Norm mode: exact distributional binary \(0\)-\(1\) risk, decomposed by
  equality in (26), and the exact risk-weighted mass \(W_{\rm bad}\).
- Admissibility conditions and auxiliary tolerances: exactly
  Assumptions~\ref{assump:canonical-product},
  \ref{assump:countably-coded-evaluation}, and
  \ref{assump:global-privacy-range}, the accepted dependency interfaces,
  and \(n\ge\lceil65536Q_{\oplus}\rceil\) for the final conversion. There
  is no balance, positive-mass, finite-support, factor-count, or auxiliary
  tolerance condition.
- Term absorption or simplification inequalities: equations (30)--(32)
  explicitly prove
  \[
  \frac{128Q_{\oplus}}n+e^{-16}+\frac1{4096}
  <\frac{145}{65536}<\frac3{1024}.
  \]
  Equations (33)--(35) explicitly prove the Markov and risk-threshold
  conversions. No term is dropped or absorbed by prose.
- Probability conversion: weighted factor failures are converted by (21)--(22)
  using marginal conditional probabilities and finite linearity. The sole
  global probability conversion is (33)--(35), giving
  \[
  \Pr(R_D>1/16)
  \le\Pr(W_{\rm bad}>3/64)
  <1/16.
  \]
- Contribution to any Rate Specialization Bridge: this proposition is the
  complete bridge from the technical expectation
  \(128Q_{\oplus}/n+e^{-16}+1/4096\) to the public fixed-confidence PAC
  clause at \(n\ge\lceil C_{\rm up}Q_{\oplus}\rceil\), with the auxiliary
  choice, threshold verification, term comparisons, and probability
  conversion all explicit.
- Baseline-reduction check: for \(k=1\), \(Q_{\oplus}=q_1\),
  \(\rho_1=1\), and \(J_1=n\) pointwise. The learner runs the accepted
  quotient-first Yan factor kernel on an unpadded quota-length iid prefix
  and directly satisfies risk \(\le1/64\) with probability
  \(\ge4095/4096\). Neither the generic shortage residual nor the Markov
  relaxation replaces this stronger arbitrary-support baseline.

## Blockers

None

## Notation And Assumption Notes

- `public-facing`: \(\mathsf B_i\) and \(W_{\rm bad}\) are setting-defined
  generated objects. The minimal exported interface is their measurability,
  the expectation bound (18), the exact risk bound (24), and the universal
  value \(C_{\rm up}=65536\) with PAC conclusion (28). The existing
  \(q_i,Q_{\oplus},\rho_i,J_i\) retain their setting meanings.
- `appendix-local`: \(r_i\) in (9) is the setting's factor-risk expression
  written as a countable evaluation sum to expose measurability. The output
  coordinates \(\bar H_i\), kernels \(K_i\), and joint kernel \(K^\oplus\)
  make learner randomness explicit. They are derived from accepted
  Proposition~\ref{prop:step-002-kernel}, not assumed output regularity.
- `proof-local`: \(E_{i,r,j}\) and the finite pasting in (3)--(4) prove
  ordered-prefix measurability. The block-index vector \(G\), its atoms
  \(a\), and the labeled quotient law \(\nu_i\) in (15) are used only to
  prove the conditional iid law. The failure event \(F_i\) in (19) is only
  bookkeeping for the disjoint decomposition of \(\mathsf B_i\). None is
  exported.
- Helper-object provenance: \(D_i\) and \(\bar D_i\) are setting-defined
  only for \(\rho_i>0\); \(\nu_i\) is their deterministic labeled
  pushforward. \(K_i\) is the accepted factor kernel evaluated at the
  setting-defined input. \(K^\oplus\) is the finite product law prescribed
  by the learner's separate random seeds. The proof uses only its factor
  marginal (8), so no theorem conclusion depends on independent bad events.
- Constant provenance: \(1/64\) and \(1/4096\) are the setting-fixed
  accepted factor interface; \(128\) and \(e^{-16}\) are inherited from
  accepted Proposition~\ref{prop:step-004-weighted-shortage}; \(3/64\) is
  exactly \(1/16-1/64\); \(3/1024=(3/64)(1/16)\) is the exact expectation
  threshold for Markov; and \(65536\) is the explicit universal choice
  proved sufficient in (30)--(32). No free bounded quantity is introduced.
- Assumption provenance: the finite full partition and mass identity are
  primitive under Assumption~\ref{assump:canonical-product}; block, quotient,
  routing, target, and evaluation measurability come from
  Assumption~\ref{assump:countably-coded-evaluation}; the factor kernels and
  their unpadded utility are accepted derived interfaces from `step_002`;
  and the weighted shortage expectation is the accepted derived interface
  from `step_004`. Every routed prefix, position atom, bad event, and risk
  event is proved measurable here before it is conditioned on or averaged.
- Zero-mass and shortage boundary: when \(\rho_i=0\), the proof never defines
  or invokes \(D_i\), \(\bar D_i\), or a conditional iid law, and
  \(\mathsf B_i=\varnothing\). When \(J_i<q_i\), padding may be arbitrary
  for utility and the full factor mass is charged to \(\mathsf B_i\). Factor
  utility is used only when Lemma~\ref{lem:step-005-prefix-iid} proves the
  exact unpadded iid premise.
- Arbitrary-support boundary: equation (14) conditions only on a finite
  block-position event and is valid on arbitrary measurable raw spaces.
  Quotient pushforward, not a finite raw support or measurable
  representative, yields (16). Equation (26) is exact for every allowed
  \(D\).
- Independence and union-bound boundary: the algorithm's product kernel is
  used to define its prescribed joint output law, but (21)--(22) consume
  only each factor's conditional marginal. The proof never factors a joint
  event, never bounds \(\Pr(\bigcup_i\mathsf B_i)\), and never uses
  independence among multinomial counts or factor failures.
- Diagnostic boundary: `global_proof.md`, `global_proof_review.md`, and
  `proof_history/` were not read or used. No diagnostic or historical
  statement is evidence, a cited result, an assumption source, or authority
  to alter the binding claim.
