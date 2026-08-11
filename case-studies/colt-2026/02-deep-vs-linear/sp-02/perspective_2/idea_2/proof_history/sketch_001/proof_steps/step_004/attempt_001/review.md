# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_004/proof.md`, SHA-256 `823e0740e177f4e9afcf409661529c8bf645cd25c6654389cad8fa0d3296e7b4`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004

## Blocking Issues

1. **Location:** `## Cited Result Applications`, item 3 (proof lines 74--80), and Proposition~\(\ref{prop:step-004-sion-fixed-body}\), especially proof lines 137 and 153--161. **Defect:** the submitted restatement is not the exact statement of Sion (1958), Theorem 3.4. The printed theorem on p. 174 states: "Let \(M\) and \(N\) be convex, compact spaces, and \(f\) a function on \(M\times N\), quasi-concave-convex and u.s.c.-l.s.c. Then \(\sup\inf f=\inf\sup f\)." The source's definitions in Section 2.8 put the supremum over the first variable and the infimum over the second. The submission instead states Theorem 3.4 with only \(M\) compact and says that the theorem requires only convexity of \(N\). That is not source-faithful. **Downstream effect:** the theorem-critical order equality is not citation-certified as written, so `unit_002` and the target assembly cannot be accepted. **Smallest repair direction:** restate Theorem 3.4 with compactness of both spaces, retain the source orientation \(M=K_A\) maximizing and \(N=\Delta(S)\) minimizing, and explicitly discharge compactness of both sets. The proof already establishes that \(\Delta(S)\) is compact, so this requires no sketch, claim, dependency, or mathematical-strategy change.
2. **Location:** Proposition~\(\ref{prop:step-004-sion-fixed-body}\), proof line 155. **Defect:** the displayed object mapping reads `M=K_A,qquad N=\Delta(S),qquad G=L_h`; both `qquad` tokens lack leading backslashes. **Downstream effect:** the submitted formula is malformed rather than paper-ready LaTeX. **Smallest repair direction:** write \(M=K_A,\qquad N=\Delta(S),\qquad G=L_h\) and rescan the repaired step for bare command text.

## Per-Lemma Audit

### unit_001: Finite-simplex minima occur at vertices

- Statement fidelity: The lemma states exactly the finite-simplex reduction needed by the accepted sketch row, including nonempty finite \(S\), arbitrary real coefficients, attainment, and the singleton case.
- Proof validity: Choosing a minimizing \(x_*\) is justified by finiteness and nonemptiness. Every convex combination is at least \(a_{x_*}\), and the vertex mass at \(x_*\) attains equality. All inequalities and quantifiers are correct.
- Cited-result and assumption audit: No cited result or derived invariant is used. The simplex and its vertices are defined directly from the setting's finite set.
- Rigor checklist: The argument permits repeated minimum values, does not require \(|S|\ge2\), and uses no compactness, probability, or limiting interchange.
- Local adversarial test: For a singleton simplex the only probability vector is its sole vertex, so the claimed equality and attainment reduce to an identity. The empty simplex is correctly excluded from the statement.
- Contribution to target step: It identifies \(\min_{p\in\Delta(S)}L_h(f,p)\) with \(\min_{x\in S}h(x)f(x)\) without loss of \(\rho\).
- Verdict: PASS
- Repair direction: None.

### unit_002: Sion's max-min equality on the fixed response body

- Statement fidelity: The proposition targets the exact accepted interface: the same fixed \(K_A\), the finite simplex \(\Delta(S)\), the payoff \(L_h\), the max-min orientation, and separate attainment. Its mathematical target does not drift. Its cited-source restatement, however, is not faithful to Theorem 3.4 because it omits compactness of the second space.
- Proof validity: Apart from the citation and notation defects in the blocking issues, the application is mathematically sound. The accepted `step_002` pair gives nonempty compact convex \(K_A\) in the fixed topology. Nonempty finite \(S\) gives nonempty compact convex \(\Delta(S)\). For fixed \(p\), \(L_h(\cdot,p)\) is continuous affine, hence upper semicontinuous and quasiconcave; for fixed \(f\), \(L_h(f,\cdot)\) is continuous affine, hence lower semicontinuous and quasiconvex. These are precisely the actual Theorem 3.4 hypotheses.
- Cited-result and assumption audit: The source's Section 2.8 convention gives
  \[
  \sup_{f\in K_A}\inf_{p\in\Delta(S)}L_h(f,p)
  =
  \inf_{p\in\Delta(S)}\sup_{f\in K_A}L_h(f,p),
  \]
  so the submitted player orientation is correct and no application to \(-L_h\) is needed. The defect is the inaccurate claim that Theorem 3.4 needs only one compact space. The accepted dependency hashes match, and their conclusions supply every fixed-body and continuity fact used here.
- Rigor checklist: The four attainment claims are correctly proved outside Sion's equality. Inner extrema follow from continuity on the two compact sets. The finite vertex identity makes the outer max objective continuous. The displayed estimate for \(v(p)=\max_fL_h(f,p)\), using finite pointwise maxima on compact \(K_A\), proves continuity and hence outer-min attainment. Both \(r_A>0\) and \(r_A=0\) are covered by the accepted dependencies.
- Local adversarial test: If \(\Delta(S)\) were merely convex and noncompact, the submitted Theorem 3.4 restatement would incorrectly certify the application. Here that mathematical break is avoided because the proof independently establishes compactness of \(\Delta(S)\), making the source-faithful repair local. No sign reversal or player swap appears.
- Contribution to target step: Once source fidelity and the malformed display are repaired, this proposition supplies the exact order equality and all attainment interfaces used by the remaining units.
- Verdict: REVISE_STEP
- Repair direction: Correct the exact Theorem 3.4 statement and its compactness discussion, and replace both bare `qquad` tokens by `\qquad`.

### unit_003: Exact-center witnesses lower-bound the fixed-body min-max value

- Statement fidelity: The proposition proves exactly the accepted per-\(p\) lower-bound interface, with \(h\) and nonempty finite \(S\) fixed, \(p\) universally quantified, and the exact-center witness allowed to vary with \(p\) inside one fixed \(K_A\).
- Proof validity: Each \(p\in\Delta(S)\) defines the setting-allowed finitely supported law \(\mathcal D_p\). Accepted Proposition~\(\ref{prop:step-003-exact-correlation}\) then supplies a witness in \(K_A\) whose payoff is at least \(\rho\). Therefore \(\max_{f\in K_A}L_h(f,p)\ge\rho\) for every \(p\), and taking the outer minimum preserves the same lower bound.
- Cited-result and assumption audit: The exact-center result is restated with its object mapping, membership, correlation conclusion, and matching accepted proof/review hashes. Compactness and max/min attainment come from the named `step_002` and local `unit_002` interfaces; no favorable response policy or common witness across different \(p\)'s is assumed.
- Rigor checklist: The quantifier pattern is correctly \(\forall p\,\exists f_p^0\in K_A\), which implies a pointwise lower bound on the fixed-body value function. No invalid exchange of \(\forall\) and \(\exists\), expectation and extremum, or min and max occurs. The threshold remains exactly \(\rho\).
- Local adversarial test: Two different simplex points may induce different exact-center rules and mean responses, but both lie in the same pre-instance body. Thus varying witnesses do not vary \(K_A\), \(V_A\), or \(\varphi_A\), and the min-max lower bound remains valid.
- Contribution to target step: It supplies the exact lower bound on the minimizing side of the game. Its derivation is sound; final certification still requires the local `unit_002` citation repair.
- Verdict: PASS
- Repair direction: None beyond the upstream `unit_002` repair.

### unit_004: Attained simultaneous margin on every finite restriction

- Statement fidelity: The proposition states the exact target chain, selects an attaining \(f_{h,S}\in K_A\), and converts its minimum margin into all pointwise inequalities. It includes singleton \(S\) and keeps empty \(S\) outside the binding nonempty-set claim.
- Proof validity: The first equality follows pointwise from Lemma~\(\ref{lem:step-004-simplex-vertex}\); the second is the correctly oriented minimax equality; and the final inequality is Proposition~\(\ref{prop:step-004-exact-center-lower}\). Attainment of the first maximum was proved in `unit_002`, and a minimum over nonempty finite \(S\) is at least \(\rho\) exactly when every signed evaluation is at least \(\rho\).
- Cited-result and assumption audit: All mathematical authorities are theorem-style named and labeled local results with explicit assumption bases. The only unresolved citation issue is inherited from `unit_002`; this unit introduces no new cited theorem or assumption.
- Rigor checklist: The equality chain uses the identical fixed body and payoff throughout, the selected maximizer exists, and no slack, probability conversion, or dependence on \(|S|\) is introduced. The singleton display is the exact point-mass specialization.
- Local adversarial test: For \(S=\{x_0\}\), the simplex is a singleton and the conclusion reduces to the accepted exact-center point-mass inequality. For empty \(S\), no nonexistent simplex or minimum is invoked; the downstream empty-intersection convention is logically separate.
- Contribution to target step: The proposition assembles exactly the finite simultaneous \(\rho\)-margin witness required by `step_004`. The assembly becomes certifiable after the source-fidelity repair in `unit_002`.
- Verdict: PASS
- Repair direction: None beyond the upstream `unit_002` repair.

## Hidden Subclaim Scan

No additional independent nontrivial subclaim is absent from the four-unit map. The simplex extreme-point identity is `unit_001`; source applicability, both outer continuity arguments, and all attainment claims are contained in `unit_002`; the finite-support law and varying exact-center witnesses are contained in `unit_003`; and the exact equality chain, pointwise conversion, singleton trace, and empty-set exclusion are contained in `unit_004`.

The continuity estimate for \(v(p)\), finiteness of each \(\max_{f\in K_A}|f(x)|\), and the claim that minima of finitely many continuous functions are continuous are all proved at their point of use and do not create hidden exported lemmas. The two blocking defects are an inaccurate cited-source statement and malformed command text, not missing sketch interfaces or hidden mathematical subclaims.

## Target Claim Audit

The attempted claim matches the accepted `step_004` row exactly: for every \(h\in\mathcal H\) and nonempty finite \(S\subseteq\mathcal X\), it targets an attained maximum at least \(\rho\). The accepted dependency hashes are current, and their exact conclusions supply one fixed nonempty compact convex \(K_A\), continuous evaluations, and a per-distribution exact-center witness with correlation at least \(\rho\).

Under the actual statement of Sion's Theorem 3.4, the derivation proves the claim: both game spaces are compact convex, the affine payoff has the source's quasi-concavity/upper-semicontinuity and quasi-convexity/lower-semicontinuity orientation, the per-\(p\) witnesses give the min-max lower bound, and compactness supplies the selected maximizer. The proof keeps \(K_A\) fixed while \(p\)-dependent witnesses vary and covers \(\rho=1\), singleton restrictions, and the separate empty-set boundary. The current artifact is nevertheless not certifiable until its source statement and malformed formula are repaired.

## Explicit Rate Audit

The step preserves Objective R2 exactly. The only exposed quantitative variable is \(\varepsilon\) through \(\rho=1-2\varepsilon\); there are no hidden constants, auxiliary tolerances, confidence parameters, probability conversions, horizon upgrades, or \(|S|\)-dependent losses. The probability mode is deterministic, the horizon mode remains the inherited fixed finite \(m\), and the metric is the exact pointwise signed margin. At \(\varepsilon=0\), every equality preserves \(\rho=1\); for singleton \(S\), the result reduces to the accepted point-mass bound. No quantitative repair is needed.

## Notation Surface Audit

The scope classifications are otherwise appropriate: \(\Delta(S)\) and \(L_h\) are reusable appendix-local objects; simplex vertices, \(v(p)\), the finitely supported law, and finite evaluation maxima are proof-local; and \(f_{h,S}\) and \(\rho\) are the minimal public-facing outputs. Every helper object has visible provenance, and no unnecessary constant dictionary is exported.

The display at proof line 155 fails paper-ready notation because `qquad` appears twice without a leading backslash. This is blocking under the notation contract and must be corrected to `\qquad` in both places. No other bare `ref`, `cite`, spacing-command, or malformed-command fragment was found in the submitted proof.

## Target-Step Assembly Audit

The assembly's mathematical dependency chain is complete: accepted `step_002` supplies the fixed compact body and continuous evaluations; corrected Proposition~\(\ref{prop:step-004-sion-fixed-body}\) supplies the source-faithful order equality and attainment; accepted `step_003` plus Proposition~\(\ref{prop:step-004-exact-center-lower}\) supplies the exact lower bound; and Lemma~\(\ref{lem:step-004-simplex-vertex}\) plus Proposition~\(\ref{prop:step-004-finite-margin}\) produces the pointwise witness. No new bridge, dependency, threshold, or local lemma is needed.

As submitted, however, the assembly relies on a local minimax proposition whose cited theorem is inaccurately restated and whose object-mapping display is malformed. It therefore cannot yet certify the exact target despite the correctness of the underlying mathematical application.

## Review Rationale

`REVISE_STEP` is the smallest sound status. The true Theorem 3.4 applies directly because the proof already establishes compactness of both \(K_A\) and \(\Delta(S)\), and its source-defined sup-inf orientation is exactly the required max-min orientation. Thus there is no dependency flaw and no need to change the accepted claim, assumptions, dependency list, intended tool, output target, or sketch interface. A local rewrite of the theorem restatement and compactness sentence, together with the two missing LaTeX backslashes, is sufficient. The repaired proof still requires a fresh `/proof-step-review step_004` before downstream use.
