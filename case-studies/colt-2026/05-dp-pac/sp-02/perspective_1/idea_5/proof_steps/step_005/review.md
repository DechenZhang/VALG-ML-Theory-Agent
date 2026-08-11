# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 2
- Reviewed proof artifact: perspective_1/idea_5/proof_steps/step_005/proof.md, SHA-256 9529468202e72f43873b2cd2e66289127bab027ae12a62ae0a9d7c65870c8b63

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma targets the exact ceiling obligation for the public sample size. It starts from the pointwise setting definition `(PS)`, defines (x_\kappa=q_\kappa^b), (u_\kappa=u(L_\kappa)), and the exact inside-ceiling quantity (A_\kappa=K_a\varepsilon_0^{-2}x_\kappa(1+x_\kappa+u_\kappa)), and concludes (N_\kappa=\lceil A_\kappa\rceil\geq1) and (N_\kappa\leq2A_\kappa). This is precisely the repaired size-divergence-only interface needed by all later units.
- Proof validity: Assumption~\(\ref{assump:polynomial-global-stability}\) fixes (a\geq1), hence (b=2a+2>0); the setting gives (q_\kappa\geq1), so (x_\kappa\geq1). Accepted Lemma~\(\ref{lem:step-003-log-correction}\) gives (u_\kappa\geq1), while `(PS)` gives (K_a\geq2), (\varepsilon_0\in(0,1)), and the exact ceiling formula. Thus (A_\kappa\geq2\cdot1\cdot1\cdot3=6). Consequently (N_\kappa=\lceil A_\kappa\rceil\geq1) and (N_\kappa\leq A_\kappa+1\leq(7/6)A_\kappa\leq2A_\kappa). Every step is pointwise and uses no asymptotic property of (q_\kappa).
- Cited-result and assumption audit: The exact (N_\kappa\) identity and the class-independent provenance (K_a\geq2) are taken directly from `(PS)` in `setting.md`, not from `step_004`. Accepted `step_003` is used only for the named (u(L)\geq1) fact and the unchanged identity (T_a=q^b+u). The accepted `step_004` pair is retained because the sketch lists it, but none of its `(SP)`-scoped conclusions is invoked.
- Rigor checklist: The ceiling inequality is applied only after (A_\kappa\geq6) is proved. The argument covers (q_\kappa=1), (L_\kappa=0), and every (\varepsilon_0\in(0,1)), with no division by a vanishing quantity, hidden constant, probability statement, or quantifier change.
- Local adversarial test: At the smallest allowed values (q_\kappa=1), (u_\kappa=1), (K_a=2), and in the limit (\varepsilon_0\uparrow1), the lower bound (A_\kappa\geq6) remains valid. Removing `(SP)` or allowing bounded or oscillating (q_\kappa) does not affect the proof.
- Contribution to target step: It supplies the exact integer-to-real envelope used in the factorization and (N_\kappa\geq1) used in the source-allowance comparison, without importing the scope of `(AS)`.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: The lemma uses the exact public (\delta_\kappa) and (N_\kappa) and produces the sketch-required two-factor upper bound for each fixed (\rho>0), with the complete constant (C_{\rho,\varepsilon_0,K_a}=(2K_a\varepsilon_0^{-2})^\rho). No surrogate sample size, privacy parameter, or growth premise is introduced.
- Proof validity: Accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) gives (\delta_\kappa=e^{-x_\kappa-u_\kappa}), and unit_001 gives (N_\kappa\leq2K_a\varepsilon_0^{-2}x_\kappa(1+x_\kappa+u_\kappa)). Since (\rho>0), raising the positive inequality to (\rho) preserves order. The identity ((1+x)(1+u)=1+x+u+xu) proves (1+x+u\leq(1+x)(1+u)) for nonnegative (x,u), yielding exactly (C_{\rho,\varepsilon_0,K_a}F_\rho(x_\kappa)H_\rho(u_\kappa)).
- Cited-result and assumption audit: The accepted schedule result is restated in current notation with all scalar domains discharged. The ceiling input is the named local Lemma~\(\ref{lem:step-005-ceiling}\), whose proof obtains its interface directly from `(PS)`. No conclusion from `step_004` or external theorem is used.
- Rigor checklist: The bound is valid for every fixed real, not only integer, (\rho>0). It is pointwise in (\kappa), exposes all constant dependence, performs no probability or limiting-mode conversion, and makes no convergence assumption on (x_\kappa).
- Local adversarial test: The split remains valid at (x_\kappa=1), for bounded or oscillating (x_\kappa), and for arbitrarily large (x_\kappa). No factor is assumed bounded away from zero or divided out.
- Contribution to target step: It isolates all possible structural behavior in (F_\rho(x_\kappa)) and all forced cardinality decay in (H_\rho(u_\kappa)).
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: The lemma proves the required uniform control of (F_\rho) on the full domain (x\geq1), with an explicit finite bound depending only on the fixed (\rho). This is the exact uniformity needed for arbitrary bounded, unbounded, or oscillating (q_\kappa).
- Proof validity: For (x\geq1), (1+x\leq2x), so (F_\rho(x)\leq2^\rho e^{-x}x^{2\rho}). Differentiating (g_\rho(x)=e^{-x}x^{2\rho}) gives (g_\rho'(x)=e^{-x}x^{2\rho-1}(2\rho-x)). Hence the maximum of (g_\rho) on ([1,\infty)) is attained at (x_\rho=\max\{1,2\rho\}), proving (\sup_{x\geq1}F_\rho(x)\leq B_\rho<\infty).
- Cited-result and assumption audit: This is a self-contained one-variable calculus argument. It uses no dependency conclusion beyond the domain (x\geq1), no paper citation, and no hidden boundedness assumption.
- Rigor checklist: The derivative and sign analysis cover every real (\rho>0), including the boundary (2\rho=1). The bound depends only on (\rho), not on (\kappa), the class sequence, (q_\kappa), or (L_\kappa).
- Local adversarial test: One constant (B_\rho) controls constant, bounded nonconvergent, oscillatory, and unbounded (x_\kappa), including sequences with both bounded and arbitrarily large subsequences.
- Contribution to target step: It supplies the uniform structural-factor budget that permits the independently diverging (u_\kappa) factor to force the product to zero.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: The proposition proves the exact every-fixed-(\rho) certificate `(PN)` with the full tolerance formulation and explicitly preserves bounded (q_\kappa), including (q_\kappa\equiv1). It uses only primitive size divergence, the pointwise `(PS)` ceiling routed through unit_001, and the accepted `step_003` schedule facts; it does not use `(SP)` or `(AS)`.
- Proof validity: Primitive (|C_\kappa|\to\infty) gives (L_\kappa\to\infty), and accepted Lemma~\(\ref{lem:step-003-log-correction}\) gives (u_\kappa\to\infty). For (u\geq1), the displayed integral estimate yields (\log(1+u)\leq3\sqrt u); hence (u\geq36\rho^2) gives (H_\rho(u)\leq e^{-u/2}). Units 002 and 003 then give (\delta_\kappa N_\kappa^\rho\leq D_\rho e^{-u_\kappa/2}). For every (\tau>0), the explicit finite threshold (U_{\rho,\tau}=\max\{1,36\rho^2,2\log(D_\rho/\tau)\}), together with (u_\kappa\to\infty), proves the asserted eventual bound. The separate (D_\rho/\tau<1) case is handled correctly.
- Cited-result and assumption audit: Accepted `step_003` supplies only the exact schedule and (u)-divergence. Unit_001 supplies the exact ceiling envelope from the primitive pointwise `(PS)` definition. The current accepted `step_004` proof/review pair is dependency-valid but contributes no conclusion to this proposition. No generated event, boundedness invariant, or learner fact is assumed.
- Rigor checklist: The quantifier order is (\forall\rho>0\) fixed, (\forall\tau>0\), (\exists\kappa_0(\rho,\tau)), (\forall\kappa\geq\kappa_0). Constants may depend on fixed (\rho,\varepsilon_0,K_a), and the threshold may depend on the fixed sequence and (\tau); none depends on the varying index or complexity. There is no cross-(\kappa) privacy composition or subsequence argument.
- Local adversarial test: If (q_\kappa) is bounded or constant, (F_\rho(x_\kappa)) remains uniformly controlled while (u_\kappa\to\infty). If (q_\kappa) oscillates or is unbounded without converging, the same global supremum controls every index. Thus the proof needs neither (q_\kappa\to\infty) nor any consequence of `(SP)`.
- Contribution to target step: It establishes `(PN)` for the exact public (\delta_\kappa) and (N_\kappa) under the size-divergence-only scope needed by the target.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: The proposition derives exactly the accepted sketch's standard source-allowance certificate for every fixed (c>0), with the correct eventual quantifiers and the same bounded-(q_\kappa) coverage as `(PN)`.
- Proof validity: Applying unit_004 at the fixed choice (\rho=3) and tolerance (c) gives (\delta_\kappa N_\kappa^3\leq c) eventually. Unit_001 gives (N_\kappa\geq1). The derivative calculation for (f(N)=N-1-\log N) proves (\log(eN)=1+\log N\leq N) for every (N\geq1). Hence (N^2\log(eN)\leq N^3), so (\delta_\kappa\leq c/N_\kappa^3\leq c/[N_\kappa^2\log(eN_\kappa)]), with the correct inequality direction.
- Cited-result and assumption audit: Only named prior local results are used. The proposition invokes neither `step_004`, privacy monotonicity, nor an external source theorem.
- Rigor checklist: The denominator is positive, (c) is an arbitrary fixed positive real, and the threshold has order (\forall c>0\ \exists\kappa_c\ \forall\kappa\geq\kappa_c). The specialization at (\rho=3) occurs only after the every-fixed-(\rho) result is proved.
- Local adversarial test: The comparison remains valid for (0<c<1), large (c), (N_\kappa=1), and every bounded, oscillating, or unbounded behavior of (q_\kappa).
- Contribution to target step: It converts `(PN)` into the exact source-scale allowance consumed by final assembly.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the local lemma map. Unit_001 contains the direct `(PS)` instantiation, (K_a\geq2) provenance, (A_\kappa\geq6), exact ceiling identity, and ceiling envelope. Unit_002 contains the exact (\delta)-(N) factorization and the product inequality. Unit_003 contains the uniform exponential-polynomial supremum. Unit_004 contains (|C_\kappa|\to\infty\Rightarrow L_\kappa\to\infty\Rightarrow u_\kappa\to\infty), the explicit exponential domination, the every-fixed-(\rho) tolerance quantifiers, and all bounded, oscillating, and unbounded (q_\kappa) regimes. Unit_005 contains the (\rho=3) specialization, (N_\kappa\geq1), logarithmic comparison, and arbitrary-(c) quantifiers. Elementary monotonicity, differentiation, and maxima of finitely many thresholds are displayed where used. The assembly cites theorem-style labels, not local unit IDs, as mathematical authority.

## Target Claim Audit

The proof establishes exactly the `step_005` sketch-row claim. From the accepted `step_003` identity
\[
\delta_\kappa=e^{-q_\kappa^b-u(L_\kappa)}
\]
and the pointwise setting definition
\[
N_\kappa=\left\lceil K_a\varepsilon_0^{-2}q_\kappa^b
\bigl(1+q_\kappa^b+u(L_\kappa)\bigr)\right\rceil,
\]
it proves (\delta_\kappa N_\kappa^\rho\to0) for every fixed real (\rho>0), with no use of `(SP)`, `(AS)`, or (q_\kappa\to\infty). It then proves for every fixed (c>0) that eventually
\[
\delta_\kappa\leq\frac{c}{N_\kappa^2\log(eN_\kappa)}.
\]
The target's constant, bounded nonconvergent, oscillatory, and unbounded (q_\kappa) regimes are all covered. The proof neither strengthens the assumptions nor weakens the source-allowance conclusion.

## Explicit Rate Audit

The rate interface is complete. Exposed quantities are (a,b,q_\kappa,L_\kappa,x_\kappa,u_\kappa,T_a,\delta_\kappa,N_\kappa,\varepsilon_0), every fixed (\rho>0), limit tolerance (\tau>0), and source constant (c>0). The proof explicitly defines (C_{\rho,\varepsilon_0,K_a}), (B_\rho), (D_\rho), and (U_{\rho,\tau}). These may depend only on fixed (\rho,\varepsilon_0,K_a), with (K_a) depending only on (a,\alpha_0,\beta_0,C_{\mathrm{BLM}}); they do not depend on (\kappa,q_\kappa,L_\kappa,C_\kappa), cardinality, or sequence behavior. The mode is deterministic and sequence-asymptotic for each fixed (\rho); no probability conversion, privacy composition, norm change, or horizon upgrade occurs. Equations (94)--(110) display every ceiling, product, supremum, exponential-decay, and logarithmic domination inequality. The bounded-(q) baseline is preserved, and no cardinality or `(SP)` dependence is hidden.

## Notation Surface Audit

The public-facing quantities (q_\kappa,L_\kappa,T_a,\delta_\kappa,N_\kappa,a,b,K_a,\varepsilon_0) retain their setting meanings. The aliases (x_\kappa,u_\kappa,A_\kappa), functions (F_\rho,H_\rho), constants (C_{\rho,\varepsilon_0,K_a},B_\rho,D_\rho), maximizer (x_\rho), threshold (U_{\rho,\tau}), and optional witness \(\bar q\) are explicitly classified as proof-local or appendix-local and have visible provenance. The one-line calculus auxiliaries (g_\rho) and (f) clarify the two derivative checks and are not exported. The notation exposes the proof obligations and leaves the downstream interface in the original setting notation.

## Target-Step Assembly Audit

Accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) supplies the exact privacy identity, and accepted Lemma~\(\ref{lem:step-003-log-correction}\) supplies (u(L_\kappa)\to\infty). The pointwise definition `(PS)` in `setting.md`, not an `(SP)`-scoped `step_004` conclusion, supplies (K_a\geq2) and the exact integer (N_\kappa=\lceil A_\kappa\rceil). Lemma~\(\ref{lem:step-005-ceiling}\) proves the ceiling envelope; Lemma~\(\ref{lem:step-005-factorization}\) gives the exact two-factor bound; Lemma~\(\ref{lem:step-005-x-supremum}\) gives uniform structural control; Proposition~\(\ref{prop:step-005-privacy-negligibility}\) proves `(PN)` with the exact quantifiers; and Proposition~\(\ref{prop:step-005-source-allowance}\) proves the standard allowance. The accepted `step_004` proof/review pair remains recorded as the sketch requires, but no `(AS)` or other `(SP)`-scoped output appears in this assembly. These named inputs jointly imply every clause of the target without a new assumption, hidden lemma, scope transfer, or diagnostic artifact.

## Review Rationale

The frozen attempt-2 proof matches SHA-256 `9529468202e72f43873b2cd2e66289127bab027ae12a62ae0a9d7c65870c8b63`. The current `step_003` and `step_004` proofs match the hashes certified by their accepted reviews. All five local units are statement-complete, mathematically valid, assumption-disciplined, and jointly target-exact. In particular, the aggregate-triggered scope defect is repaired: unit_001 and the target assembly obtain the exact (N_\kappa) formula, (K_a\geq2), and the ceiling bound directly from pointwise `(PS)`, and no `step_004` conclusion is consumed in the size-divergence-only proof of `(PN)`. The every-fixed-(\rho) quantifiers, bounded and oscillating (q_\kappa), source-allowance comparison, explicit dependence, assumption provenance, notation surface, hidden-subclaim scan, and final assembly all pass. No local proof repair, dependency repair, or sketch-interface change is required, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest valid decision.
