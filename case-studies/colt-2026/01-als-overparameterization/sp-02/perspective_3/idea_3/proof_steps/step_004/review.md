# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_004/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: raw Gaussian radius tail

- Statement fidelity: The lemma states exactly the required one-column raw-radius estimate, conditional on an arbitrary realized factor triple, under Assumption~\ref{assump:independent_initialization}.
- Proof validity: After conditioning on smoothing, \(g=\sqrt n\,\widetilde m_i\) remains \(N(0,I_n)\). The chi-square moment-generating function and Markov inequality at \(\lambda=3/8\) give \(\exp[-(3-\log4)n/2]\le e^{-n/2}\); every constant and inequality is correct.
- Cited-result and assumption audit: The Gaussian-square moment-generating function is derived in current notation rather than invoked as an unchecked citation. Conditioning is legal because initialization is independent of smoothing, and no property of \(A,B,C\) is used.
- Rigor checklist: Quantifiers, strict/non-strict tail events, norm scaling, probability mode, and uniformity in the realized triple are handled correctly. No independence across columns is used here.
- Local adversarial test: At small \(n\) the displayed exponential tail still holds; the later dimension threshold, not this lemma, supplies the polynomial conversion. No Gram or path property is smuggled into the argument.
- Contribution to target step: Supplies the valid tail for each of exactly the \(3k\) raw initialization columns.
- Verdict: PASS
- Repair direction: None.

### unit_002: simultaneous control of all raw initialization radii

- Statement fidelity: The proposition proves the simultaneous proof-local raw event with conditional failure at most \(r^{-20}\) over the full window \(k\le\lfloor r^{5/4}\rfloor\), exactly as needed before balancing.
- Proof validity: The union is over exactly \(3k\) columns, giving \(3k e^{-n/2}\). From \(n\ge C(\kappa,q)r^4\log r\) with \(C(\kappa,q)\ge1\), \(k\le r^{5/4}\), and \(r\ge3\), the displayed logarithmic comparison is valid: \(r^4/2\ge81/2\ge85/4+\log3/\log r\). This rearranges exactly to \(3r^{5/4}e^{-r^4\log r/2}\le r^{-20}\).
- Cited-result and assumption audit: The proposition uses only Lemma~\ref{lem:step-004-raw-radius-tail} and the primitive dimension, rank-window, and initialization assumptions. The threshold contributions \(C_{\rm size}=1\) and \(r_{\rm size}=3\) are explicit and may be absorbed into the theorem constants.
- Rigor checklist: The maximal boundary \(k=\lfloor r^{5/4}\rfloor\) is covered, no upper bound on \(n\) is introduced, and the lower condition \(r<k\) is correctly identified as unnecessary for this tail. The conversion is conditional uniformly in the realized factors.
- Local adversarial test: At \(r=3\) the numerical inequality already has ample slack; increasing \(r\) or \(n\) only improves it. Correlation among columns would not affect the union bound.
- Contribution to target step: Converts the per-column exponential estimate into the exact \(r^{-20}\) simultaneous confidence target.
- Verdict: PASS
- Repair direction: None.

### unit_003: geometric-mean transfer to balanced columns

- Statement fidelity: The proposition proves the exact deterministic inclusion \(\mathcal E_{\rm raw,size}\subseteq\mathcal E_{\rm size}\) and therefore transfers the probability bound to the setting-defined balanced event.
- Proof validity: On the positive-radius branch, every balanced norm is the geometric mean of three raw norms at most \(2\), hence is at most \(2\). On the zero-factor branch, the setting leaves the whole raw triple unchanged, so every output norm remains at most \(2\). The event inclusion and complement-probability inequality follow directly.
- Cited-result and assumption audit: The accepted Lemma~\ref{lem:step-002-balancing-scalars} is restated with the exact output used. Its accepted interface supplies the balancing formula; no coefficient Gaussianization, Gram estimate, factor conditioning, or trajectory claim is consumed.
- Rigor checklist: The proof explicitly covers the division-by-zero boundary instead of deleting it as a null event. The transfer is componentwise and therefore simultaneous over all \(k\) components.
- Local adversarial test: A triple with one zero factor and two norm-\(2\) factors remains unchanged and still satisfies the claimed event, so the exceptional branch causes no gap. Highly unbalanced positive raw norms are harmless because each factor is separately bounded by \(2\).
- Contribution to target step: Produces the exact balanced initial-size event with the required conditional confidence.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim is used. The proof's nontrivial obligations are exactly the three mapped units: the one-column Gaussian tail, the finite union and polynomial conversion, and the deterministic balancing transfer. Statements about conditioning, the maximal-rank boundary, and the zero-factor branch are discharged inside those units. No hidden Gram, tangent, quotient, factor-conditioning, GD-path, or all-time boundedness claim appears.

## Target Claim Audit

The proof establishes the exact `step_004` claim: uniformly over the declared dimension and rank window, and conditionally on every realized smoothing triple (hence in particular every triple in \(\mathcal E_{\rm cond}\)),
\[
  \mathbb P(\mathcal E_{\rm size}^{\mathsf c}\mid A,B,C)\le r^{-20}.
\]
The scope is initialization-only, the event concerns the actual balanced columns, and no stronger trajectory or Gram conclusion is asserted. The theorem-level sufficiently-large-\(r\) convention legally absorbs the explicit threshold \(r\ge3\).

## Explicit Rate Audit

The rate-bearing details are complete. The exposed variables are \(n,r,k\), with \(\kappa,q\) entering only through the admissible theorem constant \(C(\kappa,q)\). The proof exposes the exact per-column tail, the factor \(3k\), the bound \(k\le r^{5/4}\), the dimension lower bound, and the arithmetic converting the result to \(r^{-20}\). Probability mode is conditional high probability at initialization; horizon mode is initialization-only; norm mode is the Euclidean column norm. No term is absorbed by prose, no auxiliary tolerance is hidden, and no baseline-reduction obligation beyond exact balancing transfer applies.

## Notation Surface Audit

The only new helper object, \(\mathcal E_{\rm raw,size}\), is explicitly classified as proof-local. The rescaled Gaussian vector \(g_i^m\) is a one-unit proof-local variable and is not exported. The step exports only the public-facing event \(\mathcal E_{\rm size}\) and its failure bound. Constants \(C_{\rm size}=1\) and \(r_{\rm size}=3\) have explicit provenance and are theorem-threshold contributions, not unexplained bounded quantities.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-004-raw-radius-tail} gives the per-column conditional tail. Proposition~\ref{prop:step-004-uniform-raw-size} unions that bound over exactly \(3k\) columns and proves \(\mathbb P(\mathcal E_{\rm raw,size}^{\mathsf c}\mid A,B,C)\le r^{-20}\). Proposition~\ref{prop:step-004-balanced-size-transfer}, using the accepted balancing lemma from `step_002`, proves \(\mathcal E_{\rm raw,size}\subseteq\mathcal E_{\rm size}\). These named results jointly imply the exact target without an unstated bridge.

## Review Rationale

The submitted proof is faithful to the accepted sketch row and proves the balanced initial-size event under only the allowed primitive assumptions and accepted `step_002` interface. Its Gaussian constant, conditional-law argument, exact \(3k\) union, \(r\ge3\) arithmetic, \(r^{-20}\) conversion, geometric-mean transfer, and zero-factor branch are all correct. Because there is no local derivation, dependency, notation, hidden-subclaim, or assembly defect, `ACCEPTED` with `Smallest Retry Target = None` is the controlled outcome.
