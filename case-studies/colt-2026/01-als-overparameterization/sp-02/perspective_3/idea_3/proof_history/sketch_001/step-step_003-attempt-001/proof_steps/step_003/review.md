# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_003/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_003

## Blocking Issues

1. **The theorem-critical frame estimate is unproved.** In
   Lemma~\(\ref{lem:step-003-terracini-chaos}\) (`unit_005`), equation (21)
   is stated and then explicitly left unresolved. Proposition~
   \(\ref{prop:step-003-offblock-split}\) proves the block algebra and a
   same-mode rowwise second-moment source, but it does not prove operator-norm
   concentration for either the same-mode deviations or the six cross-mode
   arrays after quotient projection. Consequently (TF), the lower bound
   \(J^*J\succeq I/2\), and the generated deficit event are unavailable. The
   smallest repair is a new `step_003` proof attempt establishing (21) under
   the unchanged accepted assumptions and dependencies, with the exact
   \(\sqrt{k}/r+\sqrt{t/r}\) scale and uniform conditional tail. If a cited
   chaos theorem is used, it must be fully restated and discharged for the
   anisotropic angular law and quotient convention.
2. **The conditional deficit proposition does not state its complete event
   premise.** Proposition~\(\ref{prop:step-003-deficit-from-frame}\)
   invokes Lemma~\(\ref{lem:step-003-target-correlation}\) as though (TC)
   were deterministic and says only "if (TF) holds," while its proof uses
   both (TF) and the realized (TC) event. The repaired statement and assembly
   must be explicitly eventwise on \(\mathcal E_{\rm TF}\cap
   \mathcal E_{\rm TC}\), and the confidence conversion must retain the
   constant in \(Ce^{-t}\), for example
   \(Cr^{-30}+r^{-25}\le r^{-20}\) after a stated finite threshold.
3. **Several local statements do not satisfy the named-input contract.** The
   statements of `unit_002`--`unit_005` use phrases such as "Under (1),"
   "the accepted dependencies," or "the target step requires" instead of
   naming their exact primitive assumptions and prior theorem-style results.
   This is especially material for the replacement of `unit_005`, whose
   probability space, fixed realized-factor conditioning, quotient domain,
   and constants must be part of the lemma statement itself. The same
   `step_003` retry should make each statement self-contained and use named
   theorem-style references rather than unit IDs or surrounding prose.

## Per-Lemma Audit

### unit_001: uniform moments for conditioned elliptic angular laws

- Statement fidelity: The lemma targets the exact angular law needed by the
  frame calculation and uses only Assumption~
  \(\ref{assump:independent_initialization}\) and the accepted conditioning
  and Gaussianization outputs.
- Proof validity: Removing the positive balancing scalar gives
  \(p=H_Mz/\|H_Mz\|_2\). The accepted singular-value interval for \(H_M\)
  yields
  \[
    |\langle u,p\rangle|
    \le \kappa_1^2
       |\langle v,z\rangle|/\|z\|_2,
  \]
  so the spherical moment identity gives the displayed
  \(\kappa_1^{4m}\) loss. Odd symmetry gives zero mean, and the \(m=1\)
  bound gives the covariance and coordinate estimates.
- Cited-result and assumption audit: The accepted dependencies are restated
  in current notation, and the Gaussian spherical moment formula is stated
  before use. No radial, Gram, or deficit event is assumed.
- Rigor checklist: Independence across modes and components survives because
  each direction depends only on its corresponding projected Gaussian. The
  constants are uniform over every fixed realized triple in
  \(\mathcal E_{\rm cond}\) and depend only on \(\kappa\).
- Local adversarial test: At either endpoint of the allowed singular-value
  interval for \(H_M\), the ratio of its largest to smallest singular value
  is at most \(\kappa_1^2\), so the moment bound remains valid. Gaussian
  images are nonzero almost surely.
- Contribution to target step: Supplies the ACG law, centering, and linear-form
  moments used by (TC) and the proposed (TF) calculation.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact gauge quotient and Terracini blocks

- Statement fidelity: The deterministic conclusions are the correct quotient
  geometry required by the sketch: a two-dimensional gauge kernel, quotient
  spectrum in \([1,3]\), exact raw tangent range, and explicit off-component
  blocks. The statement itself is not self-contained because "Under (1)"
  is not a named assumption or prior-result basis.
- Proof validity: Decomposing each variation into its component parallel and
  perpendicular to \(p_i^m\) gives four mutually orthogonal tensor terms.
  This proves that the kernel is exactly
  \(\{(s p_i^a,t p_i^b,u p_i^c):s+t+u=0\}\). Orthogonality to that gauge
  plane forces the three parallel coefficients to coincide, giving quotient
  eigenvalues one and three. The nine pairings in the derivative formula give
  the block matrix (10), and quotient projection gives the claimed blocks.
- Cited-result and assumption audit: The accepted exact span transfer is used
  correctly in the proof, but the proposition statement should cite
  Lemma~\(\ref{lem:step-003-angular-moments}\) or explicitly define arbitrary
  unit directions and cite Proposition~\(\ref{prop:step-002-exact-scale}\)
  for the raw-span conclusion.
- Rigor checklist: The Euclidean quotient, adjoints, block ordering, and raw
  coefficient Frobenius inner product are consistent. Restriction to the
  orthogonal complement preserves the component tangent range because only
  the exact kernel is removed.
- Local adversarial test: Pure scaling variations with coefficients summing
  to zero vanish and are the only null directions; the common scaling
  direction has quotient eigenvalue three rather than becoming a hidden
  third gauge direction. Sign choices or nonzero rescaling of the generators
  do not change the tangent span.
- Contribution to target step: Supplies the within-component coercive source
  and exact structured off-block arrays.
- Verdict: REVISE_STEP
- Repair direction: Retain the derivation, but rewrite the statement with
  explicit named inputs and a self-contained definition of its direction
  objects.

### unit_003: raw diagonal-core target correlation

- Statement fidelity: The probability bound is exactly (TC), in the raw
  \(D_r\) convention and at the required \(k/r+\log r\) scale. The phrase
  "the accepted dependencies" should be replaced by their exact named
  statements.
- Proof validity: Direct contraction gives the three Hadamard-product vectors.
  Quotient projection is norm nonincreasing. For each mode pair,
  \(X_i\in[0,1]\), the \(X_i\)'s are independent over components, and mode
  independence plus the angular second moments gives
  \(\mathbb E X_i\le\kappa_1^8/r\). Scalar Bernstein with
  \(u=30\log r\), followed by the three-pair union bound, yields (12) with
  \(C_{\rm TC}(\kappa)=6\kappa_1^8+75\).
- Cited-result and assumption audit: The bounded-variable Bernstein inequality
  is fully restated and correctly instantiated. The fixed-factor conditional
  law and component independence come from the accepted Gaussianization.
- Rigor checklist: The inequality
  \(\sqrt{2\mu u}\le\mu+u/2\) gives the displayed
  \(2\mu+25\log r\) bound, and \(3r^{-30}\le r^{-25}\) holds after a finite
  threshold. Probability, horizon, and norm modes match the sketch.
- Local adversarial test: At \(k=r^{5/4}\), the bound is
  \(O_\kappa(r^{1/4}+\log r)=o(r)\); coordinate concentration is not assumed,
  because only boundedness and the summed mean enter Bernstein.
- Contribution to target step: Completely supplies (TC), conditional on every
  fixed realized triple in \(\mathcal E_{\rm cond}\).
- Verdict: REVISE_STEP
- Repair direction: Preserve the proof and make the statement's accepted
  dependency basis explicit by theorem-style name.

### unit_004: off-component split and same-mode variance source

- Statement fidelity: The proposition correctly limits its completed output
  to the exact same-mode/cross-mode algebra and the rowwise
  \(O_\kappa(k/r^2)\) second-moment source. It does not, and must not, count
  this as an operator-norm proof of (TF). Its assumption basis is stated too
  vaguely.
- Proof validity: Equation (18) follows by assembling the diagonal mode block
  of (10), with the component diagonal removed. Conditional on the fixed
  component directions, independence of the other component and the two
  modes gives (19). The six cross-mode rank-one arrays in (20) agree with the
  exact Terracini block formula.
- Cited-result and assumption audit: Only the accepted angular law and local
  moment lemma are needed. The statement should name those results and the
  fixed realized-factor conditioning explicitly.
- Rigor checklist: The calculation establishes a block-row quadratic variance
  source, not a full matrix variance proxy, decoupling inequality, or tail.
  The proof accurately observes that replacing each cross block by its norm
  loses one angular factor and sees only variance \(k/r\).
- Local adversarial test: At the maximal rank, a block-norm Bernstein route
  would have scale \(\sqrt{k/r}=r^{1/8}\), so it cannot yield a uniform
  \(1/2\) frame perturbation. The random input and output directions must
  remain inside the operator calculation.
- Contribution to target step: Identifies the exact raw arrays and the
  variance mechanism that a valid `unit_005` proof must exploit.
- Verdict: REVISE_STEP
- Repair direction: Retain the algebra, state the exact named inputs, and do
  not promote (19) beyond its rowwise second-moment role.

### unit_005: required quotient Terracini-chaos concentration

- Statement fidelity: Equation (21) is the exact missing (TF) interface fixed
  by the accepted sketch, including quotient projection, same- and
  cross-mode blocks, scale, tail, and maximal-rank regime. The statement must
  additionally name its primitive and accepted inputs explicitly.
- Proof validity: No proof is supplied. The text explains why a crude
  block-norm Bernstein argument fails, but identifying the needed decoupling
  mechanism is not a derivation of the operator-chaos inequality.
- Cited-result and assumption audit: No cited theorem or accepted dependency
  supplies (21). Therefore there is no checked source whose hypotheses,
  anisotropic law, quotient convention, conclusion, and tail can be consumed.
- Rigor checklist: The required uniformity over realized factors, dependence
  only on \(\kappa\), simultaneous treatment of nine mode blocks, quotient
  projection, dimension factors, and constant-tail conversion are all
  unresolved.
- Local adversarial test: Taking scalar block norms produces variance
  \(k/r\), which is insufficient at \(k=r^{5/4}\). This demonstrates that
  the missing angular cancellation is essential. The attempt does not,
  however, produce a lower bound or counterexample contradicting the target
  \(\sqrt{k}/r\) scale.
- Contribution to target step: None yet; without this unit, (TF) and the
  structural lower margin are not proved.
- Verdict: REVISE_STEP
- Repair direction: Prove the exact current-notation decoupled matrix-chaos
  lemma, or restate and fully discharge a theorem that proves it. If a future
  derivation instead shows that the scale or quotient interface is false, that
  new evidence would require sketch repair; the present artifact does not yet
  establish such a defect.

### unit_006: raw tangent deficit conditional on the frame estimate

- Statement fidelity: The proposition targets the correct raw object and
  derives a margin stronger than \(\delta_0=1/8\), but it must state that both
  the (TF) and (TC) events hold rather than treating a probabilistic lemma as
  a deterministic premise.
- Proof validity: On (TF), the quotient block diagonal lower bound and Weyl's
  inequality give \(J^*J\succeq I/2\). On the (TC) event, the projection
  formula then gives
  \(\|P_{\mathscr S_0}D_r\|_F^2\le
  2C_{\rm TC}(k/r+\log r)\le r/2\). Pythagoras constructs (24), and
  \(\widehat D_0\in\mathscr S_0\) makes the residual pairing exact.
- Cited-result and assumption audit: The projection formula is correctly
  restated and applied once injectivity is available. The accepted raw-span
  identity is used without normalizing \(D_r\) or \(\widehat D_0\).
- Rigor checklist: The finite threshold in (26), unit normalization of
  \(W_0\), Frobenius metric, and stronger \(\sqrt{r/2}\) margin are correct.
  The eventwise premise and confidence bookkeeping need repair.
- Local adversarial test: If (TF) is absent, the quotient Gram may be singular
  and the inverse/projection bound is unavailable; if (TC) is absent, the
  tangent projection can be order \(r\). At zero tangent projection, the
  construction gives the maximal possible margin and remains raw-coordinate.
- Contribution to target step: Correctly closes the deterministic
  projection-to-deficit implication once the two random frame events are
  actually proved and intersected.
- Verdict: REVISE_STEP
- Repair direction: Restate the proposition on
  \(\mathcal E_{\rm TF}\cap\mathcal E_{\rm TC}\), then include the exact
  union-bound conversion in target-step assembly.

## Hidden Subclaim Scan

No additional independent theorem-critical claim is hidden outside the local
lemma map. In particular, the same-mode operator concentration is not proved
by (19), but it is explicitly included in the unresolved `unit_005` interface;
all six cross-mode arrays are likewise assigned there. The proof also correctly
avoids conditioning the angular law on the generated normalized-Gram event.
The phrases "leave-one-component-out" and "equivalent matrix-chaos estimate"
name a prospective proof mechanism only and supply no mathematical result.

## Target Claim Audit

The submitted artifact does not prove the exact `step_003` claim. It proves
the ACG moments, quotient geometry, (TC), and the off-block decomposition, and
it proves a valid conditional implication from (TF) plus (TC) to a raw tangent
deficit. It does not prove (TF), does not establish the required lower bound on
the full quotient Gram, and therefore cannot construct or export \(W_0\) or
\(\mathcal E_{\rm deficit}\) with conditional failure at most \(r^{-20}\).
The accepted dependencies themselves supply their exact advertised claims and
are not the nearest failed artifacts.

## Explicit Rate Audit

This is a rate-bearing initialization step. The completed (TC) unit preserves
the exposed variables \(\kappa,r,k\), the fixed-factor conditional probability
mode, initialization-only horizon, Euclidean quotient/operator/Frobenius norm
modes, and the \(k/r+\log r\) dependence with constants depending only on
\(\kappa\). The missing TF proof must still establish the full
\(\sqrt{k}/r+\sqrt{t/r}\) dependence without an extra
\(\sqrt{\log r}\sqrt{k}/r\) loss, uniformly for
\(r<k\le r^{5/4}\). It must expose all constants and verify, with
\(t=30\log r\), both the \(1/2\) absorption and the exact confidence
conversion including the prefactor in \(Ce^{-t}\). The normalization baseline
is preserved: the tangent span is unchanged and all target-correlation and
deficit statements remain against raw \(D_r\) and raw \(\widehat D_0\).

## Notation Surface Audit

The helper objects are mostly classified appropriately: angular directions and
quotient-frame objects are appendix-local, block abbreviations and Gaussian
representations are proof-local, and \(W_0\) is the sole intended
public-facing output. The artifact correctly does not export \(W_0\) or treat
\(C_{\rm TF}(\kappa)\) as established. The repaired proof should reduce the
remaining statement-level dependence on equation tags, "accepted
dependencies," and unit IDs by naming the exact theorem-style inputs in each
local result.

## Target-Step Assembly Audit

The accepted dependencies, Lemma~\(\ref{lem:step-003-angular-moments}\),
Proposition~\(\ref{prop:step-003-quotient}\), and Lemma~
\(\ref{lem:step-003-target-correlation}\) do not jointly imply the target
without Lemma~\(\ref{lem:step-003-terracini-chaos}\). The current assembly
correctly labels itself blocked and does not export a deficit event. Under the
unchanged sketch row, proving (21), explicitly intersecting the resulting TF
event with the TC event, and applying Proposition~
\(\ref{prop:step-003-deficit-from-frame}\) would close the exact target.

## Review Rationale

`REVISE_STEP` is the smallest controlled repair. The accepted sketch already
fixes the quotient convention, the off-block defect split, the intended
leave-one-component-out or matrix-chaos tool, the TF and TC scales, the
probability budget, and the raw deficit output. The current attempt verifies
the angular moments, quotient geometry, TC estimate, same-mode variance source,
cross-mode block formulas, and conditional projection assembly, but it simply
does not prove the assigned cross-mode matrix-chaos lemma. No counterexample,
boundary failure, changed dependence, new dependency, or changed output target
has been established, so `REVISE_SKETCH` would be premature. The accepted
dependency proofs are not defective, so `BLOCKED_BY_DEPENDENCY` is also
inapplicable. A fresh `/proof-step step_003` must close (21) and the local
statement/event bookkeeping, after which a fresh step review is required
before downstream use.
