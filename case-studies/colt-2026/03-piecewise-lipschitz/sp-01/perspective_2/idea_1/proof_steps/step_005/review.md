# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 2
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_005/proof.md,
  SHA-256
  648d8636744627fa0ce80997a499324d4eae25b6f88e330449833068628e9030

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Identity And Dependency Audit

The reviewed proof has the binding sketch-attempt-1, step_005,
unit-attempt-2 identity and the exact SHA-256 recorded above. Its sole
dependency is the current step_004 proof, SHA-256
c8619ac6aee61cbd10a6ffe6e02a56259b72039b497d845b17ee1423a5b1522c,
paired with the current step_004 review, SHA-256
e81997a8993b828568329f84318faaa2506de810b2ed1fc870163b90b838202d.
That review records sketch attempt 1, step_004, unit attempt 3, accepts the
same proof hash, and exports exactly the three chart probability controls
used here. The current setting, accepted sketch, and accepted sketch review
also match the identities recorded in the submitted proof. No archived
artifact from proof_history/ was used.

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma states the exact three-piece parameter
  partition, length identity, allocation of the boundary points to the inner
  piece, and root-event union required by the accepted step_005 row. It
  explicitly covers every endpoint convention and empty or singleton
  pieces.
- Proof validity: The sets \([-1,1]\), \((1,\infty)\), and
  \((-\infty,-1)\) form an exact pairwise-disjoint partition of the real
  line. Intersecting with the actual set \(I\) preserves its endpoint
  convention and gives the asserted disjoint union. The pieces are Borel, so
  finite additivity gives the length identity. For each fixed coefficient
  vector, a root witness in \(I\) belongs to exactly one parameter piece,
  while a root in any piece lies in \(I\); both inclusions in the event
  identity follow.
- Cited-result and assumption audit: The only invoked result is finite
  additivity of Lebesgue measure on finitely many pairwise-disjoint Borel
  sets, restated before use. The interval and event objects are exactly those
  of the setting. Borel measurability of the chart events is already supplied
  through the accepted dependency chain and is not promoted to a new
  primitive assumption.
- Rigor checklist: No closure is taken and no endpoint is silently inserted.
  If present, \(1\) and \(-1\) occur only in \(I_0\). Empty and singleton
  pieces have length zero. The proof correctly distinguishes disjoint
  parameter pieces from potentially overlapping root events. All
  quantifiers remain pointwise in \(d\), \(I\), and the coefficient vector.
- Local adversarial test: The argument survives intervals wholly contained
  in one chart, intervals crossing either or both cut points, inclusion or
  exclusion of either cut point, and a polynomial having roots in several
  pieces. A singleton chart piece at \(1\) or \(-1\) is assigned only to the
  inner chart and creates no length correction.
- Contribution to target step: Supplies the exact set, length, endpoint, and
  event identities used by both subsequent local propositions.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: The proposition proves exactly the first target
  inequality with coefficients
  \(\bar\kappa_0B_0(d,R)\) and
  \(\bar\kappa_\infty B_\infty(d,R)\), retaining the two separate outer
  lengths and covering all degenerate pieces.
- Proof validity: Lemma~\ref{lem:step-005-three-piece-decomposition} gives
  the exact event union. Finite subadditivity applies even when one
  polynomial has roots in multiple pieces. Substitution of the three
  accepted step_004 bounds yields the three weighted terms, and elementary
  factoring of the common outer coefficient gives (28). This introduces no
  extra factor: the two outer contributions remain
  \(C|I_+|+C|I_-|=C(|I_+|+|I_-|)\).
- Cited-result and assumption audit: The inner, positive-outer, and
  negative-outer propositions are restated with the same \(d,R,\mu,I\)
  objects and are supplied by the current accepted step_004 proof/review
  pair. Finite subadditivity is fully stated. No sign symmetry, independence,
  joint density, almost-sure cap, or additional theorem assumption is used.
- Rigor checklist: The chart events are measurable through the accepted
  dependency interface. Event overlap is handled by an inequality rather
  than false additivity. Every coefficient and length is finite and
  nonnegative. The dependency's zero-probability conclusions for empty and
  singleton pieces agree with their zero weighted terms, including
  singletons at the two cut points.
- Local adversarial test: If all three chart events coincide or overlap
  maximally, finite subadditivity is still valid. If only one chart piece has
  positive length, (28) reduces to its matching accepted chart bound. If
  either cap is zero, the corresponding dependency bounds force the relevant
  event probabilities to zero, so no \(0\cdot\infty\) or endpoint defect is
  hidden in the assembly.
- Contribution to target step: Converts the dependency's three chart
  controls into the exact weighted per-interval inequality.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: The proposition exports exactly
  \(\mu(H_{d,I})\leq M_\eta(d,R)|I|\), with \(M_\eta\) equal to the maximum
  of the two chart coefficients rather than their sum.
- Proof validity: The aliases
  \(A=\bar\kappa_0B_0\), \(C=\bar\kappa_\infty B_\infty\), and
  \(x=|I_0|,y=|I_+|,z=|I_-|\) are explicitly defined and nonnegative. For
  \(m=\max\{A,C\}\), termwise multiplication of \(A\leq m\) and \(C\leq m\)
  by the nonnegative lengths proves
  \[
  Ax+C(y+z)\leq m(x+y+z).
  \]
  The local lemma supplies \(x+y+z=|I|\), and the setting definition supplies
  \(m=M_\eta(d,R)\). Combining this with the weighted proposition proves the
  claimed result without an omitted case.
- Cited-result and assumption audit: This is a direct scalar derivation from
  the prior named local results and setting-defined constants. The proof
  explicitly discharges nonnegativity from the cap ranges, \(d\geq1\),
  \(R\geq1\), and nonnegative Lebesgue lengths. No external result or hidden
  admissibility condition is used.
- Rigor checklist: The inequality is valid when \(A=C\), when either or both
  coefficients vanish, and when any subset of \(x,y,z\) vanishes. All
  quantities are finite. There is no division, limiting operation,
  probability-mode conversion, or replacement by \(A+C\).
- Local adversarial test: At \(d=1\), \(B_0=B_\infty=1\), so the exact output
  is \(\max\{\bar\kappa_0,\bar\kappa_\infty\}|I|\). If \(A\gg C\) but the
  inner length is zero, or \(C\gg A\) but both outer lengths are zero, the
  inequality remains valid; these cases confirm that the proof uses a
  weighted maximum, not an unjustified choice of one active chart.
- Contribution to target step: Converts the exact weighted chart estimate
  into the required \(M_\eta(d,R)|I|\) interface for step_006.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the local lemma map. The
partition, length identity, endpoint allocation, and event identity are all
proved in unit_001; the probability union bound and use of all three
dependency outputs are isolated in unit_002; and the maximum conversion is
isolated in unit_003. Borelness of chart events is an accepted dependency
output, while finite additivity and finite subadditivity are explicitly
restated elementary facts. Nonnegativity and finiteness of the scalar
quantities are checked in unit_003. The assembly does not silently use event
disjointness, a symmetry between outer charts, or a positive-length premise
for the individual pieces.

## Target Claim Audit

The proof establishes the exact accepted step_005 claim for every
\(d\geq1\), \(R\geq1\), \(\mu\in\mathcal D_{d,R,\eta}\), and
\(I\in\mathcal I(\Theta)\). It first proves the binding weighted estimate and
then the exact \(M_\eta(d,R)|I|\) estimate. It preserves arbitrary endpoint
conventions, assigns roots at \(\pm1\) only to the inner piece, permits event
overlap, and covers empty and singleton chart pieces. It neither narrows the
regime nor performs the class supremum, public polynomial specialization, or
witness-membership argument reserved for later steps.

## Explicit Rate Audit

The step is rate-bearing and satisfies the explicit-rate contract. Its
exposed quantities are \(d,R,\bar\kappa_0,\bar\kappa_\infty\), the three
piece lengths, and \(|I|\); \(\eta\) and \(\Theta\) are fixed as in the
setting. There are no hidden constants or auxiliary tolerances, and no
dependence on \(\mu\), \(I\), \(\Theta\), endpoint conventions, conditioning
values, or density versions is concealed. The probability mode is an exact
per-law deterministic probability inequality, the horizon mode is static
and uniform over positive-length intervals, and the norm mode is
one-dimensional Lebesgue length. The sole simplification is the displayed
termwise inequality
\[
A x+C(y+z)\leq\max\{A,C\}(x+y+z),
\]
with all nonnegativity conditions checked. There is no term absorption,
probability conversion, summed chart constant, or asymptotic qualification.
The class supremum and \(P_\eta\) specialization properly remain for
step_006. No inherited baseline theorem applies; the relevant \(d=1\)
boundary is preserved exactly with no remainder.

## Notation Surface Audit

The exported objects \(H_{d,J}\), \(I_0,I_+,I_-\), \(B_0,B_\infty\), and
\(M_\eta\) are setting-defined and public-facing. The three chart controls
are accepted dependency outputs. The aliases \(A,C,x,y,z,m\) are explicitly
classified as proof-local, used in one scalar calculation, and not exported.
No helper dictionary, unexplained constant, generated condition, threshold,
event, invariant, or boundedness premise is introduced.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-005-three-piece-decomposition},
Proposition~\ref{prop:step-005-weighted-chart-bound}, and
Proposition~\ref{prop:step-005-exact-maximum} jointly imply the exact target
claim in dependency order. The assembly cites their theorem-style names and
stable labels, uses local unit IDs only as audit handles, and explicitly
displays both target inequalities. The accepted step_004 outputs are used
only through the weighted-bound proposition. No downstream step_006 claim is
imported into the argument.

## Review Rationale

All three local units are valid under the unchanged accepted sketch row and
the current accepted dependency. The proof exposes every nontrivial bridge,
handles event overlap and all endpoint or degenerate-piece cases, and proves
the maximum conversion with the exact scalar inequality required by the rate
contract. The target assembly closes without a local, dependency, or
sketch-interface defect. Therefore ACCEPTED with Smallest Retry Target equal
to None is the required disposition.
