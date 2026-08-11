# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_2/proof_steps/step_002/proof.md`, SHA-256 `94e5f797ed23884a3e1831b53ff6a7908826a658e3fd49711c5ea1ba15e5baeb`
- Binding setting: SHA-256 `8cdb060c6de66a9bdbf6a2ac920a48e2850550488e4e7e0926e61bd2a09ffe3c`
- Binding accepted sketch: SHA-256 `d4f7150a803758cb3ae0c1b83b62c48782e29f6e6b8b057a13697d7aadf22442`
- Binding accepted sketch review: SHA-256 `215ff66413663f1d0ce05bb94a6c72bae7b56995a050f21785a005bbe565726d`
- Accepted dependency `step_001` proof/review: SHA-256 `5efff885caeacf39dcde5df5acea7c32a79361abb684dc938d7d8a6402a2b6df` / `c18029b15ee3f6506a7208dc17480c56ad4ce36fa48c8de2ba5e9b6137bca02c`

## Step-Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Blocking Issues

1. **Location:** `Cited Result Applications`, items 3--5, the paragraph defining (K_{\rm Yan}), Lemma~\ref{lem:step-002-endpoint-quota}, and Proposition~\ref{prop:step-002-ordered-yan}. **Defect:** the source-facing confidence substitution is not closed. Yan v2's raw accuracy corollary has failure probability ((t+2)\beta_{\rm raw}), and the line immediately before `thm:improper sample complexity` substitutes
   \[
   \beta_{\rm raw}=\frac{\beta_{\rm fac}}{t+2}.
   \]
   However, the source's (t) itself depends on \(\beta_{\rm raw}\) through both (n_{PM}(d,1/3,\beta_{\rm raw},\epsilon,\delta)) and the choosing-mechanism term. The submitted proof introduces no \(\beta_{\rm raw}\), writes no fixed-point inequality, and proves no bound for a solution. It instead inserts \(\beta_{\rm fac}\) directly into \(\vartheta=\varepsilon_{\rm fac}\beta_{\rm fac}\delta_{\rm fac}\) and declares a universal endpoint-corrected source constant. That declaration is not the literal labeled theorem at (d_i=1), where the printed \(\log^*d_i\) expression is unusable, and it is not derived from the internal (TD+1) construction.

2. **Location:** the quota domination in Lemma~\ref{lem:step-002-endpoint-quota} and the `Explicit Rate Audit`. **Defect:** after the required raw-confidence substitution, the source's exact outer block-size factor is
   \[
   \frac{48}{\alpha_{\rm fac}}
   \left(10\log\frac{48e}{\alpha_{\rm fac}}
   +\log\frac{5(t+2)}{\beta_{\rm fac}}\right),
   \]
   not the proof's factor with \(\log(5/\beta_{\rm fac})\). The omitted \(\log(t+2)\) is unbounded as (d_i,\varepsilon^{-1},\delta^{-1}) vary, so it cannot be absorbed merely by enlarging a universal (K). Likewise, substituting \(\beta_{\rm fac}/(t+2)\) inside the source definition of (t) changes the logarithms whose domination must be proved. The displayed factor-six inequality correctly compares (u_i) with (s_i) only after a requested-confidence source threshold has already been established; it does not establish that threshold. A straightforward closure using only the source's displayed bounds leaves an additional logarithmic factor, while the accepted row and setting require the exact log-squared quota. **Downstream effect:** the existence of an ordered mechanism with the claimed (1/4096) failure probability at exactly (q_i) is uncertified, so `step_003`, `step_005`, and `step_006` cannot consume the factor interface. **Smallest repair direction:** revise the sketch's cited-tool wrapper interface to expose a rigorous confidence-calibration bridge. It must either prove, under the unchanged quota, a source-faithful fixed-point or a new accuracy argument that removes the (t\)-dependent confidence loss, or revise the quantitative target if the extra logarithm is unavoidable. Merely adding endpoint arithmetic to another `step_002` attempt cannot repair the current source-to-quota mismatch.

## Per-Lemma Audit

### unit_001: Endpoint-corrected Yan quota domination

- Statement fidelity: The intended statement matches the accepted row's (TD+1), (d_i=1), and exact-quota obligations, and it uses only the two primitive assumptions plus the accepted (d_i\ge1,s_i\ge2) dependency conclusion.
- Proof validity: The structural calculation is valid: nonconstancy gives (TD(X_i,(C_i)_{f_i})\ge1); source (f)-representation invariance and (TD\le2^{d_i+1}) give (1\le u_i\le s_i+1\le3s_i/2); and, for \(\vartheta\in(0,1)\), the displayed comparison gives
  \[
  u_i\log^2(u_i/\vartheta)
  \le6s_i\log^2(s_i/\vartheta).
  \]
  The final inference to the complete requested-confidence source threshold is invalid because it assumes the unresolved (K_{\rm Yan}) interface described above.
- Cited-result and assumption audit: The threshold-dimension and (f)-representation statements are mapped correctly, and the accepted dependency is used within its certified scope. The cited source does not, at its internal (TD+1) level, supply the requested-confidence threshold postulated here without resolving \(\beta_{\rm raw}=\beta_{\rm fac}/(t+2)\).
- Rigor checklist: The base-two log-star endpoint, positivity, monotonicity, ceiling, and literal numerical substitutions are correct. The confidence variable, fixed-point admissibility, and the unbounded outer \(\log(t+2)\) term are absent.
- Local adversarial test: Hold \(\alpha_{\rm fac},\beta_{\rm fac}\) fixed and let (d_i), \(\varepsilon^{-1}\), or \(\delta^{-1}\) grow. Then (t) is not a fixed numerical quantity, so \(\log(t+2)\) cannot be hidden in the universal (K) whose allowed dependence excludes all of these variables.
- Contribution to target step: It proves the endpoint dimension comparison but not the exact quota certificate required to invoke the factor learner.
- Verdict: REVISE_SKETCH
- Repair direction: Add a sketch-visible, quantitatively exact confidence-calibration/source-wrapper bridge or change the quota interface; retain the valid (TD+1) arithmetic.

### unit_002: Ordered Yan factor mechanism at the displayed quota

- Statement fidelity: The privacy, utility, output, sample-size, and arbitrary-input scopes are exactly those of the accepted target.
- Proof validity: The privacy allocation is transcribed correctly: running Yan's raw mechanism at ((\varepsilon_{\rm fac}/2,\delta_{\rm fac}/2)) and using its raw ((2\epsilon,2\delta)) theorem gives ((\varepsilon_{\rm fac},\delta_{\rm fac})). The PAC object map and improper binary output map are also correct. The confidence sentence is not a derivation: it omits the raw confidence parameter and relies on unit_001's unsupported endpoint-corrected requested-confidence threshold.
- Cited-result and assumption audit: VC one, finite Littlestone dimension, arbitrary factor distribution, realizability for utility, fixed-size one-entry replacement privacy, and unrestricted improper output all match the source theorem. The only failed discharge is exact sample size after the source's (t)-dependent confidence substitution.
- Rigor checklist: Privacy applies independently of realizability, and utility is confined to an i.i.d. realizable sample. Nevertheless, without the missing fixed-point/rate bridge, (q_i) is not shown to be source-admissible at failure (1/4096).
- Local adversarial test: Replacing \(\beta_{\rm raw}\) by the fixed requested \(\beta_{\rm fac}\) makes the raw corollary's failure bound ((t+2)\beta_{\rm fac}), which exceeds \(\beta_{\rm fac}\) for every positive (t). Using the required smaller raw confidence changes both (t) and the block size, exactly the dependence omitted by the proof.
- Contribution to target step: Conditional on a corrected quota/source interface, this proposition would provide the exact ordered mechanism. Under the submitted proof, that interface is not established.
- Verdict: REVISE_SKETCH
- Repair direction: Reinstantiate only after the revised sketch fixes the requested-confidence Yan wrapper and its exact quantitative threshold.

### unit_003: Permutation symmetrization preserves arbitrary-input replacement privacy

- Statement fidelity: The statement exactly supplies the accepted ordered-tuple to multiset bridge and does not add utility or adjacency scope.
- Proof validity: For adjacent multisets, aligning common multiplicities gives representatives differing in one coordinate. Applying the same uniform permutation preserves one-coordinate replacement, and averaging the ordered-mechanism DP inequality preserves both \(\varepsilon_{\rm fac}\) and \(\delta_{\rm fac}\). Uniform permutation also makes the output law independent of the chosen representative/order.
- Cited-result and assumption audit: The lemma is a direct conditional argument using only Proposition~\ref{prop:step-002-ordered-yan}. It does not assume realizability, finite support, or add/remove adjacency.
- Rigor checklist: Duplicate records, a no-op replacement, arbitrary labels, measurable output events, and the additive \(\delta_{\rm fac}\) term are all handled. The coupled permutation is independent of mechanism randomness.
- Local adversarial test: When multiplicities are repeated, common copies can still be aligned, and the unmatched removed/inserted records occupy the same remaining coordinate after coupling. No group-privacy or multiple-coordinate loss occurs.
- Contribution to target step: It correctly proves order invariance and arbitrary-input multiset replacement privacy, conditional on existence of the ordered mechanism.
- Verdict: PASS
- Repair direction: None within this lemma; it remains downstream of the source-wrapper repair.

### unit_004: Permutation symmetrization preserves unpadded i.i.d. utility

- Statement fidelity: The statement has the exact (1/64) risk, (1/4096) failure, fixed-size i.i.d. scope, and explicit padded/non-i.i.d. non-output boundary required by the accepted row.
- Proof validity: An independent uniform permutation of an i.i.d. ordered sample has exactly the same joint law. Thus the wrapper incurs no risk or confidence loss once the ordered source utility premise is available.
- Cited-result and assumption audit: The argument correctly uses only the ordered utility proposition and exchangeability. It does not invoke privacy as a utility theorem.
- Rigor checklist: Probability is over the sample, permutation, and source mechanism; the risk remains the same population (0)-(1) risk. The proof correctly refuses to apply exchangeability to a padded or otherwise non-i.i.d. input.
- Local adversarial test: A single fixed padding record survives every permutation, so the source PAC premise need not hold; the proof explicitly excludes this case. Asymmetric ordered mechanisms cause no issue on genuinely i.i.d. data because the permuted tuple has the original distribution.
- Contribution to target step: It correctly transports any valid ordered Yan utility guarantee to the symmetrized mechanism without broadening its scope.
- Verdict: PASS
- Repair direction: None within this lemma; its premise must be re-established by the revised source wrapper.

## Hidden Subclaim Scan

The proof contains one theorem-critical hidden source claim: that a universal constant (K_{\rm Yan}) witnesses the endpoint-corrected, requested-confidence (TD+1) threshold with exactly the final theorem's displayed log-squared dependence. This is neither the literal (d_i=1) statement of `thm:improper sample complexity` nor a consequence derived in the proof. The missing raw-confidence fixed point and the missing outer \(\log(t+2)\) term are independent quantitative obligations, not notation choices subsumed by the factor-six endpoint comparison.

No hidden flaw was found in the two permutation arguments. Their only unavailable premise is the ordered mechanism at the claimed quota and confidence.

## Target Claim Audit

The submitted proof does not establish the exact accepted target. It correctly identifies the source's (TD+1) endpoint parameter, maps privacy to ((\varepsilon/2,\delta/2)), preserves arbitrary-input replacement DP under symmetrization, maps the source output to an unrestricted binary factor hypothesis, and keeps utility restricted to unpadded realizable i.i.d. data. It does not prove that the setting-defined (q_i) attains requested failure (1/4096) after Yan's actual confidence substitution. Consequently the exact high-probability factor utility claim and exact quota certificate remain open.

The accepted `step_001` dependency is sound and supplies exactly the two scalar conclusions used here; this failure is not dependency-caused.

## Explicit Rate Audit

This step is rate-bearing. The proof correctly exposes (d_i,s_i,q_i,\varepsilon,\delta), the fixed factor parameters, the fixed-sample probability/risk modes, and the allowed universal hidden-constant dependence. Its dimension-side absorptions and numerical substitutions are explicit.

The confidence dependence fails the rate contract. The omitted objects \(\beta_{\rm raw}\) and (t=t(\beta_{\rm raw})) are source parameters that affect both the private-median/choosing quota and the outer generalization block size. The proof gives no fixed-point existence or bound, no inequality eliminating \(\log(t+2)\), and no valid term-absorption threshold. Since (t) is not one of the fixed numerical conventions, its logarithm cannot be placed in (K). Thus the claimed hidden-constant independence and the log-squared public interface are not certified. The (k=1,d_1=1) baseline is affected directly because that is precisely where the proof leaves the printed theorem and appeals to the unproved endpoint-corrected internal interface.

## Notation Surface Audit

The submitted proof otherwise classifies its notation well: (A_i^{\rm Yan}) and the setting parameters form the minimal public interface; (f_i,d_i^{\rm Yan},u_i,K_{\rm Yan},B_i) are appropriately appendix-local; and permutations and aligned representatives are proof-local. The problem is an omitted source variable, not excessive notation. Any repair must make \(\beta_{\rm raw}\), the dependence (t(\beta_{\rm raw})), and the resulting sample threshold visible at least inside the revised bridge, without exporting them as theorem assumptions.

## Target-Step Assembly Audit

The four named units would assemble the target only if Lemma~\ref{lem:step-002-endpoint-quota} supplied a valid requested-confidence quota certificate. It does not. Proposition~\ref{prop:step-002-ordered-yan} therefore lacks its source-size premise, and the two otherwise valid symmetrization lemmas cannot create the missing utility guarantee. The assembly's statement that one universal (K) makes every (q_i) source-admissible repeats, rather than proves, the blocked interface.

## Review Rationale

`REVISE_SKETCH` is the smallest valid status because the defect is not the accepted dependency and is not a mistake in the endpoint or permutation algebra. The primary source's internal (TD+1) route, which the branch must use at (d_i=1), has a (t)-dependent raw-confidence calibration absent from the accepted quantitative wrapper. Resolving it by the source's displayed argument exposes an additional unbounded logarithmic term; retaining the exact setting quota requires a new confidence/accuracy bridge, while accepting that term would change the quota and public rate. Both possibilities alter the cited-tool wrapper or quantitative output interface that the sketch currently treats as settled. A repeated `step_002` derivation under the unchanged interface would only restate the same unsupported (K_{\rm Yan}) claim.
