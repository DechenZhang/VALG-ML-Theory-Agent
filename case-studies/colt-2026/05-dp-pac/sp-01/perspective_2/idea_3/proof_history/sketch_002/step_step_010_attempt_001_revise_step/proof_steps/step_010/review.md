# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_010
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: perspective_2/idea_3/proof_steps/step_010/proof.md
- Reviewed proof SHA-256: f392117d1db9b0ce31a650a3807aebd00d8fa33fe7acd1af9fa347797a38b341
- Reviewed proof status: COMPLETE
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted step_006 proof/review SHA-256: 3a761879525b3a4832fcfaa0b119a9307b7c027594271fd20e392ffbb1bc464f / 331d52e75329220d7fa686561708c7e91dbf261704597893d8e5da5d83bd3303
- Accepted step_008 proof/review SHA-256: 42121742c564d1ac023afd576efc2e2e946a9b447f620d5c7cd087bc76fc8a43 / c29ea8c6302be8940d7e8f7a9e20180f2dde081dc50a3081eecbd59fb81e329d
- Primary-source preflight: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1; independently checked frozen `submission/main.tex` SHA-256 b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_010

## Blocking Issues

1. Location: `proof.md` lines 199-206, the current-notation restatement of Lyu Definition `def: irreducible`. Defect: equation (6) contains `\operatorname{LD}\!left(` instead of `\operatorname{LD}\!\left(`, while retaining a closing `\right)`. This is malformed LaTeX and does not faithfully render the exact cited definition that unit_003 invokes. Downstream effect: the fixed-SOA irreducibility premise used by the empty-restriction contradiction is not available in a paper-ready, source-faithful displayed form. Smallest repair: correct only this command token and preserve the statement, source mapping, and derivation.
2. Location: `proof.md` lines 480-485, Target-Step Assembly equation (20). Defect: the central scale is written `p_{\widehat r}2^{d-t}ge n_0d` instead of `p_{\widehat r}2^{d-t}\ge n_0d`. Downstream effect: the assembly does not syntactically state the exact inequality that exports both (n_0)- and ((d+1))-irreducibility to step_011, even though unit_001 correctly proved it earlier in equation (9). Smallest repair: restore the missing backslash in equation (20), without changing any claim, dependency, or proof argument.

## Per-Lemma Audit

### unit_001: Exact selected leaf witness and inherited irreducibility

- Statement fidelity: The proposition matches the accepted row. It starts from the actual function selected by accepted Proposition~\ref{prop:step-008-actual-output}, obtains a degree-attaining leaf from accepted Proposition~\ref{prop:step-006-essential-lists}, preserves equality with `SOA_G` on every point of (X), and exports the exact leaf scale and both shorter irreducibility levels.
- Proof validity: Actual union membership gives a witnessing block (i). The empty-list convention forces (H_i^{\widehat r}\ne\varnothing). Definition 4.3 then gives, in an optimal decomposition, a degree-attaining nonempty leaf (G\subseteq H_i^{\widehat r}\) with the same selected function on all (X). Accepted Lemma~\ref{lem:step-006-leaf-irreducibility} supplies
  [
  K=p_{\widehat r}2^{d-t}\ge n_0d\ge\max\{n_0,d+1\}.
  ]
  Its already-proved shorter-sequence wrapper therefore supplies both required irreducibility levels. The local proof that a nonempty Littlestone-dimension-zero binary class is a singleton is valid: two distinct functions would disagree somewhere and shatter a depth-one tree.
- Cited-result and assumption audit: The accepted dependency labels exist and their current hashes match. The independently checked source confirms Definition 4.2 label `def: p-decomposition`, Definition 4.3 label `def: essential hypothesis`, the leaf scale, and actual-function equality in every optimal decomposition. No trace equality or properness claim is substituted.
- Rigor checklist: Quantifiers over the selected stage, witnessing block, optimal decomposition, and degree-attaining leaf are retained. At (d=1), accepted (n_0\ge2) gives (n_0d=n_0\ge d+1), including (\widehat r=0) and (t=d). At decomposition dimension zero, (t=0), the leaf is a nonempty singleton, and the equality remains equality on (X).
- Local adversarial test: The proof survives multiple optimal decompositions, infinite (C), duplicate sample traces, (d=1), and a DDim-zero selected parent. An empty current class cannot witness actual list membership.
- Contribution to target step: It proves the exact object-target bridge and both irreducibility interfaces needed for empirical utility and fixed-class membership.
- Verdict: PASS
- Repair direction: None.

### unit_002: Full-master error of every current-class member

- Statement fidelity: The lemma proves the exact parent-class master-error interface required by the accepted sketch, uniformly over all (r\in\{0,\ldots,d\}), blocks, and members of (H_i^r), conditional only on the earlier-derived event (E_{\rm good}).
- Proof validity: Membership gives (e_i(g)\le\rho^{r+1}\gamma\le\gamma). If (e_S(g)\le\gamma/3), the target (e_S(g)\le2\gamma) is immediate, with equality at the guard handled in this branch. If (e_S(g)>\gamma/3), the high-error clause gives
  [
  e_i(g)\ge\left(1-\frac1{5d}\right)e_S(g),
  ]
  and hence
  [
  e_S(g)\le\frac{\gamma}{1-1/(5d)}
  =\frac{5d}{5d-1}\gamma\le\frac54\gamma<2\gamma.
  ]
  The two cases are exhaustive and every denominator is positive.
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-006-source-map} supplies the exact class threshold. Equation (5) is the accepted event, and (g\in H_i^r\subseteq C) puts the function within its universal quantifier. Event membership is a local conditional hypothesis, not a primitive assumption.
- Rigor checklist: The direction of the relative-deviation inequality is correct, no independence is used, and the argument is uniform through stage (r=d). At (d=1), the worst factor is exactly (5/4). The low/high guards treat (e_S(g)=\gamma/3) correctly.
- Local adversarial test: Zero master error, the guard boundary, (d=1), a DDim-zero leaf member, repeated points, and dependent partition blocks do not alter the deterministic implication.
- Contribution to target step: It proves (e_S(g)\le2\gamma) for every member of the selected leaf's parent class and hence for every (g\in G).
- Verdict: PASS
- Repair direction: None.

### unit_003: Irreducibility forbids the high-error SOA restriction

- Statement fidelity: The lemma states the exact deterministic implication needed downstream: a nonempty (n_0)-irreducible class under the fixed-SOA convention, exact identity (f=\operatorname{SOA}_G) on (X), and memberwise empirical error at most (2\gamma) imply the same empirical bound for (f). It correctly permits improper (f) and repeated indexed points.
- Proof validity: If (e_S(f)>2\gamma), any (g\in G) agreeing with (f) on all indexed sample coordinates has the identical error vector and violates the memberwise premise. Thus the fixed-(f) restriction through all (n_0) points is empty. Since (f=\operatorname{SOA}_G) on (X), (n_0)-irreducibility says this same restriction has Littlestone dimension (\operatorname{LD}(G)\ge0), contradicting emptiness. Repeated points are legal because the definition quantifies over point sequences and always uses the one fixed SOA function.
- Cited-result and assumption audit: The frozen source identity and labels are correct. Definition `def: irreducible` uses the one fixed (\operatorname{SOA}_G) at every point, and the proof of `thm: DP-ERM-littlestone` contains exactly the empty-restriction contradiction pattern. However, the submitted current-notation restatement of that definition is malformed at line 202, so this audit cannot pass as written even though the direct mathematical argument is valid.
- Rigor checklist: The proof handles arbitrary labels, repeated points, empirical error zero, and (\operatorname{LD}(G)=0). It does not assume (f\in C), recompute SOA after restrictions, or change the strict high-error guard.
- Local adversarial test: Conflicting labels on repeated occurrences still give identical error indicators for functions agreeing on the repeated point. When (G) has dimension zero, unit_001's singleton argument independently yields the conclusion. No counterexample to the mathematical implication was found.
- Contribution to target step: Once the source restatement is rendered correctly, the lemma converts the leaf identity, (n_0)-irreducibility, and parent-member error bound into (e_S(\widehat f)\le2\gamma).
- Verdict: REVISE_STEP
- Repair direction: Correct `\!left(` to `\!\left(` in equation (6); do not change the lemma or its proof.

## Hidden Subclaim Scan

No independent mathematical subclaim is missing from the three-unit map. Exact selected-function identity and the degree-attaining leaf are in unit_001; the full (E_{\rm good}) case split is in unit_002; and the fixed-SOA empty-restriction contradiction is in unit_003. The DDim-zero singleton argument is explicitly included in unit_001. Defining the fixed family

\[
\widehat C_{d+1}=\{\operatorname{SOA}_F:F\subseteq C\text{ is }(d+1)\text{-irreducible}\}
\]

and inserting unit_001's witness is a direct set-membership inference, not a hidden lemma. Bare unit IDs appear only alongside theorem-style references as traceability handles.

## Target Claim Audit

The three mathematical units establish the exact accepted claim on (E_{\rm good}\cap\mathcal E_{\rm mech}): the learner output is the same function on all (X) as (\operatorname{SOA}_G) for a degree-attaining (G\subseteq H_i^{\widehat r}\subseteq C); the leaf is (p_{\widehat r}2^{d-t})-, (n_0)-, and ((d+1))-irreducible; and (e_S(\widehat f)\le2\gamma=\alpha/8). This gives exact membership in the fixed (\widehat C_{d+1}) consumed by step_011. The proof makes no population-error, properness, or trace-quotient claim.

Quantifiers, conditional probability mode, actual-function identity, and the (d=1), DDim-zero, infinite-class, and repeated-point boundaries all pass. Acceptance is nevertheless blocked because the submitted artifact corrupts one cited-definition display and the central scale display in Target-Step Assembly.

## Explicit Rate Audit

This step is rate-bearing only through the exact accuracy and scale interfaces. It exposes (d,n_0,r,t,p_r,\alpha,\gamma), retains the accepted trace and mechanism confidence charges, and introduces no hidden constant. The deterministic proof is conditional on the already-produced events, uses a fixed sample and one of (d+1) stages, and measures exact function equality, empirical binary error, and irreducibility. The displayed (E_{\rm good}) inequalities and (2\gamma=\alpha/8) discharge every absorption. The intended scale inequality has already been proved correctly in unit_001, but its malformed repetition in equation (20) must be repaired before the downstream interface is valid as an artifact.

## Notation Surface Audit

The helper-object classification is otherwise sound and economical. The public-facing interface is (\widehat f\in\widehat C_{d+1}) and (e_S(\widehat f)\le\alpha/8). Stage, block, leaf, dimension, and scale witnesses are appendix-local; the restricted class in unit_003 is proof-local. All constants and events have accepted provenance. The two malformed command tokens in Blocking Issues are local notation defects; no symbol collision, actual-function/trace ambiguity, or unclassified helper remains.

## Target-Step Assembly Audit

Named Proposition~\ref{prop:step-010-exact-leaf-witness}, Lemma~\ref{lem:step-010-parent-master-error}, and Lemma~\ref{lem:step-010-irreducible-contradiction}, together with the two accepted dependencies, mathematically imply the exact target. Equation (21) correctly exports (e_S(\widehat f)\le\alpha/8), and equation (22) correctly exports exact (\widehat C_{d+1}) membership. However, equation (20) writes `ge` rather than `\ge`, so the assembly itself does not correctly render the theorem-critical scale relation it claims to use. This is a local assembly transcription flaw in the step proof.

## Review Rationale

`REVISE_STEP` is the smallest sound status. No dependency proof, accepted sketch interface, source identity, or substantive local argument needs to change: all requested adversarial cases and exact source mappings pass. The current proof artifact nevertheless contains two malformed mathematical command tokens, one in the cited irreducibility definition consumed by unit_003 and one in the target-step scale export consumed by step_011. Both repairs are confined to `/proof-step step_010`; a fresh review is required after the corrected proof is produced.
