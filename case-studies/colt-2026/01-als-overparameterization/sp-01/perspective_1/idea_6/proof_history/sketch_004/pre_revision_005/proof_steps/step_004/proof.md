# Proof Step

## Step Identity

- Sketch attempt: 4
- Step ID: `step_004`
- Unit attempt: 2
- Binding setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Binding proof-sketch SHA-256: `47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b`
- Binding proof-sketch-review SHA-256: `eda7c6672f755411db44e1ee214cf23ca1151429749140d0e3deffd4d5e40aa9`
- Triggering review SHA-256: `b48a207ba6733db307c0abfed06b5b3988d1ef4faabd7f1ac2c75ec32540715a`

## Target Step Claim

- Intended claim: Prove the displayed simultaneous `R,S` recurrences,
  denominator persistence, the named `chi_chart=1/128` projective chart and
  fixed point after burn-in, the ratio-l1 variable `a_t`, and
  `zeta<=tau_r` within `L_cert=O(log r)` sweeps for every covered slot.
- Dependencies: `step_001` and `step_003`.
- Assumptions used: `E_sm` and `E_cov` (derived), and
  `assump:subquadratic-rank` (primitive).
- Technical challenge: first-update activation, fixed nonzero Gram forcing,
  ambient/projective norm conversion, and chart self-map.
- Intended proof tool or cited result: exact old-state contraction expansion,
  invariant interval, Banach chart contraction, and dual-l1 recurrence.
- Output target: `E_RS`, `E_chart`, `E_chart_l1`, and `E_cert`.
- Rate objective: fixed horizon over `L_burn+L_cert`, with explicit `tau_r`,
  `a_t`, `L_chart`, and horizon choices.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:subquadratic-rank}: `r>=3`,
    `k=ceil(C_rank r^(5/3)(log r)^(5/2))`, `r<k<=n`, and the proposal
    horizons have the setting-defined forms
    `L_burn=ceil(C_burn log r)` and `L_cert=ceil(C_cert log r)` for
    universal constants selected below.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-001-smoothed-event} in
    `perspective_1/idea_6/proof_steps/step_001/proof.md`, with matching
    `Step-Review Status = ACCEPTED`, supplies `E_sm`. On this event,
    
    \[
      q:=q_{\rm real}\le q_*,\qquad
      \Gamma\le1.01,
    \]
    
    every realized factor Gram has unit diagonal and off-diagonal row mass
    at most `q`, and all realized columns are nonzero. The frozen dependency
    SHA-256 is
    `7fab685e663df565c7e1ec99484ed86f5393e35aa0398047c23a866c29fc336`; its
    accepted review is frozen at
    `2acfd5b7208c925aa28de3a57045bf6c3a0ad25cb3a0512e0e920fce1904a177`.
  - Accepted Proposition~\ref{prop:step-003-coverage} and
    Claim~\ref{claim:step-003-label-free} in
    `perspective_1/idea_6/proof_steps/step_003/proof.md`, with matching
    `Step-Review Status = ACCEPTED`, supply the generated event
    
    \[
      E_{\rm cov}=\bigcap_{j=1}^r\bigcup_{i=1}^k E_{\rm win}(i,j),
      \qquad \Pr(E_{\rm cov}\mid T)\ge 1-r^{-7}\ge\tfrac12,       \tag{1}
    \]
    
    conditional on every fixed tensor in `E_sm`. Here `E_win(i,j)` is the
    setting-defined raw-coordinate witness for slot `i` and target `j`:
    the three target coordinates have absolute value at least `t_r`, and
    each competing two-mode coordinate product is at most `b_* log r`.
    Target labels are proof-only and no later `Refresh_s` object occurs in
    this interface. The frozen dependency SHA-256 is
    `1eab9835ce7ced429dae7cb80cfdb360a7272eda259d7a7d0a0d601a7c7c2143`; its
    accepted review is frozen at
    `ee34b1419f401a25ef0d83ee61cedaf4a68cf110b3a2556d5895abac1ae792be`.
- Local conditional hypotheses: None. Below, fixing a tensor in `E_sm` and a
  pair `(i,j)` for which `E_win(i,j)` holds only selects a realized witness
  already produced by the accepted dependencies. Every trajectory, chart,
  denominator, and certificate property used downstream is proved in this
  step.

The universal choices `C_burn>=13` and `C_cert>=21` are selections of the
universal constants already requested in the formalized goal. They are not
new input conditions and do not depend on the instance or on a generated
trajectory.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under accepted Proposition~\ref{prop:step-001-smoothed-event}, for any setting-defined old-state Jacobi trajectory with nonzero target correlations and `Gamma R_t<1`, the exact simultaneous update satisfies the displayed `R,S` recurrences. | Supplies the same-old-state recurrence and its nonzero-contraction source. |
| `unit_002` | proposition | Under accepted Proposition~\ref{prop:step-001-smoothed-event} and an accepted `E_win(i,j)` witness from Proposition~\ref{prop:step-003-coverage}, the recurrence denominator remains at least `31/32`; `R_10<=6.0e-8`; and the universal burn choice gives `R_(L_burn)<=6.0e-8` and `S_(L_burn-1),S_(L_burn)<=q_*/16`. | Proves `E_RS` noncircularly and localizes all numerical accumulation. |
| `unit_003` | lemma | Under the preceding proposition, the target-oriented dual coefficient mass obeys the advertised `a_(t+1)` bridge, the burn state has `a_(L_burn)<=1/1024`, and every such state is within the named ambient chart radius. | Produces `E_chart_l1` and the chart entry interface. |
| `unit_006` | lemma | Under the setting-defined trilinear Jacobi map, modewise input sign flips produce the cyclic pair-product output signs; zero contractions are preserved by the sign action; target-positive reorientation of a covered raw trajectory is exactly the oriented chart trajectory; and `zeta` and all absolute ratios are sign-invariant. | Bridges the raw proposal trajectory to the target-oriented chart map used by the contraction and certification arguments. |
| `unit_004` | proposition | Under accepted Proposition~\ref{prop:step-001-smoothed-event} and Lemma~\ref{lem:step-004-dual-entry}, the closed chart with `a_chart=1/512` and `chi_chart=1/128` is a self-map of the oriented Jacobi map, has Lipschitz constant `L_chart<=16(q_*+a_chart+chi_chart)<1/4`, has contraction norms in `[31 lambda_j/32,33 lambda_j/32]`, and has a unique projective fixed point. | Produces the theorem-critical `E_chart` source with an explicit mechanism and boundary margin. |
| `unit_005` | proposition | Under accepted Proposition~\ref{prop:step-003-coverage} and Proposition~\ref{prop:step-004-chart}, every covered trajectory reaches `zeta<=tau_r` by the declared certification horizon; the stored state itself has a same-old-state, nonzero look-ahead in all three modes; and the entire interface is independent of later quotient refreshes. | Produces `E_cert`, including the exact prerequisites consumed by the same-state certificate step. |

Atomic step = no. The algebraic recurrence, its numerical closure, the dual
chart entry, the chart contraction, and the finite certification/stored-state
interface are separate nontrivial obligations.

## Cited Result Applications

### Accepted dependency: realized smoothing event

- Source: accepted Proposition~\ref{prop:step-001-smoothed-event}, frozen at
  the SHA-256 recorded above.
- Restated statement in current notation: on one event `E_sm` of smoothing
  probability at least `1-delta_sm`, every `G_M` has unit columns,
  `q(G_M)<=q<=q_*`, `Gamma<=1.01`, and all realized tensor weights and
  columns are nonzero.
- Instantiated objects: `G_U=U`, `G_V=V`, `G_W=W`, their Gram matrices, the
  realized weights, and the same tensor used by the proposal Jacobi map.
- Required assumptions and discharge: the five primitive smoothing
  assumptions are discharged inside the accepted dependency. This step uses
  only its accepted generated conclusions and introduces no smoothing event.
- Conclusion used: the Gram row-mass bound, weight ratio, and nondegeneracy
  used in every recurrence and chart estimate.

### Accepted dependency: all-target coverage and proof-only labels

- Source: accepted Proposition~\ref{prop:step-003-coverage} and
  Claim~\ref{claim:step-003-label-free}, frozen at the SHA-256 recorded
  above.
- Restated statement in current notation: conditional on any fixed tensor in
  `E_sm`, (1) holds, and every membership `E_win(i,j)` is a proof-only
  statement about one raw proposal slot. Conditioning the analysis on
  `E_cov` changes neither the executed states nor any observable algorithmic
  decision.
- Instantiated objects: the same `k` proposal slots, raw coordinate windows,
  and target-relative ratios in the setting.
- Required assumptions and discharge: Assumption~\ref{assump:subquadratic-rank}
  is listed above; slot independence and window probability were discharged
  in the accepted dependency chain.
- Conclusion used: at least one witness per target and the exact initial
  window inequalities used below, with no algorithmic target label.

### Banach fixed-point theorem

- Source or name: Banach fixed-point theorem.
- Restated statement: if a self-map `F` of a nonempty complete metric space
  satisfies `d(Fx,Fy)<=L d(x,y)` for every pair and some `0<=L<1`, then it
  has a unique fixed point; moreover
  `d(F^t x,F^(t+1)x)<=L^t d(x,Fx)`.
- Instantiated objects: the product of the three oriented unit-vector chart
  caps, the maximum modewise Euclidean metric, and the simultaneous oriented
  Jacobi map.
- Required assumptions and discharge: nonemptiness, closedness and hence
  completeness, self-mapping, and `L_chart<1/4` are all proved in
  Proposition~\ref{prop:step-004-chart} before the theorem is used.
- Conclusion used: existence and uniqueness of the projective fixed point
  and geometric decay of successive projective displacements.

### Elementary linear-algebra tools

- Source or name: induced-norm comparison and normalization inequality.
- Restated statements: for a symmetric matrix `A`,
  `||A||_2<=sqrt(||A||_1||A||_infinity)`; and for nonzero vectors `x,y`,
  
  \[
    \left\|{x\over\|x\|_2}-{y\over\|y\|_2}\right\|_2
    \le {2\|x-y\|_2\over\min\{\|x\|_2,\|y\|_2\}}.             \tag{2}
  \]
- Instantiated objects: `H_M-I`, the target-span synthesis operators, and
  two relative Jacobi contractions in the same target chart.
- Assumption discharge and direct verification: symmetry of each Gram is
  exact and both its row and column off-diagonal sums are at most `q`. For
  (2), add and subtract `x/||y||_2`, use the reverse triangle inequality on
  the scalar norm difference, and then exchange `x,y` if needed.
- Conclusion used: invertibility and operator bounds for `H_M`, followed by
  the explicit chart Lipschitz estimate. No external paper result is used.

### Local sign/projective-equivariance interface

- Source or name: Lemma~\ref{lem:step-004-sign-equivariance}, proved below
  from the setting-defined trilinear contractions and scalar normalization.
- Restated statement in current notation: for a mode-sign tuple
  `sigma=(sigma_U,sigma_V,sigma_W)`, the three raw Jacobi outputs acquire the
  cyclic signs
  `rho_U=sigma_V sigma_W`, `rho_V=sigma_U sigma_W`, and
  `rho_W=sigma_U sigma_V`; a zero contraction remains zero; and the
  target-positive reorientation of every covered raw iterate is an exact
  iterate of the oriented chart map. Absolute ratios and `zeta` are
  invariant under the same action.
- Instantiated objects: the raw proposal states, the target-positive
  representatives used in (36), and the stored state/look-ahead pair in
  Proposition~\ref{prop:step-004-certificate}.
- Required assumptions and discharge: trilinearity of `T`, the setting's
  normalization rule, and the positive denominator already proved in
  (6)/(15). The zero branch is handled explicitly in the local lemma.
- Conclusion used: successive-displacement decay from Banach's theorem
  applies to the literal raw proposal trajectory after reorientation, not
  merely to an independently chosen sequence of chart points.

## Local Derivation

### unit_006: lemma

**Lemma (Modewise sign equivariance and raw-to-oriented trajectory).**
\label{lem:step-004-sign-equivariance}
Under the setting-defined SC-JEP-ALS simultaneous Jacobi map, let
`h=(h_U,h_V,h_W)` be any triple of unit vectors and let
`sigma=(sigma_U,sigma_V,sigma_W)` belong to `{+1,-1}^3`. Define
`sigma dot h=(sigma_U h_U,sigma_V h_V,sigma_W h_W)` and

\[
 \rho(\sigma):=(\sigma_V\sigma_W,\ \sigma_U\sigma_W,
                 \sigma_U\sigma_V).                              \tag{2a}
\]

For every mode for which the relevant contraction is nonzero,

\[
 {\cal J}(\sigma\mathbin{\cdot}h)
   =\rho(\sigma)\mathbin{\cdot}{\cal J}(h),qquad
 \rho_U\rho_V\rho_W=1.                                           \tag{2b}
\]

If one relevant contraction is zero, it is zero for both sign-related
states, so both branches are undefined and the setting declares the run
unsuccessful. For a covered target `j`, let `sigma^t` reorient a literal raw
state `h^t` so that `bar h^t=sigma^t dot h^t` has positive target
correlation in all modes. If, at each considered time, the three target
correlations of `J(bar h^t)` are positive (this local condition is
discharged by the recurrence unit before this lemma is consumed), the signs
can be chosen recursively so that

\[
 \bar h^{t+1}={\cal J}(\bar h^t),qquad
 \sigma^{t+1}=\rho(\sigma^t),                                  \tag{2c}
\]

where the right side is the target-positive representative. Thus the
reoriented raw trajectory is exactly the oriented chart-map trajectory.
Moreover, all absolute target ratios and the projective residual `zeta` are
invariant under every modewise sign action.

**Proof / justification.**
Write `F_U(h)=T(\mathord\cdot,h_V,h_W)` and define `F_V,F_W` cyclically.
Trilinearity gives the exact identities

\[
 F_U(\sigma\mathbin{\cdot}h)=\sigma_V\sigma_WF_U(h),\quad
 F_V(\sigma\mathbin{\cdot}h)=\sigma_U\sigma_WF_V(h),\quad
 F_W(\sigma\mathbin{\cdot}h)=\sigma_U\sigma_VF_W(h).             \tag{2d}
\]

For a nonzero vector `x` and `eta in {+1,-1}`, the setting normalization
satisfies `N(eta x)=eta N(x)`. Applying this to (2d) proves (2b), and also
shows that a zero contraction is preserved exactly. The displayed product
identity for `rho` proves the product-one sign convention; no independent
amplitude or sign register is introduced.

The absolute correlations, and hence every `A_l,B_l,C_l`, are unchanged by
the input sign action. Start with the unique sign tuple `sigma^t` making
the three target correlations of `bar h^t` positive. Under the stated
positive-output local condition, the target correlation of every oriented
output `J_M(bar h^t)` is positive. By (2b),
the raw next state is

\[
 h^{t+1}=\rho(\sigma^t)\mathbin{\cdot}{\cal J}(\bar h^t).

\]

Consequently choosing `sigma^(t+1)=rho(sigma^t)` gives (2c), since every
sign is its own inverse. The initial window may have arbitrary raw signs,
but the same construction starts at `t=0`; once the positive-output
condition is discharged at each step, this proves equality of the entire
reoriented raw path and the oriented chart path, rather than merely equality
of their projective sets.

For sign invariance of `zeta`, use (2b) in each mode and change the minimizer
sign `epsilon` to `epsilon sigma_M rho_M`. This is a bijection of
`{+1,-1}`, so

\[
 \min_{\epsilon\in\{\mathord\pm1\}}
 \|\sigma_Mh_M-\epsilon {\cal J}_M(\sigma\mathbin{\cdot}h)\|_2
 =\min_{\epsilon\in\{\mathord\pm1\}}
 \|h_M-\epsilon {\cal J}_M(h)\|_2.                              \tag{2e}
\]

The same elementary sign cancellation proves invariance of all absolute
target ratios. The zero/nonzero branch and (2e) establish the complete
raw-to-oriented interface used below. \(\square\)

### unit_001: lemma

**Lemma (Same-old-state Jacobi ratio recurrences).**
\label{lem:step-004-jacobi-recurrence}
Under accepted Proposition~\ref{prop:step-001-smoothed-event}, fix a target
`j` and a setting-defined simultaneous Jacobi state
`h^t=(p^t,q^t,s^t)` whose three target correlations are nonzero. If
`Gamma R_t<1`, then all three contractions from this old state are nonzero
and

\[
 R_{t+1}\le
 \left({\Gamma R_t+q\over1-\Gamma qR_t}\right)^2,                 \tag{3}
\]

\[
 S_{t+1}\le
 { (\Gamma R_t+q)\{\Gamma(1+q)S_t+q\}
  \over(1-\Gamma qR_t)^2}.                                      \tag{4}
\]

All three entries in (3)-(4) are computed from the same old state `h^t`.

**Proof / justification.**
Write

\[
 \alpha_\ell=\langle u_\ell,p^t\rangle,\quad
 \beta_\ell=\langle v_\ell,q^t\rangle,\quad
 \gamma_\ell=\langle w_\ell,s^t\rangle,
\]

and let `A_l,B_l,C_l` be the setting-defined ratios relative to target `j`.
The old-state mode-`U` contraction is exactly

\[
 F_U(h^t)=T(\mathord\cdot,q^t,s^t)
          =\sum_{m=1}^r\lambda_m\beta_m\gamma_m u_m.             \tag{5}
\]

Put `H_U=U^T U`. Its target correlation satisfies

\[
 { |\langle u_j,F_U(h^t)\rangle|
   \over \lambda_j|\beta_j\gamma_j|}
 \ge 1-\sum_{m\ne j}{\lambda_m\over\lambda_j}
             |(H_U)_{jm}|B_mC_m
 \ge1-\Gamma qR_t=:d_t>0.                                      \tag{6}
\]

Thus `F_U(h^t)` is nonzero. For `ell!=j`, the coefficient indexed by `ell`
in the numerator is at most `Gamma B_ell C_ell`. In the remaining Gram
sum, the target-indexed relative coefficient equals one, while every other
relative coefficient is at most `Gamma R_t<1`. Hence the complete Gram
sum is at most its row mass `q`, and

\[
 A_\ell^{t+1}
 \le {\Gamma B_\ell C_\ell+q\over d_t}
 \le {\Gamma R_t+q\over d_t}.                                  \tag{7}
\]

The identical argument holds cyclically. Multiplying any two bounds in (7)
proves (3).

For the summed estimate, retain the individual pair products before taking
the maximum. Summing the mode-`U` numerator over `ell!=j`, then interchanging
the two finite off-target sums, gives

\[
 \sum_{\ell\ne j}A_\ell^{t+1}
 \le {\Gamma\sum_{\ell\ne j}B_\ell C_\ell
       +q+\Gamma q\sum_{m\ne j}B_mC_m\over d_t}
 \le {\Gamma(1+q)S_t+q\over d_t}.                               \tag{8}
\]

Here the isolated `q` is the target column of the Gram matrix, and symmetry
of the Gram matrix gives column mass at most `q` for the interchanged sum.
For example,

\[
 \sum_{\ell\ne j}A_\ell^{t+1}B_\ell^{t+1}
 \le \left(\max_{\ell\ne j}A_\ell^{t+1}\right)
      \sum_{\ell\ne j}B_\ell^{t+1}.
\]

Combining (7)-(8), and cycling through the three pairs, proves (4). Every
formula used the uncommitted state `h^t` in both held modes, exactly matching
the simultaneous proposal convention. \(\square\)

### unit_002: proposition

**Proposition (Finite burn-in and denominator closure).**
\label{prop:step-004-burn}
Under accepted Proposition~\ref{prop:step-001-smoothed-event} and an
accepted `E_win(i,j)` witness supplied through
Proposition~\ref{prop:step-003-coverage}, the corresponding old-state Jacobi
trajectory is well-defined through the complete proposal horizon. It obeys

\[
 1-\Gamma qR_t\ge {31\over32},\qquad \Gamma R_t<1                 \tag{9}
\]

at every proposal time, and

\[
 R_{10}\le6.0\mathbin{\cdot}10^{-8}.                              \tag{10}
\]

Let

\[
 m_r:=\left\lceil{\log(16r/q_*)\over\log4000}\right\rceil.       \tag{11}
\]

If `L_burn>=10+m_r`, then, with `t_b=L_burn`,

\[
 R_{t_b}\le6.0\mathbin{\cdot}10^{-8},\qquad
 S_{t_b-1}\le {q_*\over16},\qquad S_{t_b}\le {q_*\over16}.       \tag{12}
\]

The choice `C_burn>=13` in the setting-defined
`L_burn=ceil(C_burn log r)` ensures this inequality for every `r>=3`.

**Proof / justification.**
On `E_win(i,j)`, normalization of the raw initial vectors cancels from every
ratio. Since `t_r^2=a_* log r`, each competing pair obeys

\[
 A_\ell^0B_\ell^0,\ A_\ell^0C_\ell^0,\ B_\ell^0C_\ell^0
 \le {b_*\log r\over t_r^2}={b_*\over a_*}={19\over20}.          \tag{13}
\]

Consequently `R_0<=19/20`, `S_0<=(r-1)R_0<=rR_0`, and all target
denominators are initially nonzero.

The right side of (3) is increasing in `R`, `Gamma`, and `q` on the current
positive-denominator domain. Define the deterministic upper map

\[
 F(x):=\left({(101/100)x+1/4096
                    \over1-(101/100)(1/4096)x}\right)^2.          \tag{14}
\]

Direct rational substitution into (14), with every displayed value rounded
upward, gives

| `t` | upper bound `x_t` | verified upper bound `F(x_t)<=x_(t+1)` |
| --- | ---: | ---: |
| 0 | `0.95` | `0.922` |
| 1 | `0.922` | `0.869` |
| 2 | `0.869` | `0.772` |
| 3 | `0.772` | `0.609` |
| 4 | `0.609` | `0.379` |
| 5 | `0.379` | `0.147` |
| 6 | `0.147` | `0.0225` |
| 7 | `0.0225` | `0.00053` |
| 8 | `0.00053` | `0.00000062` |
| 9 | `0.00000062` | `0.00000006` |

For audit, the unrounded values in the last three substitutions are
`5.27587275244e-4`, `6.07527846694e-7`, and
`5.99107986389e-8`, respectively. Thus induction using
Lemma~\ref{lem:step-004-jacobi-recurrence} proves (10), while every earlier
upper bound is at most `19/20`. In particular,

\[
 \Gamma R_t\le {101\over100}{19\over20}<1,
 \qquad
 1-\Gamma qR_t
 \ge1-{101\over100}{1\over4096}{19\over20}>{31\over32}.         \tag{15}
\]

This validates each next use of the recurrence rather than assuming its
denominator. Moreover `F(6.0e-8)<6.0e-8`, so (10) is invariant for all
later proposal times. Equations (6) and (15) also show directly that no
covered contraction can vanish during burn-in.

To close `S_t`, rewrite (4) as

\[
 S_{t+1}\le A_tS_t+B_t,
\quad
 A_t={ (\Gamma R_t+q)\Gamma(1+q)\over(1-\Gamma qR_t)^2},
\quad
 B_t={ (\Gamma R_t+q)q\over(1-\Gamma qR_t)^2}.                   \tag{16}
\]

From the table, `R_t<=6.2e-7` for `t>=9`. Substitution of
`Gamma<=1.01` and `q<=q_*` into (16) gives the upward-rounded bounds

\[
 A_t<2.473\mathbin{\cdot}10^{-4}<{1\over4000},qquad
 B_t<5.976\mathbin{\cdot}10^{-8}<6.0\mathbin{\cdot}10^{-8}.      \tag{17}
\]

Also `S_9<=rR_9<=6.2e-7 r`. Iterating (16) for `m_r` steps and using
`4000^(m_r)>=16r/q_*` yields

\[
\begin{aligned}
 S_{9+m_r}
 &\le {6.2\mathbin{\cdot}10^{-7}r\over4000^{m_r}}
       +{6.0\mathbin{\cdot}10^{-8}\over1-1/4000}\\
 &\le {6.2\mathbin{\cdot}10^{-7}q_*\over16}+{q_*\over4000}
 <{q_*\over16}.                                                   \tag{18}
\end{aligned}
\]

The same calculation shows that the interval `S<=q_*/16` is preserved by
(16), because

\[
 {q_*/16\over4000}+6.0\mathbin{\cdot}10^{-8}
 <{q_*\over64000}+{q_*\over4000}<{q_*\over16}.                  \tag{19}
\]

Since `t_b>=10+m_r`, both indices in (12) are at least `9+m_r`, proving
(12). Finally,

\[
 10+m_r\le 11+{\log(16/q_*)+\log r\over\log4000}
 \le13\log r\qquad(r\ge3),                                     \tag{20}
\]

where the last scalar inequality is tightest at `r=3` and then improves.
Thus the setting's ceiling with `C_burn>=13` supplies the required horizon.
This proves the generated output `E_RS`; it is a conclusion of the old-state
recurrence, not an admissibility premise. \(\square\)

### unit_003: lemma

**Lemma (Dual-l1 bridge and entry into the projective chart).**
\label{lem:step-004-dual-entry}
Under accepted Proposition~\ref{prop:step-001-smoothed-event} and
Proposition~\ref{prop:step-004-burn}, put

\[
 H_M:=G_M^TG_M,qquad L_M:=G_MH_M^{-1}.                            \tag{21}
\]

For a covered target `j`, orient each post-first-update mode state to have
positive target correlation and set

\[
 b_{M,j}^t:=L_M^Th_M^t,qquad
 a_t:=\max_M\sum_{\ell\ne j}|(b_{M,j}^t)_\ell|.                  \tag{22}
\]

Then, after the first update,

\[
 a_{t+1}\le {\Gamma S_t\over1-\Gamma qR_t}
 \le {2(\Gamma S_t+q)\over1-\Gamma qR_t},                        \tag{23}
\]

and at `t_b=L_burn`,

\[
 a_{t_b}\le {1\over1024}.                                       \tag{24}
\]

Moreover, whenever an oriented unit state `h_M=G_Mb_M` has
`sum_(ell!=j)|b_(M,ell)|=a<=1/512`,

\[
 \|h_M-g_{M,j}\|_2\le2a\le2a+4q_*.                              \tag{25}
\]

Consequently every covered burn state lies in the modewise ambient cap of
radius `chi_chart=1/128`.

**Proof / justification.**
Since `H_M-I` is symmetric and has row and column absolute sums at most
`q<1`, the induced-norm comparison gives
`||H_M-I||_2<=q`. Thus every `H_M` is invertible and
`L_M^TG_M=I`. Every Jacobi output lies in `range(G_M)`, so (22) is its exact
target-span coefficient vector from time one onward.

For example, the unnormalized mode-`U` output in (5) has coefficient vector
`c_ell=lambda_ell beta_ell gamma_ell`. After target orientation,
`b_U^(t+1)=c/||G_Uc||_2`. Equation (6) therefore gives

\[
 \sum_{\ell\ne j}|(b_U^{t+1})_\ell|
 \le {\Gamma\sum_{\ell\ne j}B_\ell C_\ell\over d_t}
 \le {\Gamma S_t\over d_t}.                                     \tag{26}
\]

The other two modes are identical. This proves the stronger first inequality
in (23), and the advertised bridge follows immediately. Applying it at
`t=t_b-1`, using (9) and (12), gives, even with the weaker advertised form,

\[
 a_{t_b}
 \le {2\{(101/100)(q_*/16)+q_*\}\over31/32}
 <{1\over1024},                                                    \tag{27}
\]

which proves (24).

It remains to verify the ambient conversion rather than assume it. Write
`h_M=b_jg_(M,j)+v`, where
`v=sum_(ell!=j)b_ell g_(M,ell)`. Unit columns give `||v||_2<=a`, and the
unit-norm identity gives `1-a<=|b_j|<=1+a`. If `b_j<0`, then
`<g_(M,j),h_M><=-(1-a)+a<0`, contradicting the chosen target orientation.
Hence `b_j>0`; the same triangle inequalities now imply
`|b_j-1|<=a`. Therefore

\[
 \|h_M-g_{M,j}\|_2\le |b_j-1|+\|v\|_2\le2a,
\]

which is (25). With (24), the burn-state distance is at most `1/512`,
strictly below `chi_chart=1/128`. The quantities in (21)-(24) are thereby
generated before the chart is consumed. \(\square\)

### unit_004: proposition

**Proposition (Invariant contractive projective chart).**
\label{prop:step-004-chart}
Under accepted Proposition~\ref{prop:step-001-smoothed-event},
Lemma~\ref{lem:step-004-dual-entry}, and
Lemma~\ref{lem:step-004-sign-equivariance}, fix a target `j`, put

\[
 a_{\rm chart}:={1\over512},\qquad
 \chi_{\rm chart}:={1\over128},                                  \tag{28}
\]

and let `C_j` be the set of triples of unit vectors in the three target
spans which are oriented toward `(u_j,v_j,w_j)`, have dual off-target mass
at most `a_chart` in every mode, and have modewise ambient distance at most
`chi_chart` from the corresponding target column. Then:

1. `C_j` is a nonempty closed, hence complete, projective chart, and every
   covered burn state belongs to it.
2. The simultaneous oriented Jacobi map is a self-map of `C_j` and satisfies
   
   \[
     a({\cal J}(h))
     \le2\{q_*+2a(h)^2\}\le {33\over65536}<{1\over1024}.          \tag{29}
   \]
3. In the maximum modewise Euclidean metric, it is Lipschitz with
   
   \[
     L_{\rm chart}\le16(q_*+a_{\rm chart}+\chi_{\rm chart})
       ={656\over4096}<{1\over4}.                                \tag{30}
   \]
4. Every mode contraction in the chart, with `M',M''` held, satisfies
   
   \[
     {31\over32}\lambda_j
     \le\|T(\mathord\cdot_M,h_{M'},h_{M''})\|_2
     \le {33\over32}\lambda_j.                                  \tag{31}
   \]
5. The chart contains a unique fixed point of the oriented map, and hence a
   unique projective fixed point `h_j^star` of the setting-defined Jacobi map
   in this chart.

**Proof / justification.**
The burn-state entry is Lemma~\ref{lem:step-004-dual-entry}. Conversely,
every unit vector within `chi_chart<1` of its target has target correlation

\[
 \langle g_{M,j},h_M\rangle
 =1-{1\over2}\|h_M-g_{M,j}\|_2^2
 \ge d_0:=1-{\chi_{\rm chart}^2\over2}={32767\over32768}>0.       \tag{32}
\]

Thus orientation is unique throughout the cap. All defining inequalities
are closed, and each target triple itself belongs to the set, so `C_j` is a
nonempty closed subset of a finite-dimensional product of unit spheres. It
is complete in the maximum Euclidean metric.

We first prove the self-map. For one mode write `h=Gb`,
`a=sum_(ell!=j)|b_ell|<=a_chart`. The proof of (25) gives
`1-a<=b_j<=1+a`. With `H=G^TG`, its target correlation and the l1 mass of
its off-target correlations satisfy

\[
 |(Hb)_j|\ge1-a(1+q),
\qquad
 \sum_{\ell\ne j}|(Hb)_\ell|
 \le a+q(1+2a).                                                    \tag{33}
\]

The second inequality separates the off-target coefficients, leakage from
the target coefficient, and leakage among off-target coefficients. Hence
the signed off-target correlation-ratio vector `x` obeys

\[
 \|x\|_1\le
 X(a,q):={a+q(1+2a)\over1-a(1+q)}.                                \tag{34}
\]

This increasing function satisfies

\[
 X(a,q)\le X(1/512,1/4096)<{1\over450}.                            \tag{35}
\]

For a mode-`M` output, divide its unnormalized contraction by the positive
target scalar. The resulting relative vector is

\[
 g_{M,j}+\sum_{\ell\ne j}z_\ell g_{M,\ell},
 \qquad
 z_\ell={\lambda_\ell\over\lambda_j}
         x_{M',\ell}x_{M'',\ell}.                                \tag{36}
\]

Equations (34)-(35) and the elementary l1 Hadamard bound give

\[
 Z:=\sum_{\ell\ne j}|z_\ell|
 \le\Gamma X(a_{M'},q)X(a_{M''},q)
 <1.01(1/450)^2<4.99\mathbin{\cdot}10^{-6}.                       \tag{37}
\]

The coefficient-positive relative vector in (36) is the target-positive
representative, rather than merely a convenient sign choice. Indeed, with
`H=G^TG`,

\[
 \left\langle g_{M,j},g_{M,j}+G_{M,-j}z\right\rangle
 =1+\sum_{\ell\ne j}H_{j\ell}z_\ell
 \ge1-q_*Z>0.                                                       \tag{37a}
\]

Thus the normalized vector used in (38)-(46) has positive target
correlation. Lemma~\ref{lem:step-004-sign-equivariance} then identifies it
with the target-positive reorientation of the literal raw output, including
the pair-product output sign from (2b).

The norm in (36) is at least `1-Z`; therefore the off-target dual mass after
normalization is at most

\[
 {Z\over1-Z}<5.0\mathbin{\cdot}10^{-6}<2q_*
 \le2\{q_*+2a(h)^2\}.                                            \tag{38}
\]

The last member of (29) follows from
`2(q_*+2a_chart^2)=33/65536`. Applying (25) to the output gives the
advertised, slightly weaker conversion

\[
 \|{\cal J}_M(h)-g_{M,j}\|_2
 \le2a({\cal J}(h))+4q_*
 \le {2\over1024}+{4\over4096}<\chi_{\rm chart}.                 \tag{39}
\]

Thus both defining chart bounds are preserved.

We next prove contraction rather than inferring it from self-mapping. Let
`G_-j` denote `G` without target column `j`, and define

\[
 s_0:=\sqrt{1+q_*},\quad
 Y_0:=q_*+s_0\chi_{\rm chart},\quad
 m_0:={Y_0\over d_0},\quad
 B_0:={s_0\over d_0}+{Y_0\over d_0^2}.                            \tag{40}
\]

The Gram row bound gives `||G_-j||_2<=s_0`. For any `h` in the cap, the
off-target correlation vector `y=G_-j^T h` and its ratio
`x=y/<g_j,h>` satisfy

\[
 \|y\|_2\le q_*+s_0\chi_{\rm chart}=Y_0,qquad
 \|x\|_2\vee\|x\|_\infty\le m_0.                               \tag{41}
\]

For two cap vectors `h,tilde h`, subtracting the two ratios and using (32)
gives the explicit derivative-free estimate

\[
 \|x-\widetilde x\|_2
 \le B_0\|h-\widetilde h\|_2.                                   \tag{42}
\]

Indeed, the two terms are respectively the off-target correlation
difference divided by a target denominator and the old off-target
correlation times the target-denominator difference.

For two triples in `C_j`, let
`D=max_M||h_M-tilde h_M||_2`. The coefficient vectors in (36) then obey

\[
 \|z_M-\widetilde z_M\|_2
 \le2\Gamma m_0B_0D.                                             \tag{43}
\]

Also `||z_M||_2<=Gamma m_0^2`, so every relative vector in (36) has norm at
least `1-s_0 Gamma m_0^2`. Applying (2) to (36) and using (43) yields

\[
 \|{\cal J}_M(h)-{\cal J}_M(\widetilde h)\|_2
 \le {4\Gamma s_0m_0B_0\over1-s_0\Gamma m_0^2}D
 =:L_{\rm chart}D.                                                \tag{44}
\]

All constants in (44) are fixed explicitly. From
`s_0<1.001`, `Y_0<1/124`, `m_0<1/123`, `B_0<1.01`, and
`1-s_0 Gamma m_0^2>0.9999`,

\[
 L_{\rm chart}<0.034
 <16\left({1\over4096}+{1\over512}+{1\over128}\right)
 ={656\over4096}<{1\over4},                                     \tag{45}
\]

which proves (30) with substantial slack and no dimension factor.

For (31), the exact relative representation (36), (32), and (41) give

\[
 \lambda_jd_0^2(1-s_0\Gamma m_0^2)
 \le\|T(\mathord\cdot_M,h_{M'},h_{M''})\|_2
 \le\lambda_j(1+s_0\Gamma m_0^2).                               \tag{46}
\]

The lower scalar in (46) exceeds `0.9997>31/32`, and the upper scalar is
less than `1.0001<33/32`. Thus the contractions cannot approach the zero
boundary anywhere in the chart.

The Banach theorem now applies to the complete self-map with (45), producing
the unique oriented fixed point. Forgetting the unique cap orientation gives
exactly the claimed projective fixed point. This proves `E_chart`; its source
is the displayed old-state contraction and not a later closure assumption.
\(\square\)

### unit_005: proposition

**Proposition (Finite certification and same-state storage interface).**
\label{prop:step-004-certificate}
Under accepted Proposition~\ref{prop:step-003-coverage},
Proposition~\ref{prop:step-004-chart}, and
Lemma~\ref{lem:step-004-sign-equivariance}, choose

\[
 L_{\rm cert}\ge
 \left\lceil{\log(4/\tau_r)\over\log4}\right\rceil+1.           \tag{47}
\]

Then every accepted `E_win(i,j)` witness has some setting-defined
certification time `t` in `[L_burn,L_burn+L_cert]` for which
`zeta(h_i^t)<=tau_r`. In particular, on `E_cov`, every target has at least
one stored certified witness. The state stored by the procedure is `h_i^t`
itself. Its three look-ahead contractions are all nonzero, are all evaluated
from that same state, and satisfy

\[
 \min_{\varepsilon_M\in\{\mathord\pm1\}}
 \|h_{i,M}^t-\varepsilon_M{\cal J}_M(h_i^t)\|_2\le\tau_r
 \quad(M=U,V,W).                                                   \tag{48}
\]

More generally, every slot stored by the setting-defined certificate rule,
whether or not it is a covered witness, has the same-old-state and nonzero
look-ahead properties in (48). These are precisely the procedural
prerequisites for the next same-state certificate equation. The generated
outputs `E_RS`, `E_chart`, `E_chart_l1`, and `E_cert` use no active-ALS
quotient coordinate and are independent of every later `Refresh_s` map.

**Proof / justification.**
Let `t_b=L_burn`. By Lemma~\ref{lem:step-004-dual-entry}, every covered
trajectory is in `C_j` at time `t_b`; by
Proposition~\ref{prop:step-004-chart}, it remains there. With

\[
 \bar h^t:=\sigma^t\mathbin{\cdot}h^t,qquad
 D_s:=\max_M\|\bar h_M^{t_b+s+1}-\bar h_M^{t_b+s}\|_2,
\]

the denominator bound (6) and (15) discharge the positive-output local
condition in Lemma~\ref{lem:step-004-sign-equivariance}. That lemma, together
with the output-sign margin (37a), therefore identifies the reoriented
literal raw path with the oriented chart-map path at every successive time:
`bar h^(t+1)=J(bar h^t)`. The contraction estimate and the chart diameter
then give

\[
 \zeta(h^{t_b+s})=\zeta(\bar h^{t_b+s})\le D_s
 \le L_{\rm chart}^sD_0
 \le3\left({1\over4}\right)^s.                                  \tag{49}
\]

The equality is the sign invariance proved in (2e), and the projective
minimum can only decrease the oriented distance. The harmless constant `3`
bounds the chart diameter (the sharper bound is `2 chi_chart`). At
`s=L_cert`, (47) gives

\[
 3\mathbin{\cdot}4^{-L_{\rm cert}}
 \le {3\tau_r\over16}<\tau_r.                                    \tag{50}
\]

The setting evaluates `zeta` at every state from `L_burn` through
`L_burn+L_cert`, inclusive, before any possible next commit. Thus it stores
the first qualifying state no later than the last index in (50). It does not
replace that state by its look-ahead.

Because `tau_r=q_*^2/(10^4r)`, the right side required in (47) is a constant
plus `(log r)/(log4)`. For `r>=3`,

\[
 \left\lceil{\log(4/\tau_r)\over\log4}\right\rceil+1
 \le\lceil21\log r\rceil,                                       \tag{51}
\]

so the setting choice `C_cert>=21` is universal and proves
`L_cert=O(log r)` without hidden instance dependence.

For a covered state, nonzero look-aheads follow quantitatively from (31).
For an arbitrary stored state, they follow directly from the certificate
rule: `zeta(h)` is evaluated only where all three entries of `J(h)` are
defined, while a zero contraction declares the run unsuccessful. Since the
three entries of `J(h)` are computed before a simultaneous commit and all
use the same `h`, (48) is a same-state statement for every stored slot.

Finally, every object in (3)-(51) is a function only of the fixed realized
tensor, the raw proposal tape, the simultaneous Jacobi map, and fixed
numerical constants. `Refresh_s` is defined only on the later generated
target-span active-ALS trajectory. It neither appears in nor can modify any
proposal state, event, ratio, certificate decision, or stored state above.
Accepted Claim~\ref{claim:step-003-label-free} gives the same pathwise
statement for upstream coverage, so the complete producer chain is

\[
 E_{\rm sm},E_{\rm win},E_{\rm cov}
 \longrightarrow E_{RS},E_{\rm chart},E_{\rm chart,l1},E_{\rm cert},
\]

with no downstream refresh edge. This proves the claimed procedural and
provenance interface. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-004-jacobi-recurrence} derives both requested recurrences
from the literal simultaneous old-state contractions. Proposition~\ref{prop:step-004-burn}
uses the accepted window entry to verify the first denominator before the
first update, propagates it by an explicit upward-rounded scalar envelope,
and closes the `R,S` burn bounds over the declared finite horizon. This
produces `E_RS` without assuming any generated trajectory condition.

Lemma~\ref{lem:step-004-dual-entry} constructs the target dual from the
accepted realized Gram, proves the exact dual-l1 output identity, obtains
`a_(L_burn)<=1/1024`, and converts it to ambient chart entry.
Lemma~\ref{lem:step-004-sign-equivariance} supplies the missing raw-to-chart
bridge: it proves all three pair-product output signs, the zero branch,
product-one sign convention, absolute-ratio and `zeta` invariance, and the
recursive equality of target-positive reorientations with the literal raw
trajectory. Proposition~\ref{prop:step-004-chart} proves closedness, self-mapping,
dimension-free Lipschitz contraction, contraction-norm floors, and the unique
projective fixed point. These are the exact `E_chart_l1` and `E_chart`
outputs, with the target-chart coefficient error kept distinct from every
later selected-state coefficient error.

Finally, Proposition~\ref{prop:step-004-certificate} converts the chart
contraction into `zeta<=tau_r` within the setting's `O(log r)` certification
window and proves that the carried object is the state itself with its own
same-old-state, nonzero look-ahead. It also proves the pathwise absence of
every later `Refresh_s` object. Together with accepted all-target coverage,
these named results prove every field of the exact sketch row and produce
`E_cert` for the next same-state certificate step.

## Explicit Rate Audit

- Exposed variables: `r`, `q_real`, `Gamma`, `q_*=1/4096`,
  `R_t`, `S_t`, `a_t`, `a_chart=1/512`, `chi_chart=1/128`,
  `L_chart`, `tau_r=q_*^2/(10^4r)`, `L_burn`, and `L_cert`.
- Hidden constants may depend on: only the fixed numerical constants
  `q_*,a_*,b_*` and the universal choices `C_burn,C_cert`. The displayed
  choices `C_burn>=13`, `C_cert>=21` are tensor-uniform.
- Hidden constants may not depend on: `n,r,k,kappa_0,rho`, the deterministic
  base triple, the realized tensor, a target or slot, either confidence
  parameter, `epsilon`, a later ALS state, a quotient representative, a
  `Refresh_s` convention, or an unlisted condition number.
- Fixed quantities: first fix a realized tensor in `E_sm`, then one realized
  proposal tape and one accepted window witness. All trajectory conclusions
  are deterministic under that order.
- Probability mode: conditional on a fixed tensor in `E_sm`, the accepted
  dependency gives `Pr(E_cov|T)>=1/2`. This step adds no event loss and no
  probability conversion; it proves every covered-witness conclusion
  pathwise.
- Horizon mode: fixed finite horizon
  `[0,L_burn+L_cert]`. No all-time, stopping-time, or asymptotic upgrade is
  claimed. The first qualifying state is stored, but the deterministic upper
  bound uses the fixed last certification index.
- Norm mode: `R_t` is a maximum pair-ratio norm, `S_t` is a pair-ratio l1
  mass, `a_t` is a target-dual l1 mass, chart contraction uses maximum
  modewise Euclidean distance, and `zeta` is the setting-defined projective
  Euclidean residual.
- Admissibility conditions and auxiliary tolerances: `r>=3`, accepted
  `q_real<=q_*`, accepted `Gamma<=1.01`, the raw window constants, and the
  setting-defined `tau_r`. There is no added generated basin or stability
  assumption.
- Term absorption or simplification inequalities: the complete burn bridge
  is the table following (14), the `1/4000` and `6.0e-8` bounds in (17), and
  the geometric calculation (18). The chart bridge is (34)-(45), including
  the explicit normalization floor. The certificate bridge is (47)-(51).
  No persistent `q_real` term is declared lower order or dropped.
- Probability conversion: None in this step. Coverage probability is
  inherited unchanged; later restarts perform the `delta_init` conversion.
- Contribution to any Rate Specialization Bridge: this step proves
  `L_burn=O(log r)` and `L_cert=O(log r)` with explicit sufficient universal
  constants while retaining the exact setting value of `tau_r`.
- Baseline-reduction check: if `q_real=0` and `Gamma=1`, the exact expansion
  before inequalities gives
  `(A_l^+,B_l^+,C_l^+)=(B_lC_l,A_lC_l,A_lB_l)`, hence
  `R_(t+1)<=R_t^2` and `S_(t+1)<=R_tS_t`. At the exact target triple the
  relative vectors in (36) have `z=0`, so it is the exact projective fixed
  point and its same-state residual is zero. The finite `tau_r` certificate
  is only a transient stopping tolerance; it is not substituted for the
  exact baseline fixed-point or zero-residual conclusion. No `Refresh_s`
  statement is needed or used at this upstream stage.

## Blockers

None.

## Notation And Assumption Notes

- `q=q_real` and the scalar upper map `F` are `proof-local` abbreviations.
  Their constants are directly defined from the setting's `q_*` and the
  accepted dependency bound `Gamma<=1.01`; the upward-rounded table proves
  every numerical envelope used later.
- `H_M=G_M^TG_M` and `L_M=G_MH_M^(-1)` are `public-facing` chart objects
  because the next certificate and later dual-coordinate steps consume the
  same realized target dual. Their existence and norm source are proved in
  Lemma~\ref{lem:step-004-dual-entry}; invertibility is not assumed.
- The oriented vectors and signed ratio vectors used inside the chart proof
  are `appendix-local`. Orientation is unique because (32) proves a positive
  target-correlation margin. It is proof bookkeeping and does not alter an
  algorithmic state or expose a target label to the procedure.
- The mode-sign tuple `sigma^t`, cyclic output-sign tuple `rho(sigma^t)`,
  and reoriented raw state `bar h^t` are `proof-local` objects. Their
  existence is proved by Lemma~\ref{lem:step-004-sign-equivariance}; the
  positive-output condition in that lemma is discharged by (6), (15), and
  the explicit target-sign margin (37a). They are not additional
  initialization, sign, or product assumptions.
- `R_t` and `S_t` are setting-defined trajectory quantities. The per-witness
  `b_(M,j)^t` and `a_t` in (22) are `public-facing` generated chart
  quantities. `X,Y_0,m_0,B_0,Z,D_s` are `proof-local` helpers, each defined
  from setting constants or bounded in a named local unit before use.
- `a_chart`, `chi_chart`, `L_chart`, and the contraction-norm interval are
  `public-facing` parts of `E_chart`. The radii are the explicit constants in
  the accepted sketch; `L_chart` is bounded by
  Proposition~\ref{prop:step-004-chart}, rather than freely selected.
- `m_r` and the thresholds `C_burn>=13`, `C_cert>=21` are
  `appendix-local` horizon bookkeeping. They are derived from `r,q_*` in
  (11), (20), and (51), and merely select universal constants already present
  in the formalized procedure.
- `E_RS`, `E_chart`, `E_chart_l1`, and `E_cert` are `public-facing` generated
  outputs. `E_RS` is proved by Proposition~\ref{prop:step-004-burn};
  `E_chart_l1` by Lemma~\ref{lem:step-004-dual-entry}; `E_chart` by
  Proposition~\ref{prop:step-004-chart}; and `E_cert` by
  Proposition~\ref{prop:step-004-certificate}. None is a primitive
  assumption or a local conditional hypothesis.
- For covered slots, the positive contraction-norm floor is proved in (31).
  For every other stored slot, nonzero look-aheads and same-state evaluation
  are generated by the literal procedural branch and proved in
  Proposition~\ref{prop:step-004-certificate}. No unproved local-validity,
  boundedness, recurrence, or certificate condition is assumed.
- The only downstream interface exported to the next step is the stored
  state, its own simultaneous look-ahead, `zeta<=tau_r`, nonzero contraction
  norms, and the covered-slot chart tightening. No active-ALS coordinate,
  historical product register, or `Refresh_s` value is defined or consumed.
- The paired diagnostic `global_proof.md` and `global_proof_review.md` were
  read only after confirming `Global-Proof Review Status = ACCEPTED`. Their
  step-relevant planning suggestion was to keep the old-state recurrence,
  dual-l1 chart, and same-state stored-state interface explicit. The
  diagnostic was not used as proof evidence, a cited result, an assumption
  source, or authority to change the target claim; every such statement is
  independently derived above from the setting and accepted dependencies.
