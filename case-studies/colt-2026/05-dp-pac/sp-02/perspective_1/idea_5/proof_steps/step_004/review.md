# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_5/proof_steps/step_004/proof.md, SHA-256 ddf6b5106fb93a642f0c6cebcef1834d8fec4e911411448c5f42431d0b49bc45

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma proves exactly the iterated-log component required by the accepted `step_004` row: for every real \(r>0\), eventually \(s_\kappa=1+\log^*(1+\ell_\kappa)\leq L_\kappa^r\). Its statement identifies the primitive inputs \(L_\kappa\to\infty\), \(0\leq\ell_\kappa\leq L_\kappa/\log2\), and the setting's base-two log-star convention, and it explicitly includes the boundary \(\ell_\kappa=0\).
- Proof validity: The monotonicity argument for base-two \(\log^*\) is valid because it compares only active iterates before either trajectory has reached a value at most \(1\). The induction \(\log^*(2^n)=1+\log^*n\leq n\) gives \(\log^*x\leq\lceil\log_2x\rceil\leq1+\log_2x\) for every \(x\geq1\). Finite-class counting is translated exactly as \(\ell_\kappa\leq\log_2|C_\kappa|=L_\kappa/\log2\), yielding the displayed natural-log envelope for \(s_\kappa\). The integral inequality \(\log L\leq(2/r)L^{r/2}\) for \(L\geq1\), followed by the explicit coefficient absorption \(A_rL^{r/2}\leq L^r\), proves the every-exponent conclusion.
- Cited-result and assumption audit: No external result is cited. The only inputs are primitive sequence conditions and the counting fact already stated in `setting.md`. The base-two versus natural-log conversion is displayed rather than hidden in a constant. No generated condition or learner property is assumed.
- Rigor checklist: Quantifiers are ordered correctly: \(r\) is fixed before the coefficient \(A_r\) and eventual threshold are chosen. All logarithm domains are handled on the justified tail \(L_\kappa\geq1\). There is no division by \(\ell_\kappa\), no assumption that \(\ell_\kappa\) is positive or diverges, and no unproved asymptotic shorthand.
- Local adversarial test: At \(\ell_\kappa=0\), the setting convention gives \(\log^*1=0\) and \(s_\kappa=1\), which is eventually below every positive power of \(L_\kappa\). For very slowly diverging \(L_\kappa\), the proof still works because its thresholds depend only on the requested exponent and the fixed log-base constants. The argument does not rely on an incorrect natural-log interpretation of \(\log^*\).
- Contribution to target step: It supplies the complete subpower control of the Littlestone contribution needed to combine with the VC term under `(SP)`.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: The proposition establishes the binding target quantifier exactly:
  \[
  \forall t>0\ \exists\kappa_q(t)\ \forall\kappa\geq\kappa_q(t):
  \qquad q_\kappa\leq L_\kappa^t.
  \]
  It uses exact `(SP)`, size divergence, finite-class counting through unit_001, and explicitly preserves the \(d_\kappa=0\) and bounded-\(q_\kappa\) regimes.
- Proof validity: For an arbitrary real \(t>0\), choosing one positive integer \(p>2/t\) is legitimate before varying \(\kappa\). Exact `(SP)` then gives one threshold after which \(L_\kappa>d_\kappa^p\) for every later index. Taking the positive \(p\)-th root gives \(d_\kappa<L_\kappa^{1/p}\leq L_\kappa^{t/2}\), including when \(d_\kappa=0\). Unit_001 at exponent \(t/2\) gives the matching bound for \(s_\kappa\). On a further tail with \(L_\kappa^{t/2}\geq2\), the displayed inequality \(q_\kappa<2L_\kappa^{t/2}\leq L_\kappa^t\) is valid. The resulting threshold is the maximum of finitely many thresholds and therefore applies to every later \(\kappa\), not merely infinitely often.
- Cited-result and assumption audit: The proposition uses only the primitive `(SP)` premise and named Lemma~\(\ref{lem:step-004-iterated-log-subpower}\). It does not strengthen `(SP)`, interchange its quantifiers, or assume \(d_\kappa\), \(\ell_\kappa\), or \(q_\kappa\) diverges.
- Rigor checklist: The proof covers every real \(t>0\), while `(SP)` is invoked only at the single integer \(p(t)\). The passage to \(q_\kappa=L_\kappa^{o(1)}\) is justified both by the every-exponent inequality and by the explicit ratio \(0\leq\log q_\kappa/\log L_\kappa\leq t\) on tails where \(L_\kappa>1\). No finite prefix is incorrectly constrained.
- Local adversarial test: The argument survives \(d_\kappa=0\), constant or oscillatory bounded \(q_\kappa\), arbitrarily small positive \(t\), and sequences for which the `(SP)` thresholds grow rapidly with \(p\). Replacing `(SP)` by one fixed \(p\) or by an infinitely-often statement would break the proof, and no such weakening is made.
- Contribution to target step: It proves the exact every-\(t\) subpower interface for \(q_\kappa\) consumed by units 003 and 004.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: The lemma proves the exact schedule part of `(AS)`: for every \(r>0\), both \(u(L_\kappa)\leq L_\kappa^r\) and \(T_a(q_\kappa,L_\kappa)\leq L_\kappa^r\) eventually. It uses the accepted pointwise definitions from `step_003`, the fixed exponent \(b=2a+2\), and Proposition~\(\ref{prop:step-004-q-subpower}\), without introducing a new schedule or excluding bounded complexity.
- Proof validity: For \(L\geq1\), the inequalities \(u(L)=\log\log(e^e+L)\leq\log(e^e+L)\leq\log(e^e+1)+\log L\) are valid. The same displayed logarithmic bound used in unit_001 gives \(u(L_\kappa)\leq B_rL_\kappa^{r/2}\), and the fixed coefficient is absorbed on a tail. For a fresh target exponent \(r\), unit_002 at exponent \(r/(2b)\) gives \(q_\kappa^b\leq L_\kappa^{r/2}\), while the already-proved bound for \(u\) at exponent \(r/2\) gives the same scale. The exact dependency identity \(T_a=q^b+u\), followed by \(2L^{r/2}\leq L^r\), proves the claimed schedule bound.
- Cited-result and assumption audit: The current `step_003` proof hash matches its accepted review. The lemma restates and uses only accepted Lemma~\(\ref{lem:step-003-log-correction}\) and Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\), plus the named local \(q\)-subpower proposition. Assumption~\(\ref{assump:polynomial-global-stability}\) is used only to fix \(a\), hence \(b\); no stochastic or learner conclusion enters.
- Rigor checklist: The exponent allocation is valid for every real \(r>0\) because \(b\) is a fixed positive integer. Lower bounds \(u\geq1\) and \(T_a\geq2\) justify the logarithmic-ratio form of \(L^{o(1)}\). Constants and thresholds may depend on the requested exponent and fixed log conventions, but not on \(\kappa\) or the varying class quantities.
- Local adversarial test: If \(q_\kappa\) is bounded, including \(q_\kappa\equiv1\), the exact bound \(T_a\leq\bar q^b+u(L_\kappa)\) retains subpower growth. If \(q_\kappa\) grows irregularly, the every-exponent result from unit_002 still controls the fixed power \(q_\kappa^b\). The cardinality correction is never absorbed into a hidden constant.
- Contribution to target step: It proves \(u(L_\kappa)=L_\kappa^{o(1)}\) and the exact target conclusion \(T_a(q_\kappa,L_\kappa)=L_\kappa^{o(1)}\).
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: The proposition applies the exact accepted `step_002` formula, with its fixed \(K_a\), to prove for every \(r>0\) the exact integer bound \(N_\kappa\leq L_\kappa^r\) eventually and then \(N_\kappa/L_\kappa\to0\). It includes the ceiling, the fixed \(\varepsilon_0\), and the bounded-\(q_\kappa\) baseline required by the accepted sketch.
- Proof validity: With \(H=K_a\varepsilon_0^{-2}\) fixed, unit_002 at exponent \(r/(4b)\) and unit_003 at exponent \(r/4\) give \(q_\kappa^b,T_a\leq L_\kappa^{r/4}\). Hence \(q_\kappa^b(1+T_a)\leq2L_\kappa^{r/2}\). The exact formula and \(\lceil x\rceil\leq x+1\) yield \(N_\kappa\leq2HL_\kappa^{r/2}+1\leq(2H+1)L_\kappa^{r/2}\). On a further tail with \(L_\kappa^{r/2}\geq2H+1\), this becomes \(N_\kappa\leq L_\kappa^r\). Taking \(r=1/2\) then gives the displayed ratio bound \(N_\kappa/L_\kappa\leq L_\kappa^{-1/2}\to0\).
- Cited-result and assumption audit: The current `step_002` proof hash matches its accepted review. The proposition uses only its accepted exact sample formula and permitted constant dependence, together with named local results. \(K_a\) depends only on \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\), and \(H\) additionally exposes the fixed \(\varepsilon_0\); neither hides class, cardinality, sequence-index, or complexity dependence.
- Rigor checklist: Every sum, product, fixed power, prefactor, additive \(1\), and ceiling residual has a displayed domination. The every-\(r\) definition and logarithmic-ratio definition of \(N_\kappa=L_\kappa^{o(1)}\) agree because \(N_\kappa\geq1\) and eventually \(L_\kappa>1\). The final \(o(L_\kappa)\) conclusion is proved directly rather than asserted from shorthand.
- Local adversarial test: The proof remains valid for arbitrarily large fixed \(H\), arbitrarily small requested \(r>0\), exact integer ceilings, and bounded or oscillatory \(q_\kappa\). Under the optional tail bound \(q_\kappa\leq\bar q\), equations (92)--(93) directly show \(N_\kappa/L_\kappa\to0\), including \(q_\kappa=1\); no assumption \(q_\kappa\to\infty\) is smuggled into the main proof.
- Contribution to target step: It proves the exact remaining clauses \(N_a(q_\kappa,L_\kappa,\varepsilon_0)=L_\kappa^{o(1)}=o(L_\kappa)\) with complete ceiling and constant control.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the local lemma map. Base-two log-star monotonicity, the envelope \(\log^*x\leq1+\log_2x\), finite-class counting conversion, logarithm-versus-power domination, and \(\ell_\kappa=0\) are contained in unit_001. Exact `(SP)` extraction, the positive-root step including \(d_\kappa=0\), sum absorption, and the every-\(t\) definition of \(q=L^{o(1)}\) are contained in unit_002. The cardinality correction, propagation through \(q^b\), \(u(L)\), and \(T_a\), and bounded-\(q\) schedule behavior are contained in unit_003. Product, fixed-prefactor, additive-one, ceiling, every-\(r\), ratio-limit, and bounded-\(q\) sample controls are contained in unit_004. The preliminary deduction \(|C_\kappa|\to\infty\Rightarrow L_\kappa\to\infty\), maximum-of-finitely-many-thresholds operation, and elementary monotonicity/integration facts are atomic and are proved or displayed where used. The target assembly cites theorem-style labels, not bare unit IDs, as mathematical authority.

## Target Claim Audit

The proof establishes the exact accepted sketch-row claim under the unchanged setting and dependency interface. For every sequence satisfying \(|C_\kappa|\to\infty\), exact `(SP)`, and \(\ell_\kappa\leq\log_2|C_\kappa|\), it proves
\[
\forall t>0\ \exists\kappa_q(t)\ \forall\kappa\geq\kappa_q(t):
\qquad q_\kappa\leq L_\kappa^t,
\]
then proves \(T_a(q_\kappa,L_\kappa)=L_\kappa^{o(1)}\), \(N_a(q_\kappa,L_\kappa,\varepsilon_0)=L_\kappa^{o(1)}\), and \(N_a/L_\kappa\to0\). The proof preserves the exact `(SP)` quantifier order, the natural-log/base-two-log-star conventions, the accepted exact formulas, and the fixed-\(\varepsilon_0\) sequence-asymptotic mode. It covers \(d_\kappa=0\), \(\ell_\kappa=0\), bounded \(q_\kappa\), and arbitrary finite prefixes without weakening or strengthening the target.

## Explicit Rate Audit

The rate interface is complete. Exposed quantities are \(L_\kappa,d_\kappa,\ell_\kappa,s_\kappa,q_\kappa,a,b,u,T_a,K_a,\varepsilon_0,N_\kappa\), every requested exponent \(t,r>0\), and the integer witness \(p(t)\). The only proof-local coefficients \(c_2,A_0,A_r,B_r,H\) are explicitly defined. \(A_r,B_r\) depend only on the requested exponent and fixed logarithm bases; \(H\) depends only on \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}},\varepsilon_0\). Eventual thresholds may depend on the fixed sequence, the requested exponent, and the applicable `(SP)` witness, but no hidden constant depends on the varying index or class quantities. Probability mode is deterministic; horizon mode is the exact every-exponent/eventually-all-indices sequence mode; norm mode is scalar growth relative to \(L_\kappa\) and the ratio \(N_\kappa/L_\kappa\). Equations (61)--(66), (68)--(72), (75)--(80), and (86)--(91) explicitly prove all term absorptions. There is no probability conversion or auxiliary tolerance. The bounded-\(q\) baseline is preserved directly by (82), (92), and (93).

## Notation Surface Audit

The notation surface is controlled. The setting and accepted-dependency quantities \(L_\kappa,d_\kappa,\ell_\kappa,s_\kappa,q_\kappa,a,b,u,T_a,K_a,\varepsilon_0,N_\kappa\) remain public-facing and retain their original meanings. The witnesses \(p(t),\kappa_0(p(t)),\bar q\), coefficients \(c_2,A_0,A_r,B_r\), and abbreviation \(H\) are explicitly proof-local; none is exported into `(AS)`. Each constant has visible provenance, and no helper dictionary hides a cardinality dependence, boundedness condition, or generated invariant. The step exports only the minimal public interface \(q=L^{o(1)}\), \(T_a=L^{o(1)}\), and \(N_a=L^{o(1)}=o(L)\).

## Target-Step Assembly Audit

Lemma~\(\ref{lem:step-004-iterated-log-subpower}\) supplies the every-exponent bound for \(s_\kappa\). Proposition~\(\ref{prop:step-004-q-subpower}\) combines it with exact `(SP)` to prove the required every-\(t\) bound for \(q_\kappa\). Lemma~\(\ref{lem:step-004-schedule-subpower}\) combines that result with the accepted exact `step_003` schedule to prove \(T_a=L^{o(1)}\). Proposition~\(\ref{prop:step-004-sample-subpower}\) then applies the accepted exact `step_002` ceiling formula and proves \(N_a=L^{o(1)}=o(L)\). These named results jointly imply every clause of `(AS)`. The assembly introduces no new lemma, assumption, proxy quantity, hidden constant, probability-mode change, or dependence on global diagnostic artifacts.

## Review Rationale

The frozen target proof matches the assigned SHA-256. The current `step_002` and `step_003` dependency proofs match the hashes recorded by their accepted reviews, and their exact exported formulas are used without alteration. All four local units are statement-complete, mathematically valid, and jointly target-exact. The requested audits of `(SP)` quantifiers, finite-class counting, base-two log-star conventions, \(d=0\), \(\ell=0\), bounded \(q\), every-\(t\) and every-\(r\) definitions, propagation through \(q^b\), \(u(L)\), \(T_a\), products, sums, fixed constants, the ceiling, and the final \(N_a=o(L)\) implication all pass. No local repair, dependency repair, or sketch-interface change is required, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest valid decision.
