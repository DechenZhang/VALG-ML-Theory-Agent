# Proof Step

## Step Identity

- Sketch attempt: 3
- Step ID: `step_003`
- Unit attempt: 1
- Binding `idea.md` SHA-256:
  `5743443042dfc9c20be52d5e563ebc263b0a4a3454c7eb30034c2b811123e836`
- Binding `setting.md` SHA-256:
  `91119d2600ee2f787eb873796569ab53e35201e499bf81658d8a0bc1a8e7c79e`
- Accepted `proof_sketch.md` SHA-256:
  `32023800de7b27eca85577e615139a5658106b35406627061879396bb35bf906`
- Accepted `proof_sketch_review.md` SHA-256:
  `3b626916a9e03b7539ee88961ad973ee2bbe2d6c3649a5bac51e8028cac5335e`
- Accepted diagnostic `global_proof.md` SHA-256:
  `80b090266336b304ff4ca0184709b45eff448c3f1758efdaa09d923c8dbfaee8`
- Accepted diagnostic `global_proof_review.md` SHA-256:
  `24ad84083a200f89cc8c7973ee168783bca0c81c3432ac73e24f50e4606184dd`
- Accepted dependency `step_001` proof SHA-256:
  `6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838`
- Accepted dependency `step_001` review SHA-256:
  `c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0`
- Accepted dependency `step_002` proof SHA-256:
  `4cd4c582971538e2b91f59cd34e028b50f42db4eb0f244eb85cf0bbfe2f5b512`
- Accepted dependency `step_002` review SHA-256:
  `810be823d71c36ef3b7214beee367f298e34175c1e6e183ba7da54a2ef18c3f7`

## Target Step Claim

- Intended claim: For
  \[
  S_I=\{\alpha\in[-R,R]^N:\exists\theta\in I,\
  \phi_\alpha(\theta)=0\},
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
- Technical challenge: Verifying analytic-set and area-formula interfaces
  before controlling countable/finite union volume without injectivity or
  chart-count loss.
- Intended proof tool or cited result: Kechris, *Classical Descriptive Set
  Theory*, GTM 156, first edition (1995), Section 14, Proposition 14.4
  (Borel images/projections are analytic) and Section 21, Theorem 21.10
  (analytic sets are universally/Lebesgue measurable); Federer,
  *Geometric Measure Theory*, Grundlehren 153 (1969), Section 3.2.3
  (equal-dimensional Lipschitz area formula with extended multiplicity);
  continuity from below, monotone convergence, and Tonelli. These cited
  results do not require or output injectivity, finite fibers, regular values,
  transversality, simple roots, root coverage, chart bounds, density
  conversion, or \(\Gamma_{\rm piv}\) control.
- Output target: Only the measurable root-event and coefficient-volume
  certificate; no finiteness export.
- Rate objective: R1: prove the literal factor \((2R)^{N-1}\) and
  disjoint-length identity, with no multiplicity or boundary remainder.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic setting fixes \(N\ge1\), \(R>0\), a compact interval
    \(\Theta\), the functions \(b,F_1,\ldots,F_N\), the affine family
    \(\phi_\alpha=b+\langle\alpha,F\rangle\), and the definitions of
    \(K_R,U_j,V_j,\Gamma_{\rm piv},E_j,E_{j,m}\), and \(T_j\).
  - Assumption~\ref{assump:shared-pfaffian-chain}: this step directly uses
    only its primitive conclusion that \(b,F_1,\ldots,F_N\) are \(C^1\) on
    \(\Theta\). No Pfaffian-format estimate is used.
  - Assumption~\ref{assump:no-forced-root}: this primitive condition was
    discharged by accepted `step_001` to derive supported-root feasibility
    and legal pivot availability. It is not replaced here by a generated
    margin or transversality condition.
- Derived invariants supplied by accepted dependencies:
  - Accepted `step_001` proof
    `6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838`,
    certified by accepted review
    `c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0`,
    proves that \(K_R\) is compact, every root with
    \(\alpha\in[-R,R]^N\) lies in \(K_R\), the supported-root event is empty
    when \(K_R=\varnothing\), and a legal pivot exists on nonempty \(K_R\).
    It separately proves fixed-family finiteness of
    \(\Gamma_{\rm piv}(b,F;R)\).
  - Accepted `step_002` proof
    `4cd4c582971538e2b91f59cd34e028b50f42db4eb0f244eb85cf0bbfe2f5b512`,
    certified by accepted review
    `810be823d71c36ef3b7214beee367f298e34175c1e6e183ba7da54a2ef18c3f7`,
    proves that \(E_1,\ldots,E_N\) are a pairwise disjoint Borel partition
    of \(K_R\), \(F_j\ne0\) and
    \(V_j=\min_iV_i\le\Gamma_{\rm piv}\) on \(E_j\),
    \(E_{j,m}\uparrow E_j\), and \(T_j\) is the exact Borel
    original-coordinate chart with
    \[
    |\partial_\theta T_j(\theta,\beta)|
    \le V_j(\theta)\le\Gamma_{\rm piv}(b,F;R).
    \]
- Local conditional hypotheses:
  - A fixed interval \(I\subseteq\Theta\), chart index \(j\), exhaustion
    index \(m\), point \(\theta\), and nonpivot vector \(\beta\) appear only
    as quantified local inputs.
  - Membership in \(I,E_j,E_{j,m}\), the beta cube, and the range constraint
    \(|T_j|\le R\) are domain conditions proved or checked below, not
    theorem-facing assumptions.
  - \(K_R=\varnothing\) and \(K_R\ne\varnothing\) are exhaustive branches;
    neither is assumed globally.

Assumption~\ref{assump:joint-density-cap}, coefficient independence, any
probability conversion, a prescribed global pivot, a uniform pivot margin,
injectivity, finite fibers, regular values, transversality, and simple roots
are neither allowed nor used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:shared-pfaffian-chain}, accepted Proposition~\ref{prop:step-002-lexicographic-pivot-partition}, accepted Lemma~\ref{lem:step-002-exact-denominator-exhaustion}, accepted Proposition~\ref{prop:step-002-exact-original-root-chart}, and the checked Kechris results, if \(I\subseteq\Theta\) is any interval, then every \(D_{j,m}\) is Borel, every exhausted image \(\Psi_j(D_{j,m})\) is analytic and Lebesgue measurable, and \(S_I\) is analytic and Lebesgue measurable. | Establishes the exact descriptive-set interface and ambient nonzero-pivot chart regularity, including endpoints and \(N=1\). |
| `unit_002` | proposition | Under Assumption~\ref{assump:shared-pfaffian-chain}, accepted Propositions~\ref{prop:step-002-exact-original-root-chart} and \ref{prop:step-002-exact-r-weighted-velocity}, Lemma~\ref{lem:step-003-a3-analytic-chart-events}, and Federer Section 3.2.3, if \(j,m\) are fixed, then countable disjoint Lipschitz localization gives the equal-dimensional extended-multiplicity formula, \(\lvert\det D\Psi_j\rvert=\lvert\partial_\theta T_j\rvert\), and \(\lambda_N(\Psi_j(D_{j,m}))\le(2R)^{N-1}\int_{I\cap E_{j,m}}V_j\). | Converts chart velocity into the exact finite-level image bound without an injectivity, fiber, localization-count, or dimension loss. |
| `unit_003` | lemma | Under accepted Lemma~\ref{lem:step-001-supported-root-compactness}, accepted Proposition~\ref{prop:step-002-lexicographic-pivot-partition}, accepted Lemma~\ref{lem:step-002-exact-denominator-exhaustion}, and accepted Proposition~\ref{prop:step-002-exact-original-root-chart}, if \(I\subseteq\Theta\) is any interval, then the exhausted domains and images increase in \(m\) and \(S_I=\bigcup_{j=1}^N\bigcup_{m\ge1}\Psi_j(D_{j,m})\) in the original coefficient cube. | Proves both directions of exact same-object coverage and finite-level entry for every root witness. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root}, the accepted `step_001` and `step_002` outputs, Proposition~\ref{prop:step-003-a3-localized-area-sweep}, and Lemma~\ref{lem:step-003-a3-exact-original-coverage}, if \(I\subseteq\Theta\) is any interval, then \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)\lvert I\rvert\), with the exact monotone exhaustion and disjoint-cell length identity. | Closes the target volume certificate with no chart-count, multiplicity, denominator-boundary, or endpoint remainder. |

Atomic step = no. Descriptive measurability, localized equal-dimensional area,
exact original-event coverage, and limiting disjoint-cell assembly are four
independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: supported-root feasibility and pivot availability

- Source identity: accepted `step_001` proof SHA-256
  `6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838`,
  certified by accepted review SHA-256
  `c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0`.
  The review records sketch attempt 3, `step_001`, unit attempt 1,
  `ACCEPTED`, and the matching proof digest.
- Restated statement in current notation: Accepted
  Lemma~\ref{lem:step-001-supported-root-compactness} proves that \(K_R\) is
  compact and
  \[
  \alpha\in[-R,R]^N,\quad\phi_\alpha(\theta)=0
  \quad\Longrightarrow\quad\theta\in K_R.
  \]
  It also proves that \(K_R=\varnothing\) makes the supported-root event
  empty. Accepted Lemma~\ref{lem:step-001-positive-available-pivot} gives a
  nonzero pivot at every point of nonempty \(K_R\), and accepted
  Proposition~\ref{prop:step-001-fixed-family-pivot-bound} proves
  \(\Gamma_{\rm piv}(b,F;R)<\infty\) for the fixed family.
- Instantiated objects: exactly the present
  \(b,F,\Theta,N,R,K_R,V_j,\Gamma_{\rm piv}\) and original coefficient cube.
- Required assumptions and discharge: the accepted proof and matching review
  discharge Assumptions~\ref{assump:shared-pfaffian-chain} and
  \ref{assump:no-forced-root}. The current step consumes only the named
  derived conclusions.
- Conclusion used: root feasibility and the empty branch in exact coverage;
  legal chart availability through the accepted chart dependency. The
  separate finiteness conclusion is used only to make the fixed-family
  numerical upper bound finite and is not re-exported by this step.
- Nonoutputs: `step_001` supplies no Borel chart partition, analytic image,
  area formula, event coverage, coefficient-volume bound, density conversion,
  or polynomial Pfaffian-format control of \(\Gamma_{\rm piv}\).

### Accepted dependency: measurable exact charts and velocity

- Source identity: accepted `step_002` proof SHA-256
  `4cd4c582971538e2b91f59cd34e028b50f42db4eb0f244eb85cf0bbfe2f5b512`,
  certified by accepted review SHA-256
  `810be823d71c36ef3b7214beee367f298e34175c1e6e183ba7da54a2ef18c3f7`.
  The review records sketch attempt 3, `step_002`, unit attempt 1,
  `ACCEPTED`, the matching proof digest, and the current accepted
  `step_001` pair.
- Restated statement in current notation: Accepted
  Proposition~\ref{prop:step-002-lexicographic-pivot-partition} proves
  \[
  K_R=\bigsqcup_{j=1}^N E_j,\qquad
  E_j\subseteq\{F_j\ne0\},\qquad
  V_j(\theta)=\min_iV_i(\theta)\le\Gamma_{\rm piv}
  \quad(\theta\in E_j).
  \]
  Accepted Lemma~\ref{lem:step-002-exact-denominator-exhaustion} proves the
  Borel exhaustion
  \[
  E_{j,m}=E_j\cap\{|F_j|\ge1/m\}\uparrow E_j.
  \]
  Accepted Proposition~\ref{prop:step-002-exact-original-root-chart} proves
  that
  \[
  T_j(\theta,\beta)
  =-\frac{b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)}{F_j(\theta)}
  \]
  is Borel on the selected chart, inserts into the original \(j\)-th
  coefficient coordinate, and solves the original root equation exactly.
  Accepted Proposition~\ref{prop:step-002-exact-r-weighted-velocity} proves
  \[
  |\partial_\theta T_j(\theta,\beta)|
  \le V_j(\theta)\le\Gamma_{\rm piv}(b,F;R)
  \]
  for every \(\theta\in E_j\) and
  \(\beta\in[-R,R]^{N-1}\).
- Instantiated objects: the present least-index cells, finite exhaustion,
  original coordinate order, beta cube, chart \(T_j\), and affine root
  equation. No dependency symbol is reinterpreted.
- Required assumptions and discharge: the dependency uses
  Assumption~\ref{assump:shared-pfaffian-chain} directly and the accepted
  `step_001` derived interface. Its matching review accepts every
  measurability, tie, zero-pivot, exhaustion, and derivative conclusion.
- Conclusion used: Borel disjoint cells, selected-pivot nonvanishing, exact
  finite exhaustion, zero-residual graph reconstruction, and pointwise
  velocity control.
- Nonoutputs: `step_002` supplies no analytic-image theorem, Lebesgue
  measurability of chart images, area/multiplicity formula, root-event
  coverage, or coefficient-volume estimate.

### Kechris (1995), Section 14, Proposition 14.4

- Source identity and stable locator: Alexander S. Kechris,
  *Classical Descriptive Set Theory*, Springer GTM 156, first edition, 1995,
  Section 14, Proposition 14.4, p. 86.
- Restated statement in current notation: if \(X,Y\) are standard Borel
  spaces, \(G\subseteq X\) is analytic, and \(f:G\to Y\) is Borel, then
  \(f(G)\) is analytic. Every Borel subset of a standard Borel space is
  analytic, so a Borel image or coordinate projection of a Borel Euclidean
  set is analytic.
- Instantiated objects: for chart images,
  \(X=\mathbb R\times\mathbb R^{N-1}\cong\mathbb R^N\),
  \(G=D_{j,m}\), \(Y=\mathbb R^N\), and \(f=\Psi_j\). For the root event,
  \(X=\Theta\times\mathbb R^N\), \(G=Z_I\), \(Y=\mathbb R^N\), and
  \(f(\theta,\alpha)=\alpha\).
- Required assumptions and discharge: Euclidean spaces are Polish and
  standard Borel; the closed interval \(\Theta\), as a Polish subspace, is
  standard Borel. Lemma~\ref{lem:step-003-a3-analytic-chart-events} proves
  \(D_{j,m}\) and \(Z_I\) Borel and \(\Psi_j\) Borel; coefficient projection
  is continuous.
- Conclusion used: every exhausted image \(\Psi_j(D_{j,m})\) and \(S_I\)
  are analytic.
- Nonoutputs: Proposition 14.4 gives no Lebesgue volume, Jacobian formula,
  graph coverage, chart selection, density conversion, fiber regularity, or
  \(\Gamma_{\rm piv}\) bound.

### Kechris (1995), Section 21, Theorem 21.10

- Source identity and stable locator: Kechris, same edition, Section 21,
  Theorem 21.10, p. 155.
- Restated statement in current notation: every analytic subset of a Polish
  space is universally measurable, meaning that it belongs to the completion
  of every Borel probability measure on that space.
- Instantiated objects: the analytic exhausted chart images and \(S_I\) are
  subsets of the Polish coefficient space \(\mathbb R^N\) and of the bounded
  cube \(C=[-R,R]^N\).
- Required assumptions and discharge: analyticity is supplied by the checked
  application of Kechris Proposition 14.4. Because \(R>0\),
  \[
  \nu_C(B)=\frac{\lambda_N(B\cap C)}{(2R)^N}
  \]
  is a Borel probability measure. If \(A\subseteq C\) is in the
  \(\nu_C\)-completion, intersecting its Borel representative and null
  envelope with \(C\) shows that \(A\) differs from a Borel subset of \(C\)
  by a \(\lambda_N\)-null set.
- Conclusion used: every exhausted chart image and \(S_I\) is Lebesgue
  measurable in \(\mathbb R^N\).
- Nonoutputs: Theorem 21.10 gives no image-volume estimate, multiplicity
  control, graph coverage, probability conversion, or conditioning bound.

### Federer (1969), Section 3.2.3

- Source identity and stable locator: Herbert Federer,
  *Geometric Measure Theory*, Springer Grundlehren 153, 1969, Section 3.2.3,
  p. 243.
- Restated statement in current notation: if
  \(f:\mathbb R^m\to\mathbb R^n\) is Lipschitz, \(m\le n\), and
  \(D\subseteq\mathbb R^m\) is Lebesgue measurable, then, with extended
  multiplicity
  \[
  N(f,D,y)=\#(D\cap f^{-1}(y))
  \in\{0,1,2,\ldots\}\cup\{+\infty\},
  \]
  \[
  \int_D J_mf(x)\,d\mathcal L^m(x)
  =
  \int_{\mathbb R^n}N(f,D,y)\,d\mathcal H^m(y).
  \]
  Both integrals are nonnegative extended integrals.
- Instantiated objects: \(m=n=N\); source coordinates are
  \((\theta,\beta)\), target coordinates are the original coefficient vector
  \(\alpha\); \(D\) is a Borel localization of \(D_{j,m}\); and \(f\) is a
  global Lipschitz extension agreeing with \(\Psi_j\) on that localization.
- Required assumptions and discharge:
  Lemma~\ref{lem:step-003-a3-analytic-chart-events} constructs an ambient
  \(C^1\), hence locally Lipschitz, chart on the open nonzero-pivot set and
  proves the domains Borel.
  Proposition~\ref{prop:step-003-a3-localized-area-sweep} constructs an exact
  countable disjoint Borel localization and global Lipschitz extensions.
  Federer's normalized \(\mathcal H^N\) agrees with
  \(\mathcal L^N=\lambda_N\) in equal-dimensional Euclidean space, and the
  same proposition proves
  \(J_N\Psi_j=|\det D\Psi_j|=|\partial_\theta T_j|\).
- Conclusion used: the exact extended-multiplicity identity on
  \(D_{j,m}\), hence
  \[
  \lambda_N(\Psi_j(D_{j,m}))
  \le\int_{D_{j,m}}|\det D\Psi_j|\,d\lambda_N.
  \]
- Nonoutputs: Section 3.2.3 neither assumes nor outputs injectivity, finite
  fibers, regular values, transversality, simple roots, exact graph coverage,
  chart selection, the determinant calculation, the beta-cube factor,
  density conversion, velocity control, or a
  \(\Gamma_{\rm piv}\) estimate.

### Standard Euclidean Lipschitz localization and extension

- Source identity: the standard countable-basis localization of an open
  Euclidean set, the bounded-derivative mean-value inequality on convex
  balls, and the scalar McShane extension theorem.
- Restated statement in current notation: every open
  \(O\subseteq\mathbb R^N\) is covered by a countable family of open balls
  \((\mathcal B_\ell)_{\ell\ge1}\) with rational centers and radii and
  \(\overline{\mathcal B_\ell}\Subset O\). If
  \(G:O\to\mathbb R^N\) is \(C^1\), then \(DG\) is bounded on each compact
  closure, so \(G\) is Lipschitz on the convex ball. If a scalar
  \(u:A\to\mathbb R\) is \(L\)-Lipschitz, then
  \[
  \widehat u(x)=\inf_{z\in A}\{u(z)+L|x-z|\}
  \]
  is a global \(L\)-Lipschitz extension; extending coordinates separately
  gives a global Lipschitz vector map.
- Instantiated objects: \(O=O_j\), \(G=\widetilde\Psi_j\), and the disjoint
  Borel layers
  \[
  \mathcal L_\ell
  =\mathcal B_\ell\setminus\bigcup_{r<\ell}\mathcal B_r,\qquad
  D_{j,m}^{(\ell)}=D_{j,m}\cap\mathcal L_\ell.
  \]
- Required assumptions and discharge: the ambient \(C^1\) construction and
  open set \(O_j\) are proved in
  Lemma~\ref{lem:step-003-a3-analytic-chart-events}; Euclidean second
  countability supplies the rational-ball cover.
- Conclusion used: a countable family of globally Lipschitz Federer
  applications whose Borel domain pieces partition \(D_{j,m}\) exactly and
  whose Jacobians agree there with the original chart.
- Nonoutputs: localization and extension do not provide an area identity,
  an image-volume inequality, graph coverage, or a chart-velocity estimate.

### Standard nonnegative measure tools

- Source identity: Tonelli's theorem, continuity from below, the monotone
  convergence theorem, and finite measure subadditivity.
- Restated statement in current notation: a nonnegative measurable function
  on a product of sigma-finite Lebesgue spaces may be integrated in either
  order; if \(A_m\uparrow A\) are measurable, then
  \(\lambda(A_m)\uparrow\lambda(A)\); if \(h_m\uparrow h\) are nonnegative
  measurable, then \(\int h_m\uparrow\int h\); and for finitely many
  measurable \(A_j\),
  \(\lambda(\bigcup_jA_j)\le\sum_j\lambda(A_j)\).
- Instantiated objects: the extended multiplicities on disjoint localization
  layers, the nonnegative Jacobian on \(D_{j,m}\), product integration over
  \(I\cap E_{j,m}\) and \(B_j\), the increasing exhausted chart images, and
  the functions equal to \(V_j\) on \(I\cap E_{j,m}\) and zero elsewhere.
- Required assumptions and discharge: all domains and images are measurable
  by Lemma~\ref{lem:step-003-a3-analytic-chart-events}; all relevant
  integrands are nonnegative and measurable; the beta cube has finite
  measure; and nestedness is proved by
  Lemma~\ref{lem:step-003-a3-exact-original-coverage}.
- Conclusion used: exact summation of localized multiplicities, exact beta
  integration, continuity from below, the \(m\to\infty\) integral limit, and
  the final finite image union bound.
- Nonoutputs: these tools provide no root-event coverage, derivative
  inequality, pivot-cell disjointness, or conditioning estimate.

### Local result applications

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Lemma~\ref{lem:step-003-a3-analytic-chart-events} | Under primitive \(C^1\) regularity, the accepted Borel chart interface, and the checked Kechris results, the finite-exhaustion domains are Borel, the chart maps are ambient locally Lipschitz, and every exhausted image and \(S_I\) is analytic and Lebesgue measurable. | Supplies the hypotheses for the localized area formula and measurable exhaustion. |
| Proposition~\ref{prop:step-003-a3-localized-area-sweep} | Under the exact accepted chart and velocity interfaces and Federer 3.2.3, countable disjoint localization gives extended multiplicity, the literal determinant, and the finite-level beta-volume inequality. | Supplies the finite-level image estimate to Proposition~\ref{prop:step-003-a3-volume-certificate}. |
| Lemma~\ref{lem:step-003-a3-exact-original-coverage} | Under accepted root feasibility, partition, exhaustion, and exact charting, the countable exhausted graph-image union equals \(S_I\) in original coordinates, and each fixed-chart sequence is increasing. | Supplies exact event identity and continuity from below to Proposition~\ref{prop:step-003-a3-volume-certificate}. |
| Proposition~\ref{prop:step-003-a3-volume-certificate} | Under the preceding area and coverage results and the accepted disjoint-cell velocity interface, monotone exhaustion and the finite cell sum give the literal coefficient-volume certificate. | Supplies exactly the target-row export to target-step assembly. |

## Local Derivation

### unit_001: lemma

**Lemma (Analytic exhausted charts and root event).**
\(\label{lem:step-003-a3-analytic-chart-events}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain}, accepted
Proposition~\ref{prop:step-002-lexicographic-pivot-partition}, accepted
Lemma~\ref{lem:step-002-exact-denominator-exhaustion}, accepted
Proposition~\ref{prop:step-002-exact-original-root-chart}, and Kechris
(1995), Section 14, Proposition 14.4 and Section 21, Theorem 21.10, let
\(I\subseteq\Theta\) be any interval. For
\[
J_j:=\{1,\ldots,N\}\setminus\{j\},\qquad
B_j:=[-R,R]^{J_j},
\]
identify \(\mathbb R^{J_j}\) with \(\mathbb R^{N-1}\) in increasing
original-coordinate order and define
\[
\Psi_j(\theta,\beta)_i
=
\begin{cases}
T_j(\theta,\beta),&i=j,\\
\beta_i,&i\in J_j.
\end{cases}
\tag{1}
\]
For \(m\ge1\), define the finite-exhaustion domain
\[
D_{j,m}
=
\{(\theta,\beta):
\theta\in I\cap E_{j,m},\
\beta\in B_j,\
|T_j(\theta,\beta)|\le R\}.
\tag{2}
\]
Then \(D_{j,m}\) is Borel in
\(\mathbb R\times\mathbb R^{J_j}\cong\mathbb R^N\);
\(\Psi_j\) is the restriction of a \(C^1\), hence locally Lipschitz, map on
an ambient open nonzero-pivot chart; every
\(\Psi_j(D_{j,m})\) is analytic and Lebesgue measurable; and
\[
S_I
=
\{\alpha\in[-R,R]^N:
\exists\theta\in I,\
b(\theta)+\langle\alpha,F(\theta)\rangle=0\}
\tag{3}
\]
is analytic and Lebesgue measurable. These statements include all choices
of open, closed, half-open, empty, or singleton interval \(I\), actual
endpoints of \(\Theta\), closed cube faces and corners, empty chart domains,
and \(N=1\).

Proof / justification:
Write \(\Theta=[\theta_-,\theta_+]\). For a nondegenerate \(\Theta\), extend
each setting \(C^1\) function \(g\in\{b,F_1,\ldots,F_N\}\) to
\(\mathbb R\) by
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
The values and first derivatives match at both endpoints, so
\(\widetilde g\) is \(C^1\). If \(\Theta\) is a singleton, use the single
affine expression based at its point and its derivative in the setting's
endpoint-inclusive \(C^1\) convention. The extensions are proof-local and
agree with the original values and derivatives at every point of \(\Theta\).

For each \(j\), let
\[
O_j
=
\{(\theta,\beta)\in\mathbb R\times\mathbb R^{J_j}:
\widetilde F_j(\theta)\ne0\}.
\tag{5}
\]
This is open. Replacing \(b,F_i\) by their extensions in the formula for
\(T_j\) gives a \(C^1\) function \(\widetilde T_j\) on \(O_j\); inserting
it as in (1) gives a \(C^1\) map
\(\widetilde\Psi_j:O_j\to\mathbb R^N\). On the original selected chart,
these functions equal \(T_j,\Psi_j\). Thus every point of every
\(D_{j,m}\), including a point with \(\theta\) at an endpoint of
\(\Theta\), lies in an ambient open set on which the chart is \(C^1\).
No uniform lower bound for a prescribed pivot is introduced.

The interval \(I\) is Borel, accepted
Lemma~\ref{lem:step-002-exact-denominator-exhaustion} makes \(E_{j,m}\)
Borel, and \(B_j\) is closed. Accepted
Proposition~\ref{prop:step-002-lexicographic-pivot-partition} gives
\(E_{j,m}\subseteq E_j\subseteq\{F_j\ne0\}\), so the base product in (2)
is a Borel subset of \(O_j\). The last condition in (2) is the inverse image
of the closed interval \([-R,R]\) under the continuous ambient
\(\widetilde T_j\). Therefore \(D_{j,m}\) is Borel, and
\(\Psi_j|_{D_{j,m}}\) is Borel.

Kechris Section 14, Proposition 14.4 now applies with the exact objects
recorded above: the Borel domain \(D_{j,m}\) is analytic, and its Borel image
\(\Psi_j(D_{j,m})\) in the Euclidean standard Borel target is analytic.

For the event, define the incidence set
\[
Z_I
=
\{(\theta,\alpha)\in I\times[-R,R]^N:
b(\theta)+\langle\alpha,F(\theta)\rangle=0\}.
\tag{6}
\]
The evaluation map is continuous on
\(\Theta\times\mathbb R^N\), and \(I\times[-R,R]^N\) is Borel there, so
\(Z_I\) is Borel in the standard Borel space
\(\Theta\times\mathbb R^N\). Its continuous coefficient projection is
exactly the set \(S_I\) in (3). Kechris Section 14, Proposition 14.4
therefore makes \(S_I\) analytic independently of the chart-coverage
identity proved later.

Every set just proved analytic is contained in
\(C=[-R,R]^N\): this is explicit for \(S_I\), while (2) places every beta
coordinate and the inserted \(T_j\) coordinate in that cube. Apply Kechris
Section 21, Theorem 21.10 to
\(\nu_C(B)=\lambda_N(B\cap C)/(2R)^N\). If one of these analytic sets is
\(A\), universal measurability gives a Borel \(B\) and a
\(\nu_C\)-null Borel envelope \(M\) with \(A\mathbin\triangle B\subseteq M\).
Because \(A\subseteq C\),
\[
A\mathbin\triangle(B\cap C)\subseteq M\cap C,
\qquad
\lambda_N(M\cap C)=0.
\]
Thus \(A\) is Lebesgue measurable in \(\mathbb R^N\).

No endpoint or coefficient boundary has been removed: the exact set \(I\),
the closed beta cube, and the weak constraint \(|T_j|\le R\) occur in (2).
For \(N=1\), \(J_1=\varnothing\),
\(\mathbb R^{J_1}=\mathbb R^0=\{()\}\), the source remains one-dimensional,
and all Borel, analytic, and completion arguments are unchanged. Empty
domains, images, and events are analytic and Lebesgue measurable.

### unit_002: proposition

**Proposition (Localized equal-dimensional area sweep).**
\(\label{prop:step-003-a3-localized-area-sweep}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain}, accepted
Propositions~\ref{prop:step-002-exact-original-root-chart} and
\ref{prop:step-002-exact-r-weighted-velocity},
Lemma~\ref{lem:step-003-a3-analytic-chart-events}, and Federer (1969),
Section 3.2.3, order the domain coordinates as
\[
(\theta,\beta_1,\ldots,\beta_{j-1},\beta_{j+1},\ldots,\beta_N)
\]
and retain the target order
\((\alpha_1,\ldots,\alpha_N)\). For every
\(j\in\{1,\ldots,N\}\) and \(m\ge1\),
\[
\int_{D_{j,m}}|\det D\Psi_j(x)|\,d\lambda_N(x)
=
\int_{\mathbb R^N}
N(\Psi_j,D_{j,m},a)\,d\lambda_N(a),
\tag{7}
\]
where
\[
N(\Psi_j,D_{j,m},a)
=\#(D_{j,m}\cap\Psi_j^{-1}(a))
\in\{0,1,2,\ldots\}\cup\{+\infty\},
\]
and, literally,
\[
|\det D\Psi_j(\theta,\beta)|
=|\partial_\theta T_j(\theta,\beta)|.
\tag{8}
\]
Consequently,
\[
\lambda_N(\Psi_j(D_{j,m}))
\le
\int_{D_{j,m}}|\partial_\theta T_j|\,d\lambda_N
\le
(2R)^{N-1}
\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta.
\tag{9}
\]
No injectivity, finite-fiber, regular-value, transversality, or simple-root
condition is assumed. For \(N=1\), (8) is the scalar derivative and (9)
uses zero-dimensional beta measure one.

Proof / justification:
On the open set \(O_j\) from
Lemma~\ref{lem:step-003-a3-analytic-chart-events}, each target component
other than \(j\) is the corresponding beta coordinate, while target
component \(j\) is \(\widetilde T_j\). Move target row \(j\) to the first
row, preserving all other target rows. The row permutation has determinant
\((-1)^{j-1}\), and the permuted derivative matrix is
\[
\begin{pmatrix}
\partial_\theta\widetilde T_j&
\nabla_\beta\widetilde T_j\\
0&I_{N-1}
\end{pmatrix}.
\]
Its determinant is \(\partial_\theta\widetilde T_j\), so in the original
target order
\[
\det D\widetilde\Psi_j
=(-1)^{j-1}\partial_\theta\widetilde T_j.
\]
Restriction to the original chart proves (8). The beta derivatives occupy
only the upper-right block and create no determinant factor.

It remains to justify (7), because \(\Psi_j\) is locally rather than
globally Lipschitz. Cover the open Euclidean set \(O_j\) by rational balls
\((\mathcal B_\ell)_{\ell\ge1}\) whose closures are compactly contained in
\(O_j\). On each \(\mathcal B_\ell\), boundedness of
\(D\widetilde\Psi_j\) on the compact closure and the mean-value inequality
make \(\widetilde\Psi_j\) Lipschitz. Define
\[
\mathcal L_\ell
=\mathcal B_\ell\setminus\bigcup_{r<\ell}\mathcal B_r,
\qquad
D_{j,m}^{(\ell)}
=D_{j,m}\cap\mathcal L_\ell.
\tag{10}
\]
The layers are Borel, disjoint, cover \(O_j\), and hence partition
\(D_{j,m}\).

Apply the scalar McShane extension to each coordinate of
\(\widetilde\Psi_j|_{\mathcal B_\ell}\). The resulting global Lipschitz
map
\(\widehat\Psi_{j,\ell}:\mathbb R^N\to\mathbb R^N\) agrees with
\(\widetilde\Psi_j\) throughout \(\mathcal B_\ell\), and therefore has the
same derivative and Jacobian on \(D_{j,m}^{(\ell)}\). Federer Section 3.2.3
applied to this extension and Borel domain piece gives
\[
\int_{D_{j,m}^{(\ell)}}|\det D\Psi_j|\,d\lambda_N
=
\int_{\mathbb R^N}
\#(D_{j,m}^{(\ell)}\cap\Psi_j^{-1}(a))\,d\lambda_N(a).
\tag{11}
\]
Summing (11), using Tonelli for the nonnegative extended counts, and using
the disjoint partition gives
\[
\begin{aligned}
\int_{D_{j,m}}|\det D\Psi_j|\,d\lambda_N
&=
\int_{\mathbb R^N}\sum_{\ell\ge1}
\#(D_{j,m}^{(\ell)}\cap\Psi_j^{-1}(a))\,d\lambda_N(a)\\
&=
\int_{\mathbb R^N}
\#(D_{j,m}\cap\Psi_j^{-1}(a))\,d\lambda_N(a),
\end{aligned}
\]
which is (7). The localization is an exact domain partition, so no count or
constant remains.

By Lemma~\ref{lem:step-003-a3-analytic-chart-events}, the image is Lebesgue
measurable. Its multiplicity in (7) is at least one on the image, even when
it is \(+\infty\). Therefore
\[
\lambda_N(\Psi_j(D_{j,m}))
\le
\int_{\mathbb R^N}N(\Psi_j,D_{j,m},a)\,d\lambda_N(a),
\]
and (7)--(8) prove the first inequality in (9).

For the second inequality, Tonelli and accepted
Proposition~\ref{prop:step-002-exact-r-weighted-velocity} give
\[
\begin{aligned}
\int_{D_{j,m}}|\partial_\theta T_j|\,d\lambda_N
&=
\int_{I\cap E_{j,m}}\int_{B_j}
\mathbf 1_{\{|T_j(\theta,\beta)|\le R\}}
|\partial_\theta T_j(\theta,\beta)|\,d\lambda_{N-1}(\beta)\,d\theta\\
&\le
\int_{I\cap E_{j,m}}\int_{B_j}
V_j(\theta)\,d\lambda_{N-1}(\beta)\,d\theta\\
&=
\lambda_{N-1}(B_j)
\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta\\
&=
(2R)^{N-1}
\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta.
\end{aligned}
\tag{12}
\]
All faces and corners of \(B_j\), and both faces \(T_j=\pm R\), remain in
the Borel domain. When \(N=1\),
\(B_1=[-R,R]^0=\{()\}\) and its zero-dimensional Lebesgue measure is one,
so \(\lambda_0(B_1)=1=(2R)^0\).

For the requested fiber audit, at a represented coefficient
\(a=\Psi_j(\theta,\beta)\), differentiating the exact accepted chart
identity with \(\beta\) fixed gives
\[
\partial_\theta T_j(\theta,\beta)
=-\frac{\phi_a'(\theta)}{F_j(\theta)}.
\tag{13}
\]
Thus tangent roots and differentiably multiple roots are critical
preimages. The Borel critical subset
\(D_{j,m}\cap\{\partial_\theta T_j=0\}\) has zero Jacobian, so applying the
already proved image inequality to that subset shows that its image has
\(N\)-dimensional measure zero. If an affine combination
\(\phi_a\) is identically zero on an interval, then every represented
preimage in that interval is critical and the fiber may be uncountable.
More generally, finite, countably infinite, or interval-many fibers are
already legal values of the extended multiplicity in (7). Distinct or
repeated roots merely add preimages; none is used to define an inverse
change of variables.

### unit_003: lemma

**Lemma (Exact original-coordinate exhausted coverage).**
\(\label{lem:step-003-a3-exact-original-coverage}\)

Statement:
Under accepted
Lemma~\ref{lem:step-001-supported-root-compactness}, accepted
Proposition~\ref{prop:step-002-lexicographic-pivot-partition}, accepted
Lemma~\ref{lem:step-002-exact-denominator-exhaustion}, and accepted
Proposition~\ref{prop:step-002-exact-original-root-chart}, if
\(I\subseteq\Theta\) is any interval, then for each \(j\),
\[
D_{j,m}\subseteq D_{j,m+1},
\qquad
\Psi_j(D_{j,m})\subseteq\Psi_j(D_{j,m+1}),
\tag{14}
\]
and
\[
S_I
=
\bigcup_{j=1}^N\bigcup_{m=1}^{\infty}\Psi_j(D_{j,m})
\tag{15}
\]
as literal equality in the original coefficient cube. The equality includes
interval endpoints, coefficient-cube faces and corners, least-index ties,
arbitrarily small nonzero selected pivots, and coefficients with one,
multiple, or infinitely many roots. It also includes empty \(I\), singleton
\(I\), empty \(K_R\), empty cells, and \(N=1\).

Proof / justification:
Only the requirement \(\theta\in E_{j,m}\) in (2) depends on \(m\).
Accepted Lemma~\ref{lem:step-002-exact-denominator-exhaustion} gives
\(E_{j,m}\subseteq E_{j,m+1}\), while \(I,B_j,T_j\), and the weak range
condition \(|T_j|\le R\) stay fixed. This proves domain nesting. A fixed map
sends nested domains to nested images, proving (14).

Take \(a\in S_I\). By definition there is a witness \(\theta\in I\) with
\(\phi_a(\theta)=0\). Accepted
Lemma~\ref{lem:step-001-supported-root-compactness} gives
\(\theta\in K_R\). Accepted
Proposition~\ref{prop:step-002-lexicographic-pivot-partition} assigns
\(\theta\) to exactly one least-index cell \(E_j\) and gives
\(F_j(\theta)\ne0\). Set
\(\beta=a_{-j}\in B_j\), retaining increasing original-coordinate order.
The root equation and nonzero denominator give, literally,
\[
a_j
=-\frac{b(\theta)+\sum_{i\ne j}a_iF_i(\theta)}{F_j(\theta)}
=T_j(\theta,\beta).
\tag{16}
\]
Accepted Lemma~\ref{lem:step-002-exact-denominator-exhaustion} places this
individual nonzero pivot in some finite \(E_{j,m}\). Because
\(|a_j|\le R\), (16) implies \((\theta,\beta)\in D_{j,m}\), and (1) gives
\(\Psi_j(\theta,\beta)=a\). This proves \(S_I\) is contained in the
right-hand side of (15).

Conversely, suppose
\(a=\Psi_j(\theta,\beta)\) with
\((\theta,\beta)\in D_{j,m}\). The beta coordinates belong to the closed
cube \(B_j\), and \(|T_j|\le R\), so \(a\in[-R,R]^N\) coordinate by
coordinate, including all faces and corners. Also
\(\theta\in I\cap E_{j,m}\), and accepted
Proposition~\ref{prop:step-002-exact-original-root-chart} gives
\[
b(\theta)+\langle a,F(\theta)\rangle=0.
\]
Thus \(a\in S_I\), proving the reverse inclusion.

The proof selects an arbitrary existential root witness and never assumes
that it is isolated, unique, simple, or regular. A parameter-cell tie is
resolved by the inherited least-index rule; images may nevertheless overlap,
which does not change set equality. A selected denominator may approach
zero along a cell, but every individual nonzero value enters a finite level
because the exhaustion uses the weak threshold \(|F_j|\ge1/m\). If
\(K_R=\varnothing\), accepted root feasibility makes \(S_I\) empty and all
cells are empty. If \(I\) is empty, the same is immediate; if it is a
singleton or contains an endpoint, the actual point remains in every
definition. For \(N=1\), \(\beta\) is the unique empty tuple and (16) is the
scalar identity \(a_1=-b/F_1\).

### unit_004: proposition

**Proposition (Exact root-event coefficient-volume certificate).**
\(\label{prop:step-003-a3-volume-certificate}\)

Statement:
Under Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root}, the accepted conclusions of
Lemma~\ref{lem:step-001-supported-root-compactness},
Proposition~\ref{prop:step-001-fixed-family-pivot-bound},
Proposition~\ref{prop:step-002-lexicographic-pivot-partition},
Lemma~\ref{lem:step-002-exact-denominator-exhaustion}, and
Proposition~\ref{prop:step-002-exact-r-weighted-velocity}, together with
Proposition~\ref{prop:step-003-a3-localized-area-sweep} and
Lemma~\ref{lem:step-003-a3-exact-original-coverage}, imply for every interval
\(I\subseteq\Theta\) that
\[
\lambda_N(S_I)
\le
(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|.
\tag{17}
\]
This conclusion includes empty and singleton intervals, empty \(K_R\),
empty cells, all interval and cube boundaries, least-index ties, selected
denominators approaching zero, noninjective charts, tangent or multiple
roots, identically-zero affine combinations, finite or infinite fibers, and
\(N=1\). There is no chart-count, localization-count, multiplicity, or
boundary factor.

Proof / justification:
Fix \(j\), and write
\[
A_{j,m}:=\Psi_j(D_{j,m}),\qquad
A_j:=\bigcup_{m=1}^{\infty}A_{j,m}.
\]
By Lemmas~\ref{lem:step-003-a3-analytic-chart-events} and
\ref{lem:step-003-a3-exact-original-coverage}, the sets \(A_{j,m}\) are
Lebesgue measurable and increase to \(A_j\). Continuity from below and
Proposition~\ref{prop:step-003-a3-localized-area-sweep} give
\[
\begin{aligned}
\lambda_N(A_j)
&=\lim_{m\to\infty}\lambda_N(A_{j,m})\\
&\le
(2R)^{N-1}
\lim_{m\to\infty}
\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta.
\end{aligned}
\tag{18}
\]

To take the integral limit without an undefined \(0\cdot(+\infty)\), define
\(h_{j,m}:\Theta\to[0,+\infty)\) piecewise by
\[
h_{j,m}(\theta)
=
\begin{cases}
V_j(\theta),&\theta\in I\cap E_{j,m},\\
0,&\theta\notin I\cap E_{j,m}.
\end{cases}
\]
Accepted
Proposition~\ref{prop:step-002-lexicographic-pivot-partition} makes \(V_j\)
finite on \(E_j\), and accepted
Lemma~\ref{lem:step-002-exact-denominator-exhaustion} makes the Borel sets
\(E_{j,m}\) increase to \(E_j\). Hence \(h_{j,m}\) are nonnegative Borel
functions increasing pointwise to the function \(h_j\) equal to \(V_j\) on
\(I\cap E_j\) and zero elsewhere. Monotone convergence turns (18) into
\[
\lambda_N(A_j)
\le
(2R)^{N-1}
\int_{I\cap E_j}V_j(\theta)\,d\theta.
\tag{19}
\]
Thus every denominator boundary is recovered by an exact monotone limit:
the threshold \(1/m\) leaves no constant, tolerance, or remainder.

By the exact original-coordinate coverage (15), finite measure
subadditivity, and (19),
\[
\lambda_N(S_I)
\le
(2R)^{N-1}
\sum_{j=1}^N
\int_{I\cap E_j}V_j(\theta)\,d\theta.
\tag{20}
\]
On \(E_j\), accepted
Proposition~\ref{prop:step-002-lexicographic-pivot-partition} and accepted
Proposition~\ref{prop:step-002-exact-r-weighted-velocity} give
\(V_j=\min_iV_i\le\Gamma_{\rm piv}(b,F;R)\). The Borel cells are pairwise
disjoint and have union \(K_R\), so finite additivity of one-dimensional
Lebesgue measure gives the literal identity
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
\tag{21}
\]
Combining (20)--(21) proves (17). Chart images may overlap, but their
parameter cells do not; the only chart sum is therefore charged to the
one-copy length \(|I\cap K_R|\), not to \(N|I|\).

If \(K_R=\varnothing\), accepted
Lemma~\ref{lem:step-001-supported-root-compactness} gives \(S_I=\varnothing\)
and \(\Gamma_{\rm piv}=0\), while every cell and domain is empty. Empty cells
contribute zero. If \(I\) is empty or a singleton, \(|I|=0\), and (21)
makes every chart integral zero; hence (17) proves that \(S_I\) has zero
\(N\)-volume even when a singleton parameter supports roots. For \(N=1\),
there is one cell, the beta factor is
\((2R)^0=\lambda_0(\{()\})=1\), and (17) is literal. All remaining fiber
pathologies were retained by the extended multiplicity in (7) before the
exhaustion and chart sum, so they introduce no root-count or boundary
remainder.

## Target-Step Assembly

Accepted
Lemma~\ref{lem:step-001-supported-root-compactness} restricts every
cube-supported root witness to \(K_R\) and handles \(K_R=\varnothing\).
Accepted
Proposition~\ref{prop:step-002-lexicographic-pivot-partition}, accepted
Lemma~\ref{lem:step-002-exact-denominator-exhaustion}, accepted
Proposition~\ref{prop:step-002-exact-original-root-chart}, and accepted
Proposition~\ref{prop:step-002-exact-r-weighted-velocity} supply, before any
measure argument, the Borel disjoint cells, legal selected denominators,
finite-level entry, exact original coefficient graph, and velocity bound.

Lemma~\ref{lem:step-003-a3-analytic-chart-events} checks the exact Kechris
interfaces and proves that every \(D_{j,m}\) is Borel, every exhausted chart
image is analytic and Lebesgue measurable, and \(S_I\) is analytic and
Lebesgue measurable. Proposition~\ref{prop:step-003-a3-localized-area-sweep}
then checks Federer Section 3.2.3 through countable disjoint Lipschitz
localization, proves the literal determinant
\[
|\det D\Psi_j|=|\partial_\theta T_j|,
\]
and obtains the finite-level image inequality with the exact beta factor
\((2R)^{N-1}\), allowing extended multiplicity.

Lemma~\ref{lem:step-003-a3-exact-original-coverage} proves both inclusions of
\[
S_I=\bigcup_{j=1}^N\bigcup_{m\ge1}\Psi_j(D_{j,m})
\]
in the original coefficient cube and proves fixed-chart nesting.
Proposition~\ref{prop:step-003-a3-volume-certificate} applies continuity
from below and monotone convergence, then uses the exact disjoint-cell
identity
\[
\sum_{j=1}^N|I\cap E_j|=|I\cap K_R|\le|I|,
\]
to conclude
\[
\lambda_N(S_I)
\le(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|.
\]
These four fresh named results jointly prove every clause of the accepted
`step_003` row.

The exported interface is limited to the analytic/Lebesgue-measurable
root event and its coefficient-volume certificate. The separate
\(\Gamma_{\rm piv}<\infty\) conclusion remains an output of accepted
`step_001`; it is not retransmitted as a `step_003` conclusion.

## Explicit Rate Audit

- Exposed variables: \(N,R,\Gamma_{\rm piv}(b,F;R)\), and \(|I|\). The
  exact deterministic coefficient-volume rate is
  \[
  (2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|.
  \]
- Hidden constants may depend on: None; there is no hidden constant.
- Hidden constants may not depend on: \(q,M,\Delta_{\rm rnd},
  \Delta_{\rm aff}\), the deterministic family, \(N,R,I\), a chart index,
  an exhaustion index, a localization count, root multiplicity, a pivot
  margin, or any unrecorded analytic scale. No dependence is hidden.
- Fixed quantities: The deterministic family \((b,F)\), its fixed Pfaffian
  presentation, compact \(\Theta\), \(N\), and \(R\) are fixed while
  \(I\subseteq\Theta\) ranges over intervals.
- Probability mode: Deterministic Lebesgue coefficient volume. No law,
  expectation, confidence parameter, conditioning event, density cap, or
  probability conversion appears.
- Horizon mode: Static for every interval, including empty and singleton
  intervals. The only limit is the explicit monotone denominator exhaustion;
  there is no horizon, asymptotic, stopping-time, or all-time upgrade.
- Norm mode: The setting's \(\ell_1\) feasibility test for \(K_R\), scalar
  absolute chart velocity, one-dimensional Lebesgue length in \(\theta\),
  and \(N\)-dimensional Lebesgue measure in the original coefficient space.
- Admissibility conditions and auxiliary tolerances: \(N\ge1\), \(R>0\),
  compact interval \(\Theta\), Assumptions~\ref{assump:shared-pfaffian-chain}
  and \ref{assump:no-forced-root}, and the accepted dependency interfaces.
  The value \(1/m\) is only a localization threshold and disappears through
  exact exhaustion; there is no auxiliary tolerance.
- Term absorption or simplification inequalities: No term is dropped or
  absorbed. The beta integral is exactly
  \[
  \lambda_{N-1}([-R,R]^{N-1})=(2R)^{N-1},
  \]
  including \(\lambda_0(\mathbb R^0)=1\), and the chart sum uses exactly
  \[
  \sum_j|I\cap E_j|=|I\cap K_R|\le|I|.
  \]
- Probability conversion: None. The density cap and every probability
  consequence are outside this step.
- Contribution to any Rate Specialization Bridge: This step exports only the
  deterministic coefficient-volume factor consumed downstream. It does not
  perform a public probability or monic specialization.
- Baseline-reduction check, if applicable: For \(N=1\), the beta cube is
  zero-dimensional with measure one and the result reduces without loss to
  the scalar graph sweep. For \(K_R=\varnothing\), both sides are exactly
  zero. Empty and singleton intervals give a zero coefficient-volume bound.
  Exact monic recovery is outside this step and is not altered.

## Blockers

None

## Notation And Assumption Notes

- Binding and freshness audit: every SHA-256 value in `## Step Identity`
  was verified before overwrite. Both dependency reviews record sketch
  attempt 3, unit attempt 1, `ACCEPTED`, and their matching current proof
  digests. No sketch-attempt-2 dependency identity is used.
- Public-facing objects: the setting-defined
  \(S_I,\Gamma_{\rm piv}(b,F;R),N,R\), and \(|I|\) retain their original
  meanings. The only new public-facing interface from this step is
  measurability of \(S_I\) and the displayed coefficient-volume certificate;
  fixed-family finiteness is not a new output.
- Appendix-local objects: \(J_j,B_j,\Psi_j,D_{j,m}\) are exact
  original-coordinate chart objects needed for a paper proof and consumed
  only through the volume certificate. They introduce no transformed,
  weighted, augmented, or surrogate coefficient target.
- Proof-local objects: the endpoint extensions
  \(\widetilde b,\widetilde F_i,\widetilde T_j,\widetilde\Psi_j\), open sets
  \(O_j\), rational balls \(\mathcal B_\ell\), disjoint layers
  \(\mathcal L_\ell\), global extensions \(\widehat\Psi_{j,\ell}\),
  multiplicity \(N(\Psi_j,D_{j,m},a)\), incidence set \(Z_I\), image sets
  \(A_{j,m},A_j\), and monotone functions \(h_{j,m},h_j\) are all defined
  from setting objects or accepted dependency outputs. None is exported.
- Constant provenance: \(N,R\) are basic-setting quantities;
  \(\Gamma_{\rm piv}\) is setting-defined and its fixed-family finiteness is
  accepted from `step_001`; \((2R)^{N-1}\) is proved as the literal beta
  cube measure; and \(1/m\) comes from the accepted exact exhaustion and
  vanishes in the monotone limit. No free constant, radius, margin, threshold,
  or bounded quantity is introduced.
- Assumption provenance: \(C^1\) regularity is primitive through
  Assumption~\ref{assump:shared-pfaffian-chain}. Root feasibility, the empty
  branch, and legal pivot availability are accepted derived conclusions of
  `step_001`. Borel cells, selected-pivot nonvanishing, finite-level entry,
  exact root reconstruction, and velocity control are accepted derived
  conclusions of `step_002`. Borel domains, analytic/Lebesgue
  measurability, localized area control, exact coverage, and the volume bound
  are proved by the four fresh local results here. No generated event,
  recurrence, stability, boundedness, or local-validity fact is assumed.
- Boundary and degeneracy audit: all interval conventions are literal; open,
  closed, half-open, empty, singleton, and endpoint-containing intervals are
  Borel and are never replaced by closures. Endpoint extensions justify
  ambient local Lipschitzness without adding domain points. Closed beta and
  pivot-coordinate inequalities keep cube faces and corners. The weak
  threshold \(|F_j|\ge1/m\) keeps equality points and exhausts arbitrarily
  small nonzero selected pivots. Empty \(K_R\), empty cells, and empty events
  contribute zero. \(N=1\) uses \(\mathbb R^0\) with measure one. Ties are
  assigned to one parameter cell, although image overlap is allowed.
  Tangent, multiple, identically-zero, finite, countably infinite, and
  uncountable root fibers are retained by extended multiplicity.
- Fiber and Jacobian audit: the determinant calculation uses the declared
  source order and original target order and gives the literal equality
  \(|\det D\Psi_j|=|\partial_\theta T_j|\). The area inequality uses
  multiplicity at least one on the image, not a one-to-one substitution.
  Critical images have zero \(N\)-volume, but no critical, regular-value, or
  transversality exclusion is imposed.
- Exactness and loss audit: Equation (16) inserts the original coefficient
  \(a_j\), and the converse chart identity has residual zero. The countable
  localization is a disjoint domain partition, the denominator exhaustion is
  monotone, and the finite chart sum is charged to disjoint parameter-cell
  lengths. There is no localization, chart-count, root-count, multiplicity,
  denominator-boundary, cube-boundary, or interval-endpoint loss.
- Forbidden-shortcut audit: the proof does not use
  Assumption~\ref{assump:joint-density-cap}, independence, marginal
  densities, any probability statement, a prescribed global pivot, a
  uniform pivot margin, injectivity, finite fibers, regular values,
  transversality, simple roots, any later proof step, or an assembly
  conclusion.
- Diagnostic boundary: accepted `global_proof_review.md` with SHA-256
  `24ad84083a200f89cc8c7973ee168783bca0c81c3432ac73e24f50e4606184dd`
  was verified `ACCEPTED` for `global_proof.md` with SHA-256
  `80b090266336b304ff4ca0184709b45eff448c3f1758efdaa09d923c8dbfaee8`.
  Its step-relevant planning pattern was the descriptive-set preflight,
  localized equal-dimensional area formula, exact graph union, and
  monotone disjoint-cell budget. It was not used as evidence, a cited result,
  an assumption source, or authority to change the target.
- Same-step history boundary: the consumed sketch-attempt-2 proof SHA-256
  `600dae80a5c1e625dfce538a887d37242f083020b5042a8036ed014a79b91bdc`
  and review SHA-256
  `c935863b672cd9244c1c9bb33a86037e0226b417608b9c80c911b35aa6fc824e`
  were byte-identical to their archived copies and were consulted only as
  same-step diagnostic material. They supply no current dependency identity,
  local unit, theorem label, cited-result discharge, assumption, or proof
  evidence. All four local units, theorem labels, dependency restatements,
  and citation applications above are freshly regenerated for sketch
  attempt 3.
- Producer-consumer boundary: this step exports only exact root-event
  measurability and the coefficient-volume certificate. It does not
  retransmit the separate strict-finiteness output of `step_001`.
- Progress boundary: this is a fixed-family `material_partial` proof.
  It neither claims nor implies polynomial control of
  \(\Gamma_{\rm piv}(b,F;R)\) from
  \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) or any other general
  Pfaffian-format data. That full-source complexity question remains open and
  outside this step.
