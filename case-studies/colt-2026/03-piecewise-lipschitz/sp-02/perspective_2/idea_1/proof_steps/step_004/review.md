# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_004
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_004/proof.md
- Reviewed proof SHA-256: 91736da20ac3e8c97693b158e1a528f5ac2ed3bab6ef61b14185ab2beae76ef4
- Binding idea SHA-256: 5209aa21929e84604acb2712d8657460a48463901738fd00ebafaa84d5c43596
- Binding setting SHA-256: 6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e
- Binding accepted sketch SHA-256: 41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4
- Binding accepted sketch-review SHA-256: a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9
- Accepted dependency step_003 proof SHA-256:
  e49284222ce24bde4b3ae8b5f8d1434622c09bfd3a39eb512641169e55e2d7a0
- Accepted dependency step_003 review SHA-256:
  4d6a93d359e6559d49d306809fe8ad925eb03a262c36446591c846632a6e1ff8
- Identity-only accepted global proof SHA-256:
  bb35e66556b216cac02945e249c92fac526b5b021104daa0f32b0ce7691a22fc
- Identity-only accepted global review SHA-256:
  c990e29c701a493a71e87aef1aa5c099ed26c6f8132a03f15bc0c7e5fb3c0146
- Diagnostic-history sketch-attempt-1 proof SHA-256:
  cbda35c61b01723ae2ccf9c9e052048bdafc6e8d87a108436c750c8a6574a064
- Diagnostic-history sketch-attempt-1 review SHA-256:
  9c9587b882088cca10d00e7bb53d040f55f2ba0425cd4c6e44c5d82647e671f3
- Evidence boundary: The current setting, accepted attempt-2 sketch and sketch review, submitted proof, and current
  accepted step_003 proof/review pair are the only mathematical evidence. The accepted global pair was checked
  only for identity and status and was not used as proof evidence. The byte-identical archived attempt-1 pair was
  consulted only as diagnostic history and supplied no current statement, label, assumption, or derivation.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-004-s2-section-parametrization} states the exact fixed-section
  bijection, graph Jacobian, Hausdorff pullback, empty-section convention, and $N=1$ branch required by the
  accepted step_004 row. The local legal-pivot condition $F_j(\theta)\neq0$ and primitive assumption basis are
  explicit.
- Proof validity: For fixed $\theta$, the indicator domain
  $\mathcal B_{j,\theta}=\{\beta\in[-R,R]^{N-1}:|T_j(\theta,\beta)|\leq R\}$ is closed. Substitution puts its
  image in the actual affine section, while solving the section equation for the unique pivot coordinate proves
  surjectivity; copied nonpivot coordinates prove injectivity. For $N\geq2$, the derivative columns are
  $e_i-(F_i/F_j)e_j$, so the Gram matrix is $I+vv^{\mathsf T}$ and

  \[
  \sqrt{\det(I+vv^{\mathsf T})}
  =\sqrt{1+\sum_{i\neq j}F_i^2/F_j^2}
  =\frac{\lVert F\rVert_2}{|F_j|}.
  \]

  The restated injective affine area formula therefore gives the claimed Hausdorff change of variables on the
  exact section, with no multiplicity or orientation factor.
- Cited-result and assumption audit: The affine area formula is restated in current Euclidean notation for an
  arbitrary measurable domain and nonnegative Borel test function, including its $0$-dimensional convention.
  The lemma checks domain measurability, injectivity, and the Gram determinant before use. It consumes no section
  bound, velocity bound, root theorem, or global-diagnostic claim.
- Rigor checklist: Both signs and arbitrarily small nonzero values of $F_j$ are retained through $|F_j|$.
  Weak cube inequalities retain faces and corners. An empty section has an empty beta domain. For $N=1$, the
  beta space is the single point of $\mathbb R^0$, the empty Gram determinant is one, and the nonempty section
  has $\mathcal H^0$-mass one.
- Local adversarial test: Translated sections missing the cube, lower-dimensional face or corner contacts,
  negative pivots, pivots tending to zero along a cell, vanishing nonpivot features, and $N=1$ do not change
  the bijection or the literal factor $\lVert F\rVert_2/|F_j|$.
- Contribution to target step: This unit identifies the chart with the consumed affine section and supplies the
  first of the two exact factors whose pivot denominators cancel.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-004-s2-normal-density} states the signed fixed-beta derivative and the
  rigorous integral form of the chart-to-section normal-density identity. It expressly includes either pivot
  sign, zero numerator, zero chart velocity, empty sections, cube boundaries, and $N=1$.
- Proof validity: Differentiating the same algebraic chart identity at fixed beta gives

  \[
  F_0'+F_j'T_j+F_j\partial_\theta T_j+\sum_{i\neq j}\beta_iF_i'=0,
  \]

  and $F_j'T_j+\sum_{i\neq j}\beta_iF_i'=\langle\Psi_j,F'\rangle$. Hence the sign and denominator are exactly

  \[
  \partial_\theta T_j
  =-\frac{F_0'+\langle\Psi_j,F'\rangle}{F_j}.
  \]

  Combining its absolute value with
  $d\mathcal H^{N-1}=\lVert F\rVert_2\,d\beta/|F_j|$ cancels the two literal pivot factors and yields

  \[
  |\partial_\theta T_j|\,d\beta
  =\frac{|F_0'+\langle a,F'\rangle|}{\lVert F\rVert_2}
  \,d\mathcal H^{N-1}(a).
  \]

- Cited-result and assumption audit: The only prior mathematical authority is the named fixed-section lemma.
  Fixed-beta differentiation is legal on the open nonzero-pivot set because the setting features are $C^1$.
  No root is differentiated or selected as a function of $\theta$, so no implicit-root theorem,
  transversality, or simple-root hypothesis enters.
- Rigor checklist: The denominator before taking absolute values is the signed $F_j$, and the graph factor uses
  $|F_j|$, so negative pivots are handled correctly. A zero normal numerator gives zero chart velocity at its
  unique beta preimage. The nonnegative test-function formulation makes the differential notation rigorous.
  The $N=1$ equality reduces literally to evaluation at the unique section point.
- Local adversarial test: Negative or arbitrarily small legal pivots, radial feature motion, a pointwise or
  identically zero chart velocity, an empty section, a boundary-only section contact, and $N=1$ preserve the
  exact equality without a limiting or integrability assumption.
- Contribution to target step: This unit supplies the second exact factor and proves the coordinate-free
  normal-velocity density with no residual, pivot loss, or chart-count factor.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-004-s2-measurable-partition} quantifies over every positive-length
  interval with its literal endpoint convention and every Lebesgue-measurable legal pivot partition. It states
  chart-mass measurability, section-mass measurability, pointwise cell equality, and exact finite-partition
  summation in $[0,\infty]$.
- Proof validity: On the relatively open nonzero-pivot set, $T_j$ and $\partial_\theta T_j$ are continuous.
  Their nonnegative indicator-Jacobian product, extended by zero off that set, is Borel on the full product.
  Restriction to a Lebesgue-measurable cell is completed-product measurable, and Tonelli makes the extended chart
  mass $\widehat{\mathcal W}_j$ Borel and its cell restriction measurable. The fixed-section identity gives
  $\mathcal W_j(\theta)=\mathcal V(\theta)$ on $E_j$; the finite representation
  $\mathcal V=\sum_j\mathbf1_{E_j}\widehat{\mathcal W}_j$ proves the needed completed-Lebesgue measurability
  without a moving-section theorem. Finite additivity then gives

  \[
  \sum_{j=1}^N\int_{E_j}\mathcal W_j
  =\sum_{j=1}^N\int_{E_j}\mathcal V
  =\int_I\mathcal V
  \]

  in the extended nonnegative reals.
- Cited-result and assumption audit: Tonelli and finite additivity are restated with their nonnegative,
  extended-real scope. Partition legality is a universally quantified local condition, not a positive pivot
  margin or generated theorem-facing invariant. The anchor makes the target denominator nonzero and supplies a
  legal fallback partition.
- Rigor checklist: The proof permits disconnected and non-Borel Lebesgue-measurable cells, empty cells, chart
  masses that are not assumed integrable, and pivots approaching zero. Since the partition is finite and
  disjoint, there is no double charge and no $\infty-\infty$ operation. Included and excluded interval
  endpoints remain literal. In $N=1$, the sole cell and the $0$-dimensional beta/section evaluations agree.
- Local adversarial test: A highly irregular measurable partition, several simultaneously legal pivots, cells
  accumulating at pivot zeros, infinite total mass, empty cells, and $N=1$ all retain measurability and exact
  partition independence because every selected chart equals the same $\mathcal V(\theta)$.
- Contribution to target step: This unit turns the finite chart sum into the single coordinate-free section
  integral without a new coarea theorem or any loss.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-004-s2-affine-swept-area} is exactly the accepted public target:
  for every $\mu\in\mathcal D_{N,R,\kappa}$ and every positive-length $I\subseteq\Theta$, it gives the first
  affine swept-area inequality with the original coefficient vector, deterministic $F_0$, Euclidean section,
  and literal coefficient $\kappa$.
- Proof validity: The anchor $F_{j_*}\equiv1$ supplies the measurable legal partition $E_{j_*}=I$, with all
  other cells empty; the argument in fact accepts any measurable legal partition. Accepted
  Proposition~\ref{prop:step-003-pivot-sweep} supplies the indicator-retaining chart inequality, and
  Lemma~\ref{lem:step-004-s2-measurable-partition} identifies its complete chart sum with the coordinate-free
  integral. Direct substitution proves the proposition in $[0,\infty]$ with no new probability argument.
- Cited-result and assumption audit: The accepted step_003 proposition is restated with the same $F_0,F$,
  $N$-dimensional coefficient vector, cube, law, density cap, interval, endpoint convention, partition, and
  charts. Its basis is exactly assump:parameter-regime, assump:balcan-common-chain,
  assump:anchored-derivative-closure, and assump:cube-density-laws, plus its named accepted dependencies. Only
  its first inequality is used. Arbitrary correlation and the literal $\kappa$ come from its one full
  joint-density bound; the current deterministic conversion neither conditions on nor marginalizes a coordinate.
- Rigor checklist: Tangent, multiple, endpoint-only, and persistent roots, finite or infinite fibers, zero
  Jacobians, cube faces and corners, and arbitrarily small pivots are inherited only through the accepted
  dependency. The local equality deletes none of those coefficients or roots. Empty sections, zero velocity,
  either pivot sign, and $N=1$ are handled by the current named lemmas.
- Local adversarial test: A maximally correlated admissible joint density, a persistent or tangent root, a root
  only at an included endpoint, a coefficient on a cube corner, alternate legal pivots with opposite signs, a
  near-zero pivot, and the scalar branch all remain within the exact dependency and deterministic identities.
- Contribution to target step: This is the sole public-facing export and the coordinate-free normal-velocity
  interface consumed, according to the accepted producer-consumer map, by step_007, step_008, and step_012.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the four-unit map. Unit_001 contains fixed-section domain
measurability, exact bijectivity, the Gram determinant, Hausdorff pullback, boundary contact, and the
$0$-dimensional branch. Unit_002 contains the fixed-beta product rule, signed derivative, absolute-value
cancellation, rigorous test-function identity, and zero-density branches. Unit_003 contains Borel zero extension,
completed-product restriction, Tonelli measurability, moving-section representation, arbitrary measurable cells,
extended-real additivity, and partition independence. Unit_004 contains legal-partition existence, exact
dependency instantiation, and final substitution. Tangent, multiple, endpoint, persistent, exhaustion, and
root-event claims are not reproved or silently strengthened; they enter only through accepted
Proposition~\ref{prop:step-003-pivot-sweep}. The standard affine area, Tonelli, and finite-additivity facts are
restated and locally discharged. No hidden section-volume estimate, velocity estimate, second root theorem,
transversality condition, uniform pivot margin, independence step, or global-diagnostic conclusion appears.

## Target Claim Audit

The proof establishes the exact sketch-attempt-2 step_004 row, neither a stronger rate nor a weaker chart
surrogate. For every measurable legal pivot partition, it proves the fixed-section equality on the actual affine
section, removes the pivot by exact finite summation, and derives

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq
\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta.
\]

The deterministic instance is fixed before the arbitrary full-joint law, positive-length interval, endpoint
convention, and partition. Probability is ordinary probability for each law; all coefficient and section norms
are Euclidean; integrals are nonnegative extended-real integrals. The coefficient is literally $\kappa$.
Assumption provenance is unchanged: assump:parameter-regime and assump:balcan-common-chain supply the fixed
finite-dimensional $C^1$ setting, assump:anchored-derivative-closure supplies the feature definitions and anchor,
and assump:cube-density-laws supplies the law class through accepted Proposition~\ref{prop:step-003-pivot-sweep}.
The chart probability inequality is an accepted derived output; legal-pivot selection is local and carries no
margin. The only public export is Proposition~\ref{prop:step-004-s2-affine-swept-area}, with the accepted
consumers step_007, step_008, and step_012.

## Explicit Rate Audit

This step is rate-bearing only as the exact R2/R3 first-sweep interface. Exposed quantities are $N,R,\kappa$,
the arbitrary law $\mu$, interval $I$, original $F_0,F$, and the displayed section integral. There is no hidden
constant, confidence parameter, auxiliary tolerance, asymptotic threshold, or term absorption. The full
deterministic instance $(\Theta,T,q,M,\Delta,N,R,\kappa,A,m,B,F_0,F)$ is fixed before $\mu,I$, and the
partition. The probability mode is ordinary probability under one arbitrary correlated joint law; the interval
mode is pairwise for every positive-length open, closed, or half-open subinterval; the norm/measure mode is
Euclidean $\ell_2$ with $\mathcal H^{N-1}$, and uses $\lambda_0$ and $\mathcal H^0$ in the scalar branch.
No probability conversion occurs: the accepted dependency's full-joint density cap supplies exactly $\kappa$.
No dependence on $q,M,\Delta$, correlation, pivot margin or sign, root multiplicity, section orientation, or
chart overlap is suppressed. The sole simplification is the exact identity

\[
\frac1{|F_j|}\frac{|F_j|}{\lVert F\rVert_2}=\frac1{\lVert F\rVert_2}.
\]

The step proves no section-volume bound, velocity bound, homogeneous or monic specialization, capacity bound, or
later theorem rate. Baseline check: the indicator chart theorem remains available unchanged, and the
coordinate-free conversion is equality on every legal chart, so the later affine-monic baseline loses no
coefficient dimension, beta-volume, constant, or deterministic-leading-coordinate convention.

## Notation Surface Audit

The proof classifies its surface correctly. The only public-facing object is
Proposition~\ref{prop:step-004-s2-affine-swept-area}, stated entirely with setting notation. The exact beta
domain $\mathcal B_{j,\theta}$ is appendix-local. The ordered indices, columns $c_i$, vector $v$, Gram matrix
$G$, pivot sets $\Omega_j$, Borel functions $g_j$, chart masses $\mathcal W_j$ and
$\widehat{\mathcal W}_j$, and section mass $\mathcal V$ are proof-local, explicitly derived, and absent from
the export. The dummy affine-area objects and $\lambda_k$ are scoped checked-result notation. No helper alias
hides finiteness, a constant, a pivot margin, or a generated condition; $A=(2R)^N\kappa$ is neither renamed nor
used prematurely. All four non-atomic units have paper-ready theorem-style titles and distinct stable labels,
and mathematical references use those labels rather than bare unit or step IDs.

## Target-Step Assembly Audit

The assembly is dependency-closed and uses only named mathematical authorities.
Lemma~\ref{lem:step-004-s2-section-parametrization} supplies the exact section and graph Jacobian;
Lemma~\ref{lem:step-004-s2-normal-density} supplies the signed derivative and pivot cancellation;
Lemma~\ref{lem:step-004-s2-measurable-partition} supplies completed measurability and exact partition removal;
and accepted Proposition~\ref{prop:step-003-pivot-sweep} supplies the sole root-event inequality.
Proposition~\ref{prop:step-004-s2-affine-swept-area} combines precisely those interfaces. Together they imply
the exact target with zero residual, no chart-count or multiplicity factor, no change in $\kappa$, and no use of
a bare step ID, later result, archived artifact, or global diagnostic as proof authority.

## Review Rationale

ACCEPTED with Smallest Retry Target = None is the smallest controlled outcome. Each of the four local units
passes statement fidelity, proof validity, assumption and cited-result discharge, quantifier and constant checks,
boundary and $N=1$ branches, and adversarial stress. The two exact Jacobian factors cancel to the required
coordinate-free density; measurable legal partitions are summed in the extended nonnegative reals; and the
accepted step_003 interface alone supplies arbitrary-correlation density control and every tangent, multiple,
endpoint, persistent-root, and vanishing-pivot obligation. The public target, consumers, modes, notation surface,
and baseline interface are unchanged, so neither a step repair nor a sketch repair is justified.
