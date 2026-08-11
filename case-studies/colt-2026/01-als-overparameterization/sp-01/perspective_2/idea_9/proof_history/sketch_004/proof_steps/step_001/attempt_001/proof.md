# Proof Step

## Step Identity

- Sketch attempt: 4
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Derive `E_inst`, all norm/Gram/weight/T bounds,
  pair/triple conditioning, exact balanced target representation, and the
  derived lower-tail event `E_lb` with probability `1-r^(-10)`.
- Dependencies: None.
- Assumptions used: `assump:base-column-conditioning`,
  `assump:base-product-balance`, `assump:gaussian-smoothing`,
  `assump:dimension-regime`, `assump:smoothing-scale`, and
  `assump:modewise-gram-margin`.
- Technical challenge: Normalization, finite-union tails, and a uniform
  Gaussian anti-concentration lower tail.
- Intended proof tool or cited result: Gaussian concentration, disjoint-pair
  anti-concentration, epsilon-net operator bound, and direct product algebra.
- Output target: `E_inst`, `E_lb`, `Q^star`, target norm, and target guard.
- Rate objective: R1; retain the lower-tail probability and all exposed
  variables.
- Sketch-row review status: `PENDING`. Sketch-level authority is the accepted
  `proof_sketch_review.md`, not this row-local field.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:base-column-conditioning` gives the deterministic column-norm
    interval and the polynomial range of `kappa`.
  - `assump:base-product-balance` gives the deterministic product-weight
    ratio `Gamma_star`.
  - `assump:gaussian-smoothing` gives the independent isotropic Gaussian
    perturbations used in both the upper-tail and lower-tail arguments.
  - `assump:dimension-regime` makes the simultaneous Gaussian matrix
    operator event have the stated polynomially small failure probability.
  - `assump:smoothing-scale` gives `0<rho<=1` and fixes the finite-smoothed
    branch.
  - `assump:modewise-gram-margin` supplies the deterministic reserve into
    which the normalization and signed-Gram perturbations fit.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency artifacts: None. This is the first dependency-ordered
  step.

The events `E_op`, `E_lb`, and `E_inst` below are derived in this proof. They
are not assumptions.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:gaussian-smoothing} and \ref{assump:dimension-regime}, the three perturbation matrices simultaneously have operator norm at most `2 rho` except on an event of probability at most `6(2r)^(-30)`. | Produces the single upper-tail event used for every norm and signed-Gram estimate. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:base-column-conditioning}, \ref{assump:base-product-balance}, \ref{assump:gaussian-smoothing}, \ref{assump:smoothing-scale}, and \ref{assump:modewise-gram-margin}, on the event from Lemma~\ref{lem:step-001-gaussian-operator}, all realized columns are nonzero, their norms and product weights have the target bounds, and `nu_real<=2 nu_star`. | Produces nonvanishing, norm, modewise Gram, and weight controls. |
| `unit_003` | lemma | Under the conclusions of Proposition~\ref{prop:step-001-normalized-geometry}, every pair and the triple of normalized factors have Khatri-Rao Gram operator error at most `1/16`, and `T` has the target two-sided Frobenius bound. | Produces pair/triple conditioning, Khatri-Rao floors, `T!=0`, and the target norm. |
| `unit_004` | proposition | Under Proposition~\ref{prop:step-001-normalized-geometry}, the setting-defined balanced slots `q_j^star`, together with joint-zero unused slots, represent the realized `T` exactly and lie strictly inside the radius guard. | Produces `Q^star`, exact representation, zero target loss, and the guard. |
| `unit_005` | lemma | Under Assumptions~\ref{assump:base-column-conditioning}, \ref{assump:gaussian-smoothing}, and \ref{assump:smoothing-scale}, the fixed exponent `D_lb=64` gives `E_lb={nu_real>=P^(-D_lb)}` with failure probability at most `r^(-20)`. | Produces the derived lower-tail branch without a new primitive condition. |
| `unit_006` | proposition | Under all six step assumptions and Lemmas/Propositions~\ref{lem:step-001-gaussian-operator}--\ref{lem:step-001-lower-tail}, `E_inst=E_op cap E_lb` has probability at least `1-r^(-10)` and exports every Step 001 conclusion, including the branch-qualified numerical comparison. | Assembles the exact target-step interface and its rate/probability outputs. |

## Cited Result Applications

No external paper theorem is used. The following elementary results are
restated in the exact conventions in which they are applied.

1. **Gaussian rectangular-matrix norm tail.** If `Z` is an `n` by `r`
   matrix with independent `N(0,1)` entries, then, for every `t>=0`,
   \[
   \mathbb P\{\|Z\|_{\rm op}>\sqrt n+\sqrt r+t\}
   \le 2e^{-t^2/2}.
   \]
   This follows from the scalar Gaussian moment-generating function and a
   sphere-net argument (equivalently, from the Gaussian comparison proof of
   the same displayed inequality). It is applied to
   `Z=sqrt(n) X_M/rho`, where `X_M=M-bar M`. Independence and unit variances
   are exactly Assumption~\ref{assump:gaussian-smoothing}; the dimension
   reduction to `2 rho` is checked in Lemma~\ref{lem:step-001-gaussian-operator}.

2. **Uniform one-dimensional Gaussian interval bound.** If
   `Y~N(mu,sigma^2)` with `sigma>0`, then for every `t>0`,
   \[
   \mathbb P\{|Y|\le t\}
   \le {2t\over\sqrt{2\pi}\,\sigma}.
   \]
   Indeed, every Gaussian density with variance `sigma^2` is at most
   `(sqrt(2 pi) sigma)^(-1)`, independently of its mean. In
   Lemma~\ref{lem:step-001-lower-tail}, conditional on one realized partner
   column, `Y` is the raw inner product with the independently perturbed
   column and has conditional standard deviation
   `rho ||a_partner||/sqrt(n)`.

3. **Symmetric row-sum bound.** For a real symmetric matrix `R`,
   \[
   \|R\|_{\rm op}\le\max_j\sum_\ell |R_{j\ell}|.
   \]
   This is the induced infinity-norm bound (or Gershgorin's theorem). It is
   applied only to symmetric Hadamard products of signed realized Gram
   errors in Lemma~\ref{lem:step-001-khatri-rao}; it is not applied to
   `|G_M-I|` as an operator-norm identity.

4. **Khatri-Rao Gram identity.** For matrices `U,V` with the same number of
   columns,
   \[
   (U\odot V)^\top(U\odot V)=(U^\top U)\circ(V^\top V),
   \]
   and the analogous three-factor identity follows by another Hadamard
   product. This is direct from
   `inner(u_j tensor v_j,u_l tensor v_l)=inner(u_j,u_l)inner(v_j,v_l)`.
   The instantiated matrices are exactly the setting-defined normalized
   realized factors, so there is no whitening or surrogate-object transfer.

The named local results used later in this step are also restated at their
use interface:

- Lemma~\ref{lem:step-001-gaussian-operator} supplies `E_op` and its exact
  failure probability to Propositions~\ref{prop:step-001-normalized-geometry}
  and \ref{prop:step-001-instance-event} and to
  Lemma~\ref{lem:step-001-lower-tail}.
- Proposition~\ref{prop:step-001-normalized-geometry} supplies the exact
  realized norm, signed-Gram, and weight inequalities to
  Lemma~\ref{lem:step-001-khatri-rao},
  Proposition~\ref{prop:step-001-balanced-target}, and the final event.
- Lemma~\ref{lem:step-001-khatri-rao} supplies the pair/triple spectral
  intervals and the Frobenius norm of the exact realized `T` to the final
  event.
- Proposition~\ref{prop:step-001-balanced-target} supplies the exact
  `Q^star` and guard conclusion to the final event.
- Lemma~\ref{lem:step-001-lower-tail} supplies the derived `E_lb` and its
  small-ball allocation to the final event.

## Local Derivation

### unit_001: lemma

**Lemma (Simultaneous Gaussian perturbation operator event).**
\label{lem:step-001-gaussian-operator}

Under Assumptions~\ref{assump:gaussian-smoothing} and
\ref{assump:dimension-regime}, let
\[
X_A=A-\bar A,\qquad X_B=B-\bar B,\qquad X_C=C-\bar C.
\]
There is a derived event
\[
{\cal E}_{\rm op}:=
\left\{\max_{M\in\{A,B,C\}}\|X_M\|_{\rm op}\le2\rho\right\}
\]
such that
\[
\mathbb P_{\rm inst}({\cal E}_{\rm op}^c)
\le 6(2r)^{-30}.
\tag{1}
\]
In particular, on this event every perturbation column has Euclidean norm at
most `2 rho`.

**Proof.** For one mode, write `X_M=(rho/sqrt(n))Z_M`, where `Z_M` has
independent standard Gaussian entries. Apply the restated rectangular-matrix
tail with
\[
t=\sqrt{60\log(2r)}.
\]
Except on an event of probability at most `2(2r)^(-30)`,
\[
\|X_M\|_{\rm op}
\le\rho\left(1+\sqrt{r/n}
 +\sqrt{60\log(2r)/n}\right).
\]
Assumption~\ref{assump:dimension-regime} gives
`n>=C_dim r log(2r)`. The fixed sufficiently large `C_dim` in that
assumption is chosen once so that the last parenthesis is at most `2` for
all `r>=2`. A union bound over the three modes proves (1). Finally,
`||X_M e_j||_2<=||X_M||_op` gives the columnwise assertion. QED.

### unit_002: proposition

**Proposition (Normalized realized geometry and balanced weights).**
\label{prop:step-001-normalized-geometry}

Under Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance},
\ref{assump:gaussian-smoothing},
\ref{assump:smoothing-scale}, and
\ref{assump:modewise-gram-margin}, on the derived event
`E_op` of Lemma~\ref{lem:step-001-gaussian-operator}, every realized column
is nonzero and, for all labels and modes,
\[
(2\kappa)^{-1}\le \|m_j\|_2\le2\kappa,
\tag{2}
\]
where `m_j` here denotes the corresponding unnormalized realized column
`a_j`, `b_j`, or `c_j`. Moreover,
\[
\nu_{\rm real}\le2\nu_\star,
\qquad
(1-2\nu_\star)I_r\preceq G_M
\preceq(1+2\nu_\star)I_r,
\tag{3}
\]
and
\[
(2\kappa)^{-3}\le\tau_j\le(2\kappa)^3,
\qquad
{\tau_{\max}\over\tau_{\min}}\le2\Gamma_\star.
\tag{4}
\]

**Proof.** Work first in one mode and write
`M=bar M+X`, `bar U=widetilde{bar M}`, and `U=widetilde M`. For a label
`j`, the reverse triangle inequality and Lemma~\ref{lem:step-001-gaussian-operator}
give
\[
\left|\|m_j\|_2-\|\bar m_j\|_2\right|
\le\|X e_j\|_2\le2\rho.
\tag{5}
\]
The margin assumption implies
\[
\kappa\rho
\le {1\over C_{\rm sm}C_\nu r(\log(2r))^{3/2}}.
\tag{6}
\]
Because `r>=2` and the fixed `C_sm,C_nu` are sufficiently large as stated
in Assumption~\ref{assump:modewise-gram-margin}, (6) implies
`2 kappa rho<=1/10`. Combining (5) with
Assumption~\ref{assump:base-column-conditioning} proves (2), and more
precisely
\[
1-2\kappa\rho
\le {\|m_j\|_2\over\|\bar m_j\|_2}
\le1+2\kappa\rho.
\tag{7}
\]

We next control the normalization in signed operator norm. Let `bar D` and
`D` be the diagonal base and realized norm matrices. The exact identity
\[
U-\bar U=\bar U(\bar D D^{-1}-I_r)+XD^{-1}
\tag{8}
\]
holds. From (2), (5), and `||bar U||_op^2=||G_barM||_op<=1+nu_base<=2`,
\[
\|D^{-1}\|_{\rm op}\le2\kappa,
\qquad
\|\bar D D^{-1}-I_r\|_{\rm op}
\le {2\kappa\rho\over1-2\kappa\rho}
\le4\kappa\rho.
\]
Consequently (8) gives
\[
\|U-\bar U\|_{\rm op}
\le4\sqrt2\,\kappa\rho+4\kappa\rho
<10\kappa\rho.
\tag{9}
\]
Therefore
\[
\begin{split}
\|G_M-G_{\bar M}\|_{\rm op}
&\le2\|\bar U\|_{\rm op}\|U-\bar U\|_{\rm op}
  +\|U-\bar U\|_{\rm op}^2\\
&\le40\kappa\rho,
\end{split}
\tag{10}
\]
where the last line uses `kappa rho<=1/10`. The same calculation holds in
all three modes. Since the fixed `C_sm` is at least the universal constant
`40` and `sqrt(log(2r))>=1`, Assumption~\ref{assump:modewise-gram-margin}
and (10) imply the stronger intermediate estimate
\[
\nu_{\rm real}
\le\nu_{\rm base}+40\kappa\rho
\le\nu_{\rm base}+C_{\rm sm}\kappa\rho\sqrt{\log(2r)}
\le\nu_\star.
\tag{11}
\]
In particular, the exact target inequality and the Loewner bounds (3) hold.

Finally, multiply (7) across the three modes. With
`delta_col=2 kappa rho<=1/10`,
\[
{\tau_{\max}\over\tau_{\min}}
\le {\bar\tau_{\max}\over\bar\tau_{\min}}
\left({1+\delta_{\rm col}\over1-\delta_{\rm col}}\right)^3
\le\Gamma_\star\left({11\over9}\right)^3
<2\Gamma_\star.
\]
The absolute bounds in (4) follow directly by multiplying (2). QED.

### unit_003: lemma

**Lemma (Pair and triple Khatri-Rao conditioning).**
\label{lem:step-001-khatri-rao}

Under the conclusions of
Proposition~\ref{prop:step-001-normalized-geometry}, for every two distinct
modes `M,N`,
\[
\|G_M\circ G_N-I_r\|_{\rm op}\le {1\over16},
\qquad
{15\over16}I_r\preceq G_M\circ G_N\preceq{17\over16}I_r,
\tag{12}
\]
and
\[
\|G_A\circ G_B\circ G_C-I_r\|_{\rm op}\le {1\over16},
\qquad
{15\over16}I_r\preceq G_A\circ G_B\circ G_C
\preceq{17\over16}I_r.
\tag{13}
\]
Equivalently, every pairwise normalized Khatri-Rao matrix has all squared
singular values in `[15/16,17/16]`, and the same is true of the three-factor
column map `Phi_star`. Furthermore,
\[
\sqrt{15/16}\,\|\tau\|_2\le\|T\|_F
\le\sqrt{17/16}\,\|\tau\|_2,
\qquad T\ne0.
\tag{14}
\]

**Proof.** Put `E_M=G_M-I_r`. Each `E_M` is symmetric with zero diagonal,
and each of its columns has Euclidean norm at most
`||E_M||_op<=nu_real`. Since the diagonal of every realized Gram matrix is
one, direct Hadamard expansion gives
\[
G_M\circ G_N-I_r=E_M\circ E_N.
\]
For every row `j`, Cauchy--Schwarz gives
\[
\sum_{\ell\ne j}|E_M(j,\ell)E_N(j,\ell)|
\le\|E_Me_j\|_2\|E_Ne_j\|_2
\le\nu_{\rm real}^2.
\tag{15}
\]
The symmetric row-sum bound therefore yields pairwise operator error at most
`nu_real^2`.

Similarly,
\[
G_A\circ G_B\circ G_C-I_r=E_A\circ E_B\circ E_C,
\]
and, using `max_l |E_A(j,l)|<=||E_A e_j||_2`,
\[
\sum_{\ell\ne j}|E_A(j,\ell)E_B(j,\ell)E_C(j,\ell)|
\le\nu_{\rm real}^3.
\tag{16}
\]
By (3), `nu_real<=2 nu_star`. The fixed sufficiently large `C_nu` makes
both `(2 nu_star)^2` and `(2 nu_star)^3` at most `1/16` for every `r>=2`.
Equations (15)--(16), the symmetric row-sum bound, and the Khatri-Rao Gram
identity prove (12)--(13).

The setting gives `Phi_star^* Phi_star=G_A circ G_B circ G_C` and
`T=Phi_star tau`. Thus
\[
\|T\|_F^2
=\tau^\top(G_A\circ G_B\circ G_C)\tau.
\]
The Loewner interval in (13) proves (14). Every `tau_j` is positive by (2),
so `||tau||_2>0` and hence `T!=0`. QED.

### unit_004: proposition

**Proposition (Exact balanced target and strict radius guard).**
\label{prop:step-001-balanced-target}

Under Proposition~\ref{prop:step-001-normalized-geometry}, define the
setting-specified active target slots
\[
q_j^\star=(\tau_j^{1/3}m_{j,A},\tau_j^{1/3}m_{j,B},
\tau_j^{1/3}m_{j,C}),\qquad j\in[r],
\]
and append `k-r` joint-zero slots. Then the resulting state `Q^star` is
balanced, satisfies
\[
\Psi(Q^\star)=T,\qquad F(Q^\star)=0,
\tag{17}
\]
and every active factor norm lies in
\[
(2\kappa)^{-1}\le\tau_j^{1/3}\le2\kappa
={R_{\max}\over4}<R_{\max}<2R_{\max}.
\tag{18}
\]
Thus the exact realized target, rather than a transformed or orthogonalized
surrogate, lies strictly inside the protocol radius guard.

**Proof.** Each normalized factor `m_{j,M}` has unit norm. Hence every
active slot is balanced and
\[
(\tau_j^{1/3}m_{j,A})\otimes
(\tau_j^{1/3}m_{j,B})\otimes
(\tau_j^{1/3}m_{j,C})
=\tau_j\phi_j.
\]
Summing over `j` gives (17) by the setting's definition of `T`; joint-zero
slots contribute exactly zero. Taking cube roots of (4) gives (18), because
`R_max=8 kappa`. QED.

### unit_005: lemma

**Lemma (Uniform normalized-Gram lower-tail branch).**
\label{lem:step-001-lower-tail}

Under Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:gaussian-smoothing}, and
\ref{assump:smoothing-scale}, define the fixed exponent
\[
D_{\rm lb}=64
\]
and the derived event
\[
{\cal E}_{\rm lb}:=
\{\nu_{\rm real}\ge P^{-D_{\rm lb}}\}.
\tag{19}
\]
All realized columns are nonzero almost surely, so this event is well-defined
up to a null set. It satisfies
\[
\mathbb P_{\rm inst}({\cal E}_{\rm lb}^c)\le r^{-20},
\tag{20}
\]
and, more sharply,
\[
\mathbb P_{\rm inst}({\cal E}_{\rm op}\cap{\cal E}_{\rm lb}^c)
\le r^{-40\lfloor r/2\rfloor}.
\tag{21}
\]

**Proof.** Use mode `A` and the disjoint pairs
`(1,2),(3,4),..., (2m-1,2m)`, where `m=floor(r/2)>=1`. Put
\[
Y_s=\langle a_{2s-1},a_{2s}\rangle,
\qquad
t_{\rm raw}={\rho\over8\kappa\sqrt n}\,r^{-40}.
\]
Conditional on `a_{2s}`, independence in
Assumption~\ref{assump:gaussian-smoothing} gives
\[
Y_s\mid a_{2s}
\sim {\cal N}\left(
\langle\bar a_{2s-1},a_{2s}\rangle,
{\rho^2\|a_{2s}\|_2^2\over n}
\right).
\tag{22}
\]
On `||a_{2s}||_2>=(2 kappa)^(-1)`, the conditional standard deviation in
(22) is at least `rho/(2 kappa sqrt(n))`. The uniform Gaussian interval
bound therefore gives
\[
\mathbb P\left(
\|a_{2s}\|_2\ge(2\kappa)^{-1},\ |Y_s|\le t_{\rm raw}
\right)
\le r^{-40}.
\tag{23}
\]
This estimate is uniform in the conditional mean. The random blocks
`(a_{2s-1},a_{2s})` are independent for distinct `s`, so the probability
that all events in (23) occur is at most `r^(-40m)`.

On `E_op`, Proposition~\ref{prop:step-001-normalized-geometry} gives lower
partner norms and upper norms `||a_j||_2<=2 kappa`. Define
\[
t_{\rm norm}:={t_{\rm raw}\over4\kappa^2}
={\rho\over32\kappa^3\sqrt n}\,r^{-40}.
\tag{24}
\]
If `E_op` holds and `nu_real<t_norm`, then for every selected pair
\[
|Y_s|
=|G_A(2s-1,2s)|\|a_{2s-1}\|_2\|a_{2s}\|_2
<4\kappa^2t_{\rm norm}=t_{\rm raw}.
\]
Thus
\[
\mathbb P({\cal E}_{\rm op}\cap\{\nu_{\rm real}<t_{\rm norm}\})
\le r^{-40m}.
\tag{25}
\]

It remains to compare (24) with the protocol scale, without importing the
later rank assumption. Since `n,r>=2`, `k>=1`, `kappa>=1`, and `0<rho<=1`,
the definition `P=16nrk kappa rho^(-1)` gives
\[
{P^{-64}\over t_{\rm norm}}
=32\,16^{-64}\rho^{63}\kappa^{-61}
n^{-127/2}r^{-24}k^{-64}<1.
\tag{26}
\]
Hence `P^(-D_lb)<=t_norm`, and (25) proves (21). Finally,
Lemma~\ref{lem:step-001-gaussian-operator} and (21) give
\[
\mathbb P({\cal E}_{\rm lb}^c)
\le6(2r)^{-30}+r^{-40m}
\le r^{-20},
\]
for every `r>=2`, proving (20). QED.

### unit_006: proposition

**Proposition (Once-drawn instance event and branch-qualified rates).**
\label{prop:step-001-instance-event}

Under Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance},
\ref{assump:gaussian-smoothing},
\ref{assump:dimension-regime},
\ref{assump:smoothing-scale}, and
\ref{assump:modewise-gram-margin}, define
\[
{\cal E}_{\rm inst}:={\cal E}_{\rm op}\cap{\cal E}_{\rm lb}.
\tag{27}
\]
Then
\[
\mathbb P_{\rm inst}({\cal E}_{\rm inst})
\ge1-6(2r)^{-30}-r^{-40\lfloor r/2\rfloor}
\ge1-r^{-10},
\tag{28}
\]
where, for `r>=2`,
`6(2r)^(-30)<=r^(-10)/2` and
`r^(-40 floor(r/2))<=r^(-10)/2`. Thus the displayed lower bound is a
literal finite-union estimate, not an asymptotic shorthand.
On this one event, all conclusions (2)--(4), (12)--(14), and (17)--(19)
hold simultaneously. In particular, this is the exact `E_inst`, `E_lb`,
`Q^star`, realized norm/Gram/weight, Khatri-Rao floor, target-norm, target-
nonvanishing, and guard interface required by Step 001.

In addition, the upper Gram margin gives, after increasing only the fixed
`C_nu` already declared sufficiently large,
\[
r\nu_{\rm real}\le {1\over20},
\qquad
\sqrt r\,\nu_{\rm real}\le {1\over20}.
\tag{29}
\]
For any fixed desired `c_num` in `(0,1]`, put
\[
d_{\rm num}:=\max\left\{2,
\left\lceil {\log(1/c_{\rm num})\over\log16}\right\rceil\right\}.
\]
If the later numerical exponent is chosen, in the accepted order, so that
\[
D_{\rm stat}\ge2D_{\rm lb}+d_{\rm num},
\tag{30}
\]
then, with `e=P^(-D_stat)`, the derived branch `E_lb` implies
\[
r^2e\le c_{\rm num}\nu_{\rm real}^2,
\qquad
\sqrt r\,e\le c_{\rm num}\nu_{\rm real}^2.
\tag{31}
\]
No comparison in (31) is asserted on `E_lb^c`, and the exact
orthogonal/noiseless specialization is handled separately by equality.

**Proof.** Equation (28) is Lemma~\ref{lem:step-001-gaussian-operator} plus
the sharper intersection bound (21); its final inequality follows directly
for `r>=2`. Propositions~\ref{prop:step-001-normalized-geometry} and
\ref{prop:step-001-balanced-target} and
Lemma~\ref{lem:step-001-khatri-rao} give all deterministic conclusions on
`E_op`, while Lemma~\ref{lem:step-001-lower-tail} adds (19).

For (29), use `nu_real<=2 nu_star` and
`nu_star=(C_nu r log(2r))^(-1)`; also `sqrt(r)<=r`. For (31), note that
`P>=16r`. Since `d_num>=2`,
\[
r^2P^{-D_{\rm stat}}
\le r^{d_{\rm num}}P^{-2D_{\rm lb}-d_{\rm num}}
\le16^{-d_{\rm num}}P^{-2D_{\rm lb}}
\le c_{\rm num}P^{-2D_{\rm lb}}
\le c_{\rm num}\nu_{\rm real}^2.
\]
The second inequality in (31) follows from `sqrt(r)<=r^2`. QED.

## Target-Step Assembly

Lemma~\ref{lem:step-001-gaussian-operator} constructs one simultaneous
upper-tail event directly from the primitive Gaussian source. On that event,
Proposition~\ref{prop:step-001-normalized-geometry} proves nonvanishing,
the exact column-norm interval, the signed modewise Gram bound and floors,
the absolute realized product-weight bounds, and the factor-two weight-ratio
transfer. Lemma~\ref{lem:step-001-khatri-rao} then composes those same signed
Grams, without an absolute-Gram operator shortcut, to prove every pair and
triple Khatri-Rao floor and the two-sided Frobenius norm of the exact realized
tensor. Proposition~\ref{prop:step-001-balanced-target} identifies that
same tensor with the setting-defined balanced `Q^star` and proves the strict
radius guard.

Independently of any later generated condition,
Lemma~\ref{lem:step-001-lower-tail} applies the checked Gaussian density
bound to disjoint raw pair inner products and proves the derived event
`E_lb` for the fixed exponent `D_lb=64`. Proposition~\ref{prop:step-001-instance-event}
intersects the two events, performs the exact finite probability allocation,
and records the only branch-qualified numerical absorption. These named
results establish the exact sketch-row claim with no dependency and no
additional assumption.

The exported producer-consumer path is noncircular:
the six primitive source conditions produce `E_inst`, `E_lb`, the exact
realized `A,B,C,T`, and `Q^star` here; Step 002 may consume the static
geometry, Steps 007--009 and 016 may consume `E_lb` only for the stated
optional comparison, and Steps 013--016 may consume the exact target and
Khatri-Rao floors. No trajectory object is used to construct this once-drawn
event.

## Explicit Rate Audit

- Exposed variables: `n,r,k,kappa,rho,Gamma_star,P,nu_base,nu_star`,
  `nu_real`, all realized column norms, `tau_min,tau_max`, the modewise,
  pairwise, and triple Grams, `||T||_F`, `D_lb=64`, and the later auxiliary
  `D_stat` when (30)--(31) are invoked.
- Hidden constants may depend on: the fixed class constants
  `C_dim,C_sm,C_nu,Gamma_star` and, only through the already stated
  assumptions, the fixed `c_0,c_rho`; universal Gaussian-tail constants are
  numerical. The optional `D_stat` slack may depend on the fixed desired
  `c_num`.
- Hidden constants may not depend on: `n,r,k,kappa,rho`, the realized
  instance, random tape, commit order, protected history, or `epsilon`.
- Fixed quantities: the deterministic base triple and all declared class
  constants. The asymptotic threshold is the one already allowed by the
  sufficiently-large fixed constants in the assumptions; no instance-
  dependent threshold is chosen.
- Probability mode: high probability over the once-drawn structural Gaussian
  instance. Equations (20), (21), and (28) give the lower-tail,
  intersection, and final-event allocations explicitly. There is no tape
  probability in this step.
- Horizon mode: once-drawn and therefore trajectory-uniform after
  conditioning on `E_inst`; there is no temporal union or iteration in this
  step.
- Norm mode: Euclidean norm for columns and target factors, signed operator
  norm for normalized Grams, singular-value floors for normalized
  Khatri-Rao maps, and Frobenius norm for `T`.
- Admissibility conditions and auxiliary tolerances: exactly the six stable
  assumption IDs in the sketch row. `E_lb` is derived, not admissible input.
  The optional numerical comparison uses the explicit ordering
  `D_lb=64` first and (30) second.
- Term absorption or simplification inequalities: (6), (10)--(11),
  (15)--(16), (26), and the displayed derivation of (31) prove every
  normalization, Gram-margin, threshold, and numerical comparison. No
  positive numerical term is absorbed outside `E_lb`.
- Probability conversion: no conversion between instance and tape modes is
  made. The finite instance union is exactly
  `6(2r)^(-30)+r^(-40 floor(r/2))<=r^(-10)`.
- Contribution to any Rate Specialization Bridge: this step supplies the R1
  source event, the inverse-polynomial lower-tail exponent, the exact target
  norm/guard, and the branch-aware inequalities later used by the public
  specialization. It does not perform a public theorem simplification.
- Baseline-reduction check: in the exact orthogonal equal-weight/noiseless
  specialization, `G_A=G_B=G_C=I_r`; therefore every pair/triple Gram is
  exactly `I_r`, `||T||_F=||tau||_2`, and the balanced `Q^star` represents
  `T` with zero loss and joint-zero unused slots. The positive-smoothing
  lower-tail event is not imposed on this algebraic `nu_real=0` limit. Thus
  the inherited exact representation is preserved rather than weakened to a
  finite-error surrogate.

## Blockers

None.

## Notation And Assumption Notes

- `X_A,X_B,X_C` and `E_op` are proof-local. They are direct expressions from
  the setting's perturbations, and `E_op` is proved by
  Lemma~\ref{lem:step-001-gaussian-operator}; neither is exported downstream.
- `bar U`, `U`, `bar D`, and `D` in
  Proposition~\ref{prop:step-001-normalized-geometry} are proof-local
  instantiations of the setting-defined normalization. The diagonal
  normalization defect in (8) is proof-local and bounded in that proposition.
- `delta_col=2 kappa rho` is proof-local. Its bound `delta_col<=1/10` is
  derived from the primitive margin in (6), not assumed.
- `E_M=G_M-I_r` is proof-local signed-Gram notation. The public-facing
  exports are the modewise Gram bound and the pair/triple spectral intervals;
  no operator claim about the entrywise absolute matrix is made.
- `t_raw` and `t_norm` are proof-local thresholds derived explicitly from
  `n,r,kappa,rho`. Their only role is to prove the public-facing derived event
  `E_lb`.
- `D_lb=64` is public-facing for downstream branch-aware consumers. It is a
  fixed proved-valid numerical exponent, not an assumption and not a free
  bounded quantity.
- `E_lb` is public-facing and derived by
  Lemma~\ref{lem:step-001-lower-tail}. `E_inst` is public-facing and derived
  by Proposition~\ref{prop:step-001-instance-event}. Both are realized-object
  events and are proved in this step, not supplied by dependencies or used as
  local conditional hypotheses.
- `d_num` is proof-local rate bookkeeping defined from a fixed desired
  `c_num`; (30) is an explicit later exponent choice, and (31) is exported
  only on `E_lb`.
- `Q^star`, `q_j^star`, `Phi_star`, `tau`, `P`, `R_max`, `nu_real`, and
  `nu_star` are setting-defined expressions. The exact representation and
  guard are derived here. The public-facing downstream interface is only
  `E_inst`, `E_lb`, `Q^star`, the realized geometric bounds, and the target
  norm/guard.
- All six allowed setting conditions are primitive. There are no accepted
  dependency outputs and no local conditional hypotheses. Every event,
  nonvanishing fact, realized bound, Khatri-Rao floor, and exact target
  property used in the target-step assembly is proved by a named local unit.
- The paired `global_proof.md` and `global_proof_review.md` were checked to be
  current, and the latter has status `ACCEPTED`. The G1 diagnostic suggested
  the normalization/small-ball decomposition used for planning. No global
  diagnostic statement is used as evidence, a cited result, an assumption
  source, or authority to change the target claim.
