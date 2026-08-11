# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public theorem statement is corrupted at the assumption and metric interfaces. `latex_template/3_main.tex:10` contains a carriage return followed by `ef{assump:gaussian-smoothing}` rather than `\\ref{...}`, so the theorem's quantifier does not cite the Gaussian-smoothing assumption. `latex_template/2_preliminary.tex:78` contains `widetilde C_V` without the leading backslash; consequently the public definition of `d_Q` is not the stated four-field metric. These are exact statement/quantifier defects, not cosmetic formatting.

2. The appendix does not preserve the accepted derivations as mathematical TeX. There are 68 literal `\\texttt{...}` source-notation fragments. In particular, the definitions and equations for the step-007 sign-covariant equation, column bootstrap, and two-orientation row closure are rendered as monospaced text at `5_appendix.tex:2386-2605`; the rank/coupon calculation is similarly interrupted at `:1028` and `:1047`; and the step-012 residual/full-Gram bridge is interrupted at `:4077-4114`. The affected fragments contain the first nontrivial definitions, inequality chains, and target-step implications, so the appendix cannot be audited line by line from the bundle. Twenty-five empty `\\(\\)` fragments (for example `:1036`, `:1318`, and `:4750`) are additional mechanical translation debris.

3. Public appendix text is dominated by workflow and provenance scaffolding rather than paper-facing proof. Repeated `Auxiliary facts`, `Assembly`, `local-result applications`, `preceding result`, `specified dependency`, and `global proof diagnostic` paragraphs occur throughout (for example `5_appendix.tex:7-52`, `:457-500`, `:964-980`, and `:3511-3553`). The thirteen assembly paragraphs sit outside theorem proof environments, and `Proof of the Main Theorem` at `:4775-4795` has no `proof` environment and only gives a producer-composition summary. These summaries cannot substitute for target-step derivations required by the rigor contract.

4. Several public theorem-style units do not have a self-contained assumption/dependency basis. Generated conditions are exposed as raw names such as `E_cert`, `E_sm`, `E_cert_eq`, `E_support`, and `E_cluster` (for example `5_appendix.tex:1686-1694` and `:2402-2443`) without a named producer-result reference; raw `assump:...` identifiers appear in statements at `:2913` and `:3565-3567`; and `Lemma [lem:...]` / `Proposition [prop:...]` syntax appears at `:2518` and `:2545`. These forms hide derived-invariant provenance and leave the local theorem claims unable to be checked independently of internal artifacts.

5. The exact baseline specialization is not self-contained and is over-scoped in the public theorem. The appendix uses `\\mathsf B` from `:4475` through `:4748`, but never defines `\\mathsf B` or its required `B1` conditions (orthogonal modes, equal positive weights, and exact certified component representatives) anywhere in the LaTeX bundle. The accepted step-013 source does define that local specialization. Moreover, `3_main.tex:123-127` claims the exact landing/cyclic fixed point for an “exact orthogonal equal-weight specialization” without stating the exact-certified-seed and deterministic `rho_sm=0` scope that the accepted baseline proof requires. The public conclusion is therefore stronger/differently scoped than the derivation.

6. The public runtime simplification fails the Explicit Rate Contract. `3_main.tex:113-121` states a detailed polynomial work bound and then simplifies it to polynomial dependence on `n,r,log(1/epsilon),log(1/delta_init)` in prose, without a self-contained bridge in `3_main.tex` or a named appendix Rate Specialization Bridge proposition. The cost expansion in step-012 (`5_appendix.tex:4380-4422`) is an unlabeled local assembly and is itself partially corrupted by the pseudo-TeX described above; it cannot discharge auxiliary-choice, term-absorption, and final hidden-dependence requirements for the public simplification.

## Nonblocking Concerns

1. The assembly report claims that malformed references, workflow scaffolding, and pseudo-TeX are absent, contrary to the direct source scan above; its hygiene summary should be regenerated after assembly repair.

2. Tectonic terminated before TeX processing because of the installed macOS system-configuration panic, so no PDF/log-based reference or compilation check is available.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: BLOCKING. All thirteen accepted step/review identities are hash-consistent, but the assembled appendix drops mathematical syntax at the step-003, step-007, step-009, step-012, and step-013 hard obligations; the displayed source equations are not recoverable as paper derivations from the bundle.
- Statement self-containedness: BLOCKING. The malformed assumption reference, undefined `\\mathsf B`, raw generated-event assumptions, and malformed theorem references prevent independent checking of the public theorem and appendix units.
- Main theorem constants and notation: BLOCKING. The `d_Q` notation is corrupted, and the baseline clause omits the certified-seed/deterministic-limit qualifiers needed by the accepted setting.
- Derivation-over-notation: BLOCKING. Escaped source notation in `\\texttt` blocks replaces definitions, substitutions, and inequality chains with code-like prose.
- Explicit-rate contract: BLOCKING. The simplified runtime rate has no public Rate Specialization Bridge and no visible bridge proof for all absorbed terms and hidden-constant dependence.
- Appendix full derivations: BLOCKING. Workflow assembly summaries and pseudo-TeX occur where full local-unit and target-step proof text is required; the final main-theorem composition is not inside a proof environment.
- Quantifiers and constants: BLOCKING. The Gaussian-smoothing condition is not bound by the malformed theorem quantifier, and the baseline proof's local conditions are absent from the public statement/bundle.
- Probability or convergence modes: The accepted nested smoothing/conditional-restart modes and cyclic contraction mode are otherwise preserved in the source artifacts; no additional mode upgrade was found after the assembly defects are set aside.
- Boundary cases: The accepted step-012 cap and step-013 exact/no-floor checks cover singular tapes and the deterministic baseline in source form, but the assembled baseline definition is missing and therefore cannot be audited publicly.
- Hidden subclaims: No new mathematical producer is authorized by the workflow summaries; those summaries are themselves a blocker because they stand in for the accepted target-step derivations.

