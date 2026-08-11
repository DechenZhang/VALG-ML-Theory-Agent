# Proof Step Review

## Step Review Identity

- Sketch attempt: 8
- Step ID: `step_001`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_1/idea_5/proof_steps/step_001/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: simultaneous relative Gaussian event

- Statement fidelity: PASS.  The proposition states the exact simultaneous
  norm, directional, and within-mode cross-quadratic event needed by the
  target, under the setting Gaussian law and the declared confidence domain.
- Proof validity: PASS.  The scaling
  `h_(Mj)=(s_(Mj)/sqrt(n))X_(Mj)`, thresholds at `u=L` and `u=2L`, and the
  union counts `3r`, `3r^2`, and fewer than `3r^2/2` are consistent.  The
  displayed losses sum to `31 delta_sm/243 < delta_sm` for `r>=3` and
  `0<delta_sm<1`.
- Cited-result and assumption audit: PASS.  The scalar/norm Gaussian bounds
  and the independent Gaussian bilinear consequence are restated in current
  notation, with Gaussianity and independence discharged from
  `assump:gaussian-smoothing`.
- Rigor checklist: PASS.  The event is static and high-probability over the
  smoothing draw only; there is no hidden trajectory, conditioning, or
  initialization-probability conversion.
- Local adversarial test: PASS.  The inequalities remain valid at the
  smallest permitted `r=3` and at the confidence-domain boundary; the
  bilinear threshold includes both the square-root and subexponential terms.
- Contribution to target step: It supplies the single raw event from which
  all later realized-geometry conclusions are derived.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact normalization reserve and norm retention

- Statement fidelity: PASS.  The lemma states the exact decomposition
  `d=1+x+nu`, the reserve and denominator bounds, and the required raw-column
  norm floor under the correct primitive assumptions and event.
- Proof validity: PASS.  The orthogonal decomposition, positivity of
  `d+1+x`, and the identity for `nu` are valid.  The repaired table defines
  `bar f_(Mj)` as the setting raw columns and
  `alpha_(Mj)=||bar f_(Mj)||`; hence (13) correctly reads
  `||bar f_(Mj)+g_(Mj)||=alpha_(Mj)d_(Mj)`.  The lower bound follows from
  `alpha_(Mj)>=kappa_0^(-1)` and `d_*<1/2`.
- Cited-result and assumption audit: PASS.  It consumes only unit_001 and
  the primitive base-scale and smoothing margins; no realized norm or
  denominator is assumed.
- Rigor checklist: PASS.  The explicit display (11a) proves
  `nu_* <= q_*^2/3000`, and (10)--(12) preserve all quantifiers, scales, and
  positivity conditions.
- Local adversarial test: At maximal allowed `h_*` and opposite first-order
  displacement, the denominator remains positive and the strict
  `(2kappa_0)^(-1)` floor still holds.
- Contribution to target step: Supplies raw norm retention and the common
  normalization denominator used by units 003, 004, and 006.
- Verdict: PASS
- Repair direction: None.

### unit_003: normalized Gram rows with a separated perturbation ledger

- Statement fidelity: PASS.  The proposition targets exactly the realized
  factor row bound `q(E_M)<=q_*`, with the base, linear, quadratic, and
  normalization contributions separated.
- Proof validity: PASS.  The repaired derivation defines
  `E_M=[e_(M1),...,e_(Mr)]` and identifies `E_U=U`, `E_V=V`, and `E_W=W`.
  Expansion (15), the row budgets (16)--(19), and the denominator factor are
  algebraically correct.  Display (20a) explicitly verifies the final bound
  by `0.501 q_* < q_*` at `q_*=1/4096`.
- Cited-result and assumption audit: PASS.  The base row slack is exactly
  `assump:cumulative-gram`; the Gaussian event and normalization result are
  named and consumed without importing any generated condition.
- Rigor checklist: PASS.  The `r` row factor, finite-union `sqrt(L)` factor,
  linear scale `kappa_0 rho/sqrt(n)`, quadratic scale
  `kappa_0^2 rho^2/sqrt(n)`, and normalization divisor are all visible.
- Local adversarial test: Saturating both factor row budgets still gives the
  product/divisor bound in (20a); no sign, ordering, or unproved spectral
  shortcut is used.
- Contribution to target step: Establishes `q_real<=q_*` and the row bounds
  consumed by unit_005.
- Verdict: PASS
- Repair direction: None.

### unit_004: realized weight comparison

- Statement fidelity: PASS.  The lemma proves exactly `Gamma<=1.01` from the
  primitive base-weight balance and the preceding normalization conclusion.
- Proof validity: PASS.  The raw-norm product identity is correct, and the
  extremal ratio in (22), followed by the logarithmic estimate, is below
  `1.002` and hence `1.01`.
- Cited-result and assumption audit: PASS.  Only the named normalization
  result and `assump:base-weight-balance` are used; all factors are setting
  objects or explicitly defined aliases.
- Rigor checklist: PASS.  Positivity and the ratio denominator follow from
  unit_002, with no hidden dependence on the base triple or proposal draw.
- Local adversarial test: The maximal base ratio `1+1/800` and opposite
  normalization deviations satisfy the displayed bound with strict slack.
- Contribution to target step: Supplies the realized weight interface for
  the exported event.
- Verdict: PASS
- Repair direction: None.

### unit_005: cyclic Khatri--Rao spectral floor

- Statement fidelity: PASS.  The claim covers every cyclic pair and the exact
  floor `1-q_*^2`.
- Proof validity: PASS.  The Khatri--Rao Gram identity is exact; the product
  of the two absolute row sums is at most `q_*^2`; unit diagonal and
  symmetry permit the stated Gershgorin conclusion.
- Cited-result and assumption audit: PASS.  Gershgorin is restated before
  use and its hypotheses are discharged by the realized factor Gram result.
- Rigor checklist: PASS.  The argument is deterministic on the same event
  and does not conflate factor row mass with a spectral-norm assumption.
- Local adversarial test: A row saturating `q_*` in each of the two factors
  still yields the claimed `q_*^2` Hadamard row budget, independent of signs.
- Contribution to target step: Establishes all three cyclic conditioning
  floors.
- Verdict: PASS
- Repair direction: None.

### unit_006: exported smoothed-instance event

- Statement fidelity: PASS.  The proposition lists exactly the four public
  conclusions, the static timing, and the probability `1-delta_sm`.
- Proof validity: PASS.  `E_sm` is the intersection of the proved event and
  its deterministic consequences; no generated geometry condition is moved
  into the assumptions.  The probability is inherited without an extra
  union or confidence conversion.
- Cited-result and assumption audit: PASS.  Every consumed result is named
  by a theorem-style label, and this step has no dependency artifacts.
- Rigor checklist: PASS.  The event is determined before proposal/restart
  randomness and therefore has the required instance-side probability mode.
- Local adversarial test: Empty or unsuccessful proposal slots do not affect
  the static event, since their randomness is outside its definition.
- Contribution to target step: Exports the exact `E_sm` interface consumed by
  later sketch steps.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

All independent nontrivial claims are represented in the six-row local lemma
map and have matching theorem-style statements and labels.  The raw Gaussian
event, normalization identity and reserve, normalized Gram rows, weight ratio,
Khatri--Rao floor, and event packaging are each proved in a named unit.
The numerical absorptions are now displayed in (11a) and (20a), rather than
hidden in prose.  The Gaussian, bilinear, and Gershgorin tools are restated
before use, and target-step assembly cites proposition/lemma/claim labels
instead of unit IDs or subsection titles.  No dependency step, generated
invariant, or extra bridge is silently assumed.

## Target Claim Audit

The proof establishes the exact accepted sketch row uniformly over every
deterministic base triple satisfying `assump:base-scale`,
`assump:cumulative-gram`, and `assump:base-weight-balance`, and over the
remaining declared primitive parameter domain.  With probability at least
`1-delta_sm` over the once-drawn smoothing, it proves raw norm retention,
`q_real<=q_*`, `Gamma<=1.01`, and all three cyclic Khatri--Rao floors.  The
linear, quadratic, and normalization scales, row factors, and finite union
factors are separately exposed.  The event is static, the probability mode
is instance-side high probability, and no proposal or restart randomness is
introduced.  The deterministic rho-zero orthogonal/equal-weight reduction is
also preserved.  There is no target strengthening, weakening, or scope drift.

## Explicit Rate Audit

- Rate-bearing status: applicable; this is the static smoothed-instance
  geometry objective.
- Exposed variables: `n`, `r`, `kappa_0`, `rho`, and `delta_sm`, with fixed
  `q_*=1/4096`, base row slack `q_*/4`, and base weight slack `1+1/800`.
- Hidden constants: only the displayed universal Gaussian and bilinear
  constants; no base triple, realized draw, proposal variable, or generated
  condition number is hidden.
- Fixed quantities and modes: the deterministic base triple and `q_*` are
  fixed; the probability mode is one high-probability smoothing event; the
  horizon mode is static/fixed-instance; norm modes are Euclidean column
  norm, induced Gram row l1 mass, and Khatri--Rao smallest eigenvalue.
- Admissibility and auxiliary choices: `s=kappa_0 rho<=q_*/128`,
  `t=sqrt(log(9r^2/delta_sm)/n)`, and
  `r(s+s^2)t<=q_*/32` are explicit.
- Term absorption: (17)--(20), (11a), and (20a) display every linear,
  quadratic, normalization, denominator, and final row-budget domination.
- Probability conversion: (4)--(6) explicitly union `3r` norm events,
  `3r^2` directional events, and fewer than `3r^2/2` bilinear events, with
  total loss `31delta_sm/243`; no instance/initialization conversion is
  needed here.
- Rate specialization contribution: `E_sm` is the static producer for later
  conditional steps and adds no confidence dependence to the rank.
- Baseline reduction: setting perturbations to zero in the declared
  deterministic limiting specialization gives `d=1`, base factors/weights,
  `q_real=0`, `Gamma=1`, and identity Khatri--Rao Grams for an orthogonal
  equal-weight base, without changing the positive-smoothing domain.

## Notation Surface Audit

The public-facing helper is only `E_sm`; `E_G` is proof-local, the raw and
normalized unified mode symbols are explicitly mapped and classified as
appendix-local, and `E_M` is an appendix-local alias explicitly identified
with the setting matrices `U,V,W`.  The scalar ledgers are deterministic
appendix-local expressions, while `x_(Mj)`, `nu_(Mj)`, and `B_*` are
proof-local.  Every new symbol has visible provenance from the setting or a
named local derivation, no symbol is rebound with a changed meaning, and the
step exports only `E_sm`.

## Target-Step Assembly Audit

The named local results jointly imply the target in an acyclic order:
Proposition~\ref{prop:step-001-gaussian-event} produces `E_G`; Lemma~\ref{lem:step-001-normalization}
provides norm and denominator control; Proposition~\ref{prop:step-001-gram}
provides all realized Gram row bounds; Lemma~\ref{lem:step-001-weights}
provides `Gamma`; Claim~\ref{claim:step-001-kr-floor} provides all three
spectral floors; and Proposition~\ref{prop:step-001-event} exports `E_sm`.
The assembly uses theorem-style labels, has no dependencies, and does not
rely on a subsection title, bare unit ID, or stale attempt-1 review as proof
authority.

## Review Rationale

ACCEPTED is the smallest sound status.  The repaired attempt-2 proof closes
all three attempt-1 blockers: `bar f_(Mj)` is defined directly from the
setting raw columns, `E_M` is explicitly bound to `U,V,W`, and the two
numerical absorptions are shown in (11a) and (20a) and carried into the rate
audit.  Direct checks of the Gaussian union, normalization algebra, Gram-row
ledger, weight comparison, Khatri--Rao identity, quantifiers, probability
mode, explicit dependencies, notation provenance, and baseline reduction
found no remaining local flaw.  The accepted sketch and global-proof
interfaces are unchanged, there are no dependencies to block, and
`Smallest Retry Target = None` is therefore correct.
