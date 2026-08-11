# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 4
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_003/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_003

## Blocking Issues

1. **`unit_005` still does not prove the theorem-critical uniform Terracini-chaos event.** At Lemma~\(\ref{lem:step-003-terracini-chaos}\), the proof explicitly leaves (21) unresolved. The accepted dependencies and the completed local units provide the angular law, quotient geometry, exact nine-array decomposition, same-mode block-row variance, and deterministic-input cross-mode mean square, but none controls
   \[
     \sup_{\|Y\|_F=1}\|\Pi\widetilde E\Pi Y\|_F
   \]
   when the maximizing input depends on all direction arrays. In particular, there is still no self-adjoint operator-variance, decoupling, restricted-near-isometry, chaining, or fully discharged cited theorem that jointly handles the three same-mode deviations and six cross-mode arrays with conditional tail
   \(C_{\rm dec}(\kappa)e^{-t}\) at scale
   \(C_{\rm TF}(\kappa)(\sqrt{k}/r+\sqrt{t/r})\). Consequently (TF), the lower bound on the full quotient Gram, the unconditional construction of \(W_0\), and the \(r^{-20}\)-failure deficit event are not proved. The smallest repair is a new `step_003` producer attempt proving or validly sourcing this exact uniform lemma under the unchanged row interface.

## Per-Lemma Audit

### unit_001: uniform moments for conditioned elliptic angular laws

- Statement fidelity: The lemma uses exactly the primitive initialization law and accepted conditioning/Gaussianization outputs required by the sketch and keeps the fixed-realized-factor conditional scope explicit.
- Proof validity: Direction normalization removes the positive balancing scalar. The singular-value interval for \(H_M\) gives the ratio bound \(|\langle u,p\rangle|\le\kappa_1^2|\langle v,z\rangle|/\|z\|\), after which the spherical even-moment identity proves (3). Odd symmetry gives centering, and the second moment gives (4).
- Cited-result and assumption audit: The accepted dependency objects and the spherical moment identity are restated in current notation. No radial, Gram, deficit, trajectory, or final-loss event is assumed.
- Rigor checklist: Mode/component independence, almost-sure nonzero Gaussian images, all dimensions, and dependence only on \(\kappa\) are correct.
- Local adversarial test: Extremal allowed singular values of \(H_M\) still give the displayed \(\kappa_1^2\) ratio and \(\kappa_1^4/r\) covariance bound.
- Contribution to target step: Supplies the ACG angular laws, centering, and moments used by every later random-geometry unit.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact gauge quotient and Terracini blocks

- Statement fidelity: The proposition proves the exact two-dimensional CP gauge, the quotient spectrum, the raw tangent range, and the off-component blocks specified by the accepted row.
- Proof validity: Parallel/perpendicular decomposition gives three mutually orthogonal perpendicular variations and one common-core term. Orthogonality to the gauge plane forces equal parallel coefficients, yielding quotient eigenvalues in \([1,3]\). The nine tensor pairings give (10), and accepted nonzero rescaling/span transfer gives \(\operatorname{range}J=\mathscr S_0\).
- Cited-result and assumption audit: Every dependency is named, and only the accepted exact span-transfer result is used to identify the raw tangent space.
- Rigor checklist: The Euclidean quotient, adjoints, block orientation, and tensor Frobenius pairing agree with `setting.md`.
- Local adversarial test: Gauge coefficients with zero sum are exactly null, while the common scaling direction remains and has quotient eigenvalue three.
- Contribution to target step: Supplies the within-component coercive source and exact off-component operator algebra.
- Verdict: PASS
- Repair direction: None.

### unit_003: raw diagonal-core target correlation

- Statement fidelity: The lemma proves the exact raw-target event (TC), including its \(k/r+\log r\) scale and fixed-factor conditional failure budget.
- Proof validity: Contracting with \(D_r\) gives the three Hadamard-product vectors. Each component energy lies in \([0,1]\), is independent across components, and has mean at most \(\kappa_1^8/r\). Scalar Bernstein with \(u=30\log r\), followed by the three-pair union bound, yields the claimed event and \(r^{-25}\) failure.
- Cited-result and assumption audit: Bernstein is restated with boundedness, independence, and mean hypotheses discharged locally.
- Rigor checklist: The quotient projection is norm-contracting, constants are explicit, and the raw \(D_r\) convention is preserved.
- Local adversarial test: At \(k=r^{5/4}\), the bound remains \(O_\kappa(r^{1/4}+\log r)=o(r)\).
- Contribution to target step: Completely proves (TC).
- Verdict: PASS
- Repair direction: None.

### unit_004: off-component split and two-stage factorization

- Statement fidelity: The proposition limits its proved output to the exact same-mode algebra, block-row quadratic variance source, six cross-mode arrays, and their two-stage factorizations.
- Proof validity: Equations (18)--(20a) follow from the block formula and conditional component/mode independence. For (20a), the \(i\)-th output column is exactly \(\sum_{j\ne i}p_j^a\langle p_i^b,y_j\rangle\langle p_i^c,p_j^c\rangle\).
- Cited-result and assumption audit: Only accepted angular inputs and the proved local covariance bound are used. No operator concentration is smuggled into the proposition.
- Rigor checklist: The rowwise \(k/r^2\) quantity is correctly not identified with a full self-adjoint operator-variance proxy.
- Local adversarial test: Replacing each rank-one block by its operator norm loses one angular factor and exposes the stated \(k/r\) obstruction to a crude route.
- Contribution to target step: Gives the exact random-operator interface required by any future proof of (TF).
- Verdict: PASS
- Repair direction: None.

### unit_007: fixed-input cross-mode mean square and raw-block lower tail

- Statement fidelity: Attempt 4 repairs the prior overstatement. The lemma now explicitly claims only deterministic-input mean square and an unprojected-block isotropic lower tail; it does not infer quotient/full-operator sharpness from (20e).
- Proof validity: Entrywise expansion of \(Q_{B,C}(Y)\) and mode independence give (20c). Since \(A_p\) is independent of \(Q_{B,C}(Y)\), has centered independent unit columns, and satisfies \(\mathbb E A_p^{\mathsf T}A_p=I_k\), conditioning on \(Q\) proves the equality in (20d). For the one-column isotropic input, \(\mathbb EZ=m/r^2\), the diagonal fourth-moment contribution is at most \(9m/r^4\), and the off-diagonal contribution is exactly \(m(m-1)/r^4\); Paley--Zygmund therefore gives probability at least \(m/[4(m+8)]\ge1/36\).
- Cited-result and assumption audit: Angular covariances, the exact factorization, and Paley--Zygmund are all stated before use. No independence between an ACG Gaussian column and its normalizer is assumed.
- Rigor checklist: The upper bound is for inputs deterministic relative to all direction arrays, and the proof does not upgrade expectation to a data-dependent supremum.
- Local adversarial test: The lower-tail input lives in one raw cross-mode block only. The lemma now says exactly that and delegates quotient/full-operator scope to `unit_008`.
- Contribution to target step: Proves the fixed-input \(\sqrt{k}/r\) root-mean-square scale for all six cross-mode arrays and removes the attempt-3 statement flaw.
- Verdict: PASS
- Repair direction: None.

### unit_008: quotient/full-operator lower bound at the leading scale

- Statement fidelity: The lemma is explicitly diagnostic in the isotropic specialization and targets the actual projected complete off-component operator \(\Pi\widetilde E\Pi\), repairing the missing scope from attempt 3.
- Proof validity: The selected input \(h_{j_0}=(0,u,0)\) is measurable, unit norm, and belongs to \(\mathcal H_{j_0}\) because \(u\perp p_{j_0}^b\); hence \(\Pi h=h\). For each \(i\ne j_0\), quotient projection subtracts only a gauge vector, so it can change the first-mode component only in the \(p_i^a\) direction. Its perpendicular component therefore survives with squared norm
  \(c_{ij_0}^2\langle p_i^b,u\rangle^2(1-a_{ij_0}^2)\), proving (20o).
- Cited-result and assumption audit: Conditional on the three component-\(j_0\) directions, the summands are independent over \(i\), and their three mode factors are independent. Spherical moments give
  \(\mathbb EX_i=(r-1)/r^3\) and
  \(\mathbb EX_i^2\le9/[r^2(r+2)^2]\le9/r^4\).
- Rigor checklist: Summing diagonal and off-diagonal terms yields
  \(\mathbb EZ^2\le(m^2+8m)/r^4\). Paley--Zygmund gives
  \(\frac14\frac{m}{m+8}(1-1/r)^2\ge1/144\); the constant is conservative under \(m=k-1\ge1\) and \(r\ge2\). On this event, \(Z\ge m/(4r^2)\), so the unit-input response gives the claimed operator lower bound.
- Local adversarial test: Possible cancellation in the other projected mode components cannot erase the retained first-mode perpendicular component. The result is a lower bound at the same order as (TF), not evidence against an upper bound with a sufficiently large constant.
- Contribution to target step: Validates that \(\sqrt{k}/r\) is necessary for the quotient/full operator in the isotropic model, while leaving the upper-tail problem open.
- Verdict: PASS
- Repair direction: None.

### unit_009: canonical data-dependent top-singular alignment test

- Statement fidelity: The lemma is a diagnostic one-slice test, not a uniform bound. It clearly states the probability space for \(A_p\), the remaining conditional expectation over the independent \(C\)-directions, and the limitation to one output slice.
- Proof validity: On the normalized-Gaussian good event, \(A_p\in\mathbb R^{r\times k}\) satisfies \(\|A_p\|_{\rm op}\le5\sqrt{k/r}\); deterministically \(\|A_p\|_{\rm op}\ge\|A_p\|_F/\sqrt r=\sqrt{k/r}\). A top right singular vector \(v\in\mathbb R^k\), an index \(i_0\) with \(|v_{i_0}|\le k^{-1/2}\), and \(\bar v=v-v_{i_0}e_{i_0}\) give (20w). The choices may be made with deterministic tie-breaking; in any case the lemma's conclusion is pointwise existential on the measurable good event, so no conditioning or integration step requires an unmeasurable selector.
- Cited-result and assumption audit: The Gaussian operator-norm and chi lower-tail bounds give total failure at most \(2r^{-30}\) for large \(r\). Conditional on \(A_p,p_{i_0}^b,p_{i_0}^c\), the variables \(d_j\), \(j\ne i_0\), are independent with second moment \(1/r\) and fourth moment \(3/[r(r+2)]\).
- Rigor checklist: Dimensions are consistent: \(Y\in\mathbb R^{r\times k}\), \(Q_{B,C}(Y)\in\mathbb R^{k\times k}\), and \((E^{ab}Y)_{i_0}\in\mathbb R^r\). The exact calculation gives
  \[
    \frac{\mathbb E_C\|(E^{ab}Y)_{i_0}\|_2^2}
         {\mathbb E_C\|Y\|_F^2}
    =\frac{\|A_p\bar v\|_2^2}{r\|\bar v\|_2^2}
      +r\Delta_r,
  \]
  with \(\Delta_r=2(r-1)/[r^2(r+2)]\). Equations (20v)--(20w) bound this between \(k/(4r^2)\) and, conservatively, \(64k/r^2\), proving the RMS interval.
- Local adversarial test: The input legitimately depends on the tested data, but only one output slice is aligned. The construction does not rule out a stronger simultaneous multi-column alignment and therefore does not discharge or refute (21).
- Contribution to target step: Tests the principal top-singular alignment concern and finds the target leading scale for this canonical adaptive construction.
- Verdict: PASS
- Repair direction: None.

### unit_005: required quotient Terracini-chaos concentration

- Statement fidelity: The lemma states the exact accepted-row interface: fixed-factor conditional uniformity, rank regime, quotient operator, all nine arrays, \(\sqrt{k}/r+\sqrt{t/r}\) rate, and finite \(C_{\rm dec}(\kappa)e^{-t}\) tail.
- Proof validity: The proof is explicitly unresolved. Contractive quotient projection, rowwise variance, exact factorization, deterministic-input mean square, matching lower scale, and the one-slice adaptive test do not control the random operator supremum.
- Cited-result and assumption audit: The artifact correctly acknowledges that no accepted dependency or checked external theorem has been mapped to the ACG normalization, repeated-block class, nine-array assembly, quotient interface, and required conditional tail.
- Rigor checklist: Same-mode operator concentration, all six coupled cross-mode arrays, data-dependent inputs, the absence of an extra leading logarithm, and the finite tail prefactor all remain open.
- Local adversarial test: `unit_008` proves only a matching-order lower bound, and `unit_009` finds no larger scale for one canonical alignment. Neither is a counterexample to (21), but neither is an upper-tail proof.
- Contribution to target step: None yet; it remains the sole missing producer of \(\mathcal E_{\rm TF}\).
- Verdict: REVISE_STEP
- Repair direction: Prove the exact current-notation uniform chaos estimate or restate and fully discharge a theorem that supplies it. Escalate to `/proof-sketch` only if a rigorous argument establishes that the accepted rate, defect split, dependency, or output interface must change.

### unit_006: raw tangent deficit conditional on the frame estimate

- Statement fidelity: The proposition explicitly assumes the local TF--TC intersection and targets the exact raw deficit without presenting the conditional result as an unconditional step output.
- Proof validity: The within-block quotient lower bound and (TF) give \(J^*J\succeq I/2\). The projection formula and (TC) give tangent energy at most \(2C_{\rm TC}(k/r+\log r)\le r/2\). Pythagoras then constructs \(W_0\), and \(\widehat D_0\in\mathscr S_0\) gives the exact raw residual pairing.
- Cited-result and assumption audit: The projection formula is restated, and the accepted raw-span identity is used in the correct coefficient Frobenius convention.
- Rigor checklist: Equations (22), (26), and (27) state the finite thresholds and prefactor-aware probability conversion without requiring independence of TF and TC.
- Local adversarial test: Removing TF loses quotient injectivity control; removing TC loses the tangent-projection energy bound. At maximal rank the proved TC term remains \(o(r)\).
- Contribution to target step: Correctly closes every deterministic and event-bookkeeping implication after the missing TF event is supplied.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

Every independent nontrivial claim in attempt 4 appears in the local lemma map. In particular, the fixed-input mean square, raw-block lower tail, quotient/full-operator lower bound, top-singular one-slice test, unresolved uniform nine-array tail, and TF--TC deficit assembly each have named units and matching derivations. The proof does not silently upgrade deterministic-input expectation to a data-dependent supremum, isotropic diagnostics to the anisotropic theorem, or the conditional deficit proposition to an unconditional output. The top-singular choice is pointwise existential on a measurable good event and can be made with deterministic tie-breaking; no hidden measurability assumption affects a consumed theorem claim.

## Target Claim Audit

The exact `step_003` target is not proved. Attempt 4 validly proves the ACG moments, quotient geometry, Terracini block formulas, (TC), fixed-input cross-mode variance, a matching quotient/full-operator lower scale in the isotropic case, a one-slice adaptive alignment diagnostic, and the conditional TF--TC-to-deficit implication. It does not prove (21), so it cannot establish (TF), full quotient-frame coercivity, or export \(W_0\) and \(\mathcal E_{\rm deficit}\) with conditional failure at most \(r^{-20}\). The accepted `step_001` and `step_002` dependency pairs remain current and are not the source of failure.

## Explicit Rate Audit

The completed units preserve \(\kappa,r,k\), \(r<k\le r^{5/4}\), the fixed-realization conditional probability mode, initialization-only horizon, quotient/operator/Frobenius norm modes, and hidden dependence only on \(\kappa\). (TC) has the proved \(k/r+\log r\) scale and \(r^{-25}\) failure. `unit_007` gives deterministic-input mean square \(O_\kappa(k/r^2)\); `unit_008` gives a quotient/full-operator lower bound of order \(\sqrt{k}/r\) with constant probability; and `unit_009` gives the same RMS order for the canonical top-singular one-slice alignment. These diagnostics support, rather than contradict, the leading term in (TF). The missing unit must still prove the uniform upper tail \(C_{\rm TF}(\kappa)(\sqrt{k}/r+\sqrt{t/r})\), avoid an extra logarithmic factor on \(\sqrt{k}/r\), and provide the finite \(C_{\rm dec}(\kappa)e^{-t}\) prefactor. Without it, the substitution \(t=30\log r\) and the public \(r^{-20}\) conversion remain unavailable. Raw \(D_r\), \(\widehat D_0\), tangent span, and coefficient residual conventions remain preserved.

## Notation Surface Audit

The angular and quotient objects are appendix-local; Gaussianization objects, mode arrays, \(Q_{B,C}(Y)\), \(\mathcal Q_{B,C}\), lower-bound inputs, and alignment inputs are proof-local; \(\mathcal E_{\rm TC}\) is a proved appendix-local event; and \(\mathcal E_{\rm TF}\) is explicitly unresolved. The isotropic specialization is clearly restricted to diagnostics and is not exported as a theorem assumption. \(W_0\) remains the only intended public-facing output and is not exported in this partial proof.

## Target-Step Assembly Audit

All assembly links after a valid TF event are correct: the quotient diagonal lower bound plus TF gives injectivity, TC controls the tangent projection, Pythagoras gives the normal residual, and the raw span identity removes \(\widehat D_0\). Equation (27) gives the correct prefactor-aware union bound. No accepted local result or citation produces \(\mathcal E_{\rm TF}\), however, so the exact target-step assembly fails at `unit_005`.

## Review Rationale

`REVISE_STEP` remains the smallest evidence-based status. Attempt 4 fully repairs `unit_007`'s sharpness wording and adds valid quotient/full-operator and adaptive-alignment diagnostics. Those results show that the proposed \(\sqrt{k}/r\) leading scale is necessary and survives one important data-dependent stress test; they do not exhibit a larger unavoidable scale, a failed boundary regime, or any change required in the accepted claim, assumptions, dependencies, quotient convention, defect split, output target, or downstream dominance relation. The missing object is still the exact uniform chaos estimate already assigned to `step_003` by the accepted sketch. Repeated difficulty alone does not establish a sketch/interface defect. The dependencies are accepted and intact, so `BLOCKED_BY_DEPENDENCY` is inapplicable, and the current evidence does not justify `REVISE_SKETCH`.
