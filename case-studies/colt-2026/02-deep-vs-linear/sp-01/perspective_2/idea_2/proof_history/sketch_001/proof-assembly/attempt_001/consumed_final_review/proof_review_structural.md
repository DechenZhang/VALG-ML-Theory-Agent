# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public appendix changes the exact SGD update used by accepted `step_002`, `unit_001`. At `latex_template/5_appendix.tex:168`, it defines $U(\theta,x,y):=\theta-eta\nabla^{\mathrm{src}}_\theta\ell(yf_\theta(x))$, whereas `proof_steps/step_002/proof.md:88` and the formalized setup use $\theta-\eta\nabla^{\mathrm{src}}_\theta\ell(yf_\theta(x))$. In TeX, bare `eta` is not the step-size symbol $\eta$; it changes the public recursion whose sampled-label measurability is being proved. Repair this assembly transcription to `\theta-\eta\nabla...` and recompile. No accepted step artifact or theorem interface needs to change.

## Nonblocking Concerns

1. The retained successful compile log has one underfull-box warning and two font-shape fallback warnings. It has no LaTeX error, unresolved reference or citation, duplicate-label warning, or overfull box; these warnings do not affect proof content.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: PASS apart from the assembly transcription above. The main theorem matches the exact conditional claim in `setting.md`, including the three stable assumptions, constant $7$, deterministic exact-sign conclusion, fixed finite horizon, and explicit statement that the confident-map premise is not derived from SGD.
- Dependency closure: PASS. The public chain is acyclic: boundary routing produces the nondegenerate branch; the VC ceiling feeds finite-class counting; the repetition budget feeds common-law amplification; and the deterministic covering tuple feeds the direct-sum construction. Every mathematical dependency is a numbered assumption or public theorem-style result with an accepted source proof/review pair.
- Sketch-step coverage: PASS. All five required sketch steps have matching accepted attempt-1 proof/review artifacts and a dedicated appendix subsection. Their five target-step assemblies are translated as concluding proof text, followed by a separate proof of the main theorem.
- Assembly discipline: BLOCKING only for the altered `step_002` update symbol identified above. No independent unreviewed lemma, strengthened assumption, convergence-mode upgrade, target change, or new rate claim was introduced.
- LaTeX bundle structural synchronization: PASS otherwise. `main.tex`, all five content files, `arxiv.sty`, `ims.bst`, and `reference.bib` exist; the required section order and five paper-facing appendix subsections are present. The retained log records a successful 16-page compilation, and scans found no placeholder, workflow-provenance, forbidden audit-scaffolding, or visible empty-bibliography text.
- Main theorem self-containedness: PASS. Setup and preliminaries define every theorem symbol and convention before use. The theorem exposes $S,T,d$, the exact deterministic probability/horizon/norm modes, and the allowed constant dependence without importing appendix-local notation.
- Theorem-style statement shape: PASS. Public assumptions preserve all three `assump:*` ids; all 17 local units appear as lemma, proposition, or corollary statements with proofs. The appendix uses no public claim, hypothesis, invariant, proof-step ID, or subsection reference as mathematical authority.
- Explicit-rate and bridge structure: PASS. The appendix proves $r\leq7TS$ with the $v=0$, ceiling, $n\leq S$, and $T=S=1$ boundary charges visible. The polynomial corollary states the separate condition $d\leq p(S,T)$, exposes prohibited hidden dependence, and proves $7TSp-7TSd=7TS(p-d)\geq0$ without a probability, horizon, norm, or tie change.
- Derivation-over-notation: BLOCKING only at the malformed `eta` token. Elsewhere the public source preserves the displayed definitions, conditioning sigma-fields, probability identities, combinatorial recursion, numerical constants, union-bound conversion, score-zero residual, and scalar absorption inequalities from the accepted proofs.
- Appendix local-unit coverage: Exhaustively checked all 17 source units, not a sample: 3 in `step_001`, 5 in `step_002`, 3 in `step_003`, 2 in `step_004`, and 4 in `step_005`. Every source theorem statement, substantive derivation, boundary case, assumption discharge, and target-step assembly is present in source order; the sole source-to-appendix corruption is the missing backslash in `\eta` above.
- Internal label/ref structure: PASS. Labels are unique, every internal `\ref` or `\eqref` target exists, mathematical dependencies name their result type, no malformed bare reference/citation command was found, and no external citation command is used.
