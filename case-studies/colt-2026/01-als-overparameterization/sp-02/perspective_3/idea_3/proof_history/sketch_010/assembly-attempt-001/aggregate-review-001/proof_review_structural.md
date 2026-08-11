# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The appendix retains source-only equation aliases and dependency numbers whose defining displays were not translated into the public TeX. In `step_007`--`step_009`, `(Haar)` and `(LEV)` are used as mathematical interfaces without a public `\tag`, `\label`, or self-contained definition; in particular, the statements of Proposition~\ref{prop:step-008-raw-leverage}, Lemma~\ref{lem:step-009-normal-energy}, and Proposition~\ref{prop:step-009-raw-witness} condition on or conclude the undefined `(LEV)`. In `step_014`, dependency equations `(1)`--`(2)` and target aliases `(T1)`--`(T3)` were omitted even though the proposition statement and subsection assembly still invoke them. In `step_015`, Proposition~\ref{prop:step-015-conditional-accounting} states only that the undefined relations `(T)` hold. These plain-text references compile silently, but they make several public theorem-style statements and downstream proof dependencies non-self-contained. Restate the exact inequalities or identities in the affected statements and replace the aliases by named theorem-style references or genuine labeled equations.

2. The public appendix invokes nontrivial named standard results without proving them inline or supplying BibTeX-backed citations. Examples include the rectangular Gaussian operator-norm tail, Weyl singular-value perturbation inequality, Gaussian polar decomposition, self-adjoint matrix Bernstein inequality, uniqueness of Haar measure, and the Bakry--Emery log-Sobolev criterion. There are no citation commands in the bundle and `reference.bib` contains no corresponding entries. The accepted current-notation restatements and object mappings are present, so this is an assembly-level source-hygiene repair: add valid sources and citations, or include complete inline proofs where appropriate.

3. Every one of the 15 appendix step subsections begins with a standalone `proof` environment titled `Auxiliary facts in the present notation`. These unattached blocks mechanically reproduce dependency applications and assumption-discharge material before the theorem-style units. Under the public-TeX contract, cited-result applications and discharges must be integrated into the relevant lemma/proposition statements and proofs, not emitted as standalone audit-style proof blocks. Fold their necessary mathematical content into the corresponding unit proofs, retaining the current-notation mappings and removing redundant provenance narration.

## Nonblocking Concerns

1. `step_003` is lengthy, but its four-unit interface is coherent and its second producer attempt repaired presentation rather than a second substantive mathematical defect. No missing interface or overload-triggered sketch revision remains.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: Exact conditional-goal alignment. The theorem preserves the realized CP target, balanced simultaneous GD, full rank and dimension window, physical Frobenius loss, explicit positive endpoint floor, and the possibly zero factor `P(C_path | E_init_norm)`. It is labeled `conditional` and expressly disclaims an unconditional solution.
- Dependency closure: All current step proofs and reviews match sketch attempt 10 and their current unit attempts; all 15 reviews are `ACCEPTED`. The accepted dependency graph is acyclic, every consumer follows its producer, and all six stable assumptions retain their setting identities.
- Sketch-step coverage: Exhaustive. The appendix has one subsection for each of `step_001` through `step_015`, with local-result counts `3,3,4,3,4,4,3,4,2,2,3,3,2,2,3`, exactly matching all 45 accepted source units. Every step is used transitively by the main-theorem chain.
- Assembly discipline: Apart from the presentation defects above, the bundle introduces no independent theorem-style lemma: its 19 lemmas and 26 propositions are exactly the 45 accepted units. Each subsection includes concluding proof text translating its source `Target-Step Assembly`.
- LaTeX bundle structural synchronization: All required source/support files and the fresh `main.pdf` exist. The compile log has no unresolved references, warnings, or overfull boxes; environments balance; labels are unique; stable assumption labels match `setting.md`; and no template placeholder or workflow path remains. The undefined plain-text aliases in Blocking Issue 1 evade those compile checks.
- Main theorem self-containedness: The main theorem is concise and reader-facing, names Assumptions~1--6, defines `epsilon_0(kappa)` inline, exposes allowed constant dependence, probability mode, all-time/asymptotic horizon, norm modes, and the unresolved conditional factor. It does not rely on appendix-local labels in its statement.
- Theorem-style statement shape: Fails only at the affected appendix interfaces listed in Blocking Issue 1. Other local results state their numbered-assumption or named-result basis and local conditions before their conclusions.
- Explicit-rate and bridge structure: The public theorem states the same technical rate proved in the appendix, so no separate simplification bridge is needed. The thresholds, failure conversions, `kappa_1^12` anisotropic loss, endpoint `15/16` margin, and final `kappa_1^{-12}` relative-loss dependence remain explicit.
- Derivation-over-notation: The appendix preserves the displayed definitions, inequalities, constants, conditional-probability conversions, boundary cases, and target-side transfers from every accepted unit. Normalization remains certificate-only; `D_r`, `Dhat_0`, the coefficient residual, and physical target/loss remain raw.
- Appendix local-unit coverage: Every source local derivation was compared against its appendix body, not sampled. All displayed derivations are present; the few formatting-changed displays in steps 002, 003, and 012 retain the same formulas. All invoked dependency/standard-result applications and all 15 target assemblies are present, subject to the citation and integration defects above.
- Internal label/ref structure: Every theorem-style label is unique and cited; all `\ref` targets resolve. Mathematical closure in steps 014--015 uses the exact same target and discards only the nonnegative orthogonal physical residual. The remaining defect is the use of unlabeled source aliases rather than public theorem/equation references.
