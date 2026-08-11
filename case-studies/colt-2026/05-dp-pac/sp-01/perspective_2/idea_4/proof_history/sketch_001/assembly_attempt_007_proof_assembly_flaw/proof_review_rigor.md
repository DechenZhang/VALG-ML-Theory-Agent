# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The main theorem is not theorem-statement self-contained. `latex_template/2_preliminary.tex:9-24` defines the positive-dimensional tuple `(k,m,N,p_0,\ldots,p_d,L,B,\tau_{\rm AT},\tau_{\rm SS})` only as the least-feasible tuple supplied by appendix Lemma~\ref{lem:step-001-calibration} and Proposition~\ref{prop:step-001-teacher}; it gives neither the exact formulas nor a public admissibility definition. Likewise, `latex_template/2_preliminary.tex:26-46` specifies the VC-sensitive and old laws only at a high level while delegating their exact mechanisms and parameters to appendix results. Nevertheless, `latex_template/3_main.tex:7-26` predicates the exact VC-law kernel, privacy, PAC, and sample-size conclusions on that appendix-determined law and `N`, and `latex_template/3_main.tex:35-40` does the same for the old law and `N_{\rm old}`. Thus theorem-local functions and horizons are not fully defined before use, and the preliminary notation is not explicitly expressed from the original setting quantities as required. Give the theorem a self-contained learner/horizon interface, for example by explicitly defining the required law and least-feasible rule before the theorem or by stating a fully quantified existence theorem while keeping the technical construction in named appendix results.
2. The public Step 015 dependency graph is circular. Proposition~\ref{prop:step-015-interfaces} states `(C6)` at `latex_template/5_appendix.tex:8314-8323`, while its proof at lines 8363-8367 says that `(C6)` is proved by the later Lemma~\ref{lem:step-015-tails}. That lemma's statement at lines 8944-8947, however, assumes Proposition~\ref{prop:step-015-interfaces}. The lemma's proof does independently derive `(C6)` and uses only the already sourced `(C1)` portion of the proposition, so the underlying calculation is recoverable, but the named theorem-style dependency is circular as written. Split the source interfaces from the locally proved inequalities, or remove the proposition dependency from the tails lemma and state or cite exactly the `(C1)` input it needs.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: The final theorem blocks and all 16 used accepted step sources were compared with their appendix translations. The substantive DDim descent, mechanism accuracy and privacy, SOA contradiction, marked holdout, rate elimination, finite exponential-weights arm, and minimum-selection derivations are preserved and mathematically coherent. Acceptance fails on the public definition and dependency defects above, not on a newly found accepted-step calculation.
- Statement self-containedness: The four primitive assumptions are public and numbered, but the VC-sensitive and old learner laws and their exact horizons are delegated through the preliminaries to appendix-only definitions. Step 015 also has the circular named-result dependency in Blocking Issue 2.
- Main theorem constants and notation: `R_{\mathrm{VC}}`, `R_{\mathrm{old}}`, `R_{\mathrm{fin}}`, and `\Lambda` are explicitly defined, and the allowed dependence of `K_{\mathrm V}`, `K_{\mathrm O}`, and `K_*` is stated consistently. The unresolved notation defect is the appendix-defined `N`, `N_{\rm old}`, and corresponding learner laws.
- Derivation-over-notation: The appendix retains the needed displayed derivations, including the full pairwise-smoothing and exponential-Markov arguments. In the public interface, however, the phrase "least-feasible tuple supplied by" replaces the definition needed to identify the theorem's horizon and law.
- Explicit-rate contract: The rate expressions expose `(d,v,\alpha,\beta,\varepsilon,\delta)`, state universal hidden-constant dependence, and specify the probability, horizon, and loss modes. Proposition~\ref{prop:step-016-frontier} preserves the ceiling, condition-verification, absorption, probability-conversion, and baseline checks. These rate calculations do not repair the missing theorem-facing learner and horizon definitions.
- Appendix full derivations: The required derivations from Steps 001-016 are present, including the restored Step 004 and Steps 006-012 interfaces, the Step 013 event identity, the Step 015 `(C6)` and `(C7)` proofs, and the Step 016 rate bridges. The remaining Step 015 problem is the circular theorem-style ordering, not omitted calculation text.
- Quantifiers and constants: Universal `D,c` quantifiers, all-input replace-one privacy, primitive parameter ranges, and universal-constant independence are maintained. No unsupported parameter-dependent constant was found beyond the non-self-contained choice of the theorem horizons.
- Probability or convergence modes: The proof preserves all-input approximate DP and unconditional realizable iid high-probability PAC guarantees. Conditional partition and producer-block arguments are converted by explicit finite unions or integration; no expectation-to-tail, conditional-to-unconditional, or pointwise-to-uniform upgrade was found.
- Boundary cases: The bundle separates `d=0` before positive-dimensional formulas, covers `1\le v\le d` including `v=d`, distinguishes fixed from scheduled `\delta`, and treats finite versus infinite `C` without introducing a finite surrogate in the infinite case.
- Hidden subclaims: No additional unreviewed mathematical lemma was found in the final assembly. The hidden structural defect is the Step 015 circular named dependency; its proof content is present but its producer-consumer order is invalid.
