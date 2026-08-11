# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_005/proof.md`, SHA-256 `dbddfbf1b0bc6a2795bdfac8473a9f134a5f6587496912039d61ba1bd872b51e`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_005

## Blocking Issues

1. Location: `proof.md:167`, in the formal statement of Proposition~\ref{prop:step-005-pivot-profile}. Defect: the display says `\frac{\delta}{\theta^2}quad(\theta\ne0)` rather than `\frac{\delta}{\theta^2}\quad(\theta\ne0)`. The unescaped letters `quad` make the theorem-style statement malformed and no longer state the exact \(V_2\) formula in paper-ready LaTeX, even though the proof body derives the correct expression. Downstream effect: `unit_001` cannot be certified in its submitted formal statement, and the target assembly cites that statement. Smallest repair direction: replace the malformed separator by `\quad` or an ordinary textual condition, without changing the claim, proof, dependency, or sketch row.
2. Location: `proof.md:352`--`proof.md:355`, in Proposition~\ref{prop:step-005-wedge-probability}. Defect: under the proof's stated vertical-section convention \(B_y=\{x:(x,y)\in B\}\), it is false that both full coefficient axes give singleton sections of length zero for every \(y\). The horizontal axis has section \([-1,1]\) at \(y=0\) and empty sections otherwise. Its area is still zero because the only nonzero section occurs at a one-dimensional null set of slice parameters; alternatively, the root event meets that axis only at the origin. Downstream effect: the main wedge integrations remain correct, but the submitted line-by-line boundary-nullity justification contains a false assertion. Smallest repair direction: distinguish the two axes and give the correct slicing argument, or refer specifically to the event's horizontal-axis intersection, which is the origin.

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Apart from the malformed `quad` token in the displayed \(V_2\) formula, the statement has the exact accepted assumption basis and target. It asserts \(K_1=[-1,1]\), \(V_1=1/\delta\), \(V_2(0)=+\infty\), \(V_2(\theta)=\delta/\theta^2\) off zero, every minimizing-pivot regime, the tie at \(\lvert\theta\rvert=\delta\), the least-index tie choice, and \(\Gamma_{\rm piv}=1/\delta\).
- Proof validity: The feasibility inequality gives all of \([-1,1]\) as \(K_1\). Direct differentiation gives \(V_1=1/\delta\), while extension off \(U_2\) gives \(V_2(0)=+\infty\) and the quotient derivative gives \(V_2=\delta/\theta^2\) for \(\theta\ne0\). Comparing \(\delta/\theta^2\) with \(1/\delta\) yields the stated switch at \(\lvert\theta\rvert=\delta\), and the pointwise minimum equals \(1/\delta\) throughout \([-\delta,\delta]\), so its exact supremum is \(1/\delta\).
- Cited-result and assumption audit: The specialized functions satisfy Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root}. The cited `step_001` proof and accepted review have the supplied matching hashes and legally provide compact root feasibility and qualitative fixed-family finiteness. No quantitative value is imported from the dependency.
- Rigor checklist: The cases \(\theta=0\), \(0<\lvert\theta\rvert<\delta\), \(\lvert\theta\rvert=\delta\), and \(\delta<\lvert\theta\rvert\le1\) are exhaustive. For \(\delta=1\), the last region is empty and equality occurs at \(\theta=\pm1\), exactly as stated. Constants, quantifiers, deterministic mode, and the extended-pivot convention are correct. The formal statement nevertheless fails the paper-ready exact-statement requirement at the malformed display.
- Local adversarial test: At \(\theta=0\), pivot 2 is unavailable and pivot 1 is the unique finite minimizer. At the switch points both speeds equal \(1/\delta\); just outside them pivot 2 becomes smaller. Neither endpoint nor \(\delta=1\) changes the supremum.
- Contribution to target step: Once the one-token statement defect is repaired, this proposition proves the complete exact conditioning clause and pivot profile required by R2.
- Verdict: REVISE_STEP
- Repair direction: Correct the malformed \(V_2\) display in the proposition statement; retain the derivation and all boundary cases.

### unit_002: lemma

- Statement fidelity: The lemma states the exact original-coefficient event for \(0<\epsilon\le\delta\le1\), with both the opposite-sign condition and the sharp magnitude condition. Its assumptions, family, closed interval, and conclusion are self-contained through the named setting assumptions.
- Proof validity: With \(t=\theta/\delta\) and \(r=\epsilon/\delta\), the target interval maps bijectively to \([0,r]\). For \(\alpha_2\ne0\), the unique candidate \(t=-\alpha_1/\alpha_2\) belongs to \([0,r]\) exactly when \(\alpha_1\alpha_2\le0\) and \(\lvert\alpha_1\rvert\le r\lvert\alpha_2\rvert\). For \(\alpha_2=0\), both the root equation and the wedge reduce exactly to \(\alpha_1=0\).
- Cited-result and assumption audit: No external result or dependency conclusion is needed beyond the setting definitions. The change of variables uses only the primitive condition \(\delta>0\). The wedge is derived from the root equation and is not assumed as a generated event.
- Rigor checklist: Both sign branches are covered without a WLOG step. The full \(\alpha_1=0\) axis has the endpoint root \(\theta=0\); the \(\alpha_2=0\) axis contributes only the origin; the origin has every \(\theta\) as a root. Weak sign inequality captures \(\theta=0\), and equality in the magnitude constraint captures \(\theta=\epsilon\). The equality is literal, not only modulo a null boundary.
- Local adversarial test: Setting either coefficient to zero produces exactly the claimed axis behavior. Taking \(\alpha_1=-r\alpha_2\) with opposite signs gives the \(\theta=\epsilon\) boundary, while \(\alpha_1=0\) gives the \(\theta=0\) boundary. Same-sign nonzero coefficients and opposite-sign coefficients outside the magnitude wedge have no root in the interval.
- Contribution to target step: It supplies the exact two-wedge event in the original coefficient square with zero residual for the probability calculation.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: The proposition targets exactly the uniform law on \([-1,1]^2\), total wedge area \(\epsilon/\delta\), and ordinary probability \(\epsilon/(4\delta)\), under the named exact-event lemma and \(0<\epsilon\le\delta\).
- Proof validity: For \(r=\epsilon/\delta\in(0,1]\), the two displayed components cover the two opposite-sign branches and intersect only at the origin. Their vertical-section lengths are \(r\alpha_2\) for \(\alpha_2\in[0,1]\) and \(-r\alpha_2\) for \(\alpha_2\in[-1,0]\), so each area is \(r/2\) and the union area is exactly \(r=\epsilon/\delta\). Multiplication by the exact square density \(1/4\) gives \(\epsilon/(4\delta)\). The later assertion about both axes having only zero-length singleton sections is false under the stated slicing convention, as recorded in Blocking Issue 2, although it is not needed for the already correct triangle integrations.
- Cited-result and assumption audit: The elementary planar slicing identity is restated in current coordinates with Borel and section hypotheses, and the closed triangular components discharge them. Assumption~\ref{assump:joint-density-cap} is specialized to the exact uniform density \(1/4\); no independence, conditioning, or union bound is used.
- Rigor checklist: Since \(r\le1\), every endpoint \(r\lvert\alpha_2\rvert\) lies in \([0,1]\), so neither sign branch is clipped by the coefficient square. The origin is the sole overlap, the sloping edges encode \(\theta=\epsilon\), and the vertical axis encodes \(\theta=0\). The area and density constants are exact. The boundary-nullity aside must be corrected for line-by-line validity.
- Local adversarial test: At \(r=1\), each triangle has area \(1/2\), their total area is \(1\), and the probability is \(1/4\). As \(r\downarrow0\), the area scales exactly linearly. Both sign branches contribute equally, coefficient-axis cases agree with Lemma~\ref{lem:step-005-wedge-event}, and no clipping occurs anywhere in the allowed range.
- Contribution to target step: Its correct main calculation supplies the exact probability clause, but the submitted proposition still needs the local slicing correction before certification.
- Verdict: REVISE_STEP
- Repair direction: Replace the false all-singleton axis sentence by the correct separate vertical- and horizontal-axis slicing argument, leaving the wedge integrals and probability conversion unchanged.

## Hidden Subclaim Scan

The three independent nontrivial obligations are all present in the local lemma map and have matching derivation subsections: exact pivot minimization, exact root-event equivalence, and exact planar measure conversion. The accepted dependency and the elementary slicing identity are restated before use. Axis and edge nullity are standard auxiliary measure claims within `unit_003`, not an omitted independent bridge, but the horizontal-axis application is misstated and is already promoted to Blocking Issue 2. No generated invariant, hidden event assumption, unreviewed citation, or polynomial Pfaffian-format estimate is smuggled into the proof or assembly.

## Target Claim Audit

The substantive calculations match the exact `step_005` row. They give \(K_1=[-1,1]\), \(V_1=1/\delta\), \(V_2(0)=+\infty\), \(V_2=\delta/\theta^2\) off zero, the minimizing-pivot switch and equality at \(\lvert\theta\rvert=\delta\), and exact supremum \(1/\delta\). They identify the root event in the original \((\alpha_1,\alpha_2)\) coordinates with both closed opposite-sign wedges, including both coefficient axes, the origin, and the \(\theta=0,\epsilon\) endpoints. The condition \(\epsilon/\delta\le1\) prevents clipping; the two exact areas sum to \(\epsilon/\delta\), and density \(1/4\) gives exact ordinary probability \(\epsilon/(4\delta)\). Certification is withheld only for the two local submitted-proof defects above, not for target drift or a failed mathematical mechanism. The proof consistently remains `material_partial` and neither claims nor implies polynomial general-instance control of \(\Gamma_{\rm piv}\) from Pfaffian-format data.

## Explicit Rate Audit

The step exposes exactly \(\delta,\epsilon\), with \(0<\epsilon\le\delta\le1\), and the fixed specialized values \(N=2\), \(R=1\), \(\kappa=1/4\), and \(A=1\). There is no hidden constant, auxiliary tolerance, asymptotic simplification, or absorbed term. The probability mode is exact ordinary probability under the fixed uniform law; the horizon mode is the single closed interval \([0,\epsilon]\); and the norm/measure modes are the setting's \(\ell_1\) feasibility test, scalar coordinate-ratio variation, and planar Lebesgue measure in the original coefficient square. The displayed pivot comparison, no-clipping condition, two area integrals, and multiplication by \(1/4\) preserve all dependence exactly. At \(\delta=1\) the conditioning value is one; at \(\epsilon=\delta\) the probability is \(1/4\). R2 is a fixed-family scale certificate only, and the unresolved polynomial general-instance control of \(\Gamma_{\rm piv}\) remains explicit.

## Notation Surface Audit

The setting-defined objects \(K_1,V_1,V_2,\Gamma_{\rm piv}\) and the root-event probability are correctly public-facing. The helpers \(t,r,W_r,W_r^+,W_r^-\) are explicitly classified as proof-local, directly defined from setting quantities, and not exported. No appendix-local dictionary, free constant, or unnecessary public alias appears. The malformed `quad` text is not valid helper notation and must be repaired as described in Blocking Issue 1.

## Target-Step Assembly Audit

The assembly cites the accepted dependency results and all three local results by theorem-style names and stable labels. The dependency proof/review identities and hashes match the binding artifacts. After the two local corrections, Proposition~\ref{prop:step-005-pivot-profile} supplies the exact conditioning value, Lemma~\ref{lem:step-005-wedge-event} supplies the exact original-coordinate event, and Proposition~\ref{prop:step-005-wedge-probability} supplies the exact area and density conversion; jointly they imply every clause of the accepted sketch row. The assembly correctly states that this fixed-family audit does not export polynomial control in \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\). As submitted, however, it cites one malformed formal statement and one proposition containing a false auxiliary sentence, so it is not yet certifiable.

## Review Rationale

`REVISE_STEP` with `Smallest Retry Target = /proof-step step_005` is the smallest valid decision. The accepted sketch interface and `step_001` dependency are sound, and all target-level algebra, geometry, constants, probability mode, endpoint cases, and source-progress boundaries are substantively correct. The only required work is local to the submitted proof: repair the malformed \(V_2\) theorem display and correct the horizontal-axis slicing explanation. Neither repair changes a claim, assumption, dependency, proof tool, output target, or rate interface. The producer retry does not certify the replacement artifact; a fresh accepted `/proof-step-review step_005` remains required before downstream use.
