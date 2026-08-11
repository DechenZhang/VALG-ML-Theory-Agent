# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public TeX contains ten bare `qquad` fragments where `\qquad` was intended: `latex_template/1_intro.tex:70` and `latex_template/5_appendix.tex:525`, `531`, `544`, `559` (twice), `582` (twice), `637`, and `710`. LaTeX accepts these as products of ordinary math variables, so compilation does not expose the defect, but the rendered setup definition, support-pruning identities, signed-cancellation premise, obstruction statements, and exact-representation proposition are mathematically malformed. In particular, line 710 corrupts the theorem-critical conclusion of Proposition~`prop:step-006-exact-representation`.
2. Several theorem-style statements do not preserve a self-contained assumption and conditional interface. Proposition~`prop:step-005-closest-point` at `latex_template/5_appendix.tex:458` relies on the subsection-level fixation of `h` and definition of `Z_h`; Propositions~`prop:step-005-uniform-obstruction` and `prop:step-005-obstruction` at lines 578 and 626 likewise leave the fixed-target/representative basis implicit. The latter also phrases its antecedent as "the strict system `\nexists w ...` is infeasible," duplicating the infeasibility negation. Most importantly, Proposition~`prop:step-006-feasibility` at line 661 claims feasibility under Assumption~`assump:high-accuracy` alone even though its proof also consumes the approximate-separator and finite-obstruction interfaces, whose primitive basis includes Assumptions~`assump:antipodal-oddness` and `assump:universal-sgd-success`. These are assembly-level statement defects: restate the propositions with the fixed target, named prior results or all primitive assumptions, local infeasibility antecedent, and conclusion in the accepted dependency order.
3. The appendix drops the accepted `step_003` measurability discharge. Lemma~`lem:step-003-finite-extraction` explicitly assumes measurability at `latex_template/5_appendix.tex:293`, but Proposition~`prop:step-003-approximate-separator` applies it at line 353 without the source proof's justification that the finite SGD recursion makes `v_\omega` measurable and that the finite tie-resolved loss is a measurable random variable. Boundedness alone at line 286 does not discharge that hypothesis. Restore that accepted source argument inside the relevant proof before invoking the extraction lemma.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: Exact-goal mode. The main theorem matches `setting.md`: the same depth-two bias-free learner, three primitive assumptions, target-wise exact identity separation, probability-one Dirac feature law, and dimension chain are retained. The bundle correctly labels the unrestricted-depth, non-odd, unrestricted-accuracy problem as outside this material-partial result.
- Dependency closure: The accepted source graph is acyclic and complete: steps 001--003 produce the approximate identity-coordinate separator; steps 004--005 produce the strict-system obstruction; step 006 exactifies; and step 007 exports the common map and dimension consequences. Statement-level closure in the public appendix fails only through Blocking Issue 2.
- Sketch-step coverage: All seven accepted proof/review pairs have corresponding appendix subsections and named theorem-style units, and every step is used by final assembly. No stale or rejected dependency is consumed. The omissions and corruptions identified above prevent structural acceptance.
- Assembly discipline: No independent unreviewed lemma, stronger target, new theorem assumption, probability upgrade, or altered learner was introduced. The required repairs restore accepted source content and public statement shape without changing any accepted step artifact.
- LaTeX bundle structural synchronization: `main.tex`, all five content files, `arxiv.sty`, `ims.bst`, and `reference.bib` exist; `main.tex` loads the five content files. The compile log has no unresolved-reference or citation warning, but successful compilation is not sufficient because bare `qquad` tokens are legal malformed mathematics.
- Main theorem self-containedness: `3_main.tex` is concise and reader-facing, cites exactly the three numbered primitive assumptions, defines the probability mode and fixed-horizon scope through the setup, states the probability-one result, and exposes the complete dimension chain and hidden-dependence declaration.
- Theorem-style statement shape: Most public results are properly named and referenced, but the step-005 and step-006 proposition interfaces listed in Blocking Issue 2 rely on surrounding prose, proof text, or incomplete assumption bases and must be repaired.
- Explicit-rate and bridge structure: The exact factor `2`, support bound `k\leq n+1`, strict threshold `2\varepsilon<1/(n+1)`, deterministic-existence mode, fixed finite horizon, tie-resolved risk, and parameter-count inequalities are exposed. No separate rate-specialization bridge is needed because the main theorem does not simplify a stronger technical appendix rate.
- Derivation-over-notation: The appendix retains the ReLU identity, four tie cases, distribution change of variables, finite expectation extraction, closest-point inequality, affine-pruning update, signed cancellation, strict contradiction, Dirac-law argument, and parameter arithmetic. Proof-local notation remains local.
- Appendix local-unit coverage: Every accepted non-atomic local unit and target-step conclusion is represented substantively; the one missing source obligation is the step-003 measurability discharge in Blocking Issue 3. The malformed equations in Blocking Issue 1 also prevent the carried-over derivations from being paper-ready.
- Internal label/ref structure: Labels are unique, internal theorem dependencies use theorem-style `\ref` references, no unresolved reference or external citation appears in the compile log, and no workflow-only proof authority is exposed.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
