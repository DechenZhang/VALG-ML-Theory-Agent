# Proof Step Review

## Step Review Identity

- Branch: `perspective_1/idea_6`
- Sketch attempt: 4
- Step ID: `step_006`
- Unit attempt: 2
- Reviewed setting SHA-256:
  `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Reviewed sketch SHA-256:
  `47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b`
- Reviewed sketch-review SHA-256:
  `eda7c6672f755411db44e1ee214cf23ca1151429749140d0e3deffd4d5e40aa9`
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_006/proof.md`
- Reviewed proof SHA-256:
  `5379bf8e06f3b60bbfaecaddd6a6c93605dc1accc0d7940c16d18d13cc761053`

## Accepted Dependencies

- `step_004` proof SHA-256:
  `aff54178e9b82621c707d850d5b5d138ff44710610b997947c7be94a13f535b6`;
  review SHA-256:
  `d6301b0f8c3b848bd2f4f7a41f039cbd22263b94f84a1b0a65cb2e4951544d03`;
  review status: `ACCEPTED`.
- `step_004b` proof SHA-256:
  `9e5a6515ebfd6889a28553751b9943bd3118319755afdedffdc8e49ba8496fdb`;
  review SHA-256:
  `6f01f4c67b592273856ecbc821784cd55781b6580f74c310497462a5da93fa64`;
  review status: `ACCEPTED`.
- `step_005` proof SHA-256:
  `c52af7c97224d622e532e674afe916eece6a70562d04018070cf19f6e37f5729`;
  review SHA-256:
  `05968ed2e98881a580f7d4e7d03b8607c1073b46b467b1f482acfffd682f5c63`;
  review status: `ACCEPTED`.

The accepted dependencies were read in their current, sketch-attempt-4
forms. Current `step_005` explicitly supplies the selected set
`\mathcal A_{\rm sel}`, bijection `\pi`, barred directions and residuals,
and same-state contraction `f_{M,a}=G_MK_M^{\rm raw}(:,a)`. They also supply
the realized Gram geometry, finite certificate residual, retained singleton
chart, sign gauge, and denominator margins used below. The stale step-005
attempt-2 hashes do not occur in the submitted proof. No archival proof,
stale sketch, global diagnostic, later ALS state, or look-ahead state is used
as proof evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: normalized selected-state column and factor control

- Statement fidelity: PASS. The lemma states the selected-state dual
  decomposition, inherited positive chart branch, unit-norm diagonal
  correction, and off-target `H_M B_M` column bound required by the accepted
  `step_006` row.
- Proof validity: PASS. From `L_M^T G_M=I`, the decomposition
  `bar P_M=G_M B_M+N_M` is orthogonal, and the accepted certificate residual
  gives `||N_M(:,j)||_2<=tau_r`. Expanding
  `1=B_M(:,j)^T H_M B_M(:,j)+||N_M(:,j)||_2^2` with
  `B_M(:,j)=a e_j+e` correctly separates the Gram cross term from the full
  quadratic term. Positivity permits division by `a+1`, and the displayed
  endpoint arithmetic proves `|a-1|<=q_*`. Equation (4) then follows from
  `H_M=I+F_M` and induced column control without assuming a row bound.
- Cited-result and assumption audit: PASS. `E_sm`, `E_cert_eq`,
  `E_cluster`, and `E_gauge` are accepted derived outputs. The target
  permutation and orientation are proof-only records. The proof defines
  `\iota=\pi^{-1}` and applies it to the selected columns, denominators, and
  residuals but not to target rows or `diag(lambda)`, exactly preserving the
  current step-005 same-state pairing. No generated basin, recurrence, or
  future coefficient bound is treated as primitive.
- Rigor checklist: PASS. Mode and column quantifiers, Gram symmetry,
  positivity, perpendicular orthogonality, and the fixed `q_*`, `tau_r`
  constants are explicit. `F_M=H_M-I` has one consistent meaning.
- Local adversarial test: PASS. For an off-target vector `e`,
  `e_j^T H_M e=e_j^T F_M e`, while the full quadratic term is bounded by
  `||H_M||_2 ||e||_2^2`; both bounds remain valid at `q=0` and at the chart
  endpoint.
- Contribution to target step: PASS. Supplies the diagonal normalization
  and dimension-free factor-column interface used in the quadratic
  bootstrap and row closure.
- Verdict: PASS
- Repair direction: None.

### unit_002: entrywise dual residual transfer

- Statement fidelity: PASS. The lemma gives the exact normalized projected
  residual entry bound and both induced row and column masses at the required
  `2 tau_r` and `2r tau_r` scales.
- Proof validity: PASS. The identity
  `||L_M(:,ell)||_2^2=(H_M^{-1})_{ell,ell}` and the accepted
  `d_{M,j}/lambda_j<=33/32` bound imply the entrywise estimate. Summing that
  estimate separately across one row and one column gives two `r`-term
  bounds, rather than summing an already accumulated bound.
- Cited-result and assumption audit: PASS. Gram invertibility comes from
  accepted `E_sm`; the residual column budget and denominator interval come
  from accepted `E_cert_eq`/`E_gauge`. Positivity of every `lambda_j` is a
  setting definition.
- Rigor checklist: PASS. The Euclidean ambient residual, dual entrywise
  quantity, induced norm modes, and all mode/index quantifiers are explicit.
- Local adversarial test: PASS. A residual concentrated in one dual row and
  one spread across all selected columns both satisfy the entrywise source
  and the two separate one-index sums; no `r^2 tau_r` charge appears.
- Contribution to target step: PASS. Fully supplies `E_row_residual`.
- Verdict: PASS
- Repair direction: None.

### unit_003: small-root selected-state column bootstrap

- Statement fidelity: PASS. The proposition proves the accepted quadratic
  inequality, selects its small branch from the inherited chart, and exports
  the full induced column error at `O(q_*^2+r tau_r)`.
- Proof validity: PASS. Applying `L_M^T` to the exact same-state barred
  equation gives (11) with the correct `lambda_ell/lambda_j` factor. The
  denominator floor, `Gamma<=1.01`, column Hadamard bound, and residual
  column mass imply (12). The polynomial expansion and discriminant are
  correct. Its large root is above `1/32`, while the accepted chart has
  `chi<1/256`; the displayed negative value at `X=32 omega` therefore gives
  `chi<=x_-<32 omega`. The diagonal estimate then yields
  `E_col<=33 omega<=64 omega`.
- Cited-result and assumption audit: PASS. The initial small branch is an
  accepted `step_005` chart output rather than the desired conclusion. All
  other inputs are accepted dependencies or units 001--002.
- Rigor checklist: PASS. Root signs, discriminant, branch separation,
  `r tau_r=q_*^2/10^4`, and the deterministic conditional mode are explicit;
  no hidden continuity or monotonicity upgrade is used.
- Local adversarial test: PASS. A point on the large-root branch is excluded
  by the strict `1/256` chart, and the certificate residual is charged once
  per column even with arbitrary signs.
- Contribution to target step: PASS. Produces `E_col` with the accepted
  explicit `omega` and small-root scale.
- Verdict: PASS
- Repair direction: None.

### unit_004: spatial row closure

- Statement fidelity: PASS. The proposition states the exact row recurrence,
  an explicit self-coefficient bound, and the full induced row error required
  by the sketch.
- Proof validity: PASS. Equation (20) bounds the off-diagonal row mass of
  `H_M B_M`, while (21) bounds its largest off-diagonal entry. Summing (11)
  over `j!=ell` then uses the valid `l_infinity`-by-`l_1` Hadamard estimate,
  giving (17). With `chi<=32 omega`, the self coefficient is below `1/8`,
  the constant part is below `5q_*^2`, and absorption yields
  `widehat eta<6q_*^2` and `E_row<=7 omega<=128 omega`.
- Cited-result and assumption audit: PASS. The row proof uses only the exact
  same-state equation, unit_002's row residual source, unit_003's accepted
  column conclusion, and inherited Gram/weight/denominator margins. It does
  not assume the target row bound or a future basin invariant.
- Rigor checklist: PASS. The varying denominator and weight ratio are bounded
  uniformly in `M,j`; the row and maximum-entry estimates retain their
  different index scopes; all absorption constants are displayed.
- Local adversarial test: PASS. When one factor row is sparse and the other
  saturates its row mass, `sum_j |x_j y_j|<=||x||_infty||y||_1` still gives
  the stated product without an extra dimension factor.
- Contribution to target step: PASS. Produces `E_row` noncircularly after
  the independent column and residual interfaces.
- Verdict: PASS
- Repair direction: None.

### unit_005: finite selected-state scope and baseline

- Statement fidelity: PASS. The claim records finite-pool scope,
  producer-consumer order, and the exact orthogonal equal-weight stationary
  specialization required by the accepted sketch and setting.
- Proof validity: PASS. All equations use the same selected stored
  directions before active ALS. At the exact stationary orthogonal component,
  `H_M=I`, `bar P_M=G_M`, `D_M=lambda_j`, and the certificate residual is
  zero, so `B_M=I` and `Z_M=0`. The proof separately retains the finite
  `2r tau_r` reserve for a nonstationary `q=0` transient.
- Cited-result and assumption audit: PASS. The producer path contains only
  accepted derived events and the present named units; no quotient refresh,
  later active state, or archival claim is consumed.
- Rigor checklist: PASS. The claim distinguishes exact stationary baseline
  behavior from a finite certificate-tolerance envelope and states the
  pathwise finite scope.
- Local adversarial test: PASS. Setting `q_real=0` away from stationarity
  does not erase the residual budget; zero residual is asserted only for the
  exact fixed representative.
- Contribution to target step: PASS. Closes generated-output provenance,
  finite accumulation, and baseline invariance.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

All independent nontrivial claims are represented by units 001--005. The
target assembly cites the units through theorem-style labels. The current
step-005 map `\pi`, its inverse reindexing, and the same-state identity
`f_{M,a}=G_MK_M^{\rm raw}(:,a)` are restated before use, so neither target
alignment nor pair-state consistency is hidden in notation. The projected
normal equation, root selection, and spatial Hadamard estimate are displayed
rather than hidden in prose. No unlisted row invariant, generated basin
condition, later ALS claim, citation, stale dependency hash, or stale sketch
interface is used.

## Target Claim Audit

The submitted proof establishes the exact accepted `step_006` claim. It
derives the quadratic small-root branch `chi<=32 omega`, the entrywise
projected residual bound `2 tau_r`, both induced residual masses
`2r tau_r`, the coefficient column interface `E_col<=64 omega`, and the row
interface `E_row<=128 omega`. The target permutation and all selected-state
conditions are accepted derived outputs; quantifiers, norm modes, probability
mode, and finite scope are unchanged.

## Explicit Rate Audit

- Exposed variables are `r`, `q_real`, `q_*`, `Gamma`, `lambda_j`,
  `d_{M,j}`, `tau_r`, `chi`, `omega=q_*^2+r tau_r`, the entrywise residual,
  and the induced row/column l1 norms.
- Hidden constants are restricted to the fixed numerical `q_*`, the accepted
  `31/32` and `33/32` chart margins, and `Gamma<=1.01`; they do not depend on
  `n`, `r`, `k`, `kappa_0`, `rho`, the base instance, confidence parameters,
  `epsilon`, a later state, or an unlisted condition number.
- The result is deterministic pathwise after conditioning on the accepted
  realized event chain and finite selected pool. Its horizon is one finite
  selected-state equation, and its norm modes are ambient Euclidean,
  target-dual entrywise, and induced row/column l1.
- The identity `tau_r=q_*^2/(10^4 r)` gives
  `r tau_r=q_*^2/10^4` and
  `omega=q_*^2(1+10^-4)`. Equations (3)--(4), (7), (12)--(16), and
  (17)--(21) display every simplification and absorption. There is no hidden
  `r^2 tau_r` term or probability conversion.
- At the exact orthogonal equal-weight stationary specialization, the actual
  coefficient and residual errors are zero, preserving the theorem-facing
  baseline rather than replacing it by an `O(omega)` floor.

## Notation Surface Audit

`H_M`, `L_M`, and `B_M` are the minimal public selected-state coordinate
objects. `A_M`, `E_M`, `N_M`, `Z_M`, `chi`, `delta`, `t_col`, `c`, `v`, and
`widehat eta` are explicitly defined proof-local or appendix-local helpers.
The proof exports only `E_col`, `E_row_residual`, and `E_row`. The barred
objects and target permutation are inherited proof-only records, and every
new constant or threshold is inherited or derived by a named unit.

## Target-Step Assembly Audit

The current step-005 bijection `\pi` and its inverse reindexing first turn the
accepted barred same-state equation into equation (1), with directions,
denominators, and residuals permuted together and the target rows and weights
fixed. The explicit current identity
`f_{M,a}=G_MK_M^{\rm raw}(:,a)` confirms that both held factors come from the
same stored state. This equation and the selected chart feed
Lemma~\ref{lem:step-006-normalized-column};
Lemma~\ref{lem:step-006-residual-transfer} independently transfers the
ambient certificate residual; Proposition~\ref{prop:step-006-column-root}
combines those sources in the exact entry equation and selects the small
root; Proposition~\ref{prop:step-006-row-closure} consumes the column result
and closes the row recurrence; Claim~\ref{claim:step-006-scope} records the
scope and baseline. These accepted named results jointly imply every output
field of the frozen sketch row.

## Review Rationale

The proof is bound to accepted sketch attempt 4 and to the current dependency
artifacts, in particular step-005 proof/review hashes
`c52af7c97224d622e532e674afe916eece6a70562d04018070cf19f6e37f5729`
and `05968ed2e98881a580f7d4e7d03b8607c1073b46b467b1f482acfffd682f5c63`.
The refreshed `\pi`, `\iota`, barred-object, and `f_{M,a}` definitions close
the prior dependency invalidation without changing any local derivation.
Every local unit proves its declared interface under accepted derived inputs,
the exact target is assembled without an unreviewed bridge, and the rate and
baseline contracts are preserved. Accordingly the smallest retry target is
`None`.
