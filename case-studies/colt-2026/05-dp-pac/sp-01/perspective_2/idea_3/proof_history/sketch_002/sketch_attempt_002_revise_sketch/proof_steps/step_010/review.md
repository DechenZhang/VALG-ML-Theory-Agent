# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_010
- Unit attempt: 2
- Review attempt: 2
- Reviewed proof artifact: perspective_2/idea_3/proof_steps/step_010/proof.md
- Reviewed proof SHA-256: 6d918f086bfbc67b2c6ddefb43b245df1d8f331d8f31177fa1e15bd69d40b710
- Reviewed proof status: COMPLETE
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted step_006 proof/review SHA-256: 3a761879525b3a4832fcfaa0b119a9307b7c027594271fd20e392ffbb1bc464f / 331d52e75329220d7fa686561708c7e91dbf261704597893d8e5da5d83bd3303
- Accepted step_008 proof/review SHA-256: 42121742c564d1ac023afd576efc2e2e946a9b447f620d5c7cd087bc76fc8a43 / c29ea8c6302be8940d7e8f7a9e20180f2dde081dc50a3081eecbd59fb81e329d
- Primary-source preflight: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1; independently checked frozen submission/main.tex SHA-256 b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact selected leaf witness and inherited irreducibility

- Statement fidelity: The proposition matches the accepted step row. It starts from the actual function selected by accepted Proposition~\ref{prop:step-008-actual-output}, obtains a degree-attaining leaf from accepted Proposition~\ref{prop:step-006-essential-lists}, preserves equality with \(\operatorname{SOA}_G\) on every point of \(X\), and exports the exact leaf scale and both shorter irreducibility levels.
- Proof validity: Actual union membership gives a witnessing block \(i\). The empty-list convention forces \(H_i^{\widehat r}\ne\varnothing\). Definition 4.3 then gives, in any fixed optimal decomposition, a nonempty degree-attaining leaf \(G\subseteq H_i^{\widehat r}\) whose SOA is the selected function on all of \(X\). Accepted Lemma~\ref{lem:step-006-leaf-irreducibility} supplies
  \[
  K=p_{\widehat r}2^{d-t}\ge n_0d\ge\max\{n_0,d+1\},
  \]
  and its proved shorter-sequence wrapper supplies both required irreducibility levels. The local proof that a nonempty binary class of Littlestone dimension zero is a singleton is valid: two distinct functions would disagree at a point and shatter a depth-one tree.
- Cited-result and assumption audit: The accepted dependency labels exist, their artifact hashes match, and both dependency reviews are ACCEPTED. The frozen source confirms Definition 4.2 label 'def: p-decomposition', Definition 4.3 label 'def: essential hypothesis', the leaf irreducibility scale, and actual-function equality in every optimal decomposition. No trace identity, properness, or empirical utility is imported from those definitions.
- Rigor checklist: Quantifiers over the selected stage, witnessing block, optimal decomposition, and degree-attaining leaf are retained. At \(d=1\), accepted \(n_0\ge2\) gives \(n_0d=n_0\ge d+1\), including \(\widehat r=0\) and \(t=d\). At decomposition dimension zero, \(t=0\), the leaf is a nonempty singleton, and the equality remains equality on \(X\).
- Local adversarial test: The proof survives multiple optimal decompositions, infinite \(C\), duplicate sample traces, \(d=1\), and a decomposition-dimension-zero selected parent. An empty current class cannot witness actual list membership.
- Contribution to target step: It proves the exact selected-object bridge, the required subclass containment, and the \(n_0\)- and \((d+1)\)-irreducibility interfaces used by the remaining units and fixed-family membership.
- Verdict: PASS
- Repair direction: None.

### unit_002: Full-master error of every current-class member

- Statement fidelity: The lemma proves the exact parent-class master-error interface required by the accepted sketch, uniformly over \(r\in\{0,\ldots,d\}\), all blocks, and all members of \(H_i^r\), conditional only on the earlier-derived event \(E_{\rm good}\).
- Proof validity: Membership gives \(e_i(g)\le\rho^{r+1}\gamma\le\gamma\). If \(e_S(g)\le\gamma/3\), the target \(e_S(g)\le2\gamma\) is immediate. If \(e_S(g)>\gamma/3\), the high-error clause gives
  \[
  e_i(g)\ge\left(1-\frac1{5d}\right)e_S(g),
  \]
  and hence
  \[
  e_S(g)\le\frac{\gamma}{1-1/(5d)}
  =\frac{5d}{5d-1}\gamma
  \le\frac54\gamma<2\gamma.
  \]
  The cases are exhaustive, the equality boundary belongs to the first case, and every denominator is positive.
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-006-source-map} supplies the exact current-class threshold. The displayed \(E_{\rm good}\) is the accepted event, and \(g\in H_i^r\subseteq C\) places \(g\) within its universal quantifier. Conditioning on this derived event is not promoted to a primitive assumption.
- Rigor checklist: The direction of the relative-deviation inequality is correct, no independence is used, and the implication is uniform through \(r=d\). At \(d=1\), the worst factor is exactly \(5/4\). The low/high guards handle \(e_S(g)=\gamma/3\) correctly.
- Local adversarial test: Zero master error, the guard boundary, \(d=1\), a decomposition-dimension-zero leaf member, repeated points, and dependent partition blocks do not alter this deterministic implication.
- Contribution to target step: It proves \(e_S(g)\le2\gamma\) for every member of the selected leaf's parent class and hence for every \(g\in G\).
- Verdict: PASS
- Repair direction: None.

### unit_003: Irreducibility forbids the high-error SOA restriction

- Statement fidelity: The lemma states the exact deterministic implication needed downstream: a nonempty \(n_0\)-irreducible class under the fixed-SOA convention, exact identity \(f=\operatorname{SOA}_G\) on \(X\), and memberwise empirical error at most \(2\gamma\) imply the same empirical bound for \(f\). It correctly permits an improper \(f\) and repeated indexed points.
- Proof validity: If \(e_S(f)>2\gamma\), any \(g\in G\) agreeing with \(f\) on every indexed sample coordinate has the identical error vector and violates the memberwise premise. Thus the fixed-\(f\) restriction through all \(n_0\) points is empty. Since \(f=\operatorname{SOA}_G\) on \(X\), \(n_0\)-irreducibility says this same restriction has Littlestone dimension \(\operatorname{LD}(G)\ge0\), contradicting emptiness. Repeated points are legal because the definition quantifies over point sequences and uses the one fixed SOA function.
- Cited-result and assumption audit: The frozen source definition 'def: irreducible' uses \(\operatorname{SOA}_G\) of the original class at every point, and the proof of 'thm: DP-ERM-littlestone' contains exactly the empty-restriction contradiction pattern. The repaired equation (6) now faithfully renders this definition as \(\operatorname{LD}\!\left(\cdot\right)=\operatorname{LD}(G)\). The proof does not import the source's probability-one amplification, asymptotic rate, or theorem-statement typo.
- Rigor checklist: The proof handles arbitrary labels, repeated points, empirical error zero, and \(\operatorname{LD}(G)=0\). It does not assume \(f\in C\), recompute SOA after restrictions, or change the strict high-error guard.
- Local adversarial test: Conflicting labels on repeated occurrences still give identical error indicators for functions agreeing on that repeated point. When \(G\) has dimension zero, unit_001's singleton argument independently yields the conclusion. No counterexample to the implication was found.
- Contribution to target step: It converts the exact leaf identity, \(n_0\)-irreducibility, and leaf-member error bound into \(e_S(\widehat f)\le2\gamma\).
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent mathematical subclaim is missing from the three-unit map. Exact selected-function identity and the degree-attaining leaf are in unit_001; the exhaustive \(E_{\rm good}\) case split is in unit_002; and the fixed-SOA empty-restriction contradiction is in unit_003. The dimension-zero singleton argument is explicit in unit_001. Defining
\[
\widehat C_{d+1}
=\{\operatorname{SOA}_F:F\subseteq C\text{ is }(d+1)\text{-irreducible}\}
\]
and inserting unit_001's witness is a direct set-membership inference, not a hidden lemma. The assembly cites theorem-style local results; unit IDs appear only as traceability annotations.

## Target Claim Audit

The three units establish the exact accepted claim on \(E_{\rm good}\cap\mathcal E_{\rm mech}\): the learner output is the same function on all of \(X\) as \(\operatorname{SOA}_G\) for a degree-attaining \(G\subseteq H_i^{\widehat r}\subseteq C\); the leaf is \(p_{\widehat r}2^{d-t}\)-, \(n_0\)-, and \((d+1)\)-irreducible; and \(e_S(\widehat f)\le2\gamma=\alpha/8\). This gives exact membership in the fixed family \(\widehat C_{d+1}\) consumed by step_011. The proof makes no population-error, properness, or trace-quotient claim.

Quantifiers, conditional probability mode, actual-function identity, and the \(d=1\), decomposition-dimension-zero, infinite-class, and repeated-point boundaries all pass. The \(d=0\) branch is correctly outside this positive-branch step and uses the accepted boundary learner.

## Explicit Rate Audit

This step is rate-bearing only through its exact accuracy and scale interfaces. It exposes \(d,n_0,r,t,p_r,\alpha,\gamma\), with \(\gamma=\alpha/16\), retains the accepted trace and mechanism confidence charges, and introduces no hidden constant. The proof is deterministic conditional on the already-produced events, uses one fixed master sample and one of exactly \(d+1\) stages, and measures exact binary-function equality, empirical binary error, and irreducibility.

Every simplification is displayed:
\[
e_i(g)\le\rho^{r+1}\gamma\le\gamma,\qquad
e_S(g)\le\frac{5d}{5d-1}\gamma\le\frac54\gamma<2\gamma,
\]
\[
p_{\widehat r}2^{d-t}\ge n_0d\ge\max\{n_0,d+1\},
\qquad
2\gamma=\alpha/8.
\]
There is no probability conversion, hidden stage/list factor, sample cost, or change of horizon or norm mode. At \(d=1\), both the scale and denominator checks remain valid; at decomposition dimension zero, exact identity and empirical utility remain unchanged.

## Notation Surface Audit

The helper-object classification is sound and minimal. The public-facing interface is
\[
\widehat f\in\widehat C_{d+1},
\qquad
e_S(\widehat f)\le\alpha/8.
\]
The stage, block, leaf, leaf dimension, and scale witnesses are appendix-local; \(G_S^f\) and the generic \(f\) in unit_003 are proof-local. All constants and events have accepted provenance. The attempt-1 command defects are repaired exactly: equation (6) now uses \(\operatorname{LD}\!\left(\cdot\right)\), and assembly equation (20) now uses \(\ge\). A fresh scan found no malformed reference command, left/right delimiter fragment, missing comparison-command backslash, forbidden control byte, symbol collision, actual-function/trace ambiguity, or unclassified helper.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-010-exact-leaf-witness}, Lemma~\ref{lem:step-010-parent-master-error}, and Lemma~\ref{lem:step-010-irreducible-contradiction}, together with accepted step_006 and step_008, jointly imply the exact target. Equations (19)-(20) export the exact selected leaf witness and both irreducibility levels; equation (21) exports \(e_S(\widehat f)\le\alpha/8\); and equation (22) exports exact membership in \(\widehat C_{d+1}\). The corrected scale display agrees with the already-proved unit_001 scale and leaves no assembly gap.

## Review Rationale

ACCEPTED is the controlled status and None is the smallest retry target. The current unit-attempt-2 proof differs from the archived rejected attempt only by its attempt identity and the two requested command-token repairs. Independent rechecking confirms that all three mathematical units, cited-source mappings, assumptions, boundary cases, rate interfaces, and the target-step assembly are valid. No proof-step, dependency, or sketch repair remains.
