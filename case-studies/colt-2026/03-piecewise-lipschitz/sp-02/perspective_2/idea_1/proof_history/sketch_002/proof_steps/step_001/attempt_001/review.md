# Proof Step Review

## Step Review Identity

- Perspective / idea: perspective_2/idea_1
- Sketch attempt: 2
- Step ID: step_001
- Unit attempt: 1
- Reviewed setting artifact: perspective_2/idea_1/setting.md
- Reviewed setting SHA-256: 6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e
- Accepted sketch artifact: perspective_2/idea_1/proof_sketch.md
- Accepted sketch SHA-256: 41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4
- Accepted sketch-review artifact: perspective_2/idea_1/proof_sketch_review.md
- Accepted sketch-review SHA-256: a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_001/proof.md
- Reviewed proof SHA-256: a99ba777bdbca54146baf7ebda78b54070438be9f8768c64e9d71f7b782c9b90
- Dependency step artifacts: None; the accepted sketch row declares no dependencies.
- Superseded live review SHA-256 before this overwrite: dd04491bf12d076e4482faa9dcfb484d671d601a35cf64405f9d2afa4e535899.
- Archived byte-identical copy SHA-256: dd04491bf12d076e4482faa9dcfb484d671d601a35cf64405f9d2afa4e535899.
- Evidence boundary: the superseded review, its archival copy, and the global diagnostic are excluded from proof evidence. This review uses only the binding setting, accepted sketch, accepted sketch review, and the reviewed proof.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_001

## Blocking Issues

1. Location: proof.md lines 404-407, inside unit_005. Defect: the proof says that a stationary normalized curve under the anchored homogeneous assumptions can have nonzero radial motion, via nonzero B_F gamma_F in span{gamma_F}. In the stated branch, F_{j_*}=1 and F=r gamma_F with gamma_{F,j_*}=1/r>0. If gamma_F'=0, then 0=F_{j_*}'=r' gamma_{F,j_*}, so r'=0 and B_F gamma_F=F'/r=0. The projector identity handles radial components algebraically in a general normalization, but nonzero radial motion is impossible for this anchored stationary specialization. Downstream effect: this is a false, unqualified boundary subclaim and a hidden proof obligation in the proposition used by target-step assembly, so unit_005 and the complete step artifact cannot pass. Smallest repair direction: delete the existence claim or qualify it as a general nonanchored projector observation, and state that in the anchored stationary case B need not vanish but B_F gamma_F=0; no sketch, dependency, or target change is needed.

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: PASS. The statement has explicit references to all three primitive setting assumptions and proves exactly the anchor, lower norm, nonvanishing, and differentiability interface required by the accepted row.
- Proof validity: PASS. Q_{j_*} identically 1 gives F_{j_*}=1 on U, hence ||F||_2 >= 1 on Theta. The common-chain/closure presentation gives differentiability, so normalization is differentiable on a neighborhood of every endpoint as well as in the interior.
- Cited-result and assumption audit: PASS. No external theorem or dependency is used. The anchor and differentiability are traced to stable assumption IDs; no lower-norm or projective regularity condition is assumed.
- Rigor checklist: PASS. Quantifiers are pointwise for every theta in Theta, and the denominator is a genuine literal one. The q=0 and N=1 interpretations remain valid.
- Local adversarial test: PASS. An anchored constant feature, an endpoint, or a zero-height certificate still has the same unit coordinate and cannot make the denominator vanish.
- Contribution to target step: PASS. This supplies the exact nonvanishing denominator consumed by normalized differentiation and later pivot coverage.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: PASS. The statement matches the accepted static certificate, including the pointwise and supremum claims and the literal coefficient-height dependence.
- Proof validity: PASS. It uses T_* = max(1,T), evaluates every coefficient entry before aggregation, sums exactly (N+1)^2 entries, and proves operator norm at most Frobenius norm by rowwise Cauchy--Schwarz. No dimension factor is inserted or hidden.
- Cited-result and assumption audit: PASS. The only standard fact is restated in current dimensions. The coefficient list is primitive data from assump:anchored-derivative-closure and the index and theta ranges come from assump:parameter-regime.
- Rigor checklist: PASS. The l=0 case is covered, signs and negative theta are handled by absolute values, all coefficients are finite fixed data, and the supremum is taken only after the pointwise inequality.
- Local adversarial test: PASS. For m=0 the certificate is the Frobenius norm of a constant matrix; for a constant B represented with zero higher coefficients the same equality holds; for zero height every coefficient vanishes. The argument remains valid at N=1 and at interval endpoints.
- Contribution to target step: PASS. This proves the exact operator certificate consumed by unit_004 and the target assembly.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: PASS. The conditional hypothesis F_0 identically zero and the lower principal block B_F are explicit, and the conclusion is exactly F' = B_F F.
- Proof validity: PASS. Taking the lower rows of the augmented closure identity leaves B_{r0} F_0 = 0 and the principal lower block times F. No off-block entry is set to zero.
- Cited-result and assumption audit: PASS. The closure identity and the homogeneous specialization are the only inputs; no dependency artifact or later theorem is imported.
- Rigor checklist: PASS. The coordinate indexing is explicit, the conclusion is pointwise on Theta, and the conditional scope is not promoted to the affine branch.
- Local adversarial test: PASS. Nonzero B_{r0} and B_{0s} entries do not affect the lower-row equality once F_0 is zero; N=1 is covered.
- Contribution to target step: PASS. This is the exact block interface required before normalized-vector differentiation.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: PASS. The proposition has the three primitive assumptions, names all preceding local results by theorem-style labels, and states both the exact projector identity and the Gamma_proj bound under the accepted homogeneous condition.
- Proof validity: PASS. With r = ||F||_2 >= 1, differentiation gives the normalized-vector formula. Substitution of F' = B_F F yields the stated projector identity. The Euclidean projector estimate and the embed-then-project compression argument prove ||B_F||_op <= ||B||_op without a missing dimension factor, and the supremum gives Gamma_proj <= Lambda_hat.
- Cited-result and assumption audit: PASS. Product and chain rules are restated in current notation; every local result is cited by its stable label and its assumptions are discharged before use. No cited paper or global diagnostic is used as authority.
- Rigor checklist: PASS. The norm is the Euclidean induced operator norm, gamma_F has unit norm, the block compression is pointwise, and the quantifier order is pointwise then supremum. The N=1 projector is zero, which is consistent with the inequality.
- Local adversarial test: PASS. Radial components of B_F gamma_F are annihilated by the projector in the normalized derivative algebra, stationary curves give zero projective speed, and the anchor prevents a zero denominator. The compression remains valid even with arbitrary off-block entries.
- Contribution to target step: PASS. This proves the full homogeneous projective interface and its literal certificate rate.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: PASS with one proof-level qualification. The proposition covers the accepted q=0, m=0, constant-B, constant-feature, N=1, endpoint, zero-height, stationary, monic-shift, d=1, and one-entry-shear audits without importing later probability conclusions.
- Proof validity: REVISE_STEP. The algebra for all listed specializations and both baseline heights is correct, but lines 404-407 make the false anchored-stationary radial-motion assertion identified in Blocking Issue 1.
- Cited-result and assumption audit: PASS aside from the local assertion. Prior local results are cited by theorem-style labels, the zero-derivative criterion is restated, and no later monic sweep or probability theorem is used.
- Rigor checklist: REVISE_STEP. q=0, m=0, N=1, endpoints, constant tuples, zero certificate, d=1, the augmented shift, and the 1/delta shear all pass. The stationary case must respect F_{j_*}=1; it implies zero radial speed rather than allowing nonzero radial speed.
- Local adversarial test: REVISE_STEP. Write F=r gamma_F and differentiate the anchored coordinate. Under gamma_F'=0, gamma_{F,j_*}=1/r>0 forces r'=0. A nonzero B is still possible away from the current feature direction, but B_F gamma_F cannot be a nonzero radial vector in this stationary anchored branch.
- Contribution to target step: REVISE_STEP. The exact certificate and all required boundary scales are established, but the proposition is used in target-step assembly and must not export the false boundary explanation.
- Verdict: REVISE_STEP
- Repair direction: Correct or remove the radial-motion sentence as specified in Blocking Issue 1, then obtain a fresh proof-step review.

## Hidden Subclaim Scan

The proof contains five mapped local units and matching derivation subsections; the matrix estimate, block extraction, normalized differentiation, and boundary-specialization calculations are not hidden behind the atomic-step claim. The cited elementary facts are restated in current notation, and all mathematical assembly references use theorem-style labels rather than unit IDs or subsection titles. The only independent unlisted or unsupported subclaim found is the assertion in unit_005 that an anchored stationary normalized curve may have nonzero radial motion. No probability result, later monic sweep result, stale acceptance, or global diagnostic is used as proof authority.

## Target Claim Audit

The exact accepted step claim is: under the three primitive assumptions and with no dependencies, F_{j_*}=1 implies F is nonzero; the pointwise coefficient evaluation gives sup_{Theta} ||B||_op <= Lambda_hat; and under the static homogeneous specialization F_0 identically zero, F'=B_F F, gamma_F'=(I_N-gamma_F gamma_F^T)B_F gamma_F, and Gamma_proj(F) <= Lambda_hat. Units 001-004 establish these statements with the correct quantifiers, conditional scope, Euclidean norms, and literal constants. Unit 005 correctly checks the required boundary and baseline scales except for the false explanatory subclaim above. Thus the exact target equations pass, but the submitted proof artifact as a whole is not certifiable until unit_005 is corrected.

The proof does not promote F_0 identically zero, monic data, the shear, stationarity, or any other static specialization to an unconditional primitive assumption. It does not import probability conclusions or later monic wrapper conclusions, and it does not use the accepted global diagnostic or stale review as evidence.

## Explicit Rate Audit

- Exposed variables: T, m, N, every b_{rs,ell}, T_* = max(1,T), and the defined Lambda_hat_{B,T}; d and delta appear only in the explicit monic and shear baseline specializations. q, M, and Delta are disclosed and have degree-zero additional dependence once the supplied B is fixed.
- Hidden constants: None are allowed; no law, interval, norm margin, coefficient, feature degree, or specialization parameter is hidden.
- Fixed quantities: The deterministic presentation, B and its coefficient list, T, and Theta are fixed; the homogeneous conclusions are conditional only on F_0 identically zero.
- Assumptions for exposed categories: N >= 1, q >= 0, m >= 0, T > 0, Theta subset [-T,T], and the three stable primitive assumptions; no generated event or lower-norm margin is assumed.
- Auxiliary parameter choices: None.
- Term absorption inequalities: All displayed reductions are explicit: entrywise evaluation by T_*^ell, ||B||_op <= ||B||_F <= Lambda_hat, and ||gamma_F'||_2 <= ||B_F||_op <= ||B||_op <= Lambda_hat. No term is dropped or absorbed.
- Probability conversion: None; this step is deterministic.
- Horizon mode: Pointwise on every theta in Theta followed by a literal supremum, not asymptotic, iterative, stopping-time, or horizon-uniform probability reasoning.
- Norm mode: Euclidean vector norm, induced Euclidean operator norm, and Euclidean Frobenius norm.
- Contribution to a Rate Specialization Bridge: The step supplies the R1 certificate and the R5 monic and shear scale inputs; it performs no public probability-rate conversion.
- Baseline-reduction check: The augmented monic shift gives exactly (sum_{k=1}^d k^2)^(1/2), including d=1, and the one-entry shear gives exactly 1/delta. The zero-height and constant-feature reductions are exact. The rate audit itself passes, subject to the local unit_005 prose repair.

## Notation Surface Audit

The helper c_{rs} is proof-local and is directly expanded from the original coefficient list. The temporary r = ||F||_2, bar{x} = (0,x), and coordinate projection pi are proof-local. B_F is the minimal public-facing lower principal block already defined by the target interface. T_*, Lambda_hat_{B,T}, gamma_F, and Gamma_proj(F) are setting-defined public-facing objects, not newly invented aliases. The two explicit constant-matrix patterns are appendix-local boundary data. No unnecessary dictionary, hidden bounded quantity, or q/M/Delta-dependent alias is exported; all five local labels are paper-ready and all assumption references use the stable assump:* IDs.

## Target-Step Assembly Audit

The named chain Lemma~\ref{lem:step-001-anchor}, Lemma~\ref{lem:step-001-height}, Lemma~\ref{lem:step-001-homogeneous-block}, and Proposition~\ref{prop:step-001-projective} jointly imply the exact target claim. Proposition~\ref{prop:step-001-boundary} supplies the requested boundary and baseline audits, and no dependency artifacts exist. The assembly uses no bare unit ID, later step, proof-history file, probability conclusion, or global diagnostic as mathematical authority. The assembly is otherwise closed and target-faithful, but it cannot be accepted while its named boundary proposition contains the unit_005 radial-motion assertion.

## Artifact Contract Audit

- Identity and digest: The setting, accepted sketch, accepted sketch review, and reviewed proof match their binding SHA-256 values; the reviewed proof path, sketch attempt 2, step_001, and unit attempt 1 are exact.
- Structure: Required proof headings are present; the local lemma map has exactly five rows and the local derivation has exactly five matching unit subsections. The cited-result, assembly, rate, blocker, and notation sections are present.
- Stable IDs and references: The five local labels are unique; every local reference resolves to one of those labels or to one of the three stable setting assumption IDs. No dependency reference is present.
- Arithmetic, quantifiers, and boundaries: Entrywise coefficient evaluation, Frobenius aggregation, operator and compression inequalities, monic shift height, d=1 empty-sum convention, and 1/delta shear height are correct. Pointwise, supremum, and homogeneous conditional quantifiers are preserved. The stationary anchored boundary is the sole failed check.
- Encoding and TeX: The proof is ASCII-only with no control bytes; display and inline math delimiters and braces are balanced.
- Scope: The review will overwrite only perspective_2/idea_1/proof_steps/step_001/review.md. No proof, sketch, setting, dependency, history, tracker, or diagnostic artifact is changed.

## Review Rationale

REVISE_STEP is the smallest sound status. Four local units and the exact target claim pass, and there is no dependency obstruction or sketch/interface defect. A single sentence in the fifth local unit asserts an impossible radial boundary behavior under the literal anchor and is an unreviewed theorem-facing subclaim. Deleting or qualifying that sentence is a local producer repair under the unchanged accepted sketch, assumptions, scope, metric, rates, and conclusions. The repaired proof must receive a fresh accepted proof-step review before downstream consumption.
