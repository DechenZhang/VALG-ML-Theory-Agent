# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public selected-learner schedule is not synchronized with its named appendix Rate Specialization Bridge or with the accepted Step 016 statement. `latex_template/3_main.tex` lines 98--115 asserts that
   `delta K_V Lambda^4 R_VC -> 0` implies `N_* delta -> 0` and cites
   Proposition~`\ref{prop:step-016-frontier}` for the bridge. The accepted
   `proof_steps/step_016/proof.md` Unit 007 proves exactly this implication
   from `N_* delta <= delta K_V Lambda^4 R_VC`. In contrast,
   `latex_template/5_appendix.tex` lines 10716--10731 changes the public
   proposition to the more restrictive premise
   `delta K_* Lambda^6 R_VC -> 0` and expressly says that the implication is
   not asserted under a weaker premise. Although displayed chain (7.2) still
   contains the accepted `K_V Lambda^4` domination, the proposition's stated
   schedule and disclaimer contradict the corollary that relies on it. The
   same mismatch makes `assembly_report.md`, which records the accepted
   `K_V Lambda^4` schedule and says no accepted rate or schedule changed,
   inconsistent with the public appendix. This is an assembly-introduced
   accepted-statement and explicit-rate synchronization defect. Restore the
   accepted Step 016 schedule in Proposition~`\ref{prop:step-016-frontier}`
   and its proof prose, without weakening the public corollary or changing a
   proof-step artifact.

## Nonblocking Concerns

1. The cached build recorded in `assembly_report.md` succeeds, but reports
   eight overfull appendix boxes, with maximum excess `22.38173pt`, and two
   font-shape substitutions. These warnings do not affect proof closure,
   references, or citations, but remain paper-readiness cleanup.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: The main theorem and readable corollary otherwise match the exact-goal, explicitly conditional finite-or-countable evaluation-quotient target under the four primitive assumptions. They preserve the exact zero-sample branch, all-input privacy, unconditional realizable PAC mode, three-arm minimum, and unresolved unrestricted scope. The appendix bridge's substituted schedule is the sole claim-alignment defect.
- Dependency closure: All 16 live step reviews are `ACCEPTED`, bind the current proof hashes and producer attempts, and have a current, acyclic accepted dependency closure. The live setting, sketch pair, global diagnostic pair, step pairs, assembly report, and nine bundle files match their frozen SHA-256 identities.
- Sketch-step coverage: Every required Step 001--016 is used and has a source-ordered appendix subsection. The final main-theorem proof cites named public results for quotient transport, the VC arm, the independently calibrated old arm, the finite arm, deterministic threshold selection, and the frontier; no step is orphaned or silently declared unnecessary.
- Assembly discipline: Every accepted local derivation and target-step assembly is translated into the appendix, and the additional interface propositions only consolidate accepted dependency applications. The change from the accepted Step 016 `K_V Lambda^4` schedule to the appendix's `K_* Lambda^6` schedule is an unreviewed alteration of an accepted rate-bearing conclusion and is therefore blocking at assembly depth.
- LaTeX bundle structural synchronization: `main.tex`, both support files, the bibliography, and all five content files are present. The repaired proof-sketch authority map now names the Step 002 propositions and dimension lemmas with their exact result types. The remaining synchronization failure is the disagreement among `3_main.tex`, Proposition~`\ref{prop:step-016-frontier}`, and `assembly_report.md` over the selected-learner schedule.
- Main theorem self-containedness: Relative to the setup and preliminaries, the theorem defines its learner laws, exact horizons, exposed variables, hidden-constant restrictions, privacy and probability modes, population-risk norm, finite/infinite convention, and deterministic minimum. The corollary uses the permitted short-form bridge pattern, but its named appendix proposition does not state the same schedule.
- Theorem-style statement shape: Public theorem-style units otherwise state their numbered assumptions or named prior results, local conditions, and conclusions. The appendix has no public `claim`, `hypothesis`, or `invariant`, workflow authority, or audit-scaffolding dependency. Item 5 of the frontier proposition is internally contradictory with its displayed domination and externally contradictory with the cited corollary.
- Explicit-rate and bridge structure: The VC, old, and finite arms expose their rate variables, universal constants, fixed-horizon and probability modes, ceiling payments, term absorptions, and boundary reductions. The public corollary's `K_V Lambda^4` schedule is supported by the accepted Step 016 inequality, but not by the conclusion currently stated in the named appendix bridge; the Explicit Rate Contract therefore fails until those public statements are synchronized.
- Derivation-over-notation: The appendix preserves the substantive quotient/kernel constructions, privacy comparisons, trace and holdout bounds, DDim descent, marked reconstruction, probability ledgers, ceiling calculations, rate absorptions, boundary cases, cited-result discharges, and target-step assemblies. No other conclusion is supported merely by notation or provenance prose.
- Appendix local-unit coverage: All 107 accepted local units and all required `Cited Result Applications`, `Local Derivation`, and `Target-Step Assembly` bodies were checked against the appendix. The 559 accepted source tags are accounted for: 555 occur literally, while the four nonliteral dependency duplicates are explicitly restated with their exact producer results. No substantive definition, inequality chain, constant, case split, or boundary derivation is missing.
- Internal label/ref structure: The bundle has 134 unique labels, 904 reference occurrences over 113 targets, no duplicate or missing target, and valid entries for both cited keys. Proof dependencies use named theorem-style results. No malformed command, placeholder, unresolved reference/citation, or forbidden workflow-only proof authority was found.
