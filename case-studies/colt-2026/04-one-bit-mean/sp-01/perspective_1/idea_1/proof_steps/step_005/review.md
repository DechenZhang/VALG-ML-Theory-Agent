# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_005/proof.md (SHA-256 a11175474544ac3d7c1045a381d9825baa441cdd6a7599bbc74d4659acba9239)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact floor residuals and bounded dyadic digits

- Statement fidelity: The lemma proves the exact strict range required by the accepted step_005 row for every \(0\leq j<J\), every offset pair, and every real input. Its explicit condition \(h_j>0\) is the complete local condition; positivity is also available from the accepted step_004 dependency.
- Proof validity: For a shifted width-\(s\) floor quantizer, the proof correctly derives the half-open residual interval \([0,s)\). Applying this at widths \(h_j\) and \(2h_j\) gives \(F_{j,a,b}=r_{j+1}-r_j\) with \(r_j\in[0,h_j)\) and \(r_{j+1}\in[0,2h_j)\), hence \(-h_j<F_{j,a,b}<2h_j\).
- Cited-result and assumption audit: No external result is used. The argument uses only the setting definitions and positive scale. Neither boundedness nor endpoint exclusion is assumed; both are derived directly from the floor inequalities.
- Rigor checklist: The inequality directions are correct for arbitrary integer floor indices, including negative cells. Equality at \(-h_j\) would require the excluded residual value \(r_j=h_j\), and equality at \(2h_j\) would require \(r_{j+1}=2h_j\). Quantifiers and the strict endpoint convention are preserved.
- Local adversarial test: At a left boundary the relevant residual is zero; at a right boundary the point moves to the next half-open cell and the residual again resets to zero. The same reasoning covers a boundary of either grid and a simultaneous boundary, so neither digit endpoint becomes attainable.
- Contribution to target step: Supplies the full normalized range \((-1,2)\) needed for the Borel threshold and exact uniform-dither calculations.
- Verdict: PASS
- Repair direction: None.

### unit_002: Borel and precommitted refinement queries

- Statement fidelity: The proposition establishes Borel query sets, joint Borel membership in the sample and all query seeds, seed-time precommitment, and measurable decoder-side selection without allowing the decoded center to alter the query. This is exactly the measurability/precommitment component of the sketch row.
- Proof validity: For fixed \(j,a,b\), the proof represents the threshold set as a countable union of intersections of half-open cells and also gives the equivalent Borel-preimage argument. The map \((x,u)\mapsto F_{j,a,b}(x)/h_j-u\) is Borel, and the finite level/offset spaces make the full \((x,j,a,b,u)\) membership map jointly Borel. The accepted Borel selectors make \(c\mapsto D_j^c(c)\), and hence its threshold comparison, measurable.
- Cited-result and assumption audit: The current accepted step_004 pair supplies exactly the Borel selectors and selected-cell certificate used here. Assumption~\ref{assump:iid-independent-randomness} supplies primitive seed timing and independence. No response-dependent or generated-event condition is promoted to an assumption.
- Rigor checklist: At \(u=-1\), strict digit boundedness makes the query all of \(\mathbb R\); at \(u=2\), it makes the query empty. Both are Borel and respect the setting's inclusive dither support. The query formula contains only known scales and presampled \((L_i,A_i,B_i,U_i)\), while \(c\) appears only in decoder operations after the bit is observed.
- Local adversarial test: Exact floor boundaries remain Borel under the left-closed/right-open convention; dither-support endpoints create no overflow case; and changing the later decoded value \(c\) changes only which already queried bank entry is selected and centered, never the realized set \(\mathcal A_i\).
- Contribution to target step: Supplies the exact legal one-bit query interface and the measurable decoder selection consumed by the selected-digit dither identities.
- Verdict: PASS
- Repair direction: None.

### unit_003: Exact bounded-uniform-dither moments

- Statement fidelity: The proposition states both exact identities for every level, offset pair, and \(x,c\in\mathbb R\), includes the selected-digit specialization, records conditional validity in the actual protocol, and preserves pathwise zero at \(x=c\).
- Proof validity: With \(f_x,f_c\in(-1,2)\), the threshold convention gives \(\Pr(U\leq t)=(t+1)/3\). Subtraction yields the signed first moment. The squared indicator difference is exactly the indicator of \((\min\{f_x,f_c\},\max\{f_x,f_c\}]\), whose uniform probability is \(\lvert f_x-f_c\rvert/3\). Multiplication by \(9h_j^2\) gives the exact coefficient \(3h_j\lvert F_{j,a,b}(x)-F_{j,a,b}(c)\rvert\).
- Cited-result and assumption audit: No external dither theorem is invoked. Lemma~\ref{lem:step-005-digit-range} supplies the full support containment, and Lemma~\ref{lem:step-004-four-arc-selector} supplies the selected offset pair. By Assumption~\ref{assump:iid-independent-randomness}, \(U_i\) is independent of the localization output, every sample, and all non-dither refinement seeds, so its conditional law remains \({\rm Unif}[-1,2]\) after fixing \((c,X_i,L_i,A_i,B_i)\) and the other independent non-dither quantities. The proof correctly does not condition on \(Y_i\), which depends on \(U_i\).
- Rigor checklist: The half-open threshold interval is correct at equality: at the smaller threshold both indicators are one, while at the larger threshold only the larger-threshold indicator is one. At \(U=-1\) both indicators are one and at \(U=2\) both are zero, so the difference vanishes at both support endpoints. There is no almost-sure-to-pointwise upgrade: when \(x=c\), equality holds for every \(U\).
- Local adversarial test: The formulas remain exact as either normalized digit approaches \(-1\) or \(2\), when the two digit values coincide away from \(x=c\), when their order is reversed, and at either threshold tie. Substitution of the Borel pair \((a_j(c),a_{j+1}(c))\) introduces no dependence on \(U_i\) after the stated conditioning.
- Contribution to target step: Exports the exact signed digit difference, exact activation-weighted square, selected-digit form, and zero-displacement baseline needed by step_008.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. Strict floor endpoints are contained in unit_001; fixed-seed and joint Borel measurability, support-endpoint query behavior, precommitment, and decoder measurability are contained in unit_002; direct integration, threshold ties, conditional uniformity, selected-pair substitution, and exact zero displacement are contained in unit_003. The finite-space joint-measurability and conditional-independence statements are explicitly justified within their units rather than being imported by broad prose.

## Target Claim Audit

The proof establishes the exact accepted sketch-row claim under the allowed interface: the current accepted step_004 selector certificate and Assumption~\ref{assump:iid-independent-randomness} for seed timing and conditional independence. The range and identities are uniform in all stated deterministic inputs, the query certificate is pathwise in every realized seed, and the conditional claim fixes only quantities independent of the active dither. No localization, moment, inactivity, rate, asymptotic, or conditional-theorem assumption is added.

## Explicit Rate Audit

None. The target step is a deterministic/measurability and one-dither identity and is not rate-bearing.

## Notation Surface Audit

The proof uses the setting-defined objects \(h_j,Q_{j,a},F_{j,a,b},\mathcal A_i,a_j(c),Q_j^c,D_j^c\) and exports only the bounded-dither interface requested downstream. The generic width/shift, residuals, cell indices, cells, normalized digit values, and indicator difference are correctly classified as proof-local and are direct expressions in setting notation. The factor \(3\), endpoints \(-1,2\), and square coefficient all have visible provenance; no helper constant, event, or dictionary is left unexplained.

## Target-Step Assembly Audit

The assembly cites Lemma~\ref{lem:step-005-digit-range}, Proposition~\ref{prop:step-005-query-precommitment}, Proposition~\ref{prop:step-005-dither-identities}, and the accepted selector/cell-margin results by paper-ready names and stable labels. Their conclusions jointly imply strict digit boundedness, Borel and precommitted queries, both exact dither identities, the selected-digit specialization, and the exact \(x=c\) baseline. No bare unit ID, subsection title, unavailable dependency, or cited-paper shorthand is used as mathematical authority.

## Review Rationale

The current proof is faithful to the unchanged sketch interface and closes every local obligation. The strict floor range handles both grid endpoints, the measurability proof covers the joint sample/seed map and decoder-side selection without compromising precommitment, and direct integration gives the signed mean and exact square coefficient with the correct threshold and dither-support conventions. Primitive independence also supports the stated conditional law after all relevant non-dither quantities are fixed, while conditioning on the dither-dependent response is expressly excluded. Since the accepted dependency is current and no local, dependency, or sketch defect remains, no producer rerun is required.
