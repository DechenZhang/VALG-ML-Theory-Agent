# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public appendix is not theorem-style self-contained at several theorem-critical interfaces, and its equation-reference structure is not paper-ready. In `5_appendix.tex`, Step 4 assumes undefined `(H)` at lines 748 and 1061 and concludes undefined `(HP)` at lines 1070 and 1162; the corresponding scalar hard-regime condition and hard-prior inequality occur only in the accepted source step's omitted target-claim preamble. Step 10 refers to the learner `A` "in (4)" at line 2707 although that source equation was not translated; Step 11 fixes `(t,Q)` "in (2)" at line 2867 although that source equation was not translated; Step 12 invokes absent source interfaces `(8)`, `(9)`, and `(5)` at lines 3574-3575, 3589-3592, and 3613; and Step 13 substitutes into absent `(5)` at line 3681. More generally, `5_appendix.tex` contains 221 raw `\tag{...}` equations but only 36 distinct tag values: 30 tag values repeat across 215 occurrences, and mathematical arguments repeatedly cite bare numerals instead of unique `\label`/`\eqref` targets. A fresh isolated build therefore emits twelve `Object @equation.A.1 already defined` warnings even though its explicit `\ref`/`\eqref` keys resolve. Assembly must inline the missing source-local definitions where they are consumed, assign unique labels to referenced equations, and replace bare numeric aliases with unambiguous paper-facing references without changing any accepted step claim.
2. The appendix does not fully translate every accepted `Target-Step Assembly`. In Step 6, source lines 379-429 explicitly derive the pointwise quantified conclusion (7) and then the finite-prior averaging consequence (8); appendix lines 1614-1618 retain only a short pointwise summary and omit the finite-average derivation. In Step 16, source lines 626-687 assemble exact tower inversion, the structural identities, the two-sided Littlestone log-star scale, the fixed-index rate implication, and the precise remaining-gap statement; appendix lines 4482-4485 reduce that assembly to two sentences outside a proof environment. The final main-theorem proof cites the relevant local results, but it does not satisfy the requirement that each accepted step's substantive target assembly appear as concluding paper-facing proof text in that step's appendix subsection. These accepted assembly arguments must be restored in allowed proof environments; no step artifact needs revision.

## Nonblocking Concerns

1. The isolated Tectonic build succeeds and produces a PDF with no TeX error, undefined label reference, or undefined citation, but it reports overfull boxes of `5.38217pt` at `5_appendix.tex:1419` and `14.20204pt` at `5_appendix.tex:4398`. These layout defects should be corrected during the assembly repair.
2. `assembly_report.md` states that the final log has no multiply defined references or overfull boxes, which is inconsistent with the fresh build above. Because the report is diagnostic rather than proof evidence, this does not add a deeper proof repair, but its compilation note and blocker status should be refreshed with the repaired bundle.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: PASS. The reader-facing theorem is a concrete target-spec instantiation of `setting.md`: it preserves the exact candidate-wise quantifier order, both candidate-delta conjuncts, fixed-size central replacement DP, distribution-free realizable population risk, arbitrary randomized unrestricted improper learners, and the material-partial tower-diagonal `Omega(r^2)` consequence. It explicitly leaves the stronger exponential, log-cardinality, universal-upper-bound, and characterization goals unresolved.
- Dependency closure: PASS. All sixteen current step reviews record `ACCEPTED` for sketch attempt 1 and unit attempt 1, every reviewed proof hash matches its current `proof.md`, and the accepted dependency graph is acyclic and producer-before-consumer. The accepted sketch and global diagnostic identities remain hash-matched.
- Sketch-step coverage: BLOCKING. All required `step_001` through `step_016` have one correctly ordered appendix subsection and mapped theorem-style units, but the accepted Step 6 and Step 16 target assemblies are not fully translated.
- Assembly discipline: BLOCKING. No independent unreviewed lemma, changed accepted step statement, new assumption, probability-mode upgrade, or stronger final claim was found. The blocking defects are assembly omissions and ambiguous public references that can be repaired without changing accepted proofs.
- LaTeX bundle structural synchronization: BLOCKING. The directory contains exactly the nine canonical files, `main.tex` includes all five content files and bibliography behavior, the required section/subsection structure is present, and hygiene scans find no workflow paths, forbidden claim/hypothesis/invariant environments, audit scaffolding, placeholders, malformed command fragments, duplicate `\label` values, or unresolved explicit references. The missing equation interfaces, repeated raw tags, and omitted target assemblies prevent paper-ready synchronization; the build overflows remain additional layout cleanup.
- Main theorem self-containedness: PASS. The setup and preliminaries define the class, learner, risk, privacy/PAC modes, tower convention, dimensions, and reusable simulator notation before use; the theorem states constant dependence, assumptions, regimes, and conclusions without relying on appendix-local labels or an admissibility dictionary.
- Theorem-style statement shape: BLOCKING. Most public lemmas and propositions state their assumptions and named dependencies explicitly, but the Step 4, Step 10, Step 11, Step 12, and Step 13 interfaces above rely on undefined or ambiguous source-local equation aliases.
- Explicit-rate and bridge structure: PASS. The nonasymptotic and diagonal rates expose all relevant variables and fixed constants, preserve deterministic/fixed-size/population-risk modes, state the exact admissible threshold `r_0`, retain the full privacy conjunction, and use the named Step 16 Rate Specialization Bridge with displayed simplification inequalities and no hidden probability conversion.
- Derivation-over-notation: PASS except for Blocking Issue 2. Every accepted non-atomic local unit in Steps 1-16 is represented by substantive appendix proof text in source order, including the hard minimax, overflow, coupling, privacy, fixed-instance, finite-index, and boundary-case derivations; proof-local notation does not leak into the main theorem. The identified target-assembly omissions remain material.
- Appendix local-unit coverage: BLOCKING. All accepted local units and cited-result applications needed by those units are translated, including endpoint thresholds, point masses, `k=2,3`, `n<k`, `M=8`, `U=0`, overflow, arbitrary labels, same-instance extraction, and `r=2`; Step 6's finite averaging consequence and Step 16's full concluding assembly are missing.
- Internal label/ref structure: BLOCKING. All explicit labels are unique and all explicit `\ref`/`\eqref` and citation keys resolve, but repeated raw equation tags and bare numeric references are not unique public proof references and already create duplicate PDF equation objects.
