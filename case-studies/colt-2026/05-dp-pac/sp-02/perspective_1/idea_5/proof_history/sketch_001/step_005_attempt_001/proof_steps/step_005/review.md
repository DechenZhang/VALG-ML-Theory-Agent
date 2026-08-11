# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_5/proof_steps/step_005/proof.md, SHA-256 931fca6051a5b77c4329fffe83f573b0b6d7549c5f48cac4258b2f46795ab8b7

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma targets the exact ceiling obligation for the public sample size. With the setting-defined aliases \(x_\kappa=q_\kappa^b\), \(u_\kappa=u(L_\kappa)\), and \(A_\kappa=K_a\varepsilon_0^{-2}x_\kappa(1+x_\kappa+u_\kappa)\), it states the exact identity \(N_\kappa=\lceil A_\kappa\rceil\), the positivity condition needed downstream, and the uniform upper bound \(N_\kappa\leq2A_\kappa\).
- Proof validity: The accepted setting and dependencies give \(x_\kappa\geq1\), \(u_\kappa\geq1\), \(K_a\geq2\), and \(\varepsilon_0^{-2}\geq1\). Hence \(A_\kappa\geq2\cdot1\cdot1\cdot3=6\). Therefore \(N_\kappa=\lceil A_\kappa\rceil\geq1\) and \(N_\kappa\leq A_\kappa+1\leq(7/6)A_\kappa\leq2A_\kappa\). Every inequality is pointwise and does not use a limit or any behavior of \(q_\kappa\).
- Cited-result and assumption audit: The exact \(N_a\) formula and class-independent provenance of \(K_a\) are supplied by accepted Proposition~\(\ref{prop:step-004-sample-subpower}\); \(u(L)\geq1\) is supplied by accepted Lemma~\(\ref{lem:step-003-log-correction}\). The current dependency proof and review hashes match their accepted identities. No generated condition is promoted to a primitive assumption.
- Rigor checklist: The ceiling inequality is used only after proving \(A_\kappa\geq1\), indeed \(A_\kappa\geq6\). The proof covers \(q_\kappa=1\), all \(L_\kappa\geq0\), and arbitrary real \(\varepsilon_0\in(0,1)\), with no division by a possibly vanishing quantity.
- Local adversarial test: At the smallest allowed values \(q_\kappa=1\), \(u_\kappa=1\), \(K_a=2\), and \(\varepsilon_0\uparrow1\), one still has \(A_\kappa\geq6\). Thus the ceiling control remains valid at the critical boundary.
- Contribution to target step: It converts the exact integer sample size into the uniform real upper envelope required by the factorization and also supplies \(N_\kappa\geq1\) for the source-allowance comparison.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: The lemma uses the exact public \(\delta_\kappa\) and \(N_\kappa\) and produces precisely the sketch-required factorization, with no surrogate sample size or privacy parameter. The dependence on fixed \(\rho\), \(\varepsilon_0\), and \(K_a\) is displayed in \(C_{\rho,\varepsilon_0,K_a}=(2K_a\varepsilon_0^{-2})^\rho\).
- Proof validity: Accepted `step_003` gives \(\delta_\kappa=e^{-x_\kappa-u_\kappa}\), while unit_001 gives \(N_\kappa\leq2K_a\varepsilon_0^{-2}x_\kappa(1+x_\kappa+u_\kappa)\). Since \(\rho>0\), raising this positive inequality to \(\rho\) preserves order. The identity \((1+x)(1+u)=1+x+u+xu\) proves \(1+x+u\leq(1+x)(1+u)\) for the present \(x,u\geq1\), yielding exactly
  \[
  \delta_\kappa N_\kappa^\rho
  \leq C_{\rho,\varepsilon_0,K_a}
  e^{-x_\kappa}x_\kappa^\rho(1+x_\kappa)^\rho
  e^{-u_\kappa}(1+u_\kappa)^\rho.
  \]
- Cited-result and assumption audit: The exact schedule is restated from accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\), and the ceiling input is the named unit_001 result. All parameter domains and constant dependencies are discharged locally.
- Rigor checklist: The argument is valid for every fixed noninteger or integer \(\rho>0\). It makes no convergence assumption on \(x_\kappa\), performs no probability conversion, and preserves the exact sequence index pointwise.
- Local adversarial test: The split remains valid at \(x_\kappa=1\), for bounded oscillatory \(x_\kappa\), and for arbitrarily large \(x_\kappa\). Neither factor is divided by or assumed bounded away from zero.
- Contribution to target step: It separates all possible structural-complexity behavior into \(F_\rho(x_\kappa)\) and all sequence-decay behavior into \(H_\rho(u_\kappa)\).
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: The lemma proves the required uniform control of the structural factor on the full domain \(x\geq1\) and gives an explicit finite bound depending only on the fixed \(\rho\).
- Proof validity: For \(x\geq1\), \(F_\rho(x)\leq2^\rho e^{-x}x^{2\rho}\). For \(g_\rho(x)=e^{-x}x^{2\rho}\), the derivative \(g_\rho'(x)=e^{-x}x^{2\rho-1}(2\rho-x)\) shows that the maximum on \([1,\infty)\) occurs at \(x_\rho=\max\{1,2\rho\}\). Therefore \(\sup_{x\geq1}F_\rho(x)\leq B_\rho=2^\rho e^{-x_\rho}x_\rho^{2\rho}<\infty\).
- Cited-result and assumption audit: This is a self-contained one-variable calculus derivation. No external theorem, dependency conclusion, or hidden boundedness assumption is used.
- Rigor checklist: The derivative formula is valid for every real \(\rho>0\) on \((0,\infty)\). The cases \(2\rho\leq1\) and \(2\rho>1\) cover the full range, and \(B_\rho\) is independent of \(\kappa,q_\kappa,L_\kappa\), and the class sequence.
- Local adversarial test: The proof covers a fixed \(x_\kappa\), a bounded nonconvergent sequence, an oscillating sequence with unbounded subsequences, and \(x_\kappa\to\infty\). In all cases the same \(B_\rho\) controls every index.
- Contribution to target step: It is the uniform-in-\(q_\kappa\) budget that permits the independent \(u_\kappa\) factor to drive the product to zero.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: The proposition proves the exact every-fixed-\(\rho\) claim `(PN)` with the full eventual-tail quantifiers and explicitly retains bounded \(q_\kappa\), including \(q_\kappa\equiv1\). It does not claim uniformity over a varying \(\rho\).
- Proof validity: The primitive condition \(|C_\kappa|\to\infty\) gives \(L_\kappa\to\infty\), and accepted Lemma~\(\ref{lem:step-003-log-correction}\) then gives \(u_\kappa\to\infty\). For \(u\geq1\), the displayed integral estimate gives \(\log(1+u)\leq3\sqrt u\); hence \(u\geq36\rho^2\) implies \(H_\rho(u)\leq e^{-u/2}\). Combining units 002 and 003 yields \(\delta_\kappa N_\kappa^\rho\leq D_\rho e^{-u_\kappa/2}\), with finite explicit \(D_\rho=C_{\rho,\varepsilon_0,K_a}B_\rho\). For every \(\tau>0\), the finite threshold \(U_{\rho,\tau}=\max\{1,36\rho^2,2\log(D_\rho/\tau)\}\), together with \(u_\kappa\to\infty\), proves \(\delta_\kappa N_\kappa^\rho\leq\tau\) on one eventual tail. The proof correctly handles \(D_\rho<\tau\), when the logarithmic threshold entry is negative and the desired inequality is already automatic.
- Cited-result and assumption audit: The only sequence input is the primitive size divergence. Exact \(u\)-divergence and the exact privacy schedule come from current accepted `step_003`; the exact \(N\) identity and \(K_a\) provenance come from current accepted `step_004`; all further bounds are proved in named local units. Global proof diagnostics are not used as evidence.
- Rigor checklist: The quantifier order is
  \[
  \forall\rho>0\ \text{fixed}\ \forall\tau>0\ \exists\kappa_0(\rho,\tau)\ \forall\kappa\geq\kappa_0:
  \delta_\kappa N_\kappa^\rho\leq\tau.
  \]
  Constants may depend on the fixed \(\rho,\varepsilon_0,K_a\), and thresholds may additionally depend on the fixed sequence and \(\tau\), but none depends on the varying \(\kappa,q_\kappa,L_\kappa\).
- Local adversarial test: If \(q_\kappa\) is bounded or constant, the uniformly bounded \(F_\rho\) factor remains harmless while \(u_\kappa\to\infty\) forces decay. If \(q_\kappa\) oscillates, including between bounded and arbitrarily large values, unit_003 controls every index. If \(q_\kappa\to\infty\), the same proof applies and the exponential \(x\)-decay can only improve the bound.
- Contribution to target step: It establishes `(PN)` for the exact public \(\delta_\kappa\) and \(N_\kappa\) on every admissible sequence, including the theorem-critical bounded-complexity baseline.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: The proposition derives exactly the accepted sketch's standard source-allowance certificate for every arbitrary fixed constant \(c>0\), with an eventual threshold that may depend on \(c\).
- Proof validity: Specializing unit_004 only after its every-fixed-\(\rho\) conclusion is established, take \(\rho=3\) and \(\tau=c\). Then eventually \(\delta_\kappa N_\kappa^3\leq c\). Unit_001 gives \(N_\kappa\geq1\). For every real \(N\geq1\), \(f(N)=N-1-\log N\) has \(f(1)=0\) and \(f'(N)=1-1/N\geq0\), so \(\log(eN)=1+\log N\leq N\). Therefore
  \[
  \delta_\kappa\leq\frac{c}{N_\kappa^3}
  \leq\frac{c}{N_\kappa^2\log(eN_\kappa)}.
  \]
- Cited-result and assumption audit: The proposition uses only named prior local results. It does not invoke privacy monotonicity, a source theorem, or any behavior assumption on \(q_\kappa\).
- Rigor checklist: The denominator is positive because \(N_\kappa\geq1\), the inequality direction after comparing denominators is correct, and \(c\) is arbitrary positive rather than normalized or lower-bounded. The threshold order is \(\forall c>0\ \exists\kappa_c\ \forall\kappa\geq\kappa_c\).
- Local adversarial test: The comparison remains valid for \(0<c<1\), for very large \(c\), at the boundary \(N_\kappa=1\), and on bounded, oscillating, or unbounded \(q_\kappa\) sequences.
- Contribution to target step: It converts `(PN)` into the precise source-scale allowance consumed by final assembly.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the local lemma map. The exact ceiling identity, \(A_\kappa\geq6\), \(N_\kappa\geq1\), and \(\lceil A_\kappa\rceil\leq2A_\kappa\) are in unit_001. The exact \(\delta\)-\(N\) factorization and \(1+x+u\) product inequality are in unit_002. Finiteness and explicit provenance of the uniform exponential-polynomial supremum are in unit_003. The implications \(|C_\kappa|\to\infty\Rightarrow L_\kappa\to\infty\Rightarrow u_\kappa\to\infty\), polynomial-versus-exponential decay, every-fixed-\(\rho\) quantifiers, and all bounded/oscillating/unbounded \(q_\kappa\) regimes are in unit_004. The \(\rho=3\) specialization, arbitrary positive \(c\), \(N_\kappa\geq1\), and \(\log(eN_\kappa)\leq N_\kappa\) are in unit_005. The remaining monotonicity, differentiation, finite-maximum, and maximum-of-finitely-many-threshold operations are atomic scalar steps and are displayed where used. The assembly cites theorem-style labels rather than bare unit IDs as mathematical authority.

## Target Claim Audit

The proof establishes the exact `step_005` sketch-row claim under the unchanged setting and accepted dependency interface. For the exact identities
\[
\delta_\kappa=e^{-q_\kappa^b-u(L_\kappa)},
\qquad
N_\kappa=\left\lceil K_a\varepsilon_0^{-2}q_\kappa^b
\bigl(1+q_\kappa^b+u(L_\kappa)\bigr)\right\rceil,
\]
it proves, for every fixed real \(\rho>0\), \(\delta_\kappa N_\kappa^\rho\to0\) with the correct eventual-tail quantifier order and without assuming \(q_\kappa\to\infty\). It then proves, for every fixed \(c>0\), the eventual source comparison \(\delta_\kappa\leq c/[N_\kappa^2\log(eN_\kappa)]\). The proof covers constant, bounded nonconvergent, oscillatory, and unbounded \(q_\kappa\) behavior and preserves the bounded-\(q_\kappa\) baseline exactly.

## Explicit Rate Audit

The step is rate-bearing and satisfies the explicit-rate contract. Exposed quantities are \(a,b,q_\kappa,L_\kappa,x_\kappa,u_\kappa,T_a,\delta_\kappa,N_\kappa,\varepsilon_0\), every fixed \(\rho>0\), limit tolerance \(\tau>0\), and source constant \(c>0\). The constants are explicit:
\[
C_{\rho,\varepsilon_0,K_a}=(2K_a\varepsilon_0^{-2})^\rho,
\quad
B_\rho=2^\rho e^{-x_\rho}x_\rho^{2\rho},
\quad
x_\rho=\max\{1,2\rho\},
\quad
D_\rho=C_{\rho,\varepsilon_0,K_a}B_\rho.
\]
They may depend only on fixed \(\rho,\varepsilon_0,K_a\), with \(K_a\)'s accepted dependence restricted to \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\); they do not depend on \(\kappa,q_\kappa,L_\kappa,C_\kappa\), or the behavior of the sequence. The proof is deterministic, sequence-asymptotic, and scalar; it performs no probability conversion or privacy composition. All ceiling, product, supremum, exponential-decay, and logarithmic domination inequalities are displayed. The bounded-\(q\) baseline is preserved, and no cardinality dependence is hidden.

## Notation Surface Audit

The public-facing quantities \(q_\kappa,L_\kappa,T_a,\delta_\kappa,N_\kappa,a,b,K_a,\varepsilon_0\) retain their setting or accepted-dependency meanings. The aliases \(x_\kappa,u_\kappa,A_\kappa\), functions \(F_\rho,H_\rho,g_\rho,f\), constants \(C_{\rho,\varepsilon_0,K_a},B_\rho,D_\rho\), maximizer \(x_\rho\), tolerance threshold \(U_{\rho,\tau}\), and optional boundedness witness \(\bar q\) are explicitly classified as proof-local or appendix-local and have visible provenance. They expose rather than conceal the two-factor argument, and none is exported into the target conclusion. The notation surface is economical and target-aligned.

## Target-Step Assembly Audit

Accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) supplies the exact privacy identity and accepted Lemma~\(\ref{lem:step-003-log-correction}\) supplies \(u(L_\kappa)\to\infty\). Accepted Proposition~\(\ref{prop:step-004-sample-subpower}\) supplies the exact integer \(N_\kappa\) formula and \(K_a\) provenance. Lemma~\(\ref{lem:step-005-ceiling}\) gives the legal ceiling envelope, Lemma~\(\ref{lem:step-005-factorization}\) gives the exact two-factor bound, Lemma~\(\ref{lem:step-005-x-supremum}\) gives uniform control over every possible \(q_\kappa\) behavior, Proposition~\(\ref{prop:step-005-privacy-negligibility}\) proves `(PN)` with the correct quantifiers, and Proposition~\(\ref{prop:step-005-source-allowance}\) proves the exact standard allowance. These named accepted dependencies and local results jointly imply every clause of the target step without a new assumption, hidden lemma, proxy quantity, weakened boundary regime, or use of global diagnostics as evidence.

## Review Rationale

The frozen target proof matches SHA-256 `931fca6051a5b77c4329fffe83f573b0b6d7549c5f48cac4258b2f46795ab8b7`. The current `step_003` and `step_004` proof artifacts match the hashes recorded by their accepted reviews, and their exact exported identities are used without alteration. All five local units are statement-complete, mathematically valid, assumption-disciplined, and jointly target-exact. The requested audits of the exact \(\delta\) and \(N\) identities, ceiling conditions, uniform factorization, finite exponential-polynomial supremum, every-fixed-\(\rho\) and eventual-tail quantifiers, all \(q_\kappa\) behaviors, \(u(L_\kappa)\to\infty\), \(\rho=3\), \(\log(eN)\leq N\), arbitrary positive \(c\), explicit constants, hidden subclaims, and target assembly all pass. No step repair, dependency repair, or sketch-interface change is required, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest valid decision.
