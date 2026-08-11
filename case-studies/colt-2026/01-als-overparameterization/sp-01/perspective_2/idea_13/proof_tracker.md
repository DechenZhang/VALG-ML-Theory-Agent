# Proof Tracker

Use this branch-local tracker at `perspective_2/idea_13/proof_tracker.md`.

## Split-Mode Proof Attempts

| Sketch attempt | Roadmap summary | Unit type | Unit id | Unit attempt | Status (Accept / Fail) | Score | Review outcome | Retry target | Reasons |
| -------------- | --------------- | --------- | ------- | ------------ | ---------------------- |:-----:| -------------- | ------------ | ------- |
| 1 | Cyclic residual-gradient power bank, polynomial-mass power certificate, candidate-relative capture ledger, and terminal balanced PL route | sketch | sketch | 1 |  | N/A |  |  | Fresh idea after idea-12 IDEA_FAIL; preserve exact objective/rank/endpoint/baseline and prove polynomial activation without ambient Haar caps. |
| 2 | Concise cyclic-power, certificate/ledger, and terminal-PL roadmap with merged interfaces | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Review SHA-256 `38f5f89782c1567bacbe303da361c4e99bb2f3c794117316bb29eeefe12b8f46`; score 6. Compression preserved the target but hid quantitative cyclic-defect, Armijo, selector, typed-prefix, and Gate Evidence interfaces. Archived under `proof_history/sketch_002/`. |
| 3 | Five-row roadmap with auditable activation, implementation, selector, typed-ledger, and gate-evidence subunits | sketch | sketch | 1 | Fail | N/A | REVISE_SKETCH | /proof-sketch | Review SHA-256 `c20010ffdf8880d176cea5e8c95574b8c80e1edf732320de24c60411ea3c414b`; score 5. Stable subunits and gates are present, but C-rel source/scale, Armijo count/exponent, selector dominance, and typed-ledger exports remain unresolved. Archived under `proof_history/sketch_003/`; same-setting repair remains plausible. |
| 4 | Decisive five-row feasibility roadmap with dimension-free relative budget or explicit idea-level obstruction | sketch | sketch | 1 | Fail | N/A | IDEA_FAIL | /subagent-idea-generator | Review SHA-256 `e2ae7f058e04d030a7001ee86a7b9ae8774f5a003d93cd901b2570ff5bf2916a`; score 3. Exact orthogonal equal-weight baseline gives `curv_I <= r^{-1/2}` while the binding certificate requires `curv_I >= gamma_pow/4 >= 1/8`, so discovery cannot accept its first label. Archived under `proof_history/sketch_004/`; repair requires a changed certificate/protocol contract. |

Controlled values:

- `Sketch attempt`: starts at `1` for an idea and increments after sketch-review `REVISE_SKETCH`, global-proof-review `REVISE_SKETCH`, or final `PROOF_SKETCH_FLAW`.
- `Roadmap summary`: short description of the current proof roadmap.
- `Unit type`: `sketch`, `global`, `step`, or `assembly`.
- `Unit id`: `sketch`, `global`, `assembly`, or a stable step ID.
- `Unit attempt`: `1` for a sketch; per-unit attempts are counted under the current sketch.
- `Status (Accept / Fail)` is filled only after the corresponding review artifact passes its contract gate.
- Sketch and step rows use `Score = N/A`; numeric scores are reserved for aggregated final review.
- `Retry target` is one of `None`, `/global-proof`, `/proof-sketch`, `/proof-step <Step ID>`, `/proof-assembly`, or `/subagent-idea-generator`.
