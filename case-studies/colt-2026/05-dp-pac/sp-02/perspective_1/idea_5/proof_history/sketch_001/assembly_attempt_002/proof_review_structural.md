# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The main theorem does not bind the per-index domains \(X_\kappa\). It quantifies only a sequence of "nonempty finite binary concept classes" in `latex_template/3_main.tex`, then uses \(X_\kappa\) in the independence clause and in the kernel signature \(M_\kappa:Z_{X_\kappa}^{N_\kappa}\rightsquigarrow\mathcal H_{X_\kappa}\). The setup defines only a generic domain \(X\), whereas the authoritative exact goal explicitly quantifies each class as \(C_\kappa\subseteq\{0,1\}^{X_\kappa}\). Consequently the theorem's learner input and output spaces contain a free symbol and the public theorem is not self-contained. The appendix's later binding of \(X_\kappa\) cannot repair a main-theorem statement. The smallest repair is to quantify the domains in the theorem and state, inline, that each \(C_\kappa\subseteq\{0,1\}^{X_\kappa}\); no accepted proof step needs to change.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: The substantive conditional claim matches the exact goal in `setting.md`: the sole primitive stability assumption, exact superpolynomial quantifiers, unrestricted learner interface, exact sample arity and privacy schedule, every-fixed-\(\rho\) limit, privacy relaxation, and lower-bound contradiction are preserved. Formal alignment is blocked only by the omitted domain binding identified above.
- Dependency closure: All six required proof/review pairs are accepted and checksum-synchronized. Their dependencies form the accepted acyclic order from `step_001` through `step_006`; the final proof uses only available earlier results, with no stale, rejected, or downstream-dependent artifact.
- Sketch-step coverage: Every required sketch step has a corresponding public appendix subsection and is used in the proof of the main theorem. `step_001` supplies stable selection under binary recoding; `step_002` supplies sample-bound domination and exact padding; `step_003` supplies the exact privacy schedule and bounded-complexity activation; `step_004` supplies the subpower consequences; `step_005` supplies uniform privacy negligibility and the standard allowance; and `step_006` assembles the learner family, rates, privacy relaxation, and lower-bound contradiction.
- Assembly discipline: Direct comparison of every accepted non-atomic local unit and target-step assembly against the appendix found no independent unreviewed lemma, changed accepted claim, new assumption, new inequality, convergence-mode upgrade, or hidden proof obligation. The sole defect is the assembly-level omission in the public theorem interface.
- LaTeX bundle structural synchronization: All required content and support files exist, and `main.tex` loads the five content files, `arxiv.sty`, `ims.bst`, and `reference.bib` with the required bibliography behavior. An isolated Tectonic build completed through BibTeX and repeated TeX passes. Static and compiled checks found no duplicate labels, unresolved references, unresolved citations, malformed reference commands, placeholders, forbidden workflow language, or forbidden public `claim`, `hypothesis`, or `invariant` environments. Synchronization remains blocking because `3_main.tex` omits the domain declaration that is present in `setting.md` and in the appendix learner-family proposition.
- Main theorem self-containedness: BLOCKING. \(X_\kappa\) is first used without quantification or definition. All other theorem-critical notation, constants, probability modes, adjacency convention, fixed quantities, and hidden-constant dependence are defined in the setup, preliminaries, or theorem itself.
- Theorem-style statement shape: The appendix's public lemmas, propositions, and theorem state their numbered-assumption or named-result bases, local conditions, and conclusions. Mathematical dependencies use theorem-style references and labeled equations rather than subsection names, proof-step IDs, or local-unit IDs.
- Explicit-rate and bridge structure: The public theorem states the same exact rate proved in the appendix, so no separate simplified-rate bridge is required. The exposed \(N_\kappa\) and \(\delta_\kappa\), hidden dependence of \(K_a\), exact ceiling, probability and horizon modes, every-fixed-\(\rho\) quantifier, bounded-\(q\) case, and allowed-schedule comparison agree with the appendix.
- Derivation-over-notation: Public preliminaries contain only stable notation needed to read the theorem. Proof-local constants and aliases remain in the appendix, where the term dominations, substitutions, exponent allocations, ceiling bounds, boundary cases, privacy factorization, and asymptotic thresholds are displayed rather than replaced by prose-only absorption.
- Appendix local-unit coverage: Direct source-body comparison found full substantive coverage. `step_001` preserves the measurable binary recoding, source-result object mapping and admissibility, distribution-free quantifier order, decoding, and privacy transfer. `step_002` preserves the exact logarithm expansion, all five domination terms, constant selection, exact padding, and both privacy directions. `step_003` preserves logarithm domains, exact schedule identities, endpoint cases, and bounded-\(q\) activation. `step_004` preserves the log-star envelope, exact superpolynomial quantifiers, \(d_\kappa=0\) case, exponent allocations, ceiling, bounded-\(q\) branch, and sample subpower conclusion. `step_005` preserves ceiling control, exact factorization, uniform supremum bound, quantified decay for every fixed \(\rho\), and the \(\rho=3\) allowance comparison. `step_006` preserves sequence instantiation, exact learner/rate attachment, both privacy-relaxation inequalities, the arbitrary-constant lower-bound contradiction, and final target assembly.
- Internal label/ref structure: All labels are unique, every internal reference resolves, the sole citation key resolves through `reference.bib`, and the isolated compiled log contains no unresolved-reference or unresolved-citation warning.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
