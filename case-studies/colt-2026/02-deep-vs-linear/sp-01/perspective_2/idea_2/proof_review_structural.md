# Structural Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The fresh compile log contains one underfull-box warning and two font-shape fallback warnings. It contains no LaTeX error, undefined reference or citation, duplicate-label warning, or overfull box, so these are typography-only concerns.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Structural Audit

- Goal alignment: PASS. The live main theorem is the exact conditional claim from `setting.md`: under the three stable assumptions it proves the deterministic, full-domain, tie-resolved bound $\operatorname{dc}(\mathcal H)\leq7TSd$, with fixed finite horizon and no claim that SGD implies the confident-map premise.
- Dependency closure: PASS. The current public chain is acyclic and complete: boundary routing produces the nondegenerate branch; the exact learner produces the VC ceiling; counting produces the repetition budget; common-law amplification produces the deterministic covering tuple; and direct-sum algebra produces the common representation and final bound.
- Sketch-step coverage: PASS. Each of the five required sketch steps has a current attempt-1 `COMPLETE` proof and matching `ACCEPTED` review, a dedicated appendix subsection, and concluding assembly proof text. A separate final subsection proves the main theorem.
- Assembly discipline: PASS. The current bundle introduces no independent unreviewed lemma, changed accepted-step statement, strengthened assumption, target change, probability or horizon upgrade, or new rate obligation. The exact update in `step_002`, `unit_001` is now faithfully rendered as $U(\theta,x,y)=\theta-\eta\nabla^{\mathrm{src}}_\theta\ell(yf_\theta(x))$.
- LaTeX bundle structural synchronization: PASS. `main.tex`, all five required content files, `arxiv.sty`, `ims.bst`, and `reference.bib` exist. The required section order, five paper-facing appendix subsections, final main-theorem proof, and bibliography behavior are present. The fresh 16-page compilation completed successfully.
- Main theorem self-containedness: PASS. Setup and preliminaries define every theorem symbol and convention before use. The theorem exposes $S,T,d$, the deterministic probability mode, fixed-horizon mode, exact representation metric, and numerical constant dependence without importing appendix-local notation.
- Theorem-style statement shape: PASS. The three numbered assumptions preserve the stable `assump:*` ids. All public local results are lemmas, propositions, or corollaries with explicit assumption bases and proofs; no public claim, hypothesis, invariant, local-unit ID, proof-step ID, or subsection is used as mathematical authority.
- Explicit-rate and bridge structure: PASS. The appendix visibly proves the $v=0$ count, $r\leq7TS$ ceiling payment, $n\leq S$ elimination, smallest-parameter boundaries, and deterministic probability conversion. The reader-facing polynomial corollary states the separate condition $d\leq p(S,T)$ and proves $7TSp-7TSd=7TS(p-d)\geq0$ without changing probability, horizon, norm, representation, or tie mode.
- Derivation-over-notation: PASS. The live appendix preserves the source definitions, conditioning sigma-fields, induction transitions, probability identities, combinatorial recursion, displayed numerical estimates, finite-union conversion, exact score residual, and scalar absorption inequalities rather than replacing them with summaries or notation-only assertions.
- Appendix local-unit coverage: PASS after exhaustive live comparison of all 17 source units: 3 in `step_001`, 5 in `step_002`, 3 in `step_003`, 2 in `step_004`, and 4 in `step_005`. Every substantive derivation, cited elementary-result justification, boundary case, assumption discharge, and all five target-step assemblies appear in source order with the accepted mathematical content intact.
- Internal label/ref structure: PASS. The live bundle has 49 unique labels, no duplicate label, and no missing target among 146 `\ref`/`\eqref` occurrences. Mathematical dependencies name their public result type; no malformed bare reference/citation command or external citation command appears.
