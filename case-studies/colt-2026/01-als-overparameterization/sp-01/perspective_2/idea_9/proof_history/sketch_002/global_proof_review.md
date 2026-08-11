# Global-Proof Review

## Global-Proof Review Identity

- Branch: `perspective_2/idea_9`.
- Reviewed global-proof attempt: 1, `global_proof.md`, SHA-256
  `53b51ec41ad5e63e25540e7f62342b7c1dbcf15c6cb998f811cfd6e35faa3bc0`.
- Binding setting: `setting.md`, SHA-256
  `27315acf705cd791f29d341efaa11aae66803d02b9c240fc613cce06cc57c4b2`,
  target-spec `material_partial` mode.
- Reviewed proof sketch: attempt 2, `proof_sketch.md`, SHA-256
  `527973357e6b0456d6131db81c9c86d8684c18edf33fb930f839cb557999a63c`.
- Reviewed sketch gate: `proof_sketch_review.md`, SHA-256
  `cdb55e821fad102d1c1e07e64a271cc1c01341aa7eaba724aefb5e0d2200cef5`,
  with `Sketch Review Status = ACCEPTED`.
- The reviewed global diagnostic reports `SKETCH_BLOCKED` and suggests
  `/proof-sketch`.
- This artifact reviews the diagnostic only. It does not promote any claim in
  `global_proof.md` to proof evidence or alter an accepted sketch claim.

## Global-Proof Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Blocking Issues

1. The step-014 chart-entry export is not implied by the accepted sketch's
   named controls. The setting consumes full rank-k Euclidean factor distance
   to the exact target orbit. `R-euc` gives, after orbit alignment, only
   `dist(Q_fin,Z_star) <= C tau_max^(1/3) sqrt(r) eta0`. On `E_lb`, this is
   `O(tau_max^(1/3) sqrt(r) nu_real^2)`, whereas the accepted target is
   `varrho_PL = c_PL min{1,nu_real^2}`. There is no uniform constant that
   removes the `tau_max^(1/3) sqrt(r)` factor.

2. `R-acc` is not a substitute for that missing bridge. Its `Xi` terms
   contract accepted tensor errors against two target modes and therefore
   contain additional Gram factors. In a block-diagonal two-label family,
   an A-mode factor displacement can be order `h^2` while its tensor
   influence is order `h^4`; summing independent blocks gives factor distance
   order `sqrt(r) h^2`. Thus the residual-to-target adequacy gate fails for
   the exported factor-space chart interface, even though the ledger
   interface itself is valid.

3. Consequently the PL descent and public rate blocks have no legal producer
   of chart membership. This is a roadmap/interface defect in steps 013--014,
   not a step-local constant check and not an idea-level theorem-contract
   contradiction.

## Required Repair Bundle

1. **Affected artifact:** `proof_sketch.md`, steps 013--014 and the R4 rate
   objective. **Smallest target:** `/proof-sketch`. Replace the fixed
   `c_PL min{1,nu_real^2}` full-state radius, or add a genuinely stronger
   same-target factor-distance producer. The revised sketch must expose the
   actual bound `C tau_max^(1/3) sqrt(r) eta0`, its orbit/sign/permutation
   alignment, and the exact target metric before exporting chart membership.
   This requires a new sketch attempt while preserving the current setting,
   not a silent edit of the accepted sketch.

2. **Affected artifact:** the step-013 PL output and step-014
   residual-to-target interface. **Exact repair:** a weight-scaled
   full-state radius (for example a fixed inverse-polynomial fraction of
   `tau_min^(1/3)`, or another explicitly proved radius) must be produced by
   the balanced Jacobian/Taylor argument, and step 014 must prove that the
   raw factor bound is at most half of that radius on the derived `E_lb`
   branch. The proof must use `tau_max/tau_min <= 2 Gamma_star`, the upper
   Gram margin, and the chosen exponent order; it may not infer factor
   distance from `R-acc` alone.

3. **Affected artifact:** the revised sketch's dependency map, exported
   interface table, generated-output flow, scope-and-closure certificate,
   and steps 015--016 consumers. Mark chart membership as produced only
   after the new bridge, and keep terminal descent conditional on that output.
   Retain the raw `sqrt(r)e` and `r^2e` terms until the branch check, and
   retain the separate exact `H=0,e=0` baseline with a constant-radius chart.

`/global-proof` is insufficient because the diagnostic already exposes the
   residual decomposition, the wrong target scale, the block stress family,
   the invalid producer-consumer edge, and a plausible same-setting repair.
   `/proof-sketch` is the smallest retry because the exported step target and
   dependency must change before any step-level proof can be sound.

## Contract And Status Audit

The diagnostic contains the required identity, controlled status, attempted
claim, theorem-level block map, sketch-step coverage, dependency and
assumption audit, citation/tool audit, quantitative dependence audit,
scope-and-closure certificate, exported-interface table, generated-output
flow, early obstruction analysis, global gap list, diagnostic boundary note,
and suggested routing. Its `SKETCH_BLOCKED` status is consistent with the
identified non-step-local chart row and `/proof-sketch` routing. The review
does not treat the proposed weight-scaled radius, `Entry-raw`, or block-family
calculation as accepted proof evidence. No contract defect requires a global
rewrite.

## Claim And Sketch Fidelity Audit

The global diagnostic faithfully preserves the nine primitive assumptions,
the once-drawn instance event, the derived `E_lb` branch, the balanced
product-weight and modewise Gram regime, full-space unprojected transactions,
exact rollback, rank `k = ceil(C_rank r^(3/2) log^2(2r))`, the exact generally
nonorthogonal target orbit, separate instance/tape probabilities, relative
Frobenius accuracy, and the no-floor exact baseline. It also faithfully
records the accepted sketch's sixteen-step dependency order and its honest
`O(h^4 + e h + e^2)` O.1 repair.

The accepted sketch is not viable as written at step 014: its own `R-euc`
output is per-slot, while its chart export is a stronger full-state target.
The diagnostic exposes this conflict rather than silently changing the
metric, target, algorithm, or theorem scope. The exact baseline obligation is
not weakened: `H=0,e=0` is handled by equality and a constant chart radius.

## Theorem-Level Structure Audit

G1--G6 provide a coherent order for realized geometry, static lifted source,
conditional landscape, matching, ledger induction, and transaction/tape
outputs. G7 can independently provide exact-target balanced Jacobian and PL
geometry. G8 is the necessary bridge from the actual committed tuple to the
full-state chart and is correctly isolated as the first theorem-level
failure. G9 consumes G8 and therefore cannot be assembled, while G10 is an
independent exact-limit specialization. All sixteen sketch steps have a
mapped role; the issue is the G8 output target, not missing block coverage.

The diagnostic's proposed weight-scaled radius is a repair direction only.
It is not authority to revise G7 or G8 inside this review.

## Dependency And Assumption Audit

- `E_inst` and `E_lb` are derived by step 001. No lower bound on
  `nu_real`, local `h`, or numerical tolerance is promoted to a primitive
  assumption.
- H/J/K, S, transfer gaps, and the Neumann envelope are derived static or
  conditional outputs. `Theta_I` consumes only a prior legal prefix; the
  empty prefix is the base case.
- Matching, calibration, signs, injection, z profiles, J-global, history,
  and `R-acc` are generated outputs with a strict producer-before-consumer
  path through steps 004--009. Exact rollback preserves the prefix on
  failed probes.
- The actual all-commit tuple is legally produced by the tape path, but
  full-state chart membership is not. `R-acc` is a tensor-influence budget,
  not a factor-distance certificate, so an unconditional target cannot
  consume it as the missing bridge.
- PL constants/radius are produced by step 013 as local geometry; the
  accepted radius-to-entry comparison is the missing derived-condition
  bridge. The exact baseline is a separate deterministic specialization.

The dependency failure is therefore sketch/interface level. It does not
require adding a generated condition as an assumption, and it is not
circular.

## Citation And Tool Audit

The diagnostic uses no theorem-critical external citation as a mechanism
source. Parent ALS papers are correctly treated as lineage only. The listed
Gaussian density/small-ball bound, norm concentration, normalization,
Schur-product/Cauchy--Schwarz, Gershgorin, Neumann, product-sphere calculus,
Haar cap, stopped-tail, Armijo, and Taylor tools have current-notation
objects and stated consumers; their detailed constants remain step-local.

The `E_lb` source is adequate under the nine primitives: condition on one
realized partner column, use the independent Gaussian component of the other
column, and apply a uniform small-ball bound with arbitrary conditional mean.
On the norm event the conditional standard deviation is at least
`rho/(2 kappa sqrt(n))`; upper norm bounds transfer the raw threshold to the
normalized Gram entry. Since `rho^(-1)`, `kappa`, and `k` are polynomially
bounded and included in `P`, a fixed `D_lb` gives the claimed inverse-
polynomial threshold and an `r^(-20)` allocation. A fixed pair is enough;
disjoint pairs only strengthen the probability bookkeeping. This event is
used only for numerical absorption and is not an algorithm query or label
source.

The exact-target PL calculation uses the same realized factors and balanced
metric as the setting. No citation bridges `R-acc` to factor distance; that
bridge is absent rather than merely lacking a source label. Hence citation
or source-convention issues do not justify `REVISE_GLOBAL` or `IDEA_FAIL`.

## Quantitative Dependence Audit

The raw quantitative flow is correctly retained:

- `e = P^(-D_stat)`, `eta0 = C_eta (Gamma_star nu_real^2 + e)`;
- rootwise profile `Z = O(nu_real^2 + r nu_real^3 + sqrt(r)e)`;
- global ledger `O(r nu_real^3 + r^2 e)`;
- on `E_lb`, `nu_real >= P^(-D_lb)` permits `sqrt(r)e` and `r^2e` absorption
  after a fixed exponent choice; outside that branch no such absorption is
  claimed;
- in the exact `H=0,e=0` branch all these terms vanish by equality.

The independently available factor-space entry estimate is instead
`O(tau_max^(1/3) sqrt(r) eta0)`. On `E_lb` this is generally
`O(tau_max^(1/3) sqrt(r) nu_real^2)`, while the accepted radius is
`O(nu_real^2)`. Balanced weights bound the ratio of tau values but do not
cancel `sqrt(r)`; an admissible balanced block family can take target scales
of constant order. Increasing `D_stat` cannot remove the structural
`Gamma_star nu_real^2` term in `eta0`.

A revised radius proportional to `tau_min^(1/3)` (or an explicitly chosen
inverse-polynomial fraction of it) is compatible with the setting because
the realized norm lower bound gives `tau_min^(1/3) >= (2 kappa)^(-1)`, and
`kappa` is polynomially bounded. The revised sketch must make this comparison
explicit and preserve the public full-state metric. No exposed theorem
dependence, probability mode, epsilon mode, or endpoint needs to change.

## Scope And Closure Review

The static event, lower-tail event, transfer gaps, conditional landscape,
matching, J update, rootwise profile, finite ledger, protected-state
induction, transaction/tape path, and exact baseline rows have concrete
mechanism sources, producer paths, finite-scope accumulation controls, and
boundary traces. In particular, the ledger is finite (`s <= r`), charges
each root/test/mode once, has nonnegative one-step forcing, and failed probes
roll back exactly. The `E_lb` row is noncircular and source-valid; it does
not assert a lower bound on the local O.1 parameter `h`.

The exact-target PL row is valid as a local coercivity obligation, subject to
step proof. The `Accepted chart-entry export` row is the sole non-step-local
row: it explicitly records the available `Entry-raw` scale, the missing
residual-to-target dominance, and the block stress boundary. Its locality
classification as `sketch/interface defect` is correct. The generated-output
flow correspondingly terminates at chart membership; terminal contraction is
not consumable before that producer exists.

The exact baseline row passes the baseline-invariance obligation: the first
transition, rollback, target stationarity, and arbitrary-accuracy/no-floor
conclusion all reduce to exact identities. A revised finite chart must retain
that branch and must not replace it with a positive numerical remainder.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_inst` and exact target | Static event, conditioning, representation | Gaussian tails, normalization, direct CP identities | Six relevant source primitives and step 001 | Produces the stated norm, Gram, weight, gap, and exact-representation outputs | Same realized normalized factors and Frobenius target are consumed everywhere | Tail/error reserves fit `nu_star`, pair/triple gaps, and weight ratio | Norm, dimension, smoothing, and Gram margins are explicit | Equality to realized `T`; no surrogate | One-drawn finite union only | Primitives -> step 001 -> all static/PL consumers | Step 001 -> G2, G7, G10 | Norm floor, zero-tensor guard, exact limit pass | step-local | None |
| `E_lb` | Derived numerical nondegeneracy for optional absorption | Conditional Gaussian small-ball plus normalization | Gaussian smoothing, norm event, polynomial parameter ranges | Gives only `nu_real >= P^(-D_lb)` with stated failure allocation | Raw cross inner product normalizes to the same Gram entry defining `nu_real` | Conditional sd `>= rho/(2 kappa sqrt(n))`; choose fixed polynomial threshold | Arbitrary mean and one fixed pair are sufficient; no algorithm access | Exact instance quantity, no target-object transfer | Once-drawn failure event; no trajectory accumulation | Primitive draw -> step 001 -> branch-aware ledger/rate consumers | Step 001 -> steps 007, 008, 013, 014, 016 | `E_lb^c`, tiny positive nu, and exact H=0 branch are separated | step-local | None |
| H/J/K, S, transfer gaps | Static source and Neumann boundedness | Column l2 Cauchy--Schwarz, Hadamard products, fixed-root map | Step 001 event and direct setting algebra | Matches R-src, leakage, S, and both gap interfaces | Exact array domain and zero-diagonal convention | `q_res,q_row <= 1/4` and finite Neumann factors | H columns, K l1 bounds, J rows, weights, and eta are exposed | Same array coordinates are consumed | Geometric within-state accumulation only | Step 001 -> step 002 -> step 003 | Step 002 -> conditional landscape and ledger | H=0, transitive chain, q boundary pass | step-local | None |
| Conditional Theta and matching | Generated boundedness, isolation, label producer | Neumann series, score/radial/angular/Hessian equations | Steps 002--005 under a legal prior prefix | Exports calibration, R-euc/R-dir, separation, and injection | Full ambient spheres, exact protected residual, and realized atoms match | Coupled direction bound plus singleton/mixed-support curvature gap | Score, capture, Hessian, q gaps, history, and e are named | Scratch slot is compared directly to exact realized atom | Conditional one-state defects; prefix use waits for induction | Prior prefix -> Theta -> certificate/matching | Steps 004--005 -> G4, G5, G6, G8 | Empty prefix, zero score, mixed support, separation threshold pass | step-local | None |
| J update and O.1 audit | Signed transition and numerical charge | Exact multilinear expansion with identical J baseline | Step 005 calibration and direct algebra | Matches J-update, J-diag, cyclic cases, and `O(h^4+eh+e^2)` isolated audit | J diagonal/off-diagonal and zero z diagonal match setting | `Delta A <= 2 Gamma_star Upsilon`; positive e terms survive at `h=e^2` | H, z, eta, radial/directional errors, and weight ratio are explicit | Accepted E contracts against exact target frame | Finite nonnegative one-step charges | Step 005 -> step 006 -> ledger | Step 006 -> steps 007--009 | h=0, h<<e, h=e^2, cyclic and transitive cases pass | step-local | None |
| Rootwise profile and global ledger | Generated recurrence and finite accumulation | Rootwise l2 Neumann estimate and Cauchy--Schwarz factorization | Steps 002, 003, 006--009 | Matches raw profile, J-global, history budget, and R-acc | Same root blocks and l1 arrays are consumed | Raw `nu^2+rnu^3+sqrt(r)e`; global `rnu^3+r^2e`; E_lb only later simplifies | Prior history, q-row, z, and one-time counting are explicit | Controls tensor influence arrays, not factor distance | Finite at most r; each root/test/mode charged once; failures zero | Empty base -> transition -> profile/charge -> next prefix | Steps 007--009 -> later landscape, tape, and chart inputs | First prefix, dense/block, last commit, exact limit pass | step-local | None |
| Protected-state invariant | All-prefix generated closure | Finite induction plus exact rollback | Steps 004--009 | Every invariant clause has an earlier producer | Protected residual and rollback state are exact setting objects | Valid prefix + success -> next prefix; failure -> equality | Raw numerical terms remain visible until branch comparison | Next transaction consumes same actual residual | Finite scope, no infinite-horizon upgrade | Empty state -> strict induction -> next state | Step 009 -> transactions/tape | Empty, failed, and last-label cases pass | step-local | None |
| Transaction and tape | Reachability, rollback, probability | Exact derivatives, Armijo/curvature, Haar caps, stopped tail | Protocol and random-tape primitive | Produces actual committed tuple or exact unchanged state | Full-space Haar and exact-loss procedure match setting | `p_tx >= (nr)^(-c_tx)` and stopped tail over at most r commits | Guards, step floor, independent tape, and failure branches exposed | Success is actual slot; failure is exact prior state | Failed probes create zero forcing; successes finite | Invariant -> deterministic transaction -> tape amplification | Steps 010--012 -> chart entry | Zero score, guard/root failure, exhaustion, rollback pass | step-local | None |
| Exact-target PL geometry | Coercivity and terminal contraction source | Balanced Jacobian, Taylor continuity, Gram/weight reserves | Step 001 event and direct step 013 calculus | Can produce inverse-polynomial mu and a same-target local radius | Exact nonorthogonal target and full-state balanced metric match | Singular-value floor dominates Taylor remainder inside its radius | Pair/triple gaps and weight scales are explicit | Reference object is exact Qstar | Finite terminal path once entry is available | Event -> step 013 -> step 015 | Step 013 -> chart and descent consumers | Exact target stationary; orthogonal limit passes | step-local (radius target must be revised jointly with step 014) | None |
| Accepted chart-entry export | Basin membership and residual-to-target bridge | Available R-euc plus proposed PL chart | Steps 005, 008, 012, 013--014 | Does not match the claimed factor-space output scale | Objects and metric match, but the scale comparison does not | Available `C tau_max^(1/3) sqrt(r) eta0`; claimed `C(rnu^3+r^2e) <= c nu^2` is unsupported | R-euc is per-slot; R-acc has extra Gram contractions and is not a factor norm | Fails: no dominance to `c_PL nu^2`; block family gives sqrt(r) gap | One-time entry error, but wrong target radius | Producer path stops at R-euc/R-acc before chart membership | Tuple -> attempted entry -> G9/final theorem | Independent two-label blocks and exact branch expose mismatch | sketch/interface defect | /proof-sketch |
| Terminal first-exit descent and public rate | Contraction, arbitrary accuracy, no floor | PL plus exact-loss Armijo first-exit | Steps 013--016 | Valid conditional on legal chart entry | Same exact target and Frobenius endpoint | Geometric decrease after entry; no additive forcing | PL, smoothness, step floor, epsilon, and raw rates are named | Final residual is exact `T` only after entry | Finite logarithmic horizon | Chart entry -> step 015 -> step 016 | Cannot consume before repaired chart producer | epsilon -> 0 and exact target pass conditionally | step-local after sketch repair | /proof-sketch |
| Exact baseline invariance | Exact recovery, rollback, no-floor specialization | Orthogonal CP identities and exact algorithm equations | Direct setting specialization | H=e=0 gives exact target and zero loss | Same factors, tensor, metric, and zero slots | S=z=A=Xi=Upsilon=0; constant chart has zero entry residual | No positive finite-e term is absorbed into zero | Equality to exact target | No accumulation | Exact branch -> final specialization | Final baseline clause | First transition and stationary trace are exact | step-local | None |

## Hard-Step Localization Audit

- Step 001 lower-tail normalization is step-local. The conditional Gaussian
  variance and normalized-entry transfer have a valid source path under the
  nine primitives; the remaining work is constants and union accounting.
- Steps 002--009 are step-local under the accepted dependency order. Their
  raw controls, finite recurrence, nonnegative charges, and rollback closure
  are already exposed. They must retain `sqrt(r)e` and `r^2e` before any
  `E_lb` specialization.
- Steps 010--012 are step-local conditional on the generated invariant. The
  protocol fixes the source convention, rollback behavior, and tape
  consumers.
- Step 013 is step-local for exact-target Jacobian/PL derivation, but its
  exported radius must be redesigned jointly with step 014.
- Step 014 is **not** step-local. It lacks a source-adequate
  raw-control-to-exported-interface relation and residual-to-target
  adequacy in the consumed full-state factor metric. This is a
  `sketch/interface defect` and routes to `/proof-sketch`.
- Steps 015--016 are step-local only after a legal chart-membership producer
  is added. The exact baseline specialization remains step-local now.

No hard obligation requires a changed primitive assumption, algorithm or
procedure, theorem scope/mode/metric, exposed public dependence, success
criterion, or weakened conclusion. The proposed repair is therefore not
`IDEA_FAIL`.

## Early Idea-Failure Screen

- **Contract contradiction:** None. The setting asks only for a proof-produced
  positive inverse-polynomial chart radius; it does not require that radius
  to be `c nu_real^2`.
- **Missing mechanism:** The current factor-distance bridge is missing, but
  exact balanced Jacobian geometry and polynomial target-weight scales offer
  a same-setting mechanism for a weight-scaled radius. `R-acc` alone is not
  that mechanism.
- **Source-convention stress:** The anti-concentration calculation uses the
  same normalized Gram convention and arbitrary conditional Gaussian mean;
  the PL calculation uses the exact realized target, not a whitened or
  orthogonal surrogate. No source-convention mismatch is exposed.
- **Residual-to-target stress:** The per-slot R-euc to full-state sum and the
  independent two-label block family show the required target-scale failure.
  This is a deterministic interface mismatch, not a probability deficiency.
- **Accumulation stress:** The ledger is finite and one-time; accepted errors
  have a declared charge, while failed probes roll back exactly. No persistent
  forcing or hidden all-time upgrade causes the blocker.
- **Entry-state stress:** Empty-prefix and first O.1 transitions retain the
  positive numerical terms, and the exact H=e=0 branch is inactive only in
  the benign zero-error sense. The failure is the later chart scale, not an
  inactive descent mechanism at an allowed entry state.
- **Generated-condition flow:** E_lb, profiles, histories, and the tuple have
  legal producers. Full-state chart membership does not; it is consumed by
  first-exit descent before being proved.
- **Dependence/mode:** Exposing a weight-scaled internal radius does not alter
  the public metric, probability, rank, epsilon range, or endpoint. Raising
  `D_stat` alone cannot fix the mismatch, but a radius/interface revision can.
- **Baseline invariance:** The exact target, exact rollback, arbitrary
  relative accuracy, and no-floor branch remain valid with a constant exact
  chart radius. No weakening is required.
- **Same-setting repair plausibility:** High. Revise steps 013--014 and their
  consumers; do not regenerate the idea. Hence the correct route is
  `REVISE_SKETCH`, not `IDEA_FAIL`.

## Review Rationale

The global diagnostic is detailed, faithful, and independently confirms that
the attempt-1 numerical blocker was repaired: `E_lb` has a valid derived
Gaussian source, raw numerical ledger terms are not silently absorbed, and
the exact baseline is separated. It also correctly identifies the first
unresolved theorem-level interface. The accepted sketch nevertheless asks
`R-acc` and a per-slot calibration bound to certify a stronger full-state
factor-space radius than they support. Since this mismatch is visible from
the setting, accepted sketch, and block stress test, rerunning
`/global-proof` would not add useful information. A new proof-sketch attempt
should preserve steps 001--012 and the exact baseline, redesign the
step-013/014 radius and residual bridge, update the dependency/export flow,
and then return to global review.
