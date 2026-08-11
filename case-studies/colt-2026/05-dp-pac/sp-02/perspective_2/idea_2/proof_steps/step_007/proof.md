# Proof Step

## Step Identity

- Sketch attempt: `1`
- Step ID: `step_007`
- Unit attempt: `1`

## Target Step Claim

- Intended claim: Build the iid grand-pool ideal sample, prove it is iid from a realizable mixture, prove equality with the constructed sample off overflow, and derive (OF) with exponent at least \(27/2\).
- Depends on: step_006.
- Assumptions used: Assumption~\ref{assump:minor-table}; the derived iid latent vector and \(B_\Pi\).
- Technical challenge: Same-sample coupling with a random hidden arm and an exact uniform tail constant.
- Intended proof tool or cited result: Infinite iid pool coupling used only as a probability construction; Bernstein's binomial inequality.
- Output target: Ideal realizable mixture, coupling certificate, and (OF).
- Rate objective: R2, an explicit fixed overflow-probability bound independent of all exposed variables.

More explicitly, retain the accepted step_006 notation
\[
n=\left\lceil\frac{2m}{k}\right\rceil+12,
\qquad
\mathbf E=(E_1,\ldots,E_k)\sim\Pi^k,
\qquad
J\sim\operatorname{Unif}([k]),
\tag{T7.1}
\]
where \(\mathbf E\) is independent of \(J\), and retain the accepted arm indices
\[
I_1,\ldots,I_m\stackrel{\mathrm{iid}}{\sim}\operatorname{Unif}([k]),
\qquad
R=\sum_{r=1}^m\mathbf 1\{I_r=J\}.
\tag{T7.2}
\]
This step must construct, on one probability space, an external real sample for \(B_\Pi\), its constructed learner input, and an ideal learner input
\(\bar S\) such that, conditional on
\(\mathbf E=\mathbf e=(e_1,\ldots,e_k)\),
\[
\bar S\sim \bar Q_{\mathbf e}^{\,m},
\qquad
\bar Q_{\mathbf e}
=\frac1k\sum_{j=1}^k (T_j)_\#Q_{e_j},
\tag{T7.3}
\]
where \(T_j(q,y)=(\phi_j(q),y)\), and
\(\bar Q_{\mathbf e}\) is realized exactly by
\(c_{(t_1,\ldots,t_k)}\) when \(e_j=(t_j,U_j)\).
The constructed and ideal learner inputs, their coupled outputs from \(A\),
and their hidden-arm restrictions must agree on \(\{R\le n\}\).
The only coupling defect is
\[
\mathsf O:=\{R>n\}.
\tag{T7.4}
\]
Writing \(\mu=m/k\), this step must prove
\[
p_{\rm ov}:=\Pr(\mathsf O)
\le
\exp\!\left(
-\frac{(\mu+12)^2}
{2\bigl(\mu+(\mu+12)/3\bigr)}
\right)
\le e^{-27/2}<\frac1{1024}.
\tag{OF}
\]

## Step Proof Status

`COMPLETE`

## Allowed Assumptions And Dependencies

- Accepted dependency proof:
  perspective_2/idea_2/proof_steps/step_006/proof.md,
  SHA-256
  f4d72880911b9379963068d28103e397067061f6dbdc53ad2448db8f76f99f6b.
- Accepted dependency review:
  perspective_2/idea_2/proof_steps/step_006/review.md,
  status ACCEPTED, SHA-256
  872560c50b01fbab254e716a30ec61a31391ae78634979a2af2712dcca9bb2ee.

Assumption-provenance classification:

- Primitive conditions:
  1. Assumption~\ref{assump:minor-table} supplies \(k\ge1\), the
     injections \(\phi_j:[N]\to X\), their pairwise disjoint images, and
     the concepts \(c_{\mathbf t}\) satisfying
     \(c_{\mathbf t}(\phi_j(q))=\tau_{t_j}(q)\).  This is used only for
     record transport and exact realizability of the mixture.
  2. The basic setting definitions supply \(m\ge1\),
     \(n=\lceil2m/k\rceil+12\), the finite experiments
     \(e=(t,U)\), their labeled laws \(Q_e\), and zero-one losses in
     \([0,1]\).
- Derived invariants supplied by accepted dependencies:
  1. Lemma~\ref{lem:step-006-iid-latents} supplies the exact product law
     \(\mathbf E\sim\Pi^k\), independence of \(\mathbf E\) from uniform
     \(J\), and the outer completion in which the real experiment is
     \(E_J\) and the external sample has conditional law
     \(Q_{E_J}^n\).
  2. Proposition~\ref{prop:step-006-kernel} supplies the exact
     hidden-arm kernel \(B_\Pi\), the transports
     \(T_j(q,y)=(\phi_j(q),y)\), the iid arm indices, the occupancy
     \(R\), the rule using external records \(z_1,\ldots,z_R\) once
     each on \(\{R\le n\}\), independent fresh nonhidden records, the
     call to \(A\), and the common all-zero output on \(\{R>n\}\).
- Local conditional hypotheses: None. Conditioning on realized
  \((J,\mathbf E)\), arm indices, or pool coordinates is only a proof
  disintegration and is not a theorem-facing hypothesis.

The PAC guarantee, exchangeability identity (EX), utility inequality
(UT), and hard-value conclusion (HP) are not assumed or used in this
step.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under the iid latent-vector conclusion of Lemma~\ref{lem:step-006-iid-latents}, independent per-arm infinite pools and next-unused occurrence counters produce, conditional on every \((J,\mathbf E)=(a,\mathbf e)\), an ordered sample with exact law \(\bar Q_{\mathbf e}^{\,m}\). | Constructs the grand pools and proves independence and the exact mixture marginal, without exchangeability or PAC utility. |
| unit_002 | proposition | Under Assumption~\ref{assump:minor-table} and Lemma~\ref{lem:step-007-pool-iid}, if \(e_j=(t_j,U_j)\), then every record in \(\bar Q_{\mathbf e}\) has the label assigned by \(c_{(t_1,\ldots,t_k)}\). | Proves exact minor realizability with no approximation or surrogate target. |
| unit_003 | lemma | Under Proposition~\ref{prop:step-006-kernel} and Lemma~\ref{lem:step-007-pool-iid}, choosing the external sample as the first \(n\) hidden-pool records and the nonhidden simulations by the same next-unused cells preserves the exact law of \(B_\Pi\), never reuses a pool cell, and makes the constructed and ideal learner inputs equal at all \(m\) positions on \(\{R\le n\}\). | Supplies the record-for-record coupling and exhausts \(R=0\), \(R=n\), and \(R>n\). |
| unit_004 | proposition | Under Proposition~\ref{prop:step-006-kernel} and Lemma~\ref{lem:step-007-record-coupling}, the two calls to the arbitrary randomized kernel \(A\) admit a diagonal coupling on \(\{R\le n\}\); hence the full learner outputs and hidden-arm restrictions agree there, and every common measurable loss in \([0,1]\) differs in expectation by at most \(p_{\rm ov}\). | Transfers equality from inputs to outputs and proves the bounded-loss, single-event residual. |
| unit_005 | lemma | Under the setting relation \(n=\lceil2m/k\rceil+12\), the occupancy is \(\operatorname{Bin}(m,1/k)\), all ceiling implications are explicit, and Bernstein's inequality gives (OF); the exponent has its global minimum \(27/2\) at \(\mu=6\) over all \(\mu>0\). | Proves the uniform numerical overflow certificate, including arbitrarily small and large \(\mu\). |
| unit_006 | proposition | Under the preceding results, \(k=1\) has \(R=m<n=2m+12\), zero overflow, a single realized mixture, and sure equality of ideal and constructed inputs and outputs; all occupancy and deterministic-output boundary branches obey the stated interfaces. | Certifies the one-chain baseline and consolidates the required boundary trace. |

Atomic step = no.  Product-space construction, iid identification,
realizability, law-preserving record coupling, randomized-output
coupling, bounded-loss transfer, and the uniform tail arithmetic are
independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: iid latent completion and the exact hidden-arm kernel

- Source: the accepted step_006 proof/review pair, specifically
  Lemma~\ref{lem:step-006-iid-latents},
  and Proposition~\ref{prop:step-006-kernel}.
- Restated statement in current notation: the outer prior-average
  completion has \(\mathbf E\sim\Pi^k\) independent of uniform \(J\);
  conditional on \((J,\mathbf E)\), the external real sample has law
  \(Q_{E_J}^n\).  The kernel \(B_\Pi\) independently samples uniform arm
  indices.  If the hidden occupancy is at most \(n\), its \(a\)-th
  hidden occurrence uses external record \(z_a\) and every nonhidden
  occurrence uses an independent record from its arm law.  If the
  occupancy exceeds \(n\), it calls no learner and returns the common
  \(g_0\).  Off overflow its output is the restriction
  \(\rho_J(h)(q)=h(\phi_J(q))\) of \(h\sim A(S^{\rm con})\).
- Instantiated objects: \(\mathbf E,J,(I_r),R,T_j\), the external
  sample, the constructed learner input \(S^{\rm con}\), \(A\), and
  the restricted output of \(B_\Pi\).
- Required assumptions and discharge: the accepted review verifies all
  setting assumptions, dependency hashes, measurability, and boundary
  branches for those conclusions.  This step adds no dependency
  conclusion and uses no hard-prior risk value.
- Conclusion used: the exact law that the grand-pool construction must
  couple, together with the iid common-experiment vector.
- Non-output boundary: step_006 does not construct the grand pools,
  prove the ideal input iid, prove mixture realizability, or bound the
  overflow probability.  Those are proved below.

### Standard probability construction: countable independent product

- Source or name: the countable product construction for discrete
  probability spaces.
- Restated statement in current notation: for fixed
  \(\mathbf e=(e_1,\ldots,e_k)\), the countable product of the finite
  probability spaces carrying \(Q_{e_j}\), indexed by
  \((j,a)\in[k]\times\mathbb N\), supports mutually independent
  coordinates \(W_{j,a}\) such that
  \((W_{j,a})_{a\ge1}\) is iid with law \(Q_{e_j}\) for each \(j\).
- Instantiated objects: the per-arm pools in
  Lemma~\ref{lem:step-007-pool-iid}.
- Required assumptions and discharge: each \(Q_{e_j}\) is a finite
  probability distribution by the setting; \(k\) is finite and the
  pool index set is countable.
- Conclusion used: existence of the infinite pools as an analytical
  coupling device.  Only finitely many cells are inspected in any
  \(m\)-position run.

### Standard tail result: Bernstein's inequality for Bernoulli sums

- Source or name: Bernstein's upper-tail inequality for independent
  bounded centered summands.
- Restated statement in current notation: if
  \(X_1,\ldots,X_m\) are independent Bernoulli variables,
  \(R=\sum_rX_r\), \(\mu=\mathbb ER\), and
  \(v=\sum_r\operatorname{Var}(X_r)\), then for every \(t>0\),
  \[
  \Pr\{R-\mu\ge t\}
  \le
  \exp\!\left(-\frac{t^2}{2(v+t/3)}\right).
  \tag{C7.1}
  \]
- Instantiated objects: \(X_r=\mathbf1\{I_r=J\}\), conditional on any
  fixed \(J\), with success probability \(1/k\);
  \(\mu=m/k\), \(v=\mu(1-1/k)\le\mu\), and \(t=\mu+12\).
- Required assumptions and discharge: the accepted construction makes
  the \(I_r\) iid uniform and independent of \(J\); conditional on
  \(J\), the indicators are therefore independent Bernoulli
  \(1/k\).  The threshold \(t\) is positive because \(m,k\ge1\).
- Conclusion used: the first exponential upper bound in (OF).

### Internal results used in target assembly

- Lemma~\ref{lem:step-007-pool-iid}: next-unused pool cells give the
  exact conditional product law \(\bar Q_{\mathbf e}^{\,m}\).
- Proposition~\ref{prop:step-007-realizable}: the mixture is exactly
  realized by the minor concept indexed by the latent thresholds.
- Lemma~\ref{lem:step-007-record-coupling}: the constructed and ideal
  learner inputs agree at every position precisely off the sole
  overflow branch.
- Proposition~\ref{prop:step-007-output-transfer}: arbitrary
  randomized outputs can be coupled diagonally off overflow, and any
  bounded loss pays at most one copy of \(p_{\rm ov}\).
- Lemma~\ref{lem:step-007-overflow}: the ceiling, Bernstein, and global
  minimization calculations prove (OF).
- Proposition~\ref{prop:step-007-boundaries}: the one-arm and all
  requested occupancy/output boundaries preserve the exact interface.

No paper result, exchangeability theorem, or PAC-utility result is used.

## Local Derivation

### unit_001: lemma

**Lemma (Next-unused grand pools give the exact iid mixture).**
\label{lem:step-007-pool-iid}

Statement: Under the iid latent-vector conclusion of
Lemma~\ref{lem:step-006-iid-latents}, there is a probability-space
extension on which, conditional on
\(\mathbf E=\mathbf e=(e_1,\ldots,e_k)\), one draws mutually
independent infinite pools
\[
(W_{j,s})_{s\ge1}\stackrel{\mathrm{iid}}{\sim}Q_{e_j},
\qquad j\in[k],
\tag{1}
\]
by a conditional law independent of \(J\), and independently of the
iid uniform arm indices \(I_1,\ldots,I_m\).  Thus the pools are
independent of \(J\) conditional on \(\mathbf E\).  For every
\((a,\mathbf e)\in[k]\times\mathcal E_{n,N}^k\), on the corresponding
conditional fiber (with an arbitrary version on a null fiber), define
\[
C_j(r):=\sum_{u=1}^r\mathbf1\{I_u=j\}
\tag{2}
\]
and the \(r\)-th ideal learner record is
\[
\bar Z_r
:=
T_{I_r}\!\left(W_{I_r,C_{I_r}(r)}\right),
\qquad r\in[m],
\tag{3}
\]
then
\[
\bar S:=(\bar Z_1,\ldots,\bar Z_m)
\sim \bar Q_{\mathbf e}^{\,m},
\qquad
\bar Q_{\mathbf e}
=\frac1k\sum_{j=1}^k (T_j)_\#Q_{e_j}.
\tag{4}
\]
The assertion is an exact ordered-product law.  Repeated selections of
one arm consume different pool indices and do not create dependence or
record reuse.

Proof / justification:

For fixed \(\mathbf e\), use the countable product construction
restated above to obtain (1).  Its law depends only on \(\mathbf e\),
so take its product with the conditional law of \(J\) and the finite
law of the arm-index vector.  This proves the asserted conditional
independence from \(J\) and \(\mathbf I\).  It is only an enlargement
of the probability space; every run reads at most \(m\) cells from
all pools combined.

Fix an arm-index realization
\(\mathbf i=(i_1,\ldots,i_m)\).  The pairs
\[
\bigl(i_r,C_{i_r}(r)\bigr),\qquad r\in[m],
\tag{5}
\]
are all distinct.  Indeed, if \(r<s\) and \(i_r=i_s=j\), then the
occurrence count of arm \(j\) has increased by at least one, so
\(C_j(r)<C_j(s)\); if the arms differ, the first coordinates in (5)
differ.  Thus the pool cells selected in (3) are mutually independent
conditional on \(\mathbf I=\mathbf i\), even when two selected cells
happen to take the same record value.

Let \(A_1,\ldots,A_m\) be measurable subsets of \(Z_X\), and put
\[
P_j:=(T_j)_\#Q_{e_j}.
\tag{6}
\]
Conditional independence of the distinct cells gives
\[
\Pr\{\bar Z_r\in A_r\ \forall r\mid
J=a,\mathbf E=\mathbf e,\mathbf I=\mathbf i\}
=\prod_{r=1}^m P_{i_r}(A_r).
\tag{7}
\]
Averaging over the \(k^m\) equally likely index vectors,
\[
\begin{aligned}
&\Pr\{\bar Z_r\in A_r\ \forall r\mid
J=a,\mathbf E=\mathbf e\}\\
&\quad=
\frac1{k^m}
\sum_{(i_1,\ldots,i_m)\in[k]^m}
\prod_{r=1}^mP_{i_r}(A_r)\\
&\quad=
\prod_{r=1}^m
\left(\frac1k\sum_{j=1}^kP_j(A_r)\right)
=\prod_{r=1}^m\bar Q_{\mathbf e}(A_r).
\end{aligned}
\tag{8}
\]
This proves (4), including independence of the ordered coordinates,
not merely equality of their marginals.  The calculation is valid for
every hidden designation \(a\), and its right side does not depend on
\(a\).  Averaging (8) over the conditional law of \(J\) therefore
also proves \(\bar S\mid\{\mathbf E=\mathbf e\}\sim
\bar Q_{\mathbf e}^{\,m}\), which is the exported conditional-mixture
claim.  This uses no permutation argument, exchangeability conclusion,
or PAC property.

### unit_002: proposition

**Proposition (Exact realizability of the arm mixture).**
\label{prop:step-007-realizable}

Statement: Under Assumption~\ref{assump:minor-table} and
Lemma~\ref{lem:step-007-pool-iid}, fix
\(\mathbf e=(e_1,\ldots,e_k)\) with
\(e_j=(t_j,U_j)\), and put
\(\mathbf t=(t_1,\ldots,t_k)\).  Then
\(\bar Q_{\mathbf e}\) in (4) is exactly realizable by
\(c_{\mathbf t}\in C\):
\[
\bar Q_{\mathbf e}
\bigl\{(x,y):y=c_{\mathbf t}(x)\bigr\}=1.
\tag{9}
\]
This remains exact when empirical multisets contain duplicate values.

Proof / justification:

By the definition of \(Q_{e_j}\), every one of its support records,
counted with its multiset multiplicity, has the form
\[
(q,\tau_{t_j}(q))
\quad\text{for some }q\in[N].
\tag{10}
\]
After transport by \(T_j\), this record becomes
\[
\bigl(\phi_j(q),\tau_{t_j}(q)\bigr).
\tag{11}
\]
Assumption~\ref{assump:minor-table} supplies the concept
\(c_{\mathbf t}\) and gives the pointwise identity
\[
c_{\mathbf t}(\phi_j(q))=\tau_{t_j}(q)
\quad
\text{for every }j\in[k],\ q\in[N].
\tag{12}
\]
Therefore \((T_j)_\#Q_{e_j}\) assigns probability one to labels from
\(c_{\mathbf t}\), for every \(j\).  Averaging those \(k\) laws
preserves that probability-one statement and proves (9).  Duplicate
multiset entries change masses only; they do not change the
pointwise label identity (12).  No approximate transfer, majority
label, or properization is present.

### unit_003: lemma

**Lemma (Recordwise coupling with one-use pool indices).**
\label{lem:step-007-record-coupling}

Statement: Under Proposition~\ref{prop:step-006-kernel} and
Lemma~\ref{lem:step-007-pool-iid}, define the external threshold-domain
sample by
\[
S^{\rm real}
:=(W_{J,1},\ldots,W_{J,n}).
\tag{13}
\]
Conditional on \((J,\mathbf E)\), (13) has exactly the required law
\(Q_{E_J}^n\).  Couple every nonhidden fresh draw in \(B_\Pi\) at
position \(r\), where \(I_r=j\ne J\), to
\[
W_{j,C_j(r)}.
\tag{14}
\]
This preserves the exact conditional law of the accepted
\(B_\Pi\) construction.  On
\(\mathsf O^c=\{R\le n\}\), its constructed learner input
\[
S^{\rm con}=(Z^{\rm con}_1,\ldots,Z^{\rm con}_m)
\tag{15}
\]
satisfies
\[
Z^{\rm con}_r=\bar Z_r
\quad\text{for every }r\in[m],
\qquad
S^{\rm con}=\bar S.
\tag{16}
\]
Every pool index used in a learner input is used exactly once.  The
cases \(R=0\) and \(R=n\) lie in (16), while \(R>n\) is the sole
overflow branch on which \(B_\Pi\) makes no call to \(A\).

Proof / justification:

Conditional on \((J,\mathbf E)=(a,\mathbf e)\), the first \(n\)
coordinates of pool \(a\) are iid \(Q_{e_a}\), so (13) has product law
\(Q_{e_a}^n\).  This is precisely the external-sample law in the outer
completion of Lemma~\ref{lem:step-006-iid-latents}.

For any fixed arm-index vector and hidden designation, the cells in
(14), as \(r\) ranges over nonhidden positions, have distinct
\((j,s)\) indices by (5).  They are consequently independent with the
correct respective laws \(Q_{e_j}\), and they are independent of the
hidden pool.  Thus replacing the abstract fresh nonhidden records in
the accepted construction by (14) does not alter any conditional or
unconditional law of \(B_\Pi\).

Let the hidden positions be
\[
\{r:I_r=J\}=\{h_1<\cdots<h_R\}.
\tag{17}
\]
At its \(a\)-th hidden occurrence \(h_a\),
\[
C_J(h_a)=a.
\tag{18}
\]
If \(R\le n\), the accepted construction uses external record
\(z_a=W_{J,a}\) at that occurrence.  Hence
\[
Z^{\rm con}_{h_a}
=T_J(W_{J,a})
=T_{I_{h_a}}\!\left(
W_{I_{h_a},C_{I_{h_a}}(h_a)}
\right)
=\bar Z_{h_a}.
\tag{19}
\]
At a nonhidden position \(r\), the coupling (14) gives directly
\[
Z^{\rm con}_r
=T_{I_r}(W_{I_r,C_{I_r}(r)})
=\bar Z_r.
\tag{20}
\]
Equations (19)--(20) prove the recordwise equality (16).

The injectivity of the occurrence-index map (5) proves the promised
one-use property.  In particular, the hidden learner records use
exactly the pool cells \(W_{J,1},\ldots,W_{J,R}\), once each.  The
unused external cells \(W_{J,R+1},\ldots,W_{J,n}\) are not inserted
elsewhere.  Pool cells are distinct record instances even if their
sampled values coincide, so equality of values does not amount to
reuse.

The boundary branches are now literal:

- If \(R=0\), there is no hidden occurrence, and (20) proves equality
  at every position using only nonhidden next-unused cells.
- If \(R=n\), whenever this event is feasible, (19) uses all first
  \(n\) external cells exactly once and (20) handles every nonhidden
  position.  The accepted condition is \(R\le n\), so equality at the
  boundary is included.
- If \(R>n\), the ideal sample (3) remains well-defined and continues
  with new hidden-pool cells beyond index \(n\), but the accepted
  \(B_\Pi\) procedure calls no learner and returns \(g_0\).  It does
  not recycle any of the first \(n\) records.  Thus the single event
  \(\mathsf O\), and no per-position event, is the coupling defect.

This proof uses neither the privacy certificate, exchangeability, nor
PAC utility.

### unit_004: proposition

**Proposition (Diagonal output coupling and bounded-loss transfer).**
\label{prop:step-007-output-transfer}

Statement: Under Proposition~\ref{prop:step-006-kernel} and
Lemma~\ref{lem:step-007-record-coupling}, the constructed and ideal
calls to the arbitrary randomized Markov kernel \(A\) can be coupled
so that, on \(\mathsf O^c\),
\[
H^{\rm con}=\bar H
\quad\text{as functions on }X,
\qquad
G^{\rm con}:=\rho_J(H^{\rm con})
=\bar G:=\rho_J(\bar H)
\quad\text{on }[N].
\tag{21}
\]
On \(\mathsf O\), \(G^{\rm con}=g_0\), while the ideal call
\(\bar H\sim A(\bar S)\) remains defined.  Consequently, for every
common measurable loss functional \(\ell\) taking values in
\([0,1]\), possibly depending on the shared latent variables,
\[
\left|
\mathbb E\ell(G^{\rm con})
-\mathbb E\ell(\bar G)
\right|
\le p_{\rm ov}.
\tag{22}
\]
In particular,
\[
\left|
\mathbb E L_{Q_{E_J}}(G^{\rm con})
-\mathbb E L_{Q_{E_J}}(\bar G)
\right|
\le p_{\rm ov}.
\tag{23}
\]
The same conclusions hold when \(A\) is deterministic.

Proof / justification:

On \(\mathsf O^c\), Lemma~\ref{lem:step-007-record-coupling} gives the
same ordered input \(S^{\rm con}=\bar S\) to both copies of \(A\).
Conditional on that common input and all upstream variables, draw one
\(h\) from the probability law \(A(\,\cdot\mid\bar S)\), and set both
\(H^{\rm con}\) and \(\bar H\) equal to \(h\).  This is the diagonal
coupling of a probability measure with itself; each coordinate has
the required marginal law even for an arbitrary randomized output
space.  Applying the same restriction \(\rho_J\) gives (21).

On \(\mathsf O\), retain the accepted constructed output
\(G^{\rm con}=g_0\) and sample the ideal output from \(A(\bar S)\).
No relationship is asserted on this branch.  Pointwise on the full
coupling space, any common \([0,1]\)-valued loss therefore satisfies
\[
\bigl|\ell(G^{\rm con})-\ell(\bar G)\bigr|
\le\mathbf1_{\mathsf O}.
\tag{24}
\]
Taking expectations proves (22).  Zero-one risk lies in \([0,1]\)
for every distribution and every hypothesis, so choosing
\(\ell(g)=L_{Q_{E_J}}(g)\), with the realized \(E_J\) included in the
shared context, proves (23).  Both one-sided inequalities, including
the later-needed
\[
\mathbb E L_{Q_{E_J}}(G^{\rm con})
\le
\mathbb E L_{Q_{E_J}}(\bar G)+p_{\rm ov},
\tag{25}
\]
follow from the absolute bound.

If \(A\) is deterministic, its two outputs on the common input are
already identical, so the diagonal coupling introduces no additional
randomness.  No exchangeability statement and no PAC-risk bound has
been used.

### unit_005: lemma

**Lemma (Uniform Bernstein overflow estimate).**
\label{lem:step-007-overflow}

Statement: Under the setting conditions \(m,k\ge1\), the iid uniform
arm indices in Proposition~\ref{prop:step-006-kernel}, and
\[
n=\left\lceil\frac{2m}{k}\right\rceil+12,
\tag{26}
\]
let \(R=\sum_{r=1}^m\mathbf1\{I_r=J\}\) and \(\mu=m/k>0\).
Then \(R\sim\operatorname{Bin}(m,1/k)\), all implications caused by
the ceiling in (26) are
\[
2\mu+12\le n<2\mu+13,
\qquad
\{R>n\}\subseteq\{R-\mu>\mu+12\}
\subseteq\{R-\mu\ge\mu+12\},
\tag{27}
\]
and (OF) holds.  The exponent in (OF) has the global minimum
\(27/2\) at \(\mu=6\) over the entire allowed range \(\mu>0\);
there is no omitted small-mean or large-mean regime.

Proof / justification:

Conditional on any value of \(J\), the indicators
\[
X_r:=\mathbf1\{I_r=J\},\qquad r\in[m],
\tag{28}
\]
are independent Bernoulli variables with success probability \(1/k\).
Their conditional law does not depend on the value of \(J\), so the
same binomial law holds unconditionally:
\[
R\sim\operatorname{Bin}(m,1/k),
\qquad
\mathbb ER=\mu=\frac mk,
\qquad
v:=\operatorname{Var}(R)
=\mu\left(1-\frac1k\right)\le\mu.
\tag{29}
\]

For every real \(x\), \(x\le\lceil x\rceil<x+1\).  Applying this to
\(x=2\mu\) in (26) proves the first pair of inequalities in (27).
If \(R>n\), then
\[
R-\mu>n-\mu\ge(2\mu+12)-\mu=\mu+12,
\tag{30}
\]
which proves both event inclusions in (27).  Equivalently, because
\(R,n\) are integers, \(R>n\) means \(R\ge n+1\); the weaker strict
inequality (30) is exactly the one needed for the stated constant.
In particular, equality \(R=n\) is not overflow.

Apply the restated Bernstein inequality (C7.1) with
\(t=\mu+12>0\).  Using (27) and \(v\le\mu\),
\[
\begin{aligned}
p_{\rm ov}
&=\Pr\{R>n\}\\
&\le\Pr\{R-\mu\ge\mu+12\}\\
&\le
\exp\!\left(
-\frac{(\mu+12)^2}
{2\bigl(v+(\mu+12)/3\bigr)}
\right)\\
&\le
\exp\!\left(
-\frac{(\mu+12)^2}
{2\bigl(\mu+(\mu+12)/3\bigr)}
\right).
\end{aligned}
\tag{31}
\]
The last direction is correct because replacing \(v\) by the larger
quantity \(\mu\) enlarges the positive denominator, decreases the
positive exponent magnitude, and hence gives a weaker but still valid
upper bound.

It remains to prove the uniform numerical exponent rather than assume
it.  Define for \(\mu>0\)
\[
F(\mu)
:=
\frac{(\mu+12)^2}
{2\bigl(\mu+(\mu+12)/3\bigr)}
=\frac{3(\mu+12)^2}{8(\mu+3)}.
\tag{32}
\]
Direct differentiation gives
\[
F'(\mu)
=\frac38
\frac{(\mu+12)(\mu-6)}{(\mu+3)^2}.
\tag{33}
\]
All factors other than \(\mu-6\) in (33) are positive on
\((0,\infty)\).  Thus \(F\) is strictly decreasing on \((0,6)\),
has its unique stationary point at \(6\), and is strictly increasing
on \((6,\infty)\).  Moreover,
\[
\lim_{\mu\downarrow0}F(\mu)=18,
\qquad
F(6)=\frac{3\cdot18^2}{8\cdot9}=\frac{27}{2},
\qquad
\lim_{\mu\to\infty}F(\mu)=\infty.
\tag{34}
\]
Hence \(F(\mu)\ge27/2\) globally for every allowed \(\mu>0\).  This
explicitly covers the fact that \(m/k\) can be arbitrarily close to
zero when \(k\) is large, as well as the unbounded large-\(\mu\)
regime.  Substitution into (31) proves
\[
p_{\rm ov}\le e^{-27/2}.
\tag{35}
\]
Finally, \(\log2<1\) implies
\(10\log2<10<27/2\), so
\[
e^{-27/2}<e^{-10\log2}=2^{-10}=\frac1{1024}.
\tag{36}
\]
Equations (31), (35), and (36) are exactly (OF).

### unit_006: proposition

**Proposition (One-arm and occupancy boundary certificate).**
\label{prop:step-007-boundaries}

Statement: Under Assumption~\ref{assump:minor-table}, the accepted
step_006 interface, and Lemma~\ref{lem:step-007-pool-iid} through
Lemma~\ref{lem:step-007-overflow}, the following boundary conclusions
hold without additional assumptions:

1. If \(k=1\), then \(J=I_r=1\), \(R=m\),
   \(n=2m+12>m\), \(p_{\rm ov}=0\), the mixture is the single law
   \((T_1)_\#Q_{E_1}\), and constructed and ideal inputs and outputs
   agree surely.
2. On \(R=0\), no hidden pool cell is consumed; on \(R=n\), all first
   \(n\) hidden cells are consumed once; on \(R>n\), \(B_\Pi\) returns
   \(g_0\) without calling \(A\), and the ideal sample alone continues
   to unused pool cells.
3. Arbitrarily small positive \(\mu\), \(\mu=6\), and arbitrarily
   large \(\mu\) are all covered by the same exponent lower bound.
   Deterministic learner outputs obey the same exact equality and
   bounded-loss transfer.

Proof / justification:

If \(k=1\), uniformity on the singleton set gives \(J=1\) and
\(I_r=1\) at every position, so \(R=m\).  Since \(m\) is an integer,
\[
n=\lceil2m\rceil+12=2m+12>m=R.
\tag{37}
\]
Thus overflow is impossible.  Formula (3) gives
\[
\bar S
=\bigl(T_1(W_{1,1}),\ldots,T_1(W_{1,m})\bigr),
\tag{38}
\]
and the external sample is
\((W_{1,1},\ldots,W_{1,n})\).  The accepted construction uses its
first \(m\) records once each, so (38) is also the constructed learner
input.  There are no nonhidden simulations.  Formula (4) reduces to
\(\bar Q_{(e_1)}=(T_1)_\#Q_{e_1}\), which is realized by
\(c_{(t_1)}\) by Proposition~\ref{prop:step-007-realizable}.
Proposition~\ref{prop:step-007-output-transfer} then gives sure output
equality and zero bounded-loss residual.

The three \(R\)-branches are the exhaustive cases proved in
Lemma~\ref{lem:step-007-record-coupling}; importantly, \(R=n\) belongs
to the equality event, while only \(R>n\) is charged.  The small,
minimizing, and large mean regimes follow from the complete sign and
limit analysis (33)--(34), not from an assumption that \(\mu\ge6\).
The deterministic-output case was established directly in
Proposition~\ref{prop:step-007-output-transfer}.  These checks preserve
the exact one-chain baseline rather than a stopped or
remainder-bearing surrogate.

## Target-Step Assembly

Start from the exact iid latent vector and hidden-arm kernel supplied
by the frozen, accepted step_006 dependency.  Conditional on any
latent vector, Lemma~\ref{lem:step-007-pool-iid} constructs independent
infinite pools and uses the occurrence counter of the selected arm to
take the next unused cell.  Its product calculation proves that the
ideal ordered \(m\)-sample is iid from exactly
\(\bar Q_{\mathbf e}\), rather than merely having the correct
marginals.  Proposition~\ref{prop:step-007-realizable} then invokes
the minor table pointwise to show that this exact mixture is realized
by \(c_{(t_1,\ldots,t_k)}\).

Lemma~\ref{lem:step-007-record-coupling} chooses the first \(n\)
hidden-pool cells as the external real sample and uses the same
next-unused cells for every nonhidden simulation.  This preserves the
law of \(B_\Pi\).  The occurrence identity \(C_J(h_a)=a\) proves
record-by-record equality of all \(m\) learner-input positions when
\(R\le n\), with no pool cell or hidden external record reused.  It
also proves that \(R=0\) and \(R=n\) are success branches and that
\(R>n\) is the only defect branch.

Proposition~\ref{prop:step-007-output-transfer} diagonally couples the
two copies of the arbitrary randomized learner on their common input.
Thus their full outputs and their hidden-arm restrictions are equal
off overflow.  Its pointwise indicator inequality charges at most one
on the single overflow event for any loss in \([0,1]\), yielding the
specific zero-one-risk transfer (23) without using PAC utility or
exchangeability.

Lemma~\ref{lem:step-007-overflow} proves every ceiling implication,
identifies \(R\) as binomial, applies the checked Bernstein interface,
and minimizes the exact exponent globally.  The minimum is
\(27/2\) at \(\mu=6\), with both arbitrarily small and arbitrarily
large means controlled, so (OF) follows uniformly.
Proposition~\ref{prop:step-007-boundaries} finally certifies that
\(k=1\) has zero overflow and exact one-arm equality, and consolidates
the \(R=0\), \(R=n\), \(R>n\), and deterministic-output cases.
Together these named results prove exactly the accepted step_007
claim and export only the ideal mixture, coupling certificate, and
(OF).

## Explicit Rate Audit

- Exposed variables: \(m,k,n,\mu=m/k,N\), the exact relation
  \(n=\lceil2m/k\rceil+12\), the occupancy \(R\), and
  \(p_{\rm ov}=\Pr\{R>n\}\).
- Hidden constants may depend on: none.  The numerical reserve \(12\),
  exponent \(27/2\), and comparison \(1/1024\) are displayed and
  proved.
- Hidden constants may not depend on: \(C,X,m,k,N,\varepsilon_0,
  \delta_m\), the learner \(A\), the latent experiments, the hidden
  arm, the embeddings, pool outcomes, or learner randomness.
- Fixed quantities: zero-one labels, replacement-adjacency setting,
  the iid uniform arm-selection rule, the accepted hidden-arm
  construction, and the \([0,1]\) loss range.
- Probability mode: exact conditional product law for \(\bar S\)
  given the latent vector (indeed also given \(J\)); an exact coupling
  identity on \(\{R\le n\}\); and an unconditional finite-sample
  upper-tail probability.  The bounded-loss comparison holds both
  conditionally on shared latent context and after averaging.
- Horizon mode: fixed sample with exactly \(m\) learner positions and
  \(n\) external records.  Infinite pools are a probability-space
  device, but only finitely many cells are consumed; there is no
  all-time or asymptotic conclusion.
- Norm mode: exact equality of ordered records and hypotheses, plus
  zero-one population risk or any common measurable loss in
  \([0,1]\).
- Admissibility conditions and auxiliary tolerances: only
  \(m,k\ge1\), \(n=\lceil2m/k\rceil+12\), the accepted step_006
  objects, and Assumption~\ref{assump:minor-table}.  There is no
  confidence parameter, mesh, hidden cutoff, or positive lower bound
  imposed on \(\mu\).
- Term absorption or simplification inequalities:
  \(2\mu+12\le n<2\mu+13\);
  \(\{R>n\}\subseteq\{R-\mu\ge\mu+12\}\);
  \(v\le\mu\);
  \(F'(\mu)\) has the sign of \(\mu-6\);
  \(F(\mu)\ge F(6)=27/2\); and
  \(27/2>10\log2\).
- Probability conversion: conditional Bernoulli independence gives
  \(R\sim\operatorname{Bin}(m,1/k)\); Bernstein gives (31); exact
  coupling plus bounded loss gives (22)--(25).  No union bound,
  exchangeability conversion, Markov inequality, or PAC
  high-probability conversion occurs here.
- Contribution to any Rate Specialization Bridge: this step exports
  the universal defect bound
  \(p_{\rm ov}\le e^{-27/2}<1/1024\), with no dependence hidden in a
  constant, for the later R2 utility calculation.
- Baseline-reduction check: at \(k=1\),
  \(n=2m+12\), \(R=m<n\), \(p_{\rm ov}=0\), the ideal mixture is the
  sole threshold experiment, and the constructed and ideal runs agree
  surely.  The inherited one-chain interface is exact, not weakened
  by the universal overflow bound.

## Blockers

None.

## Notation And Assumption Notes

- \(T_j(q,y)=(\phi_j(q),y)\): appendix-local; this is the exact record
  transport inherited from accepted
  Proposition~\ref{prop:step-006-kernel} and directly defined from
  Assumption~\ref{assump:minor-table}.
- \(\mathbf E=(E_1,\ldots,E_k)\), \(J\), \((I_r)\), \(R\), and
  \(B_\Pi\): public-facing accepted dependency objects.  Their exact
  laws and construction interfaces come from the frozen step_006
  proof/review pair.
- \(W_{j,s}\): appendix-local generated pool coordinates.  Their
  existence and mutual independence are supplied by the checked
  countable product construction, and their use is governed by
  Lemma~\ref{lem:step-007-pool-iid}.  Infinite length is analytical;
  only finitely many cells are read.
- \(C_j(r)\): appendix-local occurrence count, directly defined in
  (2).  It certifies that the cell chosen at position \(r\) is the
  next unused cell of arm \(j\).
- \(P_j=(T_j)_\#Q_{e_j}\): proof-local abbreviation in the product-law
  calculation.  It is not exported.
- \(\bar Q_{\mathbf e}\) and \(\bar S\): public-facing outputs of this
  step.  Lemma~\ref{lem:step-007-pool-iid} proves the exact iid law;
  Proposition~\ref{prop:step-007-realizable} proves exact
  realizability.
- \(S^{\rm real}\), \(S^{\rm con}\), \(\bar Z_r\), and
  \(Z_r^{\rm con}\): appendix-local coupling objects.  Their laws and
  equality are proved in
  Lemma~\ref{lem:step-007-record-coupling}; equality is not assumed as
  a generated invariant.
- \(H^{\rm con},\bar H,G^{\rm con},\bar G\): appendix-local output
  coupling objects.  Proposition~\ref{prop:step-007-output-transfer}
  proves their equality off overflow for arbitrary randomized or
  deterministic learner outputs.
- \(\mathsf O=\{R>n\}\) and \(p_{\rm ov}=\Pr(\mathsf O)\):
  public-facing generated event and probability.  The event is
  determined only by arm indices; the tail probability is bounded by
  Lemma~\ref{lem:step-007-overflow}.
- \(\mu=m/k\): public-facing setting-derived abbreviation used in
  (OF).  It is strictly positive but has no universal positive lower
  bound.
- \(v=\operatorname{Var}(R)\) and \(F(\mu)\): proof-local quantitative
  helpers.  The inequality \(v\le\mu\), derivative of \(F\), limits,
  and global minimum are all proved in
  Lemma~\ref{lem:step-007-overflow}.
- \(12\): directly inherited from the setting definition of \(n\).
  The constants \(27/2\) and \(1/1024\) are not assumed; they are
  derived in (34)--(36).
- Assumption provenance: the minor table is primitive; the iid latent
  vector and hidden-arm kernel are accepted dependency outputs;
  pools, ideal iid sampling, realizability, coupling success, output
  equality, bounded-loss transfer, overflow event, and tail bound are
  all generated and proved by named units in this step.
- No-reuse audit: position \(r\) uses the cell indexed by
  \((I_r,C_{I_r}(r))\), and these pairs are injective across
  positions.  Hidden external record indices \(1,\ldots,R\) are used
  once each on \(R\le n\); unused external indices are never
  recycled.  Coincident sampled values do not identify record
  instances.
- Boundary audit: \(R=0\) uses only nonhidden cells; \(R=n\) is an
  exact-coupling branch; \(R>n\) is the sole defect; \(k=1\) has
  \(p_{\rm ov}=0\); \(\mu\downarrow0\), \(\mu=6\), and
  \(\mu\to\infty\) are covered; deterministic outputs require no
  special coupling.
- Scope audit: this step neither assumes nor proves exchangeability,
  (EX), PAC utility, (UT), or the hard-prior contradiction.  It uses
  no hidden records beyond the next-unused cells and no privacy
  argument.
- Diagnostic boundary: the paired global-proof review was verified
  to have status ACCEPTED and SHA-256
  4723ec97011458d099b944756217c3dcd5e51e64ce7f7cfac4568b68592d5239.
  The optional global_proof.md was not read or used; it supplied no
  evidence, cited result, assumption, notation, or authority for this
  proof.
