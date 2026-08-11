# Structural Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. A few appendix dependency sentences are mechanically awkward or over-expanded (notably near lines 1782, 2022, 2368, 2582, and 4422 of `5_appendix.tex`). Their named inputs and mathematical conclusions remain unambiguous, and they do not omit or alter any accepted derivation.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Structural Audit

- Goal alignment: `setting.md` is exact-goal mode with progress type `full`. The assembled theorem and reader-facing corollary preserve the unrestricted central-moment class, all three `k` regimes, arbitrary precommitted measurable one-bit queries, deterministic fixed horizon, unconditional PAC probability, absolute error, and constants depending only on fixed `k`. No assumption is strengthened and no regime, quantifier, dependence, or conclusion is narrowed.
- Dependency closure: All fourteen required steps have current `ACCEPTED` reviews whose recorded proof identities match the current proof artifacts. The active `step_013` pair is correctly Unit attempt 2. The accepted dependency graph is acyclic, every generated condition has an earlier producer, and no final block uses a stale, rejected, unavailable, or downstream-dependent result.
- Sketch-step coverage: Every accepted `step_001` through `step_014` maps to its own mathematically named appendix subsection, its public theorem-style units, and a concluding completion proof. The bundle contains all 56 accepted local units and all 14 target-step assemblies; every step is used in the final theorem architecture.
- Assembly discipline: The final theorem and corollary proofs only reconcile and combine named public results already proved in the appendix. Assembly introduces no independent lemma, new inequality, changed step statement, changed assumption, probability-mode upgrade, rate simplification, or unreviewed proof obligation.
- LaTeX bundle structural synchronization: `main.tex` uses the five required content files, `arxiv.sty`, `ims.bst`, and `reference.bib`. The public layout contains Theoretical Setup, Preliminaries, Main Theorem, Proof Sketch, the appendix marker, Proof Details, fourteen step subsections, and Proof of the Main Theorem. The three numbered public assumptions preserve the three stable setting ids exactly. An independent temporary-directory Tectonic build produced a 60-page PDF; the final log has no unresolved reference or citation, duplicate definition, overfull or underfull box, or rerun request.
- Main theorem self-containedness: The technical theorem defines every design constant and allocation it uses from setup/preliminary quantities and states protocol legality, probability mode, norm, horizon, population scope, and exact baselines. The concise public corollary states the `k`-only auxiliary choices, the exact setting scope, the three-regime rate through `r_k`, hidden-constant dependence, and unconditional PAC mode. Its proof cites the named appendix Rate Specialization Bridge rather than relying on an opaque admissibility condition.
- Theorem-style statement shape: Every public lemma, proposition, theorem, and corollary states numbered assumptions and/or named prior theorem-style inputs before its local conditions and conclusion. The appendix uses no public `claim`, `hypothesis`, or `invariant` environment, no subsection or step id as mathematical authority, and no workflow, audit-scaffolding, placeholder, or prohibited mechanical phrase.
- Explicit-rate and bridge structure: Proposition `prop:step-014-rate-bridge` states and verifies the auxiliary choices, scale conditions, all three variance specializations, both allocation ceilings, additive-one and confidence-log absorption, localization-cost absorption, zero-query boundary, probability conversion, deterministic horizon, absolute norm, full population scope, and final `k`-only dependence. No rate variable or required dependence is silently dropped.
- Derivation-over-notation: Preliminaries contain only the distribution class, public rate, logarithm convention, and joint-probability notation needed to read the theorem. Proof-local and appendix-local helpers remain outside the public corollary. Constants and bounded objects have primitive, definitional, or named-result provenance, and notation does not replace any required boundedness, finiteness, absorption, or target-transfer derivation.
- Appendix local-unit coverage: I compared the actual Local Derivation and Target-Step Assembly sections of every accepted step artifact against the corresponding appendix proof bodies. Statements, displayed definitions, substitutions, inequality chains, constants, conditional-expectation arguments, source mappings, induction-free finite accumulations, all boundary and empty-group cases, exact baselines, and completion arguments are preserved. The source and appendix each contain the same 94 numbered equation tags with identical multiplicity; no accepted non-atomic unit is replaced by a summary, citation-only proof, or routine-as-above shortcut.
- Internal label/ref structure: Static parsing finds 81 labels, all unique; all 485 internal references resolve; and all three external citation uses resolve to the single required BibTeX entry. There are no malformed bare commands, appendix-local references in either main public statement, unsupported public proof environments, or visible empty-reference behavior.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
