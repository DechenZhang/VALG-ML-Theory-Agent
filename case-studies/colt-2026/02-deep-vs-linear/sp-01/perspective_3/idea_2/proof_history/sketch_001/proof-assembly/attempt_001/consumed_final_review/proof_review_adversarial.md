# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public bundle contains ten verified malformed-math fragments where bare `qquad` is rendered as ordinary variables rather than spacing: `latex_template/1_intro.tex:70` and `latex_template/5_appendix.tex:525`, `531`, `544`, `559` (twice), `582` (twice), `637`, and `710`. Compilation does not catch this because the tokens are legal math letters. They corrupt the setup definition, the support-pruning and signed-cancellation identities, the obstruction certificate, and, at line 710, the theorem-critical conclusion of Proposition~`prop:step-006-exact-representation`.
2. The assembled step-005/006 theorem interfaces are not valid standalone claims. Propositions~`prop:step-005-closest-point`, `prop:step-005-uniform-obstruction`, and `prop:step-005-obstruction` rely on a subsection-level fixed target, the definitions and nonemptiness of `Q_h` and `Z_h`, the representative interface, and local strict infeasibility without exposing that basis in their statements. More decisively, Proposition~`prop:step-006-feasibility` claims feasibility under `assump:high-accuracy` alone, although its proof consumes the step-003 approximate separator and step-005 obstruction, whose basis includes `assump:antipodal-oddness` and `assump:universal-sgd-success`. This is a verified scope overclaim: with `n=1`, `s_0=-1`, `epsilon=0`, and the constant `+1` target, high accuracy holds but `Q_h={-1,+1}` and the displayed system requires both `w>0` and `-w>0`. Proposition~`prop:step-006-exact-representation` inherits this incomplete interface. The accepted step proofs contain the correct fixed-target, conditional, and three-assumption interfaces, so the defect is in assembly.
3. The public appendix omits the accepted measurability discharge needed for expectation-to-existence. Lemma~`lem:step-003-finite-extraction` at `latex_template/5_appendix.tex:291` assumes measurability of `v_omega` and the tie-resolved loss, but Proposition~`prop:step-003-approximate-separator` applies it at line 353 after establishing only boundedness. The accepted step-003 proof/review supplies the missing argument: the fixed finite SGD recursion has measurable coordinates under the source convention, `v_omega` is a finite algebraic function of them, and the finite sum of Borel tie-resolved indicators is measurable. Without restoring that argument, the local lemma's hypothesis and the expectation bridge are not discharged in the paper-facing proof.

## Nonblocking Concerns

1. `latex_template/2_preliminary.tex:11` promotes the proof-local representative set `Q_h` to preliminary notation even though it is not needed to read the main theorem, and lines 15--16 announce its derived one-representative property before the appendix proves it. Moving this material into the strict-feasibility appendix subsection would improve notation economy and provenance while repairing the bundle.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: Proposition~`prop:step-006-feasibility`; its accepted derivation is sound, but its public statement drops two primitive assumptions and the named dependency basis essential to its conclusion.
- Standalone theorem attack: The `n=1`, `s_0=-1`, `epsilon=0`, constant-`+1` target above satisfies the proposition's stated high-accuracy basis while making its strict system infeasible. Restating the accepted dependency basis neutralizes this attack without changing the theorem.
- Weakest step-level claim: No accepted step proof breaks. The weakest assembled translation is step_003, because its finite extraction lemma has an explicit measurability hypothesis that the public application never checks.
- Candidate counterexamples or stress cases: ReLU kinks and zero parameters, `T=1`, all four tie-label/target-label cases, nonsymmetric and point-mass distributions, `v=0`, `w=0`, closest point `p=0`, zero or duplicate convex coefficients, `k=1`, `k=n+1`, `n=1`, `epsilon=0`, the excluded equality boundary, and the empty class were tested. The accepted ReLU, tie-transfer, convex-certificate, support-pruning, strict-gap, exact-representation, and common-map derivations withstand these stresses.
- Explicit-rate stress cases: The factor `2`, support threshold `1/(n+1)`, strict condition `2 epsilon < 1/(n+1)`, fixed finite horizon, deterministic extraction, and probability-one Dirac conclusion are preserved with no hidden constant. The equality boundary is correctly excluded; the malformed public displays remain blocking independently of the valid numerical argument.
- Appendix self-contained attack surface: The ten malformed tokens, context-dependent step-005 statements, over-scoped step-006 statement, and omitted step-003 measurability derivation prevent the appendix from standing alone after internal workflow files are removed.
- Scope or mode upgrade attacks: Invoking the learner under `Q_{D^sym,h}`, evaluating the transferred loss under the original `D`, extracting a separate `v(D,h)`, later producing `w_h`, and finally fixing the identity-map Dirac law all preserve the required quantifier order. No simultaneous-trajectory, high-probability, all-time, or target-dependent-feature upgrade was found. The only unresolved mode obligation is the omitted measurability check.
- Remaining risk: After an assembly-only repair, all specialized reviews should be rerun against the fresh bundle. No current evidence requires step, sketch, or idea repair.

Verdict alignment: `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
