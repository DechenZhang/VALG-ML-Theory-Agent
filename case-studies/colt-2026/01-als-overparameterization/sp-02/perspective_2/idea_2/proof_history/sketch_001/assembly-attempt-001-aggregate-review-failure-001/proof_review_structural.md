# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The exact/noiseless baseline is not stated as a well-typed, self-contained specialization of the public setup. In the setup, \(Q=\Lambda_A\otimes\Lambda_B\otimes\Lambda_C\) maps the ambient space \(\mathbb R^{n\times n\times n}\) to the coefficient space \(\mathbb R^{r\times r\times r}\), while \(T\) is ambient and \(D_r\) is coefficient-space. Nevertheless, `latex_template/3_main.tex` and the baseline propositions in `latex_template/5_appendix.tex` state \(Q=I\) and \(T=D_r\) without specifying \(n=r\), identity bases, or another explicit common-space identification. For the general theorem scope \(n\neq r\), these equalities do not have a declared common domain/codomain, and an orthonormal \(n\times r\) base only makes \(Q\) a coordinate projection, not the identity on an unconstrained ambient residual. The literal four-clause conditional event inclusion is unaffected, but the added theorem-facing baseline conclusion is not paper-ready as written. Repair the public TeX by giving an explicit compatible common-space baseline (and separating it from the large-\(n\) theorem scope when necessary), or by stating and proving a well-typed isometric coordinate-to-ambient bridge from the already accepted results; do not silently treat the rectangular coordinate map as the ambient identity.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: The main four-clause conditional event inclusion matches `setting.md` exactly. It retains the half-relaxed parallel Jacobi ALS trajectory, the full primitive scope, the explicit conditional status, and the absence of any certificate nonemptiness or probability claim. The only mismatch is the additional ill-specified baseline specialization identified above.
- Dependency closure: The accepted dependency graph is acyclic and complete: `step_001`, `step_002`, and `step_004` are roots; `step_003` consumes `step_001` and `step_002`; `step_005` consumes `step_003` and `step_004`. Every public proof dependency cites an available named theorem-style result.
- Sketch-step coverage: All five accepted sketch steps appear in dependency order and are used in the final proof. No step is orphaned or silently declared unnecessary.
- Assembly discipline: The conditional theorem uses only accepted local results and direct composition. No independent unreviewed lemma, stronger probability mode, hidden regularity hypothesis, or convergence-mode upgrade was introduced. The baseline defect is a public claim/identification defect repairable at assembly depth.
- LaTeX bundle structural synchronization: All required content and support files exist; the five required sections and final main-theorem proof are present. The externally supplied Tectonic artifact postdates the current sources and is reported warning-free. `ims.bst` is canonical; the `arxiv.sty` delta only removes incompatible or unused package imports.
- Main theorem self-containedness: The conditional theorem defines the four certificate clauses, exact epsilon, dependence, probability mode, all-time residual mode, asymptotic objective mode, and Frobenius norm mode. Its baseline paragraph fails self-contained type/scope identification as described in Blocking Issue 1.
- Theorem-style statement shape: Public results use lemma/proposition/theorem environments, numbered assumptions or named prior results, and explicit local conditions. No public claim, hypothesis, invariant, workflow label, or audit-scaffolding environment is exposed.
- Explicit-rate and bridge structure: The public and appendix bounds agree on
  \[
  \epsilon=\left(\frac{\delta-L_P-\zeta}{\kappa^6C_T}\right)^2.
  \]
  All defects and scale factors remain visible, the nonnegative squaring and all-time-to-limit passage are displayed, and no rate specialization or probability conversion is omitted.
- Derivation-over-notation: The projector recurrence, finite path budget, smoothing subtraction, \(Q\)-transfer, target-scale conversion, finite-variation tail, squaring, and scalar limit passage are all shown as explicit derivations rather than hidden behind helper notation.
- Appendix local-unit coverage: Exhaustive comparison was completed for all 16 accepted local units, in the required \(4+2+4+2+4\) distribution. Each source definition, displayed inequality chain, constant check, boundary case, and substantive justification appears in the corresponding appendix proof. All five `## Target-Step Assembly` arguments are also represented in concluding proof text, with the fifth completed in the final proof of the main theorem.
- Internal label/ref structure: Labels are unique, all `\ref`/`\eqref` targets resolve, mathematical dependencies name their result type, and no malformed command, placeholder, workflow-only path, external citation command, or visible empty references section remains.

Verdict alignment: `BLOCKING` has one numbered structural issue, `Suggested Repair Depth = assembly`, and `Smallest Candidate Repair Target = /proof-assembly`.
