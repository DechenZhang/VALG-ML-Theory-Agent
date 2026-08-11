# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_006
- Unit attempt: 2
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_006/proof.md,
  SHA-256
  335d3cfe52b3f4391cb49ec23ebe048e43169293bac86fcb1edc9bad13cb92c9

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Identity And Dependency Audit

The reviewed proof has the binding sketch-attempt-1, step_006,
unit-attempt-2 identity and the exact SHA-256 recorded above. The live setting,
accepted sketch, and accepted sketch review have SHA-256 values
9ce3b0bf46590c1e4cc47e6251325ad0e3eccbd686fd8289c2dc8dfc3a99fc0f,
4205a79c0f2979a4549473a4b3c7a6318dce534bc2205f36ce204fa2085370c7,
and 7dd722dad3c1803fd0df363b521612dcda7c0587dc027bf75142681ca8f1861f,
respectively. The sketch review records sketch attempt 1 and status ACCEPTED.

The sole dependency is the current step_005 proof, SHA-256
648d8636744627fa0ce80997a499324d4eae25b6f88e330449833068628e9030,
paired with the current step_005 review, SHA-256
acfe4fbfb458d3182922ef9c3cb20e5d80c435b7d916f2b17ca47d297ea94d3f.
That review records sketch attempt 1, step_005, unit attempt 2, status ACCEPTED,
and the same reviewed-proof hash. Its exact available conclusion is
Proposition~\ref{prop:step-005-exact-maximum}: for every admitted
\(d,R,\mu,I\),
\[
  \mu(H_{d,I})\leq M_\eta(d,R)\lvert I\rvert.
\]
The submitted proof consumes only this conclusion. No archival artifact from
proof_history/ was read or used as evidence.

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-class-supremum} states
  exactly the first part of the accepted step_006 row: under
  Assumption~\ref{assump:indexed-regime} and the accepted step_005 maximum
  interface, \(C_{\mathcal D_{d,R,\eta}}\leq M_\eta(d,R)\) for every
  \(d\geq1,R\geq1\), including the setting's value-zero convention when either
  supremum index set is empty.
- Proof validity: In the nonempty-index case, the accepted dependency and
  \(\lvert I\rvert>0\) give
  \(\mu(H_{d,I})/\lvert I\rvert\leq M_\eta(d,R)\) for every indexed pair.
  Supremum monotonicity first in \(I\) and then in \(\mu\) yields the exact
  setting-defined class constant. In either empty-index case, the setting
  defines that constant as zero, while nonnegative caps and chart constants
  give \(M_\eta(d,R)\geq0\). These cases exhaust the definition.
- Cited-result and assumption audit: The dependency is restated in current
  notation with the same \(d,R,\mu,I,H_{d,I}\), interval length, and
  \(M_\eta\); its current proof/review identity and assumption discharge are
  recorded. Supremum monotonicity and the empty-index convention are stated
  before use. The quantified law and interval are target objects, while
  assump:indexed-regime is primitive and the per-law bound is an accepted
  derived control.
- Rigor checklist: Division occurs only after \(I\in\mathcal I(\Theta)\)
  supplies positive finite length. The proof does not assume finiteness of the
  class supremum, class nonemptiness, or interval-family nonemptiness. All
  quantities on the right are finite for fixed admitted \(d,R,\eta\), and the
  quantifier order keeps \(\eta\) fixed before \(d,R\) vary.
- Local adversarial test: If the law class is empty, if
  \(\mathcal I(\Theta)\) is empty, or if both are empty, the declared value is
  \(0\leq M_\eta\). If both are nonempty but intervals have arbitrarily small
  positive length, the pointwise ratio bound remains uniform before either
  supremum. If \(\bar\kappa_*=0\), then \(M_\eta=0\), and the same two-case
  argument gives the required zero upper bound without using witness
  nonemptiness.
- Contribution to target step: Converts the exact accepted per-law,
  per-interval output into the class-uniform \(C_{\mathcal D}\leq M_\eta\)
  interface.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-inner-polynomial-domination}
  proves exactly the required inner-chart comparison
  \(\bar\kappa_0B_0(d,R)\leq P_\eta(d,R)\) under the sole primitive
  Assumption~\ref{assump:indexed-regime}, for every \(d\geq1,R\geq1\).
- Proof validity: The proof expands \(B_0\), uses
  \(0\leq\bar\kappa_0\leq\bar\kappa_*\) on both nonnegative terms, and then
  uses \(d(d-1)\leq d^2\) after multiplication by the nonnegative factor
  \(\bar\kappa_*R/2\). The resulting right side is exactly
  \(P_\eta(d,R)=\bar\kappa_*d+(\bar\kappa_*/2)Rd^2\).
- Cited-result and assumption audit: No cited theorem is used. The cap range,
  fixed-\(\eta\) convention, \(d\geq1\), and \(R\geq1\) all come from
  Assumption~\ref{assump:indexed-regime}; \(B_0,\bar\kappa_*\), and
  \(P_\eta\) retain their setting definitions. No generated condition or
  local conditional hypothesis enters.
- Rigor checklist: Every multiplier used to preserve inequality direction is
  explicitly nonnegative. Both domination lines are displayed; no term is
  dropped or called lower order. The proof is pointwise, not asymptotic, and
  its coefficients have no hidden dependence on \(d\) or \(R\).
- Local adversarial test: At \(d=1\), the exact left side is
  \(\bar\kappa_0\) and the displayed chain remains valid with the
  \(d(d-1)\) term equal to zero. At \(R=1\), no inequality changes direction.
  If \(\bar\kappa_0=0\), the left side is zero; if
  \(\bar\kappa_*=0\), every term in the chain is zero. The case
  \(\bar\kappa_\infty>\bar\kappa_0\) is also covered because only the defining
  maximum inequality is used.
- Contribution to target step: Supplies one of the two exact termwise bounds
  needed before maximum monotonicity can be applied.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-outer-polynomial-domination}
  proves exactly the required outer-chart comparison
  \(\bar\kappa_\infty B_\infty(d,R)\leq P_\eta(d,R)\) for the full accepted
  \(d\geq1,R\geq1\) regime.
- Proof validity: After expanding \(B_\infty\), the first displayed inequality
  uses \(0\leq\bar\kappa_\infty\leq\bar\kappa_*\) term by term. The second
  uses both \(\bar\kappa_*\leq\bar\kappa_*d\), valid because
  \(d\geq1\), and \(d(d-1)\leq d^2\), valid after multiplication by
  \(\bar\kappa_*R/2\geq0\). This gives exactly \(P_\eta(d,R)\).
- Cited-result and assumption audit: The unit is a direct derivation from
  Assumption~\ref{assump:indexed-regime} and the setting definitions. It does
  not import an outer-chart symmetry, a nonemptiness threshold, or any
  conclusion beyond the accepted dependency interface.
- Rigor checklist: The constant term \(1\) in \(B_\infty\) is not silently
  absorbed: its displayed control is the explicit inequality \(1\leq d\)
  after multiplication by \(\bar\kappa_*\). The quadratic comparison is also
  displayed and all factors are nonnegative. There is no auxiliary threshold,
  asymptotic qualification, or hidden constant.
- Local adversarial test: At \(d=1\), the left side is exactly
  \(\bar\kappa_\infty\), and \(1\leq d\) is equality while the raw quadratic
  term vanishes. At \(R=1\), the same chain applies. If the outer cap or both
  caps vanish, the inequality reduces to \(0\leq P_\eta\) or \(0=0\),
  respectively. Large \(R\) introduces no missing term because its full
  factor is retained on both sides.
- Contribution to target step: Supplies the second exact termwise bound needed
  for the fixed-\(\eta\) maximum specialization.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-polynomial-specialization}
  states the exact remaining sketch-row claim,
  \(M_\eta(d,R)\leq P_\eta(d,R)\), cites the two preceding named lemmas, and
  displays the public polynomial with no hidden constant.
- Proof validity: The two local lemmas bound each entry of the setting-defined
  maximum by the same scalar \(P_\eta(d,R)\). Maximum monotonicity therefore
  gives
  \[
    M_\eta(d,R)
    \leq\max\{P_\eta(d,R),P_\eta(d,R)\}
    =P_\eta(d,R).
  \]
  This is a complete same-target scalar comparison and has no residual term.
- Cited-result and assumption audit: Maximum monotonicity is explicitly
  restated, and both inputs are proved by earlier paper-ready local lemmas
  under Assumption~\ref{assump:indexed-regime}. The proposition uses only
  setting-defined \(M_\eta,\bar\kappa_*,P_\eta\) and introduces no new
  condition.
- Rigor checklist: The claim is uniform pointwise over every admitted \(d,R\)
  for the one fixed finite \(\eta\). Its monomials are \(d\) and \(Rd^2\), so
  the total degree is at most three with displayed coefficients depending
  only on \(\eta\). Degeneration to the zero polynomial when
  \(\bar\kappa_*=0\) is explicitly handled. No supremum, probability mode,
  norm, horizon, or limiting operation occurs in this unit.
- Local adversarial test: If the inner chart coefficient is the maximum, its
  local lemma supplies the bound; if the outer coefficient is the maximum,
  the other local lemma supplies it; equality and zero-cap ties are harmless.
  At \(d=1\), the exact maximum remains \(\bar\kappa_*\) and is retained before
  the conservative comparison with
  \(P_\eta(1,R)=\bar\kappa_*(1+R/2)\).
- Contribution to target step: Exports the exact no-hidden-constant polynomial
  interface consumed by the final theorem.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial claim is missing from the local lemma map. The
positive-length division, the two nested suprema, and both empty-index cases
are isolated in unit_001. The inner and outer coefficient comparisons are
separated in units unit_002 and unit_003, so the two different leading terms
\(d\) and \(1\) and every dominated quadratic term are visible. Unit_004 alone
takes the maximum and identifies the displayed polynomial. Nonnegativity of
\(B_0,B_\infty,M_\eta\), finiteness for fixed admitted parameters, and the
elementary order facts are explicitly checked within the units where they are
used; none requires an additional independent lemma. The degree statement is
a direct inspection of the two displayed monomials, not an unstated rate
conversion.

The prose and assembly do not smuggle in class nonemptiness, witness
membership, the separate \(1/2\) threshold, an almost-sure cap, a generated
event, an asymptotic regime, or a stronger dependency conclusion. No external
paper result, global diagnostic, or archival proof is used as authority.

## Target Claim Audit

The proof establishes the exact accepted step_006 row for the single finite
\(\eta=(\bar\kappa_0,\bar\kappa_\infty)\) fixed independently of \(d,R\): for
every integer \(d\geq1\) and every \(R\geq1\),
\[
 C_{\mathcal D_{d,R,\eta}}
 \leq M_\eta(d,R)
 \leq P_\eta(d,R)
 =\bar\kappa_*d+\frac{\bar\kappa_*}{2}Rd^2.
\]
For nonempty index sets, the first inequality is uniform over every
\(\mu\in\mathcal D_{d,R,\eta}\) and every positive-length
\(I\in\mathcal I(\Theta)\); for either empty index set, it uses exactly the
setting's declared value zero. The proof neither changes quantifier order nor
strengthens, weakens, or narrows the claim. It leaves the accepted weighted
per-interval estimate in step_005 and the independent witness membership in
step_007, as the sketch requires.

## Explicit Rate Audit

The step is rate-bearing and satisfies the Explicit Rate Contract. The exposed
public variables are \(d,R,\bar\kappa_0,\bar\kappa_\infty\), equivalently
\((d,R,\eta)\); the consumed technical interface also exposes
\(\mu(H_{d,I})/\lvert I\rvert\). There are no hidden constants. The displayed
dependence on \(\eta\) is through
\(\bar\kappa_*=\max\{\bar\kappa_0,\bar\kappa_\infty\}\), and no coefficient
depends covertly on \(d,R,\mu,I,\Theta\), endpoint conventions, conditioning
values, or density versions. The fixed quantities are \(\eta\) and \(\Theta\),
with the final constant independent of \(\Theta\).

The probability mode is a deterministic inequality for each law and interval
followed by deterministic suprema; there is no confidence parameter or
probability conversion. The horizon mode is static and interval-uniform, with
no iteration, stopping, limit, or all-time upgrade. The norm/metric mode is
the one-dimensional Lebesgue-length ratio already present in the accepted
dependency. There is no auxiliary tolerance or parameter choice, and the
separate witness threshold is absent.

The Rate Specialization Bridge is complete. It checks \(d\geq1,R\geq1\),
uses the displayed inequalities
\(\bar\kappa_i\leq\bar\kappa_*\), \(1\leq d\), and
\(d(d-1)\leq d^2\), expands both chart coefficients, and proves both
termwise dominations before maximum monotonicity. No term is dropped,
absorbed by prose, or hidden in asymptotic notation. No inherited baseline
recovery theorem applies. The relevant \(d=1\) boundary is preserved exactly
as \(C_{\mathcal D_{1,R,\eta}}\leq M_\eta(1,R)=\bar\kappa_*\) before the
conservative same-target polynomial inequality is applied.

## Notation Surface Audit

The law and interval classes, root event, chart constants, exact maximum,
cap maximum, public polynomial, and class constant are all setting-defined
public-facing objects retained without redefinition. The step_005 proposition
is an accepted appendix-local derived control, not a primitive assumption.
The generic symbols used to restate supremum and maximum monotonicity are
explicitly proof-local and are not exported. No one-off constant, rate,
threshold, margin, event, invariant, boundedness premise, or helper dictionary
is introduced. The public output is only the minimal interface
\(C_{\mathcal D}\leq M_\eta\leq P_\eta\).

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-005-exact-maximum} supplies the exact
per-law input. Proposition~\ref{prop:step-006-class-supremum} legally divides
by positive interval length, takes both suprema, and covers both empty-index
branches. Lemmas~\ref{lem:step-006-inner-polynomial-domination} and
\ref{lem:step-006-outer-polynomial-domination} supply the two termwise scalar
bounds, and Proposition~\ref{prop:step-006-polynomial-specialization} combines
them by maximum monotonicity. The assembly cites these theorem-style names and
stable labels, not subsection titles or local unit IDs, and jointly yields the
exact target chain. No additional lemma, condition, or downstream conclusion
is needed.

## Review Rationale

The current proof is identity-correct, depends on a freshly verified accepted
step_005 proof/review pair, and proves all four local units under the unchanged
accepted sketch interface. The empty-index convention, fixed-\(\eta\)
quantifier order, explicit termwise inequalities, zero-cap and \(d=1\)
boundaries, rate declarations, notation provenance, and named-result assembly
all pass independent audit. There is no local proof flaw, dependency flaw, or
sketch/interface defect. Therefore ACCEPTED with Smallest Retry Target equal
to None is the smallest and required disposition.
