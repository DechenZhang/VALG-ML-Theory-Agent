# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_010`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_1/proof_steps/step_010/proof.md`, SHA-256 `ee49814577413c1eeef0f3e2e8e6e04fa786f49673890edadb01bf3ece3fa84e`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact coarse raw square and conditional-variance interface

- Statement fidelity: Lemma~\(\ref{lem:step-010-exact-coarse-square}\) isolates exactly the coarse nonnegative summand of the accepted raw conditional square and separately bounds the genuine conditional variance of the coarse component. It neither calls the raw square a variance nor claims a bound for the full statistic before the fine contribution is supplied.
- Proof validity: Restricting the accepted disjoint-level expansion to \(L_i\in\mathcal J_{\rm c}\) gives \(\mathbb E_t Z_{i,{\rm c}}(t)^2=S_{\rm c}(t)\). The variance inequality follows from subtracting the nonnegative square of the conditional mean. For a nonempty coarse group,
  \[
  \frac{h_j}{p_j}
  =h_jmW_{\rm c}\left(\frac{h_j}{\sigma}\right)^{k-2}
  =mW_{\rm c}\sigma^{2-k}h_j^{k-1},
  \]
  so the factor-\(48\) identity (10.1) is exact. The final expectation/sum interchange is over finitely many integrable terms.
- Cited-result and assumption audit: The current accepted `step_008` proof/review pair has hashes `13363eff6ae9349ab6ce6e8d8ad4a7ff0b7e380671405b20f1944f45214a66d5` / `7a52062f02688f0eb30319a5fd1c944642705d58df96914c99f94b727c28a8c1` and supplies the exact raw square, conditional product kernel, positivity of active \(p_j\), and square-integrability. The current accepted `step_003` pair has hashes `3004fae27e0cb92d391b296ae21afa8e38f50daaebda5c8b9988d59be1fa2ddf` / `b28d7b3b77efd48df96d29937b8b1029295c8f2accf2982898574ea4129690de` and supplies the exact group law. No nondependency is used.
- Rigor checklist: Independently recomputing the numerical coefficient gives \(p_j(16/p_j)^2(1/16)(3h_j)=48h_j/p_j\). Cross-level products vanish pathwise because one level is sampled, while the accepted dither square retains the within-digit cross term. The empty group is handled before any absent normalizer or inverse probability is evaluated.
- Local adversarial test: At \(k=2\), \(w_j=1\) gives \(h_j/p_j=mW_{\rm c}h_j\) directly, without a limiting argument. At \(X=t\), every coarse digit and the raw square vanish. If the coarse group is empty, the indicator defining \(Z_{i,{\rm c}}\) is identically zero.
- Contribution to target step: This unit supplies the exact coarse raw-square object used by every later unit and the valid variance upper bound for the coarse component.
- Verdict: PASS
- Repair direction: None.

### unit_002: Localized moment closure of the coarse square

- Statement fidelity: Proposition~\(\ref{prop:step-010-coarse-moment-closure}\) proves the accepted common coarse interface \(S_{\rm c}(t)\leq A_kW_{\rm c}\sigma^2\) for a localized actual center. It uses the generated radius only as the accepted eventwise interface and does not promote localization or recentering to a primitive assumption.
- Proof validity: The accepted activity inequality is applied pointwise and summed over all active coarse levels before expectation:
  \[
  \mathbb E_D\sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}|\Delta_j^t(X)|
  \leq C_k^{\rm act}\mathbb E_D|X-t|^k.
  \]
  The accepted actual-center moment then gives \(C_k^{\rm act}C_k^{\rm rec}\sigma^k\). Substitution into (10.1) yields \(48mC_k^{\rm act}C_k^{\rm rec}W_{\rm c}\sigma^2\), and \(m\leq2\) gives exactly \(A_k=96C_k^{\rm rec}C_k^{\rm act}\).
- Cited-result and assumption audit: The current accepted `step_002` pair has hashes `f22f51f16d14638bd26f5f83662c33620f142a3b3d1bd167cbb32b982d509c58` / `a549919aa08482df95acaf2b6551b14f1da4e0ae2c8301f30a06a654062229e2` and supplies \(C_k^{\rm rec}=2^{k-1}(1+50^k)\) about the actual realized center on \(\mathcal E_{\rm loc}\). The current accepted `step_007` pair has hashes `ae20b081db5273b80dd726d07fb34b0f24db20bebd007c973bea2b4a79276498` / `6bba1a0d83b472a6d4dfea84753e84dd9bf12264d1c2c0695071db6f0d3f263d` and supplies \(C_k^{\rm act}=3(8/3)^k/(1-2^{-k})\) with no restriction \(|X-t|\leq H\). The only primitive condition used is Assumption~\(\ref{assump:moment-class}\).
- Rigor checklist: The refinement draw retains its population law \(D\) after conditioning on the independent localization transcript; the proof does not condition \(D\) on \(\mathcal E_{\rm loc}\). All terms are nonnegative, the scale sum is finite, and \(\sigma^{2-k}\sigma^k=\sigma^2\) exactly. The displayed constant is finite for every fixed \(k>1\) and has no hidden dependence on the problem instance.
- Local adversarial test: A rare observation with \(|X-t|\gg H\) may activate all sampled coarse levels, but the accepted pathwise geometric ledger still charges the whole sum once to \(|X-t|^k\); no truncation or level count appears. At \(X=t\), both sides of the ledger are zero. The auxiliary empty-coarse convention gives \(S_{\rm c}=W_{\rm c}=0\) only for inequalities and never changes the probability law.
- Contribution to target step: This unit converts exact inverse weighting and pathwise activity into the single common bound from which all three regimes follow.
- Verdict: PASS
- Repair direction: None.

### unit_003: Superquadratic coarse variance

- Statement fidelity: Lemma~\(\ref{lem:step-010-superquadratic}\) treats fixed \(k>2\) separately and proves the requested \(C_k\sigma^2\) coarse raw-square and component-variance certificate.
- Proof validity: The accepted decreasing-series bound \(W_{\rm c}\leq(1-2^{2-k})^{-1}\) substituted into the common closure gives \(C_{k,>}^{\rm c}=A_k/(1-2^{2-k})\). The denominator is positive for every fixed \(k>2\).
- Cited-result and assumption audit: The only inputs are the named prior local closure proposition and the current accepted coarse-normalizer proposition. Their assumptions already include the exact transition convention and legal theorem design.
- Rigor checklist: The constant may diverge as \(k\downarrow2\), but the theorem permits fixed-\(k\) dependence and the lemma makes no uniform-in-\(k\) claim. No \(H\), \(J\), \(\epsilon\), or confidence dependence is hidden.
- Local adversarial test: For the representative value \(k=3\), \(w_j=(h_j/\sigma)^{-1}\), \(W_{\rm c}\leq2\), and \(h_j/p_j=mW_{\rm c}\sigma^{-1}h_j^2\); the cubic activity moment contributes \(\sigma^3\), leaving precisely a constant multiple of \(\sigma^2\).
- Contribution to target step: Supplies the first mutually exclusive regime with the correct fixed-\(k\) constant dependence.
- Verdict: PASS
- Repair direction: None.

### unit_004: Critical coarse variance with exactly one logarithm

- Statement fidelity: Lemma~\(\ref{lem:step-010-critical}\) sets \(k=2\) exactly and proves the required numerical-constant bound \(C_2^{\rm c}\sigma^2\log(\sigma/\epsilon)\). It does not infer the critical case from either open regime.
- Proof validity: At \(k=2\), \(W_{\rm c}=\#\mathcal J_{\rm c}\) is the sole scale count. The accepted endpoint calculation gives
  \[
  W_{\rm c}<\log_2(2b_2)+\frac{\log(\sigma/\epsilon)}{\log2}.
  \]
  Since the accepted design has \(\log(\sigma/\epsilon)\geq1\), inequality (10.9) explicitly absorbs the additive constant into one target logarithm. The pathwise activity ledger at \(k=2\) contains no count, so no second logarithm is introduced.
- Cited-result and assumption audit: The exact count and its endpoint bound are current accepted `step_003` outputs; the count-free activity bound is a current accepted `step_007` output already consumed by the common closure. The quantities \(b_2,C_2^{\rm rec},C_2^{\rm act}\) are fixed numerical constants, so the displayed coefficient is independent of \(\lambda,\sigma,\epsilon,\delta,D,c,J,H\).
- Rigor checklist: Natural and base-two logarithms are converted by \(\log_2 x=\log x/\log2\), the largest allowed \(\epsilon=e^{-1}\sigma\) still has target logarithm one, and the largest sampled level is \(J-1\), not the unsampled level \(J\).
- Local adversarial test: A one-level coarse suffix has count one and is covered by the strict endpoint bound. Taking \(k\to2\) from either side is neither used nor needed. Even when one rare draw activates every coarse scale, the geometric \(\sum h_j|\Delta_j|\) ledger remains count-free.
- Contribution to target step: Supplies the exact critical phase with precisely the single logarithm allowed by the binding claim.
- Verdict: PASS
- Repair direction: None.

### unit_005: Subquadratic coarse variance

- Statement fidelity: Lemma~\(\ref{lem:step-010-subquadratic}\) treats each fixed \(1<k<2\) separately and retains the required structural top-scale factor \(H^{2-k}\), without substituting a later public-rate specialization.
- Proof validity: Substituting the accepted last-term-dominated bound
  \[
  W_{\rm c}\leq\frac{(H/(2\sigma))^{2-k}}{1-2^{-(2-k)}}
  \]
  into \(A_kW_{\rm c}\sigma^2\) gives
  \[
  \frac{A_k}{2^{2-k}(1-2^{-(2-k)})}\,
  \sigma^{2-(2-k)}H^{2-k}
  =C_{k,<}^{\rm c}\sigma^kH^{2-k}.
  \]
  Both denominator factors are positive in the stated open regime.
- Cited-result and assumption audit: Only the prior named closure proposition and the accepted `step_003` subquadratic normalizer are used. No critical-regime limit, top-tail truncation, or later rate bridge is imported.
- Rigor checklist: The exponent identity \(2-(2-k)=k\) is exact. Constants may depend on fixed \(k\), including singular behavior as \(k\uparrow2\), but not on \(H,\sigma,\epsilon\) or any transcript.
- Local adversarial test: For the representative value \(k=3/2\), \(h_j/p_j=mW_{\rm c}\sigma^{1/2}h_j^{1/2}\), the activity ledger contributes a \(\sigma^{3/2}\) moment, and \(W_{\rm c}\lesssim(H/\sigma)^{1/2}\); the product is exactly \(O(\sigma^{3/2}H^{1/2})\). Observations far beyond \(H\) remain covered by the same \(|X-t|^{3/2}\) charge.
- Contribution to target step: Supplies the third regime with the exact \(\sigma^kH^{2-k}\) dependence.
- Verdict: PASS
- Repair direction: None.

### unit_006: Three-regime coarse conditional variance certificate

- Statement fidelity: Proposition~\(\ref{prop:step-010-three-regime}\) packages exactly the binding eventwise output for the actual decoder center: the coarse component variance is bounded by its exact coarse raw-square summand, and that summand has the three required regime forms. It explicitly states that \(S_{\rm c}\) is only the coarse summand of the full raw square.
- Proof validity: Fixing a localization transcript in \(\mathcal E_{\rm loc}\) makes its output \(c\) deterministic while preserving the refinement product law. The same-center moment closure then applies, and exactly one of the three preceding regime lemmas supplies the asserted bound. The full raw square is decomposed into its nonnegative fine summand plus \(S_{\rm c}\), with no fine estimate imported.
- Cited-result and assumption audit: The statement names all five prior local results and records that their bases are exactly the four current accepted dependencies plus Assumption~\(\ref{assump:moment-class}\). The generated event is an accepted dependency output, not a theorem-facing condition. No global diagnostic, nondependency, future variance step, bias result, or concentration result is used as evidence.
- Rigor checklist: The conclusion is almost sure in the localization transcript and uniform for every realized \(|c-\mu|\leq50\sigma\). It is a one-observation conditional second-moment/variance statement, not an unconditional confidence or horizon-uniform claim. If the nonnegative coarse square is zero, square-integrability gives conditional almost-sure zero of the component; this elementary implication is stated and used only within the unit.
- Local adversarial test: An empty group is resolved before division; \(h_j=\sigma\) remains fine; indices \(0\) and \(J-1\) follow the accepted theorem group witnesses; the unsampled level \(J\) is absent; \(X_i=c\) gives pathwise zero; and all three fixed-\(k\) regimes remain separate.
- Contribution to target step: This unit exports the minimal downstream coarse certificate and completes the target assembly without strengthening its probability, horizon, or norm mode.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial claim is omitted from the six-unit map. Exact square restriction, conditional variance, and the \(p_j\) substitution are in Lemma~\(\ref{lem:step-010-exact-coarse-square}\); pointwise-before-expectation moment closure is in Proposition~\(\ref{prop:step-010-coarse-moment-closure}\); the three regimes have separate named lemmas; and the generated-event, raw-square, and zero-activity packaging is in Proposition~\(\ref{prop:step-010-three-regime}\). The finite expectation/sum interchange, \(m\leq2\), positivity of geometric denominators, and zero-square implication are immediate displayed consequences within those units. The proof uses only the four declared dependencies and does not use a global diagnostic or any nondependency as mathematical authority.

## Target Claim Audit

The proof establishes the exact accepted `step_010` claim on the generated localization event. For the actual center, it identifies the exact coarse nonnegative contribution

\[
S_{\rm c}(c)=48mW_{\rm c}\sigma^{2-k}
\mathbb E_D\sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}
|D_j^c(X)-D_j^c(c)|
\]

and proves both \(\operatorname{Var}(Z_{i,{\rm c}}(c)\mid c)\leq S_{\rm c}(c)\) and the required bounds \(C_k\sigma^2\) for fixed \(k>2\), \(C\sigma^2\log(\sigma/\epsilon)\) for \(k=2\), and \(C_k\sigma^kH^{2-k}\) for fixed \(1<k<2\). The raw-square contribution is not mislabeled as the full variance, and no fine-scale result is assumed. Quantifiers, generated-event scope, same-center population moment, and conditional law are preserved exactly.

## Explicit Rate Audit

The exposed quantities are \(k,\sigma,\epsilon,D,c,J,h_j,H,\mathcal J_{\rm c},w_j,W_{\rm c},m,p_j\). Hidden constants are fully displayed and depend only on fixed \(k\); they do not depend on \(\lambda,\sigma,\epsilon,\delta,D,c,J,H,W_{\rm c},m,p_j\), a transcript, or a sample index. The probability mode is conditional second moment and variance, almost surely on the generated localization event; the horizon mode is one observation in a deterministic finite scale family; and the norm mode is scalar variance with absolute digit/displacement magnitudes. There is no confidence conversion or asymptotic claim.

Independent exponent checks give the same outputs: at \(k=3\), \(\sigma^{2-k}\mathbb E|X-c|^k=\sigma^{-1}O(\sigma^3)=O(\sigma^2)\) and \(W_{\rm c}=O(1)\); at \(k=2\), the common moment closure is \(O(W_{\rm c}\sigma^2)\) and the exact count \(W_{\rm c}\) contributes one logarithm; at \(k=3/2\), \(O(W_{\rm c}\sigma^2)\) with \(W_{\rm c}=O((H/\sigma)^{1/2})\) is \(O(\sigma^{3/2}H^{1/2})\). The only absorptions are the displayed \(48m\leq96\), the explicit critical additive-constant inequality under \(\log(\sigma/\epsilon)\geq1\), and the exact subquadratic exponent identity. Exact zero activity and the empty-group case reduce the certificate to zero, preserving the baseline.

## Notation Surface Audit

All setting objects retain their meanings. The exported three-regime coarse certificate and its fixed-\(k\) constants are public-facing. The digit-difference alias, coarse component, coarse raw-square summand, fixed-center conditional kernel, and \(A_k\) are correctly classified as appendix-local and are expanded in the public conclusion. The deterministic center and displacement bookkeeping are proof-local. Every helper is defined from setting notation or accepted dependency outputs, and every constant has explicit provenance. No long helper dictionary, free bounded quantity, or unnecessary theorem-facing condition is exported.

## Target-Step Assembly Audit

Accepted Proposition~\(\ref{prop:step-008-raw-square}\) supplies the exact factor-\(48\) square. Lemma~\(\ref{lem:step-010-exact-coarse-square}\) supplies the exact coarse restriction and inverse-weight substitution. Accepted Proposition~\(\ref{prop:step-007-coarse-ledger}\) supplies the pathwise all-scale charge before expectation, and accepted Lemma~\(\ref{lem:step-002-recentered-moment}\) closes that charge about the actual produced center. Proposition~\(\ref{prop:step-010-coarse-moment-closure}\) gives the common \(A_kW_{\rm c}\sigma^2\) interface, and the three named regime lemmas apply exactly the accepted `step_003` normalizer bounds. Proposition~\(\ref{prop:step-010-three-regime}\) then instantiates the result at the actual random center on \(\mathcal E_{\rm loc}\). These named results jointly imply the exact target without an additional lemma, dependency, assumption, or bridge.

## Review Rationale

All six local units are faithful to the accepted sketch row and valid under the current accepted dependency pairs. The exact factor \(48\), inverse-weight algebra, variance/raw-square distinction, pathwise-before-expectation ordering, same-center moment, rare-tail coverage, three separate fixed-\(k\) regimes, single critical logarithm, empty and boundary cases, conditional event typing, constant dependence, notation surface, and target assembly all pass independent checks. No local, dependency, or sketch repair is required, so `ACCEPTED` and `Smallest Retry Target = None` are the smallest controlled disposition.
