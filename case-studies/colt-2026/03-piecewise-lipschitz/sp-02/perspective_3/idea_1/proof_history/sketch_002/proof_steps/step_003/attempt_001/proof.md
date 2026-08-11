# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For
  \[
  S_I=\{\alpha\in[-R,R]^N:\exists\theta\in I,\phi_\alpha(\theta)=0\},
  \]
  prove that every chart image and \(S_I\) are analytic and Lebesgue
  measurable, prove exact graph-image coverage, and prove
  \[
  \lambda_N(S_I)
  \le (2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|,
  \]
  including \(N=1\), tangent/multiple/infinite fibers, measurable cells, and
  the \(m\to\infty\) limit.
- Depends on: `step_001`, `step_002`.
- Assumptions used: Primitive `assump:shared-pfaffian-chain`,
  `assump:no-forced-root`; derived interfaces from `step_001`,
  `step_002`; source hypotheses discharged by Euclidean
  Polish/standard-Borel structure, Borel domains/maps, and countable
  Lipschitz localization.
- Technical challenge: Verify analytic-set and area-formula interfaces before
  controlling countable/finite union volume without injectivity or
  chart-count loss.
- Intended proof tool or cited result: Kechris, *Classical Descriptive Set
  Theory*, GTM 156, first ed. (1995), Section 14, Proposition 14.4 (Borel
  images/projections are analytic) and Section 21, Theorem 21.10 (analytic
  sets are universally/Lebesgue measurable); Federer, *Geometric Measure
  Theory*, Grundlehren 153 (1969), Section 3.2.3 (equal-dimensional
  Lipschitz area formula with extended multiplicity); continuity from below,
  monotone convergence, and Tonelli. These cited results do not require or
  output injectivity, finite fibers, regular values, transversality, simple
  roots, root coverage, chart bounds, density conversion, or
  \(\Gamma_{\rm piv}\) control.
- Output target: Measurable root-event and coefficient-volume certificate.
- Rate objective: R1 requires the literal factor \((2R)^{N-1}\) and
  disjoint-length identity, with no multiplicity or boundary remainder.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:shared-pfaffian-chain`: this step uses its consequence that
    \(b,F_1,\ldots,F_N\) are \(C^1\) on the compact interval \(\Theta\).
  - `assump:no-forced-root`: this primitive was already discharged by the
    accepted `step_001` proof to derive root feasibility, pivot
    availability, and fixed-family finiteness. It is not replaced by a
    generated margin assumption here.
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_001` proof is
    `perspective_3/idea_1/proof_steps/step_001/proof.md`, SHA-256
    `0a5355f86a9086ad945b96629d8e05f2dd8e77c9abcc1faa855a54dfd5e8d252`.
    It proves compactness of \(K_R\), cube-supported root feasibility, the
    empty-\(K_R\) branch, pointwise nonzero-pivot availability on nonempty
    \(K_R\), and \(\Gamma_{\rm piv}(b,F;R)<\infty\).
  - Its accepted review is
    `perspective_3/idea_1/proof_steps/step_001/review.md`, SHA-256
    `c0f43d8431f1714cc8a4ecbb1501ac465974b6603b078b2601f1b3f3e88df5c3`.
    It records sketch attempt 2, `step_001`, unit attempt 1,
    `ACCEPTED`, and the matching proof digest.
  - The accepted `step_002` proof is
    `perspective_3/idea_1/proof_steps/step_002/proof.md`, SHA-256
    `f283dcd2fe425f336a16a3dfa06f6bebbc822d8f86407aaa6214a7b48d033ed6`.
    It proves that the \(E_j\) form a disjoint Borel partition of \(K_R\),
    that \(F_j\ne0\) and
    \(V_j=\min_iV_i\le\Gamma_{\rm piv}\) on \(E_j\), that
    \(E_{j,m}\uparrow E_j\), and that \(T_j\) is a Borel exact
    original-coordinate chart satisfying
    \[
    |\partial_\theta T_j(\theta,\beta)|
    \le V_j(\theta)\le\Gamma_{\rm piv}(b,F;R).
    \]
  - Its accepted review is
    `perspective_3/idea_1/proof_steps/step_002/review.md`, SHA-256
    `6e87e9d11f307556a640246941f7a195ab7b5d178ce62b5f48e3a1ce84bef113`.
    It records sketch attempt 2, `step_002`, unit attempt 1,
    `ACCEPTED`, and the matching proof digest.
- Local conditional hypotheses:
  - Membership in \(I\), \(E_j\), \(E_{j,m}\), and the coefficient cube
    occurs only inside quantified chart domains.
  - The condition \(K_R\ne\varnothing\) is used only in the nonempty branch;
    the empty branch is proved explicitly.
  - Every measurability, local-Lipschitz, and integrability condition used by
    a cited result is proved below for the current chart objects.

The density condition `assump:joint-density-cap` is not used. This step is
deterministic. It assumes neither a uniformly nonzero prescribed pivot nor
injectivity, finite fibers, transversality, regular values, or simple roots.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:shared-pfaffian-chain}, the accepted conclusions of Proposition~\ref{prop:step-002-borel-selector}, Lemma~\ref{lem:step-002-finite-exhaustion}, and Proposition~\ref{prop:step-002-exact-chart}, and the checked Kechris results, if \(I\subseteq\Theta\) is an interval, then every exhausted and full chart domain is Borel, every corresponding chart image is analytic and Lebesgue measurable, and \(S_I\) is analytic and Lebesgue measurable. | Discharges all descriptive-set and ambient chart-regularity hypotheses, including endpoints and \(N=1\). |
| `unit_002` | proposition | Under Assumption~\ref{assump:shared-pfaffian-chain}, Proposition~\ref{prop:step-002-exact-chart}, Lemma~\ref{lem:step-003-measurable-charts}, and Federer Section 3.2.3, if \(j,m\) are fixed, then countable disjoint Lipschitz localization gives the exact extended-multiplicity area formula with \(J_N\Psi_j=\lvert\partial_\theta T_j\rvert\), and \(\lambda_N(\Psi_j(D_{j,m}))\le(2R)^{N-1}\int_{I\cap E_{j,m}}V_j\). | Converts velocity to image volume without injectivity, a localization factor, or an \(N=1\) loss. |
| `unit_003` | lemma | Under Lemma~\ref{lem:step-001-root-feasible}, Proposition~\ref{prop:step-002-borel-selector}, Lemma~\ref{lem:step-002-finite-exhaustion}, Proposition~\ref{prop:step-002-exact-chart}, and Lemma~\ref{lem:step-003-measurable-charts}, if \(I\subseteq\Theta\) is an interval, then \(S_I=\bigcup_{j=1}^N\bigcup_{m\ge1}\Psi_j(D_{j,m})\) exactly, and the fixed-\(j\) domains and images increase with \(m\). | Proves exact same-object coverage and supplies the measurable exhaustion limit. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root}, the accepted `step_001` and `step_002` conclusions, Proposition~\ref{prop:step-003-area-bound}, and Lemma~\ref{lem:step-003-exact-coverage}, if \(I\subseteq\Theta\) is an interval, then \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)\lvert I\rvert\), including empty sets, endpoints, ties, pivots approaching zero, tangent/multiple/infinite fibers, noninjective maps, and \(N=1\). | Closes monotone exhaustion and the finite disjoint-cell budget with no chart-count or boundary remainder. |

Atomic step = no. Descriptive-set measurability, the localized
extended-multiplicity area formula, exact event coverage, and limiting
disjoint-cell assembly are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: root feasibility and finite conditioning

- Source identity: the current accepted `step_001` proof and review have the
  complete SHA-256 values recorded in
  `## Allowed Assumptions And Dependencies`; the review's recorded proof
  identity matches the current proof.
- Restated statement in current notation: Accepted
  Lemma~\ref{lem:step-001-root-feasible} proves that \(K_R\) is compact,
  every \(\alpha\in[-R,R]^N\) root lies in \(K_R\), and the empty branch has
  no supported roots and has \(\Gamma_{\rm piv}=0\). Accepted
  Lemma~\ref{lem:step-001-pivot-margin} and
  Proposition~\ref{prop:step-001-fixed-family-bound} prove nonzero-pivot
  availability and \(\Gamma_{\rm piv}<\infty\) on the nonempty branch.
- Instantiated objects: exactly the current \(b,F,K_R,V_j\), coefficient
  cube, and \(\Gamma_{\rm piv}(b,F;R)\).
- Assumption discharge: the dependency and its matching accepted review
  discharge Assumptions~\ref{assump:shared-pfaffian-chain} and
  \ref{assump:no-forced-root}. This step consumes only the stated derived
  conclusions.
- Conclusion used: root feasibility, the empty branch, and finite
  conditioning before any graph-image argument.
- Nonoutputs: the dependency supplies no chart-image measurability, area
  formula, volume bound, density conversion, or polynomial Pfaffian-format
  control of \(\Gamma_{\rm piv}\).

### Accepted dependency: Borel exact charts

- Source identity: the current accepted `step_002` proof and review have the
  complete SHA-256 values recorded above, and the review's recorded proof
  identity matches the current proof.
- Restated statement in current notation: Accepted
  Proposition~\ref{prop:step-002-borel-selector} gives
  \(K_R=\bigsqcup_{j=1}^NE_j\), \(E_j\subseteq\{F_j\ne0\}\), and
  \(V_j=\min_iV_i\le\Gamma_{\rm piv}\) on \(E_j\). Accepted
  Lemma~\ref{lem:step-002-finite-exhaustion} gives
  \(E_{j,m}=E_j\cap\{|F_j|\ge1/m\}\uparrow E_j\), with every point entering
  a finite level. Accepted Proposition~\ref{prop:step-002-exact-chart}
  gives
  \[
  T_j(\theta,\beta)
  =-\frac{b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)}{F_j(\theta)}
  \]
  as the exact original \(j\)-th coefficient and proves
  \(|\partial_\theta T_j|\le V_j\le\Gamma_{\rm piv}\).
- Instantiated objects: the present cells, exhaustion, original coefficient
  order, beta cube, and affine root equation; no dependency notation is
  reinterpreted.
- Assumption discharge: Assumption~\ref{assump:shared-pfaffian-chain} and
  the accepted `step_001` interface are discharged in the dependency.
- Conclusion used: Borel disjoint cells, selected-pivot nonvanishing, exact
  finite exhaustion, zero-residual graph reconstruction, and velocity
  control.
- Nonoutputs: the dependency supplies no analytic-image theorem, Lebesgue
  measurability of images, area/multiplicity formula, event coverage, or
  volume estimate.

### Kechris Section 14, Proposition 14.4

- Source identity and stable locator: Alexander S. Kechris, *Classical
  Descriptive Set Theory*, Springer GTM 156, first edition (1995), Section
  14, Proposition 14.4, p. 86.
- Precise statement used: if \(X,Y\) are standard Borel spaces, \(G\subseteq
  X\) is analytic, and \(f:G\to Y\) is Borel, then \(f(G)\) is analytic.
  In particular, a Borel set is analytic, so the Borel image or coordinate
  projection of a Borel Euclidean set is analytic.
- Current-object mapping: \(X=\mathbb R^N\), \(G=D_{j,m}\) or \(D_j\),
  \(Y=\mathbb R^N\), and \(f=\Psi_j\) for chart images. For the event,
  \(X=\mathbb R\times\mathbb R^N\), \(G=Z_I\), \(Y=\mathbb R^N\), and
  \(f(\theta,\alpha)=\alpha\).
- Hypothesis discharge: Euclidean spaces and their Borel subspaces are
  standard Borel; Lemma~\ref{lem:step-003-measurable-charts} proves the
  domains and incidence set Borel and the chart restrictions Borel; the
  coefficient projection is continuous.
- Conclusion used: every \(\Psi_j(D_{j,m})\), every \(\Psi_j(D_j)\), and
  \(S_I\) are analytic.
- Nonoutputs: Proposition 14.4 gives no Lebesgue volume estimate, Jacobian
  formula, root-event coverage, chart selection, density conversion, or
  \(\Gamma_{\rm piv}\) bound.

### Kechris Section 21, Theorem 21.10

- Source identity and stable locator: Kechris, same edition, Section 21,
  Theorem 21.10, p. 155.
- Precise statement used: every analytic subset of a Polish space is
  universally measurable, meaning that it belongs to the completion of
  every Borel probability measure on that space.
- Current-object mapping: the analytic chart images and \(S_I\) are subsets
  of the Polish space \(\mathbb R^N\), and all lie in the bounded cube
  \(C=[-R,R]^N\).
- Hypothesis discharge: analyticity comes from Kechris Proposition 14.4.
  Since \(R>0\), the finite Borel measure
  \(\nu_C(B)=\lambda_N(B\cap C)/(2R)^N\) is a Borel probability measure.
  Universal \(\nu_C\)-measurability of a subset of \(C\) is exactly
  measurability in the completed Lebesgue sigma algebra on \(C\), and hence
  ordinary Lebesgue measurability in \(\mathbb R^N\).
- Conclusion used: every exhausted/full chart image and \(S_I\) is Lebesgue
  measurable.
- Nonoutputs: Theorem 21.10 gives no image-volume inequality, multiplicity
  control, density conversion, or fiber regularity.

### Federer Section 3.2.3

- Source identity and stable locator: Herbert Federer, *Geometric Measure
  Theory*, Springer Grundlehren 153 (1969), Section 3.2.3, p. 243.
- Precise statement used: if \(f:\mathbb R^m\to\mathbb R^n\) is Lipschitz,
  \(m\le n\), and \(D\subseteq\mathbb R^m\) is Lebesgue measurable, then
  \[
  \int_D J_mf(x)\,d\mathcal L^m(x)
  =
  \int_{\mathbb R^n}
  \operatorname{mult}(f,D,y)\,d\mathcal H^m(y),
  \]
  where
  \(\operatorname{mult}(f,D,y)
  =\#(D\cap f^{-1}(y))\in\mathbb N\cup\{+\infty\}\).
- Current-object mapping: \(m=n=N\), source coordinates are
  \((\theta,\beta)\), target coordinates are the original coefficient vector
  \(\alpha\), \(D\) is a Borel localization of \(D_{j,m}\), and
  \(f\) is a global Lipschitz extension agreeing there with \(\Psi_j\).
- Hypothesis discharge: Lemma~\ref{lem:step-003-measurable-charts} supplies
  a \(C^1\), hence locally Lipschitz, ambient chart and Borel domains;
  Proposition~\ref{prop:step-003-area-bound} constructs a countable
  disjoint localization and global Lipschitz extensions. Federer's
  normalized \(\mathcal H^N\) agrees with \(\mathcal L^N=\lambda_N\) in
  equal-dimensional Euclidean space, and the same proposition proves
  \(J_N\Psi_j=|\partial_\theta T_j|\).
- Conclusion used: the exact extended-multiplicity formula on
  \(D_{j,m}\), followed by
  \[
  \lambda_N(\Psi_j(D_{j,m}))
  \le\int_{D_{j,m}}J_N\Psi_j.
  \]
- Nonoutputs: Section 3.2.3 neither assumes nor outputs injectivity, finite
  fibers, regular values, transversality, simple roots, exact event coverage,
  the beta-cube factor, density conversion, chart-velocity control, or a
  \(\Gamma_{\rm piv}\) estimate.

### Countable Lipschitz localization and extension

- Source or name: separable-open-set localization, bounded-derivative
  Lipschitz control on convex balls, and the scalar McShane extension.
- Restated statement in current notation: an open subset of Euclidean space
  is covered by countably many rational balls \(\mathcal B_\ell\) with
  \(\overline{\mathcal B_\ell}\) compactly contained in the open set. A
  \(C^1\) map has bounded derivative and is Lipschitz on each such ball. If
  a scalar function \(u\) is \(L\)-Lipschitz on \(\mathcal B_\ell\), then
  \[
  \widehat u(x)=\inf_{z\in\mathcal B_\ell}\{u(z)+L|x-z|\}
  \]
  is a global \(L\)-Lipschitz extension. Extending coordinates separately
  gives a global Euclidean Lipschitz extension of a vector map.
- Instantiated objects: the ambient \(C^1\) insertion map
  \(\widetilde\Psi_j\), the nonzero-pivot open set \(O_j\), and the
  disjoint pieces
  \(D_{j,m}^{(\ell)}
  =D_{j,m}\cap(\mathcal B_\ell\setminus
  \bigcup_{r<\ell}\mathcal B_r)\).
- Assumption discharge: the ambient construction is proved in
  Lemma~\ref{lem:step-003-measurable-charts}. Equality with the extension
  holds on the open ball, so the derivative and Jacobian there are the
  original chart derivative and Jacobian.
- Conclusion used: a countable family of globally Lipschitz applications of
  Federer whose domain pieces partition \(D_{j,m}\) exactly.
- Nonoutputs: localization and extension do not supply an area identity or
  an image-volume estimate; those come only from Federer 3.2.3.

### Tonelli, continuity from below, and monotone convergence

- Source or name: Tonelli's theorem and the standard monotone measure
  theorems.
- Restated statement in current notation: nonnegative measurable functions
  on products of sigma-finite Lebesgue spaces may be integrated in either
  order; if \(G_m\uparrow G\) are measurable, then
  \(\lambda(G_m)\uparrow\lambda(G)\); and if \(h_m\uparrow h\) are
  nonnegative measurable, then \(\int h_m\uparrow\int h\).
- Instantiated objects: multiplicity counts over disjoint localization
  pieces, the indicator of \(D_{j,m}\), the nonnegative Jacobian, the nested
  images \(\Psi_j(D_{j,m})\), and the functions equal to \(V_j\) on
  \(I\cap E_{j,m}\) and zero elsewhere.
- Assumption discharge: all domains and images are measurable by
  Lemma~\ref{lem:step-003-measurable-charts}; the relevant functions are
  nonnegative and Borel; the beta cube has finite measure. For \(N=1\),
  the beta measure is \(\lambda_0\), with mass one on the empty tuple.
- Conclusion used: exact summation of localized multiplicities, beta
  integration, continuity from below, and the \(m\to\infty\) integral limit.
- Nonoutputs: these tools supply no chart coverage, derivative bound, or
  chart-disjointness; those are separately proved or inherited.

### Local result applications

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Lemma~\ref{lem:step-003-measurable-charts} | Under primitive \(C^1\) regularity, the accepted Borel chart interface, and the checked Kechris results, the exhausted/full domains are Borel, their insertion maps are ambient locally Lipschitz, all chart images are analytic/Lebesgue measurable, and \(S_I\) is analytic/Lebesgue measurable. | Supplies the regularity and measurability premises for the area formula, coverage, and limiting assembly. |
| Proposition~\ref{prop:step-003-area-bound} | Under the exact chart interface and Federer 3.2.3, countable disjoint localization gives the extended-multiplicity identity, \(J_N\Psi_j=\lvert\partial_\theta T_j\rvert\), and the exact finite-level beta-volume bound. | Supplies the finite-level inequality to Proposition~\ref{prop:step-003-volume-certificate}. |
| Lemma~\ref{lem:step-003-exact-coverage} | Under accepted root feasibility, partition, exhaustion, and exact charting, the countable graph-image union equals \(S_I\), and fixed-\(j\) domains/images are nested. | Supplies event identity and continuity from below to Proposition~\ref{prop:step-003-volume-certificate}. |
| Proposition~\ref{prop:step-003-volume-certificate} | Under the preceding area and coverage results and the accepted disjoint-cell velocity interface, the exhaustion and finite chart sum give the literal coefficient-volume certificate. | Supplies the exact target-row output to target assembly and downstream `step_004`. |

## Local Derivation

### unit_001: lemma

**Lemma (Analytic and measurable exhausted coefficient charts).**
\(\label{lem:step-003-measurable-charts}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain}, the accepted
conclusions of Proposition~\ref{prop:step-002-borel-selector},
Lemma~\ref{lem:step-002-finite-exhaustion}, and
Proposition~\ref{prop:step-002-exact-chart}, and Kechris, *Classical
Descriptive Set Theory*, Section 14, Proposition 14.4 and Section 21,
Theorem 21.10, fix an interval \(I\subseteq\Theta\). For
\(j\in\{1,\ldots,N\}\), order the nonpivot coordinates as
\[
\beta=(\beta_1,\ldots,\beta_{j-1},\beta_{j+1},\ldots,\beta_N)
\in B_j:=[-R,R]^{N-1}
\]
and define, in original coefficient order,
\[
\Psi_j(\theta,\beta)
=
(\beta_1,\ldots,\beta_{j-1},
T_j(\theta,\beta),
\beta_{j+1},\ldots,\beta_N).
\tag{1}
\]
For \(m\ge1\), let
\[
D_{j,m}
=
\{(\theta,\beta):
\theta\in I\cap E_{j,m},\ \beta\in B_j,\
\lvert T_j(\theta,\beta)\rvert\le R\},
\tag{2}
\]
and define \(D_j\) by replacing \(E_{j,m}\) in (2) with \(E_j\). Then
\(D_{j,m}\) and \(D_j\) are Borel subsets of \(\mathbb R^N\);
\(\Psi_j\) is the restriction of a \(C^1\), hence locally Lipschitz, map on
an ambient nonzero-pivot open set; and every
\(\Psi_j(D_{j,m})\), every \(\Psi_j(D_j)\), and
\[
S_I
=
\{\alpha\in[-R,R]^N:
\exists\theta\in I,\ b(\theta)+\langle\alpha,F(\theta)\rangle=0\}
\tag{3}
\]
is analytic and Lebesgue measurable. These conclusions include actual
interval endpoints, closed coefficient-cube boundaries, empty sets, and the
\(N=1\) convention \(B_1=[-R,R]^0=\{()\}\).

Proof / justification:
Write \(\Theta=[\theta_-,\theta_+]\). Under the setting's
endpoint-inclusive \(C^1\) convention, every \(C^1\) function \(g\) on a
nondegenerate \(\Theta\) has the explicit \(C^1\) extension
\[
\widetilde g(x)
=
\begin{cases}
g(\theta_-)+g'(\theta_-)(x-\theta_-),&x<\theta_-,\\
g(x),&\theta_-\le x\le\theta_+,\\
g(\theta_+)+g'(\theta_+)(x-\theta_+),&x>\theta_+.
\end{cases}
\tag{4}
\]
The values and first derivatives match at both endpoints. If
\(\theta_-=\theta_+\), use the single affine expression
\(g(\theta_-)+g'(\theta_-)(x-\theta_-)\). Apply (4) to \(b\) and every
\(F_i\). These extensions are proof-local and preserve all original values
and derivatives on \(\Theta\).

For each \(j\), let
\[
O_j
=
\{(\theta,\beta)\in\mathbb R\times\mathbb R^{N-1}:
\widetilde F_j(\theta)\ne0\}.
\]
Using the extended functions in the quotient defining \(T_j\) gives a
\(C^1\) function \(\widetilde T_j\) on \(O_j\); insertion in (1) gives a
\(C^1\) map \(\widetilde\Psi_j:O_j\to\mathbb R^N\). On the original
charts these maps equal \(T_j,\Psi_j\). This construction supplies ambient
local Lipschitzness even at endpoints and uses no lower bound on one pivot
over all of \(E_j\).

Accepted Lemma~\ref{lem:step-002-finite-exhaustion} makes \(E_{j,m}\)
Borel, and accepted Proposition~\ref{prop:step-002-borel-selector} makes
\(E_j\) Borel and places both inside \(\{F_j\ne0\}\) after intersection
with the appropriate cell. Every interval is Borel, and \(B_j\) is closed.
Thus the base products in (2) and in \(D_j\) are Borel subsets of \(O_j\).
The final constraint is the inverse image of the closed interval
\([-R,R]\) under the continuous ambient map \(\widetilde T_j\).
Consequently \(D_{j,m}\) and \(D_j\) are Borel in \(\mathbb R^N\), and
their chart restrictions are Borel.

Apply Kechris Proposition 14.4 with the exact mappings recorded in
`## Cited Result Applications`. Each Borel domain is analytic, and its
Borel image under \(\Psi_j\) is analytic. Hence every exhausted and full
chart image in the statement is analytic.

For the event, define the incidence set
\[
Z_I
=
\{(\theta,\alpha)\in I\times[-R,R]^N:
b(\theta)+\langle\alpha,F(\theta)\rangle=0\}.
\tag{5}
\]
The product \(I\times[-R,R]^N\) is Borel, and affine evaluation is
continuous on \(\Theta\times\mathbb R^N\), so \(Z_I\) is Borel in
\(\mathbb R\times\mathbb R^N\). Its continuous coefficient projection is
exactly \(S_I\). A second application of Kechris Proposition 14.4 therefore
makes \(S_I\) analytic, independently of the coverage identity proved later.

All these analytic sets lie in \(C=[-R,R]^N\). Kechris Theorem 21.10
applied to the Borel probability
\(\nu_C(B)=\lambda_N(B\cap C)/(2R)^N\) places each set in the
\(\nu_C\)-completion. Since it is a subset of \(C\), this is exactly
Lebesgue-completion measurability on the cube, hence Lebesgue measurability
in \(\mathbb R^N\).

No boundary was removed: (2) uses the actual interval \(I\), the closed beta
cube, and \(|T_j|\le R\), including equality. When \(N=1\),
\(\mathbb R^0\) is the one-point Euclidean space, so the source dimension
remains \(1=N\), and the same Borel, analytic, and measurability arguments
apply. Empty domains and images are Borel and analytic as well.

### unit_002: proposition

**Proposition (Extended-multiplicity area bound in original coordinates).**
\(\label{prop:step-003-area-bound}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain},
Proposition~\ref{prop:step-002-exact-chart},
Lemma~\ref{lem:step-003-measurable-charts}, and Federer, *Geometric Measure
Theory*, Section 3.2.3, use domain-coordinate order
\[
(\theta,\beta_1,\ldots,\beta_{j-1},\beta_{j+1},\ldots,\beta_N)
\]
and target-coordinate order \((\alpha_1,\ldots,\alpha_N)\). For every
\(j\) and \(m\ge1\), countable disjoint Lipschitz localization gives
\[
\int_{D_{j,m}}J_N\Psi_j\,d\lambda_N
=
\int_{\mathbb R^N}
\operatorname{mult}(\Psi_j,D_{j,m},a)\,d\lambda_N(a),
\tag{6}
\]
where the multiplicity takes values in
\(\mathbb N\cup\{+\infty\}\), and
\[
\det D\Psi_j
=(-1)^{j-1}\partial_\theta T_j,
\qquad
J_N\Psi_j=|\partial_\theta T_j|.
\tag{7}
\]
Consequently,
\[
\lambda_N(\Psi_j(D_{j,m}))
\le
\int_{D_{j,m}}|\partial_\theta T_j(\theta,\beta)|\,d\theta\,d\beta
\le
(2R)^{N-1}\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta.
\tag{8}
\]
No injectivity, finite-fiber, regular-value, transversality, or simple-root
condition is required. For \(N=1\), (7) is the ordinary derivative and (8)
uses \(\lambda_0(B_1)=1=(2R)^0\).

Proof / justification:
For \(i\ne j\), the \(\alpha_i\)-component of \(\Psi_j\) is \(\beta_i\),
whereas the \(\alpha_j\)-component is \(T_j\). Let \(\Pi_j\) move target row
\(j\) to the first row while preserving the order of the other rows. It
uses \(j-1\) transpositions, so \(\det\Pi_j=(-1)^{j-1}\). Direct
differentiation on \(O_j\) gives
\[
\Pi_jD\widetilde\Psi_j
=
\begin{pmatrix}
\partial_\theta\widetilde T_j&
\nabla_\beta\widetilde T_j\\
0&I_{N-1}
\end{pmatrix}.
\]
Thus
\(\det D\Psi_j=(-1)^{j-1}\partial_\theta T_j\) on the original chart.
The beta derivatives occupy only the upper-right block and do not alter the
determinant. This proves (7).

We next discharge Federer's global-Lipschitz hypothesis without paying a
localization factor. Because \(O_j\) is open and Euclidean, enumerate
rational balls \(\mathcal B_\ell\) whose closures are compactly contained
in \(O_j\) and whose union is \(O_j\). The derivative of the \(C^1\) map
\(\widetilde\Psi_j\) is bounded on each
\(\overline{\mathcal B_\ell}\), so convexity of the ball and the mean-value
inequality make its restriction to \(\mathcal B_\ell\) Lipschitz. Define
the disjoint Borel partition
\[
\mathcal L_\ell
=
\mathcal B_\ell\setminus\bigcup_{r<\ell}\mathcal B_r
\quad(\ell\ge1)
\]
of \(O_j\), and set
\(D_{j,m}^{(\ell)}=D_{j,m}\cap\mathcal L_\ell\).

For each coordinate of
\(\widetilde\Psi_j|_{\mathcal B_\ell}\), the McShane formula restated above
gives a global scalar Lipschitz extension; collecting the coordinates gives
a global Lipschitz map
\(\widehat\Psi_{j,\ell}:\mathbb R^N\to\mathbb R^N\) equal to
\(\widetilde\Psi_j\) throughout the open ball \(\mathcal B_\ell\).
Therefore its derivative and Jacobian on \(D_{j,m}^{(\ell)}\) equal those
in (7). Federer 3.2.3 applies to each Borel \(D_{j,m}^{(\ell)}\):
\[
\int_{D_{j,m}^{(\ell)}}J_N\Psi_j\,d\lambda_N
=
\int_{\mathbb R^N}
\#(D_{j,m}^{(\ell)}\cap\Psi_j^{-1}(a))\,d\lambda_N(a).
\tag{9}
\]
The \(D_{j,m}^{(\ell)}\) partition \(D_{j,m}\). Summing (9) and using
Tonelli for the nonnegative extended counts gives
\[
\begin{aligned}
\int_{D_{j,m}}J_N\Psi_j\,d\lambda_N
&=\int_{\mathbb R^N}
\sum_{\ell\ge1}
\#(D_{j,m}^{(\ell)}\cap\Psi_j^{-1}(a))\,d\lambda_N(a)\\
&=\int_{\mathbb R^N}
\#(D_{j,m}\cap\Psi_j^{-1}(a))\,d\lambda_N(a),
\end{aligned}
\]
which is (6). Thus the countable localization is an exact domain partition:
it introduces neither a localization count nor an inequality loss.

By Lemma~\ref{lem:step-003-measurable-charts}, the chart image is Lebesgue
measurable. Its multiplicity in (6) is at least one at every image point.
Hence (6)--(7) imply the first inequality in (8).

For the second inequality, apply accepted
Proposition~\ref{prop:step-002-exact-chart} and Tonelli:
\[
\begin{aligned}
\int_{D_{j,m}}J_N\Psi_j\,d\theta\,d\beta
&=
\int_{I\cap E_{j,m}}\int_{B_j}
\mathbf 1_{\{|T_j(\theta,\beta)|\le R\}}
\lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta\\
&\le
\int_{I\cap E_{j,m}}\int_{B_j}V_j(\theta)\,d\beta\,d\theta\\
&=
\lambda_{N-1}(B_j)
\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta\\
&=
(2R)^{N-1}
\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta.
\end{aligned}
\tag{10}
\]
For \(N=1\), the inner integral is over the unique empty tuple with
zero-dimensional mass one, so no exceptional convention or factor occurs.

The multiplicity mechanism handles all fiber pathologies in the required
direction. At a represented root
\(a=\Psi_j(\theta,\beta)\), differentiate the exact graph identity
\[
b+\sum_{i\ne j}\beta_iF_i+T_jF_j=0
\]
with \(\beta\) fixed. This gives
\[
\partial_\theta T_j(\theta,\beta)
=
-\frac{b'(\theta)+\sum_{i\ne j}\beta_iF_i'(\theta)
+T_j(\theta,\beta)F_j'(\theta)}{F_j(\theta)}
=
-\frac{\phi_a'(\theta)}{F_j(\theta)}.
\tag{11}
\]
Thus a tangent or differentiably multiple root is a critical preimage.
Applying (8) before its last inequality to the Borel critical subset
\(\{\partial_\theta T_j=0\}\cap D_{j,m}\) shows that its image has zero
\(N\)-volume. Distinct roots are multiple preimages. At each finite
exhaustion level the multiplicity may be finite or \(+\infty\); an infinite
or interval-many root fiber is handled either by this extended value at a
level or by the later increasing exhaustion. Noninjectivity only increases
the multiplicity side and is never used as an inverse change-of-variables
hypothesis.

### unit_003: lemma

**Lemma (Exact exhausted graph-image coverage).**
\(\label{lem:step-003-exact-coverage}\)

Statement:
Under accepted Lemma~\ref{lem:step-001-root-feasible},
Proposition~\ref{prop:step-002-borel-selector},
Lemma~\ref{lem:step-002-finite-exhaustion},
Proposition~\ref{prop:step-002-exact-chart}, and
Lemma~\ref{lem:step-003-measurable-charts}, if
\(I\subseteq\Theta\) is an interval, then
\[
D_{j,m}\uparrow D_j,
\qquad
\Psi_j(D_{j,m})\uparrow\Psi_j(D_j),
\tag{12}
\]
and
\[
S_I
=
\bigcup_{j=1}^N\Psi_j(D_j)
=
\bigcup_{j=1}^N\bigcup_{m=1}^{\infty}\Psi_j(D_{j,m}).
\tag{13}
\]
The equality includes actual interval endpoints, coefficient-cube
boundaries, least-index ties, pivots approaching zero, and coefficients with
one, multiple, or infinitely many roots. Empty \(K_R\), empty cells, and
\(N=1\) are included.

Proof / justification:
Only the condition \(\theta\in E_{j,m}\) in (2) depends on \(m\).
Accepted Lemma~\ref{lem:step-002-finite-exhaustion} gives
\(E_{j,m}\uparrow E_j\), while \(I,B_j,T_j\), and the closed condition
\(|T_j|\le R\) stay fixed. Hence \(D_{j,m}\uparrow D_j\). A fixed map sends
an increasing union to the increasing union of its images, proving (12).

Take \(a\in S_I\) and choose any witness \(\theta\in I\) with
\(\phi_a(\theta)=0\). Accepted
Lemma~\ref{lem:step-001-root-feasible} gives \(\theta\in K_R\).
Accepted Proposition~\ref{prop:step-002-borel-selector} assigns it to one
and only one least-index cell \(E_j\) and gives \(F_j(\theta)\ne0\).
Set \(\beta=a_{-j}\) in increasing original-coordinate order. Then
\(\beta\in B_j\), and the zero-residual identity in accepted
Proposition~\ref{prop:step-002-exact-chart} gives
\(T_j(\theta,\beta)=a_j\). Therefore
\((\theta,\beta)\in D_j\) and \(\Psi_j(\theta,\beta)=a\).
The finite-exhaustion lemma places the nonzero selected pivot in some finite
\(E_{j,m}\), so \(a\) belongs to the exhausted union in (13).

Conversely, suppose
\(a=\Psi_j(\theta,\beta)\) for \((\theta,\beta)\in D_j\).
The beta coordinates lie in \(B_j\), and \(|T_j|\le R\), so
\(a\in[-R,R]^N\) coordinate by coordinate. Also
\(\theta\in I\cap E_j\), and accepted
Proposition~\ref{prop:step-002-exact-chart} gives
\[
b(\theta)+\langle a,F(\theta)\rangle=0.
\]
Thus \(a\in S_I\), proving both equalities in (13).

The argument uses a root only as an existential witness, never as a unique
or simple root. A tie is assigned to exactly one parameter cell, although
chart images may overlap for different roots; overlap is harmless because
coverage is a set identity. Arbitrarily small selected pivots enter a finite
level that may depend on the root, leaving no denominator boundary residual.
All cube inequalities are closed, and the actual interval \(I\) is used, so
endpoints remain covered. If \(K_R=\varnothing\), accepted root feasibility
makes both sides empty. For \(N=1\), the proof uses the unique empty beta
tuple and the scalar insertion map.

### unit_004: proposition

**Proposition (Root-event coefficient-volume certificate).**
\(\label{prop:step-003-volume-certificate}\)

Statement:
Under Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root}, the accepted conclusions of
Lemma~\ref{lem:step-001-root-feasible},
Proposition~\ref{prop:step-001-fixed-family-bound},
Proposition~\ref{prop:step-002-borel-selector},
Lemma~\ref{lem:step-002-finite-exhaustion}, and
Proposition~\ref{prop:step-002-exact-chart}, together with
Proposition~\ref{prop:step-003-area-bound} and
Lemma~\ref{lem:step-003-exact-coverage}, imply for every interval
\(I\subseteq\Theta\) that
\[
\lambda_N(S_I)
\le
(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|.
\tag{14}
\]
The result includes empty \(K_R\), empty cells, zero-length intervals,
\(N=1\), cube and interval boundaries, ties, pivots approaching zero,
tangent/multiple/infinite fibers, and noninjective chart maps. There is no
chart-count, localization-count, multiplicity, or boundary factor.

Proof / justification:
Fix \(j\). Lemma~\ref{lem:step-003-exact-coverage} gives measurable sets
\(\Psi_j(D_{j,m})\uparrow\Psi_j(D_j)\). Continuity from below and
Proposition~\ref{prop:step-003-area-bound} yield
\[
\begin{aligned}
\lambda_N(\Psi_j(D_j))
&=
\lim_{m\to\infty}\lambda_N(\Psi_j(D_{j,m}))\\
&\le
(2R)^{N-1}
\lim_{m\to\infty}
\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta.
\end{aligned}
\tag{15}
\]
Define \(h_{j,m}:\Theta\to[0,+\infty)\) to equal \(V_j\) on
\(I\cap E_{j,m}\) and zero off that set. This piecewise definition avoids
any \(0\cdot(+\infty)\) convention. Accepted
Proposition~\ref{prop:step-002-borel-selector} makes \(V_j\) finite on
\(E_j\), and accepted Lemma~\ref{lem:step-002-finite-exhaustion} gives
\[
h_{j,m}\uparrow h_j,
\]
where \(h_j\) equals \(V_j\) on \(I\cap E_j\) and zero elsewhere. These
functions are nonnegative and Borel. Monotone convergence turns (15) into
\[
\lambda_N(\Psi_j(D_j))
\le
(2R)^{N-1}
\int_{I\cap E_j}V_j(\theta)\,d\theta.
\tag{16}
\]
Thus every pivot that approaches zero is recovered by exact monotone
exhaustion; no \(m\)-dependent constant or boundary term remains.

Exact coverage, finite image subadditivity, and (16) give
\[
\lambda_N(S_I)
\le
(2R)^{N-1}
\sum_{j=1}^N\int_{I\cap E_j}V_j(\theta)\,d\theta.
\tag{17}
\]
On \(E_j\), the accepted selector conclusion gives
\(V_j=\min_iV_i\le\Gamma_{\rm piv}(b,F;R)\). Since the \(E_j\) are pairwise
disjoint and their union is \(K_R\),
\[
\begin{aligned}
\sum_{j=1}^N\int_{I\cap E_j}V_j(\theta)\,d\theta
&\le
\Gamma_{\rm piv}(b,F;R)
\sum_{j=1}^N|I\cap E_j|\\
&=
\Gamma_{\rm piv}(b,F;R)|I\cap K_R|\\
&\le
\Gamma_{\rm piv}(b,F;R)|I|.
\end{aligned}
\tag{18}
\]
This is the exact disjoint parameter-cell budget. Although chart images may
overlap, the chart sum spends only the one-copy length
\(|I\cap K_R|\), not \(N|I|\). Combining (17)--(18) proves (14).

If \(K_R=\varnothing\), accepted root feasibility makes \(S_I\) and every
chart set empty and gives \(\Gamma_{\rm piv}=0\). Empty cells contribute
zero. If \(|I|=0\), (18) makes every chart integral zero, so (14) correctly
asserts that the corresponding coefficient event is Lebesgue-null even if
the interval contains a root parameter. For \(N=1\), there is one cell,
\((2R)^{N-1}=1\), and beta volume is one. Tangent, multiple, infinite, and
noninjective fibers were included in the extended-multiplicity formula
before exhaustion and chart summation, so none creates a root-count or
boundary remainder.

## Target-Step Assembly

Accepted Lemma~\ref{lem:step-001-root-feasible} first restricts every
cube-supported root to \(K_R\) and closes the empty branch. Accepted
Proposition~\ref{prop:step-002-borel-selector},
Lemma~\ref{lem:step-002-finite-exhaustion}, and
Proposition~\ref{prop:step-002-exact-chart} then supply the unique disjoint
Borel parameter cells, selected-pivot nonvanishing, finite-level entry, the
exact original coefficient, and the velocity cap before any measure
argument.

Lemma~\ref{lem:step-003-measurable-charts} instantiates Kechris Section 14,
Proposition 14.4 and Section 21, Theorem 21.10 to prove that every exhausted
and full chart image and \(S_I\) are analytic and Lebesgue measurable. Its
ambient extension also handles actual endpoints without deleting a
lower-dimensional boundary.

Proposition~\ref{prop:step-003-area-bound} computes the signed determinant
in the exact source and target coordinate orders, uses a countable disjoint
Lipschitz localization to instantiate Federer Section 3.2.3, and preserves
the full extended-multiplicity identity. It then uses Tonelli and the
accepted velocity inequality to produce the literal beta factor
\((2R)^{N-1}\). Noninjective, tangent, multiple, and infinite fibers require
no extra premise or factor.

Lemma~\ref{lem:step-003-exact-coverage} proves
\[
S_I=\bigcup_{j=1}^N\bigcup_{m\ge1}\Psi_j(D_{j,m})
\]
in the original coefficient space and proves fixed-chart nestedness.
Proposition~\ref{prop:step-003-volume-certificate} then applies continuity
from below and monotone convergence and uses the exact identity
\[
\sum_{j=1}^N|I\cap E_j|
=|I\cap K_R|
\le|I|
\]
to obtain
\[
\lambda_N(S_I)
\le
(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|.
\]
These four named local results prove every clause of the accepted
`step_003` row. The only exported mathematical interface is the measurable
root event and exact coefficient-volume certificate consumed by
`step_004`.

## Explicit Rate Audit

- Exposed variables: \(N,R,\Gamma_{\rm piv}(b,F;R)\), and \(|I|\). The
  exact output is \((2R)^{N-1}\Gamma_{\rm piv}|I|\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on:
  \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\), the deterministic family,
  \(N,R,I\), a selected index, a pivot margin, exhaustion level, root
  multiplicity, localization count, chart count, or an unrecorded Pfaffian
  scale.
- Fixed quantities: the deterministic family \((b,F)\), its exact common
  Pfaffian presentation, compact \(\Theta\), \(N\), and \(R\) are fixed;
  \(I\) is arbitrary within the stated interval scope.
- Probability mode: deterministic Lebesgue coefficient volume. No
  probability law, expectation, confidence parameter, independence
  condition, or conditioning event is used.
- Horizon mode: static and valid for every interval \(I\subseteq\Theta\).
  The limit \(m\to\infty\) is an exact monotone set exhaustion, not a
  horizon, stopping-time, or asymptotic theorem mode.
- Norm mode: Euclidean \(N\)-dimensional Lebesgue measure in original
  coefficient coordinates, one-dimensional Lebesgue length in \(\theta\),
  scalar absolute chart velocity, coordinatewise cube bounds, and the
  accepted \(\ell_1\) feasibility convention in \(K_R\).
- Admissibility conditions and auxiliary tolerances: \(N\ge1\), \(R>0\),
  Assumptions~\ref{assump:shared-pfaffian-chain} and
  \ref{assump:no-forced-root}, and the two accepted dependency interfaces.
  The threshold \(1/m\) disappears by exact union and monotone convergence;
  it is not a theorem-facing tolerance.
- Term absorption or simplification inequalities: no term is dropped or
  absorbed. Exactly
  \[
  \lambda_{N-1}([-R,R]^{N-1})=(2R)^{N-1},
  \qquad
  \lambda_0([-R,R]^0)=1,
  \]
  and
  \[
  \sum_j|I\cap E_j|=|I\cap K_R|\le|I|
  \]
  are used. Countable localization is an exact disjoint domain partition,
  so it contributes no numerical factor.
- Probability conversion: None; density domination belongs to
  `step_004`.
- Contribution to any Rate Specialization Bridge: this output is the exact
  input to
  \(\Pr(S_I)\le\kappa\lambda_N(S_I)\), with no multiplicity, boundary,
  localization, or chart-count factor.
- Baseline-reduction check, if applicable: each \(\Psi_j\) inserts \(T_j\)
  into the original \(N\)-coordinate coefficient vector and changes neither
  dimension nor measure, preserving the exact affine-monic specialization
  assigned to `step_006`. For \(N=1\), the result reduces exactly to
  \(\lambda_1(S_I)\le\Gamma_{\rm piv}|I|\), with no conservative loss.

## Blockers

None.

## Notation And Assumption Notes

- Binding-input audit: before use, the current files were verified to have
  SHA-256 values
  `91119d2600ee2f787eb873796569ab53e35201e499bf81658d8a0bc1a8e7c79e`
  for `setting.md`,
  `aabcf6f6302d5cfab51cc1495d683cfa353390df7bf0fa81c3beecfcb076d108`
  for `proof_sketch.md`,
  `56d6b16524f0935fbfeee3802f4f6fe748cf0eebfdcfcdf1a66ddce763ebc88c`
  for `proof_sketch_review.md`,
  `fcb7dc635362de5be5c61bbaf858c09ed9795863e8cdd5598247666d45b178b0`
  for `global_proof.md`,
  `51006b10c890f501de7e1f6dd672a2ce07502b82251fcd58bbeef81ea006805b`
  for `global_proof_review.md`, and the four complete accepted dependency
  digests recorded above. The sketch review, global review, and both
  dependency reviews record `ACCEPTED`, with matching reviewed-proof
  identities.
- Public-facing objects: \(S_I,N,R,\Gamma_{\rm piv}(b,F;R)\), and the
  coefficient-volume certificate retain their setting/sketch meanings. Only
  the measurable event and final volume bound are exported.
- Appendix-local objects: \(B_j,\Psi_j,D_{j,m},D_j\) package the
  setting-defined \(E_j,E_{j,m},T_j\) interface for the area proof. They are
  not theorem assumptions or new rate parameters.
- Proof-local objects: the extensions
  \(\widetilde b,\widetilde F_i,\widetilde T_j,\widetilde\Psi_j\), open
  sets \(O_j\), rational balls \(\mathcal B_\ell\), disjoint layers
  \(\mathcal L_\ell\), localized domains \(D_{j,m}^{(\ell)}\), global
  extensions \(\widehat\Psi_{j,\ell}\), row permutation \(\Pi_j\),
  multiplicity operator \(\operatorname{mult}\), endpoints
  \(\theta_-,\theta_+\), coefficient cube \(C\), normalized measure
  \(\nu_C\), incidence set \(Z_I\), critical set, and monotone functions
  \(h_{j,m},h_j\) discharge source hypotheses and bookkeeping. None is
  exported.
- Helper-object surface classification: \(S_I\) and the bound are
  `public-facing`; \(B_j,\Psi_j,D_{j,m},D_j\) are `appendix-local`; all
  remaining new objects listed above are `proof-local`.
- Constant provenance: \(N,R,\Gamma_{\rm piv}\) are setting-defined, with
  finiteness supplied by accepted `step_001`. The integer \(m\ge1\)
  indexes the accepted exhaustion. Rational-ball Lipschitz constants exist
  by bounded derivatives on compact closures and disappear inside the exact
  area identity. No new theorem-facing constant, radius, margin, threshold,
  rate, or bounded quantity is introduced.
- Assumption provenance: root feasibility, the empty branch, pivot
  availability, and fixed-family finiteness are accepted derived outputs of
  `step_001`. Borel cells, selected nonvanishing, exhaustion, exact graph
  algebra, and velocity control are accepted derived outputs of
  `step_002`. Domain/image/event measurability, local Lipschitzness, the
  full Jacobian, exact coverage, exhaustion closure, and the no-chart-count
  identity are proved in this step. No generated event, local-validity
  condition, recurrence, stability property, boundedness fact, or invariant
  is treated as primitive.
- Boundary and degeneracy audit: actual interval endpoints and closed cube
  faces stay in the domains; ties use the accepted least index; selected
  pivots approaching zero enter some finite exhaustion level; empty
  \(K_R\), empty \(I\), and empty cells give empty images; zero-length
  intervals give zero volume; tangent roots form a critical image of zero
  volume; multiple, infinite, and interval-many fibers are allowed by
  extended multiplicity; noninjective charts need no inverse; and \(N=1\)
  uses \(\lambda_0(B_1)=1\).
- Cited-source boundary: Kechris Proposition 14.4 supplies analyticity only;
  Kechris Theorem 21.10 supplies completed measurability only; Federer 3.2.3
  supplies the multiplicity identity and image-measure inequality only.
  Coverage, Jacobian computation, beta volume, density conversion, chart
  disjointness, and \(\Gamma_{\rm piv}\) control are not attributed to those
  sources.
- Diagnostic boundary: the current `global_proof.md` was consulted only
  after its paired current `global_proof_review.md` was verified
  `ACCEPTED`. Its step-relevant planning suggestion was the four-part
  decomposition into analytic measurability, localized area control, exact
  coverage, and monotone no-chart-loss assembly. Every proof claim above was
  independently derived from `setting.md`, the accepted sketch row, the
  current accepted dependencies, and the three checked source statements.
  The diagnostic was not used as evidence, a cited result, an assumption
  source, or authority to change the target claim.
- Freshness boundary: the archived sketch-attempt-1 same-step proof/review
  were consulted only as a diagnostic for possible hidden boundary cases.
  No stale proof claim, acceptance, dependency identity, artifact identity,
  or diagnostic identity is used as current evidence or copied into this
  artifact.
- Progress boundary: this proof establishes only the accepted fixed-family
  `material_partial` coefficient-volume certificate. It neither claims nor
  implies polynomial general-instance control of \(\Gamma_{\rm piv}\) in
  \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or any other
  Pfaffian-format descriptors.
