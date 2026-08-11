# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The assembled `step_003` argument invokes a conditional extraction lemma without discharging its measurability hypothesis. `latex_template/5_appendix.tex:293`--`296` requires measurability of both `v_omega` and the tie-resolved loss, but the expected-transfer proof at lines 265--289 establishes only boundedness, and Proposition `prop:step-003-approximate-separator` applies the lemma at lines 352--358 without another check. The accepted source review supplied the missing derivation: the fixed finite SGD recursion has measurable coordinates under the fixed source convention, `v_omega` is a finite algebraic function of those coordinates, and the finite-domain loss is a finite sum of Borel tie-resolved indicators. That proof-obligation content must be restored before the expectation-to-existence step is valid in the public appendix.
2. The public `step_006` theorem interfaces do not expose the assumptions and dependencies used by their proofs. Proposition `prop:step-006-feasibility` at `latex_template/5_appendix.tex:661` claims strict feasibility under Assumption `assump:high-accuracy` alone, but its proof invokes Proposition `prop:step-003-approximate-separator`, whose basis includes antipodal oddness and universal SGD success, and the conditional obstruction interface built from oddness. Thus the displayed proposition is stronger than the accepted source claim and is false under its stated assumption basis. Proposition `prop:step-006-exact-representation` at line 702 then lists the conclusions of the step-003/004/005 propositions while its proof actually consumes `prop:step-006-feasibility` and the strict-system equivalence. Both statements must be restated with all three primitive assumptions or the exact named prior-result basis before their proofs begin.
3. The public convex-obstruction propositions are not self-contained. The fixed target and the definitions of `Q_h` and `Z_h` occur only in subsection prose at `latex_template/5_appendix.tex:449`--`456`, while Propositions `prop:step-005-closest-point`, `prop:step-005-uniform-obstruction`, and `prop:step-005-obstruction` use those objects at lines 458--656 without quantifying the target or exposing their local basis in the theorem statements. In addition, `prop:step-005-obstruction` phrases an already negated display, `\nexists w ...`, as a system that "is infeasible," obscuring the actual conditional antecedent. Restate each proposition for a fixed `h in H`, cite the representative result where needed, and state the antecedent directly as absence of a vector satisfying all strict inequalities.
4. `latex_template/2_preliminary.tex:11`--`17` exports `Q_h`, an appendix-only proof object not needed to state or read the main theorem, and immediately asserts its derived one-representative-per-pair property before the appendix proof. This violates the definitional-only preliminary and notation-economy contracts. Move the definition and its proved property into the strict-feasibility appendix subsection so the preliminary section contains only theorem-facing notation.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: Direct comparison with all seven accepted proof/review pairs found the ReLU antisymmetrization, four tie cases, antipodal change of variables, finite extraction argument, closest-point certificate, affine support pruning, signed cancellation, strict-gap contradiction, Dirac-law step, and parameter arithmetic mathematically sound. No accepted proof step needs revision.
- Statement self-containedness: Fails for the step-005 and step-006 public propositions identified above; the main theorem itself states the correct three-assumption basis.
- Main theorem constants and notation: The public theorem correctly exposes the factor `2`, threshold `1/(n+1)`, fixed finite horizon, probability-one conclusion, and chain through `TS`. The preliminary export of `Q_h` is unnecessary proof-local notation.
- Derivation-over-notation: The substantive inequality chains and coefficient constructions are visible. The omitted measurability discharge is a genuine missing derivation rather than a notation issue.
- Explicit-rate contract: The exact factor `2`, support bound `k <= n+1`, strict condition `2 epsilon < 1/(n+1)`, deterministic-existence mode, point-mass probability mode, and absence of hidden constants are preserved. No term is absorbed by prose.
- Appendix full derivations: All used local units were compared against their accepted source proofs. Their substantive derivations are preserved except for the step-003 measurability discharge; the public theorem interfaces also require the statement repairs above.
- Quantifiers and constants: The final `for all h, there exists w_h, for all x` order and the common-map quantifiers are correct. The local step-006 assumption quantifiers are not.
- Probability or convergence modes: The expectation-to-deterministic-existence conversion is valid once measurability is restored. There is no expectation-to-high-probability, simultaneous-realization, horizon-uniform, or asymptotic upgrade.
- Boundary cases: Both tie labels, source and antisymmetric score ties, `w=0`, `v=0`, `epsilon=0`, `T=1`, `n=1`, `k=n+1`, and the empty target class are handled correctly. Equality at `2 epsilon = 1/(n+1)` is properly excluded.
- Hidden subclaims: The finite-SGD measurability bridge and the subsection-level target/representative context are hidden in the current bundle; no other theorem-critical hidden subclaim was found.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
