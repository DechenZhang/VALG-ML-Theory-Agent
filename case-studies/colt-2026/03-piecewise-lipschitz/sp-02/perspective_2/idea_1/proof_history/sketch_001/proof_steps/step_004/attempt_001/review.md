# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_004/proof.md
- Reviewed proof SHA-256: cbda35c61b01723ae2ccf9c9e052048bdafc6e8d87a108436c750c8a6574a064

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-004-section-chart} states the exact fixed-section bijection,
  Euclidean Hausdorff Jacobian, and nonnegative change-of-variables interface required by the accepted row. Its
  assumptions and local condition \(F_j(\theta)\neq0\) are explicit, and it includes the empty-section and
  \(N=1\) conventions.
- Proof validity: The forward chart identity places every image point in the actual affine hyperplane and cube.
  Conversely, for any \(a\in H_\theta\cap[-R,R]^N\), taking \(\beta=a_{-j}\) and solving the section equation
  uniquely gives \(a_j=T_j(\theta,\beta)\), so the map is onto; preservation of the nonpivot coordinates makes
  it injective. For \(N\geq2\), the beta-derivative columns are
  \(e_i-(F_i/F_j)e_j\), so their Gram matrix is \(I+vv^{\mathsf T}\) and
  
  \[
  \det(I+vv^{\mathsf T})=1+\lVert v\rVert_2^2
  =\frac{\lVert F(\theta)\rVert_2^2}{F_j(\theta)^2}.
  \]
  
  Its nonnegative square root is exactly \(\lVert F\rVert_2/\lvert F_j\rvert\), with no orientation or
  normalization loss.
- Cited-result and assumption audit: The standard injective affine parametrization formula is restated in the
  current Euclidean notation, including its measurable-set and Gram-Jacobian interface, and the lemma proves
  bijectivity, domain measurability, and the determinant before applying it. Only setting-defined objects and
  the local legal-pivot condition are used; no section-size or velocity bound is assumed.
- Rigor checklist: The beta domain is closed and measurable, cube faces are retained, and lower-dimensional or
  empty intersections cause no defect. For \(N=1\), the empty Gram determinant is one,
  \(\lambda_0(\{()\})=\mathcal H^0(\{a\})=1\), and both the singleton and empty cases give the stated formula.
- Local adversarial test: Translated sections missing the cube, sections touching only a cube face, negative
  pivots, arbitrarily small nonzero pivots, \(F_i=0\) for all nonpivot indices, and \(N=1\) all preserve the
  bijection and literal Jacobian.
- Contribution to target step: This unit identifies the chart image with the exact consumed section and supplies
  the Hausdorff pullback factor \(\lVert F\rVert_2/\lvert F_j\rvert\).
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-004-pivot-cancellation} states the exact fixed-beta derivative, its
  sign, the formal pullback identity, and a rigorous nonnegative integral equality. It expressly covers empty
  sections, zero normal velocity, and \(N=1\).
- Proof validity: Differentiating
  \(F_0+F_jT_j+\sum_{i\neq j}\beta_iF_i=0\) at fixed beta gives
  
  \[
  F_0'+F_j'T_j+F_j\partial_\theta T_j+\sum_{i\neq j}\beta_iF_i'=0.
  \]
  
  Since \(F_j'T_j+\sum_{i\neq j}\beta_iF_i'=\langle\Psi_j,F'\rangle\), division by the nonzero pivot yields
  exactly
  
  \[
  \partial_\theta T_j=-\frac{F_0'+\langle\Psi_j,F'\rangle}{F_j}.
  \]
  
  Combining its absolute value with
  \(d\mathcal H^{N-1}=\lVert F\rVert_2\,d\beta/\lvert F_j\rvert\) cancels both occurrences of the pivot
  denominator and gives the target normal-velocity density with equality.
- Cited-result and assumption audit: Fixed-beta differentiation is justified by the setting's \(C^1\) features
  and the locally open nonzero-pivot domain. The only prior mathematical authority is the named section-chart
  lemma. No coarea, Kac--Rice, root-count, section bound, or unreviewed velocity bound is introduced.
- Rigor checklist: The derivative is taken with beta fixed, while the changing pivot coordinate contributes the
  term \(F_j\partial_\theta T_j\); hence neither a product-rule term nor a sign is lost. The integral form avoids
  treating differential notation as an independent theorem. All integrands are nonnegative, and zero values
  and empty domains are valid without division by zero because the chart is used only where \(F_j\neq0\).
- Local adversarial test: A negative pivot, a pivot approaching zero, radial feature motion, a pointwise zero
  numerator, an empty section, and the scalar case all give the same cancellation. In \(N=1\), the right-side
  integrand at the unique section point equals \(\lvert\partial_\theta T_1\rvert\) exactly.
- Contribution to target step: This unit supplies the differentiated chart identity and proves the exact
  chart-to-coordinate-free fixed-section integral equality.
- Verdict: PASS
- Repair direction: None

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-004-partition-sum} quantifies over every positive-length interval and
  every Lebesgue-measurable legal partition, proves measurability of the coordinate-free section mass, and
  states exact finite-partition summation in \([0,\infty]\), as required by the accepted row.
- Proof validity: On the open pivot domain, the indicator-Jacobian function is Borel and nonnegative. Restriction
  to a Lebesgue-measurable cell is completed-product-measurable, so Tonelli makes each beta integral
  \(\mathcal W_j\) measurable without an integrability hypothesis. The fixed-section equality gives
  \(\mathcal W_j(\theta)=\mathcal V(\theta)\) on \(E_j\). Zero-extending each cell function and using the finite
  disjoint partition proves measurability of \(\mathcal V\) and
  
  \[
  \sum_j\int_{E_j}\mathcal W_j
  =\sum_j\int_{E_j}\mathcal V
  =\int_I\mathcal V.
  \]
  
  No limit, signed interchange, or chart-count factor is hidden in this step.
- Cited-result and assumption audit: Tonelli and finite additivity of the nonnegative integral are restated and
  instantiated on the current chart functions. Partition legality is a universally quantified local condition,
  not a uniform margin or theorem-facing derived invariant. The anchor ensures \(\lVert F\rVert_2>0\) and also
  supplies at least one legal partition.
- Rigor checklist: Arbitrary completed-measurable cells, endpoint conventions, empty cells, and extended values
  are allowed. The cellwise representation proves section-mass measurability without presupposing a moving-section
  theorem. Finite partition additivity remains valid when an integral is infinite. The \(N=1\) beta evaluation
  and \(\mathcal H^0\) section integral coincide pointwise.
- Local adversarial test: A highly disconnected measurable partition, cells accumulating at pivot zeros, an
  infinite total integral caused by near-zero pivots, empty cells, and \(N=1\) all preserve measurability and
  equality. Partition dependence disappears because every cellwise mass equals the same coordinate-free
  \(\mathcal V(\theta)\).
- Contribution to target step: This unit converts the sum of indicator chart integrals into the single
  coordinate-free section integral over \(I\), exactly and for arbitrary measurable partitions.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-004-coordinate-free-sweep} states exactly the first affine
  swept-area inequality for every admissible law and positive-length interval, with literal coefficient
  \(\kappa\), the original coefficient vector, and no surviving pivot choice.
- Proof validity: The primitive anchor supplies a legal partition, and the proof may fix any such measurable
  partition. The accepted Proposition~\ref{prop:step-003-pivot-sweep} gives the indicator-retaining chart bound;
  Lemma~\ref{lem:step-004-partition-sum} identifies its entire chart sum with the coordinate-free section
  integral. Direct substitution proves the proposition in the extended nonnegative reals. No additional
  probability or root-event argument occurs.
- Cited-result and assumption audit: The dependency proof and accepted review hashes match the binding artifacts,
  and only their certified first chart inequality is consumed. Its full joint-density argument already covers
  arbitrary coefficient correlation. The target proof performs no marginalization, conditioning, or new density
  conversion and uses no second root theorem.
- Rigor checklist: Tangent and multiple roots, persistent affine combinations, interval endpoints, cube faces,
  pivots approaching zero, and arbitrary root multiplicity are inherited unchanged from the accepted dependency.
  The deterministic equality deletes none of those coefficients. Empty sections and \(N=1\) are covered by the
  local units, so the final inequality includes all requested boundary regimes.
- Local adversarial test: A law with maximally correlated coordinates but a capped joint density, a tangent or
  persistent root, a root only at an included endpoint, a coefficient on a cube corner, a near-zero chosen pivot,
  and \(N=1\) all remain inside the accepted dependency interface and the exact deterministic conversion.
- Contribution to target step: This unit is the exact target conclusion and exports the coordinate-free affine
  normal-velocity interface to downstream affine and homogeneous consumers.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the four-unit map. The fixed-section bijection, beta-domain
measurability, Gram determinant, and Hausdorff formula are contained in
Lemma~\ref{lem:step-004-section-chart}. The fixed-beta product rule, sign, velocity identity, denominator
cancellation, and rigorous integral version are contained in Lemma~\ref{lem:step-004-pivot-cancellation}.
Completed measurability, Tonelli, arbitrary measurable cells, extended nonnegative integration, and finite
partition additivity are contained in Lemma~\ref{lem:step-004-partition-sum}. Root-event coverage and density
domination are used only through the accepted Proposition~\ref{prop:step-003-pivot-sweep}, and final substitution
is contained in Proposition~\ref{prop:step-004-coordinate-free-sweep}. No hidden moving-section theorem,
section-size estimate, normal-velocity bound, or second root theorem appears in prose or assembly.

## Target Claim Audit

The proof establishes the exact accepted step_004 claim, neither strengthening nor weakening it. For every
measurable legal pivot partition it proves the fixed-section identity, including the exact chart and Hausdorff
Jacobians, and sums that equality to the partition-free integral. It then derives the coordinate-free first
affine swept-area inequality for every admissible possibly correlated law and every positive-length interval.
The coefficient remains the literal \(\kappa\); the probability, interval, Euclidean norm, and Hausdorff-measure
modes are unchanged. All four setting conditions retain their primitive classification, the pivot-sweep theorem
is an accepted derived invariant, and a legal pivot is only a local quantified condition. No new assumption,
uniform pivot margin, rate specialization, or generated invariant is exported.

## Explicit Rate Audit

This step is rate-bearing only through the exact R2/R3 first swept-area interface. The exposed quantities are
\(N,R,\kappa,\mu,I,F_0,F\) and the displayed section integral; the sole probability coefficient is exactly
\(\kappa\). There are no hidden constants, confidence parameters, auxiliary tolerances, or term absorptions.
The fixed instance data precede the choices of law, interval, and partition. The probability mode is ordinary
probability for each arbitrary full joint law, the interval mode is pairwise for every positive-length interval,
and the norm/measure mode is Euclidean with \(\lambda_0\) and \(\mathcal H^0\) in dimension zero. The step
performs no new probability conversion. Its transfer and partition removal are equalities, so no dependence on
correlation, pivot margin, root multiplicity, \(q,M,\Delta\), or section orientation is hidden. The accepted
indicator chart interface remains available unchanged for the exact monic baseline, so this additional
coordinate-free representation causes no baseline loss.

## Notation Surface Audit

The only public-facing output is Proposition~\ref{prop:step-004-coordinate-free-sweep}. The inherited
\(F_0,F,H_\theta,T_j,\Psi_j,E_j\) retain their setting meanings. The fixed-section domain
\(\mathcal B_{j,\theta}\) is appropriately appendix-local. The ordered indices, Gram columns and vector,
\(\Omega_j,\mathcal W_j\), and \(\mathcal V\) are proof-local, explicitly derived, and absent from the exported
interface. No one-off alias hides a bound, no helper dictionary leaks downstream, and every Jacobian factor has
proved provenance. The exported surface is therefore minimal and notation-consistent.

## Target-Step Assembly Audit

The assembly uses only theorem-style named results. Lemma~\ref{lem:step-004-section-chart} supplies the exact
section and Hausdorff Jacobian; Lemma~\ref{lem:step-004-pivot-cancellation} supplies the signed derivative and
exact cancellation; Lemma~\ref{lem:step-004-partition-sum} supplies measurable extended integration and exact
partition removal; and the accepted Proposition~\ref{prop:step-003-pivot-sweep} supplies the sole root-event
inequality. Proposition~\ref{prop:step-004-coordinate-free-sweep} combines precisely those interfaces. They
jointly imply the exact target with zero residual, no chart-count factor, no unreviewed section or velocity bound,
and no dependence on a diagnostic artifact.

## Review Rationale

All four non-atomic local units are valid line by line and jointly prove the accepted chart-to-section claim.
The proof has the correct fixed-section bijection and Hausdorff Jacobian, differentiated sign, exact pivot
cancellation, completed measurability for arbitrary measurable partitions, and extended nonnegative integration.
It handles \(N=1\), empty sections, zero velocity, arbitrary correlation, and every root and boundary class
certified by the accepted dependency. The proof introduces neither a second root theorem nor an unreviewed
section-size or velocity bound, and its assumptions, notation, rate, and assembly interfaces remain unchanged.
Therefore `ACCEPTED` is the controlled status and `None` is the aligned smallest retry target.
