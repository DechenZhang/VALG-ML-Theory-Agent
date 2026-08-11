# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_014
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_014/proof.md, SHA-256 3414246c7c99bb7e1449280c46bc42f78f154f636657b8ed1dc7ae229a03afa0

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Simultaneous Borel precommitment of the complete query bank

- Statement fidelity: Proposition~\(\ref{prop:step-014-simultaneous-precommitment}\) proves exactly the query-measurability and simultaneous-precommitment part of the accepted step_014 row. Its assumptions are the primitive parameter and seed-timing conditions plus the current accepted step_001, step_003, and step_005 interfaces; it does not assume a realized center, response, or success event.
- Proof validity: In the source trivial branch, the localization bank is empty. In the nontrivial branch, accepted step_001 supplies a deterministic finite Borel localization bank. For each refinement seed \((j,a,b,u)\), accepted step_005 supplies the Borel set \(\{x:F_{j,a,b}(x)/h_j\geq u\}\) and joint sample-seed measurability. The exact scale family, probabilities, and deterministic counts depend only on known parameters and fixed accepted constants. Drawing the finite vector of all refinement seeds before revealing any response therefore fixes the localization and refinement banks simultaneously.
- Cited-result and assumption audit: The frozen step_001, step_003, and step_005 proof/review hashes match the controller-supplied pairs. Their accepted conclusions discharge Borel localization queries, finite positive level-law data, Borel refinement queries, and primitive seed timing. No external theorem or global diagnostic is used directly in this step.
- Rigor checklist: The proof covers both localization branches, all finitely many indices, the inclusive dither endpoints, and every realized seed. No query contains \(c\), an earlier bit, a block statistic, or a stopping event. Finiteness follows from the exact deterministic \(N_{\rm loc}\) and \(N_{\rm ref}\), not from a realized event.
- Local adversarial test: At \(2\lambda=20\sigma\) and throughout the zero-query branch, the empty localization bank is legal. At \(u=-1\) or \(u=2\), the refinement query is respectively \(\mathbb R\) or \(\varnothing\), both Borel and precommitted. Changing the eventual decoded \(c\) cannot change any bank member.
- Contribution to target step: Establishes exact Borel simultaneous precommitment for the complete finite protocol.
- Verdict: PASS
- Repair direction: None

### unit_002: Exact one-bit, decoder-only, fixed-horizon protocol legality

- Statement fidelity: Proposition~\(\ref{prop:step-014-protocol-legality}\) states the exact communication and horizon interface required by the accepted row: \(n=N_{\rm loc}+qs\) independent samples, one transmitted bit from every used sample, decoder-only use of \(c\) and selected objects, and a deterministic non-stopping horizon.
- Proof validity: Every localization sample transmits only \(Y_r=\mathbf1\{X_r\in\mathcal B_r\}\), and every refinement sample transmits only \(Y_i=\mathbf1\{X_i\in\mathcal A_i\}\). The baseline \(\beta_i(c)=\mathbf1\{F_{L_i,A_i,B_i}(c)/h_{L_i}\geq U_i\}\) is recomputed from the decoded center and public seed; it is not a second response. Accepted Borel selectors make the selected pair and all subsequent centering, reweighting, block, and median operations decoder-measurable.
- Cited-result and assumption audit: Accepted step_001 supplies the exact branchwise localization count and always-defined center; step_003 supplies deterministic scales and level law; step_004 supplies Borel selectors; step_005 supplies the precommitted response and decoder-baseline interface; and step_012 supplies deterministic \(V_k,s,q,N_{\rm ref}\) and fixed blocks. These are precisely the named inputs.
- Rigor checklist: The sample blocks are disjoint and iid under Assumption~\(\ref{assump:iid-independent-randomness}\). Neither the pair-match indicator, public dither, inverse probability, nor decoder baseline is a transmitted bit. All counts are functions of known parameters, so no transcript-dependent sample count, early exit, stopping time, or fixed-to-random horizon conversion occurs.
- Local adversarial test: In the zero-query localization branch no nonexistent localization sample or message is charged. A decoder may change \(c\) after seeing the localization transcript, but this changes only selection and centering of already queried refinement bits. The same conclusion holds at selector and quantizer boundaries because the accepted selectors are Borel and unique.
- Contribution to target step: Proves exact one-bit-per-used-sample communication, decoder-only center use, full noninteraction, and deterministic fixed horizon.
- Verdict: PASS
- Repair direction: None

### unit_003: Three-regime variance specialization

- Statement fidelity: Lemma~\(\ref{lem:step-014-variance-specialization}\) proves the exact public specialization \(V_k/\epsilon^2\leq B_kg_k(\sigma/\epsilon)\) required by the row, with separate \(k>2\), \(k=2\), and \(1<k<2\) calculations and explicit auxiliary empty-group handling.
- Proof validity: For \(k>2\), division by \(\epsilon^2\) gives \((3072+C_{k,>}^{\rm c})t^2\). At \(k=2\), \(\log t\geq1\) absorbs the logarithm-free fine term into the single accepted coarse accuracy logarithm, yielding \((3072+C_2^{\rm c})t^2\log t\). For \(1<k<2\), \(H<2b_k\sigma t^{1/(k-1)}\) gives
  \[
  \frac{\sigma^kH^{2-k}}{\epsilon^2}
  <(2b_k)^{2-k}t^{2+(2-k)/(k-1)}
  =(2b_k)^{2-k}t^{k/(k-1)},
  \]
  while \(t^2\leq t^{k/(k-1)}\). All exponent and dimensional cancellations are correct.
- Cited-result and assumption audit: Accepted step_009 supplies the exact fine raw-square constant \(3072\); accepted step_010 supplies the three exact coarse constants and one-log critical form; accepted step_003 supplies \(t\geq e\), \(H<2H_*\), finite \(b_k\), and group semantics; accepted step_012 supplies the exact definition of \(V_k\). No variance term is silently replaced.
- Rigor checklist: Every coefficient in \(B_k\) is positive and finite for its fixed regime and depends only on \(k\). Replacing a group indicator by one is a valid upper bound because the corresponding term is nonnegative; an absent group remains exactly zero in the implemented certificate. At least one group is present, so \(V_k>0\).
- Local adversarial test: At \(k=2\) no limiting argument is used and there is exactly one \(\log(\sigma/\epsilon)\). At \(\epsilon=c_k\sigma=e^{-1}\sigma\), \(t=e\) and \(\log t=1\). Open-regime constants may grow near \(k=2\), which is legal because \(k\) is fixed.
- Contribution to target step: Converts the accepted technical variance certificate into exactly the three public accuracy multipliers.
- Verdict: PASS
- Repair direction: None

### unit_004: Exact refinement ceilings and confidence absorption

- Statement fidelity: Lemma~\(\ref{lem:step-014-refinement-count}\) starts from the exact accepted choices of \(s\) and odd \(q\) and proves \(N_{\rm ref}\leq R_kg_k(t)L\), including both ceilings, all additive ones, the confidence-log substitution, and the boundary \(\delta\uparrow1/2\).
- Proof validity: With \(L=\log(1/\delta)>\log2\), the displayed inequalities give \(\log(4/\delta)\leq3L\) and
  \[
  q\leq16\log(4/\delta)+3
  \leq(48+3/\log2)L=Q_0L.
  \]
  The variance lemma and \(\lceil x\rceil\leq x+1\) give \(s\leq32B_kg_k(t)+1\). Since every regime has \(g_k(t)\geq1\), this becomes \(s\leq S_kg_k(t)\). Multiplication of the nonnegative bounds gives the claimed exact refinement absorption.
- Cited-result and assumption audit: Accepted step_012 supplies exactly \(s=\lceil32V_k/\epsilon^2\rceil\), \(q=2\lceil8\log(4/\delta)\rceil+1\), and \(N_{\rm ref}=qs\). Lemma~\(\ref{lem:step-014-variance-specialization}\) supplies the only technical simplification. No probability conversion or sample-count approximation is imported.
- Rigor checklist: The doubled ceiling error and outer oddness \(+1\) are both included in the explicit \(+3\). The block-size ceiling contributes its explicit \(+1\). Positivity of \(L\) and \(g_k(t)\) makes all divisions and absorptions legal. The result is deterministic and fixed-horizon.
- Local adversarial test: As \(\delta\uparrow1/2\), \(L\downarrow\log2>0\), so no ceiling is charged to a vanishing target factor. At \(k=2\), \(g_2(t)=t^2\log t\) contains exactly one accuracy logarithm and the multiplication by \(L\) contributes exactly the required confidence logarithm.
- Contribution to target step: Absorbs every exact refinement allocation term into the public confidence-bearing rate summand.
- Verdict: PASS
- Repair direction: None

### unit_005: Rate Specialization Bridge for the fixed nonadaptive protocol

- Statement fidelity: Proposition~\(\ref{prop:step-014-rate-bridge}\) supplies the theorem-ready count \(n\leq C_kr_k\) and consumes the current accepted step_013 Unit attempt 2 PAC interface without changing its estimator, norm, probability mode, horizon, or population scope.
- Proof validity: Accepted step_001 gives \(N_{\rm loc}\leq1+10000a+30000L\). Since \(g_k(t)\geq1\) and \(L\geq\log2\), the localization ceiling and confidence term satisfy
  \[
  N_{\rm loc}\leq10000a+L_0g_k(t)L.
  \]
  Adding \(N_{\rm ref}\leq R_kg_k(t)L\) and using nonnegativity of \(a\) and \(g_k(t)L\) gives
  \[
  n\leq10000a+(L_0+R_k)g_k(t)L
  \leq C_k(a+g_k(t)L)=C_kr_k.
  \]
  The definition \(C_k=\max\{10000,L_0+R_k\}\) is sufficient and exact.
- Cited-result and assumption audit: The step_001 and step_013 proof/review hashes match the frozen pairs. Step_013 Unit attempt 2 supplies
  \(\sup_{D\in\mathcal D(k,\lambda,\sigma)}\Pr\{|\widehat\mu-\mu(D)|>\epsilon\}\leq\delta/2\leq\delta\)
  unconditionally over all samples and public randomness, in absolute value, for the full unrestricted class. The bridge performs no new union bound and spends none of the remaining slack.
- Rigor checklist: The final constants \(B_k,Q_0,S_k,R_k,L_0,C_k\) are explicit, positive, finite, and depend at most on fixed \(k\). The fixed quantities, hidden-constant exclusions, unconditional probability mode, deterministic horizon, and scalar absolute-value norm are all declared. No dependence on \(D,c,J,H,s,q\), a transcript, or a realization is hidden in \(C_k\).
- Local adversarial test: At \(\lambda=\sigma\), \(a=0\) and the source count is exactly zero, while the positive refinement term absorbs all remaining ceilings. The same exact zero-query equality holds throughout \(2\lambda\leq20\sigma\). At \(\epsilon=e^{-1}\sigma\), all public multipliers remain at least one; as \(\delta\uparrow1/2\), the confidence multiplier stays positive.
- Contribution to target step: Establishes the exact public \(r_k\) bridge and attaches it to the unchanged unconditional full-class PAC theorem.
- Verdict: PASS
- Repair direction: None

### unit_006: Exact baseline invariance of the final certificate

- Statement fidelity: Proposition~\(\ref{prop:step-014-baseline}\) states every inherited baseline relevant to the final closure: exact zero-query localization, exact empty-group zeros and active-group normalization, exact zero displacement of all centered objects, and exact estimator equality for a point mass when the generated center equals its mean.
- Proof validity: Accepted step_001 gives \(N_{\rm loc}=0\) and \(c=0\) in the source trivial branch. Accepted step_003 removes absent groups before any denominator and gives mass \(1/2\) to each theorem group. Direct substitution at \(x=c\) gives \(D_j^c(c)-D_j^c(c)=T_c(c)=R_0^c(c)=R_H^c(c)=0\). Accepted step_005 gives pointwise equality of the encoder threshold and decoder baseline for every dither value, hence \(Z_i(c)=0\) pathwise when \(X_i=c\).
- Cited-result and assumption audit: The baseline claims use exactly the accepted step_001, step_003, step_004, step_005, step_009, step_010, and step_012 outputs named in the statement. The rate inequalities only upper-bound counts and moments; they do not alter the implemented law, estimator, exact absent-group values, or centered identities.
- Rigor checklist: If \(D=\delta_\mu\) and the generated center is \(c=\mu\), every refinement sample equals the same center, all pseudo-observations and fixed block means are zero, the odd median is zero, and \(\widehat\mu=\mu\). No \(O(h_j)\), positive-radius, conditional-stopping, or fictitious-message surrogate replaces an exact equality.
- Local adversarial test: The argument remains pointwise at selector boundaries, for every level/offset/dither realization, for either auxiliary absent group, and in the zero-query source branch. A positive design certificate \(V_k\) may produce a conservative fixed block size but does not disturb the exact zero estimator trajectory.
- Contribution to target step: Preserves every inherited theorem-facing baseline through the public rate and protocol closure.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the six-unit map. Complete-bank Borel measurability and simultaneous seed timing are in unit_001. Exact per-sample communication, the public-randomness baseline, decoder-only selectors and reweighting, and deterministic horizon are in unit_002. All three \(V_k\) specializations, including the low-\(k\) exponent and single critical logarithm, are in unit_003. Every refinement ceiling and confidence term is in unit_004. Localization absorption and unchanged PAC composition are in unit_005. Zero-query, empty-group, zero-displacement, dither, and point-mass fixed-point baselines are in unit_006.

The target assembly invokes only the six theorem-style named local results and the eight current accepted dependency pairs. It does not rely on a subsection title, a bare unit ID, an unreviewed standard fact, a global diagnostic, a tracker, or a hidden generated-event assumption. The only direct arithmetic facts are explicitly displayed ceiling, logarithm, monotonicity, and exponent calculations.

## Target Claim Audit

The submitted proof establishes the exact accepted step_014 row. The complete two-block protocol consists of simultaneously precommitted Borel queries, transmits exactly one bit from each of exactly \(n=N_{\rm loc}+N_{\rm ref}\) independent samples, uses the localization output and all selected/centered objects only at the decoder, and has a deterministic non-stopping horizon. Its exact count obeys

\[
n\leq C_kr_k(\lambda,\sigma,\epsilon,\delta)
\]

with a positive finite constant depending only on fixed \(k\). The current accepted step_013 Unit attempt 2 conclusion is retained literally: unconditional probability over all samples and public randomness, absolute-value norm on \(\mathbb R\), deterministic horizon, and supremum over the complete unrestricted \(\mathcal D(k,\lambda,\sigma)\) population class. The proof adds no support, symmetry, density, exact-moment, success-event, or conditional theorem assumption.

## Explicit Rate Audit

The proof exposes fixed \(k\), \(\lambda,\sigma,\epsilon,\delta,D,H,V_k,s,q,N_{\rm loc},N_{\rm ref},n\), and the proof-local variables \(t=\sigma/\epsilon\), \(L=\log(1/\delta)\), and \(a=\log(\lambda/\sigma)\). It identifies fixed quantities and states that hidden constants may depend only on \(k\), not on any problem instance, law, center, transcript, scale count, horizon component, or realization. The probability mode is unconditional high probability, the horizon mode is deterministic fixed horizon, and the norm is absolute value.

Every required specialization and absorption is displayed: \(V_k/\epsilon^2\leq B_kg_k(t)\); \(\log(4/\delta)\leq3L\); \(q\leq Q_0L\); \(s\leq S_kg_k(t)\); \(N_{\rm ref}\leq R_kg_k(t)L\); \(1\leq(\log2)^{-1}g_k(t)L\); and \(N_{\rm loc}\leq10000a+L_0g_k(t)L\). The subquadratic identity \(2+(2-k)/(k-1)=k/(k-1)\) is correct. At \(k=2\), the sole accuracy logarithm is the one factor in \(g_2(t)=t^2\log t\). The exact source zero-query branch, \(\lambda=\sigma\), \(\epsilon=c_k\sigma\), \(\delta\uparrow1/2\), and auxiliary empty/nonempty groups all satisfy the displayed inequalities without an unstated threshold.

The named Rate Specialization Bridge states the auxiliary choices, technical conditions, variance specialization, ceiling and confidence absorption, probability mode, final rate, and exact hidden-constant dependence. It also preserves the accepted baseline reductions rather than replacing them with a weaker rate-sized remainder.

## Notation Surface Audit

All setting-defined protocol and theorem objects retain their meanings. The only new public-facing object is the explicit final constant \(C_k\). The reusable rate helpers \(g_k,B_k,Q_0,S_k,R_k,L_0\) are correctly classified as appendix-local; \(t,L,a\) and \(\beta_i(c)\) are proof-local. Every helper is directly defined from setting quantities or frozen accepted constants, and none hides positivity, finiteness, group presence, confidence, or scale dependence.

A literal command scan found no malformed bare `ref`, `label`, `overline`, `widehat`, `mathcal`, `operatorname`, `dfrac`, or `boxed` command. The six theorem-style labels are unique, all internal references retain their leading backslashes, braces and inline/display math delimiters are balanced, and equation tags (14.1)--(14.38) are unique and ordered. The displayed estimator, group indicators, low-\(k\) powers, logarithms, and absolute-value probability event use the exact accepted notation.

## Target-Step Assembly Audit

Proposition~\(\ref{prop:step-014-simultaneous-precommitment}\) establishes complete-bank Borel precommitment. Proposition~\(\ref{prop:step-014-protocol-legality}\) establishes exact communication, decoder-only use, and deterministic horizon. Lemma~\(\ref{lem:step-014-variance-specialization}\) derives the exact three public regime multipliers, and Lemma~\(\ref{lem:step-014-refinement-count}\) absorbs every refinement ceiling and confidence term. Proposition~\(\ref{prop:step-014-rate-bridge}\) adds the exact source cost and unchanged accepted PAC statement to produce \(n\leq C_kr_k\). Proposition~\(\ref{prop:step-014-baseline}\) preserves every exact baseline. These named results and the eight frozen accepted dependency pairs jointly imply the binding claim with no missing bridge, assumption, dependency, or unreviewed lemma.

## Review Rationale

The proof artifact has the required SHA-256, and every controller-supplied dependency proof/review hash matches its frozen current file. All six local statements are self-contained relative to the setting, named prior results, and accepted dependencies; their proofs are valid line by line. The protocol audit, exact constants, three regime calculations, single critical logarithm, subquadratic exponent, all ceiling and confidence absorptions, fixed-horizon and one-bit accounting, boundary regimes, unconditional full-class PAC scope, notation commands, and inherited exact baselines pass independent adversarial checks. No producer, dependency, or sketch repair is required, so ACCEPTED with smallest retry target None is the smallest valid disposition.
