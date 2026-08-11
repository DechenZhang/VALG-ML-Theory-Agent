# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 1
- Binding setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Accepted sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Accepted dependency proof SHA-256 (step_001): 467b0960c46a1487155b3ed5354d069fa7e6a477cf6a7efac6d779aefc801207
- Accepted dependency review SHA-256 (step_001): da31328ff1cb174d8f36bbc82f910454291fa18ddb198f1427b8a94904231f7c
- Accepted dependency proof SHA-256 (step_003): 2ec3af5229ee6717bb501939c614b65a7163694fb3f478395c8ff163df2ed551
- Accepted dependency review SHA-256 (step_003): 046c8b2ef34d4e749556b11d1ce056457f3d84feffe4e63a9b9d528c3a2a2527
- Accepted global diagnostic SHA-256: 80ef3512062b3830473c9e8b50e72365af34c4295b0246624e41a8871b98b5a0
- Accepted global-review SHA-256: a93919745b59b9ea7f5ce007c414343b7c91aa83c7988ff3a5cdde399857bf29

## Target Step Claim

The accepted sketch row is:

> Derive the exact displayed \(R,S\) recurrences, denominator persistence,
> chart self-map, and finite burn/certification horizon yielding a stored
> state with \(\zeta\le\tau_r\) for every covered slot. Depends on step_001
> and step_003; uses the derived \(E_{\rm sm},E_{\rm cov}\) and primitive
> assump:subquadratic-rank. The output is
> \(E_{\rm RS},E_{\rm chart},E_{\rm chart\_l1},E_{\rm cert}\), with the
> displayed \(R,S\) recurrences and the fixed horizons
> \(L_{\rm burn},L_{\rm cert}\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- assump:subquadratic-rank: \(r\ge3\), \(k=\lceil
  C_{\rm rank}r^{5/3}(\log r)^{5/2}\rceil\), and \(r<k\le n\). Only
  \(r\ge3\) and the fixed proposal horizons are used in this step.
- assump:random-initialization is not used to add a new probability
  statement here; it is already consumed by step_003. The present argument
  is deterministic after conditioning on the realized tensor and proposal
  tape.

Derived interfaces supplied by accepted dependencies:

- The accepted step_001 proof/review supplies the generated instance event
  \(E_{\rm sm}\) on which \(q_{\rm real}\le q_*=1/4096\),
  \(\Gamma\le1.01\), and every realized mode Gram has unit diagonal and
  absolute row/column off-diagonal mass at most \(q_*\).
- The accepted step_003 proof/review supplies the proof-only coverage event
  \(E_{\rm cov}\). On \(E_{\rm cov}\), for each target \(j\) there is at
  least one slot \(i(j)\) with the accepted window event and
  \(R_j(h_{i(j)}^0)\le19/20\), \(S_j(h_{i(j)}^0)\le rR_j(h_{i(j)}^0)\).
  The witness and target label are analysis notation only; the procedure is
  unchanged.

Local conditional hypotheses: none. For a fixed witness slot and target, the
only local chart conditions used below are proved before they are reused.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | On \(E_{\rm sm}\), for a covered target/witness and any state with \(\Gamma R_t<1\), the simultaneous old-state map has positive target denominators, the exact per-coordinate ratio bounds, and the displayed \(R,S\) recurrences. | Supplies the exact recurrence and first-update activation. |
| unit_002 | proposition | The scalar recurrence has a noncircular invariant \(R_t\le19/20\), \(1-\Gamma q_{\rm real}R_t\ge999/1000\), and a finite \(O(\log r)\) entry time after which \(R,S\) and the modewise ratio \(\ell_1\) masses are in a fixed chart. | Supplies denominator persistence, finite burn, and \(E_{\rm RS},E_{\rm chart},E_{\rm chart\_l1}\). |
| unit_003 | lemma | In the fixed target chart, the signed ratio map is a self-map and is \(1/4\)-Lipschitz in the maximum modewise \(\ell_1\) ratio distance. | Supplies a noncircular contraction source for successive old-state iterates. |
| unit_004 | proposition | The chart contraction converts successive ratio displacement to the algorithmic Euclidean \(\zeta\) residual and reaches \(\tau_r\) within \(L_{\rm cert}\). | Supplies the stored certificate event \(E_{\rm cert}\), including the stored-old-state/look-ahead distinction. |

## Cited Result Applications

1. Accepted step_003 coverage interface: on \(E_{\rm cov}\), a witness
   exists for every target with \(R_0\le19/20\) and \(S_0\le rR_0\).
2. Accepted step_001 realized Gram interface: on \(E_{\rm sm}\), each mode
   Gram \(\mathsf K_M=G_M^\top G_M\) has unit diagonal and absolute row and column
   off-diagonal mass at most \(q_{\rm real}\).
3. For a Gram matrix with unit diagonal and off-diagonal row/column mass
   \(q\), the off-target block has induced column/row mass at most \(1+q\),
   while the target row/column has mass at most \(q\). We use the elementary
   induced-\(\ell_1\) inequalities in current notation.
4. If an induced norm satisfies \(\|K-I\|\le q<1\), the Neumann series gives
   \(\|K^{-1}\|\le(1-q)^{-1}\). This is used only for the exact target-span
   chart.
5. For nonzero vectors \(a,b\),
   \(\|a/\|a\|-b/\|b\|\|_2\le
   2\|a-b\|_2/\min(\|a\|_2,\|b\|_2)\). The chart Gram floor supplies the
   positive norm lower bound.

## Local Derivation

Fix \(E_{\rm sm}\), \(E_{\rm cov}\), a target \(j\), and one proof-only witness
slot \(i(j)\). Suppress the slot index. Put

\[
q:=q_{\rm real}\le q_*={1\over4096},\qquad
\gamma:=\Gamma\le {101\over100}.
\]

For \(M\in\{U,V,W\}\), write \(g_{M,\ell}\) for the realized target column
(\(u_\ell,v_\ell,w_\ell\), respectively), and \(h_M^t\) for the mode-\(M\)
state after \(t\) simultaneous commits. At every time at which the target
correlation is nonzero, use a proof-only sign so that

\[
a_{M,j}^t:=\langle g_{M,j},h_M^t\rangle>0,\qquad
x_{M,\ell}^t:={\langle g_{M,\ell},h_M^t\rangle\over a_{M,j}^t}
\quad(\ell\ne j).
\tag{1}
\]

The absolute values of (1) are the setting's \(A_\ell,B_\ell,C_\ell\).
Sign choices do not alter \(R,S\) or \(\zeta\), because \(\zeta\) minimizes
over a modewise sign.

### unit_001: lemma

**Lemma (Simultaneous coefficient and pair-mass recurrence;
\label{lem:step-004-recurrence}).** Under the accepted \(E_{\rm sm}\) Gram
interface and the covered-slot initial interface from step_003, suppose at
time \(t\) all target correlations in (1) are nonzero and
\(\gamma R_t<1\). For mode \(M\), with held modes \(M',M''\), define

\[
\beta_{M,j}^t:=1,\qquad
\beta_{M,\ell}^t:={\lambda_\ell\over\lambda_j}
x_{M',\ell}^t x_{M'',\ell}^t\quad(\ell\ne j).
\tag{2}
\]

Then the target coefficient of the unnormalized \(M\)-contraction is nonzero,
and, with \(D_t:=1-\gamma qR_t\),

\[
|x_{M,\ell}^{t+1}|\le {\gamma R_t+q\over D_t}\quad(\ell\ne j),
\tag{3}
\]

\[
R_{t+1}\le\left({\gamma R_t+q\over1-\gamma qR_t}\right)^2,\qquad
S_{t+1}\le
{(\gamma R_t+q)\{\gamma(1+q)S_t+q\}\over(1-\gamma qR_t)^2}.
\tag{4}
\]

The conclusion holds for the first update even when \(h^0\) has a component
orthogonal to a target span.

**Proof / justification.** Divide the \(M\)-contraction by its target
coefficient \(\lambda_j a_{M',j}^ta_{M'',j}^t\). Its coefficient vector in
the \(g_{M,\ell}\) basis is \(e_j+\beta_M^t\). Since
\(|\beta_{M,\ell}^t|\le\gamma B_\ell^tC_\ell^t\le\gamma R_t<1\), the target
coordinate of the contraction obeys

\[
\begin{aligned}
\left|\left\langle g_{M,j},e_j+
\sum_{\ell\ne j}\beta_{M,\ell}^tg_{M,\ell}\right\rangle\right|
&\ge1-\sum_{\ell\ne j}|\beta_{M,\ell}^t|
|\langle g_{M,j},g_{M,\ell}\rangle|\\
&\ge1-\gamma R_tq=D_t>0.
\end{aligned}
\tag{5}
\]

Thus the contraction norm is positive and its normalized output is defined.
For an off-target index \(\ell\), the diagonal term contributes
\(|\beta_{M,\ell}^t|\), and all remaining terms are bounded by the Gram row
mass \(q\), because every \(|\beta_{M,m}^t|\le1\). Therefore

\[
|\langle g_{M,\ell},e_j+\sum_m\beta_{M,m}^tg_{M,m}\rangle|
\le\gamma R_t+q.
\tag{6}
\]

Dividing (6) by (5) proves (3), and taking products proves the first part of
(4). For the \(S\) bound, let \(n_{M,\ell}\) denote the absolute numerator
in (6). Using the target column mass \(q\), then swapping the remaining finite
sums and using the Gram column mass \(q\),

\[
\begin{aligned}
\sum_{\ell\ne j}n_{M,\ell}
&\le \sum_{\ell\ne j}|\beta_{M,\ell}^t|
 +q+q\sum_{\ell\ne j}|\beta_{M,\ell}^t|\\
&\le\gamma(1+q)\sum_{\ell\ne j}
|x_{M',\ell}^tx_{M'',\ell}^t|+q\\
&\le\gamma(1+q)S_t+q.
\end{aligned}
\tag{7}
\]

For example, for the \(U,V\) pair, the \(U\)-numerator is at most
\(\gamma R_t+q\) termwise, while the \(\ell_1\) sum of the \(V\)-numerator
is bounded by (7). Division by the two target denominators gives the first
pair sum in \(S_{t+1}\); cyclic permutation gives the other pair sums. At
\(t=0\), the window event supplies nonzero target correlations and (5)
proves the first update before any span assertion. After that update every
mode lies in its exact target span because the tensor contraction is a linear
combination of the \(g_{M,\ell}\). \(\square\)

### unit_002: proposition

**Proposition (Noncircular scalar envelope and finite chart entry;
\label{prop:step-004-envelope}).** Under
Assumption~\ref{assump:subquadratic-rank}, the accepted step_003 coverage
interface, and Lemma~\ref{lem:step-004-recurrence}, put

\[
\bar R:={19\over20},\quad d_*:={999\over1000},\quad
\rho_R=\rho_S:={49\over50}.
\tag{8}
\]

Then every finite trajectory iterate satisfies

\[
R_t\le\bar R,\qquad 1-\gamma qR_t\ge d_*>0,\qquad \gamma R_t<1.
\tag{9}
\]

Moreover, if \(\Lambda_t:=\max_M\sum_{\ell\ne j}|x_{M,\ell}^t|\), then

\[
\Lambda_{t+1}\le {\gamma(1+q)S_t+q\over1-\gamma qR_t},\qquad
S_{t+1}\le\rho_S S_t+q.
\tag{10}
\]

There is a universal choice \(C_{\rm burn}=2048\) such that, with
\(L_{\rm burn}=\lceil C_{\rm burn}\log r\rceil\), every covered witness
trajectory has

\[
R_{L_{\rm burn}-1}\le {1\over128},\quad
S_{L_{\rm burn}-1}\le {1\over7200},\quad
\Lambda_{L_{\rm burn}}\le {1\over256},\quad
\max_{M,\ell}|x_{M,\ell}^{L_{\rm burn}}|\le {1\over100}.
\tag{11}
\]

**Proof / justification.** Let
\(f(x)=((\gamma x+q)/(1-\gamma qx))^2\). On
\([0,\bar R]\), \(f\) is increasing. The numerical bounds

\[
\gamma\bar R+q < {24\over25},\qquad
1-\gamma q\bar R>{999\over1000}
\tag{12}
\]

give \(f(\bar R)/\bar R<49/50\). For \(x\ge q/\gamma\), direct
differentiation shows \(f(x)/x\) is increasing, since

\[
{d\over dx}\log{f(x)\over x}
={2\gamma\over\gamma x+q}-{1\over x}
 +{2\gamma q\over1-\gamma qx}>0.
\tag{13}
\]

The covered initial state satisfies \(\gamma R_0\le(101/100)(19/20)<1\),
so Lemma~\ref{lem:step-004-recurrence} is applicable at \(t=0\).
Thus \(f(x)\le(49/50)x\) whenever \(q/\gamma\le x\le\bar R\); if
\(x<q/\gamma\), then \(x<1/128\) and monotonicity gives
\(f(x)\le f(q/\gamma)<f(\bar R)<\bar R\). Since \(R_0\le\bar R\),
induction using
(4) proves (9), and the first phase reaches \(R_t\le1/128\) in at most

\[
N_R:=\left\lceil{\log(128\bar R)\over\log(50/49)}\right\rceil
\tag{14}
\]

steps. The coefficient multiplying \(S_t\) in (4) is bounded by

\[
{(24/25)(101/100)(1001/1000)\over(999/1000)^2}
< {49\over50},
\tag{15}
\]

and the additive term is less than \(q\). Hence

\[
S_t\le(49/50)^t(19r/20)+50q.
\tag{16}
\]

Set

\[
N_S(r):=\left\lceil
{\log\{(19r/20)/(1/64-50q_*)\}\over\log(50/49)}
\right\rceil.
\tag{17}
\]

The denominator is positive because \(50q_*=50/4096<1/64\). After
\(N_S(r)\) steps, (16) gives \(S_t\le1/64\). At any time with
\(R_t\le1/128\), (4) and the same numerical constants give

\[
R_{t+1}\le10^{-4},\qquad S_{t+1}\le {1\over7200},\qquad
\Lambda_{t+1}< {1\over60}.
\tag{18}
\]

Applying (10) once more from the \(S\)-bound \(1/7200\) gives
\(\Lambda_{t+2}\le1/256\), while (3) gives the \(1/100\) coordinate bound.
Once \(R\le1/128\) and \(S\le1/7200\), the right side of the \(S\)
recurrence is again below \(1/7200\), so this smaller bound persists.
Consequently (11) holds once
\(L_{\rm burn}\ge\max\{N_R,N_S(r)\}+2\). A direct numerical comparison at
\(r=3\), and the linear \(\log r\) term in (17), gives

\[
\max\{N_R,N_S(r)\}+2\le2048\log r\qquad(r\ge3).
\tag{19}
\]

Thus the prescribed universal \(C_{\rm burn}=2048\) suffices. All bounds are
finite-horizon consequences of (4); no chart or denominator condition was
assumed in obtaining them. \(\square\)

### unit_003: lemma

**Lemma (Target-chart self-map and contraction;
\label{lem:step-004-chart}).** Under \(E_{\rm sm}\), let
\(\mathsf K_M:=G_M^\top G_M\) denote the step-local Gram (distinct from the
setting-defined same-state coefficient matrix \(K_M\)).
For a target \(j\), write a signed off-target ratio vector
\(x_M\in\mathbb R^{r-1}\), with \(e_j+x_M\) denoting the \(r\)-vector obtained by inserting a
1 in coordinate \(j\). On the chart

\[
\mathcal C_j:=\left\{(x_U,x_V,x_W):
\max_M\|x_M\|_\infty\le {1\over100},\
\max_M\|x_M\|_1\le {1\over256},\
S_j\le {1\over512}\right\},
\tag{20}
\]

the exact signed ratio map is

\[
\Phi_M(x_{M'},x_{M''})_\ell
={\left[\mathsf K_M(e_j+\beta_M)\right]_\ell\over
\left[\mathsf K_M(e_j+\beta_M)\right]_j},\qquad
\beta_{M,j}=1,\quad
\beta_{M,\ell}={\lambda_\ell\over\lambda_j}
x_{M',\ell}x_{M'',\ell},
\tag{21}
\]

and is a self-map of \(\mathcal C_j\). In the metric

\[
d_{\rm ch}(x,\widetilde x):=\max_M\|x_M-\widetilde x_M\|_1,
\tag{22}
\]

it satisfies

\[
d_{\rm ch}(\Phi(x),\Phi(\widetilde x))\le {1\over4}
d_{\rm ch}(x,\widetilde x).
\tag{23}
\]

If \(p_M(x)\) is the unit vector in \({\rm span}(G_M)\) with correlation
ratios \(x_M\) and positive target correlation, then

\[
\|p_M(x)-p_M(\widetilde x)\|_2\le4\|x_M-\widetilde x_M\|_1.
\tag{24}
\]

**Proof / justification.** Let \(v=e_j+x\), and define

\[
p_M(x):={G_M\mathsf K_M^{-1}v\over
\|G_M\mathsf K_M^{-1}v\|_2}.
\tag{25}
\]

The Neumann bound applies because \(q<1\), and substitution gives
\(G_M^\top p_M(x)\) proportional to \(v\); hence (25) is the unique oriented
span direction with the stated ratios. The Gram eigenvalues lie in
\([1-q,1+q]\). Consequently
\[
\|G_M\mathsf K_M^{-1}(x-\widetilde x)\|_2
\le(1-q)^{-1/2}\|x-\widetilde x\|_2,
\quad
\|G_M\mathsf K_M^{-1}v\|_2\ge(1+q)^{-1/2}\|v\|_2.
\]
Since \(\|e_j+x\|_2\ge1\) on the chart, the normalization inequality gives
(24) with the conservative factor \(4\).

For (21), divide the held-mode target coefficients exactly as in (2); the
common target scale cancels. On (20),
\(\|\beta_{M,-j}\|_\infty\le\gamma/10^4\), and the target denominator in
(21) is at least \(999/1000\). The off-target numerator has coordinatewise
bound \(\gamma/10^4+q<1/100\). Its \(\ell_1\) bound is
\(\gamma(1+q)S_j+q<1/256\), by the row/column summation used in (7).
For every output pair, the product mass is at most
\((1/100)(1/256)<1/512\). Thus \(\Phi\) is a self-map.

For two chart points, with \(d=d_{\rm ch}(x,\widetilde x)\), the product rule
gives

\[
\|\beta_M-\widetilde\beta_M\|_1
\le2\gamma(1/100)d.
\tag{26}
\]

The off-target block of \(\mathsf K_M\) has induced column mass at most \(1+q\), the
target row has mass at most \(q\), and both quotient denominators are at least
\(999/1000\). Using the self-map \(\ell_1\) bound in the denominator variation
term yields

\[
\|\Phi_M(x)-\Phi_M(\widetilde x)\|_1
\le\left({1+q\over999/1000}+
{q\over(999/1000)^2\,256}\right)
\|\beta_M-\widetilde\beta_M\|_1
< {1\over4}d.
\tag{27}
\]

Taking the maximum over modes proves (23). \(\square\)

### unit_004: proposition

**Proposition (Finite projective certificate and stored-state interface;
\label{prop:step-004-certificate}).** Under
Assumption~\ref{assump:subquadratic-rank}, the accepted step_003 coverage
interface, Proposition~\ref{prop:step-004-envelope}, and
Lemma~\ref{lem:step-004-chart},
on every covered witness trajectory the chart \(\mathcal C_j\) is entered no
later than \(L_{\rm burn}\), remains invariant, and for every
\(t\ge L_{\rm burn}\),

\[
\zeta(h^t)\le {1\over32}\,4^{-(t-L_{\rm burn})}.
\tag{28}
\]

With the universal choice \(C_{\rm cert}=64\) and
\(L_{\rm cert}=\lceil C_{\rm cert}\log r\rceil\),
\(\zeta(h^{L_{\rm burn}+L_{\rm cert}})\le\tau_r=q_*^2/(10^4r)\). Thus the
algorithm stores a state at or before \(L_{\rm prop}=L_{\rm burn}+L_{\rm cert}\);
the stored state is \(h^t\), not its look-ahead image. If the procedure stores
an earlier state because its observable \(\zeta\) is already below the
threshold, the continuation used in this proof is only a proof device and
the earlier stored state already satisfies the exported certificate.

**Proof / justification.** By (11), its \(1/100\) and \(1/256\) bounds imply
that the state at \(L_{\rm burn}\) has
\(S_j\le(1/100)(1/256)<1/512\), so it is in \(\mathcal C_j\); the self-map
keeps all subsequent states there. Let
\(\Delta_t=d_{\rm ch}(x^t,x^{t-1})\). The first in-chart displacement is at
most \(2/256=1/128\). For \(t\ge L_{\rm burn}+1\), (23) gives the recursive
inequality below; the displayed closed form also holds at
\(t=L_{\rm burn}\) by the diameter bound:

\[
\Delta_{t+1}\le {1\over4}\Delta_t,\qquad
\Delta_{t+1}\le {1\over128}\,4^{-(t-L_{\rm burn})}.
\tag{29}
\]

For each mode, the oriented state at time \(t\) is \(p_M(x_M^t)\), while the
oriented look-ahead Jacobi state is \(p_M(x_M^{t+1})\). Equation (24) and the
sign-minimum in \(\zeta_M\) give

\[
\zeta_M(h^t)\le4\|x_M^t-x_M^{t+1}\|_1,
\]

which with (29) proves (28). Finally,
\(4^{-L_{\rm cert}}/32\le\tau_r\) holds for all \(r\ge3\) under \(C_{\rm cert}=64\):
after substituting \(\tau_r=q_*^2/(10^4r)\), the required logarithm is
\(\log(32\cdot10^4r/q_*^2)/\log4\), and \(64\log r\) dominates it at \(r=3\)
and hence for all larger \(r\). If the bound first holds at \(t=L_{\rm prop}\),
the algorithm still evaluates \(\zeta(h^t)\) and stores that old state; no
look-ahead state is exported. \(\square\)

## Target-Step Assembly

On \(E_{\rm sm}\cap E_{\rm cov}\), choose the step_003 witness \(i(j)\) for
each target \(j\). The argument in fact applies to every pair \((i,j)\) for
which the accepted window event occurs; \(E_{\rm cov}\) is used only to
ensure that at least one such pair exists for every target. The accepted
initial interface gives nonzero target
coordinates and \(R_0\le19/20\), \(S_0\le rR_0\). Lemma~\ref{lem:step-004-recurrence}
proves the exact displayed \(R,S\) recurrences, including the first
simultaneous update, and proves every target denominator before division.
Proposition~\ref{prop:step-004-envelope} gives the noncircular invariant,
finite burn entry, and modewise \(\ell_1\) chart bounds. The chart lemma
supplies an independent contraction mechanism for the same old-state map;
Proposition~\ref{prop:step-004-certificate} converts successive displacement
to the exact algorithmic Euclidean \(\zeta\) and guarantees a stored
certificate within the prescribed finite horizon. These conclusions define
\(E_{\rm RS},E_{\rm chart},E_{\rm chart\_l1},E_{\rm cert}\) as generated
outputs. No target label, comparator, future ALS output, or landing output is
used by the procedure. A zero target denominator or contraction on an
uncovered tape remains an observable unsuccessful branch; on the covered
branch, (5) rules it out before the first commit.

Concretely, \(E_{\rm RS}\) is the finite intersection, over all accepted
window pairs and all \(t\le L_{\rm prop}\), of (3)--(4) and (9);
\(E_{\rm chart}\) and \(E_{\rm chart\_l1}\) are the corresponding post-burn
bounds (20), and \(E_{\rm cert}\) records that each such slot stores its
first old state with \(\zeta\le\tau_r\). These are proof events, not extra
algorithmic tests.

## Explicit Rate Audit

- Exposed variables: \(r\), \(q_*=1/4096\),
  \(\tau_r=q_*^2/(10^4r)\), \(L_{\rm burn}=\lceil2048\log r\rceil\),
  \(L_{\rm cert}=\lceil64\log r\rceil\), and the generated bounds
  \(q_{\rm real}\le q_*\), \(\Gamma\le1.01\).
- Hidden constants may depend on: only the fixed numerical values in the
  proof and the induced-norm factors of the realized Gram margin.
- Hidden constants may not depend on: \(n,\kappa_0,\rho,\epsilon\), either
  confidence parameter, the base triple, target \(j\), or slot index.
- Fixed quantities: the realized tensor is fixed conditional on \(E_{\rm sm}\);
  \(r\ge3\) and all modes use the same \(q_*,\Gamma\) bounds.
- Probability mode: conditional on the once-drawn instance event; step_003
  supplies \(\Pr(E_{\rm cov}\mid\mathcal F_{\rm sm})\ge p_0\). No additional
  randomness or cross-target independence is used.
- Horizon mode: finite proposal horizon through \(L_{\rm prop}\).
- Norm mode: target-relative absolute ratios, pair-product maximum and
  \(\ell_1\) pair mass, followed by the Euclidean projective residual.
- Admissibility and auxiliary tolerances: only \(r\ge3\),
  \(q_{\rm real}\le q_*\), \(\Gamma\le1.01\), and the step_003 window
  interface; all chart and denominator controls are generated here.
- Term simplification: (12)--(19) give scalar absorptions, (26)--(27) give
  the contraction constant, and \(4^{-L_{\rm cert}}/32\le\tau_r\) gives the
  threshold bridge.
- Probability conversion: none beyond the accepted conditional coverage
  bound; the optional tower conversion remains in step_003.
- Contribution to a rate bridge: exports a universal \(O(\log r)\) proposal
  burn/certification horizon and no confidence-dependent rank factor.
- Baseline reduction: when \(q_{\rm real}=0\), \(\Gamma=1\), and an exact
  component has zero off-target ratios, (2)--(4) give \(R_t=S_t=0\), the
  Jacobi state is fixed, and \(\zeta=0\) exactly.

## Blockers

None.

## Notation And Assumption Notes

- \(q,\gamma,D_t,\bar R,d_*,\rho_R,\rho_S,N_R,N_S,\Lambda_t\) are
  proof-local or appendix-local quantities defined from setting constants and
  accepted interfaces. The downstream-facing exports are only
  \(E_{\rm RS},E_{\rm chart},E_{\rm chart\_l1},E_{\rm cert}\).
- Signed ratio vectors, coefficient ratios, and \(\Phi\) are proof-local
  translations of the setting's absolute ratios; they do not change the
  procedure or add a target-label test.
- \(C_{\rm burn}=2048\) and \(C_{\rm cert}=64\) are universal constants proved
  sufficient above, not primitive assumptions. Denominator positivity,
  chart membership, and certification are generated conclusions.
- The accepted global diagnostic/review pair was read only for planning: it
  highlighted first-update activation, denominator checks before division,
  and the stored-old-state displacement bridge. It is not evidence,
  an assumption source, or authority to change the target claim.
