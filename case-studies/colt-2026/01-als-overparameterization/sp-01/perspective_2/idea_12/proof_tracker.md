# Proof Tracker

Use this branch-local tracker at `perspective_M/idea_N/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Two-mode contraction, candidate-relative zero-safe transaction, Raw-J-rel capture ledger, and four-block terminal route | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Review SHA-256 `2fea842585ba32f02ca872c3305288467519cf2aa1c92cdd3417779c70ec72a7`; repair nonempty-prefix A_I/Raw-J producer, coefficient-level singleton dominance, quantified Haar window, PL orbit/rate bridge, and R_I=0 wording. |
| 2 | Candidate-relative transaction, explicit raw ledger induction, quantified tape activation, and same-target PL rate bridge | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Controller-directed concision revision before review: preserve the same setting/goal and theorem-critical interfaces, but remove redundant bookkeeping and reduce the stable-step count. Archived as `proof_history/sketch_002/`. |
| 3 | Concise candidate-relative transaction/ledger roadmap with explicit activation and combined terminal-rate bridge | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Review SHA-256 `4090e518d2ea1e7913ceedc0abfa7084b106ab32fcc1145fe6c2902bbeabecfc`; restore typed `b_{s+1}` preservation, activation score/gain/mu/path inequalities, public Raw-J-rel substitution, and U3 dominance discharge. Same-setting repair preserves seven rows; archived as `proof_history/sketch_003/`. |
| 4 | Seven-row candidate-relative roadmap with restored typed ledger, certificate-scale activation, public Raw-J bridge, and selector dominance | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Review SHA-256 `fbd21da1d68f3100ec3b523980dbb05537fcf80abe6aa7b9c0ffe7a64b6b46a1`; unrestricted-`n` stress shows current `a_n` seed and `P^{-2D_mu}a_n^6` U3 scales do not dominate allowed structural defects; add defect-adaptive analysis scale/selector and unresolved-set typing. Same-setting repair; archived as `proof_history/sketch_004/`. |
| 5 | Seven-row defect-adaptive candidate-relative roadmap with typed shrinking-prefix ledger and uniform activation margins | sketch | sketch | 1 | Fail | N/A | IDEA_FAIL | /subagent-idea-generator | Review SHA-256 `59f2675c7dbd300b6563f188fb029bf557c93d5005dcf89f3179367c155d61ef`; unrestricted-n polynomial-mass obstruction and U3/U5 scale gaps require a theorem-contract/procedure/source change. Archived as `proof_history/sketch_005/`. |

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
