# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Guarded instance geometry, project-and-park activation, finite discrete-event budget, sequential promotion, reachable chart, protected PL refinement, and explicit rate aggregation | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Guarded C0 is repairable, but W0-D0-L1-P1 ordering is circular, the event ledger lacks a loss decrement, and B1 carries a fixed historical defect into the no-floor local regime. |
| 2 | Guarded Armijo loss ledger, acyclic proposal-assignment-Lyapunov-persistence induction, explicit epoch accumulation, and defect-free post-pruning PL refinement | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | W0 cone/no-proposal accounting is incomplete; P0 exponent/event charge is unsupported; L1-to-chart P^-36 transfer and B1/R0 residual bridges lack quantitative inequalities. |
| 3 | Stopped adaptive cone accounting, conservative P exponents and event reserve, quantitative L1-to-chart transfer, first-exit PL closure, and coordinate-to-relative residual bridge | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Stopped event is vacuous; W0 scale/winner transfer, L1 reserve/polishing, B0 entry, B1 first-exit, R0 residual bridge, and attempt-flow synchronization remain unsupported. |
| 4 | Nonvacuous stopped tape sequence, relative winner event, coherent scaled reserve/polishing, quantitative chart entry and first-exit residual bridge | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | W0's l1-dominant winner event is exponentially rare in the allowed orthogonal case; P0 initial ratio/positive lead and cumulative Gamma closure are missing; B1 adjoint PL and discrete first-exit bridges remain incomplete. |
| 5 | Mild relative winner gap with polynomial probability, correct P0 initialization and signed persistence, adjoint PL algebra, annular first-exit bridge, and synchronized survey/flow | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Gamma/chi recurrence loses its lead, winner amplification occurs after the boundary decision, W0 weighted event and B1 adjoint/step bridges remain incomplete, and tables overstate closure. |
| 6 | Pre-parking lead-preserving recurrence, weighted mild-gap event, queued maturation separation, adjoint PL/annular step bridge, and honest flow | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Radial recurrence gives the wrong direction for accumulated gain; weighted W0 and non-basin winner filters are unsupported; B1 adjoint PL and accepted-step first-exit remain invalid; survey is stale. |
| 7 | Two-sided radial gain and pre-parking contraction, weighted mild-gap source, explicit non-basin filter, corrected adjoint PL and accepted-step exit bridge | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Attempt 7 changed only metadata; radial gain, weighted W0, non-basin filter, B1 adjoint/step bridges remain the attempt-6 blockers. |
| 8 | Corrected pre-parking gain with exact constants, weighted winner source/filter, adjoint PL algebra, accepted-step upper/annular bridge, and synchronized metadata | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Repeated W0 adaptive-score, P0 global-winner, and B1 first-exit interfaces remain unsupported; target-preserving fixed-protocol repair remains plausible. |
| 9 | Full-residual fresh-law interface, gap-sensitive purity/filter, and eta_max-based protected first-exit bridge | sketch | sketch | 1 | Fail | N/A | IDEA_FAIL | /subagent-idea-generator | Repeated clear-only, all-candidate W0, and norm-level purity defects are incompatible with the fixed promotion protocol; repair requires a changed procedure, rank/event budget, assumptions, or success criterion. |

Controlled values:

- `Sketch attempt`: starts at `1` for an idea and increments after sketch-review `REVISE_SKETCH`, global-proof-review `REVISE_SKETCH`, or final `PROOF_SKETCH_FLAW`; attempts over `MAX_SKETCH_ATTEMPTS_PER_IDEA` are invalid
- `Roadmap summary`: short description of the current proof roadmap for this sketch attempt
- `Unit type`: `sketch`, `global`, `step`, or `assembly`
- `Unit id`: `sketch`, `global`, `assembly`, or a stable `Step ID`
- `Unit attempt`: `1` for `sketch`; for `global`, the global proof attempt under the current `Sketch attempt`; for `step`, the per-`Step ID` attempt under the current `Sketch attempt`; for `assembly`, the assembly attempt under the current `Sketch attempt`
- Accepted rows with a producer attempt over the controller budget are invalid: `Sketch attempt > MAX_SKETCH_ATTEMPTS_PER_IDEA`, global `Unit attempt > MAX_GLOBAL_PROOF_ATTEMPTS_PER_SKETCH`, step `Unit attempt > MAX_STEP_ATTEMPTS_PER_STEP`, or assembly `Unit attempt > MAX_ASSEMBLY_ATTEMPTS_PER_SKETCH`
- `Status (Accept / Fail)`: empty while running, then `Accept` or `Fail`
- `Score`: numeric `1-10` only when filled from aggregated `proof_review.md`; use `N/A` for sketch, global, and step reviews
- `Review outcome`: local statuses for sketch, global, and step reviews or final outcomes from `/proof-review-aggregate`
- `Retry target`: `None`, `/global-proof`, `/proof-sketch`, `/proof-step <Step ID>`, `/proof-assembly`, or `/subagent-idea-generator`

Append a row before the producing stage starts. Fill `Status`, `Score`, `Review outcome`, `Retry target`, and `Reasons` only after the corresponding review artifact passes its contract gate.

Global row status mapping:

- Fill the global row only after `global_proof_review.md` passes its artifact gate.
- `ACCEPTED` -> `Status = Accept`, `Score = N/A`
- `REVISE_GLOBAL`, `REVISE_SKETCH`, or `IDEA_FAIL` -> `Status = Fail`, `Score = N/A`
- `Review outcome` is copied from `global_proof_review.md` `## Global-Proof Review Status`
- `Retry target` is copied from `global_proof_review.md` `## Smallest Retry Target`
- Do not copy a global proof diagnostic score into this row; global rows always use `Score = N/A`.
- `REVISE_GLOBAL` opens a new global row with the next global `Unit attempt` when the global proof attempt budget remains.

Assembly row final-review mapping:

- The assembly row is filled only after aggregated `proof_review.md` passes its contract gate.
- `Score` is copied from aggregated `proof_review.md` `Score`.
- `Review outcome` is copied from aggregated `proof_review.md` `Failure Type`.
- `Retry target` is copied from aggregated `proof_review.md` `Suggested Next Action`.
- `Status = Accept` only when `Failure Type = ACCEPTED`; otherwise `Status = Fail`.
- Invalid specialized diagnostic reviews are rerun or handed off before aggregation and do not fill proof-tracker rows.
