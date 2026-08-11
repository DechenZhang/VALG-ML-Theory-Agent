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

- Goal alignment: The public theorem preserves the exact conditional event inclusion in `setting.md`, including the half-relaxed parallel Jacobi ALS procedure, product gauge, full primitive scope, four-clause conditional interface, explicit relative loss floor, finite-limit conclusion, and absence of any certificate nonemptiness or probability claim. The added deterministic baseline is explicitly separated from the positive-Gaussian-smoothing theorem and does not narrow or strengthen its quantified scope.
- Dependency closure: The current accepted proof/review pairs match sketch attempt 1 and their producer attempts: `step_001`--`step_004` use unit attempt 1 and `step_005` uses unit attempt 2. The graph is acyclic and complete: `step_001`, `step_002`, and `step_004` are roots; `step_003` consumes `step_001` and `step_002`; `step_005` consumes `step_003` and `step_004`. Every mathematical consumer cites an available prior lemma or proposition.
- Sketch-step coverage: All five accepted sketch rows occur in dependency order and are used in the main-theorem proof. Their public roles are, respectively, the coordinate/gauge interface, projector-path transport, same-target ambient residual floor, represented-tensor/objective convergence, and event-inclusion/limit closure. No step is orphaned, bypassed, or declared unnecessary.
- Assembly discipline: The general conditional proof is a direct composition of accepted step conclusions and contains no independent unreviewed lemma, altered step assumption, stronger convergence mode, hidden ALS regularity, or probability upgrade. The repaired baseline is also direct assembly-only specialization of accepted results: for tall column-orthonormal bases, `Lambda_M=bar M^T`, so the still-rectangular map `Q` satisfies `QT=D_r`, `E_rho=0`, and `||Q||_op=1`; orthonormality of the ambient rank-one summands gives `||T||_F=||D_r||_F`. The accepted same-target identity, projector deficit, and operator comparison then give the same `(delta-L_P)||T||_F` all-time floor and `(delta-L_P)^2||T||_F^2` limiting floor. No public occurrence asserts `Q=I` or `T=D_r`.
- Baseline typing and scope: `3_main.tex`, `4_proof_sketch.tex`, the step-001 specialization, both appendix baseline propositions, the final main-theorem proof, and `assembly_report.md` consistently use the well-typed tall relations `QT=D_r`, `||Q||_op=1`, and `||T||_F=||D_r||_F`. Each occurrence states that the deterministic zero-smoothing comparison is separate from the positive-Gaussian-smoothing event inclusion. The baseline retains exactly the required `(delta-L_P)^2` conclusion and introduces no new assumption into the general theorem.
- LaTeX bundle structural synchronization: All required support and content files exist, `main.tex` loads the five content files in the required order, and the public structure contains Theoretical Setup, Preliminaries, Main Theorem, Proof Sketch, five dependency-ordered appendix subsections, and a final proof of the main theorem. The base-conditioning assumption now unambiguously controls all `r` singular values of each rectangular normalized base and states the full-column-rank convention without changing the setting's intended admissible class.
- Main theorem self-containedness: The theorem states the primitive assumption basis, admissible parameter dependence, strict margins, exact epsilon, event inclusion, probability mode, all-time-to-asymptotic horizon transition, ambient Frobenius objective, and absence of hidden constants. The four conditional clauses are defined immediately beforehand from setting objects and are explicitly distinguished from primitive assumptions.
- Theorem-style statement shape: Every public mathematical dependency is a theorem, lemma, or proposition with an explicit assumption basis or named prior result, local conditions, and conclusion. The appendix contains no public claim, hypothesis, or invariant environment; no proof depends on a subsection, workflow step ID, local unit ID, or branch artifact as mathematical authority.
- Explicit-rate and bridge structure: The public theorem and appendix agree exactly on `epsilon=((delta-L_P-zeta)/(kappa^6 C_T))^2`. The projector loss, smoothing loss, coordinate distortion, and target-scale factor remain visible; positivity, nonnegative squaring, and passage of the all-time lower bound to the finite limit are displayed. There is no simplified public rate, omitted term absorption, hidden dependence, or probability conversion requiring a separate rate-specialization bridge.
- Derivation-over-notation: The base singular-value estimate, tensor-product norm calculation, positive/zero gauge cases, projector recurrence and finite-prefix telescoping, distance perturbation, direction-sensitive `Q` transfer, target-scale conversion, finite-variation tail, squared-distance continuity, sign check, scalar limit order, and set inclusion are all derived explicitly rather than hidden behind helper dictionaries.
- Appendix local-unit coverage: Exhaustive source-to-appendix comparison passes for all 16 accepted non-atomic units in the required `4+2+4+2+4` distribution. Step 001 preserves the coordinate-map, tensor-operator, gauge, and same-target derivations; step 002 preserves the one-step projector transport and finite-path induction; step 003 preserves distance Lipschitzness, coefficient floor, ambient floor, and the repaired typed baseline floor; step 004 preserves the summable-tail Cauchy proof and objective continuity proof; step 005 preserves scalar limit order, pathwise closure, exact event inclusion, and the repaired typed baseline limit. Displayed definitions, inequality chains, constants, boundary cases, assumption discharges, and object mappings are retained. Each of the five source `Target-Step Assembly` arguments appears as concluding proof text in its appendix subsection and is composed again in the final main-theorem proof.
- Internal label/ref structure: Stable assumption labels exactly match `setting.md`; theorem, appendix, and equation labels are unique; all internal references resolve and name their result type. Static scans found no workflow-only paths, audit scaffolding, forbidden environments, template placeholders, malformed reference commands, or external citation commands. An independent Tectonic build completed successfully at `<TEMP_ROOT>/p2-structural-attempt2/main.pdf` with no warnings or unresolved references.

Verdict alignment: `PASS` has `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`.
