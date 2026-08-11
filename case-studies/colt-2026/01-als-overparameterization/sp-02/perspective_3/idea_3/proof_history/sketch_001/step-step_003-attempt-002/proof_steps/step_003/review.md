# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_003/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_003

## Blocking Issues

1. **The uniform repeated-block Terracini-chaos estimate remains unproved.**
   Lemma~\(\ref{lem:step-003-terracini-chaos}\) (`unit_005`) states the exact
   event and tail needed for (TF), but its proof is explicitly unresolved.
   Proposition~\(\ref{prop:step-003-offblock-split}\) now supplies the exact
   same-mode algebra, rowwise \(k/r^2\) second-moment source, all six
   cross-mode arrays, and the two-stage factorization (20a). Those reductions
   do not prove the supremum over \(\|Y\|_F=1\), a self-adjoint operator
   variance bound, the restricted action of the independent ACG direction
   matrix, simultaneous control of all nine arrays, or the uniform
   \(C_{\rm dec}(\kappa)e^{-t}\) tail. Without this local lemma, (TF),
   \(J^*J\succeq I/2\), \(W_0\), and \(\mathcal E_{\rm deficit}\) are not
   produced. The smallest repair is another `/proof-step step_003` attempt
   that either derives this exact current-notation estimate or restates and
   fully discharges a valid cited result; no theorem may be assumed by name or
   analogy alone.
2. **A supporting fixed-input moment claim is asserted but not proved as a
   local unit.** In the unresolved proof of `unit_005`, the first stage of
   (20a) is said to have mean-square scale \(\sqrt{k}/r\) for every fixed
   \(Y\). That assertion is plausible from the proved angular second moments,
   but no displayed calculation or named local result establishes it, and it
   does not address the required data-dependent supremum in any case. The next
   step attempt must prove this claim explicitly if it is used and then supply
   the genuinely uniform upgrade, rather than treating fixed-input variance as
   an operator-norm bound.

## Per-Lemma Audit

### unit_001: uniform moments for conditioned elliptic angular laws

- Statement fidelity: The repaired statement names the primitive
  initialization assumption, accepted conditioning proposition, accepted
  Gaussianization lemma, and fixed-realization conditional scope required by
  the target row.
- Proof validity: Removing the positive balancing scalar gives
  \(p=H_Mz/\|H_Mz\|_2\). The accepted singular-value interval for \(H_M\)
  yields
  \[
    |\langle u,p\rangle|
    \le \kappa_1^2 |\langle v,z\rangle|/\|z\|_2.
  \]
  The spherical moment identity then gives the displayed
  \(\kappa_1^{4m}\) loss. Odd symmetry gives zero mean, and the \(m=1\)
  case gives the covariance and coordinate bounds.
- Cited-result and assumption audit: The accepted dependency objects are
  translated into current notation and the spherical moment fact is restated
  before use. No radial, Gram, deficit, or trajectory event is assumed.
- Rigor checklist: Independence across components and modes is inherited from
  the separate projected Gaussians. Constants are uniform over every fixed
  realized triple in \(\mathcal E_{\rm cond}\) and depend only on \(\kappa\).
- Local adversarial test: At the extremal allowed singular values of \(H_M\),
  the numerator-to-denominator loss is still at most \(\kappa_1^2\).
  Gaussian images are nonzero almost surely.
- Contribution to target step: Supplies the ACG law, centering, and moments
  used in (TC), the off-block variance calculations, and the proposed (TF)
  argument.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact gauge quotient and Terracini blocks

- Statement fidelity: The repaired proposition is self-contained relative to
  the named assumptions and prior results and targets exactly the gauge,
  quotient-spectrum, raw-range, and block interfaces required by the sketch.
- Proof validity: Parallel/perpendicular decomposition produces three
  perpendicular tangent terms and one common-core term, proving that the
  kernel is exactly the two-dimensional gauge plane. Orthogonality to that
  plane forces equal parallel coefficients, giving quotient eigenvalues one
  and three. Directly pairing the nine tensor terms gives (10), and the
  accepted span identity gives \(\operatorname{range}J=\mathscr S_0\).
- Cited-result and assumption audit: The exact raw/normalized span transfer is
  named in the statement and used only for the range conclusion. The rest is
  direct Euclidean tensor algebra.
- Rigor checklist: The quotient domain, adjoints, block orientation, and
  Frobenius inner product agree with the setting. Restriction removes only the
  exact kernel and preserves every component tangent range.
- Local adversarial test: Gauge coefficients summing to zero are null, while
  the common scaling direction has eigenvalue three and is not accidentally
  removed. Nonzero direction rescaling does not change the raw tangent span.
- Contribution to target step: Supplies the nonvacuous within-component lower
  source and the exact structured off-component blocks.
- Verdict: PASS
- Repair direction: None.

### unit_003: raw diagonal-core target correlation

- Statement fidelity: The repaired lemma defines \(\mathcal E_{\rm TC}\),
  names every assumption and dependency, fixes the conditional probability
  scope, and proves exactly the raw (TC) interface.
- Proof validity: Direct contraction gives the three Hadamard-product vectors,
  and quotient projection is norm nonincreasing. For each pair,
  \(X_i\in[0,1]\), the variables are independent over components, and mode
  independence plus the angular moment bound gives
  \(\mathbb E X_i\le\kappa_1^8/r\). Scalar Bernstein with
  \(u=30\log r\) and a three-pair union bound proves (12).
- Cited-result and assumption audit: The bounded-variable Bernstein inequality
  is restated with its exact hypotheses and correctly instantiated. The
  accepted Gaussianization supplies the fixed-factor conditional independence.
- Rigor checklist: The inequality
  \(\sqrt{2\mu u}\le\mu+u/2\) gives the displayed constants, and
  \(3r^{-30}\le r^{-25}\) holds beyond a finite threshold. Probability,
  horizon, and norm modes match the accepted row.
- Local adversarial test: At \(k=r^{5/4}\), the target-correlation energy is
  \(O_\kappa(r^{1/4}+\log r)=o(r)\). No coordinate maximum event is hidden in
  the argument.
- Contribution to target step: Completely proves (TC) with the required
  conditional confidence.
- Verdict: PASS
- Repair direction: None.

### unit_004: off-component split and two-stage factorization

- Statement fidelity: The repaired proposition names its exact inputs and
  accurately limits its output to block algebra, rowwise same-mode variance,
  and the cross-mode factorization; it does not claim to have proved (TF).
- Proof validity: Equation (18) follows by assembling the same-mode diagonal
  entry of (10) and removing component diagonals. Conditional independence of
  the other component and the two modes proves (19). The rank-one arrays (20)
  agree with (10). For (20a), the \(i\)-th output column is exactly
  \(\sum_{j\ne i}p_j^a\langle p_i^b,y_j\rangle
  \langle p_i^c,p_j^c\rangle\), so the matrix factorization is correct; mode
  permutation gives the other five identities.
- Cited-result and assumption audit: Only the named accepted angular law and
  the proved local moment bounds are used. No unproved concentration theorem
  is imported into this proposition.
- Rigor checklist: Equation (19) is a rowwise quadratic source, not a
  self-adjoint matrix variance proxy. The factorization separates the first
  repeated-block stage from the independent output-mode matrix but does not
  itself control either stage uniformly.
- Local adversarial test: Replacing each cross block by its norm sees variance
  \(k/r\), which at maximal rank cannot yield a uniform \(1/2\) perturbation.
  The exact factorization correctly retains the random input and output
  directions needed for any sharper argument.
- Contribution to target step: Provides a concrete current-notation reduction
  of the missing TF calculation and repairs the earlier source-description
  gap, but stops before operator concentration.
- Verdict: PASS
- Repair direction: None.

### unit_005: required quotient Terracini-chaos concentration

- Statement fidelity: The repaired statement now includes the primitive and
  accepted inputs, fixed-realization conditional law, quotient event,
  constants, rank regime, tail parameter, exact TF scale, and all same- and
  cross-mode blocks required by the accepted sketch.
- Proof validity: No proof is supplied. Contractivity of quotient projection,
  the same-mode rowwise source, and factorization (20a) are valid reductions,
  but they do not establish the uniform restricted near-isometry or multiplier
  estimate in (21).
- Cited-result and assumption audit: The artifact correctly acknowledges that
  no accepted dependency or checked KMR-, Gordon-, generic-chaos, or matrix
  concentration statement has been mapped to this repeated-block ACG class.
  Therefore no cited conclusion can be consumed.
- Rigor checklist: The supremum over \(\|Y\|_F=1\), normalization dependence,
  self-adjoint nine-block assembly, operator variance, dimensional factors,
  exact \(\sqrt{k}/r\) leading term, absence of an extra logarithmic loss,
  uniformity over conditioned factors, and finite tail prefactor all remain
  unresolved.
- Local adversarial test: The two crude routes identified in the proof fail
  for the stated reason: scalar block norms lose one angular factor, while a
  full-space \(\|A_p\|_{\rm op}\) bound does not yield the required leading
  rate. The attempt supplies no lower bound, counterexample, or boundary
  calculation showing that (21) itself is false.
- Contribution to target step: None yet. This is the sole missing producer of
  \(\mathcal E_{\rm TF}\).
- Verdict: REVISE_STEP
- Repair direction: Prove the exact current-notation uniform chaos estimate,
  or restate a theorem whose hypotheses and conclusion fully match it. If a
  subsequent derivation establishes that the stated rate or interface is
  unattainable and must be weakened, split, or supplied by a new dependency,
  that new evidence would require `/proof-sketch`; attempt 2 does not yet
  establish such a contradiction.

### unit_006: raw tangent deficit on the TF-TC intersection

- Statement fidelity: The repaired proposition explicitly assumes the
  realized event intersection
  \(\mathcal E_{\rm TF}(30\log r)\cap\mathcal E_{\rm TC}\), names its
  dependencies, and targets the exact raw deficit.
- Proof validity: On \(\mathcal E_{\rm TF}\), the quotient block-diagonal
  lower bound and Weyl give \(J^*J\succeq I/2\). On
  \(\mathcal E_{\rm TC}\), the projection formula gives tangent energy at
  most \(2C_{\rm TC}(k/r+\log r)\le r/2\). Pythagoras constructs the unit
  normal witness, and \(\widehat D_0\in\mathscr S_0\) makes the residual
  pairing exact.
- Cited-result and assumption audit: The finite-dimensional projection formula
  is restated before use. The accepted raw-span identity is applied without
  rescaling \(D_r\), \(\widehat D_0\), or the coefficient metric.
- Rigor checklist: The finite TF and TC absorption thresholds are explicit.
  Equation (27) correctly retains \(C_{\rm dec}(\kappa)\) and verifies
  \(C_{\rm dec}r^{-30}+r^{-25}\le r^{-20}\) under the stated thresholds,
  without an independence assumption.
- Local adversarial test: Removing either TF or TC destroys the corresponding
  inverse or projection-energy control. At zero tangent projection the witness
  has maximal margin; at maximal rank the proved TC term remains \(o(r)\).
- Contribution to target step: Completely closes the deterministic and event
  bookkeeping from TF and TC to \(W_0\) and the raw deficit.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The only new independent subclaim not fully represented by a proved local unit
is the fixed-\(Y\) mean-square assertion inside the unresolved `unit_005`
discussion. It is not used to claim completion, but it must be proved before it
can support a future uniform-chaos derivation. The same-mode operator
concentration and all six cross-mode uniform bounds are not hidden: they are
explicitly included in the unresolved statement of Lemma~
\(\ref{lem:step-003-terracini-chaos}\). The proof does not condition on the
generated normalized-Gram event and does not promote \(\mathcal E_{\rm TF}\)
to an assumption or exported fact.

## Target Claim Audit

The exact `step_003` claim is not proved. Attempt 2 proves the ACG moments,
gauge quotient, Terracini block formulas, (TC), same-mode rowwise variance,
the exact two-stage cross-mode factorization, and the conditional
TF-plus-TC-to-deficit implication with correct confidence bookkeeping. It does
not prove the uniform operator event \(\mathcal E_{\rm TF}\), so it cannot
establish (TF), full-frame coercivity, \(W_0\), or
\(\mathcal E_{\rm deficit}\) with conditional failure at most \(r^{-20}\).
The accepted dependency artifacts remain current and supply their exact
advertised conclusions; neither is the nearest failed artifact.

## Explicit Rate Audit

The completed units preserve \(\kappa,r,k\), the rank window, confidence
powers, fixed-factor conditional probability mode, initialization-only
horizon, quotient/operator/Frobenius norm modes, and constants independent of
\(n,r,k\) and the realized conditioned factors. (TC) has the proved
\(k/r+\log r\) scale and \(r^{-25}\) failure. The unresolved lemma must still
prove \(\sqrt{k}/r+\sqrt{t/r}\) uniformly, without an extra
\(\sqrt{\log r}\) on the leading term, and with explicit
\(C_{\rm TF}(\kappa)\), \(C_{\rm dec}(\kappa)\), and
\(r_{\rm TF}(\kappa)\). Equations (22), (26), and (27) correctly show how
such a bound would be absorbed and converted to the public \(r^{-20}\)
budget. The normalization baseline remains exact: all tangent, target, and
deficit conclusions are in raw coefficient coordinates.

## Notation Surface Audit

The repaired artifact classifies the angular and quotient objects as
appendix-local, Gaussianization and block objects as proof-local,
\(\mathcal E_{\rm TC}\) as a proved appendix-local event,
\(\mathcal E_{\rm TF}\) as an unresolved appendix-local proposed event, and
\(W_0\) as the sole intended public-facing output. The random class
\(\mathcal Q_{B,C}\) is proof-local and is not asserted to satisfy a
near-isometry. No unresolved constant or event is exported as established.

## Target-Step Assembly Audit

All assembly links after TF are now explicit and valid. Lemma~
\(\ref{lem:step-003-target-correlation}\) supplies \(\mathcal E_{\rm TC}\),
Proposition~\(\ref{prop:step-003-deficit-from-frame}\) consumes the exact
TF-TC intersection, and (27) performs the prefactor-aware union bound. The
assembly still fails because no accepted local result or citation produces
\(\mathcal E_{\rm TF}\). Proving Lemma~
\(\ref{lem:step-003-terracini-chaos}\) under its current statement would close
the exact accepted step without changing downstream interfaces.

## Review Rationale

`REVISE_STEP` remains the smallest controlled repair. Attempt 2 materially
improves the raw-control description: it gives self-contained statements, the
exact repeated-block factorization, the correct TF-TC event interface, and the
full confidence conversion. The remaining defect is nevertheless a missing
local derivation or checked citation for the exact hard lemma already assigned
to `step_003` by the accepted sketch. The attempt does not prove that the
\(\sqrt{k}/r+\sqrt{t/r}\) estimate is false, expose a persistent wrong-scale
term, require a new primitive assumption or dependency, change the quotient or
raw-target convention, or require a different output target. Therefore the
record does not yet establish the changed source, bridge, defect split, or
dominance interface required for `REVISE_SKETCH`. The accepted dependencies
are not flawed, so `BLOCKED_BY_DEPENDENCY` is inapplicable. A fresh
`/proof-step step_003` must prove or validly source the uniform chaos lemma and
then undergo a fresh step review before downstream use.
