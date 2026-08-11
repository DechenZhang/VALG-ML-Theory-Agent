# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1
- Binding setting SHA-256: `1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a`
- Binding sketch SHA-256: `31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69`
- Binding sketch-review SHA-256: `b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e`
- Reviewed proof artifact: `perspective_1/idea_7/proof_steps/step_001/proof.md`
- Reviewed proof SHA-256: `467b0960c46a1487155b3ed5354d069fa7e6a477cf6a7efac6d779aefc801207`
- Dependency artifacts: None; this is a root step.
- Accepted global diagnostic SHA-256: `80ef3512062b3830473c9e8b50e72365af34c4295b0246624e41a8871b98b5a0`
- Global-review SHA-256: `a93919745b59b9ea7f5ce007c414343b7c91aa83c7988ff3a5cdde399857bf29`
- Hash preflight: all six supplied hashes matched before this review was written. The global diagnostic/review were used only as diagnostic context, not as proof evidence or an assumption source.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: simultaneous raw Gaussian smoothing controls

- Statement fidelity: PASS. The theorem-style lemma at `proof.md:163-191` constructs the sole smoothing event (E_{\rm raw}), states all mode/column quantifiers, and gives the directional, norm-energy, and distinct-column bilinear controls under the primitive base-scale, Gaussian, and smoothing-margin assumptions. It targets exactly the event needed by the accepted `step_001` row.
- Proof validity: PASS. The scalar Gaussian, chi-square, and independent bilinear moment-generating-function arguments are valid in the displayed current notation. With (t=2L_{\rm sm}), the scalings give (2\upsilon_{\rm sm}), (\alpha_{\rm sm}^2(1+2\sqrt2\chi_{\rm sm}+4\chi_{\rm sm}^2)), and (\alpha_{\rm sm}^2(2\chi_{\rm sm}+2\chi_{\rm sm}^2)), respectively. The count (3r^2,3r,3\binom r2) and the two-sided factors yield exactly (9r^2e^{-2L_{\rm sm}}=\delta_{\rm sm}^2/(9r^2)\le\delta_{\rm sm}).
- Cited-result and assumption audit: PASS. Each elementary tail is restated before use, with the variance scaling supplied by `assump:base-scale` and `assump:gaussian-smoothing`; distinct-column independence is used only for the bilinear tail. No realized norm, Gram, or event property is assumed.
- Rigor checklist: PASS. The union bound does not require independence across event classes, the probability is over the once-drawn smoothing only, and (r\ge3) and (0<\delta_{\rm sm}<1) give the stated confidence regime. The optional empty-event branch for (\delta_{\rm sm}\ge1) is vacuous and does not affect the theorem domain.
- Local adversarial test: PASS. Using the smallest allowed base norm in every variance bound, arbitrary signs/alignment in the base directions, and the smallest allowed rank (r=3) still leaves the displayed thresholds and union estimate valid.
- Contribution to target step: Supplies the only random event from which all static realized geometry is derived.
- Verdict: PASS
- Repair direction: None.

### unit_002: normalization reserve and column-norm retention

- Statement fidelity: PASS. The lemma at `proof.md:268-289` states the exact squared-normalization reserve (h_{\rm sm}\le q_*/20) and the required realized column norm floor, conditioned only on the named raw event and primitive assumptions.
- Proof validity: PASS. The identity (\nu^2-1=2\langle\bar m,e\rangle+\|e\|^2) is applied correctly. The four contributions in (12) follow from (3)-(4); (1)-(2) give the displayed numerical bound (16), and positivity of the norm then gives (\nu\ge\sqrt{1-h_{\rm sm}}>1/2) and (\|\bar x+g\|\ge(2\kappa_0)^{-1}).
- Cited-result and assumption audit: PASS. The event is inherited from unit_001, while all denominator/nonvanishing facts are proved here. No generated nonzero or normalization condition is promoted to an assumption.
- Rigor checklist: PASS. The deterministic (\alpha_{\rm sm}^2) term, radial linear term, and confidence-dependent quadratic terms remain separate; the lower bound is uniform over all columns and modes.
- Local adversarial test: PASS. Simultaneously taking the most adverse sign of the radial perturbation and the largest allowed norm-energy envelope still gives (h_{\rm sm}<q_*/20\), so no zero-column boundary is hidden.
- Contribution to target step: Supplies norm retention and the positive normalization denominators used by the Gram and weight units.
- Verdict: PASS
- Repair direction: None.

### unit_003: cumulative normalized Gram control

- Statement fidelity: PASS. The proposition at `proof.md:327-340` proves the exact per-mode induced off-diagonal row and column mass (q(G)\le q_*), hence (q_{\rm real}\le q_*), under the primitive cumulative-Gram margin and named preceding events.
- Proof validity: PASS. Expansion (18) has exactly the base row mass, two directional terms, and the independent quadratic term. The row charges in (19)-(20) follow from the smoothing margin; the resulting pre-normalization mass is at most (q_*/2). Division by (\nu_j\nu_\ell\ge1-h_{\rm sm}) is valid from unit_002 and gives (21). Symmetry of each Gram correctly transfers the row bound to the column orientation.
- Cited-result and assumption audit: PASS. `q(\bar M)` is the corresponding setting-defined base normalized mode; the raw controls and normalization reserve are named local results. No realized Gram condition is assumed. The generic mode notation is a transparent packaging of \(\bar U,\bar V,\bar W\) and \(U,V,W\).
- Rigor checklist: PASS. The `(r-1)` pair count is retained before relaxation to (r), the quadratic (2r\alpha_{\rm sm}\upsilon_{\rm sm}+2r\upsilon_{\rm sm}^2) correction is displayed, and the normalization divisor is positive with strict numerical slack.
- Local adversarial test: PASS. Concentrating all permitted base interference in one row and aligning all perturbation signs is covered by the absolute-value ledger and remains below the final (q_*) threshold.
- Contribution to target step: Produces the normalized Gram interface consumed by the Khatri--Rao floor unit and downstream steps.
- Verdict: PASS
- Repair direction: None.

### unit_004: realized product-weight balance

- Statement fidelity: PASS. The lemma at `proof.md:391-398` targets exactly (\Gamma\le1.01) from the primitive base-weight ratio and the preceding normalization result.
- Proof validity: PASS. The product identity (23) and the extremal ratio (24) are correct. The logarithmic estimates in (25), using (h_{\rm sm}\le1/81920), leave ample slack below \(\log(1.01)), so exponentiation yields the stated bound.
- Cited-result and assumption audit: PASS. Only the named normalization lemma and `assump:base-weight-balance` are used; positivity of every realized weight follows from unit_002 rather than being assumed.
- Rigor checklist: PASS. The max/min product comparison handles the worst combination of upper and lower mode multipliers, and all constants are numerical and explicit.
- Local adversarial test: PASS. Saturating the base ratio (801/800) and taking every numerator at (1+h_{\rm sm}) and denominator at (1-h_{\rm sm}) still satisfies the displayed (1.01) reserve.
- Contribution to target step: Supplies the realized weight-ratio component of (E_{\rm sm}).
- Verdict: PASS
- Repair direction: None.

### unit_005: target Khatri--Rao spectral floors

- Statement fidelity: PASS. The proposition at `proof.md:432-441` covers all three cyclic realized pair designs and states the exact floor (1-q_*^2) required by the sketch row.
- Proof validity: PASS. The entrywise identity (27) is exact for the same realized unit-column objects. Equation (28) correctly bounds each Hadamard off-diagonal row mass by the product of the two modewise row masses. The quadratic-form argument (29) is a self-contained symmetric Gershgorin comparison and yields the stated minimum-eigenvalue floor for every cyclic permutation.
- Cited-result and assumption audit: PASS. The unit-column diagonal and symmetry follow from the setting definitions and unit_003; no weighted or surrogate Gram is substituted for the target Khatri--Rao Gram.
- Rigor checklist: PASS. The (2|z_jz_\ell|\le z_j^2+z_\ell^2) step accounts for each unordered pair exactly once, signs are handled by absolute values, and all three orientations are covered.
- Local adversarial test: PASS. Even if each factor row concentrates its full (q_*) mass on the same pair with opposing signs, the absolute Hadamard row mass remains at most (q_*^2).
- Contribution to target step: Supplies all three spectral-floor conclusions consumed downstream.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

PASS. The independent nontrivial claims are exactly the five entries in the local lemma map: the single concentration event, normalization/nonvanishing, normalized Gram control, weight balance, and Khatri--Rao floors. The scalar inequalities, finite-union calculation, denominator positivity, and quadratic-form comparison are displayed inside named units. The target assembly at `proof.md:482-502` adds no trajectory, initialization, label, or conditioning assumption and cites theorem-style labels rather than unit IDs or subsection titles.

## Target Claim Audit

PASS. The proof establishes the exact accepted sketch-row claim: uniformly over the five primitive conditions, one smoothing-measurable event has probability at least (1-\delta_{\rm sm}) and implies the realized norm floor, (q_{\rm real}\le q_*), \(\Gamma\le1.01\), and all three (1-q_*^2) Khatri--Rao floors. The event is formed before proposal randomness; no confidence or convergence mode is merged or upgraded. The stronger intermediate bounds do not change the exported claim or quantifier order.

## Explicit Rate Audit

PASS. The exposed variables are (n,r,\kappa_0,\rho,\delta_{\rm sm}) through (L_{\rm sm}=\log(9r^2/\delta_{\rm sm})), with fixed (q_*=1/4096) and primitive base slacks. The proof preserves the required categories: linear directional (\kappa_0\rho\sqrt{L_{\rm sm}/n}), independent quadratic (\kappa_0^2\rho^2(\sqrt{L_{\rm sm}/n}+L_{\rm sm}/n)), deterministic normalization (\kappa_0^2\rho^2), row factors, and every finite-union count. The absorption inequalities are explicit in (1)-(2), (16), (19)-(21), and (24)-(25); no term is hidden behind asymptotic prose. Hidden constants are numerical and independent of the base triple, realized condition numbers, \(\epsilon\), \(\delta_{\rm init}\), and proposal randomness. The probability mode is one static high-probability smoothing event, the horizon is fixed/static, and the norm modes are Euclidean column norm, induced row/column Gram mass, scalar weight ratio, and spectral minimum. There is no public rate-specialization bridge or later probability conversion in this producer beyond exporting (E_{\rm sm}). The zero-perturbation orthogonal/equal-weight specialization is checked and preserves the exact zero-interference baseline.

## Notation Surface Audit

PASS. (E_{\rm sm}) is the sole public-facing output. (E_{\rm raw}), (h_{\rm sm}), (L_{\rm sm}), \(\chi_{\rm sm}\), \(\alpha_{\rm sm}\), and \(\upsilon_{\rm sm}\) are explicitly defined proof-local quantities; the generic mode aliases are setting-derived and appendix-local. (K_U) and its permutations are proof-local names for the exact same-object target Grams. The step exports only the four requested geometry interfaces and does not hide a condition number, event, or boundedness claim in notation.

## Target-Step Assembly Audit

PASS. Unit_001 produces the sole probability-bearing event; unit_002 derives normalization and norm retention; unit_003 derives both-orientation realized Gram control; unit_004 derives weight balance; and unit_005 derives all cyclic spectral floors. These named results jointly imply the exact (E_{\rm sm}) interface on one event, with no dependency artifacts and no second union or probability merger. The assembly uses paper-ready lemma/proposition labels and leaves proposal randomness and later trajectory properties to downstream steps.

## Review Rationale

`ACCEPTED` is the smallest sound outcome. The proof is faithful to the accepted step claim and closes every local obligation under unchanged primitive assumptions. Gaussian source conventions, normalization and weight positivity, both induced Gram orientations, the (9r^2) finite-union ledger, explicit rate categories, boundary handling, and the exact same-object Khatri--Rao floors all pass independent checks. No dependency is available to block the step, and no sketch/interface change is needed; downstream consumers may use the produced (E_{\rm sm}) event with a fresh accepted review of their own steps.
