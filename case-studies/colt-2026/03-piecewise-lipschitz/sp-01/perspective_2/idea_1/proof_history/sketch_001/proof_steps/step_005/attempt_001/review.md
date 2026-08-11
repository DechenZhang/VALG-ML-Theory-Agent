# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_005/proof.md
- Reviewed proof SHA-256: 118738d2a5b881f45bddc5991bf94bfed33bdfad31cc7f84c1c66fda32f0075b
- Sketch acceptance source: perspective_2/idea_1/proof_sketch_review.md, Sketch attempt 1, status ACCEPTED.
- Accepted dependency: step_004 at sketch attempt 1 and unit attempt 1; current proof SHA-256 `2ca180a73c0bb2d16d89e29b523e4104bf50526c2ea283ac91cfef0a8bc030b8`, paired with current review SHA-256 `074823fd04097ae6b79f4cdbc28258e436d879f0774aa0204edbd46a1404d54e`, whose status is ACCEPTED and whose reviewed-proof hash matches that proof hash.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: PASS. Lemma~\ref{lem:step-005-three-piece-decomposition} states the exact parameter partition, endpoint allocation, length identity, and root-event union required by the accepted step_005 row. It covers arbitrary endpoint conventions and permits empty and singleton pieces without changing the target scope.
- Proof validity: PASS. The sets `[-1,1]`, `(1,\infty)`, and `(-\infty,-1)` are a pairwise-disjoint partition of `\mathbb R`; intersecting them with the actual set `I` preserves every included or excluded endpoint. Their intersections are Borel, so finite additivity gives `|I|=|I_0|+|I_+|+|I_-|`. Witness-by-witness root membership proves the event equality in both directions.
- Cited-result and assumption audit: PASS. The only invoked result is finite additivity of Lebesgue measure on finitely many disjoint Borel sets, restated before use. The interval and indexed objects are exactly those supplied by Assumptions~\ref{assump:compact-parameter-domain} and \ref{assump:indexed-regime}; no generated condition is treated as primitive.
- Rigor checklist: PASS. If `1` or `-1` belongs to `I`, it belongs only to `I_0`; if excluded by `I`, it belongs to no piece. Empty and singleton pieces have length zero. The event identity does not assert event disjointness, and no closure, limiting, stochastic-mode, or quantifier upgrade is made.
- Local adversarial test: PASS. Open, closed, and half-open choices at either chart boundary leave the set partition and length identity exact. A polynomial with roots in two or all three pieces makes the corresponding events overlap but does not invalidate the event union. An interval lying wholly in one chart makes the other pieces empty without introducing a correction term.
- Contribution to target step: PASS. This lemma supplies exactly the set, length, endpoint, and event interfaces consumed by the two later propositions.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: PASS. Proposition~\ref{prop:step-005-weighted-chart-bound} states the first target inequality with the exact inner coefficient `\bar\kappa_0B_0(d,R)` and the exact shared outer coefficient `\bar\kappa_\infty B_\infty(d,R)`, under the named decomposition lemma and all three accepted step_004 chart controls.
- Proof validity: PASS. The proof applies finite subadditivity to the exact three-event union, then substitutes the accepted inner, positive-outer, and negative-outer estimates term by term. Factoring the common outer coefficient yields `C(|I_+|+|I_-|)` and does not introduce a factor two or assume that the events are disjoint.
- Cited-result and assumption audit: PASS. The current accepted step_004 proof/review pair exports precisely the three probability inequalities used here, including zero probability for empty or singleton pieces. Finite subadditivity is restated for measurable events, and event measurability is supplied by the accepted dependency chain. No independence, joint density, transversality, or almost-sure slice cap is added.
- Rigor checklist: PASS. The probability inequality direction is preserved, all coefficients and lengths are nonnegative and finite, and the three chart bounds are applied to their matching events. Degenerate pieces contribute both zero probability and zero weighted length; Lemma~\ref{lem:step-005-three-piece-decomposition} puts roots at `\pm1` only in the inner event.
- Local adversarial test: PASS. Allowing one polynomial to have roots in several pieces defeats probability additivity but is handled by subadditivity. Taking either outer piece, both outer pieces, or the inner piece to be empty or singleton leaves the displayed bound valid. At `d=1`, the accepted dependency still supplies the three separate chart bounds despite the common sole-coefficient kernel.
- Contribution to target step: PASS. This proposition converts the accepted dependency outputs into exactly the weighted per-interval inequality required before the maximum step.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: PASS. Proposition~\ref{prop:step-005-exact-maximum} targets exactly `\mu(H_{d,I})\leq M_\eta(d,R)|I|`, with `M_\eta(d,R)=\max\{\bar\kappa_0B_0(d,R),\bar\kappa_\infty B_\infty(d,R)\}` as fixed in the setting and accepted sketch.
- Proof validity: PASS. With `A=\bar\kappa_0B_0`, `C=\bar\kappa_\infty B_\infty`, and nonnegative piece lengths `x,y,z`, the proof derives `Ax+C(y+z)\leq m(x+y+z)` directly from `A,C\leq m=\max\{A,C\}`. Lemma~\ref{lem:step-005-three-piece-decomposition} then identifies `x+y+z=|I|`, and the setting definition identifies `m=M_\eta(d,R)`.
- Cited-result and assumption audit: PASS. The proposition uses only the named decomposition lemma, the named weighted-bound proposition, and setting-defined constants. Assumption~\ref{assump:indexed-regime} supplies finite nonnegative cap parameters and admitted `d,R`, which make `A`, `C`, `B_0`, and `B_\infty` nonnegative. No external result or unstated dominance condition is used.
- Rigor checklist: PASS. The scalar multiplication steps use nonnegative lengths, equality of total length is exact, and no term is dropped or asymptotically absorbed. Cases `A=0`, `C=0`, `A=C`, zero-length pieces, `d=1`, and `R=1` all satisfy the same displayed inequality.
- Local adversarial test: PASS. If all source length lies in the chart with the larger coefficient, equality in the maximum conversion can occur; if it lies in the smaller chart, the bound remains valid. Replacing the maximum by a sum would be a weaker interface, but the submitted derivation never does so and exports the exact required `M_\eta`.
- Contribution to target step: PASS. This proposition supplies the exact maximum interface consumed by step_006 and introduces no class supremum or polynomial specialization.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. The parameter partition, Borel/length consequences, endpoint allocation, and event identity are contained in Lemma~\ref{lem:step-005-three-piece-decomposition}; probability subadditivity and substitution of the three dependency bounds are contained in Proposition~\ref{prop:step-005-weighted-chart-bound}; and nonnegativity plus the weighted-maximum algebra are contained in Proposition~\ref{prop:step-005-exact-maximum}. Event measurability and zero probability for empty or singleton chart pieces are current accepted step_004 outputs, not unproved local assumptions. The assembly relies on theorem-style names and labels rather than subsection names or bare unit IDs.

## Target Claim Audit

The proof establishes exactly the accepted step_005 claim for every `d\geq1`, `R\geq1`, `\mu\in\mathcal D_{d,R,\eta}`, and `I\in\mathcal I(\Theta)`: it proves the exact three-piece event union, applies finite subadditivity to potentially overlapping root events, obtains
\[
\mu(H_{d,I})\leq
\bar\kappa_0B_0(d,R)|I_0|+
\bar\kappa_\infty B_\infty(d,R)(|I_+|+|I_-|),
\]
and then proves `\mu(H_{d,I})\leq M_\eta(d,R)|I|`. The proof preserves arbitrary endpoint conventions, allocates each included `\pm1` exactly once, and covers empty and singleton pieces. It neither narrows the law class nor performs the later class supremum, polynomial specialization, or witness argument.

## Explicit Rate Audit

This is a rate-bearing structural step. The proof exposes `d`, `R`, `\bar\kappa_0`, `\bar\kappa_\infty`, `|I_0|`, `|I_+|`, `|I_-|`, and `|I|`; `\eta` and `\Theta` are fixed as in the setting. No hidden constant is present or allowed to depend on the law, interval, endpoint convention, conditioning values, or density/kernel versions. The probability mode is a deterministic bound for each fixed law after one finite union bound; the horizon mode is static and interval-uniform; the norm/metric is one-dimensional Lebesgue length with a probability output. There is no auxiliary tolerance, confidence conversion, limiting passage, or term absorption. The only specialization is the displayed exact inequality
\[
Ax+C(y+z)\leq\max\{A,C\}(x+y+z),
\]
so the exported constant is exactly `M_\eta`, not `A+C`. At `d=1`, `B_0=B_\infty=1`, yielding the same-target bound `\max\{\bar\kappa_0,\bar\kappa_\infty\}|I|` with no remainder. This step correctly leaves the class-supremum and public polynomial bridge to step_006.

## Notation Surface Audit

The public-facing objects `H_{d,J}`, `I_0`, `I_+`, `I_-`, `B_0`, `B_\infty`, and `M_\eta` retain their setting definitions, and the proof exports only the weighted chart bound and the exact maximum bound. The accepted chart-probability propositions are appendix-local dependency interfaces. The aliases `A,C,x,y,z,m` are explicitly classified as proof-local, are defined directly from setting quantities, and clarify one scalar calculation without hiding dependence or boundedness. No new event, constant, threshold, margin, invariant, or admissibility package is introduced.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-005-three-piece-decomposition} supplies the exact domain and event decompositions and length additivity. Proposition~\ref{prop:step-005-weighted-chart-bound}, using all three current accepted step_004 propositions, supplies the exact weighted probability bound while allowing event overlap. Proposition~\ref{prop:step-005-exact-maximum} then applies the proved nonnegative weighted inequality and the exact length identity to obtain `M_\eta(d,R)|I|`. These named results jointly imply the full target row, including endpoint and degenerate cases, and no additional bridge, assumption, or local result is required.

## Review Rationale

The submitted proof matches the accepted sketch row and current dependency interface, all three non-atomic units have self-contained assumption-bearing theorem-style statements and valid proofs, and no hidden subclaim or unsupported condition is used. The independent endpoint, event-overlap, degenerate-piece, finite-subadditivity, length-additivity, and exact-maximum stress tests all pass. The exact target is therefore proved under the allowed inputs, so the controlled status is ACCEPTED and the smallest retry target is None.
