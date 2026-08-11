# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public appendix still contains workflow-facing and reviewer-style narration forbidden by the assembly contract. Concrete examples are “The sketch maps” at `latex_template/5_appendix.tex:2295`, “the requested noncircular fixed-point closure” at line 3352, “required by the target” at line 6243, and “every requested boundary regime” at line 6922. The Step 016 terminal synthesis also contains the mechanical sentence “Proposition ... choose ... and derive” at line 10812. These are presentation-only defects, but the structural verdict rules expressly disallow `PASS` while such sketch/target/audit residue or mechanical translation debris remains in public TeX.
2. The theorem-style assumption basis is not fully explicit. The theorem-critical old-arm PAC proposition begins “Under all four setting assumptions” at `latex_template/5_appendix.tex:9918` instead of naming Assumptions~\ref{assump:finite-littlestone}--\ref{assump:approximate-dp-regime}; the record-locality lemma similarly relies on “the setting's ... construction” at line 5536 rather than a numbered assumption or named prior result. The public statement-shape contract requires numbered assumption references or named theorem-style producers. Both statements can be repaired during assembly without changing their accepted source claims.

## Nonblocking Concerns

1. A fresh cached Tectonic build completed successfully with no unresolved references, citations, or TeX errors, but the final log contains eight overfull-box warnings; the largest is 22.38173 pt in `5_appendix.tex:2067`.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: The exact conditional theorem matches `setting.md`: the same four primitive assumptions, finite-or-countable evaluation-quotient scope, all-input raw replacement privacy, unconditional realizable PAC mode, exact branch horizons, three rates, deterministic minimum, and scheduled-\(\delta\) frontier are retained.
- Dependency closure: All sixteen live step proof/review pairs match their accepted hashes. The appendix dependency order is forward-closed, and the three interface propositions in Steps 010, 013, and 015 only package checked cited-result applications and earlier accepted interfaces.
- Sketch-step coverage: Every required `step_001`--`step_016` subsection is present and used. The final theorem proof consumes the complete VC, old-Lyu, and finite-arm interfaces and then the accepted minimum/frontier result.
- Assembly discipline: The substantive statements, constants, cases, cited-result mappings, and terminal syntheses are preserved. The Step 005 claim-to-proposition conversion is semantic-preserving. The remaining blockers are public-surface assembly defects, not new mathematical obligations.
- LaTeX bundle structural synchronization: All required content/support files are present; `main.tex` uses the five content files, bibliography, and styles. The cached build succeeds.
- Main theorem self-containedness: The theorem-facing learner definitions and exact horizons are in the setup and preliminaries. The main theorem does not depend on an appendix-only symbol; the readable frontier corollary cites the named appendix rate bridge.
- Theorem-style statement shape: Most units explicitly cite numbered assumptions and named prior results. The two implicit-basis statements identified above violate the required uniform statement shape.
- Explicit-rate and bridge structure: The VC, old, finite, minimum, and frontier rates expose the required variables, universal constants, fixed-sample horizon, binary population-risk norm, confidence mode, ceiling payments, and scheduled-\(\delta\) restrictions. No positive power is silently hidden.
- Derivation-over-notation: The appendix retains the teacher witnesses, fixed-point inequalities, trace tails, source-object mappings, privacy composition, marked holdout, rate absorptions, and boundary calculations rather than replacing them with notation-only summaries.
- Appendix local-unit coverage: All 107 accepted non-atomic local labels occur in source order (with the Step 005 public proposition conversion), and the actual proof bodies preserve the local derivations and all sixteen target-step syntheses. The four nonliteral display tags are exact restatements of already-produced identities or rates, not omitted obligations.
- Internal label/ref structure: There are 134 unique labels, 890 internal references to 113 targets, no missing or duplicate targets, no appendix forward reference, and no public claim/hypothesis/invariant environment.

Verdict alignment: `BLOCKING` has numbered blocking issues, `Suggested Repair Depth = assembly`, and `Smallest Candidate Repair Target = /proof-assembly`.
