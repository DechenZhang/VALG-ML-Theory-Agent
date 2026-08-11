# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_005/proof.md
- Reviewed proof SHA-256: 8af0c8f33a8e26e96adcc9808aadcd77e6464d930d6acdbcf0e7f255934cc68d
- Binding setting SHA-256: f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83
- Accepted proof sketch SHA-256: e7035d01ff910e55426d09e1add806b49103404582df2cf3e998000a8eebe898
- Accepted proof-sketch review SHA-256: ccc24fd25cd6ac468831c0cd84f8aea642d7584e7cd402686da3bb6f82a86561
- Accepted dependency step_002 proof/review SHA-256: 49765e6c5b90d32376cd6d897ee38978833783a445f579e55569b01369f4db1a / 77b678ece545313b11204c39471dfc90511c167150b440fa457d550e849c8568
- Accepted dependency step_004 proof/review SHA-256: 4e5a3c69a4f43b5e18bbc4d530dd6dd6142e14578dc9eaf1999e835fa9636ac5 / 69f88a79fa061835b2d831fc1678552ff496ccea274f775463935e6c0cc7c89b
- Review mode: distinct step-scoped interactive review

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-005-speed-length} states exactly the
  measure-theoretic bridge needed by the accepted sketch row. Its basis is
  explicit: Assumption~\ref{assump:parameter-regime} supplies the interval
  convention, and accepted
  Proposition~\ref{prop:step-002-projective-speed} supplies the same normalized
  curve, its \(C^1\) regularity, and finite setting-defined projective speed.
  The statement covers every interval convention; the target proposition later
  restricts the quotient to positive-length intervals exactly as required.
- Proof validity: With
  \(g(\theta)=\lVert\gamma_F'(\theta)\rVert_2\), accepted \(C^1\) regularity
  makes \(g\) continuous, hence nonnegative and Lebesgue measurable. By the
  defining property of
  \(\Gamma_{\mathrm{proj}}(F)=\operatorname*{ess\,sup}_{\Theta}g\), one has
  \(g\leq\Gamma_{\mathrm{proj}}(F)\) outside a Lebesgue-null subset of
  \(\Theta\). Restricting that almost-everywhere inequality to any measurable
  interval \(I\subseteq\Theta\) and integrating gives
  
  \[
  \int_I g(\theta)\,d\theta
  \leq \Gamma_{\mathrm{proj}}(F)\operatorname{Leb}(I)
  =\Gamma_{\mathrm{proj}}(F)\lvert I\rvert.
  \]
  
  Open, closed, and half-open versions differ only on at most two null
  endpoints. Empty and singleton intervals have zero measure and also satisfy
  the inequality. No pointwise maximum is substituted for the essential
  supremum.
- Cited-result and assumption audit: There is no external citation. The only
  nonprimitive input is the current accepted step_002 proposition, whose proof
  and review hashes match the recorded binding artifacts and whose exact export
  includes \(\gamma_F\in C^1\) and the projective-speed certificate. No anchor,
  density, section, or generated-event condition is silently assumed.
- Rigor checklist: The proof uses Lebesgue integration consistently, changes no
  norm or coordinate, and performs no interchange of limits, expectations,
  suprema, or derivatives. Finiteness follows from accepted step_002. Endpoint
  derivatives are irrelevant to the integral because endpoints are null, while
  the accepted \(C^1\) convention supplies them in any case.
- Local adversarial test: The argument remains valid for \(I=\Theta\), every
  open or half-open endpoint convention, empty and singleton intervals,
  \(N=1\), and \(\Gamma_{\mathrm{proj}}(F)=0\). In the zero-speed case the
  integral is forced to zero, with no division by the speed.
- Contribution to target step: The lemma converts the exact local-speed
  integral exported by accepted step_004 into
  \(\Gamma_{\mathrm{proj}}(F)\lvert I\rvert\), with the same interval and the
  same normalized Euclidean curve.
- Verdict: PASS
- Repair direction: None

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-005-central-rate-bridge}
  states the two accepted central inequalities and the exact
  \(C^{\mathrm{Pf}}_{\mathcal D}\) bound under precisely the two accepted
  dependencies, the preceding named lemma, and primitive parameter meanings.
  Its \(q=0\), degree-zero \(M\), and Counter-example 1 clauses are the R1, R2,
  and R5 audits assigned to this step. It does not assert the separate
  Counter-example lower bound, the affine theorem, or any stronger probability
  statement.
- Proof validity: For a fixed deterministic presentation, an arbitrary
  \(\mu\in\mathcal D_{N,R,\kappa}\), and then an arbitrary positive-length
  interval \(I\), accepted
  Proposition~\ref{prop:step-004-correlated-central-sweep} gives ordinary
  probability of the same root event bounded by
  
  \[
  A\sqrt{\frac N2}\int_I\lVert\gamma_F'(\theta)\rVert_2\,d\theta.
  \]
  
  Pointwise substitution of Lemma~\ref{lem:step-005-speed-length} gives the
  first central inequality. Substitution of accepted
  Proposition~\ref{prop:step-002-projective-speed} then gives
  
  \[
  A\sqrt{\frac N2}\frac{\sqrt N\,\Delta B_Q(1+qB_P)}h
  =\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h},
  \]
  
  because
  \(\sqrt{N/2}\sqrt N=\sqrt{N^2/2}=N/\sqrt2\) for \(N\geq1\). The proof
  drops no term and introduces no inequality in this simplification.
- Cited-result and assumption audit: There is no external paper result in this
  step. The exact current step_002 and step_004 propositions are restated with
  their objects, modes, conclusions, proof hashes, and accepted review hashes.
  The proof consumes only their exported interfaces and does not reopen Ball's
  theorem, incidence geometry, density integration, the chain calculation, or
  any transitive dependency. All local conditions are quantified objects, not
  theorem-facing assumptions.
- Rigor checklist: Division occurs only after \(\lvert I\rvert>0\) is fixed.
  For fixed \(\mu\), the interval supremum is taken first; the law supremum is
  then taken outside it. This is exactly the definition
  
  \[
  \sup_{\mu\in\mathcal D_{N,R,\kappa}}
  \sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\\lvert I\rvert>0}}
  \frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:
  \langle\alpha,F(\theta)\rangle=0]}{\lvert I\rvert}.
  \]
  
  Both right-hand coefficients are independent of \(I\) and \(\mu\), so
  monotonicity of each supremum is applied legally. The fixed-presentation,
  then law, then interval quantifier order is preserved. No union bound,
  conditioning, confidence event, expectation, or simultaneous-law probability
  claim is introduced.
- Local adversarial test: If \(N=1\), the accepted anchored interface has
  \(F=(1)\), \(\Delta=0\), and zero projective speed, so accepted step_004 and
  the displayed bounds give zero root probability under every absolutely
  continuous admissible law. If \(\Gamma_{\mathrm{proj}}(F)=0\) in any
  dimension, the same first inequality gives zero probability and hence
  \(C^{\mathrm{Pf}}_{\mathcal D}=0\), without division by the speed. If \(q=0\),
  the setting convention \(M=B_P=0\) makes \(1+qB_P=1\) exactly. For
  Counter-example 1, \(A=1\), \(N=2\), \(\Delta=1\), \(B_Q=1/\delta\), and
  \(h=1\), so the final upper coefficient is \(\sqrt2/\delta\), retaining the
  required \(1/\delta\) upper scale while leaving the lower bound to step_009.
- Contribution to target step: The proposition composes the accepted local
  probability interface, the interval-speed lemma, and the accepted raw
  projective-speed certificate; it then performs the exact interval and law
  supremum closure. This is the complete central theorem clause and no more.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found. The essential-supremum passage is
isolated as Lemma~\ref{lem:step-005-speed-length}. The probability substitution,
literal square-root algebra, positive-length division, ordered suprema, \(q=0\)
specialization, degree-zero \(M\) audit, zero-speed case, \(N=1\) case, and
Counter-example 1 upper-scale calculation all occur inside
Proposition~\ref{prop:step-005-central-rate-bridge}. The proof-local event
\(\mathsf Z_I\) is only an abbreviation of the setting event and adds no event
hypothesis. The nonnegativity used to identify zero probability and zero
\(C^{\mathrm{Pf}}_{\mathcal D}\) in the zero-speed case is immediate from the
setting definition. The assembly cites theorem-style names and labels; its
parenthetical unit IDs are audit handles only.

## Target Claim Audit

The proof establishes exactly, for the deterministic presentation fixed first,
every \(\mu\in\mathcal D_{N,R,\kappa}\), and every positive-length interval
\(I\subseteq\Theta\),

\[
\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
\langle\alpha,F(\theta)\rangle=0\right]
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)\lvert I\rvert
\leq\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}\lvert I\rvert,
\]

and then exactly

\[
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
\leq\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
\]

These are the accepted sketch-row outputs, with the same event, feature curve,
law class, interval scope, Euclidean norm, and literal constants. The proof adds
no affine conclusion, lower bound, independence condition, confidence mode, or
uniform-probability event. Its harmless lemma-level coverage of degenerate
intervals is not exported as a stronger target claim.

## Explicit Rate Audit

The exposed central tuple is
\((q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h^{-1})\), with
\(A=(2R)^N\kappa\). The intermediate
\(\Gamma_{\mathrm{proj}}(F)\), law \(\mu\), and interval \(I\) are displayed
before specialization. There are no hidden constants and no allowed hidden
dependence on the presentation, the exposed tuple, \(\mu\), \(I\), correlation,
endpoint convention, or \(\delta\). The deterministic presentation and full
tuple are fixed while the interval and law suprema are taken in their defining
order.

The probability mode is ordinary probability for each fixed arbitrary
correlated law. The horizon mode is every positive-length interval followed by
the interval supremum and then the law supremum. The norm mode is the Euclidean
projective speed, and the quotient uses Lebesgue interval length. There is no
auxiliary tolerance, threshold, confidence parameter, probability conversion,
or absorbed term in this step.

The full specialization bridge is displayed: interval integration is bounded
by essential speed times length, accepted step_002 supplies the raw speed bound,
and \(\sqrt{N/2}\sqrt N=N/\sqrt2\) gives the final coefficient by equality.
The parameter \(M\) is exposed but absent from every factor, so with the
separately exposed \(B_P\) fixed its dependence is exactly degree zero. The
\(q=0\), \(N=1\), zero-speed, and Counter-example 1 reductions are exact. In
particular, the last reduction remains \(\sqrt2/\delta\); no hidden constant
suppresses the required \(1/\delta\) upper scale. The separate affine-monic
baseline is neither invoked nor weakened.

## Notation Surface Audit

The public-facing export is only the two central probability inequalities and
the \(C^{\mathrm{Pf}}_{\mathcal D}\) bound. All of
\(A,F,\gamma_F,\Gamma_{\mathrm{proj}}(F),\mathcal D_{N,R,\kappa}\), and
\(C^{\mathrm{Pf}}_{\mathcal D}\) are setting-defined. The sole new event name
\(\mathsf Z_I\) and the null set used in the essential-supremum argument are
correctly classified as proof-local and are not exported or conditioned upon.
The symbol \(\delta\) is inherited from the required specialization. No helper
constant, radius, margin, threshold, boundedness assertion, event, or notation
dictionary hides an obligation or enters the public interface.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-004-correlated-central-sweep} supplies the
ordinary-probability local-speed inequality for the exact event and arbitrary
law. Lemma~\ref{lem:step-005-speed-length} supplies the interval-length bridge.
Accepted Proposition~\ref{prop:step-002-projective-speed} supplies the exact
raw-presentation speed certificate. Proposition~\ref{prop:step-005-central-rate-bridge}
composes those results, performs the literal constant identity, and takes the
two defining suprema. These named results jointly imply the boxed target and
the exact final coefficient
\(AN\Delta B_Q(1+qB_P)/(\sqrt2\,h)\). The assembly introduces no new lemma,
assumption, mode conversion, dependence, or conclusion and preserves both
accepted dependency interfaces.

## Review Rationale

ACCEPTED is the smallest sound decision. Both local units are self-contained
and valid line by line, their assumptions and accepted dependencies have exact
provenance, and their named assembly proves the accepted claim without drift.
The reviewed proof SHA-256 was recomputed as
8af0c8f33a8e26e96adcc9808aadcd77e6464d930d6acdbcf0e7f255934cc68d.
The proof is ASCII-only and contains no disallowed control byte. Its 119 inline
TeX opener/closer pairs and 28 display opener/closer pairs are ordered and
balanced, and its unescaped braces are stack-balanced. Accounting for escaped
TeX norm bars, the target table has nine columns in every row and the local
lemma map has four columns in every row. The two local-map entries correspond
one-to-one, with matching types, to the two local-derivation subsections. All
required proof and review headings are present, and the write scope is confined
to this review artifact. No producer retry is required, so `None` is the aligned
smallest retry target.
