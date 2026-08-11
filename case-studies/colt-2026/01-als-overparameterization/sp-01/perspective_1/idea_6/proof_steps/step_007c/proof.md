# Proof Step

## Step Identity

- Sketch attempt: 9
- Step ID: `step_007c`
- Unit attempt: 1
- Binding setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Binding proof-sketch SHA-256: `39fa8ed5134725387a788dc84467bee0f4530083192a1cd1845d16ff92075334`
- Binding proof-sketch-review SHA-256: `f1e96d74e126f7bede1f8503aaf54fbcdf82663da318e40f53de8ea372e28cd4`
- Accepted global diagnostic SHA-256: `a4d5f9953eedd3eced7248328b79839083bbda8a9c246b506a018d529d8f7ffd`; review SHA-256: `1354d398c8555f0864d2b9067a510851296afa22be648290ba363849bae6f2b8`

## Target Step Claim

Under the accepted `E_sm`, `E_best`, and `E_quotient` interfaces, derive the
actual perpendicular pair event `E_perp_pair` and the conditional
`E_carry_resolvent` interface for one held ALS block.  The interface must use
the same current `F_N=N_N^T N_N` in the actual and comparator records, define
the paired reserves
`u_C=(2q_*+8rho_ALS)h_M` and
`u_J=(4q_*+16rho_ALS)h_M`, close the scalar `beta_FS` bootstrap, and export
the row, column, ambient-column, and common-log bound
`epsilon_M^+ <= 3072 eta_FS + ell_c h_M`, with
`eta_FS=omega+beta_FS` and `ell_c=17/256<1/8`.  Target-span membership is
not an input to this step.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions: the setting-defined ALS normal-equation solve and
  `assump:base-weight-balance`; numerical definitions
  `q_*=1/4096`, `rho_ALS=1/1024`, and `tau_r=q_*^2/(10^4r)`.
- Accepted `step_001` proof/review (SHA-256
  `601fe6bc7ef5d060d9ea229fab4f95c3e86d7c903b9686c7cb5a0d3a4a3a0f4a` /
  `3368ac1d6f5c3558baa0212a3c885d5337cb7f738bc4ac87cd2e32fe43d3224a`)
  supply unit-column Gram row/column masses, `q_real<=q_*`, and positive
  realized weights.
- Accepted `step_007` proof/review (SHA-256
  `9f465e8d899ceddb67e48c228a6e9015153f0970fe9cd17bda81cba0b06dd51d` /
  `783d5343c2e16b1ba9d24cf69e2edb04dd6b6e9d8b8d82a19cf037c482153349`)
  supply `E_best`, `E_quotient`, and, for every mode,
  `bar P_M=G_MB_M+N_M`, `G_M^TN_M=0`,
  `max_j||N_M(:,j)||_2<=tau_r`, and
  `max(||B_M-I||_row,1,||B_M-I||_col,1)<=48omega`.
- A held-record tuple and its raw `Delta_C,Delta_J,d_M,h_M` bounds are local
  conditional hypotheses.  They are discharged chronologically by
  `step_007b`; they are not primitive or public assumptions.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution |
| --- | --- | --- | --- |
| `unit_001` | lemma | The actual `F_N` expansion is bounded by `beta_perp(M,h_M)` in both induced orientations. | `E_perp_pair`. |
| `unit_002` | lemma | Replacing only `E_N` by zero while retaining current `F_N` produces a valid comparator and the exported raw held-record interface. | Same-current comparator and provenance. |
| `unit_003` | proposition | The literal solve, normalization, and common-register cancellation are exact. | Direction/product target interface. |
| `unit_004` | lemma | Paired Neumann/resolvent bounds and the noncircular scalar beta bootstrap close the static envelope. | `beta_FS`, `eta_FS`, `3072eta_FS`. |
| `unit_005` | lemma | Centered normalization with paired `u_C,u_J` gives `ell_c h_M` in row, column, ambient, and log norms. | `E_carry_resolvent`. |
| `unit_006` | claim | U/V/W chronology gives `3072/3276/3500/4096`, all domain margins, and the exact baseline. | Consumer-ready first-sweep interface. |

Atomic step = no.  The pair ledger, comparator, exact solve, bootstrap,
paired cancellation, and chronology are independent nontrivial claims.

## Cited Result Applications

### Accepted quotient entry

Only the exact same-target decomposition and orthogonality from accepted
`step_007` are used.  No target-span, range, basin, or later ALS conclusion is
imported.  The current factor convention is the normalized realized-factor
convention of `setting.md`.

### Elementary matrix tools

For a nonnegative matrix, `||A||_2<=sqrt(||A||_1||A||_infty)`.  If
`||E||_(row/col,1)<=1/64`, the Neumann identities
`H_0^(-1)=sum_{m>=0}(I-H_0)^m` and
`J^(-1)=H_0^(-1)sum_{m>=0}(-E H_0^(-1))^m` hold in each induced orientation.
The hypotheses are discharged by the accepted pair floor and the raw
`Delta_J` interface below.

## Local Derivation

### unit_001: actual-record perpendicular pair ledger

For each held mode write
`bar P_N=G_NB_N+N_N`, `G_N^TN_N=0`, `F_N=N_N^TN_N`, and
`H_N^par=B_N^TH_NB_N`.  For the two held modes `M'`,`M''`, multilinearity
gives the exact perpendicular contribution

`beta_act,M = || H_(M')^par circ F_(M'')
 + F_(M') circ H_(M'')^par + F_(M') circ F_(M'') ||_(row/col,1)`.

Set `h=sum_N epsilon_N` over the carried records used by this block and

`beta_perp(M,h)=(1+q_*)(1+48omega+h)^2
 (t_(M')^2+t_(M'')^2)+r(t_(M')t_(M''))^2`.

Entrywise Hadamard expansion, `||H_N||_(row/col,1)<=1+q_*`, and the
columnwise `t_N` bounds imply `beta_act,M<=beta_perp(M,h)` in both row and
column orientations.  This is a same-target identity and uses no range
membership.  With `b_0=max_M beta_perp(M,0)`, the definition of `tau_r`
gives `b_0<10^(-8)omega`.

### unit_002: same-current comparator and raw held interface

For a held record write `B_N=I+C_N+E_N`, with
`||C_N||_(row/col,1)<=48omega`,
`||E_N||_(row/col,1)<=epsilon_N`, and `max_j||N_N(:,j)||_2<=t_N`.
In the exact current-record coefficient equations, set only `E_N=0` and
retain the current `N_N` and `F_N`.  Denote the resulting solve by
`A_N^{0,pred}` and define

`(nu_N,j^{0,pred})^2=diag((I+A_N^{0,pred})^T H_N
 (I+A_N^{0,pred})+F_N)_j`,
`B_N^0=(I+A_N^{0,pred})D_{nu,N}^{0,pred}`.

The actual and comparator records therefore satisfy the same current
normalization identity

`diag(B_N^T H_NB_N+F_N)=diag((B_N^0)^T H_NB_N^0+F_N)=1`.

Subtracting gives
`diag(2(B_N^0)^TH_NE_N+E_N^TH_NE_N)=0`, hence in either orientation `O`

`||H_NE_N-Diag(H_NE_N)||_(O,1)<=(1+q_*)epsilon_N`,
`||Diag(H_NE_N)||_(O,1)<=epsilon_N^2/2+48omega epsilon_N`.

Expanding all static-carried, carried-static, carried-carried, and
perpendicular classes gives the raw exported interface

`||Delta_C||_(O,1)<=96omega+(2q_*+8rho_ALS)h_M`,
`||Delta_J||_(O,1)<=192omega+2beta_perp(M,h_M)
 +(4q_*+16rho_ALS)h_M`.

The additional local domain checks are `h_M<=2rho_ALS/3`, `d_M<1/8`,
positive input scales, and `Delta_J<=1/64`; all are conditional inputs to
this lemma and are not assumed for the theorem.

### unit_003: exact solve and common-register cancellation

Let `H_0=H_(M')circ H_(M'')`, `C=C_M`, `J=J_M`,
`D_lambda=diag(lambda^(1/3))`, and `R_in=diag(exp(s/3))`.  Substitution in
the literal unfolding normal equations gives

`Z_M=Lambda C J^(-1)R_in^(-2)D_lambda^(-2)`.

With `A_M=Lambda(C-J)J^(-1)Lambda^(-1)`, the solved target-basis direction
is `G_M(I+A_M)`.  Define
`nu_j^2=diag((I+A_M)^TH_M(I+A_M)+F_M)_j`,
`N_M(A)=(I+A)D_nu-I`, and `s_M^+=log(nu)`.  The common product register
cancels exactly:

`(lambda_j^(1/3)e^(s_j/3))^2
 (lambda_j^(1/3)e^(-2s_j/3)nu_j)=lambda_j nu_j`.

Thus the output is the literal ALS solve in the same target/product metric,
and historical `s` is overwritten before the next held call.

### unit_004: centered resolvent and beta bootstrap

Put `d=diag(H_MA_M)` and `D_nu=diag(nu^(-1))`.  Before taking absolute
values, the exact unit-column identity gives

`N_M(A)=(A-Diag(d))+Diag(nu^(-1)-1+d)+A(D_nu-I)`.

For `E_J=J-H_0`, the accepted pair floor and unit_002 give
`||H_0-I||_(row/col,1)<=q_*^2` and `||E_J||_(row/col,1)<=1/64`.  Thus

`||H_0^(-1)||_(row/col,1)<=(1-q_*^2)^(-1)`,
`||J^(-1)||_(row/col,1)<=(1-q_*^2)^(-1)
 [1-(1-q_*^2)^(-1)/64]^(-1)`.

Diagonal similarity by positive weight scales costs at most `Gamma^2`; set
`kappa_res=Gamma^2(1-q_*^2)^(-1)
 [1-(1-q_*^2)^(-1)/64]^(-1)<17/16`.

On the initial branch `E_N=0`, the two induced orientations give
`S_0<=288omega+2beta_FS<=290eta_FS`.  Substitution into the centered
identity, including its quadratic normalization reserve, gives

`max{||N_M(A)||_(row/col,1), max_j||G_MN_M(A)(:,j)||_2,
 ||s_M^+||_infty} <=8kappa_res S_0+4||alpha||_infty
 <=2977eta_FS<3072eta_FS`.

The actual-record formula from unit_001 is affine on
`0<=h<=2rho_ALS/3`: `beta_perp(M,h)<=b_0+L_beta h`, with
`L_beta<=10^(-10)omega`.  Define
`beta_FS=max_M beta_perp(M,h_M)` and `eta_FS=omega+beta_FS`.  The
chronological bounds used by unit_006 imply `h_V<=3072(omega+beta_FS)` and
`h_W<=6548(omega+beta_FS)`, so, before any call,

`beta_FS<=b_0+6548L_beta(omega+beta_FS)`.

Since `6548L_beta<1/2`, solving this scalar inequality gives
`beta_FS<2*10^(-8)omega` and `eta_FS<1.001q_*^2`.  This is a producer
bootstrap, not a future invariant assumption.

### unit_005: paired carried normalized-resolvent bound

Define
`u_C=(2q_*+8rho_ALS)h_M` and
`u_J=(4q_*+16rho_ALS)h_M`.  Subtract the actual and same-current comparator
equations from unit_002.  The two resolvent terms are paired before taking
norms; reciprocal held-scale factors cancel the Lambda similarity factors.
Consequently, for `O` equal to row or column, and also for ambient columns,

`||term_C+term_J||_O <=u_C+u_J/2`.

The centered identity in unit_004, applied before absolute values, bounds the
quadratic normalization remainder under `h_M<=2rho_ALS/3`.  In both induced
orientations and in the common log register,

`max{||N_M(A)-N_M(A^0)||_O,
 max_j||G_M(N_M(A)-N_M(A^0))(:,j)||_2,
 ||log(nu)-log(nu^0)||_infty}
 <=2(2u_C+u_J)`.

Therefore the carried gain is
`ell_c h_M`, where
`ell_c=16q_*+64rho_ALS=17/256<1/8`.
No rank, `sqrt(r)`, or latent condition-number factor is introduced.

### unit_006: chronological export and baseline

Apply unit_005 in the legal order U, exact U range update, V, exact V range
update, W.  The generated records have
`h_U=0`, `h_V=epsilon_U`, and `h_W=epsilon_U+epsilon_V`.  Hence

`epsilon_U<=3072eta_FS`,
`epsilon_V<=3072eta_FS+ell_c epsilon_U<=3276eta_FS`,
`epsilon_W<=3072eta_FS+ell_c(epsilon_U+epsilon_V)
 <=3500eta_FS<4096eta_FS`.

Using `eta_FS<1.001q_*^2`, the same substitutions give
`h_V<1/4096`, `h_W<1/2048<2rho_ALS/3`,
`Delta_J<1/32768<1/64`, `d_M<1/16384<1/8`, and positive input scales.
The exact orthogonal equal-weight stationary specialization has
`B=B^0=I`, `F=0`, `A=A^0=0`, `nu=1`, `s^+=0`; its actual beta ledger and
output error are zero.  The positive beta envelope is only a finite transient
upper bound and is not substituted for baseline equality.

## Target-Step Assembly

Unit_001 derives the actual same-target perpendicular ledger from the accepted
`GB+N` decomposition.  Unit_002 produces the same-current comparator and the
raw `Delta_C,Delta_J` interface without assuming a future range update.
Unit_003 gives the literal solve and common-register identity.  Unit_004
closes the two-orientation Neumann bounds, static `2977eta_FS` reserve, and
the scalar beta bootstrap.  Unit_005 pairs the carried resolvent terms and
exports the centered `ell_c h_M` bound in every downstream norm.  Unit_006
discharges the U/V/W chronology and baseline.  Therefore the exact public
outputs are `E_perp_pair` and `E_carry_resolvent`; no target-span, basin, or
future generated condition is consumed by this step.

## Explicit Rate Audit

- Exposed quantities: `q_*`, `omega=q_*^2+r tau_r`, `beta_perp(M,h_M)`,
  `beta_FS`, `eta_FS`, `rho_ALS`, `ell_c`, `h_M`, and the constants
  `96,192,2977,3072,3276,3500,4096`.
- Hidden constants are universal numerical values only; none depends on
  `n,r,k,kappa_0,rho`, confidence parameters, labels, or a latent condition
  number.  The proof is deterministic conditional on the named raw held
  record and performs no probability or horizon upgrade.
- Norm modes are induced row/column l1 masses, ambient Euclidean columns, and
  the common product log register.  The two orientations are proved
  separately and then identified by transposition.
- All term absorptions are displayed: Neumann convergence at `1/64`, the
  scalar inequality for `beta_FS`, the `2977<3072` static margin, and
  `ell_c=17/256<1/8` for carried terms.  No `sqrt(r)` charge is introduced.
- Baseline reduction is exact: at the orthogonal equal-weight stationary
  state every actual defect and refreshed product register is zero; the
  positive beta envelope is only a finite transient upper bound.

## Blockers

None.

## Notation And Assumption Notes

- `B_N,C_N,E_N,N_N,F_N,H_N^par,A_N,A_N^{0,pred},nu_N` are proof-local
  current-notation objects.  The comparator is a derived object produced by
  replacing only `E_N` while retaining current `F_N`; it is never a primitive
  assumption.
- `E_perp_pair`, `beta_perp`, `beta_FS`, `eta_FS`, and
  `E_carry_resolvent` are public-facing outputs.  `u_C,u_J`, `L_beta`, and
  the Neumann factors are appendix-local bookkeeping defined from setting
  quantities and proved inequalities.
- The held-record conditions (`Delta_C`, `Delta_J`, `d_M`, positivity, and
  `h_M`) are explicitly local conditional hypotheses.  Step_007b must prove
  them before each U/V/W call; this artifact does not export them as theorem
  assumptions.
- The accepted global diagnostic was used only as planning context.  No
  archived prior-attempt artifact was consumed as evidence.
