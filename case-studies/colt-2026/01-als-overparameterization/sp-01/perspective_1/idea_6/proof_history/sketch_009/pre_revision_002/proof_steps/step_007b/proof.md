# Proof Step

## Step Identity

- Sketch attempt: 9
- Step ID: `step_007b`
- Unit attempt: 1
- Binding setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Binding proof-sketch SHA-256: `39fa8ed5134725387a788dc84467bee0f4530083192a1cd1845d16ff92075334`
- Binding proof-sketch-review SHA-256: `f1e96d74e126f7bede1f8503aaf54fbcdf82663da318e40f53de8ea372e28cd4`

## Target Step Claim

- Intended claim: Consume `E_perp_pair` and `E_carry_resolvent` with the
  selected entry decomposition; first export the same-current-record
  comparator after each exact predecessor solve, verify the beta bootstrap
  and `31/32` inverse floor before each U/V/W call, prove exact
  zero-padding/range containment in chronological order, and show
  `N_U^+=N_V^+=N_W^+=0` with
  `norm(e^1)_Q<=4096eta_FS<rho_ALS/3`. No target-span fact is assumed before
  its own update.
- Depends on: `step_001`, `step_007`, `step_007c`.
- Assumptions used: `E_sm`, `E_best`, `E_quotient`, `E_perp_pair`, and
  `E_carry_resolvent` (derived), and
  Assumption~\ref{assump:base-scale} (primitive procedure scale).
- Technical challenge: shared perpendicular control, amplitude-conjugated
  Grams, comparator handoff, scalar beta bootstrap, and exact range entry.
- Intended proof tool or cited result: actual-record ledger, paired reserve,
  exact unfolding range, Moore--Penrose block identity, and product-one
  rebalance.
- Output target: `E_pair_entry`, `E_parallel_entry`, and active
  rank-r/zero-padding equivalence.
- Rate objective: `tau_r^2`, `r tau_r^4`,
  `96/192/3072/3276/3500/4096`, the inverse floor, and finite one-sweep cost.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions: Assumption~\ref{assump:base-scale}; the
  setting-defined exact cyclic Moore--Penrose ALS update; and the numerical
  definitions
  \[
    q_*={1\over4096},\qquad \rho_{\rm ALS}={1\over1024},\qquad
    \tau_r={q_*^2\over10^4r},\qquad
    \omega=q_*^2+r\tau_r=q_*^2(1+10^{-4}).             \tag{1}
  \]
  Positivity of the realized weights follows from the setting's nonzero
  realized columns.  No lower absolute weight scale is used.
- Accepted `step_001` proof/review (SHA-256
  `601fe6bc7ef5d060d9ea229fab4f95c3e86d7c903b9686c7cb5a0d3a4a3a0f4a` /
  `3368ac1d6f5c3558baa0212a3c885d5337cb7f738bc4ac87cd2e32fe43d3224a`)
  supply `E_sm`: the realized unit-column Grams have off-diagonal induced
  row and column masses at most `q_*`, `Gamma<=1.01`, all realized weights
  are positive, and every target Khatri--Rao Gram has minimum eigenvalue at
  least `1-q_*^2`.
- Accepted `step_007` proof/review (SHA-256
  `9f465e8d899ceddb67e48c228a6e9015153f0970fe9cd17bda81cba0b06dd51d` /
  `783d5343c2e16b1ba9d24cf69e2edb04dd6b6e9d8b8d82a19cf037c482153349`)
  supply `E_best`, `E_quotient`, and the selected entry records
  \[
    \bar P_M=G_MB_M+N_M,\quad G_M^TN_M=0,\quad
    \|B_M-I\|_{\rm row,1}\vee\|B_M-I\|_{\rm col,1}\le48\omega,
    \quad \max_j\|N_M(:,j)\|_2\le\tau_r,              \tag{2}
  \]
  together with positive balanced input scales and the common represented
  product coordinate.
- Accepted `step_007c` proof/review (SHA-256
  `db02db45050074e5f9e05358ff6ddce584ab6c4853a7e143c31867bdbc4a14f6` /
  `0e08f9b32efd3632b722874fabba79b9f23bad789792c2f632d4c9854c7ab081`)
  supply `E_perp_pair` and the parameterized, same-current-record
  `E_carry_resolvent` interface restated below.
- Derived invariants supplied by accepted dependencies: exactly the fields
  in the preceding three bullets.  In particular, target-span membership of
  any updated mode is not among the inputs.
- Local conditional hypotheses: the one-call held-record inequalities in
  `E_carry_resolvent`.  Lemmas~\ref{lem:step-007b-u-call},
  \ref{lem:step-007b-v-call}, and \ref{lem:step-007b-w-call} discharge them
  before the corresponding calls; none is exported as an assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under the three accepted dependencies, the actual entry records give a same-current comparator and the scalar beta bootstrap closes with `beta_FS<2*10^(-8)omega` before the chronology is consumed. | Produces the noncircular common envelope `eta_FS`. |
| `unit_002` | proposition | Under `E_sm`, if the active held pair Gram is nonsingular, the literal rank-k Moore--Penrose block solve has zero inactive columns and its active output lies exactly in `range(G_M)`. | Produces exact range and zero-padding, without projection. |
| `unit_003` | lemma | Under the entry ledger and `E_carry_resolvent`, the U call has `h_U=0`, satisfies all inverse/positivity margins, emits the same-current U comparator, and has `N_U^+=0` and error at most `epsilon_U=3072eta_FS`. | First chronological call. |
| `unit_004` | lemma | Under the U output certificate, the V call has `h_V=epsilon_U`, satisfies all inverse/positivity margins before use, emits the V comparator, and has `N_V^+=0` and error at most `epsilon_V=3276eta_FS`. | Second chronological call. |
| `unit_005` | lemma | Under the U and V certificates, the W call has `h_W=epsilon_U+epsilon_V`, satisfies all margins, has `N_W^+=0`, and yields the final quotient bound `epsilon_W<4096eta_FS<rho_ALS/3`. | Produces `E_pair_entry` and `E_parallel_entry`. |
| `unit_006` | claim | Under the same inputs, the exact orthogonal equal-weight stationary state is fixed and has zero actual beta, comparator, direction, and common-product errors. | Preserves the baseline conclusion. |

Atomic step = no.  The beta closure, literal range identity, three comparator
handoffs, and baseline specialization are independent nontrivial claims.

## Cited Result Applications

### Accepted static geometry and entry decomposition

The accepted `step_001` conclusion gives, for
`H_M=G_M^TG_M`,
\[
 \|H_M-I\|_{\rm row,1}=\|H_M-I\|_{\rm col,1}\le q_*,\qquad
 \lambda_{\min}(H_{M'}\circ H_{M''})\ge1-q_*^2.       \tag{3}
\]
The accepted `step_007` conclusion is exactly (2), for the selected literal
initialization after tensor-preserving proof orientation and balancing.  Its
columns are unit, so with `F_M=N_M^TN_M`,
\[
 \operatorname{diag}(B_M^TH_MB_M+F_M)=\mathbf1.        \tag{4}
\]
These conclusions use the same realized target and Euclidean projector as
the literal ALS update.

### Accepted one-call carried-resolvent interface

For the current mode `M` and held modes `M',M''`, write each held record as
\[
 \bar P_N=G_NB_N+N_N,\quad
 B_N=B_N^0+E_N=I+C_N+E_N,\quad F_N=N_N^TN_N,            \tag{5}
\]
where the actual and comparator records use the same current `F_N` and obey
\[
 \operatorname{diag}(B_N^TH_NB_N+F_N)
 =\operatorname{diag}((B_N^0)^TH_NB_N^0+F_N)=\mathbf1. \tag{6}
\]
Let
\[
 \epsilon_N=\|E_N\|_{\rm row,1}\vee\|E_N\|_{\rm col,1},
 \quad h_M=\sum_{N\text{ carried into }M}\epsilon_N,
 \quad t_N=\max_j\|N_N(:,j)\|_2.                      \tag{7}
\]
The accepted `step_007c` interface defines
\[
\begin{split}
 \beta_\perp(M,h_M)={}&(1+q_*)(1+48\omega+h_M)^2
             (t_{M'}^2+t_{M''}^2)\\
 &+r(t_{M'}t_{M''})^2,                                  \tag{8}\\
 \beta_{\rm FS}:={}&\max_{M\in\{U,V,W\}}\beta_\perp(M,h_M),
 \qquad \eta_{\rm FS}:=\omega+\beta_{\rm FS},         \tag{9}
\end{split}
\]
and proves in each induced orientation
\[
 \Delta_C^M\le96\omega+(2q_*+8\rho_{\rm ALS})h_M,
 \quad
 \Delta_J^M\le192\omega+2\beta_\perp(M,h_M)
 +(4q_*+16\rho_{\rm ALS})h_M.                          \tag{10}
\]
If `h_M<=2rho_ALS/3`, `Delta_J^M<=1/64`, the diagonal coefficient reserve is
below `1/8`, and the incoming scales are positive, then the exact normalized
output satisfies, simultaneously in induced row/column norms, ambient
columns, and the common log register,
\[
 \operatorname{err}_M^+\le3072\eta_{\rm FS}+\ell_c h_M,
 \qquad
 \ell_c=16q_*+64\rho_{\rm ALS}={17\over256}<{1\over8}. \tag{11}
\]
It also proves that these hypotheses imply the sharper call-domain bounds
`d_M<1/16384` and `nu_{M,j}^2>1/2`.  Here `nu_{M,j}` is the norm used for
the exact output normalization and `d_M` is the diagonal normalization
reserve.  Thus `nu_{M,j}>0` is a proved output, not an assumed sign.

### Moore--Penrose block identity

If the inactive `k-r` held columns are zero and the active held
Khatri--Rao matrix `K_a` has nonsingular Gram, then
\[
 K^TK=\operatorname{diag}(K_a^TK_a,0),\qquad
 (K^TK)^\dagger
 =\operatorname{diag}((K_a^TK_a)^{-1},0).              \tag{12}
\]
This follows directly from the defining Moore--Penrose equations for a
block diagonal matrix.  It is used in
Proposition~\ref{prop:step-007b-range-zero}.

## Local Derivation

### unit_001: lemma

**Lemma (entry comparator and noncircular perpendicular envelope).**
\label{lem:step-007b-beta}

Under the accepted `E_sm`, `E_quotient`, `E_perp_pair`, and
`E_carry_resolvent` conclusions, define the initial held records by
\[
 C_N=B_N-I,\qquad B_N^0=B_N,\qquad E_N=0,
 \qquad F_N=N_N^TN_N.                                  \tag{13}
\]
Then (6) holds with the same current `F_N`.  For the chronological budgets
\[
 \epsilon_U:=3072\eta_{\rm FS},\qquad
 \epsilon_V:=3072\eta_{\rm FS}+\ell_c\epsilon_U,
 \qquad
 \epsilon_W:=3072\eta_{\rm FS}
       +\ell_c(\epsilon_U+\epsilon_V),                 \tag{14}
\]
the actual perpendicular envelope closes before it is used and satisfies
\[
 \beta_{\rm FS}<2\cdot10^{-8}\omega,\qquad
 \eta_{\rm FS}<1.001q_*^2.                            \tag{15}
\]

**Proof.**
Equation (4) and the choice `B_N^0=B_N` prove both identities in (6); no
future range statement is used.  The accepted actual-record ledger gives,
for `0<=h<=2rho_ALS/3`,
\[
 \beta_\perp(M,h)\le b_0+L_\beta h,qquad
 b_0<10^{-8}\omega,qquad L_\beta\le10^{-10}\omega.  \tag{16}
\]
The one-call inequality (11) has the closed chronological form (14).  Since
`ell_c<1/8`, it gives
\[
 h_V=\epsilon_U\le3072(\omega+\beta_{\rm FS}),
 \qquad
 h_W=\epsilon_U+\epsilon_V
 \le6548(\omega+\beta_{\rm FS}).                      \tag{17}
\]
Consequently the maximum in (9) obeys the scalar inequality
\[
 \beta_{\rm FS}\le b_0+6548L_\beta(\omega+\beta_{\rm FS}). \tag{18}
\]
This inequality is evaluated before invoking any mode-specific conclusion;
it is not a future span or basin premise.  Because
`6548L_beta<1/2`, rearrangement yields
\[
 \beta_{\rm FS}
 \le{b_0+6548L_\beta\omega\over1-6548L_\beta}
 <2\cdot10^{-8}\omega.                                \tag{19}
\]
Using (1) in `eta_FS=omega+beta_FS` proves (15).  Equations (16)--(19)
retain both mixed `tau_r^2` terms and the coherent
`r tau_r^4` term from (8).

### unit_002: proposition

**Proposition (literal active range and exact zero padding).**
\label{prop:step-007b-range-zero}

Under `E_sm` and the setting's exact cyclic ALS rule, suppose before a
mode-`M` call that the inactive columns are zero and that the active held
Khatri--Rao Gram is nonsingular.  Then the literal rank-`k` Moore--Penrose
update leaves every inactive output column zero and has active output
\[
 X_M^+=G_MZ_M                                             \tag{20}
\]
for an `r`-by-`r` coefficient matrix `Z_M`.  Hence the updated perpendicular
field is exactly `N_M^+=0`.

**Proof.**
With the setting's unfolding convention,
\[
 T_{(M)}=G_M\operatorname{diag}(\lambda)
          (G_{M''}\odot G_{M'})^T.                     \tag{21}
\]
Writing the full held Khatri--Rao design as `K=[K_a,0]`, (12) gives
\[
 T_{(M)}K(K^TK)^\dagger
 =\left[G_M\operatorname{diag}(\lambda)
 (G_{M''}\odot G_{M'})^TK_a(K_a^TK_a)^{-1},\ 0\right]. \tag{22}
\]
The active bracket is of the form `G_MZ_M`, and the inactive bracket is
identically zero.  Thus range containment and zero padding are consequences
of the literal update, not of a projected algorithm.  No range property of
an unupdated mode is used.

### unit_003: lemma

**Lemma (U-call admissibility, comparator handoff, and exact range entry).**
\label{lem:step-007b-u-call}

Under Lemma~\ref{lem:step-007b-beta}, the accepted one-call interface, and
Proposition~\ref{prop:step-007b-range-zero}, the initial U call has
`h_U=0`; before the call its normalized pair Gram has minimum eigenvalue at
least `31/32`, its literal active Gram is nonsingular, all input and output
normalization scales are positive, and afterward
\[
 N_U^+=0,\qquad \operatorname{err}_U^+\le
 \epsilon_U=3072\eta_{\rm FS}.                         \tag{23}
\]
It emits a same-current U comparator certificate before the V call.

**Proof.**
At entry the two held records use (13), so no carried field exists and
`h_U=0`.  Equations (10) and (15) give
\[
 \Delta_C^U\le96\omega,qquad
 \Delta_J^U\le192\omega+2\beta_\perp(U,0)
 \le192\eta_{\rm FS}< {1\over32768}.                  \tag{24}
\]
The spectral-norm perturbation is at most the geometric mean of the two
induced bounds, hence no larger than `Delta_J^U`.  Combining (3) and (24),
\[
 \lambda_{\min}(J_U)
 \ge1-q_*^2-\Delta_J^U>{31\over32}.                    \tag{25}
\]
The literal held pair Gram is a positive diagonal congruence of `J_U`;
all diagonal entries are positive because each `lambda_j>0` and every
incoming scale is `lambda_j^(1/3)exp(s_j/3)>0`.  It is therefore
nonsingular, and (12) applies.  The accepted one-call arithmetic, with
(15), (24), and `h_U=0`, also gives
\[
 d_U<{1\over16384}<{1\over8},\qquad
 \nu_{U,j}^2>{1\over2}.                                \tag{26}
\]
Thus every output normalizer is positive and (11) gives (23).
Proposition~\ref{prop:step-007b-range-zero} gives `N_U^+=0` exactly.

Let `B_U^+` denote the normalized target coefficient of this exact output.
Before V is called, record
\[
 C_U:=0,\quad B_U^0:=I,\quad E_U:=B_U^+-I,\quad F_U:=0. \tag{27}
\]
Both records use the same current `F_U=0`, and unit normalization gives
\[
 \operatorname{diag}((B_U^+)^TH_UB_U^+)
 =\operatorname{diag}(I^TH_UI)=\mathbf1.               \tag{28}
\]
Thus (27)--(28) are the promised same-current comparator certificate, and
`epsilon_U` in (23) bounds both induced norms, ambient columns, and the
refreshed common-log field.

### unit_004: lemma

**Lemma (V-call admissibility, comparator handoff, and exact range entry).**
\label{lem:step-007b-v-call}

Under Lemmas~\ref{lem:step-007b-beta} and
\ref{lem:step-007b-u-call}, the accepted one-call interface, and
Proposition~\ref{prop:step-007b-range-zero}, the V call uses exactly
`h_V=epsilon_U`; all inverse and positivity margins hold before the call;
and afterward
\[
 N_V^+=0,\qquad \operatorname{err}_V^+\le
 \epsilon_V=3276\eta_{\rm FS}.                         \tag{29}
\]
It emits a same-current V comparator certificate before the W call.

**Proof.**
The carried U record is exactly (27); W remains the initial record (13).
Thus the only carried budget is
\[
 h_V=\epsilon_U=3072\eta_{\rm FS}
 <{1\over4096}<{2\rho_{\rm ALS}\over3}.               \tag{30}
\]
The strict numerical inequality follows from (15).  Since
`4q_*+16rho_ALS=68q_*`, (10), (15), and (30) give
\[
 \Delta_J^V
 \le192\eta_{\rm FS}+68q_*\epsilon_U
 =(192+51)\eta_{\rm FS}
 =243\eta_{\rm FS}<{1\over32768},                     \tag{31}
\]
and similarly
\[
 \Delta_C^V\le96\eta_{\rm FS}+34q_*\epsilon_U
 <122\eta_{\rm FS}.                                   \tag{32}
\]
Exactly as in (25), (31) and (3) give
`lambda_min(J_V)>31/32`; positive diagonal congruence gives nonsingularity
of the literal active Gram.  The accepted call-domain calculation gives
`d_V<1/16384` and `nu_{V,j}^2>1/2` before normalization.  The incoming
common scale is positive by (26) and exact product cancellation; the new
normalizers are positive as well.  Hence (11) yields
\[
 \operatorname{err}_V^+\le3072\eta_{\rm FS}
 +{17\over256}(3072\eta_{\rm FS})
 =3276\eta_{\rm FS}.                                   \tag{33}
\]
Proposition~\ref{prop:step-007b-range-zero} gives `N_V^+=0`.

Before W is called, define
\[
 C_V:=0,\quad B_V^0:=I,\quad E_V:=B_V^+-I,\quad F_V:=0. \tag{34}
\]
As in (28), the actual and comparator unit-column identities both equal
one with the same current `F_V=0`.  This certificate is emitted only after
the exact V range update.

### unit_005: lemma

**Lemma (W-call admissibility and completed first-sweep entry).**
\label{lem:step-007b-w-call}

Under Lemmas~\ref{lem:step-007b-beta},
\ref{lem:step-007b-u-call}, and \ref{lem:step-007b-v-call}, the accepted
one-call interface, and Proposition~\ref{prop:step-007b-range-zero}, the W
call uses exactly `h_W=epsilon_U+epsilon_V`; all inverse and positivity
margins hold before the call; and the completed cyclic sweep satisfies
\[
 N_U^+=N_V^+=N_W^+=0,\qquad
 \|e^1\|_Q\le\epsilon_W<4096\eta_{\rm FS}
 <{\rho_{\rm ALS}\over3}.                              \tag{35}
\]

**Proof.**
The only carried records are precisely (27) and (34), while the held U and V
perpendicular Grams have already become zero.  Therefore
\[
 h_W=\epsilon_U+\epsilon_V=6348\eta_{\rm FS}
 <{1\over2048}<{2\rho_{\rm ALS}\over3}.               \tag{36}
\]
Equations (10), (15), and `4q_*+16rho_ALS=68q_*` imply
\[
 \Delta_J^W
 \le192\eta_{\rm FS}+68q_*h_W
 <298\eta_{\rm FS}<{1\over32768},                     \tag{37}
\]
and `Delta_C^W<149eta_FS`.  Hence
`lambda_min(J_W)>31/32`; positive diagonal congruence gives the ordinary
literal inverse branch.  The accepted call-domain calculation gives
`d_W<1/16384` and `nu_{W,j}^2>1/2`; all incoming scales are positive by the
two predecessor certificates and exact common-product cancellation.
Thus (11) gives
\[
\begin{split}
 \operatorname{err}_W^+
 &\le3072\eta_{\rm FS}+{17\over256}(6348\eta_{\rm FS})\\
 &<3500\eta_{\rm FS}<4096\eta_{\rm FS}.               \tag{38}
\end{split}
\]
Proposition~\ref{prop:step-007b-range-zero} gives `N_W^+=0`.  The first two
zero-perpendicular conclusions were already proved before this call, so all
three hold simultaneously after it.

After the W solve, set
`C_W=0`, `B_W^0=I`, `E_W=B_W^+-I`, and `F_W=0`; its actual and comparator
normalizations obey the same identity as (28).  The product-one equal-norm
rebalance preserves every literal rank-one term.  The final proof state is
\[
 e^1=(E_U,E_V,E_W,s_W^+),                              \tag{39}
\]
because the U and V historical product registers were overwritten before
the next calls.  By the four-mode output of (11),
\[
 \|e^1\|_Q
 \le\max\{\epsilon_U,\epsilon_V,\epsilon_W\}
 =\epsilon_W.                                          \tag{40}
\]
Finally, (15) and `q_*=1/4096` give the strict basin margin
\[
 4096\eta_{\rm FS}< {1.001\over4096}
 <{1\over3072}={\rho_{\rm ALS}\over3}.                \tag{41}
\]
Equations (35)--(41) prove `E_pair_entry` and `E_parallel_entry`.

### unit_006: claim

**Claim (exact stationary baseline through the first sweep).**
\label{claim:step-007b-baseline}

Under the deterministic orthogonal equal-weight stationary specialization
of the accepted dependencies, the literal first sweep, all three comparators,
and the final quotient state are exact: the actual beta ledgers vanish,
`B_M=B_M^0=I`, `F_M=0`, `N_M^+=0`, and `e^1=0`.

**Proof.**
At this specialization `H_M=I`, `B_M=I`, `N_M=0`, and the represented
product register is zero.  Thus every matrix in (8) is zero and the actual
perpendicular contamination is zero.  The exact normal equations give
`A_M=A_M^0=0` and `nu_M=1` in U, then V, then W.  Proposition
\ref{prop:step-007b-range-zero} leaves the exact target factors and zero
padding unchanged.  Hence each emitted comparator is the actual record and
the refreshed common register remains zero.  The positive envelope in (15)
is not substituted for this exact equality.

## Target-Step Assembly

Lemma~\ref{lem:step-007b-beta} constructs the initial same-current records
and closes the actual `tau_r^2` and `r tau_r^4` perpendicular ledger before
any mode-specific conclusion is consumed.  Proposition
\ref{prop:step-007b-range-zero} proves exact literal range containment and
zero padding for any admissible call.  Lemmas~\ref{lem:step-007b-u-call},
\ref{lem:step-007b-v-call}, and \ref{lem:step-007b-w-call} then verify, in
order, the raw cross/pair bounds, `31/32` normalized inverse floors,
ordinary literal inverse branches, positive scales, positive normalizers,
and the exact handoff records with
\[
 h_U=0,\qquad h_V=\epsilon_U,\qquad
 h_W=\epsilon_U+\epsilon_V.                            \tag{42}
\]
No target-span conclusion is used before Proposition
\ref{prop:step-007b-range-zero} proves it for that mode.  The three calls
give
\[
 \epsilon_U=3072\eta_{\rm FS},\qquad
 \epsilon_V=3276\eta_{\rm FS},\qquad
 \epsilon_W<3500\eta_{\rm FS}<4096\eta_{\rm FS},      \tag{43}
\]
and the exact updates give `N_U^+=N_V^+=N_W^+=0` while inactive columns stay
zero.  Equations (40)--(41) yield
`norm(e^1)_Q<=4096eta_FS<rho_ALS/3`.  Claim
\ref{claim:step-007b-baseline} preserves exact stationary recovery.  These
are exactly `E_pair_entry`, `E_parallel_entry`, and the active
rank-r/zero-padding equivalence required by the sketch row.

## Explicit Rate Audit

- Exposed variables: `r`, `q_*`, `tau_r`, `omega`, `rho_ALS`,
  `beta_perp(M,h_M)`, `beta_FS`, `eta_FS`, `ell_c`, `h_U,h_V,h_W`, and the
  constants `96,192,3072,3276,3500,4096`.
- Hidden constants may depend on: universal numerical values only.
- Hidden constants may not depend on: `n`, `r`, `k`, `kappa_0`, `rho`,
  either confidence parameter, the deterministic base triple, target labels,
  or a generated/latent condition number.
- Fixed quantities: condition first on the accepted `E_sm`, `E_best`, and
  `E_quotient` outputs for one selected initialization.  This proof is then
  deterministic for one finite U/V/W sweep.
- Probability mode: pathwise on the accepted generated events; this step
  introduces no probability loss or conversion.
- Horizon mode: one finite cyclic entry sweep.  Perpendicular forcing is
  removed exactly mode by mode and is not accumulated beyond these calls.
- Norm mode: induced row and column l1 norms, ambient Euclidean column norm,
  common represented-product sup norm, normalized pair-Gram spectral floor,
  and the setting's quotient metric `d_Q`.
- Admissibility conditions and auxiliary tolerances: (15), (24), (30)--(32),
  and (36)--(37) discharge the beta, inverse, carried-budget, diagonal, and
  positivity domains before each call.  The only auxiliary tolerance is the
  setting-defined `tau_r`.
- Term absorption or simplification inequalities: (18)--(19) solve the beta
  bootstrap; (31), (37) prove the V/W inverse margins; (33), (38) give the
  exact chronological constants; and (41) proves the basin absorption.
- Probability conversion: none.
- Contribution to the Rate Specialization Bridge: this step supplies the
  generated first-sweep basin entry used by the subsequent contraction and
  stopping bridge; it does not simplify a public probability rate itself.
- Baseline-reduction check: Claim~\ref{claim:step-007b-baseline} proves exact
  zero error at the orthogonal equal-weight stationary specialization.  A
  finite nonstationary certificate retains its actual `tau_r` charges until
  this exact first sweep.

## Blockers

None.

## Notation And Assumption Notes

- `H_M`, `B_M`, `N_M`, and `F_M` are `appendix-local` exact current-record
  objects translated from the accepted target-projector decomposition.
  `C_N`, `E_N`, `B_N^0`, `Delta_C`, `Delta_J`, `d_M`, and `nu_M` are
  `proof-local` comparator/normalization objects.  Every comparator is
  produced from the same current `F_N`; no historical perpendicular Gram is
  reused.
- `beta_perp`, `beta_FS`, `eta_FS`, `E_pair_entry`, and
  `E_parallel_entry` are `public-facing` downstream interfaces.
  `b_0`, `L_beta`, and `ell_c` are `appendix-local` constants proved by the
  accepted carried-resolvent dependency.  Their provenance is (8), (16),
  and (11), respectively.
- The chronological budgets `epsilon_U`, `epsilon_V`, and `epsilon_W` are
  `appendix-local` deterministic envelopes defined in (14), not new
  assumptions.  The carried conditions `h_U,h_V,h_W` are generated records:
  (13) proves `h_U=0`, (27) produces `h_V=epsilon_U`, and (34) produces
  `h_W=epsilon_U+epsilon_V`.
- The normalized `31/32` floor applies to the direction pair Gram `J_M`.
  The literal active Gram is its positive diagonal congruence, so the proof
  uses the floor to establish invertibility without asserting an
  absolute-weight-independent eigenvalue for the unnormalized Gram.
- Target-span membership and zero perpendicular fields are derived only by
  Proposition~\ref{prop:step-007b-range-zero}.  Positive input scales come
  from positive realized weights and exponentials; positive output scales
  come from the proved `nu_M^2>1/2` margins.
- The inactive columns and their exact zeros are setting-defined procedure
  fields; (12) and (22) prove that the Moore--Penrose update preserves them.
- No `global_proof.md`, archived proof, prior same-step proof, or
  `proof_history` artifact was read or used as evidence for this proof.
