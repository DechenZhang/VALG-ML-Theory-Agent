# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_007
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_007/proof.md` (SHA-256 `01ecfd36ea92def52fa12c83dd20b21d79af1faf6b7b9427843d29e2fc6aea34`)

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_007

## Blocking Issues

1. **Location:** `## Target Step Claim`, first sentence. **Defect:** the phrase “the localization transcript with \(c\in\mathcal E_{\rm loc}\)” treats the scalar \(c\) as an element of the event \(\mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\}\). The operative local results correctly use “almost surely on \(\mathcal E_{\rm loc}\)” and condition on \(\mathscr L_{\rm loc}\), but the controlled target statement itself is ill-typed. **Downstream effect:** the claim surface does not unambiguously distinguish a transcript event from a scalar condition, despite the binding event/scalar audit. **Smallest repair direction:** replace the phrase by “conditional on \(\mathscr L_{\rm loc}\), almost surely on \(\mathcal E_{\rm loc}\)” or by the equivalent scalar condition \(|c-\mu|\leq50\sigma\); do not change the claim, scope, or dependencies.
2. **Location:** `unit_003`, the theorem-style statement of Lemma~\(\ref{lem:step-007-median}\), and its mismatching row in `## Local Lemma Map`. **Defect:** the theorem statement names only Assumption~\(\ref{assump:parameter-domain}\) and Lemma~\(\ref{lem:step-007-block}\). That block lemma supplies the marginal bounds \(\mathbb E[I_g\mid\mathscr L_{\rm loc}]\leq1/4\), but it does not state conditional independence of the bad-group indicators. The proof obtains independence from Proposition~\(\ref{prop:step-007-conditional-iid}\), which is not named in the lemma statement; the map row mentions independence only as an unnamed condition. **Downstream effect:** under the lemma's written hypotheses, perfectly correlated bad indicators with common bad probability \(1/4\) satisfy every marginal block bound but make the median fail with probability \(1/4\), contradicting the claimed \(\delta/2\) bound for every \(\delta<1/2\). Thus Hoeffding and the target assembly are not licensed by the self-contained local statement even though the proof body uses the correct source. **Smallest repair direction:** add Proposition~\(\ref{prop:step-007-conditional-iid}\) and the fixed disjoint-group consequence to the theorem-style statement, and make the local-lemma-map row match it exactly. The displayed majority and Hoeffding derivation need not change.

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: The proposition states the required full-localization-transcript conditional iid law, exact common mean \(\theta(c)\), and successful-transcript variance bound for the exact setting statistic. It does not claim a law conditional on frozen refinement public coins.
- Proof validity: The accepted step_001 product kernel gives \(Q^{\otimes N_{\rm ref}}\) after conditioning on \(\mathscr L_{\rm loc}\). Applying the common measurable map \(w(c,\Xi_i)\) therefore gives conditionally iid \(W_i(c)\). The proof identifies the mean and variance through the same explicit kernel rather than using the false general rule that enlarging a conditioning sigma-field preserves variance.
- Cited-result and assumption audit: Assumptions~\(\ref{assump:independent-samples}\) and \(\ref{assump:precommitted-protocol}\) supply the product law and timing. The accepted step_001, step_003, and step_005 conclusions are restated in current notation with the exact objects and successful-output restriction.
- Rigor checklist: The conditional moments average over samples, levels, colors, branches, types, masks, and dithers. The event \(\mathcal E_{\rm loc}\) is \(\mathscr L_{\rm loc}\)-measurable; no scalar is used as an event in this unit. Conditional square integrability and the zero-variance implication are explicit.
- Local adversarial test: Freezing the full localization transcript fixes only \(c\) and its decoder path. It does not freeze any refinement mask or dither. At \(v(c)=0\), every \(W_i(c)=\theta(c)\) under the conditional kernel, as claimed.
- Contribution to target step: It supplies the exact common-law and disjoint-group independence interface needed by Chebyshev and Hoeffding.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: The lemma uses the exact setting ceiling \(B_{\rm ref}=\lceil\beta_kA_k\rceil\), the exact radius \(\epsilon/2\), and a legal k-only choice \(\beta_k\geq16C_k^{\rm var}\).
- Proof validity: Conditional iid gives variance \(v(c)/B_{\rm ref}\). Chebyshev yields \(4v(c)/(B_{\rm ref}\epsilon^2)\), and \(B_{\rm ref}\geq\beta_k\sigma^kZ_S/\epsilon^2\) gives \(4C_k^{\rm var}/\beta_k\leq1/4\). The numerator, radius, and ceiling directions are all correct.
- Cited-result and assumption audit: Proposition~\(\ref{prop:step-007-conditional-iid}\) supplies both conditional iid and the variance bound. The exact identity \(A_k=\sigma^kZ_S/\epsilon^2>0\) is supplied by accepted step_006, so \(B_{\rm ref}\geq1\) and the chosen constant has only k-dependence.
- Rigor checklist: The calculation is transcriptwise on \(\mathcal E_{\rm loc}\), treats each fixed preassigned group, and takes no cell or path union bound. The proof separately handles \(v(c)=0\).
- Local adversarial test: Equality \(B_{\rm ref}=\beta_kA_k\), a strict Chebyshev failure boundary, and an arbitrarily small positive \(A_k\) all preserve the displayed upper bound; accepted step_006 additionally gives the k-only lower bound used for later ceiling absorption.
- Contribution to target step: It supplies the required per-group bad probability and exact block-size interface.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: The numerical claim, odd order-statistic convention, radius, and confidence target match the binding row, but the theorem-style statement omits the named conditional-independence source needed for that claim. Its map row and subsection statement therefore do not match under the local-unit contract.
- Proof validity: Conditional on adding Proposition~\(\ref{prop:step-007-conditional-iid}\) to the statement basis, the body is correct. Median failure implies at least \((G+1)/2\) strict bad groups; exact values at \(\theta(c)\pm\epsilon/2\) are successes; repeated group means are harmless; and Hoeffding at deviation \(G/4\) gives \(e^{-G/8}\).
- Cited-result and assumption audit: Lemma~\(\ref{lem:step-007-block}\) supplies only marginal bad probabilities. Proposition~\(\ref{prop:step-007-conditional-iid}\) supplies independence of disjoint group tuple families and hence their indicators, but appears only in the proof body rather than the theorem statement.
- Rigor checklist: The choice \(\alpha_k=4\) and \(G_\delta=2\lceil4\log(8/\delta)\rceil+1\) gives \(G_\delta\geq8\log(8/\delta)+1\), so \(e^{-G_\delta/8}\leq e^{-1/8}\delta/8<\delta/2\). The body handles every odd count, zero variance, and \(\delta\uparrow1/2\).
- Local adversarial test: Taking all \(I_g\) equal to one Bernoulli variable of mean \(1/4\) satisfies the theorem statement's currently named marginal premise but makes every majority fail with probability \(1/4\). This isolates the missing conditional-independence premise.
- Contribution to target step: It is the sole confidence-amplification unit; its statement must expose the iid source before its conclusion can be certified downstream.
- Verdict: REVISE_STEP
- Repair direction: Name Proposition~\(\ref{prop:step-007-conditional-iid}\) in the theorem statement and align the lemma-map statement.

### unit_004: proposition

- Statement fidelity: The proposition states the exact conditional refinement event, failure budget \(\delta/2\), and total error \(3\epsilon/4<\epsilon\), while retaining the conditioning for step_008.
- Proof validity: On \(\mathcal E_{\rm ref}\), the median error is at most \(\epsilon/2\); accepted step_006 supplies the sole target-transfer residual at most \(\epsilon/4\). The triangle inequality counts each once and gives \(3\epsilon/4\). The resulting total-error event is contained in \(\mathcal E_{\rm ref}^c\).
- Cited-result and assumption audit: Proposition~\(\ref{prop:step-006-tail}\) and Lemma~\(\ref{lem:step-007-median}\) are named before use. No localization-distance term, empirical tail event, or additional residual is introduced.
- Rigor checklist: The indicator-valued interface \({\bf1}_{\mathcal E_{\rm loc}}\Pr(\mathcal E_{\rm ref}^c\mid\mathscr L_{\rm loc})\leq(\delta/2){\bf1}_{\mathcal E_{\rm loc}}\) is correctly measurable and ready for tower integration. Failure thresholds are strict, so equality at \(3\epsilon/4\) is handled correctly.
- Local adversarial test: On support in selected \(J_0\), higher retained terms and the tail residual are exactly zero; at \(D\{m_0\}=1\), every statistic, group mean, median, and refinement error is seedwise zero.
- Contribution to target step: It provides the exact conditional-to-unconditional indicator interface and same-target assembly.
- Verdict: PASS
- Repair direction: None independent of the unit_003 statement repair.

## Hidden Subclaim Scan

The product-kernel lift from scalar conditioning to full-transcript conditioning, common mean and variance, group-mean variance, Chebyshev scaling, disjoint-group independence, bad-indicator accumulation, exact median majority implication, Hoeffding exponent, tail composition, conditional indicator interface, and both baselines all appear in mapped units. The only unsupported statement-level subclaim is conditional independence in unit_003: it is correctly proved from unit_001 in the body but omitted from the theorem-style assumption basis. No cellwise event, pathwise union bound, frozen-refinement-seed guarantee, additional tail term, global diagnostic, or external citation is used.

## Target Claim Audit

The body proves the binding numerical claim under the intended full-transcript conditioning: iid \(W_i(c)\) with mean \(\theta(c)\), group failure at most \(1/4\) at radius \(\epsilon/2\), median failure at most \(\delta/2\), and total error at most \(3\epsilon/4<\epsilon\). It preserves every quantifier, the joint refinement-randomness probability mode, fixed horizon, absolute norm, and k-only constant dependence. The target header's scalar/event phrase is nevertheless ill-typed, and unit_003's written assumptions do not imply its conclusion without the omitted iid proposition, so the current artifact cannot certify the claim.

The current dependency proof hashes are `3a2ebe803850bbf2555a703a69cf406adbeda503710d10de19f9eb286907443a` (step_001), `ddcf7eacf03321017a37385ee1c9f27df6c27dd5f92c7f0dc1e3a1258e5432d6` (step_003), `afebc25c4a8ca7376c3ea7206f432cbd5d912235a533bb5c2d04868453e72acd` (step_005), and `03db63c21866407fd8794d8ebadfa3c1d87f89ef0c1ee27bb0e3d65b61579292` (step_006). Their current matching review hashes are `1ca80220cdd1e5461b633723557ecfe7e95f0dc293ecb78163dd8488790ff8cc`, `b8ba2452221e43bff2ac130021d751f3f3ad5ad5c5db07113dc2c36e0fdcafa6`, `840d53f892d3ad04cf523b5941d11fada8aad98cf9f22e5daa6812b688c06feb`, and `99cbf02399bb67022e1ab14ada9529f39a9948254bbf62a9fa622cf97a6af7f2`; each records `ACCEPTED` for the matching proof and producer attempt.

## Explicit Rate Audit

This step is rate-bearing and otherwise preserves the full interface. It exposes \(k,\sigma,\epsilon,\delta,Z_S,A_k,C_k^{\rm var},\beta_k,\alpha_k,B_{\rm ref},G_\delta,c,\theta(c)\); hidden constants depend only on fixed \(k\) and its design choices. The probability mode is high probability conditional on \(\mathscr L_{\rm loc}\) over all refinement samples and protocol randomness; the horizon is fixed at \(N_{\rm ref}=G_\delta B_{\rm ref}\); and the norm is scalar absolute error. The proof verifies
\[
  \beta_kA_k\leq B_{\rm ref}<\beta_kA_k+1,
  \qquad
  8\log(8/\delta)+1\leq G_\delta<8\log(8/\delta)+3,
\]
uses the accepted k-only lower bound on \(A_k\), and displays every Chebyshev, Hoeffding, confidence, ceiling, and bias inequality. It takes no cell/path union bound and correctly leaves unconditional integration and public sample-count absorption to step_008. No rate repair is required.

## Notation Surface Audit

The public-facing event \(\mathcal E_{\rm ref}\) and conditional indicator inequalities are minimal downstream outputs. The tuple \(\Xi_i\), kernel \(Q\), map \(w\), variance \(v(c)\), bad indicators, failure count, and order statistics are correctly proof-local. Constant provenance is explicit. The only notation-surface defect is the target header's use of \(c\in\mathcal E_{\rm loc}\); every operative local statement correctly distinguishes the scalar condition, the transcript sigma-field, and the event.

## Target-Step Assembly Audit

The assembly cites all four local results by theorem-style names and labels, retains refinement randomness, applies the exact block and group ceilings, and counts the tail residual once. Its mathematical flow is correct because it explicitly invokes the conditional-iid proposition before the median argument. Under the artifact contract, however, that prose cannot repair unit_003's theorem statement: the median lemma itself must name the independence source on which Hoeffding depends. After that statement-only repair and the event/scalar header correction, the named results jointly imply the exact target with no sketch, dependency, or rate change.

## Review Rationale

The reviewed proof and all accepted dependency pairs are hash-matched and stable. The conditional kernel, variance, Chebyshev constant, odd-median implication, Hoeffding exponent, confidence choice, ceilings, conditional indicator interface, target residual, and degenerate/baseline cases are mathematically correct. The smallest sound outcome is nevertheless `REVISE_STEP`: one controlled target phrase is ill-typed, and the essential confidence-amplification lemma omits the conditional-independence result from its self-contained theorem statement. Both repairs are local to `step_007`; neither the accepted sketch nor any dependency interface must change.
