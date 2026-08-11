# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_012
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_012/proof.md, SHA-256 708c2b8c20b8cd3dc61b27567e258cbd584fa94e790a31c88dbbcf6bb6e9249d

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Transcript-conditional iid full variance certificate

- Statement fidelity: Lemma~\(\ref{lem:step-012-transcript-kernel}\) states the exact full-transcript interface needed by the accepted sketch row. It conditions on the complete observable localization transcript, not merely on the scalar center, and combines the accepted fine and coarse raw-square bounds into the deterministic piecewise certificate \(V_k\) without claiming that component variances add.
- Proof validity: With \(\mathscr T_{\rm loc}=\sigma(R_{\rm loc},(Y_r)_{r\in I_{\rm loc}})\) and \(\mathscr F_{\rm loc}=\sigma(R_{\rm loc},(X_r)_{r\in I_{\rm loc}})\), precommitment makes \(\mathscr T_{\rm loc}\subseteq\mathscr F_{\rm loc}\). Accepted Lemma~\(\ref{lem:step-008-refinement-kernel}\) gives the joint product law of all refinement tuples conditional on \(\mathscr F_{\rm loc}\); taking conditional expectation onto the sub-sigma-field preserves the factorization. Since \(c\) is \(\mathscr T_{\rm loc}\)-measurable, applying the same Borel kernel to each tuple gives conditional iid \(Z_i(c)\), and the accepted pointwise mean kernel gives \(\mathbb E[Z_i(c)\mid\mathscr T_{\rm loc}]=\theta(c)\). The exact raw-square split is then bounded by the accepted fine contribution \(3072\sigma^2\) and the accepted regime-specific coarse contribution, proving \(\operatorname{Var}(Z_i(c)\mid\mathscr T_{\rm loc})\leq V_k\).
- Cited-result and assumption audit: The current step_008, step_009, and step_010 proof/review hashes exactly match the dependency identities recorded in the submission, and all three reviews are ACCEPTED for sketch attempt 1 and unit attempt 1. Assumption~\(\ref{assump:iid-independent-randomness}\) supplies the primitive product structure; \(\mathcal E_{\rm loc}\), the fine certificate, and the coarse certificate remain accepted derived outputs. No scalar-only conditional-independence assertion is substituted for the stronger transcript result.
- Rigor checklist: The proof uses \(\operatorname{Var}(Z\mid\mathscr T_{\rm loc})\leq\mathbb E[Z^2\mid\mathscr T_{\rm loc}]\), not an additive decomposition of fine and coarse variances. Each branch constant in (12.1) is finite and positive in its stated fixed-\(k\) regime. The group indicators remove absent groups before any absent normalizer is evaluated, and \(J\geq1\) prevents both groups from being empty. Thus \(0<V_k<\infty\). Conditional variance zero is correctly converted to \(Z_i(c)=\theta(c)\) conditionally almost surely through a nonnegative square with zero conditional expectation.
- Local adversarial test: Revealing the entire localization transcript cannot alter the refinement product kernel because the refinement block is independent of the larger \(\mathscr F_{\rm loc}\). Empty fine and coarse branches separately give exact zero contributions; they cannot occur simultaneously. At actual conditional variance zero and at the point-mass baseline, the conclusion remains exact rather than requiring division by a variance bound.
- Contribution to target step: Supplies the full transcript-conditional iid mean and deterministic variance certificate used by every fixed block.
- Verdict: PASS
- Repair direction: None

### unit_002: Exact block size and one-block success

- Statement fidelity: Proposition~\(\ref{prop:step-012-one-block}\) uses the binding choice \(s=\lceil32V_k/\epsilon^2\rceil\) and proves the requested one-block conditional failure probability \(1/8\), in indicator-valued form on the generated localization event.
- Proof validity: Conditional iid within a fixed block gives conditional mean \(\theta(c)\) and variance at most \(V_k/s\). Conditional Chebyshev at threshold \(\epsilon/2\) therefore gives \(4V_k/(s\epsilon^2)\). Since \(s\geq32V_k/\epsilon^2\) and \(V_k>0\), this is at most \(1/8\) with every division legal. Multiplication by the \(\mathscr T_{\rm loc}\)-measurable localization indicator yields exactly (12.6).
- Cited-result and assumption audit: Lemma~\(\ref{lem:step-012-transcript-kernel}\) supplies conditional iid, the common mean, square-integrability, and the variance certificate. Chebyshev is restated in the needed conditional form and follows directly from the displayed indicator inequality, so no external citation or unverified hypothesis is used.
- Rigor checklist: The fixed blocks are disjoint and have exactly \(s\) members. Strict failure \(>\epsilon/2\) is consistent with later endpoint-good events. If the actual conditional variance is zero, the block mean equals \(\theta(c)\) conditionally almost surely and the failure probability is exactly zero. A positive but arbitrarily small \(V_k\) still gives a legal integer \(s\geq1\).
- Local adversarial test: The equality case in the ceiling only improves the bound; \(s=1\) is legal if the displayed ratio lies in \((0,1]\). No localization probability is inserted, and no claim is made off \(\mathcal E_{\rm loc}\).
- Contribution to target step: Establishes the exact one-block success probability used by the median amplification.
- Verdict: PASS
- Repair direction: None

### unit_003: Fixed odd-median amplification

- Statement fidelity: Proposition~\(\ref{prop:step-012-odd-median}\) uses exactly \(q=2\lceil8\log(4/\delta)\rceil+1\), fixes the median as the \((q+1)/2\)-th order statistic, and proves transcript-conditional deviation at most \(\epsilon/2\) with failure at most \(\delta/4\).
- Proof validity: Conditional on a localized transcript, disjoint equal-size blocks are iid, so their bad-event indicators are iid Bernoulli with common parameter \(p\leq1/8\). For \(q=2r+1\), a median outside the closed good interval forces at least \(r+1\) bad blocks, hence a bad fraction at least \(1/2\). For the centered Bernoulli log-mgf, \(\psi_p''(t)=u_t(1-u_t)\leq1/4\) and \(\psi_p(0)=\psi_p'(0)=0\), so \(\psi_p(t)\leq t^2/8\). Exponential Markov optimized at \(t=4a\) gives \(e^{-2qa^2}\). Taking \(a=1/2-p\geq3/8\) yields \(e^{-9q/32}\leq e^{-q/4}\). Finally, \(q\geq16\log(4/\delta)+1\) gives \(e^{-q/4}\leq(\delta/4)^4\leq\delta/4\).
- Cited-result and assumption audit: Conditional block independence comes from Lemma~\(\ref{lem:step-012-transcript-kernel}\), and the common bound \(p\leq1/8\) comes from Proposition~\(\ref{prop:step-012-one-block}\). The Bernoulli Hoeffding bound is derived in full in current notation, including its mgf curvature and optimizing parameter; no external theorem interface is assumed.
- Rigor checklist: The argument is pointwise in the transcript even though \(p\) may depend on that transcript. The strict bad event makes equality at either interval endpoint good. Odd \(q\) removes any choice between two central order statistics, and repeated numerical block values do not affect the implication. The exponent comparison has the correct direction because \(9/32\geq1/4\).
- Local adversarial test: At \(p=1/8\) the majority gap is exactly \(3/8\) and gives the displayed exponent; at \(p=0\) majority failure is actually impossible and the mgf argument remains valid. Tied block values and equality at \(\theta(c)\pm\epsilon/2\) remain good. No unconditional or horizon-uniform upgrade occurs.
- Contribution to target step: Amplifies the one-block certificate to the exact fixed odd-median conditional confidence bound.
- Verdict: PASS
- Repair direction: None

### unit_004: Conditional exact-target refinement certificate

- Statement fidelity: Proposition~\(\ref{prop:step-012-conditional-target}\) combines the median certificate with the accepted exact-target bias and exports precisely the transcript-conditional refinement PAC interface assigned to step_012. It does not integrate over localization or claim the public sample rate.
- Proof validity: On the median-good event, the single substantive use of accepted Proposition~\(\ref{prop:step-011-bias-certificate}\) gives
  \[
  |\widehat\mu-\mu|
  \leq |M(c)-\theta(c)|+|\theta(c)-(\mu-c)|
  \leq\epsilon/2+\epsilon/4=3\epsilon/4<\epsilon.
  \]
  Hence the event \(\{|\widehat\mu-\mu|>3\epsilon/4\}\) is contained in the median-bad event, proving (12.14), and \(\{|\widehat\mu-\mu|>\epsilon\}\subseteq\{|\widehat\mu-\mu|>3\epsilon/4\}\) gives (12.15).
- Cited-result and assumption audit: The current step_011 proof/review hashes exactly match the recorded accepted dependency and supply \(|(\mu-c)-\theta(c)|\leq\epsilon/4\) on the same generated event and for the same actual center. The bias certificate is applied once in the target derivation; its other appearances are restatement and assembly bookkeeping, not additional error-budget uses.
- Rigor checklist: Equation (12.15) is an inequality between \(\mathscr T_{\rm loc}\)-measurable random variables, with \(\mathbf1_{\mathcal E_{\rm loc}}\) on both sides. It neither assigns a scalar probability to the generated event nor conditions the population law \(D\) on localization. The event inclusions preserve strict and weak boundary cases exactly.
- Local adversarial test: If the bias attains \(\epsilon/4\) and the median deviation attains \(\epsilon/2\), total error is still only \(3\epsilon/4\), so neither strict bad event occurs. In the zero-displacement baseline, accepted dependencies give zero pseudo-observations and zero bias, so every block, median, and final error is exactly zero.
- Contribution to target step: Exports the indicator-valued exact-target conditional failure bound consumed by step_013.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is hidden outside the four-unit map. Full-transcript product-kernel preservation, conditional iid, the exact mean, fine/coarse raw-square composition, positivity and empty-group legality of \(V_k\), and the zero-variance implication are all contained in unit_001. Block variance and the exact Chebyshev constant are in unit_002. Disjoint-block Bernoulli independence, the odd-order-statistic implication, endpoint/tie handling, the full mgf derivation, exponent comparison, and confidence conversion are in unit_003. Exact-target transfer, indicator typing, and the deliberate absence of unconditional conversion are in unit_004. The exact allocation \(N_{\rm ref}=qs\) is a direct substitution of the two proved deterministic choices, not a new probabilistic lemma.

## Target Claim Audit

The proof establishes the exact accepted sketch-row claim under only Assumptions~\(\ref{assump:parameter-domain}\), \(\ref{assump:iid-independent-randomness}\), and the current accepted step_008--step_011 interfaces. Uniformly for the complete observable localization transcript on \(\mathcal E_{\rm loc}\), it proves

\[
\Pr\{|M(c)-\theta(c)|>\epsilon/2\mid\mathscr T_{\rm loc}\}
\leq\delta/4
\]

and the indicator-valued exact-target conclusion

\[
\mathbf1_{\mathcal E_{\rm loc}}
\Pr\{|\widehat\mu-\mu|>\epsilon\mid\mathscr T_{\rm loc}\}
\leq(\delta/4)\mathbf1_{\mathcal E_{\rm loc}}
\quad\text{almost surely}.
\]

It also exports the exact deterministic fixed-horizon allocation

\[
N_{\rm ref}
=\left(2\left\lceil8\log\frac4\delta\right\rceil+1\right)
 \left\lceil\frac{32V_k}{\epsilon^2}\right\rceil.
\]

The quantifiers, constants, absolute-value norm, transcript-conditional probability mode, and fixed finite horizon match the sketch. The proof does not state an unconditional PAC result or a simplified public \(r_k\) rate.

## Explicit Rate Audit

The rate-bearing surface is complete. The proof exposes fixed \(k\), \(\sigma,\epsilon,\delta,H\), deterministic group-presence indicators, \(V_k,s,q\), and \(N_{\rm ref}\); \(\lambda\) correctly does not enter this refinement-only allocation. All coefficients in \(V_k\) are displayed and depend only on fixed \(k\), while the fine coefficient \(3072\) is universal. No hidden constant depends on \(\lambda,\sigma,\epsilon,\delta,D,c\), a transcript, \(J,H,s,q\), group cardinalities, or the sample index.

The probability mode is high probability conditional on the complete observable localization transcript and restricted by an indicator to the accepted generated event. The horizon is deterministic and fixed, the norm is scalar absolute value, and no asymptotic or stopping-time claim appears. The exact inequalities

\[
s\geq32V_k/\epsilon^2,
\quad 4V_k/(s\epsilon^2)\leq1/8,
\quad e^{-9q/32}\leq e^{-q/4}\leq(\delta/4)^4\leq\delta/4
\]

display every local simplification. The proof retains the additive fine term, the applicable coarse term, every ceiling, the \(H\)-dependence, and the confidence factor. It deliberately leaves substitution of \(H\), ceiling absorption, localization-cost absorption, unconditional confidence conversion, and the public Rate Specialization Bridge to step_013 and step_014. The zero-variance and point-mass baselines reduce exactly to zero.

## Notation Surface Audit

All setting-defined estimator, block, scale, group, and parameter objects retain their meanings. The accepted public-facing \(\theta(c)\) is used unchanged. The only new exported helper is \(V_k\), whose definition displays the fine/coarse split, all three regimes, group presence, constants, and \(H\); it is the minimal deterministic object needed to state the exact block size and later rate accounting. The transcript sigma-field and median abbreviation are appendix-local, while the refinement tuple, Bernoulli indicators, Bernoulli parameter, order-statistic index, and mgf quantities are proof-local. Every constant and helper has explicit provenance, and no notation hides a group, rate, event, or dependence obligation.

## Target-Step Assembly Audit

Lemma~\(\ref{lem:step-012-transcript-kernel}\) legally transports the accepted full-localization product kernel to the observable transcript and composes the exact accepted fine and coarse raw-square bounds into \(V_k\). Proposition~\(\ref{prop:step-012-one-block}\) proves the exact Chebyshev interface. Proposition~\(\ref{prop:step-012-odd-median}\) proves the fixed odd-median event with the directly derived Hoeffding exponent. Proposition~\(\ref{prop:step-012-conditional-target}\) then uses the accepted step_011 bias certificate once to reach the actual target. These named local results and current accepted dependencies jointly imply (12.1), (12.6), (12.9), (12.15), and (12.17). The assembly introduces no new lemma, assumption, dependency, unconditional conversion, or public-rate absorption, and it uses theorem-style names and labels rather than audit-only unit IDs as proof authority.

## Review Rationale

The proof artifact and all four dependency proof/review pairs have the exact recorded hashes. Each local unit proves its unchanged sketch interface under legally sourced primitive or accepted-derived inputs. The full-transcript conditional iid argument, exact piecewise positive \(V_k\), empty-group handling, Chebyshev constant, disjoint-block independence, odd-median and equality logic, Bernoulli mgf calculation, exponents, exact \(q\), indicator-valued conditional target, single bias use, boundary cases, fixed-horizon rate surface, and notation classifications all pass independent audit. Because the proof remains conditional and unsimplified exactly where later steps must act, no local, dependency, or sketch repair is required; ACCEPTED with Smallest Retry Target None is the smallest controlled disposition.
