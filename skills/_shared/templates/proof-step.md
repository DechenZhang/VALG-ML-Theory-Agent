# Proof Step

## Step Identity

- Sketch attempt:
- Step ID:
- Unit attempt:

## Target Step Claim

Copy the exact sketch row for this step: intended claim, dependencies, assumptions used, technical challenge, intended proof tool or cited result, and output target.

## Step Proof Status

Allowed values:

- `COMPLETE`
- `PARTIAL_BLOCKED`

## Allowed Assumptions And Dependencies

List the setting assumptions by their stable ids from `setting.md`, such as `assump:smoothness`, and list accepted dependency step proof/review artifacts used by this proof. Use `None` when there are no dependencies.

Classify each allowed condition under the Assumption Provenance Contract:

- Primitive conditions:
- Derived invariants supplied by accepted dependencies:
- Local conditional hypotheses:

Do not treat an unproved derived invariant as a primitive condition. If the step needs one and no accepted dependency proves it, set `Step Proof Status = PARTIAL_BLOCKED` or route back to the sketch.

## Local Lemma Map

List every local proof unit with stable IDs such as `unit_001`.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |

Use unit types `lemma`, `proposition`, `claim`, `hypothesis`, or `invariant`. Each statement must explicitly state assumption basis, local conditions, and conclusion, in the form "Under Assumption~\ref{assump:<slug>} and [dependencies], if [conditions], then [conclusion]" when a setting assumption is used. If the step is genuinely atomic, state `Atomic step = yes` and justify why no hidden subclaim is being used.

## Cited Result Applications

For every paper result, standard theorem, dependency step, or local proof unit used later, restate the result, its assumptions, its conclusion, and where the assumptions are discharged.

## Local Derivation

For every non-atomic local proof unit, add a subsection:

### unit_001: lemma

Statement:
Under [setting assumptions cited by `Assumption~\ref{assump:<slug>}`, accepted dependencies, earlier local units, or checked cited results], if [local conditions], then [exact conclusion].

Proof / justification:

## Target-Step Assembly

Explain how the local units, cited results, and accepted dependencies prove the exact target step claim.

## Explicit Rate Audit

Write `None` when the step is not rate-bearing. Otherwise record:

- Exposed variables:
- Hidden constants may depend on:
- Hidden constants may not depend on:
- Fixed quantities:
- Probability mode:
- Horizon mode:
- Norm mode:
- Admissibility conditions and auxiliary tolerances:
- Term absorption or simplification inequalities:
- Probability conversion:
- Contribution to any Rate Specialization Bridge:
- Baseline-reduction check, if applicable:

## Blockers

Write `None` when complete. Otherwise name the exact failed local unit, missing cited result, invalid assumption, dependency gap, or failed target-step assembly.

## Notation And Assumption Notes

Record local notation, assumption-scope notes, helper-object surface classification, constant provenance, and assumption-provenance notes needed to review the step. Prefer explicit derivations over helper notation when notation would hide a bound, dependence, or assumption discharge. For every new helper object, state whether it is `public-facing`, `appendix-local`, or `proof-local`; export only the minimal public-facing interface needed downstream. For every new constant, radius, threshold, rate, margin, admissibility parameter, bounded quantity, or finite-tube quantity, state whether it is directly defined from original setting quantities, explicitly assumed, inherited from an accepted dependency claim, or proved/bounded by a named local unit. For every generated-object, event, local-validity, stability, boundedness, recurrence, or invariant condition, state whether it is proved in this step, supplied by an accepted dependency, or used only as a local conditional hypothesis. If `global_proof.md` was read, confirm the paired `global_proof_review.md` was accepted, state which step-relevant diagnostic idea was used for planning, and confirm it was not used as evidence, a cited result, an assumption source, or authority to change the target claim.
