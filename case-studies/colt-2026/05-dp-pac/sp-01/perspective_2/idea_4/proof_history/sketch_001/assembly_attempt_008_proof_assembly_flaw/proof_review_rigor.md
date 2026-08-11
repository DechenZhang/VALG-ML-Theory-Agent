# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The two exact Lyu laws named in the main theorem are still not fully defined before use. For the VC-sensitive law, `latex_template/2_preliminary.tex:90-119` specifies the blocks, scales, source locators, lists, scores, and mechanisms, but never defines the source-accuracy substitution `\(\gamma=\alpha/16\)`, the contraction `\(\rho=1-1/(2d)\)`, or the actual stage restrictions `\(H_i^r=\{\bar h\in\bar C:\operatorname{err}_{\bar S_i}(\bar h)\le\rho^{r+1}\gamma\}\)`. Those definitions first appear in `latex_template/5_appendix.tex:3385-3401`. The old-law paragraph at `latex_template/2_preliminary.tex:184-195` likewise delegates to "Lyu's original \(d\)-based restrictions" without giving its accuracy substitution and restriction formula; these first appear at `latex_template/5_appendix.tex:8469-8473` and `latex_template/5_appendix.tex:8811-8817`. A source citation does not identify which theorem-accuracy substitution is intended, and the appendix-only definitions cannot retroactively determine the kernels used at `latex_template/3_main.tex:7-58`. Consequently, the proof establishes the appendix-defined laws while the theorem predicates privacy, PAC utility, and the exact horizons on underdetermined preliminary laws. This is assembly-local: add the two exact restriction dictionaries/formulas to the corresponding preliminary learner definitions, without changing any accepted step.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: All sixteen used accepted step proofs were compared directly with their appendix subsections, including the cited-result applications needed by the derivations, every local-unit proof, and each target-step assembly. The fixed-trace tails, DDim descent, mechanism utility and privacy, SOA contradiction, marked holdout, old-arm reconstruction, rate eliminations, finite exponential-weights arm, and minimum selection retain their substantive equations and implications. No accepted-step calculation defect was found.
- Statement self-containedness: The four primitive assumptions are numbered and public, and the exact scalar horizons are now defined before the theorem. The remaining blocker is law identity: both theorem-facing Lyu kernels omit the restriction threshold dictionaries that determine their stage lists and hence their output laws.
- Main theorem constants and notation: `\(R_{\mathrm{VC}}\)`, `\(R_{\mathrm{old}}\)`, `\(R_{\mathrm{fin}}\)`, `\(\Lambda\)`, the least feasible teacher counts, all three exact horizons, and the allowed dependence of `\(K_{\mathrm V},K_{\mathrm O},K_*\)` are explicit. Only the restriction parameters used inside the two named laws remain appendix-only.
- Derivation-over-notation: The appendix exposes the nontrivial inequalities and conditioning arguments rather than replacing them with aliases or summaries. The preliminary phrases "restriction ... conventions" and "original \(d\)-based restrictions," however, replace a definition needed to identify the theorem's algorithms.
- Explicit-rate contract: The VC, old, finite, and frontier bounds expose all structural, privacy, confidence, and accuracy variables; ceilings and universal hidden-constant dependence are retained. Proposition~\ref{prop:step-016-frontier} gives the scheduled-`\(\delta\)` dominance, term absorption, and baseline reductions required by the corollary.
- Appendix full derivations: Direct source/body comparison found the full derivations for Steps 001-016. In particular, Step 006 retains both fixed-trace branches and the exact conditional event, Step 007 retains the fixed point and tower charge, Steps 008-009 retain endpoint-complete restrictions and finite descent, Steps 010-013 retain actual-output and producer-block conditioning, Step 015 derives `(C6)` and `(C7)` locally without a circular dependency, and Step 016 retains all three comparison arms.
- Quantifiers and constants: The bundle preserves universal `\(D,c\)` quantifiers, arbitrary raw replace-one inputs for privacy, realizable iid sampling only for utility, fixed sample horizons, and universal constant independence. The blocker concerns which pointwise kernels those quantifiers range over, not a numerical inequality.
- Probability or convergence modes: Conditional block and mechanism bounds are integrated explicitly, the marked holdout takes its finite inclusion before producer-block conditioning, and the four confidence shares sum to `\(\beta\)`. No expectation-to-tail, conditional-to-unconditional, pointwise-to-uniform, or fixed-`\(\delta\)` to scheduled-`\(\delta\)` upgrade was found.
- Boundary cases: The exact `\(d=0,N=0\)` singleton law is separated before positive-dimensional formulas; `\(d=1\)`, `\(1\le v\le d\)`, `\(v=d\)`, empty and fallback paths, finite versus infinite `\(C\)`, improper outputs, and fixed versus scheduled `\(\delta\)` are covered.
- Hidden subclaims: No additional unproved mathematical subclaim was found in the assembled derivations. The sole blocking hidden datum is the theorem-facing accuracy/restriction substitution needed to make each named Lyu law a unique pointwise kernel.
