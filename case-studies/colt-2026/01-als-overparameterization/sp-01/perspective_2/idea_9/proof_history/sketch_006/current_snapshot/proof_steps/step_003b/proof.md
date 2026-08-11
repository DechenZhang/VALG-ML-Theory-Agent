# Proof Step

## Step Identity

- Sketch attempt: 6
- Step ID: `step_003b`
- Unit attempt: 1
- Accepted sketch artifact: `perspective_2/idea_9/proof_sketch.md`, SHA-256
  `9d74e0e0e33ce44cc9a48c4dfcbc10c25a89d08f6f1e91012f3b0b809be7c4ef`.
- Accepted sketch review: `perspective_2/idea_9/proof_sketch_review.md`,
  `Sketch Review Status = ACCEPTED`, SHA-256
  `0333e1da5da4014de163f34435be48d00e539de71efc317ffd5bc63aaa88af0f`.

## Target Step Claim

- Intended claim: From prior generated accepted-slot certificate, matching,
  and `(R-euc)` records, derive `(Hist-F)`, the unresolved-target
  reverse-triangle reserve `(Res)`, the post-fit normal equations, prove
  `q_nor<=1/4`, solve the triangular system, and export `(SE-perp)`,
  `(SE-raw)`, the `E_lb`-conditioned `(SE-lb)`, and exact target-frame
  projection compatibility.
- Dependencies: accepted sketch-attempt-6 `step_001`, `step_002`, and
  `step_003` proof/review artifacts.
- Assumptions used: derived source spans, pair/triple gap, and `E_lb`; prior
  generated records supplied only by the `step_009` induction. No
  source-normal or residual-reserve condition is assumed.
- Technical challenge: full-history outside-span control, temporal
  triangular ordering, an explicit positive residual reserve, and a
  branch-correct capture/curvature comparison.
- Intended proof tool: direct contraction identities, pair-Khatri--Rao row
  sums, finite triangular inversion, projector telescoping, reverse triangle,
  and differential perturbation bounds.
- Output target: `B_hist,F`, `(Res)`, `B_perp`, `R_I^parallel`, `(SE-perp)`,
  `(SE-raw)`, and `(SE-lb)`.
- Rate objective: R2, retaining explicit `Lambda_nor`, `q_nor`, `D_stat`,
  the `D_lb` branch, and all dependence on `P,n,r`.
- Sketch-row review status: `PENDING`. Sketch-level authority is the accepted
  `proof_sketch_review.md`, not this row-local field.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- No new primitive condition is invoked after conditioning on the accepted
  once-drawn event. Assumptions~\ref{assump:base-column-conditioning},
  \ref{assump:base-product-balance},
  \ref{assump:gaussian-smoothing},
  \ref{assump:dimension-regime},
  \ref{assump:smoothing-scale}, and
  \ref{assump:modewise-gram-margin} are recorded only as the primitive
  provenance already discharged by the accepted `step_001` event.

Derived invariants supplied by accepted dependencies:

- The accepted `step_001` proof, SHA-256
  `a9a87b0f289746498c40b438117c47dc6b1307679defdbc29852d97a66241cfc`,
  and accepted review, SHA-256
  `1cd56c69834fcba45d787657c9fae1009cb82f70c6c535fd12b3d132eb8b7907`,
  supply `E_inst`, the realized nonzero normalized columns, the realized
  norm and product-weight bounds, `nu_real<=nu_star`, all pair/triple Gram
  gaps, the exact target representation, and the derived event
  `E_lb={nu_real>=P^(-D_lb)}` with `D_lb=60`.
- The accepted `step_002` proof, SHA-256
  `7c3b7ea474bab76e407f4c616317f1b6662f23ea9c7cf90532eff6a84e55442a`,
  and accepted review, SHA-256
  `c9bd95cd8d9c431a191fc926b11bccb2c34b108dbdbf29f27c37034bccc1244a`,
  supply `(R-src)`, in particular each pair-Khatri--Rao row sum at most
  `nu_real^2`, and the accepted static small-gain interfaces.
- The accepted `step_003` proof, SHA-256
  `a5134704a33ba09b398d5eb946d7cc352a0110283c33f7ebdba73f75e3295902`,
  and accepted review, SHA-256
  `ca56a019738cdb860b815dadf913f2022d2e56dbb8fd8a357c88b262cd5971ac`,
  supply the conditional target-frame array `Theta_I` for the same legal
  finite history. This step uses that dependency only to prove exact
  target-frame compatibility; it does not use `Theta_I` to prove the normal
  recurrence or the residual reserve.

The accepted `step_001` artifact also exports its structural event `E_str`
with the raw conclusions and the lower-tail refinement `E_lb`. The public
`E_inst` is their intersection, so a statement conditional on `E_inst` is
automatically on `E_lb`; the raw derivation below uses only the structural
conclusions and therefore also applies on `E_str` intersected with
`E_lb^c`, exactly as the accepted dependency's raw-branch interface states.
No probability claim for that raw branch is introduced here.

Local conditional hypotheses:

- Fix a legal nonterminal protected prefix
  `I_s={i_1,...,i_s}`, `0<=s<r`, ordered by commit time, and an injection
  `pi_(I_s)` with distinct labels `p_t=pi_(I_s)(i_t)`. For every `t<=s`,
  the prior temporal path has generated the accepted certificate at the
  precommit state `I_(t-1)`, product-one matching signs, and `(R-euc)`:
  
  \[
  |\delta_t|+\max_M\|e_{t,M}\|_2\le C_{\rm led}\eta_0.
  \tag{H-rec}
  \]
  
  This is precisely the prior-record input named in the accepted sketch row.
  It is a local conditional history package, not a primitive theorem
  assumption. The later `step_009` induction must produce it, beginning with
  the empty prefix.
- Failed transactions are absent from this ordered list because exact
  rollback leaves the protected prefix unchanged. No history budget,
  source-normal bound, residual reserve, or stationarity reserve is included
  in the local hypothesis.

Everything below is deterministic conditional on `E_inst` and this legal
finite prior-record package. The empty package `s=0` is included.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | hypothesis | Historical Accepted-Record Package, label `hyp:p2-i9-s6-step003b-records`: under the accepted prior temporal producer, a finite nonterminal prefix carries only the ordered certificates, distinct matching labels, product-one signs, and `(R-euc)` records in `(H-rec)`. | Fixes the exact conditional generated input without assuming either target conclusion. |
| `unit_002` | lemma | Static Parameter and Normal-Coupling Reserve, label `lem:p2-i9-s6-step003b-parameters`: under Assumptions~\ref{assump:base-column-conditioning}, \ref{assump:base-product-balance}, and \ref{assump:modewise-gram-margin}, the accepted `step_001--002` conclusions, and Hypothesis~\ref{hyp:p2-i9-s6-step003b-records}, the setting quantities obey `tau_min>=P^(-3)`, `r Lambda_nor<=P^8`, `delta_led<=1/2`, the displayed accepted-error reserve, and `q_nor<=1/4` after the fixed exponent/threshold selection. | Proves every scalar margin used by the recurrence and reverse triangle. |
| `unit_003` | lemma | Accepted-History Frobenius and Residual Reserve, label `lem:p2-i9-s6-step003b-reserve`: under the accepted pair/triple gap and Lemma~\ref{lem:p2-i9-s6-step003b-parameters}, the prior `(R-euc)` records imply `(Hist-F)` and the unconditional positive reserve `(Res)` for every nonterminal prefix. | Supplies the missing positive actual-residual scale before any landscape comparison. |
| `unit_004` | lemma | Post-Fit Source-Normal Forcing, label `lem:p2-i9-s6-step003b-postfit`: under Hypothesis~\ref{hyp:p2-i9-s6-step003b-records} and Lemma~\ref{lem:p2-i9-s6-step003b-parameters}, every accepted radial/angular certificate implies a post-fit normal contraction of norm at most `e_num Lambda_nor` in every mode. | Derives the only forcing in the chronological normal recurrence. |
| `unit_005` | proposition | Triangular Normal Solve and Projector Telescoping, label `prop:p2-i9-s6-step003b-normal`: under Lemmas~\ref{lem:p2-i9-s6-step003b-parameters} and \ref{lem:p2-i9-s6-step003b-postfit}, the exact chronological normal equations have coefficient row sums at most `q_nor`, their solution gives the stated `B_perp`, and projector telescoping proves `(SE-perp)`. | Establishes the full-history source-normal tensor bound without assuming it. |
| `unit_006` | lemma | Same-Target Projection and Differential Compatibility, label `lem:p2-i9-s6-step003b-compatibility`: under Proposition~\ref{prop:p2-i9-s6-step003b-normal}, orthogonal projection preserves every realized target-frame contraction exactly and perturbs score, gradient, Hessian, and residual norm by the displayed `B_perp` bounds. | Shows that the projection is an exact same-target analysis bridge, including `A_I/Theta_I` compatibility. |
| `unit_007` | proposition | Raw and Lower-Tail-Qualified Scale Comparisons, label `prop:p2-i9-s6-step003b-scales`: under Lemma~\ref{lem:p2-i9-s6-step003b-reserve}, Proposition~\ref{prop:p2-i9-s6-step003b-normal}, the fixed exponent order, and only conditionally on `E_lb` for the calibration comparison, `(SE-raw)` and `(SE-lb)` hold with all raw numerical forcing retained. | Completes the exact branch-aware target-step interface. |

## Cited Result Applications

No external paper theorem is used. The literature cited in the sketch is
proof-pattern provenance only. The accepted dependencies and elementary
finite-dimensional identities used below are restated here in current
notation.

### Accepted once-drawn source and target interface

Under Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance},
\ref{assump:gaussian-smoothing},
\ref{assump:dimension-regime},
\ref{assump:smoothing-scale}, and
\ref{assump:modewise-gram-margin}, accepted
Proposition~\ref{prop:p2-i9-s6-step001-instance} and its accepted component
results give, on `E_inst`,

\[
(2\kappa)^{-1}\le\|a_j\|_2,\|b_j\|_2,\|c_j\|_2\le2\kappa,
\quad {\tau_{\max}\over\tau_{\min}}\le2\Gamma_\star,
\quad \nu_{\rm real}\le{1\over C_\nu r\log(2r)},
\tag{1}
\]

and

\[
\|G_M\circ G_N-I_r\|_{\rm op}\le {1\over16},
\qquad
\|G_A\circ G_B\circ G_C-I_r\|_{\rm op}\le {1\over16}.
\tag{2}
\]

The same dependency gives

\[
\|T\|_F\le\sqrt{17/16}\,\|\tau\|_2,
\qquad
E_{\rm lb}=\{\nu_{\rm real}\ge P^{-D_{\rm lb}}\},
\quad D_{\rm lb}=60.
\tag{3}
\]

All objects in (1)--(3) are the exact setting objects. The event and all its
primitive assumptions were discharged in the accepted dependency.

### Accepted absolute-Gram and pair-row interface

Accepted Lemma~\ref{lem:p2-i9-s6-step002-source} gives, for each mode,

\[
\max_j\|H_Me_j\|_2\le\nu_{\rm real},
\quad
\|H_M\|_1=\|H_M\|_\infty\le\sqrt r\,\nu_{\rm real},
\quad
\|K_M\|_1=\|K_M\|_\infty\le\nu_{\rm real}^2.
\tag{4}
\]

Thus, for example, for any label `p`,

\[
\sum_{q\ne p}H_B(q,p)H_C(q,p)\le\nu_{\rm real}^2,
\quad
\sum_{q\ne p}H_M(q,p)\le\sqrt r\,\nu_{\rm real}.
\tag{5}
\]

These are columnwise absolute estimates; no operator bound on `H_M` is used.

### Accepted conditional target-frame envelope

For the supplied legal history, accepted
Proposition~\ref{prop:p2-i9-s6-step003-neumann} gives the unique conditional
array

\[
\Theta_I=(\operatorname{Id}-C_0\Gamma_\star\mathcal T)^{-1}
C_0\Gamma_\star(S+A_I+e_{\rm num}\mathbf1).
\tag{6}
\]

Only the following object-map fact is used: (6) depends on the protected
history through the exact target-frame array `A_I`. Once
Lemma~\ref{lem:p2-i9-s6-step003b-compatibility} proves that every contraction
defining `A_I` is unchanged by the source-span projection, the same array in
(6) is valid on both sides of that analysis bridge. No quantitative bound
from (6) is used in the normal solve.

### Direct product-sphere differential identity

For a fixed tensor `D`, define
`s_D(u,v,w)=<D,u tensor v tensor w>` on the product of unit spheres. Direct
differentiation gives the three gradient blocks

\[
P_{u^\perp}(D\mathbin{\times_2}v^\top\mathbin{\times_3}w^\top),
\quad\text{and cyclically}.
\tag{7}
\]

For a unit-speed product-sphere geodesic with initial tangent
`xi=(xi_A,xi_B,xi_C)`, a second differentiation gives

\[
\begin{split}
\langle\operatorname{Hess}_{\cal S}s_D\,\xi,\xi\rangle
= {}&2\langle D,
\xi_A\otimes\xi_B\otimes w+
\xi_A\otimes v\otimes\xi_C+
u\otimes\xi_B\otimes\xi_C\rangle\\
&-(\|\xi_A\|_2^2+\|\xi_B\|_2^2+\|\xi_C\|_2^2)
\langle D,u\otimes v\otimes w\rangle.
\end{split}
\tag{8}
\]

Equations (7)--(8) are proved by the displayed differentiation and require
only unit factors and tangent vectors. They are applied to the setting's
actual residual difference, not to an imported model.

## Local Derivation

### unit_001: hypothesis - Historical Accepted-Record Package

Paper-ready label: `hyp:p2-i9-s6-step003b-records`.

Paper-ready title: Historical Accepted-Record Package.

Statement:

Under the later finite-prefix producer designated by the accepted sketch, if
`I_s={i_1,...,i_s}` is a legal generated nonterminal prefix in chronological
order, then every `i_t` has a distinct generated label `p_t`, product-one
signs `sigma_(t,A),sigma_(t,B),sigma_(t,C)`, and signed unit directions

\[
\widetilde u_{t,M}:=\sigma_{t,M}u_{i_t,M}
=m_{p_t,M}+e_{t,M},
\tag{9}
\]

such that `(H-rec)` holds. At its precommit state `I_(t-1)`, the accepted
slot obeyed the radial and angular portions of `(Cert)` with
`e_num=P^(-D_stat)`, and the committed tensor is unchanged by the sign action
because `product_M sigma_(t,M)=1`.

Justification:

This unit is an explicitly local conditional hypothesis, not a derived claim
of the present step. It restates exactly the generated input named by the
sketch row. It contains no source-normal, residual-reserve, Frobenius-history,
normal-equation, or coefficient-smallness conclusion. For `s=0` it is the
empty package. The target-step assembly remains conditional on this package;
the all-prefix `step_009` induction is its designated theorem-facing
producer.

### unit_002: lemma - Static Parameter and Normal-Coupling Reserve

Paper-ready label: `lem:p2-i9-s6-step003b-parameters`.

Paper-ready title: Static Parameter and Normal-Coupling Reserve.

Statement:

Under Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance}, and
\ref{assump:modewise-gram-margin}, the accepted source conclusions (1)--(5),
and Hypothesis~\ref{hyp:p2-i9-s6-step003b-records}, define

\[
e:=P^{-D_{\rm stat}},\qquad
\delta_{\rm led}:=C_{\rm led}\eta_0,
\tag{10}
\]

and, explicitly,

\[
\overline R:=\|T\|_F+r(2R_{\max})^3,\qquad
\overline L:=1+\overline R+(2R_{\max})^4,\qquad
\Lambda_{\rm nor}:=\overline R+(2R_{\max})^3
+{2\overline L\over\tau_{\min}}.
\tag{10a}
\]

There are fixed valid choices

\[
D_{\tau}=3,\qquad D_{\rm nor}=8,
\tag{11}
\]

such that

\[
\tau_{\min}\ge P^{-D_\tau},qquad
r\Lambda_{\rm nor}\le P^{D_{\rm nor}}.
\tag{12}
\]

After choosing

\[
D_{\rm stat}\ge D_{\rm nor}+D_\tau+
\max\{1,2D_{\rm lb},D_{\rm cap}/2,
D_{\rm gap}+3D_\tau\}+10
\tag{13}
\]

and enlarging only the fixed asymptotic threshold, one has

\[
e\le1,qquad \delta_{\rm led}\le {1\over2},
\tag{14}
\]

\[
C_Er\tau_{\max}\eta_0
\le {1\over2}\sqrt{15/16}\,\tau_{\min},
\qquad C_E:=4C_{\rm led},
\tag{15}
\]

and

\[
q_{\rm nor}:=\nu_{\rm real}^2
+4\delta_{\rm led}\sqrt r\,\nu_{\rm real}
+4r\delta_{\rm led}^2\le {1\over4}.
\tag{16}
\]

Proof:

The accepted realized norm bounds give

\[
(2\kappa)^{-3}\le\tau_j\le(2\kappa)^3.
\tag{17}
\]

Because `P>=16 kappa`, (17) gives `tau_min>=P^(-3)`. Also

\[
\|T\|_F\le\sqrt{17/16}\sqrt r\,\tau_{\max}
\le9\sqrt r\,\kappa^3.
\tag{18}
\]

Since `2R_max=16 kappa`, the definitions imply

\[
\overline R\le4105r\kappa^3,qquad
\overline L\le70000r\kappa^4,
\tag{19}
\]

where only `r>=2,kappa>=1` were used. From
`tau_min^(-1)<=8 kappa^3`,

\[
\Lambda_{\rm nor}
=\overline R+(2R_{\max})^3+{2\overline L\over\tau_{\min}}
\le1.2\cdot10^6 r\kappa^7.
\tag{20}
\]

As `P>=16r kappa`, (20) gives `r Lambda_nor<=P^8`; the numerical coefficient
is already dominated for `r>=2,kappa>=1`. This proves (11)--(12) without a
free polynomial envelope.

Next, (1), `P>=16r`, and `D_stat>=2` give

\[
\eta_0=C_\eta(\Gamma_\star\nu_{\rm real}^2+e)
\le {C_*\over r^2},
\quad
C_*:=C_\eta\left({\Gamma_\star\over
C_\nu^2\log^2 4}+{1\over256}\right),
\tag{21}
\]

where `C_*` depends only on fixed class/proof constants. Hence
`delta_led<=C_led C_*/r^2`, which proves (14) beyond a fixed threshold.
Moreover,

\[
{C_Er\tau_{\max}\eta_0\over\tau_{\min}}
\le2C_E\Gamma_\star r\eta_0
\le {2C_E\Gamma_\star C_*\over r}.
\tag{22}
\]

Increasing the same fixed threshold makes (22) at most
`(1/2)sqrt(15/16)`, proving (15).

Finally, (1) and (21) give the explicit upper estimate

\[
q_{\rm nor}\le
{1\over C_\nu^2r^2\log^2(2r)}
+{4C_{\rm led}C_*\over C_\nu r^{5/2}\log(2r)}
+{4C_{\rm led}^2C_*^2\over r^3}.
\tag{23}
\]

The right side is at most `1/4` beyond a fixed class-dependent threshold.
Thus (16) is derived from the primitive upper Gram margin and numerical
exponent choice; it is not a trajectory assumption. Increasing `D_stat`
within (13) only decreases every numerical term used here. QED.

### unit_003: lemma - Accepted-History Frobenius and Residual Reserve

Paper-ready label: `lem:p2-i9-s6-step003b-reserve`.

Paper-ready title: Accepted-History Frobenius and Residual Reserve.

Statement:

Under the accepted target and triple-Gram conclusions (1)--(3),
Hypothesis~\ref{hyp:p2-i9-s6-step003b-records}, and
Lemma~\ref{lem:p2-i9-s6-step003b-parameters}, every legal nonterminal prefix
obeys

\[
B_{\rm hist,F}(I_s):=\sum_{t=1}^s\|E_{i_t}\|_F
\le C_Es\tau_{\max}\eta_0
\le C_Er\tau_{\max}\eta_0,
\tag{Hist-F}
\]

and, with `U=U_(I_s)` and `T_U=sum_(j in U) tau_j phi_j`,

\[
\|T_U\|_F^2\ge {15\over16}\|\tau_U\|_2^2
\ge {15\over16}\tau_{\min}^2,
\tag{24}
\]

\[
\|R_{I_s}\|_F
\ge\sqrt{15/16}\,\tau_{\min}-B_{\rm hist,F}(I_s)
\ge c_R\tau_{\min},
\qquad c_R:={1\over2}\sqrt{15/16}.
\tag{Res}
\]

The reserve is unconditional on `E_lb`.

Proof:

The sign product in (9) is one, so the accepted tensor can be written using
the signed directions. Since `g_t^3=(1+delta_t)tau_(p_t)`,

\[
{E_{i_t}\over\tau_{p_t}}
=\delta_t(\widetilde u_{t,A}\otimes\widetilde u_{t,B}
\otimes\widetilde u_{t,C})
+\left(\widetilde u_{t,A}\otimes\widetilde u_{t,B}
\otimes\widetilde u_{t,C}
-m_{p_t,A}\otimes m_{p_t,B}\otimes m_{p_t,C}\right).
\tag{25}
\]

Telescoping the second difference one mode at a time and using unit norms
gives

\[
\|E_{i_t}\|_F
\le\tau_{p_t}\left(|\delta_t|+
\sum_M\|e_{t,M}\|_2\right)
\le4C_{\rm led}\tau_{p_t}\eta_0
=C_E\tau_{p_t}\eta_0.
\tag{26}
\]

Summing (26) proves `(Hist-F)`.

Because the labels are distinct and `s<r`, the unresolved set `U` is
nonempty. The exact target Gram identity restricted to the principal index
set `U`, together with (2), yields

\[
\|T_U\|_F^2
=\tau_U^\top(G_A[U]\circ G_B[U]\circ G_C[U])\tau_U
\ge {15\over16}\|\tau_U\|_2^2.
\tag{27}
\]

The last quantity is at least `(15/16)tau_min^2`, proving (24). Exact
cancellation of the matched target atoms gives

\[
R_{I_s}=T_U-\sum_{t=1}^sE_{i_t}.
\tag{28}
\]

Apply the reverse triangle inequality, (24), `(Hist-F)`, and the scalar
reserve (15) to (28). This proves `(Res)`. No lower bound on
`nu_real` and no source-normal statement was used. At `s=0`, (28) is
`R_empty=T`, and the same calculation applies with zero history. QED.

### unit_004: lemma - Post-Fit Source-Normal Forcing

Paper-ready label: `lem:p2-i9-s6-step003b-postfit`.

Paper-ready title: Post-Fit Source-Normal Forcing.

Statement:

Under Hypothesis~\ref{hyp:p2-i9-s6-step003b-records} and
Lemma~\ref{lem:p2-i9-s6-step003b-parameters}, let `P_M` be the orthogonal
projector onto the full realized source span in mode `M`. For every prior
accepted slot `t` and every mode, define, cyclically,

\[
b_{t,A}:=P_A^\perp\left(
R_{I_t}\mathbin{\times_2}\widetilde u_{t,B}^\top
\mathbin{\times_3}\widetilde u_{t,C}^\top\right).
\tag{29}
\]

Then the radial and angular certificate recorded at commit time implies

\[
\|b_{t,M}\|_2\le e_{\rm num}\Lambda_{\rm nor}
\qquad\text{for every }t\le s, M\in\{A,B,C\}.
\tag{30}
\]

Proof:

Fix `t` and work in mode `A`; the other modes are cyclic. Write
`R^-=R_(I_(t-1))`, `R^+=R_(I_t)`, `g=g_t`, and use the signed directions in
(9). The product-one sign action leaves the represented rank-one tensor,
the loss, and the norms of the radial/angular certificate quantities
unchanged. Thus

\[
R^+=R^- -g^3\widetilde u_{t,A}\otimes\widetilde u_{t,B}
\otimes\widetilde u_{t,C}.
\tag{31}
\]

The `A` angular-gradient block of `f_(I_(t-1))` is

\[
-g^3P_{\widetilde u_{t,A}^\perp}
\left(R^-\mathbin{\times_2}\widetilde u_{t,B}^\top
\mathbin{\times_3}\widetilde u_{t,C}^\top\right).
\tag{32}
\]

Subtracting the new rank-one tensor changes the contraction in (32) only by
`g^3 widetilde u_(t,A)`, whose tangent projection is zero. Hence (32) equals
the same expression with `R^+`. The angular certificate and the definition
of `N_I(g)` therefore give

\[
\left\|P_{\widetilde u_{t,A}^\perp}
\left(R^+\mathbin{\times_2}\widetilde u_{t,B}^\top
\mathbin{\times_3}\widetilde u_{t,C}^\top\right)\right\|_2
\le {e_{\rm num}N_{I_{t-1}}(g)\over g^3}.
\tag{33}
\]

The radius guard and triangle inequality give

\[
\|R^-\|_F\le\overline R,qquad
N_{I_{t-1}}(g)\le\overline L.
\tag{34}
\]

By `(H-rec)` and (14),
`g^3=(1+delta_t)tau_(p_t)>=tau_min/2`. Thus the right side of (33) is at most
`2e_num L_bar/tau_min`.

The component of the same contraction along `widetilde u_(t,A)` is exactly

\[
\left\langle R^+,\widetilde u_{t,A}\otimes
\widetilde u_{t,B}\otimes\widetilde u_{t,C}\right\rangle
=s_{I_{t-1}}-g^3.
\tag{35}
\]

The radial certificate, `s_(I_(t-1))>0`, `e_num<=1`, and (34) imply

\[
|s_{I_{t-1}}-g^3|
\le e_{\rm num}\max\{s_{I_{t-1}},g^3,\|R^-\|_Fe_{\rm num}\}
\le e_{\rm num}\bigl(\overline R+(2R_{\max})^3\bigr).
\tag{36}
\]

Combining the orthogonal tangent/radial decomposition, (33)--(36), and the
definition of `Lambda_nor` bounds the full contraction norm by
`e_num Lambda_nor`. Applying `P_A^perp` cannot increase it, proving (30).
No source-normal reserve was assumed: (30) is an observable consequence of
the stored certificate and `(R-euc)` lower radial scale. QED.

### unit_005: proposition - Triangular Normal Solve and Projector Telescoping

Paper-ready label: `prop:p2-i9-s6-step003b-normal`.

Paper-ready title: Triangular Normal Solve and Projector Telescoping.

Statement:

Under Lemmas~\ref{lem:p2-i9-s6-step003b-parameters} and
\ref{lem:p2-i9-s6-step003b-postfit}, define

\[
a_{t,M}:=g_t^3P_M^\perp\widetilde u_{t,M}.
\tag{37}
\]

Then, for every `t<=s`, the exact chronological normal equations are

\[
a_{t,A}+\sum_{q<t}c_{q,t,A}a_{q,A}=-b_{t,A},
\quad
c_{q,t,A}:=
\langle\widetilde u_{q,B},\widetilde u_{t,B}\rangle
\langle\widetilde u_{q,C},\widetilde u_{t,C}\rangle,
\tag{38}
\]

with cyclic analogues, and

\[
\sum_{q<t}|c_{q,t,M}|\le q_{\rm nor}\le {1\over4}.
\tag{39}
\]

Consequently,

\[
\sum_{t=1}^s\sum_M\|a_{t,M}\|_2
\le {3s\Lambda_{\rm nor}e_{\rm num}\over1-q_{\rm nor}}
\le B_\perp,
\quad
B_\perp:={3r\Lambda_{\rm nor}e_{\rm num}\over1-q_{\rm nor}},
\tag{40}
\]

and, with `Pi_star=P_A tensor P_B tensor P_C`,

\[
\|(\operatorname{Id}-\Pi_\star)R_{I_s}\|_\sigma
\le\|(\operatorname{Id}-\Pi_\star)R_{I_s}\|_F
\le B_\perp.
\tag{SE-perp}
\]

Proof:

Again work in mode `A`. The exact target lies in
`range(P_A) tensor range(P_B) tensor range(P_C)`. Expanding (29) using

\[
R_{I_t}=T-\sum_{q=1}^t g_q^3\widetilde u_{q,A}\otimes
\widetilde u_{q,B}\otimes\widetilde u_{q,C}
\tag{41}
\]

and applying `P_A^perp` annihilates the target term and yields exactly (38).
There is no remainder in this identity.

For distinct generated labels, (9) and unit norms give

\[
\begin{split}
\bigl|\langle\widetilde u_{q,M},\widetilde u_{t,M}\rangle
-\langle m_{p_q,M},m_{p_t,M}\rangle\bigr|
&=\bigl|\langle e_{q,M},\widetilde u_{t,M}\rangle
+\langle m_{p_q,M},e_{t,M}\rangle\bigr|\\
&\le2\delta_{\rm led}.
\end{split}
\tag{42}
\]

Therefore (5) gives

\[
\begin{split}
\sum_{q<t}|c_{q,t,A}|
&\le\sum_{q<t}
(H_B(p_q,p_t)+2\delta_{\rm led})
(H_C(p_q,p_t)+2\delta_{\rm led})\\
&\le\nu_{\rm real}^2
+4\delta_{\rm led}\sqrt r\,\nu_{\rm real}
+4r\delta_{\rm led}^2
=q_{\rm nor}.
\end{split}
\tag{43}
\]

The missing labels in the partial sum only decrease the nonnegative upper
bound. Cyclic relabeling proves (39) in all modes.

Let `A_(t,M)=max_(q<=t)||a_(q,M)||_2`. Equations (30), (38), and (39) imply

\[
\|a_{t,M}\|_2\le e_{\rm num}\Lambda_{\rm nor}
+q_{\rm nor}A_{t-1,M},
\tag{44}
\]

with `A_(0,M)=0`. Forward induction in (44) gives

\[
A_{t,M}\le {e_{\rm num}\Lambda_{\rm nor}\over1-q_{\rm nor}}.
\tag{45}
\]

Summing (45) over `t<=s` and the three modes proves (40). This is a finite
triangular solve and is uniform over the commit order.

Because `Pi_star T=T`,

\[
(\operatorname{Id}-\Pi_\star)R_{I_s}
=-\sum_{t=1}^s g_t^3
(\operatorname{Id}-\Pi_\star)
(\widetilde u_{t,A}\otimes\widetilde u_{t,B}\otimes
\widetilde u_{t,C}).
\tag{46}
\]

For each rank-one term the exact three-projector telescoping identity is

\[
\begin{split}
(\operatorname{Id}-\Pi_\star)(u_A\otimes u_B\otimes u_C)
={}&P_A^\perp u_A\otimes u_B\otimes u_C\\
&+P_Au_A\otimes P_B^\perp u_B\otimes u_C\\
&+P_Au_A\otimes P_Bu_B\otimes P_C^\perp u_C.
\end{split}
\tag{47}
\]

Orthogonal projectors have norm one, so the Frobenius norm of the `t`th
summand in (46) is at most `sum_M ||a_(t,M)||_2`. Equations (40), (46), and
(47) prove the Frobenius part of `(SE-perp)`. The product-spectral norm
`||D||_sigma=sup_(||u||=||v||=||w||=1)|<D,u tensor v tensor w>|` is at most
`||D||_F` by Cauchy--Schwarz, proving the first inequality. For `s=0`, both
sides of (46) are zero. In the formal `H=0,e_num=0` baseline, (30) and the
unit diagonal recurrence force every `a_(t,M)=0`, so `(SE-perp)` is equality.
QED.

### unit_006: lemma - Same-Target Projection and Differential Compatibility

Paper-ready label: `lem:p2-i9-s6-step003b-compatibility`.

Paper-ready title: Same-Target Projection and Differential Compatibility.

Statement:

Under Proposition~\ref{prop:p2-i9-s6-step003b-normal}, set

\[
R_I^\parallel:=\Pi_\star R_I,
\qquad D_I:=R_I-R_I^\parallel.
\tag{48}
\]

Then `||D_I||_F<=B_perp`, and for every realized target-frame test tensor

\[
\psi=m_{\ell,A}\otimes m_{j,B}\otimes m_{j,C},
\tag{49}
\]

including all cyclic versions,

\[
\langle R_I^\parallel,\psi\rangle=\langle R_I,\psi\rangle.
\tag{50}
\]

Applying `Pi_star` separately to every accepted error likewise preserves
every contraction defining `A_I`; hence the exact same `A_I` and accepted
conditional `Theta_I` occur on both sides of the projection bridge.

Uniformly for all unit product directions and all tangent vectors `xi`,

\[
|s_I-s_I^\parallel|\le B_\perp,
\tag{51}
\]

\[
\|\operatorname{grad}_{\cal S}s_I-
\operatorname{grad}_{\cal S}s_I^\parallel\|_2
\le\sqrt3 B_\perp,
\tag{52}
\]

\[
|\langle(\operatorname{Hess}_{\cal S}s_I-
\operatorname{Hess}_{\cal S}s_I^\parallel)\xi,\xi\rangle|
\le3B_\perp\|\xi\|_2^2,
\tag{53}
\]

and

\[
\bigl|\|R_I\|_F-\|R_I^\parallel\|_F\bigr|\le B_\perp.
\tag{54}
\]

Proof:

The first claim is `(SE-perp)`. Every factor in (49) belongs to the range of
its corresponding source-span projector, so `Pi_star psi=psi`. Orthogonal
self-adjointness gives

\[
\langle\Pi_\star R_I,\psi\rangle
=\langle R_I,\Pi_\star\psi\rangle=\langle R_I,\psi\rangle,
\tag{55}
\]

which is (50). The identical calculation with `E_i` in place of `R_I`
preserves each individual absolute contraction in `(R-hist-src)`, not merely
their signed sum. Thus `A_I` is identical. Equation (6) then gives the same
unique `Theta_I`, since its static source and transfer are unchanged.

For an arbitrary unit product tensor, Cauchy--Schwarz and
`||D_I||_F<=B_perp` give (51). Each of the three gradient blocks in (7) has
norm at most `B_perp`; summing their squared norms proves (52). Apply (8) to
`D_I`. If `a=||xi_A||`, `b=||xi_B||`, and `c=||xi_C||`, then

\[
2(ab+ac+bc)+(a^2+b^2+c^2)
\le3(a^2+b^2+c^2).
\tag{56}
\]

This proves (53). Finally, (54) is the reverse triangle inequality applied
to (48). The target itself has not changed: `Pi_star T=T`, and projection is
used only for this analysis comparison. QED.

### unit_007: proposition - Raw and Lower-Tail-Qualified Scale Comparisons

Paper-ready label: `prop:p2-i9-s6-step003b-scales`.

Paper-ready title: Raw and Lower-Tail-Qualified Scale Comparisons.

Statement:

Under Lemma~\ref{lem:p2-i9-s6-step003b-reserve},
Proposition~\ref{prop:p2-i9-s6-step003b-normal}, and the fixed exponent
selection (13), there is a fixed `c_SE>0`, depending only on fixed
class/proof constants, such that for every nonterminal legal prefix and every
certificate-scale state with `0<g<=2R_max`,

\[
B_\perp\le c_{\rm SE}\min\left\{
{\tau_{\min}\over r},
\|R_I\|_FP^{-D_{\rm cap}/2},
{N_I(g)P^{-D_{\rm gap}}\over g^3}
\right\}.
\tag{SE-raw}
\]

On the derived event `E_lb`, and only on that branch,

\[
B_\perp\le c_{\rm SE}\tau_{\min}\eta_0.
\tag{SE-lb}
\]

Outside `E_lb`, `(SE-raw)` remains valid and no comparison of `B_perp` with
`tau_min eta_0` is asserted. In the exact `H=0,e_num=0` branch, both sides
of `(SE-lb)` are zero.

Proof:

By (16) and (40),

\[
B_\perp\le4r\Lambda_{\rm nor}P^{-D_{\rm stat}}
\le4P^{D_{\rm nor}-D_{\rm stat}}.
\tag{57}
\]

The polynomial bounds (12), `P>=r`, and `(Res)` give

\[
{\tau_{\min}\over r}\ge P^{-(D_\tau+1)},
\qquad
\|R_I\|_FP^{-D_{\rm cap}/2}
\ge c_RP^{-(D_\tau+D_{\rm cap}/2)}.
\tag{58}
\]

Also `N_I(g)>=1`, and the radius guard with `P>=16 kappa` gives
`g^3<=(16 kappa)^3<=P^3`. Since `D_tau=3>=1`,

\[
{N_I(g)P^{-D_{\rm gap}}\over g^3}
\ge P^{-(D_{\rm gap}+3)}
\ge P^{-(D_{\rm gap}+3D_\tau)}.
\tag{59}
\]

Combining (13) and (57)--(59) leaves at least a factor `P^(-10)` relative to
each raw target scale. After the fixed constants have been selected, enlarge
the fixed threshold once so that

\[
4P^{-10}\le c_{\rm SE}\min\{1,c_R\};
\tag{60}
\]

for example any fixed `c_SE<=1/64` is valid beyond that threshold. Equations
(57)--(60) prove `(SE-raw)` with no use of `E_lb`.

On `E_lb`, (3) gives

\[
\eta_0=C_\eta(\Gamma_\star\nu_{\rm real}^2+e_{\rm num})
\ge C_\eta\Gamma_\star P^{-2D_{\rm lb}},
\tag{61}
\]

and hence

\[
\tau_{\min}\eta_0
\ge C_\eta\Gamma_\star
P^{-(D_\tau+2D_{\rm lb})}.
\tag{62}
\]

The `2D_lb` term in (13), (57), and one further fixed-threshold enlargement
make the ratio in (57)/(62) at most `c_SE`, proving `(SE-lb)`. This is the
only numerical-to-structural absorption in the proposition. If `E_lb` is
absent, (61) is unavailable and is not replaced by any lower bound. If
`H=0,e_num=0`, (30), (38), and (40) give `B_perp=0`, while `eta_0=0`, so
the exact-limit statement holds by equality. QED.

## Target-Step Assembly

Hypothesis~\ref{hyp:p2-i9-s6-step003b-records} fixes exactly the temporal
input authorized by the accepted sketch: earlier accepted certificates,
distinct matching labels, product-one signs, and `(R-euc)`. It contains none
of the outputs proved here. Lemma~\ref{lem:p2-i9-s6-step003b-parameters}
derives the polynomial scales, the accepted-error reserve, and the
pair-normal small-gain relation directly from the accepted source event and
pair-row estimates.

Lemma~\ref{lem:p2-i9-s6-step003b-reserve} then telescopes each accepted
rank-one error, restricts the exact target Gram to the unresolved labels, and
uses reverse triangle to prove `(Hist-F)` and `(Res)` before any landscape or
capture comparison. Independently,
Lemma~\ref{lem:p2-i9-s6-step003b-postfit} turns the stored radial/angular
certificate equations into the sole normal forcing
`||b_(t,M)||<=e_num Lambda_nor`.

Proposition~\ref{prop:p2-i9-s6-step003b-normal} expands the exact post-fit
residual, obtains the chronological equations (38), proves their coefficient
row sums are at most the already derived `q_nor`, solves them forward, and
telescopes the three orthogonal projectors. This proves the exact requested
`B_perp` and `(SE-perp)` interfaces without assuming source exclusion.

Lemma~\ref{lem:p2-i9-s6-step003b-compatibility} proves that the analysis
projection preserves every realized target-frame contraction, each
`A_I` coordinate, and therefore the accepted conditional `Theta_I` exactly.
It also supplies the score, gradient, Hessian, and residual-norm comparisons
consumed by the landscape steps. Finally,
Proposition~\ref{prop:p2-i9-s6-step003b-scales} combines the raw polynomial
forcing with `(Res)` to prove `(SE-raw)` on every branch, and uses the
accepted lower-tail event only for `(SE-lb)`.

Thus the producer path is

\[
\begin{gathered}
\text{accepted source/pair interfaces + prior records}
\longrightarrow (\mathrm{Hist\mbox{-}F}), (\mathrm{Res}),
\text{ post-fit forcing},q_{\rm nor}\\
\longrightarrow B_\perp,(\mathrm{SE\mbox{-}perp}),
\text{ exact target-frame compatibility}
\longrightarrow (\mathrm{SE\mbox{-}raw}),
\quad E_{\rm lb}\Longrightarrow(\mathrm{SE\mbox{-}lb}).
\end{gathered}
\tag{63}
\]

The empty prefix begins with `B_hist,F=B_perp=0`. Current landscape/matching
steps may consume (63), and only their newly stored audit may enter the next
temporal invocation through `step_009`. No current conclusion is used to
produce its own hypothesis.

## Explicit Rate Audit

- Exposed variables: `n,r,k,kappa,rho,Gamma_star,P,nu_real,eta_0`,
  `e_num=P^(-D_stat)`, `D_stat,D_gap,D_cap,D_lb`, `tau_min,tau_max`,
  `R_bar,L_bar,Lambda_nor,delta_led,q_nor,B_hist,F,B_perp`, the protected
  history length, certificate radius `g`, and `N_I(g)`.
- Hidden constants may depend on: only fixed class/proof constants from the
  setting, including `C_nu,C_eta,C_led,Gamma_star` and fixed protocol
  constants. `C_E=4C_led`, `D_tau=3`, and `D_nor=8` are displayed.
- Hidden constants may not depend on: `n,r,k,kappa,rho`, the realized
  instance, commit order, history length, current candidate, tape,
  `epsilon`, or the value of `nu_real`.
- Fixed quantities: one realized instance on `E_inst`, the fixed proof
  exponents and constants, and one finite legal prior-record package.
- Probability mode: deterministic conditional on the accepted once-drawn
  event and local history. `(SE-lb)` is additionally conditional on the
  derived `E_lb` subevent. No tape probability, new event, or union bound is
  introduced.
- Horizon mode: a finite prefix of length `s<r`, uniformly over commit order.
  The result is one-state conditional; the later finite `step_009` induction
  supplies every generated prefix.
- Norm mode: Euclidean factor norm, tensor Frobenius norm, tensor
  product-spectral norm, and the product-sphere gradient/Hessian quadratic
  form. Target-frame compatibility is exact scalar equality.
- Admissibility conditions and auxiliary tolerances: only the accepted
  source event, pair/triple gaps, prior generated records, `0<g<=2R_max`,
  the fixed exponent order (13), and the fixed asymptotic threshold.
  `q_nor`, `(Res)`, and `(SE-perp)` are derived outputs, not conditions.
- Term absorption or simplification inequalities: (17)--(23) prove the
  scalar and small-gain selection; (26)--(28) prove the full accepted-error
  reserve; (33)--(36) retain both angular and radial numerical forcing;
  (42)--(45) prove the exact triangular coefficient and inverse; and
  (57)--(62) prove every raw or branch-qualified scale comparison. The raw
  term `3r Lambda_nor e_num/(1-q_nor)` is never suppressed.
- Probability conversion: None. `E_lb` retains the accepted instance-level
  status from `step_001`; its complement keeps `(SE-raw)`.
- Contribution to any Rate Specialization Bridge: supplies the full-history
  R2 source-normal bridge, a positive actual-residual scale, unconditional
  capture/curvature comparisons, and the sole lower-tail-qualified
  calibration comparison.
- Baseline-reduction check: at the empty prefix the normal system is empty.
  In the formal exact orthogonal/noiseless specialization `H=0,e_num=0`, all
  post-fit forcing and normal components vanish, the projection is exact,
  and the target representation retains zero residual after all exact atoms;
  no numerical floor is introduced.

## Blockers

None.

## Notation And Assumption Notes

- `P_M`, `Pi_star`, `R_I^parallel`, `B_hist,F`, `q_nor`, and `B_perp` are the
  minimal `public-facing` analysis interfaces fixed by the accepted sketch.
  The projectors are defined directly from the setting's realized source
  columns. They are never queried by the algorithm.
- `R_bar`, `L_bar`, and `Lambda_nor` are `appendix-local` setting/sketch
  expressions. Their finiteness and polynomial bounds are proved in
  Lemma~\ref{lem:p2-i9-s6-step003b-parameters}; they are not free bounded
  quantities. `D_tau=3` and `D_nor=8` are fixed proof exponents proved valid
  in (17)--(20).
- `delta_led=C_led eta_0` and `C_E=4C_led` are `appendix-local` constants
  directly defined from setting quantities. Their smallness and reserve are
  proved in Lemma~\ref{lem:p2-i9-s6-step003b-parameters}.
- The signed directions `widetilde u_(t,M)`, normal vectors `a_(t,M)`,
  post-fit vectors `b_(t,M)`, coefficients `c_(q,t,M)`, running maxima in the
  triangular solve, and `D_I` are `proof-local`. Each is explicitly defined
  from setting objects and the local historical record package. Only the
  aggregate `B_perp` is exported.
- The legal prefix, injection, matching signs, `(R-euc)`, and accepted
  certificates are generated-object conditions used only through
  Hypothesis~\ref{hyp:p2-i9-s6-step003b-records}. They are not reclassified
  as primitive. Their theorem-facing all-prefix production remains assigned
  to `step_009`.
- `(Hist-F)`, `(Res)`, the post-fit normal forcing, `q_nor<=1/4`, the
  triangular recurrence, `(SE-perp)`, and all differential comparisons are
  proved in this step. None is assumed inside the record package.
- `E_inst`, `E_lb`, realized norm/weight/Gram bounds, pair/triple gaps, and
  pair-row estimates are public-facing derived controls supplied by accepted
  dependencies. `E_lb` is consumed only in (61)--(62). The finite branch
  outside it keeps the complete raw numerical term.
- `A_I` and `Theta_I` are accepted conditional interfaces from `step_003`.
  This step proves, rather than assumes, that applying the source-span
  projection preserves their target-frame coordinates exactly. They play no
  role in deriving the normal recurrence.
- The constants `c_R=(1/2)sqrt(15/16)` and any fixed
  `c_SE<=1/64` after (60) are `public-facing` derived margins. Their
  provenance is the accepted triple-Gram reserve and the explicit exponent
  slack, respectively.
- Boundary cases are explicit: empty history; first commit; last
  nonterminal prefix; finite `e_num>0,nu_real=0` with raw comparisons only;
  tiny positive `nu_real`; and the formal exact `H=e_num=0` specialization.
- No `global_proof.md`, archived sketch, prior same-step artifact,
  `proof_history` artifact, or prior idea branch was read or used as evidence,
  a cited result, an assumption source, or authority to change the target.
