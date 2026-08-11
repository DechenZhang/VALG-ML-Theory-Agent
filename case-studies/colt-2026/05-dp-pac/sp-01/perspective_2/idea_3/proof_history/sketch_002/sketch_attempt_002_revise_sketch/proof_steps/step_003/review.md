# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_003
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_3/proof_steps/step_003/proof.md
- Reviewed proof SHA-256: 829141cebcc176c3d29cd9f98335a1617cc28d3bf0762dc99d1ee87699984dc4
- Reviewed proof status: COMPLETE
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted dependency proof: perspective_2/idea_3/proof_steps/step_001/proof.md, SHA-256 061c31df9fd9ebb495de80126984df01e0f75a7e8d711b96fb14c6567499b486
- Accepted dependency review: perspective_2/idea_3/proof_steps/step_001/review.md, SHA-256 1c08770404c3d9c8a40ad34913620008d83a573c6c115dc9acfe081c3aa65ca6, status ACCEPTED
- Primary-source preflight: the official arXiv record identifies Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1. The downloaded v1 submission/main.tex has SHA-256 b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87. Its second numbered proposition has label prop:chernoff-sample-without-replacement and the strict two-sided bound used below. The source has a harmless notational typo, writing \(k\le N\) before calling the subset size \(t\); the current proof consistently instantiates that sample size as \(m\).

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Marginal law of one exact master-sample block

- Statement fidelity: The proposition proves exactly the fixed-\(S\), fixed-trace, fixed-block marginal interface needed by the sketch row. It makes no simultaneous-trace claim and explicitly disclaims independence among different blocks.
- Proof validity: A fixed block occupies \(m\) prescribed positions of a uniform permutation. Every size-\(m\) subset occurs in exactly \(m!(n_0-m)!\) permutations, so the block is uniform without replacement. Counting the \(K_z\) one-coordinates gives the stated hypergeometric law, and coordinate inclusion probability \(m/n_0\) gives conditional mean \(\mu\).
- Cited-result and assumption audit: Accepted Propositions~\ref{prop:step-001-boundary-entry}, \ref{prop:step-001-teacher-existence}, and \ref{prop:step-001-totality} supply \(d\ge1\), \(k\ge2\), \(m\ge1\), \(n_0=km\), and the data-independent uniform-permutation rule. Thus \(1\le m<n_0\), and all finite-population quantities are legal. Fixed \(S,z,i\) are local conditional hypotheses, not theorem-facing generated assumptions.
- Rigor checklist: Conditioning is only on the already fixed indexed sample; partition randomness remains. Repeated sample points remain distinct indices. The argument is valid for arbitrary binary traces and arbitrary labels, without realizability or iid sampling.
- Local adversarial test: The cases \(m=1\), \(k=2\), all-zero and all-one traces, and repeated underlying sample points all give the claimed marginal law. Dependence among the complementary partition blocks does not affect this one-block calculation.
- Contribution to target step: It supplies the exact source-compatible probability space used by both tail lemmas.
- Verdict: PASS
- Repair direction: None.

### unit_002: High-error relative finite-population tail

- Statement fidelity: The lemma targets precisely the strict guard \(\mu>\gamma/3\), strict failure event \(\lvert Z_i-\mu\rvert>\mu/(5d)\), and common \(m\alpha/d^2\) scale required by the accepted row.
- Proof validity: Official arXiv v1 Proposition 2 states
  \[
  \Pr\!\left[\lvert\bar X_J-\bar X\rvert>\theta\bar X\right]
  \le 2\exp\!\left(-\frac{r\bar X\theta^2}{3}\right)
  \]
  for a random size-\(r\) subset sampled without replacement from a fixed binary population. With \(r=m\), \(\bar X=\mu\), and \(\theta=1/(5d)\), this is \(2e^{-m\mu/(75d^2)}\). Since \(\mu>\gamma/3=\alpha/48\), the exponent is strictly larger than \(m\alpha/(3600d^2)\), yielding the displayed weak upper bound in the correct direction.
- Cited-result and assumption audit: The source identity, v1 label, factor \(2\), factor \(1/3\), strict event, and binary finite-population convention were checked directly. Proposition~\ref{prop:step-003-block-marginal} supplies uniform sampling without replacement; accepted \(d\ge1\) gives \(0<1/(5d)<1\). The source is used only for the relative clause, not for the near-zero absolute clause.
- Rigor checklist: The deterministic endpoint \(\mu=1\) is handled separately. For \(0<\mu<1\), every source hypothesis is discharged. There is no rounding, asymptotic absorption, or probability-mode conversion.
- Local adversarial test: At \(d=1\), the tolerance is \(1/5\) and the calculation remains valid. As \(\mu\downarrow\gamma/3\) from above, strictness still implies the required non-strict exponent comparison. At \(\mu=1\), the failure probability is zero.
- Contribution to target step: It proves the high-error implication with \(c_{\rm tr}=1/3600\).
- Verdict: PASS
- Repair direction: None.

### unit_003: Direct hypergeometric mgf/KL upper tail

- Statement fidelity: The lemma states a self-contained one-sided result for exactly \(0<\mu<t<1\), under the named block-marginal proposition, and does not overclaim the endpoint \(\mu=0\).
- Proof validity: Uniformity expresses the conditional mgf as \(e_m(a)/\binom{n_0}{m}\) for \(a_u=e^{\lambda z_u}>0\). The fully restated Maclaurin inequality bounds this by \((1-\mu+\mu e^\lambda)^m\). Conditional Markov then gives the Bernoulli Chernoff objective. The admissible optimizer
  \(\lambda_*=\log[t(1-\mu)/(\mu(1-t))]>0\)
  is substituted correctly, producing exactly \(-mD(t\Vert\mu)\).
- Cited-result and assumption audit: Maclaurin's elementary symmetric-mean inequality is stated in current notation with all assumptions, and the proof records its normalized-Newton derivation. Finiteness, positivity, and \(m\le n_0\) come from the accepted dependency and unit_001. Conditional Markov is restated and instantiated.
- Rigor checklist: There is no interchange of a limit, expectation, or optimization. The proof takes one explicit admissible \(\lambda_*\), so no existence or endpoint issue is hidden. All logarithm arguments are positive under \(0<\mu<t<1\).
- Local adversarial test: As \(t\downarrow\mu\), the exponent tends to zero consistently. The lemma is not invoked at \(\mu=0\), \(\mu=t\), or \(t=1\). The accepted branch has \(m<n_0\), though the symmetric-mean argument also covers \(m=n_0\).
- Contribution to target step: It supplies the missing nonvanishing low-error tail directly, without treating Lyu Proposition 2 as an absolute-tail theorem.
- Verdict: PASS
- Repair direction: None.

### unit_004: Low-error absolute finite-population tail

- Statement fidelity: The lemma covers the exact closed guard \(0\le\mu\le\gamma/3\), the exact bad event \(Z_i>\gamma/2\), the \(\mu=0\) null boundary, and an explicit exponent stronger than the common target scale.
- Proof validity: If \(\mu=0\), binary-valuedness forces every trace coordinate and hence \(Z_i\) to be zero. For \(0<\mu\le\gamma/3\), \(t=\gamma/2\) satisfies \(0<\mu<t<1\), because \(0<\alpha<1/4\) gives \(0<\gamma<1/64\). The inclusion \(\{Z_i>t\}\subseteq\{Z_i\ge t\}\) makes the KL lemma applicable without a lattice assumption. Since \(D(t\Vert q)\) decreases in \(q<t\), the worst allowed mean is \(q=\gamma/3\). Equations (23)-(28) correctly show \(D(\gamma/2\Vert\gamma/3)\ge\gamma/50\), hence \(e^{-m\gamma/50}=e^{-m\alpha/800}\).
- Cited-result and assumption audit: All ingredients are the named prior KL lemma and elementary logarithmic inequalities proved in the unit. No extra concentration theorem or generated event is assumed.
- Rigor checklist: The derivative \((q-t)/(q(1-q))\) has the correct sign. The identity with \(u=\gamma/(6-2\gamma)\), the bounds \(u<(17/100)\gamma<1/100\), and \(\log(1-u)\ge-u/(1-u)\) have the correct directions. Strict versus non-strict thresholds and unattainable real block means are handled explicitly.
- Local adversarial test: At \(\mu=0\) failure is impossible. At \(\mu=\gamma/3\) the KL comparison is attained at the worst allowed second argument and remains positive. Arbitrarily small positive \(\alpha\) only scales the exponent; it does not deactivate it.
- Contribution to target step: It proves the low-error clause with a stronger \(m\alpha\) exponent, including both requested boundary branches.
- Verdict: PASS
- Repair direction: None.

### unit_005: Exact two-clause per-trace block event

- Statement fidelity: The proposition exports the exact conjunction of the two guarded \(E_{\rm good}\) clauses for one fixed trace and block and the requested coefficient \(4\) with one common explicit constant \(c_{\rm tr}=1/3600\).
- Proof validity: The complement of the two implications is exactly the union of the two guarded bad events. The guards \(\mu>\gamma/3\) and \(\mu\le\gamma/3\) are disjoint and exhaustive. Units 002 and 004 give coefficients \(2\) and \(1\). Because \(d\ge1\),
  \[
  e^{-m\alpha/800}
  \le e^{-m\alpha/(800d^2)}
  \le e^{-m\alpha/(3600d^2)}.
  \]
  The conditional union bound therefore gives coefficient \(3\), which is validly padded to \(4\).
- Cited-result and assumption audit: The statement names all primitive assumptions, accepted dependency propositions, and local fixed objects. It cites the two tail lemmas by theorem-style labels and uses no result from step_002.
- Rigor checklist: At \(\mu=\gamma/3\), only the low guard applies; at \(\mu=0\), its bad event is empty; at \(\mu=1\), only the high guard applies and its bad event is empty. The final translation \(z_u={\bf1}\{h(x_u)\ne y_u\}\), \(\mu=e_S(h)\), \(Z_i=e_i(h)\) is exact.
- Local adversarial test: Mutually dependent partition blocks cause no issue because this proposition fixes one block and uses only a two-event union bound. No trace count, block count, tower property, or integration over \(S\) is smuggled into the conclusion.
- Contribution to target step: It is the exact per-trace interface consumed by step_004.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent nontrivial subclaim remains outside the five-unit map. Marginal block uniformity, the cited high-error tail, the direct mgf/KL theorem, its low-error specialization, and the guarded-event assembly each have a named theorem-style result and matching derivation. Maclaurin's inequality, conditional Markov, and the finite union bound are fully restated before use; the logarithmic bounds in unit_004 are proved inline. Deterministic endpoint observations, finite permutation counting, differentiation, and direct substitutions are atomic parts of their named units. The proof uses unit IDs only as audit handles: mathematical authority in the derivation and assembly is expressed through Proposition~\ref{prop:step-003-block-marginal}, Lemmas~\ref{lem:step-003-high-relative}, \ref{lem:step-003-hypergeom-kl}, \ref{lem:step-003-low-absolute}, and Proposition~\ref{prop:step-003-per-trace}.

The text mentions step_002 only to exclude it. No Sauer--Shelah bound, trace multiplicity, class property, block union, or output from that step enters any derivation. Likewise, no independence among partition blocks is asserted or used.

## Target Claim Audit

The proof establishes the accepted step_003 row exactly. Conditional on every fixed indexed sample \(S\), for every fixed binary trace and fixed block label, it proves the high-error relative clause when \(\mu>\gamma/3\) and the low-error absolute clause when \(\mu\le\gamma/3\), jointly with failure at most

\[
4\exp\!\left(-\frac{m\alpha}{3600d^2}\right).
\]

The probability is only over the data-independent random partition, the horizon is one fixed block, and the output is not upgraded to a simultaneous event. The exact source-facing thresholds are preserved: high guard strict, low guard complementary and closed, good inequalities non-strict, and bad inequalities strict. The proof neither weakens the exponent nor strengthens the theorem assumptions.

## Explicit Rate Audit

- Exposed variables are exactly \(m,\alpha,d\), together with \(\gamma/3=\alpha/48\), \(\gamma/2=\alpha/32\), and relative tolerance \(1/(5d)\). The exported constant is explicitly \(c_{\rm tr}=1/3600\), and the coefficient is explicitly \(4\).
- Hidden constants have no parameter, sample, class, trace, block, partition, or generated-object dependence. The cited \(1/3\), derived \(1/50\), resulting \(1/800\), and common \(1/3600\) all have displayed provenance.
- Fixed quantities are \(S\), one binary indexed trace, one block label, and the public scalar dictionary. Probability is conditional over partition randomness, with no integration or confidence conversion. Horizon mode is one finite block, and norm mode is scalar absolute deviation of binary empirical error.
- Admissibility conditions \(d\ge1\), \(0<\alpha<1/4\), \(m,n_0,k\in\mathbb N\), \(n_0=km\), and marginal uniformity are supplied by the primitive parameter range, accepted step_001, and unit_001. There is no auxiliary tolerance left unquantified.
- Equation (9) gives the exact high-error specialization, equation (28) gives the low-error KL lower bound, and equation (34) gives the only cross-scale weakening. No term is absorbed by prose. This step contributes the exact concentration factor to the later trace fixed-point bridge; it does not perform that later specialization itself.
- The meaningful local baseline cases all reduce correctly: \(d=1\), \(\mu=0\), \(\mu=\gamma/3\), and \(\mu=1\). The global \(d=0\) baseline is legally bypassed through the accepted dependency before any division by \(d\).

## Notation Surface Audit

The proof classifies its notation appropriately. The setting/sketch-facing surface exports only \(e_S(h)\), \(e_i(h)\), the fixed thresholds, and \(c_{\rm tr}\). The trace \(z\), \(K_z\), \(\mu\), \(I_i\), \(Z_i\), and \(\mathsf G_{z,i}\) are useful appendix-local translations and are eliminated in the final error-language statement. Generic source variables, symmetric polynomials, Chernoff optimizer, and elementary inequality dummies remain proof-local. No helper dictionary obscures the probability mode, finite-population law, constants, or final interface.

## Target-Step Assembly Audit

The assembly uses only the accepted dependency conclusions, the independently checked Lyu proposition, and the four preceding named local results. Proposition~\ref{prop:step-003-block-marginal} supplies the exact marginal law; Lemma~\ref{lem:step-003-high-relative} supplies the high branch; Lemmas~\ref{lem:step-003-hypergeom-kl} and \ref{lem:step-003-low-absolute} supply the low branch; Proposition~\ref{prop:step-003-per-trace} joins them with the common constant. All references are theorem-style, all objects are translated back to the exact sketch notation, and these conclusions jointly imply equation (35) without step_002, block independence, a hidden union, or a global-diagnostic claim.

## Review Rationale

ACCEPTED is warranted because the proof matches the fixed-trace sketch interface exactly, its only external concentration input has the verified arXiv v1 identity and statement, the without-replacement mgf/KL derivation is correct line by line, and every strictness, conditioning, constant, and boundary case closes. The accepted step_001 dependency supplies exactly the positive integer and partition interface used here, while no unsupported dependency or generated invariant enters. There is therefore no step-local repair, dependency repair, or sketch change to route, so None is the smallest retry target.
