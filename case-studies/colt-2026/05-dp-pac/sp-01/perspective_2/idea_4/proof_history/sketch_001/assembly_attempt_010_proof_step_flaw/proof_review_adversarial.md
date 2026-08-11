# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. **Verified generic null-law counterexample in Step 003.** Proposition~\ref{prop:step-003-quotient-kernel} permits an arbitrary Borel probability law \(\mu_{\varnothing}\) on \(H_C\) at the unique \(N=0\) input, but then asserts that when \(d=0\) this law is necessarily the Dirac law at \(\bar c_0\). The proof of Proposition~\ref{prop:step-003-raw-pullback} repeats the overclaim by calling the pullback of every such \(K_0\) Dirac. Take \(X=\{x\}\), \(C=\{c_0\}\), and \(c_0(x)=0\). Then \(d=0\), \(Q_C\) is a singleton, but \(H_C=\{0,1\}^{Q_C}\) contains two hypotheses. The admissible pointwise law \(\mu_{\varnothing}=\tfrac12\delta_{h_0}+\tfrac12\delta_{h_1}\) is non-Dirac, and its raw pullback along the unique \(T_0\) is the same non-Dirac law. The three setting-defined learner arms still have the correct arm-specific Dirac null law, so the main target is repairable without changing the sketch; however, both the accepted Step 003 artifact and the public appendix contain the false generic assertion. Repair Step 003 by restricting the Dirac clause to the setting-defined arm law, or by removing it from the generic propositions and stating only that \(A_0=K_0\), followed by a fresh Step 003 review and reassembly.

## Nonblocking Concerns

1. The appendix-only Propositions~\ref{prop:step-010-interfaces}, \ref{prop:step-013-interfaces}, and \ref{prop:step-015-interfaces} package material from the accepted cited-result application sections rather than new theorem claims; their substantive statements, including the adaptive-composition derivation, withstand direct checking. During reassembly, however, the added Proposition~\ref{prop:step-006-good-event} dependency and \(E_{\rm core}\) definition inside Proposition~\ref{prop:step-010-mechanism-good} should be kept visibly separate from the literal accepted Step 010 unit or explicitly documented as a definitional translation.

## Suggested Repair Depth

step

## Smallest Candidate Repair Target

/proof-step step_003

## Adversarial Audit

- Weakest theorem-level claim: The three-arm minimum and conditional frontier survive stress testing; the weakest public theorem-style claim is instead the generic \(d=0,N=0\) clause in Proposition~\ref{prop:step-003-quotient-kernel}.
- Standalone theorem attack: The main theorem remains aligned with the four primitive assumptions, uses the actual arm-specific null laws, and does not upgrade the quotient restriction, privacy mode, PAC mode, or small-\(\delta\) schedule. The singleton-output-space stress test breaks only the generic Step 003 helper claim because \(H_C\) remains an improper hypothesis space larger than \(\bar C\).
- Weakest step-level claim: Step 003 units 004--005 overidentify a kernel on a singleton input space with a Dirac output law. A singleton domain makes a kernel constant; it does not make its output measure Dirac.
- Candidate counterexamples or stress cases: The explicit singleton \(X,C,Q_C\) example with a two-point mixture on \(H_C\) is a verified counterexample. Empty inputs, arbitrary labels, duplicate records, \(d=0\), \(d=v=1\), \(v=d\), finite and infinite \(C\), and fixed versus scheduled \(\delta\) otherwise produce no additional break.
- Explicit-rate stress cases: The finite-arm Gibbs tail, integer ceiling, \(\log^+|C|\) boundary, old-arm \(d^5\) rate, VC-arm \(vd^4\) rate, common \(\Lambda^6\) envelope, and the stronger public schedule \(\delta K_*\Lambda^6R_{\rm VC}\to0\) all check out with their stated probability, horizon, and risk modes.
- Appendix self-contained attack surface: All accepted local-unit labels and derivations are present, the three interface wrappers have substantive proofs, and the bundle compiles without unresolved references or citations. The false Dirac sentences remain at the public translations of Propositions~\ref{prop:step-003-quotient-kernel} and \ref{prop:step-003-raw-pullback}.
- Scope or mode upgrade attacks: Raw all-input privacy, quotient-to-raw risk equality, unconditional realizable PAC probability, deterministic pre-data arm selection, and scheduled \(N\delta\to0\) are not silently upgraded. No unresolved scope or convergence-mode attack remains beyond the Step 003 null-law overclaim.
- Remaining risk: After Step 003 repair, a fresh accepted Step 003 review and downstream reassembly are required. The current bundle otherwise passed independent label, reference, citation, hygiene, and cached Tectonic checks; the remaining TeX warnings are nonblocking layout warnings.
