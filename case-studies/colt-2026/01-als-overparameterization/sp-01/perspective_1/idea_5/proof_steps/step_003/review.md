# Proof Step Review

## Step Review Identity

- Sketch attempt: 8
- Step ID: `step_003`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_5/proof_steps/step_003/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: rank-window matching with a confidence-free constant

- Statement fidelity: PASS. The proposition targets the exact rank specialization in the accepted sketch row and keeps the fixed-instance conditional setting. It explicitly states the primitive rank assumption, the accepted `step_002` probability interface, the universal choice `C_rank >= 16/c_all`, the lower bound `k p_win >= 8 log r`, and the two-sided order for `k`.
- Proof validity: PASS. The ceiling definition gives `k >= C_rank r^(5/3)(log r)^(5/2)`, so multiplication by the inherited lower bound `c_all r^(-5/3)(log r)^(-3/2)` yields `C_rank c_all log r >= 16 log r >= 8 log r`. The upper ceiling comparison is valid because `B_r = r^(5/3)(log r)^(5/2) >= 1` for `r >= 3`.
- Cited-result and assumption audit: PASS. Proposition~\ref{prop:step-002-window-event} is restated as the source of the uniform lower bound and target minimum; no unproved target or trajectory event is imported. `c_all` is correctly treated as a universal constant inherited from the accepted dependency, not as a generated condition.
- Rigor checklist: PASS. The exponent and logarithmic powers cancel exactly, the ceiling is handled in both directions, and no `delta_init`, `epsilon`, instance parameter, or hidden condition number enters the rank constant.
- Local adversarial test: PASS. The smallest allowed rank is covered by the explicit `B_r >= 1` check; larger ceilings can only improve the lower product. The theorem-domain restriction `k <= n` remains an assumption-domain restriction and is not silently dropped.
- Contribution to target step: Supplies the required `k p_win` threshold and preserves the exact strictly-subquadratic rank scale.
- Verdict: PASS
- Repair direction: None.

### unit_002: fixed-target miss probability from slot independence

- Statement fidelity: PASS. The proposition fixes one target and one realized instance in `E_sm`, and proves the exact marginal miss bound needed before the target union.
- Proof validity: PASS. For a fixed target, each event `E_(i,j)` is measurable with respect to one slot's raw Gaussian triple. Conditional slot independence gives `(1-p_(win,j))^k`; `1-x <= exp(-x)` and `p_(win,j) >= p_win` then give `r^(-8)` from unit_001. The monotonicity direction in the exponential bound is correct.
- Cited-result and assumption audit: PASS. The accepted step-002 proposition supplies measurability, identical target-specific slot probabilities, and the lower bound; `assump:random-initialization` supplies only the across-slot independence actually used. No independence across target labels is cited or assumed.
- Rigor checklist: PASS. The conditional probability mode and fixed-target quantifier are explicit, and the boundary case `p_(win,j)=1` is addressed. There is no conditioning on events for other targets.
- Local adversarial test: PASS. Arbitrary dependence among different `E_(i,j')` within a slot does not affect this calculation, and the miss bound remains valid for singular or highly correlated target-coordinate structures because those were already absorbed into the accepted `p_win` interface.
- Contribution to target step: Produces one uniform miss probability per target using only the permitted independence.
- Verdict: PASS
- Repair direction: None.

### unit_003: simultaneous coverage without cross-target independence

- Statement fidelity: PASS. The proposition states the exact all-target event, its complement bound, and the required one-run lower probability `p_0 >= 1/2` for every fixed good instance.
- Proof validity: PASS. The set identity `E_cov^c = union_j mathsf M_j` is exact. Applying the finite union bound to the `r` marginal bounds gives `r * r^(-8) = r^(-7)` without any cross-target independence. Since `r >= 3`, `r^(-7) < 1/2`, so complementing yields the claimed `p_0` bound.
- Cited-result and assumption audit: PASS. Only the named local miss proposition and elementary union bound are used. `E_cov` and `p_0` are proved outputs, not primitive or local-validity assumptions.
- Rigor checklist: PASS. The argument preserves the conditional-on-instance probability mode and does not multiply target events. The finite-r inequality is explicit and stronger than required.
- Local adversarial test: PASS. The conclusion remains valid under arbitrary dependence across targets and across target events sharing a slot; only the already-verified fixed-target slot independence enters through unit_002.
- Contribution to target step: Exports the all-target coverage event and a universal positive one-run probability.
- Verdict: PASS
- Repair direction: None.

### unit_004: target labels are proof-only

- Statement fidelity: PASS. The proposition states the pathwise no-label interface requested by the sketch: target indices occur only in analysis events, and a permutation of the CP summands leaves the tensor and algorithmic path unchanged.
- Proof validity: PASS. Equation (18) establishes invariance of `T` under a summand permutation. For a fixed random tape, initialization, Jacobi contractions, certification residuals, score filtering, graph construction, representative selection, balanced initialization, active ALS, stopping, and restart comparison are all functions of `T`, generated states, observable scores/inner products, and fixed constants. The indexed window and miss events are merely permuted, and their full-target intersection is invariant.
- Cited-result and assumption audit: PASS. The proof uses only the formalized SC-JEP-ALS procedure and the fixed tensor/tape; no target labels are added to the algorithm. The distinction between proof witnesses and algorithm inputs is explicit.
- Rigor checklist: PASS. The argument is pathwise rather than probabilistic, handles arbitrary target permutations, and preserves the rank-one tensor under any component reindexing. It does not claim independence or a stronger coverage event.
- Local adversarial test: PASS. Slot order, score ties, graph components, zero padding, and negative score signs are algorithmic quantities independent of the decomposition indexing; relabeling can only rename the proof events. Any target-to-slot witness is correctly confined to downstream proof bookkeeping.
- Contribution to target step: Discharges the label-erasure part without introducing a target oracle.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The rank/ceiling calculation, inherited probability interface, fixed-target
product formula, exponential miss bound, target union, `r >= 3` conversion, and
pathwise label-erasure argument are all represented by the four mapped,
theorem-style propositions and matching derivations. The elementary
independence, exponential, and union-bound facts are restated before use.
No hidden cross-target independence, trajectory/certification success,
confidence amplification, or generated invariant is smuggled into the step.

## Target Claim Audit

The proof establishes the exact `step_003` row for every fixed realized
instance in `E_sm`: with the universal choice `C_rank >= 16/c_all`,
`k p_win >= 8 log r`; each fixed target has miss probability at most `r^(-8)`;
the all-target event has conditional probability at least
`1-r^(-7) >= 1/2`; and target labels are absent from the pathwise algorithm.
The dependency order is current and accepted (`step_002` proof plus accepted
review), and the proof does not overclaim later trajectory, certification,
clustering, ALS, or restart conclusions.

## Explicit Rate Audit

- Rate-bearing status: applicable; this step specializes the per-slot window rate to the exact proposal rank and converts it to one-run coverage.
- Exposed variables: `r`, `k`, `p_(win,j)`, `p_win`, `C_rank`, `c_all`, `p_0`, and the admissibility condition `r < k <= n`. `delta_init` is explicitly excluded from the rank and appears only in the audit note.
- Hidden constants: only the universal `c_all` inherited from the accepted step-002 event and fixed numerical window constants. No dependence on `n`, `kappa_0`, `rho`, the base triple, the realized instance, `epsilon`, either confidence parameter, or a generated condition number is introduced.
- Fixed quantities and modes: the tensor/instance is fixed in `E_sm` before proposal probability is taken; one target is fixed for the marginal miss calculation and then removed by a finite union; the mode is conditional probability over one finite run of independent slots.
- Quantitative checks: equations (9)--(10) show the exact rank powers and ceiling bounds; (11)--(13) show the fixed-target miss; and (16) shows the target union and `p_0` conversion. No term is absorbed without a displayed inequality.
- Horizon and norm modes: this step is only finite initialization coverage at one run and introduces no burn-in, all-time, restart, or norm claim.
- Probability conversion: genuine independence is used only across slots for a fixed target; the final target union uses no cross-target independence. The baseline `q_real=0`, `Gamma=1` specialization preserves the same coverage calculation.

## Notation Surface Audit

`E_(i,j)` is an appendix-local copy of the accepted public event
`E_win(j)`; `mathsf M_j` is proof-local; and `E_cov` and `p_0` are the only
minimal public outputs. `p_(win,j)`, `p_win`, and `c_all` are explicitly
inherited from the accepted dependency. The ceiling abbreviation `B_r` and
the elementary test events/functions are proof-local. All symbols are
defined in current notation, and no target label or generated condition is
exported as an assumption.

## Target-Step Assembly Audit

The named dependency and local results form an acyclic chain:
Proposition~\ref{prop:step-002-window-event} supplies `p_win`; Proposition~
\ref{prop:step-003-rank-match} supplies the rank threshold; Proposition~
\ref{prop:step-003-target-miss} supplies one marginal miss per target;
Proposition~\ref{prop:step-003-coverage} applies the target union and exports
`E_cov,p_0`; and Proposition~\ref{prop:step-003-label-erasure} proves the
algorithmic no-label interface. These results jointly imply exactly the
accepted sketch-row target and export no stronger or changed claim.

## Review Rationale

`ACCEPTED` is the smallest sound status. The accepted step-002 interface gives
a uniform positive lower bound with universal provenance, and the submitted
proof correctly specializes the ceiling rank, uses slot independence only in
the fixed-target calculation, applies a dependence-agnostic target union, and
proves the pathwise algorithmic invariance under target relabeling. All local
units have self-contained statements, theorem-style labels, explicit
assumption/dependency bases, and matching assembly references. No local repair,
sketch change, or dependency rerun is required.
