# Proof Step

## Step Identity

- Sketch attempt: 4
- Step ID: `step_007c`
- Unit attempt: 2
- Binding setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Binding proof-sketch SHA-256: `47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b`
- Binding proof-sketch-review SHA-256: `eda7c6672f755411db44e1ee214cf23ca1151429749140d0e3deffd4d5e40aa9`
- Triggering repair artifact: prior `step_007c` partial proof, archived under
  `proof_history/sketch_004/proof_steps/step_007c/attempt_001/`; the producer
  handoff was controller-promoted after no bounded attempt-2 write.

## Target Step Claim

Produce the theorem-facing `E_perp_pair` and conditional `E_carry_resolvent`
interfaces for one held ALS call.  The producer must expose the actual
perpendicular pair ledger, the exact normalized least-squares identity, both
row and column induced-norm bounds after first-order cancellation, and the
chronological envelope
`epsilon_M^+ <= 3072 eta + ell_0 h_M`, with `ell_0=17/512`.

## Step Proof Status

PARTIAL_BLOCKED

## Allowed Assumptions And Dependencies

- `assump:base-weight-balance` and the setting-defined ALS solve are primitive.
- Accepted `step_001` proof SHA-256
  `7fab685e663df565c7e1ec99484ed86f5393e35aa0398047c23a866c29fc336`, review
  `2acfd5b7208c925aa28de3a57045bf6c3a0ad25cb3a0512e0e920fce1904a177`, supply
  realized unit-column Gram bounds, `q_*`, and the weight ratio.
- Accepted `step_007` proof SHA-256
  `fe4df31bf269900095c2b7079b6683e63b7c17b72f2d62605afb25030aed716f`, review
  `93ba318b5027d6f3a9db95496d25f81845dac5c11863b4dd8cb804377bf9af64`,
  supplies `E_best`, `E_quotient`, and the same-target decomposition
  `bar P_M=G_M B_M+N_M` with `G_M^T N_M=0` and column bound `t_M<=tau_r`.
- Raw held records, carried fields, and `h_M` are local conditional inputs;
  they are to be discharged by step-007b and are not primitive assumptions.

## Local Lemma Map

| Local Unit ID | Unit type | Status | Contribution |
| --- | --- | --- | --- |
| `unit_001` | lemma | PASS | Exact perpendicular pair ledger and `beta_perp`. |
| `unit_002` | hypothesis | PASS | Explicit raw held-record interface and provenance. |
| `unit_003` | proposition | PASS | Exact solve, scale identity, and common-register cancellation. |
| `unit_004` | lemma | PASS | Static centered cancellation and rank-free resolvent bounds. |
| `unit_005` | lemma | BLOCKED | Full carried row/column constant closure is not yet discharged term by term. |
| `unit_006` | claim | BLOCKED | Chronological `3072/3456/3888` export depends on unit_005. |

Atomic step = no.  The pair ledger, solve identity, resolvent, cancellation,
and carried recurrence are independent obligations.

## Cited Result Applications

### Accepted quotient entry

The accepted step-007 result is consumed only for its exact decomposition,
orthogonality, column bound, and product-one quotient coordinates.  No
target-span or future range conclusion is imported.

### Elementary tools

For a nonnegative matrix `A`,
`||A||_2 <= sqrt(||A||_1 ||A||_infty)`.  For `||E||_rc<=1/64`, the two
Neumann identities
`J^{-1}=H_0^{-1} sum_{m>=0}(-E H_0^{-1})^m` and
`H_0^{-1}=sum_{m>=0}(I-H_0)^m` are used only in their convergent domains.

## Local Derivation

### unit_001: perpendicular pair ledger

Write `bar P_N=G_N B_N+N_N`, `G_N^T N_N=0`, and
`F_N=N_N^T N_N`.  For held modes `N'` and `N''`, the exact pair defect is

`beta_act,M = || H_(M')^par circ F_(M'')
               + F_(M') circ H_(M'')^par
               + F_(M') circ F_(M'') ||_rc`.

Since `||N_N(:,j)||_2<=t_N`, `||H_N^par||_rc<=1+q_*`, and
`||B_N||_rc<=1+48 omega`, direct entrywise expansion gives

`beta_act,M <= b_perp(t_(M'),t_(M''))`,

where
`b_perp(x,y)=(1+q_*)(1+48 omega)^2(x^2+y^2)+r(xy)^2`.
Thus the public numerical ledger is
`beta_perp=b_perp(tau_r,tau_r)` and
`beta_perp<10^(-8) omega`.  This derivation is same-target and does not use
range preservation.

### unit_002: raw held-record interface

For each held mode record, define
`B_N=I+C_N+E_N`, with
`||C_N||_rc<=48 omega`, `||E_N||_rc<=epsilon_N`, and
`max_j ||N_N(:,j)||_2<=t_N`.  Let `h_M=sum_N epsilon_N` over records consumed
by the call.  The only conditional inputs required below are

`||Delta_C||_rc <= 96 omega +(2q_*+8 rho_ALS)h_M`,
`||Delta_J||_rc <= 192 omega+2 beta_act,M
                  +(4q_*+16 rho_ALS)h_M`,

along with `h_M<=2 rho_ALS/3`, positive input scales, and `d_M<1/8`.
These are named local hypotheses, not hidden setting assumptions.

### unit_003: exact solve and scale cancellation

Let `H_0=J_(0,M)=H_(M') circ H_(M'')`, `C=C_M`, `J=J_M`, and
`D_lambda=diag(lambda^(1/3))`, `R_in=diag(exp(s/3))`.  Substitution in the
unfolding normal equations gives the literal identity

`Z_M=Lambda C J^(-1) R_in^(-2) D_lambda^(-2)`.

With `A_M=Lambda(C-J)J^(-1)Lambda^(-1)`, the target-basis direction is
`G_M(I+A_M)`.  If
`nu_j^2=1+2(H_M A_M)_(jj)+(A_M^T H_M A_M)_(jj)`, then canonical
normalization is `N_M=(I+A_M)diag(nu^(-1))-I` and `s_M^+=log(nu)`.
The incoming common register cancels exactly:

`(lambda_j^(1/3)e^(s_j/3))^2
 (lambda_j^(1/3)e^(-2s_j/3)nu_j)=lambda_j nu_j`.

Thus no historical `s` value is accumulated into the next held record.

### unit_004: static centered cancellation and resolvent

Put `d_j=(H_M A_M)_(jj)` and `D_nu=diag(nu^(-1))`.  Before absolute values,

`N_M=(A_M-Diag(d))
     +Diag(nu^(-1)-1+d)
     +A_M(D_nu-I)`.

The identity for `nu_j^2` gives
`|nu_j^(-1)-1+d_j|<=2 d_M^2+q_* d_M` and
`|nu_j^(-1)-1|<=2d_M`.  Applying the displayed identity once in row
orientation and once after transposition cancels the first-order diagonal
term in both induced norms.

For `E_J=J-H_0`, the accepted pair floor gives
`||H_0-I||_rc<=q_*^2`, while the raw interface requires `||E_J||_rc<=1/64`.
The Neumann bounds are

`||H_0^(-1)||_rc <=(1-q_*^2)^(-1)`,
`||J^(-1)||_rc <=(1-q_*^2)^(-1)
 [1-(1-q_*^2)^(-1)/64]^(-1)`.

After diagonal similarity by the positive weight scales, the induced row
and column norms gain at most `Gamma^(1/3)`.  Taking the deliberately loose
common factor
`kappa_res=Gamma^2(1-q_*^2)^(-1)
 [1-(1-q_*^2)^(-1)/64]^(-1)<17/16`
introduces no rank or condition-number factor.

On the initial branch, `E_N=0`, and direct expansion gives
`||Delta_C^0||_rc<=96 omega` and
`||Delta_J^0||_rc<=192 omega+2 beta_act,M`.  Hence
`S_0<=288 omega+2 beta_perp<=290 eta`, where `eta=omega+beta_perp`.
The centered identity and the quadratic reserve then yield the static bound

`max{||N_M||_rc, max_j||G_M N_M(:,j)||_2, ||s_M^+||_infty}
 <=8 kappa_res S_0+4||alpha||_infty
 <=2977 eta<3072 eta`.

### unit_005: carried cancellation (blocked)

Expanding mixed Hadamard products with `B_N=I+C_N+E_N` gives the intended
total interfaces

`||Delta_C||_rc <=96 omega +(2q_*+8rho_ALS)h_M`,
`||Delta_J||_rc <=192 omega+2 beta_act,M
 +(4q_*+16rho_ALS)h_M`.

The centered identity shows that the carried part should obey
`||N_M||_rc,carry <= ell_0 h_M`, with
`ell_0=8q_*+32rho_ALS=17/512<1/8`, in both row and column orientations.
The current artifact does not contain a complete term-by-term derivation
for the quadratic normalization reserve under every allowed carried record;
in particular, the transition from the displayed `Delta_J` bound to the
same `ell_0` coefficient in the transposed orientation is not discharged.
This is the first unresolved theorem-facing inequality.

### unit_006: chronological export (blocked by unit_005)

If unit_005 were established, the chronological records would be
`h_U=0`, `h_V=epsilon_U`, `h_W=epsilon_U+epsilon_V`, giving
`epsilon_U<=3072eta`, `epsilon_V<=3456eta`, and
`epsilon_W<=3888eta<4096eta`.  The exact range update would then set the
corresponding perpendicular field to zero only after its own solve.  Because
unit_005 is unresolved, these generated outputs are recorded as conditional
interfaces and are not exported as unconditional conclusions.

## Target-Step Assembly

Units 001--004 prove the actual pair ledger, solve/scale identity, centered
normalization mechanism, and rank-free resolvent.  Units 005--006 are the
remaining carried and chronological obligations required by the sketch row;
their unresolved status prevents unconditional production of
`E_carry_resolvent` and therefore prevents step-007b from starting.

## Explicit Rate Audit

The exposed quantities are `q_*`, `omega=q_*^2+r tau_r`, `beta_perp`,
`eta`, `rho_ALS=1/1024`, `ell_0=17/512`, `h_M`, and the constants
`96,192,290,2977,3072,3456,3888,4096`.  The proof is deterministic and
conditional on the named raw record; no probability or horizon conversion is
performed here.  No `sqrt(r)` or latent condition number is introduced.

## Notation And Assumption Notes

All `B,C,E,N,F,H_0,J,A,nu` objects are current-notation proof objects.
`E_perp_pair` is the static ledger from unit_001.  `E_carry_resolvent` is
not exported because unit_005 is blocked.  No target-span membership,
future range update, or downstream basin condition is treated as primitive.

## Blockers

1. The carried quadratic normalization reserve has not been derived with the
   advertised `ell_0=17/512` in both induced orientations for every allowed
   `h_M` record.  Retry target: `/proof-step step_007c`.
2. Chronological `3072/3456/3888` outputs depend on blocker 1 and cannot be
   consumed by `step_007b` yet.
