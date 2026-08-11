# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_6`.
- Sketch attempt: 2.
- Global unit attempt: 1 under sketch attempt 2.
- Reviewed `proof_sketch.md` SHA-256:
  `c6126ab9b81d7a7cbcae3b9b857923f3fe8e275ed1ba4376fd830270c5ec95e1`.
- Reviewed `proof_sketch_review.md` SHA-256:
  `524bc3e32fc6d334d4c6c78bf8e347888df2cd4bbbd21bf7c3dc1414c0c9b3a4`.
- Reviewed `setting.md` SHA-256:
  `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`.
- The reviewed sketch-review status is `ACCEPTED`, with viability score 8,
  `Smallest Retry Target = None`, and `Required Repair Bundle = None`.
- This diagnostic uses only the current setting, accepted sketch attempt 2,
  and its accepted review as binding inputs. Sketch-attempt-1 globals and
  step artifacts are archival and are not used as current proof evidence.

## Status

COMPLETE_DRAFT

The accepted sketch closes at theorem-diagnostic granularity. Every future
mathematical derivation is assigned to an unchanged sketch step with an
explicit source, interface, boundary trace, and producer-consumer path. No
global bridge, assumption, dependency, scope, or theorem-contract change is
needed before fresh step proofs begin.

## Attempted Theorem Claim

Goal mode is `exact-goal mode`. Fix the constants and objects in `setting.md`
and assume exactly the eight primitive conditions
`assump:base-scale`, `assump:cumulative-gram`,
`assump:base-weight-balance`, `assump:gaussian-smoothing`,
`assump:smoothing-margin`, `assump:subquadratic-rank`,
`assump:random-initialization`, and `assump:accuracy-confidence`. Use the
accepted sketch-attempt-2 outer controller: before active refinement in each
run it fixes

\[
 m_{\rm cap}=1+\left\lceil
 {\log(8\kappa _0^2/\epsilon)\over\log 4}\right\rceil,
\]

and a gate-passing run performs the unchanged exact cyclic Moore--Penrose ALS
updates and original relative-Frobenius residual test for at most this many
completed sweeps. A hit is successful and a nonhit is an observable timeout.

For universal choices of
`C_rank,C_burn,C_cert,C_rep`, prove uniformly over the deterministic base
triple that, with probability at least `1-delta_sm` over the once-drawn
smoothed tensor, the realized event `E_sm` holds: every realized column norm
is at least `(2 kappa_0)^(-1)`, `q_real<=q_*`, `Gamma<=1.01`, and every cyclic
Khatri--Rao Gram has smallest eigenvalue at least `1-q_*^2`. Conditional on
each such fixed tensor, with probability at least `1-delta_init` over the
independent full-run proposal tapes, SC-JEP-ALS returns a rank-at-most

\[
 k=\left\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\right\rceil
\]

tensor satisfying

\[
 \left\|T-\sum_{i=1}^k
 \widehat x_i\otimes\widehat y_i\otimes\widehat z_i\right\|_F
 \le \epsilon\|T\|_F.
\]

The runtime, including unsuccessful proposal tapes, gate-passing timeout
tapes, residual tests, and restarts, is polynomial in
`n,r,k,kappa_0,rho^(-1),log(1/epsilon),log(1/delta_init)` and uses only the
observed dense tensor and current factors. Its constants have no dependence
on the base triple, latent generating-factor access, or an unlisted generated
condition number.

The theorem also preserves the deterministic orthogonal equal-weight
baseline: when `q_real=0,Gamma=1`, the simultaneous projective update is
`(A^+,B^+,C^+)=(BC,AC,AB)`, its exact component fixed points have zero
same-state residual, the exact active CP point is fixed by each cyclic solve,
every chronological quotient refresh has common register zero, and the
original residual has no positive floor as `epsilon` decreases. The
`rho=0` language is only this deterministic limiting specialization, not a
probability claim outside `assump:gaussian-smoothing`.

## Whole-Proof Draft

### Block G1: smoothed realized geometry (`step_001`)

Condition on the deterministic base factors. Write each normalized realized
column as the normalized base column plus its directional and normalization
corrections. Gaussian norm and directional concentration, unioned over the
`3r` columns and `O(r^2)` pairs, split each normalized inner-product error
into three source classes:

\[
 O\!\left(\kappa _0\rho
 \sqrt{{\log(9r^2/\delta_{\rm sm})\over n}}\right),\qquad
 O\!\left(\kappa _0^2\rho^2
 \sqrt{{\log(9r^2/\delta_{\rm sm})\over n}}\right),\qquad
 O(\kappa _0^2\rho^2).
\]

The first is linear directional fluctuation, the second is centered
quadratic fluctuation, and the third is normalization bias. The two scalar
inequalities in `assump:smoothing-margin`, together with the base slack
`bar q<=q_*/4`, dominate these contributions after their row sums and union
factors are included. The same norm event gives the column floor
`(2 kappa_0)^(-1)`, and perturbing the base product weights inside their
`1+1/800` ratio gives `Gamma<=1.01`.

For a cyclic held pair, its normalized Khatri--Rao Gram is
`H_{M'} circ H_{M''}`. In each row,

\[
 \sum_{\ell\ne j}|(H_{M'})_{j\ell}(H_{M''})_{j\ell}|
 \le
 \left(\sum_{\ell\ne j}|(H_{M'})_{j\ell}|\right)
 \left(\sum_{\ell\ne j}|(H_{M''})_{j\ell}|\right)
 \le q_*^2.
\]

Gershgorin therefore gives the floor `1-q_*^2`. These conclusions form
`E_sm`; no realized trajectory property is assumed.

### Blocks G2-G3: window probability and all-target coverage (`step_002`, `step_003`)

Condition on `E_sm`. For proof target `j`, the three target raw coordinates
are independent standard normals. A one-dimensional Gaussian density
comparison on
`[t_r,t_r+t_r^(-1)]`, with `t_r^2=a_* log r`, gives one-mode mass of order
`r^(-a_*/2)(log r)^(-1/2)`. Across three modes this is

\[
 \Theta\!\left(r^{-3a_*/2}(\log r)^{-3/2}\right)
 =\Theta\!\left(r^{-5/3}(\log r)^{-3/2}\right).
\]

Conditional Gaussian regression against the target coordinate has mean at
most `q_*(t_r+t_r^(-1))` for each competitor. The accepted dyadic product
tail, with `b_*=19/18` and exponent `beta_*>1`, shows with universal
comparison constants that all three families of competing pair products are
at most `b_* log r` without changing the displayed order. This produces
`E_win`, activates all target denominators, and gives
`R_0<=b_*/a_*=19/20` and `S_0<=rR_0`.

Slots are independent even though target events within one slot need not be.
For each target,

\[
 \Pr(\hbox{target missed})\le (1-p_{\rm win})^k
 \le e^{-kp_{\rm win}}.
\]

Choosing `C_rank` so that `kp_win>=8 log r` and unioning only over the `r`
targets yields an all-target coverage event `E_cov` with universal one-run
probability `p_0>=1/2`. Target labels have served only this proof and do not
enter filtering or clustering.

### Block G4: simultaneous chart, fixed point, and certification (`step_004`)

For every covered target, expand all three contractions from the same old
state. Target terms provide the denominators, while off-target terms split
into weight-scaled pair products and realized Gram leakage. As long as
`Gamma R_t<1`, direct division yields exactly

\[
 R_{t+1}\le
 \left({\Gamma R_t+q_{\rm real}\over
 1-\Gamma q_{\rm real}R_t}\right)^2,
\]

\[
 S_{t+1}\le
 { (\Gamma R_t+q_{\rm real})
   \{\Gamma(1+q_{\rm real})S_t+q_{\rm real}\}
  \over (1-\Gamma q_{\rm real}R_t)^2}.
\]

At entry the denominator is at least `31/32`. Interval induction keeps the
same positive margin, gives `R_10<=6.0e-8`, and, after the declared universal
burn horizon, gives `S_tb<=q_*/16`. In the target dual bases, the ratio mass

\[
 a_t=\max_{M,j}\sum_{\ell\ne j}|b^t_{M,\ell j}|
\]

obeys

\[
 a_{t+1}\le {2(\Gamma S_t+q_{\rm real})
 \over 1-\Gamma q_{\rm real}R_t},
\]

so `a_tb<=1/1024`. The ambient conversion
`||h_M-sign(g_{M,j})||_2<=2a(h)+4q_*` puts this state in the closed chart
with `a_chart=1/512` and `chi_chart=1/128`. On that chart,

\[
 a({\cal J}(h))\le 2(q_*+2a(h)^2)\le 1/1024,
\]

and the same ambient conversion proves self-mapping. Differentiating the
normalized contractions gives `L_chart<1/4`, while their norms remain in
`[31lambda_j/32,33lambda_j/32]`. Banach's theorem gives a unique projective
fixed point and
`zeta_t<=3(1/4)^(t-tb)`. The declared `L_cert=O(log r)` makes this at most
`tau_r`, producing the stored-state event `E_cert`. Denominator persistence,
chart membership, and certification are conclusions, not public assumptions.

### Block G5: same-state certificate and all-certified tail ledger (`step_004b`)

For any certified slot and mode, let `d_{M,a}>0` be its contraction norm and
`epsilon_{M,a}` its minimizing projective sign. Multilinearity and the
definition of `zeta` give the exact same-state equation

\[
 P_M^{\rm raw}D_M
 =G_MK_M^{\rm raw}\Sigma_M+R_M^{\rm raw},
 \qquad
 \|R_M^{\rm raw}(:,a)\|_2\le d_{M,a}\tau_r,
\]

where `Sigma_M` acts on columns on the right and `K_M^raw` is formed from the
two other directions of this same stored state. No look-ahead or post-update
pair matrix enters. After the score and sign argument in G6, the proof-only
product-preserving orientation gives

\[
 \bar P_MD_M=G_M\bar K_M+\bar R_M,
 \qquad
 \|\bar R_M(:,a)\|_2\le d_{M,a}\tau_r.
\]

Before labels or selection, normalize the dual coefficient vectors and write
`mu_i=lambda_i/lambda_min`. The exact coefficient-vector expansion is

\[
 {(H_{M'}c_{M'})\circ(H_{M''}c_{M''})
  \over s_{M'}s_{M''}}
 =\widetilde x_{M'}\circ\widetilde x_{M''}+g_M,
 \qquad \|g_M\|_1\le 2q_*+q_*^2=:\eta_G.
\]

Absorbing the coefficient norms into
`hat alpha_M=a_Ms_M/(s_{M'}s_{M''})` cancels the first-order scalar
normalization contribution; its retained second-order reserve is
`eta_N=5q_*^2`. Passing the certificate through the finite support costs
`eta_C=2sqrt(r)tau_r`. Hence

\[
 \eta_0=\eta_G+\eta_N+\eta_C,
 \qquad \eta_{\rm rel}=8\eta_0,
 \qquad 0.69\le\widehat\alpha_M\le1.03.
\]

With threshold `vartheta=1/8` and
`vartheta_*=vartheta-8eta_rel>1/16`, the retained-coordinate denominator is
positive. Multiplying the three modewise coordinate ratios cancels the
normalization coefficients and yields product error at most `104eta_0`; the
unit-norm reciprocal step yields the weighted profile error

\[
 \left|{\mu_i^2x_{M,i}^2\over\kappa_I^2}-1\right|
 \le144\eta_0.
\]

The threshold propagation gives an exhaustive no-label ledger: `LOW` when
`|theta|<0.7lambda_min`; a singleton core with common index, tail
`<=a_cert=7q_*+8tau_r<1/512`, and score in
`[s_-lambda_j,s_+lambda_j]`; or a core of size at least two with
`tail_score<=16eta_0`. Threshold-straddling states either enter the latter
core or fall into `LOW`. This is `E_cert_tail`, and its only dimension
conversion is the displayed `sqrt(r)tau_r` charge.

### Block G6: weighted support, score filtering, and clustering (`step_005`)

The multi-support weighted profile implies

\[
 {|\theta|\over\lambda_{\min}}
 \le \kappa_I+144\eta_0+\operatorname{tail\_score}
 \le {\Gamma\over\sqrt m}+160\eta_0,
 \qquad m\ge2.
\]

Thus `|theta|<=s_mix lambda_max`, where
`s_mix=1/sqrt(2)+160eta_0`, while singleton component witnesses lie between
`s_-lambda_j` and `s_+lambda_j`. The numerical inequalities

\[
 1.01s_{\rm mix}<0.794<0.85s_-,
 \qquad {s_-\over1.01s_+}>0.901>0.85
\]

show that every multi-support or `LOW` state is removed by the existing
`0.85sigma_max` filter and every component witness survives. The weight
imbalance is not hidden in `q_*`; it is carried by `mu` and `Gamma`.

Two surviving singleton states for the same target have absolute modewise
correlation at least `1-32q_*`; states for distinct targets have correlation
below `1/32`, hence below the graph threshold `1-64q_*`. Connected components
therefore coincide with targets, and the algorithm selects exactly one
representative per target without labels. A retained score is above
`0.8lambda_min`, so it is nonzero. Taking inner products in the raw
certificate equation aligns all minimizing signs with `sign(theta)`; placing
that sign in the third mode and using a remaining product-one sign gauge
preserves every initialized rank-one tensor. This produces `E_support_wt`,
`E_cluster`, and `E_gauge` in the realized-target metric.

### Block G7: selected coefficient closure and target-metric initialization (`step_006`, `step_007`)

In the target dual bases write `bar B_M=A_M+E_M`, with diagonal `A_M`, and
put

\[
 \chi=\max_{M,j}\sum_{\ell\ne j}|(E_M)_{\ell j}|,
 \qquad \omega=q_*^2+r\tau_r.
\]

The same-state pair equation, denominator interval, and per-entry dual
residual bound give

\[
 \left|{(L_M^T\bar R_M)_{\ell j}\over\lambda_j}\right|
 \le2\tau_r,
\]

and therefore both its induced row and column masses are `<=2r tau_r`. The
column bootstrap is

\[
 \chi\le4(q_*+2\chi+2q_*^2)^2+4r\tau_r.
\]

The chart bound selects its small root, `chi<=32omega`, rather than the large
root. The row recurrence

\[
 \eta_{\rm row}\le
 4(q_*+2\chi+2q_*^2)(q_*+2\eta_{\rm row}+2q_*^2)
 +4r\tau_r
\]

has self coefficient below `1/8`, so
`eta_col<=64omega` and `eta_row<=128omega`. This produces `E_col`,
`E_row_residual`, and `E_row`; the certificate charge is `r tau_r`, never
`r^2 tau_r`.

The positive best scalar `bar theta_j` and product-one equal-norm gauge now
define the represented-product coordinate
`s_j=log(gamma_j/lambda_j)`. Unit normalization and the dual controls give

\[
 |\bar\theta_j/\lambda_j-1|\le64\omega,
 \qquad
 \max_M\|\bar p_{M,j}-g_{M,j}\|_2\le64\omega.
\]

The cube-root relative amplitude error is at most `128omega`; no absolute
`kappa_0` scale remains in the quotient error. Expanding the represented
tensor into scalar, one-direction, pair, and cubic classes, and using

\[
 r\lambda_{\min}^2(1-q_*^2)
 \le\|T\|_F^2
 \le r\lambda_{\max}^2(1+q_*^2),
\]

gives both

\[
 \|e_{\rm best}\|_Q\le512\omega,
 \qquad
 {\|T-T_{\rm init}\|_F\over\|T\|_F}\le512\omega.
\]

Moreover the exact target projector gives
`bar P_M=G_MB_M+N_M`, `G_M^TN_M=0`, induced row/column error
`<=48omega`, and every `N_M` column `<=tau_r`. These are the
same-realized-target outputs `E_best,E_quotient` used in G8.

### Block G8: collective perpendicular audit and exact first-sweep entry (`step_007b`)

Let `F_M=N_M^TN_M` and `H_M^par=B_M^TH_MB_M`. The exact held direction-pair
Gram decomposes into its parallel part and

\[
 H_{M'}^{\rm par}\circ F_{M''}
 +F_{M'}\circ H_{M''}^{\rm par}
 +F_{M'}\circ F_{M''}.
\]

Its induced row and column mass is bounded by

\[
 \beta_\perp=
 2(1+q_*)(1+48\omega)^2\tau_r^2+r\tau_r^4
 <10^{-8}\omega.
\]

This includes the coherent shared-perpendicular `r tau_r^4` term. After
retaining the diagonal component amplitudes, the normalized cross-Gram and
pair-Gram deviations satisfy

\[
 \|\Delta_{\rm cross}\|_{rc}\le96\omega,
 \qquad
 \|\Delta_{\rm pair}\|_{rc}
 \le192\omega+2\beta_\perp<1/512.
\]

Every first-sweep held pair therefore has eigenvalue at least `31/32`. The
resolvent identity and amplitude conjugation give

\[
 \|D_\lambda^{-1}Z_M-I\|_{rc}
 \le 8\Gamma^2(
 \|\Delta_{\rm cross}\|_{rc}+
 \|\Delta_{\rm pair}\|_{rc})+4\|\alpha\|_\infty.
\]

Chronological substitution bounds the U, V, and W updated fields by
`3072(omega+beta_perp)`, `3456(omega+beta_perp)`, and
`4096(omega+beta_perp)`, respectively. The exact unfolding identity

\[
 T_{(M)}=G_M\operatorname{diag}(\lambda)
 (G_{M''}\odot G_{M'})^T
\]

shows that each nonsingular active solve is exactly `G_MZ_M`. Thus the U
update removes `N_U`, the V update removes `N_V`, and the W update removes
`N_W`; no projection changes the algorithm. Frozen zero columns remain zero
under the block Moore--Penrose identity. After one balanced full sweep,

\[
 N_U^+=N_V^+=N_W^+=0,
 \qquad
 \|e^1\|_Q\le4096(\omega+\beta_\perp)<\rho_{\rm ALS}/3.
\]

This produces `E_pair_entry,E_parallel_entry` before target-span membership
is consumed.

### Block G9: chronological quotient contraction (`step_008`)

On the generated target-span tube, quotient positive componentwise scalings
with product one and canonically balance every component to equal norms. The
full state is

\[
 e=(C_U,C_V,C_W,s),
 \qquad P_M=G_M(I+C_M),
 \qquad s_j=\log(\gamma_j/\lambda_j),
\]

with one common product register. Exact block-scale equivariance implies that
the solved-output map
`U_M^q(e)=(C_M^out,s_M^out)` depends only on the two held directions. In raw
normal-equation form,

\[
 X_M^+=T_{(M)}K_{\rm dir}J^{-1}R_\gamma^{-2},
 \qquad
 \gamma_j^{\rm out}
 =\|T_{(M)}K_{\rm dir}J^{-1}(:,j)\|_2,
\]

so the incoming common product scale cancels rather than being bounded as an
additive defect.

For two legal states and held-direction discrepancy `D_h`, the target-span
normal equations, pair floor, Hadamard resolvent, and weight transfer give

\[
 \max\{c_M^{\rm out},
 \|\Delta s_M^{\rm out}\|_\infty\}
 \le \ell D_h,
 \qquad
 \ell=8q_*+32\rho_{\rm ALS}<1/16.
\]

Apply the exact chronology

\[
 e\xrightarrow{{\cal U}_U^q,\,\operatorname{Refresh}_s^U}e_U
 \xrightarrow{{\cal U}_V^q,\,\operatorname{Refresh}_s^V}e_V
 \xrightarrow{{\cal U}_W^q,\,\operatorname{Refresh}_s^W}e_W.
\]

Each refresh replaces the solved direction and overwrites the single common
product register. Product-preserving canonical balancing makes `e_U,e_V,e_W`
represent exactly the literal post-U, post-V, and post-W ALS states. The U
and V solved outputs are at most `ell D`, and the W output is at most
`ell^2D`. Therefore

\[
 \Psi^q(e):=e_W,
 \qquad
 d_Q(\Psi^q(e),\Psi^q(\widetilde e))
 \le\ell d_Q(e,\widetilde e)<{1\over16}d_Q(e,\widetilde e).
\]

Taking the second state to be the exact fixed point proves tube preservation
and the all-sweep recurrence

\[
 \|e^{s+1}\|_Q\le\ell\|e^s\|_Q,
 \qquad
 \sum_{s\ge1}\|e^s\|_Q
 \le{1\over1-\ell}\|e^1\|_Q
 <{16\over15}\|e^1\|_Q.
\]

Exact unfolding keeps every perpendicular field zero. Historical values
`s_U^+,s_V^+` are overwritten and do not accumulate. This is
`E_basin_parallel`; no contraction is claimed on the old unrestricted tube
or for raw per-mode amplitudes.

### Block G10: original-residual stopping on covered tapes (`step_009`)

The balanced-chart comparison transfers the quotient state to the original
rank-`k` Frobenius residual with constant
`C_res=8kappa_0^2`. Using the conservative factor `1/4` after the one entry
sweep,

\[
 {\|T-T^{m}\|_F\over\|T\|_F}
 \le 8\kappa_0^2,4^{-(m-1)}.
\]

Hence every tape on the producer chain

\[
 E_{\rm cov}\longrightarrow E_{\rm parallel\_entry}
 \longrightarrow E_{\rm basin\_parallel}
 \longrightarrow E_{\rm stop}
\]

hits the original residual threshold by
`m_epsilon=1+ceil(log(8kappa_0^2/epsilon)/log4)`. This is a finite-horizon
conclusion only on covered tapes; it is not extended to every tape that
passes the observable cluster gate.

### Block G11: all-tape timeout, dense cost, restart, and public rate (`step_010`)

The run controller fixes `m_cap=m_epsilon` before active refinement. Every
run lies in exactly one observable branch: it exits during finite proposal or
cluster processing; it passes the gate and hits the original residual within
`m_cap`; or it passes the gate and times out at the cap. A singular active
Gram still has a prescribed finite Moore--Penrose update. The counter relation
is simply `t -> t+1`: after each completed sweep, either the residual exits or
the remaining integer budget `m_cap-t` falls by one. Thus every tape produces
`E_run_cap`, independently of `E_cov` or basin membership.

One arbitrary active sweep and exact residual test are computed from the
observed dense unfoldings and current active factors, with cost

\[
 C_{\rm act}(n^3r+nr^2+r^3+nk).
\]

The terms respectively cover dense unfolding-design products, factor/pair
Grams, an ordinary inverse or pseudoinverse, and frozen-zero bookkeeping.
Proposal, certification, filtering, and graph work cost

\[
 C_{\rm prop}{k(L_{\rm burn}+L_{\rm cert})n^3+kn^3+k^2n\}.
\]

Consequently every successful or unsuccessful run obeys

\[
 T_{\rm run}\le C_{\rm prop}{k(L_{\rm burn}+L_{\rm cert})n^3+kn^3+k^2n\}
 +C_{\rm act}m_{\rm cap}(n^3r+nr^2+r^3+nk).
\]

On `E_cov`, G10 makes the cap nonbinding, so capped-run success probability
is still at least `p_0>=1/2`. Conditional independence of completed tapes
then gives

\[
 \Pr(\hbox{all }J\hbox{ runs fail}\mid E_{\rm sm})
 \le(1-p_0)^J\le\delta_{\rm init}
\]

for
`J=max{1,ceil(C_rep log(1/delta_init))}` and
`C_rep>=1/log 2`. Costs add as `T_total<=JT_run`. Only a residual-hitting
candidate is eligible for the smallest-residual selector, so timeout tapes
are never transferred to the theorem target. This proves the requested rank,
accuracy, nested probability, and polynomial-rate statement without a
confidence factor in `k` or latent-factor arithmetic.

### Block G12: orthogonal equal-weight baseline (`step_011`)

Under the deterministic specialization `q_real=0,Gamma=1`, direct
substitution into the old-state simultaneous map gives

\[
 (A_\ell^+,B_\ell^+,C_\ell^+)
 =(B_\ell C_\ell,A_\ell C_\ell,A_\ell B_\ell),
 \qquad R_{t+1}\le R_t^2,
 \qquad S_{t+1}\le R_tS_t.
\]

A finite certified transient may still have nonzero certificate and
perpendicular residuals, and those are retained through G8. At the exact
component representative, however, `zeta=0`, every same-state residual is
zero, the Khatri--Rao Gram is identity, and every exact cyclic solve returns
the same factor. Hence every quotient output and refresh returns the zero
state, `Psi^q(0)=0`, the residual test succeeds before the cap, and there is
no error floor. This proves the original baseline conclusion rather than a
finite-remainder surrogate.

### Assembly

G1 has probability at least `1-delta_sm`. Conditional on its realized tensor,
G2-G3 supply `p_0>=1/2` for `E_cov`. On `E_cov`, G4-G8 produce the actual
selected initialization and its exact first-sweep entry, G9 supplies the
literal-orbit quotient contraction, and G10 supplies a residual hit by the
pre-registered cap. Independently, G11 terminates every noncovered tape and
therefore makes the restart product and cost sum legitimate. The `J`-run
product yields conditional success at least `1-delta_init`, with output rank
at most `r<=k` and the original relative Frobenius guarantee. G12 verifies
baseline invariance. All generated conditions are produced before use, and
the proof never conditions the public theorem on a generated basin or
stopping event.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G1: smoothed geometry | Produces the fixed-instance event and all structural floors | `step_001` | Primitive base and smoothing conditions | `assump:base-scale`, `assump:cumulative-gram`, `assump:base-weight-balance`, `assump:gaussian-smoothing`, `assump:smoothing-margin` | None at global level; fresh local concentration derivation required |
| G2: one-slot window | Supplies the exact rare-event rate and ratio entry | `step_002` | `E_sm` | `assump:random-initialization` | None at global level; fresh local tail constants required |
| G3: coverage | Gives universal positive one-run coverage | `step_003` | `E_win,p_win` | `assump:subquadratic-rank`, `assump:random-initialization` | None at global level; fresh coupon calculation required |
| G4: chart/certificate | Produces denominator persistence, chart membership, fixed point, and stored states | `step_004` | `E_sm,E_cov` | `assump:subquadratic-rank` | None at global level; recurrence and derivative bounds are step-local |
| G5: certificate ledger | Produces same-state equations and the exhaustive no-label tail ledger | `step_004b` | `E_cert,E_sm` | Procedure branch from `assump:random-initialization` | None at global level; all constants have an exposed derivation path |
| G6: classifier/cluster | Proves observable singleton selection and one cluster per target | `step_005` | `E_cert_eq,E_cert_tail,E_sm,E_cov` | No new primitive condition | None at global level; score and graph inequalities are step-local |
| G7: coefficient/target transfer | Closes selected row/column masses and balanced initialization | `step_006`, `step_007` | `E_cluster,E_gauge,E_cert_eq,E_cert_tail,E_sm` | `assump:base-weight-balance` already included | None at global level; small-root, absorption, and tensor expansion are localized |
| G8: first-sweep entry | Removes collective perpendicular fields and enters exact spans | `step_007b` | `E_sm,E_best,E_quotient` | `assump:base-scale` for procedure scales | None at global level; exact resolvent envelopes are step-local |
| G9: quotient contraction | Builds the legal common-register full-sweep map and invariant contraction | `step_008` | `E_sm,E_parallel_entry` | `assump:base-scale` already included | None at global level; citation is qualitative only and numeric work is direct |
| G10: stopping | Transfers contraction to the original residual by the explicit horizon | `step_009` | `E_parallel_entry,E_basin_parallel` | `assump:accuracy-confidence` | None at global level; chart-to-residual comparison is localized |
| G11: cap/restart/rate | Gives finite cost for every tape, conditional confidence, and runtime | `step_010` | `E_cov,E_stop`; independent `E_run_cap` path | `assump:random-initialization`, `assump:accuracy-confidence`; accepted cap clause | None at global level; counter, dense count, and restart product are step-local |
| G12: baseline | Preserves the exact orthogonal equal-weight zero-error conclusion | `step_011` | Exact specializations of earlier outputs | Deterministic limiting clause, not a new assumption | None at global level; direct substitution is step-local |
| Final assembly | Combines nested events, rank, accuracy, runtime, and baseline | Direct assembly | G1-G12 | Exactly the eight primitive setting conditions | None |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | G1 | Starts every dynamic branch | Normalization expansion, three perturbation classes, row/union bookkeeping, weight control, Schur/Gershgorin floor | Produces `E_sm`; no archived step proof is consumed |
| `step_002` | G2 | Consumes `E_sm` | Two-sided Gaussian window mass, regression, competitor product tails, finite-small-r constants | Produces `E_win,p_win` in exact raw-coordinate convention |
| `step_003` | G3 | Consumes `E_win` | Independent-slot miss bound and target union | Produces `E_cov,p_0`; no cross-target independence is needed |
| `step_004` | G4 | Consumes `E_sm,E_cov` | Exact R/S recurrences, denominator induction, dual-l1 bridge, self-map, derivative contraction, certification horizon | Produces all generated chart/certificate conditions |
| `step_004b` | G5 | Consumes `E_cert,E_sm` | Same-state right-sign identity, coefficient-vector Gram expansion, scalar cancellation, finite-support certificate charge, exhaustive threshold ledger | Produces `E_cert_eq,E_cert_tail` before labels |
| `step_005` | G6 | Consumes G5 and coverage only for existence of witnesses | Weighted support/profile classification, filter margins, graph separation, theta/sign/gauge consistency | Produces `E_support_wt,E_cluster,E_gauge` |
| `step_006` | First half of G7 | Consumes selected G6 outputs and G5 equation | Column small-root, per-entry residual transfer, separate row/column sums, row absorption | Produces `E_col,E_row_residual,E_row` |
| `step_007` | Second half of G7 | Consumes `step_006` and gauge | Relative-amplitude transfer, tensor residual decomposition, exact projector decomposition | Produces `E_best,E_quotient` |
| `step_007b` | G8 | Consumes G1 and G7 | Collective `beta_perp`, cross/pair-Gram envelopes, three inverse checks, exact zero-padding/range trace, sequential entry constants | Produces `E_pair_entry,E_parallel_entry` before G9 |
| `step_008` | G9 | Consumes G1 and exact G8 entry | Quotient kernel, scale cancellation, solved-output bounds, three refresh identities, literal-orbit equivalence, sequential full-sweep contraction | Produces `E_basin_parallel,Psi^q`; does not claim unrestricted-tube contraction |
| `step_009` | G10 | Consumes G8-G9 only | Original-metric residual comparison and explicit finite stopping horizon | Produces `E_stop` only on the covered producer path |
| `step_010` | G11 | Consumes `E_cov,E_stop` for success and independently proves all-tape cap | Exhaustive branch split, Moore--Penrose timeout trace, observed dense cost, restart probability and cost sum | Produces `E_run_cap,E_restart`; never infers basin from the cluster gate |
| `step_011` | G12 | Uses exact specializations of G4, G8-G10 | Exact map and stationary cyclic-solve substitution | Preserves zero residual rather than only vanishing defect bounds |

## Dependency And Assumption Audit

The attempted theorem is unconditional relative to the eight primitive
conditions. All other named conditions are derived. No public assumption
contains a realized event, trajectory membership, basin membership,
conditioning floor, stopping claim, or timeout result.

| Condition or object | Provenance classification | Legal producer | First theorem-critical consumers | Audit result |
| --- | --- | --- | --- | --- |
| Eight `assump:*` conditions | Primitive conditions | `setting.md` | G1-G3, G10-G11 as listed above | Legal theorem assumptions |
| `E_sm` | Derived static event | `step_001` | `step_002,003,004,007b,008` | Produced before all consumers |
| `E_win,p_win` | Derived proposal event/rate | `step_002` | `step_003` | Produced before coverage |
| `E_cov,p_0` | Derived run event/rate | `step_003` | `step_004,005,010` | Used for success, never for all-tape termination |
| `E_RS,E_chart,E_chart_l1,E_cert` | Derived trajectory/chart outputs | `step_004` | `step_004b,005` | Denominator and chart facts are not assumed |
| `E_cert_eq,E_cert_tail` | Derived same-state outputs | `step_004b` | `step_005,006` | Produced for every certified state before selection |
| `E_support_wt,E_cluster,E_gauge` | Derived classifier outputs | `step_005` | `step_006,007` | No label enters the algorithmic graph |
| `E_col,E_row_residual,E_row` | Derived selected-state controls | `step_006` | `step_007` | Column root precedes row absorption |
| `E_best,E_quotient` | Derived target-transfer outputs | `step_007` | `step_007b` | Same realized target and original tensor metric |
| `E_pair_entry,E_parallel_entry` | Derived first-sweep outputs | `step_007b` | `step_008,009` | Target-span membership is produced before use |
| Quotient intermediate states and `E_basin_parallel` | Derived proof coordinates and invariant | `step_008` | `step_009` | `e_U->e_V->e_W` is chronological and noncircular |
| `E_stop` | Derived covered-tape stopping output | `step_009` | `step_010`, final success assembly | Never assumed on arbitrary gate-passing tapes |
| `E_run_cap` | Derived deterministic all-tape output | `step_010` from pre-registered cap and observable computation | Restart cost and final runtime | Independent of `E_cov`, entry, basin, and convergence |
| `E_restart` | Derived probability/runtime output | `step_010` | Final assembly | Uses only completed independent tapes |
| Orthogonal exact fixed point | Derived deterministic specialization | `step_011` | Baseline clause | Does not alter positive-`rho` theorem assumptions |

There is no missing derived-condition bridge. Local lemmas may condition on
their accepted dependency outputs, but the final theorem conditions only on
the primitive setting and the explicitly nested randomness.

## Citation And Tool Audit

| Source or tool | Current-branch objects and role | Assumptions/hypotheses to discharge | Needed conclusion and convention check | Affected block / Step ID | Audit status |
| --- | --- | --- | --- | --- | --- |
| Gaussian norm and directional concentration | Perturbations `g_j^(M)~N(0,rho^2I/n)` and normalized realized columns | Independence, deterministic base norms, explicit union size, `assump:smoothing-margin` | Separate linear, quadratic, and normalization bounds in the setting's Euclidean normalization | G1 / `step_001` | Direct primitive-source derivation; exact raw-assumption path fixed |
| Schur product identity and Gershgorin | Cyclic Khatri--Rao Grams `H_{M'} circ H_{M''}` | Unit diagonals and realized row sums `<=q_*` | Spectral floor `1-q_*^2` for the exact held design | G1 / `step_001` | Standard finite-dimensional facts; source and consumed matrices coincide |
| Conditional Gaussian regression and dyadic product tails | Raw proposal coordinates `Z_{i\ell}^{(M)}` | Covariance is the realized Gram, target window, `q_real<=q_*` | Two-sided `p_win` comparison and competitor pair event | G2 / `step_002` | Direct Gaussian calculation in exact raw-coordinate convention |
| Independent-slot coupon/miss bound | `k` complete Gaussian triples | Slot independence from `assump:random-initialization`; no target independence | `kp_win>=8log r` and `p_0>=1/2` | G3 / `step_003` | Standard Bernoulli miss inequality with explicit union |
| Banach fixed-point theorem | Closed projective chart and simultaneous map `J` | Complete closed chart, self-map, `L_chart<1` | Unique projective fixed point and geometric displacement | G4 / `step_004` | Current-notation wrapper; self-map and derivative bounds must be proved locally |
| Multilinearity and target dual algebra | Same stored state, `K_M^raw`, `L_M`, barred orientation | Nonzero contraction branch, same-state pair construction, product-one signs | Exact certificate, coefficient-vector expansion, row/column transfer | G5-G7 / `step_004b,005,006,007` | Direct derivation; no external result substitutes for constants or signs |
| Exact CP unfolding and Moore--Penrose block identity | Active rank-`r` design plus `k-r` frozen zeros | Held active Gram nonsingular on entry; pseudoinverse selection on arbitrary tapes | `G_MZ_M` range containment on covered entry and finite singular-branch computation on timeout tapes | G8,G11 / `step_007b,010` | Exact setting convention; range claim is used only where inverse floor was produced |
| Resolvent identity and induced Hadamard inequalities | First-sweep and target-span pair Grams | Floors `1-q_*^2,31/32`, row/column raw controls | Cross/pair transfer, inverse bounds, coordinate-output Lipschitz estimates | G8-G9 / `step_007b,008` | Direct matrix derivation; no hidden condition number |
| Uschmajew, *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation*, DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, Theorems 3.3 and 3.5 | Active rank-`r` CP factors modulo componentwise scaling; qualitative quotient and block-Gauss--Seidel interpretation | Nondegenerate local CP representation and quotient removal of the scaling kernel; map the branch's positive chart and cyclic block order | Qualitative authority that ALS is block Gauss--Seidel on the scaling quotient. It does not supply `rho_ALS`, `ell`, target-span entry, refresh identity, timeout, or dense cost | G9 / `step_008` | Stable source identity and non-output boundaries are explicit; all theorem-specific interfaces are direct local obligations |
| Canonical equal-norm balancing and block scale equivariance | Literal active factors and product-one component scalings | Nonzero columns on the generated positive chart | Same represented rank-one products, one common `s`, and literal-orbit identity of `e_U,e_V,e_W` | G9 / `step_008` | Current-notation direct derivation; same-target compatibility explicit |
| Dense unfolding arithmetic count | Observed dense `T_(M)`, current active factors, frozen zeros | Standard dense representation and Moore--Penrose computation | Per-sweep cost `O(n^3r+nr^2+r^3+nk)` with no latent factors | G11 / `step_010` | Syntactic operation count, independent of basin or convergence |

No cited theorem is used as proof authority for a numerical constant, a
generated event, the common-register chronology, or the all-tape timeout.
Fresh step proofs must either derive the listed standard facts in current
notation or cite them appropriately in the eventual public paper bundle.

## Quantitative Dependence Audit

- Exposed structural variables: `r,n,k,kappa_0,rho,q_*,Gamma` and the fixed
  regime exponents `d_kappa,d_rho`; `q_*,a_*,b_*` are fixed numerical
  constants.
- Exposed stochastic variables: `delta_sm` for the once-drawn tensor and
  `delta_init` for conditional proposal/restart randomness. The modes remain
  separate: `Pr(E_sm)>=1-delta_sm`, and for each tensor in `E_sm`,
  `Pr(success|T)>=1-delta_init`.
- Exposed algorithmic variables: rank
  `k=ceil(C_rank r^(5/3)(log r)^(5/2))`, finite proposal horizons
  `L_burn,L_cert=O(log r)`, accuracy `epsilon`, active horizon
  `m_cap=1+ceil(log(8kappa_0^2/epsilon)/log4)`, and restart count
  `J=max{1,ceil(C_rep log(1/delta_init))}`.
- Auxiliary tolerances and radii: `tau_r=q_*^2/(10^4r)`,
  `omega=q_*^2+r tau_r`, `beta_perp`, `rho_ALS=1/1024`, and
  `ell=8q_*+32rho_ALS<1/16`. They are explicit derived quantities, not hidden
  assumptions.
- Hidden constants may depend only on universal Gaussian/arithmetic constants,
  fixed numerical thresholds, and the declared finite regime exponents. They
  may not depend on the base triple, realized perturbations, either confidence
  parameter, `epsilon`, or an unlisted generated condition number.
- Fixed quantities in asymptotics: `q_*,a_*,b_*` and universal proposal,
  certification, and restart constants. The statement `k/r^2=o(1)` holds with
  these fixed while `r` grows.
- Probability mode: high probability over smoothing, then conditional high
  probability over initialization/restarts. Deterministic implications are
  conditioned only on generated events already produced by earlier blocks.
- Horizon mode: static for G1; fixed finite proposal horizon for G2-G6; one
  finite entry sweep plus horizon-uniform geometric contraction on the
  generated target-span domain for G8-G10; deterministic stopping-time cap
  for every tape in G11; exactly `J` completed restarts.
- Norm mode: Euclidean column norm; induced row/column `l1` matrix masses;
  Khatri--Rao spectral norm; quotient metric `d_Q`; and the original relative
  Frobenius residual. Every transfer names its source and target norm.
- Public specialization bridge: choose `k,L_burn,L_cert,m_cap,J` as displayed;
  verify `kp_win>=8log r`, the chart/certificate horizons, all numerical
  absorptions, `4096(omega+beta_perp)<rho_ALS/3`,
  `4^{-(m_cap-1)}<=epsilon/(8kappa_0^2)`, and
  `(1-p_0)^J<=delta_init`; then insert these into the displayed dense runtime.
  No term may be dropped by prose in the eventual assembly.
- Baseline reduction: finite q-zero transients keep their certificate and
  perpendicular charges. Only the exact stationary orthogonal equal-weight
  specialization sets them to zero. The cap is nonbinding there and introduces
  no residual floor, so the inherited baseline conclusion is unchanged.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ---------------------------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ----------------------------------- | ---------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| `E_sm` | Static norm, interference, weight, and positive pair-Gram event | Once per smoothed tensor | Three perturbation classes plus row union; pair off-diagonal mass `<=q_*^2` | Base norm, Gram slack, and weight slack | Linear directional, quadratic, normalization, finite union tails | Finite static union; no trajectory accumulation | Structural lower/upper comparison | Primitive base/smoothing assumptions; zero columns excluded by norm event | Lower norm and Gram slack have the needed positivity; upper smallness alone is not used | Produced realized factors are exactly all consumed factors | step-local | Primitives -> `step_001` -> every consumer | At orthogonal zero-smoothing boundary, exact geometry is retained before proposals | Each defect class is separately dominated before summing; Gershgorin gives `1-q_*^2` | Five G1 primitive assumptions | Norm/Gram/weight outputs | Orthogonal boundary succeeds; missing norm slack could make normalization undefined | Later denominators and inverses could be singular |
| `E_win,E_cov` | Rare activation and all-target one-run source | Finite `k` slots in one run | `p_win=Theta(r^(-5/3)(log r)^(-3/2))`; miss `<=e^(-kp_win)` | Gaussian target-window density and independent slots | Competitor regression/product tails and finite slot misses | Finite event; misses do not persist beyond one run | Structural lower comparison plus finite union | `E_sm` and primitive Gaussian tape; target denominators activated by window | Two-sided density supplies a nonzero lower rate, not merely an upper tail | Raw window coordinates are the coordinates used by `R_0,S_0` | step-local | `step_001->002->003`; coverage precedes trajectory use | First covered state has all target denominators nonzero and `R_0<=19/20` | `kp_win>=8log r` gives union miss below one half | `assump:subquadratic-rank`, `assump:random-initialization` | `E_sm,E_win` | A miss is a run failure; no chart claim is made | Without lower window mass, the rank rate and restart source vanish |
| `E_RS,E_chart,E_cert` | Denominator invariant, finite-horizon recurrence, chart self-map, stored-state certificate | Burn plus certification window | Displayed `R,S,a` recurrences; `J(C_j) subset C_j`; `zeta_t<=3(1/4)^(t-tb)` | Target pair product and denominator `1-Gamma qR`; chart derivative margin | Persistent but bounded `q_real` forcing, weights, finite initial pair mass | Locally absorbed into invariant interval over finite horizon; q forcing need not vanish | Self-contraction and structural lower comparison | `E_sm,E_win`; zero contraction exits before certificate | Target lower coefficient supplies denominator and contraction norms | Ratios/chart are against same realized targets; stored state compared to own look-ahead | step-local | `E_sm,E_win -> recurrence -> chart -> certificate` | First update has denominator `>=31/32`; at q=0 it is exact pair multiplication | Invariant interval preserves denominator; chart factor `<1/4` geometrically reaches `tau_r` | Rank/horizon primitives | `E_sm,E_win,E_cov` | Noncovered states are not assigned this chart; zero contraction is run failure | Map could be undefined or certification unreachable |
| `E_cert_eq,E_cert_tail` | Same-state normal equation and exhaustive support ledger | One finite calculation per certified slot | `P D=G K Sigma+R`, `||R(:,a)||<=d tau_r`; defects `eta_G,eta_N,eta_C`; profile `144eta_0` | Positive contraction norm and exact coefficient-vector relation | Gram, scalar-normalization, certificate residual, threshold straddling | One finite unknown-sign residual; `sqrt(r)tau_r` charged once | Algebraic coupling and structural comparison | `E_cert,E_sm`; zero-contraction branch excluded | Exact multilinearity supplies equation; retained floor supplies ratio denominators | Same stored state and realized basis; no target-distance surrogate is asserted | step-local | `step_004` produces state/norm before `step_004b`; classifier consumes later | Finite q-zero transient keeps residual; exact stationary state has zero residual | First-order scalar cancels; all defect classes fit `eta_0`; threshold cases are exhaustive | Procedure and `tau_r` | `E_cert,E_sm` | LOW, singleton, multi-support, and straddling branches all covered | Classifier could assume an unsupported target chart or miss a support branch |
| `E_support_wt,E_cluster,E_gauge` | Weighted support/sign and one observable cluster per target | Finite certified pool in one covered run | Multi-score `<=lambda_max(1/sqrt(m)+160eta_0)` versus singleton interval; graph gaps | Component score lower bound and exact weighted stationary profile | Weight imbalance, Gram leakage, certificate tails, negative sign | Finite filtering/graph; strict margins precede ties | Structural lower/upper comparison and algebraic coupling | G5 ledger and `E_cov` witness; zero score excluded by retained threshold | Score lower and upper sources match singleton/multi-support claim classes | Graph correlations and target chart use same realized direction metric; sign gauge preserves tensor | step-local | `step_004b -> step_005`; labels are proof-only | Exact components survive; unequal-weight two-support state exercises and loses multi branch | `1.01s_mix<0.794<0.85s_-`; same/different target graph margins separate | No new primitives | `E_cert_tail,E_cert_eq,E_sm,E_cov` | Threshold straddle is LOW or multi; negative theta handled product-preservingly | Wrong states could survive or clusters could merge/split |
| `E_col,E_row_residual,E_row` | Selected coefficient small gain and row/column closure | Finite selected `r` columns | Column root inequality and row recurrence displayed in G7 | Diagonal coefficient and `31/32` denominator | Off-target products, Gram leakage, diagonal correction, sign-unknown certificate residual | Finite sums; residual is `2r tau_r` in each induced norm; row self term absorbed | Algebraic coupling and structural lower comparison | `E_cluster,E_cert_eq`; chart selects small root | Positive denominator and explicit residual source support coefficient lower/control claim | Dual residual is exact transfer from ambient stored-state residual | step-local | Classifier -> column root -> per-entry residual -> row absorption | q-zero transient retains `r tau_r`; exact fixed point has zero residual | `chi<=32omega`; row self coefficient `<1/8`; `eta_row<=128omega` | `q_*,tau_r` definitions | G5-G6 outputs | Large root excluded by exported chart; no `r^2tau_r` conversion | Selected initialization could lack row control and target transfer would fail |
| `E_best,E_quotient` | Same-target balanced initialization and original-metric bridge | One selected initialization | Direction/scalar errors `<=64omega`; tensor/quotient errors `<=512omega`; projector decomposition | Weight/norm floors and row/column controls | Scalar, direction, pair, cubic, perpendicular terms | One finite expansion; no iterative forcing | Algebraic coupling and structural lower/upper comparison | `E_sm,E_gauge,E_col,E_row`; theta nonzero | Relative product coordinate has correct scale and removes only gauge directions | Produced tensor, target tensor, and Frobenius metric are identical; `N_M` is exact target projection residual | step-local | `step_006 -> step_007 -> step_007b` | Exact component gives `B=I,N=0,s=0` | Four classes sum to `512omega<rho_ALS/4` | Base weight balance already primitive | G6 coefficient/gauge outputs | Zero theta was excluded before cube-root balance | No sourced basin entry or same-target initialization bound |
| `E_pair_entry,E_parallel_entry` | Pair nondegeneracy, exact first-sweep range entry, and finite perpendicular removal | Exactly one cyclic U/V/W entry sweep | `beta_perp`, cross/pair bounds, resolvent, sequential `3072/3456/4096`; `N_U^+=N_V^+=N_W^+=0` | Target pair floor and exact unfolding range | Amplitude/coefficient leakage, two mixed `tau_r^2` terms, coherent `r tau_r^4` | Unknown-sign defects charged once and removed mode by mode; no repeated accumulation | Structural lower comparison and algebraic coupling | `E_sm,E_quotient`; actual `tau_r` entry excludes fixed-t shared-perpendicular boundary | Pair floor supplies positivity; unfolding supplies exact support/range | Exact held designs and outputs are the literal ALS objects in realized spans | step-local | `step_007` produces decomposition; `step_007b` proves entry before G9 | First U solve includes full shared-perpendicular charge; exact stationary entry is fixed | Pair perturbation `<1/512` preserves `31/32` floor; exact updates set each N to zero | `q_*,tau_r`, base scale | `E_sm,E_best,E_quotient` | Adversarial fixed-t tube point is outside produced entry; singular floor boundary excluded | First solve could be singular or perpendicular forcing could persist |
| Solved-output maps and chronological refreshes | Same-orbit direction/product update interface | Every target-span cyclic subupdate | Output discrepancy `<=ell` times two held direction discrepancies; refresh overwrites common `s` | Exact scale equivariance and target-span normal equations | Direction/pair inverse perturbations; no incoming-product defect | Historical products are overwritten, not summed | Algebraic coupling and projection/nonexpansive maintenance | `E_parallel_entry`, pair floor; positive nonzero chart | Scale equivariance exactly removes gauge input and supports output claim | `e_U,e_V,e_W` are same-tensor canonical representatives of literal intermediates | step-local | Entry -> U output/refresh -> V -> W -> completed state | At target every output/refresh has `s=0`; pure product-one rescaling has distance zero | U/V `<=ell D`, W `<=ell^2D`; each refreshed state remains in tube | Base scale already primitive | `E_sm,E_parallel_entry` | Singular-pair boundary excluded by produced floor; no raw amplitude contraction claimed | Full-sweep object identity or product register would be invalid |
| `E_basin_parallel,Psi^q` | Invariant target-span tube and all-sweep contraction | All completed sweeps after entry | `||e^(s+1)||_Q<=ell||e^s||_Q`, `ell<1/16`; geometric sum `<16/15` | Pair-Gram positivity, exact span invariance, quotient Hessian modulo scaling | Target-span coefficient/inverse defects; perpendicular forcing exactly zero | Contractive; accumulated state has finite geometric budget, no additive forcing | Self-contraction, projection/nonexpansive maintenance, algebraic coupling | G8 entry and exact unfolding; unrestricted perpendicular tube expressly excluded | Positive pair floor is adequate for nonsingular quotient contraction | Same quotient target and original represented tensor; Frobenius comparison `<9` | step-local | `step_007b -> step_008 -> step_009`; no convergence assumed for entry | First contracted sweep begins at actual `e^1<rho_ALS/3`; target is stationary | Applying map against zero preserves tube and contracts by ell | Existing primitives only | `E_parallel_entry,E_sm` | Shared-perpendicular obstruction cannot reappear because N is exactly zero | Invariance or contraction would be false on arbitrary full tube |
| `E_stop` | Original relative-error conversion and finite covered-tape hit | Covered tapes, finite horizon `m_epsilon` | Residual `<=8kappa_0^2 4^(-(m-1))||T||_F` | G8 entry and G9 contraction | Initial entry offset and chart/Frobenius constant | Finite geometric horizon; no stochastic or all-tape upgrade | Self-contraction and structural comparison | `E_parallel_entry,E_basin_parallel`; arbitrary gate tapes excluded | Contraction source has correct norm and stopping scope | Consumed target is original Frobenius residual, not quotient surrogate | step-local | G8-G9 produce recurrence before G10 uses stopping | Exact target residual is zero immediately | `4^{-(m_cap-1)}<=epsilon/(8kappa_0^2)` | `epsilon,kappa_0` | Entry/basin outputs | Noncovered nonhitting tape is outside claim | Restart success witness would lack a finite hit |
| `E_run_cap` | Finite termination and dense cost for every run tape | Every early-failing or gate-passing tape, at most `m_cap` sweeps | Counter `t->t+1`, residual hit or timeout; per-sweep dense cost | Pre-registered finite integer budget and Moore--Penrose rule | Arbitrary persistent noncovered errors, singular Grams, no residual hit | Stopped/conditioned: unknown-sign defects may persist but cannot exceed finite sweep count | Stopping/conditioning argument and reserve under declared finite scope | Accepted cap clause, observable residual and counter; no basin source needed | Finite budget is adequate for termination/cost, not asserted as convergence | Timeout exports no target; a hit is checked in original residual | step-local | Cap fixed before active phase; `E_run_cap` produced before restart sum | Gate-passing singular never-hitting first tape times out at boundary | Remaining budget drops by one per sweep; multiply dense unit by exact cap | `epsilon,kappa_0`, procedure definitions | Observable branch state | At `t=m_cap` nonhit exits; exact baseline hits earlier | Without cap, one tape can block all later restarts and runtime |
| `E_restart` | Conditional confidence and total runtime | Exactly `J` completed full runs | Failure product `(1-p_0)^J`; cost `<=JT_run` | `p_0>=1/2`, tape independence, all-tape completion | Failed proposal, timeout, repeated failure | Finite product/sum over J; no unbounded hitting time | Structural probability comparison and finite reserve | `E_cov->E_stop` plus independent `E_run_cap`; conditioning on fixed tensor | Coverage lower rate supplies success; cap supplies completion, distinct roles | Only original-residual hits are returned; timed-out objects are not transferred | step-local | `E_cov,E_stop` and independent cap path meet only at restart assembly | First tape may fail arbitrarily; second starts because first completed; J=1 allowed | `(1-p_0)^J<=delta_init`, `T_total<=JT_run` | `assump:random-initialization`, `delta_init` | `E_cov,E_stop,E_run_cap` | All-fail event has allowed probability; no confidence in k | Conditional probability or polynomial total cost would not follow |
| Orthogonal equal-weight baseline | Exact/noiseless invariance and zero-floor conclusion | Deterministic limiting specialization and stationary trace | Exact pair map; `Psi^q(0)=0`; original residual zero | Exact diagonal CP coefficients and identity pair Grams | No defect at stationary point; finite transients retained separately | Stationary, so no accumulation | Algebraic coupling and self-contraction at zero | Direct substitution; no positive-rho probability claim | Exact diagonal source supplies fixed-point and zero-residual claim | Produced and consumed tensors are identical in original metric | step-local | Direct specialization after all target-preserving interfaces | First update and every refresh remain exactly zero at stationary target | Exact normal equations return same factors; cap is nonbinding | Deterministic specialization | Exact G4/G8/G9 objects | q-zero transient is not confused with stationary state | Repair could otherwise replace zero error by a finite remainder |

Every row is `step-local`. The certificate contains no category-only
all-time claim: G9 has the explicit geometric recurrence and finite sum, G11
has the explicit integer-budget relation, and restart accumulation has the
explicit finite product and cost sum.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| `E_sm` | G1 / `step_001` | Primitive base scales, Gram/weight slack, Gaussian law, smoothing inequalities | Linear, quadratic, normalization, union terms separately controlled | Exact realized factors are consumed | Separate scalar domination; Khatri--Rao off-diagonal mass `<=q_*^2` | Base slack, `q_*`, `1.01`, norm floor | All dynamic geometry consumers | valid |
| `E_win,p_win` | G2 / `step_002` | Raw Gaussian coordinates and `E_sm` covariance | Target-window density and competitor pair tails controlled | Same coordinates define `R_0,S_0` | Three window masses times pair-event comparison | `a_*,b_*,beta_*>1` | `step_003` | valid |
| `E_cov,p_0` | G3 / `step_003` | `k,p_win`, independent slots | Finite target misses only | Coverage maps to actual target-relative proposal states; labels remain proof-only | `kp_win>=8log r`, target union | `C_rank` | G4,G6,G11 | valid |
| `E_RS,E_chart,E_chart_l1,E_cert` | G4 / `step_004` | `E_sm,E_win`, exact old-state map | q forcing, weights, finite transient controlled; zero contraction exits | Same realized target metric and same-state look-ahead | Invariant interval, dual-l1 self-map, Banach decay | `31/32`, chart radii, `L_chart<1/4`, `L_cert` | G5-G6 | valid |
| `E_cert_eq,E_cert_tail` | G5 / `step_004b` | Certified state, exact contraction, `E_sm`, unit normalization | Gram `eta_G`, scalar `eta_N`, certificate `eta_C`; all support branches controlled | Same-state equation does not overclaim target distance | Exact coefficient expansion, retained-floor ratio, profile `144eta_0` | `d_M>0`, `vartheta_*>1/16`, `s_gate` | G6-G7 | valid |
| `E_support_wt,E_cluster,E_gauge` | G6 / `step_005` | Global ledger, weighted coefficients, coverage witness | Weight, tails, signs, graph correlations controlled | Same realized directions; gauge preserves represented tensor | Multi/single score comparison and graph separation | `0.85` gap, theta `>0.8lambda_min` | G7 | valid |
| `E_col,E_row_residual,E_row` | G7 / `step_006` | Selected chart, exact dual equation, denominator | Pair leakage and `2r tau_r` residual controlled; no uncontrolled class | Exact dual residual transfer | Small root and row self-coefficient `<1/8` | `31/32`, initial chart branch | `step_007` | valid |
| `E_best,E_quotient` | G7 / `step_007` | Row/column controls, positive scalar, target norm floor | Scalar, direction, pair, cubic, perpendicular fields controlled | Same tensor and target projector; no surrogate | Four-class expansion `<=512omega`; relative scale cancellation | `512omega<rho_ALS/4` | G8 | valid |
| `E_pair_entry` | G8 / `step_007b` | Exact projector decomposition, target pair floor, amplitudes | `tau_r^2`, `r tau_r^4`, coefficient and amplitude defects controlled | Exact held ALS pair/cross Grams | `beta_perp`, `96/192` bounds, resolvent | Pair floor and `<1/512` perturbation | Three first-sweep solves | valid |
| `E_parallel_entry` | G8 / `step_007b` | Pair entry, exact unfolding, three inverse floors | Sequential defects controlled; perpendicular fields removed | Outputs are exact literal ALS updates in realized spans | `3072/3456/4096` envelopes | `rho_ALS/3`, `31/32` | G9-G10 | valid |
| Solved-output/refresh interfaces and `E_basin_parallel` | G9 / `step_008` | Exact target-span entry, pair floors, scale equivariance | Direction, inverse, product defects controlled; incoming scale cancels; N is zero | Canonical states represent exact literal intermediates and original tensor | Per-mode `ell` output bound and chronological composition | `rho_ALS`, `ell<1/16` | G10 | valid |
| `E_stop` | G10 / `step_009` | Entry, contraction, original-metric chart comparison | Finite initial offset only; no claim outside covered path | Original rank-k Frobenius residual | `8kappa_0^2 4^{-(m-1)}<=epsilon` | `m_epsilon` | G11, final success | valid |
| `E_run_cap` | G11 / `step_010` | Pre-fixed cap, observable residual/counter, dense T/current factors, pseudoinverse rule | Noncovered dynamics may be wholly uncontrolled but are stopped | Timeout is not transferred; a hit uses original residual | Exhaustive branch split and one-unit counter decrement; dense unit times cap | `m_cap=m_epsilon` fixed before refinement | Restart cost and runtime theorem | valid |
| `E_restart` | G11 / `step_010` | `p_0,E_stop,E_run_cap`, completed tape independence | Finite failures/timeouts controlled; no latent or persistent cross-run state | Selector accepts only original-residual hits | Failure product and cost sum | `p_0>=1/2`, chosen J | Final theorem | valid |
| Baseline bridge | G12 / `step_011` | Exact orthogonal factors and exact normal equations | Stationary defects zero; finite transient defects not dropped | Identical produced/target tensor | Direct fixed-point substitution | Identity pair Gram; cap nonbinding | Baseline theorem clause | valid |

Every downstream-facing interface is feasible under the accepted sketch. In
particular, `E_run_cap` deliberately exports termination and cost, not basin
membership or an approximate tensor, so it needs no invalid timeout-to-target
transfer.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| `E_sm` | G1 / `step_001` | G2-G4, G8-G9, fixed-instance theorem | Primitives -> G1 -> consumers | derived | valid |
| `E_win,p_win` | G2 / `step_002` | G3 | `E_sm -> G2 -> G3` | derived | valid |
| `E_cov,p_0` | G3 / `step_003` | G4, covered witnesses in G6, success branch in G11 | `E_win -> G3 -> consumers` | derived | valid |
| `E_RS,E_chart,E_chart_l1,E_cert` | G4 / `step_004` | G5 and covered-slot parts of G6 | `E_sm,E_cov -> G4 -> consumers` | derived | valid |
| `E_cert_eq,E_cert_tail` | G5 / `step_004b` | G6-G7 | `E_cert,E_sm -> same-state equation/ledger -> consumers` | derived | valid |
| `E_support_wt,E_cluster,E_gauge` | G6 / `step_005` | G7 | `E_cert_eq,E_cert_tail,E_cov -> G6 -> G7` | derived | valid |
| `E_col,E_row_residual,E_row` | G7 / `step_006` | `step_007` | G6 -> column root -> residual transfer -> row absorption -> target transfer | derived | valid |
| `E_best,E_quotient` | G7 / `step_007` | G8 | Coefficient/gauge outputs -> balanced/projector transfer -> G8 | derived | valid |
| `E_pair_entry` | G8 / `step_007b` | Three entry subupdates and `E_parallel_entry` | Projector fields -> `beta_perp` -> Gram floors -> solves | derived | valid |
| `E_parallel_entry` | G8 / `step_007b` | G9-G10 | Pair entry -> exact U/V/W range trace -> target-span state | derived | valid |
| `e_U,e_V,e_W,Psi^q,E_basin_parallel` | G9 / `step_008` | G10 | Entry -> U output/refresh -> V output/refresh -> W output/refresh -> `Psi^q` -> contraction | derived | valid |
| `E_stop` | G10 / `step_009` | G11 and final successful-tape assembly | `E_cov -> entry -> basin -> stopping`; no arbitrary-gate path | derived | valid |
| `E_run_cap` | G11 / `step_010` | Restart cost and final runtime | Pre-register cap -> finite proposal or capped active branch -> hit/timeout -> completed run | derived | valid |
| `E_restart` | G11 / `step_010` | Final probability/runtime assembly | `E_cov,E_stop` provide success; `E_run_cap` provides completion; independent completed tapes -> product/sum | derived | valid |
| Exact baseline state | G12 / `step_011` | Final baseline clause | Deterministic specialization -> exact map/normal equations -> stationary trace | derived | valid |

The two G11 inputs have intentionally different roles. `E_cov->E_stop`
supplies a positive success event, while `E_run_cap` supplies termination for
all tapes. Neither is used as a substitute for the other.

## Early Obstruction And Repair Plausibility

- Contract contradiction check: none. The accepted cap changes no rank,
  residual metric, successful output, probability mode, or baseline result.
  It only makes a previously unbounded unsuccessful active phase terminate.
- Mechanism-witness check: every structural lower/sign/support claim has a
  positive source of the matching class: base norm/Gram slack, target
  coefficient denominators, retained score floors, pair-Gram eigenvalue
  floors, or completed-tape success probability. Smallness alone is never
  used as the source of a positive lower claim.
- Shared-perpendicular stress: an arbitrary full-tube point with fixed
  perpendicular size can create coherent `r t^4` mixing. The theorem does not
  consume that domain. The actual entry has column size `tau_r`, G8 retains
  `r tau_r^4`, and exact range containment removes perpendicular fields before
  G9. This is a same-setting generated-entry mechanism, not an exclusion added
  to the theorem assumptions.
- Entry/activation stress: the first covered cyclic sweep is traced in U,V,W
  order with all intermediate inverse floors. The first noncovered
  gate-passing sweep is also finite, but it is not claimed to contract; its
  counter eventually times out. Thus neither success nor restart closure uses
  an inactive mechanism.
- Common-register stress: a raw block map is not treated as a full-state
  contraction. Each solved output depends on held directions, each refresh
  installs the new global product coordinate, historical product values are
  overwritten, and only `e_W` is the completed full-sweep state.
- Residual-to-target check: entry fields, quotient states, and returned
  tensors all concern the same realized factors and original Frobenius metric.
  Canonical balancing changes representatives only. A timeout exports no
  theorem target, eliminating any unsupported timeout-to-solution bridge.
- Mode/dependence check: the proof remains high probability over smoothing
  followed by conditional high probability over proposal tapes; it does not
  upgrade to an unconditional all-time trajectory statement. Confidence does
  not enter `k`, and every horizon is explicit.
- Baseline stress: finite q-zero certified transients may have nonzero
  residuals and are not mislabeled exact. At the exact stationary target,
  each solve and refresh is zero and the cap is nonbinding, preserving the
  original arbitrary-accuracy conclusion.
- Citation stress: the Uschmajew source is not asked to prove target-span
  entry, constants, refresh chronology, dense complexity, or timeout. Those
  are direct current-notation obligations.
- Same-setting repair plausibility: no repair is presently required. If a
  future local proof fails one of the displayed constants or identities, its
  review must classify the smallest actual defect; this diagnostic supplies
  no authority to alter the accepted interfaces.

No candidate idea/theorem-contract obstruction is visible at diagnostic
granularity.

## Global Gaps And Hard Steps

None.

The detailed calculations in `step_004`, `step_004b`, `step_005`,
`step_006`, `step_007`, `step_007b`, and `step_008`, together with the fresh
all-tape counter/dense-cost calculation in `step_010`, are mathematically hard
but have complete unchanged local interfaces and source-adequate witnesses.
They are future proof work, not unresolved global links.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof
evidence, a cited result, an assumption source, or authority to change any
accepted sketch-step claim, dependency, assumption, output target,
generated-output flow, scope, metric, rate, or conclusion. Every local unit
and cited-tool application described here must be independently proved or
discharged by fresh `/proof-step` work and accepted by its corresponding
review before assembly.

## Suggested Routing

None

Continue with fresh step proofs for sketch attempt 2 in the accepted
dependency order, beginning with `step_001`. Preserve the independent
`E_cov -> entry -> basin -> E_stop` success chain and the all-tape
`E_run_cap -> E_restart` termination/cost chain through final assembly.
