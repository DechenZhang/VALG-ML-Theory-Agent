# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_009`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_1/proof_steps/step_009/proof.md`, SHA-256 `50bda5320b626ee2c71b4c76c6c575947766acf46cad161b06b5b528ce7cf617`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact reduction of the fine conditional square

- Statement fidelity: Lemma~\(\ref{lem:step-009-fine-square-reduction}\) states the exact fine raw-second-moment interface required by the accepted sketch. It covers every deterministic center, the generated center, a nonempty fine group, and the empty-fine case without evaluating an empty-group normalizer.
- Proof validity: For a fine index, the accepted group law gives \(p_j=m^{-1}(h_j/\sigma)/W_{\rm f}=h_j/(m\sigma W_{\rm f})\), hence exactly \(h_j/p_j=mW_{\rm f}\sigma\). Substitution into the accepted factor-48 raw square is algebraically correct. The level family is finite and every digit difference is bounded, so moving the finite sum through \(\mathbb E_D\) is valid. Partitioning the full nonnegative raw-square sum gives the stated fine term plus the exact coarse term, with neither subtraction nor domination.
- Cited-result and assumption audit: The current accepted `step_003`, `step_007`, and `step_008` proof/review hashes match the submitted dependency register. This unit uses only Proposition~\(\ref{prop:step-003-group-law}\) and Proposition~\(\ref{prop:step-008-raw-square}\), under Assumptions~\(\ref{assump:parameter-domain}\) and \(\ref{assump:iid-independent-randomness}\). The accepted raw-square result supplies the conditional kernel, finiteness, and exact coefficient \(p_j(256/p_j^2)(1/16)(3h_j)=48h_j/p_j\).
- Rigor checklist: All denominators are positive on actual fine indices; \(m\in\{1,2\}\); no formula is evaluated when the fine group is empty. Equality \(h_j=\sigma\) is assigned to the fine group, where \(w_j=1\), and does not alter the substitution. The identities hold almost surely conditional on \(\sigma(c)\), not merely on the localization event.
- Local adversarial test: Empty fine groups give a literal zero sum; one fine level, the transition level \(h_j=\sigma\), and arbitrarily many finite fine levels all obey the same identity. At \(X=c\), every integrand is zero. No fine-level cardinality enters.
- Contribution to target step: It turns the exact conditional square into a constant multiple of the complete pathwise fine activity ledger while leaving the coarse sub-sum untouched.
- Verdict: PASS
- Repair direction: None.

### unit_002: Universal count-free fine-square bound

- Statement fidelity: Proposition~\(\ref{prop:step-009-count-free-fine-bound}\) gives the requested uniform \(O(\sigma^2)\) fine certificate, with an explicit universal constant and no dependence on a fine-level count.
- Proof validity: The accepted pathwise ledger gives
  \[
  \sum_{j\in\mathcal J_{\rm f}}|D_j^t(X)-D_j^t(t)|
  \leq16\min\{|X-t|,\sigma\}.
  \]
  Taking expectation is legal and \(\mathbb E_D\min\{|X-t|,\sigma\}\leq\sigma\) is pointwise, so no moment or localization input is needed. Combining this with the exact reduction yields \(768mW_{\rm f}\sigma^2\). The accepted bounds \(m\leq2\) and \(W_{\rm f}\leq2\) then give exactly \(3072\sigma^2=48\cdot16\cdot2\cdot2\,\sigma^2\).
- Cited-result and assumption audit: Proposition~\(\ref{prop:step-007-fine-ledger}\) supplies the constant-16 ledger and Lemma~\(\ref{lem:step-003-fine-normalizer}\) supplies the count-free \(W_{\rm f}\leq2\) bound. Both are current accepted dependency conclusions. No support condition, recentered moment, localization event, top-scale control, or future coarse estimate is imported.
- Rigor checklist: The bound is simultaneous for every deterministic \(t\), every setting-admissible \(D\), and every finite setting scale family. It remains valid after evaluating the accepted measurable conditional kernel at \(t=c\). All quantities are nonnegative and integrable, and the only distributional expectation is of a variable bounded pointwise by \(\sigma\).
- Local adversarial test: If the fine group is empty or all fine digits are inactive almost surely, the exact contribution is zero. If \(D\) is concentrated at the center, exact zero displacement gives zero rather than merely the displayed upper bound. The case \(h_j=\sigma\), an arbitrarily long fine prefix as \(\epsilon\) decreases, and centers far outside the localization event introduce neither a logarithm nor a moment dependence.
- Contribution to target step: It proves the binding count-free fine bound with the universal constant \(3072\).
- Verdict: PASS
- Repair direction: None.

### unit_003: Fine conditional-variance interface

- Statement fidelity: Proposition~\(\ref{prop:step-009-variance-interface}\) distinguishes the variance of the literal fine-restricted pseudo-observation from the fine raw-square contribution used to control the full pseudo-observation. This is the precise interface needed for the accepted target.
- Proof validity: Multiplication by \(\mathbf1\{L_i\in\mathcal J_{\rm f}\}\) retains exactly the fine terms in the accepted disjoint-level square calculation, so \(\mathbb E[Z_{i,{\rm f}}(c)^2\mid c]=\mathcal V_{\rm f}(c)\). Accepted square-integrability passes to this restriction, and the conditional-variance identity gives \(\operatorname{Var}(Z_{i,{\rm f}}(c)\mid c)\leq\mathcal V_{\rm f}(c)\leq3072\sigma^2\). For the full variable, \(\operatorname{Var}(Z_i(c)\mid c)\leq\mathbb E[Z_i(c)^2\mid c]\), followed by the exact fine/coarse raw-square split, proves the displayed full-variance upper bound.
- Cited-result and assumption audit: Proposition~\(\ref{prop:step-008-raw-square}\) supplies conditional square-integrability and the exact raw square under Assumption~\(\ref{assump:iid-independent-randomness}\). Proposition~\(\ref{prop:step-009-count-free-fine-bound}\) supplies only the fine bound. The conditioning sigma-field is exactly \(\sigma(c)\), reached by the accepted `step_008` tower argument from the full localization sigma-field.
- Rigor checklist: The proof does not claim that fine and coarse conditional variances add. It explicitly notes that their conditional means need not vanish and uses only the valid raw-second-moment inequality. The coarse term remains the exact nonnegative sum \(48\sum_{j\in\mathcal J_{\rm c}}(h_j/p_j)\mathbb E_D|D_j^c(X)-D_j^c(c)|\). Empty fine and coarse groups are both handled without undefined quantities.
- Local adversarial test: At \(X_i=c\), both the full and fine-restricted variables vanish pathwise. A nonzero fine conditional mean does not invalidate the argument because its square is subtracted only in the variance identity and never used in an additive decomposition. If the coarse group is empty, the full variance inherits the fine bound; if it is nonempty, no unproved coarse control is asserted.
- Contribution to target step: It supplies the exact conditional-variance interpretation and the legal assembly-facing full-variance bound without altering any coarse obligation.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is hidden outside the three-unit map. The exact probability substitution and finite expectation interchange are in Lemma~\(\ref{lem:step-009-fine-square-reduction}\); count-free accumulation, the expectation of the truncated displacement, and the constant calculation are in Proposition~\(\ref{prop:step-009-count-free-fine-bound}\); and square-integrability, fine restriction, conditional variance, the full raw-moment bridge, and the warning against additive variance decomposition are in Proposition~\(\ref{prop:step-009-variance-interface}\). Empty groups, \(h_j=\sigma\), arbitrary finite fine-level count, zero activity, and \(X=c\) are addressed explicitly. No global diagnostic, nondependency, future step, or unreviewed coarse claim is used.

## Target Claim Audit

The named results prove the exact accepted `step_009` claim. Uniformly for every deterministic center \(t\), every setting-admissible law \(D\), and every finite \(J\), the exact fine raw-square contribution is at most \(3072\sigma^2\); evaluated at the generated center, the claim holds almost surely conditional on \(c\). The same constant bounds the variance of the fine-restricted pseudo-observation and is the fine component in a valid upper bound for the full conditional variance. The conclusion is valid at \(h_j=\sigma\), for empty auxiliary groups, for arbitrarily many fine levels, and at zero displacement. It is neither weaker nor stronger than the sketch interface.

## Explicit Rate Audit

The proof exposes \(\sigma,t,c,D,J,h_j,\mathcal J_{\rm f},m,W_{\rm f},p_j\) and retains inherited setting parameters without hiding them in a constant. The final constant \(3072\) is universal and independent of \(k,\lambda,\sigma,\epsilon,\delta,D,c,J,H\), the refinement index, and the number of fine levels. The probability mode is an almost-sure conditional-on-\(\sigma(c)\) one-observation moment statement; the pathwise ledger itself is deterministic. The horizon mode is a deterministic fixed horizon with a finite scale family, uniform over finite \(J\), with no all-time or stopping-time upgrade. The norm mode is scalar absolute value for digit differences and ordinary real conditional variance. No moment/localization dependence, confidence conversion, auxiliary tolerance, asymptotic argument, hidden logarithm, or prose-only absorption occurs. The exact zero-displacement baseline is preserved.

## Notation Surface Audit

All setting and dependency symbols retain their meanings. \(\mathcal V_{\rm f}(t)\) is correctly classified as appendix-local and visibly expands to the exact factor-48 fine sub-sum; \(t\) and \(Z_{i,{\rm f}}(t)\) are proof-local. The only public-facing output is the minimal fine certificate and its conditional-variance interpretation. Constant provenance is complete: \(48\) comes from the accepted raw square, \(16\) from the accepted pathwise ledger, \(m\leq2\) from the group law, and \(W_{\rm f}\leq2\) from the accepted fine geometric sum.

## Target-Step Assembly Audit

Accepted Proposition~\(\ref{prop:step-008-raw-square}\), Proposition~\(\ref{prop:step-003-group-law}\), Lemma~\(\ref{lem:step-003-fine-normalizer}\), and Proposition~\(\ref{prop:step-007-fine-ledger}\) supply exactly the legal inputs. Lemma~\(\ref{lem:step-009-fine-square-reduction}\) performs the exact substitution, Proposition~\(\ref{prop:step-009-count-free-fine-bound}\) proves the universal bound, and Proposition~\(\ref{prop:step-009-variance-interface}\) converts it to the correct conditional-variance interface. The assembly uses theorem-style names and labels, leaves coarse terms untouched, and introduces no new lemma or assumption.

## Review Rationale

The proof hash and all three accepted dependency pairs are current. Every required numerical factor, group convention, boundary case, conditioning step, integrability claim, dependence declaration, and baseline reduction checks exactly. The proof obtains the universal constant \(3072\) by pathwise fine-scale accumulation, so it introduces neither a fine-level count nor a hidden logarithm, and it avoids the invalid additive conditional-variance decomposition. No producer, dependency, or sketch repair is required; therefore `ACCEPTED` with `Smallest Retry Target = None` is the smallest controlled disposition.
