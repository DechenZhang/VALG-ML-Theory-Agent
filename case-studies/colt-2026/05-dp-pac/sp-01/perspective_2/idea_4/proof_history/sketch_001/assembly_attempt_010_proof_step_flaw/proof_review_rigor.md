# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public rate specialization in `latex_template/3_main.tex`, Corollary `cor:frontier`, does not declare that \(\alpha,\beta,\varepsilon\) are fixed when it states
   \[
   m_C=\widetilde O\!\left(\min\{\log^+|C|,d^5,vd^4\}\right)
   \]
   along a scheduled-\(\delta\) asymptotic. The phrase "fixed-parameter comparison" does not identify the fixed quantities, especially because \(d,v,|C|\), and \(\delta\) vary in that comparison. Proposition `prop:step-016-frontier` correctly fixes \(\alpha,\beta,\varepsilon\), but its citation cannot supply a condition omitted from the public corollary statement. Without that declaration, the shorthand silently suppresses the polynomial \(1/(\varepsilon\alpha)\) dependence present in the full rates and leaves the asymptotic quantifier order ambiguous. This violates the Explicit Rate Contract and theorem-style self-containedness. The smallest repair is assembly-local: state in the corollary that \(\alpha,\beta,\varepsilon\) are fixed, while retaining the displayed \(\delta\)-schedule and the existing bridge citation.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: All sixteen accepted step proofs were compared with their assembled appendix proof bodies, including every non-atomic local unit, cited-result application, dependency use, and target-step assembly used by the main theorem. The algebra, conditioning order, finite unions, privacy composition, rate eliminations, deterministic arm minimum, and final assembly are derivationally valid. No step-level repair is indicated.
- Statement self-containedness: The main theorem states the four primitive assumptions, learner laws, exposed variables, constant dependence, probability mode, horizon mode, risk metric, and conditional quotient scope. Appendix theorem-style statements expose their assumptions and named dependencies. The sole failure is the missing fixed-quantity declaration in Corollary `cor:frontier` identified above.
- Main theorem constants and notation: \(R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}},\Lambda,K_{\mathrm V},K_{\mathrm O},K_*\), the three horizons, kernels, pullbacks, decoder, and extended-real convention are defined before use with correct provenance. Universal constants are not allowed to depend on the class, distribution, target, decomposition, generated events, or outputs.
- Derivation-over-notation: The appendix retains the displayed constructions, inequalities, substitutions, source-object mappings, assumption discharges, kernel integrals, recurrence arguments, confidence ledgers, and rate calculations needed for line-by-line checking. Helper notation does not replace a required finiteness, measurability, probability, privacy, or rate derivation.
- Explicit-rate contract: The full finite-parameter theorem and all three appendix arm bounds expose \(d,v,|C|,\alpha,\beta,\varepsilon,\delta\), universal hidden constants, unconditional iid high-probability risk, fixed-sample horizons, and binary population error. Proposition `prop:step-016-frontier` proves the auxiliary choices, technical conditions, ceiling-aware absorptions, probability conversion, scheduled-\(\delta\) implication, hidden dependence, and baseline reductions. The public shorthand nevertheless fails the fixed-quantities field, as stated in Blocking Issue 1.
- Appendix full derivations: The assembled appendix preserves the substantive source derivations for Steps `step_001` through `step_016`, including the repaired old-Lyu arm, the marked holdout arguments, both privacy paths, all ceiling bounds, and the boundary-preserving frontier. Source-only dependency or target-interface restatements do not leave proof obligations missing from the public proofs.
- Quantifiers and constants: Raw replace-one privacy is quantified over all labeled inputs, while realizability is used only for iid utility. Supremums over distributions and targets, universal-constant restrictions, exact sample-size ceilings, auxiliary confidence allocations, and the order of fixed versus varying parameters are correct except for the public shorthand omission.
- Probability or convergence modes: PAC guarantees are unconditional over iid sampling, partition randomness, and mechanism randomness. Conditional fixed-candidate tails are integrated only after pathwise inclusions and finite conditioning. Fixed positive \(\delta\) is separated from the scheduled statements \(N\delta\to0\); no expectation-to-tail, conditional-to-unconditional, pointwise-to-uniform, or horizon-mode upgrade is used without proof.
- Boundary cases: The proof handles \(d=0\), \(d\ge1\) with \(1\le v\le d\), \(v=1\), \(v=d\), finite and infinite \(C\), empty or fallback paths, nonrealizable inputs for privacy, \(k=2\), fixed positive \(\delta\), scheduled \(\delta\), and all ceiling regimes. It explicitly remains conditional on a finite-or-countable measurable evaluation quotient and does not claim the unrestricted DP-PAC open problem.
- Hidden subclaims: No unreviewed mathematical subclaim is used by the final theorem. Public labels and references are unique and resolved, citation keys are present, and the TeX contains no disallowed claim/hypothesis/invariant environments, workflow proof authority, audit scaffolding, placeholder content, malformed references, or prose-only term absorption.
