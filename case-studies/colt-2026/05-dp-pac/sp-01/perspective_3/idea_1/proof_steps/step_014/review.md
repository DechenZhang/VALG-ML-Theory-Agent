# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_014
- Unit attempt: 1
- Reviewed proof artifact: perspective_3/idea_1/proof_steps/step_014/proof.md (SHA-256 e6e77fc6686a74877692baf9a453e8c14855f52adcee0130753b54295e86c9a4)
- Binding setting: f442ae0c468201e0c204c72dd07cb9cc2a2d8bbaa6ba286120dfcb8d9749cb17
- Binding accepted sketch: 56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1
- Binding accepted sketch review: ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b

### Direct Dependency Identity Table

| Step ID | Accepted proof SHA-256 | Accepted review SHA-256 | Producer status | Review status |
| --- | --- | --- | --- | --- |
| step_006 | c6c6858460d5d3a665f380d7d109a9c1e25a301a14025b19f071c795c93fef18 | 36e9415e19ec4380162d9c986d46b767b9b89772bf11f1291e617a158f82693e | COMPLETE | ACCEPTED |
| step_013 | fc00d20dcf2286735c7c32c9e9a1b9695ac36e33cd1f139ea17c8f31caee4ef5 | 947f60406449d4d95d40d4fd847760d8ee847db41c0f3c566ec208081cc8ddd4 | COMPLETE | ACCEPTED |

The submitted and dependency hashes match the binding identity table. Both
dependency reviews report no blocking issue and no retry target.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Fixed support point from a strict prior average

- Statement fidelity: PASS. Proposition~\ref{prop:step-014-fixed-extraction} proves the first exact sketch-row obligation: at the same fixed \(k,N,M,n,A\) and accepted finite prior from step_013, a deterministic \(\boldsymbol z^*\) in \(\operatorname{supp}(\mu_{N,M}^{\otimes k})\) has fixed-instance expected population risk strictly greater than \(2^{-9}\). The statement explicitly says that only the fixed iid sample and learner coins remain random after extraction.
- Proof validity: PASS. The accepted step_013 output makes \(\mathcal S\) finite. Every support point has positive weight and the weights sum to one. Conditional on \(\boldsymbol\Xi=\boldsymbol z\), the sample law and randomized output law are exactly those in \(\Phi_A(\boldsymbol z)\), so the finite conditional-expectation expansion in (12) is valid. If every summand were at most \(2^{-9}\), the weighted sum would be at most \(2^{-9}\), contradicting the strict lower bound. Therefore the strict inequality is attained by one support point.
- Cited-result and assumption audit: PASS. Proposition~\ref{prop:step-013-product-lower-bound} is restated with its finite prior, conditional iid product-sample law, fixed \(A\), and population-risk conclusion. Its hard-prior, coupling, overflow, and exchangeability obligations are consumed only through the accepted exported lower bound; none is silently re-assumed. The finite-support and positive-weight facts follow from that accepted finite probability law, not from a new theorem-facing assumption.
- Rigor checklist: PASS. The argument uses a finite sum, so no unjustified integral, supremum, limit, or conditioning interchange occurs. Strictness is preserved. \(\Phi_A\) is a deterministic function of a fixed vector after integrating only sample and learner randomness. The proof does not identify the unconditional prior mixture with iid data from a single deterministic distribution.
- Local adversarial test: PASS. The maximum-principle argument remains valid for a singleton support, repeated or equivalent representations, endpoint thresholds, point-mass or boundary \(Q_i\)'s, and arbitrary randomized or improper \(A\). The cases \(k=2,3\), \(n<k\), and \(M=8\) affect only the already accepted step_013 lower-bound interface and do not alter finite extraction.
- Contribution to target step: PASS. This unit removes all analysis-side prior randomness and exports one fixed product instance with the required strict lower bound.
- Verdict: PASS
- Repair direction: None.

### unit_002: Same-instance PAC contradiction

- Statement fidelity: PASS. Proposition~\ref{prop:step-014-fixed-contradiction} uses exactly the vector produced by Proposition~\ref{prop:step-014-fixed-extraction} and the accepted pointwise PAC result from step_006, concluding the identical \(\Phi_A(\boldsymbol z^*)\) is both \(>2^{-9}\) and \(\le 2^{-12}\). This is the second exact sketch-row obligation, not an averaged or mixture-PAC claim.
- Proof validity: PASS. Equation (16) is the extracted lower bound. Because \(\boldsymbol z^*\in\mathcal I_N^k\), accepted Proposition~\ref{prop:step-006-pointwise-pac-expectation} applies to the same fixed \(P_{\boldsymbol Q^*}\), \(c_{\boldsymbol t^*}\), sample size \(n\), learner \(A\), learner-coin law, and population 0-1 risk, yielding (17). The displayed arithmetic \(2^{-9}=8\,2^{-12}>2^{-12}\) gives the contradiction.
- Cited-result and assumption audit: PASS. The pointwise PAC proposition is restated in current notation and consumed only after the vector is fixed. Its realizability and success/failure expectation conversion are accepted dependency outputs. No central-DP premise, candidate-regime condition, hard prior, or mixture-PAC guarantee is introduced at this stage.
- Rigor checklist: PASS. The quantifier order is correct: fixed \(k,N,n,M,A\) and prior, then a deterministic support vector, then iid sample and learner coins. Both inequalities concern one deterministic expectation, with no prior average left in either side. The probability mode is expectation over exactly the fixed iid sample and internal learner randomness; the metric is population 0-1 risk. Endpoint, point-mass, \(k=2,3\), \(n<k\), and \(M=8\) cases remain covered by the universal pointwise dependency.
- Local adversarial test: PASS. Randomized, nonmonotone, improper outputs still have risk in \([0,1]\), and PAC applies to every fixed realizable product law. A singleton prior or nonunique threshold representation cannot change the identical-object comparison. The contradiction remains strict at all listed budget boundaries.
- Contribution to target step: PASS. This unit closes the exact fixed-instance contradiction exported to step_015.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

PASS. The only independent obligations are finite-support extraction and the
same-object pointwise PAC comparison, and both appear as named theorem-style
propositions with matching derivations. Product-law legality and realizability,
finite conditional expansion, positivity and normalization of support weights,
and the numerical comparison are either accepted dependency conclusions or are
explicitly derived. The proof never treats an averaged PAC statement as a
premise and never leaves a generated hard vector as an assumption.

## Target Claim Audit

PASS. The proof establishes the exact accepted sketch-row claim. At fixed
\(k,N,M,n,A\), accepted step_013 gives

\[
\mathbb E_{\boldsymbol\Xi\sim\mu_{N,M}^{\otimes k}}
\Phi_A(\boldsymbol\Xi)>2^{-9}.
\]

Finite support yields a deterministic \(\boldsymbol z^*\) with
\(\Phi_A(\boldsymbol z^*)>2^{-9}\). Accepted step_006 then gives
\(\Phi_A(\boldsymbol z^*)\le 2^{-12}\) for that same fixed product
distribution, target, exact size-\(n\) iid sample, learner \(A\), and
population-risk metric. The prior is absent from the final expectation, and
the strict numerical inequalities are incompatible.

## Explicit Rate Audit

This is the R1 fixed-size population-risk interface. Exposed quantities are
the fixed \(k,N,n,M,A\), prior, support vector, and displayed constants
\(2^{-9},2^{-12}\); no hidden constant is introduced. The prior, \(k,N,M,n\),
and \(A\) are fixed before the finite average, while \(\boldsymbol z^*\) is
fixed before the sample and learner coins. Equation (12) is an exact finite
conditional expansion, not a probability or horizon upgrade. After extraction,
the only randomness is the exact iid sample and internal coins of \(A\), and
the norm is population 0-1 risk. The only numerical absorption is displayed:
\(2^{-9}=8\,2^{-12}>2^{-12}=\alpha_0+\beta_0\). No term, confidence
parameter, horizon, or mixture premise is hidden or dropped.

## Notation Surface Audit

PASS. \(P_{\boldsymbol Q}\), \(c_{\boldsymbol t}\), \(n\), \(A\), and risk
retain their setting meanings. \(\Phi_A\), \(\mathcal S\), and
\(w_{\boldsymbol z}\) are explicitly defined proof-local helpers; \(\rho_A\)
is only a name for the learner's existing internal coins. The two local
results have paper-ready proposition titles and stable labels, and the
downstream export is only the fixed vector and its contradiction. No notation
from an unreviewed source is imported.

## Target-Step Assembly Audit

PASS. Accepted Proposition~\ref{prop:step-013-product-lower-bound} supplies
the strict finite prior average. Proposition~\ref{prop:step-014-fixed-extraction}
turns it into the fixed lower bound. Accepted
Proposition~\ref{prop:step-006-pointwise-pac-expectation} applies pointwise to
that identical fixed vector, and
Proposition~\ref{prop:step-014-fixed-contradiction} records the strict clash.
These named results jointly imply the exact target and export the required
fixed-instance contradiction to step_015; no bare unit ID, subsection title,
or downstream conclusion is used as proof authority.

## Review Rationale

Both local units are valid under the unchanged setting, accepted sketch, and
hash-matched dependencies. The finite prior is genuinely finite, so positive
weights and the strict maximum-principle extraction are justified even at
singleton and boundary supports. The extracted vector remains in the full
instance space covered by the pointwise PAC proposition, and both sides of the
final comparison integrate over exactly the same iid sample and learner coins.
The proof preserves all requested endpoint, point-mass, \(k=2,3\), \(n<k\),
and \(M=8\) boundaries and introduces no mixture-PAC premise. Therefore
ACCEPTED with Smallest Retry Target = None is the smallest sound outcome.
