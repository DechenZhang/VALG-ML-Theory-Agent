# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_006/proof.md`
- Frozen SHA-256:
  `037cf70d48fcb747ae34b0723d2f3e5272b52570dea3114c09d3b1e7c66db980`
- Accepted dependencies:
  - `perspective_1/idea_6/proof_steps/step_004/proof.md`, frozen SHA-256
    `3c94965198445dfdeb99ea5e46539168f7f3f2f18f0b33a4c3a05d623672f24e`,
    with accepted review SHA-256
    `e06115cb6a90a29a481ea0a736ee07b054872a807e98436a2a64bac0efc47f95`.
  - `perspective_1/idea_6/proof_steps/step_004b/proof.md`, frozen SHA-256
    `23224db02dc7379564f947f410d0b325ce086673567bdec489e87f32fde55339`,
    with accepted review SHA-256
    `07cdd936f91f243cbf983c3bf22b8081cf9e9d19569adfac97632ea93fea12c6`.
  - `perspective_1/idea_6/proof_steps/step_005/proof.md`, frozen SHA-256
    `e6ed7fde93e2f31d0907174c9c1bca93260ba902da11681474dce0deb2e257e9`,
    with accepted review SHA-256
    `c1011300ce700063a58c2b8143e945f1fe9710183b650ffb7a22f4b4f2612ce5`.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_006

## Blocking Issues

1. In unit_004, at the row-Hadamard passage following (20)--(21), the
   target-critical product estimate is not valid as written.  For a fixed
   row, (21) and (20) give
   `sum_{j != ell}|x_j y_j| <= ||x||_infty ||y||_1 <= a b`, where
   `a=q_*+2chi+2q_*^2` and
   `b=q_*+2widehat eta+2q_*^2`.  The submitted "more precisely" display
   instead contains an additional factor `a`, i.e. an `a^2 b` term, which
   does not follow from (20)--(21).  The preceding display has the right
   intended scale but is malformed as `1.01,a ...` and is expressly declared
   unused.  Consequently (17), its self-coefficient absorption, and the
   exported `E_row<=128 omega` interface are not proved by the submitted
   derivation.  The smallest repair is to replace both displays by the exact
   `l_infinity`-by-`l_1` calculation
   `widehat eta <= (32/31)[1.01 a b+2r tau_r]`, and then derive (17) directly
   using `(32/31)1.01<4` and `(64/31)r tau_r<4r tau_r`.
2. In unit_001, `F_M` is used in the expansion of (2) before it is defined,
   and the text later identifies it through `H_M=I+F_M`.  Under that
   identification the displayed contribution should be written directly as
   `|e^T H_M e|<=(1+q)chi^2`, while
   `|e_j^T H_M e|=|e_j^T F_M e|<=q chi`.  The current notation conflates
   these two matrices and leaves the stated expansion formally unsupported.
   Define `F_M:=H_M-I` before use and display these two bounds explicitly in
   the same local rerun.

## Per-Lemma Audit

### unit_001: normalized selected-state column and factor control

- Statement fidelity: The statement targets the accepted positive diagonal,
  initial dual-column chart, unit-norm diagonal correction, and off-target
  factor-column mass required by the sketch.
- Proof validity: The orthogonal decomposition and the resulting numerical
  bounds are mathematically available from the accepted inputs, but the
  submitted expansion uses the undefined and subsequently differently scoped
  symbol `F_M`.  It does not cleanly distinguish the `H_M` quadratic term
  from the off-diagonal `F_M=H_M-I` cross term.
- Cited-result and assumption audit: `E_sm`, `E_cert_eq`, `E_cluster`, and
  `E_gauge` are legal accepted-derived inputs.  Positivity, the initial
  `chi<1/256` branch, and `||N_M(:,j)||_2<=tau_r` match the accepted
  dependency interfaces; no generated row bound is assumed.
- Rigor checklist: Quantifiers, target permutation, positivity, and the
  unit-column identity are handled.  The matrix-symbol ambiguity in the
  expansion is a local derivational defect.
- Local adversarial test: Taking `F_M=H_M-I` exposes the omitted distinction:
  `e^T H_M e` contains the identity contribution, whereas
  `e_j^T H_M e=e_j^T F_M e` does not.  The desired bounds remain plausible
  but must be stated with the correct objects.
- Contribution to target step: Intended to supply the factor-column scale
  used in the quadratic bootstrap; that interface requires the local
  notation/expansion repair.
- Verdict: REVISE_STEP
- Repair direction: Define `F_M=H_M-I` before the expansion and use the
  explicit `H_M` quadratic and `F_M` cross-term bounds stated in Blocking
  Issue 2.

### unit_002: entrywise dual residual transfer

- Statement fidelity: The lemma states exactly the per-entry
  `2 tau_r` transfer and the separate `2r tau_r` row and column masses.
- Proof validity: The dual-row Euclidean norm is
  `sqrt((H_M^{-1})_{ell,ell})`, the accepted denominator upper bound is
  `33/32`, and their product is strictly below 2.  Separate one-index sums
  correctly avoid an `r^2 tau_r` charge.
- Cited-result and assumption audit: The ambient residual budget and
  denominator margin are current accepted-derived outputs.  No unproved
  conditioning event or row/column coefficient invariant is consumed.
- Rigor checklist: Entry, row, column, mode, and selected-column quantifiers
  are explicit; normalization by `lambda_j` is positive and matches the
  exact barred equation.
- Local adversarial test: A residual column concentrated in one dual row and
  a residual matrix spread across every selected column both remain within
  the claimed entrywise and separate induced bounds.
- Contribution to target step: Fully proves `E_row_residual` at the required
  scale.
- Verdict: PASS
- Repair direction: None.

### unit_003: small-root selected-state column bootstrap

- Statement fidelity: The proposition states the sketch's explicit
  quadratic inequality, small-root selection, and full coefficient-column
  interface.
- Proof validity: Conditional on the repaired unit_001 notation, applying
  the dual to the exact same-state equation yields (11); the denominator,
  weight ratio, Hadamard column bound, and residual column mass imply (8).
  The polynomial, discriminant, large-root separation, evaluation at
  `32 omega`, and diagonal correction arithmetic are consistent.
- Cited-result and assumption audit: Only accepted dependencies and units
  001--002 are used.  The initial `chi<1/256` chart is inherited from
  accepted `step_005`, rather than assumed as the desired small root.
- Rigor checklist: Root branches, strict inequalities, fixed numerical
  `q_*`, `r tau_r=q_*^2/10^4`, and diagonal/off-diagonal assembly are
  exposed.
- Local adversarial test: The large algebraic branch is excluded by the
  accepted chart, while `P(32 omega)<0` places `32 omega` strictly between
  the roots; no continuity or monotonicity shortcut is used.
- Contribution to target step: Proves `chi<=32 omega` and the advertised
  `E_col<=64 omega`, subject only to the local unit_001 cleanup.
- Verdict: PASS
- Repair direction: None beyond consuming the repaired unit_001 statement.

### unit_004: spatial row closure

- Statement fidelity: The proposition targets the exact row recurrence,
  self coefficient below `1/8`, and `E_row<=128 omega` required by the
  accepted sketch.
- Proof validity: The row-mass and maximum-entry estimates (20)--(21) are
  suitable inputs, but the submitted product display inserts an unsupported
  extra factor `a`.  The proof therefore does not establish (17) as written.
- Cited-result and assumption audit: The intended argument uses only the
  accepted exact equation, unit_002 residual row mass, and unit_003 column
  control.  The defect is local and does not expose a dependency or sketch
  interface failure.
- Rigor checklist: The subsequent coefficient and constant arithmetic would
  be valid once (17) is derived, but absorption cannot precede a valid
  row-Hadamard inequality.
- Local adversarial test: Bounds `||x||_infty<=a` and `||y||_1<=b` control
  `sum|x_jy_j|` by `ab`; they provide no second factor `a`.  Sparse vectors
  saturating the `l_infinity`-by-`l_1` estimate expose the unsupported
  strengthening.
- Contribution to target step: The only producer of `E_row`; because its
  central recurrence is unproved, the target step is incomplete.
- Verdict: REVISE_STEP
- Repair direction: Use the exact `ab` estimate and derive (17) directly as
  specified in Blocking Issue 1.

### unit_005: finite selected-state scope and baseline

- Statement fidelity: The claim records the finite same-state scope,
  producer-consumer order, and exact orthogonal equal-weight stationary
  baseline required by the sketch.
- Proof validity: The selected pool is finite, the equations use only stored
  same-state directions, and at the exact stationary orthogonal component
  `H_M=I`, `B_M=I`, `D_M=lambda_j`, and the certificate residual is zero.
- Cited-result and assumption audit: The generated-output chain is legal and
  does not consume a later ALS state, quotient refresh, or basin invariant.
- Rigor checklist: Finite transient residuals are retained rather than
  cancelled, and the stationary zero-residual specialization is separated
  from those transients.
- Local adversarial test: At `q_real=0` but away from stationarity the proof
  still charges `2r tau_r`; it claims exact zero only at the stationary
  representative.
- Contribution to target step: Correctly closes scope, provenance, and
  baseline obligations.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The target-critical rowwise `l_infinity`-by-`l_1` product estimate is present
in unit_004 rather than omitted from the local lemma map, but its submitted
formula is invalid for the reason in Blocking Issue 1.  Apart from that local
defect and the `F_M` ambiguity, the proof's nontrivial claims are assigned to
units 001--005.  No external theorem, later quotient invariant, or archived
artifact is silently used.

## Target Claim Audit

The proof establishes the exact projected residual entry and induced-mass
interfaces and gives a valid explicit quadratic small-root argument for the
column interface, conditional on the local unit_001 notation repair.  It does
not presently establish the row recurrence and hence does not prove the exact
`E_row=O(q_*^2+r tau_r)` output.  The target claim is therefore incomplete,
without any need to change its assumptions, dependencies, constants, scope,
or output target.

## Explicit Rate Audit

The submitted proof exposes `r`, `q_real`, `q_*`, `Gamma`, `lambda_j`,
`d_{M,j}`, `tau_r`, `chi`, and `omega`; states hidden-constant dependence;
fixes the pathwise conditional probability mode, finite selected-state
horizon, and Euclidean/entrywise/induced-norm modes; and preserves
`r tau_r=q_*^2/10^4`.  The residual and column rates are explicitly proved,
with no hidden `r^2 tau_r` or probability loss.  The row rate and its
`<1/8` absorption remain uncertified until the corrected `ab` recurrence is
displayed.  The exact stationary orthogonal equal-weight baseline reduces to
zero coefficient and residual errors, while finite transients retain their
certificate charge.

## Notation Surface Audit

The proof classifies its helper objects and limits the exported interfaces to
`E_col`, `E_row_residual`, and `E_row`.  The notation is otherwise economical,
but `F_M` lacks provenance at its first use and is inconsistent with the
quadratic term being bounded there.  The rerun should define it once as
`H_M-I` and use `H_M` explicitly where the full quadratic form is meant.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-006-residual-transfer} and
Proposition~\ref{prop:step-006-column-root} assemble the residual and column
outputs at the stated scales.  Proposition~\ref{prop:step-006-row-closure}
does not yet supply a valid row output because its central product estimate is
unsupported.  Consequently the named units do not jointly imply every field
of the exact sketch row.

## Review Rationale

`REVISE_STEP` is the smallest sound status.  The accepted sketch already
provides the correct row-closure interface, mechanism, dependencies, residual
source, and numerical margins, and every accepted dependency used here is
current and adequate.  The failure is confined to two lines of local
derivation/notation in the submitted step: restore the correct one-factor
`a b` row-Hadamard estimate, derive (17) from it, and define the Gram defect
matrix consistently.  A fresh `/proof-step step_006` producer run followed by
a fresh review is sufficient; no dependency or sketch revision is indicated.
