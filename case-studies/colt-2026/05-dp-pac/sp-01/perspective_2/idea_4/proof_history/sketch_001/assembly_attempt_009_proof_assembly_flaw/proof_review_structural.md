# Structural Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

None

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Structural Audit

- Goal alignment: The assembled theorem and frontier corollary match the accepted conditional goal under exactly the four primitive assumptions, including quotient-first measurable kernels, raw all-input replacement privacy, realizable-iid PAC guarantees, all three rate arms, their deterministic common-interface minimum, and every declared boundary regime.
- Dependency closure: The live accepted sketch/global pair and all 16 live proof/review pairs close the theorem dependency graph; every step review is `ACCEPTED`, every reviewed-proof hash matches its live proof, the graph is acyclic, and the final theorem proof cites only established preliminary or appendix results.
- Sketch-step coverage: Each of the 16 accepted sketch rows has its corresponding appendix subsection in source order, with Steps 014--016 completing the VC arm, the independently constructed old arm, the finite arm, the common minimum, and the boundary-preserving frontier.
- Assembly discipline: The bundle preserves accepted proof content without importing stale evidence, inventing an unreviewed lemma, strengthening an assumption, or splicing learner laws. All 107 accepted local-unit labels occur in source order; the sole statement-kind change, `claim:step-005-positive-range` to `prop:step-005-positive-range`, is public-facing packaging rather than a mathematical change.
- LaTeX bundle structural synchronization: The assembly-report hashes match all nine live bundle files, `main.tex` includes all five content files and the declared style, bibliography style, and database, and a fresh cached Tectonic build completed successfully to a 714,072-byte PDF. The log has no unresolved reference, citation, TeX, or BibTeX error; its eight overfull-box diagnostics and font substitutions are nonstructural typography warnings.
- Main theorem self-containedness: Relative to the setup and preliminaries, the theorem states the four assumptions, learner interfaces, privacy and probability modes, exact horizons, rates, hidden-dependence restrictions, finite/infinite conventions, and deterministic minimum. Its proof directly composes established appendix certificates, while the corollary points to the named rate-specialization bridge rather than relying on an unstated appendix fact.
- Theorem-style statement shape: The appendix's 110 theorem-style units are complete statements with an explicit assumption/prior-result basis or a self-contained direct basis; there are no public `claim`, `hypothesis`, or `invariant` environments, orphan proof fragments, or theorem-facing workflow dependencies.
- Explicit-rate and bridge structure: The public text exposes the VC, old, and finite constants and exponents, pays ceilings, treats exact `d=0`, `v=d`, finite/infinite classes, and distinguishes fixed-parameter validity from the scheduled-`delta` implications. The Step 016 bridge derives the common minimum and frontier from complete arm certificates without transferring the VC event or schedule to the independent old arm.
- Derivation-over-notation: The appendix retains the accepted kernel constructions, privacy comparisons, probability conversions, rate absorptions, boundary calculations, and target-step assemblies as mathematical derivations; the theorem is not supported merely by renamed notation or dependency assertions.
- Appendix local-unit coverage: Coverage was checked exhaustively, not sampled, across all required `Cited Result Applications`, `Local Derivation`, and `Target-Step Assembly` sections of all 16 live proofs (11,166 source lines). All 107 local-unit labels, substantive display chains, boundary cases, and concluding target assemblies are represented; the few nonliteral display restatements are dependency-level reformulations of already accepted Steps 010, 014, and 015, not omissions.
- Internal label/ref structure: The live bundle has 134 unique labels and 113 distinct referenced targets, with no duplicate or missing target. Both citation keys are present in `reference.bib`, no malformed bare reference/citation command was found, and the independent build resolves the complete internal reference graph.
