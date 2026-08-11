# Proof Step Review

## Step Review Identity

- Sketch attempt: 8
- Step ID: `step_001`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_5/proof_steps/step_001/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_001

## Blocking Issues

1. **Undefined raw-column symbol in the normalization proof (proof.md:290).**
   The displayed identity
   `||\bar f_{Mj}+g_{Mj}||_2=\alpha_{Mj}d_{Mj}` uses `\bar f_{Mj}`, which is
   never defined in the setting or in this step.  The preceding notation
   defines `\bar e_{Mj}` and `\alpha_{Mj}`, and the corresponding raw column
   is `\alpha_{Mj}\bar e_{Mj}+g_{Mj}` (or the appropriate one of
   `\bar a_j,\bar b_j,\bar c_j`).  As written, the equality does not prove
   the raw-column norm floor in unit_002, which is then consumed by the
   exported event and the downstream weight argument.  Smallest repair:
   replace `\bar f_{Mj}` by `\alpha_{Mj}\bar e_{Mj}` (and retain the explicit
   mode mapping), or inline the three setting-level raw columns.

2. **Undefined realized-matrix alias in the Gram proposition (proof.md:303--306).**
   The local derivation defines columns `e_{Mj}` but never defines a matrix
   `E_M`; nevertheless unit_003 states and proves `q(E_M)` for
   `E_M\in\{U,V,W\}`.  The setting does define `U,V,W`, but `E_M` is a new
   helper object and its identity is not recoverable by the strict notation
   contract.  This leaves the exported `q_real` conclusion and the
   Khatri--Rao consumer without a formally bound object.  Smallest repair:
   define `E_M:=[e_{M1},\ldots,e_{Mr}]` immediately after the column
   definition and state `E_U=U,E_V=V,E_W=W`, or use `U,V,W` directly in
   (14)--(20).

3. **Two numerical absorptions are asserted rather than displayed.**
   The inequalities `nu_*<=q_*^2/3000` (proof.md:282) and
   `B_*/(1-d_*)^2<q_*` (proof.md:356--360) are numerically true under the
   stated margins, and no counterexample was found.  However, the explicit
   rate contract requires a displayed domination calculation, not only
   "From (10)" or "direct numerical arithmetic."  Smallest repair: add, for
   example,
   `nu_* <= (q_*/40)^2/[2(1-q_*/40)] < q_*^2/3000` and
   `(q_*/2+q_*^2/768)/(1-q_*/32)^2 <= 0.501 q_* < q_*`, with
   `q_*=1/4096` stated.  This is a local presentation/rigor repair, not a
   change to the sketch claim or assumptions.

## Per-Lemma Audit

### unit_001: simultaneous relative Gaussian event

- Statement fidelity: `PASS`.  The event contains exactly the norm,
  directional, and within-mode cross-quadratic controls needed by the target,
  with the Gaussian assumptions and confidence domain stated.
- Proof validity: `PASS`.  The norm, scalar, and bilinear thresholds are
  instantiated consistently with `h_{Mj}=(s_{Mj}/\sqrt n)X_{Mj}`.  The counts
  `3r`, `3r^2`, and fewer than `3r^2/2` give failure at most
  `31 delta_sm/243 < delta_sm` for `r>=3` and `delta_sm<1`.
- Cited-result and assumption audit: `PASS`.  Each Gaussian inequality and
  the independent bilinear consequence is restated in current notation, and
  independence follows from `assump:gaussian-smoothing`.  There are no
  dependency artifacts.
- Rigor checklist: `PASS`.  The probability mode is a single static
  high-probability event; no trajectory or conditioning upgrade is used.
- Local adversarial test: `PASS`.  The worst allowed `r=3` and
  `delta_sm` approaching one still leave the displayed union inequalities
  valid.
- Contribution to target step: Supplies the sole raw event from which all
  realized-geometry conclusions are derived.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact normalization reserve and norm retention

- Statement fidelity: `PASS` apart from the notation defect below.  The
  claimed decomposition, denominator reserve, and raw-column floor match the
  target interface.
- Proof validity: `REVISE_STEP`.  The orthogonal decomposition and
  `nu_*` bound are algebraically sound, and the margin gives positive
  denominators, but equation (13) contains the undefined `\bar f_{Mj}`.
- Cited-result and assumption audit: `PASS`.  It consumes only unit_001 and
  primitive scale/smoothing assumptions; no realized norm is assumed.
- Rigor checklist: `REVISE_STEP`.  The numerical reserve bound at line 282
  should be expanded under the explicit-rate contract (Blocking Issue 3).
- Local adversarial test: The lower bound follows immediately after replacing
  the symbol by the actual raw column; before that replacement the norm
  identity cannot be parsed.
- Contribution to target step: Norm retention and the common normalization
  denominator are necessary inputs to units 003, 004, and 006.
- Verdict: REVISE_STEP
- Repair direction: Apply Blocking Issues 1 and 3 locally; no change to the
  unit statement or sketch row is needed.

### unit_003: normalized Gram rows with a separated perturbation ledger

- Statement fidelity: `PASS` apart from the matrix-alias defect.  It targets
  the exact `q_real<=q_*` interface and keeps base, linear, quadratic, and
  normalization contributions separate.
- Proof validity: `REVISE_STEP`.  Expansion (15), row budgets (16)--(19),
  and the denominator estimate (20) are valid, but `q(E_M)` is applied to an
  undefined object at lines 303--306.
- Cited-result and assumption audit: `PASS`.  The proposition explicitly
  consumes the Gaussian event and normalization result, and the base row
  slack comes from `assump:cumulative-gram`.
- Rigor checklist: `REVISE_STEP` only for the unexpanded final numerical
  domination in (20), covered by Blocking Issue 3; the row arithmetic itself
  is correct.
- Local adversarial test: Taking the maximum row and the largest allowed
  denominator perturbation gives the displayed upper bound; it remains well
  below `q_*` once the alias and one-line numerical check are supplied.
- Contribution to target step: Establishes the three realized factor Gram
  row bounds used by `q_real` and unit_005.
- Verdict: REVISE_STEP
- Repair direction: Define `E_M` explicitly (or inline `U,V,W`) and display
  the numerical inequality in Blocking Issue 3.

### unit_004: realized weight comparison

- Statement fidelity: `PASS`.  The conclusion is exactly `Gamma<=1.01` and
  uses the stated base weight balance plus the normalization result.
- Proof validity: `PASS` conditional on the repaired unit_002 notation.  The
  product identity and ratio bound (22) are correct, and the logarithmic
  estimate has ample slack.
- Cited-result and assumption audit: `PASS`.  Only the primitive weight
  balance and the named prior local normalization result are used.
- Rigor checklist: `PASS`.  Positivity follows from the normalization reserve;
  the ratio, fixed constants, and no-proposal probability mode are explicit.
- Local adversarial test: At the extremal base ratio `1+1/800` and maximal
  opposite normalization deviations, (22) remains below `1.002` and hence
  `1.01`.
- Contribution to target step: Supplies the realized weight interface for
  unit_006 and later conditional consumers.
- Verdict: PASS
- Repair direction: None beyond the producer repair in unit_002.

### unit_005: cyclic Khatri--Rao spectral floor

- Statement fidelity: `PASS`.  It covers all three cyclic pairs and the exact
  floor `1-q_*^2`.
- Proof validity: `PASS`.  The Khatri--Rao Gram identity, Hadamard row-product
  bound, unit diagonal, and Gershgorin application are all valid.
- Cited-result and assumption audit: `PASS`.  The symmetric Gram hypotheses
  and the realized row bounds are explicitly discharged through unit_003;
  Gershgorin is restated before use.
- Rigor checklist: `PASS`.  The argument is deterministic on the realized
  event and does not confuse factor row mass with spectral norm.
- Local adversarial test: If one factor row saturates `q_*` in absolute mass,
  the product bound is still `q_*^2`; no sign or ordering assumption is used.
- Contribution to target step: Establishes the conditioning floor for each
  cyclic design.
- Verdict: PASS
- Repair direction: None beyond the unit_003 alias repair.

### unit_006: exported smoothed-instance event

- Statement fidelity: `PASS`.  The event lists precisely the four target
  conclusions, static timing, and the required smoothing probability.
- Proof validity: `PASS` conditional on units 001--005 after their local
  notation repairs.  The intersection is static and no generated condition
  is promoted to a primitive assumption.
- Cited-result and assumption audit: `PASS`.  All consumed results are named
  theorem-style local results; there are no external or dependency claims.
- Rigor checklist: `PASS`.  The union probability is inherited without a
  second confidence conversion, and proposal/restart randomness is excluded
  from this event as required.
- Local adversarial test: The event remains valid when any downstream proposal
  event is empty; only the static smoothing draw is being certified here.
- Contribution to target step: Exports `E_sm` with the exact public interface.
- Verdict: PASS
- Repair direction: None beyond repairing the producer units.

## Hidden Subclaim Scan

The six independent claims (raw concentration, normalization/norm retention,
Gram rows, weights, Khatri--Rao floor, and event assembly) are all present in
the local lemma map and have matching theorem-style labeled subsections.  The
Gaussian and Gershgorin uses are restated before application, and the assembly
uses named proposition/lemma/claim references rather than unit IDs.  No
dependency step or generated invariant is silently assumed.  The only
contract-visible omissions are the undefined notation in equations (13)--
(14) and the two numerical domination displays listed above; these are local
repairs, not missing bridge lemmas.

## Target Claim Audit

The submitted step targets the exact sketch row: a single static smoothing
event of probability at least `1-delta_sm`, uniformly over the deterministic
base triple, with raw-column floor, `q_real<=q_*`, `Gamma<=1.01`, and all three
cyclic Khatri--Rao floors.  The separate linear (`kappa_0 rho/sqrt(n)`),
quadratic (`kappa_0^2 rho^2/sqrt(n)`), and normalization
(`kappa_0^2 rho^2`) ledgers, row factors, and finite union factors are exposed.
The probability, horizon, and norm modes match `setting.md`; no stronger or
weaker target, extra dependency, or hidden generated assumption is introduced.
After the local notation and display repairs, target fidelity is `PASS`.

## Explicit Rate Audit

- Rate-bearing status: applicable; this is the static instance-geometry rate.
- Exposed variables: `n`, `r`, `kappa_0`, `rho`, and `delta_sm`, with fixed
  `q_*=1/4096` and the stated base row/weight slacks.
- Hidden constants: only the displayed universal Gaussian/bilinear constants;
  no base triple, realized draw, proposal variable, or generated condition
  number is hidden.
- Fixed quantities and modes: deterministic base triple fixed; one-shot
  high-probability smoothing event; static/fixed-horizon; Euclidean column
  norms, Gram row l1 mass, and Khatri--Rao smallest eigenvalue.
- Auxiliary choices and probability conversion: `L`, `t`, `s`, the two scalar
  margins, and the `31 delta_sm/243` union loss are explicit.
- Term absorption: linear and quadratic row budgets are displayed and valid.
  The `nu_*` and final `B_*` numerical substitutions need the explicit
  one-line derivations in Blocking Issue 3 before this audit is contract-clean.
- Baseline reduction: the deterministic zero-smoothing orthogonal/equal-weight
  specialization is stated without changing the positive-smoothing theorem
  domain.

## Notation Surface Audit

The public-facing helper is only `E_sm`; `E_G` and the ledgers are scoped
proof/appendix-local, and the unified mode notation is otherwise mapped back
to the setting.  The surface is therefore economical.  It is not yet
contract-clean because `\bar f_{Mj}` is unbound and `E_M` is an undeclared
matrix alias.  Both can be repaired locally without changing any exported
object or downstream interface.

## Target-Step Assembly Audit

The named local results jointly imply the exact target: unit_001 creates the
raw event, unit_002 supplies norm and denominator control, unit_003 supplies
realized Gram rows, unit_004 supplies weight balance, unit_005 supplies all
three spectral floors, and unit_006 exports their static intersection.  There
are no dependencies.  Assembly references use the theorem-style labels
`prop:step-001-*`, `lem:step-001-*`, and `claim:step-001-*`, so no subsection
title or bare unit ID is used as mathematical authority.  The assembly is
valid after the two notation repairs (and the explicit numerical displays)
listed above.

## Review Rationale

`REVISE_STEP` is the smallest sound route.  The concentration, normalization
algebra, row ledgers, weight comparison, Schur-product identity, and
Gershgorin floor all survive direct checks, and the accepted sketch row,
assumptions, output target, probability mode, and baseline are unchanged.
The failures are confined to two undefined local symbols and two easily
displayed numerical substitutions.  A fresh `/proof-step step_001` rerun that
binds those symbols and writes the domination lines should be re-reviewed
before downstream consumption; no sketch revision or dependency retry is
needed.
