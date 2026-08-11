# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_006/proof.md` (SHA-256 `c6c6858460d5d3a665f380d7d109a9c1e25a301a14025b19f071c795c93fef18`)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Every fixed product vector is a realizable instance

- Statement fidelity: The lemma proves exactly the first part of the accepted `step_006` row. For every deterministic vector in \(\mathcal I_N^k\), it establishes that \(P_{\boldsymbol Q}\) is a probability law on the exact tagged domain and that the displayed threshold vector defines a concept in \(C_{k,N}\). It explicitly retains endpoint thresholds, point masses, and all simplex-boundary distributions.
- Proof validity: Nonnegativity is coordinatewise, and the finite normalization calculation gives \(k^{-1}\sum_i\sum_xQ_i(x)=1\). Membership \(c_{\boldsymbol t}\in C_{k,N}\) follows directly from the setting definition for \(\boldsymbol t\in[N+1]^k\), after which deterministic labeling by this concept is realizable by definition. No support lower bound, uniqueness of the threshold on the support, or interiority of \(Q_i\) is used.
- Cited-result and assumption audit: The unit uses only basic setting definitions. It does not use the hard-prior inequality, the hard-regime certificate, privacy, or any generated invariant. The current accepted `step_004` pair confirms only that a later finite prior is supported on legal pairs in \(\mathcal I_N\); that dependency is not used to prove realizability.
- Rigor checklist: The domain, product normalization, deterministic labels, fixed-vector quantifier, and boundary cases are correct. Equation (2) ends with the ill-typed chain `\mathbf 1\{x\ge t_i\}\in C_{k,N}`; the scalar value is not an element of the concept class. This is a nonblocking transcription defect because the lemma statement and the immediately surrounding prose separately give the correctly typed conclusion \(c_{\boldsymbol t}\in C_{k,N}\), which follows verbatim from the displayed class definition. No mathematical bridge is missing.
- Local adversarial test: If \(t_i=1\), the block concept is identically one; if \(t_i=N+1\), it is identically zero. If \(Q_i\) is a point mass or has zero coordinates, normalization and deterministic realizability are unchanged. Two thresholds agreeing on a degenerate support do not affect legality because the fixed parameter still selects one member of the class.
- Contribution to target step: It discharges the exact fixed-distribution and realizability hypotheses needed before the primitive PAC premise can be invoked.
- Verdict: PASS
- Repair direction: None. The equation-(2) transcription concern is recorded for surface cleanup and does not require a producer rerun.

### unit_002: Pointwise PAC-to-expectation conversion

- Statement fidelity: The proposition proves the exact second part of the accepted row for each fixed vector separately, at the same sample size \(n\), in population 0-1 risk, and for the full randomized improper output space. Its quantifier precedes both sample/learner randomness and any later analysis-side prior average.
- Proof validity: After Lemma~\ref{lem:step-006-fixed-product-realizable} fixes a legal realizable pair, Assumption~\ref{assump:distribution-free-realizable-pac} gives \(p=\Pr(\mathcal R>\alpha_0)\le\beta_0\). Since every arbitrary hypothesis in \(\mathcal H_{k,N}\) has \(0\le\mathcal R\le1\), the displayed success/failure split yields
  \[
  \mathbb E\mathcal R
  \le \alpha_0(1-p)+p
  \le \alpha_0(1-\beta_0)+\beta_0
  \le \alpha_0+\beta_0.
  \]
  Accepted Lemma~\ref{lem:step-005-calibration} supplies \(\alpha_0=\beta_0=2^{-13}\), so the final bound is exactly \(2^{-12}\).
- Cited-result and assumption audit: The primitive PAC premise is correctly restated in `Allowed Assumptions And Dependencies` and instantiated only after fixing \(P_{\boldsymbol Q}\) and \(c_{\boldsymbol t}\). The duplicate restatement in `Cited Result Applications` contains the literal malformed token `\Pr\!left[` instead of `\Pr\!\left[`. This is a visible nonblocking transcription concern, not an unchecked citation or a changed probability statement: the same premise is correctly displayed earlier, its objects and hypotheses are fully mapped, and the local derivation uses the correct event \(\{\mathcal R\le\alpha_0\}\). The pinned `step_005` proof/review pair is current and accepted and is used only for constant calibration.
- Rigor checklist: The monotonicity step in \(p\) has the correct direction because \(1-\alpha_0>0\). Randomness is exactly the fixed-instance iid sample and the learner's internal coins. There is no conditioning change, union bound, expected-size replacement, empirical-risk substitution, properness assumption, or use of privacy.
- Local adversarial test: A randomized, nonmonotone, or otherwise improper output still has risk in \([0,1]\). The proof remains valid for constant outputs, endpoint targets, degenerate \(Q_i\), failure probability strictly below or equal to \(\beta_0\), and every candidate fixed sample size \(n\).
- Contribution to target step: It exports the exact pointwise upper bound used later by `step_014`; the optional finite averaging in equation (8) occurs only after this pointwise result.
- Verdict: PASS
- Repair direction: None. The malformed delimiter token is recorded as surface transcription and does not require a producer rerun.

## Hidden Subclaim Scan

No hidden independent subclaim was found. Product-law normalization, concept membership and realizability, endpoint and degenerate cases, boundedness of arbitrary-output population risk, the success/failure expectation split, numerical calibration, fixed-vector quantifier order, and the optional finite averaging are all stated and justified in the two named units or by the exact accepted dependency interface. The finite-average consequence is elementary and is explicitly subordinated to the pointwise claim; it is not used as an averaged PAC premise.

## Target Claim Audit

The proof establishes the exact accepted sketch-row claim:
\[
\forall ((t_i,Q_i))_{i=1}^k\in\mathcal I_N^k,
\qquad
\mathbb E_{S,A}R_{P_{\boldsymbol Q}}(A(S),c_{\boldsymbol t})
\le2^{-12},
\]
where the vector, hence \(P_{\boldsymbol Q}\) and \(c_{\boldsymbol t}\), is fixed before the exact size-\(n\) iid sample and learner randomness. The expectation is population risk, not empirical or excess risk, and applies to arbitrary randomized improper \(A\). Endpoint thresholds and degenerate block distributions remain included. The proof does not replace the pointwise PAC premise by a prior mixture or use `assump:candidate-regime` or `assump:central-dp`.

The dependency pins are current. The `step_004` proof/review hashes match the submitted pins, its review is `ACCEPTED`, and its available output is only the finite public prior under its own admissibility conditions; neither its hardness inequality nor its existence proves PAC. The `step_005` proof/review hashes also match, its review is `ACCEPTED`, and this step consumes only \(\alpha_0=\beta_0=2^{-13}\); its hard-regime and privacy certificate does not prove PAC.

## Explicit Rate Audit

This is the R1 fixed-instance upper interface. The proof exposes \(k,N,n\), the deterministic instance vector, \(\alpha_0,\beta_0\), and the exact bound \(2^{-12}\), with no hidden constant. The learner and one vector are fixed before the probability experiment. The premise is high probability over the exact size-\(n\) iid sample and learner coins, and equation (5) converts it to expectation over exactly those sources. The horizon is fixed size and pointwise in candidate \(n\); the metric is population 0-1 risk. The displayed inequality gives the full failure-event contribution and numerical simplification. No auxiliary tolerance, stopping time, prior randomness, privacy randomness, asymptotic substitution, or term absorption is hidden. The original arbitrary-output high-probability PAC baseline and all endpoint/degenerate cases are preserved.

## Notation Surface Audit

The public-facing export is limited to the setting-defined \(P_{\boldsymbol Q}\), \(c_{\boldsymbol t}\), population risk, and the inherited fixed constants. The shorthand \(\mathcal I_N\) and the two theorem-style local results are appropriately appendix-local; \(\mathcal R\), \(G\), and \(p\) are proof-local and are not exported. All helpers have setting, dependency, or local-result provenance.

Two surface transcription defects remain in the reviewed proof and are not silently repaired here: `\Pr\!left[` in the redundant cited-premise display lacks the backslash before `left`, and equation (2) appends `\in C_{k,N}` to a scalar-valued equality rather than stating \(c_{\boldsymbol t}\in C_{k,N}\) separately. Neither changes an object, assumption, quantifier, or derivation because both correctly typed statements appear elsewhere in the same artifact and follow directly from the binding setting. They are nonblocking surface concerns, not notation drift or missing proof units.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-006-fixed-product-realizable} supplies the fixed legal distribution and realizing class member. Proposition~\ref{prop:step-006-pointwise-pac-expectation} then applies the primitive PAC premise at that exact fixed instance and uses bounded 0-1 risk plus the accepted calibration to obtain \(2^{-12}\). Accepted Proposition~\ref{prop:step-004-finite-hard-prior} is used only to identify a later finite analysis-side average, after the pointwise inequality, and accepted `step_005` contributes only the constants. These named results jointly imply the exact target without relying on a mixture PAC premise, a dependency-supplied PAC conclusion, a bare unit ID, or a downstream claim.

## Review Rationale

Both local units are mathematically valid under the unchanged accepted sketch and the current accepted dependency pairs. They preserve legal fixed product distributions and realizability at every endpoint and simplex boundary, the required pointwise-before-prior quantifier order, the exact \(\alpha_0(1-\beta_0)+\beta_0\) conversion, arbitrary randomized improper outputs, exact fixed-size sampling, and population-risk mode. The two identified transcription defects are redundant, local surface issues whose correctly typed content is already stated and proved; they expose no missing claim, assumption, dependency, or assembly bridge. A producer rerun would therefore be larger than the required mathematical repair. `ACCEPTED` with `Smallest Retry Target = None` is the smallest aligned outcome.
