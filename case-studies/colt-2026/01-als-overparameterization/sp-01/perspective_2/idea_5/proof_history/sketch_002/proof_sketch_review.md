# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_5`
- Sketch attempt: 1
- Review mode: strict early-viability review with automatic routing after review.
- Roadmap reviewed: static modewise-smoothed geometry, transactional radial
  bracketing, angular-only strict-saddle certification, probe-local isolation,
  protected-span induction, finite Haar-tape amplification, and terminal
  balanced PL refinement.

## Sketch Viability Score

6

## Sketch Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Retry Mode

revise_sketch

## Audit Summary

- Goal alignment: The sketch is source-aligned material partial progress. It
  keeps the asymmetric least-squares objective, a strictly subquadratic
  (k=Theta(r^{3/2}log^2 r)), separate instance and tape probabilities,
  polynomial work, relative Frobenius error, and the stated
  modewise-near-orthogonal special case. It does not repeat the prior
  full-residual beta-purity or full-balanced-tangent radial-curvature claims.
- Dependency audit: The nominal graph is acyclic, but the first theorem-facing
  dynamic producer is not yet feasible. `step_005` is used as if it exported a
  quantitative target map, `step_006` as if it exported a uniform invariant,
  and `step_007` as if it exported a positive one-transaction probability;
  none of the three interfaces has the required quantitative closure.
- High-risk coverage: The sketch names the right high-risk blocks and tests the
  orthogonal/equal-weight pure and mixed states. It does not close the
  unequal-weight perturbation, coherent protected-span error accumulation, or
  the projected angular trajectory. Those omissions affect the theorem, not
  just exposition.
- Explicit-rate coverage: Static, discovery, and terminal rate fields are
  mostly present. The internal `eta_dir=P^{-D_dir}` ledger is incompatible
  with the only certificate-scale direction guarantee stated in the setting,
  (C(\zeta_{\rm ang}+\mu_{\rm real})), and the missing weighted gap bounds
  leave the allowed `kappa`-dependence unresolved.
- Assumption and citation plausibility: The static concentration and direct
  radial identities are plausible. The cited strict-saddle and Orth-ALS works
  are correctly marked as motivation, not wrappers. The current-notation
  isolation, Haar basin, and chart-entry claims still require new lemmas with
  explicit source-to-claim and residual-to-target checks.

## Early Obstruction Audit

- Limiting-case stress: The exact orthogonal/equal-weight case passes the new
  angular-only sign test: pure channels have positive angular curvature and
  two-channel stationary mixtures have a negative angular direction. The
  earlier beta identity and radial-Hessian contradictions therefore do not
  recur. A near-orthogonal perturbation with unequal weights exposes the
  unresolved scale: transverse contractions contain terms of size
  (\tau_{\max}\mu_{\rm real}^2), while the weakest channel and its angular
  gap can be (\tau_{\min}). The sketch gives no inequality that compares
  these terms under the stated (\kappa\le r^{c_0}) range.
- Theorem-critical bridge support: `step_005` names an orthogonal
  two-channel rotation witness, but does not state a current-notation
  perturbation lemma for unequal weights, protected residual error, radial
  bracket error, and the advertised response ratio. The source is therefore
  not yet adequate for a unique-label or direction claim.
- Exported-interface feasibility: The proposed export is a probe-dependent
  response vector and a committed factor triple. The raw controls are the
  angular gradient, (e_A,e_B,e_C), the angular Hessian gap, capture, and
  modewise Gram error. The sketch does not provide the required relation from
  those controls to (i) a signed target direction, (ii) a response ratio at
  the consumed scale, or (iii) a residual budget weighted by the unresolved
  (\tau_j)'s. A capture threshold alone cannot control the cross-channel
  terms.
- Theorem-critical mechanism witness gate: The positive angular curvature
  witness is concrete in the exact orthogonal model, including its mixed
  saddle direction. Its perturbation witness is shallow: it says to choose
  exponents below a pure-channel gap but does not identify the gap after
  unequal-weight perturbations, the opposing (\tau_\ell\mu^2) and
  protected-error terms, or a dominance inequality valid for every allowed
  unresolved set. This is a sketch/interface defect, not a step-local
  calculation.
- Entry-state trace stress: The radial seed activates only when the initial
  score exceeds the seed scale; this is correctly recorded as a basin event.
  After re-solving the radial root, however, the sketch does not show that
  accepted angular/negative-curvature moves preserve positive score and a
  polynomial angular gap. A state with small gradient and a near-flat
  positive Hessian is rolled back by the protocol, but no argument shows that
  a successful basin cannot enter that state before certification.
- Obligation locality classification: `step_001`, the scalar radial identities
  in `step_002`, exact rollback, and the guarded smoothness calculation in
  `step_003` are `step-local`. The certificate-to-isolation bridge in
  `step_005`, commit preservation in `step_006`, and the one-transaction basin
  in `step_007` are `sketch/interface defect` obligations. `step_008` through
  `step_011` are downstream and cannot be classified `step-local` until those
  producers are repaired.
- Noncircular closure gate: The conditional `Good(I)` interface is a legal
  local hypothesis, and `Good(\varnothing)` is exact. The proposed
  `Good(I) -> Good(I\cup\{i\})` producer is not established: it consumes the
  unavailable target-map error and span-transfer bounds. Thus the conditional
  probability in `step_007` currently has no noncircular generated-state
  source.
- Mechanism-source and boundary stress: Equal weights and one unresolved
  channel are compatible with the intended mechanism. The weak-channel and
  highly unequal-weight boundaries are not discharged. In particular, the
  current text does not show whether a positive angular Hessian filters a
  weak/mixed state or whether a shifted state can pass the certificate; either
  conclusion needs an explicit weighted rotation calculation.
- Generated-output flow: The table lists legal producer-consumer paths, but
  the first path is only nominal. `step_005` has no quantitative output
  target with a proven producer, so duplicate exclusion, protected projection,
  positive one-block probability, all commits, and chart entry inherit a
  broken path.
- Source-to-claim adequacy: The cited papers do not state the current
  asymmetric fixed-radius product-sphere theorem. A direct derivation is
  appropriate, but the current direct source only covers the exact orthogonal
  model. Source-convention compatibility is not the issue; the missing
  perturbation and weight feasibility is.
- Residual-to-target adequacy: `Good(I)` requires a factor error
  (P^{-D_{\rm dir}}) and a residual error below
  (\eta_{\rm res}\tau_{\min}). The setting's exported isolation interface
  only promises (C_{\rm iso}(\zeta_{\rm ang}+\mu_{\rm real})) direction and
  response errors. For generic nonzero Gram perturbations these scales are
  not the same. The review therefore cannot accept the claimed
  (CrR_{\max}^2(\eta_{\rm dir}+P^{-D_{\rm rad}})) residual bound without a
  weighted transfer calculation.
- Baseline invariance audit: The exact balanced representation, zero-residual
  endpoint, scratch pruning, and no-floor terminal goal are preserved. The
  orthogonal pure-channel first transition is compatible with them. The
  baseline does not by itself produce a generated committed state, so the
  no-floor conclusion remains conditional on repairing discovery.
- Scope-accumulation compatibility: Exact rollback makes failed-probe state
  forcing zero, which is a valid finite-budget mechanism. Accepted direction
  errors and protected-span leakage are repeated defects; the sketch gives a
  one-step charge only in terms of unavailable (P^{-D_{\rm dir}}) accuracy
  and asserts an (O(\zeta+\mu)) span bound without an operator-norm or
  coherent-error accumulation relation. The all-commit scope is therefore
  unsupported as written.
- Scope and dependence consistency: Rank, horizon, norm, confidence, and
  (\epsilon)-dependence are exposed. The exponent (c_{\rm ang}) and all
  strict-saddle margins must be derived with their dependence on (c_0,c_\rho)
  and the weight ratio; they cannot be hidden in the phrase "choose fixed
  exponents.”
- Citation and tool applicability: The survey properly limits citations to
  motivation. No cited result supplies the current certificate, protected
  residual invariant, adaptive projected-Haar basin, or balanced GD chart.
- Same-setting repair plausibility: A target-preserving repair is plausible:
  add a weighted approximate-second-order isolation lemma, replace the
  internal error ledger by the actual (\zeta+\mu) (or a proven sharper)
  scale, state projected angular retractions explicitly, and prove a
  matrix/operator-norm span ledger. These changes preserve the current
  modewise special case and theorem goal. If the weighted isolation lemma or
  a polynomial basin bound fails again on the next sketch attempt, the
  obstruction should be routed to `/subagent-idea-generator` as an
  `IDEA_FAIL` rather than repeatedly relabelled as a future step.
- Target-preserving bridge-repair gate: Not yet passed, but no exact
  algebraic contradiction has been found after the beta and radial-sign
  changes. The smallest current route is `/proof-sketch`; changing the
  certificate, adding a weight/incoherence primitive, or weakening the all-
  labels conclusion would instead be an idea-level change.
- High-risk obligation classes: structural lower/sign and angular curvature,
  unequal-weight perturbation, generated invariant and span membership,
  adaptive probability amplification, explicit dependence, baseline entry,
  and terminal no-floor PL. Static geometry and rollback pass in isolation;
  the first five dynamic classes remain blocking.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Realized good-instance event | Static norms, Gram margins, nonvanishing, exact baseline | Normalized Gaussian concentration and Schur-product identities | `assump:base-column-conditioning`, `assump:modewise-near-orthogonality`, `assump:gaussian-smoothing`, `assump:dimension-regime`, `assump:smoothing-scale`, `assump:smoothing-margin` | Adequate for the displayed static bounds | Same realized normalized factors and tensor are used on both sides | Base margin plus normalized perturbation is below the stated modewise, pair, and triple thresholds; finite union over (3r) columns | Raw controls are explicit static assumptions; exported event is exactly the event consumed downstream | No surrogate object; (T,τ,φ_j) are the consumed objects | Finite static concentration defect only; no trajectory accumulation | Primitive assumptions -> `step_001` -> all dynamic consumers | `step_001` produces the event and exact orbit; consumers are `step_004`--`step_011` | Orthogonal/equal-weight boundary passes and is nonzero | `step-local` | None |
| Radial sign bracket and capture | Observable activation and commit score | Exact one-dimensional identity (∂_g f=-3g^2(s-g^3)), dyadic bracket | Fixed transaction protocol and direct calculus | Adequate for fixed directions and (s>0) | Same (R_I,g,u,v,w) convention | (d_I) is monotone in (g^3); root (g^3=s); bisection controls bracket error; capture is (g^3s-g^6/2) | Score/sign and current residual are raw observables; root and capture are the exported interface | Same pre-scratch residual is consumed; no target surrogate | Failed sign/guard/exhaustion is stopped and rolled back exactly | Protocol algebra -> `step_002` -> certificate and work accounting | `step_002` produces bracket/capture and rollback; consumers `step_005`,`step_007`,`step_008` | Seed with (sle0) rolls back; positive-score one-channel case activates | `step-local` | None |
| Guarded smoothness and accepted-step lower bound | Numerical globalization and finite transaction work | Direct CP Jacobian/Hessian upper bounds plus measured displacement cap | Definitions (G_{\rm loc},L_{\rm loc},G_{\rm box}^\star,L_{\rm box}^\star) in `setting.md` | Adequate for nonstationary Armijo trials, subject to a full balance/retraction check | Same Euclidean/projected objective and guarded box | Dyadic backtracking reaches half the smaller smoothness/displacement ceiling; stationary trials are excluded | Raw box bounds export the stated (lambda_{\rm acc}) and polynomial trial cost | Same factor path/objective; no target bridge claimed | Taylor/displacement defects are locally absorbed; work is finite | `step_001` event + protocol -> `step_003` -> dynamics/rate | `step_003` produces step-size/work interfaces for `step_007`,`step_010`,`step_011` | Guard and stationary boundary are explicitly stopped | `step-local` pending balance-retraction details | None |
| `Good(I)` residual decomposition | Conditional protected residual interface | Exact subtraction and multilinear factor-error bound | `step_001` exact baseline; local conditional invariant definition | Exact algebra is adequate only after a valid factor-error scale is supplied | Same realized target atoms and balanced coordinates | (R_I=sum_{j\in U_I}\tau_j\phi_j+E_I), with (E_I) charged per accepted slot | Raw control would be committed factor errors plus radius errors; the current export assumes (P^{-D_{\rm dir}}) without a producer | Required (\|E_I\|\ll\tau_{\min}) is not shown at the certificate scale | Accepted errors accumulate over up to (r) commits; rollback errors vanish | Empty state is valid, but preservation must come from `step_006` | `step_004` produces the interface; consumers `step_005`,`step_006`,`step_007` | Empty and one-unresolved cases pass algebraically | `sketch/interface defect` | /proof-sketch |
| Certificate -> unique label and response isolation | Structural support, target assignment, direction/radius output | Orthogonal product-sphere critical equations and two-channel rotation; perturbation transfer is only proposed | `step_001`, `step_004`, current certificate; literature is motivation only | Orthogonal source matches, but unequal-weight/protected-error perturbation source is incomplete | Conventions match; no citation translation issue | Must convert gradient, (e_M), positive angular gap, capture, and radial bracket into one (j_\star), direction error, and the displayed (\ell_2) response ratio | Raw controls are listed but no explicit weight/gap dominance or branch split is given | Produced probe must be transferred to one same-target atom; residual and cross-channel terms are not decomposed at target scale | Cross-channel terms may be persistent and weight-amplified; no absorption relation is stated | Depends on `Good(I)` and must be available before commit; current source is only orthogonal | Proposed `step_005` producer; consumers `step_006`--`step_011`; output path is not yet legal | Exact orthogonal mixed states are rejected; unequal-weight near-orthogonal boundary is unproved | `sketch/interface defect` | /proof-sketch |
| Protected-span transfer and commit preservation | Generated invariant, duplicate exclusion, all-label induction | Near-orthogonal Gram inverse plus committed-direction errors | `step_005` output and static modewise margin | Source type is appropriate only after a quantitative direction and error ledger | Same modewise spans and target directions are used | Need a projector perturbation/operator-norm relation, coherent-error accumulation bound, and weighted tensor charge to prove `Good(I\cup\{i\})` | Current raw controls are per-slot (O(\zeta+\mu)) claims; no relation yields the stated uniform span bound or (\eta_{\rm res}\tau_{\min}) | Must compare projected unresolved atoms and committed tensor to the same target; √(|I|) and weight factors are unaccounted | Repeated accepted errors can align; rollback does not remove accepted leakage | `step_005` -> `step_006` is the intended noncircular producer, but its source is missing | `step_006` should feed `step_007` and all later commits; currently blocked | Last-unresolved and coherent-leakage boundary are not checked | `sketch/interface defect` | /proof-sketch |
| One-transaction certificate reachability | Positive conditional probability and finite stopping | Projected Haar small-ball plus score/negative-curvature dynamics | `assump:random-tape`, repaired `Good(I)`, direct trajectory analysis | Random source is correct, but no quantitative basin or stopping lemma is supplied | Projected Haar law is compatible if every angular update remains in the complement | Need explicit basin inequalities, probability calculation, positive-score preservation, angular-gap lower bound, and a bound on noncertificate decreases before (H_{\rm tx}) | The phrase “signed correlations at least (n^{-c_b})” is not an exported event until thresholds, competitor controls, and all weight cases are specified | Basin must transfer from projected targets to the current residual and certificate target; this bridge is deferred | Score, curvature, and line-search defects may persist along the path; no concrete finite budget is given | Must consume repaired `Good(I)` and produce (p_{\rm ang}) without assuming eventual certification | `step_007` -> `step_008`; current producer has no legal quantitative output | Zero-score and exact-saddle rollback cases are noted, but near-flat successful-basin cases are untested | `sketch/interface defect` | /proof-sketch |
| All-commit tape amplification | Adaptive recurrence and injective coverage | Conditional lower bound (p_{\rm ang}), stopped Bernoulli domination, exact rollback | `assump:random-tape` plus `step_006`,`step_007` | Adequate if the one-transaction bound is valid uniformly | Fresh unused tape entries remain independent conditional on history | ​(​\Pr(S_{t+1}=S_t+1\mid\mathcal F_t)\ge p_{\rm ang}) and Chernoff at (N_{\rm tx}\) | Raw tape independence is sufficient only after a legal certificate event exists | Each success must consume a distinct target; duplicate exclusion is inherited, not independently shown | Failed work accumulates but state forcing is exactly zero | `step_007` -> `step_008` -> terminal consumers; first link is blocked | `step_008` is a valid amplifier in isolation, not a producer of (p_{\rm ang}) | Empty and (r-1) protected states depend on unresolved span bounds | `sketch/interface defect` | /proof-sketch |
| Same-target chart entry | Generated basin membership and target matching | Signed injection, exact pruning, balanced Jacobian/Taylor bridge | `step_006`,`step_008`, direct current-notation Jacobian | Local chart source is plausible after a true signed injection; current entry error is not available | Target orbit and balanced metric match the setting | Need a bijection plus factor distance below a chart radius; current (P^{-D_{\rm dir}}) entry estimate lacks a producer | Committed factors are the produced object; consumed target is ({\cal Z}_\star); residual-to-factor transfer is deferred | No chart-scale dominance is shown from (O(\zeta+\mu)) or accumulated span error | Entry error is a repeated accepted defect, not a rollback term | `step_006`,`step_008` -> `step_009`; both upstream outputs are blocked | `step_009` should produce (\varrho_{\rm PL},\mu_{\rm PL}) for `step_010` | Exact representation is a valid center, but no generated entry is traced | `sketch/interface defect` | /proof-sketch |
| PL invariance and no-floor terminal recurrence | Local coercivity, invariant chart, arbitrary accuracy | Balanced Jacobian lower bound, Taylor remainder, Armijo descent | Direct same-target calculation proposed in `step_009`,`step_010`; cited ALS papers are motivation | Adequate locally once chart entry is proved | Same balanced gauge, objective, and target orbit | PL plus first-exit boundary relation should give a geometric no-floor recurrence | Raw controls and accepted-step bound are available, but chart membership is not | Exact target and zero unused slots are same-target; entry residual scale is unresolved | Contractive after valid entry; no rollback forcing in terminal phase | `step_009` -> `step_010` -> `step_011`; upstream path blocked | `step_010` is downstream only | Exact solution is stationary and preserved; nonzero entry case needs chart proof | `sketch/interface defect` | /proof-sketch |
| Public rate/probability specialization | Explicit rank, confidence, runtime, and relative-error statement | Arithmetic substitution and probability conditioning | `step_001`--`step_010`, `assump:rank-regime`, `assump:accuracy-range` | Arithmetic is adequate conditional on all prior outputs | Same Frobenius target and separate probability modes | Need verified (p_{\rm ang}), (H_{\rm tx}), chart constants, and union-bound inequalities before simplification | Exposed variables are listed; missing upstream bounds prevent a legal public bridge | Relative stopping rule is exactly the target once a valid iterate exists | Finite unions and geometric terminal recurrence are compatible only after upstream closure | Consumes every earlier generated output; no independent producer | `step_011` is final consumer, not a repair source | Large-ε and exact-entry cases are noted | `sketch/interface defect` | /proof-sketch |

## Blocking Issues

1. **Certificate-to-isolation is not quantitatively supported** (`proof_sketch.md`,
   `step_005`, and the corresponding setting interface). The orthogonal
   two-channel witness is valid, but the sketch never bounds the perturbation
   of its gap for unequal τ's, the protected residual error, or the radial
   bracket error. Terms such as τ_maxμ_real^2 can be larger than the weakest
   channel scale under the declared polynomial κ range. Without a weighted
   dominance/branch argument, the unique label, response ratio, and direction
   output are not generated. Smallest repair: a current-notation weighted
   approximate-second-order lemma with all allowed weight regimes and an
   explicit target-scale residual split.
2. **Internal error ledger has the wrong scale** (`proof_sketch.md` lines
   28--41 and `step_004`--`step_006`). The certificate/setting interface only
   exports (C(\zeta_{\rm ang}+\mu_{\rm real})) direction and response
   errors, while `Good(I)` and the chart-entry calculation assume
   (P^{-D_{\rm dir}}). Generic nonzero Gram perturbations shift an angular
   stationary point by a fixed perturbation scale, so an arbitrary positive
   exponent cannot be obtained by choosing (D_{\rm ang}). The repair must
   use the actual scale (with a weighted residual ledger) or strengthen the
   certificate and propagate the changed threshold.
3. **Protected-span accumulation is unproved and the projection protocol is
   underspecified** (`setting.md` lines 187--212 and 260--293; `step_006`).
   The claimed (C(\zeta+\mu)) projection loss needs an operator-norm/coherent
   error argument; per-slot direction bounds alone allow
   (\sqrt{|I|}(\zeta+\mu)) leakage. Angular updates are described on the full
   product of spheres even though the induction requires every discovery
   update to stay in the protected complements. State the re-projection and
   retraction rule and prove its span/error charge.
4. **The one-transaction basin and stopping bound is only a label**
   (`proof_sketch.md`, `step_007`). “Signed correlations at least
   (n^{-c_b})” and “loss decrease or negative curvature” do not specify the
   event's exact measure, competitor bounds, score monotonicity after radial
   re-solving, or a lower bound on each accepted decrease. A fresh tape can
   amplify only a proved conditional (p_{\rm ang}); it cannot create one.
   Supply a polynomial Haar small-ball calculation and a finite trajectory
   lemma under the repaired protected invariant.
5. **All downstream outputs inherit the missing first producer** (`step_008`
   --`step_011`). The stopped-binomial argument, chart entry, PL recurrence,
   and public rate are valid only conditionally on items 1--4. They must be
   reconnected after the isolation, error-scale, and basin repairs rather than
   treated as step-local arithmetic.

## Required Repair Bundle

1. **Weighted angular isolation bridge.** Add a lemma-sized `step_005` with
   exact current-notation Hessian/contraction formulas, an explicit split by
   unresolved weight scale, and inequalities controlling every
   (\tau_\ell\mu^2), protected-error, radial, and stationarity term by the
   selected channel's angular gap. Prove the response ratio and direction
   output at the scale consumed by `step_006`. If this cannot hold for the
   declared κ range, record the resulting theorem-contract change and route
   to `/subagent-idea-generator` on the next review.
2. **Correct the invariant scale and residual transfer.** Replace the
   unsupported (P^{-D_{\rm dir}}) assumption by a proven certificate-scale
   quantity (or add a genuinely (P^{-D})-accurate observable stopping rule).
   Recompute the tensor error per commit with its τ-dependent factor radius,
   compare the accumulated error with (\tau_{\min}), and expose all κ,
   (r), and log factors. Update `Good(I)`, `step_004`, `step_006`, chart
   entry, and the rate bridge consistently.
3. **Make protected angular dynamics legal.** Specify projection onto the
   protected complements after every angular/negative-curvature trial (or
   prove an equivalent invariant-preserving retraction), and show that the
   radial bracket and Hessian tests use the projected state. Establish an
   operator-norm span ledger, including coherent-error and last-unresolved
   stress cases, instead of a per-column bound alone.
4. **Prove the one-transaction basin.** Define the exact Haar event, its
   conditional probability under every protected state, and the target score,
   sign, competitor, and angular-gap thresholds. Prove that the reduced loss
   remains in the positive-score branch, that every noncertificate iterate
   makes a quantified decrease or negative-curvature move, and that the total
   number of such moves is at most (H_{\rm tx}). Keep instance and tape
   probabilities separate.
5. **Reconnect generated-output flow and public specialization.** After items
   1--4, update the gate table and flow table with legal producer paths for
   label assignment, duplicate exclusion, (p_{\rm ang}), all commits, chart
   entry, PL constants, and the final relative-error/rank/runtime statement.
   Do not move any of these generated facts into primitive assumptions.

## Review Rationale

The new idea removes the exact algebraic blockers that made idea 4 fail, so an
immediate idea-level rejection is not justified. The current proof sketch is
nevertheless not ready for global or step-level proof work: its first dynamic
producer (angular isolation) lacks a weight- and perturbation-compatible
interface, its invariant uses a stronger error scale than the certificate
exports, its protected projection can accumulate coherently, and its basin
probability is asserted rather than derived. These are substantial
sketch/interface defects but can plausibly be repaired without changing the
modewise-near-orthogonal setting or the material-partial goal. Therefore the
correct route is `REVISE_SKETCH` (score 6). Per the requested autopilot rule,
if a subsequent review repeats the same isolation/weighted-gap or
polynomial-basin blockers without a concrete repair, the controller should
route `IDEA_FAIL` rather than spend another proof-stage attempt.
