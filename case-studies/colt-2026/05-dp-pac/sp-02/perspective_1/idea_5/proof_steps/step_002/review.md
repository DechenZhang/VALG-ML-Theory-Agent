# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_002
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_5/proof_steps/step_002/proof.md, SHA-256 e8d3f9f1387486e5530a08ac208bf2351296402b3aa057618b6a9aedbffccda6

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma proves exactly the accepted step_002 quantitative interface: the first inequality in (SC), a choice of \(K_a\) independent of the class, cardinality, distribution, sequence index, and \(\varepsilon_0\), and the integer comparison \(n_C\leq N_a(q,L,\varepsilon_0)\). It neither changes the raw dependency claim nor invokes (AS), (PN), or a sequence-level conclusion.
- Proof validity: The accepted step_001 artifact is current and hash-matched to its accepted review. Substitution into its raw bound is exact: \(m_C/q^{-a}=m_Cq^a\leq q^{2a}\), while the two logarithms become \(a\log q+B_0+T_a(q,L)\) and \(a\log q+B_0\). Equations (23)--(27) separately dominate all five resulting summands. Their coefficients sum to the displayed \(D_a=1+a+B_0+\alpha_0^{-1}(a+B_0)\), so (28) follows without dropping a logarithmic, confidence, or \(1/\alpha_0\) term. Since \(K_a\geq C_{\mathrm{BLM}}D_a\) and \(0<\varepsilon_0<1\), (29) correctly uses \(\varepsilon_0^{-1}\leq\varepsilon_0^{-2}\); the final ceiling then gives \(n_C\leq N_a\).
- Cited-result and assumption audit: No external result is newly cited. The unit restates precisely the accepted dependency outputs it uses: \(A_C,n_C\), the universal \(C_{\mathrm{BLM}}\), the PAC/DP conclusions, and the two-term raw bound. Assumption~\(\ref{assump:polynomial-global-stability}\) is consumed only through that accepted dependency. All other inputs are setting-defined primitive scalars or explicit local definitions.
- Rigor checklist: Quantifier order is preserved: \(a\) and \(C_{\mathrm{BLM}}\) are fixed before \(C\), \(K_a\) is then fixed once from only \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\), and the bound holds for every finite \(C\), every \(L=\log|C|\), and every \(\varepsilon_0\in(0,1)\). At \(q=1\), the dependency supplies \(m_C=1,\eta=1\), all \(\log q\) terms vanish, and every displayed domination remains literal. As \(\varepsilon_0\uparrow1\), the sole privacy-factor domination tends to equality, so no constant depends on a gap from \(1\). The integer ceiling is used in the correct direction.
- Local adversarial test: The proof survives the smallest allowed complexity \(q=1\), \(L=0\), arbitrary larger \(L\), \(m_C<q^a\), very small \(\varepsilon_0\), and \(\varepsilon_0\) approaching \(1\). The cardinality-dependent \(u(L)\) remains inside \(T_a\) and is never hidden in \(D_a\) or \(K_a\). No sign reversal or invalid division appears at a boundary.
- Contribution to target step: It supplies the exact source-bound specialization, allowed universal-constant dependence, and the inequality needed to define an exactly \(N_a\)-record learner.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: The proposition establishes exactly the padding part of the sketch row: one kernel with input arity \(N_a\), unchanged arbitrary-output distribution-free realizable PAC utility, and unchanged symmetric replacement-DP parameters.
- Proof validity: From Lemma~\(\ref{lem:step-002-sc-domination}\), \(n_C\leq N\). The coordinate projection onto the first \(n_C\) records is measurable, so \(M_C=A_C\circ\pi_{n_C}^N\) is a kernel on exactly \(N\) inputs. For \(S\sim Q^N\), its prefix has exactly law \(Q^{n_C}\), including independence and identical marginals; hence (32) is equality of the full output laws before applying the dependency's PAC bound. For adjacent \(S,S'\), projection cannot increase the number of differing coordinates, so (34) is the dependency DP inequality on the projected pair. Interchanging the samples proves the reverse DP inequality.
- Cited-result and assumption audit: The proposition uses only accepted Proposition~\(\ref{prop:step-001-binary-private-learner}\) and Lemma~\(\ref{lem:step-002-sc-domination}\). The kernel, its arity, utility, privacy, and output scope are accepted derived inputs; no generated event or new condition is assumed.
- Rigor checklist: The proof covers all adjacency cases. A change in a used coordinate maps to an at-most-one-record change for \(A_C\); a suffix-only change gives identical prefixes and therefore identical output laws; identical inputs are also covered. Both ordered DP directions hold for every measurable output event. The learner remains fixed before \(Q\), and internal randomness is included in the iid output-law equality.
- Local adversarial test: The construction works when \(N=n_C\), when the unused suffix is nonempty, when the changed record alters the instance, label, or both, and when arbitrary suffix values are chosen adversarially. No privacy composition, confidence conversion, properness restriction, or computational restriction is introduced.
- Contribution to target step: It converts the analytic ceiling from unit_001 into the required exact-size learner with zero utility and privacy residual.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the local lemma map. Source-bound substitution, logarithm expansion, all five term dominations, universal \(K_a\), \(q=1\), the \(\varepsilon_0\uparrow1\) boundary, and the ceiling are contained in unit_001. Kernel composition, the exact iid-prefix law, distribution-free quantifier preservation, projection of replacement adjacency, both DP directions, and suffix-only equality are contained in unit_002. The elementary facts \(\log q\leq q^b\) for \(q\geq1\), measurability of coordinate projection, and prefix marginals of a product law are used transparently inside those units and do not hide an additional theorem-level claim. The assembly cites theorem-style labels rather than using unit IDs as mathematical authority.

## Target Claim Audit

The proof establishes the exact accepted sketch-row claim. For every nonempty finite \(C\) and every \(\varepsilon_0\in(0,1)\), it chooses one \(K_a\) with only the permitted dependence, proves the displayed (SC) chain for the current dependency learner, and constructs one exactly \(N_a(q,L,\varepsilon_0)\)-record kernel fixed independently of every realizable \(Q\). The output is still arbitrary, utility is distribution-free realizable \((\alpha_0,\beta_0)\)-PAC in population zero-one risk, and privacy is \((\varepsilon_0,\delta_a(q,L))\)-DP under the setting's symmetric ordered replacement adjacency. No claim is weakened, strengthened, or made conditional on a generated object.

## Explicit Rate Audit

The rate interface is complete. Exposed quantities include \(a,q,L,b,u,T_a,m_C,\eta,\alpha_0,\beta_0,\varepsilon_0,\delta_a,n_C,N_a,C_{\mathrm{BLM}},D_a,K_a\). The inherited \(C_{\mathrm{BLM}}\) is universal, \(D_a\) is explicit, and \(K_a\) depends only on \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\), not on \(X,C,Q,q,L,|C|,\kappa,\varepsilon_0\), unused records, or output representation. Equations (19)--(29) prove every simplification and preserve the explicit \(u(L)\) dependence. Probability mode is joint iid/learner high-probability PAC plus pointwise symmetric DP; horizon mode is fixed exact arity \(N_a\); norm mode is population zero-one risk. There is no auxiliary tolerance or probability conversion. The baseline reduction is exact: when \(N_a=n_C\) the learner is unchanged, and otherwise prefix padding has zero residual.

## Notation Surface Audit

The notation is economical and classified. \(T\) and \(\delta_C\) are direct proof-local aliases; \(B_0,D_a\) are appendix-local bookkeeping quantities; \(\pi_{n_C}^N\) is proof-local; \(K_a\), (SC-step-002), and \(M_C\) are the minimal public-facing outputs needed downstream. The inherited \(A_C,n_C,C_{\mathrm{BLM}}\) retain their accepted meanings and are used only to build the exported interface. No helper object hides cardinality dependence, boundedness, or an admissibility condition.

## Target-Step Assembly Audit

Accepted Proposition~\(\ref{prop:step-001-binary-private-learner}\) supplies the exact raw learner and bound. Lemma~\(\ref{lem:step-002-sc-domination}\) proves the complete (SC) specialization and \(n_C\leq N_a\). Proposition~\(\ref{prop:step-002-exact-padding}\) then supplies the exactly \(N_a\)-record kernel with unchanged PAC, DP, output, and computational scope. These named results jointly imply every clause of the target step, and the assembly introduces no uncited result, hidden assumption, or downstream asymptotic premise.

## Review Rationale

The frozen proof artifact matches the assigned SHA-256, and the accepted step_001 dependency proof also matches the hash recorded by its accepted review. Both local units are target-faithful, self-contained relative to the allowed inputs, and valid under the stated boundary regimes. The requested source substitution, universal-constant audit, logarithmic and \(1/\alpha_0\) dominations, \(q=1\), \(\varepsilon_0\uparrow1\), ceiling, exact iid padding, and both replacement-DP directions all pass. No local repair, dependency repair, or sketch-interface change is required, so ACCEPTED with Smallest Retry Target = None is the smallest valid decision.
