# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For
  \[
  S_I=\{\alpha\in[-R,R]^N:\exists\theta\in I,\phi_\alpha(\theta)=0\},
  \]
  prove the exact graph-image coverage and
  \[
  \lambda_N(S_I)
  \le (2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|,
  \]
  including \(N=1\), tangent and multiple roots, measurable cells, and the
  \(m\to\infty\) limit.
- Depends on: `step_001`, `step_002`.
- Assumptions used: Primitive `assump:shared-pfaffian-chain` and
  `assump:no-forced-root`; derived interfaces from
  `step_001` and `step_002`.
- Technical challenge: Apply the area formula to locally Lipschitz maps on
  measurable exhausted cells and control countable and finite union volume
  without injectivity or chart-count loss.
- Intended proof tool or cited result: Current-notation Euclidean area
  formula, countable localization, continuity from below, monotone
  convergence, and Tonelli's theorem.
- Output target: Root-event coefficient-volume certificate.
- Rate objective: R1 requires the literal factor \((2R)^{N-1}\) and the
  disjoint-cell length identity, with no multiplicity or boundary remainder.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:shared-pfaffian-chain`: directly supplies that
    \(b,F_1,\ldots,F_N\) are \(C^1\) on compact \(\Theta\).
  - `assump:no-forced-root`: used through the accepted
    `step_001` conclusions that supported roots lie in \(K_R\)
    and have an available pivot there; it is not re-assumed as a generated
    local condition.
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_001` proof and review supply compactness of
    \(K_R\), the implication
    \[
    \alpha\in[-R,R]^N,\quad \phi_\alpha(\theta)=0
    \quad\Longrightarrow\quad \theta\in K_R,
    \]
    the empty-\(K_R\) conclusion, pointwise nonzero pivot availability on
    nonempty \(K_R\), and
    \(\Gamma_{\rm piv}(b,F;R)<\infty\).
  - The accepted `step_002` proof and review supply the disjoint
    Borel partition \(K_R=\bigsqcup_{j=1}^NE_j\), selected-pivot
    nonvanishing, the Borel exhaustion \(E_{j,m}\uparrow E_j\), the exact
    original-coordinate chart \(T_j\), and
    \[
    |\partial_\theta T_j(\theta,\beta)|
    \le V_j(\theta)\le\Gamma_{\rm piv}(b,F;R)
    \quad
    (\theta\in E_j,\ \beta\in[-R,R]^{N-1}).
    \]
- Local conditional hypotheses:
  - Membership in \(I\), \(E_{j,m}\), and the coefficient cube occurs only
    inside quantified chart domains.
  - Every regularity and measure-theoretic hypothesis used below is proved
    for the actual chart objects before the target assembly.

The density condition `assump:joint-density-cap` is not used.
This step is deterministic. No uniform lower bound on one fixed pivot, no
simple-root condition, and no injectivity or finite-fiber condition is
assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:shared-pfaffian-chain} and the accepted chart conclusions of Proposition~\ref{prop:step-002-selector-partition}, Lemma~\ref{lem:step-002-chart-exhaustion}, and Proposition~\ref{prop:step-002-exact-chart}, every exhausted chart domain is Borel, its original-coordinate graph map is ambient locally Lipschitz, its image is analytic, and \(S_I\) is analytic and Lebesgue measurable, including \(N=1\) and all interval and cube boundaries. | Discharges target-event, domain, image, and regularity hypotheses without a uniform pivot margin. |
| `unit_002` | proposition | Under Assumption~\ref{assump:shared-pfaffian-chain}, Proposition~\ref{prop:step-002-exact-chart}, Lemma~\ref{lem:step-003-measurable-charts}, and the checked area formula, \(\det D\Psi_j=(-1)^{j-1}\partial_\theta T_j\) in the exact coordinate orders and \(\lambda_N(\Psi_j(D_{j,m}))\le(2R)^{N-1}\int_{I\cap E_{j,m}}V_j\), with zero-dimensional beta volume one for \(N=1\). | Converts chart velocity into multiplicity-safe image volume with no localization-count loss. |
| `unit_003` | lemma | Under Lemma~\ref{lem:step-001-root-feasible}, Proposition~\ref{prop:step-002-selector-partition}, Lemma~\ref{lem:step-002-chart-exhaustion}, Proposition~\ref{prop:step-002-exact-chart}, and Lemma~\ref{lem:step-003-measurable-charts}, \(S_I=\bigcup_{j=1}^N\bigcup_{m\ge1}\Psi_j(D_{j,m})\) exactly, and for fixed \(j\) the domains and images increase with \(m\). | Gives two-way coverage of boundary, tied-pivot, multiple-root, and infinite-fiber cases and supplies continuity from below. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root}, Lemma~\ref{lem:step-001-root-feasible}, Proposition~\ref{prop:step-001-fixed-family-bound}, Proposition~\ref{prop:step-002-selector-partition}, Lemma~\ref{lem:step-002-chart-exhaustion}, Proposition~\ref{prop:step-003-area-bound}, and Lemma~\ref{lem:step-003-exact-coverage}, monotone convergence and the disjoint partition identity yield \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}\lvert I\rvert\) for every interval \(I\subseteq\Theta\), including empty \(K_R\), empty cells, zero-length intervals, and \(N=1\). | Closes the exhaustion and finite chart sum without an \(N\)-factor or boundary remainder. |

Atomic step = no. Measurability and regularity, the full Jacobian and area
inequality, exact event coverage, and limiting chart assembly are independent
nontrivial obligations.

## Cited Result Applications

### Accepted dependency: root feasibility and finite conditioning

- Source or name: accepted `step_001` artifact
  `perspective_3/idea_1/proof_steps/step_001/proof.md`, SHA-256
  `2a44be9fcaa15c23fdfcde0d473d4cd3019c264628c431a082c1d90f1bcb634a`,
  paired with its `ACCEPTED` review, SHA-256
  `c935a43af6c57c18a18af36c36ce74083a6ba91edbaf75fb9c83a6c04339e489`.
- Restated statement: Lemma~\ref{lem:step-001-root-feasible} proves that
  \(K_R\) is compact, cube-supported roots lie in it, and its empty branch
  has no supported root and has \(\Gamma_{\rm piv}=0\).
  Lemma~\ref{lem:step-001-pivot-margin} and
  Proposition~\ref{prop:step-001-fixed-family-bound} prove pointwise
  nonzero-pivot availability and \(\Gamma_{\rm piv}<\infty\) on the
  nonempty branch.
- Instantiated objects: the present \(b,F,K_R,V_j\), coefficient cube, and
  \(\Gamma_{\rm piv}(b,F;R)\).
- Required assumptions: Assumptions~\ref{assump:shared-pfaffian-chain} and
  \ref{assump:no-forced-root}, discharged in the accepted dependency.
- Conclusion used: root feasibility, the empty branch, and finite pivot
  availability before any graph representation.

### Accepted dependency: measurable exact charts

- Source or name: accepted `step_002` artifact
  `perspective_3/idea_1/proof_steps/step_002/proof.md`, SHA-256
  `54baabedeb5ca0c51351e233c8cc2c3043f541e4defdaa2f536803b9119f92a1`,
  paired with its `ACCEPTED` review, SHA-256
  `a3b9d7e80b6e8e820ca06e37421713181c50a2510a26e3f749bf0e1991ce68ec`.
- Restated statement:
  Proposition~\ref{prop:step-002-selector-partition} gives
  \(K_R=\bigsqcup_jE_j\), with \(F_j\ne0\) and
  \(V_j=\min_kV_k\le\Gamma_{\rm piv}\) on \(E_j\).
  Lemma~\ref{lem:step-002-chart-exhaustion} gives
  \(E_{j,m}=E_j\cap\{|F_j|\ge1/m\}\uparrow E_j\).
  Proposition~\ref{prop:step-002-exact-chart} gives the unique original
  coefficient
  \[
  T_j(\theta,\beta)
  =-\frac{b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)}{F_j(\theta)}
  \]
  solving the root equation and
  \(|\partial_\theta T_j|\le V_j\le\Gamma_{\rm piv}\).
- Instantiated objects: the present cells, coordinate ordering, beta cube,
  and original affine equation; there is no surrogate target.
- Required assumptions: Assumption~\ref{assump:shared-pfaffian-chain} and the
  accepted `step_001` interface, discharged in the accepted
  dependency.
- Conclusion used: all selection, denominator, exact-graph, and velocity
  facts below.

### Analytic-set measurability

- Source or name: standard continuous-image and projection theorem for
  Polish spaces.
- Restated statement: the Borel image, under a Borel map, of a Borel subset
  of a Euclidean space is analytic; a coordinate projection of a Borel
  subset of a product Euclidean space is analytic. Analytic subsets of
  \(\mathbb R^N\) are universally measurable, hence Lebesgue measurable,
  and countable unions of analytic sets are analytic.
- Instantiated objects: \(D_{j,m}\), \(\Psi_j(D_{j,m})\), and the
  coefficient projection of
  \[
  \{(\alpha,\theta)\in[-R,R]^N\times I:
  b(\theta)+\langle\alpha,F(\theta)\rangle=0\}.
  \]
- Assumption discharge: intervals, the cube, and accepted cells are Borel;
  affine evaluation is continuous; Lemma~\ref{lem:step-003-measurable-charts}
  proves chart continuity on the nonzero-pivot open set.
- Conclusion used: measurability of exhausted images, their unions, and
  \(S_I\).

### Equal-dimensional Euclidean area formula

- Source or name: standard Euclidean Lipschitz area/multiplicity formula, in
  the convention supported by Azais--Wschebor, *Level Sets and Extrema of
  Random Processes and Fields*, DOI `10.1002/9780470434642`.
- Restated statement: if \(O\subset\mathbb R^N\) is open,
  \(\Psi:O\to\mathbb R^N\) is locally Lipschitz, and \(D\subset O\) is
  Borel, a countable disjoint Lipschitz localization gives
  \[
  \int_DJ_N\Psi(x)\,dx
  =\int_{\mathbb R^N}N(\Psi,D,y)\,dy,
  \]
  where
  \(N(\Psi,D,y)=\#\{x\in D:\Psi(x)=y\}\) may be \(+\infty\).
  Consequently
  \[
  \lambda_N(\Psi(D))\le\int_DJ_N\Psi(x)\,dx.
  \]
  No injectivity, finite-multiplicity, noncriticality, or simple-root
  hypothesis is required.
- Instantiated objects: \(\Psi_j\), \(D_{j,m}\), and Euclidean Lebesgue
  measure in domain coordinates \((\theta,\beta)\) and original coefficient
  coordinates \(\alpha\).
- Assumption discharge: Lemma~\ref{lem:step-003-measurable-charts} constructs
  an ambient open set and proves local Lipschitzness. The proof of
  Proposition~\ref{prop:step-003-area-bound} gives a disjoint finite
  localization at each \(m\) and computes the full Jacobian.
- Conclusion used: multiplicity-safe finite-level image volume. Coverage and
  chart disjointness are proved separately.

### Tonelli and monotone measure facts

- Source or name: Tonelli's theorem, continuity from below, and monotone
  convergence.
- Restated statement: nonnegative measurable functions on products of
  sigma-finite Lebesgue spaces may be integrated in either order; measurable
  \(A_m\uparrow A\) satisfy
  \(\lambda(A_m)\uparrow\lambda(A)\); and nonnegative measurable
  \(h_m\uparrow h\) satisfy \(\int h_m\uparrow\int h\).
- Instantiated objects: the indicator of \(D_{j,m}\),
  \(|\partial_\theta T_j|\), the nested images
  \(\Psi_j(D_{j,m})\), and
  \({\bf1}_{I\cap E_{j,m}}V_j\uparrow{\bf1}_{I\cap E_j}V_j\).
- Assumption discharge: the relevant domains and images are measurable,
  integrands are nonnegative Borel functions, and the beta cube has finite
  volume. For \(N=1\), beta measure is \(\lambda_0\), with mass one on the
  empty tuple.
- Conclusion used: exact beta integration and the exhaustion limit.

### Local result applications

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Lemma~\ref{lem:step-003-measurable-charts} | Under the primitive regularity and accepted chart interface, exhausted domains are Borel, graph maps are ambient locally Lipschitz, and their images and \(S_I\) are measurable. | Supplies the regularity and measurability premises for area control, coverage, and limiting assembly. |
| Proposition~\ref{prop:step-003-area-bound} | Under the exact chart and checked area formula, the signed determinant is \((-1)^{j-1}\partial_\theta T_j\) and every exhausted image has the exact beta-volume bound without injectivity. | Supplies the finite-level inequality to Proposition~\ref{prop:step-003-volume-certificate}. |
| Lemma~\ref{lem:step-003-exact-coverage} | Under accepted root feasibility, partition, exhaustion, and exact charting, the countable graph-image union equals \(S_I\), and fixed-\(j\) pieces are nested. | Supplies event identity and continuity from below to Proposition~\ref{prop:step-003-volume-certificate}. |
| Proposition~\ref{prop:step-003-volume-certificate} | Under the preceding area and coverage results, monotone convergence and disjoint cell lengths give the exact coefficient-volume certificate. | Supplies the sketch-row output to target assembly and downstream density conversion. |

## Local Derivation

### unit_001: lemma

**Lemma (Measurable exhausted coefficient charts).**
\(\label{lem:step-003-measurable-charts}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain},
Proposition~\ref{prop:step-002-selector-partition},
Lemma~\ref{lem:step-002-chart-exhaustion}, and
Proposition~\ref{prop:step-002-exact-chart}, fix an interval
\(I\subseteq\Theta\). For \(j\in\{1,\ldots,N\}\), order the remaining
coordinates as
\[
\beta=(\beta_1,\ldots,\beta_{j-1},\beta_{j+1},\ldots,\beta_N)
\in B_j:=[-R,R]^{N-1},
\]
and define the insertion map in original coefficient order by
\[
\Psi_j(\theta,\beta)
=
(\beta_1,\ldots,\beta_{j-1},
T_j(\theta,\beta),
\beta_{j+1},\ldots,\beta_N).
\tag{1}
\]
For every integer \(m\ge1\), set
\[
D_{j,m}
=\{(\theta,\beta):
\theta\in I\cap E_{j,m},\ \beta\in B_j,\
\lvert T_j(\theta,\beta)\rvert\le R\}.
\tag{2}
\]
Then \(D_{j,m}\) is Borel in \(\mathbb R^N\), \(\Psi_j\) is the restriction
of a \(C^1\), hence locally Lipschitz, map on an open neighborhood of every
point of \(D_{j,m}\), and \(\Psi_j(D_{j,m})\) is analytic and Lebesgue
measurable. The event \(S_I\) is analytic and Lebesgue measurable. These
claims include interval endpoints, the closed coefficient-cube boundary, and
the \(N=1\) convention \(B_1=[-R,R]^0=\{()\}\).

Proof / justification:
Write \(\Theta=[\theta_-,\theta_+]\). A \(C^1\) function \(g\) on this
compact interval
has the explicit \(C^1\) extension
\[
\widetilde g(x)=
\begin{cases}
g(\theta_-)+g'(\theta_-)(x-\theta_-),&x<\theta_-,\\
g(x),&\theta_-\le x\le\theta_+,\\
g(\theta_+)+g'(\theta_+)(x-\theta_+),&x>\theta_+.
\end{cases}
\tag{3}
\]
Values and first derivatives match at \(\theta_-,\theta_+\). If
\(\theta_-=\theta_+\), use the single affine expression
\(g(\theta_-)+g'(\theta_-)(x-\theta_-)\). Apply (3) separately to the
offset function \(b\) and to \(F_1,\ldots,F_N\). These are proof-local
extensions; on \(\Theta\) they preserve the setting functions and
derivatives exactly.

For each \(j\), define the open set
\[
O_j=\{(\theta,\beta)\in\mathbb R\times\mathbb R^{N-1}:
\widetilde F_j(\theta)\ne0\}.
\]
The quotient formula for \(T_j\), using the extended functions, defines a
\(C^1\) function on \(O_j\), and (1) defines a \(C^1\), locally Lipschitz map
there. This uses no lower bound on one pivot over all of \(E_j\):
membership in \(E_j\) gives the pointwise fact \(F_j\ne0\), and finite level
\(E_{j,m}\) records \(|F_j|\ge1/m\). The levels will later be exhausted.

By Lemma~\ref{lem:step-002-chart-exhaustion}, \(E_{j,m}\) is Borel.
Intervals and the closed cube \(B_j\) are Borel. On
\(E_{j,m}\times B_j\subset O_j\), the condition \(|T_j|\le R\) is the
inverse image of a closed interval under a continuous function. Hence (2)
is Borel. The restriction of \(\Psi_j\) to this Borel set is Borel, so its
image is analytic and Lebesgue measurable.

Target-event measurability also follows directly, without using the coverage
identity proved later. The set
\[
Z_I=\{(\alpha,\theta)\in[-R,R]^N\times I:
b(\theta)+\langle\alpha,F(\theta)\rangle=0\}
\]
is Borel, since affine evaluation is continuous on the Borel product
restriction. Its coefficient projection is exactly \(S_I\), so \(S_I\) is
analytic and Lebesgue measurable.

No boundary was removed: (2) uses the actual interval \(I\), the closed beta
cube, and \(|T_j|\le R\), including \(T_j=\pm R\). The extension (3)
supplies an ambient neighborhood even at endpoints of \(\Theta\). When
\(N=1\), \(\mathbb R^0\) is a one-point Euclidean space, \(B_1\) is that
point, and all claims reduce to their one-dimensional versions.

### unit_002: proposition

**Proposition (Noninjective area bound in original coordinates).**
\(\label{prop:step-003-area-bound}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain},
Proposition~\ref{prop:step-002-exact-chart},
Lemma~\ref{lem:step-003-measurable-charts}, and the checked Euclidean area
formula, use domain-coordinate order
\[
(\theta,\beta_1,\ldots,\beta_{j-1},\beta_{j+1},\ldots,\beta_N)
\]
and target-coordinate order \((\alpha_1,\ldots,\alpha_N)\). Then
\[
\det D\Psi_j(\theta,\beta)
=(-1)^{j-1}\partial_\theta T_j(\theta,\beta),
\qquad
J_N\Psi_j=|\partial_\theta T_j|.
\tag{4}
\]
For every \(j\) and \(m\ge1\),
\[
\lambda_N(\Psi_j(D_{j,m}))
\le
\int_{D_{j,m}}|\partial_\theta T_j(\theta,\beta)|\,d\theta\,d\beta
\le
(2R)^{N-1}\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta.
\tag{5}
\]
The first inequality permits finite or infinite multiplicity and requires no
simple-root, transversality, or injectivity premise. For \(N=1\), (4) is the
ordinary derivative and (5) uses \(\lambda_0(B_1)=1=(2R)^0\).

Proof / justification:
For \(i\ne j\), the \(\alpha_i\) component of (1) is \(\beta_i\), while the
\(\alpha_j\) component is \(T_j\). Let \(P_j\) move target row \(j\) to
the first row and preserve the order of all other rows. It performs \(j-1\)
transpositions, so \(\det P_j=(-1)^{j-1}\). Direct differentiation gives
\[
P_jD\Psi_j
=
\begin{pmatrix}
\partial_\theta T_j&\nabla_\beta T_j\\
0&I_{N-1}
\end{pmatrix}.
\]
Thus
\[
\det(P_jD\Psi_j)=\partial_\theta T_j,
\qquad
\det D\Psi_j=(-1)^{j-1}\partial_\theta T_j,
\]
proving (4), including the permutation sign. The entries
\(\partial_{\beta_i}T_j=-F_i/F_j\) occupy the upper-right block and do not
alter the determinant.

We now discharge the area formula on the measurable restriction. For fixed
\(j,m\),
\[
C_{j,m}
=\{\theta\in\Theta:|F_j(\theta)|\ge1/m\}\times B_j
\]
is compact, lies in \(O_j\), and contains \(D_{j,m}\). Finitely many open
balls compactly contained in \(O_j\), on each of which the \(C^1\) map
\(\Psi_j\) is Lipschitz, cover \(C_{j,m}\). Intersect them with
\(D_{j,m}\) and successively remove earlier balls. The resulting
\((A_\ell)_\ell\) is a finite disjoint Borel partition of \(D_{j,m}\), and
\(\Psi_j\) is Lipschitz on each piece. The area formula, image
subadditivity, and domain disjointness give
\[
\begin{aligned}
\lambda_N(\Psi_j(D_{j,m}))
&\le\sum_\ell\lambda_N(\Psi_j(A_\ell))\\
&\le\sum_\ell\int_{A_\ell}J_N\Psi_j
=\int_{D_{j,m}}J_N\Psi_j.
\end{aligned}
\tag{6}
\]
Thus localization contributes no numerical factor. Exhausting an arbitrary
ambient open set by countably many compact localizations and applying the
same disjoint refinement gives the stated local version. The threshold
\(1/m\) is proof-local and is not a theorem-facing pivot margin.

By (4), Proposition~\ref{prop:step-002-exact-chart}, and Tonelli's theorem,
\[
\begin{aligned}
\int_{D_{j,m}}J_N\Psi_j\,d\theta\,d\beta
&=\int_{I\cap E_{j,m}}\int_{B_j}
{\bf1}_{\{|T_j(\theta,\beta)|\le R\}}
\lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta\\
&\le\int_{I\cap E_{j,m}}\int_{B_j}V_j(\theta)\,d\beta\,d\theta\\
&=\lambda_{N-1}(B_j)\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta\\
&=(2R)^{N-1}\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta.
\end{aligned}
\tag{7}
\]
This proves (5). For \(N=1\), the inner integral is over the empty tuple with
zero-dimensional mass one.

The multiplicity mechanism is explicit. The area-formula count
\(N(\Psi_j,D_{j,m},\alpha)\) may be finite or \(+\infty\); on the image it
is at least one, which is exactly the direction used in (6). Distinct roots
of one coefficient vector are multiple preimages and only increase the
count. At a represented root \(\alpha=\Psi_j(\theta,\beta)\), write
\(n=b+\sum_{i\ne j}\beta_iF_i\). Since \(T_j=-n/F_j\),
\[
\partial_\theta T_j
=-\frac{n'+T_jF_j'}{F_j}
=-\frac{\phi_\alpha'(\theta)}{F_j(\theta)}.
\tag{8}
\]
Thus a tangent or differentiably multiple root is a critical preimage.
Applying (6) to the measurable critical subset
\(\{\partial_\theta T_j=0\}\cap D_{j,m}\) shows that its image has zero
\(N\)-volume. If a coefficient has infinitely many roots, or its affine
combination vanishes on an interval, the allowed multiplicity is infinite;
(6) remains valid in the extended nonnegative sense. No critical-root or
finite-fiber exclusion is needed.

### unit_003: lemma

**Lemma (Exact exhausted graph-image coverage).**
\(\label{lem:step-003-exact-coverage}\)

Statement:
Under Lemma~\ref{lem:step-001-root-feasible},
Proposition~\ref{prop:step-002-selector-partition},
Lemma~\ref{lem:step-002-chart-exhaustion},
Proposition~\ref{prop:step-002-exact-chart}, and
Lemma~\ref{lem:step-003-measurable-charts}, define
\[
D_j
=\{(\theta,\beta):
\theta\in I\cap E_j,\ \beta\in B_j,\ |T_j(\theta,\beta)|\le R\}.
\tag{9}
\]
Then
\[
D_{j,m}\uparrow D_j,
\qquad
\Psi_j(D_{j,m})\uparrow\Psi_j(D_j),
\tag{10}
\]
and
\[
S_I
=\bigcup_{j=1}^N\Psi_j(D_j)
=\bigcup_{j=1}^N\bigcup_{m=1}^{\infty}\Psi_j(D_{j,m}).
\tag{11}
\]
This equality includes all roots at interval endpoints and coefficient-cube
boundaries, least-index pivot ties, and coefficients with one, multiple, or
infinitely many roots. Empty \(K_R\), empty cells, and \(N=1\) are included.

Proof / justification:
Only \(\theta\in E_{j,m}\) in (2) depends on \(m\).
Lemma~\ref{lem:step-002-chart-exhaustion} gives
\(E_{j,m}\uparrow E_j\), while \(I,B_j,T_j\), and \(|T_j|\le R\) remain
fixed. This proves the domain assertion in (10). A fixed map sends an
increasing union to the increasing union of its images, proving the image
assertion.

Take \(\alpha\in S_I\) and choose any
\(\theta\in I\) with \(\phi_\alpha(\theta)=0\).
Lemma~\ref{lem:step-001-root-feasible} gives \(\theta\in K_R\).
Proposition~\ref{prop:step-002-selector-partition} puts \(\theta\) in one
and only one least-index cell \(E_j\) and gives \(F_j(\theta)\ne0\).
Set \(\beta=\alpha_{-j}\) in increasing original-coordinate order.
Then \(\beta\in B_j\), and
Proposition~\ref{prop:step-002-exact-chart} gives
\(T_j(\theta,\beta)=\alpha_j\). Hence
\((\theta,\beta)\in D_j\) and \(\Psi_j(\theta,\beta)=\alpha\).
The exhaustion lemma also puts this \(\theta\) in some finite \(E_{j,m}\),
so the coefficient occurs in an exhausted image.

Conversely, if
\(\alpha=\Psi_j(\theta,\beta)\) with \((\theta,\beta)\in D_j\), the beta
coordinates lie in the closed cube and \(|T_j|\le R\), so
\(\alpha\in[-R,R]^N\) coordinate by coordinate. Also
\(\theta\in I\cap E_j\), and the exact original-coordinate identity in
Proposition~\ref{prop:step-002-exact-chart} gives
\(\phi_\alpha(\theta)=0\). Thus \(\alpha\in S_I\), proving (11).

The proof uses a root only as a witness, never as a unique or simple root.
Several or infinitely many roots yield several or infinitely many preimages
but one image point. A pivot tie enters exactly one least-index cell. All
cube inequalities are closed and the actual interval \(I\) is used, so no
boundary point is discarded. If \(K_R=\varnothing\), accepted root
feasibility makes \(S_I\) and all chart sets empty. For \(N=1\), the proof
uses the unique empty beta tuple and scalar map \(\Psi_1=T_1\).

### unit_004: proposition

**Proposition (Root-event coefficient-volume certificate).**
\(\label{prop:step-003-volume-certificate}\)

Statement:
Under Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root}, the accepted conclusions of
Lemma~\ref{lem:step-001-root-feasible},
Proposition~\ref{prop:step-001-fixed-family-bound},
Proposition~\ref{prop:step-002-selector-partition}, and
Lemma~\ref{lem:step-002-chart-exhaustion}, together with
Proposition~\ref{prop:step-003-area-bound} and
Lemma~\ref{lem:step-003-exact-coverage}, imply for every interval
\(I\subseteq\Theta\) that
\[
\lambda_N(S_I)
\le(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|.
\tag{12}
\]
The result includes empty \(K_R\), empty cells, zero-length intervals,
\(N=1\), cube and interval boundaries, tangent and multiple roots, and
finite or infinite root fibers. There is no chart-count or multiplicity
factor.

Proof / justification:
Fix \(j\). By Lemma~\ref{lem:step-003-exact-coverage}, the measurable sets
\(\Psi_j(D_{j,m})\) increase to \(\Psi_j(D_j)\). Continuity from below,
Proposition~\ref{prop:step-003-area-bound}, and monotone convergence give
\[
\begin{aligned}
\lambda_N(\Psi_j(D_j))
&=\lim_{m\to\infty}\lambda_N(\Psi_j(D_{j,m}))\\
&\le(2R)^{N-1}\lim_{m\to\infty}
\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta\\
&=(2R)^{N-1}\int_{I\cap E_j}V_j(\theta)\,d\theta.
\end{aligned}
\tag{13}
\]
Indeed,
\({\bf1}_{I\cap E_{j,m}}V_j\uparrow{\bf1}_{I\cap E_j}V_j\);
each product here means \(V_j\) on the indicated Borel set and zero off that
set, so no \(0\cdot(+\infty)\) convention is needed. These functions are
nonnegative and Borel. No \(m\)-dependent constant survives.

Exact coverage, finite image subadditivity, and (13) yield
\[
\lambda_N(S_I)
\le(2R)^{N-1}
\sum_{j=1}^N\int_{I\cap E_j}V_j(\theta)\,d\theta.
\tag{14}
\]
On \(E_j\), the accepted selector conclusion gives
\(V_j=\min_kV_k\le\Gamma_{\rm piv}(b,F;R)\). Since the \(E_j\)'s are
pairwise disjoint and their union is \(K_R\),
\[
\begin{aligned}
\sum_{j=1}^N\int_{I\cap E_j}V_j(\theta)\,d\theta
&\le\Gamma_{\rm piv}(b,F;R)\sum_{j=1}^N|I\cap E_j|\\
&=\Gamma_{\rm piv}(b,F;R)|I\cap K_R|\\
&\le\Gamma_{\rm piv}(b,F;R)|I|.
\end{aligned}
\tag{15}
\]
Combining (14)--(15) proves (12). Thus the chart sum spends the one-copy
parameter-length budget \(|I\cap K_R|\), not \(N|I|\).

If \(K_R=\varnothing\), all chart sets are empty, the accepted dependency
gives \(\Gamma_{\rm piv}=0\), and both sides of (12) vanish. An empty cell
contributes zero. If \(|I|=0\), (15) forces every chart integral to zero,
including for a singleton containing a root. For \(N=1\), there is one cell,
\((2R)^{N-1}=1\), and beta volume is one. Multiplicity and critical-root
cases entered before the limits and chart sum, so no root count,
transversality, or finite-fiber condition appears.

## Target-Step Assembly

Lemma~\ref{lem:step-001-root-feasible} restricts every supported root to
\(K_R\) and closes the empty branch. The accepted chart results
Proposition~\ref{prop:step-002-selector-partition},
Lemma~\ref{lem:step-002-chart-exhaustion}, and
Proposition~\ref{prop:step-002-exact-chart} then supply the disjoint Borel
cells, nonzero selected pivots, finite-level exhaustion, exact original
coefficient, and velocity cap before any measure argument.

Lemma~\ref{lem:step-003-measurable-charts} proves target-event and chart
measurability and ambient local Lipschitz regularity, including endpoints.
Proposition~\ref{prop:step-003-area-bound} computes the full signed
determinant in the original coordinate order and applies the noninjective
area formula on disjoint measurable localizations. This yields the literal
beta factor \((2R)^{N-1}\), and its multiplicity and critical-set checks
cover repeated roots, tangencies, differentiable multiple roots, and
infinite fibers.

Lemma~\ref{lem:step-003-exact-coverage} proves
\(S_I=\bigcup_{j,m}\Psi_j(D_{j,m})\) exactly, including all cube and
interval boundaries, and proves nestedness in \(m\).
Proposition~\ref{prop:step-003-volume-certificate} then applies continuity
from below and monotone convergence and uses
\[
\sum_j|I\cap E_j|=|I\cap K_R|\le|I|
\]
to prove
\[
\lambda_N(S_I)
\le(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|.
\]
These named results prove every clause of the accepted `step_003`
row. The only exported conclusion is the root-event coefficient-volume
certificate consumed by `step_004`.

## Explicit Rate Audit

- Exposed variables: \(N,R,\Gamma_{\rm piv}(b,F;R)\), and \(|I|\). The
  exact output is \((2R)^{N-1}\Gamma_{\rm piv}|I|\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on:
  \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\), the deterministic family,
  \(N,R,I\), a selected index, a pivot margin, the exhaustion level, root
  multiplicity, the number of localizations, or an unrecorded Pfaffian
  scale.
- Fixed quantities: The deterministic family \((b,F)\), its exact Pfaffian
  presentation, compact \(\Theta,N,R\) are fixed; \(I\) is arbitrary.
- Probability mode: Deterministic Lebesgue measure. No probability law,
  expectation, confidence parameter, or conditioning event is used.
- Horizon mode: Static and valid for every interval \(I\subseteq\Theta\).
  The limit \(m\to\infty\) is a monotone set exhaustion, not a horizon or
  asymptotic theorem mode.
- Norm mode: Euclidean \(N\)-dimensional Lebesgue measure in original
  coefficient coordinates, one-dimensional Lebesgue length in \(\theta\),
  scalar absolute chart velocity, and coordinatewise cube bounds. The
  accepted \(\ell_1\) feasibility test is unchanged.
- Admissibility conditions and auxiliary tolerances:
  \(N\ge1,R>0\), Assumptions~\ref{assump:shared-pfaffian-chain} and
  \ref{assump:no-forced-root}, and the accepted dependency interfaces.
  The threshold \(1/m\) vanishes by monotone convergence and is not a
  theorem-facing tolerance.
- Term absorption or simplification inequalities: No term is dropped or
  absorbed. Exactly
  \[
  \lambda_{N-1}([-R,R]^{N-1})=(2R)^{N-1},
  \qquad \lambda_0([-R,R]^0)=1,
  \]
  and
  \[
  \sum_j|I\cap E_j|=|I\cap K_R|\le|I|.
  \]
- Probability conversion: None; density domination belongs to
  `step_004`.
- Contribution to any Rate Specialization Bridge: The output is the exact
  input to \(\Pr(S_I)\le\kappa\lambda_N(S_I)\), with no multiplicity,
  boundary, localization, or chart-count factor.
- Baseline-reduction check: \(\Psi_j\) inserts \(T_j\) into the original
  \(N\)-coordinate coefficient vector and changes no distribution dimension,
  preserving the exact affine-monic specialization assigned to
  `step_006`. For \(N=1\), the result reduces exactly to
  \(\lambda_1(S_I)\le\Gamma_{\rm piv}|I|\).

## Blockers

None.

## Notation And Assumption Notes

- Public-facing objects: \(S_I,N,R,\Gamma_{\rm piv}(b,F;R)\), and the
  coefficient-volume bound retain their setting and sketch meanings. Only
  the final volume certificate is exported.
- Appendix-local objects: The ordered beta cube \(B_j\), insertion map
  \(\Psi_j\), exhausted domains \(D_{j,m}\), and full domains \(D_j\)
  package the setting-defined \(E_j,E_{j,m},T_j\) interface for this area
  proof. They are not theorem parameters or assumptions.
- Proof-local objects: The extensions
  \(\widetilde b,\widetilde F_i\), open sets \(O_j\), compact sets
  \(C_{j,m}\), localization pieces \(A_\ell\), row permutation \(P_j\),
  multiplicity count, and numerator \(n\) discharge regularity, Jacobian,
  and critical-root checks. None is exported.
- Constant provenance: \(N,R,\Gamma_{\rm piv}\) are setting-defined, with
  finiteness inherited from accepted `step_001`. The integer
  \(m\ge1\) indexes the accepted exhaustion. No new constant, radius,
  margin, threshold, or hidden boundedness quantity is introduced.
- Assumption provenance: Root feasibility and pivot conditioning come from
  accepted `step_001`. Borel cells, selected nonvanishing,
  exhaustion, exact chart algebra, and velocity control come from accepted
  `step_002`. Domain and event measurability, local Lipschitzness,
  the full Jacobian, exact coverage, exhaustion closure, and the
  no-chart-count identity are proved here. No generated event or
  local-validity condition is assumed as primitive.
- Boundary and degeneracy scope: Domains retain closed coefficient-cube
  boundaries and actual interval endpoints. Empty \(K_R\) and empty cells
  yield empty images. Tangent roots lie in the critical set by (8); multiple
  and infinite fibers are permitted by the extended multiplicity count.
  The \(N=1\) beta space has volume one.
- Diagnostic boundary: `global_proof.md`, SHA-256
  `20173ffea1c58c58bf7d217cfbe38912c9b388eff435912237c341e9803b9ab0`,
  was read only after its paired `global_proof_review.md`, SHA-256
  `3df11de5344be2f1e8c4e8c4cecfe76db77fb5003b69bc670053defd32c60e7b`,
  was verified `ACCEPTED`. Its planning suggestion was the
  measurable-domain, full-Jacobian, exact-coverage, and monotone
  no-chart-loss decomposition. Every statement above was independently
  derived from `setting.md`, the accepted row, accepted
  dependencies, and checked standard tools. The diagnostic was not evidence,
  a cited result, an assumption source, or authority to change the claim.
- Progress boundary: This proof establishes the accepted fixed-family
  `material_partial` volume certificate. It neither claims nor
  implies polynomial control of \(\Gamma_{\rm piv}\) in
  \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or other general
  Pfaffian-format data.
