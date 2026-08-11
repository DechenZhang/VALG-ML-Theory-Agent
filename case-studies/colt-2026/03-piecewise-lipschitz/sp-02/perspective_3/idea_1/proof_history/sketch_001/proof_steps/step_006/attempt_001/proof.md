# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every \(d\ge1\), calculate the constant-pivot and
  top-pivot velocities, prove
  \[
  \Gamma_{\rm piv}(b_d,F_d;R)
  \le d+\frac{Rd(d-1)}2,
  \]
  localize any positive-length bounded interval inside a compact \(\Theta\),
  handle zero-length intervals by the proper-affine-hyperplane null-set
  argument, verify exact equality with the monic polynomial and the
  \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff},N,A)\) tuple, and apply
  `step_004` to recover the exact Theorem 2 bound.
- Depends on: `step_001`, `step_004`.
- Assumptions used: Primitive `assump:shared-pfaffian-chain`,
  `assump:no-forced-root`, and `assump:joint-density-cap`; the general theorem
  from `step_004`.
- Technical challenge: Handle \(\lvert\theta\rvert\le1\),
  \(\lvert\theta\rvert>1\), \(d=1\), zero-length and positive-length
  bounded intervals, and the lower-dimensional density without singular
  augmentation.
- Intended proof tool or cited result: Direct monomial quotient
  differentiation, affine-hyperplane nullity, and exact specialization of
  `step_004`.
- Output target: Exact affine-monic baseline bridge.
- Rate objective: R3 requires the literal bound
  \[
  \kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)\lvert I\rvert,
  \]
  with no auxiliary threshold, probability conversion, or conservative loss.
- Row-local review status in the accepted sketch: `PENDING`.

The binding specialization is
\[
b_d(\theta)=\theta^d,
\qquad
F_d(\theta)=(1,\theta,\ldots,\theta^{d-1}),
\qquad
p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k,
\]
where the deterministic leading coefficient is outside the random vector
\(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in\mathbb R^d\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic setting quantities satisfy \(d\in\mathbb Z\), \(d\ge1\),
    \(R>0\), and \(\kappa\in(0,\infty)\).
  - `assump:shared-pfaffian-chain`: the specialized functions must be
    \(C^1\) on each auxiliary compact interval and have the stated common
    Pfaffian representation. Proposition~\ref{prop:step-006-family} verifies
    this condition directly with the absent chain \(q=0\) and \(M=0\); it is
    not inferred from a polynomial-root theorem.
  - `assump:no-forced-root`: the specialized pair must obey
    \((b_d(\theta),F_d(\theta))\ne(0,0)\). The same proposition verifies this
    pointwise from the constant feature \(1\).
  - `assump:joint-density-cap`: the random lower-coefficient vector
    \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\) has an arbitrary, possibly
    correlated, full joint Lebesgue density supported almost everywhere on
    \([-R,R]^d\) and bounded almost everywhere by \(\kappa\). There is no
    random leading coefficient and no density on \(\mathbb R^{d+1}\).
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_001` proof, SHA-256
    `2a44be9fcaa15c23fdfcde0d473d4cd3019c264628c431a082c1d90f1bcb634a`,
    paired with its `ACCEPTED` review, SHA-256
    `c935a43af6c57c18a18af36c36ce74083a6ba91edbaf75fb9c83a6c04339e489`,
    supplies compactness of the setting-defined root-feasible set \(K_R\),
    the implication that every cube-supported root lies in \(K_R\), the
    empty-\(K_R\) branch, and fixed-family finiteness of
    \(\Gamma_{\rm piv}\).
  - The accepted `step_004` proof, SHA-256
    `84d16264879bff1e5842820f8291b7981beeb279683fe7701e56135cab476a91`,
    paired with its `ACCEPTED` review, SHA-256
    `7eb2ef7d37239b4af8e7c1aafd8eb4bc1725aab06a809bc7a1115467e0dc7a1b`,
    supplies the general affine probability theorem on every compact
    \(\Theta\) and every positive-length interval \(I\subseteq\Theta\).
- Local conditional hypotheses: None. The alternatives \(d=1\) versus
  \(d\ge2\), \(\lvert\theta\rvert\le1\) versus
  \(\lvert\theta\rvert>1\), and \(\lvert I\rvert=0\) versus
  \(\lvert I\rvert>0\) are exhaustive proof cases, not additional
  theorem-facing assumptions. The compact interval used for a
  positive-length bounded \(I\) is a static localization and is not a
  generated invariant.

No independence, marginal-density cap, simple-root condition, prescribed
global pivot, random leading coefficient, auxiliary threshold, or polynomial
general-instance bound on \(\Gamma_{\rm piv}\) is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under the basic conditions \(d\ge1\), \(R>0\), and Assumption~\ref{assump:joint-density-cap} on the \(d\)-dimensional lower-coefficient law, the displayed \(b_d,F_d,p_\alpha\) satisfy \(b_d+\langle\alpha,F_d\rangle=p_\alpha\), verify Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root}, and have exactly \(q=0\), \(M=0\), \(N=d\), \(\Delta_{\rm rnd}=d-1\), \(\Delta_{\rm aff}=d\), and \(A=(2R)^d\kappa\). | Fixes the same-object, same-density-space specialization and prevents singular augmentation by the deterministic leading coefficient. |
| `unit_002` | lemma | Under Proposition~\ref{prop:step-006-family}, for \(d=1\) the sole pivot has \(V_{\rm const}=1\); for \(d\ge2\), the constant pivot on \(\lvert\theta\rvert\le1\) and top pivot on \(\lvert\theta\rvert>1\) obey the exact formulas and the pointwise bound \(\min_jV_j(\theta)\le d+Rd(d-1)/2\). | Proves the legal two-chart velocity certificate, including zero, the chart boundary, and the top-pivot singularity. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root} as verified by Proposition~\ref{prop:step-006-family}, accepted Lemma~\ref{lem:step-001-root-feasible}, and Lemma~\ref{lem:step-006-two-pivots}, every compact interval \(\Theta\) satisfies \(\Gamma_{\rm piv}(b_d,F_d;R)\le d+Rd(d-1)/2\), with a bound independent of \(\Theta\); if an interval misses \(K_R\), its cube-supported root event is empty. | Transfers the pointwise legal-pivot calculation to the setting functional and records compact-localization and root-feasible boundary behavior. |
| `unit_004` | lemma | Under Assumption~\ref{assump:joint-density-cap} and Proposition~\ref{prop:step-006-family}, every bounded interval \(I\subset\mathbb R\) with \(\lvert I\rvert=0\) has root-event probability zero: the empty case is trivial and the singleton case is a proper affine hyperplane because the constant feature equals one. | Covers exactly the interval cases excluded by the positive-length hypothesis of `step_004`, without any separate root theorem. |
| `unit_005` | proposition | Under Assumption~\ref{assump:joint-density-cap}, Proposition~\ref{prop:step-006-family}, Proposition~\ref{prop:step-006-compact-gamma}, Lemma~\ref{lem:step-006-zero-length}, and accepted Proposition~\ref{prop:step-004-density-conversion}, every bounded interval and every admissible correlated lower-coefficient law satisfy the literal target bound. | Applies only the accepted general affine theorem in the positive-length case and joins it to the direct null-set argument in the zero-length case. |

Atomic step = no. Exact object identification, pointwise pivot algebra,
transfer to \(\Gamma_{\rm piv}\), the missing zero-length case, and the final
probability specialization are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: root feasibility and the empty feasible branch

- Source or name: accepted `step_001` artifact
  `perspective_3/idea_1/proof_steps/step_001/proof.md`, with the proof and
  review hashes recorded above.
- Restated statement in current notation:
  Lemma~\ref{lem:step-001-root-feasible} states that under
  Assumption~\ref{assump:shared-pfaffian-chain}, for a compact interval
  \(\Theta\),
  \[
  K_R=\{\theta\in\Theta:\lvert b(\theta)\rvert
  \le R\lVert F(\theta)\rVert_1\}
  \]
  is compact and every root produced by a coefficient vector in
  \([-R,R]^N\) lies in \(K_R\). If \(K_R=\varnothing\), the supported-root
  event is empty and \(\Gamma_{\rm piv}=0\). The accepted step also proves
  \(\Gamma_{\rm piv}<\infty\) under
  Assumption~\ref{assump:no-forced-root}.
- Instantiated objects: \(N=d\), \(b=b_d\), \(F=F_d\), the same support
  radius \(R\), and the same compact localization \(\Theta\) used below.
- Required assumptions and discharge: Proposition~\ref{prop:step-006-family}
  verifies the specialized \(C^1\) representation and the no-forced-root
  condition. Compactness of \(\Theta\) is explicit in the application.
- Conclusion used: the exact root-feasibility implication, the empty
  feasible-set branch, and the fact that an interval disjoint from \(K_R\)
  cannot contain a supported root.

### Accepted dependency: general affine probability theorem

- Source or name: accepted `step_004` artifact
  `perspective_3/idea_1/proof_steps/step_004/proof.md`, with the proof and
  review hashes recorded above.
- Restated statement in current notation:
  Proposition~\ref{prop:step-004-density-conversion} states that under
  Assumption~\ref{assump:joint-density-cap}, for every compact interval
  \(\Theta\), every admissible full joint law
  \(\mu\in\mathcal D_{N,R,\kappa}\), and every interval
  \(I\subseteq\Theta\) with \(\lvert I\rvert>0\),
  \[
  \Pr_{\alpha\sim\mu}
  [\exists\theta\in I:b(\theta)+\langle\alpha,F(\theta)\rangle=0]
  \le
  \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)\lvert I\rvert.
  \tag{1}
  \]
  Equivalently, its constant is \(A\Gamma_{\rm piv}/(2R)\), where
  \(A=(2R)^N\kappa\). This is an ordinary-probability statement for the
  original coefficient vector and allows arbitrary coordinate correlation.
- Instantiated objects: \(N=d\), \(b=b_d\), \(F=F_d\),
  \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\), and the same bounded interval
  \(I\). The deterministic coefficient of \(\theta^d\) is part of \(b_d\),
  not part of \(\alpha\).
- Required assumptions and discharge: Proposition~\ref{prop:step-006-family}
  verifies Assumptions~\ref{assump:shared-pfaffian-chain} and
  \ref{assump:no-forced-root}; Assumption~\ref{assump:joint-density-cap} is
  imposed directly on the \(d\)-dimensional law; and
  Proposition~\ref{prop:step-006-compact-gamma} provides the needed explicit
  conditioning bound on every compact localization.
- Conclusion used: equation (1) with the literal factor \((2R)^{d-1}\).
  No separate polynomial-root theorem or monic baseline theorem is used.

### Elementary measure and compactness facts

- Source or name: Heine--Borel in \(\mathbb R\) and the scalar affine-graph
  null-set consequence of Tonelli's theorem.
- Restated statements in current notation:
  1. The closure of a bounded interval in \(\mathbb R\) is a compact
     interval. Hence every positive-length bounded interval lies in a compact
     \(\Theta\), and \(\Theta\) may be chosen to contain its closure.
  2. If \(h:\mathbb R^{d-1}\to\mathbb R\) is affine and \(d\ge2\), then its
     graph is closed and
     \[
     \lambda_d\{(x,y)\in\mathbb R\times\mathbb R^{d-1}:x=h(y)\}
     =\int_{\mathbb R^{d-1}}\lambda_1(\{h(y)\})\,dy=0.
     \tag{2}
     \]
     For \(d=1\), a proper affine hyperplane is a singleton and has
     \(\lambda_1\)-measure zero.
- Instantiated objects: the closure of the target interval \(I\), and the
  affine function
  \(h(\beta)=-\theta_0^d-\sum_{k=1}^{d-1}\beta_k\theta_0^k\) that solves the
  root equation for \(\alpha_0\) at a fixed \(\theta_0\).
- Assumption discharge: boundedness of \(I\) is part of the target. The graph
  is affine and therefore Borel. Each one-dimensional section in (2) is a
  singleton. Nonnegativity of the graph indicator permits Tonelli.
- Conclusion used: compact localization in
  Proposition~\ref{prop:step-006-monic-bound} and singleton-event nullity in
  Lemma~\ref{lem:step-006-zero-length}.

### Local result applications

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Proposition~\ref{prop:step-006-family} | Under the basic parameter conditions and the \(d\)-dimensional density assumption, the affine object equals \(p_\alpha\) identically, satisfies the two deterministic setting assumptions, and has the exact tuple and \(A\). | Supplies the exact objects, assumptions, and coefficient-space mapping to every later local result and to the accepted general theorem. |
| Lemma~\ref{lem:step-006-two-pivots} | Under Proposition~\ref{prop:step-006-family}, the sole \(d=1\) pivot has speed one, while for \(d\ge2\) the disjoint constant/top chart choice gives \(\min_jV_j\le d+Rd(d-1)/2\) at every \(\theta\). | Supplies the pointwise certificate to Proposition~\ref{prop:step-006-compact-gamma}. |
| Proposition~\ref{prop:step-006-compact-gamma} | Under the verified setting assumptions, accepted root feasibility, and Lemma~\ref{lem:step-006-two-pivots}, every compact localization has the target \(\Gamma_{\rm piv}\) bound independently of that compact interval, and intervals outside \(K_R\) are root-free for supported coefficients. | Supplies the quantitative conditioning input for the positive-length application of `step_004` and the outside-feasible-region boundary case. |
| Lemma~\ref{lem:step-006-zero-length} | Under the full \(d\)-dimensional density and Proposition~\ref{prop:step-006-family}, every zero-length interval has zero root probability. | Supplies the zero-length branch to Proposition~\ref{prop:step-006-monic-bound}. |
| Proposition~\ref{prop:step-006-monic-bound} | Under the exact specialized family, the preceding conditioning and null-set results, and accepted Proposition~\ref{prop:step-004-density-conversion}, every bounded interval satisfies the literal monic probability bound. | Supplies the final probability conclusion to target-step assembly. |

## Local Derivation

### unit_001: proposition

**Proposition (Exact lower-coefficient affine representation).**
\(\label{prop:step-006-family}\)

Statement:
Under the basic conditions \(d\in\mathbb Z\), \(d\ge1\), \(R>0\), and
\(\kappa\in(0,\infty)\), and under
Assumption~\ref{assump:joint-density-cap} for the \(d\)-dimensional law of
\(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\), define on any compact interval
\(\Theta\subset\mathbb R\)
\[
b_d(\theta)=\theta^d,
\qquad
F_d(\theta)=(1,\theta,\ldots,\theta^{d-1}).
\]
Then, for every \(\theta\in\Theta\) and every
\(\alpha\in\mathbb R^d\),
\[
b_d(\theta)+\langle\alpha,F_d(\theta)\rangle
=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
=p_\alpha(\theta).
\tag{3}
\]
This family satisfies Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root}, and its exact descriptors are
\[
q=0,
\qquad M=0,
\qquad N=d,
\qquad \Delta_{\rm rnd}=d-1,
\qquad \Delta_{\rm aff}=d,
\qquad A=(2R)^d\kappa.
\tag{4}
\]
Only the \(d\) lower coefficients are random.

Proof / justification:
The coordinate pairing in the setting is
\(F_{k+1}(\theta)=\theta^k\) for \(0\le k\le d-1\). Therefore
\[
\langle\alpha,F_d(\theta)\rangle
=\sum_{k=0}^{d-1}\alpha_k\theta^k,
\]
which proves both equalities in (3). The coefficient of \(\theta^d\) is the
fixed value one inside \(b_d\); it is not a coordinate of \(\alpha\).

All displayed functions are polynomials and hence \(C^1\) on every compact
\(\Theta\). They have a common Pfaffian representation with no chain:
take \(q=0\), so by the setting convention \(M=0\), and use the ordinary
polynomials \(Q_0(\theta)=\theta^d\) and
\(Q_{k+1}(\theta)=\theta^k\). Thus
Assumption~\ref{assump:shared-pfaffian-chain} holds. There are \(d\) random
outputs, so \(N=d\). Their degrees are \(0,1,\ldots,d-1\), giving
\(\Delta_{\rm rnd}=d-1\). Including the deterministic offset of degree
\(d\) gives \(\Delta_{\rm aff}=d\).

The first coordinate of \(F_d(\theta)\) equals one for every \(\theta\).
Consequently \(F_d(\theta)\ne0\), so
\((b_d(\theta),F_d(\theta))\ne(0,0)\) pointwise. This verifies
Assumption~\ref{assump:no-forced-root}, including at \(\theta=0\).
Finally, substituting \(N=d\) into the setting definition
\(A=(2R)^N\kappa\) gives the last identity in (4). None of these
identifications changes the law: Assumption~\ref{assump:joint-density-cap}
remains a full joint density on \(\mathbb R^d\), with arbitrary correlation.

### unit_002: lemma

**Lemma (Constant and top monomial pivot certificate).**
\(\label{lem:step-006-two-pivots}\)

Statement:
Under Proposition~\ref{prop:step-006-family}, the following conclusions hold
for every \(\theta\in\mathbb R\).

If \(d=1\), the sole feature is the constant feature and
\[
V_{\rm const}(\theta)=1.
\tag{5}
\]
If \(d\ge2\), then on \(\lvert\theta\rvert\le1\) the constant feature is a
legal pivot and
\[
V_{\rm const}(\theta)
=d\lvert\theta\rvert^{d-1}
+R\sum_{k=1}^{d-1}k\lvert\theta\rvert^{k-1}
\le d+\frac{Rd(d-1)}2,
\tag{6}
\]
whereas on \(\lvert\theta\rvert>1\) the top feature
\(\theta^{d-1}\) is a legal pivot and
\[
V_{\rm top}(\theta)
=1+R\sum_{m=1}^{d-1}\frac{m}{\lvert\theta\rvert^{m+1}}
\le1+\frac{Rd(d-1)}2
\le d+\frac{Rd(d-1)}2.
\tag{7}
\]
Consequently, for every \(d\ge1\) and every \(\theta\in\mathbb R\),
\[
\min_{1\le j\le d}V_j(\theta)
\le d+\frac{Rd(d-1)}2.
\tag{8}
\]
The regions used in (6)--(7) are disjoint, their common boundary is assigned
only to the constant pivot, and the top pivot is never used near its zero.

Proof / justification:
First suppose \(d=1\). Then \(b_1(\theta)=\theta\) and
\(F_1(\theta)=1\). There are no nonpivot features, so the setting definition
of pivot variation gives
\[
V_{\rm const}(\theta)
=\left\lvert\left(\frac{\theta}{1}\right)'\right\rvert=1.
\]
This proves (5), including \(\theta=0\), and its right-hand side equals
\(d+Rd(d-1)/2=1\).

Now suppose \(d\ge2\). The constant feature is nonzero on all of
\(\mathbb R\). Pivoting on it gives the exact ratios
\[
\frac{b_d(\theta)}1=\theta^d,
\qquad
\frac{\theta^k}{1}=\theta^k
\quad(1\le k\le d-1).
\]
Direct differentiation therefore yields the equality in (6). When
\(\lvert\theta\rvert\le1\),
\[
d\lvert\theta\rvert^{d-1}\le d,
\qquad
k\lvert\theta\rvert^{k-1}\le k
\quad(1\le k\le d-1),
\]
where the \(k=1\) derivative is exactly one also at \(\theta=0\). Hence
\[
V_{\rm const}(\theta)
\le d+R\sum_{k=1}^{d-1}k
=d+\frac{Rd(d-1)}2.
\tag{9}
\]

For \(\lvert\theta\rvert>1\), the top feature
\(\theta^{d-1}\) is nonzero. The offset ratio is
\[
\frac{\theta^d}{\theta^{d-1}}=\theta,
\]
whose derivative has magnitude one. For each other feature
\(\theta^k\), \(0\le k\le d-2\), set
\(m=d-1-k\). Then \(1\le m\le d-1\) and
\[
\frac{\theta^k}{\theta^{d-1}}=\theta^{-m},
\qquad
\left\lvert(\theta^{-m})'\right\rvert
=\frac{m}{\lvert\theta\rvert^{m+1}}.
\]
Reindexing the feature sum proves the equality in (7). Since
\(\lvert\theta\rvert>1\), every denominator in that sum is at least one, so
\[
V_{\rm top}(\theta)
\le1+R\sum_{m=1}^{d-1}m
=1+\frac{Rd(d-1)}2
\le d+\frac{Rd(d-1)}2,
\tag{10}
\]
where the last inequality uses \(d\ge2\).

At \(\lvert\theta\rvert=1\), (9) applies and the top region does not. At
\(\theta=0\), only the everywhere-nonzero constant pivot is used. Thus the
singularity of the quotient by \(\theta^{d-1}\) at zero never enters the
argument. The two conditions \(\lvert\theta\rvert\le1\) and
\(\lvert\theta\rvert>1\) form a disjoint exhaustive partition, so no point
or length is counted twice. On each region, the minimum over all legal
pivots is at most the displayed chosen-pivot value. Combining (5), (9), and
(10) proves (8).

### unit_003: proposition

**Proposition (Compact-independent monic conditioning bound).**
\(\label{prop:step-006-compact-gamma}\)

Statement:
Under Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root} as verified by
Proposition~\ref{prop:step-006-family}, accepted
Lemma~\ref{lem:step-001-root-feasible}, and
Lemma~\ref{lem:step-006-two-pivots}, let \(\Theta\subset\mathbb R\) be any
compact interval and form \(K_R\) and \(\Gamma_{\rm piv}(b_d,F_d;R)\) from
the restrictions of \(b_d,F_d\) to \(\Theta\). Then
\[
\Gamma_{\rm piv}(b_d,F_d;R)
\le d+\frac{Rd(d-1)}2.
\tag{11}
\]
The right-hand side is independent of \(\Theta\). Moreover, for every
interval \(J\subseteq\Theta\) with \(J\cap K_R=\varnothing\), no
\(\alpha\in[-R,R]^d\) has a root of \(p_\alpha\) in \(J\).

Proof / justification:
Accepted Lemma~\ref{lem:step-001-root-feasible} applies because
Proposition~\ref{prop:step-006-family} verifies its regularity assumption. If
\(K_R=\varnothing\), the definition gives
\(\Gamma_{\rm piv}(b_d,F_d;R)=0\), so (11) follows because its right-hand
side is positive.

Suppose instead that \(K_R\ne\varnothing\). For each
\(\theta\in K_R\), Lemma~\ref{lem:step-006-two-pivots} gives
\[
\min_{1\le j\le d}V_j(\theta)
\le d+\frac{Rd(d-1)}2.
\]
Taking the supremum over \(\theta\in K_R\) preserves the same constant and
proves (11). The proof used only the value of \(\theta\), the split at
\(\lvert\theta\rvert=1\), and \(d,R\); no endpoint, diameter, or other
quantity associated with \(\Theta\) appears. Thus the bound is uniform over
the auxiliary compact localization.

Finally, accepted Lemma~\ref{lem:step-001-root-feasible} says every root
produced by \(\alpha\in[-R,R]^d\) must lie in \(K_R\). Therefore an interval
\(J\) disjoint from \(K_R\) contains no such root. This covers intervals
outside the root-feasible region directly, including the empty-\(K_R\)
regime.

### unit_004: lemma

**Lemma (Zero-length bounded intervals are null).**
\(\label{lem:step-006-zero-length}\)

Statement:
Under Assumption~\ref{assump:joint-density-cap} on the exact
\(d\)-dimensional lower-coefficient vector and
Proposition~\ref{prop:step-006-family}, if a bounded interval
\(I\subset\mathbb R\) has \(\lvert I\rvert=0\), then
\[
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:p_\alpha(\theta)=0]=0.
\tag{12}
\]
If \(I\) is nonempty, its root event is a proper affine hyperplane in the
original \(\mathbb R^d\) coefficient space because the coefficient of
\(\alpha_0\) is the constant feature one.

Proof / justification:
A nonempty interval containing two distinct points contains the segment
between them and therefore has positive length. Hence a zero-length interval
is either empty or a singleton.

If \(I=\varnothing\), the event in (12) is empty. Otherwise write
\(I=\{\theta_0\}\). By (3), the root event is
\[
H_{\theta_0}
:=\left\{\alpha\in\mathbb R^d:
\alpha_0+\sum_{k=1}^{d-1}\alpha_k\theta_0^k=-\theta_0^d
\right\}.
\tag{13}
\]
The coefficient of \(\alpha_0\) in (13) is one, so the defining affine
functional is nonconstant and \(H_{\theta_0}\) is proper.

For \(d=1\), equation (13) is the singleton
\(\{\alpha_0=-\theta_0\}\), which has one-dimensional Lebesgue measure zero.
For \(d\ge2\), write
\(\beta=(\alpha_1,\ldots,\alpha_{d-1})\). Then (13) is the graph
\[
\alpha_0
=-\theta_0^d-\sum_{k=1}^{d-1}\beta_k\theta_0^k.
\]
The affine-graph calculation (2) gives
\(\lambda_d(H_{\theta_0})=0\). Assumption~\ref{assump:joint-density-cap}
provides a full joint density \(f_\mu\) on this same \(\mathbb R^d\), so
\[
\Pr_{\alpha\sim\mu}(H_{\theta_0})
=\int_{H_{\theta_0}}f_\mu(\alpha)\,d\lambda_d(\alpha)=0.
\]
This calculation neither factors the density nor adds the deterministic
leading coefficient. It proves (12) for arbitrary admissible correlation and
also when the hyperplane intersects a face of the support cube.

### unit_005: proposition

**Proposition (Exact affine-monic probability recovery).**
\(\label{prop:step-006-monic-bound}\)

Statement:
Under Assumption~\ref{assump:joint-density-cap},
Proposition~\ref{prop:step-006-family},
Proposition~\ref{prop:step-006-compact-gamma},
Lemma~\ref{lem:step-006-zero-length}, and accepted
Proposition~\ref{prop:step-004-density-conversion}, for every integer
\(d\ge1\), every \(\mu\in\mathcal D_{d,R,\kappa}\), and every bounded
interval \(I\subset\mathbb R\),
\[
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:p_\alpha(\theta)=0]
\le
\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)\lvert I\rvert.
\tag{14}
\]
This is ordinary probability for the exact \(d\)-dimensional correlated
lower-coefficient law and contains no hidden constant or auxiliary
condition.

Proof / justification:
If \(\lvert I\rvert=0\),
Lemma~\ref{lem:step-006-zero-length} makes the left-hand side of (14) zero,
and its right-hand side is also zero. Thus (14) holds for both the empty and
singleton cases.

Suppose \(\lvert I\rvert>0\). Because \(I\) is bounded, its closure is a
compact interval. Choose any compact interval \(\Theta\) containing that
closure and restrict \(b_d,F_d\) to \(\Theta\). The choice introduces no
rate parameter. Proposition~\ref{prop:step-006-family} verifies all
deterministic assumptions of the affine theorem on \(\Theta\), and
Assumption~\ref{assump:joint-density-cap} is already the required law on
\(\mathbb R^d\). Proposition~\ref{prop:step-006-compact-gamma} gives
\[
\Gamma_{\rm piv}(b_d,F_d;R)
\le d+\frac{Rd(d-1)}2
\tag{15}
\]
for this localization, independently of its endpoints.

Apply accepted Proposition~\ref{prop:step-004-density-conversion} with
\(N=d\). By the exact object equality (3), its event is the event in (14),
not an approximation or transformed event. Hence
\[
\begin{aligned}
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:p_\alpha(\theta)=0]
&=\Pr_{\alpha\sim\mu}
[\exists\theta\in I:b_d(\theta)
  +\langle\alpha,F_d(\theta)\rangle=0]\\
&\le\kappa(2R)^{d-1}
  \Gamma_{\rm piv}(b_d,F_d;R)\lvert I\rvert\\
&\le\kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)\lvert I\rvert.
\end{aligned}
\tag{16}
\]
The first inequality is exactly the accepted general affine theorem; the
second is (15). Equivalently, the theorem's other constant form reduces by
direct algebra to the same factor:
\[
\frac{A}{2R}
=\frac{(2R)^d\kappa}{2R}
=\kappa(2R)^{d-1}.
\tag{17}
\]

If \(I\cap K_R=\varnothing\) for the chosen localization, accepted
Lemma~\ref{lem:step-001-root-feasible} and
Proposition~\ref{prop:step-006-compact-gamma} show directly that the
cube-restricted event in (16) is empty. Assumption~\ref{assump:joint-density-cap}
assigns probability one to that cube, so the unrestricted sampled event has
probability zero; inequality (14) therefore also covers intervals wholly
outside the root-feasible region. If \(K_R=\varnothing\), the same argument
gives probability zero and \(\Gamma_{\rm piv}=0\). The cases \(d=1\),
\(\theta=0\), and \(\lvert\theta\rvert=1\) are already included in
Lemma~\ref{lem:step-006-two-pivots}; no limiting or exceptional case remains.

## Target-Step Assembly

Proposition~\ref{prop:step-006-family} identifies the exact setting objects:
\[
b_d+\langle\alpha,F_d\rangle=p_\alpha
\]
pointwise, with the deterministic monic coefficient outside the random
vector. It also establishes the exact tuple
\[
(q,M,N,\Delta_{\rm rnd},\Delta_{\rm aff},A)
=(0,0,d,d-1,d,(2R)^d\kappa).
\]
Thus the source and target events live in the same \(d\)-dimensional
coefficient probability space, with zero object residual.

Lemma~\ref{lem:step-006-two-pivots} proves the exact constant-pivot formula
on \(\lvert\theta\rvert\le1\), the exact top-pivot formula on
\(\lvert\theta\rvert>1\), and the separate \(d=1\) formula
\(V_{\rm const}=1\). The constant region includes \(\theta=0\) and
\(\lvert\theta\rvert=1\); the top region is used only where
\(\theta^{d-1}\ne0\). Because these regions are disjoint and the definition
of \(\Gamma_{\rm piv}\) takes a pointwise pivot minimum, the chart split has
no duplicate boundary or chart-count cost. Proposition~\ref{prop:step-006-compact-gamma}
then gives, on every compact \(\Theta\),
\[
\Gamma_{\rm piv}(b_d,F_d;R)
\le d+\frac{Rd(d-1)}2,
\]
with no dependence on that compact interval and with the empty or missed
root-feasible region handled by accepted root feasibility.

For every positive-length bounded interval,
Proposition~\ref{prop:step-006-monic-bound} localizes to a compact
\(\Theta\), applies only accepted
Proposition~\ref{prop:step-004-density-conversion}, and substitutes the
preceding conditioning certificate. Lemma~\ref{lem:step-006-zero-length}
supplies the empty and singleton cases that the general theorem does not
state. Together they prove for every bounded interval
\[
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:p_\alpha(\theta)=0]
\le
\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)\lvert I\rvert.
\]
This is the exact accepted `step_006` claim, including arbitrary correlation,
ordinary probability, the exact lower-coefficient density dimension, every
boundary regime, and the literal baseline constant. No polynomial-root
theorem, monic-baseline theorem, leading-coordinate augmentation, auxiliary
threshold, or conservative remainder is used.

## Explicit Rate Audit

- Exposed variables: \(d,R,\kappa,\lvert I\rvert\), the intermediate
  \(\Gamma_{\rm piv}(b_d,F_d;R)\), and the exact descriptors
  \(q=0\), \(M=0\), \(N=d\), \(\Delta_{\rm rnd}=d-1\),
  \(\Delta_{\rm aff}=d\), and \(A=(2R)^d\kappa\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d,R,\kappa\), the law, coefficient
  correlations, the bounded interval \(I\), the auxiliary compact
  \(\Theta\), a leading-coordinate approximation, a pivot threshold, or any
  unrecorded Pfaffian scale or conditioning parameter.
- Fixed quantities: \(d,R,\kappa\) and the deterministic monic family are
  fixed while \(\mu\in\mathcal D_{d,R,\kappa}\) and bounded intervals vary.
  The compact localization may vary with \(I\), but the bound is independent
  of it.
- Probability mode: Ordinary probability for every fixed admissible full
  joint law, uniformly in the sense that the same displayed constant applies
  to all possibly correlated laws. There is no confidence parameter,
  conditioning event, expectation, or independence conversion.
- Horizon mode: Static and valid for every bounded interval in
  \(\mathbb R\), including zero-length intervals. There is no time horizon,
  asymptotic regime, or stopping rule.
- Norm mode: The setting's \(\ell_1\) root-feasibility test, scalar absolute
  coordinate-ratio variation in \(V_j\) and \(\Gamma_{\rm piv}\),
  \(d\)-dimensional Lebesgue measure for coefficients, and one-dimensional
  Lebesgue interval length.
- Admissibility conditions and auxiliary tolerances: Exactly \(d\ge1\),
  \(R>0\), \(\kappa\in(0,\infty)\), and
  \(\mu\in\mathcal D_{d,R,\kappa}\). There is no auxiliary tolerance,
  threshold, small-interval premise, or simple-root condition. The split at
  \(\lvert\theta\rvert=1\) is an exact fixed partition, not an optimized
  parameter.
- Term absorption or simplification inequalities: No term is dropped or
  asymptotically absorbed. The complete inequalities are
  \[
  d\lvert\theta\rvert^{d-1}
  +R\sum_{k=1}^{d-1}k\lvert\theta\rvert^{k-1}
  \le d+R\sum_{k=1}^{d-1}k
  =d+\frac{Rd(d-1)}2
  \]
  on \(\lvert\theta\rvert\le1\), and
  \[
  1+R\sum_{m=1}^{d-1}\frac{m}{\lvert\theta\rvert^{m+1}}
  \le1+R\sum_{m=1}^{d-1}m
  =1+\frac{Rd(d-1)}2
  \le d+\frac{Rd(d-1)}2
  \]
  for \(d\ge2\) and \(\lvert\theta\rvert>1\). The general theorem is then
  specialized by the exact identities \(N=d\) and
  \(A/(2R)=\kappa(2R)^{d-1}\).
- Probability conversion: For positive length, accepted
  Proposition~\ref{prop:step-004-density-conversion} already performs the
  full joint-density domination in the original coefficient space. For a
  singleton, the direct proper-hyperplane calculation gives
  \(\mu(H_{\theta_0})=0\). No union bound, marginalization, or conditioning
  is used.
- Contribution to any Rate Specialization Bridge: Equations (3), (11), and
  (16)--(17) form the complete R3 bridge from the general affine theorem to
  the monic family: exact object mapping, exact technical-condition check,
  explicit conditioning bound, exact probability mode, and literal final
  rate.
- Baseline-reduction check: The specialization recovers exactly
  \[
  \kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)\lvert I\rvert
  \]
  for the \(d\) random lower coefficients. For \(d=1\), it reduces to
  \(\kappa\lvert I\rvert\), since the sole pivot has speed one and
  \((2R)^0=1\). The deterministic leading coefficient is never randomized,
  and there is no surrogate conclusion, extra remainder, or loss relative to
  the inherited baseline.

## Blockers

None.

The full-source question of controlling \(\Gamma_{\rm piv}\) polynomially
for general Pfaffian instances in
\((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or other format data remains
unresolved. It is outside this `material_partial` target and is not presented
as a blocker that this monic specialization solves.

## Notation And Assumption Notes

- Setting-defined, public-facing objects: \(b_d,F_d,p_\alpha\),
  \(V_{\rm const}\), \(V_{\rm top}\), \(K_R\),
  \(\Gamma_{\rm piv}\), \(d,R,\kappa,A\), and the exact descriptor tuple
  retain their meanings from `setting.md`. In the setting's one-based feature
  indexing, feature \(F_{k+1}=\theta^k\) pairs with lower coefficient
  \(\alpha_k\). The only exported quantitative interface is the explicit
  \(\Gamma_{\rm piv}\) certificate and final probability inequality.
- Proof-local helper objects: The proper affine hyperplane
  \(H_{\theta_0}\) in (13) and its affine graph function are proof-local and
  used only for singleton intervals. The arbitrary compact \(\Theta\)
  containing the closure of a positive-length bounded interval is also
  proof-local. Its existence comes from boundedness of the target interval,
  and no constant depends on its endpoints or diameter.
- Appendix-local helper objects: None.
- Notation economy: No abbreviation is introduced for
  \(d+Rd(d-1)/2\); the full target expression remains visible at every
  quantitative bridge. No chart counter, cutoff, pivot margin, radius, or
  auxiliary conditioning dictionary is introduced.
- Constant provenance: \(d,R,\kappa\) are primitive setting quantities;
  \(A=(2R)^d\kappa\) follows directly from \(N=d\); the sums
  \(d(d-1)/2\) are obtained explicitly from the monomial derivatives; and
  \((2R)^{d-1}\) is inherited exactly from accepted `step_004` after
  substituting \(N=d\). There are no hidden or freely chosen constants.
- Assumption provenance: Polynomial regularity, the absent-chain
  representation, exact degree data, and no-forced-root property are proved
  directly by Proposition~\ref{prop:step-006-family}. The joint density on
  the lower coefficients is the primitive
  Assumption~\ref{assump:joint-density-cap}. Root feasibility and the general
  probability theorem are accepted dependency conclusions. Legal pivot
  availability, the quantitative variation bound, compact-independent
  conditioning control, and singleton nullity are proved in this step. No
  generated event, local-validity condition, stability property, recurrence,
  or invariant is assumed.
- Correlation and coefficient-space scope: Every probability is taken under
  the original full joint density on
  \((\alpha_0,\ldots,\alpha_{d-1})\in\mathbb R^d\). The proof neither
  factors this density nor adds the deterministic coefficient one. The
  singleton argument and accepted density theorem therefore remain valid for
  arbitrary correlation and on support-cube boundaries.
- Boundary scope: For \(d=1\), the sole constant pivot has speed one. For
  \(d\ge2\), \(\theta=0\) and \(\lvert\theta\rvert=1\) belong to the
  constant-pivot region, while the top pivot is used only for
  \(\lvert\theta\rvert>1\). Empty \(K_R\), intervals disjoint from \(K_R\),
  empty intervals, singleton intervals, and every positive-length bounded
  interval are all treated explicitly.
- Diagnostic boundary: The optional `global_proof.md` was not read or used.
  The proof uses only the binding setting, accepted sketch and sketch review,
  accepted dependency artifacts, elementary facts restated above, and direct
  derivation.
- Progress boundary: This unit is `material_partial`. It recovers the exact
  monic-polynomial baseline through the fixed-family general affine theorem,
  but it neither proves nor implies polynomial general-instance control of
  \(\Gamma_{\rm piv}\) in
  \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or any other general
  Pfaffian-format data. That full-source gap remains explicit and open.
