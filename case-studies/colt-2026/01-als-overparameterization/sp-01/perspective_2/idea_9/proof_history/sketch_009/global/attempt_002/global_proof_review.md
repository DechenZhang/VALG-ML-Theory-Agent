# Global Proof Review

## Global-Proof Review Identity

- Branch: `perspective_2/idea_9`.
- Sketch attempt: 9.
- Global unit attempt: 2 under accepted sketch attempt 9.
- Binding setting: `perspective_2/idea_9/setting.md`, SHA-256
  `27315acf705cd791f29d341efaa11aae66803d02b9c240fc613cce06cc57c4b2`.
- Reviewed sketch: `perspective_2/idea_9/proof_sketch.md`, SHA-256
  `ec03ae55ed75fb555f0aa2401c28a14a042d6195679afc41b331e92dbe782fb3`.
- Accepted sketch review: `perspective_2/idea_9/proof_sketch_review.md`,
  SHA-256
  `ed7df07285be0ad9f63cd1ee40d2db961982ee24ad93eb0e573c4dccf6c8f1c9`,
  with `Sketch Review Status = ACCEPTED` and smallest retry target `None`.
- Reviewed global diagnostic: `perspective_2/idea_9/global_proof.md`, SHA-256
  `65b811e3ebe8f4fea0f776a57bf4e51c9c4793f8c704bb445207e38a1ac7060c`.
- Reviewed global status: `PARTIAL_BLOCKED`.
- Reviewed suggested routing token: `None`.
- Triggering global review: SHA-256
  `c825cdc8f1474b3de163e28f21109826d6dbc6bba86fad91888c5cf6a137ce01`.
- No `idea_10` artifact and no artifact under `proof_history/` is consumed.

## Global-Proof Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Blocking Issues

1. The displayed `(Mat-margin)` defect comparison is uniformly impossible
   with the accepted definitions. For unit (u,v,w),
   
   \[
   |s_M|=|\langle E_I^{\rm mat},u\otimes v\otimes w\rangle|
   \le \|E_I^{\rm mat}\|_F\le B_{\rm mat}.
   \]
   
   But `(All-def)` defines
   
   \[
   \epsilon_{\rm all}
   =C_{\rm all}[\cdots+B_{\rm mat}+\cdots]
   \ge C_{\rm all}B_{\rm mat}
   \ge C_{\rm all}|s_M|.
   \]
   
   The second required `(Mat-margin)` inequality would therefore force, for
   every nonzero matched branch,
   
   \[
   C_{\rm mat}C_{\rm all}^2|s_M|^2
   \le {c_{\rm mat}|s_M|^2\over4r\tau_{\max}}.
   \]
   
   The allowed equal-unit-weight family has (	au_{\max}=1), so this is
   false for arbitrarily large (r) for any fixed positive proof constants.
   Neither `E_lb`, exponent choices, nor `(SE-raw)` can repair this lost
   factor: it is already present in the structural `B_mat` term.
2. The all-label stationarity interface also omits the matched-label
   indicator forced by the exact residual decomposition. From
   
   \[
   \Pi_\star R_I
   =\sum_{j\in U_I}\tau_j\phi_j+E_I^{\rm mat},
   \]
   
   dual selection gives the exact equation
   
   \[
   {\bf1}_{\{j\in U_I\}}\tau_jx_{j,N}x_{j,L}
   -s^\parallel\alpha_{j,M}
   =\langle E_I^{\rm mat},d_{j,M}\otimes u_N\otimes u_L\rangle
    +\langle d_{j,M},\zeta_M\rangle.
   \]
   
   The accepted `(All-stat)` instead places
   (	au_jx_{j,N}x_{j,L}) on the left for every (j\in[r]). If the
   missing matched baseline is moved into (h^{\rm all}_{j,M}), that term
   contains
   ({\bf1}_{\{j\in V_I\}}\tau_jx_{j,N}x_{j,L}) and is not controlled by
   the declared `B_mat`/`epsilon_all` budget. Supplying the cancellation or
   a relative matched-coordinate estimate is precisely part of the new
   bridge, so assuming its smallness would be circular.
3. Consequently the positive term in `(Mat-ex)` has no source-adequate
   defect interface at the required observable Hessian scale. The global
   diagnostic correctly includes all nineteen steps and the flow
   `step_003b -> step_003c -> step_003d -> step_004 -> step_005`, but it
   misclassifies this accepted-sketch interface obstruction as unfinished
   step-local algebra. Downstream matching, prefix closure, transaction
   reachability, and final assembly cannot consume `(Mat-margin)` until the
   sketch changes.

## Required Repair Bundle

1. Affected artifact: `proof_sketch.md`, the `step_003c`/`step_003d`
   all-label stationarity interface. Smallest target: `/proof-sketch` with a
   new sketch attempt. Replace `(All-stat)` by the exact unresolved-indicator
   identity, or add an explicit matched-target baseline cancellation whose
   raw bound is proved before support selection. Update the producer
   allocation and every consumer while preserving the setting and goal.
2. Affected artifact: `proof_sketch.md`, `(All-def)`, `(Mat-ex)`, and
   `(Mat-margin)`. Smallest target: `/proof-sketch`. Replace the global
   `+B_mat` squared-defect interface by a decomposition that yields the
   relative or tangent-specific control actually needed at scale
   `|s_M|/sqrt(r tau_max)`, or change the exchange lower bound and its
   threshold comparison consistently. Merely choosing larger exponents or
   constants cannot satisfy the current inequality.
3. Affected sections: exported-interface feasibility, gate evidence,
   generated-output flow, and boundary stress for `step_003d`. Smallest
   target: `/proof-sketch`. Re-audit the protected-mixture state `W_U=0`, a
   matched singleton at the separation boundary, `|U_I|=1`, raw `E_lb^c`,
   and `H=e=0` using the repaired exact equation and defect split. Preserve
   the exact target, procedure, rank, probability modes, rate variables, and
   no-floor baseline.
4. The repaired dependency chain should remain
   `step_003b -> step_003c -> step_003d -> step_004 -> step_005`. The
   user-directed route is sketch revision, not idea generation; no
   `idea_10` artifact should be created or consumed for this obstruction.

## Contract And Status Audit

The input hashes match, and the accepted sketch-review gate is valid. The
global diagnostic contains the required identity, controlled status,
attempted theorem, whole-proof draft, block map, nineteen-row coverage,
dependency and assumption audit, citation/tool audit, quantitative audit,
scope-and-closure certificate, exported-interface table, generated-output
flow, obstruction audit, hard-step list, diagnostic-boundary note, and
controlled `Suggested Routing = None`. `PARTIAL_BLOCKED` is a permitted
diagnostic status.

The attempt-1 document defects are repaired: `step_003d` appears in the block
map and coverage table, every landscape consumer follows it, and the closing
instruction names sketch attempt 9. The diagnostic is nevertheless unsafe to
consume because its own displayed inequalities expose a deeper accepted-
sketch obstruction. Under the contract-defect tie-breaker, the correct route
is `REVISE_SKETCH`, not another rewrite of the same diagnostic.

## Claim And Sketch Fidelity Audit

The attempted public theorem preserves the target-spec `material_partial`
mode, all nine primitive assumptions, the exact asymmetric objective,
balanced full-space protocol, strictly subquadratic rank, separate instance
and tape probabilities, finite horizons, full-state/Frobenius metrics,
arbitrary relative accuracy, and exact/noiseless no-floor baseline. It does
not introduce `idea_10` or a hidden generated assumption.

The global proof is faithful to the accepted sketch's declared nineteen-step
roadmap, but that fidelity does not rescue the theorem-critical bridge. Both
artifacts use the same impossible `epsilon_all`/`B_mat` dominance relation
and the same all-label equation without the unresolved indicator. Repair
therefore requires changing the accepted sketch output target and its
downstream interface, while preserving the theorem contract.

## Theorem-Level Structure Audit

All nineteen stable rows are covered exactly:
`step_001`, `step_002`, `step_003`, `step_003b`, `step_003c`, `step_003d`,
and `step_004` through `step_016`. The block allocation G1--G10 and the
temporal prefix edge are forward ordered. In particular, G4a assigns
coordinate work to `step_003c`, G4b assigns the matched-mass producer to
`step_003d`, and G4c makes `step_004` a transfer before `step_005` matching.

The structural blocker is not missing coverage. G4b cannot produce its
declared output from its declared raw controls. Therefore G4c, G6, G7, and
the final composition have nominal dependency edges but no feasible
theorem-facing value on those edges.

## Dependency And Assumption Audit

Primitive assumptions and generated outputs are correctly separated. Static
events, H/J/K, `Theta_I`, source-normal control, matching, ledgers,
transactions, chart entry, and convergence remain derived. `E_lb` is used
only for named branch simplifications, and raw terms are retained on
`E_lb^c`.

The formal producer order is legal, but the generated-output feasibility
gate fails at `step_003d`. The exact producer for matched-label dual
coordinates has an unresolved indicator; the current consumer instead uses
an all-label target term plus a defect asserted small. Also, no earlier step
produces the relative estimate needed to turn `B_mat` into
`O(|s_M|/sqrt(r tau_max))`. An unconditional certificate theorem may not
complete this missing bridge by treating it as a local hypothesis.

## Citation And Tool Audit

Gaussian concentration/anti-concentration, Schur and Cauchy--Schwarz bounds,
geometric and triangular Neumann inversion, exact multilinear expansion,
Haar anti-concentration, stopped tails, and balanced Jacobian/Taylor tools are
mapped to current objects at adequate diagnostic granularity. The two named
papers are proof-pattern provenance only and no conclusion from their
different procedures is consumed.

The theorem-critical ambient residual-Hessian calculation does not pass the
direct-derivation gate. Exact dual selection gives the indicator equation
above, not the displayed `(All-stat)`, and the proposed raw bound cannot
discharge the second `(Mat-margin)` inequality. No cited theorem or standard
tool supplies the missing cancellation, relative defect estimate, or changed
exchange interface.

## Quantitative Dependence Audit

The diagnostic otherwise preserves the exposed rank, structural and
numerical variables, `sqrt(r)e` and `r^2e` terms, chart radius, PL and
smoothness scales, separate confidence statements, finite horizons, and the
`log(1/epsilon)` terminal factor. Hidden-constant and baseline restrictions
match `setting.md`.

The matched-branch quantitative gate fails independently of exponent order.
The implication

\[
|s_M|\le B_{\rm mat}\le \epsilon_{\rm all}/C_{\rm all}
\]

turns the required squared-defect dominance into a fixed-constant bound on
`r tau_max`. The allowed class includes `tau_max=1` and unbounded `r`, so no
fixed `D_stat`, `D_cap`, `D_gap`, lower-tail branch, or leading constants can
make it uniform. The baseline `H=e=0` branch is vacuous for this check because
then `s_M=0`; it does not validate positive matched mass.

## Scope And Closure Review

The once-drawn event, geometric resolvent, finite triangular source-normal
recurrence, one-time J ledger, exact rollback, finite tape, one-time chart
entry, and terminal PL contraction have concrete noncircular mechanisms and
scope-compatible budgets at diagnostic granularity. Their entry-state and
baseline traces are adequate as planning interfaces.

The G4b certificate is not step-local. Its source equation is wrong on
matched labels unless a large baseline is added to the defect, and its
declared defect bound is too large by at least a factor `sqrt(r tau_max)` for
the required margin. The protected-mixture trace therefore reaches
`step_003d` but does not obtain a valid exchange witness. This is a
`sketch/interface defect`: a same-setting source may still be recoverable by
a new decomposition or tangent-specific cancellation, but the current
accepted claim and dependencies must change before step proving.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_inst`, exact `T`, `E_lb` | event, representation, branch support | Gaussian tails, normalization, direct CP identity, disjoint-pair anti-concentration | primitives -> `step_001` | exact realized objects and stated branch | same normalized-Gram and Frobenius conventions | finite reserves and `P(E_lb^c)<=r^-20` | source assumptions and probability allocation exposed | produced `T` is consumed exactly | once drawn; no accumulation | primitives -> `step_001` -> consumers | zero perturbation, nonzero norms, exact limit pass | step-local | None |
| H/J/K, transfer gaps, `Theta_I`, local `z` | boundedness and generated source interface | Schur/Cauchy--Schwarz and geometric Neumann series | `steps_001--003` | exact array outputs and zero diagonal | same signed-Gram and root/mode/label conventions | `q_res,q_row<=1/4` and finite series | static/history/numerical classes separated | no surrogate tensor target | contractive finite prefix object | `step_001 -> step_002 -> step_003` | empty history, q=0, zero diagonal pass | step-local | None |
| `(Res)`, `(SE-perp/raw/lb)` | positive reserve and same-target bridge | prior audits, pair-Khatri--Rao gap, triangular solve | prior `step_005` records plus `steps_001--003` | residual reserve and normal bound match consumers | exact source projectors and product-sphere metric | unit diagonal, `q_nor<=1/4`, finite inverse | `B_perp` and raw/branch scales exposed | `R_I=Pi R_I+(Id-Pi)R_I` in consumed norms | finite `r e Lambda_nor`; failures zero | prior audit -> `step_003b` -> current landscape | empty, first row, tiny nu, exact branch pass | step-local | None |
| `(All-stat)/(All-def)` | all-label activation input | dual selection of projected residual | `step_003b -> step_003c/003d` | fails: exact source has `1_{j in U}`; displayed source has all-label `tau_j` | same frame convention reveals rather than removes the mismatch | matched baseline must be canceled or bounded before export | current small budget omits the matched target baseline | exact `Pi R=T_U+E_mat` gives the indicator identity | one-prefix defect, but source-to-claim implication is false | nominal `step_003c -> step_003d` edge cannot produce declared value | matched labels and protected mixtures fail the raw-interface audit | sketch/interface defect | /proof-sketch |
| `E_I^mat`, `(Mat-ex)`, `(Mat-margin)` | matched support activation and strict-saddle witness | protected-error tensor and pair/three-mode Hessian rotations | prior `R-euc`, G3/G4a -> `step_003d` | fails at defect dominance even granting a positive exchange term | same-target ambient metric is correct | required `C_mat epsilon_all^2 <= c_mat |s_M|^2/(4r tau_max)` | `|s_M|<=B_mat` and `epsilon_all>=C_all B_mat` contradict the required scale | target identity is exact, but residual-to-curvature adequacy is missing | finite enumeration; structural `B_mat` loss is not absorbable | producer path is noncircular but infeasible | `W_U=0`, unit weights, large r expose the failure; exact zero branch is vacuous | sketch/interface defect | /proof-sketch |
| Matching and protected-prefix closure | generated membership and finite invariant | transferred unresolved singleton, J update, exact rollback | `steps_004--009` | downstream shapes match, but their required G4b input is unavailable | exact atom/residual conventions otherwise pass | success appends; failure identity; finite charge | no independent producer for repaired exchange antecedent | actual slots and residuals are consumed | finite at most r; failed probes zero | nominal `step_003d -> step_004 -> step_005 -> step_009` | first/last commit cannot be certified through blocked matched branch | sketch/interface defect via dependency | /proof-sketch |
| Transaction reachability and tape | generated probability and all-commit output | exact dynamics, Haar window, independent tape | `steps_009--012` | probability mechanism is plausible conditional on valid landscape | full-space protocol matches setting | per-seed probability plus stopped tail | landscape antecedent is blocked, not supplied by tape | successes are actual states; failures exact prestates | finite stopped horizon | `step_009 -> step_010 -> step_011 -> step_012` | rollback boundaries pass; matched-prefix activation remains blocked | sketch/interface defect via dependency | /proof-sketch |
| Exact PL chart, full-state entry, terminal descent | coercivity, basin membership, convergence | exact balanced Jacobian, direct `R-euc`, PL/Armijo | `steps_013--016` plus all-commit tuple | local terminal interfaces match their targets | exact orbit, full-state and Frobenius metrics agree | radius/entry/path/contraction relations exposed | terminal controls are feasible conditional on all commits | no surrogate target and no factor/tensor swap | one-time entry plus contractive finite horizon | geometry -> entry -> descent -> specialization | exact target, chart boundary, epsilon -> 0 pass | step-local locally; final use blocked upstream | /proof-sketch |
| Exact/noiseless baseline | baseline invariance | algebraic equality, exact rollback, exact target stationarity | exact branch through final specialization | preserved by all unaffected blocks | same target and endpoint | all defects vanish at `H=e=0` | no additive remainder introduced | exact `T` throughout | no persistent forcing | exact branch -> final clause | baseline passes, but is vacuous for nonzero matched-mass margin | step-local | None |

## Hard-Step Localization Audit

The unresolved work in G1--G3 and G5--G10 remains plausibly `step-local`
under the unchanged interfaces; this review does not pre-accept any future
proof. G4a/G4b are different. A step worker cannot repair the missing
matched-label indicator while preserving `(All-stat)`, nor can it prove the
stated `(Mat-margin)` from `epsilon_all` because the definitions themselves
give the opposite scaling. These obligations are `sketch/interface defects`,
not difficult local estimates.

The smallest sound change is a new sketch attempt that fixes the exact
producer equation, defect decomposition, exchange target, and consumer
interfaces. A `/global-proof` rerun under the unchanged sketch would only
repeat the contradiction.

## Early Idea-Failure Screen

- Contract contradiction: no theorem-contract change is yet forced. The
  setting, algorithm, rank, metric, probability modes, endpoint, and baseline
  can remain unchanged while the landscape bridge is redesigned.
- Missing mechanism: the proposed matched exchange has a plausible ambient
  Hessian source, but its current source equation and quantitative defect
  interface are false. A future proof step is not a substitute.
- Source-convention stress: exact dual selection produces the unresolved
  indicator. Treating the protected target baseline as a small error is not
  source-compatible.
- Residual-to-target stress: all tensors use the same target, but the coarse
  Frobenius bound `B_mat` cannot be transferred into the needed relative
  curvature margin after it is squared.
- Entry-state trace: at `W_U=0`, unresolved activation is inactive and the
  matched mechanism is the sole route. Its margin fails before transfer to
  the observable Hessian, so the protected-mixture state remains unresolved.
- Persistent-defect and scope: this is not an accumulation failure; it occurs
  in one finite prefix and cannot be repaired by a longer budget.
- Dependence and mode: `E_lb` and exponent choices do not affect the
  structural contradiction. Exposing a new `r` loss without changing the
  exchange interface would still leave the wrong inequality.
- Baseline invariance: `H=e=0` remains exact, but zero matched mass cannot
  certify the positive-mass branch.
- Same-setting repair plausibility: an indicator-correct decomposition and a
  tangent-specific cancellation or relative-error bridge may plausibly repair
  the roadmap under the same theorem contract. Therefore the status is
  `REVISE_SKETCH`, not `IDEA_FAIL`. Per the user-directed policy, repeated
  activation/exchange blockers remain on `/proof-sketch` and never create
  `idea_10`.

## Review Rationale

Global unit attempt 2 successfully repairs every attempt-1 document and
bookkeeping defect: it covers all nineteen rows, uses the exact sketch-9
dependency flow, audits both raw branches, preserves the setting and
baseline, and does not consume `idea_10`. Those repairs make the deeper issue
visible. The accepted sketch's own `All-stat`/`All-def` and
`(Mat-margin)` interfaces are mutually incompatible with the exact residual
decomposition and with `|s_M|<=B_mat`. Because correcting them changes a
step claim, raw-control interface, and downstream exchange target, the
smallest sound route is `/proof-sketch`.
