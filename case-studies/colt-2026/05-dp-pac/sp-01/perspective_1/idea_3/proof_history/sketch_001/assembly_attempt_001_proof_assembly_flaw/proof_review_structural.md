# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public appendix is not byte-faithful to the accepted step proofs. `latex_template/5_appendix.tex` contains 27 literal bare spacing words: 21 instances of `qquad` at lines 173, 174, 179 (twice), 340, 341, 396, 397, 619, 624, 672, 1238, 1239, 1254, 1259, 1264, 1269, 2001, 2002, 2164, and 2441, and six instances of `quad` at lines 342 (twice), 605, 1277 (twice), and 1278. It also contains two bare `operatorname` commands at line 517; a lost thin-space command at line 2552, where `k,2^{C_RNL}` replaces the accepted `k\,2^{C_RNL}` from `proof_steps/step_008/proof.md`; and an embedded `0x0D` byte at line 1750 that changes the accepted theorem reference `\ref{prop:step-002-factor-utility}` from `proof_steps/step_005/proof.md` into `<CR>ef{prop:step-002-factor-utility}`. The corresponding accepted proofs for steps 001, 002, 003, 005, 006, 007, and 008 contain the correct `\qquad`, `\quad`, `\operatorname`, `\,`, and `\ref` commands. These assembly-only corruptions compile without a fatal error but render literal command text, alter displayed notation, and suppress a mathematical dependency reference, so the paper-facing proof is not synchronized with its accepted sources.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: Pass. The public theorem matches the exact conditional target in `setting.md`: arbitrary-delta upper bound, fixed-candidate unrestricted lower bound under both delta caps, conditional specialization only at an admissible attained sample complexity, and both one-factor baselines.
- Dependency closure: Pass. All 15 required steps and reviews are current and accepted, their recorded hashes match, and their dependency graph is acyclic and closed.
- Sketch-step coverage: Pass. Every required sketch step maps to its accepted proof/review and to a named appendix subsection and theorem-level consumer; no step is orphaned or bypassed.
- Assembly discipline: Blocking only for the source-synchronization corruption above. The assembly otherwise introduces no independent lemma, changed accepted claim, strengthened assumption, altered quantifier, or new proof obligation.
- LaTeX bundle structural synchronization: Blocking. The appendix contains the 31 command-level corruption instances detailed above: 27 bare spacing commands, two bare operator commands, one lost thin-space command, and one control-byte-corrupted reference.
- Main theorem self-containedness: Pass. Setup, notation, constants, admissibility conditions, learner/output convention, probability mode, exact risk, and conditional scope are defined before use.
- Theorem-style statement shape: Pass. Public dependencies use numbered assumptions and named lemma, proposition, theorem, or corollary references; no public claim/hypothesis/invariant or workflow label substitutes for mathematical authority.
- Explicit-rate and bridge structure: Pass. The quota ceiling absorption, global PAC threshold, candidate delta checks, attained-candidate substitution, exact ceiling removal, and one-factor reductions are displayed with the accepted dependence and modes.
- Derivation-over-notation: Pass. Helper notation remains local, and the appendix retains the substantive inequalities, source mappings, compactness/minimax arguments, couplings, boundary cases, and probability conversions needed to verify the result.
- Appendix local-unit coverage: Pass. Every accepted non-atomic local unit, cited-result application, substantive derivation, boundary case, assumption discharge, and target-step assembly from steps 001--015 is represented in the public appendix.
- Internal label/ref structure: Blocking only at the corrupted reference on appendix line 1750. Existing compile logs otherwise show no unresolved citation/reference or duplicate-label warning.
