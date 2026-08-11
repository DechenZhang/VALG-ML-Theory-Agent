# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: step_003
- Unit attempt: 1
- Setting SHA-256: 6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e
- Accepted sketch SHA-256: 41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4
- Accepted sketch-review SHA-256: a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9
- Accepted dependency step_001 proof SHA-256:
  6986e91d1b2a06c451ae6bba842e30747ac507bf3e0eeee09371c1af0b6d4ff8
- Accepted dependency step_001 review SHA-256:
  4ec6dfad924606b81aa28203e98ac3989ae15cf573297004efbd7036e4455f55
- Accepted dependency step_002 proof SHA-256:
  a87b6ac3a6ad433b1b2333739ad1631d0dbc426763125c63f16b87b8a9ae530e
- Accepted dependency step_002 review SHA-256:
  de2b4a1dfbc918951e5a29b0964724c1089755860403194b80dcc33f5ec81f75
- Binding global diagnostic SHA-256:
  bb35e66556b216cac02945e249c92fac526b5b021104daa0f32b0ce7691a22fc
- Binding global-review SHA-256:
  c990e29c701a493a71e87aef1aa5c099ed26c6f8132a03f15bc0c7e5fb3c0146
- Evidence boundary: The two global hashes are identity checks only. The global diagnostic is not an
  assumption, dependency, cited result, or proof authority. The consumed sketch-attempt-1 same-step proof and
  review are diagnostic history only and are not current evidence.

## Target Step Claim

The exact accepted sketch-attempt-2 row is:

- Intended claim: For every measurable legal pivot partition, prove the indicator and indicator-dropped affine
  chart inequalities by applying the area formula on \(E_{j,n}\), summing charts, and taking \(n\to\infty\),
  with tangent, multiple, endpoint, and persistent roots handled.
- Depends on: step_001, step_002.
- Assumptions used: Primitive: all four setting assumptions; derived: nonvanishing/regularity from step_001 and
  nullity from step_002.
- Technical challenge: Establish Lipschitz chart restrictions and complete root-event coverage without a
  uniform pivot margin or simple roots while retaining the actual \(N\)-dimensional coefficient law.
- Intended proof tool or cited result: Standard Euclidean area formula for \(\Psi_j\), exact determinant,
  image-multiplicity inequality, density domination, and monotone convergence; Balcan--Dick--Pegden Theorem 18
  as affine lineage only.
- Output target: Common affine pivot-sweep theorem.
- Rate objective: R2 and R4: exact chart integrals, arbitrary correlation, no hidden constants.
- Row-local review status: PENDING. Sketch-level acceptance is supplied by the binding accepted
  proof-sketch review recorded above.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:parameter-regime: \(N\geq1\), \(R>0\), \(0<\kappa<\infty\), \(\Theta\) is a compact interval,
    \(U\supseteq\Theta\) is open, and all presentation data are finite and fixed before a law, interval, or
    partition is selected. This supplies the finite-dimensional Euclidean spaces and compactness used below.
  - assump:balcan-common-chain: the displayed common chain and polynomial outputs are in the exact
    one-dimensional parameter convention. In particular, every \(F_i\), \(0\leq i\leq N\), is \(C^1\) on
    \(U\).
  - assump:anchored-derivative-closure: the original feature tuple has the fixed anchored coordinate and obeys
    the displayed derivative identity. This assumption supplies no pivot margin, transversality, root
    simplicity, root-count bound, or swept-area estimate.
  - assump:cube-density-laws: for each arbitrary
    \(\mu\in\mathcal D_{N,R,\kappa}\), the original coefficient vector
    \(\alpha\in\mathbb R^N\) has one full joint Lebesgue density \(f_\mu\), supported on
    \([-R,R]^N\), with \(0\leq f_\mu\leq\kappa\) almost everywhere. Coordinate independence, product
    structure, marginal bounds, and conditional-density bounds are unavailable and unused.
- Derived invariants supplied by accepted dependencies:
  - The current accepted Anchor nonvanishing Lemma~\ref{lem:step-001-anchor}, in the step_001 proof and review
    with the exact hashes in Step Identity, gives
    \[
    F_{j_*}(\theta)=1,\qquad \lVert F(\theta)\rVert_2\geq1,\qquad F(\theta)\neq0
    \quad(\theta\in\Theta).
    \]
    This step uses the literal anchor and nonvanishing only. Feature \(C^1\) regularity is also directly
    available from the primitive presentation.
  - The current accepted Borel and Lebesgue nullity Lemma~\ref{lem:step-002-lebesgue-null} and Nullity under
    arbitrary full joint laws Proposition~\ref{prop:step-002-law-null}, in the step_002 proof and review with
    the exact hashes in Step Identity, give, for every interval \(I\subseteq\Theta\) with
    \(\lvert I\rvert>0\) and every \(\mu\in\mathcal D_{N,R,\kappa}\),
    \[
    Z_\infty(I)
    :=\{a\in\mathbb R^N:F_0+\langle a,F\rangle\equiv0\text{ on }I\}
    \quad\text{is Borel and}\quad
    \mu(Z_\infty(I))=0.
    \]
- Local conditional hypotheses: None. Fixing an arbitrary law, a positive-length interval, a measurable legal
  pivot partition, a chart index \(j\), or an exhaustion level \(n\) only instantiates universal quantifiers.
  The inequality \(\lvert F_j\rvert\geq1/n\) is generated by the proof and disappears under monotone
  exhaustion; it is not a theorem-facing pivot assumption.
- Accepted dependency artifacts used:
  - perspective_2/idea_1/proof_steps/step_001/proof.md and its matching
    perspective_2/idea_1/proof_steps/step_001/review.md, with the two exact hashes in Step Identity and review
    status ACCEPTED.
  - perspective_2/idea_1/proof_steps/step_002/proof.md and its matching
    perspective_2/idea_1/proof_steps/step_002/review.md, with the two exact hashes in Step Identity and review
    status ACCEPTED.
  - No later proof step and no global diagnostic statement is used.

A measurable legal pivot partition means an exact set partition

\[
I=\bigsqcup_{j=1}^N E_j,
\qquad
E_j\text{ is Lebesgue measurable},
\qquad
F_j(\theta)\neq0\quad(\theta\in E_j).
\]

All completed-Lebesgue measurable coefficient sets below are evaluated under the canonical completion of
\(\mu\). This does not change any Borel probability because
\(\mu\ll\lambda_N\). The root event itself will be proved Borel.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-derivative-closure}, and \ref{assump:cube-density-laws}, and accepted Lemma~\ref{lem:step-001-anchor}, for every admissible law, positive-length interval, and measurable legal pivot partition, the root event is Borel, all finite pivot and indicator domains are completed-Lebesgue measurable, their chart integrands are measurable, and \(E_{j,n}\uparrow E_j\). | Supplies root-event measurability, domain legality, and the exact monotone exhaustion. |
| unit_002 | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and Lemma~\ref{lem:step-003-measurable-domains}, for every \(j,n\), the original-coordinate map \(\Psi_j\) is Lipschitz on the full finite-pivot restriction, including disconnected restrictions, satisfies the exact affine root identity, and has \(\lvert\det D\Psi_j\rvert=\lvert\partial_\theta T_j\rvert\), including \(N=1\). | Establishes finite-level chart legality and the exact equal-dimensional determinant without a uniform pivot margin. |
| unit_003 | proposition | Under Assumption~\ref{assump:cube-density-laws}, Lemmas~\ref{lem:step-003-measurable-domains} and \ref{lem:step-003-finite-chart}, and the restated equal-dimensional Euclidean area formula, every finite chart image and finite chart union is completed measurable and obeys the exact \(\kappa\)-density bound by the sum of indicator-Jacobian integrals, with tangent, multiple, zero-Jacobian, finite-fiber, infinite-fiber, endpoint, cube-face, and \(N=1\) cases retained. | Gives multiplicity-safe finite-level coefficient volume and probability control under the actual joint law. |
| unit_004 | lemma | Under accepted Lemma~\ref{lem:step-001-anchor}, accepted Lemma~\ref{lem:step-002-lebesgue-null} and Proposition~\ref{prop:step-002-law-null}, and Lemma~\ref{lem:step-003-measurable-domains}, every nonpersistent coefficient with a root in the tested interval lies in a finite exhaustion image, whereas the exact persistent and identically-zero class has probability zero under the same law; all endpoint, boundary, tangent, multiple, and infinite-root cases are covered. | Proves complete chart coverage and uses only the current accepted dependency to remove persistent roots. |
| unit_005 | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-derivative-closure}, and \ref{assump:cube-density-laws}, the accepted dependency results Lemma~\ref{lem:step-001-anchor}, Lemma~\ref{lem:step-002-lebesgue-null}, and Proposition~\ref{prop:step-002-law-null}, Proposition~\ref{prop:step-003-finite-area}, and Lemma~\ref{lem:step-003-root-coverage}, every admissible law, positive-length interval, and measurable legal pivot partition satisfies the exact indicator and indicator-dropped chart inequalities in the extended nonnegative reals, with literal coefficient \(\kappa\) and no extra chart, margin, or multiplicity factor. | Assembles exactly the common affine pivot-sweep theorem. |

Atomic step = no. Event and domain measurability, finite-level Lipschitz/determinant control, area-formula
multiplicity, complete event coverage, and the exhaustion limit are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: Anchor nonvanishing

- Source or name: accepted Anchor nonvanishing Lemma~\ref{lem:step-001-anchor}.
- Restated statement: Under the dependency's three stated primitive assumptions,
  \(F_{j_*}=1\), \(\lVert F\rVert_2\geq1\), and \(F\neq0\) at every point of \(\Theta\).
- Instantiated objects: the original feature vector \(F\), original coefficient coordinate \(j_*\), and the
  same \(\Theta\) and \(I\) as in this proof.
- Assumption discharge: the current proof/review hashes and ACCEPTED status are recorded in Step Identity.
  No matrix, projective, monic, or probability conclusion is imported from this dependency.
- Conclusion used: a legal pivot exists at every parameter point, and the specified pivot on each \(E_j\) is
  genuinely nonzero.

### Accepted dependency: Persistent-root nullity

- Source or name: accepted Borel and Lebesgue nullity
  Lemma~\ref{lem:step-002-lebesgue-null} and Nullity under arbitrary full joint laws
  Proposition~\ref{prop:step-002-law-null}.
- Restated statement: For the exact current-notation set
  \[
  Z_\infty(I)=\{a:F_0(\theta)+\langle a,F(\theta)\rangle=0
  \text{ for every }\theta\in I\},
  \]
  \(Z_\infty(I)\) is Borel, \(\lambda_N(Z_\infty(I))=0\), and
  \(\mu(Z_\infty(I))=0\) for every admissible full joint law and every positive-length interval.
- Instantiated objects: the same deterministic \(F_0,F\), original \(N\)-dimensional coefficient space,
  actual law \(\mu\), and literal endpoint convention of \(I\).
- Assumption discharge: the current proof/review hashes and ACCEPTED status are recorded in Step Identity.
  The lemma proves Borel/Lebesgue nullity from the anchor, and the proposition applies the one full density.
  Neither assumes independence or nonpersistence.
- Conclusion used: the persistent, including identically-zero, coefficient class contributes exactly zero
  probability and no exceptional remainder.

### Standard descriptive-set and completion facts

- Restated statements in current notation:
  1. The coordinate projection of a compact subset of
     \(\mathbb R\times\mathbb R^N\) is compact. A countable union of compact subsets of
     \(\mathbb R^N\) is \(F_\sigma\), hence Borel.
  2. A Lebesgue-measurable subset of Euclidean space differs from a Borel set by a Lebesgue-null set. Products
     of Lebesgue-measurable Euclidean sets are measurable in the product completion.
  3. The continuous image of a Borel subset of a Polish Euclidean space is analytic and hence universally,
     in particular Lebesgue, measurable.
  4. If \(G\) is Lipschitz between equal-dimensional Euclidean spaces, then the image of a Lebesgue-null set
     is Lebesgue-null. Thus the image of a completed-measurable domain is completed measurable after replacing
     the domain by a Borel representative.
- Instantiated objects: compact zero-incidence sets over compact exhaustions of \(I\); the domains
  \(E_{j,n}\), \(D_{j,n}\); their Borel representatives; and the maps \(\Psi_j\).
- Assumption discharge: continuity of the incidence map follows from the primitive \(C^1\) feature
  presentation; the parameter and coefficient exhaustions are compact; finite-level Lipschitz regularity is
  proved in Lemma~\ref{lem:step-003-finite-chart}.
- Conclusions used: the root event is Borel and every finite chart image is measurable in the completed law.

### Standard equal-dimensional Euclidean area formula

- Restated statement in current notation: Let \(D\subseteq\mathbb R^N\) be Lebesgue measurable and let
  \(G:D\to\mathbb R^N\) be Lipschitz. Suppose \(G\) is the restriction on \(D\) of a \(C^1\) formula on an
  open neighborhood of \(D\). A Euclidean Lipschitz map on a subset has a Lipschitz extension to
  \(\mathbb R^N\); almost every point of \(D\) is a density point; and, at common differentiability density
  points, the extension derivative agrees with the derivative of the ambient \(C^1\) formula because the two
  maps agree on \(D\). With that derivative convention,
  \[
  \int_D \lvert\det DG(x)\rvert\,d\lambda_N(x)
  =
  \int_{\mathbb R^N} N(G,D,y)\,d\lambda_N(y),
  \]
  where
  \[
  N(G,D,y):=\#\{x\in D:G(x)=y\}\in\{0,1,2,\ldots,\infty\}.
  \]
  The derivative of the extension agrees almost everywhere on \(D\) with the ambient \(C^1\) derivative.
  Consequently
  \[
  \lambda_N(G(D))
  \leq
  \int_D\lvert\det DG(x)\rvert\,d\lambda_N(x),
  \]
  with no injectivity, noncriticality, simple-root, or finite-fiber assumption.
- Instantiated objects: \(D=D_{j,n}\), \(G=\Psi_j\), source coordinates
  \((\theta,\beta)\in\mathbb R\times\mathbb R^{N-1}\), and target coordinate
  \(a\in\mathbb R^N\). Both source and target have exactly dimension \(N\).
- Assumption discharge: Lemma~\ref{lem:step-003-measurable-domains} proves completed domain measurability;
  Lemma~\ref{lem:step-003-finite-chart} proves a Lipschitz restriction, an ambient \(C^1\) chart formula on
  the nonzero-pivot open set, and the exact determinant.
- Conclusion used: image volume is at most the exact Jacobian integral, while all finite or infinite
  preimages are charged through the extended multiplicity.

### Standard calculus and Euclidean facts

- Restated statements in current notation:
  1. A continuous real function on compact \(\Theta\) has a finite supremum. In particular, primitive
     \(C^1\) regularity makes every \(M_i=\sup_\Theta\lvert F_i\rvert\) and
     \(L_i=\sup_\Theta\lvert F_i'\rvert\) finite.
  2. If \(u\) is \(C^1\) on the interval \(\Theta\), then
     \[
     \lvert u(\theta)-u(\vartheta)\rvert
     \leq
     \sup_{\xi\in\Theta}\lvert u'(\xi)\rvert
     \lvert\theta-\vartheta\rvert
     \qquad(\theta,\vartheta\in\Theta).
     \]
  3. For finite real vectors \(x,y\) of the same dimension,
     \[
     \lvert\langle x,y\rangle\rvert
     \leq\lVert x\rVert_2\lVert y\rVert_2.
     \]
- Instantiated objects: \(u=F_i\), \(0\leq i\leq N\), and the nonpivot vectors appearing in the beta
  difference of \(T_j\).
- Assumption discharge: primitive \(C^1\) regularity holds on the interval \(\Theta\), every displayed
  derivative supremum is finite by compactness, and every beta vector has finite dimension \(N-1\).
- Conclusions used: the explicit global quotient and beta Lipschitz bounds in
  Lemma~\ref{lem:step-003-finite-chart}.

### Standard nonnegative measure and limit facts

- Restated statements in current notation:
  1. If \(g\geq0\) is measurable on a product Euclidean space, Tonelli's theorem identifies its product
     integral with either iterated integral in \([0,\infty]\).
  2. If \(A_n\uparrow A\) are measurable under a measure \(\nu\), then
     \(\nu(A_n)\uparrow\nu(A)\).
  3. If \(g_n\uparrow g\) are nonnegative measurable functions, then
     \(\int g_n\uparrow\int g\), without an integrability hypothesis.
  4. A fixed finite sum commutes with a monotone limit of nonnegative extended-real sequences.
  5. For completed-measurable \(B\subseteq[-R,R]^N\),
     \[
     \mu(B)=\int_B f_\mu\,d\lambda_N
     \leq\kappa\lambda_N(B),
     \]
     and finite subadditivity gives
     \(\lambda_N(\bigcup_{j=1}^N B_j)\leq\sum_{j=1}^N\lambda_N(B_j)\).
  6. A singleton in \(\mathbb R\) has one-dimensional Lebesgue measure zero, so
     \(\{\theta_0\}\times[-R,R]^{N-1}\) has \(N\)-dimensional product measure zero; also
     \[
     \lambda_{N-1}([-R,R]^{N-1})=(2R)^{N-1},
     \]
     with \(\lambda_0([-R,R]^0)=1\).
- Instantiated objects: the indicator-Jacobian on \(D_{j,n}\), the increasing finite chart unions \(A_n\),
  the chart images \(A_{j,n}\), endpoint slices, beta cubes, and the functions obtained by multiplying the
  chart integrand by \(\mathbf 1_{E_{j,n}}\).
- Assumption discharge: measurability and nesting are proved in
  Lemma~\ref{lem:step-003-measurable-domains} and
  Proposition~\ref{prop:step-003-finite-area}; every integrand is nonnegative; and
  Assumption~\ref{assump:cube-density-laws} supplies the actual joint density, its support, and its
  almost-everywhere cap.
- Conclusions used: the area integrals have the displayed iterated form, and the limit passes exactly to
  \(E_j\) even when the limiting integral is \(+\infty\); finite chart images are summed with no extra
  constant; and the literal beta-cube factor is retained.

### Lineage-only source

Balcan--Dick--Pegden Theorem 18 (arXiv:1904.09014) is recorded only as affine-coefficient lineage. No
statement, notation, conditional-density argument, or conclusion from it is used. The area, descriptive-set,
and measure facts actually used are fully restated and instantiated above.

### Local result application map

- Lemma~\ref{lem:step-003-measurable-domains}: under its four named primitive assumptions and accepted anchor
  dependency, it supplies the Borel root event, completed finite domains, measurable integrands, and
  \(E_{j,n}\uparrow E_j\). It is used by Lemma~\ref{lem:step-003-finite-chart},
  Proposition~\ref{prop:step-003-finite-area}, and Lemma~\ref{lem:step-003-root-coverage}.
- Lemma~\ref{lem:step-003-finite-chart}: under its three named primitive assumptions and the preceding
  measurability lemma, it supplies finite-level Lipschitz regularity, exact original-coordinate root insertion,
  and \(\lvert\det D\Psi_j\rvert=\lvert\partial_\theta T_j\rvert\). It is used by
  Proposition~\ref{prop:step-003-finite-area}.
- Proposition~\ref{prop:step-003-finite-area}: under the named density assumption, the two preceding lemmas,
  and the checked area formula, it supplies completed finite image measurability, nesting, cube containment,
  multiplicity control, and the exact finite probability bound. It is used by
  Proposition~\ref{prop:step-003-pivot-sweep}.
- Lemma~\ref{lem:step-003-root-coverage}: under the exact accepted anchor, Borel-nullity, and law-nullity
  dependency conclusions and
  Lemma~\ref{lem:step-003-measurable-domains}, it supplies nonpersistent finite-chart coverage and the exact
  zero persistent remainder. It is used by Proposition~\ref{prop:step-003-pivot-sweep}.
- Proposition~\ref{prop:step-003-pivot-sweep}: under the four named primitive assumptions, both accepted
  dependencies, and the two named local inputs, it supplies both exact target inequalities. It is used in
  Target-Step Assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Measurable incidence and finite pivot exhaustion).**
\(\label{lem:step-003-measurable-domains}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain},
\ref{assump:anchored-derivative-closure}, and \ref{assump:cube-density-laws}, and the accepted Anchor
nonvanishing Lemma~\ref{lem:step-001-anchor}, fix an arbitrary
\(\mu\in\mathcal D_{N,R,\kappa}\), an interval \(I\subseteq\Theta\) with
\(\lvert I\rvert>0\) and its literal endpoint convention, and a Lebesgue-measurable legal partition
\[
I=\bigsqcup_{j=1}^N E_j,\qquad F_j\neq0\text{ on }E_j.
\]
Define
\[
\mathcal R_I
:=\{a\in[-R,R]^N:\exists\theta\in I,\
F_0(\theta)+\langle a,F(\theta)\rangle=0\},
\]
\[
E_{j,n}:=\{\theta\in E_j:\lvert F_j(\theta)\rvert\geq1/n\},
\]
and
\[
D_{j,n}
:=\{(\theta,\beta):
\theta\in E_{j,n},\ \beta\in[-R,R]^{N-1},\
\lvert T_j(\theta,\beta)\rvert\leq R\}.
\]
Then \(\mathcal R_I\) is Borel; \(E_{j,n}\) and \(D_{j,n}\) are completed-Lebesgue measurable;
\(D_{j,n}\subseteq D_{j,n+1}\); and
\[
E_{j,n}\uparrow E_j.
\]
Moreover \(T_j\), \(\partial_\theta T_j\), and
\[
\mathbf 1\{\lvert T_j\rvert\leq R\}\lvert\partial_\theta T_j\rvert
\]
are measurable on the relevant pivot domains. For \(N=1\), the beta domain is
\([-R,R]^0=\{()\}\), its \(0\)-dimensional Lebesgue mass is one, and all nonpivot sums are empty.

**Proof / justification.** The primitive common-chain presentation makes each \(F_i\) continuously
differentiable on \(U\). Hence
\[
h(\theta,a):=F_0(\theta)+\langle a,F(\theta)\rangle
\]
is continuous on \(U\times\mathbb R^N\).

Because \(I\) is a bounded interval, it admits compact sets \(K_r\subseteq I\) with
\(K_r\uparrow I\), for every choice of open, closed, or half-open endpoints. Concretely, trim every excluded
endpoint by \(1/r\) and retain every included endpoint once the trimmed interval is nonempty. For each \(r\),
\[
C_r:=\{(\theta,a)\in K_r\times[-R,R]^N:h(\theta,a)=0\}
\]
is closed in a compact product, hence compact. Its coefficient projection is compact. The exact identity
\[
\mathcal R_I=\bigcup_{r=1}^{\infty}\operatorname{proj}_a(C_r)
\]
therefore makes \(\mathcal R_I\) an \(F_\sigma\) subset of \(\mathbb R^N\). This proves Borel measurability
without deleting an included parameter endpoint or a coefficient-cube face.

For fixed \(j,n\), continuity of \(F_j\) makes
\(\{\theta\in\Theta:\lvert F_j(\theta)\rvert\geq1/n\}\) closed. Its intersection with the
Lebesgue-measurable cell \(E_j\) is \(E_{j,n}\), hence is Lebesgue measurable. The product
\(E_{j,n}\times[-R,R]^{N-1}\) is measurable in the Euclidean product completion.

On the open nonzero-pivot set
\[
\Omega_j:=\{(\theta,\beta)\in U\times\mathbb R^{N-1}:F_j(\theta)\neq0\},
\]
write
\[
G_j(\theta,\beta)
:=F_0(\theta)+\sum_{i\neq j}\beta_iF_i(\theta).
\]
Then
\[
T_j=-\frac{G_j}{F_j},
\qquad
\partial_\theta T_j
=-\frac{(\partial_\theta G_j)F_j-G_jF_j'}{F_j^2}.
\]
Both functions are continuous on \(\Omega_j\). Thus \(D_{j,n}\) is the intersection of the measurable
product domain with the measurable weak-threshold set
\(\{\lvert T_j\rvert\leq R\}\); it is completed measurable. The displayed nonnegative integrand is
measurable there as a product of measurable functions.

The threshold \(1/n\) decreases with \(n\), so \(E_{j,n}\subseteq E_{j,n+1}\) and
\(D_{j,n}\subseteq D_{j,n+1}\). If \(\theta\in E_j\), legality gives
\(\lvert F_j(\theta)\rvert>0\). Choosing any integer
\[
n\geq\frac{1}{\lvert F_j(\theta)\rvert}
\]
puts \(\theta\) in \(E_{j,n}\). Hence \(\bigcup_nE_{j,n}=E_j\), with no uniform lower bound on the pivot.
For \(N=1\), the same proof has a one-point beta space and empty sums. \(\square\)

### unit_002: lemma

**Lemma (Original-coordinate finite charts and exact Jacobian).**
\(\label{lem:step-003-finite-chart}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and
\ref{assump:anchored-derivative-closure}, and Lemma~\ref{lem:step-003-measurable-domains}, for every
\(j\in\{1,\ldots,N\}\) and \(n\geq1\), define
\[
K_{j,n}:=\{\theta\in\Theta:\lvert F_j(\theta)\rvert\geq1/n\}.
\]
The restrictions of \(T_j\) and \(\Psi_j\) to
\(K_{j,n}\times[-R,R]^{N-1}\), and hence to \(D_{j,n}\), are Lipschitz even when the restriction is
disconnected. The map inserts the solved root in the original \(j\)-th coefficient coordinate:
\[
(\Psi_j(\theta,\beta))_j=T_j(\theta,\beta),
\qquad
(\Psi_j(\theta,\beta))_i=\beta_i\quad(i\neq j),
\]
and it satisfies
\[
F_0(\theta)+\langle\Psi_j(\theta,\beta),F(\theta)\rangle=0.
\]
On the ambient open pivot set, and therefore almost everywhere on every \(D_{j,n}\),
\[
\lvert\det D\Psi_j(\theta,\beta)\rvert
=\lvert\partial_\theta T_j(\theta,\beta)\rvert.
\]
For \(N=1\), this is the determinant of the \(1\times1\) derivative matrix.

**Proof / justification.** Compactness of \(\Theta\) and primitive \(C^1\) regularity give finite
proof-local quantities
\[
M_i:=\sup_{\theta\in\Theta}\lvert F_i(\theta)\rvert,
\qquad
L_i:=\sup_{\theta\in\Theta}\lvert F_i'(\theta)\rvert,
\qquad 0\leq i\leq N.
\]
If \(K_{j,n}\) is empty, every Lipschitz assertion is vacuous. Otherwise take
\(\theta,\vartheta\in K_{j,n}\). For every \(i\in\{0,\ldots,N\}\setminus\{j\}\), direct quotient algebra,
the two endpoint denominator bounds, and the mean-value bound on the full interval \(\Theta\) give
\[
\begin{aligned}
\left\lvert
\frac{F_i(\theta)}{F_j(\theta)}
-\frac{F_i(\vartheta)}{F_j(\vartheta)}
\right\rvert
&\leq
n\lvert F_i(\theta)-F_i(\vartheta)\rvert
+n^2M_i\lvert F_j(\theta)-F_j(\vartheta)\rvert\\
&\leq
(nL_i+n^2M_iL_j)\lvert\theta-\vartheta\rvert.
\end{aligned}
\]
Also
\[
\left\lvert\frac{F_i(\theta)}{F_j(\theta)}\right\rvert\leq nM_i.
\]
No segment is required to stay in \(K_{j,n}\); only its two endpoints use the pivot margin, while the
mean-value estimate is taken on the ambient interval. The calculation therefore remains valid across
different connected components and if \(F_j\) has opposite signs on those components.

For \(\beta,\gamma\in[-R,R]^{N-1}\), split the difference first in \(\theta\) and then in beta. The preceding
bounds and Cauchy--Schwarz yield
\[
\lvert T_j(\theta,\beta)-T_j(\vartheta,\gamma)\rvert
\leq
C_{\theta,j,n}\lvert\theta-\vartheta\rvert
+C_{\beta,j,n}\lVert\beta-\gamma\rVert_2,
\]
where
\[
C_{\theta,j,n}
:=nL_0+n^2M_0L_j
+R\sum_{\substack{1\leq i\leq N\\i\neq j}}
(nL_i+n^2M_iL_j),
\]
\[
C_{\beta,j,n}
:=n\left(\sum_{\substack{1\leq i\leq N\\i\neq j}}M_i^2\right)^{1/2}.
\]
These are finite explicit proof-level constants, not theorem-facing margins. The displayed bound proves that
\(T_j\) is Lipschitz for the Euclidean product metric. Since \(\Psi_j\) inserts \(T_j\) and copies every beta
coordinate, \(\Psi_j\) is Lipschitz on the same set.

The root identity is exact:
\[
\begin{aligned}
F_0(\theta)+\langle\Psi_j(\theta,\beta),F(\theta)\rangle
&=F_0(\theta)+T_j(\theta,\beta)F_j(\theta)
+\sum_{i\neq j}\beta_iF_i(\theta)\\
&=0.
\end{aligned}
\]
Thus \(\Psi_j\) outputs the original coefficient vector, not a transformed or augmented coordinate.

Order the nonpivot indices as \(i_1,\ldots,i_{N-1}\), use input coordinates
\((\theta,\beta_{i_1},\ldots,\beta_{i_{N-1}})\), and temporarily permute output rows into the order
\((j,i_1,\ldots,i_{N-1})\). The derivative matrix is
\[
\begin{pmatrix}
\partial_\theta T_j&
\partial_{\beta_{i_1}}T_j&\cdots&
\partial_{\beta_{i_{N-1}}}T_j\\
0&1&\cdots&0\\
\vdots&\vdots&\ddots&\vdots\\
0&0&\cdots&1
\end{pmatrix}.
\]
Its determinant is \(\partial_\theta T_j\). Undoing the row permutation changes only the sign, so the
absolute determinant is exactly \(\lvert\partial_\theta T_j\rvert\). The formula is \(C^1\) on
\(\Omega_j\); derivative locality therefore supplies this ambient derivative almost everywhere on the
measurable restriction \(D_{j,n}\). When \(N=1\), there is no row permutation or beta coordinate, and the
matrix is \((\partial_\theta T_1)\). \(\square\)

### unit_003: proposition

**Proposition (Multiplicity-safe finite-level area and joint-density bound).**
\(\label{prop:step-003-finite-area}\)

Under Assumption~\ref{assump:cube-density-laws},
Lemmas~\ref{lem:step-003-measurable-domains} and \ref{lem:step-003-finite-chart}, and the restated
equal-dimensional Euclidean area formula, define
\[
A_{j,n}:=\Psi_j(D_{j,n}),
\qquad
A_n:=\bigcup_{j=1}^N A_{j,n}.
\]
For every \(\mu\in\mathcal D_{N,R,\kappa}\), every interval
\(I\subseteq\Theta\) with \(\lvert I\rvert>0\), and every measurable legal pivot partition fixed as in
Lemma~\ref{lem:step-003-measurable-domains}, every \(A_{j,n}\) and \(A_n\) is completed-Lebesgue measurable,
\[
A_n\subseteq[-R,R]^N,
\qquad
A_n\subseteq A_{n+1},
\]
and
\[
\mu(A_n)
\leq
\kappa\sum_{j=1}^N
\int_{E_{j,n}}\int_{[-R,R]^{N-1}}
\mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\,d\beta\,d\theta.
\]
The conclusion retains zero-Jacobian charts, tangent and multiple roots, finite and infinite fibers, included
interval endpoints, every closed coefficient-cube face, and \(N=1\).

**Proof / justification.** Fix \(j,n\). The domain \(D_{j,n}\) is completed measurable by
Lemma~\ref{lem:step-003-measurable-domains}, while
Lemma~\ref{lem:step-003-finite-chart} gives a Lipschitz restriction of the ambient \(C^1\) chart and its exact
determinant. Applying the restated equal-dimensional area formula gives
\[
\begin{aligned}
\lambda_N(A_{j,n})
&\leq
\int_{D_{j,n}}\lvert\det D\Psi_j(\theta,\beta)\rvert\,d\theta\,d\beta\\
&=
\int_{E_{j,n}}\int_{[-R,R]^{N-1}}
\mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\,d\beta\,d\theta.
\end{aligned}
\]
Tonelli applies because the integrand is nonnegative and measurable, including if the integral is infinite.

For completeness, completed image measurability is not being assumed. Choose a Borel representative of
\(D_{j,n}\) modulo a null set and intersect that representative with
\[
K_{j,n}\times[-R,R]^{N-1}\subseteq\Omega_j.
\]
This does not change it modulo a null set because \(D_{j,n}\) is already contained in that finite-pivot
product. The map is continuous and Lipschitz there, so the image of the Borel part is analytic and Lebesgue
measurable.
The finite-level Lipschitz map sends the null symmetric difference to a null set by the equal-dimensional
area inequality. Hence \(A_{j,n}\), and then the finite union \(A_n\), is measurable in the completed
\(\lambda_N\)-space and in the completion of \(\mu\).

The exact multiplicity identity is
\[
\int_{D_{j,n}}\lvert\partial_\theta T_j\rvert
=
\int_{\mathbb R^N}
N(\Psi_j,D_{j,n},a)\,da.
\]
Every \(a\in A_{j,n}\) has multiplicity at least one. Several roots or several parameter-beta preimages are
all counted. If the fiber is infinite, the multiplicity is \(+\infty\); the pointwise inequality
\[
\mathbf 1_{A_{j,n}}(a)
\leq N(\Psi_j,D_{j,n},a)
\]
still has the same direction. Thus no injectivity, finite-root count, or simple-root condition enters the
volume estimate.

Differentiate the exact chart identity from Lemma~\ref{lem:step-003-finite-chart} at fixed beta:
\[
F_0'(\theta)
+\langle\Psi_j(\theta,\beta),F'(\theta)\rangle
+F_j(\theta)\partial_\theta T_j(\theta,\beta)
=0.
\]
On \(D_{j,n}\), \(F_j\neq0\). Therefore a tangent root, or any multiple root whose fixed-coefficient first
derivative vanishes, is a critical preimage with \(\partial_\theta T_j=0\). For the measurable critical set
\[
C_{j,n}
:=\{(\theta,\beta)\in D_{j,n}:\partial_\theta T_j(\theta,\beta)=0\},
\]
the same area formula gives
\[
\lambda_N(\Psi_j(C_{j,n}))
\leq\int_{C_{j,n}}0=0.
\]
Critical roots remain in the image; they are controlled by the area formula rather than excluded by a
transversality assumption. An identically zero chart Jacobian is the same zero-integral case.

If an endpoint \(\theta_0\) belongs to \(I\), it belongs literally to its partition cell and, when active, to
the corresponding finite-level domain. The slice
\(\{\theta_0\}\times[-R,R]^{N-1}\) has \(N\)-dimensional measure zero, so its Lipschitz image is null by the
same area formula. Thus endpoint roots are included and controlled; an excluded endpoint never belongs to the
event. The beta cube and the constraint \(\lvert T_j\rvert\leq R\) use weak inequalities, so every cube face
and corner is included.

Every output has nonpivot coordinates in \([-R,R]\) and pivot coordinate in \([-R,R]\), hence
\(A_n\subseteq[-R,R]^N\). Domain nesting gives image nesting. Since \(f_\mu\leq\kappa\) almost everywhere
under the one actual \(N\)-dimensional joint law,
\[
\begin{aligned}
\mu(A_n)
&=\int_{A_n}f_\mu(a)\,da\\
&\leq\kappa\lambda_N(A_n)\\
&\leq\kappa\sum_{j=1}^N\lambda_N(A_{j,n}).
\end{aligned}
\]
Substituting the chart area bounds proves the displayed inequality. Nothing factors \(f_\mu\), conditions on
a coordinate, or replaces it by a marginal density. For \(N=1\), the beta integral is integration over the
one-point \(0\)-dimensional cube with mass
\[
\lambda_0([-R,R]^0)=1=(2R)^0.
\]
\(\square\)

### unit_004: lemma

**Lemma (Complete root coverage and accepted persistent-root removal).**
\(\label{lem:step-003-root-coverage}\)

Under the accepted Anchor nonvanishing Lemma~\ref{lem:step-001-anchor}, the accepted Borel and Lebesgue
nullity Lemma~\ref{lem:step-002-lebesgue-null}, the accepted Nullity under arbitrary full joint laws
Proposition~\ref{prop:step-002-law-null}, and
Lemma~\ref{lem:step-003-measurable-domains}, for every admissible law, positive-length interval, and
measurable legal pivot partition,
\[
\mathcal R_I
\subseteq
Z_\infty(I)\cup\bigcup_{n=1}^{\infty}A_n,
\qquad
\mu(Z_\infty(I))=0.
\]
Every nonpersistent root coefficient enters an actual finite chart in the original coefficient cube. The
statement includes endpoint and cube-boundary roots, tangent and multiple roots, nonpersistent coefficients
with finite or infinite root sets, and persistent or identically-zero affine combinations.

**Proof / justification.** Lemma~\ref{lem:step-002-lebesgue-null} gives Borel measurability of the exact
persistent locus, and the probability-zero statement is exactly
Proposition~\ref{prop:step-002-law-null}, both instantiated with the same \(F_0,F,I,\mu\) and original
coefficient space. These accepted dependency conclusions are the only results used to remove persistent or
identically-zero affine combinations; they are not assumed absent and no independent continuation or root
theorem is invoked.

Take \(a\in\mathcal R_I\setminus Z_\infty(I)\). By the definition of \(\mathcal R_I\), choose one root
\(\theta\in I\). The exact partition has a unique \(j\) with \(\theta\in E_j\), and legality gives
\(F_j(\theta)\neq0\). Let \(\beta=a_{-j}\) be the list of the original nonpivot coordinates. Since
\(a\in[-R,R]^N\),
\[
\beta\in[-R,R]^{N-1}.
\]
Solving the actual affine equation in the actual \(j\)-th coefficient gives
\[
\begin{aligned}
a_j
&=-\frac{F_0(\theta)}{F_j(\theta)}
-\sum_{i\neq j}a_i\frac{F_i(\theta)}{F_j(\theta)}\\
&=T_j(\theta,\beta).
\end{aligned}
\]
Thus \(\lvert T_j(\theta,\beta)\rvert=\lvert a_j\rvert\leq R\). Choose an integer
\[
n\geq\frac1{\lvert F_j(\theta)\rvert}.
\]
Then \(\theta\in E_{j,n}\), \((\theta,\beta)\in D_{j,n}\), and the exact original-coordinate insertion gives
\[
\Psi_j(\theta,\beta)=a.
\]
Therefore \(a\in A_{j,n}\subseteq A_n\), proving the inclusion.

This argument selects only one root and never differentiates it. It applies unchanged to tangent or multiple
roots and to a nonpersistent coefficient with infinitely many roots. Weak cube inequalities retain faces and
corners. An included endpoint is a literal member of \(I\) and of its partition cell; an excluded endpoint is
not part of the event. A pivot may be arbitrarily small, because the chosen root needs only one finite
coefficient-dependent level. For \(N=1\), beta is the empty tuple and the same equation reads
\(a_1=T_1(\theta)\). Persistent and identically-zero cases remain present in
\(Z_\infty(I)\) and are removed only by the current accepted dependency. \(\square\)

### unit_005: proposition

**Proposition (Exhausted affine pivot-sweep inequality).**
\(\label{prop:step-003-pivot-sweep}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain},
\ref{assump:anchored-derivative-closure}, and \ref{assump:cube-density-laws}, the accepted Anchor
nonvanishing Lemma~\ref{lem:step-001-anchor}, the accepted Borel and Lebesgue nullity
Lemma~\ref{lem:step-002-lebesgue-null}, the accepted Nullity under arbitrary full joint laws
Proposition~\ref{prop:step-002-law-null},
Proposition~\ref{prop:step-003-finite-area}, and
Lemma~\ref{lem:step-003-root-coverage}, for every
\(\mu\in\mathcal D_{N,R,\kappa}\), every interval \(I\subseteq\Theta\) with
\(\lvert I\rvert>0\), and every Lebesgue-measurable legal partition
\[
I=\bigsqcup_{j=1}^N E_j,\qquad F_j\neq0\text{ on }E_j,
\]
one has, in the extended nonnegative reals,
\[
\begin{aligned}
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\phi_\alpha(\theta)=0]
&\leq
\kappa\sum_{j=1}^N
\int_{E_j}\int_{[-R,R]^{N-1}}
\mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\,d\beta\,d\theta\\
&\leq
\kappa\sum_{j=1}^N
\int_{E_j}\int_{[-R,R]^{N-1}}
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\,d\beta\,d\theta.
\end{aligned}
\]
The constants are literal. The conclusion includes \(N=1\), empty cells, zero Jacobians, pivots without a
uniform margin, every endpoint convention, all root multiplicities and fiber cardinalities, and
identically-zero affine combinations.

**Proof / justification.** Lemma~\ref{lem:step-003-root-coverage}, completed-measure subadditivity, and the
accepted persistent-root nullity give
\[
\begin{aligned}
\Pr_{\alpha\sim\mu}
[\exists\theta\in I:\phi_\alpha(\theta)=0]
&=\mu(\mathcal R_I)\\
&\leq
\mu(Z_\infty(I))
+\mu\left(\bigcup_{n=1}^{\infty}A_n\right)\\
&=
\mu\left(\bigcup_{n=1}^{\infty}A_n\right).
\end{aligned}
\]
The first equality uses only the primitive support statement
\(\mu([-R,R]^N)=1\), since \(\mathcal R_I\) is the full root event restricted to that support cube.
The measurable sets \(A_n\) increase by
Proposition~\ref{prop:step-003-finite-area}. Continuity from below and the finite-level bound yield
\[
\begin{aligned}
\mu\left(\bigcup_{n=1}^{\infty}A_n\right)
&=\lim_{n\to\infty}\mu(A_n)\\
&\leq
\kappa\lim_{n\to\infty}
\sum_{j=1}^N
\int_{E_{j,n}}\int_{[-R,R]^{N-1}}
\mathbf 1\{\lvert T_j\rvert\leq R\}
\lvert\partial_\theta T_j\rvert
\,d\beta\,d\theta.
\end{aligned}
\]

For fixed \(j\), extend the relevant nonnegative chart integrand by zero outside \(E_j\). By
Lemma~\ref{lem:step-003-measurable-domains},
\(\mathbf 1_{E_{j,n}}\uparrow\mathbf 1_{E_j}\). Monotone convergence, without any integrability
assumption, gives
\[
\begin{aligned}
&\lim_{n\to\infty}
\int_{E_{j,n}}\int_{[-R,R]^{N-1}}
\mathbf 1\{\lvert T_j\rvert\leq R\}
\lvert\partial_\theta T_j\rvert
\,d\beta\,d\theta\\
&\qquad=
\int_{E_j}\int_{[-R,R]^{N-1}}
\mathbf 1\{\lvert T_j\rvert\leq R\}
\lvert\partial_\theta T_j\rvert
\,d\beta\,d\theta.
\end{aligned}
\]
There are exactly \(N<\infty\) displayed chart terms, so direct finite addition commutes with the limit and
introduces no extra factor. This proves the indicator inequality, even if one or both sides are \(+\infty\).

Finally, pointwise on every legal chart domain,
\[
0\leq
\mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\leq
\lvert\partial_\theta T_j(\theta,\beta)\rvert.
\]
Tonelli and finite addition give the second inequality with coefficient one. No term other than the displayed
indicator is dropped.

For \(N=1\), the inner measure is
\(\lambda_0([-R,R]^0)=1\), so the formula is the exact one-dimensional area inequality. In every dimension,
\[
\lambda_{N-1}([-R,R]^{N-1})=(2R)^{N-1};
\]
the chart theorem leaves that beta integral intact, so this literal factor is available whenever a later
application bounds an integrand uniformly, without this step asserting any later specialization. Empty cells
give zero integrals, while divergent mass near a vanishing pivot is allowed by the extended-real statement.
\(\square\)

## Target-Step Assembly

Fix an arbitrary \(\mu\in\mathcal D_{N,R,\kappa}\), an arbitrary interval
\(I\subseteq\Theta\) with \(\lvert I\rvert>0\) and any endpoint convention, and an arbitrary
Lebesgue-measurable legal pivot partition.

Lemma~\ref{lem:step-003-measurable-domains} proves Borel measurability of the actual root event, completed
measurability of every finite pivot/indicator domain, measurability of the nonnegative chart integrands, and
the exact exhaustion \(E_{j,n}\uparrow E_j\). Lemma~\ref{lem:step-003-finite-chart} derives finite-level
Lipschitz regularity from explicit compact \(C^1\) bounds, even on disconnected pivot restrictions, and proves
both the original-coordinate affine root identity and the exact equal-dimensional determinant
\[
\lvert\det D\Psi_j\rvert=\lvert\partial_\theta T_j\rvert.
\]

Proposition~\ref{prop:step-003-finite-area} applies the fully restated Euclidean area formula on each
\(D_{j,n}\), keeps finite or infinite multiplicity, and obtains image volume without injectivity,
transversality, or simple roots. Its density calculation uses only the actual full
\(N\)-dimensional joint cap \(f_\mu\leq\kappa\), so arbitrary correlation is unchanged.
Lemma~\ref{lem:step-003-root-coverage} uses accepted
Lemma~\ref{lem:step-001-anchor} to activate one finite chart for every nonpersistent root and uses accepted
Lemma~\ref{lem:step-002-lebesgue-null} and Proposition~\ref{prop:step-002-law-null}, and no substitute result,
to make the persistent locus measurable and remove persistent and identically-zero coefficients with
probability exactly zero.

Proposition~\ref{prop:step-003-pivot-sweep} then applies continuity from below to the increasing coefficient
images and monotone convergence to the increasing nonnegative Jacobian masses. It gives exactly
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq
\kappa\sum_{j=1}^N
\int_{E_j}\int_{[-R,R]^{N-1}}
\mathbf 1\{\lvert T_j\rvert\leq R\}
\lvert\partial_\theta T_j\rvert\,d\beta\,d\theta,
\]
followed only by the coefficient-one domination
\[
\mathbf 1\{\lvert T_j\rvert\leq R\}
\lvert\partial_\theta T_j\rvert
\leq\lvert\partial_\theta T_j\rvert.
\]
Because the law, interval, and partition were arbitrary, these named results prove both inequalities with the
exact accepted quantifiers, literal \(\kappa\), original coefficient dimension, and extended-real scope.
Tangent, multiple, infinite-fiber, endpoint, persistent, zero-Jacobian, empty-cell, and \(N=1\) cases were
discharged inside the named results. No global diagnostic, Balcan--Dick--Pegden conclusion, later monic or
projective result, probability-closure theorem, or assembly conclusion is used.

## Explicit Rate Audit

- Exposed variables: \(N,R,\kappa\), the arbitrary law \(\mu\), the positive-length interval \(I\), the
  measurable legal cells \(E_j\), and the exact setting-defined chart quantities
  \(T_j,\partial_\theta T_j\). The coefficient on both chart sums is exactly \(\kappa\), and the unchanged
  beta cube has exact measure \((2R)^{N-1}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\mu\), \(I\), coefficient correlation, endpoint convention, a pivot
  margin, an exhaustion level, root multiplicity, fiber cardinality, \(q,M,\Delta\), or any later
  specialization.
- Fixed quantities: The deterministic setting instance
  \((\Theta,T,q,M,\Delta,N,R,\kappa,A,m,B,F_0,F)\) is fixed before \(\mu\), \(I\), and the partition are
  selected.
- Probability mode: Ordinary probability for each fixed arbitrary full joint law. There is no confidence
  parameter, conditioning event, independence conversion, marginalization argument, or simultaneous
  uncountable-law event.
- Horizon mode: Pairwise for every positive-length interval and measurable legal partition. The finite
  \(n\)-levels are a monotone proof exhaustion, not an exposed tolerance, asymptotic theorem, or horizon.
- Norm mode: Equal-dimensional Euclidean Jacobian and ordinary \(N\)-dimensional Lebesgue measure in the
  original coefficient coordinates; for \(N=1\), the beta factor is \(0\)-dimensional Lebesgue mass one.
- Admissibility conditions and auxiliary tolerances: Exactly the four primitive assumptions, the two current
  accepted dependency conclusions, and legality of the universally quantified partition. No auxiliary
  tolerance, transversality, simple-root condition, finite-root condition, uniform pivot bound, or open-cube
  restriction survives in the result.
- Term absorption or simplification inequalities: Nothing is absorbed. The only relaxation is
  \[
  \mathbf 1\{\lvert T_j\rvert\leq R\}
  \lvert\partial_\theta T_j\rvert
  \leq\lvert\partial_\theta T_j\rvert
  \]
  with literal coefficient one.
- Probability conversion: For every finite image union,
  \[
  \mu(A_n)\leq\kappa\lambda_N(A_n)
  \leq\kappa\sum_{j=1}^N\lambda_N(A_{j,n}),
  \]
  using only the one full joint density and preserving arbitrary correlation.
- Contribution to any Rate Specialization Bridge: This step exports only the exact R2/R4 chart interface. It
  preserves the original \(N\)-dimensional coefficient vector, deterministic \(F_0\), and beta-cube volume
  \((2R)^{N-1}\); it proves no later specialization or probability-closure statement.
- Baseline-reduction check, if applicable: The indicator is dropped with coefficient one and the beta
  dimension remains \(N-1\). For \(N=1\), the factor is exactly
  \((2R)^0=1\). More generally, for every beta-independent \(c\in[0,\infty]\),
  \[
  \kappa\int_{[-R,R]^{N-1}}c\,d\beta
  =\kappa(2R)^{N-1}c
  \]
  in the extended-real convention. No random leading coordinate, extra chart-count multiplier, or
  conservative remainder is introduced.

## Blockers

None

## Notation And Assumption Notes

- public-facing: The two inequalities in
  Proposition~\ref{prop:step-003-pivot-sweep} are the only exported conclusions. The symbols
  \(E_j,T_j,\Psi_j\) are setting-defined.
- public-facing dependency: \(Z_\infty(I)\) is inherited exactly from accepted step_002. Its Borel property
  comes from accepted Lemma~\ref{lem:step-002-lebesgue-null}, and its law-null property comes from accepted
  Proposition~\ref{prop:step-002-law-null}; neither is a primitive assumption.
- appendix-local: \(E_{j,n}\) is the target-prescribed finite pivot exhaustion and \(D_{j,n}\) is its
  finite indicator domain. Both are defined directly from the legal partition, the setting cube, and the
  setting chart. They package the area-formula application and are not exported as admissibility conditions.
- proof-local: \(h\), \(G_j\), \(\Omega_j\), \(\mathcal R_I\),
  \(K_r\), \(C_r\), \(K_{j,n}\), \(A_{j,n}\), \(A_n\), and \(C_{j,n}\) are derived directly from setting or
  accepted objects and disappear from the theorem interface.
- proof-local checked-result notation: \(\lambda_k\) is ordinary \(k\)-dimensional Lebesgue measure and
  \(N(G,D,y)\) is the extended multiplicity from the restated equal-dimensional area formula. The variables
  \(a,\theta_0,\theta,\vartheta,\beta,\gamma\) are local quantified points or original-coordinate tuples,
  not helper conditions or exported objects.
- proof-local constants: \(M_i,L_i,C_{\theta,j,n},C_{\beta,j,n}\) are explicitly defined and proved finite in
  Lemma~\ref{lem:step-003-finite-chart}. Their provenance is primitive \(C^1\) regularity on compact
  \(\Theta\), together with the generated level \(1/n\), \(R\), and finite sums. They are not hidden target
  constants and no bound on them is exported.
- Constant provenance: The target coefficient \(\kappa\) and radius \(R\) are primitive setting data. The
  finite \(1/n\) threshold is generated by monotone exhaustion. The exact beta-cube measure is
  \((2R)^{N-1}\), with the \(N=1\) convention \((2R)^0=1\). No other constant, margin, radius, rate, or
  finite-tube quantity is introduced.
- Assumption provenance: Feature \(C^1\) regularity is primitive; anchor nonvanishing is supplied by accepted
  Lemma~\ref{lem:step-001-anchor}; persistent-locus Borel nullity and law nullity are supplied by accepted
  Lemma~\ref{lem:step-002-lebesgue-null} and Proposition~\ref{prop:step-002-law-null}, respectively.
  Root-event/domain/image measurability, finite chart regularity, determinant, coefficient-cube containment,
  multiplicity control, root coverage, and limiting closure are proved in this step. No generated fact is
  promoted to a primitive assumption.
- Boundary audit:
  - Empty pivot cells have empty exhaustions and zero integrals.
  - The target quantifies over \(\lvert I\rvert>0\). If an empty interval is considered outside that target,
    both the event and every chart integral are zero. For a singleton interval, the compact exhaustion is the
    singleton, each active parameter slice has \(N\)-dimensional measure zero, and the same area argument gives
    a law-null fixed-time root event. These observations do not change the accepted positive-length
    quantifier.
  - Open, closed, and half-open interval conventions are respected literally by the compact exhaustion.
    Included endpoints are retained and excluded endpoints are never inserted.
  - Closed beta and pivot inequalities retain all cube faces and corners.
  - Tangent and multiple roots are critical preimages; infinite fibers are allowed by extended multiplicity;
    zero Jacobians give null images; pivots approaching zero enter coefficient-dependent finite levels.
  - Persistent and identically-zero affine combinations are not excluded. Their probability is removed only
    by the current accepted Lemma~\ref{lem:step-002-lebesgue-null} and
    Proposition~\ref{prop:step-002-law-null}.
  - For \(N=1\), the beta cube is a one-point \(0\)-dimensional space of mass one and every displayed formula
    remains literal.
- Forbidden-shortcut audit: No independence, marginal or conditional density, uniform pivot margin,
  transversality, simple-root condition, finite-root count, analytic identity theorem, projective
  normalization, random leading coordinate, later probability theorem, or final assembly conclusion is used.
- Global-diagnostic boundary: The two binding global hashes in Step Identity were checked, but the accepted
  global diagnostic contributes no mathematical evidence, citation, assumption, notation, or claim.
- Same-step diagnostic boundary: The pre-overwrite sketch-attempt-1, unit-attempt-2 proof with SHA-256
  637b6b01d6041dc9b797a04e4a387713dff823f5ee51bd1e872801a5ee119312 and review with SHA-256
  253d7c4f469580dafd08647358cff7696bcc1e31a8da63ad7e54d8e6451c421a, together with their byte-identical
  copies in perspective_2/idea_1/proof_history/sketch_001/proof_steps/step_003/attempt_002/, were consulted only
  as permitted same-step diagnostics. They are not cited results or current evidence. Every local unit above
  is stated and derived against the sketch-attempt-2 setting and the current accepted dependency identities
  recorded in Step Identity.
