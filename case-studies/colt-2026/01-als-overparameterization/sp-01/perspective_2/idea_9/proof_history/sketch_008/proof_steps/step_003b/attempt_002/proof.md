# Proof Step

## Step Identity

- Sketch attempt: 8
- Step ID: `step_003b`
- Unit attempt: 2
- Branch: `perspective_2/idea_9`
- Binding setting SHA-256:
  `27315acf705cd791f29d341efaa11aae66803d02b9c240fc613cce06cc57c4b2`
- Binding proof-sketch SHA-256:
  `40782b585d3292d25d1a921425470ade621f1dc6180a2f52bb05b94c96375fe8`
- Binding proof-sketch-review SHA-256:
  `2a5834040fccae1871b1346184eca7458d479d525f8cdcb8a2e4110baa20a4c7`
- Triggering step-review SHA-256:
  `29624501b87bb544e6ec00abd4e3c670c1e70d55863a62f3cebded40314d2166`
- Accepted global diagnostic/review used only as planning context:
  `aa100a493bee364e4d4103acae7f0a456bc28d30e1dcb5231a619f4ea71f7c05` /
  `a4d07969e5e1ee0923cffae83b66a0e5fe848396d4615b4e06250c4e11714418`

## Target Step Claim

- Intended claim: From prior generated accepted-slot certificate, matching,
  and `(R-euc)` records, derive `(Hist-F)`, the unresolved-target
  reverse-triangle reserve `(Res)`, the post-fit normal equations, prove
  `q_nor<=1/4`, solve the triangular system, and export `(SE-perp)`,
  `(SE-raw)`, the `E_lb`-conditioned `(SE-lb)`, and exact target-frame
  projection compatibility.
- Dependencies: accepted sketch-attempt-8 `step_001`, `step_002`, and
  `step_003` proof/review artifacts, with proof/review hashes recorded below.
- Assumptions used: derived source spans and pair/triple gap on either
  structural branch; `E_lb` only for the lower-tail calibration; prior
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
- Sketch-row review status at producer dispatch: `PENDING`. Sketch-level
  authority is the accepted `proof_sketch_review.md`, not this row-local
  field.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- No new primitive condition is invoked after conditioning on the accepted
  structural event branch. Assumptions~\ref{assump:base-column-conditioning},
  \ref{assump:base-product-balance},
  \ref{assump:gaussian-smoothing},
  \ref{assump:dimension-regime},
  \ref{assump:smoothing-scale}, and
  \ref{assump:modewise-gram-margin} are recorded only as the primitive
  provenance already discharged by the accepted `step_001` event.
- `assump:rank-regime` is used only for the domain facts \(k\ge r\) and
  \(P\ge16r\kappa\) in the displayed polynomial comparisons; it supplies no
  trajectory or source-normal condition.

Derived invariants supplied by accepted dependencies:

- The accepted `step_001` proof, SHA-256
  `7bac568976f9830625019e4e6b912a4b1779a742f61e37f92a8aeea360b6101a`,
  and accepted review, SHA-256
  `f0b185f9f467dbf6d2e3cb6216427cc860005a7da1a90da60b288dc12f345d7b`,
  supply `E_inst`, the realized nonzero normalized columns, the realized
  norm and product-weight bounds, `nu_real<=nu_star`, all pair/triple Gram
  gaps, the exact target representation, and the derived event
  `E_lb={nu_real>=P^(-D_lb)}` with `D_lb=60`.  Its component
  perturbation and normalization lemmas separately certify `E_str` and the
  same norm/weight/signed-Gram conclusions on `E_str`; these component
  scopes are the only step_001 evidence used by the raw-interface lemma on
  `E_raw`.
- The accepted `step_002` proof, SHA-256
  `d75c95f11da92e28502228b747005659dec9020ad14f40ca98d9fdabdab5846a`,
  and accepted review, SHA-256
  `1ef20d82435ff0583b185471678dfcd4df77e83894e26d674f9d11dea5873a82`,
  supply `(R-src)`, in particular each pair-Khatri--Rao row sum at most
  `nu_real^2`, and the accepted static small-gain interfaces.
- The accepted `step_003` proof, SHA-256
  `ffa107f07e2b2bebd3f638675500f62302dafda573b3faa0ad3ff720bfc8098c`,
  and accepted review, SHA-256
  `c003ebb5b9d447632953c1761b33e5d51fb9c82bfc18c513da6bfda51858bf48`,
  supply the conditional target-frame array `Theta_I` for the same legal
  finite history. This step uses that dependency only to prove exact
  target-frame compatibility; it does not use `Theta_I` to prove the normal
  recurrence or the residual reserve.
  Lemma~\ref{lem:p2-i9-s8-step003-history} in that proof supplies the
  finite nonnegative realization of `A_I` for the legal history, while
  Proposition~\ref{prop:p2-i9-s8-step003-resolvent} supplies its unique
  two-norm Neumann envelope.

The accepted `step_001` artifact also exports its structural event `E_str`
with the raw conclusions and the lower-tail refinement `E_lb`. Define the
two disjoint structural branches

\[
 E_{\rm hi}:=E_{\rm str}\cap E_{\rm lb}=E_{\rm inst},\qquad
 E_{\rm raw}:=E_{\rm str}\cap E_{\rm lb}^{c}.
\tag{S-branch}
\]

The accepted `step_002` and `step_003` interfaces are consumed on
`E_hi`.  The new raw-interface lemma below rederives the static
H/J/K, pair-normal, transfer, and small-gain inputs on `E_raw` directly from
the accepted `step_001` structural and normalization lemmas.  No probability
claim for `E_raw` is introduced here.  Whenever a conclusion uses the
lower-tail comparison, its event is explicitly `E_hi`; no lower bound on
`nu_real` is used on `E_raw`.

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

Everything below is deterministic conditional on either `E_hi` or `E_raw`
and this legal finite prior-record package.  The empty package `s=0` is
included.  Clauses involving the accepted `Theta_I` interface are marked
`E_hi`-only; the source-normal and raw-scale clauses are proved on both
branches.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | hypothesis | Historical Accepted-Record Package, label `hyp:p2-i9-s8-step003b-records`: under the accepted prior temporal producer, a finite nonterminal prefix carries only the ordered certificates, distinct matching labels, product-one signs, and `(R-euc)` records in `(H-rec)`. | Fixes the exact conditional generated input without assuming either target conclusion. |
| `unit_002` | lemma | Static Parameter and Normal-Coupling Reserve, label `lem:p2-i9-s8-step003b-parameters`: under Assumptions~\ref{assump:base-column-conditioning}, \ref{assump:base-product-balance}, \ref{assump:modewise-gram-margin}, and \ref{assump:rank-regime}, Proposition~\ref{prop:p2-i9-s8-step001-instance}, Lemma~\ref{lem:p2-i9-s8-step002-source}, Proposition~\ref{prop:p2-i9-s8-step002-transfer}, Proposition~\ref{prop:p2-i9-s8-step002-gap}, and Hypothesis~\ref{hyp:p2-i9-s8-step003b-records}, the setting quantities obey `tau_min>=P^(-3)`, `r Lambda_nor<=P^8`, `delta_led<=1/2`, the displayed accepted-error reserve, and `q_nor<=1/4` after the fixed exponent/threshold selection. | Proves every scalar margin used by the recurrence and reverse triangle. |
| `unit_002raw` | lemma | Raw Structural Gram, Pair-Coupling, and Transfer Interface, label `lem:p2-i9-s8-step003b-raw-interface`: on `E_raw=E_str\cap E_lb^c`, the accepted step_001 structural/normalization lemmas directly imply the norm/weight and restricted pair/triple gaps, H/J/K row bounds, the exact S and transfer budgets, `q_res,q_row<=1/4`, and the pair-normal bound `q_nor<=1/4` under Hypothesis~\ref{hyp:p2-i9-s8-step003b-records}. | Supplies every static and chronological small-gain input used below on the lower-tail complement without importing the E_inst-scoped step_002 interface. |
| `unit_003` | lemma | Accepted-History Frobenius and Residual Reserve, label `lem:p2-i9-s8-step003b-reserve`: under the branch interface from accepted step_001/step_002 on `E_hi` or Lemma~\ref{lem:p2-i9-s8-step003b-raw-interface} on `E_raw`, Hypothesis~\ref{hyp:p2-i9-s8-step003b-records}, and Lemma~\ref{lem:p2-i9-s8-step003b-parameters} (or its raw counterpart), the prior `(R-euc)` records imply `(Hist-F)` and `(Res)` for every nonterminal prefix. | Supplies the missing positive actual-residual scale before any landscape comparison. |
| `unit_004` | lemma | Post-Fit Source-Normal Forcing, label `lem:p2-i9-s8-step003b-postfit`: under Hypothesis~\ref{hyp:p2-i9-s8-step003b-records} and the branch parameter interface, every accepted radial/angular certificate implies a post-fit normal contraction of norm at most `e_num Lambda_nor` in every mode. | Derives the only forcing in the chronological normal recurrence. |
| `unit_005` | proposition | Triangular Normal Solve and Projector Telescoping, label `prop:p2-i9-s8-step003b-normal`: under the branch parameter interface and Lemma~\ref{lem:p2-i9-s8-step003b-postfit}, the exact chronological normal equations have coefficient row sums at most `q_nor`, their solution gives the stated `B_perp`, and projector telescoping proves `(SE-perp)`. | Establishes the full-history source-normal tensor bound without assuming it. |
| `unit_006` | lemma | Same-Target Projection and Differential Compatibility, label `lem:p2-i9-s8-step003b-compatibility`: under Proposition~\ref{prop:p2-i9-s8-step003b-normal}, orthogonal projection preserves every realized target-frame contraction and perturbs score, gradient, Hessian, and residual norm by the displayed `B_perp` bounds on both branches; the exact `A_I/Theta_I` identity additionally uses accepted Proposition~\ref{prop:p2-i9-s8-step003-resolvent} on `E_hi`. | Shows that the projection is an exact same-target analysis bridge, with branch-qualified `A_I/Theta_I` compatibility. |
| `unit_007` | proposition | Raw and Lower-Tail-Qualified Scale Comparisons, label `prop:p2-i9-s8-step003b-scales`: under Lemma~\ref{lem:p2-i9-s8-step003b-reserve}, Proposition~\ref{prop:p2-i9-s8-step003b-normal}, the fixed exponent order, `(SE-raw)` holds on `E_hi\cup E_raw`, while `(SE-lb)` is asserted only on `E_hi`. | Completes the exact branch-aware target-step interface. |

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
Proposition~\ref{prop:p2-i9-s8-step001-instance} and its accepted component
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

### Accepted absolute-Gram and pair-row interface (E_hi only)

On E_hi, accepted Lemma~\ref{lem:p2-i9-s8-step002-source} gives, for each mode,

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

### Accepted transfer and small-gain interfaces (E_hi only)

On E_hi, the accepted step_002 proof and review at the hashes in the Step Identity
supply Proposition~\ref{prop:p2-i9-s8-step002-transfer} and
Proposition~\ref{prop:p2-i9-s8-step002-gap}. In the exact setting notation,
the nonnegative transfer \(\mathcal T\) has

\[
\|\mathcal T\|_{1\to1},\qquad
\|\mathcal T\|_{{\rm root},2\to{\rm root},2}
\le2(\nu_{\rm real}+\eta_0)(1+\sqrt r\,\nu_{\rm real}),
\tag{5a}
\]

and the named gap proposition supplies

\[
q_{\rm res}=C_0\Gamma_\star\|\mathcal T\|_{1\to1}\le1/4,
\qquad
q_{\rm row}=C_0\Gamma_\star
\|\mathcal T\|_{{\rm root},2\to{\rm root},2}\le1/4.
\tag{5b}
\]

These are accepted static derived controls, not history or source-normal
assumptions. The exact zero-defect specialization in the same
Proposition~\ref{prop:p2-i9-s8-step002-gap} gives \(S=\mathcal T=0\) and
\(q_{\rm res}=q_{\rm row}=0\).

### Raw structural interface used on the lower-tail complement

The accepted step_001 proof has two component results whose scopes are
strictly weaker than its assembled `E_inst` proposition.  Its
Lemma~\ref{lem:p2-i9-s8-step001-perturbation} defines `E_str`, and its
Lemma~\ref{lem:p2-i9-s8-step001-normalization} proves all norm, weight, and
signed-Gram conclusions on `E_str` itself.  Therefore, on

\[
 E_{\rm raw}=E_{\rm str}\cap E_{\rm lb}^{c},
\tag{Raw-domain}
\]

the normalized columns are nonzero and satisfy the same upper signed-Gram
margin even though the lower-tail inequality is unavailable.  The raw
interface lemma proved below redoes the absolute-value, Schur-kernel,
fixed-root transfer, and pair-normal calculations from these component
outputs.  In particular, it does not cite the `E_inst`-scoped step_002
source/transfer propositions as evidence on `E_raw`.  On `E_hi=E_inst`, the
accepted step_002 results remain the canonical interface and are retained
unchanged.

### Raw component dependency application

Source: the accepted step_001 proof at SHA-256
7bac568976f9830625019e4e6b912a4b1779a742f61e37f92a8aeea360b6101a,
specifically Lemma~\ref{lem:p2-i9-s8-step001-perturbation} and
Lemma~\ref{lem:p2-i9-s8-step001-normalization}, whose accepted review is
f0b185f9f467dbf6d2e3cb6216427cc860005a7da1a90da60b288dc12f345d7b.

Restated in current notation: under Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance}, \ref{assump:gaussian-smoothing},
\ref{assump:dimension-regime}, \ref{assump:smoothing-scale}, and
\ref{assump:modewise-gram-margin}, the perturbation lemma defines an event
E_str; on that event the normalization
lemma proves nonvanishing, the two-sided realized column norm envelope, the
product-weight ratio tau_max/tau_min<=2 Gamma_star, and
nu_real<=nu_star.  These are deterministic component conclusions on E_str,
not conclusions requiring the assembled event E_inst.

Object mapping: the matrices, normalized columns, Grams, weights, and P are
exactly the setting objects in this step.  The lower-tail lemma defines E_lb,
so restricting the component conclusions to E_raw=E_str\cap E_lb^c is a
valid event restriction.  No statement from the accepted step_002 artifact
is used as evidence on E_raw; all absolute-Gram, source, transfer, and
pair-normal estimates are rederived in
Lemma~\ref{lem:p2-i9-s8-step003b-raw-interface}.

### Accepted conditional target-frame envelope

For the supplied legal history on E_hi, accepted
Proposition~\ref{prop:p2-i9-s8-step003-resolvent} gives the unique conditional
array

\[
\Theta_I=(\operatorname{Id}-C_0\Gamma_\star\mathcal T)^{-1}
C_0\Gamma_\star(S+A_I+e_{\rm num}\mathbf1).
\tag{6}
\]

Only the following object-map fact is used on E_hi: (6) depends on the protected
history through the exact target-frame array `A_I`. Once
Lemma~\ref{lem:p2-i9-s8-step003b-compatibility} proves that every contraction
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

Paper-ready label: `hyp:p2-i9-s8-step003b-records`.

Paper-ready title: Historical Accepted-Record Package.

Statement:

Under the explicitly conditional finite-prefix history interface produced
by `step_009` (not a primitive setting assumption), fix a legal generated
nonterminal prefix `I_s={i_1,...,i_s}` in chronological order. Then every
`i_t` has a distinct generated label `p_t`, product-one signs
`sigma_(t,A),sigma_(t,B),sigma_(t,C)`, and signed unit directions

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

Paper-ready label: `lem:p2-i9-s8-step003b-parameters`.

Paper-ready title: Static Parameter and Normal-Coupling Reserve.

Statement:

Under Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance}, \ref{assump:modewise-gram-margin}, and
\ref{assump:rank-regime}, Proposition~\ref{prop:p2-i9-s8-step001-instance},
Lemma~\ref{lem:p2-i9-s8-step002-source},
Proposition~\ref{prop:p2-i9-s8-step002-transfer},
Proposition~\ref{prop:p2-i9-s8-step002-gap}, and
Hypothesis~\ref{hyp:p2-i9-s8-step003b-records} supply (1)--(5) and define

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

### unit_002raw: lemma - Raw Structural Gram, Pair-Coupling, and Transfer Interface

Paper-ready label: `lem:p2-i9-s8-step003b-raw-interface`.

Paper-ready title: Raw Structural Gram, Pair-Coupling, and Transfer Interface.

Statement:

Under Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance},
\ref{assump:gaussian-smoothing},
\ref{assump:dimension-regime},
\ref{assump:smoothing-scale}, and
\ref{assump:modewise-gram-margin}, let `E_str` and `E_lb` be the component
events supplied by Lemmas~\ref{lem:p2-i9-s8-step001-perturbation} and
\ref{lem:p2-i9-s8-step001-lower-tail}, and put
`E_raw=E_str\cap E_lb^c`.  Assumption~\ref{assump:rank-regime} is used only
for the domain facts `k>=r` and `P>=16r kappa`.  On every outcome in
`E_raw`, the conclusions of the accepted
Lemma~\ref{lem:p2-i9-s8-step001-normalization} hold.  Define

\[
 \nu:=\nu_{\rm real},\qquad e:=e_{\rm num}:=P^{-D_{\rm stat}},\qquad
 \eta_0:=C_\eta(\Gamma_\star\nu^2+e),\qquad
 \delta_{\rm led}:=C_{\rm led}\eta_0.
\tag{RI-1}
\]

Also set, from the setting radius guard,

\[
 \overline R:=\|T\|_F+r(2R_{\max})^3,\qquad
 \overline L:=1+\overline R+(2R_{\max})^4,qquad
 \Lambda_{\rm nor}:=\overline R+(2R_{\max})^3+{2\overline L\over\tau_{\min}}.
\tag{RI-1a}
\]

Then the following raw interface holds simultaneously:

1.  With the fixed exponents `D_tau=3` and `D_nor=8`,
    `tau_min>=P^(-D_tau)`, `r Lambda_nor<=P^(D_nor)`,
    `tau_max/tau_min<=2 Gamma_star`, and
    `nu<=nu_star`; every restricted pair and triple Gram obeys the `1/16`
    gap used in `(Res)`.  Moreover `e<=1`,
    `delta_led<=1/2`, and, with `C_E=4 C_led`,

    \[
    C_Er\tau_{\max}\eta_0
    \le {1\over2}\sqrt{15/16}\,\tau_{\min}.
    \tag{RI-1b}
    \]
2.  For every mode `M`, with `H_M,J_M,K_M` as in the setting,

    \[
    \max_j\|H_Me_j\|_2\le\nu,\quad
    \|H_M\|_1=\|H_M\|_\infty\le\sqrt r\nu,\quad
    \|J_M\|_1=\|J_M\|_\infty\le1+\sqrt r\nu,
    \quad
    \|K_M\|_1=\|K_M\|_\infty\le\nu^2.
    \tag{RI-2}
    \]

    Consequently the setting-defined leakage and first-chain source satisfy
    `L_(M,j)<=2 Gamma_star tau_j nu^2` and
    `||S||_1<=3r nu^2(1+sqrt(r)nu)`.
3.  The exact setting transfer `mathcal T` obeys

    \[
    \|\mathcal T\|_{1\to1},
    \|\mathcal T\|_{{\rm root},2\to{\rm root},2}
    \le2(\nu+\eta_0)(1+\sqrt r\nu),
    \tag{RI-3}
    \]

    and the fixed choices of `C_nu,C_0,C_eta,D_stat` with `D_stat>=60` and the asymptotic
    threshold satisfy `q_res<=1/4` and `q_row<=1/4`.
4.  For every legal finite history satisfying
    Hypothesis~\ref{hyp:p2-i9-s8-step003b-records}, the chronological pair
    coefficients in every mode obey

    \[
    \sum_{q<t}|c_{q,t,M}|
    \le q_{\rm nor}:=\nu^2+4\delta_{\rm led}\sqrt r\nu
                         +4r\delta_{\rm led}^2\le\frac14.
    \tag{RI-4}
    \]

All four assertions are conditional only on `E_raw` and the named local
history package; no lower bound on `nu` and no `E_lb`-conditioned absorption
is used.  The exact `H=0,e=0` specialization gives zero `H,J-I,K,S`, zero
transfer, and `q_res=q_row=q_nor=0`.

Proof:

The proof is included here rather than importing the accepted `E_inst`-scoped
step_002 interfaces.  This is the required raw-event theorem-style bridge.

First, the scalar envelopes used by the normal recurrence are also raw-event
consequences.  From (RI-5), the target triple gap in (RI-6), and
R_max=8 kappa,

\[
\|T\|_F\le\sqrt{17/16}\sqrt r\,\tau_{\max}\le9\sqrt r\,\kappa^3,
\quad
\overline R\le4105r\kappa^3,\quad
\overline L\le70000r\kappa^4.
\tag{RI-2a}
\]

Since tau_min^(-1)<=8 kappa^3, (RI-1a) gives
Lambda_nor<=1.2*10^6 r kappa^7; hence r Lambda_nor<=P^8 after
the same fixed threshold used in the accepted parameter selection.  Also,
D_stat>=2 and P>=16r give
e=P^(-D_stat)<=1/(256r^2), while (RI-5) gives
nu^2<=1/(C_nu^2r^2 log^2 4).  Thus
eta_0<=C_*/r^2 with
\[
C_*:=C_\eta\left({\Gamma_\star\over
C_\nu^2\log^2 4}+{1\over256}\right),
\tag{RI-2b}
\]
so e<=1, delta_led<=1/2, and
\[
{C_Er\tau_{\max}\eta_0\over\tau_{\min}}
\le2C_E\Gamma_\star r\eta_0
\le {2C_E\Gamma_\star C_*\over r}
\le {1\over2}\sqrt{15/16}
\tag{RI-2c}
\]
after enlarging only the fixed asymptotic threshold.  This proves (RI-1b)
without a lower-tail lower bound.

### Raw normalization and restricted target gaps

On `E_str`, the accepted normalization lemma gives

\[
 (2\kappa)^{-1}\le\|a_j\|_2,\|b_j\|_2,\|c_j\|_2\le2\kappa,
 \qquad
 \frac{\tau_{\max}}{\tau_{\min}}\le2\Gamma_\star,
 \qquad
 \nu\le\nu_\star.
\tag{RI-5}
\]

In particular, the columns are nonzero and
`tau_min >= (2 kappa)^(-3) >= P^(-3)` because `P>=16 kappa`.  Writing
`E_M=G_M-I_r`, each `E_M` is symmetric, has zero diagonal, and has operator
norm at most `nu`.  The Schur/Kronecker compression identity therefore gives

\[
 \|G_M\circ G_N-I_r\|_{\rm op}\le\nu^2\le\frac1{16},qquad
 \|G_A\circ G_B\circ G_C-I_r\|_{\rm op}\le\nu^3\le\frac1{16}.
\tag{RI-6}
\]

The same inequalities hold on every principal restriction, which proves the
restricted pair/triple part of assertion 1 and supplies the target reserve
used later.  No lower-tail inequality was used.

### Raw absolute rows and the source

For a fixed mode, entrywise absolute value preserves every column Euclidean
norm, so

\[
 \|H_Me_j\|_2^2=\|(G_M-I_r)e_j\|_2^2\le\nu^2.
\tag{RI-7}
\]

Since the diagonal is zero, Cauchy--Schwarz gives
`sum_i H_M(i,j)<=sqrt(r)nu`; symmetry gives the same row bound, and adding
the identity gives the `J_M` bound in `(RI-2)`.  A second columnwise
Cauchy--Schwarz calculation gives, cyclically,

\[
 \sum_iK_A(i,j)=\sum_iH_B(i,j)H_C(i,j)\le\nu^2,
\tag{RI-8}
\]

and hence the row bound for every `K_M`.  Thus `(RI-2)` is a direct
consequence of the accepted step_001 structural event, with no operator-norm
claim for an entrywise absolute Gram.  Multiplying `(RI-8)` by `tau_max`
proves the leakage estimate.  Likewise, for the exact setting source
`S_(j,A,ell)=(K_AJ_A)_(j,ell)` (zero on the diagonal),

\[
 \sum_{\ell\ne j}S_{j,A,\ell}
 \le\|K_A\|_\infty\|J_A\|_\infty
 \le\nu^2(1+\sqrt r\nu),
\tag{RI-9}
\]

and summing over roots and modes gives the stated `S` budget.  The cyclic
identities retain both the direct `H_B(j,ell)H_C(j,ell)` path and the
first-chain `H_BH_CH_A` path, exactly as required by the setting.

### Raw fixed-root transfer and static gaps

Use the setting definition `(R-transfer)` of `mathcal T`.  For a fixed root
`j`, its exact coefficient block has, for an input coordinate `(B,t)`, the
column sum

\[
 (H_C(j,t)+\eta_0)\sum_{\ell\ne j}J_A(t,\ell)
 +(H_A(j,t)+\eta_0)\sum_{\ell\ne j}J_C(t,\ell)
 \le2(\nu+\eta_0)(1+\sqrt r\nu).
\tag{RI-10}
\]

The row sum of an output coordinate is the same expression with the fixed
`J` column and the two adjacent `H` entries; symmetry of `J` and `(RI-2)`
give the identical bound.  Hence every root block has both induced
`ell_1` and `ell_infty` norms bounded by the right side of `(RI-10)`.  The
nonnegative row/column-to-two-norm inequality gives the rootwise bound in
`(RI-3)`, and the direct-sum structure gives its global `ell_1` counterpart.

For completeness, the fixed constant choices are the following explicit
ones (they are deterministic parameter selections, not event assumptions):

\[
4C_0\Gamma_\star\left[
 {1\over2C_\nu\log4}+{C_\eta\Gamma_\star\over4C_\nu^2\log^2 4}
 \right]\le{1\over8},qquad
4C_0\Gamma_\star C_\eta 128^{-D_{\rm stat}}\le{1\over8}.
\tag{RI-11}
\]

Because `P=16nrkappa rho^(-1)>=32r^2`, `nu<=1/(C_nu r log(2r))`, and
`1+sqrt(r)nu<=2`, `(RI-10)` and `(RI-11)`, exactly as a three-term
monotone comparison, imply

\[
\begin{aligned}
q_{\rm res},q_{\rm row}
&\le4C_0\Gamma_\star\left[
{1\over C_\nu r\log(2r)}
 +{C_\eta\Gamma_\star\over C_\nu^2r^2\log^2(2r)}
 +C_\eta(32r^2)^{-D_{\rm stat}}\right]\\
&\le\frac14.
\end{aligned}
\tag{RI-11a}
\]

\[
 q_{\rm res}:=C_0\Gamma_\star\|\mathcal T\|_{1\to1}\le\frac14,qquad
 q_{\rm row}:=C_0\Gamma_\star
 \|\mathcal T\|_{{\rm root},2\to{\rm root},2}\le\frac14.
\tag{RI-12}
\]

This uses only the upper structural margin and the numerical tolerance; in
particular it does not use `nu>=P^(-D_lb)`.

### Raw pair-normal coupling

Fix a legal history from Hypothesis~\ref{hyp:p2-i9-s8-step003b-records}.
For distinct generated labels, the matching equations and `(H-rec)` give,
for every mode,

\[
 |\langle\widetilde u_{q,M},\widetilde u_{t,M}\rangle|
 \le H_M(p_q,p_t)+2\delta_{\rm led}.
\tag{RI-13}
\]

The labels `p_q` are distinct.  Therefore, for mode `A`, the coefficient
row sum is bounded by

\[
\begin{aligned}
 \sum_{q<t}|c_{q,t,A}|
 &\le\sum_{p\ne p_t}
 (H_B(p,p_t)+2\delta_{\rm led})
 (H_C(p,p_t)+2\delta_{\rm led})\\
 &\le \nu^2+4\delta_{\rm led}\sqrt r\nu
       +4r\delta_{\rm led}^2.
\end{aligned}
\tag{RI-14}
\]

The first term is `(RI-8)`, the two cross terms use the `H` column sums in
`(RI-2)`, and the last term uses `t-1<=r`.  Cyclic permutation proves the
same bound in modes `B,C`.

Finally, from `nu<=1/(C_nu r log(2r))`, `P>=16r`, and
`eta_0=C_eta(Gamma_star nu^2+e)`, the fixed threshold and the displayed
choice of `D_stat` make `eta_0<=C_*/r^2` for a class-dependent `C_*`.  Hence

\[
 q_{\rm nor}\le {1\over C_\nu^2r^2\log^2(2r)}
 +{4C_{\rm led}C_*\over C_\nu r^{5/2}\log(2r)}
 +{4C_{\rm led}^2C_*^2\over r^3}\le\frac14.
\tag{RI-15}
\]

This proves `(RI-4)` and closes the raw interface.  If `H=0` and `e=0`,
every displayed absolute-Gram and transfer coefficient vanishes and the
three small-gain quantities are zero.  QED.

### unit_003: lemma - Accepted-History Frobenius and Residual Reserve

Paper-ready label: `lem:p2-i9-s8-step003b-reserve`.

Paper-ready title: Accepted-History Frobenius and Residual Reserve.

Statement:

On E_hi, use the accepted
Proposition~\ref{prop:p2-i9-s8-step001-instance} and
Lemma~\ref{lem:p2-i9-s8-step003b-parameters}; on E_raw, use
Lemma~\ref{lem:p2-i9-s8-step003b-raw-interface} for the same norm, weight,
and restricted pair/triple-gap outputs.  Under either branch interface,
Hypothesis~\ref{hyp:p2-i9-s8-step003b-records}, and the displayed
accepted-record error bound, every legal nonterminal prefix obeys

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

The reserve is unconditional on the lower-tail split: it holds on both
E_hi and E_raw.

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
set `U`, together with the branch gap (RI-6) (or the accepted gap (2) on E_hi), yields

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

Apply the reverse triangle inequality, (24), `(Hist-F)`, and the branch
scalar reserve (RI-1b) (or (15) on E_hi) to (28). This proves `(Res)`. No lower bound on
`nu_real` and no source-normal statement was used. At `s=0`, (28) is
`R_empty=T`, and the same calculation applies with zero history. QED.

### unit_004: lemma - Post-Fit Source-Normal Forcing

Paper-ready label: `lem:p2-i9-s8-step003b-postfit`.

Paper-ready title: Post-Fit Source-Normal Forcing.

Statement:

Under Hypothesis~\ref{hyp:p2-i9-s8-step003b-records} and either
Lemma~\ref{lem:p2-i9-s8-step003b-parameters} on E_hi or
Lemma~\ref{lem:p2-i9-s8-step003b-raw-interface} on E_raw, for every prior
accepted slot
`t` whose precommit state satisfies the displayed certificate `Cert`
with `0<g_t<=2R_max`, `s_{I_{t-1}}>0`, and the recorded `R-euc`
bound, let `P_M` be the orthogonal projector onto the full realized source
span in mode `M`. Define, cyclically,

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

By `(H-rec)` and the branch bound `delta_led<=1/2` (equation (14) on E_hi
or the raw-interface scalar bound on E_raw),
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

Paper-ready label: `prop:p2-i9-s8-step003b-normal`.

Paper-ready title: Triangular Normal Solve and Projector Telescoping.

Statement:

Under either Lemma~\ref{lem:p2-i9-s8-step003b-parameters} on E_hi or
Lemma~\ref{lem:p2-i9-s8-step003b-raw-interface} on E_raw, together with
Lemma~\ref{lem:p2-i9-s8-step003b-postfit}, define

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

Therefore the branch H/J/K column bounds (equation (RI-2) on E_raw or
(5) on E_hi) give

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

Paper-ready label: `lem:p2-i9-s8-step003b-compatibility`.

Paper-ready title: Same-Target Projection and Differential Compatibility.

Statement:

Under Proposition~\ref{prop:p2-i9-s8-step003b-normal}, set

\[
R_I^\parallel:=\Pi_\star R_I,
\qquad D_I:=R_I-R_I^\parallel.
\tag{48}
\]

For each unit product direction `(u,v,w)`, define
`s_I=<R_I,u tensor v tensor w>` and
`s_I^parallel=<R_I^parallel,u tensor v tensor w>`. Then
`||D_I||_F<=B_perp`, and for every realized target-frame test tensor

\[
\psi=m_{\ell,A}\otimes m_{j,B}\otimes m_{j,C},
\tag{49}
\]

including all cyclic versions,

\[
\langle R_I^\parallel,\psi\rangle=\langle R_I,\psi\rangle.
\tag{50}
\]

On E_hi, applying Pi_star separately to every accepted error likewise preserves
every contraction defining A_I; hence the exact same A_I and accepted conditional
Theta_I occur on both sides of the projection bridge. This last A_I/Theta_I
clause is not asserted on E_raw, where the accepted step_003 resolvent is
outside its stated event scope.

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

The claims (48)--(54) hold on either E_hi or E_raw.  The additional
statement that the accepted conditional A_I and Theta_I are unchanged is
asserted only on E_hi, where the accepted step_003 resolvent is available.

Proof:

The first claim is `(SE-perp)`. Every factor in (49) belongs to the range of
its corresponding source-span projector, so `Pi_star psi=psi`. Orthogonal
self-adjointness gives

\[
\langle\Pi_\star R_I,\psi\rangle
=\langle R_I,\Pi_\star\psi\rangle=\langle R_I,\psi\rangle,
\tag{55}
\]

which is (50). On E_hi, the identical calculation with E_i in place of R_I
preserves each individual absolute contraction in (R-hist-src), not merely
their signed sum. Thus A_I is identical, and accepted equation (6) then gives
the same unique Theta_I because its static source and transfer are unchanged.
On E_raw this A_I/Theta_I conclusion is intentionally omitted; equations
(51)--(54) use only the branch-independent projection and normal bound.

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

Paper-ready label: `prop:p2-i9-s8-step003b-scales`.

Paper-ready title: Raw and Lower-Tail-Qualified Scale Comparisons.

Statement:

Under Lemma~\ref{lem:p2-i9-s8-step003b-reserve},
Proposition~\ref{prop:p2-i9-s8-step003b-normal}, and the fixed exponent
selection (13), there is a fixed c_SE>0, depending only on fixed
class/proof constants, such that for every nonterminal legal prefix and every
certificate-scale state with 0<g<=2R_max, on either E_hi or E_raw,

\[
B_\perp\le c_{\rm SE}\min\left\{
{\tau_{\min}\over r},
\|R_I\|_FP^{-D_{\rm cap}/2},
{N_I(g)P^{-D_{\rm gap}}\over g^3}
\right\}.
\tag{SE-raw}
\]

On E_hi=E_str\cap E_lb, and only on that branch,

\[
B_\perp\le c_{\rm SE}\tau_{\min}\eta_0.
\tag{SE-lb}
\]

On E_raw, (SE-raw) remains valid and no comparison of B_perp with
tau_min eta_0 is asserted. In the exact H=0,e_num=0 branch, both sides of
(SE-lb) are zero.

Proof:

By the branch small-gain bound q_nor<=1/4 (equation (16) on E_hi or
(RI-15) on E_raw) and (40),

\[
B_\perp\le4r\Lambda_{\rm nor}P^{-D_{\rm stat}}
\le4P^{D_{\rm nor}-D_{\rm stat}}.
\tag{57}
\]

The branch polynomial bounds `D_tau=3`, `D_nor=8` (equation (12) on E_hi
or (RI-1b) on E_raw), `P>=r`, and `(Res)` give

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

On E_hi=E_str\cap E_lb, the accepted lower-tail conclusion (3) gives

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
only numerical-to-structural absorption in the proposition. On E_raw, (61) is
unavailable and is not replaced by any lower bound. If
`H=0,e_num=0`, (30), (38), and (40) give `B_perp=0`, while `eta_0=0`, so
the exact-limit statement holds by equality. QED.

## Target-Step Assembly

Hypothesis~\ref{hyp:p2-i9-s8-step003b-records} fixes exactly the temporal
input authorized by the accepted sketch: earlier accepted certificates,
distinct matching labels, product-one signs, and (R-euc). It contains none
of the outputs proved here. On E_hi,
Lemma~\ref{lem:p2-i9-s8-step003b-parameters} and the accepted step_002
interfaces provide the static inputs. On E_raw,
Lemma~\ref{lem:p2-i9-s8-step003b-raw-interface} provides the same inputs
directly from the accepted step_001 structural/normalization event, including
the pair-normal and transfer small-gain bounds.

Lemma~\ref{lem:p2-i9-s8-step003b-reserve} then telescopes each accepted
rank-one error, restricts the exact target Gram to the unresolved labels, and
uses reverse triangle to prove `(Hist-F)` and `(Res)` before any landscape or
capture comparison. Independently,
Lemma~\ref{lem:p2-i9-s8-step003b-postfit} turns the stored radial/angular
certificate equations into the sole normal forcing
`||b_(t,M)||<=e_num Lambda_nor`.

Proposition~\ref{prop:p2-i9-s8-step003b-normal} expands the exact post-fit
residual, obtains the chronological equations (38), proves their coefficient
row sums are at most the already derived `q_nor`, solves them forward, and
telescopes the three orthogonal projectors. This proves the exact requested
`B_perp` and `(SE-perp)` interfaces without assuming source exclusion.

Lemma~\ref{lem:p2-i9-s8-step003b-compatibility} proves on both branches that
the analysis projection preserves every realized target-frame contraction and
supplies the score, gradient, Hessian, and residual-norm comparisons consumed
by the landscape steps. On E_hi it additionally preserves each A_I coordinate
and the accepted conditional Theta_I exactly; that clause is intentionally
not exported on E_raw. Finally,
Proposition~\ref{prop:p2-i9-s8-step003b-scales} combines the raw polynomial
forcing with `(Res)` to prove `(SE-raw)` on every branch, and uses the
accepted lower-tail event only for `(SE-lb)`.

Thus the producer path is

\[
\begin{gathered}
\text{accepted E_hi or raw-interface E_raw + prior records}
\longrightarrow (\mathrm{Hist\mbox{-}F}), (\mathrm{Res}),
\text{ post-fit forcing},q_{\rm nor}\\
\longrightarrow B_\perp,(\mathrm{SE\mbox{-}perp}),
\text{ exact target-frame compatibility (A_I/Theta_I on E_hi)}
\longrightarrow (\mathrm{SE\mbox{-}raw}),
\quad E_{\rm hi}\Longrightarrow(\mathrm{SE\mbox{-}lb}).
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
- Fixed quantities: one realized instance on either E_hi or E_raw, the fixed
  proof exponents and constants, and one finite legal prior-record package.
- Probability mode: deterministic conditional on the accepted structural
  event branch and local history. (SE-lb) is additionally conditional on
  E_hi. No tape probability, new event, or union bound is introduced.
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
- Probability conversion: None. E_hi retains the accepted instance-level
  status from step_001; E_raw is handled by the local structural interface
  and keeps (SE-raw) without a lower-tail absorption.
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
  Lemma~\ref{lem:p2-i9-s8-step003b-parameters} on E_hi and in
  Lemma~\ref{lem:p2-i9-s8-step003b-raw-interface} on E_raw; they are not
  free bounded quantities. D_tau=3 and D_nor=8 are fixed proof exponents.
- `delta_led=C_led eta_0` and `C_E=4C_led` are `appendix-local` constants
  directly defined from setting quantities. Their smallness and reserve are
  proved in the accepted parameter lemma on E_hi and the raw-interface lemma
  on E_raw.
- The signed directions `widetilde u_(t,M)`, normal vectors `a_(t,M)`,
  post-fit vectors `b_(t,M)`, coefficients `c_(q,t,M)`, running maxima in the
  triangular solve, and `D_I` are `proof-local`. Each is explicitly defined
  from setting objects and the local historical record package. Only the
  aggregate `B_perp` is exported.
- The legal prefix, injection, matching signs, `(R-euc)`, and accepted
  certificates are generated-object conditions used only through
  Hypothesis~\ref{hyp:p2-i9-s8-step003b-records}. They are not reclassified
  as primitive. Their theorem-facing all-prefix production remains assigned
  to `step_009`.
- `(Hist-F)`, `(Res)`, the post-fit normal forcing, `q_nor<=1/4`, the
  triangular recurrence, `(SE-perp)`, and all differential comparisons are
  proved in this step. None is assumed inside the record package.
- E_hi and E_raw are the two structural branches in (S-branch). The realized
  norm/weight/Gram bounds, pair/triple gaps, pair rows, source, transfer, and
  small-gain inputs on E_raw are public-facing outputs of the raw-interface
  lemma; the accepted step_001/step_002 outputs remain the E_hi interface.
  The lower-tail comparison is consumed only in (61)--(62) on E_hi.
- A_I and Theta_I are accepted conditional interfaces from step_003 on E_hi.
  This step proves, rather than assumes, that applying the source-span
  projection preserves their target-frame coordinates exactly on E_hi. They
  play no role in deriving the normal recurrence, and no Theta claim is made
  on E_raw.
- The constants `c_R=(1/2)sqrt(15/16)` and any fixed
  `c_SE<=1/64` after (60) are `public-facing` derived margins. Their
  provenance is the accepted triple-Gram reserve and the explicit exponent
  slack, respectively.
- E_hi and E_raw are appendix-local event branches defined in (S-branch).
  RI-1--RI-15, the raw H/J/K rows, raw source/transfer bounds, and their
  small-gain margins are local derived outputs of
  Lemma~\ref{lem:p2-i9-s8-step003b-raw-interface}; they are not primitive
  conditions or imported step_002 claims.
- Boundary cases are explicit: empty history; first commit; last
  nonterminal prefix; finite `e_num>0,nu_real=0` with raw comparisons only;
  tiny positive `nu_real`; and the formal exact `H=e_num=0` specialization.
- The accepted `global_proof.md`/`global_proof_review.md` pair was read only
  for planning guidance on the source-normal recurrence and same-target
  projection bridge. It is not evidence, a cited result, an assumption
  source, or authority to change the target claim. Archived sketch, prior
  same-step, `proof_history`, and other idea-branch artifacts are not used.
