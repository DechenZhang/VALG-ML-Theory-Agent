# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. `latex_template/5_appendix.tex` is not a paper-ready, proof-obligation-preserving translation of the accepted step proofs. It contains 26 bare `quad`/`qquad` tokens and two bare `operatorname` tokens at lines 173-174, 179, 340-342, 396-397, 517, 605, 619, 624, 672, 1238-1239, 1254, 1259, 1264, 1269, 1277-1278, 2001-2002, and 2441. These missing backslashes turn spacing and operator commands into visible mathematical letters. Line 1750 also contains a carriage-return byte that changes `\ref{prop:step-002-factor-utility}` into bare visible `ef{prop:step-002-factor-utility}`. The accepted step sources contain the correct commands, so this is an assembly defect; successful compilation does not cure the visible mathematical and reference corruption.
2. `latex_template/5_appendix.tex:2552` changes the accepted Step 008 inequality term `k\,2^{C_RNL}` to `k,2^{C_RNL}`. The comma is punctuation rather than the accepted multiplication/thin-space notation, so the displayed derivation is not faithful to `proof_steps/step_008/proof.md`. The assembly must restore the accepted expression and be recompiled and rescanned together with the malformed commands in Issue 1.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: All theorem-used accepted source derivations in Steps 001-015 were compared against the appendix proof bodies. Their substantive arguments, inequalities, probability calculations, boundary checks, and final theorem implication are present, but the public derivations are blocked by the assembly corruptions above.
- Statement self-containedness: The main theorem and public corollary state their numbered assumption basis, local candidate conditions, conclusions, probability modes, and allowed dependence. The appendix theorem-style statements expose their named dependencies and local conditions.
- Main theorem constants and notation: `C_{\rm up}`, `C_{\rm quota}`, `c_{\rm low}`, `M_\oplus(C)`, `Q_\oplus`, the factor budgets, and the attained-candidate conditions are defined before use. The bare operator and spacing tokens in Issue 1 are the notation-fidelity failure.
- Derivation-over-notation: The appendix retains the accepted displayed definitions, inequality chains, compactness/minimax argument, one-use privacy simulation, tensorization, rational separation, and rate bridge rather than replacing them with summaries.
- Explicit-rate contract: The arbitrary-`delta` upper scope, both candidate-wise lower delta conditions, conditional substitution at `n_*`, exact ceiling removal, public quota bridge, probability mode, horizon mode, norm, and universal hidden-constant dependence are all explicit.
- Appendix full derivations: The required accepted derivations and target-step assemblies are substantively included for every used step, but exact public-TeX fidelity fails at the locations in the blocking issues.
- Quantifiers and constants: Hard priors are fixed before learners, the common task experiment precedes data and learner randomness, strict inequalities remain strict, and no factor-cardinality or learner-dependent constant is introduced.
- Probability or convergence modes: The proof keeps privacy pointwise, PAC utility high probability, intermediate lower bounds in expectation, and the final lower witness as a strict PAC-failure event. The bounded-loss conversion and marginal overflow accounting introduce no union-bound or mode upgrade.
- Boundary cases: The proof treats zero-mass factors, finite-support thresholds, `n=1`, equality at the delta caps, nonrealizable privacy inputs, the `mu=2` transition, and the exact `k=1` upper and zero-overflow lower baselines.
- Hidden subclaims: No independent theorem-critical claim beyond the accepted named step results and direct finite assembly implications was found. Duplicate-label, missing-reference-target, citation-key, placeholder, workflow-scaffolding, and forbidden-environment scans found no additional blocking defect.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
