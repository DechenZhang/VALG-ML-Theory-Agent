# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_010`
- Unit attempt: 1
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_010/proof.md`
- Frozen SHA-256:
  `715d4c78d7e5c891de0e897dc49efb2ebed1d725b0e4e30a879f316718236806`
- Accepted dependencies:
  - `perspective_1/idea_6/proof_steps/step_003/proof.md`, frozen SHA-256
    `caa4c7a44f21a70e29edfb168aa4aed7f52d9a38e425b0a49b095f66857e2904`,
    with accepted review.
  - `perspective_1/idea_6/proof_steps/step_009/proof.md`, frozen SHA-256
    `87d33c4e95c775caade07b7beb57fbf11bfd693ac0e048870240e6d501931e80`,
    with accepted review SHA-256
    `f7a1f2719eee087c8d3f0d0484c3789db50caa2caced4de1975271e070582b99`.

## Step-Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Blocking Issues

1. **Location:** Proposition~\ref{prop:step-010-runtime}, especially the
   transition from (3.1) and (4.1) to “every complete run, successful or
   unsuccessful,” and the corresponding target-step assembly. **Defect:**
   the accepted `step_009` stopping/runtime interface is conditional on the
   generated `E_parallel_entry` and `E_basin_parallel` domain.  The proof
   establishes `E_cov` implies a successful run, but it does not establish
   that every run which passes the observable `r`-cluster gate lies in that
   domain.  In particular, a tape in `E_cov^c` may still pass the observable
   gate and enter active ALS; the setting supplies no active-sweep cutoff,
   and neither accepted dependency gives such a run a finite hitting time.
   Consequently (5.1) does not bound every unsuccessful run, a bad early run
   need not terminate before the next restart, and the claimed deterministic
   `J T_run` runtime does not follow. **Downstream effect:** the public
   polynomial-runtime and restart conclusions are not established on the
   declared probability space. **Smallest repair direction:** revise the
   sketch to expose a noncircular failed-run termination interface.  A valid
   target-preserving repair could prove, through explicit dependencies, that
   passing the observable gate itself produces `E_parallel_entry` and
   `E_basin_parallel`, or specify and analyze a finite active-run cutoff.  The
   latter changes the procedure and must not be inserted locally.

2. **Location:** Proposition~\ref{prop:step-010-active-cost}, equations
   (C.4), (4.1), and (5.1). **Defect:** the operation count evaluates
   `T_(1) K_U` through the latent factor matrices `A_0,B_0,C_0`.  Those
   ground-truth factors define the unknown tensor but are not inputs to the
   SC-JEP-ALS procedure.  This replaces the accepted dense-tensor interface
   from `step_009`, namely
   `O(m_epsilon(n^3 r+n r^2+r^3+n k))`, by an unsupported faster
   `O(m_epsilon r(n^2+r^2))` implementation. **Downstream effect:** the
   displayed per-run and total cost bounds undercount the prescribed
   algorithm. **Smallest repair direction:** after the failed-run interface
   is repaired at sketch level, consume the accepted dense-tensor active-cost
   bound verbatim (or state an explicit factor-oracle input model, which
   would change the theorem contract).

## Per-Lemma Audit

### unit_001: one-run success from coverage

- Statement fidelity: The intended `E_cov -> S` implication and conditional
  one-run probability match the restart row.
- Proof validity: The event inclusion is plausible along the accepted
  producer chain, but the proof refers generically to that chain instead of
  restating the exact gate/entry implication.  This does not supply the
  stronger all-gate-passing-run implication later used for runtime.
- Cited-result and assumption audit: `step_003` supplies the tensor-uniform
  `p_0=1/2`; `step_009` supplies stopping only on its generated entry/basin
  domain.  No new randomness assumption is introduced.
- Rigor checklist: The fixed-`T` conditioning, proof-only labels, original
  Frobenius residual, and zero padding are handled correctly on `E_cov`.
- Local adversarial test: On `E_cov` the claimed successful trajectory is
  covered; on `E_cov^c` this unit deliberately gives no conclusion.
- Contribution to target step: It supports the one-run success lower bound,
  but not the universal per-run runtime used later.
- Verdict: REVISE_STEP
- Repair direction: Restate the exact accepted producer path proving
  `E_cov` reaches the observable gate and generated stopping domain; do not
  strengthen it to all gate-passing tapes without a new accepted bridge.

### unit_002: independent restart amplification and output selection

- Statement fidelity: PASS.  It targets the separate conditional
  initialization confidence and keeps `k` independent of `delta_init`.
- Proof validity: PASS.  Conditional independence gives the finite failure
  product, and `C_rep>=1/log 2` with the stated ceiling yields
  `2^{-J}<=delta_init` for all `0<delta_init<1`.
- Cited-result and assumption audit: PASS.  Across-run tape independence is
  exactly Assumption~\ref{assump:random-initialization}; no cross-target
  independence is used.
- Rigor checklist: PASS.  The `J=1` regime, rank-at-most-`k` support, and
  smallest-original-residual selection are all covered.
- Local adversarial test: PASS for the probability statement.  It does not
  by itself ensure that an earlier unsuccessful run terminates, which is the
  separate runtime blocker above.
- Contribution to target step: Correctly proves conditional amplification on
  the event that all `J` runs are actually completed.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposal, certification, filtering, and clustering cost

- Statement fidelity: PASS.  It covers the finite pre-refinement phases and
  observable early failures assigned to this step.
- Proof validity: PASS as a conservative dense-tensor upper bound.  The
  `k L_prop n^3`, `k n^3`, and `k^2 n` terms charge contractions,
  certification/score work, and graph work respectively.
- Cited-result and assumption audit: PASS.  Only the setting's finite loops
  and procedure are used.
- Rigor checklist: PASS.  The extra certification evaluation and lower-order
  initialization/bookkeeping costs are explicitly absorbed.
- Local adversarial test: A zero contraction, absent certificate, empty pool,
  or wrong cluster count terminates inside the finite bound.
- Contribution to target step: Correctly bounds runs that fail before active
  refinement.
- Verdict: PASS
- Repair direction: None.

### unit_004: active refinement and exact stopping-test cost

- Statement fidelity: The unit is assigned the correct active phase, but its
  displayed cost is stronger than the accepted implementation interface.
- Proof validity: The algebraic identity (C.4) is true, but its use as an
  algorithmic shortcut is invalid without access to the latent factors.  A
  dense unfolding multiplication costs `O(n^3 r)`, as already proved and
  accepted in `step_009`.
- Cited-result and assumption audit: The accepted stopping horizon applies
  only on the generated basin; the unit cannot apply it to an arbitrary
  gate-passing run.
- Rigor checklist: Gram, solve, and residual-test dimensions are otherwise
  polynomial, but the input representation and domain quantifiers are wrong.
- Local adversarial test: A dense observed tensor with unavailable generating
  factors breaks (4.1); a gate-passing tape outside the generated basin has
  no accepted `m_epsilon` horizon.
- Contribution to target step: Does not provide the claimed active cost for
  every complete run.
- Verdict: REVISE_SKETCH
- Repair direction: First expose failed-run termination in the sketch, then
  reuse the accepted dense cost from `step_009`.

### unit_005: total runtime, polynomial dependence, and baseline

- Statement fidelity: It aims at the exact total-runtime, probability-
  separation, and baseline obligations.
- Proof validity: Equations (5.2)--(5.4) correctly sum a valid uniform
  per-run bound and show polynomial dependence, but (5.1) is not such a bound
  because of both blockers above.  Thus the assembly premise is false.
- Cited-result and assumption audit: The stationary zero-residual conclusion
  is inherited correctly from accepted `step_009`; it does not repair the
  missing behavior of nonstationary unsuccessful tapes.
- Rigor checklist: The ceiling bound for `J`, separation of `delta_sm` and
  `delta_init`, and lack of confidence dependence in `k` are correct.
- Local adversarial test: A first tape outside `E_cov` that passes the cluster
  gate but never hits the residual threshold prevents subsequent restarts and
  invalidates `T_total<=J T_run`.  In the exact stationary specialization,
  by contrast, the inherited first-sweep zero residual is retained.
- Contribution to target step: Probability and baseline bookkeeping pass,
  but the required total runtime does not.
- Verdict: REVISE_SKETCH
- Repair direction: Rebuild this unit after a sketch-level all-run
  termination interface and the accepted dense active cost are in place.

## Hidden Subclaim Scan

The proof hides two independent claims not supplied by its local units or
accepted dependencies: (i) every observable gate-passing tape, rather than
only the `E_cov`-generated successful tape, enters the accepted refinement
basin; and (ii) the algorithm may evaluate tensor contractions through the
unknown generating factors.  The first is theorem-critical for restarts and
runtime and requires a repaired producer/dependency or cutoff interface.

## Target Claim Audit

The nested probability statement is correct: first
`Pr_T(E_sm)>=1-delta_sm`, then for every fixed `T` in that event the restart
success probability is at least `1-delta_init`.  The proof does not merge
these probabilities, and it preserves `k=U(r)` and the original rank-`k`
Frobenius metric.  However, it fails the target's requirement to charge all
unsuccessful runs and restarts, because the procedure's active phase has no
proved finite horizon outside the generated success domain.  Therefore the
exact target claim is not established.

## Explicit Rate Audit

The probability rate `J=O(1+log(1/delta_init))`, the stopping horizon
`m_epsilon`, and the independence of `k=U(r)` from confidence are preserved.
Hidden constants and the conditional probability mode are otherwise stated
properly.  The runtime specialization fails: the accepted active term
`m_epsilon(n^3 r+n r^2+r^3+n k)` is silently replaced by a latent-factor
oracle term, and no finite horizon is supplied for active unsuccessful runs.
The exact orthogonal equal-weight stationary baseline remains zero residual,
but this separate specialization cannot validate the general runtime bridge.

## Notation Surface Audit

The event and cost notation is mostly economical and classified.  `E_restart`
is an appropriate public-facing generated event, while `S_nu` and run tapes
are proof-local.  The matrices `A_0,B_0,C_0`, however, are misclassified for
the runtime argument: they are latent setting objects, not algorithmically
available proof-local work arrays.  `T_run` and `T_total` therefore cannot be
exported with their current definitions.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-010-one-run} and
Proposition~\ref{prop:step-010-restarts} correctly assemble conditional
success once a successful run is completed.  Lemma~\ref{lem:step-010-proposal-cost}
correctly charges all pre-refinement work.  The assembly fails at
Proposition~\ref{prop:step-010-active-cost}: it neither covers active tapes
outside the generated basin nor uses the accepted dense-tensor cost.
Consequently the named results do not jointly imply the total-runtime part of
the sketch row.

## Review Rationale

`REVISE_SKETCH` is the smallest sound status because the decisive gap is not
merely an arithmetic omission in the submitted proof.  The accepted row has
no producer for finite termination of a gate-passing but unsuccessful active
run, while the procedure has no active cutoff.  Closing that gap requires a
new dependency/output bridge or a procedure-level cutoff before `step_010`
can prove a uniform per-run cost.  Once that interface is fixed, the latent-
factor cost error is local: the producer should consume the already accepted
dense active-runtime bound from `step_009`, after which a fresh
`/proof-step-review step_010` is required.
