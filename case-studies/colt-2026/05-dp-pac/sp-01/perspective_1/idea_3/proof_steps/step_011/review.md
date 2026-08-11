# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_011
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_3/proof_steps/step_011/proof.md, SHA-256 5259c6a34a8812b105c312b387f1e595591066a8a1d976cf2857333f21fc3315
- Binding setting artifact: perspective_1/idea_3/setting.md, SHA-256 5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0
- Binding sketch artifact: perspective_1/idea_3/proof_sketch.md, SHA-256 6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d
- Binding sketch-review artifact: perspective_1/idea_3/proof_sketch_review.md, SHA-256 9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390, status ACCEPTED
- Accepted step_009 proof/review: SHA-256 9799e655ff793a3787c6fac8863bdb00b3e357436d662381f0308b87ea1723d7 / 009609777bfce6f42c0d8010696c1994862d8ef7080388b9d5b404a676d4c8d2, status ACCEPTED

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-011-binomial-envelope} states the exact binomial upper-tail envelope needed by the sketch, for every real threshold \(t>\mu=np\), and separately states the two monotonicities later used in the small- and large-mean analyses. It also records the finite-support branch \(t>n\).
- Proof validity: Exponential Markov and the exact binomial MGF give
  \[
  \Pr(L\ge t)
  \le \exp\{-\lambda t+\mu(e^\lambda-1)\}.
  \]
  Since \(t>\mu>0\), choosing \(\lambda=\log(t/\mu)>0\) yields
  \[
  B(\mu,t)=\exp\{t-\mu-t\log(t/\mu)\}.
  \]
  The derivatives
  \[
  \partial_\mu\log B=-1+t/\mu>0,
  \qquad
  \partial_t\log B=\log(\mu/t)<0
  \]
  prove the claimed monotonicities. The calculation is valid for noninteger \(t\), because exponential Markov applies directly to the real-threshold event \(\{L\ge t\}\).
- Cited-result and assumption audit: The exponential Markov inequality is restated with its integrability condition, and the MGF calculation uses only the declared binomial law. The inequality \(1+u\le e^u\) is proved inline on the exact domain \(u=p(e^\lambda-1)\ge0\). No external citation, independence across factors, or accepted dependency conclusion is used.
- Rigor checklist: The proof keeps \(p>0\), \(\mu>0\), and \(t>\mu\) explicit before taking logarithms. Positivity of \(B\) justifies transferring derivative signs from \(\log B\) to \(B\). The finite-support observation is compatible with the positive analytic envelope.
- Local adversarial test: At \(p=1\), every admissible \(t>\mu=n\) lies beyond support and the left side is exactly zero. For a noninteger threshold, \(L\ge t\) means the correct integer upper tail. As \(\mu\downarrow0\), no hidden division-by-zero branch is used because \(p=0\) is assigned to unit_005.
- Contribution to target step: Supplies the self-contained optimized Chernoff envelope and all monotonicity facts consumed by units 003 and 004.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-011-numerical-slack} proves exactly the exported constant inequality \(\eta_0=e^7(2/9)^9<3/2048\) and the auxiliary bound \(\log4>1\) used in the large-mean derivative check.
- Proof validity: The factorial-tail estimate \((6+\ell)!\ge6!7^\ell\) gives
  \[
  e\le \frac{163}{60}+\frac7{4320}
  =\frac{11743}{4320}<\frac{87}{32}.
  \]
  The displayed cross multiplication is exact. Hence
  \[
  \eta_0
  <\left(\frac{87}{32}\right)^7\left(\frac29\right)^9
  =\frac{29^7}{2^{26}3^{11}}.
  \]
  The exact integer comparison \(29^7<3^{12}2^{15}\) then gives \(\eta_0<3/2048\). Also \(e<87/32<4\), so monotonicity of the natural logarithm yields \(1=\log e<\log4\).
- Cited-result and assumption audit: The exponential and geometric series are fully restated and instantiated. No numerical approximation, hidden computer-assisted inequality, or unstated constant is required.
- Rigor checklist: Every comparison that must be strict is strict: the rational upper bound on \(e\), the integer comparison, and the final target comparison. Factorizations \(87=3\cdot29\) and \(9=3^2\) produce the displayed powers exactly.
- Local adversarial test: Recomputing the cross products gives \(11743\cdot32=375776<375840=87\cdot4320\), and the final integer comparison has the correct direction and power balance. Thus no decimal-rounding or exponent-cancellation error is present.
- Contribution to target step: Supplies both the exact final risk slack and a rigorous uniform negative sign for the derivative in unit_004.
- Verdict: PASS
- Repair direction: None

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-011-small-mean} covers precisely \(0<\mu=np\le2\), including \(\mu=2\), the floor-eight threshold, strict overflow, ceiling behavior, and the finite-support case \(n\le8\).
- Proof validity: If \(n\le8\), then \(L\le n\le8\le m\), so overflow is impossible. Otherwise \(m\) is an integer with \(m\ge8\), hence
  \[
  \{L>m\}=\{L\ge m+1\}\subseteq\{L\ge9\}.
  \]
  Since \(0<\mu\le2<9\), unit_001 applies at \(t=9\), and fixed-threshold monotonicity gives
  \[
  \Pr(L>m)\le B(\mu,9)\le B(2,9)
  =e^7(2/9)^9.
  \]
- Cited-result and assumption audit: The only prior mathematical authority is the fully proved Lemma~\ref{lem:step-011-binomial-envelope}. The threshold and mean conditions are discharged in the statement and proof.
- Rigor checklist: At \(\mu=2\), \(\lceil4\mu\rceil=8\), so \(m=8\) and the strict event is exactly \(L\ge9\). For every smaller positive mean, \(\lceil4\mu\rceil\le8\), so the floor-eight analysis has no omitted ceiling transition.
- Local adversarial test: The cases \(n=1\), \(n=8\), \(n=9\), \(4\mu\in\mathbb Z\), and \(\mu=2\) all satisfy the same inclusion. No claim about another factor count or a joint overflow event is introduced.
- Contribution to target step: Establishes the uniform overflow bound on the full small-mean regime with the exact endpoint constant.
- Verdict: PASS
- Repair direction: None

### unit_004: lemma

- Statement fidelity: Lemma~\ref{lem:step-011-large-mean} covers \(\mu=np\ge2\), the strict event above the exact ceiling/floor budget, thresholds beyond finite support, and the shared transition value \(\mu=2\), using the derivative check required by the accepted row.
- Proof validity: The branch \(m\ge n\) has probability zero. Otherwise integer-valued \(L,m\) and \(m\ge\lceil4\mu\rceil\) imply
  \[
  \{L>m\}=\{L\ge m+1\}
  \subseteq\{L\ge4\mu+1\}.
  \]
  Applying unit_001 at the real threshold \(t=4\mu+1>\mu\) gives \(B(\mu,4\mu+1)\). For
  \[
  f(\mu)=\log B(\mu,4\mu+1)
  =3\mu+1-(4\mu+1)\log(4+1/\mu),
  \]
  direct differentiation correctly gives
  \[
  f'(\mu)=3+\frac1\mu-4\log(4+1/\mu).
  \]
  For \(\mu\ge2\), \(1/\mu\le1/2\) and \(\log(4+1/\mu)>\log4>1\), so \(f'(\mu)<-1/2\). Therefore
  \[
  B(\mu,4\mu+1)\le B(2,9)=\eta_0.
  \]
- Cited-result and assumption audit: Both consumed local lemmas are restated and proved in this artifact. No standard Chernoff formula is invoked by name without derivation, and no property of the joint multinomial count vector is used.
- Rigor checklist: The real-threshold event inclusion has the correct direction; the ceiling successor supplies the required \(+1\); the derivative includes the chain-rule term \(+1/\mu\); and all logarithms have positive arguments. Equality at \(\mu=2\) is retained, while every \(\mu>2\) gives strict exponent improvement.
- Local adversarial test: If \(4\mu\) is an integer, \(m+1\ge4\mu+1\) exactly. If \(4\mu\) is noninteger, the ceiling only enlarges the gap. If the quota reaches or exceeds \(n\), the separate support branch proves zero overflow and avoids any spurious tail beyond \(n\).
- Contribution to target step: Establishes the uniform overflow bound on the entire large-mean regime without a factor union bound.
- Verdict: PASS
- Repair direction: None

### unit_005: lemma

- Statement fidelity: Lemma~\ref{lem:step-011-zero-overflow} explicitly covers every required degenerate or finite-support branch: \(n\le8\), \(p=0\), \(p=1\), and the exact \(k=1\) specialization under the accepted weight interface.
- Proof validity: Binomial support gives \(L\le n\), so \(n\le8\) implies \(L\le m\). At \(p=0\), \(L=0\) almost surely. At \(p=1\), \(L=n\) almost surely and
  \[
  m=\max\{8,\lceil4n\rceil\}=\max\{8,4n\}\ge n.
  \]
  Under the exact weights, \(k=1\) gives \(M=s_1\) and \(\pi_1=1\), so the preceding endpoint calculation proves exact zero overflow.
- Cited-result and assumption audit: The one-factor conclusion uses only Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors} through the setting-defined positive weight and the hash-matched accepted step_009 interface. It does not import the dependency's low-mass, active-set, or ALMM conclusions.
- Rigor checklist: The endpoint laws are exact rather than limiting arguments. The proof covers \(n=1\), allows \(p=1\) independently of \(k\), and does not weaken the one-factor baseline to the conservative \(\eta_0\) bound.
- Local adversarial test: For \(k=1\), no stochastic mechanism is needed to suppress overflow: \(L_1=n\) and \(m_{n,1}\ge4n\) pointwise. For \(p=0\), the floor eight is harmless and no logarithm or MGF branch is entered.
- Contribution to target step: Supplies the requested exact endpoint statements and preserves the lower \(k=1\) zero-overflow baseline.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the local lemma map. The MGF optimization and its monotonicities, exact numerical slack, small-mean threshold reduction, large-mean composite-envelope derivative, and finite-support/endpoints are isolated as five named units. The proof establishes the elementary inequality \(1+u\le e^u\) inline, restates every standard probability or series fact before use, and displays all integer comparisons needed for the constant. The target-step assembly cites theorem-style local results rather than local unit IDs. It does not assume a risk coupling, a simultaneous overflow event, independence among factor counts, a union bound, or any output of step_009 beyond the exact same-candidate weight/budget interface.

## Target Claim Audit

The proof establishes the exact accepted step_011 row. For every fixed candidate \(n\), factor parameter \(\pi_i\in[0,1]\), marginal law \(L_i\sim\operatorname{Bin}(n,\pi_i)\), and exact budget
\[
m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\},
\]
it proves
\[
\Pr(L_i>m_{n,i})\le\eta_0
=e^7(2/9)^9<\frac3{2048}.
\]
The probability is exactly zero when \(\pi_i=0\), when \(\pi_i=1\), when \(n\le8\), and in particular at \(k=1\). The split \(0<\mu\le2\) versus \(\mu>2\) covers the full remaining domain, while both local lemmas agree at \(\mu=2\). Uniformity is correctly factorwise: the same deterministic constant applies after any factor is fixed, with no simultaneous-event or independence assertion. Although the local binomial lemmas are valid more generally than the lower-chain scope, the assembly specializes them to the same accepted candidate and exact setting objects, so there is no target, quantifier, or dependency drift.

## Explicit Rate Audit

- Exposed variables: the fixed candidate \(n\), factor index \(i\), \(\pi_i\), \(\mu=n\pi_i\), and the exact budget \(m_{n,i}\), together with the displayed universal constant \(\eta_0\).
- Hidden constants and fixed quantities: no hidden constant is used. The floor \(8\), multiplier \(4\), transition \(2\), successor threshold \(9\), and comparison \(3/2048\) are explicit. The natural-log convention is preserved.
- Probability mode: one unconditional marginal binomial probability. There is no conversion to a joint event, conditioning change, union bound, or factor-independence premise.
- Horizon and norm modes: one fixed candidate sample size, with no asymptotic or uniform-in-candidate event; the controlled object is the exact strict overflow probability, later usable as a bounded \([0,1]\)-risk residual.
- Absorption and admissibility: floor/strict-event arithmetic is displayed in (15), ceiling/strict-event arithmetic in (18)-(19), large-mean monotonicity in (21)-(24), and exact numerical slack in (9)-(13). No term is dropped in prose and no auxiliary tolerance is introduced.
- Baseline reduction: at \(k=1\), \(\pi_1=1\), \(L_1=n\), and \(m_{n,1}\ge4n\), so the original zero-overflow conclusion is preserved exactly.

## Notation Surface Audit

The accepted public quantities \(\pi_i\) and \(m_{n,i}\) are used without redefinition drift. The only new public-facing objects are the generated event \(\mathcal O_i=\{L_i>m_{n,i}\}\) and the exact constant \(\eta_0\), which form the minimal interface consumed by steps 012 and 013. The symbols \(p,\mu,t,B,\lambda,f\) are correctly classified as proof-local and are not exported. Every constant has explicit provenance, and the helper notation exposes rather than hides the threshold, support, and derivative calculations.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-011-zero-overflow} first closes \(n\le8\), \(\pi_i=0\), \(\pi_i=1\), and \(k=1\) exactly. On the remaining branch \(n\ge9\), \(0<\pi_i<1\), the assembly sets \(\mu=n\pi_i\). Lemma~\ref{lem:step-011-small-mean} handles \(0<\mu\le2\), and Lemma~\ref{lem:step-011-large-mean} handles \(\mu>2\); their common value at \(\mu=2\) rules out a boundary gap. Lemma~\ref{lem:step-011-numerical-slack} then supplies the strict comparison with \(3/2048\). These named results jointly imply the exact target for an arbitrary factor, and the final paragraph correctly records marginal uniformity without summing overflow probabilities or asserting independence.

## Review Rationale

ACCEPTED is warranted because all five local units are self-contained, correctly scoped, and valid line by line. The proof derives the binomial MGF bound rather than importing an unchecked Chernoff formula; proves both required monotonicities; handles real thresholds, strict events, ceiling and floor arithmetic, finite support, \(\mu=2\), \(p=0\), \(p=1\), \(n\le8\), and \(k=1\); and proves the exact numerical slack by rational and integer arithmetic. The accepted dependency is used only for the exact fixed-candidate weights and budgets, with no unsupported low-mass, eligibility, joint-event, union-bound, or independence inference. The named assembly proves precisely the binding overflow certificate, so no retry is required.
