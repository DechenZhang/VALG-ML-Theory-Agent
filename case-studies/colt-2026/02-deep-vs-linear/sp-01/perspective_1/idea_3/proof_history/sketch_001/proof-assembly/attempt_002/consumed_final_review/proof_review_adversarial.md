# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The paper-facing bundle does not provide stable internal references for
proof-critical equations. The displays throughout `latex_template/1_intro.tex`,
`3_main.tex`, and especially `5_appendix.tex` use manual `\tag{1}`--`\tag{102}`
numbers but no equation `\label{...}` targets. Prose then cites those numbers
directly, for example `(7)`, `(9)`, and `(11)--(12)` in
`2_preliminary.tex:5-10`, `(18)` in `3_main.tex:36,44`, and `(32)`, `(34)`,
`(84)`, `(86)`, `(89)--(92)`, and `(102)` throughout
`5_appendix.tex`. The public citation contract requires internal equations to
be cited through unique label/reference pairs; the fact that the current
manual numbering compiles does not provide traceability under renumbering or
independent reading. This is an assembly-level defect: the accepted step
derivations are valid, but the exported proof's equation dependencies are not
paper-ready. Add labels to the cited displays, replace prose-only locators by
`\eqref`/`\ref` references, and recompile the bundle.

## Nonblocking Concerns

1. The repaired event-split proof now explicitly defines the Borel one-step
update map, proves Borel state maps by finite induction through time `T`, and
only then composes the latter-half score, tie map, and finite risk. The prior
measurability blocker is therefore resolved at `5_appendix.tex:778-846`.
2. The repaired containment, history-gate, conditional-comparison, and public
specialization propositions now state their relevant history, state,
distribution, target, and sampling scopes at `5_appendix.tex:224-246`,
`378-406`, `626-650`, and `961-983`. The aggregate proposition still uses the
compact phrase "a deterministic labeled history with its exact states" at
`5_appendix.tex:527-528`; its meaning is recoverable from the setting and
named dependencies, but spelling out the history domain and recursion would
further strengthen standalone readability.
3. Measurability of `E_r` is used in the event split without a separate
construction proof. The robust-tube premise assigns this event a probability,
so its measurability is a reasonable primitive convention and does not by
itself block the theorem.
4. The compile log has two shared-style font fallback warnings only; there
are no recorded LaTeX errors, unresolved references, duplicate labels, or
overfull boxes.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: the unconditional event-split conversion from
the stable conditional comparison to the fixed gate-law witness. The
mathematical conversion now survives direct attacks: the update/state
measurability induction is present, the feature law remains unconditional,
and the complement is charged once by `delta_0`. Its remaining acceptance
failure is the missing stable equation-reference layer in the public proof.
- Standalone theorem attack: the main theorem is self-contained and the four
previously defective proposition interfaces are repaired. The step-004
aggregate statement has only a readability-level shorthand scope concern (see
Nonblocking Concerns 2), not a demonstrated target or quantifier change.
- Weakest step-level claim: event-split/pushforward composition, including the
finite Borel update chain and tower identity. ReLU kinks (`kappa=0,1`), finite
composition, and the finite feature-map range do not produce a mathematical
counterexample after the repair; the issue is public equation traceability.
- Candidate counterexamples or stress cases: `L=1`, `T=1`, `S=1`, `G_r=0`,
`T eta G_r=r`, zero weights, hidden kinks, zero or canceling aggregate scores,
point-mass or zero-mass sample tuples, nonattained infima, `delta_0=0`,
`epsilon=0`, and arbitrary behavior on `E_r^c` all remain covered. Closed-ball
containment and strict gate constancy hold on `E_r`, while the complement has
the stated unit-risk charge.
- Explicit-rate stress cases: the stable term is bounded by exactly
`epsilon`, the complement by exactly `delta_0`, and no history union bound or
hidden multiplicative constant is introduced. The deterministic inequalities
`d_path <= S^L <= S^{L_0}` and `epsilon + delta_0 <= 2 epsilon` retain all
exposed dependence, including `L=1`, `S=1`, and zero-error boundaries.
- Appendix self-contained attack surface: all 16 accepted local units and
their target-step derivations are present, including the repaired finite-state
Borel induction and proposition scopes. The concrete remaining public defect
is that many derivations refer to manually tagged equations rather than
stable `label`/`ref` pairs; this is an assembly traceability failure, not a
missing step mechanism.
- Scope or mode upgrade attacks: none found. The law is fixed before every
`(D,h)`, the learner premise remains joint finite-horizon expectation, the
tube premise remains initialization probability, and the conclusion remains
expected tie-resolved representation risk. No conditioning, high-probability,
pointwise, infinite-horizon, or deterministic upgrade is smuggled in.
- Remaining risk: repair the equation labels/references and rerun compilation
and all specialized reviews. No step-, sketch-, or idea-level obstruction was
found under the declared conditional theorem contract.

Verdict alignment: `BLOCKING` is required because the public internal-equation
traceability contract is currently violated; the shallowest repair is
`assembly` at `/proof-assembly`.
