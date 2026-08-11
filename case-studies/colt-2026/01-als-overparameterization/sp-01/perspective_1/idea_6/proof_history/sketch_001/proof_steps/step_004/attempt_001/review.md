# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_004/proof.md`
- Frozen SHA-256:
  `ef2ea84442e6564f8e80c030dbcb1e88485fca5b4ee4f8a727daea83bf75d36a`
- Accepted dependencies:
  `perspective_1/idea_6/proof_steps/step_001/proof.md`, frozen SHA-256
  `d8a566c9d56d59699fc65dcc5cd79db0cea9ed2a73df7d703b2bc17aa25f407c`,
  and `perspective_1/idea_6/proof_steps/step_003/proof.md`, frozen SHA-256
  `caa4c7a44f21a70e29edfb168aa4aed7f52d9a38e425b0a49b095f66857e2904`;
  both have matching `Step-Review Status = ACCEPTED` reviews.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004

## Blocking Issues

1. Location: Proposition~\ref{prop:step-004-chart}, especially (36)-(46),
   and Proposition~\ref{prop:step-004-certificate}, especially (49).
   Defect: the proof establishes contraction for a target-oriented chart map
   and then iterates that contraction along the setting's raw Jacobi
   trajectory without proving the required modewise sign-equivariance and
   orientation identity. If
   `h_M=sigma_M bar h_M`, trilinearity should give
   `J_U(h)=sigma_V sigma_W J_U(bar h)`, with the two cyclic analogues, so
   target-positive reorientation of every raw iterate follows exactly the
   oriented chart map and leaves `zeta` unchanged. The current proof neither
   states this bridge nor verifies that the coefficient-positive normalized
   vector used in (36)-(44) is the target-positive output representative
   (the missing check follows from
   `<g_(M,j),G_M(e_j+z_M)> >= 1-q_* ||z_M||_1 > 0`). Downstream effect:
   independently orienting successive raw states does not by itself make
   `D_s` in (49) a sequence of successive iterates of the contraction, so
   the geometric displacement bound and hence `E_cert` are not yet proved
   for the literal proposal trajectory. Smallest repair direction: add one
   named local sign/projective-equivariance claim, or an equally explicit
   theorem-style subclaim inside the existing chart/certificate units, prove
   the output-sign margin and the three sign formulas, identify the
   reoriented raw trajectory with the chart-map trajectory, and only then
   apply Banach successive-displacement decay. No sketch claim, dependency,
   primitive assumption, horizon, or numerical constant needs to change.

## Per-Lemma Audit

### unit_001: Same-old-state Jacobi ratio recurrences

- Statement fidelity: The lemma targets exactly the accepted sketch-row
  `R,S` recurrences under the accepted realized-geometry interface and the
  local condition `Gamma R_t<1`.
- Proof validity: Equation (6) gives the target-coordinate denominator before
  division. The direct competing coefficient and the remaining Gram-row
  leakage give (7); summing the direct, target-leakage, and off-target-leakage
  terms gives (8). Combining a maximum new ratio with the summed companion
  ratio yields (3)-(4) without cyclic reuse of a committed mode.
- Cited-result and assumption audit: Only accepted
  Proposition~\ref{prop:step-001-smoothed-event} is consumed. Weight, Gram,
  nonzero-column, and same-old-state conventions are restated in current
  notation, and no generated denominator is assumed.
- Rigor checklist: Absolute values handle arbitrary coefficient signs;
  symmetry supplies column as well as row mass; all target and mode
  quantifiers are retained; and the denominator is positive before every
  normalization.
- Local adversarial test: At `R_0=19/20`, `Gamma=1.01`, and `q=q_*`, the
  denominator remains positive. At `q=0,Gamma=1`, the exact formulas reduce
  to `(A_l^+,B_l^+,C_l^+)=(B_l C_l,A_l C_l,A_l B_l)`.
- Contribution to target step: Supplies the exact noncircular recurrence and
  nonzero-contraction source used by burn-in.
- Verdict: PASS
- Repair direction: None.

### unit_002: Finite burn-in and denominator closure

- Statement fidelity: The proposition proves denominator persistence and the
  declared finite `R,S` burn outputs for every accepted window witness.
- Proof validity: The window gives `R_0<=19/20` and `S_0<=rR_0`. Direct
  recomputation of the scalar envelope confirms the upward-rounded table,
  including `R_10<=5.9911e-8<6.0e-8`. At `R_t<=6.2e-7`, the coefficients in
  (16) satisfy `A_t<2.473e-4<1/4000` and
  `B_t<5.976e-8`; (18)-(19) then close both burn indices.
- Cited-result and assumption audit: The accepted window/coverage witness and
  the accepted realized `q,Gamma` bounds are the only generated inputs.
  `m_r`, `C_burn`, and the invariant interval are derived locally.
- Rigor checklist: The first denominator is checked before the first update,
  the scalar map is monotone on the verified domain, the two required
  consecutive `S` indices are covered, and the `r=3` endpoint satisfies the
  horizon inequality.
- Local adversarial test: Substitution at the maximal allowed `q,Gamma,R_0`
  preserves the `31/32` denominator reserve. Persistent nonzero `q` forcing
  is retained through `B_t` rather than dropped.
- Contribution to target step: Produces `E_RS` and the finite burn source for
  chart entry.
- Verdict: PASS
- Repair direction: None.

### unit_003: Dual-l1 bridge and projective-chart entry

- Statement fidelity: The lemma constructs the accepted target dual,
  produces `a_t`, proves the advertised bridge, and reaches the required
  burn-state radii.
- Proof validity: The accepted Gram row bound gives invertibility of `H_M`;
  every post-first-update state lies exactly in `range(G_M)`, and
  `L_M^T G_M=I`. The contraction norm dominates its target correlation, so
  (26) is valid. Equations (27) and the unit-norm coefficient decomposition
  prove `a_(t_b)<1/1024` and ambient error at most `2a_(t_b)`.
- Cited-result and assumption audit: The Gram dual comes from accepted
  `E_sm`, while the denominator and `S_(t_b-1)` controls come from the named
  preceding proposition. No chart membership or selected-state coefficient
  bound is assumed.
- Rigor checklist: Target orientation is legal because the target
  correlation is nonzero, the coefficient vector is unique because `G_M`
  has full column rank, and the argument has no hidden `sqrt(r)` conversion.
- Local adversarial test: A negative target coefficient would force a
  negative target correlation when `a<1`, contradicting the chosen
  orientation; hence the ambient conversion is valid at the chart boundary.
- Contribution to target step: Produces `E_chart_l1` and a derived, rather
  than assumed, entry into the chart.
- Verdict: PASS
- Repair direction: None.

### unit_004: Invariant contractive projective chart

- Statement fidelity: The proposition contains the accepted chart radii,
  self-map, contraction-norm interval, Lipschitz objective, and fixed-point
  output.
- Proof validity: The coefficient and Gram estimates (33)-(39), ratio
  Lipschitz bound (42), Hadamard product difference (43), and normalized
  output estimate (44) are algebraically and numerically valid. However, the
  proof does not verify that the coefficient-positive output representation
  in (36) is the target-positive representative defining the oriented chart
  map. That missing sign check is needed both for the stated map identity and
  for its use on raw iterates.
- Cited-result and assumption audit: Banach's theorem and the normalization
  inequality are restated and otherwise have their hypotheses discharged.
  The missing item is a direct trilinear sign calculation, not an external
  citation or a dependency defect.
- Rigor checklist: The chart is closed because the ambient cap supplies the
  strict positive target margin, and the displayed norm floor excludes zero
  contractions. The unresolved orientation bridge is a WLOG/sign issue
  essential to the map being contracted.
- Local adversarial test: The bound `Z<4.99e-6` implies the available repair
  margin `1-q_* Z>0`; thus no counterexample to the chart estimate is found,
  but that implication is absent from the submitted proof.
- Contribution to target step: Supplies the valid numerical chart estimates,
  but its exact target-oriented map interface needs the local sign bridge
  before it can feed certification.
- Verdict: REVISE_STEP
- Repair direction: Prove the output target-sign margin and explicitly bind
  the normalized vector in (36) to the target-positive oriented Jacobi map.

### unit_005: Finite certification and same-state storage interface

- Statement fidelity: The proposition targets the exact inclusive
  certification window, stored-state convention, nonzero same-state
  look-ahead, and `E_cert` output.
- Proof validity: Conditional on a genuine oriented chart-map trajectory,
  (47), (49)-(51), and the inclusive endpoint arithmetic are correct.
  The proof does not establish that modewise reorientation of the actual raw
  Jacobi trajectory is that chart-map trajectory, so Banach decay cannot yet
  be iterated as written.
- Cited-result and assumption audit: The accepted coverage result and named
  chart proposition are the correct inputs. The missing sign-equivariance is
  a local direct consequence of the setting's trilinear Jacobi map and does
  not require a new assumption or dependency.
- Rigor checklist: Stored state versus look-ahead is handled correctly, and
  a stored arbitrary slot has defined nonzero look-aheads by the procedural
  branch. The unresolved sign identity is required before the projective
  minimum in `zeta` can inherit the geometric contraction bound.
- Local adversarial test: Independent sign flips in the three raw modes test
  the missing interface directly: the output signs are the pair products of
  the held-mode signs. Those formulas make the claim repairable, but they are
  not stated or proved in the artifact.
- Contribution to target step: Would produce `E_cert` once the raw-to-oriented
  trajectory identity is supplied; without it, the target certification
  conclusion is incomplete.
- Verdict: REVISE_STEP
- Repair direction: Add the three modewise sign formulas, prove `zeta`
  invariance, and identify consecutive reoriented raw states with consecutive
  iterates of the contracted chart map before (49).

## Hidden Subclaim Scan

The independent modewise sign-equivariance and raw-to-oriented trajectory
identity are used but absent from the local lemma map and derivation. The
same missing bridge includes the target-sign check for the normalized
relative vector in (36). No other hidden independent subclaim was found: the
ratio recurrence, finite numerical ledger, dual-coordinate construction,
self-map estimates, norm floors, fixed-point theorem, horizon arithmetic,
and same-state storage convention are each localized and derived.

## Target Claim Audit

The proof establishes the exact `R,S` recurrences, denominator persistence,
finite burn bounds, `a_t` bridge, chart entry, numerical self-map and
Lipschitz bounds, contraction-norm interval, and fixed point under the
accepted inputs. It does not yet establish `zeta<=tau_r` for the literal raw
proposal trajectory, because the target-oriented contraction has not been
shown to be its projective reorientation. Therefore `E_cert`, and hence the
full exact `step_004` target, is incomplete under the submitted derivation.

## Explicit Rate Audit

All exposed variables, hidden-constant exclusions, probability mode,
fixed-finite horizon, and norm modes are stated. The scalar burn calculations
support `C_burn>=13`, and the endpoint calculation supports
`C_cert>=21`; no persistent `q_real` term or confidence factor is dropped.
The baseline formulas at `q_real=0,Gamma=1` are preserved. The certification
rate is nevertheless not consumable until the sign-equivariance bridge makes
the geometric chart recurrence applicable to the actual trajectory; the
repair changes no rate, threshold, probability conversion, or horizon mode.

## Notation Surface Audit

The public, appendix-local, and proof-local classifications are otherwise
economical and traceable to setting or dependency objects. The repaired
proof should classify the mode-sign tuple and the reoriented trajectory as
proof-local and should not export them beyond the certification argument.
The public output surface remains exactly `E_RS`, `E_chart_l1`, `E_chart`,
and `E_cert`.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-004-jacobi-recurrence},
Proposition~\ref{prop:step-004-burn}, and
Lemma~\ref{lem:step-004-dual-entry} validly produce recurrence, burn, and
chart-entry outputs. Proposition~\ref{prop:step-004-chart} supplies valid
numerical self-map and contraction estimates after its output-sign identity
is made explicit. The current assembly then jumps from that oriented map to
the literal raw trajectory in
Proposition~\ref{prop:step-004-certificate}; the missing sign-equivariance
claim is the sole failed assembly edge.

## Review Rationale

`REVISE_STEP` is the smallest sound status. The defect is a missing local
sign/projective derivation inside `step_004`; all required mechanism sources
already exist in the setting's trilinear map and the accepted chart bounds.
The recurrences, dependencies, sketch-row claim, output targets, assumptions,
rates, and constants need no change, and neither accepted dependency is
flawed. A repaired producer proof still requires a fresh
`/proof-step-review step_004` before downstream consumption.
