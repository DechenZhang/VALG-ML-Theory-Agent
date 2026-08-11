# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 3
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_003/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_003

## Blocking Issues

1. **The theorem-critical uniform Terracini-chaos bound is still absent.**
   Lemma~\(\ref{lem:step-003-fixed-input-crossmode}\) now rigorously proves
   the deterministic-input mean-square scale for every cross-mode permutation,
   but Lemma~\(\ref{lem:step-003-terracini-chaos}\) remains an unproved
   statement. Fixed-input expectation does not control
   \(\sup_{\|Y\|_F=1}\|\widetilde E Y\|_F\) when the maximizing input depends
   on all direction arrays. No self-adjoint operator variance calculation,
   entropy or chaining bound, decoupled repeated-block estimate, or checked
   citation supplies the joint nine-array event (21) with
   \(C_{\rm dec}(\kappa)e^{-t}\) tail. Consequently (TF), full quotient-frame
   coercivity, \(W_0\), and \(\mathcal E_{\rm deficit}\) are not proved. The
   smallest mathematical repair remains a `step_003` proof or fully discharged
   citation for the exact uniform lemma; a theorem may not be assumed merely
   because the fixed-input scale is correct.
2. **The sharpness conclusion overstates what the lower bound proves.** The
   expectation, fourth-moment estimate, Paley--Zygmund calculation, and
   constant \(1/36\) in Lemma~
   \(\ref{lem:step-003-fixed-input-crossmode}\) are valid for the unprojected
   block \(E^{ab}\). They show that \(\sqrt{k}/r\) is sharp for that block and
   for any proof route that uniformly controls the unprojected operator.
   They do not by themselves prove that the same scale is necessary for the
   target operator
   \((\bigoplus_i\Pi_i)\widetilde E(\bigoplus_i\Pi_i)\), because the quotient
   projections and the complete self-adjoint mode assembly are absent from the
   lower-bound argument. The local lemma must qualify this conclusion or add a
   valid quotient/full-operator lower-bound derivation.

## Per-Lemma Audit

### unit_001: uniform moments for conditioned elliptic angular laws

- Statement fidelity: The lemma names the primitive initialization assumption,
  accepted conditioning and Gaussianization results, and the uniform
  fixed-realization conditional scope required by the sketch.
- Proof validity: Direction normalization removes the positive balancing
  scalar and gives \(p=H_Mz/\|H_Mz\|_2\). The accepted singular-value interval
  implies
  \[
    |\langle u,p\rangle|
    \le \kappa_1^2|\langle v,z\rangle|/\|z\|_2,
  \]
  after which the spherical moment formula gives (3). Odd symmetry gives
  centering, and the second moment gives the covariance bounds.
- Cited-result and assumption audit: The dependency objects and spherical
  moment result are restated in current notation. No radial, Gram, deficit, or
  trajectory event is assumed.
- Rigor checklist: Mode/component independence is preserved, and all constants
  are uniform over fixed \((A,B,C)\in\mathcal E_{\rm cond}\) with dependence
  only on \(\kappa\).
- Local adversarial test: Extremal allowed singular values of \(H_M\) retain
  the \(\kappa_1^2\) ratio bound; Gaussian images are nonzero almost surely.
- Contribution to target step: Supplies the ACG law, centering, and moments
  consumed by TC, the block decomposition, and the fixed-input lemma.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact gauge quotient and Terracini blocks

- Statement fidelity: The proposition targets the exact two-dimensional gauge,
  quotient spectrum, raw tangent range, and off-component block interfaces.
- Proof validity: Parallel/perpendicular decomposition yields three orthogonal
  variation terms and one common-core term. This proves the exact kernel.
  Orthogonality to the gauge plane forces equal parallel coefficients, giving
  quotient eigenvalues one and three. The nine tensor pairings give (10), and
  accepted span transfer gives \(\operatorname{range}J=\mathscr S_0\).
- Cited-result and assumption audit: All inputs are named in the statement;
  only the raw-span conclusion uses the accepted scale-transfer proposition.
- Rigor checklist: Euclidean quotient, block orientation, adjoints, and tensor
  Frobenius pairing match the setting. Restriction removes only the kernel.
- Local adversarial test: Gauge coefficients summing to zero are exactly the
  null directions; the common scaling direction remains with eigenvalue three.
- Contribution to target step: Supplies the within-component coercive source
  and exact structured blocks.
- Verdict: PASS
- Repair direction: None.

### unit_003: raw diagonal-core target correlation

- Statement fidelity: The lemma defines \(\mathcal E_{\rm TC}\), names all
  assumptions and dependencies, and proves the exact raw target-correlation
  event required by the sketch.
- Proof validity: Direct contraction produces the three Hadamard-product
  vectors. For each mode pair, the component energies lie in \([0,1]\), are
  independent over components, and have mean at most \(\kappa_1^8/r\).
  Scalar Bernstein with \(u=30\log r\) and the three-pair union bound gives
  the displayed \(k/r+\log r\) result and \(r^{-25}\) failure.
- Cited-result and assumption audit: Bernstein is restated and its boundedness,
  independence, and mean hypotheses are discharged locally.
- Rigor checklist: The constants and finite threshold are correct;
  probability, horizon, and norm modes agree with the target row.
- Local adversarial test: At \(k=r^{5/4}\), the proved energy is
  \(O_\kappa(r^{1/4}+\log r)=o(r)\).
- Contribution to target step: Completely proves (TC).
- Verdict: PASS
- Repair direction: None.

### unit_004: off-component split and two-stage factorization

- Statement fidelity: The proposition accurately limits its completed output
  to the exact same-mode algebra, rowwise variance source, six cross-mode
  arrays, and their two-stage factorizations.
- Proof validity: Equations (18)--(20) follow from the exact block formula and
  conditional component/mode independence. For (20a), the \(i\)-th output
  column of \(A_pQ_{B,C}(Y)\) is
  \(\sum_{j\ne i}p_j^a\langle p_i^b,y_j\rangle
  \langle p_i^c,p_j^c\rangle\), exactly matching the block action. Mode
  permutation gives the other five identities.
- Cited-result and assumption audit: Only named accepted angular inputs and
  the proved local moments are used; no concentration theorem is imported.
- Rigor checklist: The rowwise \(k/r^2\) calculation is not promoted to an
  operator variance proxy, and the factorization is not promoted to a uniform
  norm bound.
- Local adversarial test: Scalar block norms see variance \(k/r\), confirming
  that the random input and output directions must remain inside any sharper
  calculation.
- Contribution to target step: Gives the exact direct-derivation interface
  consumed by the fixed-input lemma and any future uniform argument.
- Verdict: PASS
- Repair direction: None.

### unit_007: fixed-input cross-mode mean square and sharpness

- Statement fidelity: The lemma correctly targets deterministic inputs,
  explicitly excludes the data-dependent supremum, handles every mode
  permutation, and includes an isotropic lower-bound stress test. Its final
  claim that the TF scale itself is sharp is stronger than the proved
  unprojected-block result.
- Proof validity: From (20f), mode independence factors the two second moments,
  yielding (20g). The direction matrix \(A_p\) is independent of
  \(Q_{B,C}(Y)\), and centering plus unit column norms gives
  \(\mathbb E(A_p^{\mathsf T}A_p)=I_k\), so conditional expectation proves
  the exact identity (20d). These calculations remain valid for ACG columns;
  no independence between a Gaussian column and its own normalizer is used.
- Cited-result and assumption audit: The angular covariance and exact
  factorization are named and sufficient. Paley--Zygmund is restated before
  use with the correct nonnegative variable.
- Rigor checklist: In the isotropic case, the one-column input gives
  \(Z=\sum_{i\ne j_0}\langle p_i^c,p_{j_0}^c\rangle^2
  \langle p_i^b,u\rangle^2\). Its mean is \(m/r^2\). The diagonal part of
  \(\mathbb EZ^2\) is at most \(9m/r^4\), the off-diagonal part is exactly
  \(m(m-1)/r^4\), and Paley--Zygmund gives
  \(m/[4(m+8)]\ge1/36\). All six upper bounds follow by mode permutation.
- Local adversarial test: The lower bound concerns an unprojected
  \(E^{ab}\) block. The proof does not choose an input in the quotient domain,
  track both quotient projections, or exclude cancellation in the full
  self-adjoint assembly; hence it cannot certify sharpness for the actual TF
  operator.
- Contribution to target step: Rigorously closes the fixed-input expectation
  gap and confirms that an unprojected cross-mode block naturally has
  \(\sqrt{k}/r\) size. It does not provide uniform concentration.
- Verdict: REVISE_STEP
- Repair direction: Retain (20b)--(20e), but qualify sharpness as an
  unprojected-block statement unless a separate quotient/full-operator lower
  bound is proved.

### unit_005: required quotient Terracini-chaos concentration

- Statement fidelity: The statement contains the exact primitive and accepted
  inputs, quotient event, rank regime, rate, fixed-realization uniformity, and
  finite tail prefactor required by the accepted sketch.
- Proof validity: No proof is supplied. Contractive quotient projection,
  rowwise variance, exact factorization, and deterministic-input mean square
  are valid reductions, but none justifies interchanging or controlling the
  random operator supremum.
- Cited-result and assumption audit: The proof correctly acknowledges that no
  accepted dependency or checked KMR-, Gordon-, generic-chaos, decoupling, or
  matrix-concentration result has been mapped to this ACG repeated-block class.
- Rigor checklist: The data-dependent input, repeated use of direction
  matrices, ACG normalization, self-adjoint nine-array assembly, operator
  variance, dimension/logarithmic factors, uniform conditional tail, and
  finite prefactor all remain unresolved.
- Local adversarial test: Crude block norms and full-space
  \(\|A_p\|_{\rm op}\) bounds fail to prove the stated leading rate. The new
  lower bound confirms the raw block scale but supplies no counterexample to
  the proposed uniform upper bound.
- Contribution to target step: None yet; it remains the sole missing producer
  of \(\mathcal E_{\rm TF}\).
- Verdict: REVISE_STEP
- Repair direction: Prove the uniform current-notation chaos estimate or
  fully restate and discharge a theorem that supplies it. A sketch revision is
  required only if a rigorous derivation shows that the target rate, defect
  split, dependency, or output interface must change; the current record does
  not prove that.

### unit_006: raw tangent deficit on the TF-TC intersection

- Statement fidelity: The proposition explicitly assumes
  \(\mathcal E_{\rm TF}(30\log r)\cap\mathcal E_{\rm TC}\), names its
  dependencies, and targets the exact raw deficit.
- Proof validity: TF and the quotient block lower bound give
  \(J^*J\succeq I/2\). TC and the projection formula give tangent energy at
  most \(2C_{\rm TC}(k/r+\log r)\le r/2\). Pythagoras constructs \(W_0\),
  and \(\widehat D_0\in\mathscr S_0\) yields the exact residual pairing.
- Cited-result and assumption audit: The projection formula is restated and
  the accepted raw-span identity is used in the correct metric and target
  convention.
- Rigor checklist: Equations (22), (26), and (27) contain the needed finite
  thresholds and prefactor-aware confidence conversion without an
  independence assumption.
- Local adversarial test: Removing TF destroys injectivity control; removing
  TC destroys the projection-energy bound. At maximal rank, TC remains
  \(o(r)\).
- Contribution to target step: Completely closes the conditional deterministic
  and event-bookkeeping implication from TF and TC to the deficit event.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The fixed-input expectation and lower-bound claims are now represented by a
named local lemma. The same-mode operator concentration, all six uniform
cross-mode bounds, and their joint self-adjoint tail are explicitly contained
in the unresolved Lemma~\(\ref{lem:step-003-terracini-chaos}\), rather than
hidden in assembly prose. The only overreach is the inference from an
unprojected-block lower bound to sharpness of the quotient TF operator; this is
recorded as a local statement flaw above. No event-to-unconditional or
expectation-to-supremum upgrade is silently used.

## Target Claim Audit

The exact `step_003` target remains unproved. Attempt 3 proves the ACG moments,
gauge quotient, Terracini block algebra, TC, same-mode rowwise variance,
two-stage cross-mode equality, deterministic-input cross-mode expectation,
isotropic constant-probability lower bound, and the conditional TF-TC deficit
assembly. It does not prove \(\mathcal E_{\rm TF}\), so it cannot establish
the full quotient Gram lower bound or export \(W_0\) and
\(\mathcal E_{\rm deficit}\) with conditional failure \(r^{-20}\). The
accepted dependency artifacts remain current and are not the failed source.

## Explicit Rate Audit

The completed units preserve \(\kappa,r,k\), the rank window, confidence
powers, fixed-factor conditional probability mode, initialization-only
horizon, quotient/operator/Frobenius norm modes, and the allowed hidden
dependence. TC has the proved \(k/r+\log r\) scale. The fixed-input lemma has
the exact anisotropic upper bound \(\kappa_1^8(k-1)/r^2\) in mean square and
an isotropic response of order \(\sqrt{k}/r\) with probability at least
\(1/36\). This does not control the data-dependent supremum. The missing lemma
must still prove the full \(\sqrt{k}/r+\sqrt{t/r}\) operator rate, the absence
of an extra leading logarithmic factor, and the
\(C_{\rm dec}(\kappa)e^{-t}\) tail. Equations (22), (26), and (27) correctly
show the intended absorption and public-confidence conversion. Raw target and
baseline normalization conventions remain preserved.

## Notation Surface Audit

The angular and quotient objects are appendix-local; Gaussianization, block
arrays, \(Q_{B,C}(Y)\), and \(\mathcal Q_{B,C}\) are proof-local;
\(\mathcal E_{\rm TC}\) is proved appendix-local;
\(\mathcal E_{\rm TF}\) is explicitly unresolved; and \(W_0\) is the sole
intended public-facing output. No unproved event or constant is exported.

## Target-Step Assembly Audit

All links after TF are valid and explicit. The named local results prove TC,
the raw block reductions, the fixed-input moments, and the TF-TC-to-deficit
implication; equation (27) gives the correct tail conversion. No accepted
local result or citation produces \(\mathcal E_{\rm TF}\), so target assembly
still fails at exactly Lemma~\(\ref{lem:step-003-terracini-chaos}\).

## Review Rationale

`REVISE_STEP` is the smallest evidence-based status. Attempt 3 strengthens the
local source analysis and validates the natural fixed-input scale, but it does
not rigorously disprove the accepted TF bound or show that a persistent
wrong-scale term survives the quotient/full operator. The remaining missing
object is the exact uniform decoupling or chaos lemma already assigned to
`step_003` by the accepted sketch, under unchanged assumptions, dependencies,
rate, quotient convention, output target, and downstream dominance relation.
Without a proved counterexample or a demonstrated need to weaken, split, or
re-source that interface, `REVISE_SKETCH` would invent an obstruction rather
than report one. The dependencies are accepted and intact, so
`BLOCKED_BY_DEPENDENCY` is inapplicable. A producer retry must prove or validly
source the uniform lemma and repair the local sharpness wording; any
budget-driven escalation after this review is a controller decision, not
evidence that the mathematical sketch interface is false.
