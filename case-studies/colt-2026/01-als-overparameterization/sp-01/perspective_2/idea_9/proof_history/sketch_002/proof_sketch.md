# Proof Sketch

## Formalized Setting

This is proof-sketch attempt 2 for `perspective_2/idea_9`, rerun in
`revise_sketch` mode after the archived attempt-1 review.  The binding
formalization is `perspective_2/idea_9/setting.md` in target-spec mode.  The
only primitive assumptions are:

- `assump:base-column-conditioning`;
- `assump:base-product-balance`;
- `assump:gaussian-smoothing`;
- `assump:dimension-regime`;
- `assump:smoothing-scale`;
- `assump:modewise-gram-margin`;
- `assump:rank-regime`;
- `assump:random-tape`; and
- `assump:accuracy-range`.

All realized norm, Gram, Khatri-Rao, product-weight, H/J/K, transfer,
resolvent, history, certificate, label, row-profile, transaction, chart, and
convergence facts are derived outputs.  In particular, `R-src`, `R-gap`,
`J-row-gap`, `J-row`, `J-global`, `R-hist-budget`, `R-budget`, `R-acc`, and
the protected-state invariant are not theorem assumptions.

Use the analysis abbreviations

```
e = P^(-D_stat),   nu = nu_real,
eta0 = C_eta (Gamma_star nu^2 + e),
Zstar = nu^2 + r nu^3 + sqrt(r) e.
```

Constants and fixed exponents are selected in the order: source and protocol
constants, then the static margin, then a lower-tail exponent `D_lb`, then
`D_stat,D_gap,D_cap,D_ls,D_PL`, and finally the leading constants.  The
specialization never absorbs a positive numerical term without a stated
event.  A Gaussian anti-concentration sublemma in `step_001` gives a derived
event

```
E_lb = { nu_real >= nu_lb },   nu_lb = P^(-D_lb),
P_inst(E_lb^c) <= r^(-20).
```

Here `D_lb` is a fixed class-dependent exponent.  More concretely, choose
`m=floor(r/2)` disjoint label pairs in one mode.  Before intersecting the
norm event, condition only on all perturbations except one isotropic coordinate
per pair; each raw cross-coordinate has a Gaussian component with standard
deviation at least `c rho/(sqrt(n) kappa)`.  The Gaussian density bound gives
probability at most `C r^(-40)` that one such coordinate lies in an interval of
width `c rho/(sqrt(n) kappa r^40)`, uniformly in its mean.  The disjoint
coordinates and a union bound give failure at most `r^(-20)`.  On the norm
event, deterministic denominator bounds transfer this raw lower bound to the
normalized off-diagonal Gram entry.
Since `rho^(-1),kappa` and `k` are polynomially bounded and `P` contains
`n,r,k,kappa,rho^(-1)`, choose fixed `D_lb` so
`P^(-D_lb) <= c rho/(sqrt(n) kappa r^40)`.  Thus the comparison is uniform
over the source class.  The instance event is the intersection with `E_lb`,
so its probability remains at least `1-r^(-10)` after the finite union
allocation.

On `E_lb` choose `D_stat` sufficiently large that

```
sqrt(r) nu <= 1/20,  r nu <= 1/20,
r^2 e <= c_num nu^2,  sqrt(r) e <= c_num nu^2.
```

The first two inequalities follow from the upper Gram margin; the last two
follow from `nu >= nu_lb` and the fixed choice `D_stat > 2 D_lb` (with the
additional polynomial slack needed for `r`).  Outside `E_lb` no such
absorption is asserted: the raw profile and raw global budget are retained.
The exact orthogonal/noiseless baseline is a separate exact-limit branch with
`H=0` and `e=0`, in which all structural and numerical terms vanish.  Thus no
lower bound on `h` or on the primitive source is added.

The selected framework is the J-aware absolute-Gram resolvent with a
rootwise block-l2 profile.  Provenance is the parent framework recorded in
`perspective_2/idea_8/technical_survey.md`, the reusable static prefix from
ideas 6--8, and direct current-notation multilinear algebra in the present
setting.  The only semantic delta from idea 8 is the repaired local numerical
interface in `J-two-label`; no objective, algorithm, primitive class, rank,
probability mode, or endpoint is changed.

## Formalized Goal

Prove the material-partial J-aware resolvent-ledger, separation-gated,
unprojected reachable-landscape and trajectory theorem in `setting.md`:

1. Construct the once-drawn event `E_inst` with instance probability at least
   `1-r^(-10)`, including nonvanishing, norm and weight bounds, modewise and
   pair/triple Gram conditioning, exact balanced representation, `R-src`,
   leakage, `S`, both transfer gaps, and the derived lower-tail branch `E_lb`.
2. Conditional on one instance in `E_inst`, start at the empty protected state
   and prove a finite induction for every generated prefix.  The induction
   produces the actual-history array, convergent `Theta_I`, zero-diagonal
   stored profiles, matching/injection, the raw row profile and (on `E_lb` or
   the exact limit) `J-row`, `J-global`, `R-hist-budget`, `R-budget`, and
   `R-acc`.
3. Show that every observable certificate is matched to one unresolved atom,
   with product-one sign alignment, separation, `R-euc`, and `R-dir`.  Prove
   the exact tensor influence and J-charge updates in all three modes.
4. Verify the isolated O.1 audit.  For `H_A(p,j)=0` and
   `H_B(p,j)=H_C(p,j)=h`, the captured-label charge is exactly bounded at the
   honest scale `O(h^4 + e h + e^2)`, with the positive numerical terms
   retained.  It dominates the exact `2 h^4 + O(h^6)` increment at
   `h=e^2`; no lower bound on `h` is used.  For `ell != p`, `J_M(p,ell)=H_M(p,ell)`.
5. Prove rootwise l2 factorization and sum every root, tested label, mode, and
   commit once, obtaining `J-global` and `R-acc` without an extra `r` or
   `sqrt(r)` factor.
6. Prove full-space transaction dynamics, history-uniform one-transaction
   probability `p_tx >= (nr)^(-c_tx)`, exact rollback, and independent-tape
   amplification to `r` distinct commits with probability at least
   `1-r^(-10)`.
7. Transfer the actual committed tuple to the exact nonorthogonal target orbit,
   prove a polynomial-radius balanced PL chart, first-exit invariance, and
   floor-free relative Frobenius accuracy in polynomial work times
   `log(1/epsilon)`.  Instance and tape probabilities remain separate.

The exact orthogonal equal-weight specialization is preserved: structural
H/S/z/charge/history terms vanish, exact target slots plus joint-zero unused
slots have zero loss, failed probes create no forcing, and terminal refinement
has no additive floor.

## Sketch Identity

- Sketch attempt: 2
- Retry mode: `revise_sketch` after archived attempt-1 review
- Branch: `perspective_2/idea_9`
- Progress type: `material_partial`
- Binding rank: `k = ceil(C_rank r^(3/2) (log(2r))^2)`, with `r < k < r^2`
- Binding baseline: exact asymmetric objective, exact rollback, exact target
  representation, same-target terminal refinement, and arbitrary relative
  accuracy
- Local repair: retain the raw numerical profile and global budget; use only
  the derived `E_lb`/exact-limit split for any `nu^2` absorption, while
  preserving the symmetric J charge and all global terms

## Proof Roadmap

The dependency-ordered roadmap has sixteen stable steps.

1. `step_001` derives the once-drawn instance event, exact target, and the
   Gaussian lower-tail branch `E_lb`.
2. `step_002` derives H/J/K, leakage, S, and the l1 and rootwise transfer
   gaps.
3. `step_003` constructs the conditional statewise Neumann envelope.
4. `step_004` proves the conditional current-residual landscape dichotomy.
5. `step_005` turns a certificate into a unique unresolved label and calibration.
6. `step_006` expands one accepted error and proves the J charge/update,
   including the repaired O.1 audit and cyclic forms.
7. `step_007` derives the zero-diagonal rootwise l2 z profile from a prior
   prefix budget.
8. `step_008` performs the rootwise factorization and one-time global charge
   sum, retaining all numerical terms.
9. `step_009` closes the protected-state induction from the empty prefix.
10. `step_010` proves deterministic transaction dynamics and exact rollback.
11. `step_011` proves history-uniform full-Haar transaction reachability.
12. `step_012` amplifies the independent tape to all distinct commits.
13. `step_013` proves exact-target balanced Jacobian conditioning and PL.
14. `step_014` supplies the same-target chart-entry bridge for the actual tuple.
15. `step_015` proves first-exit invariance and floor-free terminal descent.
16. `step_016` performs the public rate specialization and baseline assembly.

No step assumes a generated condition before its producer.  The conditional
landscape steps are consumed only after `step_009` discharges their prefix
interface.

## Rate Objectives

### Objective R1: once-drawn instance event

- Objective type: structural-parameter explicit and confidence-explicit.
- Exposed variables: `n,r,kappa,rho,Gamma_star,nu_base,nu_star`, realized
  norms/Grams/weights, and `||T||_F`.
- Hidden constants may depend on: fixed class constants
  `c_0,c_rho,C_dim,C_sm,C_nu,Gamma_star` and protocol constants.
- Hidden constants may not depend on: `n,r,k,kappa,rho`, realized instance,
  tape, commit order, or `epsilon`.
- Fixed quantities: deterministic base triple and fixed proof constants.
- Probability mode: structural Gaussian event intersected with the derived
  lower-tail event `E_lb`, total probability at least `1-r^(-10)`; the exact
  orthogonal/noiseless branch is reported separately as a baseline limit.
- Horizon mode: once-drawn and trajectory-uniform after conditioning.
- Norm mode: Euclidean columns, operator Grams, entrywise H/J/K, and tensor
  Frobenius norm.
- Required bridge or simplification obligations: `step_001` proves all
  normalization and finite-union bounds plus the anti-concentration lower-tail
  event; `step_002` derives lifted controls.  No lower-tail condition is added
  as a primitive assumption.
- Baseline invariance obligations: orthogonal equal-weight bases give exact
  identity pair/triple Grams and zero structural cross-label source.

### Objective R2: finite all-prefix ledger

- Objective type: finite-horizon structural-parameter explicit,
  regularity-explicit, and numerical-error explicit.
- Exposed variables: `r,nu,Gamma_star,P,D_stat,eta0,H,J,K,S,A_I,Theta_I,z,`
  `Xi,Upsilon` and all displayed budgets.
- Hidden constants may depend on fixed class/proof constants only.
- Hidden constants may not depend on state, order, tested label, instance,
  `n,r,k,kappa,rho`, or `epsilon`.
- Fixed quantities: one good instance and prefix length `s <= r`.
- Probability mode: deterministic conditional on the instance and tape history.
- Horizon mode: uniform over all finite prefixes.
- Norm mode: entrywise l1, rootwise block-l2, Euclidean factor error, and
  tensor contractions.
- Required bridge or simplification obligations: `step_007` exports the raw
  `nu^2 + r nu^3 + sqrt(r)e` row bound and `step_008` exports the raw
  `r nu^3+r^2e` global budget.  Only on derived `E_lb` (or the exact limit) may
  `r^2e` and `sqrt(r)e` be compared with `nu^2`; no crude
  `r^(3/2)nu^3` replacement and no unconditional absorption are allowed.
- Baseline invariance obligations: setting H and the exact numerical limit to
  zero makes S, structural z, A, Xi, and all structural charges vanish.

### Objective R3: discovery probability and work

- Objective type: confidence-explicit, fixed-horizon, and algorithmic-work
  explicit.
- Exposed variables: `n,r,k,kappa,rho,P,H_tx,N_tx,p_tx,c_tx,d_tx`, line-search
  constants, and guard/tolerance exponents.
- Hidden constants may depend on fixed class/protocol constants only.
- Hidden constants may not depend on protected history, order, instance within
  `E_inst`, or `epsilon`.
- Fixed quantities: one good instance and deterministic transaction map.
- Probability mode: conditional one-seed probability at least `(nr)^(-c_tx)`,
  separately amplified to `1-r^(-10)`.
- Horizon mode: at most `N_tx` transactions and `H_tx` work per transaction.
- Norm mode: exact loss, sphere gradient/Hessian, factor displacement, and
  certificate scalars.
- Required bridge or simplification obligations: `step_011` proves the
  one-seed bound and `step_012` proves stopped amplification and work.
- Baseline invariance obligations: every failed probe returns exactly to joint
  zero and contributes zero persistent error.

### Objective R4: same-target convergence

- Objective type: regularity-explicit, numerical-error explicit, and
  finite-horizon convergence-rate explicit.
- Exposed variables: `n,r,k,kappa,rho,Gamma_star,P,epsilon,varrho_PL,mu_PL`,
  factor distance, and residual norm.
- Hidden constants may depend on fixed class/protocol constants only.
- Hidden constants may not depend on dimensions, order, target labels, instance,
  or `epsilon`.
- Fixed quantities: one all-commit output on one good instance.
- Probability mode: deterministic after the two separate events.
- Horizon mode: finite discovery plus terminal `log(1/epsilon)` horizon.
- Norm mode: full-state Euclidean orbit distance, balanced gradient, loss, and
  Frobenius residual.
- Required bridge or simplification obligations: `step_014` proves actual
  same-target entry using the raw numerical budget and then invokes the
  `E_lb`/exact-limit branch for any `nu^2` comparison; `step_016` verifies
  exponent choices, branch probability accounting, probability separation,
  and public polynomial work.
- Baseline invariance obligations: exact target is stationary at zero loss and
  the terminal statement has no additive remainder.

## Assumption Provenance Objectives

- `E_inst`, nonvanishing, realized norms/Grams, weights, pair/triple
  conditioning, and target guard are derived from the six source assumptions
  used in `step_001`; they are not primitive event hypotheses.  The auxiliary
  `E_lb` lower-tail event is also derived in `step_001`, by Gaussian
  anti-concentration on disjoint label pairs after normalization, and is
  included in the probability budget rather than promoted to an assumption.
- H/J/K, S, leakage, both transfer gaps, and all small-gain margins are
  derived in `step_002` from `E_inst` and the exact displayed transfer map.
- `Theta_I` is a conditional local output of `step_003`; its history input
  `A_I` is legal only when supplied by an earlier accepted prefix.
- Matching, separation, calibration, row profiles, charges, and transaction
  invariants are generated outputs.  `step_009` is the noncircular bridge from
  the empty state to the all-prefix interface.
- The tape law is primitive only through `assump:random-tape`; success,
  injection, and all-commit events are derived in `steps_010--012`.
- PL constants and chart entry are derived in `steps_013--014`; no chart
  membership is assumed at terminal descent.  The chart bridge consumes the
  raw `r^2e` term and uses its `E_lb` comparison only on that derived branch;
  the exact H=0,e=0 limit is handled by equality.

## Mechanism-Source And Boundary Stress

### Static event, source, and transfer (`steps_001--003`)

- Step ID: `step_001`.
- Claim class: event membership, conditioning, exact representation, and
  baseline preservation.
- Theorem role: supplies the only once-drawn source for every later static
  object.
- Mechanism source: Gaussian concentration and normalization from the named
  primitive assumptions, the signed normalized-Gram margin, direct Schur
  product identities, and the exact balanced CP representation.
- Source-to-claim adequacy: the perturbation tail/epsilon-net statements are
  applied to the same realized columns and their exact normalized Gram
  convention; all union probabilities and pair/triple maps are explicit.
- Residual-to-target adequacy: produced `A,B,C,T` are exactly the consumed
  realized target, measured in the stated Euclidean/Frobenius metrics; no
  surrogate or whitening bridge is used.
- Key positive/control term or structural source: primitive Gram reserve and
  nonzero column norm reserve.
- Opposing defects: Gaussian norm and Gram deviations; each is bounded below a
  fixed fraction of the reserve.
- Closure/dominance relation: union-tail bounds plus `nu_star` slack imply
  `nu_real <= 2 nu_star`, weight ratio `<=2 Gamma_star`, and pair/triple gaps.
  In addition, before intersecting the norm event expose one independent
  Gaussian cross-coordinate for each of `floor(r/2)` disjoint label pairs in
  one mode.  Its conditional standard deviation is at least
  `c rho/(sqrt(n) kappa)`, so a density bound makes the probability of every
  raw coordinate being below `c rho/(sqrt(n) kappa r^40)` at most `r^(-20)`;
  the norm event then transfers this raw bound to normalized Grams.
  The definition of `P` and the polynomial bounds on `rho^(-1),kappa,k` give a
  fixed `D_lb` with `P^(-D_lb)` below this threshold, hence exports
  `E_lb={nu_real>=P^(-D_lb)}`.  This lower tail is a derived event, not a
  primitive lower bound.
- Accumulation behavior / scope compatibility: once-drawn, no trajectory
  accumulation.
- Obligation locality classification: step-local.
- Noncircular closure status: primitive tails -> `step_001` -> `step_002` and
  `step_013`; no generated output is used to prove the event.
- Entry-state / first-update stress result: exact target and empty state are
  valid; zero tensor is handled by the stated early return.
- Baseline conclusion preserved: orthogonal equal-weight input gives exact
  representation and zero loss.
- Producer-consumer provenance: `step_001` exports the exact realized object
  consumed by all later static and terminal steps.
- Null or boundary regime tested: zero perturbation/exact-limit, nonzero
  smoothing lower tail, nonzero minimum norm, and equality at the Gram reserve.
  The exact-limit branch sets `H=0,e=0`; finite smoothing uses `E_lb`.
- Target conclusion false if source vanishes: without norm/Gram reserve,
  conditioning and exact-target chart can fail; without the derived lower-tail
  branch, a positive `e` could not be absorbed into `nu^2`.
- Repair route if source is unsupported: none; all source identities are fixed.

- Step ID: `step_002`.
- Claim class: positive small-gain and resolvent gap.
- Theorem role: controls all repeated history transfers.
- Mechanism source: direct columnwise Cauchy-Schwarz for H, Schur products for
  K, the exact J blocks, and the three-mode transfer map in `setting.md`.
- Source-to-claim adequacy: the source uses signed Gram entries only through
  their absolute values and never asserts an operator norm for `|G-I|`.
- Residual-to-target adequacy: H/J/K and transfer arrays have exactly the
  domain and zero-diagonal convention consumed by `Theta` and charges.
- Key positive/control term or structural source: `nu_real` column l2 bound and
  `||K||_1 <= nu_real^2`.
- Opposing defects: eta padding and J row sums; both are explicit in the
  displayed factor `2(nu+eta0)(1+sqrt(r)nu)`.
- Closure/dominance relation: choose constants so `q_res,q_row <= 1/4`.
- Accumulation behavior / scope compatibility: geometric Neumann summation has
  finite norm `1/(1-q)`.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_001 -> step_002 -> step_003`; no history is
  used in the gap proof.
- Entry-state / first-update stress result: empty history is compatible with
  the same static gap.
- Baseline conclusion preserved: H/K/S vanish in the orthogonal limit.
- Producer-consumer provenance: `step_002` feeds `steps_003--009,013`.
- Null or boundary regime tested: H=0 and q=0; q=1 is excluded by the
  primitive margin and fixed slack.
- Target conclusion false if source vanishes: no resolvent control at q>=1.
- Repair route if source is unsupported: none under the approved margin.

### Conditional landscape and matching (`steps_004--005`)

- Step IDs: `step_004`, `step_005`.
- Claim class: local isolation, signed descent/curvature, separation, and
  generated matching.
- Theorem role: converts an observable certificate into a theorem-facing atom
  and calibration output.
- Mechanism source: direct product-sphere score, gradient, Hessian, and radial
  root equations for the exact current residual; static H/J/K paths and
  conditional `Theta_I` bound every history defect.
- Source-to-claim adequacy: all equations use the full ambient spheres and the
  exact protected residual; sign choices are analysis-only and product-one.
- Residual-to-target adequacy: the produced slot and consumed atom are both
  normalized realized factors, with explicit Euclidean and radius comparison
  `(R-euc)`; no projected or surrogate target is introduced.
- Key positive/control term or structural source: positive isolated score,
  angular Hessian gap, radial equation `g^3=s_I`, and observable capture.
- Opposing defects: static leakage, accepted-history forcing, numerical e,
  mixed-support curvature, and separation ambiguity.  The chosen gaps and
  `eta0` dominate them.
- Closure/dominance relation: singleton-vs-mixed-support dichotomy; a small
  gradient state is either certified or supplies a negative-curvature witness.
- Accumulation behavior / scope compatibility: conditional on one legal prefix;
  no cross-prefix claim is made until `step_009`.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_003` conditional envelope -> `step_004` ->
  `step_005`; `step_009` later supplies the unconditional prefix input.
- Entry-state / first-update stress result: empty state has `A=0`; positive
  score seeds activate the radial root, while zero/negative score seeds are
  unsuccessful or sign-flipped.
- Baseline conclusion preserved: exact atom certificates at H=A=e=0 are
  matched exactly and remain separated.
- Producer-consumer provenance: outputs feed `steps_006,009,011,014`.
- Null or boundary regime tested: empty protected set, zero score, partial
  support, straddling support, and separation threshold `1/4`.
- Target conclusion false if source vanishes: without an isolated positive
  score or curvature source, a mixed certificate need not identify a label.
- Repair route if source is unsupported: route to `/subagent-idea-generator`,
  but no blocker is expected under the formalized target.

### J transition, local audit, and global accumulation (`steps_006--009`)

- Step IDs: `step_006`, `step_007`, `step_008`, `step_009`.
- Claim class: signed multilinear update, generated invariant, finite-prefix
  recurrence, and accumulated-error control.
- Theorem role: supplies the noncircular producer for all accepted histories.
- Mechanism source: exact expansion of `E_i`, product-one sign calibration,
  the same `J_M(p,ell)` in the positive and baseline products, and the
  nonnegative rootwise Neumann transfer.
- Source-to-claim adequacy: the exact J identity is derived in current
  notation; for `ell=p`, `J_M(p,p)=1` and `z` has zero diagonal; for
  `ell!=p`, `J_M(p,ell)=H_M(p,ell)`.  The `O(h^4+e h+e^2)` statement is
  invoked only on the isolated O.1 verification family in which every other
  displayed label is orthogonal and therefore `nu_real=h`.  In a two-label
  block embedded in a larger correlated instance, the exact expansion is
  retained but the structural term is bounded by the global
  `nu_real^2 h^2` ledger instead of being relabeled `h^4`.  Cyclic modes use
  the same convention.
- Residual-to-target adequacy: `E_i` is the actual accepted tensor error and
  `A_I` contracts it against the exact realized target frame; the J baseline is
  the exact target term, not an orthogonal surrogate.
- Key positive/control term or structural source: `eta0 H_B H_C` and the
  exact J baseline cancellation, plus rootwise l2 factorization.
- Opposing defect terms: radial/directional calibration errors, `H z`, `z z`,
  and numerical `e h` and `e^2` padding.  They are retained explicitly.
- Closure/dominance relation: on the isolated family with `nu_real=h`, the
  local O.1 export is `Upsilon_tilde = O(h^4 + e h + e^2)` and has matching
  positive lower terms; at `h=e^2` it is at least the needed order and
  dominates `2h^4+O(h^6)`.  Rootwise Cauchy-Schwarz exports, before any
  specialization,
  `||z_p||_2 <= C(nu^2+r nu^3+sqrt(r)e)` and sums the global structural and
  numerical terms as `O(r nu^3+r^2e)`.  These raw terms feed every consumer.
  On `E_lb`, the derived inequalities in the formalized-setting section may
  then recover the displayed `C'_z nu^2` simplification; in the exact
  `H=0,e=0` baseline it holds by equality.  No claim is made that finite
  positive padding is dominated when `nu<nu_lb`.
- Accumulation behavior / scope compatibility: one nonnegative charge per
  captured label/root/tested-label/mode, finite prefix `s<=r`; `J-update`
  charges the next history and `R-acc` charges accepted tensor influence.
  The exact one-step relation is `Delta A <= 2 Gamma_star Upsilon`; no failed
  probe enters the recurrence because rollback is exact.
- Obligation locality classification: step-local.
- Noncircular closure status: base `I_0=emptyset,A_0=0`; each accepted
  transition uses only the prior prefix, then `step_008` produces the next
  budget and `step_009` advances the induction.
- Entry-state / first-update stress result: on the isolated family
  `nu_real=h`, the cases `h=0`, `0<h<<e`, and `h=e^2` are audited.  The
  positive e terms handle the small-h local charge; the finite-smoothed
  theorem branch uses `E_lb` for global simplification, while the exact
  orthogonal limit sets `H=e=0` and actual errors to zero.  Dense/block and
  larger-embedding cases retain `nu_real^2 h^2` and the raw global budget.
- Baseline conclusion preserved: exact orthogonal charges and accepted forcing
  vanish; rollback and joint-zero slots preserve zero loss.
- Producer-consumer provenance: `step_006 -> step_007/008 -> step_009 ->
  steps_010--016`.
- Null or boundary regime tested: captured-label diagonal, off-diagonal
  transitive chain, zero z diagonal, and all-zero H.
- Target conclusion false if source vanishes: omitting the J identity or the
  positive numerical terms would lose the diagonal transition; omitting the
  rootwise factorization would introduce an invalid label factor.
- Repair route if source is unsupported: `/proof-sketch` for a local derivation
  issue; `/subagent-idea-generator` only if the honest interface itself fails.

### Transactions, tape, PL, and rate (`steps_010--016`)

- Step IDs: `steps_010--012`.
- Claim class: reachable certificate, probability amplification, rollback, and
  generated all-commit output.
- Mechanism source: exact radial derivative, safeguarded bracketing, compact
  guard smoothness, dyadic Armijo decrease, two-sign negative-curvature trial,
  Haar anti-concentration, and the independent tape primitive.
- Source-to-claim adequacy: dynamics use only observable exact-loss quantities;
  target labels and H/J/K are never queried by the algorithm.
- Residual-to-target adequacy: successful scratch slots are actual committed
  factors; failed slots are exactly the pretransaction joint-zero state.
- Key positive/control term or structural source: radial root and angular gap,
  inverse-polynomial accepted step, and a polynomial Haar activation window.
- Opposing defect terms: zero score, guard violation, ambiguous certificate,
  line-search exhaustion, and tape exhaustion; each is classified as failure
  with exact rollback or absorbed by the polynomial tail.
- Closure/dominance relation: history-uniform `p_tx >= (nr)^(-c_tx)` and a
  stopped geometric/binomial tail yield all r distinct labels.
- Accumulation behavior / scope compatibility: failed probes have zero forcing;
  successful commits are finite and fed to `step_009`.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_009 -> step_010 -> step_011 -> step_012`.
- Entry-state / first-update stress result: empty scratch is joint zero; a
  negative seed is sign-flipped, zero score fails, and the first accepted
  transaction is covered by the same prefix interface.
- Baseline conclusion preserved: exact rollback and finite tape do not alter
  the represented tensor on failure.
- Producer-consumer provenance: `step_012` produces the actual tuple consumed
  by `step_014`.
- Null or boundary regime tested: zero score, missing radial root, radius guard,
  exhausted work, and exact target.
- Target conclusion false if source vanishes: without Haar activation or exact
  rollback, all-commit reachability and no-forcing claims fail.
- Repair route if source is unsupported: `/proof-sketch` for a probability or
  dynamics interface defect.

- Step IDs: `steps_013--016`.
- Claim class: coercivity, same-target bridge, contraction, exact limit, and
  explicit public rate.
- Theorem role: terminal theorem closure.
- Mechanism source: direct balanced CP Jacobian at the exact nonorthogonal target,
  pair/triple Gram reserve, Taylor/smoothness bounds, PL descent, and a
  first-exit argument.
- Source-to-claim adequacy: the chart reference is the exact finite target
  orbit; no whitened or orthogonal surrogate is consumed.
- Residual-to-target adequacy: `step_014` decomposes actual factor error into
  matched direction/radius terms and the finite raw `R-acc` budget
  `C(r nu^3+r^2e)`, then compares each term directly with the chart radius.
  On `E_lb` the lower-tail inequalities permit the optional `nu^2` rewrite;
  on the exact H=0,e=0 limit the residual is exactly zero.  No comparison of
  a positive finite `e` with `nu^2` is made outside those branches.
- Key positive/control term or structural source: smallest balanced Jacobian
  singular value and positive PL constant.
- Opposing defect terms: nonorthogonal cross terms, accepted initialization
  error, Taylor remainder, line-search truncation, and raw numerical `r^2e`.
  The first-exit reserve controls them term by term; the `r^2e <= c nu^2`
  comparison is invoked only on `E_lb`, while the exact-limit branch has zero
  numerical forcing.
- Exported chart scale: on the finite `E_lb` branch choose
  `varrho_PL = c_PL min{1,nu^2}` after the raw entry bound is proved.  Since
  `nu>=P^(-D_lb)`, this radius is at least `P^(-D_PL)` for a fixed
  `D_PL>=2D_lb` after polynomial slack.  On the exact H=0,e=0 branch use the
  constant orthogonal chart radius.  Thus the radius is not silently chosen
  below the raw numerical residual.
- Quantitative entry check: the structural term satisfies
  `r nu^3 <= (r nu) nu^2`, and the upper Gram regime makes `r nu` a fixed
  small quantity; on `E_lb`, both numerical terms satisfy the same comparison.
  Therefore the raw factor-distance error is at most a fixed fraction of
  `varrho_PL` after choosing `c_PL` and the finite asymptotic threshold.
- Closure/dominance relation: raw chart entry -> first-exit invariance ->
  geometric loss decrease; `epsilon` appears only in the terminal logarithmic
  horizon.  `step_016` records the `E_lb` probability cost separately.
- Accumulation behavior / scope compatibility: finite contraction horizon with
  no persistent additive forcing and exact zero-loss endpoint.
- Obligation locality classification: step-local.
- Noncircular closure status: `step_013` produces PL; `step_014` produces entry;
  `step_015` consumes both; `step_016` only specializes already proved bounds.
- Entry-state / first-update stress result: exact target is stationary, has zero
  loss, and remains in the chart; first descent step stays inside by the
  first-exit reserve.
- Baseline conclusion preserved: no terminal floor and exact orthogonal target
  remains a zero-loss fixed point.
- Producer-consumer provenance: `step_001 -> step_013 -> step_014 -> step_015
  -> step_016 -> final theorem`.
- Null or boundary regime tested: exact target, epsilon approaching zero,
  zero residual, and chart boundary.
- Target conclusion false if source vanishes: without Jacobian reserve or
  first-exit control, PL and arbitrary relative accuracy are unsupported.
- Repair route if source is unsupported: `/proof-sketch` for a bridge defect.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_inst` and derived `E_lb`, realized target, norms, Grams, weights | `step_001` | six source assumptions, Gaussian tails, dimension, smoothing margin, disjoint-pair Gaussian anti-concentration | norm/Gram deviations controlled by `rho,kappa,n`; lower-tail failure is charged as `r^(-20)`; no primitive lower bound | exact realized columns and exact `T` are consumed | reserve each deviation below the primitive margin; anti-concentration gives `nu>=P^(-D_lb)` on `E_lb` | `nu_star`, `1/16`, `2 Gamma_star`, finite probability budget | `step_002`, `step_013`, `step_016` | None |
| H/J/K, leakage, S, transfer gaps | `step_002` | R-src, Cauchy-Schwarz, Schur products, exact transfer map | signed entries and row sums are explicit; no absolute-Gram operator claim | same array domain and zero diagonal as downstream scores | `2(nu+eta0)(1+sqrt(r)nu)` and `q_res,q_row<=1/4` | `step_003`, `steps_004--009`, `step_013` | None |
| Conditional `Theta_I` | `step_003` | S, conditional actual A, numerical all-ones source, q gaps | static/history/numerical classes remain separated | exact current residual coordinates are bounded in the consumed frame | convergent Neumann series with factor `1/(1-q)` | `steps_004,005,007` | None |
| Certificate matching and calibration | `steps_004--005` | score/gradient/Hessian/radial equations, Theta, separation | mixed support, history, e, and guard defects are explicitly bounded | actual slot versus exact realized atom in factor Euclidean metric | singleton gap dominates; radial and angular thresholds export `R-euc,R-dir` | `eta0`, capture, separation `1/4` | `steps_006,009,011,014` | None |
| J charge, update, and honest O.1 audit | `step_006` | exact E expansion, calibration, weight ratio, J baseline | radial/directional errors, H z, z z, and positive e padding | exact accepted error and exact target contraction share the same frame | isolated O.1 scope is explicit: all other displayed labels orthogonal and `nu_real=h`; larger embeddings use the global `nu` ledger | local bound `O(h^4+e h+e^2)`; cyclic and off-diagonal cases explicit | J identity, eta0, retained positive numerical terms | `steps_008,009` | None |
| Rootwise z and one-time global budgets | `steps_007--009` | prior prefix, q_row, rootwise Cauchy-Schwarz, J update | structural `nu^3` and numerical `e` classes stay separate | actual A and Xi are exactly the consumed history/influence arrays | raw `||z||_2 <= C(nu^2+rnu^3+sqrt(r)e)` and `O(r nu^3+r^2e)` are exported; only `E_lb` permits a `nu^2` rewrite | finite prefix and `q_row<=1/4`; lower-tail branch or exact limit supplies any absorption | `steps_004,009,014` | None |
| Transaction outcome and rollback | `step_010` | exact f, derivatives, guard, Armijo, eigenvector routine | all failure branches restore the exact pretransaction state | scratch and rollback target are actual algorithm states | accepted steps >= `P^(-D_ls)`; failure contributes zero | `H_tx`, `Delta_tr`, radius guard | `step_011`, `step_009` | None |
| One-seed and all-commit events | `steps_011--012` | Haar anti-concentration, deterministic flow, independent tape | ambiguity and tape exhaustion are tail events | committed slots are actual slots consumed by chart bridge | `p_tx`, stopped tail, separate probabilities | `N_tx`, `C_tape` | `step_014`, `step_016` | None |
| PL constants and chart entry | `steps_013--014` | exact Jacobian, Gram conditioning, R-euc, raw R-acc | cross terms and finite initialization error are explicit | exact target orbit and actual tuple share full-state metric | raw chart residual is `C(r nu^3+r^2e)`; on `E_lb` choose `varrho_PL=c_PL min{1,nu^2}` and use the derived comparison, while H=0,e=0 uses a constant orthogonal radius | `varrho_PL,mu_PL >= P^(-D_PL)` with `D_PL>=2D_lb` on `E_lb` plus exact-limit slack | `steps_015--016` | None |
| Floor-free public rate | `steps_015--016` | PL, smoothness, epsilon range, all prior bridges | Taylor and public substitution terms remain separated from raw numerical budget | final norm is exact Frobenius residual against `T` | geometric contraction; `E_lb` cost is included in instance event and no unconditional numerical absorption is claimed | `mu_PL`, epsilon, separate `1-r^(-10)` events | final theorem | None |

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_inst` and exact representation | event, conditioning, baseline | Gaussian concentration, normalization, direct CP identities | primitive assumptions and current notation | same realized columns, Grams, and tensor as goal | normalized Gram and Frobenius conventions are identical | tail reserve below `nu_star`; Schur products below `1/16` | six source assumptions export every displayed event component | produced `T` is the consumed target exactly; no surrogate | one-drawn finite union, no accumulation | primitive assumptions -> `step_001` | `step_001` -> `steps_002,013,016` | zero perturbation and exact target pass | step-local | None |
| `E_lb` lower-tail branch | derived numerical nondegeneracy and absorption support | Gaussian anti-concentration for disjoint normalized cross-Gram coordinates | direct consequence of `assump:gaussian-smoothing`, norm event, and dimension/rho regimes | supports only the stated lower-tail comparison, not a primitive source condition | same normalized Gram convention and same `nu_real` consumed downstream | `P(E_lb^c)<=r^(-20)` and `nu_real>=P^(-D_lb)`; choose `D_stat` after `D_lb` so `r^2e,sqrt(r)e<=c nu^2` on this branch | raw variance `rho^2/n`, polynomial `rho^(-1),kappa`, and independent disjoint pairs are exposed | no object transfer; the branch is a property of the exact realized instance | once-drawn event, no trajectory accumulation | primitive Gaussian source -> `step_001` -> branch-aware `step_007/008/014/016` | `step_001` produces it; those steps consume it only for absorption | tiny positive `nu`, exact H=0,e=0 limit, and lower-tail complement are explicitly separated | step-local | None |
| H/J/K and transfer gaps | positive small-gain, resolvent support | column l2 Cauchy-Schwarz, Schur products, exact `Tcal` | direct derivation from `step_001` in setting convention | R-src and both gaps have exact downstream shape | absolute entries are analysis-only; algorithm never queries them | transfer norm `2(nu+eta0)(1+sqrt(r)nu)`, `q<=1/4` | raw H columns and J rows control every displayed defect | same array domain and zero-diagonal embedding | geometric accumulation is summable by `1/(1-q)` | `step_001 -> step_002` | `step_002` -> `step_003` and ledger steps | H=0 gives q=0; q=1 excluded | step-local | None |
| Conditional `Theta_I` and landscape | generated boundedness and isolation | nonnegative Neumann series, exact score/gradient/Hessian expansion | direct current-notation derivation | conditional target matches `Cert` inputs | full ambient spheres, exact protected residual, and balanced convention match | `Theta` bounds static, history, and numerical terms; singleton gap dominates defects | S, conditional A, e, and q are available before export | scratch and realized atom compared in factor Euclidean metric | conditional within-state series; cross-state forcing remains conditional | `step_002 -> step_003 -> steps_004,005` | `steps_003--005` -> transition/reachability | empty A=0, zero score, mixed support, separation boundary | step-local | None |
| Matching, calibration, injection | support/membership, generated entry | radial root, angular stationarity, finite sign orbit | direct derivation from `steps_004` and setting equations | `R-euc`,`R-dir` are the exact consumed interfaces | signs are analysis-only; target labels are not algorithm inputs | choose `C_led,C_num` to dominate directional/radial defects | score, gap, capture, and separation are observable raw controls | actual accepted slot is compared with exact realized atom, not a surrogate | one output per accepted commit, finite at most r | `step_004 -> step_005`; later `step_009` discharges prefix | `step_005` -> `steps_006,009,011,014` | empty state, first positive score, ambiguous/zero score | step-local | None |
| J charge/update and O.1 audit | signed transition and local numerical interface | exact multilinear expansion with same J baseline | direct current-notation algebra | exact `J-update` and honest `J-two-label` have the setting target shape | `J_M(p,p)=1`, off-diagonal `J=H`, and zero-diagonal z are identical conventions | `O(h^4+e h+e^2)` retains positive `h z` and `z z`; dominates exact increment at `h=e^2` | calibration, weight ratio, H, z, eta are raw; structural and numerical classes are split | `E_i` and target-frame contraction are same objects and norm | nonnegative one-step charge; finite prefix sum | `step_005 -> step_006`; no self-use | `step_006` -> `steps_007,008,009` | h=0, h<<e, h=e^2, cyclic modes, transitive off-diagonal | step-local | None |
| Rootwise profile and global ledger | recurrence, invariant, finite accumulation | rootwise l2 Neumann contraction and Cauchy-Schwarz factorization | direct derivation from `steps_002,003,006` | raw profile, `J-global`, and `R-acc` exactly match setting; simplified `J-row` is branch-qualified | same root blocks, l1 arrays, and commit order convention | one-step `Delta A <= 2 Gamma Upsilon`; sum structural `r nu^3`, numerical `r^2e`; `E_lb` alone supplies any `nu^2` absorption | prior prefix budget, q_row, z row, and J charge are named controls | actual history and accepted errors feed the exact consumed arrays | finite-budgeted, sign-controlled nonnegative charges, no extra label factor | empty base -> `step_006` -> `step_007` -> `step_008` -> `step_009` | `step_009` -> transactions and chart entry | isolated O.1 `nu=h`, dense/block, every commit order, s<=r, tiny-nu branch | step-local | None |
| Protected-state closure | all-prefix invariant and generated output | finite induction plus exact rollback | direct induction in current setting | every invariant clause is listed in the goal | protected slots frozen and failed slots joint-zero exactly match protocol | prior valid prefix + successful transition -> next valid prefix; failure leaves prefix unchanged | `steps_004--008` provide each raw clause before closure | actual protected residual is the same `R_I` consumed by next transaction | finite at most r; failed probes have zero forcing | base `I=emptyset,A=0` -> one-step producer -> next prefix | `step_009` -> `steps_010--012,014` | first commit and last unresolved root are included | step-local | None |
| Transaction reachability and tape | support, probability, rollback | exact dynamics, Haar anti-concentration, independence | direct protocol derivation plus `assump:random-tape` | certificate and tape events have exact target probability/mode | full-space Haar and exact-loss Armijo conventions match setting | `p_tx >= (nr)^(-c_tx)`; stopped tail with `N_tx` yields `1-r^(-10)` | score windows, step lower bound, guard, and independent tape are raw controls | success is actual slot; failure equals exact pretransaction state | failed probes contribute zero; successes finite and injected once | `step_009 -> step_010 -> step_011 -> step_012` | `step_012` -> `step_014` | zero score, missing root, guard, exhaustion, exact rollback | step-local | None |
| Exact-target PL and terminal rate | coercivity, basin, contraction, baseline | balanced Jacobian, Taylor, PL, first-exit Armijo | direct current-notation derivation from `step_001` and accepted outputs | exact target orbit and final Frobenius goal are the same objects | balanced manifold and full-state Euclidean/Frobenius conventions match | Jacobian reserve controls the chart; raw `C(r nu^3+r^2e)` is compared termwise, then `varrho_PL=c_PL min{1,nu^2}` on `E_lb` or a constant radius at H=0,e=0 | pair/triple gap, R-euc, raw R-acc, smoothness, epsilon, and `D_lb` are explicit controls | actual tuple-to-target residual is decomposed and dominated at the branch-specific chart scale | finite contraction, no additive forcing, exact zero endpoint | `step_013 -> step_014 -> step_015 -> step_016` | `step_014` -> `step_015`; `step_016` -> final theorem | exact target, epsilon -> 0, chart boundary, `nu<nu_lb` exclusion, and H=0,e=0 are traced | step-local | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| `E_inst` and exact `T` | `step_001` from primitive assumptions | `steps_002,003,013,016` | source event and target representation | assumptions -> `step_001` -> static/terminal modules | derived | None |
| `E_lb` lower-tail event | `step_001` from Gaussian anti-concentration | `steps_007,008,014,016` | permits numerical-to-structural comparisons only on the derived branch | Gaussian smoothing -> disjoint-pair anti-concentration -> `E_lb` -> branch-aware consumers | derived | None |
| H/J/K, S, leakage, transfer gaps | `step_002` | `steps_003--009,013` | static source and resolvent | `step_001 -> step_002 ->` all ledger/PL consumers | derived | None |
| Conditional `Theta_I` | `step_003` | `steps_004,005,007` | current residual control | `step_002 -> step_003 ->` local landscape/profile | explicitly conditional | None |
| Certificate matching and calibration | `steps_004--005` | `steps_006,009,011,014` | unique labels and factor errors | `Theta -> landscape -> matching ->` transition/entry | derived after prefix bridge | None |
| Accepted `E`, J charge/update, honest audit | `step_006` | `steps_007--009` | history producer and O.1 guarantee | `step_005 -> step_006 ->` profile/global induction | derived | None |
| Raw rootwise z profile and branch-qualified `J-row` | `step_007` | `steps_006,008,009,014` | no-extra-multiplicity control | prior prefix + `Theta -> step_007 ->` charge; `E_lb`/exact limit -> optional `nu^2` simplification | derived | None |
| J-global, history and R-acc budgets | `steps_008--009` | `steps_004,010--012,014` | all-prefix invariant and chart entry | empty state -> transition -> global sum -> induction | derived | None |
| Transaction success/rollback | `step_010` | `steps_011,009` | valid next state or unchanged state | invariant -> transaction -> outcome | derived | None |
| One-seed probability | `step_011` | `step_012` | tape amplification | invariant -> reachability -> tail | derived | None |
| Final actual committed tuple | `step_012` | `step_014` | same-target entry | induction -> reachability -> tape -> tuple | derived | None |
| Exact-target PL constants | `step_013` | `steps_014,015` | terminal mechanism | event -> Jacobian -> chart/descent | derived | None |
| Same-target chart entry from raw budget | `step_014` | `steps_015,016` | terminal initialization | all-commit tuple + exact orbit + raw `R-acc`; `E_lb`/exact limit supplies optional absorption | derived | None |
| PL descent and public rate | `steps_015--016` | final assembly | arbitrary relative epsilon, runtime, baseline | entry -> first exit -> contraction -> specialization | derived | None |

## Sketch Steps

Sketch Steps = 16 stable rows; all rows start with `Review status = PENDING`.

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | Derive `E_inst`, all norm/Gram/weight/T bounds, pair/triple conditioning, exact balanced target representation, and the derived lower-tail event `E_lb` with probability `1-r^(-10)`. | None | `assump:base-column-conditioning`, `assump:base-product-balance`, `assump:gaussian-smoothing`, `assump:dimension-regime`, `assump:smoothing-scale`, `assump:modewise-gram-margin` | normalization, finite union tails, and a uniform Gaussian anti-concentration lower tail | Gaussian concentration, disjoint-pair anti-concentration, epsilon-net operator bound, direct product algebra | `E_inst`, `E_lb`, `Q^star`, target norm and guard | R1; retain lower-tail probability and all exposed variables | PENDING |
| `step_002` | Derive R-src, leakage, S budget, and l1/rootwise transfer gaps with `q_res,q_row<=1/4`. | `step_001` | derived `E_inst`; `assump:modewise-gram-margin`, `assump:base-product-balance` | absolute-Gram rows and fixed-root block map | columnwise Cauchy-Schwarz, Schur products, three-mode block norm | H/J/K/S and `Tcal` | R2 structural; retain `nu,r,Gamma_star` | PENDING |
| `step_003` | For any legal conditional history, prove convergent l1 and rootwise Neumann envelopes, including empty history. | `step_002` | derived event; explicitly conditional `A_I` | nonnegative resolvent and norm compatibility | geometric Neumann series in both induced norms | `Theta_I`, `Theta_empty` | R2; expose static/history/numerical classes | PENDING |
| `step_004` | Under the named conditional prefix interface, prove score decomposition and singleton/mixed-support angular landscape dichotomy. | `step_003` | derived event; conditional prefix interface; `assump:base-product-balance` | nonorthogonal paths and Hessian gap | direct product-sphere stationarity/Hessian expansion | isolation margin and certificate dichotomy | R2; retain all defects | PENDING |
| `step_005` | Convert a certificate into one unique unresolved label, separation, calibration, `R-euc`, `R-dir`, and injection extension. | `step_004` | conditional outputs; `assump:base-product-balance` | sign orbit, radial error, target compatibility | radial root, angular equations, finite-orbit matching | matching/injection and `Cal`, `Diag-cal` | R2; explicit eta/e dependence | PENDING |
| `step_006` | Expand accepted `E`; prove R-tensor, J-charge, J-update, J-diag, repaired O.1 audit, and cyclic/off-diagonal cases.  The O.1 statement is only for the isolated family with all other displayed labels orthogonal and `nu_real=h`; larger embeddings use the global `nu` ledger. | `step_005` | derived calibration; `assump:base-product-balance` | exact scalar cancellation and diagonal normalization | multilinear expansion and product majorization | `Xi`, `Upsilon`, exact transition interface | R2; retain `e h` and `e^2` | PENDING |
| `step_007` | From a prior prefix budget, derive zero-diagonal stored z and the raw rootwise l2 profile; recover the declared `J-row` only on `E_lb` or the exact H=0,e=0 limit. | `step_003` | derived event and `E_lb`; prior-prefix output supplied by induction | rootwise versus entrywise norms and finite numerical padding | fixed-root block-l2 Neumann estimate plus explicit branch comparison | raw `J-z`, `||z||_2 <= C(nu^2+rnu^3+sqrt(r)e)`, and branch-qualified `J-row` | R2; keep `sqrt(r)e` visible and invoke `nu^2` absorption only on `E_lb` | PENDING |
| `step_008` | Factor per-commit charges and sum roots/labels/modes once, proving raw `J-global`, history budget, and R-acc; specialize only on `E_lb` or the exact limit. | `step_006`, `step_007` | prior-prefix row output; derived calibration; `assump:base-product-balance`; branch output `E_lb` | dense/block factorization and diagonal terms | rootwise Cauchy-Schwarz and finite one-time ledger | per-p charge, raw `J-global`, `R-hist-budget`, `R-acc` | R2; target `O(r nu^3+r^2e)` remains unsimplified until branch check | PENDING |
| `step_009` | Close the protected-state induction from `I=emptyset,A=0` through all at most r commits, carrying raw numerical terms and using the `E_lb`/exact-limit branch for any simplified row interface. | `step_002`, `step_003`, `step_004`, `step_005`, `step_006`, `step_007`, `step_008` | `assump:base-column-conditioning`, `assump:base-product-balance`, `assump:gaussian-smoothing`, `assump:dimension-regime`, `assump:smoothing-scale`, `assump:modewise-gram-margin`, `assump:rank-regime`, `assump:random-tape`, `assump:accuracy-range`; earlier outputs and `E_lb` are derived | noncircular prefix ordering and unresolved bookkeeping | finite induction and exact rollback interface | raw prefix invariant and all budgets, plus branch-qualified `J-row` | R2; uniform finite horizon with no unsupported absorption | PENDING |
| `step_010` | Prove radial/angular/negative-curvature dynamics, radius/step guards, and exact rollback. | `step_009` | `assump:random-tape`; derived prefix; protocol constants | full-space unprojected globalization | exact derivatives, bisection, Armijo, approximate eigenvector | certificate or unchanged rollback outcome | R3; discovery work independent of epsilon | PENDING |
| `step_011` | Prove a history-uniform fresh Haar transaction reaches a valid certificate with probability `p_tx` within `H_tx`. | `step_004`, `step_005`, `step_009`, `step_010` | `assump:random-tape`; derived event/prefix | activation window and matched-label rejection | Haar anti-concentration plus deterministic flow | one-transaction success event | R3; explicit `p_tx,H_tx` | PENDING |
| `step_012` | Amplify the independent tape to all r distinct commits with probability `1-r^(-10)` and polynomial discovery work. | `step_009`, `step_011` | `assump:random-tape`; derived injection/rollback | stopped geometric/binomial tail and separate probabilities | independence and finite union tail | final actual committed tuple | R3; no epsilon dependence | PENDING |
| `step_013` | Prove exact-target balanced Jacobian conditioning, positive chart radius, and PL inequality; define `varrho_PL=c_PL min{1,nu^2}` on `E_lb` and a constant radius at H=0,e=0. | `step_001` | derived pair/triple conditioning; `assump:base-product-balance`; derived `E_lb` branch | gauge and nonorthogonal cross terms | direct Jacobian and Taylor continuity | `varrho_PL,mu_PL >= P^(-D_PL)` after the branch-specific radius choice | R4; regularity-explicit and lower-tail explicit | PENDING |
| `step_014` | Transfer the actual all-commit tuple into the exact target chart with an explicit residual-to-target bound from raw `R-acc`; compare it with the branch-specific `varrho_PL` only after the raw inequality is shown. | `step_005`, `step_008`, `step_012`, `step_013` | derived all-commit outputs, raw `R-acc`, and `E_lb`; `assump:rank-regime` | orbit alignment and branch-aware numerical comparison | triangle/Cauchy-Schwarz and raw R-acc, followed by explicit `E_lb` or exact-limit check | chart-entry certificate with `C(r nu^3+r^2e) <= varrho_PL/2` on the chosen branch | R4; prove the raw target-scale inequality and record branch probability separately | PENDING |
| `step_015` | Prove first-exit invariance and exact-loss balanced Armijo convergence to relative epsilon error without a floor. | `step_013`, `step_014` | `assump:accuracy-range`; derived chart/PL | unprojected update and Taylor/Armijo control | PL, smoothness, path-length first-exit | terminal iterate and residual bound | R4; polynomial work times `log(1/epsilon)` | PENDING |
| `step_016` | Verify public rate specialization, rank/runtime substitutions, separate structural/lower-tail/tape probabilities, and exact baseline limit without hiding raw numerical terms. | `step_001`, `step_009`, `step_012`, `step_014`, `step_015` | all nine primitive assumptions; derived `E_inst`, `E_lb`, and other outputs | hidden dependence, branch absorption, confidence conversion | direct substitution and Rate Specialization Bridge | final material-partial theorem | R1--R4; raw budgets and branch probabilities checked | PENDING |

## Boundary And Example Stress Matrix

- Orthogonal equal-weight: `H=0`, exact numerical limit, empty history, and
  exact target.  Structural charges and actual accepted errors are zero;
  rollback and terminal refinement preserve zero loss.
- Isolated O.1 two-label: all labels other than `p,j` are orthogonal,
  `H_A(p,j)=0`, `H_B(p,j)=H_C(p,j)=h`, and therefore `nu_real=h`.  For
  `ell=p`, expand the diagonal charge into `eta0 h^2`, `h z`, and `z z`;
  retain `e h` and `e^2`, and check `h=e^2`.  For `ell!=p`, verify J=H and
  retain the transitive product.  A larger correlated embedding is not called
  the O.1 family; it is charged using global `nu_real` bounds.
- Small-correlation boundary: test `0<h<<e` and `h=0`; the honest positive
  numerical terms remain visible.  Finite smoothed instances use the derived
  `E_lb` branch for global absorption; the exact H=0,e=0 limit is handled by
  equality rather than a hidden structural charge.
- Lower-tail branch: test `0<nu<nu_lb` as the excluded `E_lb^c` event and
  `nu>=nu_lb` as the theorem branch.  The raw profile and raw global budget
  remain valid in both descriptions; only the latter branch permits a
  `nu^2` simplification.
- Three-label transitive chain: direct pair weight may vanish while a first
  chain in `K_M J_M` remains; the static source and Neumann powers retain it.
- Dense/block frame: use rootwise l2 factorization, not an entrywise sum, to
  obtain `O(r nu^3+r^2e)` and avoid `r^(3/2)` overcount.
- Transaction boundaries: zero score, missing radial root, guard violation,
  ambiguous certificate, line-search exhaustion, tape exhaustion, and exact
  rollback are all explicit failure branches.

## Dependency Notes

The graph is acyclic: static outputs (`steps_001--003`) precede conditional
landscape and matching (`steps_004--005`), which precede the exact transition
and rootwise/global ledger (`steps_006--009`).  Only after the induction is
closed do transaction and tape steps (`steps_010--012`) consume the invariant.
The independent terminal branch (`step_013`) joins at the same-target bridge
`step_014`, followed by descent and rate specialization.  Every theorem-facing
generated output has a producer, all consumers are later in this graph, and
the empty prefix is the unique base case.

The local repaired audit is intentionally weaker than the discarded
`O(h^4+e h^2)` claim, but it is exactly the positive scale present in the
formalized charge.  The rootwise factorization first exports the raw profile
`nu^2+r nu^3+sqrt(r)e` and raw global budget `r nu^3+r^2e`.  A Gaussian
anti-concentration lower-tail event, derived in `step_001`, is the only source
used to compare those numerical terms with `nu^2`; the exact H=0,e=0 branch
uses equality.  No unsupported absorption, lower bound on `h`, or generated
profile assumption is introduced.

## Blockers

None.  The former idea-8 blocker is removed at the idea/formalization level:
the current setting and this sketch use the honest `O(h^4+e h+e^2)` local
interface, retain its positive terms at `h=e^2`, and provide stable steps for
the resulting global and terminal obligations.
